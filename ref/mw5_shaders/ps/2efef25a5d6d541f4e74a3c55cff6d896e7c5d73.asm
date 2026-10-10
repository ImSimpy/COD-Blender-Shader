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
; shader hash: 34d139e323815122d7a3d922a6239f26
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
  %399 = add i32 %34, 472
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
  br i1 %452, label %978, label %453

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
  br i1 %901, label %959, label %902

; <label>:902                                     ; preds = %894
  %903 = add i32 %34, 456
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = add i32 %905, 0
  %907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %908 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %907, %dx.types.Handle %80, float %552, float %553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = extractvalue %dx.types.ResRet.f32 %908, 1
  %911 = extractvalue %dx.types.ResRet.f32 %908, 3
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 1048576
  %915 = icmp ne i32 %914, 0
  %916 = and i32 %913, 8192
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %932, label %918

; <label>:918                                     ; preds = %902
  %919 = extractvalue %dx.types.ResRet.f32 %908, 2
  %920 = select i1 %915, float %919, float %910
  %921 = select i1 %915, float %909, float %910
  %922 = add i32 %34, 96
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = lshr i32 %924, 16
  %926 = and i32 %925, 255
  %927 = uitofp i32 %926 to float
  %928 = fmul fast float %927, 0x3F80101020000000
  %929 = fmul fast float %928, %921
  %930 = fmul fast float %928, %910
  %931 = fmul fast float %928, %920
  br label %932

; <label>:932                                     ; preds = %918, %902
  %933 = phi float [ %929, %918 ], [ 0.000000e+00, %902 ]
  %934 = phi float [ %930, %918 ], [ 0.000000e+00, %902 ]
  %935 = phi float [ %931, %918 ], [ 0.000000e+00, %902 ]
  %936 = and i32 %913, 2048
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %946, label %938

; <label>:938                                     ; preds = %932
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = shl i32 %940, 4
  %942 = and i32 %941, 32752
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = fmul fast float %943, %911
  %945 = call float @dx.op.binary.f32(i32 35, float %944, float 0x3F70101020000000)  ; FMax(a,b)
  br label %946

; <label>:946                                     ; preds = %938, %932
  %947 = phi float [ %945, %938 ], [ 0x3F70101020000000, %932 ]
  %948 = and i32 %913, 16384
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %959, label %950

; <label>:950                                     ; preds = %946
  %951 = add i32 %34, 96
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = lshr i32 %953, 24
  %955 = uitofp i32 %954 to float
  %956 = fmul fast float %909, 0x3F70101020000000
  %957 = select i1 %915, float 0x3F70101020000000, float %956
  %958 = fmul fast float %957, %955
  br label %959

; <label>:959                                     ; preds = %950, %946, %894
  %960 = phi float [ %933, %950 ], [ %933, %946 ], [ 0.000000e+00, %894 ]
  %961 = phi float [ %934, %950 ], [ %934, %946 ], [ 0.000000e+00, %894 ]
  %962 = phi float [ %935, %950 ], [ %935, %946 ], [ 0.000000e+00, %894 ]
  %963 = phi float [ %947, %950 ], [ %947, %946 ], [ 0x3F70101020000000, %894 ]
  %964 = phi float [ %958, %950 ], [ 0.000000e+00, %946 ], [ 0.000000e+00, %894 ]
  %965 = add i32 %34, 96
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = and i32 %967, 255
  %969 = uitofp i32 %968 to float
  %970 = lshr i32 %967, 8
  %971 = and i32 %970, 255
  %972 = uitofp i32 %971 to float
  %973 = call float @dx.op.dot3.f32(i32 55, float %767, float %768, float %769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %974 = fmul fast float %972, %973
  %975 = fadd fast float %974, %969
  %976 = fmul fast float %975, 0x3F70101020000000
  %977 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  br label %978

; <label>:978                                     ; preds = %959, %438
  %979 = phi float [ 0.000000e+00, %438 ], [ %848, %959 ]
  %980 = phi float [ 0.000000e+00, %438 ], [ %849, %959 ]
  %981 = phi float [ 0.000000e+00, %438 ], [ %767, %959 ]
  %982 = phi float [ 0.000000e+00, %438 ], [ %768, %959 ]
  %983 = phi float [ 0.000000e+00, %438 ], [ %769, %959 ]
  %984 = phi float [ 0.000000e+00, %438 ], [ %960, %959 ]
  %985 = phi float [ 0.000000e+00, %438 ], [ %961, %959 ]
  %986 = phi float [ 0.000000e+00, %438 ], [ %962, %959 ]
  %987 = phi float [ 0.000000e+00, %438 ], [ %895, %959 ]
  %988 = phi float [ 0.000000e+00, %438 ], [ %896, %959 ]
  %989 = phi float [ 0.000000e+00, %438 ], [ %897, %959 ]
  %990 = phi float [ 0.000000e+00, %438 ], [ %753, %959 ]
  %991 = phi float [ 0.000000e+00, %438 ], [ 1.000000e+00, %959 ]
  %992 = phi float [ 0.000000e+00, %438 ], [ %847, %959 ]
  %993 = phi float [ 0.000000e+00, %438 ], [ %850, %959 ]
  %994 = phi float [ 0.000000e+00, %438 ], [ %963, %959 ]
  %995 = phi float [ 0.000000e+00, %438 ], [ %964, %959 ]
  %996 = phi float [ 0.000000e+00, %438 ], [ %977, %959 ]
  br i1 %389, label %1834, label %997

; <label>:997                                     ; preds = %978
  %998 = icmp ult i32 %444, 2
  %999 = add i32 %34, 40
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = add i32 %34, 44
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = or i32 %1004, %1001
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1834, label %1007

; <label>:1007                                    ; preds = %997
  %1008 = and i32 %1001, 262144
  %1009 = icmp ne i32 %1008, 0
  %1010 = select i1 %1009, float %39, float 1.000000e+00
  %1011 = select i1 %1009, float %40, float 0.000000e+00
  %1012 = select i1 %1009, float %41, float 0.000000e+00
  %1013 = select i1 %1009, float %42, float 1.000000e+00
  %1014 = select i1 %1009, float %43, float %71
  %1015 = select i1 %1009, float %44, float %72
  %1016 = add i32 %34, 300
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = lshr i32 %1018, 16
  %1020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1019)  ; LegacyF16ToF32(value)
  %1021 = fmul fast float %1020, 0x3F50624DE0000000
  %1022 = add i32 %34, 104
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = lshr i32 %1024, 16
  %1026 = and i32 %1025, 255
  %1027 = lshr i32 %1024, 24
  %1028 = add i32 %34, 308
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = and i32 %1030, 65535
  %1032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1031)  ; LegacyF16ToF32(value)
  %1033 = lshr i32 %1030, 16
  %1034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1033)  ; LegacyF16ToF32(value)
  %1035 = add i32 %34, 48
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = lshr i32 %1037, 22
  %1039 = shl nuw nsw i32 %1038, 5
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = shl i32 %1037, 4
  %1042 = and i32 %1041, 32752
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = lshr i32 %1037, 7
  %1045 = and i32 %1044, 32752
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 3
  %1049 = fmul fast float %1048, 1.000000e+03
  %1050 = fmul fast float %299, %1049
  %1051 = call float @dx.op.unary.f32(i32 22, float %1050)  ; Frc(value)
  %1052 = fadd fast float %1051, %289
  %1053 = fmul fast float %300, %1049
  %1054 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1055 = fadd fast float %1054, %291
  %1056 = fmul fast float %1021, %1049
  %1057 = call float @dx.op.unary.f32(i32 22, float %1056)  ; Frc(value)
  %1058 = fmul fast float %1057, 0x401921FB60000000
  %1059 = fadd fast float %1058, %1040
  %1060 = call float @dx.op.unary.f32(i32 13, float %1059)  ; Sin(value)
  %1061 = call float @dx.op.unary.f32(i32 12, float %1059)  ; Cos(value)
  %1062 = fsub fast float -0.000000e+00, %1060
  %1063 = fadd fast float %1014, -5.000000e-01
  %1064 = fadd fast float %1015, -5.000000e-01
  %1065 = fmul fast float %1032, %1063
  %1066 = fmul fast float %1034, %1064
  %1067 = fadd fast float %1065, 5.000000e-01
  %1068 = fadd fast float %1066, 5.000000e-01
  %1069 = fmul fast float %1043, %1067
  %1070 = fmul fast float %1046, %1068
  %1071 = fmul fast float %1061, %1069
  %1072 = call float @dx.op.tertiary.f32(i32 46, float %1062, float %1070, float %1071)  ; FMad(a,b,c)
  %1073 = fmul fast float %1060, %1069
  %1074 = call float @dx.op.tertiary.f32(i32 46, float %1061, float %1070, float %1073)  ; FMad(a,b,c)
  %1075 = fadd fast float %1052, %1072
  %1076 = fadd fast float %1055, %1074
  %1077 = icmp ugt i32 %1026, 1
  %1078 = icmp ugt i32 %1024, 33554431
  %1079 = or i1 %1078, %1077
  br i1 %1079, label %1080, label %1105

; <label>:1080                                    ; preds = %1007
  %1081 = add i32 %34, 244
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = lshr i32 %1083, 16
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = fmul fast float %1048, %1085
  %1087 = call float @dx.op.unary.f32(i32 22, float %1086)  ; Frc(value)
  %1088 = mul nuw nsw i32 %1026, %1027
  %1089 = uitofp i32 %1088 to float
  %1090 = fmul fast float %1087, %1089
  %1091 = call float @dx.op.unary.f32(i32 27, float %1090)  ; Round_ni(value)
  %1092 = fptoui float %1091 to i32
  %1093 = urem i32 %1092, %1026
  %1094 = udiv i32 %1092, %1027
  %1095 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1096 = call float @dx.op.unary.f32(i32 22, float %1076)  ; Frc(value)
  %1097 = uitofp i32 %1093 to float
  %1098 = uitofp i32 %1094 to float
  %1099 = fadd fast float %1095, %1097
  %1100 = fadd fast float %1096, %1098
  %1101 = uitofp i32 %1026 to float
  %1102 = uitofp i32 %1027 to float
  %1103 = fdiv fast float %1099, %1101
  %1104 = fdiv fast float %1100, %1102
  br label %1105

; <label>:1105                                    ; preds = %1080, %1007
  %1106 = phi float [ %1103, %1080 ], [ %1075, %1007 ]
  %1107 = phi float [ %1104, %1080 ], [ %1076, %1007 ]
  %1108 = and i32 %1001, 256
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1156, label %1110

; <label>:1110                                    ; preds = %1105
  %1111 = add i32 %34, 428
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = add i32 %1113, 0
  %1115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1115, %dx.types.Handle %80, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = add i32 %34, 116
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = shl i32 %1120, 4
  %1122 = and i32 %1121, 32752
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = lshr i32 %1120, 7
  %1125 = and i32 %1124, 32752
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = fsub fast float 1.000000e+00, %441
  %1128 = call float @dx.op.binary.f32(i32 35, float %1127, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1129 = bitcast float %441 to i32
  %1130 = sitofp i32 %1129 to float
  %1131 = fadd fast float %1130, 0xC1CFBF8940000000
  %1132 = fmul fast float %1126, %1131
  %1133 = fadd fast float %1132, 0x41CFBF8940000000
  %1134 = fptosi float %1133 to i32
  %1135 = bitcast i32 %1134 to float
  %1136 = bitcast float %1128 to i32
  %1137 = sitofp i32 %1136 to float
  %1138 = fadd fast float %1137, 0xC1CFBF8940000000
  %1139 = fmul fast float %1138, %1126
  %1140 = fadd fast float %1139, 0x41CFBF8940000000
  %1141 = fptosi float %1140 to i32
  %1142 = bitcast i32 %1141 to float
  %1143 = fmul fast float %1135, %1123
  %1144 = fmul fast float %1142, %1123
  %1145 = fsub fast float %1128, %1143
  %1146 = fadd fast float %1144, %1128
  %1147 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1148 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1149 = fsub fast float %1117, %1147
  %1150 = fsub fast float %1148, %1147
  %1151 = bitcast float %1150 to i32
  %1152 = sub nsw i32 2129859010, %1151
  %1153 = bitcast i32 %1152 to float
  %1154 = fmul fast float %1153, %1149
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  br label %1156

; <label>:1156                                    ; preds = %1110, %1105
  %1157 = phi float [ %1155, %1110 ], [ %441, %1105 ]
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 128
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1178, label %1162

; <label>:1162                                    ; preds = %1156
  %1163 = add i32 %34, 412
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = add i32 %1165, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1167, %dx.types.Handle %80, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 524288
  %1173 = icmp ne i32 %1172, 0
  %1174 = fcmp fast ogt float %1169, 0x3FE0101020000000
  %1175 = select i1 %1174, float 1.000000e+00, float 0.000000e+00
  %1176 = select i1 %1173, float %1175, float %1169
  %1177 = fmul fast float %1176, %1157
  br label %1178

; <label>:1178                                    ; preds = %1162, %1156
  %1179 = phi float [ %1177, %1162 ], [ %1157, %1156 ]
  %1180 = fcmp fast ult float %1179, 0x3F70101020000000
  br i1 %1180, label %1834, label %1181

; <label>:1181                                    ; preds = %1178
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 16
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1384, label %1186

; <label>:1186                                    ; preds = %1181
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = add i32 %34, 364
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = add i32 %1191, 0
  %1193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1193, %dx.types.Handle %79, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.ResRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.ResRet.f32 %1194, 2
  %1198 = extractvalue %dx.types.ResRet.f32 %1194, 3
  %1199 = and i32 %1188, 255
  %1200 = uitofp i32 %1199 to float
  %1201 = lshr i32 %1188, 8
  %1202 = and i32 %1201, 255
  %1203 = uitofp i32 %1202 to float
  %1204 = fmul fast float %1198, %1200
  %1205 = fadd fast float %1204, %1203
  %1206 = fmul fast float %1205, 0x3F70101000000000
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 512
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1219, label %1211

; <label>:1211                                    ; preds = %1186
  %1212 = add i32 %34, 444
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = add i32 %1214, 0
  %1216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1215, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1217 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1216, %dx.types.Handle %80, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  br label %1219

; <label>:1219                                    ; preds = %1211, %1186
  %1220 = phi float [ %1218, %1211 ], [ 1.000000e+00, %1186 ]
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 33554432
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1331, label %1225

; <label>:1225                                    ; preds = %1219
  %1226 = add i32 %34, 240
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 65535
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = lshr i32 %1228, 16
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = add i32 %34, 244
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = and i32 %1235, 65535
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = lshr i32 %1239, 24
  %1241 = uitofp i32 %1240 to float
  %1242 = fmul fast float %1241, 0x3F70101020000000
  %1243 = and i32 %1239, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F70101020000000
  %1246 = lshr i32 %1239, 8
  %1247 = and i32 %1246, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F70101020000000
  %1250 = lshr i32 %1239, 16
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = add i32 %34, 236
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = lshr i32 %1256, 24
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1258, 0x3F70101020000000
  %1260 = and i32 %1256, 255
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1261, 0x3F70101020000000
  %1263 = lshr i32 %1256, 8
  %1264 = and i32 %1263, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1265, 0x3F70101020000000
  %1267 = lshr i32 %1256, 16
  %1268 = and i32 %1267, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = fmul fast float %1269, 0x3F70101020000000
  %1271 = bitcast float %1195 to i32
  %1272 = ashr i32 %1271, 1
  %1273 = sub nsw i32 1597463174, %1272
  %1274 = bitcast i32 %1273 to float
  %1275 = fmul fast float %1195, 5.000000e-01
  %1276 = fmul fast float %1274, %1274
  %1277 = fmul fast float %1276, %1275
  %1278 = fsub fast float 1.500000e+00, %1277
  %1279 = fmul fast float %1274, %1195
  %1280 = fmul fast float %1279, %1278
  %1281 = bitcast float %1196 to i32
  %1282 = ashr i32 %1281, 1
  %1283 = sub nsw i32 1597463174, %1282
  %1284 = bitcast i32 %1283 to float
  %1285 = fmul fast float %1196, 5.000000e-01
  %1286 = fmul fast float %1284, %1284
  %1287 = fmul fast float %1286, %1285
  %1288 = fsub fast float 1.500000e+00, %1287
  %1289 = fmul fast float %1284, %1196
  %1290 = fmul fast float %1289, %1288
  %1291 = bitcast float %1197 to i32
  %1292 = ashr i32 %1291, 1
  %1293 = sub nsw i32 1597463174, %1292
  %1294 = bitcast i32 %1293 to float
  %1295 = fmul fast float %1197, 5.000000e-01
  %1296 = fmul fast float %1294, %1294
  %1297 = fmul fast float %1296, %1295
  %1298 = fsub fast float 1.500000e+00, %1297
  %1299 = fmul fast float %1294, %1197
  %1300 = fmul fast float %1299, %1298
  %1301 = fsub fast float %1280, %1262
  %1302 = fsub fast float %1290, %1266
  %1303 = fsub fast float %1300, %1270
  %1304 = fmul fast float %1301, %1230
  %1305 = fmul fast float %1302, %1232
  %1306 = fmul fast float %1303, %1237
  %1307 = fadd fast float %1304, %1245
  %1308 = fadd fast float %1305, %1249
  %1309 = fadd fast float %1306, %1253
  %1310 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1311 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1312 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1313 = fmul fast float %1310, %1310
  %1314 = fmul fast float %1311, %1311
  %1315 = fmul fast float %1312, %1312
  %1316 = fsub fast float %1313, %1195
  %1317 = fsub fast float %1314, %1196
  %1318 = fsub fast float %1315, %1197
  %1319 = fmul fast float %1316, %1220
  %1320 = fmul fast float %1317, %1220
  %1321 = fmul fast float %1318, %1220
  %1322 = fadd fast float %1319, %1195
  %1323 = fadd fast float %1320, %1196
  %1324 = fadd fast float %1321, %1197
  %1325 = fadd fast float %1242, %1206
  %1326 = fsub fast float %1325, %1259
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1328 = fsub fast float %1327, %1206
  %1329 = fmul fast float %1328, %1220
  %1330 = fadd fast float %1329, %1206
  br label %1384

; <label>:1331                                    ; preds = %1219
  %1332 = and i32 %1222, 134217728
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1368, label %1334

; <label>:1334                                    ; preds = %1331
  %1335 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %1336 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %1337 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %1338 = fadd fast float %1335, -5.000000e-01
  %1339 = fadd fast float %1336, -5.000000e-01
  %1340 = fadd fast float %1337, -5.000000e-01
  %1341 = fmul fast float %1338, %1220
  %1342 = fmul fast float %1339, %1220
  %1343 = fmul fast float %1340, %1220
  %1344 = fadd fast float %1341, 5.000000e-01
  %1345 = fadd fast float %1342, 5.000000e-01
  %1346 = fadd fast float %1343, 5.000000e-01
  %1347 = call float @dx.op.unary.f32(i32 24, float %1195)  ; Sqrt(value)
  %1348 = call float @dx.op.unary.f32(i32 24, float %1196)  ; Sqrt(value)
  %1349 = call float @dx.op.unary.f32(i32 24, float %1197)  ; Sqrt(value)
  %1350 = fmul fast float %1344, 2.000000e+00
  %1351 = fsub fast float 1.000000e+00, %1350
  %1352 = fmul fast float %1351, %1347
  %1353 = fadd fast float %1352, %1350
  %1354 = fmul fast float %1353, %1347
  %1355 = fmul fast float %1345, 2.000000e+00
  %1356 = fsub fast float 1.000000e+00, %1355
  %1357 = fmul fast float %1356, %1348
  %1358 = fadd fast float %1357, %1355
  %1359 = fmul fast float %1358, %1348
  %1360 = fmul fast float %1346, 2.000000e+00
  %1361 = fsub fast float 1.000000e+00, %1360
  %1362 = fmul fast float %1361, %1349
  %1363 = fadd fast float %1362, %1360
  %1364 = fmul fast float %1363, %1349
  %1365 = fmul fast float %1354, %1354
  %1366 = fmul fast float %1359, %1359
  %1367 = fmul fast float %1364, %1364
  br label %1384

; <label>:1368                                    ; preds = %1331
  %1369 = fmul fast float %276, %276
  %1370 = fmul fast float %280, %280
  %1371 = fmul fast float %284, %284
  %1372 = fadd fast float %1369, -1.000000e+00
  %1373 = fadd fast float %1370, -1.000000e+00
  %1374 = fadd fast float %1371, -1.000000e+00
  %1375 = fmul fast float %1220, %1372
  %1376 = fmul fast float %1220, %1373
  %1377 = fmul fast float %1220, %1374
  %1378 = fadd fast float %1375, 1.000000e+00
  %1379 = fadd fast float %1376, 1.000000e+00
  %1380 = fadd fast float %1377, 1.000000e+00
  %1381 = fmul fast float %1378, %1195
  %1382 = fmul fast float %1379, %1196
  %1383 = fmul fast float %1380, %1197
  br label %1384

; <label>:1384                                    ; preds = %1368, %1334, %1225, %1181
  %1385 = phi float [ %1330, %1225 ], [ %1206, %1334 ], [ %1206, %1368 ], [ 0x3FA23C0BE0000000, %1181 ]
  %1386 = phi float [ %1322, %1225 ], [ %1365, %1334 ], [ %1381, %1368 ], [ 1.000000e+00, %1181 ]
  %1387 = phi float [ %1323, %1225 ], [ %1366, %1334 ], [ %1382, %1368 ], [ 1.000000e+00, %1181 ]
  %1388 = phi float [ %1324, %1225 ], [ %1367, %1334 ], [ %1383, %1368 ], [ 1.000000e+00, %1181 ]
  %1389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.i32 %1389, 1
  %1391 = and i32 %1390, 1
  %1392 = icmp ne i32 %1391, 0
  %1393 = add i32 %34, 356
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 32
  %1397 = icmp ne i32 %1396, 0
  %1398 = and i1 %1392, %1397
  %1399 = select i1 %1398, float 1.000000e+00, float %1386
  %1400 = select i1 %1398, float 0x3FD3333340000000, float %1387
  %1401 = select i1 %1398, float 0x3FD3333340000000, float %1388
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 32
  %1405 = icmp eq i32 %1404, 0
  br i1 %1405, label %1478, label %1406

; <label>:1406                                    ; preds = %1384
  %1407 = add i32 %34, 108
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = add i32 %34, 380
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = add i32 %1412, 0
  %1414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1414, %dx.types.Handle %79, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.ResRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.ResRet.f32 %1415, 2
  %1419 = extractvalue %dx.types.ResRet.f32 %1415, 3
  %1420 = and i32 %1409, 255
  %1421 = uitofp i32 %1420 to float
  %1422 = lshr i32 %1409, 8
  %1423 = and i32 %1422, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = lshr i32 %1409, 16
  %1426 = and i32 %1425, 255
  %1427 = uitofp i32 %1426 to float
  %1428 = fmul fast float %1427, 0x3F70101000000000
  %1429 = fmul fast float %1416, %1421
  %1430 = fadd fast float %1429, %1424
  %1431 = fmul fast float %1430, 0x3F70101000000000
  %1432 = fadd fast float %1417, -5.000000e-01
  %1433 = fadd fast float %1419, -5.000000e-01
  %1434 = fmul fast float %1432, %1428
  %1435 = fmul fast float %1433, %1428
  %1436 = fadd fast float %1434, 5.000000e-01
  %1437 = fadd fast float %1435, 5.000000e-01
  %1438 = fmul fast float %1436, 2.000000e+00
  %1439 = fadd fast float %1438, -1.000000e+00
  %1440 = fmul fast float %1437, 2.000000e+00
  %1441 = fadd fast float %1440, -1.000000e+00
  %1442 = fadd fast float %1439, %1441
  %1443 = fmul fast float %1442, 5.000000e-01
  %1444 = fsub fast float %1439, %1441
  %1445 = fmul fast float %1444, 5.000000e-01
  %1446 = call float @dx.op.unary.f32(i32 6, float %1443)  ; FAbs(value)
  %1447 = fsub fast float 1.000000e+00, %1446
  %1448 = call float @dx.op.unary.f32(i32 6, float %1445)  ; FAbs(value)
  %1449 = fsub fast float %1447, %1448
  %1450 = call float @dx.op.dot3.f32(i32 55, float %1443, float %1445, float %1449, float %1443, float %1445, float %1449)  ; Dot3(ax,ay,az,bx,by,bz)
  %1451 = call float @dx.op.unary.f32(i32 25, float %1450)  ; Rsqrt(value)
  %1452 = fmul fast float %1443, %1451
  %1453 = fmul fast float %1445, %1451
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 67108864
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1474, label %1458

; <label>:1458                                    ; preds = %1406
  %1459 = add i32 %34, 296
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = and i32 %1461, 65535
  %1463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1462)  ; LegacyF16ToF32(value)
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = and i32 %1465, 65535
  %1467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1466)  ; LegacyF16ToF32(value)
  %1468 = lshr i32 %1461, 16
  %1469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1468)  ; LegacyF16ToF32(value)
  %1470 = fsub fast float %1431, %1469
  %1471 = fmul fast float %1470, %1463
  %1472 = fadd fast float %1471, %1467
  %1473 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  br label %1474

; <label>:1474                                    ; preds = %1458, %1406
  %1475 = phi float [ %1473, %1458 ], [ %1431, %1406 ]
  %1476 = call float @dx.op.dot2.f32(i32 54, float %1452, float %1453, float %1010, float %1011)  ; Dot2(ax,ay,bx,by)
  %1477 = call float @dx.op.dot2.f32(i32 54, float %1452, float %1453, float %1012, float %1013)  ; Dot2(ax,ay,bx,by)
  br label %1478

; <label>:1478                                    ; preds = %1474, %1384
  %1479 = phi float [ %1475, %1474 ], [ 0x3FD6666660000000, %1384 ]
  %1480 = phi float [ %1476, %1474 ], [ 0.000000e+00, %1384 ]
  %1481 = phi float [ %1477, %1474 ], [ 0.000000e+00, %1384 ]
  %1482 = phi float [ %1418, %1474 ], [ 1.000000e+00, %1384 ]
  %1483 = add i32 %34, 176
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = lshr i32 %1485, 22
  %1487 = shl nuw nsw i32 %1486, 5
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 64
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1526, label %1493

; <label>:1493                                    ; preds = %1478
  %1494 = add i32 %34, 396
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = add i32 %1496, 0
  %1498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = and i32 %1500, 131072
  %1502 = icmp eq i32 %1501, 0
  %1503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1498, %dx.types.Handle %79, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  %1505 = extractvalue %dx.types.ResRet.f32 %1503, 1
  %1506 = extractvalue %dx.types.ResRet.f32 %1503, 2
  %1507 = fmul fast float %1504, %264
  %1508 = fmul fast float %1505, %267
  %1509 = fmul fast float %1506, %270
  br i1 %1502, label %1516, label %1510

; <label>:1510                                    ; preds = %1493
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1513 = fmul fast float %1512, %1507
  %1514 = fmul fast float %1512, %1508
  %1515 = fmul fast float %1512, %1509
  br label %1516

; <label>:1516                                    ; preds = %1510, %1493
  %1517 = phi float [ %1513, %1510 ], [ %1507, %1493 ]
  %1518 = phi float [ %1514, %1510 ], [ %1508, %1493 ]
  %1519 = phi float [ %1515, %1510 ], [ %1509, %1493 ]
  %1520 = fmul fast float %1517, %1488
  %1521 = select i1 %205, float %1520, float %1517
  %1522 = call float @dx.op.dot3.f32(i32 55, float %1521, float %1518, float %1519, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1523 = select i1 %205, float 0.000000e+00, float %1517
  %1524 = select i1 %205, float %1522, float %1518
  %1525 = select i1 %205, float 0.000000e+00, float %1519
  br label %1526

; <label>:1526                                    ; preds = %1516, %1478
  %1527 = phi float [ %1523, %1516 ], [ 0.000000e+00, %1478 ]
  %1528 = phi float [ %1524, %1516 ], [ 0.000000e+00, %1478 ]
  %1529 = phi float [ %1525, %1516 ], [ 0.000000e+00, %1478 ]
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 26624
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1591, label %1534

; <label>:1534                                    ; preds = %1526
  %1535 = add i32 %34, 460
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = add i32 %1537, 0
  %1539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1539, %dx.types.Handle %80, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1541 = extractvalue %dx.types.ResRet.f32 %1540, 0
  %1542 = extractvalue %dx.types.ResRet.f32 %1540, 1
  %1543 = extractvalue %dx.types.ResRet.f32 %1540, 3
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 1048576
  %1547 = icmp ne i32 %1546, 0
  %1548 = and i32 %1545, 8192
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1564, label %1550

; <label>:1550                                    ; preds = %1534
  %1551 = extractvalue %dx.types.ResRet.f32 %1540, 2
  %1552 = select i1 %1547, float %1551, float %1542
  %1553 = select i1 %1547, float %1541, float %1542
  %1554 = add i32 %34, 112
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = lshr i32 %1556, 16
  %1558 = and i32 %1557, 255
  %1559 = uitofp i32 %1558 to float
  %1560 = fmul fast float %1559, 0x3F80101020000000
  %1561 = fmul fast float %1560, %1553
  %1562 = fmul fast float %1560, %1542
  %1563 = fmul fast float %1560, %1552
  br label %1564

; <label>:1564                                    ; preds = %1550, %1534
  %1565 = phi float [ %1561, %1550 ], [ 0.000000e+00, %1534 ]
  %1566 = phi float [ %1562, %1550 ], [ 0.000000e+00, %1534 ]
  %1567 = phi float [ %1563, %1550 ], [ 0.000000e+00, %1534 ]
  %1568 = and i32 %1545, 2048
  %1569 = icmp eq i32 %1568, 0
  br i1 %1569, label %1578, label %1570

; <label>:1570                                    ; preds = %1564
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = shl i32 %1572, 4
  %1574 = and i32 %1573, 32752
  %1575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1574)  ; LegacyF16ToF32(value)
  %1576 = fmul fast float %1575, %1543
  %1577 = call float @dx.op.binary.f32(i32 35, float %1576, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1578

; <label>:1578                                    ; preds = %1570, %1564
  %1579 = phi float [ %1577, %1570 ], [ 0x3F70101020000000, %1564 ]
  %1580 = and i32 %1545, 16384
  %1581 = icmp eq i32 %1580, 0
  br i1 %1581, label %1591, label %1582

; <label>:1582                                    ; preds = %1578
  %1583 = add i32 %34, 112
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = lshr i32 %1585, 24
  %1587 = uitofp i32 %1586 to float
  %1588 = fmul fast float %1541, 0x3F70101020000000
  %1589 = select i1 %1547, float 0x3F70101020000000, float %1588
  %1590 = fmul fast float %1589, %1587
  br label %1591

; <label>:1591                                    ; preds = %1582, %1578, %1526
  %1592 = phi float [ %1565, %1582 ], [ %1565, %1578 ], [ 0.000000e+00, %1526 ]
  %1593 = phi float [ %1566, %1582 ], [ %1566, %1578 ], [ 0.000000e+00, %1526 ]
  %1594 = phi float [ %1567, %1582 ], [ %1567, %1578 ], [ 0.000000e+00, %1526 ]
  %1595 = phi float [ %1579, %1582 ], [ %1579, %1578 ], [ 0x3F70101020000000, %1526 ]
  %1596 = phi float [ %1590, %1582 ], [ 0.000000e+00, %1578 ], [ 0.000000e+00, %1526 ]
  %1597 = add i32 %34, 112
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = and i32 %1599, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = lshr i32 %1599, 8
  %1603 = and i32 %1602, 255
  %1604 = uitofp i32 %1603 to float
  %1605 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = fmul fast float %1604, %1605
  %1607 = fadd fast float %1606, %1601
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  br i1 %998, label %1610, label %1618

; <label>:1610                                    ; preds = %1591
  %1611 = fsub fast float 1.000000e+00, %1179
  %1612 = fmul fast float %1611, %981
  %1613 = fmul fast float %1611, %982
  %1614 = fmul fast float %1611, %983
  %1615 = fmul fast float %1611, %987
  %1616 = fmul fast float %1611, %988
  %1617 = fmul fast float %1611, %989
  br label %1618

; <label>:1618                                    ; preds = %1610, %1591
  %1619 = phi float [ %1612, %1610 ], [ %981, %1591 ]
  %1620 = phi float [ %1613, %1610 ], [ %982, %1591 ]
  %1621 = phi float [ %1614, %1610 ], [ %983, %1591 ]
  %1622 = phi float [ %1615, %1610 ], [ %987, %1591 ]
  %1623 = phi float [ %1616, %1610 ], [ %988, %1591 ]
  %1624 = phi float [ %1617, %1610 ], [ %989, %1591 ]
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = and i32 %1626, 3
  %1628 = icmp eq i32 %1627, 3
  br i1 %1628, label %1707, label %1629

; <label>:1629                                    ; preds = %1618
  %1630 = and i32 %1626, 16
  %1631 = icmp ne i32 %1630, 0
  %1632 = select i1 %1631, float %1179, float 0.000000e+00
  %1633 = icmp eq i32 %1627, 0
  br i1 %1633, label %1634, label %1662

; <label>:1634                                    ; preds = %1629
  %1635 = and i32 %1626, 64
  %1636 = icmp ne i32 %1635, 0
  %1637 = select i1 %1636, float %1179, float 0.000000e+00
  %1638 = fsub fast float %1399, %1619
  %1639 = fsub fast float %1400, %1620
  %1640 = fsub fast float %1401, %1621
  %1641 = fmul fast float %1632, %1638
  %1642 = fmul fast float %1632, %1639
  %1643 = fmul fast float %1632, %1640
  %1644 = fadd fast float %1641, %1619
  %1645 = fadd fast float %1642, %1620
  %1646 = fadd fast float %1643, %1621
  %1647 = fsub fast float %1385, %990
  %1648 = fmul fast float %1632, %1647
  %1649 = fadd fast float %1648, %990
  %1650 = fsub fast float %1527, %1622
  %1651 = fsub fast float %1528, %1623
  %1652 = fsub fast float %1529, %1624
  %1653 = fmul fast float %1637, %1650
  %1654 = fmul fast float %1637, %1651
  %1655 = fmul fast float %1637, %1652
  %1656 = fadd fast float %1653, %1622
  %1657 = fadd fast float %1654, %1623
  %1658 = fadd fast float %1655, %1624
  %1659 = fsub fast float %1609, %996
  %1660 = fmul fast float %1632, %1659
  %1661 = fadd fast float %1660, %996
  br label %1707

; <label>:1662                                    ; preds = %1629
  %1663 = icmp eq i32 %1627, 1
  br i1 %1663, label %1664, label %1677

; <label>:1664                                    ; preds = %1662
  %1665 = fadd fast float %1399, -1.000000e+00
  %1666 = fadd fast float %1400, -1.000000e+00
  %1667 = fadd fast float %1401, -1.000000e+00
  %1668 = fmul fast float %1632, %1665
  %1669 = fmul fast float %1632, %1666
  %1670 = fmul fast float %1632, %1667
  %1671 = fadd fast float %1668, 1.000000e+00
  %1672 = fadd fast float %1669, 1.000000e+00
  %1673 = fadd fast float %1670, 1.000000e+00
  %1674 = fmul fast float %1671, %1619
  %1675 = fmul fast float %1672, %1620
  %1676 = fmul fast float %1673, %1621
  br label %1707

; <label>:1677                                    ; preds = %1662
  %1678 = icmp eq i32 %1627, 2
  br i1 %1678, label %1679, label %1707

; <label>:1679                                    ; preds = %1677
  %1680 = call float @dx.op.unary.f32(i32 24, float %1399)  ; Sqrt(value)
  %1681 = call float @dx.op.unary.f32(i32 24, float %1400)  ; Sqrt(value)
  %1682 = call float @dx.op.unary.f32(i32 24, float %1401)  ; Sqrt(value)
  %1683 = fadd fast float %1680, -5.000000e-01
  %1684 = fadd fast float %1681, -5.000000e-01
  %1685 = fadd fast float %1682, -5.000000e-01
  %1686 = fmul fast float %1683, %1632
  %1687 = fmul fast float %1684, %1632
  %1688 = fmul fast float %1685, %1632
  %1689 = fadd fast float %1686, 5.000000e-01
  %1690 = fadd fast float %1687, 5.000000e-01
  %1691 = fadd fast float %1688, 5.000000e-01
  %1692 = fmul fast float %1689, 2.000000e+00
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = fmul fast float %1693, %1619
  %1695 = fadd fast float %1694, %1692
  %1696 = fmul fast float %1695, %1619
  %1697 = fmul fast float %1690, 2.000000e+00
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = fmul fast float %1698, %1620
  %1700 = fadd fast float %1699, %1697
  %1701 = fmul fast float %1700, %1620
  %1702 = fmul fast float %1691, 2.000000e+00
  %1703 = fsub fast float 1.000000e+00, %1702
  %1704 = fmul fast float %1703, %1621
  %1705 = fadd fast float %1704, %1702
  %1706 = fmul fast float %1705, %1621
  br label %1707

; <label>:1707                                    ; preds = %1679, %1677, %1664, %1634, %1618
  %1708 = phi float [ %1619, %1618 ], [ %1696, %1679 ], [ %1619, %1677 ], [ %1674, %1664 ], [ %1644, %1634 ]
  %1709 = phi float [ %1620, %1618 ], [ %1701, %1679 ], [ %1620, %1677 ], [ %1675, %1664 ], [ %1645, %1634 ]
  %1710 = phi float [ %1621, %1618 ], [ %1706, %1679 ], [ %1621, %1677 ], [ %1676, %1664 ], [ %1646, %1634 ]
  %1711 = phi float [ %1622, %1618 ], [ %1622, %1679 ], [ %1622, %1677 ], [ %1622, %1664 ], [ %1656, %1634 ]
  %1712 = phi float [ %1623, %1618 ], [ %1623, %1679 ], [ %1623, %1677 ], [ %1623, %1664 ], [ %1657, %1634 ]
  %1713 = phi float [ %1624, %1618 ], [ %1624, %1679 ], [ %1624, %1677 ], [ %1624, %1664 ], [ %1658, %1634 ]
  %1714 = phi float [ %990, %1618 ], [ %990, %1679 ], [ %990, %1677 ], [ %990, %1664 ], [ %1649, %1634 ]
  %1715 = phi float [ %996, %1618 ], [ %996, %1679 ], [ %996, %1677 ], [ %996, %1664 ], [ %1661, %1634 ]
  %1716 = and i32 %1626, 12
  %1717 = icmp eq i32 %1716, 12
  br i1 %1717, label %1834, label %1718

; <label>:1718                                    ; preds = %1707
  %1719 = and i32 %1626, 2097184
  %1720 = icmp eq i32 %1719, 2097184
  %1721 = select i1 %1720, float %1179, float 0.000000e+00
  %1722 = and i32 %1626, 4194336
  %1723 = icmp eq i32 %1722, 4194336
  %1724 = select i1 %1723, float %1179, float 0.000000e+00
  %1725 = and i32 %1626, 8388640
  %1726 = icmp eq i32 %1725, 8388640
  %1727 = select i1 %1726, float %1179, float 0.000000e+00
  %1728 = and i32 %1626, 2048
  %1729 = icmp ne i32 %1728, 0
  %1730 = select i1 %1729, float %1179, float 0.000000e+00
  %1731 = and i32 %1626, 8192
  %1732 = icmp ne i32 %1731, 0
  %1733 = select i1 %1732, float %1179, float 0.000000e+00
  %1734 = and i32 %1626, 16384
  %1735 = icmp ne i32 %1734, 0
  %1736 = select i1 %1735, float %1179, float 0.000000e+00
  %1737 = icmp eq i32 %1716, 0
  br i1 %1737, label %1738, label %1766

; <label>:1738                                    ; preds = %1718
  %1739 = fsub fast float %1480, %979
  %1740 = fsub fast float %1481, %980
  %1741 = fmul fast float %1721, %1739
  %1742 = fmul fast float %1721, %1740
  %1743 = fadd fast float %1741, %979
  %1744 = fadd fast float %1742, %980
  %1745 = fsub fast float %1482, %993
  %1746 = fmul fast float %1724, %1745
  %1747 = fadd fast float %1746, %993
  %1748 = fsub fast float %1479, %992
  %1749 = fmul fast float %1727, %1748
  %1750 = fadd fast float %1749, %992
  %1751 = fsub fast float %1595, %994
  %1752 = fmul fast float %1730, %1751
  %1753 = fadd fast float %1752, %994
  %1754 = fsub fast float %1592, %984
  %1755 = fsub fast float %1593, %985
  %1756 = fsub fast float %1594, %986
  %1757 = fmul fast float %1733, %1754
  %1758 = fmul fast float %1733, %1755
  %1759 = fmul fast float %1733, %1756
  %1760 = fadd fast float %1757, %984
  %1761 = fadd fast float %1758, %985
  %1762 = fadd fast float %1759, %986
  %1763 = fsub fast float %1596, %995
  %1764 = fmul fast float %1736, %1763
  %1765 = fadd fast float %1764, %995
  br label %1834

; <label>:1766                                    ; preds = %1718
  %1767 = icmp eq i32 %1716, 4
  br i1 %1767, label %1768, label %1810

; <label>:1768                                    ; preds = %1766
  %1769 = fmul fast float %1721, %1480
  %1770 = fmul fast float %1721, %1481
  %1771 = fadd fast float %1769, %979
  %1772 = fadd fast float %1770, %980
  %1773 = call float @dx.op.binary.f32(i32 36, float %993, float %1482)  ; FMin(a,b)
  %1774 = fsub fast float %1773, %993
  %1775 = fmul fast float %1774, %1724
  %1776 = fadd fast float %1775, %993
  %1777 = fadd fast float %1479, %992
  %1778 = fmul fast float %1777, 0x3FF337FAE0000000
  %1779 = fmul fast float %992, %992
  %1780 = fmul fast float %1479, %1479
  %1781 = fadd fast float %1780, %1779
  %1782 = fmul fast float %1781, 0x3FE5152B00000000
  %1783 = fmul fast float %992, 0xBFCC1F85E0000000
  %1784 = fmul fast float %1783, %1479
  %1785 = fadd fast float %1784, 0xBFE1363700000000
  %1786 = fadd fast float %1785, %1778
  %1787 = fsub fast float %1786, %1782
  %1788 = fmul fast float %1777, 0x3FBA6F0D00000000
  %1789 = fmul fast float %1781, 0x3FD0432880000000
  %1790 = fmul fast float %992, 0xBFEF110800000000
  %1791 = fmul fast float %1790, %1479
  %1792 = fadd fast float %1791, 1.000000e+00
  %1793 = fsub fast float %1792, %1788
  %1794 = fadd fast float %1793, %1789
  %1795 = fdiv fast float %1787, %1794
  %1796 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  %1797 = fsub fast float %1796, %992
  %1798 = fmul fast float %1797, %1727
  %1799 = fadd fast float %1798, %992
  %1800 = fmul fast float %1730, %1595
  %1801 = fadd fast float %1800, %994
  %1802 = fmul fast float %1733, %1592
  %1803 = fmul fast float %1733, %1593
  %1804 = fmul fast float %1733, %1594
  %1805 = fadd fast float %1802, %984
  %1806 = fadd fast float %1803, %985
  %1807 = fadd fast float %1804, %986
  %1808 = fmul fast float %1736, %1596
  %1809 = fadd fast float %1808, %995
  br label %1834

; <label>:1810                                    ; preds = %1766
  %1811 = icmp eq i32 %1716, 8
  br i1 %1811, label %1812, label %1834

; <label>:1812                                    ; preds = %1810
  %1813 = fmul fast float %1721, %1480
  %1814 = fmul fast float %1721, %1481
  %1815 = fadd fast float %1813, %979
  %1816 = fadd fast float %1814, %980
  %1817 = call float @dx.op.binary.f32(i32 36, float %993, float %1482)  ; FMin(a,b)
  %1818 = fsub fast float %1817, %993
  %1819 = fmul fast float %1818, %1724
  %1820 = fadd fast float %1819, %993
  %1821 = fsub fast float %1479, %992
  %1822 = fmul fast float %1727, %1821
  %1823 = fadd fast float %1822, %992
  %1824 = fmul fast float %1730, %1595
  %1825 = fadd fast float %1824, %994
  %1826 = fmul fast float %1733, %1592
  %1827 = fmul fast float %1733, %1593
  %1828 = fmul fast float %1733, %1594
  %1829 = fadd fast float %1826, %984
  %1830 = fadd fast float %1827, %985
  %1831 = fadd fast float %1828, %986
  %1832 = fmul fast float %1736, %1596
  %1833 = fadd fast float %1832, %995
  br label %1834

; <label>:1834                                    ; preds = %1812, %1810, %1768, %1738, %1707, %1178, %997, %978
  %1835 = phi float [ %979, %1707 ], [ %979, %1178 ], [ %979, %978 ], [ %1815, %1812 ], [ %979, %1810 ], [ %1771, %1768 ], [ %1743, %1738 ], [ %979, %997 ]
  %1836 = phi float [ %980, %1707 ], [ %980, %1178 ], [ %980, %978 ], [ %1816, %1812 ], [ %980, %1810 ], [ %1772, %1768 ], [ %1744, %1738 ], [ %980, %997 ]
  %1837 = phi float [ %1708, %1707 ], [ %981, %1178 ], [ %981, %978 ], [ %1708, %1812 ], [ %1708, %1810 ], [ %1708, %1768 ], [ %1708, %1738 ], [ %981, %997 ]
  %1838 = phi float [ %1709, %1707 ], [ %982, %1178 ], [ %982, %978 ], [ %1709, %1812 ], [ %1709, %1810 ], [ %1709, %1768 ], [ %1709, %1738 ], [ %982, %997 ]
  %1839 = phi float [ %1710, %1707 ], [ %983, %1178 ], [ %983, %978 ], [ %1710, %1812 ], [ %1710, %1810 ], [ %1710, %1768 ], [ %1710, %1738 ], [ %983, %997 ]
  %1840 = phi float [ %984, %1707 ], [ %984, %1178 ], [ %984, %978 ], [ %1829, %1812 ], [ %984, %1810 ], [ %1805, %1768 ], [ %1760, %1738 ], [ %984, %997 ]
  %1841 = phi float [ %985, %1707 ], [ %985, %1178 ], [ %985, %978 ], [ %1830, %1812 ], [ %985, %1810 ], [ %1806, %1768 ], [ %1761, %1738 ], [ %985, %997 ]
  %1842 = phi float [ %986, %1707 ], [ %986, %1178 ], [ %986, %978 ], [ %1831, %1812 ], [ %986, %1810 ], [ %1807, %1768 ], [ %1762, %1738 ], [ %986, %997 ]
  %1843 = phi float [ %1711, %1707 ], [ %987, %1178 ], [ %987, %978 ], [ %1711, %1812 ], [ %1711, %1810 ], [ %1711, %1768 ], [ %1711, %1738 ], [ %987, %997 ]
  %1844 = phi float [ %1712, %1707 ], [ %988, %1178 ], [ %988, %978 ], [ %1712, %1812 ], [ %1712, %1810 ], [ %1712, %1768 ], [ %1712, %1738 ], [ %988, %997 ]
  %1845 = phi float [ %1713, %1707 ], [ %989, %1178 ], [ %989, %978 ], [ %1713, %1812 ], [ %1713, %1810 ], [ %1713, %1768 ], [ %1713, %1738 ], [ %989, %997 ]
  %1846 = phi float [ %1714, %1707 ], [ %990, %1178 ], [ %990, %978 ], [ %1714, %1812 ], [ %1714, %1810 ], [ %1714, %1768 ], [ %1714, %1738 ], [ %990, %997 ]
  %1847 = phi float [ %992, %1707 ], [ %992, %1178 ], [ %992, %978 ], [ %1823, %1812 ], [ %992, %1810 ], [ %1799, %1768 ], [ %1750, %1738 ], [ %992, %997 ]
  %1848 = phi float [ %993, %1707 ], [ %993, %1178 ], [ %993, %978 ], [ %1820, %1812 ], [ %993, %1810 ], [ %1776, %1768 ], [ %1747, %1738 ], [ %993, %997 ]
  %1849 = phi float [ %994, %1707 ], [ %994, %1178 ], [ %994, %978 ], [ %1825, %1812 ], [ %994, %1810 ], [ %1801, %1768 ], [ %1753, %1738 ], [ %994, %997 ]
  %1850 = phi float [ %995, %1707 ], [ %995, %1178 ], [ %995, %978 ], [ %1833, %1812 ], [ %995, %1810 ], [ %1809, %1768 ], [ %1765, %1738 ], [ %995, %997 ]
  %1851 = phi float [ %1715, %1707 ], [ %996, %1178 ], [ %996, %978 ], [ %1715, %1812 ], [ %1715, %1810 ], [ %1715, %1768 ], [ %1715, %1738 ], [ %996, %997 ]
  br i1 %391, label %2689, label %1852

; <label>:1852                                    ; preds = %1834
  %1853 = icmp ult i32 %444, 3
  %1854 = add i32 %34, 56
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = add i32 %34, 60
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = or i32 %1859, %1856
  %1861 = icmp eq i32 %1860, 0
  br i1 %1861, label %2689, label %1862

; <label>:1862                                    ; preds = %1852
  %1863 = and i32 %1856, 262144
  %1864 = icmp ne i32 %1863, 0
  %1865 = select i1 %1864, float %39, float 1.000000e+00
  %1866 = select i1 %1864, float %40, float 0.000000e+00
  %1867 = select i1 %1864, float %41, float 0.000000e+00
  %1868 = select i1 %1864, float %42, float 1.000000e+00
  %1869 = select i1 %1864, float %43, float %71
  %1870 = select i1 %1864, float %44, float %72
  %1871 = add i32 %34, 316
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = lshr i32 %1873, 16
  %1875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1874)  ; LegacyF16ToF32(value)
  %1876 = fmul fast float %1875, 0x3F50624DE0000000
  %1877 = add i32 %34, 120
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = lshr i32 %1879, 16
  %1881 = and i32 %1880, 255
  %1882 = lshr i32 %1879, 24
  %1883 = add i32 %34, 324
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = and i32 %1885, 65535
  %1887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1886)  ; LegacyF16ToF32(value)
  %1888 = lshr i32 %1885, 16
  %1889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1888)  ; LegacyF16ToF32(value)
  %1890 = add i32 %34, 64
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = lshr i32 %1892, 22
  %1894 = shl nuw nsw i32 %1893, 5
  %1895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1894)  ; LegacyF16ToF32(value)
  %1896 = shl i32 %1892, 4
  %1897 = and i32 %1896, 32752
  %1898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1897)  ; LegacyF16ToF32(value)
  %1899 = lshr i32 %1892, 7
  %1900 = and i32 %1899, 32752
  %1901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1900)  ; LegacyF16ToF32(value)
  %1902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1903 = extractvalue %dx.types.CBufRet.f32 %1902, 3
  %1904 = fmul fast float %1903, 1.000000e+03
  %1905 = fmul fast float %341, %1904
  %1906 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1907 = fadd fast float %1906, %331
  %1908 = fmul fast float %342, %1904
  %1909 = call float @dx.op.unary.f32(i32 22, float %1908)  ; Frc(value)
  %1910 = fadd fast float %1909, %333
  %1911 = fmul fast float %1876, %1904
  %1912 = call float @dx.op.unary.f32(i32 22, float %1911)  ; Frc(value)
  %1913 = fmul fast float %1912, 0x401921FB60000000
  %1914 = fadd fast float %1913, %1895
  %1915 = call float @dx.op.unary.f32(i32 13, float %1914)  ; Sin(value)
  %1916 = call float @dx.op.unary.f32(i32 12, float %1914)  ; Cos(value)
  %1917 = fsub fast float -0.000000e+00, %1915
  %1918 = fadd fast float %1869, -5.000000e-01
  %1919 = fadd fast float %1870, -5.000000e-01
  %1920 = fmul fast float %1887, %1918
  %1921 = fmul fast float %1889, %1919
  %1922 = fadd fast float %1920, 5.000000e-01
  %1923 = fadd fast float %1921, 5.000000e-01
  %1924 = fmul fast float %1898, %1922
  %1925 = fmul fast float %1901, %1923
  %1926 = fmul fast float %1916, %1924
  %1927 = call float @dx.op.tertiary.f32(i32 46, float %1917, float %1925, float %1926)  ; FMad(a,b,c)
  %1928 = fmul fast float %1915, %1924
  %1929 = call float @dx.op.tertiary.f32(i32 46, float %1916, float %1925, float %1928)  ; FMad(a,b,c)
  %1930 = fadd fast float %1907, %1927
  %1931 = fadd fast float %1910, %1929
  %1932 = icmp ugt i32 %1881, 1
  %1933 = icmp ugt i32 %1879, 33554431
  %1934 = or i1 %1933, %1932
  br i1 %1934, label %1935, label %1960

; <label>:1935                                    ; preds = %1862
  %1936 = add i32 %34, 260
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = lshr i32 %1938, 16
  %1940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1939)  ; LegacyF16ToF32(value)
  %1941 = fmul fast float %1903, %1940
  %1942 = call float @dx.op.unary.f32(i32 22, float %1941)  ; Frc(value)
  %1943 = mul nuw nsw i32 %1881, %1882
  %1944 = uitofp i32 %1943 to float
  %1945 = fmul fast float %1942, %1944
  %1946 = call float @dx.op.unary.f32(i32 27, float %1945)  ; Round_ni(value)
  %1947 = fptoui float %1946 to i32
  %1948 = urem i32 %1947, %1881
  %1949 = udiv i32 %1947, %1882
  %1950 = call float @dx.op.unary.f32(i32 22, float %1930)  ; Frc(value)
  %1951 = call float @dx.op.unary.f32(i32 22, float %1931)  ; Frc(value)
  %1952 = uitofp i32 %1948 to float
  %1953 = uitofp i32 %1949 to float
  %1954 = fadd fast float %1950, %1952
  %1955 = fadd fast float %1951, %1953
  %1956 = uitofp i32 %1881 to float
  %1957 = uitofp i32 %1882 to float
  %1958 = fdiv fast float %1954, %1956
  %1959 = fdiv fast float %1955, %1957
  br label %1960

; <label>:1960                                    ; preds = %1935, %1862
  %1961 = phi float [ %1958, %1935 ], [ %1930, %1862 ]
  %1962 = phi float [ %1959, %1935 ], [ %1931, %1862 ]
  %1963 = and i32 %1856, 256
  %1964 = icmp eq i32 %1963, 0
  br i1 %1964, label %2011, label %1965

; <label>:1965                                    ; preds = %1960
  %1966 = add i32 %34, 432
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = add i32 %1968, 0
  %1970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1971 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1970, %dx.types.Handle %80, float %1961, float %1962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = add i32 %34, 132
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = shl i32 %1975, 4
  %1977 = and i32 %1976, 32752
  %1978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1977)  ; LegacyF16ToF32(value)
  %1979 = lshr i32 %1975, 7
  %1980 = and i32 %1979, 32752
  %1981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1980)  ; LegacyF16ToF32(value)
  %1982 = fsub fast float 1.000000e+00, %440
  %1983 = call float @dx.op.binary.f32(i32 35, float %1982, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1984 = bitcast float %440 to i32
  %1985 = sitofp i32 %1984 to float
  %1986 = fadd fast float %1985, 0xC1CFBF8940000000
  %1987 = fmul fast float %1981, %1986
  %1988 = fadd fast float %1987, 0x41CFBF8940000000
  %1989 = fptosi float %1988 to i32
  %1990 = bitcast i32 %1989 to float
  %1991 = bitcast float %1983 to i32
  %1992 = sitofp i32 %1991 to float
  %1993 = fadd fast float %1992, 0xC1CFBF8940000000
  %1994 = fmul fast float %1993, %1981
  %1995 = fadd fast float %1994, 0x41CFBF8940000000
  %1996 = fptosi float %1995 to i32
  %1997 = bitcast i32 %1996 to float
  %1998 = fmul fast float %1990, %1978
  %1999 = fmul fast float %1997, %1978
  %2000 = fsub fast float %1983, %1998
  %2001 = fadd fast float %1999, %1983
  %2002 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2003 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2004 = fsub fast float %1972, %2002
  %2005 = fsub fast float %2003, %2002
  %2006 = bitcast float %2005 to i32
  %2007 = sub nsw i32 2129859010, %2006
  %2008 = bitcast i32 %2007 to float
  %2009 = fmul fast float %2008, %2004
  %2010 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  br label %2011

; <label>:2011                                    ; preds = %1965, %1960
  %2012 = phi float [ %2010, %1965 ], [ %440, %1960 ]
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = and i32 %2014, 128
  %2016 = icmp eq i32 %2015, 0
  br i1 %2016, label %2033, label %2017

; <label>:2017                                    ; preds = %2011
  %2018 = add i32 %34, 416
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = add i32 %2020, 0
  %2022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2023 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2022, %dx.types.Handle %80, float %1961, float %1962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2024 = extractvalue %dx.types.ResRet.f32 %2023, 0
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = and i32 %2026, 524288
  %2028 = icmp ne i32 %2027, 0
  %2029 = fcmp fast ogt float %2024, 0x3FE0101020000000
  %2030 = select i1 %2029, float 1.000000e+00, float 0.000000e+00
  %2031 = select i1 %2028, float %2030, float %2024
  %2032 = fmul fast float %2031, %2012
  br label %2033

; <label>:2033                                    ; preds = %2017, %2011
  %2034 = phi float [ %2032, %2017 ], [ %2012, %2011 ]
  %2035 = fcmp fast ult float %2034, 0x3F70101020000000
  br i1 %2035, label %2689, label %2036

; <label>:2036                                    ; preds = %2033
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = and i32 %2038, 16
  %2040 = icmp eq i32 %2039, 0
  br i1 %2040, label %2239, label %2041

; <label>:2041                                    ; preds = %2036
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = add i32 %34, 368
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = add i32 %2046, 0
  %2048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2049 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2048, %dx.types.Handle %79, float %1961, float %1962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2050 = extractvalue %dx.types.ResRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.ResRet.f32 %2049, 1
  %2052 = extractvalue %dx.types.ResRet.f32 %2049, 2
  %2053 = extractvalue %dx.types.ResRet.f32 %2049, 3
  %2054 = and i32 %2043, 255
  %2055 = uitofp i32 %2054 to float
  %2056 = lshr i32 %2043, 8
  %2057 = and i32 %2056, 255
  %2058 = uitofp i32 %2057 to float
  %2059 = fmul fast float %2053, %2055
  %2060 = fadd fast float %2059, %2058
  %2061 = fmul fast float %2060, 0x3F70101000000000
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = and i32 %2063, 512
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2074, label %2066

; <label>:2066                                    ; preds = %2041
  %2067 = add i32 %34, 448
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = add i32 %2069, 0
  %2071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2071, %dx.types.Handle %80, float %1961, float %1962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  br label %2074

; <label>:2074                                    ; preds = %2066, %2041
  %2075 = phi float [ %2073, %2066 ], [ 1.000000e+00, %2041 ]
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = and i32 %2077, 33554432
  %2079 = icmp eq i32 %2078, 0
  br i1 %2079, label %2186, label %2080

; <label>:2080                                    ; preds = %2074
  %2081 = add i32 %34, 256
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = and i32 %2083, 65535
  %2085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2084)  ; LegacyF16ToF32(value)
  %2086 = lshr i32 %2083, 16
  %2087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2086)  ; LegacyF16ToF32(value)
  %2088 = add i32 %34, 260
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = and i32 %2090, 65535
  %2092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2091)  ; LegacyF16ToF32(value)
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = lshr i32 %2094, 24
  %2096 = uitofp i32 %2095 to float
  %2097 = fmul fast float %2096, 0x3F70101020000000
  %2098 = and i32 %2094, 255
  %2099 = uitofp i32 %2098 to float
  %2100 = fmul fast float %2099, 0x3F70101020000000
  %2101 = lshr i32 %2094, 8
  %2102 = and i32 %2101, 255
  %2103 = uitofp i32 %2102 to float
  %2104 = fmul fast float %2103, 0x3F70101020000000
  %2105 = lshr i32 %2094, 16
  %2106 = and i32 %2105, 255
  %2107 = uitofp i32 %2106 to float
  %2108 = fmul fast float %2107, 0x3F70101020000000
  %2109 = add i32 %34, 252
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = lshr i32 %2111, 24
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2113, 0x3F70101020000000
  %2115 = and i32 %2111, 255
  %2116 = uitofp i32 %2115 to float
  %2117 = fmul fast float %2116, 0x3F70101020000000
  %2118 = lshr i32 %2111, 8
  %2119 = and i32 %2118, 255
  %2120 = uitofp i32 %2119 to float
  %2121 = fmul fast float %2120, 0x3F70101020000000
  %2122 = lshr i32 %2111, 16
  %2123 = and i32 %2122, 255
  %2124 = uitofp i32 %2123 to float
  %2125 = fmul fast float %2124, 0x3F70101020000000
  %2126 = bitcast float %2050 to i32
  %2127 = ashr i32 %2126, 1
  %2128 = sub nsw i32 1597463174, %2127
  %2129 = bitcast i32 %2128 to float
  %2130 = fmul fast float %2050, 5.000000e-01
  %2131 = fmul fast float %2129, %2129
  %2132 = fmul fast float %2131, %2130
  %2133 = fsub fast float 1.500000e+00, %2132
  %2134 = fmul fast float %2129, %2050
  %2135 = fmul fast float %2134, %2133
  %2136 = bitcast float %2051 to i32
  %2137 = ashr i32 %2136, 1
  %2138 = sub nsw i32 1597463174, %2137
  %2139 = bitcast i32 %2138 to float
  %2140 = fmul fast float %2051, 5.000000e-01
  %2141 = fmul fast float %2139, %2139
  %2142 = fmul fast float %2141, %2140
  %2143 = fsub fast float 1.500000e+00, %2142
  %2144 = fmul fast float %2139, %2051
  %2145 = fmul fast float %2144, %2143
  %2146 = bitcast float %2052 to i32
  %2147 = ashr i32 %2146, 1
  %2148 = sub nsw i32 1597463174, %2147
  %2149 = bitcast i32 %2148 to float
  %2150 = fmul fast float %2052, 5.000000e-01
  %2151 = fmul fast float %2149, %2149
  %2152 = fmul fast float %2151, %2150
  %2153 = fsub fast float 1.500000e+00, %2152
  %2154 = fmul fast float %2149, %2052
  %2155 = fmul fast float %2154, %2153
  %2156 = fsub fast float %2135, %2117
  %2157 = fsub fast float %2145, %2121
  %2158 = fsub fast float %2155, %2125
  %2159 = fmul fast float %2156, %2085
  %2160 = fmul fast float %2157, %2087
  %2161 = fmul fast float %2158, %2092
  %2162 = fadd fast float %2159, %2100
  %2163 = fadd fast float %2160, %2104
  %2164 = fadd fast float %2161, %2108
  %2165 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2166 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2167 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2168 = fmul fast float %2165, %2165
  %2169 = fmul fast float %2166, %2166
  %2170 = fmul fast float %2167, %2167
  %2171 = fsub fast float %2168, %2050
  %2172 = fsub fast float %2169, %2051
  %2173 = fsub fast float %2170, %2052
  %2174 = fmul fast float %2171, %2075
  %2175 = fmul fast float %2172, %2075
  %2176 = fmul fast float %2173, %2075
  %2177 = fadd fast float %2174, %2050
  %2178 = fadd fast float %2175, %2051
  %2179 = fadd fast float %2176, %2052
  %2180 = fadd fast float %2097, %2061
  %2181 = fsub fast float %2180, %2114
  %2182 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2183 = fsub fast float %2182, %2061
  %2184 = fmul fast float %2183, %2075
  %2185 = fadd fast float %2184, %2061
  br label %2239

; <label>:2186                                    ; preds = %2074
  %2187 = and i32 %2077, 134217728
  %2188 = icmp eq i32 %2187, 0
  br i1 %2188, label %2223, label %2189

; <label>:2189                                    ; preds = %2186
  %2190 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %2191 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %2192 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %2193 = fadd fast float %2190, -5.000000e-01
  %2194 = fadd fast float %2191, -5.000000e-01
  %2195 = fadd fast float %2192, -5.000000e-01
  %2196 = fmul fast float %2193, %2075
  %2197 = fmul fast float %2194, %2075
  %2198 = fmul fast float %2195, %2075
  %2199 = fadd fast float %2196, 5.000000e-01
  %2200 = fadd fast float %2197, 5.000000e-01
  %2201 = fadd fast float %2198, 5.000000e-01
  %2202 = call float @dx.op.unary.f32(i32 24, float %2050)  ; Sqrt(value)
  %2203 = call float @dx.op.unary.f32(i32 24, float %2051)  ; Sqrt(value)
  %2204 = call float @dx.op.unary.f32(i32 24, float %2052)  ; Sqrt(value)
  %2205 = fmul fast float %2199, 2.000000e+00
  %2206 = fsub fast float 1.000000e+00, %2205
  %2207 = fmul fast float %2206, %2202
  %2208 = fadd fast float %2207, %2205
  %2209 = fmul fast float %2208, %2202
  %2210 = fmul fast float %2200, 2.000000e+00
  %2211 = fsub fast float 1.000000e+00, %2210
  %2212 = fmul fast float %2211, %2203
  %2213 = fadd fast float %2212, %2210
  %2214 = fmul fast float %2213, %2203
  %2215 = fmul fast float %2201, 2.000000e+00
  %2216 = fsub fast float 1.000000e+00, %2215
  %2217 = fmul fast float %2216, %2204
  %2218 = fadd fast float %2217, %2215
  %2219 = fmul fast float %2218, %2204
  %2220 = fmul fast float %2209, %2209
  %2221 = fmul fast float %2214, %2214
  %2222 = fmul fast float %2219, %2219
  br label %2239

; <label>:2223                                    ; preds = %2186
  %2224 = fmul fast float %318, %318
  %2225 = fmul fast float %322, %322
  %2226 = fmul fast float %326, %326
  %2227 = fadd fast float %2224, -1.000000e+00
  %2228 = fadd fast float %2225, -1.000000e+00
  %2229 = fadd fast float %2226, -1.000000e+00
  %2230 = fmul fast float %2075, %2227
  %2231 = fmul fast float %2075, %2228
  %2232 = fmul fast float %2075, %2229
  %2233 = fadd fast float %2230, 1.000000e+00
  %2234 = fadd fast float %2231, 1.000000e+00
  %2235 = fadd fast float %2232, 1.000000e+00
  %2236 = fmul fast float %2233, %2050
  %2237 = fmul fast float %2234, %2051
  %2238 = fmul fast float %2235, %2052
  br label %2239

; <label>:2239                                    ; preds = %2223, %2189, %2080, %2036
  %2240 = phi float [ %2185, %2080 ], [ %2061, %2189 ], [ %2061, %2223 ], [ 0x3FA23C0BE0000000, %2036 ]
  %2241 = phi float [ %2177, %2080 ], [ %2220, %2189 ], [ %2236, %2223 ], [ 1.000000e+00, %2036 ]
  %2242 = phi float [ %2178, %2080 ], [ %2221, %2189 ], [ %2237, %2223 ], [ 1.000000e+00, %2036 ]
  %2243 = phi float [ %2179, %2080 ], [ %2222, %2189 ], [ %2238, %2223 ], [ 1.000000e+00, %2036 ]
  %2244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.i32 %2244, 1
  %2246 = and i32 %2245, 1
  %2247 = icmp ne i32 %2246, 0
  %2248 = add i32 %34, 356
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = and i32 %2250, 32
  %2252 = icmp ne i32 %2251, 0
  %2253 = and i1 %2247, %2252
  %2254 = select i1 %2253, float 1.000000e+00, float %2241
  %2255 = select i1 %2253, float 0x3FD3333340000000, float %2242
  %2256 = select i1 %2253, float 0x3FD3333340000000, float %2243
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = and i32 %2258, 32
  %2260 = icmp eq i32 %2259, 0
  br i1 %2260, label %2333, label %2261

; <label>:2261                                    ; preds = %2239
  %2262 = add i32 %34, 124
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = add i32 %34, 384
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = add i32 %2267, 0
  %2269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2269, %dx.types.Handle %79, float %1961, float %1962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2271 = extractvalue %dx.types.ResRet.f32 %2270, 0
  %2272 = extractvalue %dx.types.ResRet.f32 %2270, 1
  %2273 = extractvalue %dx.types.ResRet.f32 %2270, 2
  %2274 = extractvalue %dx.types.ResRet.f32 %2270, 3
  %2275 = and i32 %2264, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = lshr i32 %2264, 8
  %2278 = and i32 %2277, 255
  %2279 = uitofp i32 %2278 to float
  %2280 = lshr i32 %2264, 16
  %2281 = and i32 %2280, 255
  %2282 = uitofp i32 %2281 to float
  %2283 = fmul fast float %2282, 0x3F70101000000000
  %2284 = fmul fast float %2271, %2276
  %2285 = fadd fast float %2284, %2279
  %2286 = fmul fast float %2285, 0x3F70101000000000
  %2287 = fadd fast float %2272, -5.000000e-01
  %2288 = fadd fast float %2274, -5.000000e-01
  %2289 = fmul fast float %2287, %2283
  %2290 = fmul fast float %2288, %2283
  %2291 = fadd fast float %2289, 5.000000e-01
  %2292 = fadd fast float %2290, 5.000000e-01
  %2293 = fmul fast float %2291, 2.000000e+00
  %2294 = fadd fast float %2293, -1.000000e+00
  %2295 = fmul fast float %2292, 2.000000e+00
  %2296 = fadd fast float %2295, -1.000000e+00
  %2297 = fadd fast float %2294, %2296
  %2298 = fmul fast float %2297, 5.000000e-01
  %2299 = fsub fast float %2294, %2296
  %2300 = fmul fast float %2299, 5.000000e-01
  %2301 = call float @dx.op.unary.f32(i32 6, float %2298)  ; FAbs(value)
  %2302 = fsub fast float 1.000000e+00, %2301
  %2303 = call float @dx.op.unary.f32(i32 6, float %2300)  ; FAbs(value)
  %2304 = fsub fast float %2302, %2303
  %2305 = call float @dx.op.dot3.f32(i32 55, float %2298, float %2300, float %2304, float %2298, float %2300, float %2304)  ; Dot3(ax,ay,az,bx,by,bz)
  %2306 = call float @dx.op.unary.f32(i32 25, float %2305)  ; Rsqrt(value)
  %2307 = fmul fast float %2298, %2306
  %2308 = fmul fast float %2300, %2306
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = and i32 %2310, 67108864
  %2312 = icmp eq i32 %2311, 0
  br i1 %2312, label %2329, label %2313

; <label>:2313                                    ; preds = %2261
  %2314 = add i32 %34, 312
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = and i32 %2316, 65535
  %2318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2317)  ; LegacyF16ToF32(value)
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = and i32 %2320, 65535
  %2322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2321)  ; LegacyF16ToF32(value)
  %2323 = lshr i32 %2316, 16
  %2324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2323)  ; LegacyF16ToF32(value)
  %2325 = fsub fast float %2286, %2324
  %2326 = fmul fast float %2325, %2318
  %2327 = fadd fast float %2326, %2322
  %2328 = call float @dx.op.unary.f32(i32 7, float %2327)  ; Saturate(value)
  br label %2329

; <label>:2329                                    ; preds = %2313, %2261
  %2330 = phi float [ %2328, %2313 ], [ %2286, %2261 ]
  %2331 = call float @dx.op.dot2.f32(i32 54, float %2307, float %2308, float %1865, float %1866)  ; Dot2(ax,ay,bx,by)
  %2332 = call float @dx.op.dot2.f32(i32 54, float %2307, float %2308, float %1867, float %1868)  ; Dot2(ax,ay,bx,by)
  br label %2333

; <label>:2333                                    ; preds = %2329, %2239
  %2334 = phi float [ %2330, %2329 ], [ 0x3FD6666660000000, %2239 ]
  %2335 = phi float [ %2331, %2329 ], [ 0.000000e+00, %2239 ]
  %2336 = phi float [ %2332, %2329 ], [ 0.000000e+00, %2239 ]
  %2337 = phi float [ %2273, %2329 ], [ 1.000000e+00, %2239 ]
  %2338 = add i32 %34, 192
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = lshr i32 %2340, 22
  %2342 = shl nuw nsw i32 %2341, 5
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 64
  %2347 = icmp eq i32 %2346, 0
  br i1 %2347, label %2381, label %2348

; <label>:2348                                    ; preds = %2333
  %2349 = add i32 %34, 400
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = add i32 %2351, 0
  %2353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2352, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 131072
  %2357 = icmp eq i32 %2356, 0
  %2358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2353, %dx.types.Handle %79, float %1961, float %1962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2359 = extractvalue %dx.types.ResRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.ResRet.f32 %2358, 1
  %2361 = extractvalue %dx.types.ResRet.f32 %2358, 2
  %2362 = fmul fast float %2359, %306
  %2363 = fmul fast float %2360, %309
  %2364 = fmul fast float %2361, %312
  br i1 %2357, label %2371, label %2365

; <label>:2365                                    ; preds = %2348
  %2366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.f32 %2366, 0
  %2368 = fmul fast float %2367, %2362
  %2369 = fmul fast float %2367, %2363
  %2370 = fmul fast float %2367, %2364
  br label %2371

; <label>:2371                                    ; preds = %2365, %2348
  %2372 = phi float [ %2368, %2365 ], [ %2362, %2348 ]
  %2373 = phi float [ %2369, %2365 ], [ %2363, %2348 ]
  %2374 = phi float [ %2370, %2365 ], [ %2364, %2348 ]
  %2375 = fmul fast float %2372, %2343
  %2376 = select i1 %205, float %2375, float %2372
  %2377 = call float @dx.op.dot3.f32(i32 55, float %2376, float %2373, float %2374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2378 = select i1 %205, float 0.000000e+00, float %2372
  %2379 = select i1 %205, float %2377, float %2373
  %2380 = select i1 %205, float 0.000000e+00, float %2374
  br label %2381

; <label>:2381                                    ; preds = %2371, %2333
  %2382 = phi float [ %2378, %2371 ], [ 0.000000e+00, %2333 ]
  %2383 = phi float [ %2379, %2371 ], [ 0.000000e+00, %2333 ]
  %2384 = phi float [ %2380, %2371 ], [ 0.000000e+00, %2333 ]
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 26624
  %2388 = icmp eq i32 %2387, 0
  br i1 %2388, label %2446, label %2389

; <label>:2389                                    ; preds = %2381
  %2390 = add i32 %34, 464
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = add i32 %2392, 0
  %2394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2394, %dx.types.Handle %80, float %1961, float %1962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.ResRet.f32 %2395, 1
  %2398 = extractvalue %dx.types.ResRet.f32 %2395, 3
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 1048576
  %2402 = icmp ne i32 %2401, 0
  %2403 = and i32 %2400, 8192
  %2404 = icmp eq i32 %2403, 0
  br i1 %2404, label %2419, label %2405

; <label>:2405                                    ; preds = %2389
  %2406 = extractvalue %dx.types.ResRet.f32 %2395, 2
  %2407 = select i1 %2402, float %2406, float %2397
  %2408 = select i1 %2402, float %2396, float %2397
  %2409 = add i32 %34, 128
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = lshr i32 %2411, 16
  %2413 = and i32 %2412, 255
  %2414 = uitofp i32 %2413 to float
  %2415 = fmul fast float %2414, 0x3F80101020000000
  %2416 = fmul fast float %2415, %2408
  %2417 = fmul fast float %2415, %2397
  %2418 = fmul fast float %2415, %2407
  br label %2419

; <label>:2419                                    ; preds = %2405, %2389
  %2420 = phi float [ %2416, %2405 ], [ 0.000000e+00, %2389 ]
  %2421 = phi float [ %2417, %2405 ], [ 0.000000e+00, %2389 ]
  %2422 = phi float [ %2418, %2405 ], [ 0.000000e+00, %2389 ]
  %2423 = and i32 %2400, 2048
  %2424 = icmp eq i32 %2423, 0
  br i1 %2424, label %2433, label %2425

; <label>:2425                                    ; preds = %2419
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = shl i32 %2427, 4
  %2429 = and i32 %2428, 32752
  %2430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2429)  ; LegacyF16ToF32(value)
  %2431 = fmul fast float %2430, %2398
  %2432 = call float @dx.op.binary.f32(i32 35, float %2431, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2433

; <label>:2433                                    ; preds = %2425, %2419
  %2434 = phi float [ %2432, %2425 ], [ 0x3F70101020000000, %2419 ]
  %2435 = and i32 %2400, 16384
  %2436 = icmp eq i32 %2435, 0
  br i1 %2436, label %2446, label %2437

; <label>:2437                                    ; preds = %2433
  %2438 = add i32 %34, 128
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = lshr i32 %2440, 24
  %2442 = uitofp i32 %2441 to float
  %2443 = fmul fast float %2396, 0x3F70101020000000
  %2444 = select i1 %2402, float 0x3F70101020000000, float %2443
  %2445 = fmul fast float %2444, %2442
  br label %2446

; <label>:2446                                    ; preds = %2437, %2433, %2381
  %2447 = phi float [ %2420, %2437 ], [ %2420, %2433 ], [ 0.000000e+00, %2381 ]
  %2448 = phi float [ %2421, %2437 ], [ %2421, %2433 ], [ 0.000000e+00, %2381 ]
  %2449 = phi float [ %2422, %2437 ], [ %2422, %2433 ], [ 0.000000e+00, %2381 ]
  %2450 = phi float [ %2434, %2437 ], [ %2434, %2433 ], [ 0x3F70101020000000, %2381 ]
  %2451 = phi float [ %2445, %2437 ], [ 0.000000e+00, %2433 ], [ 0.000000e+00, %2381 ]
  %2452 = add i32 %34, 128
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 255
  %2456 = uitofp i32 %2455 to float
  %2457 = lshr i32 %2454, 8
  %2458 = and i32 %2457, 255
  %2459 = uitofp i32 %2458 to float
  %2460 = call float @dx.op.dot3.f32(i32 55, float %2254, float %2255, float %2256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2461 = fmul fast float %2459, %2460
  %2462 = fadd fast float %2461, %2456
  %2463 = fmul fast float %2462, 0x3F70101020000000
  %2464 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  br i1 %1853, label %2465, label %2473

; <label>:2465                                    ; preds = %2446
  %2466 = fsub fast float 1.000000e+00, %2034
  %2467 = fmul fast float %2466, %1837
  %2468 = fmul fast float %2466, %1838
  %2469 = fmul fast float %2466, %1839
  %2470 = fmul fast float %2466, %1843
  %2471 = fmul fast float %2466, %1844
  %2472 = fmul fast float %2466, %1845
  br label %2473

; <label>:2473                                    ; preds = %2465, %2446
  %2474 = phi float [ %2467, %2465 ], [ %1837, %2446 ]
  %2475 = phi float [ %2468, %2465 ], [ %1838, %2446 ]
  %2476 = phi float [ %2469, %2465 ], [ %1839, %2446 ]
  %2477 = phi float [ %2470, %2465 ], [ %1843, %2446 ]
  %2478 = phi float [ %2471, %2465 ], [ %1844, %2446 ]
  %2479 = phi float [ %2472, %2465 ], [ %1845, %2446 ]
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 3
  %2483 = icmp eq i32 %2482, 3
  br i1 %2483, label %2562, label %2484

; <label>:2484                                    ; preds = %2473
  %2485 = and i32 %2481, 16
  %2486 = icmp ne i32 %2485, 0
  %2487 = select i1 %2486, float %2034, float 0.000000e+00
  %2488 = icmp eq i32 %2482, 0
  br i1 %2488, label %2489, label %2517

; <label>:2489                                    ; preds = %2484
  %2490 = and i32 %2481, 64
  %2491 = icmp ne i32 %2490, 0
  %2492 = select i1 %2491, float %2034, float 0.000000e+00
  %2493 = fsub fast float %2254, %2474
  %2494 = fsub fast float %2255, %2475
  %2495 = fsub fast float %2256, %2476
  %2496 = fmul fast float %2487, %2493
  %2497 = fmul fast float %2487, %2494
  %2498 = fmul fast float %2487, %2495
  %2499 = fadd fast float %2496, %2474
  %2500 = fadd fast float %2497, %2475
  %2501 = fadd fast float %2498, %2476
  %2502 = fsub fast float %2240, %1846
  %2503 = fmul fast float %2487, %2502
  %2504 = fadd fast float %2503, %1846
  %2505 = fsub fast float %2382, %2477
  %2506 = fsub fast float %2383, %2478
  %2507 = fsub fast float %2384, %2479
  %2508 = fmul fast float %2492, %2505
  %2509 = fmul fast float %2492, %2506
  %2510 = fmul fast float %2492, %2507
  %2511 = fadd fast float %2508, %2477
  %2512 = fadd fast float %2509, %2478
  %2513 = fadd fast float %2510, %2479
  %2514 = fsub fast float %2464, %1851
  %2515 = fmul fast float %2487, %2514
  %2516 = fadd fast float %2515, %1851
  br label %2562

; <label>:2517                                    ; preds = %2484
  %2518 = icmp eq i32 %2482, 1
  br i1 %2518, label %2519, label %2532

; <label>:2519                                    ; preds = %2517
  %2520 = fadd fast float %2254, -1.000000e+00
  %2521 = fadd fast float %2255, -1.000000e+00
  %2522 = fadd fast float %2256, -1.000000e+00
  %2523 = fmul fast float %2487, %2520
  %2524 = fmul fast float %2487, %2521
  %2525 = fmul fast float %2487, %2522
  %2526 = fadd fast float %2523, 1.000000e+00
  %2527 = fadd fast float %2524, 1.000000e+00
  %2528 = fadd fast float %2525, 1.000000e+00
  %2529 = fmul fast float %2526, %2474
  %2530 = fmul fast float %2527, %2475
  %2531 = fmul fast float %2528, %2476
  br label %2562

; <label>:2532                                    ; preds = %2517
  %2533 = icmp eq i32 %2482, 2
  br i1 %2533, label %2534, label %2562

; <label>:2534                                    ; preds = %2532
  %2535 = call float @dx.op.unary.f32(i32 24, float %2254)  ; Sqrt(value)
  %2536 = call float @dx.op.unary.f32(i32 24, float %2255)  ; Sqrt(value)
  %2537 = call float @dx.op.unary.f32(i32 24, float %2256)  ; Sqrt(value)
  %2538 = fadd fast float %2535, -5.000000e-01
  %2539 = fadd fast float %2536, -5.000000e-01
  %2540 = fadd fast float %2537, -5.000000e-01
  %2541 = fmul fast float %2538, %2487
  %2542 = fmul fast float %2539, %2487
  %2543 = fmul fast float %2540, %2487
  %2544 = fadd fast float %2541, 5.000000e-01
  %2545 = fadd fast float %2542, 5.000000e-01
  %2546 = fadd fast float %2543, 5.000000e-01
  %2547 = fmul fast float %2544, 2.000000e+00
  %2548 = fsub fast float 1.000000e+00, %2547
  %2549 = fmul fast float %2548, %2474
  %2550 = fadd fast float %2549, %2547
  %2551 = fmul fast float %2550, %2474
  %2552 = fmul fast float %2545, 2.000000e+00
  %2553 = fsub fast float 1.000000e+00, %2552
  %2554 = fmul fast float %2553, %2475
  %2555 = fadd fast float %2554, %2552
  %2556 = fmul fast float %2555, %2475
  %2557 = fmul fast float %2546, 2.000000e+00
  %2558 = fsub fast float 1.000000e+00, %2557
  %2559 = fmul fast float %2558, %2476
  %2560 = fadd fast float %2559, %2557
  %2561 = fmul fast float %2560, %2476
  br label %2562

; <label>:2562                                    ; preds = %2534, %2532, %2519, %2489, %2473
  %2563 = phi float [ %2474, %2473 ], [ %2551, %2534 ], [ %2474, %2532 ], [ %2529, %2519 ], [ %2499, %2489 ]
  %2564 = phi float [ %2475, %2473 ], [ %2556, %2534 ], [ %2475, %2532 ], [ %2530, %2519 ], [ %2500, %2489 ]
  %2565 = phi float [ %2476, %2473 ], [ %2561, %2534 ], [ %2476, %2532 ], [ %2531, %2519 ], [ %2501, %2489 ]
  %2566 = phi float [ %2477, %2473 ], [ %2477, %2534 ], [ %2477, %2532 ], [ %2477, %2519 ], [ %2511, %2489 ]
  %2567 = phi float [ %2478, %2473 ], [ %2478, %2534 ], [ %2478, %2532 ], [ %2478, %2519 ], [ %2512, %2489 ]
  %2568 = phi float [ %2479, %2473 ], [ %2479, %2534 ], [ %2479, %2532 ], [ %2479, %2519 ], [ %2513, %2489 ]
  %2569 = phi float [ %1846, %2473 ], [ %1846, %2534 ], [ %1846, %2532 ], [ %1846, %2519 ], [ %2504, %2489 ]
  %2570 = phi float [ %1851, %2473 ], [ %1851, %2534 ], [ %1851, %2532 ], [ %1851, %2519 ], [ %2516, %2489 ]
  %2571 = and i32 %2481, 12
  %2572 = icmp eq i32 %2571, 12
  br i1 %2572, label %2689, label %2573

; <label>:2573                                    ; preds = %2562
  %2574 = and i32 %2481, 2097184
  %2575 = icmp eq i32 %2574, 2097184
  %2576 = select i1 %2575, float %2034, float 0.000000e+00
  %2577 = and i32 %2481, 4194336
  %2578 = icmp eq i32 %2577, 4194336
  %2579 = select i1 %2578, float %2034, float 0.000000e+00
  %2580 = and i32 %2481, 8388640
  %2581 = icmp eq i32 %2580, 8388640
  %2582 = select i1 %2581, float %2034, float 0.000000e+00
  %2583 = and i32 %2481, 2048
  %2584 = icmp ne i32 %2583, 0
  %2585 = select i1 %2584, float %2034, float 0.000000e+00
  %2586 = and i32 %2481, 8192
  %2587 = icmp ne i32 %2586, 0
  %2588 = select i1 %2587, float %2034, float 0.000000e+00
  %2589 = and i32 %2481, 16384
  %2590 = icmp ne i32 %2589, 0
  %2591 = select i1 %2590, float %2034, float 0.000000e+00
  %2592 = icmp eq i32 %2571, 0
  br i1 %2592, label %2593, label %2621

; <label>:2593                                    ; preds = %2573
  %2594 = fsub fast float %2335, %1835
  %2595 = fsub fast float %2336, %1836
  %2596 = fmul fast float %2576, %2594
  %2597 = fmul fast float %2576, %2595
  %2598 = fadd fast float %2596, %1835
  %2599 = fadd fast float %2597, %1836
  %2600 = fsub fast float %2337, %1848
  %2601 = fmul fast float %2579, %2600
  %2602 = fadd fast float %2601, %1848
  %2603 = fsub fast float %2334, %1847
  %2604 = fmul fast float %2582, %2603
  %2605 = fadd fast float %2604, %1847
  %2606 = fsub fast float %2450, %1849
  %2607 = fmul fast float %2585, %2606
  %2608 = fadd fast float %2607, %1849
  %2609 = fsub fast float %2447, %1840
  %2610 = fsub fast float %2448, %1841
  %2611 = fsub fast float %2449, %1842
  %2612 = fmul fast float %2588, %2609
  %2613 = fmul fast float %2588, %2610
  %2614 = fmul fast float %2588, %2611
  %2615 = fadd fast float %2612, %1840
  %2616 = fadd fast float %2613, %1841
  %2617 = fadd fast float %2614, %1842
  %2618 = fsub fast float %2451, %1850
  %2619 = fmul fast float %2591, %2618
  %2620 = fadd fast float %2619, %1850
  br label %2689

; <label>:2621                                    ; preds = %2573
  %2622 = icmp eq i32 %2571, 4
  br i1 %2622, label %2623, label %2665

; <label>:2623                                    ; preds = %2621
  %2624 = fmul fast float %2576, %2335
  %2625 = fmul fast float %2576, %2336
  %2626 = fadd fast float %2624, %1835
  %2627 = fadd fast float %2625, %1836
  %2628 = call float @dx.op.binary.f32(i32 36, float %1848, float %2337)  ; FMin(a,b)
  %2629 = fsub fast float %2628, %1848
  %2630 = fmul fast float %2629, %2579
  %2631 = fadd fast float %2630, %1848
  %2632 = fadd fast float %2334, %1847
  %2633 = fmul fast float %2632, 0x3FF337FAE0000000
  %2634 = fmul fast float %1847, %1847
  %2635 = fmul fast float %2334, %2334
  %2636 = fadd fast float %2635, %2634
  %2637 = fmul fast float %2636, 0x3FE5152B00000000
  %2638 = fmul fast float %1847, 0xBFCC1F85E0000000
  %2639 = fmul fast float %2638, %2334
  %2640 = fadd fast float %2639, 0xBFE1363700000000
  %2641 = fadd fast float %2640, %2633
  %2642 = fsub fast float %2641, %2637
  %2643 = fmul fast float %2632, 0x3FBA6F0D00000000
  %2644 = fmul fast float %2636, 0x3FD0432880000000
  %2645 = fmul fast float %1847, 0xBFEF110800000000
  %2646 = fmul fast float %2645, %2334
  %2647 = fadd fast float %2646, 1.000000e+00
  %2648 = fsub fast float %2647, %2643
  %2649 = fadd fast float %2648, %2644
  %2650 = fdiv fast float %2642, %2649
  %2651 = call float @dx.op.unary.f32(i32 7, float %2650)  ; Saturate(value)
  %2652 = fsub fast float %2651, %1847
  %2653 = fmul fast float %2652, %2582
  %2654 = fadd fast float %2653, %1847
  %2655 = fmul fast float %2585, %2450
  %2656 = fadd fast float %2655, %1849
  %2657 = fmul fast float %2588, %2447
  %2658 = fmul fast float %2588, %2448
  %2659 = fmul fast float %2588, %2449
  %2660 = fadd fast float %2657, %1840
  %2661 = fadd fast float %2658, %1841
  %2662 = fadd fast float %2659, %1842
  %2663 = fmul fast float %2591, %2451
  %2664 = fadd fast float %2663, %1850
  br label %2689

; <label>:2665                                    ; preds = %2621
  %2666 = icmp eq i32 %2571, 8
  br i1 %2666, label %2667, label %2689

; <label>:2667                                    ; preds = %2665
  %2668 = fmul fast float %2576, %2335
  %2669 = fmul fast float %2576, %2336
  %2670 = fadd fast float %2668, %1835
  %2671 = fadd fast float %2669, %1836
  %2672 = call float @dx.op.binary.f32(i32 36, float %1848, float %2337)  ; FMin(a,b)
  %2673 = fsub fast float %2672, %1848
  %2674 = fmul fast float %2673, %2579
  %2675 = fadd fast float %2674, %1848
  %2676 = fsub fast float %2334, %1847
  %2677 = fmul fast float %2582, %2676
  %2678 = fadd fast float %2677, %1847
  %2679 = fmul fast float %2585, %2450
  %2680 = fadd fast float %2679, %1849
  %2681 = fmul fast float %2588, %2447
  %2682 = fmul fast float %2588, %2448
  %2683 = fmul fast float %2588, %2449
  %2684 = fadd fast float %2681, %1840
  %2685 = fadd fast float %2682, %1841
  %2686 = fadd fast float %2683, %1842
  %2687 = fmul fast float %2591, %2451
  %2688 = fadd fast float %2687, %1850
  br label %2689

; <label>:2689                                    ; preds = %2667, %2665, %2623, %2593, %2562, %2033, %1852, %1834
  %2690 = phi float [ %1835, %2562 ], [ %1835, %2033 ], [ %1835, %1834 ], [ %2670, %2667 ], [ %1835, %2665 ], [ %2626, %2623 ], [ %2598, %2593 ], [ %1835, %1852 ]
  %2691 = phi float [ %1836, %2562 ], [ %1836, %2033 ], [ %1836, %1834 ], [ %2671, %2667 ], [ %1836, %2665 ], [ %2627, %2623 ], [ %2599, %2593 ], [ %1836, %1852 ]
  %2692 = phi float [ %2563, %2562 ], [ %1837, %2033 ], [ %1837, %1834 ], [ %2563, %2667 ], [ %2563, %2665 ], [ %2563, %2623 ], [ %2563, %2593 ], [ %1837, %1852 ]
  %2693 = phi float [ %2564, %2562 ], [ %1838, %2033 ], [ %1838, %1834 ], [ %2564, %2667 ], [ %2564, %2665 ], [ %2564, %2623 ], [ %2564, %2593 ], [ %1838, %1852 ]
  %2694 = phi float [ %2565, %2562 ], [ %1839, %2033 ], [ %1839, %1834 ], [ %2565, %2667 ], [ %2565, %2665 ], [ %2565, %2623 ], [ %2565, %2593 ], [ %1839, %1852 ]
  %2695 = phi float [ %1840, %2562 ], [ %1840, %2033 ], [ %1840, %1834 ], [ %2684, %2667 ], [ %1840, %2665 ], [ %2660, %2623 ], [ %2615, %2593 ], [ %1840, %1852 ]
  %2696 = phi float [ %1841, %2562 ], [ %1841, %2033 ], [ %1841, %1834 ], [ %2685, %2667 ], [ %1841, %2665 ], [ %2661, %2623 ], [ %2616, %2593 ], [ %1841, %1852 ]
  %2697 = phi float [ %1842, %2562 ], [ %1842, %2033 ], [ %1842, %1834 ], [ %2686, %2667 ], [ %1842, %2665 ], [ %2662, %2623 ], [ %2617, %2593 ], [ %1842, %1852 ]
  %2698 = phi float [ %2566, %2562 ], [ %1843, %2033 ], [ %1843, %1834 ], [ %2566, %2667 ], [ %2566, %2665 ], [ %2566, %2623 ], [ %2566, %2593 ], [ %1843, %1852 ]
  %2699 = phi float [ %2567, %2562 ], [ %1844, %2033 ], [ %1844, %1834 ], [ %2567, %2667 ], [ %2567, %2665 ], [ %2567, %2623 ], [ %2567, %2593 ], [ %1844, %1852 ]
  %2700 = phi float [ %2568, %2562 ], [ %1845, %2033 ], [ %1845, %1834 ], [ %2568, %2667 ], [ %2568, %2665 ], [ %2568, %2623 ], [ %2568, %2593 ], [ %1845, %1852 ]
  %2701 = phi float [ %2569, %2562 ], [ %1846, %2033 ], [ %1846, %1834 ], [ %2569, %2667 ], [ %2569, %2665 ], [ %2569, %2623 ], [ %2569, %2593 ], [ %1846, %1852 ]
  %2702 = phi float [ %1847, %2562 ], [ %1847, %2033 ], [ %1847, %1834 ], [ %2678, %2667 ], [ %1847, %2665 ], [ %2654, %2623 ], [ %2605, %2593 ], [ %1847, %1852 ]
  %2703 = phi float [ %1848, %2562 ], [ %1848, %2033 ], [ %1848, %1834 ], [ %2675, %2667 ], [ %1848, %2665 ], [ %2631, %2623 ], [ %2602, %2593 ], [ %1848, %1852 ]
  %2704 = phi float [ %1849, %2562 ], [ %1849, %2033 ], [ %1849, %1834 ], [ %2680, %2667 ], [ %1849, %2665 ], [ %2656, %2623 ], [ %2608, %2593 ], [ %1849, %1852 ]
  %2705 = phi float [ %1850, %2562 ], [ %1850, %2033 ], [ %1850, %1834 ], [ %2688, %2667 ], [ %1850, %2665 ], [ %2664, %2623 ], [ %2620, %2593 ], [ %1850, %1852 ]
  %2706 = phi float [ %2570, %2562 ], [ %1851, %2033 ], [ %1851, %1834 ], [ %2570, %2667 ], [ %2570, %2665 ], [ %2570, %2623 ], [ %2570, %2593 ], [ %1851, %1852 ]
  br i1 %393, label %3544, label %2707

; <label>:2707                                    ; preds = %2689
  %2708 = icmp ult i32 %444, 4
  %2709 = add i32 %34, 72
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = add i32 %34, 76
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = or i32 %2714, %2711
  %2716 = icmp eq i32 %2715, 0
  br i1 %2716, label %3544, label %2717

; <label>:2717                                    ; preds = %2707
  %2718 = and i32 %2711, 262144
  %2719 = icmp ne i32 %2718, 0
  %2720 = select i1 %2719, float %39, float 1.000000e+00
  %2721 = select i1 %2719, float %40, float 0.000000e+00
  %2722 = select i1 %2719, float %41, float 0.000000e+00
  %2723 = select i1 %2719, float %42, float 1.000000e+00
  %2724 = select i1 %2719, float %43, float %71
  %2725 = select i1 %2719, float %44, float %72
  %2726 = add i32 %34, 332
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = lshr i32 %2728, 16
  %2730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2729)  ; LegacyF16ToF32(value)
  %2731 = fmul fast float %2730, 0x3F50624DE0000000
  %2732 = add i32 %34, 136
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = lshr i32 %2734, 16
  %2736 = and i32 %2735, 255
  %2737 = lshr i32 %2734, 24
  %2738 = add i32 %34, 340
  %2739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.i32 %2739, 0
  %2741 = and i32 %2740, 65535
  %2742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2741)  ; LegacyF16ToF32(value)
  %2743 = lshr i32 %2740, 16
  %2744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2743)  ; LegacyF16ToF32(value)
  %2745 = add i32 %34, 80
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = lshr i32 %2747, 22
  %2749 = shl nuw nsw i32 %2748, 5
  %2750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2749)  ; LegacyF16ToF32(value)
  %2751 = shl i32 %2747, 4
  %2752 = and i32 %2751, 32752
  %2753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2752)  ; LegacyF16ToF32(value)
  %2754 = lshr i32 %2747, 7
  %2755 = and i32 %2754, 32752
  %2756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2755)  ; LegacyF16ToF32(value)
  %2757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2758 = extractvalue %dx.types.CBufRet.f32 %2757, 3
  %2759 = fmul fast float %2758, 1.000000e+03
  %2760 = fmul fast float %383, %2759
  %2761 = call float @dx.op.unary.f32(i32 22, float %2760)  ; Frc(value)
  %2762 = fadd fast float %2761, %373
  %2763 = fmul fast float %384, %2759
  %2764 = call float @dx.op.unary.f32(i32 22, float %2763)  ; Frc(value)
  %2765 = fadd fast float %2764, %375
  %2766 = fmul fast float %2731, %2759
  %2767 = call float @dx.op.unary.f32(i32 22, float %2766)  ; Frc(value)
  %2768 = fmul fast float %2767, 0x401921FB60000000
  %2769 = fadd fast float %2768, %2750
  %2770 = call float @dx.op.unary.f32(i32 13, float %2769)  ; Sin(value)
  %2771 = call float @dx.op.unary.f32(i32 12, float %2769)  ; Cos(value)
  %2772 = fsub fast float -0.000000e+00, %2770
  %2773 = fadd fast float %2724, -5.000000e-01
  %2774 = fadd fast float %2725, -5.000000e-01
  %2775 = fmul fast float %2742, %2773
  %2776 = fmul fast float %2744, %2774
  %2777 = fadd fast float %2775, 5.000000e-01
  %2778 = fadd fast float %2776, 5.000000e-01
  %2779 = fmul fast float %2753, %2777
  %2780 = fmul fast float %2756, %2778
  %2781 = fmul fast float %2771, %2779
  %2782 = call float @dx.op.tertiary.f32(i32 46, float %2772, float %2780, float %2781)  ; FMad(a,b,c)
  %2783 = fmul fast float %2770, %2779
  %2784 = call float @dx.op.tertiary.f32(i32 46, float %2771, float %2780, float %2783)  ; FMad(a,b,c)
  %2785 = fadd fast float %2762, %2782
  %2786 = fadd fast float %2765, %2784
  %2787 = icmp ugt i32 %2736, 1
  %2788 = icmp ugt i32 %2734, 33554431
  %2789 = or i1 %2788, %2787
  br i1 %2789, label %2790, label %2815

; <label>:2790                                    ; preds = %2717
  %2791 = add i32 %34, 276
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = lshr i32 %2793, 16
  %2795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2794)  ; LegacyF16ToF32(value)
  %2796 = fmul fast float %2758, %2795
  %2797 = call float @dx.op.unary.f32(i32 22, float %2796)  ; Frc(value)
  %2798 = mul nuw nsw i32 %2736, %2737
  %2799 = uitofp i32 %2798 to float
  %2800 = fmul fast float %2797, %2799
  %2801 = call float @dx.op.unary.f32(i32 27, float %2800)  ; Round_ni(value)
  %2802 = fptoui float %2801 to i32
  %2803 = urem i32 %2802, %2736
  %2804 = udiv i32 %2802, %2737
  %2805 = call float @dx.op.unary.f32(i32 22, float %2785)  ; Frc(value)
  %2806 = call float @dx.op.unary.f32(i32 22, float %2786)  ; Frc(value)
  %2807 = uitofp i32 %2803 to float
  %2808 = uitofp i32 %2804 to float
  %2809 = fadd fast float %2805, %2807
  %2810 = fadd fast float %2806, %2808
  %2811 = uitofp i32 %2736 to float
  %2812 = uitofp i32 %2737 to float
  %2813 = fdiv fast float %2809, %2811
  %2814 = fdiv fast float %2810, %2812
  br label %2815

; <label>:2815                                    ; preds = %2790, %2717
  %2816 = phi float [ %2813, %2790 ], [ %2785, %2717 ]
  %2817 = phi float [ %2814, %2790 ], [ %2786, %2717 ]
  %2818 = and i32 %2711, 256
  %2819 = icmp eq i32 %2818, 0
  br i1 %2819, label %2866, label %2820

; <label>:2820                                    ; preds = %2815
  %2821 = add i32 %34, 436
  %2822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.i32 %2822, 0
  %2824 = add i32 %2823, 0
  %2825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2825, %dx.types.Handle %80, float %2816, float %2817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2827 = extractvalue %dx.types.ResRet.f32 %2826, 0
  %2828 = add i32 %34, 148
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = shl i32 %2830, 4
  %2832 = and i32 %2831, 32752
  %2833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2832)  ; LegacyF16ToF32(value)
  %2834 = lshr i32 %2830, 7
  %2835 = and i32 %2834, 32752
  %2836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2835)  ; LegacyF16ToF32(value)
  %2837 = fsub fast float 1.000000e+00, %439
  %2838 = call float @dx.op.binary.f32(i32 35, float %2837, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2839 = bitcast float %439 to i32
  %2840 = sitofp i32 %2839 to float
  %2841 = fadd fast float %2840, 0xC1CFBF8940000000
  %2842 = fmul fast float %2836, %2841
  %2843 = fadd fast float %2842, 0x41CFBF8940000000
  %2844 = fptosi float %2843 to i32
  %2845 = bitcast i32 %2844 to float
  %2846 = bitcast float %2838 to i32
  %2847 = sitofp i32 %2846 to float
  %2848 = fadd fast float %2847, 0xC1CFBF8940000000
  %2849 = fmul fast float %2848, %2836
  %2850 = fadd fast float %2849, 0x41CFBF8940000000
  %2851 = fptosi float %2850 to i32
  %2852 = bitcast i32 %2851 to float
  %2853 = fmul fast float %2845, %2833
  %2854 = fmul fast float %2852, %2833
  %2855 = fsub fast float %2838, %2853
  %2856 = fadd fast float %2854, %2838
  %2857 = call float @dx.op.unary.f32(i32 7, float %2855)  ; Saturate(value)
  %2858 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2859 = fsub fast float %2827, %2857
  %2860 = fsub fast float %2858, %2857
  %2861 = bitcast float %2860 to i32
  %2862 = sub nsw i32 2129859010, %2861
  %2863 = bitcast i32 %2862 to float
  %2864 = fmul fast float %2863, %2859
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  br label %2866

; <label>:2866                                    ; preds = %2820, %2815
  %2867 = phi float [ %2865, %2820 ], [ %439, %2815 ]
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = and i32 %2869, 128
  %2871 = icmp eq i32 %2870, 0
  br i1 %2871, label %2888, label %2872

; <label>:2872                                    ; preds = %2866
  %2873 = add i32 %34, 420
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = add i32 %2875, 0
  %2877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2876, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2878 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2877, %dx.types.Handle %80, float %2816, float %2817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2879 = extractvalue %dx.types.ResRet.f32 %2878, 0
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = and i32 %2881, 524288
  %2883 = icmp ne i32 %2882, 0
  %2884 = fcmp fast ogt float %2879, 0x3FE0101020000000
  %2885 = select i1 %2884, float 1.000000e+00, float 0.000000e+00
  %2886 = select i1 %2883, float %2885, float %2879
  %2887 = fmul fast float %2886, %2867
  br label %2888

; <label>:2888                                    ; preds = %2872, %2866
  %2889 = phi float [ %2887, %2872 ], [ %2867, %2866 ]
  %2890 = fcmp fast ult float %2889, 0x3F70101020000000
  br i1 %2890, label %3544, label %2891

; <label>:2891                                    ; preds = %2888
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = and i32 %2893, 16
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %3094, label %2896

; <label>:2896                                    ; preds = %2891
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = add i32 %34, 372
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = add i32 %2901, 0
  %2903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2902, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2904 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2903, %dx.types.Handle %79, float %2816, float %2817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2905 = extractvalue %dx.types.ResRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.ResRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.ResRet.f32 %2904, 2
  %2908 = extractvalue %dx.types.ResRet.f32 %2904, 3
  %2909 = and i32 %2898, 255
  %2910 = uitofp i32 %2909 to float
  %2911 = lshr i32 %2898, 8
  %2912 = and i32 %2911, 255
  %2913 = uitofp i32 %2912 to float
  %2914 = fmul fast float %2908, %2910
  %2915 = fadd fast float %2914, %2913
  %2916 = fmul fast float %2915, 0x3F70101000000000
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = and i32 %2918, 512
  %2920 = icmp eq i32 %2919, 0
  br i1 %2920, label %2929, label %2921

; <label>:2921                                    ; preds = %2896
  %2922 = add i32 %34, 452
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = add i32 %2924, 0
  %2926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2926, %dx.types.Handle %80, float %2816, float %2817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2928 = extractvalue %dx.types.ResRet.f32 %2927, 0
  br label %2929

; <label>:2929                                    ; preds = %2921, %2896
  %2930 = phi float [ %2928, %2921 ], [ 1.000000e+00, %2896 ]
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = and i32 %2932, 33554432
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %3041, label %2935

; <label>:2935                                    ; preds = %2929
  %2936 = add i32 %34, 272
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = and i32 %2938, 65535
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = lshr i32 %2938, 16
  %2942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2941)  ; LegacyF16ToF32(value)
  %2943 = add i32 %34, 276
  %2944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2945 = extractvalue %dx.types.ResRet.i32 %2944, 0
  %2946 = and i32 %2945, 65535
  %2947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2946)  ; LegacyF16ToF32(value)
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = lshr i32 %2949, 24
  %2951 = uitofp i32 %2950 to float
  %2952 = fmul fast float %2951, 0x3F70101020000000
  %2953 = and i32 %2949, 255
  %2954 = uitofp i32 %2953 to float
  %2955 = fmul fast float %2954, 0x3F70101020000000
  %2956 = lshr i32 %2949, 8
  %2957 = and i32 %2956, 255
  %2958 = uitofp i32 %2957 to float
  %2959 = fmul fast float %2958, 0x3F70101020000000
  %2960 = lshr i32 %2949, 16
  %2961 = and i32 %2960, 255
  %2962 = uitofp i32 %2961 to float
  %2963 = fmul fast float %2962, 0x3F70101020000000
  %2964 = add i32 %34, 268
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = lshr i32 %2966, 24
  %2968 = uitofp i32 %2967 to float
  %2969 = fmul fast float %2968, 0x3F70101020000000
  %2970 = and i32 %2966, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = lshr i32 %2966, 8
  %2974 = and i32 %2973, 255
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, 0x3F70101020000000
  %2977 = lshr i32 %2966, 16
  %2978 = and i32 %2977, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = fmul fast float %2979, 0x3F70101020000000
  %2981 = bitcast float %2905 to i32
  %2982 = ashr i32 %2981, 1
  %2983 = sub nsw i32 1597463174, %2982
  %2984 = bitcast i32 %2983 to float
  %2985 = fmul fast float %2905, 5.000000e-01
  %2986 = fmul fast float %2984, %2984
  %2987 = fmul fast float %2986, %2985
  %2988 = fsub fast float 1.500000e+00, %2987
  %2989 = fmul fast float %2984, %2905
  %2990 = fmul fast float %2989, %2988
  %2991 = bitcast float %2906 to i32
  %2992 = ashr i32 %2991, 1
  %2993 = sub nsw i32 1597463174, %2992
  %2994 = bitcast i32 %2993 to float
  %2995 = fmul fast float %2906, 5.000000e-01
  %2996 = fmul fast float %2994, %2994
  %2997 = fmul fast float %2996, %2995
  %2998 = fsub fast float 1.500000e+00, %2997
  %2999 = fmul fast float %2994, %2906
  %3000 = fmul fast float %2999, %2998
  %3001 = bitcast float %2907 to i32
  %3002 = ashr i32 %3001, 1
  %3003 = sub nsw i32 1597463174, %3002
  %3004 = bitcast i32 %3003 to float
  %3005 = fmul fast float %2907, 5.000000e-01
  %3006 = fmul fast float %3004, %3004
  %3007 = fmul fast float %3006, %3005
  %3008 = fsub fast float 1.500000e+00, %3007
  %3009 = fmul fast float %3004, %2907
  %3010 = fmul fast float %3009, %3008
  %3011 = fsub fast float %2990, %2972
  %3012 = fsub fast float %3000, %2976
  %3013 = fsub fast float %3010, %2980
  %3014 = fmul fast float %3011, %2940
  %3015 = fmul fast float %3012, %2942
  %3016 = fmul fast float %3013, %2947
  %3017 = fadd fast float %3014, %2955
  %3018 = fadd fast float %3015, %2959
  %3019 = fadd fast float %3016, %2963
  %3020 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  %3021 = call float @dx.op.unary.f32(i32 7, float %3018)  ; Saturate(value)
  %3022 = call float @dx.op.unary.f32(i32 7, float %3019)  ; Saturate(value)
  %3023 = fmul fast float %3020, %3020
  %3024 = fmul fast float %3021, %3021
  %3025 = fmul fast float %3022, %3022
  %3026 = fsub fast float %3023, %2905
  %3027 = fsub fast float %3024, %2906
  %3028 = fsub fast float %3025, %2907
  %3029 = fmul fast float %3026, %2930
  %3030 = fmul fast float %3027, %2930
  %3031 = fmul fast float %3028, %2930
  %3032 = fadd fast float %3029, %2905
  %3033 = fadd fast float %3030, %2906
  %3034 = fadd fast float %3031, %2907
  %3035 = fadd fast float %2952, %2916
  %3036 = fsub fast float %3035, %2969
  %3037 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  %3038 = fsub fast float %3037, %2916
  %3039 = fmul fast float %3038, %2930
  %3040 = fadd fast float %3039, %2916
  br label %3094

; <label>:3041                                    ; preds = %2929
  %3042 = and i32 %2932, 134217728
  %3043 = icmp eq i32 %3042, 0
  br i1 %3043, label %3078, label %3044

; <label>:3044                                    ; preds = %3041
  %3045 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %3046 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %3047 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %3048 = fadd fast float %3045, -5.000000e-01
  %3049 = fadd fast float %3046, -5.000000e-01
  %3050 = fadd fast float %3047, -5.000000e-01
  %3051 = fmul fast float %3048, %2930
  %3052 = fmul fast float %3049, %2930
  %3053 = fmul fast float %3050, %2930
  %3054 = fadd fast float %3051, 5.000000e-01
  %3055 = fadd fast float %3052, 5.000000e-01
  %3056 = fadd fast float %3053, 5.000000e-01
  %3057 = call float @dx.op.unary.f32(i32 24, float %2905)  ; Sqrt(value)
  %3058 = call float @dx.op.unary.f32(i32 24, float %2906)  ; Sqrt(value)
  %3059 = call float @dx.op.unary.f32(i32 24, float %2907)  ; Sqrt(value)
  %3060 = fmul fast float %3054, 2.000000e+00
  %3061 = fsub fast float 1.000000e+00, %3060
  %3062 = fmul fast float %3061, %3057
  %3063 = fadd fast float %3062, %3060
  %3064 = fmul fast float %3063, %3057
  %3065 = fmul fast float %3055, 2.000000e+00
  %3066 = fsub fast float 1.000000e+00, %3065
  %3067 = fmul fast float %3066, %3058
  %3068 = fadd fast float %3067, %3065
  %3069 = fmul fast float %3068, %3058
  %3070 = fmul fast float %3056, 2.000000e+00
  %3071 = fsub fast float 1.000000e+00, %3070
  %3072 = fmul fast float %3071, %3059
  %3073 = fadd fast float %3072, %3070
  %3074 = fmul fast float %3073, %3059
  %3075 = fmul fast float %3064, %3064
  %3076 = fmul fast float %3069, %3069
  %3077 = fmul fast float %3074, %3074
  br label %3094

; <label>:3078                                    ; preds = %3041
  %3079 = fmul fast float %360, %360
  %3080 = fmul fast float %364, %364
  %3081 = fmul fast float %368, %368
  %3082 = fadd fast float %3079, -1.000000e+00
  %3083 = fadd fast float %3080, -1.000000e+00
  %3084 = fadd fast float %3081, -1.000000e+00
  %3085 = fmul fast float %2930, %3082
  %3086 = fmul fast float %2930, %3083
  %3087 = fmul fast float %2930, %3084
  %3088 = fadd fast float %3085, 1.000000e+00
  %3089 = fadd fast float %3086, 1.000000e+00
  %3090 = fadd fast float %3087, 1.000000e+00
  %3091 = fmul fast float %3088, %2905
  %3092 = fmul fast float %3089, %2906
  %3093 = fmul fast float %3090, %2907
  br label %3094

; <label>:3094                                    ; preds = %3078, %3044, %2935, %2891
  %3095 = phi float [ %3040, %2935 ], [ %2916, %3044 ], [ %2916, %3078 ], [ 0x3FA23C0BE0000000, %2891 ]
  %3096 = phi float [ %3032, %2935 ], [ %3075, %3044 ], [ %3091, %3078 ], [ 1.000000e+00, %2891 ]
  %3097 = phi float [ %3033, %2935 ], [ %3076, %3044 ], [ %3092, %3078 ], [ 1.000000e+00, %2891 ]
  %3098 = phi float [ %3034, %2935 ], [ %3077, %3044 ], [ %3093, %3078 ], [ 1.000000e+00, %2891 ]
  %3099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3100 = extractvalue %dx.types.CBufRet.i32 %3099, 1
  %3101 = and i32 %3100, 1
  %3102 = icmp ne i32 %3101, 0
  %3103 = add i32 %34, 356
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = and i32 %3105, 32
  %3107 = icmp ne i32 %3106, 0
  %3108 = and i1 %3102, %3107
  %3109 = select i1 %3108, float 1.000000e+00, float %3096
  %3110 = select i1 %3108, float 0x3FD3333340000000, float %3097
  %3111 = select i1 %3108, float 0x3FD3333340000000, float %3098
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, 32
  %3115 = icmp eq i32 %3114, 0
  br i1 %3115, label %3188, label %3116

; <label>:3116                                    ; preds = %3094
  %3117 = add i32 %34, 140
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = add i32 %34, 388
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = add i32 %3122, 0
  %3124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3124, %dx.types.Handle %79, float %2816, float %2817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3126 = extractvalue %dx.types.ResRet.f32 %3125, 0
  %3127 = extractvalue %dx.types.ResRet.f32 %3125, 1
  %3128 = extractvalue %dx.types.ResRet.f32 %3125, 2
  %3129 = extractvalue %dx.types.ResRet.f32 %3125, 3
  %3130 = and i32 %3119, 255
  %3131 = uitofp i32 %3130 to float
  %3132 = lshr i32 %3119, 8
  %3133 = and i32 %3132, 255
  %3134 = uitofp i32 %3133 to float
  %3135 = lshr i32 %3119, 16
  %3136 = and i32 %3135, 255
  %3137 = uitofp i32 %3136 to float
  %3138 = fmul fast float %3137, 0x3F70101000000000
  %3139 = fmul fast float %3126, %3131
  %3140 = fadd fast float %3139, %3134
  %3141 = fmul fast float %3140, 0x3F70101000000000
  %3142 = fadd fast float %3127, -5.000000e-01
  %3143 = fadd fast float %3129, -5.000000e-01
  %3144 = fmul fast float %3142, %3138
  %3145 = fmul fast float %3143, %3138
  %3146 = fadd fast float %3144, 5.000000e-01
  %3147 = fadd fast float %3145, 5.000000e-01
  %3148 = fmul fast float %3146, 2.000000e+00
  %3149 = fadd fast float %3148, -1.000000e+00
  %3150 = fmul fast float %3147, 2.000000e+00
  %3151 = fadd fast float %3150, -1.000000e+00
  %3152 = fadd fast float %3149, %3151
  %3153 = fmul fast float %3152, 5.000000e-01
  %3154 = fsub fast float %3149, %3151
  %3155 = fmul fast float %3154, 5.000000e-01
  %3156 = call float @dx.op.unary.f32(i32 6, float %3153)  ; FAbs(value)
  %3157 = fsub fast float 1.000000e+00, %3156
  %3158 = call float @dx.op.unary.f32(i32 6, float %3155)  ; FAbs(value)
  %3159 = fsub fast float %3157, %3158
  %3160 = call float @dx.op.dot3.f32(i32 55, float %3153, float %3155, float %3159, float %3153, float %3155, float %3159)  ; Dot3(ax,ay,az,bx,by,bz)
  %3161 = call float @dx.op.unary.f32(i32 25, float %3160)  ; Rsqrt(value)
  %3162 = fmul fast float %3153, %3161
  %3163 = fmul fast float %3155, %3161
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = and i32 %3165, 67108864
  %3167 = icmp eq i32 %3166, 0
  br i1 %3167, label %3184, label %3168

; <label>:3168                                    ; preds = %3116
  %3169 = add i32 %34, 328
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = and i32 %3171, 65535
  %3173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3172)  ; LegacyF16ToF32(value)
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = and i32 %3175, 65535
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = lshr i32 %3171, 16
  %3179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3178)  ; LegacyF16ToF32(value)
  %3180 = fsub fast float %3141, %3179
  %3181 = fmul fast float %3180, %3173
  %3182 = fadd fast float %3181, %3177
  %3183 = call float @dx.op.unary.f32(i32 7, float %3182)  ; Saturate(value)
  br label %3184

; <label>:3184                                    ; preds = %3168, %3116
  %3185 = phi float [ %3183, %3168 ], [ %3141, %3116 ]
  %3186 = call float @dx.op.dot2.f32(i32 54, float %3162, float %3163, float %2720, float %2721)  ; Dot2(ax,ay,bx,by)
  %3187 = call float @dx.op.dot2.f32(i32 54, float %3162, float %3163, float %2722, float %2723)  ; Dot2(ax,ay,bx,by)
  br label %3188

; <label>:3188                                    ; preds = %3184, %3094
  %3189 = phi float [ %3185, %3184 ], [ 0x3FD6666660000000, %3094 ]
  %3190 = phi float [ %3186, %3184 ], [ 0.000000e+00, %3094 ]
  %3191 = phi float [ %3187, %3184 ], [ 0.000000e+00, %3094 ]
  %3192 = phi float [ %3128, %3184 ], [ 1.000000e+00, %3094 ]
  %3193 = add i32 %34, 208
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = lshr i32 %3195, 22
  %3197 = shl nuw nsw i32 %3196, 5
  %3198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3197)  ; LegacyF16ToF32(value)
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, 64
  %3202 = icmp eq i32 %3201, 0
  br i1 %3202, label %3236, label %3203

; <label>:3203                                    ; preds = %3188
  %3204 = add i32 %34, 404
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = add i32 %3206, 0
  %3208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = and i32 %3210, 131072
  %3212 = icmp eq i32 %3211, 0
  %3213 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3208, %dx.types.Handle %79, float %2816, float %2817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3214 = extractvalue %dx.types.ResRet.f32 %3213, 0
  %3215 = extractvalue %dx.types.ResRet.f32 %3213, 1
  %3216 = extractvalue %dx.types.ResRet.f32 %3213, 2
  %3217 = fmul fast float %3214, %348
  %3218 = fmul fast float %3215, %351
  %3219 = fmul fast float %3216, %354
  br i1 %3212, label %3226, label %3220

; <label>:3220                                    ; preds = %3203
  %3221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3222 = extractvalue %dx.types.CBufRet.f32 %3221, 0
  %3223 = fmul fast float %3222, %3217
  %3224 = fmul fast float %3222, %3218
  %3225 = fmul fast float %3222, %3219
  br label %3226

; <label>:3226                                    ; preds = %3220, %3203
  %3227 = phi float [ %3223, %3220 ], [ %3217, %3203 ]
  %3228 = phi float [ %3224, %3220 ], [ %3218, %3203 ]
  %3229 = phi float [ %3225, %3220 ], [ %3219, %3203 ]
  %3230 = fmul fast float %3227, %3198
  %3231 = select i1 %205, float %3230, float %3227
  %3232 = call float @dx.op.dot3.f32(i32 55, float %3231, float %3228, float %3229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3233 = select i1 %205, float 0.000000e+00, float %3227
  %3234 = select i1 %205, float %3232, float %3228
  %3235 = select i1 %205, float 0.000000e+00, float %3229
  br label %3236

; <label>:3236                                    ; preds = %3226, %3188
  %3237 = phi float [ %3233, %3226 ], [ 0.000000e+00, %3188 ]
  %3238 = phi float [ %3234, %3226 ], [ 0.000000e+00, %3188 ]
  %3239 = phi float [ %3235, %3226 ], [ 0.000000e+00, %3188 ]
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = and i32 %3241, 26624
  %3243 = icmp eq i32 %3242, 0
  br i1 %3243, label %3301, label %3244

; <label>:3244                                    ; preds = %3236
  %3245 = add i32 %34, 468
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3245, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = add i32 %3247, 0
  %3249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3248, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3249, %dx.types.Handle %80, float %2816, float %2817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3251 = extractvalue %dx.types.ResRet.f32 %3250, 0
  %3252 = extractvalue %dx.types.ResRet.f32 %3250, 1
  %3253 = extractvalue %dx.types.ResRet.f32 %3250, 3
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = and i32 %3255, 1048576
  %3257 = icmp ne i32 %3256, 0
  %3258 = and i32 %3255, 8192
  %3259 = icmp eq i32 %3258, 0
  br i1 %3259, label %3274, label %3260

; <label>:3260                                    ; preds = %3244
  %3261 = extractvalue %dx.types.ResRet.f32 %3250, 2
  %3262 = select i1 %3257, float %3261, float %3252
  %3263 = select i1 %3257, float %3251, float %3252
  %3264 = add i32 %34, 144
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = lshr i32 %3266, 16
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = fmul fast float %3269, 0x3F80101020000000
  %3271 = fmul fast float %3270, %3263
  %3272 = fmul fast float %3270, %3252
  %3273 = fmul fast float %3270, %3262
  br label %3274

; <label>:3274                                    ; preds = %3260, %3244
  %3275 = phi float [ %3271, %3260 ], [ 0.000000e+00, %3244 ]
  %3276 = phi float [ %3272, %3260 ], [ 0.000000e+00, %3244 ]
  %3277 = phi float [ %3273, %3260 ], [ 0.000000e+00, %3244 ]
  %3278 = and i32 %3255, 2048
  %3279 = icmp eq i32 %3278, 0
  br i1 %3279, label %3288, label %3280

; <label>:3280                                    ; preds = %3274
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = shl i32 %3282, 4
  %3284 = and i32 %3283, 32752
  %3285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3284)  ; LegacyF16ToF32(value)
  %3286 = fmul fast float %3285, %3253
  %3287 = call float @dx.op.binary.f32(i32 35, float %3286, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3288

; <label>:3288                                    ; preds = %3280, %3274
  %3289 = phi float [ %3287, %3280 ], [ 0x3F70101020000000, %3274 ]
  %3290 = and i32 %3255, 16384
  %3291 = icmp eq i32 %3290, 0
  br i1 %3291, label %3301, label %3292

; <label>:3292                                    ; preds = %3288
  %3293 = add i32 %34, 144
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = lshr i32 %3295, 24
  %3297 = uitofp i32 %3296 to float
  %3298 = fmul fast float %3251, 0x3F70101020000000
  %3299 = select i1 %3257, float 0x3F70101020000000, float %3298
  %3300 = fmul fast float %3299, %3297
  br label %3301

; <label>:3301                                    ; preds = %3292, %3288, %3236
  %3302 = phi float [ %3275, %3292 ], [ %3275, %3288 ], [ 0.000000e+00, %3236 ]
  %3303 = phi float [ %3276, %3292 ], [ %3276, %3288 ], [ 0.000000e+00, %3236 ]
  %3304 = phi float [ %3277, %3292 ], [ %3277, %3288 ], [ 0.000000e+00, %3236 ]
  %3305 = phi float [ %3289, %3292 ], [ %3289, %3288 ], [ 0x3F70101020000000, %3236 ]
  %3306 = phi float [ %3300, %3292 ], [ 0.000000e+00, %3288 ], [ 0.000000e+00, %3236 ]
  %3307 = add i32 %34, 144
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = and i32 %3309, 255
  %3311 = uitofp i32 %3310 to float
  %3312 = lshr i32 %3309, 8
  %3313 = and i32 %3312, 255
  %3314 = uitofp i32 %3313 to float
  %3315 = call float @dx.op.dot3.f32(i32 55, float %3109, float %3110, float %3111, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3316 = fmul fast float %3314, %3315
  %3317 = fadd fast float %3316, %3311
  %3318 = fmul fast float %3317, 0x3F70101020000000
  %3319 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  br i1 %2708, label %3320, label %3328

; <label>:3320                                    ; preds = %3301
  %3321 = fsub fast float 1.000000e+00, %2889
  %3322 = fmul fast float %3321, %2692
  %3323 = fmul fast float %3321, %2693
  %3324 = fmul fast float %3321, %2694
  %3325 = fmul fast float %3321, %2698
  %3326 = fmul fast float %3321, %2699
  %3327 = fmul fast float %3321, %2700
  br label %3328

; <label>:3328                                    ; preds = %3320, %3301
  %3329 = phi float [ %3322, %3320 ], [ %2692, %3301 ]
  %3330 = phi float [ %3323, %3320 ], [ %2693, %3301 ]
  %3331 = phi float [ %3324, %3320 ], [ %2694, %3301 ]
  %3332 = phi float [ %3325, %3320 ], [ %2698, %3301 ]
  %3333 = phi float [ %3326, %3320 ], [ %2699, %3301 ]
  %3334 = phi float [ %3327, %3320 ], [ %2700, %3301 ]
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = and i32 %3336, 3
  %3338 = icmp eq i32 %3337, 3
  br i1 %3338, label %3417, label %3339

; <label>:3339                                    ; preds = %3328
  %3340 = and i32 %3336, 16
  %3341 = icmp ne i32 %3340, 0
  %3342 = select i1 %3341, float %2889, float 0.000000e+00
  %3343 = icmp eq i32 %3337, 0
  br i1 %3343, label %3344, label %3372

; <label>:3344                                    ; preds = %3339
  %3345 = and i32 %3336, 64
  %3346 = icmp ne i32 %3345, 0
  %3347 = select i1 %3346, float %2889, float 0.000000e+00
  %3348 = fsub fast float %3109, %3329
  %3349 = fsub fast float %3110, %3330
  %3350 = fsub fast float %3111, %3331
  %3351 = fmul fast float %3342, %3348
  %3352 = fmul fast float %3342, %3349
  %3353 = fmul fast float %3342, %3350
  %3354 = fadd fast float %3351, %3329
  %3355 = fadd fast float %3352, %3330
  %3356 = fadd fast float %3353, %3331
  %3357 = fsub fast float %3095, %2701
  %3358 = fmul fast float %3342, %3357
  %3359 = fadd fast float %3358, %2701
  %3360 = fsub fast float %3237, %3332
  %3361 = fsub fast float %3238, %3333
  %3362 = fsub fast float %3239, %3334
  %3363 = fmul fast float %3347, %3360
  %3364 = fmul fast float %3347, %3361
  %3365 = fmul fast float %3347, %3362
  %3366 = fadd fast float %3363, %3332
  %3367 = fadd fast float %3364, %3333
  %3368 = fadd fast float %3365, %3334
  %3369 = fsub fast float %3319, %2706
  %3370 = fmul fast float %3342, %3369
  %3371 = fadd fast float %3370, %2706
  br label %3417

; <label>:3372                                    ; preds = %3339
  %3373 = icmp eq i32 %3337, 1
  br i1 %3373, label %3374, label %3387

; <label>:3374                                    ; preds = %3372
  %3375 = fadd fast float %3109, -1.000000e+00
  %3376 = fadd fast float %3110, -1.000000e+00
  %3377 = fadd fast float %3111, -1.000000e+00
  %3378 = fmul fast float %3342, %3375
  %3379 = fmul fast float %3342, %3376
  %3380 = fmul fast float %3342, %3377
  %3381 = fadd fast float %3378, 1.000000e+00
  %3382 = fadd fast float %3379, 1.000000e+00
  %3383 = fadd fast float %3380, 1.000000e+00
  %3384 = fmul fast float %3381, %3329
  %3385 = fmul fast float %3382, %3330
  %3386 = fmul fast float %3383, %3331
  br label %3417

; <label>:3387                                    ; preds = %3372
  %3388 = icmp eq i32 %3337, 2
  br i1 %3388, label %3389, label %3417

; <label>:3389                                    ; preds = %3387
  %3390 = call float @dx.op.unary.f32(i32 24, float %3109)  ; Sqrt(value)
  %3391 = call float @dx.op.unary.f32(i32 24, float %3110)  ; Sqrt(value)
  %3392 = call float @dx.op.unary.f32(i32 24, float %3111)  ; Sqrt(value)
  %3393 = fadd fast float %3390, -5.000000e-01
  %3394 = fadd fast float %3391, -5.000000e-01
  %3395 = fadd fast float %3392, -5.000000e-01
  %3396 = fmul fast float %3393, %3342
  %3397 = fmul fast float %3394, %3342
  %3398 = fmul fast float %3395, %3342
  %3399 = fadd fast float %3396, 5.000000e-01
  %3400 = fadd fast float %3397, 5.000000e-01
  %3401 = fadd fast float %3398, 5.000000e-01
  %3402 = fmul fast float %3399, 2.000000e+00
  %3403 = fsub fast float 1.000000e+00, %3402
  %3404 = fmul fast float %3403, %3329
  %3405 = fadd fast float %3404, %3402
  %3406 = fmul fast float %3405, %3329
  %3407 = fmul fast float %3400, 2.000000e+00
  %3408 = fsub fast float 1.000000e+00, %3407
  %3409 = fmul fast float %3408, %3330
  %3410 = fadd fast float %3409, %3407
  %3411 = fmul fast float %3410, %3330
  %3412 = fmul fast float %3401, 2.000000e+00
  %3413 = fsub fast float 1.000000e+00, %3412
  %3414 = fmul fast float %3413, %3331
  %3415 = fadd fast float %3414, %3412
  %3416 = fmul fast float %3415, %3331
  br label %3417

; <label>:3417                                    ; preds = %3389, %3387, %3374, %3344, %3328
  %3418 = phi float [ %3329, %3328 ], [ %3406, %3389 ], [ %3329, %3387 ], [ %3384, %3374 ], [ %3354, %3344 ]
  %3419 = phi float [ %3330, %3328 ], [ %3411, %3389 ], [ %3330, %3387 ], [ %3385, %3374 ], [ %3355, %3344 ]
  %3420 = phi float [ %3331, %3328 ], [ %3416, %3389 ], [ %3331, %3387 ], [ %3386, %3374 ], [ %3356, %3344 ]
  %3421 = phi float [ %3332, %3328 ], [ %3332, %3389 ], [ %3332, %3387 ], [ %3332, %3374 ], [ %3366, %3344 ]
  %3422 = phi float [ %3333, %3328 ], [ %3333, %3389 ], [ %3333, %3387 ], [ %3333, %3374 ], [ %3367, %3344 ]
  %3423 = phi float [ %3334, %3328 ], [ %3334, %3389 ], [ %3334, %3387 ], [ %3334, %3374 ], [ %3368, %3344 ]
  %3424 = phi float [ %2701, %3328 ], [ %2701, %3389 ], [ %2701, %3387 ], [ %2701, %3374 ], [ %3359, %3344 ]
  %3425 = phi float [ %2706, %3328 ], [ %2706, %3389 ], [ %2706, %3387 ], [ %2706, %3374 ], [ %3371, %3344 ]
  %3426 = and i32 %3336, 12
  %3427 = icmp eq i32 %3426, 12
  br i1 %3427, label %3544, label %3428

; <label>:3428                                    ; preds = %3417
  %3429 = and i32 %3336, 2097184
  %3430 = icmp eq i32 %3429, 2097184
  %3431 = select i1 %3430, float %2889, float 0.000000e+00
  %3432 = and i32 %3336, 4194336
  %3433 = icmp eq i32 %3432, 4194336
  %3434 = select i1 %3433, float %2889, float 0.000000e+00
  %3435 = and i32 %3336, 8388640
  %3436 = icmp eq i32 %3435, 8388640
  %3437 = select i1 %3436, float %2889, float 0.000000e+00
  %3438 = and i32 %3336, 2048
  %3439 = icmp ne i32 %3438, 0
  %3440 = select i1 %3439, float %2889, float 0.000000e+00
  %3441 = and i32 %3336, 8192
  %3442 = icmp ne i32 %3441, 0
  %3443 = select i1 %3442, float %2889, float 0.000000e+00
  %3444 = and i32 %3336, 16384
  %3445 = icmp ne i32 %3444, 0
  %3446 = select i1 %3445, float %2889, float 0.000000e+00
  %3447 = icmp eq i32 %3426, 0
  br i1 %3447, label %3448, label %3476

; <label>:3448                                    ; preds = %3428
  %3449 = fsub fast float %3190, %2690
  %3450 = fsub fast float %3191, %2691
  %3451 = fmul fast float %3431, %3449
  %3452 = fmul fast float %3431, %3450
  %3453 = fadd fast float %3451, %2690
  %3454 = fadd fast float %3452, %2691
  %3455 = fsub fast float %3192, %2703
  %3456 = fmul fast float %3434, %3455
  %3457 = fadd fast float %3456, %2703
  %3458 = fsub fast float %3189, %2702
  %3459 = fmul fast float %3437, %3458
  %3460 = fadd fast float %3459, %2702
  %3461 = fsub fast float %3305, %2704
  %3462 = fmul fast float %3440, %3461
  %3463 = fadd fast float %3462, %2704
  %3464 = fsub fast float %3302, %2695
  %3465 = fsub fast float %3303, %2696
  %3466 = fsub fast float %3304, %2697
  %3467 = fmul fast float %3443, %3464
  %3468 = fmul fast float %3443, %3465
  %3469 = fmul fast float %3443, %3466
  %3470 = fadd fast float %3467, %2695
  %3471 = fadd fast float %3468, %2696
  %3472 = fadd fast float %3469, %2697
  %3473 = fsub fast float %3306, %2705
  %3474 = fmul fast float %3446, %3473
  %3475 = fadd fast float %3474, %2705
  br label %3544

; <label>:3476                                    ; preds = %3428
  %3477 = icmp eq i32 %3426, 4
  br i1 %3477, label %3478, label %3520

; <label>:3478                                    ; preds = %3476
  %3479 = fmul fast float %3431, %3190
  %3480 = fmul fast float %3431, %3191
  %3481 = fadd fast float %3479, %2690
  %3482 = fadd fast float %3480, %2691
  %3483 = call float @dx.op.binary.f32(i32 36, float %2703, float %3192)  ; FMin(a,b)
  %3484 = fsub fast float %3483, %2703
  %3485 = fmul fast float %3484, %3434
  %3486 = fadd fast float %3485, %2703
  %3487 = fadd fast float %3189, %2702
  %3488 = fmul fast float %3487, 0x3FF337FAE0000000
  %3489 = fmul fast float %2702, %2702
  %3490 = fmul fast float %3189, %3189
  %3491 = fadd fast float %3490, %3489
  %3492 = fmul fast float %3491, 0x3FE5152B00000000
  %3493 = fmul fast float %2702, 0xBFCC1F85E0000000
  %3494 = fmul fast float %3493, %3189
  %3495 = fadd fast float %3494, 0xBFE1363700000000
  %3496 = fadd fast float %3495, %3488
  %3497 = fsub fast float %3496, %3492
  %3498 = fmul fast float %3487, 0x3FBA6F0D00000000
  %3499 = fmul fast float %3491, 0x3FD0432880000000
  %3500 = fmul fast float %2702, 0xBFEF110800000000
  %3501 = fmul fast float %3500, %3189
  %3502 = fadd fast float %3501, 1.000000e+00
  %3503 = fsub fast float %3502, %3498
  %3504 = fadd fast float %3503, %3499
  %3505 = fdiv fast float %3497, %3504
  %3506 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  %3507 = fsub fast float %3506, %2702
  %3508 = fmul fast float %3507, %3437
  %3509 = fadd fast float %3508, %2702
  %3510 = fmul fast float %3440, %3305
  %3511 = fadd fast float %3510, %2704
  %3512 = fmul fast float %3443, %3302
  %3513 = fmul fast float %3443, %3303
  %3514 = fmul fast float %3443, %3304
  %3515 = fadd fast float %3512, %2695
  %3516 = fadd fast float %3513, %2696
  %3517 = fadd fast float %3514, %2697
  %3518 = fmul fast float %3446, %3306
  %3519 = fadd fast float %3518, %2705
  br label %3544

; <label>:3520                                    ; preds = %3476
  %3521 = icmp eq i32 %3426, 8
  br i1 %3521, label %3522, label %3544

; <label>:3522                                    ; preds = %3520
  %3523 = fmul fast float %3431, %3190
  %3524 = fmul fast float %3431, %3191
  %3525 = fadd fast float %3523, %2690
  %3526 = fadd fast float %3524, %2691
  %3527 = call float @dx.op.binary.f32(i32 36, float %2703, float %3192)  ; FMin(a,b)
  %3528 = fsub fast float %3527, %2703
  %3529 = fmul fast float %3528, %3434
  %3530 = fadd fast float %3529, %2703
  %3531 = fsub fast float %3189, %2702
  %3532 = fmul fast float %3437, %3531
  %3533 = fadd fast float %3532, %2702
  %3534 = fmul fast float %3440, %3305
  %3535 = fadd fast float %3534, %2704
  %3536 = fmul fast float %3443, %3302
  %3537 = fmul fast float %3443, %3303
  %3538 = fmul fast float %3443, %3304
  %3539 = fadd fast float %3536, %2695
  %3540 = fadd fast float %3537, %2696
  %3541 = fadd fast float %3538, %2697
  %3542 = fmul fast float %3446, %3306
  %3543 = fadd fast float %3542, %2705
  br label %3544

; <label>:3544                                    ; preds = %3522, %3520, %3478, %3448, %3417, %2888, %2707, %2689
  %3545 = phi float [ %2690, %3417 ], [ %2690, %2888 ], [ %2690, %2689 ], [ %2690, %2707 ], [ %3453, %3448 ], [ %3481, %3478 ], [ %2690, %3520 ], [ %3525, %3522 ]
  %3546 = phi float [ %2691, %3417 ], [ %2691, %2888 ], [ %2691, %2689 ], [ %2691, %2707 ], [ %3454, %3448 ], [ %3482, %3478 ], [ %2691, %3520 ], [ %3526, %3522 ]
  %3547 = phi float [ %3418, %3417 ], [ %2692, %2888 ], [ %2692, %2689 ], [ %2692, %2707 ], [ %3418, %3448 ], [ %3418, %3478 ], [ %3418, %3520 ], [ %3418, %3522 ]
  %3548 = phi float [ %3419, %3417 ], [ %2693, %2888 ], [ %2693, %2689 ], [ %2693, %2707 ], [ %3419, %3448 ], [ %3419, %3478 ], [ %3419, %3520 ], [ %3419, %3522 ]
  %3549 = phi float [ %3420, %3417 ], [ %2694, %2888 ], [ %2694, %2689 ], [ %2694, %2707 ], [ %3420, %3448 ], [ %3420, %3478 ], [ %3420, %3520 ], [ %3420, %3522 ]
  %3550 = phi float [ %2695, %3417 ], [ %2695, %2888 ], [ %2695, %2689 ], [ %2695, %2707 ], [ %3470, %3448 ], [ %3515, %3478 ], [ %2695, %3520 ], [ %3539, %3522 ]
  %3551 = phi float [ %2696, %3417 ], [ %2696, %2888 ], [ %2696, %2689 ], [ %2696, %2707 ], [ %3471, %3448 ], [ %3516, %3478 ], [ %2696, %3520 ], [ %3540, %3522 ]
  %3552 = phi float [ %2697, %3417 ], [ %2697, %2888 ], [ %2697, %2689 ], [ %2697, %2707 ], [ %3472, %3448 ], [ %3517, %3478 ], [ %2697, %3520 ], [ %3541, %3522 ]
  %3553 = phi float [ %3421, %3417 ], [ %2698, %2888 ], [ %2698, %2689 ], [ %2698, %2707 ], [ %3421, %3448 ], [ %3421, %3478 ], [ %3421, %3520 ], [ %3421, %3522 ]
  %3554 = phi float [ %3422, %3417 ], [ %2699, %2888 ], [ %2699, %2689 ], [ %2699, %2707 ], [ %3422, %3448 ], [ %3422, %3478 ], [ %3422, %3520 ], [ %3422, %3522 ]
  %3555 = phi float [ %3423, %3417 ], [ %2700, %2888 ], [ %2700, %2689 ], [ %2700, %2707 ], [ %3423, %3448 ], [ %3423, %3478 ], [ %3423, %3520 ], [ %3423, %3522 ]
  %3556 = phi float [ %3424, %3417 ], [ %2701, %2888 ], [ %2701, %2689 ], [ %2701, %2707 ], [ %3424, %3448 ], [ %3424, %3478 ], [ %3424, %3520 ], [ %3424, %3522 ]
  %3557 = phi float [ %2702, %3417 ], [ %2702, %2888 ], [ %2702, %2689 ], [ %2702, %2707 ], [ %3460, %3448 ], [ %3509, %3478 ], [ %2702, %3520 ], [ %3533, %3522 ]
  %3558 = phi float [ %2703, %3417 ], [ %2703, %2888 ], [ %2703, %2689 ], [ %2703, %2707 ], [ %3457, %3448 ], [ %3486, %3478 ], [ %2703, %3520 ], [ %3530, %3522 ]
  %3559 = phi float [ %2704, %3417 ], [ %2704, %2888 ], [ %2704, %2689 ], [ %2704, %2707 ], [ %3463, %3448 ], [ %3511, %3478 ], [ %2704, %3520 ], [ %3535, %3522 ]
  %3560 = phi float [ %2705, %3417 ], [ %2705, %2888 ], [ %2705, %2689 ], [ %2705, %2707 ], [ %3475, %3448 ], [ %3519, %3478 ], [ %2705, %3520 ], [ %3543, %3522 ]
  %3561 = phi float [ %3425, %3417 ], [ %2706, %2888 ], [ %2706, %2689 ], [ %2706, %2707 ], [ %3425, %3448 ], [ %3425, %3478 ], [ %3425, %3520 ], [ %3425, %3522 ]
  %3562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3563 = extractvalue %dx.types.CBufRet.f32 %3562, 0
  %3564 = call float @dx.op.dot2.f32(i32 54, float %3545, float %3546, float %3545, float %3546)  ; Dot2(ax,ay,bx,by)
  %3565 = fmul fast float %3564, 0x3FE3333340000000
  %3566 = fsub fast float 1.000000e+00, %3565
  %3567 = call float @dx.op.dot3.f32(i32 55, float %3545, float %3546, float %3566, float %3545, float %3546, float %3566)  ; Dot3(ax,ay,az,bx,by,bz)
  %3568 = call float @dx.op.unary.f32(i32 25, float %3567)  ; Rsqrt(value)
  %3569 = fmul fast float %3568, %3545
  %3570 = fmul fast float %3568, %3546
  %3571 = fmul fast float %3566, %3568
  %3572 = fmul fast float %3571, %92
  %3573 = fmul fast float %3571, %94
  %3574 = fmul fast float %3571, %96
  %3575 = fmul fast float %3569, %64
  %3576 = fmul fast float %3569, %65
  %3577 = fmul fast float %3569, %66
  %3578 = fadd fast float %3572, %3575
  %3579 = fadd fast float %3573, %3576
  %3580 = fadd fast float %3574, %3577
  %3581 = fmul fast float %106, %3570
  %3582 = fmul fast float %107, %3570
  %3583 = fmul fast float %108, %3570
  %3584 = fadd fast float %3578, %3581
  %3585 = fadd fast float %3579, %3582
  %3586 = fadd fast float %3580, %3583
  %3587 = call float @dx.op.dot3.f32(i32 55, float %3584, float %3585, float %3586, float %3584, float %3585, float %3586)  ; Dot3(ax,ay,az,bx,by,bz)
  %3588 = call float @dx.op.unary.f32(i32 25, float %3587)  ; Rsqrt(value)
  %3589 = fmul fast float %3584, %3588
  %3590 = fmul fast float %3585, %3588
  %3591 = fmul fast float %3586, %3588
  %3592 = icmp eq i32 %35, 65535
  br i1 %3592, label %4160, label %3593

; <label>:3593                                    ; preds = %3544
  %3594 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3595 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3596 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3597 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3598 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3599 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3600 = fadd fast float %3594, %36
  %3601 = fadd fast float %3595, %37
  %3602 = fadd fast float %3596, %38
  %3603 = fadd fast float %3597, %36
  %3604 = fadd fast float %3598, %37
  %3605 = fadd fast float %3599, %38
  %3606 = mul i32 %35, 48
  %3607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3611 = add i32 %3606, 16
  %3612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = add i32 %3606, 32
  %3617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  %3619 = extractvalue %dx.types.ResRet.f32 %3617, 1
  %3620 = extractvalue %dx.types.ResRet.f32 %3617, 2
  %3621 = extractvalue %dx.types.ResRet.f32 %3617, 3
  %3622 = bitcast float %3621 to i32
  %3623 = fmul fast float %3608, %36
  %3624 = fmul fast float %3609, %37
  %3625 = fmul fast float %3610, %38
  %3626 = fsub fast float %3623, %3613
  %3627 = fsub fast float %3624, %3614
  %3628 = fsub fast float %3625, %3615
  %3629 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3630 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3631 = call float @dx.op.unary.f32(i32 7, float %3628)  ; Saturate(value)
  %3632 = fmul fast float %3629, %3618
  %3633 = fmul fast float %3630, %3619
  %3634 = fmul fast float %3631, %3620
  %3635 = fadd fast float %3618, -1.000000e+00
  %3636 = fadd fast float %3619, -1.000000e+00
  %3637 = fadd fast float %3620, -1.000000e+00
  %3638 = call float @dx.op.unary.f32(i32 27, float %3632)  ; Round_ni(value)
  %3639 = call float @dx.op.unary.f32(i32 27, float %3633)  ; Round_ni(value)
  %3640 = call float @dx.op.unary.f32(i32 27, float %3634)  ; Round_ni(value)
  %3641 = call float @dx.op.binary.f32(i32 36, float %3638, float %3635)  ; FMin(a,b)
  %3642 = call float @dx.op.binary.f32(i32 36, float %3639, float %3636)  ; FMin(a,b)
  %3643 = call float @dx.op.binary.f32(i32 36, float %3640, float %3637)  ; FMin(a,b)
  %3644 = fmul fast float %3643, %3619
  %3645 = fadd fast float %3644, %3642
  %3646 = fmul fast float %3645, %3618
  %3647 = fadd fast float %3646, %3641
  %3648 = fptosi float %3647 to i32
  %3649 = add nsw i32 %3648, %3622
  %3650 = shl nsw i32 %3649, 2
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = lshr i32 %3652, 16
  %3654 = icmp eq i32 %3653, 0
  br i1 %3654, label %4126, label %3655

; <label>:3655                                    ; preds = %3593
  br label %3656

; <label>:3656                                    ; preds = %3780, %3655
  %3657 = phi i32 [ %3682, %3780 ], [ %3653, %3655 ]
  %3658 = phi float [ %3781, %3780 ], [ 0.000000e+00, %3655 ]
  %3659 = phi float [ %3782, %3780 ], [ %3563, %3655 ]
  %3660 = phi float [ %3783, %3780 ], [ %3561, %3655 ]
  %3661 = phi float [ %3784, %3780 ], [ %3560, %3655 ]
  %3662 = phi float [ %3785, %3780 ], [ 0.000000e+00, %3655 ]
  %3663 = phi float [ %3786, %3780 ], [ %3550, %3655 ]
  %3664 = phi float [ %3787, %3780 ], [ %3551, %3655 ]
  %3665 = phi float [ %3788, %3780 ], [ %3552, %3655 ]
  %3666 = phi float [ %3789, %3780 ], [ %3553, %3655 ]
  %3667 = phi float [ %3790, %3780 ], [ %3554, %3655 ]
  %3668 = phi float [ %3791, %3780 ], [ %3555, %3655 ]
  %3669 = phi float [ %3792, %3780 ], [ %3589, %3655 ]
  %3670 = phi float [ %3793, %3780 ], [ %3590, %3655 ]
  %3671 = phi float [ %3794, %3780 ], [ %3591, %3655 ]
  %3672 = phi float [ %3795, %3780 ], [ %3558, %3655 ]
  %3673 = phi float [ %3796, %3780 ], [ %3557, %3655 ]
  %3674 = phi float [ %3797, %3780 ], [ 0.000000e+00, %3655 ]
  %3675 = phi float [ %3798, %3780 ], [ %3556, %3655 ]
  %3676 = phi float [ %3799, %3780 ], [ %3547, %3655 ]
  %3677 = phi float [ %3800, %3780 ], [ %3548, %3655 ]
  %3678 = phi float [ %3801, %3780 ], [ %3549, %3655 ]
  %3679 = shl nuw nsw i32 %3657, 2
  %3680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.i32 %3680, 0
  %3682 = lshr i32 %3681, 16
  %3683 = shl i32 %3681, 8
  %3684 = and i32 %3683, 16776960
  %3685 = or i32 %3684, 48
  %3686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3685, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.f32 %3686, 0
  %3688 = extractvalue %dx.types.ResRet.f32 %3686, 1
  %3689 = extractvalue %dx.types.ResRet.f32 %3686, 2
  %3690 = or i32 %3684, 64
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = extractvalue %dx.types.ResRet.i32 %3691, 1
  %3694 = or i32 %3684, 80
  %3695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.f32 %3695, 2
  %3697 = extractvalue %dx.types.ResRet.f32 %3695, 3
  %3698 = or i32 %3684, 96
  %3699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3701 = extractvalue %dx.types.ResRet.f32 %3699, 1
  %3702 = extractvalue %dx.types.ResRet.f32 %3699, 2
  %3703 = extractvalue %dx.types.ResRet.f32 %3699, 3
  %3704 = or i32 %3684, 112
  %3705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.f32 %3705, 2
  %3707 = or i32 %3684, 128
  %3708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3708, 2
  %3712 = extractvalue %dx.types.ResRet.f32 %3708, 3
  %3713 = or i32 %3684, 144
  %3714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = extractvalue %dx.types.ResRet.f32 %3714, 1
  %3717 = extractvalue %dx.types.ResRet.f32 %3714, 2
  %3718 = extractvalue %dx.types.ResRet.f32 %3714, 3
  %3719 = or i32 %3684, 160
  %3720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.ResRet.f32 %3720, 1
  %3723 = extractvalue %dx.types.ResRet.f32 %3720, 2
  %3724 = extractvalue %dx.types.ResRet.f32 %3720, 3
  %3725 = or i32 %3684, 192
  %3726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.i32 %3726, 0
  %3728 = or i32 %3684, 208
  %3729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.f32 %3729, 0
  %3731 = or i32 %3684, 248
  %3732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.f32 %3732, 0
  %3734 = extractvalue %dx.types.ResRet.f32 %3732, 1
  %3735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.f32 %3735, 0
  %3737 = extractvalue %dx.types.ResRet.f32 %3735, 1
  %3738 = extractvalue %dx.types.ResRet.f32 %3735, 2
  %3739 = extractvalue %dx.types.ResRet.f32 %3735, 3
  %3740 = call float @dx.op.dot4.f32(i32 56, float %3736, float %3737, float %3738, float %3739, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3741 = or i32 %3684, 16
  %3742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.f32 %3742, 0
  %3744 = extractvalue %dx.types.ResRet.f32 %3742, 1
  %3745 = extractvalue %dx.types.ResRet.f32 %3742, 2
  %3746 = extractvalue %dx.types.ResRet.f32 %3742, 3
  %3747 = call float @dx.op.dot4.f32(i32 56, float %3743, float %3744, float %3745, float %3746, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3748 = or i32 %3684, 32
  %3749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.f32 %3749, 0
  %3751 = extractvalue %dx.types.ResRet.f32 %3749, 1
  %3752 = extractvalue %dx.types.ResRet.f32 %3749, 2
  %3753 = extractvalue %dx.types.ResRet.f32 %3749, 3
  %3754 = call float @dx.op.dot4.f32(i32 56, float %3750, float %3751, float %3752, float %3753, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3755 = call float @dx.op.unary.f32(i32 27, float %3740)  ; Round_ni(value)
  %3756 = call float @dx.op.unary.f32(i32 6, float %3755)  ; FAbs(value)
  %3757 = call float @dx.op.unary.f32(i32 27, float %3747)  ; Round_ni(value)
  %3758 = call float @dx.op.unary.f32(i32 6, float %3757)  ; FAbs(value)
  %3759 = call float @dx.op.unary.f32(i32 6, float %3754)  ; FAbs(value)
  %3760 = call float @dx.op.unary.f32(i32 27, float %3759)  ; Round_ni(value)
  %3761 = fadd fast float %3758, %3756
  %3762 = fadd fast float %3761, %3760
  %3763 = fcmp fast oeq float %3762, 0.000000e+00
  %3764 = call float @dx.op.dot4.f32(i32 56, float %3736, float %3737, float %3738, float %3739, float %3600, float %3601, float %3602, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3765 = call float @dx.op.dot4.f32(i32 56, float %3743, float %3744, float %3745, float %3746, float %3600, float %3601, float %3602, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3766 = call float @dx.op.dot4.f32(i32 56, float %3736, float %3737, float %3738, float %3739, float %3603, float %3604, float %3605, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3767 = call float @dx.op.dot4.f32(i32 56, float %3743, float %3744, float %3745, float %3746, float %3603, float %3604, float %3605, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3768 = fsub fast float %3764, %3740
  %3769 = fsub fast float %3766, %3740
  %3770 = fsub fast float %3765, %3747
  %3771 = fsub fast float %3767, %3747
  %3772 = call float @dx.op.dot3.f32(i32 55, float %3687, float %3688, float %3689, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 2
  %3775 = fadd fast float %3774, %3772
  %3776 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3773, 0
  %3778 = fcmp fast ogt float %3776, %3777
  %3779 = and i1 %3763, %3778
  br i1 %3779, label %3803, label %3780

; <label>:3780                                    ; preds = %4112, %3886, %3803, %3656
  %3781 = phi float [ %3658, %3803 ], [ %3889, %3886 ], [ %3889, %4112 ], [ %3658, %3656 ]
  %3782 = phi float [ %3659, %3803 ], [ %3659, %3886 ], [ %4088, %4112 ], [ %3659, %3656 ]
  %3783 = phi float [ %3660, %3803 ], [ %3660, %3886 ], [ %4086, %4112 ], [ %3660, %3656 ]
  %3784 = phi float [ %3661, %3803 ], [ %3661, %3886 ], [ %4013, %4112 ], [ %3661, %3656 ]
  %3785 = phi float [ %3662, %3803 ], [ %3662, %3886 ], [ %4011, %4112 ], [ %3662, %3656 ]
  %3786 = phi float [ %3663, %3803 ], [ %3663, %3886 ], [ %4056, %4112 ], [ %3663, %3656 ]
  %3787 = phi float [ %3664, %3803 ], [ %3664, %3886 ], [ %4057, %4112 ], [ %3664, %3656 ]
  %3788 = phi float [ %3665, %3803 ], [ %3665, %3886 ], [ %4058, %4112 ], [ %3665, %3656 ]
  %3789 = phi float [ %3666, %3803 ], [ %3666, %3886 ], [ %4122, %4112 ], [ %3666, %3656 ]
  %3790 = phi float [ %3667, %3803 ], [ %3667, %3886 ], [ %4123, %4112 ], [ %3667, %3656 ]
  %3791 = phi float [ %3668, %3803 ], [ %3668, %3886 ], [ %4124, %4112 ], [ %3668, %3656 ]
  %3792 = phi float [ %3669, %3803 ], [ %3669, %3886 ], [ %3992, %4112 ], [ %3669, %3656 ]
  %3793 = phi float [ %3670, %3803 ], [ %3670, %3886 ], [ %3993, %4112 ], [ %3670, %3656 ]
  %3794 = phi float [ %3671, %3803 ], [ %3671, %3886 ], [ %3994, %4112 ], [ %3671, %3656 ]
  %3795 = phi float [ %3672, %3803 ], [ %3672, %3886 ], [ %4066, %4112 ], [ %3672, %3656 ]
  %3796 = phi float [ %3673, %3803 ], [ %3673, %3886 ], [ %4063, %4112 ], [ %3673, %3656 ]
  %3797 = phi float [ %3674, %3803 ], [ %3674, %3886 ], [ %4060, %4112 ], [ %3674, %3656 ]
  %3798 = phi float [ %3675, %3803 ], [ %3675, %3886 ], [ %4009, %4112 ], [ %3675, %3656 ]
  %3799 = phi float [ %3676, %3803 ], [ %3676, %3886 ], [ %4004, %4112 ], [ %3676, %3656 ]
  %3800 = phi float [ %3677, %3803 ], [ %3677, %3886 ], [ %4005, %4112 ], [ %3677, %3656 ]
  %3801 = phi float [ %3678, %3803 ], [ %3678, %3886 ], [ %4006, %4112 ], [ %3678, %3656 ]
  %3802 = icmp eq i32 %3682, 0
  br i1 %3802, label %4125, label %3656

; <label>:3803                                    ; preds = %3656
  %3804 = extractvalue %dx.types.ResRet.f32 %3686, 3
  %3805 = extractvalue %dx.types.ResRet.f32 %3705, 3
  %3806 = extractvalue %dx.types.ResRet.f32 %3705, 1
  %3807 = extractvalue %dx.types.ResRet.f32 %3705, 0
  %3808 = extractvalue %dx.types.ResRet.f32 %3695, 1
  %3809 = extractvalue %dx.types.ResRet.f32 %3695, 0
  %3810 = extractvalue %dx.types.ResRet.i32 %3691, 3
  %3811 = extractvalue %dx.types.ResRet.i32 %3691, 2
  %3812 = bitcast float %3804 to i32
  %3813 = add i32 %3810, 0
  %3814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3813, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3816 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3814, %dx.types.Handle %3815, float %3740, float %3747, float undef, float undef, i32 0, i32 0, i32 undef, float %3768, float %3770, float undef, float %3769, float %3771, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = fmul fast float %3817, %3809
  %3819 = fadd fast float %3818, %3808
  %3820 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3821 = fmul fast float %3740, %3700
  %3822 = call float @dx.op.tertiary.f32(i32 46, float %3701, float %3747, float %3821)  ; FMad(a,b,c)
  %3823 = fadd fast float %3822, %3807
  %3824 = fmul fast float %3740, %3702
  %3825 = call float @dx.op.tertiary.f32(i32 46, float %3703, float %3747, float %3824)  ; FMad(a,b,c)
  %3826 = fadd fast float %3825, %3806
  %3827 = fmul fast float %3768, %3700
  %3828 = call float @dx.op.tertiary.f32(i32 46, float %3701, float %3770, float %3827)  ; FMad(a,b,c)
  %3829 = fmul fast float %3768, %3702
  %3830 = call float @dx.op.tertiary.f32(i32 46, float %3703, float %3770, float %3829)  ; FMad(a,b,c)
  %3831 = fmul fast float %3769, %3700
  %3832 = call float @dx.op.tertiary.f32(i32 46, float %3701, float %3771, float %3831)  ; FMad(a,b,c)
  %3833 = fmul fast float %3769, %3702
  %3834 = call float @dx.op.tertiary.f32(i32 46, float %3703, float %3771, float %3833)  ; FMad(a,b,c)
  %3835 = add i32 %3811, 0
  %3836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3835, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3837 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3836, %dx.types.Handle %3815, float %3823, float %3826, float undef, float undef, i32 0, i32 0, i32 undef, float %3828, float %3830, float undef, float %3832, float %3834, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = and i32 %3812, 1024
  %3840 = icmp ne i32 %3839, 0
  %3841 = fcmp fast ogt float %3838, 0x3FE0101020000000
  %3842 = uitofp i1 %3841 to float
  %3843 = select i1 %3840, float %3842, float %3838
  %3844 = and i32 %3812, 8192
  %3845 = icmp ne i32 %3844, 0
  %3846 = select i1 %3845, float %3805, float 1.000000e+00
  %3847 = fmul fast float %3740, 2.000000e+00
  %3848 = fadd fast float %3847, -1.000000e+00
  %3849 = call float @dx.op.unary.f32(i32 6, float %3848)  ; FAbs(value)
  %3850 = fmul fast float %3849, %3733
  %3851 = fsub fast float %3850, %3733
  %3852 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3853 = fmul fast float %3747, 2.000000e+00
  %3854 = fadd fast float %3853, -1.000000e+00
  %3855 = call float @dx.op.unary.f32(i32 6, float %3854)  ; FAbs(value)
  %3856 = fmul fast float %3855, %3734
  %3857 = fsub fast float %3856, %3734
  %3858 = call float @dx.op.unary.f32(i32 7, float %3857)  ; Saturate(value)
  %3859 = fmul fast float %3759, %3696
  %3860 = fsub fast float %3859, %3696
  %3861 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3862 = fmul fast float %3820, %3846
  %3863 = fmul fast float %3862, %3817
  %3864 = fmul fast float %3863, %3852
  %3865 = fmul fast float %3864, %3843
  %3866 = fmul fast float %3865, %3858
  %3867 = fmul fast float %3866, %3861
  %3868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3869 = extractvalue %dx.types.CBufRet.f32 %3868, 1
  %3870 = extractvalue %dx.types.CBufRet.f32 %3868, 0
  %3871 = fsub fast float %3776, %3870
  %3872 = fmul fast float %3871, %3869
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = fmul fast float %3867, %3697
  %3875 = fadd fast float %3867, %3697
  %3876 = fmul fast float %3875, %3706
  %3877 = fsub fast float %3876, %3706
  %3878 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3879 = and i32 %3812, 128
  %3880 = icmp ne i32 %3879, 0
  %3881 = select i1 %3880, float %3878, float %3874
  %3882 = fmul fast float %3881, %3873
  %3883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3884 = extractvalue %dx.types.CBufRet.f32 %3883, 0
  %3885 = fcmp fast ugt float %3882, %3884
  br i1 %3885, label %3886, label %3780

; <label>:3886                                    ; preds = %3803
  %3887 = select i1 %3845, float %3882, float 0.000000e+00
  %3888 = fadd fast float %3887, %3658
  %3889 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  br i1 %3845, label %3780, label %3890

; <label>:3890                                    ; preds = %3886
  %3891 = and i32 %3812, 4
  %3892 = and i32 %3812, 8
  %3893 = add i32 %3692, 0
  %3894 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3893, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3896 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3894, %dx.types.Handle %3895, float %3823, float %3826, float undef, float undef, i32 0, i32 0, i32 undef, float %3828, float %3830, float undef, float %3832, float %3834, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %3898 = extractvalue %dx.types.ResRet.f32 %3896, 1
  %3899 = extractvalue %dx.types.ResRet.f32 %3896, 2
  %3900 = extractvalue %dx.types.ResRet.f32 %3896, 3
  %3901 = bitcast float %3718 to i32
  %3902 = and i32 %3901, 255
  %3903 = uitofp i32 %3902 to float
  %3904 = lshr i32 %3901, 8
  %3905 = and i32 %3904, 255
  %3906 = uitofp i32 %3905 to float
  %3907 = fmul fast float %3900, %3903
  %3908 = fadd fast float %3907, %3906
  %3909 = fmul fast float %3908, 0x3F70101000000000
  %3910 = add i32 %3693, 0
  %3911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3910, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3912 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3911, %dx.types.Handle %3895, float %3823, float %3826, float undef, float undef, i32 0, i32 0, i32 undef, float %3828, float %3830, float undef, float %3832, float %3834, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.ResRet.f32 %3912, 1
  %3915 = extractvalue %dx.types.ResRet.f32 %3912, 2
  %3916 = extractvalue %dx.types.ResRet.f32 %3912, 3
  %3917 = bitcast float %3712 to i32
  %3918 = and i32 %3917, 255
  %3919 = uitofp i32 %3918 to float
  %3920 = lshr i32 %3917, 8
  %3921 = and i32 %3920, 255
  %3922 = uitofp i32 %3921 to float
  %3923 = lshr i32 %3917, 16
  %3924 = and i32 %3923, 255
  %3925 = uitofp i32 %3924 to float
  %3926 = fmul fast float %3925, 0x3F70101000000000
  %3927 = fmul fast float %3913, %3919
  %3928 = fadd fast float %3927, %3922
  %3929 = fmul fast float %3928, 0x3F70101000000000
  %3930 = fadd fast float %3914, -5.000000e-01
  %3931 = fadd fast float %3916, -5.000000e-01
  %3932 = fmul fast float %3930, %3926
  %3933 = fmul fast float %3931, %3926
  %3934 = fadd fast float %3932, 5.000000e-01
  %3935 = fadd fast float %3933, 5.000000e-01
  %3936 = fmul fast float %3897, %3721
  %3937 = fmul fast float %3898, %3722
  %3938 = fmul fast float %3899, %3723
  %3939 = fmul fast float %3934, 2.000000e+00
  %3940 = fadd fast float %3939, -1.000000e+00
  %3941 = fmul fast float %3935, 2.000000e+00
  %3942 = fadd fast float %3941, -1.000000e+00
  %3943 = fadd fast float %3940, %3942
  %3944 = fmul fast float %3943, 5.000000e-01
  %3945 = fsub fast float %3940, %3942
  %3946 = fmul fast float %3945, 5.000000e-01
  %3947 = call float @dx.op.unary.f32(i32 6, float %3944)  ; FAbs(value)
  %3948 = fsub fast float 1.000000e+00, %3947
  %3949 = call float @dx.op.unary.f32(i32 6, float %3946)  ; FAbs(value)
  %3950 = fsub fast float %3948, %3949
  %3951 = call float @dx.op.dot3.f32(i32 55, float %3944, float %3946, float %3950, float %3944, float %3946, float %3950)  ; Dot3(ax,ay,az,bx,by,bz)
  %3952 = call float @dx.op.unary.f32(i32 25, float %3951)  ; Rsqrt(value)
  %3953 = fmul fast float %3944, %3952
  %3954 = fmul fast float %3946, %3952
  %3955 = fmul fast float %3952, %3950
  %3956 = fmul fast float %3955, %3687
  %3957 = fmul fast float %3955, %3688
  %3958 = fmul fast float %3955, %3689
  %3959 = fmul fast float %3953, %3709
  %3960 = fmul fast float %3953, %3710
  %3961 = fmul fast float %3953, %3711
  %3962 = fadd fast float %3959, %3956
  %3963 = fadd fast float %3960, %3957
  %3964 = fadd fast float %3961, %3958
  %3965 = fmul fast float %3954, %3715
  %3966 = fmul fast float %3954, %3716
  %3967 = fmul fast float %3954, %3717
  %3968 = fadd fast float %3962, %3965
  %3969 = fadd fast float %3963, %3966
  %3970 = fadd fast float %3964, %3967
  %3971 = call float @dx.op.dot3.f32(i32 55, float %3968, float %3969, float %3970, float %3968, float %3969, float %3970)  ; Dot3(ax,ay,az,bx,by,bz)
  %3972 = call float @dx.op.unary.f32(i32 25, float %3971)  ; Rsqrt(value)
  %3973 = fmul fast float %3968, %3972
  %3974 = fmul fast float %3969, %3972
  %3975 = fmul fast float %3970, %3972
  %3976 = icmp ne i32 %3892, 0
  %3977 = select i1 %3976, float 1.000000e+00, float 0.000000e+00
  %3978 = fmul fast float %3882, %3977
  %3979 = and i32 %3812, 1
  %3980 = icmp eq i32 %3979, 0
  br i1 %3980, label %3981, label %3985

; <label>:3981                                    ; preds = %3890
  %3982 = fsub fast float %3973, %3669
  %3983 = fsub fast float %3974, %3670
  %3984 = fsub fast float %3975, %3671
  br label %3985

; <label>:3985                                    ; preds = %3981, %3890
  %3986 = phi float [ %3982, %3981 ], [ %3973, %3890 ]
  %3987 = phi float [ %3983, %3981 ], [ %3974, %3890 ]
  %3988 = phi float [ %3984, %3981 ], [ %3975, %3890 ]
  %3989 = fmul float %3988, %3978
  %3990 = fmul float %3987, %3978
  %3991 = fmul float %3986, %3978
  %3992 = fadd fast float %3991, %3669
  %3993 = fadd fast float %3990, %3670
  %3994 = fadd fast float %3989, %3671
  %3995 = icmp ne i32 %3891, 0
  %3996 = select i1 %3995, float 1.000000e+00, float 0.000000e+00
  %3997 = fmul fast float %3882, %3996
  %3998 = fsub fast float %3936, %3676
  %3999 = fsub fast float %3937, %3677
  %4000 = fsub fast float %3938, %3678
  %4001 = fmul fast float %3998, %3997
  %4002 = fmul fast float %3999, %3997
  %4003 = fmul fast float %4000, %3997
  %4004 = fadd fast float %4001, %3676
  %4005 = fadd fast float %4002, %3677
  %4006 = fadd fast float %4003, %3678
  %4007 = fsub fast float %3909, %3675
  %4008 = fmul fast float %4007, %3997
  %4009 = fadd fast float %4008, %3675
  %4010 = fmul fast float %3997, %3662
  %4011 = fsub fast float %3662, %4010
  %4012 = fmul fast float %3997, %3661
  %4013 = fsub fast float %3661, %4012
  %4014 = bitcast float %3730 to i32
  %4015 = lshr i32 %4014, 16
  %4016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4015)  ; LegacyF16ToF32(value)
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = and i32 %4018, 1
  %4020 = icmp eq i32 %4019, 0
  br i1 %4020, label %4021, label %4046

; <label>:4021                                    ; preds = %3985
  %4022 = fadd fast float %3909, 0xBFB99999A0000000
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4024 = fmul fast float %4023, 0x3FF1C71C80000000
  %4025 = fsub fast float 1.000000e+00, %4024
  %4026 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4027 = fmul fast float %4026, %3936
  %4028 = fmul fast float %4026, %3937
  %4029 = fmul fast float %4026, %3938
  %4030 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4031 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4032 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4033 = call float @dx.op.binary.f32(i32 35, float %4031, float %4032)  ; FMax(a,b)
  %4034 = call float @dx.op.binary.f32(i32 35, float %4030, float %4033)  ; FMax(a,b)
  %4035 = fcmp fast ogt float %4034, 0.000000e+00
  %4036 = bitcast float %4034 to i32
  %4037 = sub nsw i32 2129859010, %4036
  %4038 = bitcast i32 %4037 to float
  %4039 = select i1 %4035, float %4038, float 0.000000e+00
  %4040 = fmul fast float %4030, %4016
  %4041 = fmul fast float %4031, %4016
  %4042 = fmul fast float %4032, %4016
  %4043 = fmul fast float %4040, %4039
  %4044 = fmul fast float %4041, %4039
  %4045 = fmul fast float %4042, %4039
  br label %4046

; <label>:4046                                    ; preds = %4021, %3985
  %4047 = phi float [ %4016, %3985 ], [ %4043, %4021 ]
  %4048 = phi float [ %4016, %3985 ], [ %4044, %4021 ]
  %4049 = phi float [ %4016, %3985 ], [ %4045, %4021 ]
  %4050 = fsub fast float %4047, %3663
  %4051 = fsub fast float %4048, %3664
  %4052 = fsub fast float %4049, %3665
  %4053 = fmul fast float %4050, %3997
  %4054 = fmul fast float %4051, %3997
  %4055 = fmul fast float %4052, %3997
  %4056 = fadd fast float %4053, %3663
  %4057 = fadd fast float %4054, %3664
  %4058 = fadd fast float %4055, %3665
  %4059 = fadd fast float %3882, %3674
  %4060 = call float @dx.op.unary.f32(i32 7, float %4059)  ; Saturate(value)
  %4061 = fsub fast float %3929, %3673
  %4062 = fmul fast float %4061, %3978
  %4063 = fadd fast float %4062, %3673
  %4064 = fsub fast float %3915, %3672
  %4065 = fmul fast float %4064, %3978
  %4066 = fadd fast float %4065, %3672
  %4067 = call float @dx.op.dot3.f32(i32 55, float %3936, float %3937, float %3938, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4071 = fmul fast float %4070, %4067
  %4072 = fadd fast float %4071, %4069
  %4073 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4074 = bitcast float %3724 to i32
  %4075 = and i32 %4074, 65535
  %4076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4075)  ; LegacyF16ToF32(value)
  %4077 = lshr i32 %4074, 16
  %4078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4077)  ; LegacyF16ToF32(value)
  %4079 = fcmp fast oge float %4076, 0.000000e+00
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 0
  %4082 = select i1 %4079, float %4076, float %4081
  %4083 = fadd fast float %4082, %4078
  %4084 = fsub fast float %4073, %3660
  %4085 = fmul fast float %4084, %3882
  %4086 = fadd fast float %4085, %3660
  %4087 = fmul fast float %4083, %3882
  %4088 = call float @dx.op.binary.f32(i32 35, float %3659, float %4087)  ; FMax(a,b)
  %4089 = and i32 %3812, 16
  %4090 = icmp eq i32 %4089, 0
  br i1 %4090, label %4112, label %4091

; <label>:4091                                    ; preds = %4046
  %4092 = add i32 %3727, 0
  %4093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4092, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4094 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4093, %dx.types.Handle %3895, float %3823, float %3826, float undef, float undef, i32 0, i32 0, i32 undef, float %3828, float %3830, float undef, float %3832, float %3834, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4095 = extractvalue %dx.types.ResRet.f32 %4094, 0
  %4096 = extractvalue %dx.types.ResRet.f32 %4094, 1
  %4097 = extractvalue %dx.types.ResRet.f32 %4094, 2
  %4098 = and i32 %4014, 65535
  %4099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4098)  ; LegacyF16ToF32(value)
  %4100 = fmul fast float %4095, %3721
  %4101 = fmul fast float %4096, %3722
  %4102 = fmul fast float %4097, %3723
  %4103 = and i32 %3812, 16384
  %4104 = icmp ne i32 %4103, 0
  %4105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.f32 %4105, 0
  %4107 = select i1 %4104, float %4106, float 1.000000e+00
  %4108 = fmul fast float %4107, %4099
  %4109 = fmul fast float %4100, %4108
  %4110 = fmul fast float %4101, %4108
  %4111 = fmul fast float %4102, %4108
  br label %4112

; <label>:4112                                    ; preds = %4091, %4046
  %4113 = phi float [ %4109, %4091 ], [ 0.000000e+00, %4046 ]
  %4114 = phi float [ %4110, %4091 ], [ 0.000000e+00, %4046 ]
  %4115 = phi float [ %4111, %4091 ], [ 0.000000e+00, %4046 ]
  %4116 = fsub fast float %4113, %3666
  %4117 = fsub fast float %4114, %3667
  %4118 = fsub fast float %4115, %3668
  %4119 = fmul fast float %4116, %3882
  %4120 = fmul fast float %4117, %3882
  %4121 = fmul fast float %4118, %3882
  %4122 = fadd fast float %4119, %3666
  %4123 = fadd fast float %4120, %3667
  %4124 = fadd fast float %4121, %3668
  br label %3780

; <label>:4125                                    ; preds = %3780
  br label %4126

; <label>:4126                                    ; preds = %4125, %3593
  %4127 = phi float [ 0.000000e+00, %3593 ], [ %3781, %4125 ]
  %4128 = phi float [ %3563, %3593 ], [ %3782, %4125 ]
  %4129 = phi float [ %3561, %3593 ], [ %3783, %4125 ]
  %4130 = phi float [ %3560, %3593 ], [ %3784, %4125 ]
  %4131 = phi float [ 0.000000e+00, %3593 ], [ %3785, %4125 ]
  %4132 = phi float [ %3550, %3593 ], [ %3786, %4125 ]
  %4133 = phi float [ %3551, %3593 ], [ %3787, %4125 ]
  %4134 = phi float [ %3552, %3593 ], [ %3788, %4125 ]
  %4135 = phi float [ %3553, %3593 ], [ %3789, %4125 ]
  %4136 = phi float [ %3554, %3593 ], [ %3790, %4125 ]
  %4137 = phi float [ %3555, %3593 ], [ %3791, %4125 ]
  %4138 = phi float [ %3589, %3593 ], [ %3792, %4125 ]
  %4139 = phi float [ %3590, %3593 ], [ %3793, %4125 ]
  %4140 = phi float [ %3591, %3593 ], [ %3794, %4125 ]
  %4141 = phi float [ %3558, %3593 ], [ %3795, %4125 ]
  %4142 = phi float [ %3557, %3593 ], [ %3796, %4125 ]
  %4143 = phi float [ 0.000000e+00, %3593 ], [ %3797, %4125 ]
  %4144 = phi float [ %3556, %3593 ], [ %3798, %4125 ]
  %4145 = phi float [ %3547, %3593 ], [ %3799, %4125 ]
  %4146 = phi float [ %3548, %3593 ], [ %3800, %4125 ]
  %4147 = phi float [ %3549, %3593 ], [ %3801, %4125 ]
  %4148 = call float @dx.op.dot3.f32(i32 55, float %4138, float %4139, float %4140, float %4138, float %4139, float %4140)  ; Dot3(ax,ay,az,bx,by,bz)
  %4149 = call float @dx.op.unary.f32(i32 25, float %4148)  ; Rsqrt(value)
  %4150 = fmul fast float %4149, %4138
  %4151 = fmul fast float %4149, %4139
  %4152 = fmul fast float %4149, %4140
  %4153 = fadd fast float %4143, %991
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = call float @dx.op.dot3.f32(i32 55, float %4150, float %4151, float %4152, float %4150, float %4151, float %4152)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = call float @dx.op.unary.f32(i32 25, float %4155)  ; Rsqrt(value)
  %4157 = fmul fast float %4156, %4150
  %4158 = fmul fast float %4156, %4151
  %4159 = fmul fast float %4156, %4152
  br label %4160

; <label>:4160                                    ; preds = %4126, %3544
  %4161 = phi float [ %4157, %4126 ], [ %3589, %3544 ]
  %4162 = phi float [ %4158, %4126 ], [ %3590, %3544 ]
  %4163 = phi float [ %4159, %4126 ], [ %3591, %3544 ]
  %4164 = phi float [ %4145, %4126 ], [ %3547, %3544 ]
  %4165 = phi float [ %4146, %4126 ], [ %3548, %3544 ]
  %4166 = phi float [ %4147, %4126 ], [ %3549, %3544 ]
  %4167 = phi float [ %4132, %4126 ], [ %3550, %3544 ]
  %4168 = phi float [ %4133, %4126 ], [ %3551, %3544 ]
  %4169 = phi float [ %4134, %4126 ], [ %3552, %3544 ]
  %4170 = phi float [ %4135, %4126 ], [ %3553, %3544 ]
  %4171 = phi float [ %4136, %4126 ], [ %3554, %3544 ]
  %4172 = phi float [ %4137, %4126 ], [ %3555, %3544 ]
  %4173 = phi float [ %4144, %4126 ], [ %3556, %3544 ]
  %4174 = phi float [ %4154, %4126 ], [ %991, %3544 ]
  %4175 = phi float [ %4142, %4126 ], [ %3557, %3544 ]
  %4176 = phi float [ %4141, %4126 ], [ %3558, %3544 ]
  %4177 = phi float [ %4131, %4126 ], [ 0.000000e+00, %3544 ]
  %4178 = phi float [ %4130, %4126 ], [ %3560, %3544 ]
  %4179 = phi float [ %4127, %4126 ], [ 0.000000e+00, %3544 ]
  %4180 = phi float [ %4128, %4126 ], [ %3563, %3544 ]
  %4181 = phi float [ %4129, %4126 ], [ %3561, %3544 ]
  %4182 = fadd fast float %4173, 0xBFB99999A0000000
  %4183 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4184 = fmul fast float %4183, 0x3FF1C71C80000000
  %4185 = call float @dx.op.binary.f32(i32 36, float %4173, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4186 = fsub fast float 1.000000e+00, %4184
  %4187 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4188 = fmul fast float %4187, %4164
  %4189 = fmul fast float %4187, %4165
  %4190 = fmul fast float %4187, %4166
  %4191 = call float @dx.op.unary.f32(i32 7, float %4188)  ; Saturate(value)
  %4192 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4193 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4194 = fmul fast float %4184, %4164
  %4195 = fmul fast float %4184, %4165
  %4196 = fmul fast float %4184, %4166
  %4197 = fadd fast float %4194, %4185
  %4198 = fadd fast float %4195, %4185
  %4199 = fadd fast float %4196, %4185
  %4200 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  %4201 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  %4202 = call float @dx.op.unary.f32(i32 7, float %4199)  ; Saturate(value)
  %4203 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.i32 %4204, 0
  %4206 = and i32 %4205, 1
  %4207 = icmp eq i32 %4206, 0
  br i1 %4207, label %4222, label %4208

; <label>:4208                                    ; preds = %4160
  %4209 = call float @dx.op.binary.f32(i32 35, float %4192, float %4193)  ; FMax(a,b)
  %4210 = call float @dx.op.binary.f32(i32 35, float %4191, float %4209)  ; FMax(a,b)
  %4211 = fcmp fast ogt float %4210, 0.000000e+00
  %4212 = bitcast float %4210 to i32
  %4213 = sub nsw i32 2129859010, %4212
  %4214 = bitcast i32 %4213 to float
  %4215 = select i1 %4211, float %4214, float 0.000000e+00
  %4216 = fmul fast float %4191, %4167
  %4217 = fmul fast float %4192, %4168
  %4218 = fmul fast float %4193, %4169
  %4219 = fmul fast float %4216, %4215
  %4220 = fmul fast float %4217, %4215
  %4221 = fmul fast float %4218, %4215
  br label %4222

; <label>:4222                                    ; preds = %4208, %4160
  %4223 = phi float [ %4219, %4208 ], [ %4167, %4160 ]
  %4224 = phi float [ %4220, %4208 ], [ %4168, %4160 ]
  %4225 = phi float [ %4221, %4208 ], [ %4169, %4160 ]
  %4226 = fadd fast float %4191, 0xBFD51EB860000000
  %4227 = fadd fast float %4192, 0xBFD51EB860000000
  %4228 = fadd fast float %4193, 0xBFD51EB860000000
  %4229 = fmul fast float %4226, %4226
  %4230 = fmul fast float %4227, %4227
  %4231 = fmul fast float %4228, %4228
  %4232 = fmul fast float %4229, %4229
  %4233 = fmul fast float %4232, 1.000000e+02
  %4234 = fmul fast float %4230, %4230
  %4235 = fmul fast float %4234, 1.000000e+02
  %4236 = fmul fast float %4231, %4231
  %4237 = fmul fast float %4236, 1.000000e+02
  %4238 = fadd fast float %4233, 3.500000e+00
  %4239 = fadd fast float %4235, 3.500000e+00
  %4240 = fadd fast float %4237, 3.500000e+00
  %4241 = call float @dx.op.binary.f32(i32 35, float %4223, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4242 = call float @dx.op.binary.f32(i32 35, float %4224, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4243 = call float @dx.op.binary.f32(i32 35, float %4225, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4244 = fdiv fast float %4238, %4241
  %4245 = fdiv fast float %4239, %4242
  %4246 = fdiv fast float %4240, %4243
  %4247 = fmul fast float %3559, 0xBFF7154760000000
  %4248 = fmul fast float %4247, %4244
  %4249 = call float @dx.op.unary.f32(i32 21, float %4248)  ; Exp(value)
  %4250 = fmul fast float %4249, 2.500000e-01
  %4251 = fmul fast float %3559, 0xBFDEC709E0000000
  %4252 = fmul fast float %4251, %4244
  %4253 = call float @dx.op.unary.f32(i32 21, float %4252)  ; Exp(value)
  %4254 = fmul fast float %4253, 7.500000e-01
  %4255 = fmul fast float %4247, %4245
  %4256 = call float @dx.op.unary.f32(i32 21, float %4255)  ; Exp(value)
  %4257 = fmul fast float %4256, 2.500000e-01
  %4258 = fmul fast float %4251, %4245
  %4259 = call float @dx.op.unary.f32(i32 21, float %4258)  ; Exp(value)
  %4260 = fmul fast float %4259, 7.500000e-01
  %4261 = fmul fast float %4247, %4246
  %4262 = call float @dx.op.unary.f32(i32 21, float %4261)  ; Exp(value)
  %4263 = fmul fast float %4262, 2.500000e-01
  %4264 = fmul fast float %4251, %4246
  %4265 = call float @dx.op.unary.f32(i32 21, float %4264)  ; Exp(value)
  %4266 = fmul fast float %4265, 7.500000e-01
  %4267 = fadd fast float %4250, %4254
  %4268 = fadd fast float %4257, %4260
  %4269 = fadd fast float %4263, %4266
  %4270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.i32 %4270, 3
  %4272 = and i32 %4271, 8
  %4273 = icmp ne i32 %4272, 0
  %4274 = call float @dx.op.binary.f32(i32 35, float %4191, float %4164)  ; FMax(a,b)
  %4275 = call float @dx.op.binary.f32(i32 35, float %4192, float %4164)  ; FMax(a,b)
  %4276 = call float @dx.op.binary.f32(i32 35, float %4193, float %4164)  ; FMax(a,b)
  %4277 = call float @dx.op.dot3.f32(i32 55, float %4191, float %4192, float %4193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4278 = select i1 %205, float %4164, float %4191
  %4279 = select i1 %205, float %4277, float %4192
  %4280 = select i1 %205, float 1.000000e+00, float %4193
  %4281 = select i1 %4273, float %4274, float %4278
  %4282 = select i1 %4273, float %4275, float %4279
  %4283 = select i1 %4273, float %4276, float %4280
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.CBufRet.f32 %4284, 1
  %4287 = extractvalue %dx.types.CBufRet.f32 %4284, 2
  %4288 = fadd fast float %4285, %166
  %4289 = fadd fast float %4286, %167
  %4290 = fadd fast float %4287, %168
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4293 = extractvalue %dx.types.CBufRet.f32 %4291, 1
  %4294 = fsub fast float %4288, %4292
  %4295 = fsub fast float %4289, %4293
  %4296 = fmul fast float %4294, %4294
  %4297 = fmul fast float %4295, %4295
  %4298 = fadd fast float %4296, %4297
  %4299 = call float @dx.op.unary.f32(i32 24, float %4298)  ; Sqrt(value)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4291, 2
  %4301 = fcmp fast olt float %4299, %4300
  br i1 %4301, label %4302, label %4369

; <label>:4302                                    ; preds = %4222
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 0
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4310 = extractvalue %dx.types.CBufRet.f32 %4305, 1
  %4311 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4312 = extractvalue %dx.types.CBufRet.f32 %4303, 3
  %4313 = extractvalue %dx.types.CBufRet.f32 %4305, 3
  %4314 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4315 = fadd fast float %4312, %4288
  %4316 = fadd fast float %4313, %4289
  %4317 = fadd fast float %4314, %4290
  %4318 = fmul fast float %4315, %4304
  %4319 = call float @dx.op.tertiary.f32(i32 46, float %4316, float %4306, float %4318)  ; FMad(a,b,c)
  %4320 = call float @dx.op.tertiary.f32(i32 46, float %4317, float %4308, float %4319)  ; FMad(a,b,c)
  %4321 = fmul fast float %4315, %4309
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4316, float %4310, float %4321)  ; FMad(a,b,c)
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4317, float %4311, float %4322)  ; FMad(a,b,c)
  %4324 = fsub fast float %4320, %4312
  %4325 = fsub fast float %4323, %4313
  %4326 = fsub fast float %4324, %4292
  %4327 = fadd fast float %4326, %4300
  %4328 = fsub fast float %4325, %4293
  %4329 = fadd fast float %4328, %4300
  %4330 = extractvalue %dx.types.CBufRet.f32 %4291, 3
  %4331 = fmul fast float %4327, %4330
  %4332 = fmul fast float %4329, %4330
  %4333 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4334 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4335 = fsub fast float 1.000000e+00, %4333
  %4336 = fsub fast float 1.000000e+00, %4334
  %4337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %4335, float %4336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4338 = extractvalue %dx.types.ResRet.f32 %4337, 0
  %4339 = fcmp fast ugt float %4338, 0.000000e+00
  br i1 %4339, label %4340, label %4643

; <label>:4340                                    ; preds = %4302
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 2
  %4343 = fmul fast float %4342, %4338
  %4344 = extractvalue %dx.types.CBufRet.f32 %4341, 3
  %4345 = fadd fast float %4344, %4343
  %4346 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4347 = fadd fast float %4345, %4314
  %4348 = fmul fast float %4320, %4308
  %4349 = call float @dx.op.tertiary.f32(i32 46, float %4323, float %4311, float %4348)  ; FMad(a,b,c)
  %4350 = call float @dx.op.tertiary.f32(i32 46, float %4347, float %4346, float %4349)  ; FMad(a,b,c)
  %4351 = fsub fast float %4350, %4314
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 2
  %4354 = fsub fast float %4351, %4353
  %4355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %4335, float %4336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4356 = extractvalue %dx.types.ResRet.f32 %4355, 0
  %4357 = extractvalue %dx.types.ResRet.f32 %4355, 1
  %4358 = extractvalue %dx.types.ResRet.f32 %4355, 2
  %4359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %4335, float %4336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.ResRet.f32 %4359, 1
  %4362 = extractvalue %dx.types.ResRet.f32 %4359, 2
  %4363 = fadd fast float %4360, %4356
  %4364 = fmul fast float %4363, 0x3F847AE140000000
  %4365 = fadd fast float %4361, %4357
  %4366 = fmul fast float %4365, 0x3F847AE140000000
  %4367 = fadd fast float %4362, %4358
  %4368 = fmul fast float %4367, 0x3F847AE140000000
  br label %4643

; <label>:4369                                    ; preds = %4222
  %4370 = and i32 %184, 1
  %4371 = icmp eq i32 %4370, 0
  br i1 %4371, label %4643, label %4372

; <label>:4372                                    ; preds = %4369
  %4373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.f32 %4373, 0
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4379 = extractvalue %dx.types.CBufRet.f32 %4373, 1
  %4380 = extractvalue %dx.types.CBufRet.f32 %4375, 1
  %4381 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4382 = extractvalue %dx.types.CBufRet.f32 %4373, 3
  %4383 = extractvalue %dx.types.CBufRet.f32 %4375, 3
  %4384 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4385 = fadd fast float %4382, %4288
  %4386 = fadd fast float %4383, %4289
  %4387 = fadd fast float %4384, %4290
  %4388 = fmul fast float %4385, %4374
  %4389 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4376, float %4388)  ; FMad(a,b,c)
  %4390 = call float @dx.op.tertiary.f32(i32 46, float %4387, float %4378, float %4389)  ; FMad(a,b,c)
  %4391 = fmul fast float %4385, %4379
  %4392 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4380, float %4391)  ; FMad(a,b,c)
  %4393 = call float @dx.op.tertiary.f32(i32 46, float %4387, float %4381, float %4392)  ; FMad(a,b,c)
  %4394 = fsub fast float %4390, %4382
  %4395 = fsub fast float %4393, %4383
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.CBufRet.f32 %4396, 1
  %4399 = extractvalue %dx.types.CBufRet.f32 %4396, 2
  %4400 = extractvalue %dx.types.CBufRet.f32 %4396, 3
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 3
  %4403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.i32 %4403, 0
  %4405 = extractvalue %dx.types.CBufRet.i32 %4403, 1
  %4406 = udiv i32 %4405, %4404
  %4407 = fsub fast float %4394, %4397
  %4408 = fsub fast float %4395, %4398
  %4409 = call float @dx.op.binary.f32(i32 35, float %4407, float 0.000000e+00)  ; FMax(a,b)
  %4410 = call float @dx.op.binary.f32(i32 35, float %4408, float 0.000000e+00)  ; FMax(a,b)
  %4411 = call float @dx.op.binary.f32(i32 36, float %4409, float %4399)  ; FMin(a,b)
  %4412 = call float @dx.op.binary.f32(i32 36, float %4410, float %4400)  ; FMin(a,b)
  %4413 = add i32 %4404, -1
  %4414 = add i32 %4406, -1
  %4415 = fmul fast float %4411, %4402
  %4416 = fmul fast float %4412, %4402
  %4417 = fptoui float %4415 to i32
  %4418 = fptoui float %4416 to i32
  %4419 = call i32 @dx.op.binary.i32(i32 40, i32 %4417, i32 %4413)  ; UMin(a,b)
  %4420 = call i32 @dx.op.binary.i32(i32 40, i32 %4418, i32 %4414)  ; UMin(a,b)
  %4421 = mul i32 %4420, %4404
  %4422 = add i32 %4421, %4419
  %4423 = shl i32 %4422, 2
  %4424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4423, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.i32 %4424, 0
  %4426 = icmp eq i32 %4425, -1
  br i1 %4426, label %4643, label %4427

; <label>:4427                                    ; preds = %4372
  %4428 = mul i32 %4425, 148
  %4429 = add i32 %4428, 4
  %4430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = add i32 %4428, 8
  %4433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  %4435 = add i32 %4428, 36
  %4436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4435, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = add i32 %4428, 60
  %4439 = add i32 %4428, 92
  %4440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4441 = extractvalue %dx.types.ResRet.i32 %4440, 0
  %4442 = add i32 %4428, 116
  %4443 = fsub fast float %4394, %4431
  %4444 = fsub fast float %4395, %4434
  %4445 = fmul fast float %4402, %4443
  %4446 = fmul fast float %4402, %4444
  %4447 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4449 = fsub fast float 1.000000e+00, %4448
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 2
  %4452 = call float @dx.op.unary.f32(i32 83, float %4447)  ; DerivCoarseX(value)
  %4453 = call float @dx.op.unary.f32(i32 83, float %4449)  ; DerivCoarseX(value)
  %4454 = call float @dx.op.unary.f32(i32 84, float %4447)  ; DerivCoarseY(value)
  %4455 = call float @dx.op.unary.f32(i32 84, float %4449)  ; DerivCoarseY(value)
  %4456 = fmul fast float %4452, %4451
  %4457 = fmul fast float %4453, %4451
  %4458 = fmul fast float %4454, %4451
  %4459 = fmul fast float %4455, %4451
  %4460 = call float @dx.op.dot2.f32(i32 54, float %4458, float %4459, float %4458, float %4459)  ; Dot2(ax,ay,bx,by)
  %4461 = call float @dx.op.dot2.f32(i32 54, float %4456, float %4457, float %4456, float %4457)  ; Dot2(ax,ay,bx,by)
  %4462 = call float @dx.op.binary.f32(i32 35, float %4461, float %4460)  ; FMax(a,b)
  %4463 = call float @dx.op.unary.f32(i32 23, float %4462)  ; Log(value)
  %4464 = fmul fast float %4463, 5.000000e-01
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4467 = fadd fast float %4466, %4464
  %4468 = call float @dx.op.binary.f32(i32 35, float %4467, float 0.000000e+00)  ; FMax(a,b)
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4471 = fadd fast float %4470, %4468
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 3
  %4474 = fadd fast float %4471, %4473
  %4475 = add i32 %4441, 0
  %4476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4475, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4477 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4476, i32 0)  ; GetDimensions(handle,mipLevel)
  %4478 = extractvalue %dx.types.Dimensions %4477, 0
  %4479 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4478)  ; FirstbitLo(value)
  %4480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.i32 %4480, 1
  %4482 = sub nsw i32 %4481, %4479
  %4483 = sitofp i32 %4482 to float
  %4484 = fsub fast float %4474, %4483
  %4485 = call float @dx.op.binary.f32(i32 35, float %4484, float 0.000000e+00)  ; FMax(a,b)
  %4486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4476, %dx.types.Handle %27, float %4447, float %4449, float %4437, float undef, i32 0, i32 0, i32 undef, float %4485)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4487 = extractvalue %dx.types.ResRet.f32 %4486, 0
  %4488 = fcmp ule float %4487, 0x3FE0101020000000
  %4489 = extractvalue %dx.types.CBufRet.i32 %4480, 0
  %4490 = and i32 %4489, 128
  %4491 = icmp ne i32 %4490, 0
  %4492 = and i1 %4488, %4491
  br i1 %4492, label %4643, label %4493

; <label>:4493                                    ; preds = %4427
  %4494 = add i32 %4428, 20
  %4495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = add i32 %4428, 24
  %4498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.f32 %4498, 0
  %4500 = add i32 %4428, 40
  %4501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4500, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = add i32 %4428, 96
  %4504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4503, i32 undef)  ; BufferLoad(srv,index,wot)
  %4505 = extractvalue %dx.types.ResRet.i32 %4504, 0
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 2
  %4508 = fmul fast float %4507, %4447
  %4509 = fmul fast float %4507, %4449
  %4510 = extractvalue %dx.types.CBufRet.f32 %4506, 3
  %4511 = fadd fast float %4508, %4510
  %4512 = fadd fast float %4509, %4510
  %4513 = add i32 %4505, 0
  %4514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4513, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4515 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4514, i32 0)  ; GetDimensions(handle,mipLevel)
  %4516 = extractvalue %dx.types.Dimensions %4515, 0
  %4517 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4516)  ; FirstbitLo(value)
  %4518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4519 = extractvalue %dx.types.CBufRet.i32 %4518, 1
  %4520 = sub nsw i32 %4519, %4517
  %4521 = sitofp i32 %4520 to float
  %4522 = fsub fast float %4471, %4521
  %4523 = call float @dx.op.binary.f32(i32 35, float %4522, float 0.000000e+00)  ; FMax(a,b)
  %4524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4514, %dx.types.Handle %27, float %4511, float %4512, float %4502, float undef, i32 0, i32 0, i32 undef, float %4523)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 0
  %4526 = fmul fast float %4525, %4496
  %4527 = fadd fast float %4526, %4499
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 0
  %4530 = extractvalue %dx.types.CBufRet.f32 %4528, 1
  %4531 = extractvalue %dx.types.CBufRet.f32 %4528, 2
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 3
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 3
  %4536 = extractvalue %dx.types.CBufRet.f32 %4528, 3
  %4537 = fadd fast float %4533, %4394
  %4538 = fadd fast float %4535, %4395
  %4539 = fadd fast float %4527, %4536
  %4540 = fmul fast float %4537, %4529
  %4541 = call float @dx.op.tertiary.f32(i32 46, float %4538, float %4530, float %4540)  ; FMad(a,b,c)
  %4542 = call float @dx.op.tertiary.f32(i32 46, float %4539, float %4531, float %4541)  ; FMad(a,b,c)
  %4543 = fsub fast float %4542, %4536
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4546 = fsub fast float %4543, %4545
  %4547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.i32 %4547, 0
  %4549 = call i32 @dx.op.binary.i32(i32 40, i32 %4425, i32 %4548)  ; UMin(a,b)
  %4550 = mul i32 %4549, 36
  %4551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4550, i32 undef)  ; BufferLoad(srv,index,wot)
  %4552 = extractvalue %dx.types.ResRet.i32 %4551, 0
  %4553 = add i32 %4550, 4
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 0
  %4556 = fmul fast float %4555, %4447
  %4557 = fmul fast float %4555, %4449
  %4558 = extractvalue %dx.types.CBufRet.f32 %4554, 1
  %4559 = fadd fast float %4556, %4558
  %4560 = fadd fast float %4557, %4558
  %4561 = icmp eq i32 %4552, 0
  br i1 %4561, label %4630, label %4562

; <label>:4562                                    ; preds = %4493
  br label %4563

; <label>:4563                                    ; preds = %4620, %4562
  %4564 = phi float [ %4621, %4620 ], [ 0.000000e+00, %4562 ]
  %4565 = phi float [ %4622, %4620 ], [ 0.000000e+00, %4562 ]
  %4566 = phi float [ %4623, %4620 ], [ 0.000000e+00, %4562 ]
  %4567 = phi float [ %4624, %4620 ], [ 0.000000e+00, %4562 ]
  %4568 = phi float [ %4625, %4620 ], [ 0.000000e+00, %4562 ]
  %4569 = phi float [ %4626, %4620 ], [ 0.000000e+00, %4562 ]
  %4570 = phi i32 [ %4627, %4620 ], [ 0, %4562 ]
  %4571 = shl i32 %4570, 2
  %4572 = add i32 %4438, %4571
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = add i32 %4442, %4571
  %4576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.i32 %4576, 0
  %4578 = add i32 %4577, 0
  %4579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4578, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4580 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4579, i32 0)  ; GetDimensions(handle,mipLevel)
  %4581 = extractvalue %dx.types.Dimensions %4580, 0
  %4582 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4581)  ; FirstbitLo(value)
  %4583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.i32 %4583, 1
  %4585 = sub nsw i32 %4584, %4582
  %4586 = sitofp i32 %4585 to float
  %4587 = fsub fast float %4471, %4586
  %4588 = call float @dx.op.binary.f32(i32 35, float %4587, float 0.000000e+00)  ; FMax(a,b)
  %4589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4579, %dx.types.Handle %27, float %4559, float %4560, float %4574, float undef, i32 0, i32 0, i32 undef, float %4588)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = fcmp fast ogt float %4590, 0.000000e+00
  br i1 %4591, label %4592, label %4620

; <label>:4592                                    ; preds = %4563
  %4593 = add i32 %4553, %4571
  %4594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.i32 %4594, 0
  %4596 = and i32 %4595, 32767
  %4597 = mul nuw nsw i32 %4596, 928
  %4598 = add nuw nsw i32 %4597, 48
  %4599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4598, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.ResRet.f32 %4599, 1
  %4602 = extractvalue %dx.types.ResRet.f32 %4599, 2
  %4603 = add nuw nsw i32 %4597, 60
  %4604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.ResRet.f32 %4604, 1
  %4607 = extractvalue %dx.types.ResRet.f32 %4604, 2
  %4608 = fmul fast float %4600, %4590
  %4609 = fmul fast float %4601, %4590
  %4610 = fmul fast float %4602, %4590
  %4611 = fadd fast float %4608, %4564
  %4612 = fadd fast float %4609, %4565
  %4613 = fadd fast float %4610, %4566
  %4614 = fmul fast float %4605, %4590
  %4615 = fmul fast float %4606, %4590
  %4616 = fmul fast float %4607, %4590
  %4617 = fadd fast float %4614, %4567
  %4618 = fadd fast float %4615, %4568
  %4619 = fadd fast float %4616, %4569
  br label %4620

; <label>:4620                                    ; preds = %4592, %4563
  %4621 = phi float [ %4611, %4592 ], [ %4564, %4563 ]
  %4622 = phi float [ %4612, %4592 ], [ %4565, %4563 ]
  %4623 = phi float [ %4613, %4592 ], [ %4566, %4563 ]
  %4624 = phi float [ %4617, %4592 ], [ %4567, %4563 ]
  %4625 = phi float [ %4618, %4592 ], [ %4568, %4563 ]
  %4626 = phi float [ %4619, %4592 ], [ %4569, %4563 ]
  %4627 = add nuw i32 %4570, 1
  %4628 = icmp eq i32 %4627, %4552
  br i1 %4628, label %4629, label %4563

; <label>:4629                                    ; preds = %4620
  br label %4630

; <label>:4630                                    ; preds = %4629, %4493
  %4631 = phi float [ 0.000000e+00, %4493 ], [ %4621, %4629 ]
  %4632 = phi float [ 0.000000e+00, %4493 ], [ %4622, %4629 ]
  %4633 = phi float [ 0.000000e+00, %4493 ], [ %4623, %4629 ]
  %4634 = phi float [ 0.000000e+00, %4493 ], [ %4624, %4629 ]
  %4635 = phi float [ 0.000000e+00, %4493 ], [ %4625, %4629 ]
  %4636 = phi float [ 0.000000e+00, %4493 ], [ %4626, %4629 ]
  %4637 = fadd fast float %4634, %4631
  %4638 = fmul fast float %4637, 0x3F847AE140000000
  %4639 = fadd fast float %4635, %4632
  %4640 = fmul fast float %4639, 0x3F847AE140000000
  %4641 = fadd fast float %4636, %4633
  %4642 = fmul fast float %4641, 0x3F847AE140000000
  br label %4643

; <label>:4643                                    ; preds = %4630, %4427, %4372, %4369, %4340, %4302
  %4644 = phi float [ %4354, %4340 ], [ -1.310720e+05, %4302 ], [ %4546, %4630 ], [ -1.310720e+05, %4372 ], [ -1.310720e+05, %4427 ], [ -1.310720e+05, %4369 ]
  %4645 = phi float [ %4364, %4340 ], [ 0.000000e+00, %4302 ], [ %4638, %4630 ], [ 0.000000e+00, %4372 ], [ 0.000000e+00, %4427 ], [ 0.000000e+00, %4369 ]
  %4646 = phi float [ %4366, %4340 ], [ 0.000000e+00, %4302 ], [ %4640, %4630 ], [ 0.000000e+00, %4372 ], [ 0.000000e+00, %4427 ], [ 0.000000e+00, %4369 ]
  %4647 = phi float [ %4368, %4340 ], [ 0.000000e+00, %4302 ], [ %4642, %4630 ], [ 0.000000e+00, %4372 ], [ 0.000000e+00, %4427 ], [ 0.000000e+00, %4369 ]
  %4648 = phi i1 [ true, %4340 ], [ false, %4302 ], [ true, %4630 ], [ false, %4372 ], [ false, %4427 ], [ false, %4369 ]
  %4649 = and i32 %184, 3
  %4650 = icmp eq i32 %4649, 1
  %4651 = select i1 %4650, float 1.000000e+00, float 0.000000e+00
  %4652 = fsub fast float %4644, %168
  %4653 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4654 = select i1 %4648, float %4653, float 1.000000e+00
  %4655 = fmul fast float %4654, %4651
  %4656 = icmp eq i32 %4649, 3
  %4657 = select i1 %4656, float 1.000000e+00, float %4655
  %4658 = call float @dx.op.binary.f32(i32 35, float %4179, float %4657)  ; FMax(a,b)
  %4659 = fcmp fast olt float %4657, 1.000000e+00
  %4660 = fcmp uge float %49, 0.000000e+00
  %4661 = and i1 %4660, %4659
  br i1 %4661, label %4662, label %4672

; <label>:4662                                    ; preds = %4643
  %4663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4664 = extractvalue %dx.types.ResRet.f32 %4663, 0
  %4665 = extractvalue %dx.types.ResRet.f32 %4663, 1
  %4666 = extractvalue %dx.types.ResRet.f32 %4663, 2
  %4667 = fadd fast float %4664, %4658
  %4668 = fcmp ule float %48, 0.000000e+00
  %4669 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4670 = select i1 %4668, float %4669, float 1.000000e+00
  %4671 = fmul fast float %4670, %4666
  br label %4672

; <label>:4672                                    ; preds = %4662, %4643
  %4673 = phi float [ %4667, %4662 ], [ %4658, %4643 ]
  %4674 = phi float [ %4665, %4662 ], [ 0.000000e+00, %4643 ]
  %4675 = phi float [ %4671, %4662 ], [ 0.000000e+00, %4643 ]
  %4676 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4678 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4679 = fcmp fast une float %4677, 0.000000e+00
  %4680 = fcmp fast une float %4678, 0.000000e+00
  %4681 = or i1 %4679, %4680
  br i1 %4681, label %4682, label %5241

; <label>:4682                                    ; preds = %4672
  br i1 %4679, label %4683, label %4956

; <label>:4683                                    ; preds = %4682
  %4684 = call float @dx.op.unary.f32(i32 23, float %4176)  ; Log(value)
  %4685 = fmul fast float %4684, 4.000000e+00
  %4686 = call float @dx.op.unary.f32(i32 21, float %4685)  ; Exp(value)
  %4687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4688 = extractvalue %dx.types.CBufRet.f32 %4687, 0
  %4689 = fmul fast float %4688, %36
  %4690 = fmul fast float %4688, %37
  %4691 = fmul fast float %4688, %38
  %4692 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4693 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4694 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4695 = call float @dx.op.unary.f32(i32 23, float %4692)  ; Log(value)
  %4696 = call float @dx.op.unary.f32(i32 23, float %4693)  ; Log(value)
  %4697 = call float @dx.op.unary.f32(i32 23, float %4694)  ; Log(value)
  %4698 = fmul fast float %4695, 4.000000e+00
  %4699 = fmul fast float %4696, 4.000000e+00
  %4700 = fmul fast float %4697, 4.000000e+00
  %4701 = call float @dx.op.unary.f32(i32 21, float %4698)  ; Exp(value)
  %4702 = call float @dx.op.unary.f32(i32 21, float %4699)  ; Exp(value)
  %4703 = call float @dx.op.unary.f32(i32 21, float %4700)  ; Exp(value)
  %4704 = fadd fast float %4702, %4701
  %4705 = fadd fast float %4704, %4703
  %4706 = fdiv fast float 1.000000e+00, %4705
  %4707 = fmul fast float %4706, %4701
  %4708 = fcmp fast ogt float %45, 0.000000e+00
  %4709 = fcmp fast ogt float %46, 0.000000e+00
  %4710 = fcmp fast ogt float %47, 0.000000e+00
  %4711 = fcmp fast olt float %45, 0.000000e+00
  %4712 = fcmp fast olt float %46, 0.000000e+00
  %4713 = fcmp fast olt float %47, 0.000000e+00
  %4714 = zext i1 %4708 to i32
  %4715 = zext i1 %4709 to i32
  %4716 = zext i1 %4710 to i32
  %4717 = zext i1 %4711 to i32
  %4718 = zext i1 %4712 to i32
  %4719 = zext i1 %4713 to i32
  %4720 = sub nsw i32 %4714, %4717
  %4721 = sub nsw i32 %4715, %4718
  %4722 = sub nsw i32 %4716, %4719
  %4723 = call float @dx.op.unary.f32(i32 83, float %4689)  ; DerivCoarseX(value)
  %4724 = call float @dx.op.unary.f32(i32 83, float %4690)  ; DerivCoarseX(value)
  %4725 = call float @dx.op.unary.f32(i32 83, float %4691)  ; DerivCoarseX(value)
  %4726 = call float @dx.op.unary.f32(i32 84, float %4689)  ; DerivCoarseY(value)
  %4727 = call float @dx.op.unary.f32(i32 84, float %4690)  ; DerivCoarseY(value)
  %4728 = call float @dx.op.unary.f32(i32 84, float %4691)  ; DerivCoarseY(value)
  %4729 = fcmp fast ole float %216, %4707
  %4730 = fmul fast float %4706, %4704
  %4731 = fcmp fast ole float %216, %4730
  %4732 = select i1 %4731, float %4691, float %4689
  %4733 = select i1 %4731, float %4689, float %4690
  %4734 = select i1 %4729, float %4690, float %4732
  %4735 = select i1 %4729, float %4691, float %4733
  %4736 = select i1 %4731, float %4725, float %4723
  %4737 = select i1 %4731, float %4723, float %4724
  %4738 = select i1 %4729, float %4724, float %4736
  %4739 = select i1 %4729, float %4725, float %4737
  %4740 = select i1 %4731, float %4728, float %4726
  %4741 = select i1 %4731, float %4726, float %4727
  %4742 = select i1 %4729, float %4727, float %4740
  %4743 = select i1 %4729, float %4728, float %4741
  %4744 = call float @dx.op.unary.f32(i32 27, float %4734)  ; Round_ni(value)
  %4745 = call float @dx.op.unary.f32(i32 27, float %4735)  ; Round_ni(value)
  %4746 = fptosi float %4744 to i32
  %4747 = fptosi float %4745 to i32
  %4748 = xor i32 %4747, %4746
  %4749 = sitofp i32 %4748 to float
  %4750 = fptosi float %4749 to i32
  %4751 = sitofp i32 %4750 to float
  %4752 = fmul fast float %4751, 0x3FE3C6EF40000000
  %4753 = frem fast float %4744, 2.560000e+02
  %4754 = frem fast float %4745, 2.560000e+02
  %4755 = fptoui float %4753 to i32
  %4756 = fptoui float %4754 to i32
  %4757 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4755, i32 %4756, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4758 = extractvalue %dx.types.ResRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.ResRet.f32 %4757, 1
  %4760 = extractvalue %dx.types.ResRet.f32 %4757, 2
  %4761 = fadd fast float %4758, %4752
  %4762 = fadd fast float %4759, %4752
  %4763 = fadd fast float %4760, %4752
  %4764 = call float @dx.op.unary.f32(i32 22, float %4761)  ; Frc(value)
  %4765 = call float @dx.op.unary.f32(i32 22, float %4762)  ; Frc(value)
  %4766 = call float @dx.op.unary.f32(i32 22, float %4763)  ; Frc(value)
  %4767 = fmul fast float %4766, 0x401921FB60000000
  %4768 = call float @dx.op.unary.f32(i32 13, float %4767)  ; Sin(value)
  %4769 = call float @dx.op.unary.f32(i32 12, float %4767)  ; Cos(value)
  %4770 = fsub fast float -0.000000e+00, %4769
  %4771 = fmul fast float %4769, %4734
  %4772 = call float @dx.op.tertiary.f32(i32 46, float %4768, float %4735, float %4771)  ; FMad(a,b,c)
  %4773 = fmul fast float %4768, %4734
  %4774 = call float @dx.op.tertiary.f32(i32 46, float %4770, float %4735, float %4773)  ; FMad(a,b,c)
  %4775 = fadd fast float %4772, %4764
  %4776 = fadd fast float %4774, %4765
  %4777 = extractvalue %dx.types.CBufRet.f32 %4687, 3
  %4778 = bitcast float %4777 to i32
  %4779 = icmp eq i32 %4778, 0
  br i1 %4779, label %4818, label %4780

; <label>:4780                                    ; preds = %4683
  %4781 = add i32 %4778, 0
  %4782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4783 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4782, %dx.types.Handle %80, float %4775, float %4776, float undef, float undef, i32 0, i32 0, i32 undef, float %4738, float %4739, float undef, float %4742, float %4743, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4784 = extractvalue %dx.types.ResRet.f32 %4783, 0
  %4785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4786 = extractvalue %dx.types.CBufRet.f32 %4785, 1
  %4787 = extractvalue %dx.types.CBufRet.f32 %4785, 2
  %4788 = fsub fast float 1.000000e+00, %4677
  %4789 = call float @dx.op.binary.f32(i32 35, float %4788, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4790 = bitcast float %4677 to i32
  %4791 = sitofp i32 %4790 to float
  %4792 = fadd fast float %4791, 0xC1CFBF8940000000
  %4793 = fmul fast float %4787, %4792
  %4794 = fadd fast float %4793, 0x41CFBF8940000000
  %4795 = fptosi float %4794 to i32
  %4796 = bitcast i32 %4795 to float
  %4797 = bitcast float %4789 to i32
  %4798 = sitofp i32 %4797 to float
  %4799 = fadd fast float %4798, 0xC1CFBF8940000000
  %4800 = fmul fast float %4799, %4787
  %4801 = fadd fast float %4800, 0x41CFBF8940000000
  %4802 = fptosi float %4801 to i32
  %4803 = bitcast i32 %4802 to float
  %4804 = fmul fast float %4796, %4786
  %4805 = fmul fast float %4803, %4786
  %4806 = fsub fast float %4789, %4804
  %4807 = fadd fast float %4805, %4789
  %4808 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4810 = fsub fast float %4784, %4808
  %4811 = fsub fast float %4809, %4808
  %4812 = bitcast float %4811 to i32
  %4813 = sub nsw i32 2129859010, %4812
  %4814 = bitcast i32 %4813 to float
  %4815 = fmul fast float %4814, %4810
  %4816 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4817 = fcmp fast olt float %4816, 0x3F70101020000000
  br i1 %4817, label %4956, label %4818

; <label>:4818                                    ; preds = %4780, %4683
  %4819 = phi float [ %4816, %4780 ], [ %4677, %4683 ]
  %4820 = fmul fast float %4819, %4686
  %4821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.i32 %4821, 1
  %4823 = extractvalue %dx.types.CBufRet.i32 %4821, 0
  %4824 = add i32 %4823, 0
  %4825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4826 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4825, %dx.types.Handle %79, float %4775, float %4776, float undef, float undef, i32 0, i32 0, i32 undef, float %4738, float %4739, float undef, float %4742, float %4743, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4827 = extractvalue %dx.types.ResRet.f32 %4826, 0
  %4828 = extractvalue %dx.types.ResRet.f32 %4826, 1
  %4829 = extractvalue %dx.types.ResRet.f32 %4826, 2
  %4830 = extractvalue %dx.types.ResRet.f32 %4826, 3
  %4831 = and i32 %4822, 255
  %4832 = uitofp i32 %4831 to float
  %4833 = lshr i32 %4822, 8
  %4834 = and i32 %4833, 255
  %4835 = uitofp i32 %4834 to float
  %4836 = fmul fast float %4830, %4832
  %4837 = fadd fast float %4836, %4835
  %4838 = fmul fast float %4837, 0x3F70101000000000
  %4839 = fadd fast float %4838, 0xBFB99999A0000000
  %4840 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4841 = fmul fast float %4840, 0x3FF1C71C80000000
  %4842 = call float @dx.op.binary.f32(i32 36, float %4838, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4843 = fsub fast float 1.000000e+00, %4841
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = fmul fast float %4844, %4827
  %4846 = fmul fast float %4844, %4828
  %4847 = fmul fast float %4844, %4829
  %4848 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4849 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4850 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4851 = fmul fast float %4841, %4827
  %4852 = fmul fast float %4841, %4828
  %4853 = fmul fast float %4841, %4829
  %4854 = fadd fast float %4851, %4842
  %4855 = fadd fast float %4852, %4842
  %4856 = fadd fast float %4853, %4842
  %4857 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4858 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4859 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4860 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4861 = extractvalue %dx.types.CBufRet.i32 %4860, 3
  %4862 = extractvalue %dx.types.CBufRet.i32 %4860, 2
  %4863 = add i32 %4862, 0
  %4864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4863, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4865 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4864, %dx.types.Handle %79, float %4775, float %4776, float undef, float undef, i32 0, i32 0, i32 undef, float %4738, float %4739, float undef, float %4742, float %4743, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4866 = extractvalue %dx.types.ResRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.ResRet.f32 %4865, 1
  %4868 = extractvalue %dx.types.ResRet.f32 %4865, 2
  %4869 = extractvalue %dx.types.ResRet.f32 %4865, 3
  %4870 = and i32 %4861, 255
  %4871 = uitofp i32 %4870 to float
  %4872 = lshr i32 %4861, 8
  %4873 = and i32 %4872, 255
  %4874 = uitofp i32 %4873 to float
  %4875 = lshr i32 %4861, 16
  %4876 = and i32 %4875, 255
  %4877 = uitofp i32 %4876 to float
  %4878 = fmul fast float %4877, 0x3F70101000000000
  %4879 = fmul fast float %4866, %4871
  %4880 = fadd fast float %4879, %4874
  %4881 = fmul fast float %4880, 0x3F70101000000000
  %4882 = fadd fast float %4867, -5.000000e-01
  %4883 = fadd fast float %4869, -5.000000e-01
  %4884 = fmul fast float %4882, %4878
  %4885 = fmul fast float %4883, %4878
  %4886 = fadd fast float %4884, 5.000000e-01
  %4887 = fadd fast float %4885, 5.000000e-01
  %4888 = fmul fast float %4886, 2.000000e+00
  %4889 = fadd fast float %4888, -1.000000e+00
  %4890 = fmul fast float %4887, 2.000000e+00
  %4891 = fadd fast float %4890, -1.000000e+00
  %4892 = fadd fast float %4889, %4891
  %4893 = fmul fast float %4892, 5.000000e-01
  %4894 = fsub fast float %4889, %4891
  %4895 = fmul fast float %4894, 5.000000e-01
  %4896 = call float @dx.op.unary.f32(i32 6, float %4893)  ; FAbs(value)
  %4897 = fsub fast float 1.000000e+00, %4896
  %4898 = call float @dx.op.unary.f32(i32 6, float %4895)  ; FAbs(value)
  %4899 = fsub fast float %4897, %4898
  %4900 = call float @dx.op.dot3.f32(i32 55, float %4893, float %4895, float %4899, float %4893, float %4895, float %4899)  ; Dot3(ax,ay,az,bx,by,bz)
  %4901 = call float @dx.op.unary.f32(i32 25, float %4900)  ; Rsqrt(value)
  %4902 = fmul fast float %4893, %4901
  %4903 = fmul fast float %4895, %4901
  %4904 = select i1 %4731, i32 %4721, i32 %4722
  %4905 = select i1 %4729, i32 %4720, i32 %4904
  %4906 = sitofp i32 %4905 to float
  %4907 = fmul fast float %4899, %4906
  %4908 = fmul fast float %4907, %4901
  %4909 = select i1 %4731, float %4908, float %4903
  %4910 = select i1 %4731, float %4903, float %4908
  %4911 = select i1 %4729, float %4908, float %4902
  %4912 = select i1 %4729, float %4903, float %4909
  %4913 = select i1 %4729, float %4902, float %4910
  %4914 = fsub fast float %4848, %4281
  %4915 = fsub fast float %4849, %4282
  %4916 = fsub fast float %4850, %4283
  %4917 = fmul fast float %4914, %4820
  %4918 = fmul fast float %4915, %4820
  %4919 = fmul fast float %4916, %4820
  %4920 = fadd fast float %4917, %4281
  %4921 = fadd fast float %4918, %4282
  %4922 = fadd fast float %4919, %4283
  %4923 = fsub fast float %4857, %4200
  %4924 = fsub fast float %4858, %4201
  %4925 = fsub fast float %4859, %4202
  %4926 = fmul fast float %4923, %4820
  %4927 = fmul fast float %4924, %4820
  %4928 = fmul fast float %4925, %4820
  %4929 = fadd fast float %4926, %4200
  %4930 = fadd fast float %4927, %4201
  %4931 = fadd fast float %4928, %4202
  %4932 = fadd fast float %4911, %4161
  %4933 = fadd fast float %4912, %4162
  %4934 = fadd fast float %4913, %4163
  %4935 = call float @dx.op.dot3.f32(i32 55, float %4932, float %4933, float %4934, float %4932, float %4933, float %4934)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = call float @dx.op.unary.f32(i32 25, float %4935)  ; Rsqrt(value)
  %4937 = fmul fast float %4932, %4936
  %4938 = fmul fast float %4933, %4936
  %4939 = fmul fast float %4934, %4936
  %4940 = fsub fast float %4937, %4161
  %4941 = fsub fast float %4938, %4162
  %4942 = fsub fast float %4939, %4163
  %4943 = fmul fast float %4940, %4820
  %4944 = fmul fast float %4941, %4820
  %4945 = fmul fast float %4942, %4820
  %4946 = fadd fast float %4943, %4161
  %4947 = fadd fast float %4944, %4162
  %4948 = fadd fast float %4945, %4163
  %4949 = call float @dx.op.binary.f32(i32 36, float %4176, float %4868)  ; FMin(a,b)
  %4950 = fsub fast float %4949, %4176
  %4951 = fmul fast float %4950, %4820
  %4952 = fadd fast float %4951, %4176
  %4953 = fsub fast float %4881, %4203
  %4954 = fmul fast float %4953, %4820
  %4955 = fadd fast float %4954, %4203
  br label %4956

; <label>:4956                                    ; preds = %4818, %4780, %4682
  %4957 = phi float [ %4929, %4818 ], [ %4200, %4780 ], [ %4200, %4682 ]
  %4958 = phi float [ %4930, %4818 ], [ %4201, %4780 ], [ %4201, %4682 ]
  %4959 = phi float [ %4931, %4818 ], [ %4202, %4780 ], [ %4202, %4682 ]
  %4960 = phi float [ %4920, %4818 ], [ %4281, %4780 ], [ %4281, %4682 ]
  %4961 = phi float [ %4921, %4818 ], [ %4282, %4780 ], [ %4282, %4682 ]
  %4962 = phi float [ %4922, %4818 ], [ %4283, %4780 ], [ %4283, %4682 ]
  %4963 = phi float [ %4946, %4818 ], [ %4161, %4780 ], [ %4161, %4682 ]
  %4964 = phi float [ %4947, %4818 ], [ %4162, %4780 ], [ %4162, %4682 ]
  %4965 = phi float [ %4948, %4818 ], [ %4163, %4780 ], [ %4163, %4682 ]
  %4966 = phi float [ %4955, %4818 ], [ %4203, %4780 ], [ %4203, %4682 ]
  %4967 = phi float [ %4952, %4818 ], [ %4176, %4780 ], [ %4176, %4682 ]
  br i1 %4680, label %4968, label %5241

; <label>:4968                                    ; preds = %4956
  %4969 = call float @dx.op.unary.f32(i32 23, float %4967)  ; Log(value)
  %4970 = fmul fast float %4969, 4.000000e+00
  %4971 = call float @dx.op.unary.f32(i32 21, float %4970)  ; Exp(value)
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 0
  %4974 = fmul fast float %4973, %36
  %4975 = fmul fast float %4973, %37
  %4976 = fmul fast float %4973, %38
  %4977 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4978 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4979 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4980 = call float @dx.op.unary.f32(i32 23, float %4977)  ; Log(value)
  %4981 = call float @dx.op.unary.f32(i32 23, float %4978)  ; Log(value)
  %4982 = call float @dx.op.unary.f32(i32 23, float %4979)  ; Log(value)
  %4983 = fmul fast float %4980, 4.000000e+00
  %4984 = fmul fast float %4981, 4.000000e+00
  %4985 = fmul fast float %4982, 4.000000e+00
  %4986 = call float @dx.op.unary.f32(i32 21, float %4983)  ; Exp(value)
  %4987 = call float @dx.op.unary.f32(i32 21, float %4984)  ; Exp(value)
  %4988 = call float @dx.op.unary.f32(i32 21, float %4985)  ; Exp(value)
  %4989 = fadd fast float %4987, %4986
  %4990 = fadd fast float %4989, %4988
  %4991 = fdiv fast float 1.000000e+00, %4990
  %4992 = fmul fast float %4991, %4986
  %4993 = fcmp fast ogt float %45, 0.000000e+00
  %4994 = fcmp fast ogt float %46, 0.000000e+00
  %4995 = fcmp fast ogt float %47, 0.000000e+00
  %4996 = fcmp fast olt float %45, 0.000000e+00
  %4997 = fcmp fast olt float %46, 0.000000e+00
  %4998 = fcmp fast olt float %47, 0.000000e+00
  %4999 = zext i1 %4993 to i32
  %5000 = zext i1 %4994 to i32
  %5001 = zext i1 %4995 to i32
  %5002 = zext i1 %4996 to i32
  %5003 = zext i1 %4997 to i32
  %5004 = zext i1 %4998 to i32
  %5005 = sub nsw i32 %4999, %5002
  %5006 = sub nsw i32 %5000, %5003
  %5007 = sub nsw i32 %5001, %5004
  %5008 = call float @dx.op.unary.f32(i32 83, float %4974)  ; DerivCoarseX(value)
  %5009 = call float @dx.op.unary.f32(i32 83, float %4975)  ; DerivCoarseX(value)
  %5010 = call float @dx.op.unary.f32(i32 83, float %4976)  ; DerivCoarseX(value)
  %5011 = call float @dx.op.unary.f32(i32 84, float %4974)  ; DerivCoarseY(value)
  %5012 = call float @dx.op.unary.f32(i32 84, float %4975)  ; DerivCoarseY(value)
  %5013 = call float @dx.op.unary.f32(i32 84, float %4976)  ; DerivCoarseY(value)
  %5014 = fcmp fast ole float %216, %4992
  %5015 = fmul fast float %4991, %4989
  %5016 = fcmp fast ole float %216, %5015
  %5017 = select i1 %5016, float %4976, float %4974
  %5018 = select i1 %5016, float %4974, float %4975
  %5019 = select i1 %5014, float %4975, float %5017
  %5020 = select i1 %5014, float %4976, float %5018
  %5021 = select i1 %5016, float %5010, float %5008
  %5022 = select i1 %5016, float %5008, float %5009
  %5023 = select i1 %5014, float %5009, float %5021
  %5024 = select i1 %5014, float %5010, float %5022
  %5025 = select i1 %5016, float %5013, float %5011
  %5026 = select i1 %5016, float %5011, float %5012
  %5027 = select i1 %5014, float %5012, float %5025
  %5028 = select i1 %5014, float %5013, float %5026
  %5029 = call float @dx.op.unary.f32(i32 27, float %5019)  ; Round_ni(value)
  %5030 = call float @dx.op.unary.f32(i32 27, float %5020)  ; Round_ni(value)
  %5031 = fptosi float %5029 to i32
  %5032 = fptosi float %5030 to i32
  %5033 = xor i32 %5032, %5031
  %5034 = sitofp i32 %5033 to float
  %5035 = fptosi float %5034 to i32
  %5036 = sitofp i32 %5035 to float
  %5037 = fmul fast float %5036, 0x3FE3C6EF40000000
  %5038 = frem fast float %5029, 2.560000e+02
  %5039 = frem fast float %5030, 2.560000e+02
  %5040 = fptoui float %5038 to i32
  %5041 = fptoui float %5039 to i32
  %5042 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %5040, i32 %5041, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5043 = extractvalue %dx.types.ResRet.f32 %5042, 0
  %5044 = extractvalue %dx.types.ResRet.f32 %5042, 1
  %5045 = extractvalue %dx.types.ResRet.f32 %5042, 2
  %5046 = fadd fast float %5043, %5037
  %5047 = fadd fast float %5044, %5037
  %5048 = fadd fast float %5045, %5037
  %5049 = call float @dx.op.unary.f32(i32 22, float %5046)  ; Frc(value)
  %5050 = call float @dx.op.unary.f32(i32 22, float %5047)  ; Frc(value)
  %5051 = call float @dx.op.unary.f32(i32 22, float %5048)  ; Frc(value)
  %5052 = fmul fast float %5051, 0x401921FB60000000
  %5053 = call float @dx.op.unary.f32(i32 13, float %5052)  ; Sin(value)
  %5054 = call float @dx.op.unary.f32(i32 12, float %5052)  ; Cos(value)
  %5055 = fsub fast float -0.000000e+00, %5054
  %5056 = fmul fast float %5054, %5019
  %5057 = call float @dx.op.tertiary.f32(i32 46, float %5053, float %5020, float %5056)  ; FMad(a,b,c)
  %5058 = fmul fast float %5053, %5019
  %5059 = call float @dx.op.tertiary.f32(i32 46, float %5055, float %5020, float %5058)  ; FMad(a,b,c)
  %5060 = fadd fast float %5057, %5049
  %5061 = fadd fast float %5059, %5050
  %5062 = extractvalue %dx.types.CBufRet.f32 %4972, 3
  %5063 = bitcast float %5062 to i32
  %5064 = icmp eq i32 %5063, 0
  br i1 %5064, label %5103, label %5065

; <label>:5065                                    ; preds = %4968
  %5066 = add i32 %5063, 0
  %5067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5068 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5067, %dx.types.Handle %80, float %5060, float %5061, float undef, float undef, i32 0, i32 0, i32 undef, float %5023, float %5024, float undef, float %5027, float %5028, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5069 = extractvalue %dx.types.ResRet.f32 %5068, 0
  %5070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5071 = extractvalue %dx.types.CBufRet.f32 %5070, 1
  %5072 = extractvalue %dx.types.CBufRet.f32 %5070, 2
  %5073 = fsub fast float 1.000000e+00, %4678
  %5074 = call float @dx.op.binary.f32(i32 35, float %5073, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5075 = bitcast float %4678 to i32
  %5076 = sitofp i32 %5075 to float
  %5077 = fadd fast float %5076, 0xC1CFBF8940000000
  %5078 = fmul fast float %5072, %5077
  %5079 = fadd fast float %5078, 0x41CFBF8940000000
  %5080 = fptosi float %5079 to i32
  %5081 = bitcast i32 %5080 to float
  %5082 = bitcast float %5074 to i32
  %5083 = sitofp i32 %5082 to float
  %5084 = fadd fast float %5083, 0xC1CFBF8940000000
  %5085 = fmul fast float %5084, %5072
  %5086 = fadd fast float %5085, 0x41CFBF8940000000
  %5087 = fptosi float %5086 to i32
  %5088 = bitcast i32 %5087 to float
  %5089 = fmul fast float %5081, %5071
  %5090 = fmul fast float %5088, %5071
  %5091 = fsub fast float %5074, %5089
  %5092 = fadd fast float %5090, %5074
  %5093 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5095 = fsub fast float %5069, %5093
  %5096 = fsub fast float %5094, %5093
  %5097 = bitcast float %5096 to i32
  %5098 = sub nsw i32 2129859010, %5097
  %5099 = bitcast i32 %5098 to float
  %5100 = fmul fast float %5099, %5095
  %5101 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5102 = fcmp fast olt float %5101, 0x3F70101020000000
  br i1 %5102, label %5241, label %5103

; <label>:5103                                    ; preds = %5065, %4968
  %5104 = phi float [ %5101, %5065 ], [ %4678, %4968 ]
  %5105 = fmul fast float %5104, %4971
  %5106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.i32 %5106, 1
  %5108 = extractvalue %dx.types.CBufRet.i32 %5106, 0
  %5109 = add i32 %5108, 0
  %5110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5109, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5111 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5110, %dx.types.Handle %79, float %5060, float %5061, float undef, float undef, i32 0, i32 0, i32 undef, float %5023, float %5024, float undef, float %5027, float %5028, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.ResRet.f32 %5111, 1
  %5114 = extractvalue %dx.types.ResRet.f32 %5111, 2
  %5115 = extractvalue %dx.types.ResRet.f32 %5111, 3
  %5116 = and i32 %5107, 255
  %5117 = uitofp i32 %5116 to float
  %5118 = lshr i32 %5107, 8
  %5119 = and i32 %5118, 255
  %5120 = uitofp i32 %5119 to float
  %5121 = fmul fast float %5115, %5117
  %5122 = fadd fast float %5121, %5120
  %5123 = fmul fast float %5122, 0x3F70101000000000
  %5124 = fadd fast float %5123, 0xBFB99999A0000000
  %5125 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5126 = fmul fast float %5125, 0x3FF1C71C80000000
  %5127 = call float @dx.op.binary.f32(i32 36, float %5123, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5128 = fsub fast float 1.000000e+00, %5126
  %5129 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5130 = fmul fast float %5129, %5112
  %5131 = fmul fast float %5129, %5113
  %5132 = fmul fast float %5129, %5114
  %5133 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5134 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5135 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5136 = fmul fast float %5126, %5112
  %5137 = fmul fast float %5126, %5113
  %5138 = fmul fast float %5126, %5114
  %5139 = fadd fast float %5136, %5127
  %5140 = fadd fast float %5137, %5127
  %5141 = fadd fast float %5138, %5127
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.i32 %5145, 3
  %5147 = extractvalue %dx.types.CBufRet.i32 %5145, 2
  %5148 = add i32 %5147, 0
  %5149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5148, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5150 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5149, %dx.types.Handle %79, float %5060, float %5061, float undef, float undef, i32 0, i32 0, i32 undef, float %5023, float %5024, float undef, float %5027, float %5028, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5151 = extractvalue %dx.types.ResRet.f32 %5150, 0
  %5152 = extractvalue %dx.types.ResRet.f32 %5150, 1
  %5153 = extractvalue %dx.types.ResRet.f32 %5150, 2
  %5154 = extractvalue %dx.types.ResRet.f32 %5150, 3
  %5155 = and i32 %5146, 255
  %5156 = uitofp i32 %5155 to float
  %5157 = lshr i32 %5146, 8
  %5158 = and i32 %5157, 255
  %5159 = uitofp i32 %5158 to float
  %5160 = lshr i32 %5146, 16
  %5161 = and i32 %5160, 255
  %5162 = uitofp i32 %5161 to float
  %5163 = fmul fast float %5162, 0x3F70101000000000
  %5164 = fmul fast float %5151, %5156
  %5165 = fadd fast float %5164, %5159
  %5166 = fmul fast float %5165, 0x3F70101000000000
  %5167 = fadd fast float %5152, -5.000000e-01
  %5168 = fadd fast float %5154, -5.000000e-01
  %5169 = fmul fast float %5167, %5163
  %5170 = fmul fast float %5168, %5163
  %5171 = fadd fast float %5169, 5.000000e-01
  %5172 = fadd fast float %5170, 5.000000e-01
  %5173 = fmul fast float %5171, 2.000000e+00
  %5174 = fadd fast float %5173, -1.000000e+00
  %5175 = fmul fast float %5172, 2.000000e+00
  %5176 = fadd fast float %5175, -1.000000e+00
  %5177 = fadd fast float %5174, %5176
  %5178 = fmul fast float %5177, 5.000000e-01
  %5179 = fsub fast float %5174, %5176
  %5180 = fmul fast float %5179, 5.000000e-01
  %5181 = call float @dx.op.unary.f32(i32 6, float %5178)  ; FAbs(value)
  %5182 = fsub fast float 1.000000e+00, %5181
  %5183 = call float @dx.op.unary.f32(i32 6, float %5180)  ; FAbs(value)
  %5184 = fsub fast float %5182, %5183
  %5185 = call float @dx.op.dot3.f32(i32 55, float %5178, float %5180, float %5184, float %5178, float %5180, float %5184)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = call float @dx.op.unary.f32(i32 25, float %5185)  ; Rsqrt(value)
  %5187 = fmul fast float %5178, %5186
  %5188 = fmul fast float %5180, %5186
  %5189 = select i1 %5016, i32 %5006, i32 %5007
  %5190 = select i1 %5014, i32 %5005, i32 %5189
  %5191 = sitofp i32 %5190 to float
  %5192 = fmul fast float %5184, %5191
  %5193 = fmul fast float %5192, %5186
  %5194 = select i1 %5016, float %5193, float %5188
  %5195 = select i1 %5016, float %5188, float %5193
  %5196 = select i1 %5014, float %5193, float %5187
  %5197 = select i1 %5014, float %5188, float %5194
  %5198 = select i1 %5014, float %5187, float %5195
  %5199 = fsub fast float %5133, %4960
  %5200 = fsub fast float %5134, %4961
  %5201 = fsub fast float %5135, %4962
  %5202 = fmul fast float %5199, %5105
  %5203 = fmul fast float %5200, %5105
  %5204 = fmul fast float %5201, %5105
  %5205 = fadd fast float %5202, %4960
  %5206 = fadd fast float %5203, %4961
  %5207 = fadd fast float %5204, %4962
  %5208 = fsub fast float %5142, %4957
  %5209 = fsub fast float %5143, %4958
  %5210 = fsub fast float %5144, %4959
  %5211 = fmul fast float %5208, %5105
  %5212 = fmul fast float %5209, %5105
  %5213 = fmul fast float %5210, %5105
  %5214 = fadd fast float %5211, %4957
  %5215 = fadd fast float %5212, %4958
  %5216 = fadd fast float %5213, %4959
  %5217 = fadd fast float %5196, %4963
  %5218 = fadd fast float %5197, %4964
  %5219 = fadd fast float %5198, %4965
  %5220 = call float @dx.op.dot3.f32(i32 55, float %5217, float %5218, float %5219, float %5217, float %5218, float %5219)  ; Dot3(ax,ay,az,bx,by,bz)
  %5221 = call float @dx.op.unary.f32(i32 25, float %5220)  ; Rsqrt(value)
  %5222 = fmul fast float %5217, %5221
  %5223 = fmul fast float %5218, %5221
  %5224 = fmul fast float %5219, %5221
  %5225 = fsub fast float %5222, %4963
  %5226 = fsub fast float %5223, %4964
  %5227 = fsub fast float %5224, %4965
  %5228 = fmul fast float %5225, %5105
  %5229 = fmul fast float %5226, %5105
  %5230 = fmul fast float %5227, %5105
  %5231 = fadd fast float %5228, %4963
  %5232 = fadd fast float %5229, %4964
  %5233 = fadd fast float %5230, %4965
  %5234 = call float @dx.op.binary.f32(i32 36, float %4967, float %5153)  ; FMin(a,b)
  %5235 = fsub fast float %5234, %4967
  %5236 = fmul fast float %5235, %5105
  %5237 = fadd fast float %5236, %4967
  %5238 = fsub fast float %5166, %4966
  %5239 = fmul fast float %5238, %5105
  %5240 = fadd fast float %5239, %4966
  br label %5241

; <label>:5241                                    ; preds = %5103, %5065, %4956, %4672
  %5242 = phi float [ %5214, %5103 ], [ %4957, %5065 ], [ %4957, %4956 ], [ %4200, %4672 ]
  %5243 = phi float [ %5215, %5103 ], [ %4958, %5065 ], [ %4958, %4956 ], [ %4201, %4672 ]
  %5244 = phi float [ %5216, %5103 ], [ %4959, %5065 ], [ %4959, %4956 ], [ %4202, %4672 ]
  %5245 = phi float [ %5205, %5103 ], [ %4960, %5065 ], [ %4960, %4956 ], [ %4281, %4672 ]
  %5246 = phi float [ %5206, %5103 ], [ %4961, %5065 ], [ %4961, %4956 ], [ %4282, %4672 ]
  %5247 = phi float [ %5207, %5103 ], [ %4962, %5065 ], [ %4962, %4956 ], [ %4283, %4672 ]
  %5248 = phi float [ %5231, %5103 ], [ %4963, %5065 ], [ %4963, %4956 ], [ %4161, %4672 ]
  %5249 = phi float [ %5232, %5103 ], [ %4964, %5065 ], [ %4964, %4956 ], [ %4162, %4672 ]
  %5250 = phi float [ %5233, %5103 ], [ %4965, %5065 ], [ %4965, %4956 ], [ %4163, %4672 ]
  %5251 = phi float [ %5240, %5103 ], [ %4966, %5065 ], [ %4966, %4956 ], [ %4203, %4672 ]
  %5252 = phi float [ %5237, %5103 ], [ %4967, %5065 ], [ %4967, %4956 ], [ %4176, %4672 ]
  %5253 = fcmp fast une float %4676, 0.000000e+00
  %5254 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = call float @dx.op.unary.f32(i32 25, float %5254)  ; Rsqrt(value)
  br i1 %5253, label %5263, label %5256

; <label>:5256                                    ; preds = %5241
  %5257 = fmul fast float %5255, %166
  %5258 = fmul fast float %5255, %167
  %5259 = fmul fast float %5255, %168
  %5260 = fsub fast float -0.000000e+00, %5257
  %5261 = fsub fast float -0.000000e+00, %5258
  %5262 = fsub fast float -0.000000e+00, %5259
  br label %5430

; <label>:5263                                    ; preds = %5241
  %5264 = fmul fast float %166, %5255
  %5265 = fsub fast float -0.000000e+00, %5264
  %5266 = fmul fast float %167, %5255
  %5267 = fsub fast float -0.000000e+00, %5266
  %5268 = fmul fast float %168, %5255
  %5269 = fsub fast float -0.000000e+00, %5268
  %5270 = call float @dx.op.dot3.f32(i32 55, float %5265, float %5267, float %5269, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %5271 = fmul fast float %4676, 2.500000e+00
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fmul fast float %4676, 0x4013FFFFE0000000
  %5274 = fadd fast float %5273, 0xBFFFFFFFE0000000
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fmul fast float %4676, 0x4004000020000000
  %5277 = fadd fast float %5276, 0xBFF8000040000000
  %5278 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5279 = fmul fast float %4182, 1.000000e+01
  %5280 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5281 = fmul fast float %5280, 2.000000e+00
  %5282 = fsub fast float 3.000000e+00, %5281
  %5283 = fmul fast float %5280, %5280
  %5284 = fmul fast float %5283, %5282
  %5285 = fsub fast float 1.000000e+00, %5284
  %5286 = fsub fast float 0x3FE3333340000000, %5251
  %5287 = fmul fast float %5286, 0x400AAAAAA0000000
  %5288 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  %5289 = fmul fast float %5285, %5288
  %5290 = fmul fast float %5245, 0x3FEA2B8620000000
  %5291 = fmul fast float %5246, 0x3FEA2B8620000000
  %5292 = fmul fast float %5247, 0x3FEA2B8620000000
  %5293 = fadd fast float %5290, 0x3FC81DFBA0000000
  %5294 = fmul fast float %5293, %5245
  %5295 = fadd fast float %5294, 0x3F910E6020000000
  %5296 = fadd fast float %5291, 0x3FC81DFBA0000000
  %5297 = fmul fast float %5296, %5246
  %5298 = fadd fast float %5297, 0x3F910E6020000000
  %5299 = fadd fast float %5292, 0x3FC81DFBA0000000
  %5300 = fmul fast float %5299, %5247
  %5301 = fadd fast float %5300, 0x3F910E6020000000
  %5302 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5303 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5304 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5305 = fsub fast float %5302, %5245
  %5306 = fsub fast float %5303, %5246
  %5307 = fsub fast float %5304, %5247
  %5308 = fmul fast float %5305, %5272
  %5309 = fmul fast float %5308, %5289
  %5310 = fmul fast float %5306, %5272
  %5311 = fmul fast float %5310, %5289
  %5312 = fmul fast float %5307, %5272
  %5313 = fmul fast float %5312, %5289
  %5314 = fadd fast float %5309, %5245
  %5315 = fadd fast float %5311, %5246
  %5316 = fadd fast float %5313, %5247
  %5317 = fmul fast float %5252, %5252
  %5318 = fmul fast float %5317, %5317
  %5319 = fadd fast float %5275, 1.000000e+00
  %5320 = fsub fast float %5319, %5289
  %5321 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  %5322 = call float @dx.op.dot3.f32(i32 55, float %92, float %94, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5324 = fsub fast float 1.000000e+00, %5318
  %5325 = call float @dx.op.binary.f32(i32 36, float %5321, float %5324)  ; FMin(a,b)
  %5326 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5327 = call float @dx.op.binary.f32(i32 35, float %5325, float %5326)  ; FMax(a,b)
  %5328 = fadd fast float %5323, 0xBFE4CCCCC0000000
  %5329 = fmul fast float %5328, 0x4006DB6DA0000000
  %5330 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5331 = fmul fast float %5330, 2.000000e+00
  %5332 = fsub fast float 3.000000e+00, %5331
  %5333 = bitcast float %5242 to i32
  %5334 = ashr i32 %5333, 1
  %5335 = add nsw i32 %5334, 532487669
  %5336 = bitcast i32 %5335 to float
  %5337 = fsub fast float 1.000000e+00, %5336
  %5338 = bitcast float %5337 to i32
  %5339 = sub nsw i32 2129859010, %5338
  %5340 = bitcast i32 %5339 to float
  %5341 = fmul fast float %5340, 2.000000e+00
  %5342 = bitcast float %5243 to i32
  %5343 = ashr i32 %5342, 1
  %5344 = add nsw i32 %5343, 532487669
  %5345 = bitcast i32 %5344 to float
  %5346 = fsub fast float 1.000000e+00, %5345
  %5347 = bitcast float %5346 to i32
  %5348 = sub nsw i32 2129859010, %5347
  %5349 = bitcast i32 %5348 to float
  %5350 = fmul fast float %5349, 2.000000e+00
  %5351 = bitcast float %5244 to i32
  %5352 = ashr i32 %5351, 1
  %5353 = add nsw i32 %5352, 532487669
  %5354 = bitcast i32 %5353 to float
  %5355 = fsub fast float 1.000000e+00, %5354
  %5356 = bitcast float %5355 to i32
  %5357 = sub nsw i32 2129859010, %5356
  %5358 = bitcast i32 %5357 to float
  %5359 = fmul fast float %5358, 2.000000e+00
  %5360 = fsub fast float 0x4002A9FBE0000000, %5341
  %5361 = fadd fast float %5341, 0x3FD54FDF00000000
  %5362 = bitcast float %5361 to i32
  %5363 = sub nsw i32 2129859010, %5362
  %5364 = bitcast i32 %5363 to float
  %5365 = fmul fast float %5364, %5360
  %5366 = fmul fast float %5365, %5365
  %5367 = fsub fast float 0x4002A9FBE0000000, %5350
  %5368 = fadd fast float %5350, 0x3FD54FDF00000000
  %5369 = bitcast float %5368 to i32
  %5370 = sub nsw i32 2129859010, %5369
  %5371 = bitcast i32 %5370 to float
  %5372 = fmul fast float %5371, %5367
  %5373 = fmul fast float %5372, %5372
  %5374 = fsub fast float 0x4002A9FBE0000000, %5359
  %5375 = fadd fast float %5359, 0x3FD54FDF00000000
  %5376 = bitcast float %5375 to i32
  %5377 = sub nsw i32 2129859010, %5376
  %5378 = bitcast i32 %5377 to float
  %5379 = fmul fast float %5378, %5374
  %5380 = fmul fast float %5379, %5379
  %5381 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5366)  ; FMax(a,b)
  %5382 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5373)  ; FMax(a,b)
  %5383 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5380)  ; FMax(a,b)
  %5384 = fsub fast float 1.000000e+00, %5270
  %5385 = fadd fast float %5384, %5285
  %5386 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  %5387 = fsub fast float 1.000000e+00, %4657
  %5388 = fmul fast float %5327, %5387
  %5389 = fmul fast float %5330, %5330
  %5390 = fmul fast float %5389, %5388
  %5391 = fmul fast float %5390, %5332
  %5392 = fmul fast float %5387, 0xBFE99999A0000000
  %5393 = fmul fast float %5392, %5272
  %5394 = fmul fast float %5393, %5289
  %5395 = fadd fast float %5394, 1.000000e+00
  %5396 = fadd fast float %5251, -1.000000e+00
  %5397 = fmul fast float %5395, %5396
  %5398 = fadd fast float %5397, 1.000000e+00
  %5399 = fsub fast float %5381, %5242
  %5400 = fsub fast float %5382, %5243
  %5401 = fsub fast float %5383, %5244
  %5402 = fmul fast float %5391, %5399
  %5403 = fmul fast float %5391, %5400
  %5404 = fmul fast float %5391, %5401
  %5405 = fadd fast float %5402, %5242
  %5406 = fadd fast float %5403, %5243
  %5407 = fadd fast float %5404, %5244
  %5408 = fsub fast float %92, %5248
  %5409 = fsub fast float %94, %5249
  %5410 = fsub fast float %96, %5250
  %5411 = fmul fast float %5391, %5408
  %5412 = fmul fast float %5391, %5409
  %5413 = fmul fast float %5391, %5410
  %5414 = fadd fast float %5411, %5248
  %5415 = fadd fast float %5412, %5249
  %5416 = fadd fast float %5413, %5250
  %5417 = fmul fast float %5391, %5386
  %5418 = call float @dx.op.unary.f32(i32 7, float %5398)  ; Saturate(value)
  %5419 = fsub fast float 1.000000e+00, %5418
  %5420 = fmul fast float %5417, %5419
  %5421 = fadd fast float %5420, %5418
  %5422 = fsub fast float 1.000000e+00, %5252
  %5423 = fmul fast float %5391, %5422
  %5424 = fadd fast float %5423, %5252
  %5425 = call float @dx.op.dot3.f32(i32 55, float %5414, float %5415, float %5416, float %5414, float %5415, float %5416)  ; Dot3(ax,ay,az,bx,by,bz)
  %5426 = call float @dx.op.unary.f32(i32 25, float %5425)  ; Rsqrt(value)
  %5427 = fmul fast float %5414, %5426
  %5428 = fmul fast float %5415, %5426
  %5429 = fmul fast float %5416, %5426
  br label %5430

; <label>:5430                                    ; preds = %5263, %5256
  %5431 = phi float [ %5262, %5256 ], [ %5269, %5263 ]
  %5432 = phi float [ %5261, %5256 ], [ %5267, %5263 ]
  %5433 = phi float [ %5260, %5256 ], [ %5265, %5263 ]
  %5434 = phi float [ %5259, %5256 ], [ %5268, %5263 ]
  %5435 = phi float [ %5258, %5256 ], [ %5266, %5263 ]
  %5436 = phi float [ %5257, %5256 ], [ %5264, %5263 ]
  %5437 = phi float [ %5242, %5256 ], [ %5405, %5263 ]
  %5438 = phi float [ %5243, %5256 ], [ %5406, %5263 ]
  %5439 = phi float [ %5244, %5256 ], [ %5407, %5263 ]
  %5440 = phi float [ %5245, %5256 ], [ %5314, %5263 ]
  %5441 = phi float [ %5246, %5256 ], [ %5315, %5263 ]
  %5442 = phi float [ %5247, %5256 ], [ %5316, %5263 ]
  %5443 = phi float [ %5248, %5256 ], [ %5427, %5263 ]
  %5444 = phi float [ %5249, %5256 ], [ %5428, %5263 ]
  %5445 = phi float [ %5250, %5256 ], [ %5429, %5263 ]
  %5446 = phi float [ %5251, %5256 ], [ %5421, %5263 ]
  %5447 = phi float [ %5252, %5256 ], [ %5424, %5263 ]
  %5448 = select i1 %205, float 0.000000e+00, float %5439
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5443, float %5444, float %5445, float %5433, float %5432, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5435, float %5434, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = fmul fast float %5451, 2.000000e+00
  %5453 = fmul fast float %5452, %5443
  %5454 = fmul fast float %5452, %5444
  %5455 = fmul fast float %5452, %5445
  %5456 = fsub fast float %5436, %5453
  %5457 = fsub fast float %5435, %5454
  %5458 = fsub fast float %5434, %5455
  %5459 = call float @dx.op.binary.f32(i32 36, float %5447, float 1.000000e+00)  ; FMin(a,b)
  %5460 = fsub fast float 1.000000e+00, %5447
  %5461 = bitcast float %5460 to i32
  %5462 = sub nsw i32 2129859010, %5461
  %5463 = bitcast i32 %5462 to float
  %5464 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %5465 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = fcmp fast oeq float %5465, 0.000000e+00
  %5467 = fcmp fast oeq float %5464, 0.000000e+00
  %5468 = or i1 %5467, %5466
  br i1 %5468, label %5498, label %5469

; <label>:5469                                    ; preds = %5430
  %5470 = fsub fast float -0.000000e+00, %63
  %5471 = fsub fast float -0.000000e+00, %61
  %5472 = call float @dx.op.unary.f32(i32 24, float %5465)  ; Sqrt(value)
  %5473 = fdiv fast float %5472, %5464
  %5474 = fcmp fast ogt float %5473, 0x3FFB6F8900000000
  %5475 = select i1 %5474, float 0x3FFB6F8900000000, float %5473
  %5476 = fmul fast float %5475, 0x3FE8A23460000000
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = call float @dx.op.binary.f32(i32 35, float %5475, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5479 = fmul fast float %5477, %5464
  %5480 = fmul fast float %5478, 0x3FF279A740000000
  %5481 = fadd fast float %5480, -1.000000e+00
  %5482 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %62, float %5470, float %5471, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = call float @dx.op.unary.f32(i32 25, float %5482)  ; Rsqrt(value)
  %5484 = fmul fast float %5483, %5470
  %5485 = fmul fast float %5483, %5471
  %5486 = fmul fast float %5483, %62
  %5487 = fmul fast float %5481, %5481
  %5488 = fsub fast float 1.000000e+00, %5487
  %5489 = fmul fast float %5478, 0x40005F8BE0000000
  %5490 = fsub fast float 0x400C5BF8A0000000, %5489
  %5491 = fdiv fast float %5479, %5490
  %5492 = fmul fast float %5491, 0x3FEE31C3C0000000
  %5493 = fmul fast float %5492, %5488
  %5494 = fmul fast float %5478, 0x3FDACB7480000000
  %5495 = fadd fast float %5494, 0xBFD7347680000000
  %5496 = fmul fast float %5495, %5491
  %5497 = fmul fast float %5496, %5488
  br label %5498

; <label>:5498                                    ; preds = %5469, %5430
  %5499 = phi float [ %5484, %5469 ], [ 0.000000e+00, %5430 ]
  %5500 = phi float [ %5485, %5469 ], [ 0.000000e+00, %5430 ]
  %5501 = phi float [ %5486, %5469 ], [ 0.000000e+00, %5430 ]
  %5502 = phi float [ %5493, %5469 ], [ 0.000000e+00, %5430 ]
  %5503 = phi float [ %5497, %5469 ], [ 0.000000e+00, %5430 ]
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %5501, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = fmul fast float %5504, 0x3FDF454380000000
  %5506 = fmul fast float %5504, %5504
  %5507 = fmul fast float %5506, 0x3FEE471020000000
  %5508 = fadd fast float %5507, 0xBFD42F6020000000
  %5509 = fmul fast float %5464, 0x3FD20DD760000000
  %5510 = fmul fast float %5508, %5503
  %5511 = fadd fast float %5510, %5509
  %5512 = fmul fast float %5505, %5502
  %5513 = fadd fast float %5511, %5512
  %5514 = fsub fast float %5511, %5512
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %5501, float %5456, float %5457, float %5458)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fmul fast float %5515, 0x3FDF454380000000
  %5517 = fmul fast float %5515, %5515
  %5518 = fmul fast float %5517, 0x3FEE471020000000
  %5519 = fadd fast float %5518, 0xBFD42F6020000000
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5502, float %5503, float 0x3FD20DD760000000, float %5516, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %5522 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = fcmp fast oeq float %5522, 0.000000e+00
  %5524 = fcmp fast oeq float %5521, 0.000000e+00
  %5525 = or i1 %5524, %5523
  br i1 %5525, label %5555, label %5526

; <label>:5526                                    ; preds = %5498
  %5527 = fsub fast float -0.000000e+00, %59
  %5528 = fsub fast float -0.000000e+00, %57
  %5529 = call float @dx.op.unary.f32(i32 24, float %5522)  ; Sqrt(value)
  %5530 = fdiv fast float %5529, %5521
  %5531 = fcmp fast ogt float %5530, 0x3FFB6F8900000000
  %5532 = select i1 %5531, float 0x3FFB6F8900000000, float %5530
  %5533 = fmul fast float %5532, 0x3FE8A23460000000
  %5534 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5535 = call float @dx.op.binary.f32(i32 35, float %5532, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5536 = fmul fast float %5534, %5521
  %5537 = fmul fast float %5535, 0x3FF279A740000000
  %5538 = fadd fast float %5537, -1.000000e+00
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5527, float %5528, float %58, float %5527, float %5528, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = call float @dx.op.unary.f32(i32 25, float %5539)  ; Rsqrt(value)
  %5541 = fmul fast float %5540, %5527
  %5542 = fmul fast float %5540, %5528
  %5543 = fmul fast float %5540, %58
  %5544 = fmul fast float %5538, %5538
  %5545 = fsub fast float 1.000000e+00, %5544
  %5546 = fmul fast float %5535, 0x40005F8BE0000000
  %5547 = fsub fast float 0x400C5BF8A0000000, %5546
  %5548 = fdiv fast float %5536, %5547
  %5549 = fmul fast float %5548, 0x3FEE31C3C0000000
  %5550 = fmul fast float %5549, %5545
  %5551 = fmul fast float %5535, 0x3FDACB7480000000
  %5552 = fadd fast float %5551, 0xBFD7347680000000
  %5553 = fmul fast float %5552, %5548
  %5554 = fmul fast float %5553, %5545
  br label %5555

; <label>:5555                                    ; preds = %5526, %5498
  %5556 = phi float [ %5541, %5526 ], [ 0.000000e+00, %5498 ]
  %5557 = phi float [ %5542, %5526 ], [ 0.000000e+00, %5498 ]
  %5558 = phi float [ %5543, %5526 ], [ 0.000000e+00, %5498 ]
  %5559 = phi float [ %5550, %5526 ], [ 0.000000e+00, %5498 ]
  %5560 = phi float [ %5554, %5526 ], [ 0.000000e+00, %5498 ]
  %5561 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5557, float %5558, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = fmul fast float %5561, 0x3FDF454380000000
  %5563 = fmul fast float %5561, %5561
  %5564 = fmul fast float %5563, 0x3FEE471020000000
  %5565 = fadd fast float %5564, 0xBFD42F6020000000
  %5566 = fmul fast float %5521, 0x3FD20DD760000000
  %5567 = fmul fast float %5565, %5560
  %5568 = fadd fast float %5567, %5566
  %5569 = fmul fast float %5562, %5559
  %5570 = fadd fast float %5568, %5569
  %5571 = fsub fast float %5568, %5569
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5557, float %5558, float %5456, float %5457, float %5458)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = fmul fast float %5572, 0x3FDF454380000000
  %5574 = fmul fast float %5572, %5572
  %5575 = fmul fast float %5574, 0x3FEE471020000000
  %5576 = fadd fast float %5575, 0xBFD42F6020000000
  %5577 = call float @dx.op.dot3.f32(i32 55, float %5521, float %5559, float %5560, float 0x3FD20DD760000000, float %5573, float %5576)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5579 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5580 = fcmp fast oeq float %5579, 0.000000e+00
  %5581 = fcmp fast oeq float %5578, 0.000000e+00
  %5582 = or i1 %5581, %5580
  br i1 %5582, label %5612, label %5583

; <label>:5583                                    ; preds = %5555
  %5584 = fsub fast float -0.000000e+00, %55
  %5585 = fsub fast float -0.000000e+00, %53
  %5586 = call float @dx.op.unary.f32(i32 24, float %5579)  ; Sqrt(value)
  %5587 = fdiv fast float %5586, %5578
  %5588 = fcmp fast ogt float %5587, 0x3FFB6F8900000000
  %5589 = select i1 %5588, float 0x3FFB6F8900000000, float %5587
  %5590 = fmul fast float %5589, 0x3FE8A23460000000
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = call float @dx.op.binary.f32(i32 35, float %5589, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5593 = fmul fast float %5591, %5578
  %5594 = fmul fast float %5592, 0x3FF279A740000000
  %5595 = fadd fast float %5594, -1.000000e+00
  %5596 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %54, float %5584, float %5585, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = call float @dx.op.unary.f32(i32 25, float %5596)  ; Rsqrt(value)
  %5598 = fmul fast float %5597, %5584
  %5599 = fmul fast float %5597, %5585
  %5600 = fmul fast float %5597, %54
  %5601 = fmul fast float %5595, %5595
  %5602 = fsub fast float 1.000000e+00, %5601
  %5603 = fmul fast float %5592, 0x40005F8BE0000000
  %5604 = fsub fast float 0x400C5BF8A0000000, %5603
  %5605 = fdiv fast float %5593, %5604
  %5606 = fmul fast float %5605, 0x3FEE31C3C0000000
  %5607 = fmul fast float %5606, %5602
  %5608 = fmul fast float %5592, 0x3FDACB7480000000
  %5609 = fadd fast float %5608, 0xBFD7347680000000
  %5610 = fmul fast float %5609, %5605
  %5611 = fmul fast float %5610, %5602
  br label %5612

; <label>:5612                                    ; preds = %5583, %5555
  %5613 = phi float [ %5598, %5583 ], [ 0.000000e+00, %5555 ]
  %5614 = phi float [ %5599, %5583 ], [ 0.000000e+00, %5555 ]
  %5615 = phi float [ %5600, %5583 ], [ 0.000000e+00, %5555 ]
  %5616 = phi float [ %5607, %5583 ], [ 0.000000e+00, %5555 ]
  %5617 = phi float [ %5611, %5583 ], [ 0.000000e+00, %5555 ]
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = fmul fast float %5618, 0x3FDF454380000000
  %5620 = fmul fast float %5618, %5618
  %5621 = fmul fast float %5620, 0x3FEE471020000000
  %5622 = fadd fast float %5621, 0xBFD42F6020000000
  %5623 = fmul fast float %5578, 0x3FD20DD760000000
  %5624 = fmul fast float %5622, %5617
  %5625 = fadd fast float %5624, %5623
  %5626 = fmul fast float %5619, %5616
  %5627 = fadd fast float %5625, %5626
  %5628 = fsub fast float %5625, %5626
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %5456, float %5457, float %5458)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = fmul fast float %5629, 0x3FDF454380000000
  %5631 = fmul fast float %5629, %5629
  %5632 = fmul fast float %5631, 0x3FEE471020000000
  %5633 = fadd fast float %5632, 0xBFD42F6020000000
  %5634 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5616, float %5617, float 0x3FD20DD760000000, float %5630, float %5633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = call float @dx.op.binary.f32(i32 35, float %5513, float 0.000000e+00)  ; FMax(a,b)
  %5636 = call float @dx.op.binary.f32(i32 35, float %5570, float 0.000000e+00)  ; FMax(a,b)
  %5637 = call float @dx.op.binary.f32(i32 35, float %5627, float 0.000000e+00)  ; FMax(a,b)
  %5638 = call float @dx.op.binary.f32(i32 35, float %5514, float 0.000000e+00)  ; FMax(a,b)
  %5639 = call float @dx.op.binary.f32(i32 35, float %5571, float 0.000000e+00)  ; FMax(a,b)
  %5640 = call float @dx.op.binary.f32(i32 35, float %5628, float 0.000000e+00)  ; FMax(a,b)
  %5641 = call float @dx.op.binary.f32(i32 35, float %5520, float 0.000000e+00)  ; FMax(a,b)
  %5642 = call float @dx.op.binary.f32(i32 35, float %5577, float 0.000000e+00)  ; FMax(a,b)
  %5643 = call float @dx.op.binary.f32(i32 35, float %5634, float 0.000000e+00)  ; FMax(a,b)
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5646 = call float @dx.op.binary.f32(i32 36, float %5440, float %5645)  ; FMin(a,b)
  %5647 = fsub fast float 1.000000e+00, %5459
  %5648 = fmul fast float %5646, %5647
  %5649 = fsub fast float 1.000000e+00, %5648
  %5650 = bitcast float %5649 to i32
  %5651 = sub nsw i32 2129859010, %5650
  %5652 = bitcast i32 %5651 to float
  %5653 = call float @dx.op.binary.f32(i32 36, float %5441, float %5645)  ; FMin(a,b)
  %5654 = fmul fast float %5653, %5647
  %5655 = fsub fast float 1.000000e+00, %5654
  %5656 = bitcast float %5655 to i32
  %5657 = sub nsw i32 2129859010, %5656
  %5658 = bitcast i32 %5657 to float
  %5659 = call float @dx.op.binary.f32(i32 36, float %5442, float %5645)  ; FMin(a,b)
  %5660 = fmul fast float %5659, %5647
  %5661 = fsub fast float 1.000000e+00, %5660
  %5662 = bitcast float %5661 to i32
  %5663 = sub nsw i32 2129859010, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = fmul fast float %5635, %5459
  %5666 = fmul fast float %5665, %5652
  %5667 = fmul fast float %5636, %5459
  %5668 = fmul fast float %5667, %5658
  %5669 = fmul fast float %5637, %5459
  %5670 = fmul fast float %5669, %5664
  %5671 = call float @dx.op.binary.f32(i32 36, float %5437, float %5645)  ; FMin(a,b)
  %5672 = fmul fast float %5671, %5647
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = sub nsw i32 2129859010, %5674
  %5676 = bitcast i32 %5675 to float
  %5677 = call float @dx.op.binary.f32(i32 36, float %5438, float %5645)  ; FMin(a,b)
  %5678 = fmul fast float %5677, %5647
  %5679 = fsub fast float 1.000000e+00, %5678
  %5680 = bitcast float %5679 to i32
  %5681 = sub nsw i32 2129859010, %5680
  %5682 = bitcast i32 %5681 to float
  %5683 = call float @dx.op.binary.f32(i32 36, float %5448, float %5645)  ; FMin(a,b)
  %5684 = fmul fast float %5683, %5647
  %5685 = fsub fast float 1.000000e+00, %5684
  %5686 = bitcast float %5685 to i32
  %5687 = sub nsw i32 2129859010, %5686
  %5688 = bitcast i32 %5687 to float
  %5689 = fmul fast float %5641, %5459
  %5690 = fmul fast float %5689, %5676
  %5691 = fmul fast float %5642, %5459
  %5692 = fmul fast float %5691, %5682
  %5693 = fmul fast float %5643, %5459
  %5694 = fmul fast float %5693, %5688
  %5695 = call float @dx.op.dot3.f32(i32 55, float %5666, float %5668, float %5670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5696 = select i1 %205, float 0.000000e+00, float %5666
  %5697 = select i1 %205, float %5695, float %5668
  %5698 = select i1 %205, float 0.000000e+00, float %5670
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5638, float %5639, float %5640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = select i1 %205, float 0.000000e+00, float %5638
  %5701 = select i1 %205, float %5699, float %5639
  %5702 = select i1 %205, float 0.000000e+00, float %5640
  %5703 = call float @dx.op.dot3.f32(i32 55, float %5690, float %5692, float %5694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5704 = select i1 %205, float 0.000000e+00, float %5690
  %5705 = select i1 %205, float %5703, float %5692
  %5706 = select i1 %205, float 0.000000e+00, float %5694
  %5707 = fmul fast float %5450, 9.843750e-01
  %5708 = fmul fast float %5446, 9.843750e-01
  %5709 = fadd fast float %5707, 7.812500e-03
  %5710 = fadd fast float %5708, 7.812500e-03
  %5711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5709, float %5710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5712 = extractvalue %dx.types.ResRet.f32 %5711, 2
  %5713 = extractvalue %dx.types.ResRet.f32 %5711, 3
  %5714 = fmul fast float %5712, %5437
  %5715 = fmul fast float %5712, %5438
  %5716 = fmul fast float %5712, %5448
  %5717 = fadd fast float %5714, %5713
  %5718 = fadd fast float %5715, %5713
  %5719 = fadd fast float %5716, %5713
  %5720 = fcmp fast ogt float %4177, 0.000000e+00
  br i1 %5720, label %5721, label %5747

; <label>:5721                                    ; preds = %5612
  %5722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4177, float %5450, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5723 = extractvalue %dx.types.ResRet.f32 %5722, 0
  %5724 = extractvalue %dx.types.ResRet.f32 %5722, 1
  %5725 = extractvalue %dx.types.ResRet.f32 %5722, 2
  %5726 = fadd fast float %5723, -5.000000e-01
  %5727 = fadd fast float %5724, -5.000000e-01
  %5728 = fadd fast float %5725, -5.000000e-01
  %5729 = fsub fast float 1.000000e+00, %5437
  %5730 = fsub fast float 1.000000e+00, %5438
  %5731 = fsub fast float 1.000000e+00, %5448
  %5732 = fmul fast float %5437, 4.000000e+00
  %5733 = fmul fast float %5732, %5729
  %5734 = fmul fast float %5733, %5726
  %5735 = fmul fast float %5438, 4.000000e+00
  %5736 = fmul fast float %5735, %5730
  %5737 = fmul fast float %5736, %5727
  %5738 = fmul fast float %5448, 4.000000e+00
  %5739 = fmul fast float %5738, %5731
  %5740 = fmul fast float %5739, %5728
  %5741 = fadd fast float %5734, %5717
  %5742 = fadd fast float %5737, %5718
  %5743 = fadd fast float %5740, %5719
  %5744 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5745 = call float @dx.op.unary.f32(i32 7, float %5742)  ; Saturate(value)
  %5746 = call float @dx.op.unary.f32(i32 7, float %5743)  ; Saturate(value)
  br label %5747

; <label>:5747                                    ; preds = %5721, %5612
  %5748 = phi float [ %5744, %5721 ], [ %5717, %5612 ]
  %5749 = phi float [ %5745, %5721 ], [ %5718, %5612 ]
  %5750 = phi float [ %5746, %5721 ], [ %5719, %5612 ]
  %5751 = call float @dx.op.binary.f32(i32 35, float %5749, float %5750)  ; FMax(a,b)
  %5752 = call float @dx.op.binary.f32(i32 35, float %5748, float %5751)  ; FMax(a,b)
  %5753 = fsub fast float 1.000000e+00, %5752
  %5754 = call float @dx.op.dot3.f32(i32 55, float %5440, float %5441, float %5442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = fcmp fast ogt float %5754, 0x3E7FF19E20000000
  %5756 = fdiv fast float 1.000000e+00, %5754
  %5757 = select i1 %5755, float %5756, float 0.000000e+00
  %5758 = fmul fast float %5757, %5440
  %5759 = fmul fast float %5757, %5441
  %5760 = fmul fast float %5757, %5442
  %5761 = fadd fast float %5758, -1.000000e+00
  %5762 = fadd fast float %5759, -1.000000e+00
  %5763 = fadd fast float %5760, -1.000000e+00
  %5764 = fmul fast float %5761, 5.000000e-01
  %5765 = fmul fast float %5762, 5.000000e-01
  %5766 = fmul fast float %5763, 5.000000e-01
  %5767 = fadd fast float %5764, 1.000000e+00
  %5768 = fadd fast float %5765, 1.000000e+00
  %5769 = fadd fast float %5766, 1.000000e+00
  %5770 = fmul fast float %5748, %5704
  %5771 = fmul fast float %5749, %5705
  %5772 = fmul fast float %5750, %5706
  %5773 = fsub fast float 1.000000e+00, %5450
  %5774 = bitcast float %5773 to i32
  %5775 = sitofp i32 %5774 to float
  %5776 = fmul fast float %5775, 5.000000e+00
  %5777 = fadd fast float %5776, 0xC1EFBF8940000000
  %5778 = fptosi float %5777 to i32
  %5779 = bitcast i32 %5778 to float
  %5780 = fmul fast float %5779, %4178
  %5781 = fmul fast float %5696, %5780
  %5782 = fmul fast float %5781, %5753
  %5783 = fmul fast float %5782, %5767
  %5784 = fmul fast float %5697, %5780
  %5785 = fmul fast float %5784, %5753
  %5786 = fmul fast float %5785, %5768
  %5787 = fmul fast float %5698, %5780
  %5788 = fmul fast float %5787, %5753
  %5789 = fmul fast float %5788, %5769
  %5790 = fadd fast float %5770, %4170
  %5791 = fadd fast float %5790, %5783
  %5792 = fmul fast float %5791, %4174
  %5793 = fadd fast float %5771, %4171
  %5794 = fadd fast float %5793, %5786
  %5795 = fmul fast float %5794, %4174
  %5796 = fadd fast float %5772, %4172
  %5797 = fadd fast float %5796, %5789
  %5798 = fmul fast float %5797, %4174
  %5799 = fmul fast float %5753, %5698
  %5800 = fmul fast float %5753, %5697
  %5801 = fmul fast float %5753, %5696
  %5802 = fmul fast float %5753, %4269
  %5803 = fadd fast float %5802, -1.000000e+00
  %5804 = fmul fast float %5803, %4174
  %5805 = fadd fast float %5804, 1.000000e+00
  %5806 = fmul fast float %5753, %4268
  %5807 = fadd fast float %5806, -1.000000e+00
  %5808 = fmul fast float %5807, %4174
  %5809 = fadd fast float %5808, 1.000000e+00
  %5810 = fmul fast float %5753, %4267
  %5811 = fadd fast float %5810, -1.000000e+00
  %5812 = fmul fast float %5811, %4174
  %5813 = fadd fast float %5812, 1.000000e+00
  %5814 = fmul fast float %5813, %5700
  %5815 = fmul fast float %5809, %5701
  %5816 = fmul fast float %5805, %5702
  %5817 = fadd fast float %5814, %5801
  %5818 = fmul fast float %5817, %4174
  %5819 = fadd fast float %5815, %5800
  %5820 = fmul fast float %5819, %4174
  %5821 = fadd fast float %5816, %5799
  %5822 = fmul fast float %5821, %4174
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 3
  %5825 = fcmp fast oeq float %5824, 0.000000e+00
  br i1 %5825, label %6107, label %5826

; <label>:5826                                    ; preds = %5747
  %5827 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5828 = extractvalue %dx.types.CBufRet.f32 %5823, 1
  %5829 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.CBufRet.f32 %5830, 1
  %5833 = extractvalue %dx.types.CBufRet.f32 %5830, 2
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  %5836 = extractvalue %dx.types.CBufRet.f32 %5834, 1
  %5837 = call float @dx.op.dot3.f32(i32 55, float %5831, float %5832, float %5833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = select i1 %205, float %5835, float %5831
  %5839 = select i1 %205, float %5837, float %5832
  %5840 = select i1 %205, float %5836, float %5833
  %5841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5842 = extractvalue %dx.types.CBufRet.f32 %5841, 1
  %5843 = fcmp fast une float %5842, 0.000000e+00
  br i1 %5843, label %5844, label %5861

; <label>:5844                                    ; preds = %5826
  %5845 = fptoui float %83 to i32
  %5846 = fptoui float %84 to i32
  %5847 = lshr i32 %5845, 4
  %5848 = lshr i32 %5846, 4
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = fptoui float %5850 to i32
  %5852 = add i32 %5851, 15
  %5853 = lshr i32 %5852, 4
  %5854 = mul i32 %5853, %5848
  %5855 = add i32 %5854, %5847
  %5856 = shl i32 %5855, 3
  %5857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5856, i32 undef)  ; BufferLoad(srv,index,wot)
  %5858 = extractvalue %dx.types.ResRet.i32 %5857, 0
  %5859 = and i32 %5858, -268435456
  %5860 = icmp eq i32 %5859, -1342177280
  br i1 %5860, label %5871, label %5861

; <label>:5861                                    ; preds = %5844, %5826
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %5864 = extractvalue %dx.types.CBufRet.f32 %5862, 3
  %5865 = fmul fast float %5863, %83
  %5866 = fmul fast float %5864, %84
  %5867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5865, float %5866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5868 = extractvalue %dx.types.ResRet.f32 %5867, 0
  %5869 = extractvalue %dx.types.ResRet.f32 %5867, 1
  %5870 = extractvalue %dx.types.ResRet.f32 %5867, 2
  br label %5871

; <label>:5871                                    ; preds = %5861, %5844
  %5872 = phi float [ %5868, %5861 ], [ 0.000000e+00, %5844 ]
  %5873 = phi float [ %5869, %5861 ], [ 0.000000e+00, %5844 ]
  %5874 = phi float [ %5870, %5861 ], [ 0.000000e+00, %5844 ]
  %5875 = call float @dx.op.binary.f32(i32 36, float %5873, float %5874)  ; FMin(a,b)
  %5876 = call float @dx.op.binary.f32(i32 36, float %5872, float %5875)  ; FMin(a,b)
  %5877 = fcmp fast ogt float %5876, 0.000000e+00
  br i1 %5877, label %5878, label %6107, !dx.controlflow.hints !76

; <label>:5878                                    ; preds = %5871
  %5879 = fmul fast float %5872, %5838
  %5880 = fmul fast float %5873, %5839
  %5881 = fmul fast float %5874, %5840
  %5882 = fsub fast float %5827, %5436
  %5883 = fsub fast float %5828, %5435
  %5884 = fsub fast float %5829, %5434
  %5885 = call float @dx.op.dot3.f32(i32 55, float %5882, float %5883, float %5884, float %5882, float %5883, float %5884)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = call float @dx.op.unary.f32(i32 25, float %5885)  ; Rsqrt(value)
  %5887 = fmul fast float %5886, %5882
  %5888 = fmul fast float %5886, %5883
  %5889 = fmul fast float %5886, %5884
  %5890 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5433, float %5432, float %5431, float %5887, float %5888, float %5889)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = call float @dx.op.unary.f32(i32 7, float %5890)  ; Saturate(value)
  %5893 = fmul fast float %5892, %5892
  %5894 = fmul fast float %5893, %5463
  %5895 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5896 = fmul fast float %5895, %5892
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5443, float %5444, float %5445, float %5887, float %5888, float %5889)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = fmul fast float %5897, %5897
  %5899 = call float @dx.op.unary.f32(i32 6, float %5890)  ; FAbs(value)
  %5900 = fsub fast float 1.000000e+00, %5446
  %5901 = call float @dx.op.binary.f32(i32 35, float %5900, float 0x3F847AE140000000)  ; FMax(a,b)
  %5902 = fmul fast float %5901, %5901
  %5903 = fmul fast float %5902, %5902
  %5904 = fsub fast float 1.000000e+00, %5903
  %5905 = fmul fast float %5450, %5450
  %5906 = fmul fast float %5905, %5904
  %5907 = fadd fast float %5906, %5903
  %5908 = bitcast float %5907 to i32
  %5909 = ashr i32 %5908, 1
  %5910 = add nsw i32 %5909, 532487669
  %5911 = bitcast i32 %5910 to float
  %5912 = fadd fast float %5911, %5450
  %5913 = fmul fast float %5903, %5898
  %5914 = fsub fast float 1.000000e+00, %5898
  %5915 = fadd fast float %5914, %5913
  %5916 = fmul fast float %5899, %5899
  %5917 = fmul fast float %5916, %5904
  %5918 = fadd fast float %5917, %5903
  %5919 = bitcast float %5918 to i32
  %5920 = ashr i32 %5919, 1
  %5921 = add nsw i32 %5920, 532487669
  %5922 = bitcast i32 %5921 to float
  %5923 = fadd fast float %5922, %5899
  %5924 = fmul fast float %5915, %5915
  %5925 = fmul fast float %5924, %5912
  %5926 = fmul fast float %5925, %5923
  %5927 = fdiv fast float 0x3FF0A00000000000, %5926
  %5928 = fmul fast float %5927, %5903
  %5929 = call float @dx.op.unary.f32(i32 6, float %5891)  ; FAbs(value)
  %5930 = fsub fast float 1.000000e+00, %5929
  %5931 = bitcast float %5930 to i32
  %5932 = sitofp i32 %5931 to float
  %5933 = fmul fast float %5932, 5.000000e+00
  %5934 = fadd fast float %5933, 0xC1EFBF8940000000
  %5935 = fptosi float %5934 to i32
  %5936 = bitcast i32 %5935 to float
  %5937 = fsub fast float 1.000000e+00, %5437
  %5938 = fsub fast float 1.000000e+00, %5438
  %5939 = fsub fast float 1.000000e+00, %5448
  %5940 = fmul fast float %5936, %5937
  %5941 = fmul fast float %5936, %5938
  %5942 = fmul fast float %5936, %5939
  %5943 = fadd fast float %5940, %5437
  %5944 = fadd fast float %5941, %5438
  %5945 = fadd fast float %5942, %5448
  br i1 %5720, label %5946, label %5969

; <label>:5946                                    ; preds = %5878
  %5947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4177, float %5929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5948 = extractvalue %dx.types.ResRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.ResRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.ResRet.f32 %5947, 2
  %5951 = fadd fast float %5948, -5.000000e-01
  %5952 = fadd fast float %5949, -5.000000e-01
  %5953 = fadd fast float %5950, -5.000000e-01
  %5954 = fmul fast float %5437, 4.000000e+00
  %5955 = fmul fast float %5954, %5937
  %5956 = fmul fast float %5955, %5951
  %5957 = fmul fast float %5438, 4.000000e+00
  %5958 = fmul fast float %5957, %5938
  %5959 = fmul fast float %5958, %5952
  %5960 = fmul fast float %5448, 4.000000e+00
  %5961 = fmul fast float %5960, %5939
  %5962 = fmul fast float %5961, %5953
  %5963 = fadd fast float %5956, %5943
  %5964 = fadd fast float %5959, %5944
  %5965 = fadd fast float %5962, %5945
  %5966 = call float @dx.op.unary.f32(i32 7, float %5963)  ; Saturate(value)
  %5967 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5968 = call float @dx.op.unary.f32(i32 7, float %5965)  ; Saturate(value)
  br label %5969

; <label>:5969                                    ; preds = %5946, %5878
  %5970 = phi float [ %5966, %5946 ], [ %5943, %5878 ]
  %5971 = phi float [ %5967, %5946 ], [ %5944, %5878 ]
  %5972 = phi float [ %5968, %5946 ], [ %5945, %5878 ]
  %5973 = fmul fast float %5890, 9.843750e-01
  %5974 = fadd fast float %5973, 7.812500e-03
  %5975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5974, float %5710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5976 = extractvalue %dx.types.ResRet.f32 %5975, 2
  %5977 = extractvalue %dx.types.ResRet.f32 %5975, 3
  %5978 = fmul fast float %5976, %5437
  %5979 = fmul fast float %5976, %5438
  %5980 = fmul fast float %5976, %5448
  %5981 = fadd fast float %5978, %5977
  %5982 = fadd fast float %5979, %5977
  %5983 = fadd fast float %5980, %5977
  br i1 %5720, label %5984, label %6007

; <label>:5984                                    ; preds = %5969
  %5985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4177, float %5890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.ResRet.f32 %5985, 2
  %5989 = fadd fast float %5986, -5.000000e-01
  %5990 = fadd fast float %5987, -5.000000e-01
  %5991 = fadd fast float %5988, -5.000000e-01
  %5992 = fmul fast float %5437, 4.000000e+00
  %5993 = fmul fast float %5992, %5937
  %5994 = fmul fast float %5993, %5989
  %5995 = fmul fast float %5438, 4.000000e+00
  %5996 = fmul fast float %5995, %5938
  %5997 = fmul fast float %5996, %5990
  %5998 = fmul fast float %5448, 4.000000e+00
  %5999 = fmul fast float %5998, %5939
  %6000 = fmul fast float %5999, %5991
  %6001 = fadd fast float %5994, %5981
  %6002 = fadd fast float %5997, %5982
  %6003 = fadd fast float %6000, %5983
  %6004 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6005 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6006 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  br label %6007

; <label>:6007                                    ; preds = %5984, %5969
  %6008 = phi float [ %6004, %5984 ], [ %5981, %5969 ]
  %6009 = phi float [ %6005, %5984 ], [ %5982, %5969 ]
  %6010 = phi float [ %6006, %5984 ], [ %5983, %5969 ]
  %6011 = call float @dx.op.binary.f32(i32 35, float %6009, float %6010)  ; FMax(a,b)
  %6012 = call float @dx.op.binary.f32(i32 35, float %6008, float %6011)  ; FMax(a,b)
  %6013 = fsub fast float 1.000000e+00, %6012
  %6014 = fsub fast float -0.000000e+00, %5443
  %6015 = fsub fast float -0.000000e+00, %5444
  %6016 = fsub fast float -0.000000e+00, %5445
  %6017 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %6014, float %6015, float %6016)  ; Dot3(ax,ay,az,bx,by,bz)
  %6018 = call float @dx.op.unary.f32(i32 7, float %6017)  ; Saturate(value)
  %6019 = fmul fast float %6018, 9.843750e-01
  %6020 = fadd fast float %6019, 7.812500e-03
  %6021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6020, float %5710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6022 = extractvalue %dx.types.ResRet.f32 %6021, 2
  %6023 = extractvalue %dx.types.ResRet.f32 %6021, 3
  %6024 = fmul fast float %6022, %5437
  %6025 = fmul fast float %6022, %5438
  %6026 = fmul fast float %6022, %5448
  %6027 = fadd fast float %6024, %6023
  %6028 = fadd fast float %6025, %6023
  %6029 = fadd fast float %6026, %6023
  br i1 %5720, label %6030, label %6053

; <label>:6030                                    ; preds = %6007
  %6031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4177, float %6018, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6032 = extractvalue %dx.types.ResRet.f32 %6031, 0
  %6033 = extractvalue %dx.types.ResRet.f32 %6031, 1
  %6034 = extractvalue %dx.types.ResRet.f32 %6031, 2
  %6035 = fadd fast float %6032, -5.000000e-01
  %6036 = fadd fast float %6033, -5.000000e-01
  %6037 = fadd fast float %6034, -5.000000e-01
  %6038 = fmul fast float %5437, 4.000000e+00
  %6039 = fmul fast float %6038, %5937
  %6040 = fmul fast float %6039, %6035
  %6041 = fmul fast float %5438, 4.000000e+00
  %6042 = fmul fast float %6041, %5938
  %6043 = fmul fast float %6042, %6036
  %6044 = fmul fast float %5448, 4.000000e+00
  %6045 = fmul fast float %6044, %5939
  %6046 = fmul fast float %6045, %6037
  %6047 = fadd fast float %6040, %6027
  %6048 = fadd fast float %6043, %6028
  %6049 = fadd fast float %6046, %6029
  %6050 = call float @dx.op.unary.f32(i32 7, float %6047)  ; Saturate(value)
  %6051 = call float @dx.op.unary.f32(i32 7, float %6048)  ; Saturate(value)
  %6052 = call float @dx.op.unary.f32(i32 7, float %6049)  ; Saturate(value)
  br label %6053

; <label>:6053                                    ; preds = %6030, %6007
  %6054 = phi float [ %6050, %6030 ], [ %6027, %6007 ]
  %6055 = phi float [ %6051, %6030 ], [ %6028, %6007 ]
  %6056 = phi float [ %6052, %6030 ], [ %6029, %6007 ]
  %6057 = call float @dx.op.binary.f32(i32 35, float %6055, float %6056)  ; FMax(a,b)
  %6058 = call float @dx.op.binary.f32(i32 35, float %6054, float %6057)  ; FMax(a,b)
  %6059 = fsub fast float 1.000000e+00, %6058
  %6060 = fmul fast float %6059, %6018
  %6061 = fmul fast float %6060, %4267
  %6062 = fmul fast float %6060, %4268
  %6063 = fmul fast float %6060, %4269
  %6064 = fmul fast float %5970, %5928
  %6065 = fmul fast float %5971, %5928
  %6066 = fmul fast float %5972, %5928
  %6067 = fsub fast float 1.000000e+00, %5891
  %6068 = bitcast float %6067 to i32
  %6069 = sitofp i32 %6068 to float
  %6070 = fmul fast float %6069, 5.000000e+00
  %6071 = fadd fast float %6070, 0xC1EFBF8940000000
  %6072 = fptosi float %6071 to i32
  %6073 = bitcast i32 %6072 to float
  %6074 = fmul fast float %6073, %4178
  %6075 = fmul fast float %6013, %6074
  %6076 = fmul fast float %6075, %5767
  %6077 = fmul fast float %6075, %5768
  %6078 = fmul fast float %6075, %5769
  %6079 = fmul fast float %6013, %5896
  %6080 = fadd fast float %6076, %6064
  %6081 = fadd fast float %6077, %6065
  %6082 = fadd fast float %6078, %6066
  %6083 = fadd fast float %6061, %6079
  %6084 = fadd fast float %6062, %6079
  %6085 = fadd fast float %6063, %6079
  %6086 = fmul fast float %6083, %5879
  %6087 = fmul fast float %6084, %5880
  %6088 = fmul fast float %6085, %5881
  %6089 = fmul fast float %5896, %5879
  %6090 = fmul fast float %6089, %6080
  %6091 = fmul fast float %5896, %5880
  %6092 = fmul fast float %6091, %6081
  %6093 = fmul fast float %5896, %5881
  %6094 = fmul fast float %6093, %6082
  %6095 = fadd fast float %6086, %5817
  %6096 = fmul fast float %6095, %4174
  %6097 = fadd fast float %6087, %5819
  %6098 = fmul fast float %6097, %4174
  %6099 = fadd fast float %6088, %5821
  %6100 = fmul fast float %6099, %4174
  %6101 = fadd fast float %6090, %5791
  %6102 = fmul fast float %6101, %4174
  %6103 = fadd fast float %6092, %5794
  %6104 = fmul fast float %6103, %4174
  %6105 = fadd fast float %6094, %5797
  %6106 = fmul fast float %6105, %4174
  br label %6107

; <label>:6107                                    ; preds = %6053, %5871, %5747
  %6108 = phi float [ %5792, %5747 ], [ %5792, %5871 ], [ %6102, %6053 ]
  %6109 = phi float [ %5795, %5747 ], [ %5795, %5871 ], [ %6104, %6053 ]
  %6110 = phi float [ %5798, %5747 ], [ %5798, %5871 ], [ %6106, %6053 ]
  %6111 = phi float [ %5818, %5747 ], [ %5818, %5871 ], [ %6096, %6053 ]
  %6112 = phi float [ %5820, %5747 ], [ %5820, %5871 ], [ %6098, %6053 ]
  %6113 = phi float [ %5822, %5747 ], [ %5822, %5871 ], [ %6100, %6053 ]
  %6114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.i32 %6114, 0
  %6116 = icmp eq i32 %6115, 0
  br i1 %6116, label %6606, label %6117

; <label>:6117                                    ; preds = %6107
  %6118 = fptoui float %83 to i32
  %6119 = fptoui float %84 to i32
  %6120 = lshr i32 %6118, 4
  %6121 = lshr i32 %6119, 4
  %6122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.i32 %6122, 0
  %6124 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6121, i32 %6123, i32 %6120)  ; UMad(a,b,c)
  %6125 = add nsw i32 %6115, -1
  %6126 = call i32 @dx.op.binary.i32(i32 37, i32 %6125, i32 0)  ; IMax(a,b)
  %6127 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %6128 = fptoui float %6127 to i32
  %6129 = lshr i32 %6128, 5
  %6130 = call i32 @dx.op.binary.i32(i32 40, i32 %6129, i32 8191)  ; UMin(a,b)
  %6131 = shl i32 %6130, 2
  %6132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6131, i32 undef)  ; BufferLoad(srv,index,wot)
  %6133 = extractvalue %dx.types.ResRet.i32 %6132, 0
  %6134 = lshr i32 %6133, 16
  %6135 = and i32 %6133, 65535
  %6136 = lshr i32 %6133, 21
  %6137 = lshr i32 %6135, 5
  %6138 = call i32 @dx.op.binary.i32(i32 40, i32 %6137, i32 %6126)  ; UMin(a,b)
  %6139 = icmp ugt i32 %6136, %6138
  br i1 %6139, label %6606, label %6140

; <label>:6140                                    ; preds = %6117
  br label %6141

; <label>:6141                                    ; preds = %6596, %6140
  %6142 = phi i32 [ %6603, %6596 ], [ %6136, %6140 ]
  %6143 = phi float [ %6597, %6596 ], [ %6108, %6140 ]
  %6144 = phi float [ %6598, %6596 ], [ %6109, %6140 ]
  %6145 = phi float [ %6599, %6596 ], [ %6110, %6140 ]
  %6146 = phi float [ %6600, %6596 ], [ %6111, %6140 ]
  %6147 = phi float [ %6601, %6596 ], [ %6112, %6140 ]
  %6148 = phi float [ %6602, %6596 ], [ %6113, %6140 ]
  %6149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.i32 %6149, 0
  %6151 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6124, i32 %6150, i32 %6142)  ; UMad(a,b,c)
  %6152 = shl i32 %6151, 2
  %6153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6152, i32 undef)  ; BufferLoad(srv,index,wot)
  %6154 = extractvalue %dx.types.ResRet.i32 %6153, 0
  %6155 = shl i32 %6142, 5
  %6156 = sub nsw i32 %6134, %6155
  %6157 = call i32 @dx.op.binary.i32(i32 37, i32 %6156, i32 0)  ; IMax(a,b)
  %6158 = call i32 @dx.op.binary.i32(i32 38, i32 %6157, i32 31)  ; IMin(a,b)
  %6159 = sub nsw i32 1, %6134
  %6160 = add nsw i32 %6159, %6135
  %6161 = call i32 @dx.op.binary.i32(i32 37, i32 %6160, i32 0)  ; IMax(a,b)
  %6162 = call i32 @dx.op.binary.i32(i32 38, i32 %6161, i32 32)  ; IMin(a,b)
  %6163 = and i32 %6162, 31
  %6164 = shl i32 -1, %6163
  %6165 = xor i32 %6164, -1
  %6166 = and i32 %6158, 31
  %6167 = shl i32 %6165, %6166
  %6168 = icmp eq i32 %6162, 32
  %6169 = select i1 %6168, i32 -1, i32 %6167
  %6170 = and i32 %6169, %6154
  %6171 = icmp eq i32 %6170, 0
  br i1 %6171, label %6596, label %6172

; <label>:6172                                    ; preds = %6141
  br label %6173

; <label>:6173                                    ; preds = %6253, %6172
  %6174 = phi i32 [ %6185, %6253 ], [ %6170, %6172 ]
  %6175 = phi float [ %6254, %6253 ], [ %6143, %6172 ]
  %6176 = phi float [ %6255, %6253 ], [ %6144, %6172 ]
  %6177 = phi float [ %6256, %6253 ], [ %6145, %6172 ]
  %6178 = phi float [ %6257, %6253 ], [ %6146, %6172 ]
  %6179 = phi float [ %6258, %6253 ], [ %6147, %6172 ]
  %6180 = phi float [ %6259, %6253 ], [ %6148, %6172 ]
  %6181 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6174)  ; FirstbitLo(value)
  %6182 = add i32 %6181, %6155
  %6183 = and i32 %6181, 31
  %6184 = shl i32 1, %6183
  %6185 = xor i32 %6184, %6174
  %6186 = mul i32 %6182, 112
  %6187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6186, i32 undef)  ; BufferLoad(srv,index,wot)
  %6188 = extractvalue %dx.types.ResRet.f32 %6187, 0
  %6189 = extractvalue %dx.types.ResRet.f32 %6187, 1
  %6190 = extractvalue %dx.types.ResRet.f32 %6187, 2
  %6191 = or i32 %6186, 12
  %6192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6191, i32 undef)  ; BufferLoad(srv,index,wot)
  %6193 = extractvalue %dx.types.ResRet.f32 %6192, 0
  %6194 = add i32 %6186, 44
  %6195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6194, i32 undef)  ; BufferLoad(srv,index,wot)
  %6196 = extractvalue %dx.types.ResRet.f32 %6195, 0
  %6197 = add i32 %6186, 48
  %6198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6197, i32 undef)  ; BufferLoad(srv,index,wot)
  %6199 = extractvalue %dx.types.ResRet.f32 %6198, 0
  %6200 = extractvalue %dx.types.ResRet.f32 %6198, 1
  %6201 = extractvalue %dx.types.ResRet.f32 %6198, 2
  %6202 = add i32 %6186, 80
  %6203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6202, i32 undef)  ; BufferLoad(srv,index,wot)
  %6204 = extractvalue %dx.types.ResRet.f32 %6203, 1
  %6205 = extractvalue %dx.types.ResRet.f32 %6203, 2
  %6206 = call float @dx.op.dot3.f32(i32 55, float %6188, float %6189, float %6190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6207 = select i1 %205, float %6204, float %6188
  %6208 = select i1 %205, float %6206, float %6189
  %6209 = select i1 %205, float %6205, float %6190
  %6210 = fsub fast float %6199, %166
  %6211 = fsub fast float %6200, %167
  %6212 = fsub fast float %6201, %168
  %6213 = call float @dx.op.dot3.f32(i32 55, float %6210, float %6211, float %6212, float %6210, float %6211, float %6212)  ; Dot3(ax,ay,az,bx,by,bz)
  %6214 = call float @dx.op.unary.f32(i32 24, float %6213)  ; Sqrt(value)
  %6215 = fdiv fast float 1.000000e+00, %6214
  %6216 = fmul fast float %6215, %6210
  %6217 = fmul fast float %6215, %6211
  %6218 = fmul fast float %6215, %6212
  %6219 = fadd fast float %6214, %6193
  %6220 = fdiv fast float 1.000000e+00, %6219
  %6221 = fmul float %6196, %6220
  %6222 = fmul float %6221, %6221
  %6223 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6224 = and i32 %6184, %6170
  %6225 = icmp eq i32 %6224, 0
  br i1 %6225, label %6248, label %6226, !dx.controlflow.hints !77

; <label>:6226                                    ; preds = %6173
  %6227 = lshr i32 %6118, 5
  %6228 = lshr i32 %6119, 5
  %6229 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %6227, i32 %6228, i32 %6182, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6230 = extractvalue %dx.types.ResRet.i32 %6229, 0
  %6231 = and i32 %6230, 3
  %6232 = icmp eq i32 %6231, 0
  %6233 = select i1 %6232, float 1.000000e+00, float 0.000000e+00
  %6234 = icmp eq i32 %6231, 3
  br i1 %6234, label %6235, label %6248

; <label>:6235                                    ; preds = %6226
  %6236 = lshr i32 %6230, 10
  %6237 = and i32 %6236, 8160
  %6238 = and i32 %6119, 31
  %6239 = or i32 %6237, %6238
  %6240 = lshr i32 %6230, 1
  %6241 = and i32 %6240, 16352
  %6242 = and i32 %6118, 31
  %6243 = or i32 %6241, %6242
  %6244 = lshr i32 %6230, 23
  %6245 = and i32 %6244, 255
  %6246 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %6243, i32 %6239, i32 %6245, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6247 = extractvalue %dx.types.ResRet.f32 %6246, 0
  br label %6248

; <label>:6248                                    ; preds = %6235, %6226, %6173
  %6249 = phi float [ %6247, %6235 ], [ %6233, %6226 ], [ 0.000000e+00, %6173 ]
  %6250 = call float @dx.op.binary.f32(i32 36, float %6249, float %6249)  ; FMin(a,b)
  %6251 = call float @dx.op.binary.f32(i32 36, float %6249, float %6250)  ; FMin(a,b)
  %6252 = fcmp fast ogt float %6251, 0.000000e+00
  br i1 %6252, label %6261, label %6253, !dx.controlflow.hints !78

; <label>:6253                                    ; preds = %6544, %6248
  %6254 = phi float [ %6175, %6248 ], [ %6592, %6544 ]
  %6255 = phi float [ %6176, %6248 ], [ %6593, %6544 ]
  %6256 = phi float [ %6177, %6248 ], [ %6594, %6544 ]
  %6257 = phi float [ %6178, %6248 ], [ %6583, %6544 ]
  %6258 = phi float [ %6179, %6248 ], [ %6584, %6544 ]
  %6259 = phi float [ %6180, %6248 ], [ %6585, %6544 ]
  %6260 = icmp eq i32 %6174, %6184
  br i1 %6260, label %6595, label %6173

; <label>:6261                                    ; preds = %6248
  %6262 = fmul fast float %6249, %6207
  %6263 = fmul fast float %6249, %6208
  %6264 = fmul fast float %6249, %6209
  %6265 = fsub fast float %6201, %4644
  %6266 = fcmp fast ogt float %6265, 0.000000e+00
  %6267 = fsub fast float %168, %4644
  %6268 = fcmp fast ogt float %6267, 0.000000e+00
  %6269 = xor i1 %6268, %6266
  %6270 = fsub fast float %4644, %6201
  %6271 = fmul fast float %6270, 2.000000e+00
  %6272 = fadd fast float %6271, %6201
  %6273 = select i1 %6269, float %6201, float %6272
  %6274 = fsub fast float %6273, %168
  %6275 = call float @dx.op.dot3.f32(i32 55, float %6210, float %6211, float %6274, float %6210, float %6211, float %6274)  ; Dot3(ax,ay,az,bx,by,bz)
  %6276 = call float @dx.op.unary.f32(i32 25, float %6275)  ; Rsqrt(value)
  %6277 = fmul fast float %6276, %6210
  %6278 = fmul fast float %6276, %6211
  %6279 = fmul fast float %6276, %6274
  %6280 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4652)  ; Dot3(ax,ay,az,bx,by,bz)
  %6281 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6277, float %6278, float %6279)  ; Dot3(ax,ay,az,bx,by,bz)
  %6282 = fdiv fast float 1.000000e+00, %6281
  %6283 = fmul fast float %6282, %6280
  %6284 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6267, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6285 = fcmp fast ogt float %6284, 0.000000e+00
  %6286 = fcmp fast olt float %6284, 0.000000e+00
  %6287 = zext i1 %6285 to i32
  %6288 = zext i1 %6286 to i32
  %6289 = sub nsw i32 %6287, %6288
  %6290 = sitofp i32 %6289 to float
  %6291 = fsub fast float %6273, %4644
  %6292 = call float @dx.op.dot3.f32(i32 55, float %6210, float %6211, float %6291, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6293 = fcmp fast ogt float %6292, 0.000000e+00
  %6294 = fcmp fast olt float %6292, 0.000000e+00
  %6295 = zext i1 %6293 to i32
  %6296 = zext i1 %6294 to i32
  %6297 = sub nsw i32 %6295, %6296
  %6298 = sitofp i32 %6297 to float
  %6299 = fcmp fast une float %6290, %6298
  br i1 %6299, label %6300, label %6310

; <label>:6300                                    ; preds = %6261
  %6301 = fmul fast float %6283, %6279
  %6302 = fmul fast float %6283, %6278
  %6303 = fmul fast float %6283, %6277
  %6304 = fmul fast float %6303, %6303
  %6305 = fmul fast float %6302, %6302
  %6306 = fadd fast float %6304, %6305
  %6307 = fmul fast float %6301, %6301
  %6308 = fadd fast float %6306, %6307
  %6309 = call float @dx.op.unary.f32(i32 24, float %6308)  ; Sqrt(value)
  br label %6322

; <label>:6310                                    ; preds = %6261
  %6311 = icmp slt i32 %6289, 0
  br i1 %6311, label %6312, label %6322

; <label>:6312                                    ; preds = %6310
  %6313 = fsub fast float %166, %6199
  %6314 = fsub fast float %167, %6200
  %6315 = fsub fast float %168, %6273
  %6316 = fmul fast float %6313, %6313
  %6317 = fmul fast float %6314, %6314
  %6318 = fadd fast float %6316, %6317
  %6319 = fmul fast float %6315, %6315
  %6320 = fadd fast float %6318, %6319
  %6321 = call float @dx.op.unary.f32(i32 24, float %6320)  ; Sqrt(value)
  br label %6322

; <label>:6322                                    ; preds = %6312, %6310, %6300
  %6323 = phi float [ %6309, %6300 ], [ %6321, %6312 ], [ 0.000000e+00, %6310 ]
  %6324 = and i1 %6268, %6266
  %6325 = fsub fast float -0.000000e+00, %6323
  %6326 = select i1 %6324, float -0.000000e+00, float %6325
  %6327 = fmul fast float %4645, 0x3FF7154760000000
  %6328 = fmul fast float %6327, %6326
  %6329 = fmul fast float %4646, 0x3FF7154760000000
  %6330 = fmul fast float %6329, %6326
  %6331 = fmul fast float %4647, 0x3FF7154760000000
  %6332 = fmul fast float %6331, %6326
  %6333 = call float @dx.op.unary.f32(i32 21, float %6328)  ; Exp(value)
  %6334 = call float @dx.op.unary.f32(i32 21, float %6330)  ; Exp(value)
  %6335 = call float @dx.op.unary.f32(i32 21, float %6332)  ; Exp(value)
  %6336 = call float @dx.op.unary.f32(i32 7, float %6333)  ; Saturate(value)
  %6337 = call float @dx.op.unary.f32(i32 7, float %6334)  ; Saturate(value)
  %6338 = call float @dx.op.unary.f32(i32 7, float %6335)  ; Saturate(value)
  %6339 = fmul fast float %6262, %6336
  %6340 = fmul fast float %6263, %6337
  %6341 = fmul fast float %6264, %6338
  %6342 = fsub fast float %6216, %5436
  %6343 = fsub fast float %6217, %5435
  %6344 = fsub fast float %6218, %5434
  %6345 = call float @dx.op.dot3.f32(i32 55, float %6342, float %6343, float %6344, float %6342, float %6343, float %6344)  ; Dot3(ax,ay,az,bx,by,bz)
  %6346 = call float @dx.op.unary.f32(i32 25, float %6345)  ; Rsqrt(value)
  %6347 = fmul fast float %6346, %6342
  %6348 = fmul fast float %6346, %6343
  %6349 = fmul fast float %6346, %6344
  %6350 = call float @dx.op.dot3.f32(i32 55, float %6216, float %6217, float %6218, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %6351 = call float @dx.op.dot3.f32(i32 55, float %5433, float %5432, float %5431, float %6347, float %6348, float %6349)  ; Dot3(ax,ay,az,bx,by,bz)
  %6352 = call float @dx.op.unary.f32(i32 7, float %6350)  ; Saturate(value)
  %6353 = fmul fast float %6352, %6223
  %6354 = fmul fast float %6352, %6352
  %6355 = fmul fast float %6354, %5463
  %6356 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6357 = fmul fast float %6353, %6356
  %6358 = bitcast float %6213 to i32
  %6359 = ashr i32 %6358, 1
  %6360 = sub nsw i32 1597463007, %6359
  %6361 = bitcast i32 %6360 to float
  %6362 = fmul fast float %6361, %6210
  %6363 = fmul fast float %6361, %6211
  %6364 = fmul fast float %6361, %6212
  %6365 = fsub fast float %6362, %5436
  %6366 = fsub fast float %6363, %5435
  %6367 = fsub fast float %6364, %5434
  %6368 = call float @dx.op.dot3.f32(i32 55, float %6365, float %6366, float %6367, float %6365, float %6366, float %6367)  ; Dot3(ax,ay,az,bx,by,bz)
  %6369 = call float @dx.op.unary.f32(i32 25, float %6368)  ; Rsqrt(value)
  %6370 = fmul fast float %6365, %6369
  %6371 = fmul fast float %6366, %6369
  %6372 = fmul fast float %6367, %6369
  %6373 = call float @dx.op.dot3.f32(i32 55, float %5443, float %5444, float %5445, float %6370, float %6371, float %6372)  ; Dot3(ax,ay,az,bx,by,bz)
  %6374 = fmul fast float %6373, %6373
  %6375 = call float @dx.op.unary.f32(i32 6, float %6350)  ; FAbs(value)
  %6376 = fsub fast float 1.000000e+00, %5446
  %6377 = call float @dx.op.binary.f32(i32 35, float %6376, float 0x3F847AE140000000)  ; FMax(a,b)
  %6378 = fmul fast float %6377, %6377
  %6379 = fmul fast float %6378, %6378
  %6380 = fsub fast float 1.000000e+00, %6379
  %6381 = fmul fast float %5450, %5450
  %6382 = fmul fast float %6381, %6380
  %6383 = fadd fast float %6382, %6379
  %6384 = bitcast float %6383 to i32
  %6385 = ashr i32 %6384, 1
  %6386 = add nsw i32 %6385, 532487669
  %6387 = bitcast i32 %6386 to float
  %6388 = fadd fast float %6387, %5450
  %6389 = fmul fast float %6379, %6374
  %6390 = fsub fast float 1.000000e+00, %6374
  %6391 = fadd fast float %6390, %6389
  %6392 = fmul fast float %6375, %6375
  %6393 = fmul fast float %6392, %6380
  %6394 = fadd fast float %6393, %6379
  %6395 = bitcast float %6394 to i32
  %6396 = ashr i32 %6395, 1
  %6397 = add nsw i32 %6396, 532487669
  %6398 = bitcast i32 %6397 to float
  %6399 = fadd fast float %6398, %6375
  %6400 = fmul fast float %6391, %6391
  %6401 = fmul fast float %6400, %6388
  %6402 = fmul fast float %6401, %6399
  %6403 = fdiv fast float 1.000000e+00, %6402
  %6404 = bitcast float %6379 to i32
  %6405 = sitofp i32 %6404 to float
  %6406 = fmul fast float %6405, 0x3FE7F73180000000
  %6407 = fadd fast float %6406, 0x41AFE27C40000000
  %6408 = fptosi float %6407 to i32
  %6409 = bitcast i32 %6408 to float
  %6410 = fmul fast float %6196, 0x3FD80E9D60000000
  %6411 = fmul fast float %6410, %6361
  %6412 = fadd fast float %6409, %6411
  %6413 = bitcast float %6412 to i32
  %6414 = sub nsw i32 2129859010, %6413
  %6415 = bitcast i32 %6414 to float
  %6416 = fmul fast float %6379, %6403
  %6417 = fmul fast float %6416, %6409
  %6418 = fmul fast float %6417, %6415
  %6419 = call float @dx.op.unary.f32(i32 6, float %6351)  ; FAbs(value)
  %6420 = fsub fast float 1.000000e+00, %6419
  %6421 = bitcast float %6420 to i32
  %6422 = sitofp i32 %6421 to float
  %6423 = fmul fast float %6422, 5.000000e+00
  %6424 = fadd fast float %6423, 0xC1EFBF8940000000
  %6425 = fptosi float %6424 to i32
  %6426 = bitcast i32 %6425 to float
  %6427 = fsub fast float 1.000000e+00, %5437
  %6428 = fsub fast float 1.000000e+00, %5438
  %6429 = fsub fast float 1.000000e+00, %5448
  %6430 = fmul fast float %6426, %6427
  %6431 = fmul fast float %6426, %6428
  %6432 = fmul fast float %6426, %6429
  %6433 = fadd fast float %6430, %5437
  %6434 = fadd fast float %6431, %5438
  %6435 = fadd fast float %6432, %5448
  br i1 %5720, label %6436, label %6459

; <label>:6436                                    ; preds = %6322
  %6437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4177, float %6419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6438 = extractvalue %dx.types.ResRet.f32 %6437, 0
  %6439 = extractvalue %dx.types.ResRet.f32 %6437, 1
  %6440 = extractvalue %dx.types.ResRet.f32 %6437, 2
  %6441 = fadd fast float %6438, -5.000000e-01
  %6442 = fadd fast float %6439, -5.000000e-01
  %6443 = fadd fast float %6440, -5.000000e-01
  %6444 = fmul fast float %5437, 4.000000e+00
  %6445 = fmul fast float %6444, %6427
  %6446 = fmul fast float %6445, %6441
  %6447 = fmul fast float %5438, 4.000000e+00
  %6448 = fmul fast float %6447, %6428
  %6449 = fmul fast float %6448, %6442
  %6450 = fmul fast float %5448, 4.000000e+00
  %6451 = fmul fast float %6450, %6429
  %6452 = fmul fast float %6451, %6443
  %6453 = fadd fast float %6446, %6433
  %6454 = fadd fast float %6449, %6434
  %6455 = fadd fast float %6452, %6435
  %6456 = call float @dx.op.unary.f32(i32 7, float %6453)  ; Saturate(value)
  %6457 = call float @dx.op.unary.f32(i32 7, float %6454)  ; Saturate(value)
  %6458 = call float @dx.op.unary.f32(i32 7, float %6455)  ; Saturate(value)
  br label %6459

; <label>:6459                                    ; preds = %6436, %6322
  %6460 = phi float [ %6456, %6436 ], [ %6433, %6322 ]
  %6461 = phi float [ %6457, %6436 ], [ %6434, %6322 ]
  %6462 = phi float [ %6458, %6436 ], [ %6435, %6322 ]
  %6463 = fmul fast float %6350, 9.843750e-01
  %6464 = fadd fast float %6463, 7.812500e-03
  %6465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6464, float %5710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6466 = extractvalue %dx.types.ResRet.f32 %6465, 2
  %6467 = extractvalue %dx.types.ResRet.f32 %6465, 3
  %6468 = fmul fast float %6466, %5437
  %6469 = fmul fast float %6466, %5438
  %6470 = fmul fast float %6466, %5448
  %6471 = fadd fast float %6468, %6467
  %6472 = fadd fast float %6469, %6467
  %6473 = fadd fast float %6470, %6467
  br i1 %5720, label %6474, label %6497

; <label>:6474                                    ; preds = %6459
  %6475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4177, float %6350, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6476 = extractvalue %dx.types.ResRet.f32 %6475, 0
  %6477 = extractvalue %dx.types.ResRet.f32 %6475, 1
  %6478 = extractvalue %dx.types.ResRet.f32 %6475, 2
  %6479 = fadd fast float %6476, -5.000000e-01
  %6480 = fadd fast float %6477, -5.000000e-01
  %6481 = fadd fast float %6478, -5.000000e-01
  %6482 = fmul fast float %5437, 4.000000e+00
  %6483 = fmul fast float %6482, %6427
  %6484 = fmul fast float %6483, %6479
  %6485 = fmul fast float %5438, 4.000000e+00
  %6486 = fmul fast float %6485, %6428
  %6487 = fmul fast float %6486, %6480
  %6488 = fmul fast float %5448, 4.000000e+00
  %6489 = fmul fast float %6488, %6429
  %6490 = fmul fast float %6489, %6481
  %6491 = fadd fast float %6484, %6471
  %6492 = fadd fast float %6487, %6472
  %6493 = fadd fast float %6490, %6473
  %6494 = call float @dx.op.unary.f32(i32 7, float %6491)  ; Saturate(value)
  %6495 = call float @dx.op.unary.f32(i32 7, float %6492)  ; Saturate(value)
  %6496 = call float @dx.op.unary.f32(i32 7, float %6493)  ; Saturate(value)
  br label %6497

; <label>:6497                                    ; preds = %6474, %6459
  %6498 = phi float [ %6494, %6474 ], [ %6471, %6459 ]
  %6499 = phi float [ %6495, %6474 ], [ %6472, %6459 ]
  %6500 = phi float [ %6496, %6474 ], [ %6473, %6459 ]
  %6501 = call float @dx.op.binary.f32(i32 35, float %6499, float %6500)  ; FMax(a,b)
  %6502 = call float @dx.op.binary.f32(i32 35, float %6498, float %6501)  ; FMax(a,b)
  %6503 = fsub fast float 1.000000e+00, %6502
  %6504 = fsub fast float -0.000000e+00, %5443
  %6505 = fsub fast float -0.000000e+00, %5444
  %6506 = fsub fast float -0.000000e+00, %5445
  %6507 = call float @dx.op.dot3.f32(i32 55, float %6216, float %6217, float %6218, float %6504, float %6505, float %6506)  ; Dot3(ax,ay,az,bx,by,bz)
  %6508 = call float @dx.op.unary.f32(i32 7, float %6507)  ; Saturate(value)
  %6509 = fmul fast float %6508, %6223
  %6510 = fmul fast float %6508, 9.843750e-01
  %6511 = fadd fast float %6510, 7.812500e-03
  %6512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6511, float %5710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6513 = extractvalue %dx.types.ResRet.f32 %6512, 2
  %6514 = extractvalue %dx.types.ResRet.f32 %6512, 3
  %6515 = fmul fast float %6513, %5437
  %6516 = fmul fast float %6513, %5438
  %6517 = fmul fast float %6513, %5448
  %6518 = fadd fast float %6515, %6514
  %6519 = fadd fast float %6516, %6514
  %6520 = fadd fast float %6517, %6514
  br i1 %5720, label %6521, label %6544

; <label>:6521                                    ; preds = %6497
  %6522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4177, float %6508, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6523 = extractvalue %dx.types.ResRet.f32 %6522, 0
  %6524 = extractvalue %dx.types.ResRet.f32 %6522, 1
  %6525 = extractvalue %dx.types.ResRet.f32 %6522, 2
  %6526 = fadd fast float %6523, -5.000000e-01
  %6527 = fadd fast float %6524, -5.000000e-01
  %6528 = fadd fast float %6525, -5.000000e-01
  %6529 = fmul fast float %5437, 4.000000e+00
  %6530 = fmul fast float %6529, %6427
  %6531 = fmul fast float %6530, %6526
  %6532 = fmul fast float %5438, 4.000000e+00
  %6533 = fmul fast float %6532, %6428
  %6534 = fmul fast float %6533, %6527
  %6535 = fmul fast float %5448, 4.000000e+00
  %6536 = fmul fast float %6535, %6429
  %6537 = fmul fast float %6536, %6528
  %6538 = fadd fast float %6531, %6518
  %6539 = fadd fast float %6534, %6519
  %6540 = fadd fast float %6537, %6520
  %6541 = call float @dx.op.unary.f32(i32 7, float %6538)  ; Saturate(value)
  %6542 = call float @dx.op.unary.f32(i32 7, float %6539)  ; Saturate(value)
  %6543 = call float @dx.op.unary.f32(i32 7, float %6540)  ; Saturate(value)
  br label %6544

; <label>:6544                                    ; preds = %6521, %6497
  %6545 = phi float [ %6541, %6521 ], [ %6518, %6497 ]
  %6546 = phi float [ %6542, %6521 ], [ %6519, %6497 ]
  %6547 = phi float [ %6543, %6521 ], [ %6520, %6497 ]
  %6548 = call float @dx.op.binary.f32(i32 35, float %6546, float %6547)  ; FMax(a,b)
  %6549 = call float @dx.op.binary.f32(i32 35, float %6545, float %6548)  ; FMax(a,b)
  %6550 = fsub fast float 1.000000e+00, %6549
  %6551 = fmul fast float %6509, %6550
  %6552 = fmul fast float %6551, %4267
  %6553 = fmul fast float %6551, %4268
  %6554 = fmul fast float %6551, %4269
  %6555 = fmul fast float %6460, %6418
  %6556 = fmul fast float %6461, %6418
  %6557 = fmul fast float %6462, %6418
  %6558 = fsub fast float 1.000000e+00, %6351
  %6559 = bitcast float %6558 to i32
  %6560 = sitofp i32 %6559 to float
  %6561 = fmul fast float %6560, 5.000000e+00
  %6562 = fadd fast float %6561, 0xC1EFBF8940000000
  %6563 = fptosi float %6562 to i32
  %6564 = bitcast i32 %6563 to float
  %6565 = fmul fast float %6564, %4178
  %6566 = fmul fast float %6503, %6565
  %6567 = fmul fast float %6566, %5767
  %6568 = fmul fast float %6566, %5768
  %6569 = fmul fast float %6566, %5769
  %6570 = fmul fast float %6503, %6357
  %6571 = fadd fast float %6567, %6555
  %6572 = fadd fast float %6568, %6556
  %6573 = fadd fast float %6569, %6557
  %6574 = fadd fast float %6552, %6570
  %6575 = fadd fast float %6553, %6570
  %6576 = fadd fast float %6554, %6570
  %6577 = fmul fast float %6339, %4174
  %6578 = fmul fast float %6577, %6574
  %6579 = fmul fast float %6340, %4174
  %6580 = fmul fast float %6579, %6575
  %6581 = fmul fast float %6341, %4174
  %6582 = fmul fast float %6581, %6576
  %6583 = fadd fast float %6578, %6178
  %6584 = fadd fast float %6580, %6179
  %6585 = fadd fast float %6582, %6180
  %6586 = fmul fast float %6577, %6357
  %6587 = fmul fast float %6586, %6571
  %6588 = fmul fast float %6579, %6357
  %6589 = fmul fast float %6588, %6572
  %6590 = fmul fast float %6581, %6357
  %6591 = fmul fast float %6590, %6573
  %6592 = fadd fast float %6587, %6175
  %6593 = fadd fast float %6589, %6176
  %6594 = fadd fast float %6591, %6177
  br label %6253

; <label>:6595                                    ; preds = %6253
  br label %6596

; <label>:6596                                    ; preds = %6595, %6141
  %6597 = phi float [ %6143, %6141 ], [ %6254, %6595 ]
  %6598 = phi float [ %6144, %6141 ], [ %6255, %6595 ]
  %6599 = phi float [ %6145, %6141 ], [ %6256, %6595 ]
  %6600 = phi float [ %6146, %6141 ], [ %6257, %6595 ]
  %6601 = phi float [ %6147, %6141 ], [ %6258, %6595 ]
  %6602 = phi float [ %6148, %6141 ], [ %6259, %6595 ]
  %6603 = add i32 %6142, 1
  %6604 = icmp ugt i32 %6603, %6138
  br i1 %6604, label %6605, label %6141

; <label>:6605                                    ; preds = %6596
  br label %6606

; <label>:6606                                    ; preds = %6605, %6117, %6107
  %6607 = phi float [ %6108, %6107 ], [ %6108, %6117 ], [ %6597, %6605 ]
  %6608 = phi float [ %6109, %6107 ], [ %6109, %6117 ], [ %6598, %6605 ]
  %6609 = phi float [ %6110, %6107 ], [ %6110, %6117 ], [ %6599, %6605 ]
  %6610 = phi float [ %6111, %6107 ], [ %6111, %6117 ], [ %6600, %6605 ]
  %6611 = phi float [ %6112, %6107 ], [ %6112, %6117 ], [ %6601, %6605 ]
  %6612 = phi float [ %6113, %6107 ], [ %6113, %6117 ], [ %6602, %6605 ]
  %6613 = call float @dx.op.unary.f32(i32 24, float %5440)  ; Sqrt(value)
  %6614 = call float @dx.op.unary.f32(i32 24, float %5441)  ; Sqrt(value)
  %6615 = call float @dx.op.unary.f32(i32 24, float %5442)  ; Sqrt(value)
  %6616 = fmul fast float %6613, %6610
  %6617 = fmul fast float %6614, %6611
  %6618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6619 = extractvalue %dx.types.CBufRet.f32 %6618, 0
  br i1 %205, label %6620, label %6640

; <label>:6620                                    ; preds = %6606
  %6621 = fadd fast float %6612, %4180
  %6622 = fmul fast float %6621, %4181
  %6623 = fsub fast float 1.000000e+00, %4181
  %6624 = call float @dx.op.unary.f32(i32 7, float %6623)  ; Saturate(value)
  %6625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6625, 3
  %6627 = fmul fast float %6626, %6624
  %6628 = fadd fast float %6627, %6622
  %6629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6630 = extractvalue %dx.types.CBufRet.f32 %6629, 0
  %6631 = fmul fast float %6630, %5773
  %6632 = fsub fast float %6628, %6631
  %6633 = fadd fast float %6617, %6616
  %6634 = fmul fast float %6619, %6633
  %6635 = extractvalue %dx.types.CBufRet.f32 %6625, 1
  %6636 = fsub fast float %6632, %6635
  %6637 = extractvalue %dx.types.CBufRet.f32 %6625, 2
  %6638 = fmul fast float %6636, %6637
  %6639 = call float @dx.op.unary.f32(i32 7, float %6638)  ; Saturate(value)
  br label %6656

; <label>:6640                                    ; preds = %6606
  %6641 = fmul fast float %6615, %6612
  %6642 = fmul fast float %6619, %6616
  %6643 = fmul fast float %6619, %6617
  %6644 = fmul fast float %6641, %6619
  %6645 = add i32 %34, 356
  %6646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6645, i32 undef)  ; BufferLoad(srv,index,wot)
  %6647 = extractvalue %dx.types.ResRet.i32 %6646, 0
  %6648 = and i32 %6647, 32
  %6649 = icmp eq i32 %6648, 0
  br i1 %6649, label %6656, label %6650

; <label>:6650                                    ; preds = %6640
  %6651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6652 = extractvalue %dx.types.CBufRet.f32 %6651, 0
  %6653 = fmul fast float %6652, 0x3FE99999A0000000
  %6654 = fadd fast float %6652, %6642
  %6655 = fadd fast float %6653, %6644
  br label %6656

; <label>:6656                                    ; preds = %6650, %6640, %6620
  %6657 = phi float [ %6634, %6620 ], [ %6654, %6650 ], [ %6642, %6640 ]
  %6658 = phi float [ %6639, %6620 ], [ %6643, %6650 ], [ %6643, %6640 ]
  %6659 = phi float [ 1.000000e+00, %6620 ], [ %6655, %6650 ], [ %6644, %6640 ]
  %6660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6661 = extractvalue %dx.types.CBufRet.f32 %6660, 0
  %6662 = fmul fast float %6661, %6608
  %6663 = fmul fast float %6661, %6609
  %6664 = fadd fast float %6608, %6607
  %6665 = select i1 %205, float %6664, float %6607
  %6666 = fmul float %6665, %6661
  %6667 = select i1 %205, float 0.000000e+00, float %6662
  %6668 = select i1 %205, float 0.000000e+00, float %6663
  %6669 = fmul fast float %6657, %6613
  %6670 = fmul fast float %6658, %6614
  %6671 = fmul fast float %6659, %6615
  %6672 = fadd fast float %6666, %6669
  %6673 = fadd fast float %6667, %6670
  %6674 = fadd fast float %6668, %6671
  %6675 = select i1 %205, float %6658, float %6673
  %6676 = select i1 %205, float %6659, float %6674
  %6677 = call float @dx.op.binary.f32(i32 36, float %6672, float 3.225500e+04)  ; FMin(a,b)
  %6678 = call float @dx.op.binary.f32(i32 36, float %6675, float 3.225500e+04)  ; FMin(a,b)
  %6679 = call float @dx.op.binary.f32(i32 36, float %6676, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6677)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6678)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6679)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

