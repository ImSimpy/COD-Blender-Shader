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
; shader hash: c46fd27b9f900720cf025daca6040bc1
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
  %910 = add i32 %34, 456
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
  br i1 %389, label %1720, label %955

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
  br i1 %964, label %1720, label %965

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
  br i1 %1138, label %1720, label %1139

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
  %1490 = and i32 %1489, 26624
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %1515, label %1492

; <label>:1492                                    ; preds = %1484
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = and i32 %1494, 16384
  %1496 = icmp eq i32 %1495, 0
  br i1 %1496, label %1515, label %1497

; <label>:1497                                    ; preds = %1492
  %1498 = and i32 %1494, 1048576
  %1499 = icmp ne i32 %1498, 0
  %1500 = add i32 %34, 460
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = add i32 %1502, 0
  %1504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1503, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1505 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1504, %dx.types.Handle %80, float %1064, float %1065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1506 = extractvalue %dx.types.ResRet.f32 %1505, 0
  %1507 = add i32 %34, 112
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = lshr i32 %1509, 24
  %1511 = uitofp i32 %1510 to float
  %1512 = fmul fast float %1506, 0x3F70101020000000
  %1513 = select i1 %1499, float 0x3F70101020000000, float %1512
  %1514 = fmul fast float %1513, %1511
  br label %1515

; <label>:1515                                    ; preds = %1497, %1492, %1484
  %1516 = phi float [ %1514, %1497 ], [ 0.000000e+00, %1492 ], [ 0.000000e+00, %1484 ]
  %1517 = add i32 %34, 112
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = lshr i32 %1519, 8
  %1523 = and i32 %1522, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = call float @dx.op.dot3.f32(i32 55, float %1357, float %1358, float %1359, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1526 = fmul fast float %1524, %1525
  %1527 = fadd fast float %1526, %1521
  %1528 = fmul fast float %1527, 0x3F70101020000000
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  br i1 %956, label %1530, label %1538

; <label>:1530                                    ; preds = %1515
  %1531 = fsub fast float 1.000000e+00, %1137
  %1532 = fmul fast float %1531, %943
  %1533 = fmul fast float %1531, %944
  %1534 = fmul fast float %1531, %945
  %1535 = fmul fast float %1531, %946
  %1536 = fmul fast float %1531, %947
  %1537 = fmul fast float %1531, %948
  br label %1538

; <label>:1538                                    ; preds = %1530, %1515
  %1539 = phi float [ %1532, %1530 ], [ %943, %1515 ]
  %1540 = phi float [ %1533, %1530 ], [ %944, %1515 ]
  %1541 = phi float [ %1534, %1530 ], [ %945, %1515 ]
  %1542 = phi float [ %1535, %1530 ], [ %946, %1515 ]
  %1543 = phi float [ %1536, %1530 ], [ %947, %1515 ]
  %1544 = phi float [ %1537, %1530 ], [ %948, %1515 ]
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 3
  %1548 = icmp eq i32 %1547, 3
  br i1 %1548, label %1627, label %1549

; <label>:1549                                    ; preds = %1538
  %1550 = and i32 %1546, 16
  %1551 = icmp ne i32 %1550, 0
  %1552 = select i1 %1551, float %1137, float 0.000000e+00
  %1553 = icmp eq i32 %1547, 0
  br i1 %1553, label %1554, label %1582

; <label>:1554                                    ; preds = %1549
  %1555 = and i32 %1546, 64
  %1556 = icmp ne i32 %1555, 0
  %1557 = select i1 %1556, float %1137, float 0.000000e+00
  %1558 = fsub fast float %1357, %1539
  %1559 = fsub fast float %1358, %1540
  %1560 = fsub fast float %1359, %1541
  %1561 = fmul fast float %1552, %1558
  %1562 = fmul fast float %1552, %1559
  %1563 = fmul fast float %1552, %1560
  %1564 = fadd fast float %1561, %1539
  %1565 = fadd fast float %1562, %1540
  %1566 = fadd fast float %1563, %1541
  %1567 = fsub fast float %1343, %949
  %1568 = fmul fast float %1552, %1567
  %1569 = fadd fast float %1568, %949
  %1570 = fsub fast float %1485, %1542
  %1571 = fsub fast float %1486, %1543
  %1572 = fsub fast float %1487, %1544
  %1573 = fmul fast float %1557, %1570
  %1574 = fmul fast float %1557, %1571
  %1575 = fmul fast float %1557, %1572
  %1576 = fadd fast float %1573, %1542
  %1577 = fadd fast float %1574, %1543
  %1578 = fadd fast float %1575, %1544
  %1579 = fsub fast float %1529, %954
  %1580 = fmul fast float %1552, %1579
  %1581 = fadd fast float %1580, %954
  br label %1627

; <label>:1582                                    ; preds = %1549
  %1583 = icmp eq i32 %1547, 1
  br i1 %1583, label %1584, label %1597

; <label>:1584                                    ; preds = %1582
  %1585 = fadd fast float %1357, -1.000000e+00
  %1586 = fadd fast float %1358, -1.000000e+00
  %1587 = fadd fast float %1359, -1.000000e+00
  %1588 = fmul fast float %1552, %1585
  %1589 = fmul fast float %1552, %1586
  %1590 = fmul fast float %1552, %1587
  %1591 = fadd fast float %1588, 1.000000e+00
  %1592 = fadd fast float %1589, 1.000000e+00
  %1593 = fadd fast float %1590, 1.000000e+00
  %1594 = fmul fast float %1591, %1539
  %1595 = fmul fast float %1592, %1540
  %1596 = fmul fast float %1593, %1541
  br label %1627

; <label>:1597                                    ; preds = %1582
  %1598 = icmp eq i32 %1547, 2
  br i1 %1598, label %1599, label %1627

; <label>:1599                                    ; preds = %1597
  %1600 = call float @dx.op.unary.f32(i32 24, float %1357)  ; Sqrt(value)
  %1601 = call float @dx.op.unary.f32(i32 24, float %1358)  ; Sqrt(value)
  %1602 = call float @dx.op.unary.f32(i32 24, float %1359)  ; Sqrt(value)
  %1603 = fadd fast float %1600, -5.000000e-01
  %1604 = fadd fast float %1601, -5.000000e-01
  %1605 = fadd fast float %1602, -5.000000e-01
  %1606 = fmul fast float %1603, %1552
  %1607 = fmul fast float %1604, %1552
  %1608 = fmul fast float %1605, %1552
  %1609 = fadd fast float %1606, 5.000000e-01
  %1610 = fadd fast float %1607, 5.000000e-01
  %1611 = fadd fast float %1608, 5.000000e-01
  %1612 = fmul fast float %1609, 2.000000e+00
  %1613 = fsub fast float 1.000000e+00, %1612
  %1614 = fmul fast float %1613, %1539
  %1615 = fadd fast float %1614, %1612
  %1616 = fmul fast float %1615, %1539
  %1617 = fmul fast float %1610, 2.000000e+00
  %1618 = fsub fast float 1.000000e+00, %1617
  %1619 = fmul fast float %1618, %1540
  %1620 = fadd fast float %1619, %1617
  %1621 = fmul fast float %1620, %1540
  %1622 = fmul fast float %1611, 2.000000e+00
  %1623 = fsub fast float 1.000000e+00, %1622
  %1624 = fmul fast float %1623, %1541
  %1625 = fadd fast float %1624, %1622
  %1626 = fmul fast float %1625, %1541
  br label %1627

; <label>:1627                                    ; preds = %1599, %1597, %1584, %1554, %1538
  %1628 = phi float [ %1539, %1538 ], [ %1616, %1599 ], [ %1539, %1597 ], [ %1594, %1584 ], [ %1564, %1554 ]
  %1629 = phi float [ %1540, %1538 ], [ %1621, %1599 ], [ %1540, %1597 ], [ %1595, %1584 ], [ %1565, %1554 ]
  %1630 = phi float [ %1541, %1538 ], [ %1626, %1599 ], [ %1541, %1597 ], [ %1596, %1584 ], [ %1566, %1554 ]
  %1631 = phi float [ %1542, %1538 ], [ %1542, %1599 ], [ %1542, %1597 ], [ %1542, %1584 ], [ %1576, %1554 ]
  %1632 = phi float [ %1543, %1538 ], [ %1543, %1599 ], [ %1543, %1597 ], [ %1543, %1584 ], [ %1577, %1554 ]
  %1633 = phi float [ %1544, %1538 ], [ %1544, %1599 ], [ %1544, %1597 ], [ %1544, %1584 ], [ %1578, %1554 ]
  %1634 = phi float [ %949, %1538 ], [ %949, %1599 ], [ %949, %1597 ], [ %949, %1584 ], [ %1569, %1554 ]
  %1635 = phi float [ %954, %1538 ], [ %954, %1599 ], [ %954, %1597 ], [ %954, %1584 ], [ %1581, %1554 ]
  %1636 = and i32 %1546, 12
  %1637 = icmp eq i32 %1636, 12
  br i1 %1637, label %1720, label %1638

; <label>:1638                                    ; preds = %1627
  %1639 = and i32 %1546, 2097184
  %1640 = icmp eq i32 %1639, 2097184
  %1641 = select i1 %1640, float %1137, float 0.000000e+00
  %1642 = and i32 %1546, 4194336
  %1643 = icmp eq i32 %1642, 4194336
  %1644 = select i1 %1643, float %1137, float 0.000000e+00
  %1645 = and i32 %1546, 8388640
  %1646 = icmp eq i32 %1645, 8388640
  %1647 = select i1 %1646, float %1137, float 0.000000e+00
  %1648 = and i32 %1546, 16384
  %1649 = icmp ne i32 %1648, 0
  %1650 = select i1 %1649, float %1137, float 0.000000e+00
  %1651 = icmp eq i32 %1636, 0
  br i1 %1651, label %1652, label %1668

; <label>:1652                                    ; preds = %1638
  %1653 = fsub fast float %1438, %941
  %1654 = fsub fast float %1439, %942
  %1655 = fmul fast float %1641, %1653
  %1656 = fmul fast float %1641, %1654
  %1657 = fadd fast float %1655, %941
  %1658 = fadd fast float %1656, %942
  %1659 = fsub fast float %1440, %952
  %1660 = fmul fast float %1644, %1659
  %1661 = fadd fast float %1660, %952
  %1662 = fsub fast float %1437, %951
  %1663 = fmul fast float %1647, %1662
  %1664 = fadd fast float %1663, %951
  %1665 = fsub fast float %1516, %953
  %1666 = fmul fast float %1650, %1665
  %1667 = fadd fast float %1666, %953
  br label %1720

; <label>:1668                                    ; preds = %1638
  %1669 = icmp eq i32 %1636, 4
  br i1 %1669, label %1670, label %1704

; <label>:1670                                    ; preds = %1668
  %1671 = fmul fast float %1641, %1438
  %1672 = fmul fast float %1641, %1439
  %1673 = fadd fast float %1671, %941
  %1674 = fadd fast float %1672, %942
  %1675 = call float @dx.op.binary.f32(i32 36, float %952, float %1440)  ; FMin(a,b)
  %1676 = fsub fast float %1675, %952
  %1677 = fmul fast float %1676, %1644
  %1678 = fadd fast float %1677, %952
  %1679 = fadd fast float %1437, %951
  %1680 = fmul fast float %1679, 0x3FF337FAE0000000
  %1681 = fmul fast float %951, %951
  %1682 = fmul fast float %1437, %1437
  %1683 = fadd fast float %1682, %1681
  %1684 = fmul fast float %1683, 0x3FE5152B00000000
  %1685 = fmul fast float %951, 0xBFCC1F85E0000000
  %1686 = fmul fast float %1685, %1437
  %1687 = fadd fast float %1686, 0xBFE1363700000000
  %1688 = fadd fast float %1687, %1680
  %1689 = fsub fast float %1688, %1684
  %1690 = fmul fast float %1679, 0x3FBA6F0D00000000
  %1691 = fmul fast float %1683, 0x3FD0432880000000
  %1692 = fmul fast float %951, 0xBFEF110800000000
  %1693 = fmul fast float %1692, %1437
  %1694 = fadd fast float %1693, 1.000000e+00
  %1695 = fsub fast float %1694, %1690
  %1696 = fadd fast float %1695, %1691
  %1697 = fdiv fast float %1689, %1696
  %1698 = call float @dx.op.unary.f32(i32 7, float %1697)  ; Saturate(value)
  %1699 = fsub fast float %1698, %951
  %1700 = fmul fast float %1699, %1647
  %1701 = fadd fast float %1700, %951
  %1702 = fmul fast float %1650, %1516
  %1703 = fadd fast float %1702, %953
  br label %1720

; <label>:1704                                    ; preds = %1668
  %1705 = icmp eq i32 %1636, 8
  br i1 %1705, label %1706, label %1720

; <label>:1706                                    ; preds = %1704
  %1707 = fmul fast float %1641, %1438
  %1708 = fmul fast float %1641, %1439
  %1709 = fadd fast float %1707, %941
  %1710 = fadd fast float %1708, %942
  %1711 = call float @dx.op.binary.f32(i32 36, float %952, float %1440)  ; FMin(a,b)
  %1712 = fsub fast float %1711, %952
  %1713 = fmul fast float %1712, %1644
  %1714 = fadd fast float %1713, %952
  %1715 = fsub fast float %1437, %951
  %1716 = fmul fast float %1647, %1715
  %1717 = fadd fast float %1716, %951
  %1718 = fmul fast float %1650, %1516
  %1719 = fadd fast float %1718, %953
  br label %1720

; <label>:1720                                    ; preds = %1706, %1704, %1670, %1652, %1627, %1136, %955, %940
  %1721 = phi float [ %941, %1627 ], [ %941, %1136 ], [ %941, %940 ], [ %1709, %1706 ], [ %941, %1704 ], [ %1673, %1670 ], [ %1657, %1652 ], [ %941, %955 ]
  %1722 = phi float [ %942, %1627 ], [ %942, %1136 ], [ %942, %940 ], [ %1710, %1706 ], [ %942, %1704 ], [ %1674, %1670 ], [ %1658, %1652 ], [ %942, %955 ]
  %1723 = phi float [ %1628, %1627 ], [ %943, %1136 ], [ %943, %940 ], [ %1628, %1706 ], [ %1628, %1704 ], [ %1628, %1670 ], [ %1628, %1652 ], [ %943, %955 ]
  %1724 = phi float [ %1629, %1627 ], [ %944, %1136 ], [ %944, %940 ], [ %1629, %1706 ], [ %1629, %1704 ], [ %1629, %1670 ], [ %1629, %1652 ], [ %944, %955 ]
  %1725 = phi float [ %1630, %1627 ], [ %945, %1136 ], [ %945, %940 ], [ %1630, %1706 ], [ %1630, %1704 ], [ %1630, %1670 ], [ %1630, %1652 ], [ %945, %955 ]
  %1726 = phi float [ %1631, %1627 ], [ %946, %1136 ], [ %946, %940 ], [ %1631, %1706 ], [ %1631, %1704 ], [ %1631, %1670 ], [ %1631, %1652 ], [ %946, %955 ]
  %1727 = phi float [ %1632, %1627 ], [ %947, %1136 ], [ %947, %940 ], [ %1632, %1706 ], [ %1632, %1704 ], [ %1632, %1670 ], [ %1632, %1652 ], [ %947, %955 ]
  %1728 = phi float [ %1633, %1627 ], [ %948, %1136 ], [ %948, %940 ], [ %1633, %1706 ], [ %1633, %1704 ], [ %1633, %1670 ], [ %1633, %1652 ], [ %948, %955 ]
  %1729 = phi float [ %1634, %1627 ], [ %949, %1136 ], [ %949, %940 ], [ %1634, %1706 ], [ %1634, %1704 ], [ %1634, %1670 ], [ %1634, %1652 ], [ %949, %955 ]
  %1730 = phi float [ %951, %1627 ], [ %951, %1136 ], [ %951, %940 ], [ %1717, %1706 ], [ %951, %1704 ], [ %1701, %1670 ], [ %1664, %1652 ], [ %951, %955 ]
  %1731 = phi float [ %952, %1627 ], [ %952, %1136 ], [ %952, %940 ], [ %1714, %1706 ], [ %952, %1704 ], [ %1678, %1670 ], [ %1661, %1652 ], [ %952, %955 ]
  %1732 = phi float [ %953, %1627 ], [ %953, %1136 ], [ %953, %940 ], [ %1719, %1706 ], [ %953, %1704 ], [ %1703, %1670 ], [ %1667, %1652 ], [ %953, %955 ]
  %1733 = phi float [ %1635, %1627 ], [ %954, %1136 ], [ %954, %940 ], [ %1635, %1706 ], [ %1635, %1704 ], [ %1635, %1670 ], [ %1635, %1652 ], [ %954, %955 ]
  br i1 %391, label %2499, label %1734

; <label>:1734                                    ; preds = %1720
  %1735 = icmp ult i32 %444, 3
  %1736 = add i32 %34, 56
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = add i32 %34, 60
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = or i32 %1741, %1738
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %2499, label %1744

; <label>:1744                                    ; preds = %1734
  %1745 = and i32 %1738, 262144
  %1746 = icmp ne i32 %1745, 0
  %1747 = select i1 %1746, float %39, float 1.000000e+00
  %1748 = select i1 %1746, float %40, float 0.000000e+00
  %1749 = select i1 %1746, float %41, float 0.000000e+00
  %1750 = select i1 %1746, float %42, float 1.000000e+00
  %1751 = select i1 %1746, float %43, float %71
  %1752 = select i1 %1746, float %44, float %72
  %1753 = add i32 %34, 316
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = lshr i32 %1755, 16
  %1757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1756)  ; LegacyF16ToF32(value)
  %1758 = fmul fast float %1757, 0x3F50624DE0000000
  %1759 = add i32 %34, 120
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = lshr i32 %1761, 16
  %1763 = and i32 %1762, 255
  %1764 = lshr i32 %1761, 24
  %1765 = add i32 %34, 324
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = and i32 %1767, 65535
  %1769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1768)  ; LegacyF16ToF32(value)
  %1770 = lshr i32 %1767, 16
  %1771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1770)  ; LegacyF16ToF32(value)
  %1772 = add i32 %34, 64
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = lshr i32 %1774, 22
  %1776 = shl nuw nsw i32 %1775, 5
  %1777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1776)  ; LegacyF16ToF32(value)
  %1778 = shl i32 %1774, 4
  %1779 = and i32 %1778, 32752
  %1780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1779)  ; LegacyF16ToF32(value)
  %1781 = lshr i32 %1774, 7
  %1782 = and i32 %1781, 32752
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 3
  %1786 = fmul fast float %1785, 1.000000e+03
  %1787 = fmul fast float %341, %1786
  %1788 = call float @dx.op.unary.f32(i32 22, float %1787)  ; Frc(value)
  %1789 = fadd fast float %1788, %331
  %1790 = fmul fast float %342, %1786
  %1791 = call float @dx.op.unary.f32(i32 22, float %1790)  ; Frc(value)
  %1792 = fadd fast float %1791, %333
  %1793 = fmul fast float %1758, %1786
  %1794 = call float @dx.op.unary.f32(i32 22, float %1793)  ; Frc(value)
  %1795 = fmul fast float %1794, 0x401921FB60000000
  %1796 = fadd fast float %1795, %1777
  %1797 = call float @dx.op.unary.f32(i32 13, float %1796)  ; Sin(value)
  %1798 = call float @dx.op.unary.f32(i32 12, float %1796)  ; Cos(value)
  %1799 = fsub fast float -0.000000e+00, %1797
  %1800 = fadd fast float %1751, -5.000000e-01
  %1801 = fadd fast float %1752, -5.000000e-01
  %1802 = fmul fast float %1769, %1800
  %1803 = fmul fast float %1771, %1801
  %1804 = fadd fast float %1802, 5.000000e-01
  %1805 = fadd fast float %1803, 5.000000e-01
  %1806 = fmul fast float %1780, %1804
  %1807 = fmul fast float %1783, %1805
  %1808 = fmul fast float %1798, %1806
  %1809 = call float @dx.op.tertiary.f32(i32 46, float %1799, float %1807, float %1808)  ; FMad(a,b,c)
  %1810 = fmul fast float %1797, %1806
  %1811 = call float @dx.op.tertiary.f32(i32 46, float %1798, float %1807, float %1810)  ; FMad(a,b,c)
  %1812 = fadd fast float %1789, %1809
  %1813 = fadd fast float %1792, %1811
  %1814 = icmp ugt i32 %1763, 1
  %1815 = icmp ugt i32 %1761, 33554431
  %1816 = or i1 %1815, %1814
  br i1 %1816, label %1817, label %1842

; <label>:1817                                    ; preds = %1744
  %1818 = add i32 %34, 260
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = lshr i32 %1820, 16
  %1822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1821)  ; LegacyF16ToF32(value)
  %1823 = fmul fast float %1785, %1822
  %1824 = call float @dx.op.unary.f32(i32 22, float %1823)  ; Frc(value)
  %1825 = mul nuw nsw i32 %1763, %1764
  %1826 = uitofp i32 %1825 to float
  %1827 = fmul fast float %1824, %1826
  %1828 = call float @dx.op.unary.f32(i32 27, float %1827)  ; Round_ni(value)
  %1829 = fptoui float %1828 to i32
  %1830 = urem i32 %1829, %1763
  %1831 = udiv i32 %1829, %1764
  %1832 = call float @dx.op.unary.f32(i32 22, float %1812)  ; Frc(value)
  %1833 = call float @dx.op.unary.f32(i32 22, float %1813)  ; Frc(value)
  %1834 = uitofp i32 %1830 to float
  %1835 = uitofp i32 %1831 to float
  %1836 = fadd fast float %1832, %1834
  %1837 = fadd fast float %1833, %1835
  %1838 = uitofp i32 %1763 to float
  %1839 = uitofp i32 %1764 to float
  %1840 = fdiv fast float %1836, %1838
  %1841 = fdiv fast float %1837, %1839
  br label %1842

; <label>:1842                                    ; preds = %1817, %1744
  %1843 = phi float [ %1840, %1817 ], [ %1812, %1744 ]
  %1844 = phi float [ %1841, %1817 ], [ %1813, %1744 ]
  %1845 = and i32 %1738, 256
  %1846 = icmp eq i32 %1845, 0
  br i1 %1846, label %1893, label %1847

; <label>:1847                                    ; preds = %1842
  %1848 = add i32 %34, 432
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = add i32 %1850, 0
  %1852 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1851, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1853 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1852, %dx.types.Handle %80, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1854 = extractvalue %dx.types.ResRet.f32 %1853, 0
  %1855 = add i32 %34, 132
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = shl i32 %1857, 4
  %1859 = and i32 %1858, 32752
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = lshr i32 %1857, 7
  %1862 = and i32 %1861, 32752
  %1863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1862)  ; LegacyF16ToF32(value)
  %1864 = fsub fast float 1.000000e+00, %440
  %1865 = call float @dx.op.binary.f32(i32 35, float %1864, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1866 = bitcast float %440 to i32
  %1867 = sitofp i32 %1866 to float
  %1868 = fadd fast float %1867, 0xC1CFBF8940000000
  %1869 = fmul fast float %1863, %1868
  %1870 = fadd fast float %1869, 0x41CFBF8940000000
  %1871 = fptosi float %1870 to i32
  %1872 = bitcast i32 %1871 to float
  %1873 = bitcast float %1865 to i32
  %1874 = sitofp i32 %1873 to float
  %1875 = fadd fast float %1874, 0xC1CFBF8940000000
  %1876 = fmul fast float %1875, %1863
  %1877 = fadd fast float %1876, 0x41CFBF8940000000
  %1878 = fptosi float %1877 to i32
  %1879 = bitcast i32 %1878 to float
  %1880 = fmul fast float %1872, %1860
  %1881 = fmul fast float %1879, %1860
  %1882 = fsub fast float %1865, %1880
  %1883 = fadd fast float %1881, %1865
  %1884 = call float @dx.op.unary.f32(i32 7, float %1882)  ; Saturate(value)
  %1885 = call float @dx.op.unary.f32(i32 7, float %1883)  ; Saturate(value)
  %1886 = fsub fast float %1854, %1884
  %1887 = fsub fast float %1885, %1884
  %1888 = bitcast float %1887 to i32
  %1889 = sub nsw i32 2129859010, %1888
  %1890 = bitcast i32 %1889 to float
  %1891 = fmul fast float %1890, %1886
  %1892 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  br label %1893

; <label>:1893                                    ; preds = %1847, %1842
  %1894 = phi float [ %1892, %1847 ], [ %440, %1842 ]
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = and i32 %1896, 128
  %1898 = icmp eq i32 %1897, 0
  br i1 %1898, label %1915, label %1899

; <label>:1899                                    ; preds = %1893
  %1900 = add i32 %34, 416
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = add i32 %1902, 0
  %1904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1905 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1904, %dx.types.Handle %80, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1906 = extractvalue %dx.types.ResRet.f32 %1905, 0
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = and i32 %1908, 524288
  %1910 = icmp ne i32 %1909, 0
  %1911 = fcmp fast ogt float %1906, 0x3FE0101020000000
  %1912 = select i1 %1911, float 1.000000e+00, float 0.000000e+00
  %1913 = select i1 %1910, float %1912, float %1906
  %1914 = fmul fast float %1913, %1894
  br label %1915

; <label>:1915                                    ; preds = %1899, %1893
  %1916 = phi float [ %1914, %1899 ], [ %1894, %1893 ]
  %1917 = fcmp fast ult float %1916, 0x3F70101020000000
  br i1 %1917, label %2499, label %1918

; <label>:1918                                    ; preds = %1915
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = and i32 %1920, 16
  %1922 = icmp eq i32 %1921, 0
  br i1 %1922, label %2121, label %1923

; <label>:1923                                    ; preds = %1918
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = add i32 %34, 368
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = add i32 %1928, 0
  %1930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1929, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1931 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1930, %dx.types.Handle %79, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1932 = extractvalue %dx.types.ResRet.f32 %1931, 0
  %1933 = extractvalue %dx.types.ResRet.f32 %1931, 1
  %1934 = extractvalue %dx.types.ResRet.f32 %1931, 2
  %1935 = extractvalue %dx.types.ResRet.f32 %1931, 3
  %1936 = and i32 %1925, 255
  %1937 = uitofp i32 %1936 to float
  %1938 = lshr i32 %1925, 8
  %1939 = and i32 %1938, 255
  %1940 = uitofp i32 %1939 to float
  %1941 = fmul fast float %1935, %1937
  %1942 = fadd fast float %1941, %1940
  %1943 = fmul fast float %1942, 0x3F70101000000000
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = and i32 %1945, 512
  %1947 = icmp eq i32 %1946, 0
  br i1 %1947, label %1956, label %1948

; <label>:1948                                    ; preds = %1923
  %1949 = add i32 %34, 448
  %1950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1949, i32 undef)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.i32 %1950, 0
  %1952 = add i32 %1951, 0
  %1953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1952, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1954 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1953, %dx.types.Handle %80, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1955 = extractvalue %dx.types.ResRet.f32 %1954, 0
  br label %1956

; <label>:1956                                    ; preds = %1948, %1923
  %1957 = phi float [ %1955, %1948 ], [ 1.000000e+00, %1923 ]
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = and i32 %1959, 33554432
  %1961 = icmp eq i32 %1960, 0
  br i1 %1961, label %2068, label %1962

; <label>:1962                                    ; preds = %1956
  %1963 = add i32 %34, 256
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = and i32 %1965, 65535
  %1967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1966)  ; LegacyF16ToF32(value)
  %1968 = lshr i32 %1965, 16
  %1969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1968)  ; LegacyF16ToF32(value)
  %1970 = add i32 %34, 260
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = and i32 %1972, 65535
  %1974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1973)  ; LegacyF16ToF32(value)
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = lshr i32 %1976, 24
  %1978 = uitofp i32 %1977 to float
  %1979 = fmul fast float %1978, 0x3F70101020000000
  %1980 = and i32 %1976, 255
  %1981 = uitofp i32 %1980 to float
  %1982 = fmul fast float %1981, 0x3F70101020000000
  %1983 = lshr i32 %1976, 8
  %1984 = and i32 %1983, 255
  %1985 = uitofp i32 %1984 to float
  %1986 = fmul fast float %1985, 0x3F70101020000000
  %1987 = lshr i32 %1976, 16
  %1988 = and i32 %1987, 255
  %1989 = uitofp i32 %1988 to float
  %1990 = fmul fast float %1989, 0x3F70101020000000
  %1991 = add i32 %34, 252
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = lshr i32 %1993, 24
  %1995 = uitofp i32 %1994 to float
  %1996 = fmul fast float %1995, 0x3F70101020000000
  %1997 = and i32 %1993, 255
  %1998 = uitofp i32 %1997 to float
  %1999 = fmul fast float %1998, 0x3F70101020000000
  %2000 = lshr i32 %1993, 8
  %2001 = and i32 %2000, 255
  %2002 = uitofp i32 %2001 to float
  %2003 = fmul fast float %2002, 0x3F70101020000000
  %2004 = lshr i32 %1993, 16
  %2005 = and i32 %2004, 255
  %2006 = uitofp i32 %2005 to float
  %2007 = fmul fast float %2006, 0x3F70101020000000
  %2008 = bitcast float %1932 to i32
  %2009 = ashr i32 %2008, 1
  %2010 = sub nsw i32 1597463174, %2009
  %2011 = bitcast i32 %2010 to float
  %2012 = fmul fast float %1932, 5.000000e-01
  %2013 = fmul fast float %2011, %2011
  %2014 = fmul fast float %2013, %2012
  %2015 = fsub fast float 1.500000e+00, %2014
  %2016 = fmul fast float %2011, %1932
  %2017 = fmul fast float %2016, %2015
  %2018 = bitcast float %1933 to i32
  %2019 = ashr i32 %2018, 1
  %2020 = sub nsw i32 1597463174, %2019
  %2021 = bitcast i32 %2020 to float
  %2022 = fmul fast float %1933, 5.000000e-01
  %2023 = fmul fast float %2021, %2021
  %2024 = fmul fast float %2023, %2022
  %2025 = fsub fast float 1.500000e+00, %2024
  %2026 = fmul fast float %2021, %1933
  %2027 = fmul fast float %2026, %2025
  %2028 = bitcast float %1934 to i32
  %2029 = ashr i32 %2028, 1
  %2030 = sub nsw i32 1597463174, %2029
  %2031 = bitcast i32 %2030 to float
  %2032 = fmul fast float %1934, 5.000000e-01
  %2033 = fmul fast float %2031, %2031
  %2034 = fmul fast float %2033, %2032
  %2035 = fsub fast float 1.500000e+00, %2034
  %2036 = fmul fast float %2031, %1934
  %2037 = fmul fast float %2036, %2035
  %2038 = fsub fast float %2017, %1999
  %2039 = fsub fast float %2027, %2003
  %2040 = fsub fast float %2037, %2007
  %2041 = fmul fast float %2038, %1967
  %2042 = fmul fast float %2039, %1969
  %2043 = fmul fast float %2040, %1974
  %2044 = fadd fast float %2041, %1982
  %2045 = fadd fast float %2042, %1986
  %2046 = fadd fast float %2043, %1990
  %2047 = call float @dx.op.unary.f32(i32 7, float %2044)  ; Saturate(value)
  %2048 = call float @dx.op.unary.f32(i32 7, float %2045)  ; Saturate(value)
  %2049 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2050 = fmul fast float %2047, %2047
  %2051 = fmul fast float %2048, %2048
  %2052 = fmul fast float %2049, %2049
  %2053 = fsub fast float %2050, %1932
  %2054 = fsub fast float %2051, %1933
  %2055 = fsub fast float %2052, %1934
  %2056 = fmul fast float %2053, %1957
  %2057 = fmul fast float %2054, %1957
  %2058 = fmul fast float %2055, %1957
  %2059 = fadd fast float %2056, %1932
  %2060 = fadd fast float %2057, %1933
  %2061 = fadd fast float %2058, %1934
  %2062 = fadd fast float %1979, %1943
  %2063 = fsub fast float %2062, %1996
  %2064 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  %2065 = fsub fast float %2064, %1943
  %2066 = fmul fast float %2065, %1957
  %2067 = fadd fast float %2066, %1943
  br label %2121

; <label>:2068                                    ; preds = %1956
  %2069 = and i32 %1959, 134217728
  %2070 = icmp eq i32 %2069, 0
  br i1 %2070, label %2105, label %2071

; <label>:2071                                    ; preds = %2068
  %2072 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %2073 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %2074 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %2075 = fadd fast float %2072, -5.000000e-01
  %2076 = fadd fast float %2073, -5.000000e-01
  %2077 = fadd fast float %2074, -5.000000e-01
  %2078 = fmul fast float %2075, %1957
  %2079 = fmul fast float %2076, %1957
  %2080 = fmul fast float %2077, %1957
  %2081 = fadd fast float %2078, 5.000000e-01
  %2082 = fadd fast float %2079, 5.000000e-01
  %2083 = fadd fast float %2080, 5.000000e-01
  %2084 = call float @dx.op.unary.f32(i32 24, float %1932)  ; Sqrt(value)
  %2085 = call float @dx.op.unary.f32(i32 24, float %1933)  ; Sqrt(value)
  %2086 = call float @dx.op.unary.f32(i32 24, float %1934)  ; Sqrt(value)
  %2087 = fmul fast float %2081, 2.000000e+00
  %2088 = fsub fast float 1.000000e+00, %2087
  %2089 = fmul fast float %2088, %2084
  %2090 = fadd fast float %2089, %2087
  %2091 = fmul fast float %2090, %2084
  %2092 = fmul fast float %2082, 2.000000e+00
  %2093 = fsub fast float 1.000000e+00, %2092
  %2094 = fmul fast float %2093, %2085
  %2095 = fadd fast float %2094, %2092
  %2096 = fmul fast float %2095, %2085
  %2097 = fmul fast float %2083, 2.000000e+00
  %2098 = fsub fast float 1.000000e+00, %2097
  %2099 = fmul fast float %2098, %2086
  %2100 = fadd fast float %2099, %2097
  %2101 = fmul fast float %2100, %2086
  %2102 = fmul fast float %2091, %2091
  %2103 = fmul fast float %2096, %2096
  %2104 = fmul fast float %2101, %2101
  br label %2121

; <label>:2105                                    ; preds = %2068
  %2106 = fmul fast float %318, %318
  %2107 = fmul fast float %322, %322
  %2108 = fmul fast float %326, %326
  %2109 = fadd fast float %2106, -1.000000e+00
  %2110 = fadd fast float %2107, -1.000000e+00
  %2111 = fadd fast float %2108, -1.000000e+00
  %2112 = fmul fast float %1957, %2109
  %2113 = fmul fast float %1957, %2110
  %2114 = fmul fast float %1957, %2111
  %2115 = fadd fast float %2112, 1.000000e+00
  %2116 = fadd fast float %2113, 1.000000e+00
  %2117 = fadd fast float %2114, 1.000000e+00
  %2118 = fmul fast float %2115, %1932
  %2119 = fmul fast float %2116, %1933
  %2120 = fmul fast float %2117, %1934
  br label %2121

; <label>:2121                                    ; preds = %2105, %2071, %1962, %1918
  %2122 = phi float [ %2067, %1962 ], [ %1943, %2071 ], [ %1943, %2105 ], [ 0x3FA23C0BE0000000, %1918 ]
  %2123 = phi float [ %2059, %1962 ], [ %2102, %2071 ], [ %2118, %2105 ], [ 1.000000e+00, %1918 ]
  %2124 = phi float [ %2060, %1962 ], [ %2103, %2071 ], [ %2119, %2105 ], [ 1.000000e+00, %1918 ]
  %2125 = phi float [ %2061, %1962 ], [ %2104, %2071 ], [ %2120, %2105 ], [ 1.000000e+00, %1918 ]
  %2126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.i32 %2126, 1
  %2128 = and i32 %2127, 1
  %2129 = icmp ne i32 %2128, 0
  %2130 = add i32 %34, 356
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = and i32 %2132, 32
  %2134 = icmp ne i32 %2133, 0
  %2135 = and i1 %2129, %2134
  %2136 = select i1 %2135, float 1.000000e+00, float %2123
  %2137 = select i1 %2135, float 0x3FD3333340000000, float %2124
  %2138 = select i1 %2135, float 0x3FD3333340000000, float %2125
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = and i32 %2140, 32
  %2142 = icmp eq i32 %2141, 0
  br i1 %2142, label %2215, label %2143

; <label>:2143                                    ; preds = %2121
  %2144 = add i32 %34, 124
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = add i32 %34, 384
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = add i32 %2149, 0
  %2151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2150, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2152 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2151, %dx.types.Handle %79, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2153 = extractvalue %dx.types.ResRet.f32 %2152, 0
  %2154 = extractvalue %dx.types.ResRet.f32 %2152, 1
  %2155 = extractvalue %dx.types.ResRet.f32 %2152, 2
  %2156 = extractvalue %dx.types.ResRet.f32 %2152, 3
  %2157 = and i32 %2146, 255
  %2158 = uitofp i32 %2157 to float
  %2159 = lshr i32 %2146, 8
  %2160 = and i32 %2159, 255
  %2161 = uitofp i32 %2160 to float
  %2162 = lshr i32 %2146, 16
  %2163 = and i32 %2162, 255
  %2164 = uitofp i32 %2163 to float
  %2165 = fmul fast float %2164, 0x3F70101000000000
  %2166 = fmul fast float %2153, %2158
  %2167 = fadd fast float %2166, %2161
  %2168 = fmul fast float %2167, 0x3F70101000000000
  %2169 = fadd fast float %2154, -5.000000e-01
  %2170 = fadd fast float %2156, -5.000000e-01
  %2171 = fmul fast float %2169, %2165
  %2172 = fmul fast float %2170, %2165
  %2173 = fadd fast float %2171, 5.000000e-01
  %2174 = fadd fast float %2172, 5.000000e-01
  %2175 = fmul fast float %2173, 2.000000e+00
  %2176 = fadd fast float %2175, -1.000000e+00
  %2177 = fmul fast float %2174, 2.000000e+00
  %2178 = fadd fast float %2177, -1.000000e+00
  %2179 = fadd fast float %2176, %2178
  %2180 = fmul fast float %2179, 5.000000e-01
  %2181 = fsub fast float %2176, %2178
  %2182 = fmul fast float %2181, 5.000000e-01
  %2183 = call float @dx.op.unary.f32(i32 6, float %2180)  ; FAbs(value)
  %2184 = fsub fast float 1.000000e+00, %2183
  %2185 = call float @dx.op.unary.f32(i32 6, float %2182)  ; FAbs(value)
  %2186 = fsub fast float %2184, %2185
  %2187 = call float @dx.op.dot3.f32(i32 55, float %2180, float %2182, float %2186, float %2180, float %2182, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %2188 = call float @dx.op.unary.f32(i32 25, float %2187)  ; Rsqrt(value)
  %2189 = fmul fast float %2180, %2188
  %2190 = fmul fast float %2182, %2188
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = and i32 %2192, 67108864
  %2194 = icmp eq i32 %2193, 0
  br i1 %2194, label %2211, label %2195

; <label>:2195                                    ; preds = %2143
  %2196 = add i32 %34, 312
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2196, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = and i32 %2198, 65535
  %2200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2199)  ; LegacyF16ToF32(value)
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = and i32 %2202, 65535
  %2204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2203)  ; LegacyF16ToF32(value)
  %2205 = lshr i32 %2198, 16
  %2206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2205)  ; LegacyF16ToF32(value)
  %2207 = fsub fast float %2168, %2206
  %2208 = fmul fast float %2207, %2200
  %2209 = fadd fast float %2208, %2204
  %2210 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  br label %2211

; <label>:2211                                    ; preds = %2195, %2143
  %2212 = phi float [ %2210, %2195 ], [ %2168, %2143 ]
  %2213 = call float @dx.op.dot2.f32(i32 54, float %2189, float %2190, float %1747, float %1748)  ; Dot2(ax,ay,bx,by)
  %2214 = call float @dx.op.dot2.f32(i32 54, float %2189, float %2190, float %1749, float %1750)  ; Dot2(ax,ay,bx,by)
  br label %2215

; <label>:2215                                    ; preds = %2211, %2121
  %2216 = phi float [ %2212, %2211 ], [ 0x3FD6666660000000, %2121 ]
  %2217 = phi float [ %2213, %2211 ], [ 0.000000e+00, %2121 ]
  %2218 = phi float [ %2214, %2211 ], [ 0.000000e+00, %2121 ]
  %2219 = phi float [ %2155, %2211 ], [ 1.000000e+00, %2121 ]
  %2220 = add i32 %34, 192
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = lshr i32 %2222, 22
  %2224 = shl nuw nsw i32 %2223, 5
  %2225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2224)  ; LegacyF16ToF32(value)
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = and i32 %2227, 64
  %2229 = icmp eq i32 %2228, 0
  br i1 %2229, label %2263, label %2230

; <label>:2230                                    ; preds = %2215
  %2231 = add i32 %34, 400
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2231, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = add i32 %2233, 0
  %2235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = and i32 %2237, 131072
  %2239 = icmp eq i32 %2238, 0
  %2240 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2235, %dx.types.Handle %79, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2241 = extractvalue %dx.types.ResRet.f32 %2240, 0
  %2242 = extractvalue %dx.types.ResRet.f32 %2240, 1
  %2243 = extractvalue %dx.types.ResRet.f32 %2240, 2
  %2244 = fmul fast float %2241, %306
  %2245 = fmul fast float %2242, %309
  %2246 = fmul fast float %2243, %312
  br i1 %2239, label %2253, label %2247

; <label>:2247                                    ; preds = %2230
  %2248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.f32 %2248, 0
  %2250 = fmul fast float %2249, %2244
  %2251 = fmul fast float %2249, %2245
  %2252 = fmul fast float %2249, %2246
  br label %2253

; <label>:2253                                    ; preds = %2247, %2230
  %2254 = phi float [ %2250, %2247 ], [ %2244, %2230 ]
  %2255 = phi float [ %2251, %2247 ], [ %2245, %2230 ]
  %2256 = phi float [ %2252, %2247 ], [ %2246, %2230 ]
  %2257 = fmul fast float %2254, %2225
  %2258 = select i1 %205, float %2257, float %2254
  %2259 = call float @dx.op.dot3.f32(i32 55, float %2258, float %2255, float %2256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2260 = select i1 %205, float 0.000000e+00, float %2254
  %2261 = select i1 %205, float %2259, float %2255
  %2262 = select i1 %205, float 0.000000e+00, float %2256
  br label %2263

; <label>:2263                                    ; preds = %2253, %2215
  %2264 = phi float [ %2260, %2253 ], [ 0.000000e+00, %2215 ]
  %2265 = phi float [ %2261, %2253 ], [ 0.000000e+00, %2215 ]
  %2266 = phi float [ %2262, %2253 ], [ 0.000000e+00, %2215 ]
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = and i32 %2268, 26624
  %2270 = icmp eq i32 %2269, 0
  br i1 %2270, label %2294, label %2271

; <label>:2271                                    ; preds = %2263
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 16384
  %2275 = icmp eq i32 %2274, 0
  br i1 %2275, label %2294, label %2276

; <label>:2276                                    ; preds = %2271
  %2277 = and i32 %2273, 1048576
  %2278 = icmp ne i32 %2277, 0
  %2279 = add i32 %34, 464
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = add i32 %2281, 0
  %2283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2283, %dx.types.Handle %80, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 0
  %2286 = add i32 %34, 128
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2286, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = lshr i32 %2288, 24
  %2290 = uitofp i32 %2289 to float
  %2291 = fmul fast float %2285, 0x3F70101020000000
  %2292 = select i1 %2278, float 0x3F70101020000000, float %2291
  %2293 = fmul fast float %2292, %2290
  br label %2294

; <label>:2294                                    ; preds = %2276, %2271, %2263
  %2295 = phi float [ %2293, %2276 ], [ 0.000000e+00, %2271 ], [ 0.000000e+00, %2263 ]
  %2296 = add i32 %34, 128
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = and i32 %2298, 255
  %2300 = uitofp i32 %2299 to float
  %2301 = lshr i32 %2298, 8
  %2302 = and i32 %2301, 255
  %2303 = uitofp i32 %2302 to float
  %2304 = call float @dx.op.dot3.f32(i32 55, float %2136, float %2137, float %2138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2305 = fmul fast float %2303, %2304
  %2306 = fadd fast float %2305, %2300
  %2307 = fmul fast float %2306, 0x3F70101020000000
  %2308 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  br i1 %1735, label %2309, label %2317

; <label>:2309                                    ; preds = %2294
  %2310 = fsub fast float 1.000000e+00, %1916
  %2311 = fmul fast float %2310, %1723
  %2312 = fmul fast float %2310, %1724
  %2313 = fmul fast float %2310, %1725
  %2314 = fmul fast float %2310, %1726
  %2315 = fmul fast float %2310, %1727
  %2316 = fmul fast float %2310, %1728
  br label %2317

; <label>:2317                                    ; preds = %2309, %2294
  %2318 = phi float [ %2311, %2309 ], [ %1723, %2294 ]
  %2319 = phi float [ %2312, %2309 ], [ %1724, %2294 ]
  %2320 = phi float [ %2313, %2309 ], [ %1725, %2294 ]
  %2321 = phi float [ %2314, %2309 ], [ %1726, %2294 ]
  %2322 = phi float [ %2315, %2309 ], [ %1727, %2294 ]
  %2323 = phi float [ %2316, %2309 ], [ %1728, %2294 ]
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = and i32 %2325, 3
  %2327 = icmp eq i32 %2326, 3
  br i1 %2327, label %2406, label %2328

; <label>:2328                                    ; preds = %2317
  %2329 = and i32 %2325, 16
  %2330 = icmp ne i32 %2329, 0
  %2331 = select i1 %2330, float %1916, float 0.000000e+00
  %2332 = icmp eq i32 %2326, 0
  br i1 %2332, label %2333, label %2361

; <label>:2333                                    ; preds = %2328
  %2334 = and i32 %2325, 64
  %2335 = icmp ne i32 %2334, 0
  %2336 = select i1 %2335, float %1916, float 0.000000e+00
  %2337 = fsub fast float %2136, %2318
  %2338 = fsub fast float %2137, %2319
  %2339 = fsub fast float %2138, %2320
  %2340 = fmul fast float %2331, %2337
  %2341 = fmul fast float %2331, %2338
  %2342 = fmul fast float %2331, %2339
  %2343 = fadd fast float %2340, %2318
  %2344 = fadd fast float %2341, %2319
  %2345 = fadd fast float %2342, %2320
  %2346 = fsub fast float %2122, %1729
  %2347 = fmul fast float %2331, %2346
  %2348 = fadd fast float %2347, %1729
  %2349 = fsub fast float %2264, %2321
  %2350 = fsub fast float %2265, %2322
  %2351 = fsub fast float %2266, %2323
  %2352 = fmul fast float %2336, %2349
  %2353 = fmul fast float %2336, %2350
  %2354 = fmul fast float %2336, %2351
  %2355 = fadd fast float %2352, %2321
  %2356 = fadd fast float %2353, %2322
  %2357 = fadd fast float %2354, %2323
  %2358 = fsub fast float %2308, %1733
  %2359 = fmul fast float %2331, %2358
  %2360 = fadd fast float %2359, %1733
  br label %2406

; <label>:2361                                    ; preds = %2328
  %2362 = icmp eq i32 %2326, 1
  br i1 %2362, label %2363, label %2376

; <label>:2363                                    ; preds = %2361
  %2364 = fadd fast float %2136, -1.000000e+00
  %2365 = fadd fast float %2137, -1.000000e+00
  %2366 = fadd fast float %2138, -1.000000e+00
  %2367 = fmul fast float %2331, %2364
  %2368 = fmul fast float %2331, %2365
  %2369 = fmul fast float %2331, %2366
  %2370 = fadd fast float %2367, 1.000000e+00
  %2371 = fadd fast float %2368, 1.000000e+00
  %2372 = fadd fast float %2369, 1.000000e+00
  %2373 = fmul fast float %2370, %2318
  %2374 = fmul fast float %2371, %2319
  %2375 = fmul fast float %2372, %2320
  br label %2406

; <label>:2376                                    ; preds = %2361
  %2377 = icmp eq i32 %2326, 2
  br i1 %2377, label %2378, label %2406

; <label>:2378                                    ; preds = %2376
  %2379 = call float @dx.op.unary.f32(i32 24, float %2136)  ; Sqrt(value)
  %2380 = call float @dx.op.unary.f32(i32 24, float %2137)  ; Sqrt(value)
  %2381 = call float @dx.op.unary.f32(i32 24, float %2138)  ; Sqrt(value)
  %2382 = fadd fast float %2379, -5.000000e-01
  %2383 = fadd fast float %2380, -5.000000e-01
  %2384 = fadd fast float %2381, -5.000000e-01
  %2385 = fmul fast float %2382, %2331
  %2386 = fmul fast float %2383, %2331
  %2387 = fmul fast float %2384, %2331
  %2388 = fadd fast float %2385, 5.000000e-01
  %2389 = fadd fast float %2386, 5.000000e-01
  %2390 = fadd fast float %2387, 5.000000e-01
  %2391 = fmul fast float %2388, 2.000000e+00
  %2392 = fsub fast float 1.000000e+00, %2391
  %2393 = fmul fast float %2392, %2318
  %2394 = fadd fast float %2393, %2391
  %2395 = fmul fast float %2394, %2318
  %2396 = fmul fast float %2389, 2.000000e+00
  %2397 = fsub fast float 1.000000e+00, %2396
  %2398 = fmul fast float %2397, %2319
  %2399 = fadd fast float %2398, %2396
  %2400 = fmul fast float %2399, %2319
  %2401 = fmul fast float %2390, 2.000000e+00
  %2402 = fsub fast float 1.000000e+00, %2401
  %2403 = fmul fast float %2402, %2320
  %2404 = fadd fast float %2403, %2401
  %2405 = fmul fast float %2404, %2320
  br label %2406

; <label>:2406                                    ; preds = %2378, %2376, %2363, %2333, %2317
  %2407 = phi float [ %2318, %2317 ], [ %2395, %2378 ], [ %2318, %2376 ], [ %2373, %2363 ], [ %2343, %2333 ]
  %2408 = phi float [ %2319, %2317 ], [ %2400, %2378 ], [ %2319, %2376 ], [ %2374, %2363 ], [ %2344, %2333 ]
  %2409 = phi float [ %2320, %2317 ], [ %2405, %2378 ], [ %2320, %2376 ], [ %2375, %2363 ], [ %2345, %2333 ]
  %2410 = phi float [ %2321, %2317 ], [ %2321, %2378 ], [ %2321, %2376 ], [ %2321, %2363 ], [ %2355, %2333 ]
  %2411 = phi float [ %2322, %2317 ], [ %2322, %2378 ], [ %2322, %2376 ], [ %2322, %2363 ], [ %2356, %2333 ]
  %2412 = phi float [ %2323, %2317 ], [ %2323, %2378 ], [ %2323, %2376 ], [ %2323, %2363 ], [ %2357, %2333 ]
  %2413 = phi float [ %1729, %2317 ], [ %1729, %2378 ], [ %1729, %2376 ], [ %1729, %2363 ], [ %2348, %2333 ]
  %2414 = phi float [ %1733, %2317 ], [ %1733, %2378 ], [ %1733, %2376 ], [ %1733, %2363 ], [ %2360, %2333 ]
  %2415 = and i32 %2325, 12
  %2416 = icmp eq i32 %2415, 12
  br i1 %2416, label %2499, label %2417

; <label>:2417                                    ; preds = %2406
  %2418 = and i32 %2325, 2097184
  %2419 = icmp eq i32 %2418, 2097184
  %2420 = select i1 %2419, float %1916, float 0.000000e+00
  %2421 = and i32 %2325, 4194336
  %2422 = icmp eq i32 %2421, 4194336
  %2423 = select i1 %2422, float %1916, float 0.000000e+00
  %2424 = and i32 %2325, 8388640
  %2425 = icmp eq i32 %2424, 8388640
  %2426 = select i1 %2425, float %1916, float 0.000000e+00
  %2427 = and i32 %2325, 16384
  %2428 = icmp ne i32 %2427, 0
  %2429 = select i1 %2428, float %1916, float 0.000000e+00
  %2430 = icmp eq i32 %2415, 0
  br i1 %2430, label %2431, label %2447

; <label>:2431                                    ; preds = %2417
  %2432 = fsub fast float %2217, %1721
  %2433 = fsub fast float %2218, %1722
  %2434 = fmul fast float %2420, %2432
  %2435 = fmul fast float %2420, %2433
  %2436 = fadd fast float %2434, %1721
  %2437 = fadd fast float %2435, %1722
  %2438 = fsub fast float %2219, %1731
  %2439 = fmul fast float %2423, %2438
  %2440 = fadd fast float %2439, %1731
  %2441 = fsub fast float %2216, %1730
  %2442 = fmul fast float %2426, %2441
  %2443 = fadd fast float %2442, %1730
  %2444 = fsub fast float %2295, %1732
  %2445 = fmul fast float %2429, %2444
  %2446 = fadd fast float %2445, %1732
  br label %2499

; <label>:2447                                    ; preds = %2417
  %2448 = icmp eq i32 %2415, 4
  br i1 %2448, label %2449, label %2483

; <label>:2449                                    ; preds = %2447
  %2450 = fmul fast float %2420, %2217
  %2451 = fmul fast float %2420, %2218
  %2452 = fadd fast float %2450, %1721
  %2453 = fadd fast float %2451, %1722
  %2454 = call float @dx.op.binary.f32(i32 36, float %1731, float %2219)  ; FMin(a,b)
  %2455 = fsub fast float %2454, %1731
  %2456 = fmul fast float %2455, %2423
  %2457 = fadd fast float %2456, %1731
  %2458 = fadd fast float %2216, %1730
  %2459 = fmul fast float %2458, 0x3FF337FAE0000000
  %2460 = fmul fast float %1730, %1730
  %2461 = fmul fast float %2216, %2216
  %2462 = fadd fast float %2461, %2460
  %2463 = fmul fast float %2462, 0x3FE5152B00000000
  %2464 = fmul fast float %1730, 0xBFCC1F85E0000000
  %2465 = fmul fast float %2464, %2216
  %2466 = fadd fast float %2465, 0xBFE1363700000000
  %2467 = fadd fast float %2466, %2459
  %2468 = fsub fast float %2467, %2463
  %2469 = fmul fast float %2458, 0x3FBA6F0D00000000
  %2470 = fmul fast float %2462, 0x3FD0432880000000
  %2471 = fmul fast float %1730, 0xBFEF110800000000
  %2472 = fmul fast float %2471, %2216
  %2473 = fadd fast float %2472, 1.000000e+00
  %2474 = fsub fast float %2473, %2469
  %2475 = fadd fast float %2474, %2470
  %2476 = fdiv fast float %2468, %2475
  %2477 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  %2478 = fsub fast float %2477, %1730
  %2479 = fmul fast float %2478, %2426
  %2480 = fadd fast float %2479, %1730
  %2481 = fmul fast float %2429, %2295
  %2482 = fadd fast float %2481, %1732
  br label %2499

; <label>:2483                                    ; preds = %2447
  %2484 = icmp eq i32 %2415, 8
  br i1 %2484, label %2485, label %2499

; <label>:2485                                    ; preds = %2483
  %2486 = fmul fast float %2420, %2217
  %2487 = fmul fast float %2420, %2218
  %2488 = fadd fast float %2486, %1721
  %2489 = fadd fast float %2487, %1722
  %2490 = call float @dx.op.binary.f32(i32 36, float %1731, float %2219)  ; FMin(a,b)
  %2491 = fsub fast float %2490, %1731
  %2492 = fmul fast float %2491, %2423
  %2493 = fadd fast float %2492, %1731
  %2494 = fsub fast float %2216, %1730
  %2495 = fmul fast float %2426, %2494
  %2496 = fadd fast float %2495, %1730
  %2497 = fmul fast float %2429, %2295
  %2498 = fadd fast float %2497, %1732
  br label %2499

; <label>:2499                                    ; preds = %2485, %2483, %2449, %2431, %2406, %1915, %1734, %1720
  %2500 = phi float [ %1721, %2406 ], [ %1721, %1915 ], [ %1721, %1720 ], [ %2488, %2485 ], [ %1721, %2483 ], [ %2452, %2449 ], [ %2436, %2431 ], [ %1721, %1734 ]
  %2501 = phi float [ %1722, %2406 ], [ %1722, %1915 ], [ %1722, %1720 ], [ %2489, %2485 ], [ %1722, %2483 ], [ %2453, %2449 ], [ %2437, %2431 ], [ %1722, %1734 ]
  %2502 = phi float [ %2407, %2406 ], [ %1723, %1915 ], [ %1723, %1720 ], [ %2407, %2485 ], [ %2407, %2483 ], [ %2407, %2449 ], [ %2407, %2431 ], [ %1723, %1734 ]
  %2503 = phi float [ %2408, %2406 ], [ %1724, %1915 ], [ %1724, %1720 ], [ %2408, %2485 ], [ %2408, %2483 ], [ %2408, %2449 ], [ %2408, %2431 ], [ %1724, %1734 ]
  %2504 = phi float [ %2409, %2406 ], [ %1725, %1915 ], [ %1725, %1720 ], [ %2409, %2485 ], [ %2409, %2483 ], [ %2409, %2449 ], [ %2409, %2431 ], [ %1725, %1734 ]
  %2505 = phi float [ %2410, %2406 ], [ %1726, %1915 ], [ %1726, %1720 ], [ %2410, %2485 ], [ %2410, %2483 ], [ %2410, %2449 ], [ %2410, %2431 ], [ %1726, %1734 ]
  %2506 = phi float [ %2411, %2406 ], [ %1727, %1915 ], [ %1727, %1720 ], [ %2411, %2485 ], [ %2411, %2483 ], [ %2411, %2449 ], [ %2411, %2431 ], [ %1727, %1734 ]
  %2507 = phi float [ %2412, %2406 ], [ %1728, %1915 ], [ %1728, %1720 ], [ %2412, %2485 ], [ %2412, %2483 ], [ %2412, %2449 ], [ %2412, %2431 ], [ %1728, %1734 ]
  %2508 = phi float [ %2413, %2406 ], [ %1729, %1915 ], [ %1729, %1720 ], [ %2413, %2485 ], [ %2413, %2483 ], [ %2413, %2449 ], [ %2413, %2431 ], [ %1729, %1734 ]
  %2509 = phi float [ %1730, %2406 ], [ %1730, %1915 ], [ %1730, %1720 ], [ %2496, %2485 ], [ %1730, %2483 ], [ %2480, %2449 ], [ %2443, %2431 ], [ %1730, %1734 ]
  %2510 = phi float [ %1731, %2406 ], [ %1731, %1915 ], [ %1731, %1720 ], [ %2493, %2485 ], [ %1731, %2483 ], [ %2457, %2449 ], [ %2440, %2431 ], [ %1731, %1734 ]
  %2511 = phi float [ %1732, %2406 ], [ %1732, %1915 ], [ %1732, %1720 ], [ %2498, %2485 ], [ %1732, %2483 ], [ %2482, %2449 ], [ %2446, %2431 ], [ %1732, %1734 ]
  %2512 = phi float [ %2414, %2406 ], [ %1733, %1915 ], [ %1733, %1720 ], [ %2414, %2485 ], [ %2414, %2483 ], [ %2414, %2449 ], [ %2414, %2431 ], [ %1733, %1734 ]
  br i1 %393, label %3278, label %2513

; <label>:2513                                    ; preds = %2499
  %2514 = icmp ult i32 %444, 4
  %2515 = add i32 %34, 72
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = add i32 %34, 76
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = or i32 %2520, %2517
  %2522 = icmp eq i32 %2521, 0
  br i1 %2522, label %3278, label %2523

; <label>:2523                                    ; preds = %2513
  %2524 = and i32 %2517, 262144
  %2525 = icmp ne i32 %2524, 0
  %2526 = select i1 %2525, float %39, float 1.000000e+00
  %2527 = select i1 %2525, float %40, float 0.000000e+00
  %2528 = select i1 %2525, float %41, float 0.000000e+00
  %2529 = select i1 %2525, float %42, float 1.000000e+00
  %2530 = select i1 %2525, float %43, float %71
  %2531 = select i1 %2525, float %44, float %72
  %2532 = add i32 %34, 332
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = lshr i32 %2534, 16
  %2536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2535)  ; LegacyF16ToF32(value)
  %2537 = fmul fast float %2536, 0x3F50624DE0000000
  %2538 = add i32 %34, 136
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = lshr i32 %2540, 16
  %2542 = and i32 %2541, 255
  %2543 = lshr i32 %2540, 24
  %2544 = add i32 %34, 340
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = and i32 %2546, 65535
  %2548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2547)  ; LegacyF16ToF32(value)
  %2549 = lshr i32 %2546, 16
  %2550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2549)  ; LegacyF16ToF32(value)
  %2551 = add i32 %34, 80
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = lshr i32 %2553, 22
  %2555 = shl nuw nsw i32 %2554, 5
  %2556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2555)  ; LegacyF16ToF32(value)
  %2557 = shl i32 %2553, 4
  %2558 = and i32 %2557, 32752
  %2559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2558)  ; LegacyF16ToF32(value)
  %2560 = lshr i32 %2553, 7
  %2561 = and i32 %2560, 32752
  %2562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2561)  ; LegacyF16ToF32(value)
  %2563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2564 = extractvalue %dx.types.CBufRet.f32 %2563, 3
  %2565 = fmul fast float %2564, 1.000000e+03
  %2566 = fmul fast float %383, %2565
  %2567 = call float @dx.op.unary.f32(i32 22, float %2566)  ; Frc(value)
  %2568 = fadd fast float %2567, %373
  %2569 = fmul fast float %384, %2565
  %2570 = call float @dx.op.unary.f32(i32 22, float %2569)  ; Frc(value)
  %2571 = fadd fast float %2570, %375
  %2572 = fmul fast float %2537, %2565
  %2573 = call float @dx.op.unary.f32(i32 22, float %2572)  ; Frc(value)
  %2574 = fmul fast float %2573, 0x401921FB60000000
  %2575 = fadd fast float %2574, %2556
  %2576 = call float @dx.op.unary.f32(i32 13, float %2575)  ; Sin(value)
  %2577 = call float @dx.op.unary.f32(i32 12, float %2575)  ; Cos(value)
  %2578 = fsub fast float -0.000000e+00, %2576
  %2579 = fadd fast float %2530, -5.000000e-01
  %2580 = fadd fast float %2531, -5.000000e-01
  %2581 = fmul fast float %2548, %2579
  %2582 = fmul fast float %2550, %2580
  %2583 = fadd fast float %2581, 5.000000e-01
  %2584 = fadd fast float %2582, 5.000000e-01
  %2585 = fmul fast float %2559, %2583
  %2586 = fmul fast float %2562, %2584
  %2587 = fmul fast float %2577, %2585
  %2588 = call float @dx.op.tertiary.f32(i32 46, float %2578, float %2586, float %2587)  ; FMad(a,b,c)
  %2589 = fmul fast float %2576, %2585
  %2590 = call float @dx.op.tertiary.f32(i32 46, float %2577, float %2586, float %2589)  ; FMad(a,b,c)
  %2591 = fadd fast float %2568, %2588
  %2592 = fadd fast float %2571, %2590
  %2593 = icmp ugt i32 %2542, 1
  %2594 = icmp ugt i32 %2540, 33554431
  %2595 = or i1 %2594, %2593
  br i1 %2595, label %2596, label %2621

; <label>:2596                                    ; preds = %2523
  %2597 = add i32 %34, 276
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = lshr i32 %2599, 16
  %2601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2600)  ; LegacyF16ToF32(value)
  %2602 = fmul fast float %2564, %2601
  %2603 = call float @dx.op.unary.f32(i32 22, float %2602)  ; Frc(value)
  %2604 = mul nuw nsw i32 %2542, %2543
  %2605 = uitofp i32 %2604 to float
  %2606 = fmul fast float %2603, %2605
  %2607 = call float @dx.op.unary.f32(i32 27, float %2606)  ; Round_ni(value)
  %2608 = fptoui float %2607 to i32
  %2609 = urem i32 %2608, %2542
  %2610 = udiv i32 %2608, %2543
  %2611 = call float @dx.op.unary.f32(i32 22, float %2591)  ; Frc(value)
  %2612 = call float @dx.op.unary.f32(i32 22, float %2592)  ; Frc(value)
  %2613 = uitofp i32 %2609 to float
  %2614 = uitofp i32 %2610 to float
  %2615 = fadd fast float %2611, %2613
  %2616 = fadd fast float %2612, %2614
  %2617 = uitofp i32 %2542 to float
  %2618 = uitofp i32 %2543 to float
  %2619 = fdiv fast float %2615, %2617
  %2620 = fdiv fast float %2616, %2618
  br label %2621

; <label>:2621                                    ; preds = %2596, %2523
  %2622 = phi float [ %2619, %2596 ], [ %2591, %2523 ]
  %2623 = phi float [ %2620, %2596 ], [ %2592, %2523 ]
  %2624 = and i32 %2517, 256
  %2625 = icmp eq i32 %2624, 0
  br i1 %2625, label %2672, label %2626

; <label>:2626                                    ; preds = %2621
  %2627 = add i32 %34, 436
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = add i32 %2629, 0
  %2631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2631, %dx.types.Handle %80, float %2622, float %2623, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2633 = extractvalue %dx.types.ResRet.f32 %2632, 0
  %2634 = add i32 %34, 148
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2634, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = shl i32 %2636, 4
  %2638 = and i32 %2637, 32752
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = lshr i32 %2636, 7
  %2641 = and i32 %2640, 32752
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = fsub fast float 1.000000e+00, %439
  %2644 = call float @dx.op.binary.f32(i32 35, float %2643, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2645 = bitcast float %439 to i32
  %2646 = sitofp i32 %2645 to float
  %2647 = fadd fast float %2646, 0xC1CFBF8940000000
  %2648 = fmul fast float %2642, %2647
  %2649 = fadd fast float %2648, 0x41CFBF8940000000
  %2650 = fptosi float %2649 to i32
  %2651 = bitcast i32 %2650 to float
  %2652 = bitcast float %2644 to i32
  %2653 = sitofp i32 %2652 to float
  %2654 = fadd fast float %2653, 0xC1CFBF8940000000
  %2655 = fmul fast float %2654, %2642
  %2656 = fadd fast float %2655, 0x41CFBF8940000000
  %2657 = fptosi float %2656 to i32
  %2658 = bitcast i32 %2657 to float
  %2659 = fmul fast float %2651, %2639
  %2660 = fmul fast float %2658, %2639
  %2661 = fsub fast float %2644, %2659
  %2662 = fadd fast float %2660, %2644
  %2663 = call float @dx.op.unary.f32(i32 7, float %2661)  ; Saturate(value)
  %2664 = call float @dx.op.unary.f32(i32 7, float %2662)  ; Saturate(value)
  %2665 = fsub fast float %2633, %2663
  %2666 = fsub fast float %2664, %2663
  %2667 = bitcast float %2666 to i32
  %2668 = sub nsw i32 2129859010, %2667
  %2669 = bitcast i32 %2668 to float
  %2670 = fmul fast float %2669, %2665
  %2671 = call float @dx.op.unary.f32(i32 7, float %2670)  ; Saturate(value)
  br label %2672

; <label>:2672                                    ; preds = %2626, %2621
  %2673 = phi float [ %2671, %2626 ], [ %439, %2621 ]
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = and i32 %2675, 128
  %2677 = icmp eq i32 %2676, 0
  br i1 %2677, label %2694, label %2678

; <label>:2678                                    ; preds = %2672
  %2679 = add i32 %34, 420
  %2680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2679, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.i32 %2680, 0
  %2682 = add i32 %2681, 0
  %2683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2684 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2683, %dx.types.Handle %80, float %2622, float %2623, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2685 = extractvalue %dx.types.ResRet.f32 %2684, 0
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = and i32 %2687, 524288
  %2689 = icmp ne i32 %2688, 0
  %2690 = fcmp fast ogt float %2685, 0x3FE0101020000000
  %2691 = select i1 %2690, float 1.000000e+00, float 0.000000e+00
  %2692 = select i1 %2689, float %2691, float %2685
  %2693 = fmul fast float %2692, %2673
  br label %2694

; <label>:2694                                    ; preds = %2678, %2672
  %2695 = phi float [ %2693, %2678 ], [ %2673, %2672 ]
  %2696 = fcmp fast ult float %2695, 0x3F70101020000000
  br i1 %2696, label %3278, label %2697

; <label>:2697                                    ; preds = %2694
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = and i32 %2699, 16
  %2701 = icmp eq i32 %2700, 0
  br i1 %2701, label %2900, label %2702

; <label>:2702                                    ; preds = %2697
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = add i32 %34, 372
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = add i32 %2707, 0
  %2709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2708, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2710 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2709, %dx.types.Handle %79, float %2622, float %2623, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2711 = extractvalue %dx.types.ResRet.f32 %2710, 0
  %2712 = extractvalue %dx.types.ResRet.f32 %2710, 1
  %2713 = extractvalue %dx.types.ResRet.f32 %2710, 2
  %2714 = extractvalue %dx.types.ResRet.f32 %2710, 3
  %2715 = and i32 %2704, 255
  %2716 = uitofp i32 %2715 to float
  %2717 = lshr i32 %2704, 8
  %2718 = and i32 %2717, 255
  %2719 = uitofp i32 %2718 to float
  %2720 = fmul fast float %2714, %2716
  %2721 = fadd fast float %2720, %2719
  %2722 = fmul fast float %2721, 0x3F70101000000000
  %2723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.i32 %2723, 0
  %2725 = and i32 %2724, 512
  %2726 = icmp eq i32 %2725, 0
  br i1 %2726, label %2735, label %2727

; <label>:2727                                    ; preds = %2702
  %2728 = add i32 %34, 452
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = add i32 %2730, 0
  %2732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2732, %dx.types.Handle %80, float %2622, float %2623, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2734 = extractvalue %dx.types.ResRet.f32 %2733, 0
  br label %2735

; <label>:2735                                    ; preds = %2727, %2702
  %2736 = phi float [ %2734, %2727 ], [ 1.000000e+00, %2702 ]
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 33554432
  %2740 = icmp eq i32 %2739, 0
  br i1 %2740, label %2847, label %2741

; <label>:2741                                    ; preds = %2735
  %2742 = add i32 %34, 272
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = and i32 %2744, 65535
  %2746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2745)  ; LegacyF16ToF32(value)
  %2747 = lshr i32 %2744, 16
  %2748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2747)  ; LegacyF16ToF32(value)
  %2749 = add i32 %34, 276
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = and i32 %2751, 65535
  %2753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2752)  ; LegacyF16ToF32(value)
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = lshr i32 %2755, 24
  %2757 = uitofp i32 %2756 to float
  %2758 = fmul fast float %2757, 0x3F70101020000000
  %2759 = and i32 %2755, 255
  %2760 = uitofp i32 %2759 to float
  %2761 = fmul fast float %2760, 0x3F70101020000000
  %2762 = lshr i32 %2755, 8
  %2763 = and i32 %2762, 255
  %2764 = uitofp i32 %2763 to float
  %2765 = fmul fast float %2764, 0x3F70101020000000
  %2766 = lshr i32 %2755, 16
  %2767 = and i32 %2766, 255
  %2768 = uitofp i32 %2767 to float
  %2769 = fmul fast float %2768, 0x3F70101020000000
  %2770 = add i32 %34, 268
  %2771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2772 = extractvalue %dx.types.ResRet.i32 %2771, 0
  %2773 = lshr i32 %2772, 24
  %2774 = uitofp i32 %2773 to float
  %2775 = fmul fast float %2774, 0x3F70101020000000
  %2776 = and i32 %2772, 255
  %2777 = uitofp i32 %2776 to float
  %2778 = fmul fast float %2777, 0x3F70101020000000
  %2779 = lshr i32 %2772, 8
  %2780 = and i32 %2779, 255
  %2781 = uitofp i32 %2780 to float
  %2782 = fmul fast float %2781, 0x3F70101020000000
  %2783 = lshr i32 %2772, 16
  %2784 = and i32 %2783, 255
  %2785 = uitofp i32 %2784 to float
  %2786 = fmul fast float %2785, 0x3F70101020000000
  %2787 = bitcast float %2711 to i32
  %2788 = ashr i32 %2787, 1
  %2789 = sub nsw i32 1597463174, %2788
  %2790 = bitcast i32 %2789 to float
  %2791 = fmul fast float %2711, 5.000000e-01
  %2792 = fmul fast float %2790, %2790
  %2793 = fmul fast float %2792, %2791
  %2794 = fsub fast float 1.500000e+00, %2793
  %2795 = fmul fast float %2790, %2711
  %2796 = fmul fast float %2795, %2794
  %2797 = bitcast float %2712 to i32
  %2798 = ashr i32 %2797, 1
  %2799 = sub nsw i32 1597463174, %2798
  %2800 = bitcast i32 %2799 to float
  %2801 = fmul fast float %2712, 5.000000e-01
  %2802 = fmul fast float %2800, %2800
  %2803 = fmul fast float %2802, %2801
  %2804 = fsub fast float 1.500000e+00, %2803
  %2805 = fmul fast float %2800, %2712
  %2806 = fmul fast float %2805, %2804
  %2807 = bitcast float %2713 to i32
  %2808 = ashr i32 %2807, 1
  %2809 = sub nsw i32 1597463174, %2808
  %2810 = bitcast i32 %2809 to float
  %2811 = fmul fast float %2713, 5.000000e-01
  %2812 = fmul fast float %2810, %2810
  %2813 = fmul fast float %2812, %2811
  %2814 = fsub fast float 1.500000e+00, %2813
  %2815 = fmul fast float %2810, %2713
  %2816 = fmul fast float %2815, %2814
  %2817 = fsub fast float %2796, %2778
  %2818 = fsub fast float %2806, %2782
  %2819 = fsub fast float %2816, %2786
  %2820 = fmul fast float %2817, %2746
  %2821 = fmul fast float %2818, %2748
  %2822 = fmul fast float %2819, %2753
  %2823 = fadd fast float %2820, %2761
  %2824 = fadd fast float %2821, %2765
  %2825 = fadd fast float %2822, %2769
  %2826 = call float @dx.op.unary.f32(i32 7, float %2823)  ; Saturate(value)
  %2827 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2828 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  %2829 = fmul fast float %2826, %2826
  %2830 = fmul fast float %2827, %2827
  %2831 = fmul fast float %2828, %2828
  %2832 = fsub fast float %2829, %2711
  %2833 = fsub fast float %2830, %2712
  %2834 = fsub fast float %2831, %2713
  %2835 = fmul fast float %2832, %2736
  %2836 = fmul fast float %2833, %2736
  %2837 = fmul fast float %2834, %2736
  %2838 = fadd fast float %2835, %2711
  %2839 = fadd fast float %2836, %2712
  %2840 = fadd fast float %2837, %2713
  %2841 = fadd fast float %2758, %2722
  %2842 = fsub fast float %2841, %2775
  %2843 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2844 = fsub fast float %2843, %2722
  %2845 = fmul fast float %2844, %2736
  %2846 = fadd fast float %2845, %2722
  br label %2900

; <label>:2847                                    ; preds = %2735
  %2848 = and i32 %2738, 134217728
  %2849 = icmp eq i32 %2848, 0
  br i1 %2849, label %2884, label %2850

; <label>:2850                                    ; preds = %2847
  %2851 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %2852 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %2853 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %2854 = fadd fast float %2851, -5.000000e-01
  %2855 = fadd fast float %2852, -5.000000e-01
  %2856 = fadd fast float %2853, -5.000000e-01
  %2857 = fmul fast float %2854, %2736
  %2858 = fmul fast float %2855, %2736
  %2859 = fmul fast float %2856, %2736
  %2860 = fadd fast float %2857, 5.000000e-01
  %2861 = fadd fast float %2858, 5.000000e-01
  %2862 = fadd fast float %2859, 5.000000e-01
  %2863 = call float @dx.op.unary.f32(i32 24, float %2711)  ; Sqrt(value)
  %2864 = call float @dx.op.unary.f32(i32 24, float %2712)  ; Sqrt(value)
  %2865 = call float @dx.op.unary.f32(i32 24, float %2713)  ; Sqrt(value)
  %2866 = fmul fast float %2860, 2.000000e+00
  %2867 = fsub fast float 1.000000e+00, %2866
  %2868 = fmul fast float %2867, %2863
  %2869 = fadd fast float %2868, %2866
  %2870 = fmul fast float %2869, %2863
  %2871 = fmul fast float %2861, 2.000000e+00
  %2872 = fsub fast float 1.000000e+00, %2871
  %2873 = fmul fast float %2872, %2864
  %2874 = fadd fast float %2873, %2871
  %2875 = fmul fast float %2874, %2864
  %2876 = fmul fast float %2862, 2.000000e+00
  %2877 = fsub fast float 1.000000e+00, %2876
  %2878 = fmul fast float %2877, %2865
  %2879 = fadd fast float %2878, %2876
  %2880 = fmul fast float %2879, %2865
  %2881 = fmul fast float %2870, %2870
  %2882 = fmul fast float %2875, %2875
  %2883 = fmul fast float %2880, %2880
  br label %2900

; <label>:2884                                    ; preds = %2847
  %2885 = fmul fast float %360, %360
  %2886 = fmul fast float %364, %364
  %2887 = fmul fast float %368, %368
  %2888 = fadd fast float %2885, -1.000000e+00
  %2889 = fadd fast float %2886, -1.000000e+00
  %2890 = fadd fast float %2887, -1.000000e+00
  %2891 = fmul fast float %2736, %2888
  %2892 = fmul fast float %2736, %2889
  %2893 = fmul fast float %2736, %2890
  %2894 = fadd fast float %2891, 1.000000e+00
  %2895 = fadd fast float %2892, 1.000000e+00
  %2896 = fadd fast float %2893, 1.000000e+00
  %2897 = fmul fast float %2894, %2711
  %2898 = fmul fast float %2895, %2712
  %2899 = fmul fast float %2896, %2713
  br label %2900

; <label>:2900                                    ; preds = %2884, %2850, %2741, %2697
  %2901 = phi float [ %2846, %2741 ], [ %2722, %2850 ], [ %2722, %2884 ], [ 0x3FA23C0BE0000000, %2697 ]
  %2902 = phi float [ %2838, %2741 ], [ %2881, %2850 ], [ %2897, %2884 ], [ 1.000000e+00, %2697 ]
  %2903 = phi float [ %2839, %2741 ], [ %2882, %2850 ], [ %2898, %2884 ], [ 1.000000e+00, %2697 ]
  %2904 = phi float [ %2840, %2741 ], [ %2883, %2850 ], [ %2899, %2884 ], [ 1.000000e+00, %2697 ]
  %2905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2906 = extractvalue %dx.types.CBufRet.i32 %2905, 1
  %2907 = and i32 %2906, 1
  %2908 = icmp ne i32 %2907, 0
  %2909 = add i32 %34, 356
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2909, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = and i32 %2911, 32
  %2913 = icmp ne i32 %2912, 0
  %2914 = and i1 %2908, %2913
  %2915 = select i1 %2914, float 1.000000e+00, float %2902
  %2916 = select i1 %2914, float 0x3FD3333340000000, float %2903
  %2917 = select i1 %2914, float 0x3FD3333340000000, float %2904
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = and i32 %2919, 32
  %2921 = icmp eq i32 %2920, 0
  br i1 %2921, label %2994, label %2922

; <label>:2922                                    ; preds = %2900
  %2923 = add i32 %34, 140
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = add i32 %34, 388
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = add i32 %2928, 0
  %2930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2929, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2931 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2930, %dx.types.Handle %79, float %2622, float %2623, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2932 = extractvalue %dx.types.ResRet.f32 %2931, 0
  %2933 = extractvalue %dx.types.ResRet.f32 %2931, 1
  %2934 = extractvalue %dx.types.ResRet.f32 %2931, 2
  %2935 = extractvalue %dx.types.ResRet.f32 %2931, 3
  %2936 = and i32 %2925, 255
  %2937 = uitofp i32 %2936 to float
  %2938 = lshr i32 %2925, 8
  %2939 = and i32 %2938, 255
  %2940 = uitofp i32 %2939 to float
  %2941 = lshr i32 %2925, 16
  %2942 = and i32 %2941, 255
  %2943 = uitofp i32 %2942 to float
  %2944 = fmul fast float %2943, 0x3F70101000000000
  %2945 = fmul fast float %2932, %2937
  %2946 = fadd fast float %2945, %2940
  %2947 = fmul fast float %2946, 0x3F70101000000000
  %2948 = fadd fast float %2933, -5.000000e-01
  %2949 = fadd fast float %2935, -5.000000e-01
  %2950 = fmul fast float %2948, %2944
  %2951 = fmul fast float %2949, %2944
  %2952 = fadd fast float %2950, 5.000000e-01
  %2953 = fadd fast float %2951, 5.000000e-01
  %2954 = fmul fast float %2952, 2.000000e+00
  %2955 = fadd fast float %2954, -1.000000e+00
  %2956 = fmul fast float %2953, 2.000000e+00
  %2957 = fadd fast float %2956, -1.000000e+00
  %2958 = fadd fast float %2955, %2957
  %2959 = fmul fast float %2958, 5.000000e-01
  %2960 = fsub fast float %2955, %2957
  %2961 = fmul fast float %2960, 5.000000e-01
  %2962 = call float @dx.op.unary.f32(i32 6, float %2959)  ; FAbs(value)
  %2963 = fsub fast float 1.000000e+00, %2962
  %2964 = call float @dx.op.unary.f32(i32 6, float %2961)  ; FAbs(value)
  %2965 = fsub fast float %2963, %2964
  %2966 = call float @dx.op.dot3.f32(i32 55, float %2959, float %2961, float %2965, float %2959, float %2961, float %2965)  ; Dot3(ax,ay,az,bx,by,bz)
  %2967 = call float @dx.op.unary.f32(i32 25, float %2966)  ; Rsqrt(value)
  %2968 = fmul fast float %2959, %2967
  %2969 = fmul fast float %2961, %2967
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 67108864
  %2973 = icmp eq i32 %2972, 0
  br i1 %2973, label %2990, label %2974

; <label>:2974                                    ; preds = %2922
  %2975 = add i32 %34, 328
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = and i32 %2977, 65535
  %2979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2978)  ; LegacyF16ToF32(value)
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = and i32 %2981, 65535
  %2983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2982)  ; LegacyF16ToF32(value)
  %2984 = lshr i32 %2977, 16
  %2985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2984)  ; LegacyF16ToF32(value)
  %2986 = fsub fast float %2947, %2985
  %2987 = fmul fast float %2986, %2979
  %2988 = fadd fast float %2987, %2983
  %2989 = call float @dx.op.unary.f32(i32 7, float %2988)  ; Saturate(value)
  br label %2990

; <label>:2990                                    ; preds = %2974, %2922
  %2991 = phi float [ %2989, %2974 ], [ %2947, %2922 ]
  %2992 = call float @dx.op.dot2.f32(i32 54, float %2968, float %2969, float %2526, float %2527)  ; Dot2(ax,ay,bx,by)
  %2993 = call float @dx.op.dot2.f32(i32 54, float %2968, float %2969, float %2528, float %2529)  ; Dot2(ax,ay,bx,by)
  br label %2994

; <label>:2994                                    ; preds = %2990, %2900
  %2995 = phi float [ %2991, %2990 ], [ 0x3FD6666660000000, %2900 ]
  %2996 = phi float [ %2992, %2990 ], [ 0.000000e+00, %2900 ]
  %2997 = phi float [ %2993, %2990 ], [ 0.000000e+00, %2900 ]
  %2998 = phi float [ %2934, %2990 ], [ 1.000000e+00, %2900 ]
  %2999 = add i32 %34, 208
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2999, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = lshr i32 %3001, 22
  %3003 = shl nuw nsw i32 %3002, 5
  %3004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3003)  ; LegacyF16ToF32(value)
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = and i32 %3006, 64
  %3008 = icmp eq i32 %3007, 0
  br i1 %3008, label %3042, label %3009

; <label>:3009                                    ; preds = %2994
  %3010 = add i32 %34, 404
  %3011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3010, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.i32 %3011, 0
  %3013 = add i32 %3012, 0
  %3014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3013, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = and i32 %3016, 131072
  %3018 = icmp eq i32 %3017, 0
  %3019 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3014, %dx.types.Handle %79, float %2622, float %2623, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3020 = extractvalue %dx.types.ResRet.f32 %3019, 0
  %3021 = extractvalue %dx.types.ResRet.f32 %3019, 1
  %3022 = extractvalue %dx.types.ResRet.f32 %3019, 2
  %3023 = fmul fast float %3020, %348
  %3024 = fmul fast float %3021, %351
  %3025 = fmul fast float %3022, %354
  br i1 %3018, label %3032, label %3026

; <label>:3026                                    ; preds = %3009
  %3027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3028 = extractvalue %dx.types.CBufRet.f32 %3027, 0
  %3029 = fmul fast float %3028, %3023
  %3030 = fmul fast float %3028, %3024
  %3031 = fmul fast float %3028, %3025
  br label %3032

; <label>:3032                                    ; preds = %3026, %3009
  %3033 = phi float [ %3029, %3026 ], [ %3023, %3009 ]
  %3034 = phi float [ %3030, %3026 ], [ %3024, %3009 ]
  %3035 = phi float [ %3031, %3026 ], [ %3025, %3009 ]
  %3036 = fmul fast float %3033, %3004
  %3037 = select i1 %205, float %3036, float %3033
  %3038 = call float @dx.op.dot3.f32(i32 55, float %3037, float %3034, float %3035, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3039 = select i1 %205, float 0.000000e+00, float %3033
  %3040 = select i1 %205, float %3038, float %3034
  %3041 = select i1 %205, float 0.000000e+00, float %3035
  br label %3042

; <label>:3042                                    ; preds = %3032, %2994
  %3043 = phi float [ %3039, %3032 ], [ 0.000000e+00, %2994 ]
  %3044 = phi float [ %3040, %3032 ], [ 0.000000e+00, %2994 ]
  %3045 = phi float [ %3041, %3032 ], [ 0.000000e+00, %2994 ]
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = and i32 %3047, 26624
  %3049 = icmp eq i32 %3048, 0
  br i1 %3049, label %3073, label %3050

; <label>:3050                                    ; preds = %3042
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %3052, 16384
  %3054 = icmp eq i32 %3053, 0
  br i1 %3054, label %3073, label %3055

; <label>:3055                                    ; preds = %3050
  %3056 = and i32 %3052, 1048576
  %3057 = icmp ne i32 %3056, 0
  %3058 = add i32 %34, 468
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3058, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = add i32 %3060, 0
  %3062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3063 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3062, %dx.types.Handle %80, float %2622, float %2623, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 0
  %3065 = add i32 %34, 144
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = lshr i32 %3067, 24
  %3069 = uitofp i32 %3068 to float
  %3070 = fmul fast float %3064, 0x3F70101020000000
  %3071 = select i1 %3057, float 0x3F70101020000000, float %3070
  %3072 = fmul fast float %3071, %3069
  br label %3073

; <label>:3073                                    ; preds = %3055, %3050, %3042
  %3074 = phi float [ %3072, %3055 ], [ 0.000000e+00, %3050 ], [ 0.000000e+00, %3042 ]
  %3075 = add i32 %34, 144
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = and i32 %3077, 255
  %3079 = uitofp i32 %3078 to float
  %3080 = lshr i32 %3077, 8
  %3081 = and i32 %3080, 255
  %3082 = uitofp i32 %3081 to float
  %3083 = call float @dx.op.dot3.f32(i32 55, float %2915, float %2916, float %2917, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3084 = fmul fast float %3082, %3083
  %3085 = fadd fast float %3084, %3079
  %3086 = fmul fast float %3085, 0x3F70101020000000
  %3087 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  br i1 %2514, label %3088, label %3096

; <label>:3088                                    ; preds = %3073
  %3089 = fsub fast float 1.000000e+00, %2695
  %3090 = fmul fast float %3089, %2502
  %3091 = fmul fast float %3089, %2503
  %3092 = fmul fast float %3089, %2504
  %3093 = fmul fast float %3089, %2505
  %3094 = fmul fast float %3089, %2506
  %3095 = fmul fast float %3089, %2507
  br label %3096

; <label>:3096                                    ; preds = %3088, %3073
  %3097 = phi float [ %3090, %3088 ], [ %2502, %3073 ]
  %3098 = phi float [ %3091, %3088 ], [ %2503, %3073 ]
  %3099 = phi float [ %3092, %3088 ], [ %2504, %3073 ]
  %3100 = phi float [ %3093, %3088 ], [ %2505, %3073 ]
  %3101 = phi float [ %3094, %3088 ], [ %2506, %3073 ]
  %3102 = phi float [ %3095, %3088 ], [ %2507, %3073 ]
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = and i32 %3104, 3
  %3106 = icmp eq i32 %3105, 3
  br i1 %3106, label %3185, label %3107

; <label>:3107                                    ; preds = %3096
  %3108 = and i32 %3104, 16
  %3109 = icmp ne i32 %3108, 0
  %3110 = select i1 %3109, float %2695, float 0.000000e+00
  %3111 = icmp eq i32 %3105, 0
  br i1 %3111, label %3112, label %3140

; <label>:3112                                    ; preds = %3107
  %3113 = and i32 %3104, 64
  %3114 = icmp ne i32 %3113, 0
  %3115 = select i1 %3114, float %2695, float 0.000000e+00
  %3116 = fsub fast float %2915, %3097
  %3117 = fsub fast float %2916, %3098
  %3118 = fsub fast float %2917, %3099
  %3119 = fmul fast float %3110, %3116
  %3120 = fmul fast float %3110, %3117
  %3121 = fmul fast float %3110, %3118
  %3122 = fadd fast float %3119, %3097
  %3123 = fadd fast float %3120, %3098
  %3124 = fadd fast float %3121, %3099
  %3125 = fsub fast float %2901, %2508
  %3126 = fmul fast float %3110, %3125
  %3127 = fadd fast float %3126, %2508
  %3128 = fsub fast float %3043, %3100
  %3129 = fsub fast float %3044, %3101
  %3130 = fsub fast float %3045, %3102
  %3131 = fmul fast float %3115, %3128
  %3132 = fmul fast float %3115, %3129
  %3133 = fmul fast float %3115, %3130
  %3134 = fadd fast float %3131, %3100
  %3135 = fadd fast float %3132, %3101
  %3136 = fadd fast float %3133, %3102
  %3137 = fsub fast float %3087, %2512
  %3138 = fmul fast float %3110, %3137
  %3139 = fadd fast float %3138, %2512
  br label %3185

; <label>:3140                                    ; preds = %3107
  %3141 = icmp eq i32 %3105, 1
  br i1 %3141, label %3142, label %3155

; <label>:3142                                    ; preds = %3140
  %3143 = fadd fast float %2915, -1.000000e+00
  %3144 = fadd fast float %2916, -1.000000e+00
  %3145 = fadd fast float %2917, -1.000000e+00
  %3146 = fmul fast float %3110, %3143
  %3147 = fmul fast float %3110, %3144
  %3148 = fmul fast float %3110, %3145
  %3149 = fadd fast float %3146, 1.000000e+00
  %3150 = fadd fast float %3147, 1.000000e+00
  %3151 = fadd fast float %3148, 1.000000e+00
  %3152 = fmul fast float %3149, %3097
  %3153 = fmul fast float %3150, %3098
  %3154 = fmul fast float %3151, %3099
  br label %3185

; <label>:3155                                    ; preds = %3140
  %3156 = icmp eq i32 %3105, 2
  br i1 %3156, label %3157, label %3185

; <label>:3157                                    ; preds = %3155
  %3158 = call float @dx.op.unary.f32(i32 24, float %2915)  ; Sqrt(value)
  %3159 = call float @dx.op.unary.f32(i32 24, float %2916)  ; Sqrt(value)
  %3160 = call float @dx.op.unary.f32(i32 24, float %2917)  ; Sqrt(value)
  %3161 = fadd fast float %3158, -5.000000e-01
  %3162 = fadd fast float %3159, -5.000000e-01
  %3163 = fadd fast float %3160, -5.000000e-01
  %3164 = fmul fast float %3161, %3110
  %3165 = fmul fast float %3162, %3110
  %3166 = fmul fast float %3163, %3110
  %3167 = fadd fast float %3164, 5.000000e-01
  %3168 = fadd fast float %3165, 5.000000e-01
  %3169 = fadd fast float %3166, 5.000000e-01
  %3170 = fmul fast float %3167, 2.000000e+00
  %3171 = fsub fast float 1.000000e+00, %3170
  %3172 = fmul fast float %3171, %3097
  %3173 = fadd fast float %3172, %3170
  %3174 = fmul fast float %3173, %3097
  %3175 = fmul fast float %3168, 2.000000e+00
  %3176 = fsub fast float 1.000000e+00, %3175
  %3177 = fmul fast float %3176, %3098
  %3178 = fadd fast float %3177, %3175
  %3179 = fmul fast float %3178, %3098
  %3180 = fmul fast float %3169, 2.000000e+00
  %3181 = fsub fast float 1.000000e+00, %3180
  %3182 = fmul fast float %3181, %3099
  %3183 = fadd fast float %3182, %3180
  %3184 = fmul fast float %3183, %3099
  br label %3185

; <label>:3185                                    ; preds = %3157, %3155, %3142, %3112, %3096
  %3186 = phi float [ %3097, %3096 ], [ %3174, %3157 ], [ %3097, %3155 ], [ %3152, %3142 ], [ %3122, %3112 ]
  %3187 = phi float [ %3098, %3096 ], [ %3179, %3157 ], [ %3098, %3155 ], [ %3153, %3142 ], [ %3123, %3112 ]
  %3188 = phi float [ %3099, %3096 ], [ %3184, %3157 ], [ %3099, %3155 ], [ %3154, %3142 ], [ %3124, %3112 ]
  %3189 = phi float [ %3100, %3096 ], [ %3100, %3157 ], [ %3100, %3155 ], [ %3100, %3142 ], [ %3134, %3112 ]
  %3190 = phi float [ %3101, %3096 ], [ %3101, %3157 ], [ %3101, %3155 ], [ %3101, %3142 ], [ %3135, %3112 ]
  %3191 = phi float [ %3102, %3096 ], [ %3102, %3157 ], [ %3102, %3155 ], [ %3102, %3142 ], [ %3136, %3112 ]
  %3192 = phi float [ %2508, %3096 ], [ %2508, %3157 ], [ %2508, %3155 ], [ %2508, %3142 ], [ %3127, %3112 ]
  %3193 = phi float [ %2512, %3096 ], [ %2512, %3157 ], [ %2512, %3155 ], [ %2512, %3142 ], [ %3139, %3112 ]
  %3194 = and i32 %3104, 12
  %3195 = icmp eq i32 %3194, 12
  br i1 %3195, label %3278, label %3196

; <label>:3196                                    ; preds = %3185
  %3197 = and i32 %3104, 2097184
  %3198 = icmp eq i32 %3197, 2097184
  %3199 = select i1 %3198, float %2695, float 0.000000e+00
  %3200 = and i32 %3104, 4194336
  %3201 = icmp eq i32 %3200, 4194336
  %3202 = select i1 %3201, float %2695, float 0.000000e+00
  %3203 = and i32 %3104, 8388640
  %3204 = icmp eq i32 %3203, 8388640
  %3205 = select i1 %3204, float %2695, float 0.000000e+00
  %3206 = and i32 %3104, 16384
  %3207 = icmp ne i32 %3206, 0
  %3208 = select i1 %3207, float %2695, float 0.000000e+00
  %3209 = icmp eq i32 %3194, 0
  br i1 %3209, label %3210, label %3226

; <label>:3210                                    ; preds = %3196
  %3211 = fsub fast float %2996, %2500
  %3212 = fsub fast float %2997, %2501
  %3213 = fmul fast float %3199, %3211
  %3214 = fmul fast float %3199, %3212
  %3215 = fadd fast float %3213, %2500
  %3216 = fadd fast float %3214, %2501
  %3217 = fsub fast float %2998, %2510
  %3218 = fmul fast float %3202, %3217
  %3219 = fadd fast float %3218, %2510
  %3220 = fsub fast float %2995, %2509
  %3221 = fmul fast float %3205, %3220
  %3222 = fadd fast float %3221, %2509
  %3223 = fsub fast float %3074, %2511
  %3224 = fmul fast float %3208, %3223
  %3225 = fadd fast float %3224, %2511
  br label %3278

; <label>:3226                                    ; preds = %3196
  %3227 = icmp eq i32 %3194, 4
  br i1 %3227, label %3228, label %3262

; <label>:3228                                    ; preds = %3226
  %3229 = fmul fast float %3199, %2996
  %3230 = fmul fast float %3199, %2997
  %3231 = fadd fast float %3229, %2500
  %3232 = fadd fast float %3230, %2501
  %3233 = call float @dx.op.binary.f32(i32 36, float %2510, float %2998)  ; FMin(a,b)
  %3234 = fsub fast float %3233, %2510
  %3235 = fmul fast float %3234, %3202
  %3236 = fadd fast float %3235, %2510
  %3237 = fadd fast float %2995, %2509
  %3238 = fmul fast float %3237, 0x3FF337FAE0000000
  %3239 = fmul fast float %2509, %2509
  %3240 = fmul fast float %2995, %2995
  %3241 = fadd fast float %3240, %3239
  %3242 = fmul fast float %3241, 0x3FE5152B00000000
  %3243 = fmul fast float %2509, 0xBFCC1F85E0000000
  %3244 = fmul fast float %3243, %2995
  %3245 = fadd fast float %3244, 0xBFE1363700000000
  %3246 = fadd fast float %3245, %3238
  %3247 = fsub fast float %3246, %3242
  %3248 = fmul fast float %3237, 0x3FBA6F0D00000000
  %3249 = fmul fast float %3241, 0x3FD0432880000000
  %3250 = fmul fast float %2509, 0xBFEF110800000000
  %3251 = fmul fast float %3250, %2995
  %3252 = fadd fast float %3251, 1.000000e+00
  %3253 = fsub fast float %3252, %3248
  %3254 = fadd fast float %3253, %3249
  %3255 = fdiv fast float %3247, %3254
  %3256 = call float @dx.op.unary.f32(i32 7, float %3255)  ; Saturate(value)
  %3257 = fsub fast float %3256, %2509
  %3258 = fmul fast float %3257, %3205
  %3259 = fadd fast float %3258, %2509
  %3260 = fmul fast float %3208, %3074
  %3261 = fadd fast float %3260, %2511
  br label %3278

; <label>:3262                                    ; preds = %3226
  %3263 = icmp eq i32 %3194, 8
  br i1 %3263, label %3264, label %3278

; <label>:3264                                    ; preds = %3262
  %3265 = fmul fast float %3199, %2996
  %3266 = fmul fast float %3199, %2997
  %3267 = fadd fast float %3265, %2500
  %3268 = fadd fast float %3266, %2501
  %3269 = call float @dx.op.binary.f32(i32 36, float %2510, float %2998)  ; FMin(a,b)
  %3270 = fsub fast float %3269, %2510
  %3271 = fmul fast float %3270, %3202
  %3272 = fadd fast float %3271, %2510
  %3273 = fsub fast float %2995, %2509
  %3274 = fmul fast float %3205, %3273
  %3275 = fadd fast float %3274, %2509
  %3276 = fmul fast float %3208, %3074
  %3277 = fadd fast float %3276, %2511
  br label %3278

; <label>:3278                                    ; preds = %3264, %3262, %3228, %3210, %3185, %2694, %2513, %2499
  %3279 = phi float [ %2500, %3185 ], [ %2500, %2694 ], [ %2500, %2499 ], [ %2500, %2513 ], [ %3215, %3210 ], [ %3231, %3228 ], [ %2500, %3262 ], [ %3267, %3264 ]
  %3280 = phi float [ %2501, %3185 ], [ %2501, %2694 ], [ %2501, %2499 ], [ %2501, %2513 ], [ %3216, %3210 ], [ %3232, %3228 ], [ %2501, %3262 ], [ %3268, %3264 ]
  %3281 = phi float [ %3186, %3185 ], [ %2502, %2694 ], [ %2502, %2499 ], [ %2502, %2513 ], [ %3186, %3210 ], [ %3186, %3228 ], [ %3186, %3262 ], [ %3186, %3264 ]
  %3282 = phi float [ %3187, %3185 ], [ %2503, %2694 ], [ %2503, %2499 ], [ %2503, %2513 ], [ %3187, %3210 ], [ %3187, %3228 ], [ %3187, %3262 ], [ %3187, %3264 ]
  %3283 = phi float [ %3188, %3185 ], [ %2504, %2694 ], [ %2504, %2499 ], [ %2504, %2513 ], [ %3188, %3210 ], [ %3188, %3228 ], [ %3188, %3262 ], [ %3188, %3264 ]
  %3284 = phi float [ %3189, %3185 ], [ %2505, %2694 ], [ %2505, %2499 ], [ %2505, %2513 ], [ %3189, %3210 ], [ %3189, %3228 ], [ %3189, %3262 ], [ %3189, %3264 ]
  %3285 = phi float [ %3190, %3185 ], [ %2506, %2694 ], [ %2506, %2499 ], [ %2506, %2513 ], [ %3190, %3210 ], [ %3190, %3228 ], [ %3190, %3262 ], [ %3190, %3264 ]
  %3286 = phi float [ %3191, %3185 ], [ %2507, %2694 ], [ %2507, %2499 ], [ %2507, %2513 ], [ %3191, %3210 ], [ %3191, %3228 ], [ %3191, %3262 ], [ %3191, %3264 ]
  %3287 = phi float [ %3192, %3185 ], [ %2508, %2694 ], [ %2508, %2499 ], [ %2508, %2513 ], [ %3192, %3210 ], [ %3192, %3228 ], [ %3192, %3262 ], [ %3192, %3264 ]
  %3288 = phi float [ %2509, %3185 ], [ %2509, %2694 ], [ %2509, %2499 ], [ %2509, %2513 ], [ %3222, %3210 ], [ %3259, %3228 ], [ %2509, %3262 ], [ %3275, %3264 ]
  %3289 = phi float [ %2510, %3185 ], [ %2510, %2694 ], [ %2510, %2499 ], [ %2510, %2513 ], [ %3219, %3210 ], [ %3236, %3228 ], [ %2510, %3262 ], [ %3272, %3264 ]
  %3290 = phi float [ %2511, %3185 ], [ %2511, %2694 ], [ %2511, %2499 ], [ %2511, %2513 ], [ %3225, %3210 ], [ %3261, %3228 ], [ %2511, %3262 ], [ %3277, %3264 ]
  %3291 = phi float [ %3193, %3185 ], [ %2512, %2694 ], [ %2512, %2499 ], [ %2512, %2513 ], [ %3193, %3210 ], [ %3193, %3228 ], [ %3193, %3262 ], [ %3193, %3264 ]
  %3292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3293 = extractvalue %dx.types.CBufRet.f32 %3292, 0
  %3294 = call float @dx.op.dot2.f32(i32 54, float %3279, float %3280, float %3279, float %3280)  ; Dot2(ax,ay,bx,by)
  %3295 = fmul fast float %3294, 0x3FE3333340000000
  %3296 = fsub fast float 1.000000e+00, %3295
  %3297 = call float @dx.op.dot3.f32(i32 55, float %3279, float %3280, float %3296, float %3279, float %3280, float %3296)  ; Dot3(ax,ay,az,bx,by,bz)
  %3298 = call float @dx.op.unary.f32(i32 25, float %3297)  ; Rsqrt(value)
  %3299 = fmul fast float %3298, %3279
  %3300 = fmul fast float %3298, %3280
  %3301 = fmul fast float %3296, %3298
  %3302 = fmul fast float %3301, %92
  %3303 = fmul fast float %3301, %94
  %3304 = fmul fast float %3301, %96
  %3305 = fmul fast float %3299, %64
  %3306 = fmul fast float %3299, %65
  %3307 = fmul fast float %3299, %66
  %3308 = fadd fast float %3302, %3305
  %3309 = fadd fast float %3303, %3306
  %3310 = fadd fast float %3304, %3307
  %3311 = fmul fast float %106, %3300
  %3312 = fmul fast float %107, %3300
  %3313 = fmul fast float %108, %3300
  %3314 = fadd fast float %3308, %3311
  %3315 = fadd fast float %3309, %3312
  %3316 = fadd fast float %3310, %3313
  %3317 = call float @dx.op.dot3.f32(i32 55, float %3314, float %3315, float %3316, float %3314, float %3315, float %3316)  ; Dot3(ax,ay,az,bx,by,bz)
  %3318 = call float @dx.op.unary.f32(i32 25, float %3317)  ; Rsqrt(value)
  %3319 = fmul fast float %3314, %3318
  %3320 = fmul fast float %3315, %3318
  %3321 = fmul fast float %3316, %3318
  %3322 = icmp eq i32 %35, 65535
  br i1 %3322, label %3837, label %3323

; <label>:3323                                    ; preds = %3278
  %3324 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3325 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3326 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3327 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3328 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3329 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3330 = fadd fast float %3324, %36
  %3331 = fadd fast float %3325, %37
  %3332 = fadd fast float %3326, %38
  %3333 = fadd fast float %3327, %36
  %3334 = fadd fast float %3328, %37
  %3335 = fadd fast float %3329, %38
  %3336 = mul i32 %35, 48
  %3337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.f32 %3337, 0
  %3339 = extractvalue %dx.types.ResRet.f32 %3337, 1
  %3340 = extractvalue %dx.types.ResRet.f32 %3337, 2
  %3341 = add i32 %3336, 16
  %3342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.f32 %3342, 0
  %3344 = extractvalue %dx.types.ResRet.f32 %3342, 1
  %3345 = extractvalue %dx.types.ResRet.f32 %3342, 2
  %3346 = add i32 %3336, 32
  %3347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.f32 %3347, 0
  %3349 = extractvalue %dx.types.ResRet.f32 %3347, 1
  %3350 = extractvalue %dx.types.ResRet.f32 %3347, 2
  %3351 = extractvalue %dx.types.ResRet.f32 %3347, 3
  %3352 = bitcast float %3351 to i32
  %3353 = fmul fast float %3338, %36
  %3354 = fmul fast float %3339, %37
  %3355 = fmul fast float %3340, %38
  %3356 = fsub fast float %3353, %3343
  %3357 = fsub fast float %3354, %3344
  %3358 = fsub fast float %3355, %3345
  %3359 = call float @dx.op.unary.f32(i32 7, float %3356)  ; Saturate(value)
  %3360 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3361 = call float @dx.op.unary.f32(i32 7, float %3358)  ; Saturate(value)
  %3362 = fmul fast float %3359, %3348
  %3363 = fmul fast float %3360, %3349
  %3364 = fmul fast float %3361, %3350
  %3365 = fadd fast float %3348, -1.000000e+00
  %3366 = fadd fast float %3349, -1.000000e+00
  %3367 = fadd fast float %3350, -1.000000e+00
  %3368 = call float @dx.op.unary.f32(i32 27, float %3362)  ; Round_ni(value)
  %3369 = call float @dx.op.unary.f32(i32 27, float %3363)  ; Round_ni(value)
  %3370 = call float @dx.op.unary.f32(i32 27, float %3364)  ; Round_ni(value)
  %3371 = call float @dx.op.binary.f32(i32 36, float %3368, float %3365)  ; FMin(a,b)
  %3372 = call float @dx.op.binary.f32(i32 36, float %3369, float %3366)  ; FMin(a,b)
  %3373 = call float @dx.op.binary.f32(i32 36, float %3370, float %3367)  ; FMin(a,b)
  %3374 = fmul fast float %3373, %3349
  %3375 = fadd fast float %3374, %3372
  %3376 = fmul fast float %3375, %3348
  %3377 = fadd fast float %3376, %3371
  %3378 = fptosi float %3377 to i32
  %3379 = add nsw i32 %3378, %3352
  %3380 = shl nsw i32 %3379, 2
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = lshr i32 %3382, 16
  %3384 = icmp eq i32 %3383, 0
  br i1 %3384, label %3806, label %3385

; <label>:3385                                    ; preds = %3323
  br label %3386

; <label>:3386                                    ; preds = %3507, %3385
  %3387 = phi i32 [ %3409, %3507 ], [ %3383, %3385 ]
  %3388 = phi float [ %3508, %3507 ], [ 0.000000e+00, %3385 ]
  %3389 = phi float [ %3509, %3507 ], [ %3293, %3385 ]
  %3390 = phi float [ %3510, %3507 ], [ %3291, %3385 ]
  %3391 = phi float [ %3511, %3507 ], [ %3290, %3385 ]
  %3392 = phi float [ %3512, %3507 ], [ 0.000000e+00, %3385 ]
  %3393 = phi float [ %3513, %3507 ], [ %3284, %3385 ]
  %3394 = phi float [ %3514, %3507 ], [ %3285, %3385 ]
  %3395 = phi float [ %3515, %3507 ], [ %3286, %3385 ]
  %3396 = phi float [ %3516, %3507 ], [ %3319, %3385 ]
  %3397 = phi float [ %3517, %3507 ], [ %3320, %3385 ]
  %3398 = phi float [ %3518, %3507 ], [ %3321, %3385 ]
  %3399 = phi float [ %3519, %3507 ], [ %3289, %3385 ]
  %3400 = phi float [ %3520, %3507 ], [ %3288, %3385 ]
  %3401 = phi float [ %3521, %3507 ], [ 0.000000e+00, %3385 ]
  %3402 = phi float [ %3522, %3507 ], [ %3287, %3385 ]
  %3403 = phi float [ %3523, %3507 ], [ %3281, %3385 ]
  %3404 = phi float [ %3524, %3507 ], [ %3282, %3385 ]
  %3405 = phi float [ %3525, %3507 ], [ %3283, %3385 ]
  %3406 = shl nuw nsw i32 %3387, 2
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = lshr i32 %3408, 16
  %3410 = shl i32 %3408, 8
  %3411 = and i32 %3410, 16776960
  %3412 = or i32 %3411, 48
  %3413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3415 = extractvalue %dx.types.ResRet.f32 %3413, 1
  %3416 = extractvalue %dx.types.ResRet.f32 %3413, 2
  %3417 = or i32 %3411, 64
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = extractvalue %dx.types.ResRet.i32 %3418, 1
  %3421 = or i32 %3411, 80
  %3422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 2
  %3424 = extractvalue %dx.types.ResRet.f32 %3422, 3
  %3425 = or i32 %3411, 96
  %3426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.f32 %3426, 0
  %3428 = extractvalue %dx.types.ResRet.f32 %3426, 1
  %3429 = extractvalue %dx.types.ResRet.f32 %3426, 2
  %3430 = extractvalue %dx.types.ResRet.f32 %3426, 3
  %3431 = or i32 %3411, 112
  %3432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 2
  %3434 = or i32 %3411, 128
  %3435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3434, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = extractvalue %dx.types.ResRet.f32 %3435, 1
  %3438 = extractvalue %dx.types.ResRet.f32 %3435, 2
  %3439 = extractvalue %dx.types.ResRet.f32 %3435, 3
  %3440 = or i32 %3411, 144
  %3441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3442 = extractvalue %dx.types.ResRet.f32 %3441, 0
  %3443 = extractvalue %dx.types.ResRet.f32 %3441, 1
  %3444 = extractvalue %dx.types.ResRet.f32 %3441, 2
  %3445 = extractvalue %dx.types.ResRet.f32 %3441, 3
  %3446 = or i32 %3411, 160
  %3447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.f32 %3447, 1
  %3450 = extractvalue %dx.types.ResRet.f32 %3447, 2
  %3451 = extractvalue %dx.types.ResRet.f32 %3447, 3
  %3452 = or i32 %3411, 192
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = or i32 %3411, 208
  %3456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3455, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.f32 %3456, 0
  %3458 = or i32 %3411, 248
  %3459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.f32 %3459, 0
  %3461 = extractvalue %dx.types.ResRet.f32 %3459, 1
  %3462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.f32 %3462, 0
  %3464 = extractvalue %dx.types.ResRet.f32 %3462, 1
  %3465 = extractvalue %dx.types.ResRet.f32 %3462, 2
  %3466 = extractvalue %dx.types.ResRet.f32 %3462, 3
  %3467 = call float @dx.op.dot4.f32(i32 56, float %3463, float %3464, float %3465, float %3466, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3468 = or i32 %3411, 16
  %3469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.ResRet.f32 %3469, 1
  %3472 = extractvalue %dx.types.ResRet.f32 %3469, 2
  %3473 = extractvalue %dx.types.ResRet.f32 %3469, 3
  %3474 = call float @dx.op.dot4.f32(i32 56, float %3470, float %3471, float %3472, float %3473, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3475 = or i32 %3411, 32
  %3476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = extractvalue %dx.types.ResRet.f32 %3476, 3
  %3481 = call float @dx.op.dot4.f32(i32 56, float %3477, float %3478, float %3479, float %3480, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3482 = call float @dx.op.unary.f32(i32 27, float %3467)  ; Round_ni(value)
  %3483 = call float @dx.op.unary.f32(i32 6, float %3482)  ; FAbs(value)
  %3484 = call float @dx.op.unary.f32(i32 27, float %3474)  ; Round_ni(value)
  %3485 = call float @dx.op.unary.f32(i32 6, float %3484)  ; FAbs(value)
  %3486 = call float @dx.op.unary.f32(i32 6, float %3481)  ; FAbs(value)
  %3487 = call float @dx.op.unary.f32(i32 27, float %3486)  ; Round_ni(value)
  %3488 = fadd fast float %3485, %3483
  %3489 = fadd fast float %3488, %3487
  %3490 = fcmp fast oeq float %3489, 0.000000e+00
  %3491 = call float @dx.op.dot4.f32(i32 56, float %3463, float %3464, float %3465, float %3466, float %3330, float %3331, float %3332, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3492 = call float @dx.op.dot4.f32(i32 56, float %3470, float %3471, float %3472, float %3473, float %3330, float %3331, float %3332, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3493 = call float @dx.op.dot4.f32(i32 56, float %3463, float %3464, float %3465, float %3466, float %3333, float %3334, float %3335, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3494 = call float @dx.op.dot4.f32(i32 56, float %3470, float %3471, float %3472, float %3473, float %3333, float %3334, float %3335, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3495 = fsub fast float %3491, %3467
  %3496 = fsub fast float %3493, %3467
  %3497 = fsub fast float %3492, %3474
  %3498 = fsub fast float %3494, %3474
  %3499 = call float @dx.op.dot3.f32(i32 55, float %3414, float %3415, float %3416, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %3500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3501 = extractvalue %dx.types.CBufRet.f32 %3500, 2
  %3502 = fadd fast float %3501, %3499
  %3503 = call float @dx.op.unary.f32(i32 7, float %3502)  ; Saturate(value)
  %3504 = extractvalue %dx.types.CBufRet.f32 %3500, 0
  %3505 = fcmp fast ogt float %3503, %3504
  %3506 = and i1 %3490, %3505
  br i1 %3506, label %3527, label %3507

; <label>:3507                                    ; preds = %3792, %3610, %3527, %3386
  %3508 = phi float [ %3388, %3527 ], [ %3613, %3610 ], [ %3613, %3792 ], [ %3388, %3386 ]
  %3509 = phi float [ %3389, %3527 ], [ %3389, %3610 ], [ %3767, %3792 ], [ %3389, %3386 ]
  %3510 = phi float [ %3390, %3527 ], [ %3390, %3610 ], [ %3765, %3792 ], [ %3390, %3386 ]
  %3511 = phi float [ %3391, %3527 ], [ %3391, %3610 ], [ %3737, %3792 ], [ %3391, %3386 ]
  %3512 = phi float [ %3392, %3527 ], [ %3392, %3610 ], [ %3735, %3792 ], [ %3392, %3386 ]
  %3513 = phi float [ %3393, %3527 ], [ %3393, %3610 ], [ %3802, %3792 ], [ %3393, %3386 ]
  %3514 = phi float [ %3394, %3527 ], [ %3394, %3610 ], [ %3803, %3792 ], [ %3394, %3386 ]
  %3515 = phi float [ %3395, %3527 ], [ %3395, %3610 ], [ %3804, %3792 ], [ %3395, %3386 ]
  %3516 = phi float [ %3396, %3527 ], [ %3396, %3610 ], [ %3716, %3792 ], [ %3396, %3386 ]
  %3517 = phi float [ %3397, %3527 ], [ %3397, %3610 ], [ %3717, %3792 ], [ %3397, %3386 ]
  %3518 = phi float [ %3398, %3527 ], [ %3398, %3610 ], [ %3718, %3792 ], [ %3398, %3386 ]
  %3519 = phi float [ %3399, %3527 ], [ %3399, %3610 ], [ %3745, %3792 ], [ %3399, %3386 ]
  %3520 = phi float [ %3400, %3527 ], [ %3400, %3610 ], [ %3742, %3792 ], [ %3400, %3386 ]
  %3521 = phi float [ %3401, %3527 ], [ %3401, %3610 ], [ %3739, %3792 ], [ %3401, %3386 ]
  %3522 = phi float [ %3402, %3527 ], [ %3402, %3610 ], [ %3733, %3792 ], [ %3402, %3386 ]
  %3523 = phi float [ %3403, %3527 ], [ %3403, %3610 ], [ %3728, %3792 ], [ %3403, %3386 ]
  %3524 = phi float [ %3404, %3527 ], [ %3404, %3610 ], [ %3729, %3792 ], [ %3404, %3386 ]
  %3525 = phi float [ %3405, %3527 ], [ %3405, %3610 ], [ %3730, %3792 ], [ %3405, %3386 ]
  %3526 = icmp eq i32 %3409, 0
  br i1 %3526, label %3805, label %3386

; <label>:3527                                    ; preds = %3386
  %3528 = extractvalue %dx.types.ResRet.f32 %3413, 3
  %3529 = extractvalue %dx.types.ResRet.f32 %3432, 3
  %3530 = extractvalue %dx.types.ResRet.f32 %3432, 1
  %3531 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3532 = extractvalue %dx.types.ResRet.f32 %3422, 1
  %3533 = extractvalue %dx.types.ResRet.f32 %3422, 0
  %3534 = extractvalue %dx.types.ResRet.i32 %3418, 3
  %3535 = extractvalue %dx.types.ResRet.i32 %3418, 2
  %3536 = bitcast float %3528 to i32
  %3537 = add i32 %3534, 0
  %3538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3537, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3540 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3538, %dx.types.Handle %3539, float %3467, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float %3495, float %3497, float undef, float %3496, float %3498, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3541 = extractvalue %dx.types.ResRet.f32 %3540, 0
  %3542 = fmul fast float %3541, %3533
  %3543 = fadd fast float %3542, %3532
  %3544 = call float @dx.op.unary.f32(i32 7, float %3543)  ; Saturate(value)
  %3545 = fmul fast float %3467, %3427
  %3546 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3474, float %3545)  ; FMad(a,b,c)
  %3547 = fadd fast float %3546, %3531
  %3548 = fmul fast float %3467, %3429
  %3549 = call float @dx.op.tertiary.f32(i32 46, float %3430, float %3474, float %3548)  ; FMad(a,b,c)
  %3550 = fadd fast float %3549, %3530
  %3551 = fmul fast float %3495, %3427
  %3552 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3497, float %3551)  ; FMad(a,b,c)
  %3553 = fmul fast float %3495, %3429
  %3554 = call float @dx.op.tertiary.f32(i32 46, float %3430, float %3497, float %3553)  ; FMad(a,b,c)
  %3555 = fmul fast float %3496, %3427
  %3556 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3498, float %3555)  ; FMad(a,b,c)
  %3557 = fmul fast float %3496, %3429
  %3558 = call float @dx.op.tertiary.f32(i32 46, float %3430, float %3498, float %3557)  ; FMad(a,b,c)
  %3559 = add i32 %3535, 0
  %3560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3559, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3561 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3560, %dx.types.Handle %3539, float %3547, float %3550, float undef, float undef, i32 0, i32 0, i32 undef, float %3552, float %3554, float undef, float %3556, float %3558, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3562 = extractvalue %dx.types.ResRet.f32 %3561, 0
  %3563 = and i32 %3536, 1024
  %3564 = icmp ne i32 %3563, 0
  %3565 = fcmp fast ogt float %3562, 0x3FE0101020000000
  %3566 = uitofp i1 %3565 to float
  %3567 = select i1 %3564, float %3566, float %3562
  %3568 = and i32 %3536, 8192
  %3569 = icmp ne i32 %3568, 0
  %3570 = select i1 %3569, float %3529, float 1.000000e+00
  %3571 = fmul fast float %3467, 2.000000e+00
  %3572 = fadd fast float %3571, -1.000000e+00
  %3573 = call float @dx.op.unary.f32(i32 6, float %3572)  ; FAbs(value)
  %3574 = fmul fast float %3573, %3460
  %3575 = fsub fast float %3574, %3460
  %3576 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3577 = fmul fast float %3474, 2.000000e+00
  %3578 = fadd fast float %3577, -1.000000e+00
  %3579 = call float @dx.op.unary.f32(i32 6, float %3578)  ; FAbs(value)
  %3580 = fmul fast float %3579, %3461
  %3581 = fsub fast float %3580, %3461
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3583 = fmul fast float %3486, %3423
  %3584 = fsub fast float %3583, %3423
  %3585 = call float @dx.op.unary.f32(i32 7, float %3584)  ; Saturate(value)
  %3586 = fmul fast float %3544, %3570
  %3587 = fmul fast float %3586, %3541
  %3588 = fmul fast float %3587, %3576
  %3589 = fmul fast float %3588, %3567
  %3590 = fmul fast float %3589, %3582
  %3591 = fmul fast float %3590, %3585
  %3592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3593 = extractvalue %dx.types.CBufRet.f32 %3592, 1
  %3594 = extractvalue %dx.types.CBufRet.f32 %3592, 0
  %3595 = fsub fast float %3503, %3594
  %3596 = fmul fast float %3595, %3593
  %3597 = call float @dx.op.unary.f32(i32 7, float %3596)  ; Saturate(value)
  %3598 = fmul fast float %3591, %3424
  %3599 = fadd fast float %3591, %3424
  %3600 = fmul fast float %3599, %3433
  %3601 = fsub fast float %3600, %3433
  %3602 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  %3603 = and i32 %3536, 128
  %3604 = icmp ne i32 %3603, 0
  %3605 = select i1 %3604, float %3602, float %3598
  %3606 = fmul fast float %3605, %3597
  %3607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3608 = extractvalue %dx.types.CBufRet.f32 %3607, 0
  %3609 = fcmp fast ugt float %3606, %3608
  br i1 %3609, label %3610, label %3507

; <label>:3610                                    ; preds = %3527
  %3611 = select i1 %3569, float %3606, float 0.000000e+00
  %3612 = fadd fast float %3611, %3388
  %3613 = call float @dx.op.unary.f32(i32 7, float %3612)  ; Saturate(value)
  br i1 %3569, label %3507, label %3614

; <label>:3614                                    ; preds = %3610
  %3615 = and i32 %3536, 4
  %3616 = and i32 %3536, 8
  %3617 = add i32 %3419, 0
  %3618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3617, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3620 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3618, %dx.types.Handle %3619, float %3547, float %3550, float undef, float undef, i32 0, i32 0, i32 undef, float %3552, float %3554, float undef, float %3556, float %3558, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.ResRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.ResRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.ResRet.f32 %3620, 3
  %3625 = bitcast float %3445 to i32
  %3626 = and i32 %3625, 255
  %3627 = uitofp i32 %3626 to float
  %3628 = lshr i32 %3625, 8
  %3629 = and i32 %3628, 255
  %3630 = uitofp i32 %3629 to float
  %3631 = fmul fast float %3624, %3627
  %3632 = fadd fast float %3631, %3630
  %3633 = fmul fast float %3632, 0x3F70101000000000
  %3634 = add i32 %3420, 0
  %3635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3634, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3636 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3635, %dx.types.Handle %3619, float %3547, float %3550, float undef, float undef, i32 0, i32 0, i32 undef, float %3552, float %3554, float undef, float %3556, float %3558, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.ResRet.f32 %3636, 2
  %3640 = extractvalue %dx.types.ResRet.f32 %3636, 3
  %3641 = bitcast float %3439 to i32
  %3642 = and i32 %3641, 255
  %3643 = uitofp i32 %3642 to float
  %3644 = lshr i32 %3641, 8
  %3645 = and i32 %3644, 255
  %3646 = uitofp i32 %3645 to float
  %3647 = lshr i32 %3641, 16
  %3648 = and i32 %3647, 255
  %3649 = uitofp i32 %3648 to float
  %3650 = fmul fast float %3649, 0x3F70101000000000
  %3651 = fmul fast float %3637, %3643
  %3652 = fadd fast float %3651, %3646
  %3653 = fmul fast float %3652, 0x3F70101000000000
  %3654 = fadd fast float %3638, -5.000000e-01
  %3655 = fadd fast float %3640, -5.000000e-01
  %3656 = fmul fast float %3654, %3650
  %3657 = fmul fast float %3655, %3650
  %3658 = fadd fast float %3656, 5.000000e-01
  %3659 = fadd fast float %3657, 5.000000e-01
  %3660 = fmul fast float %3621, %3448
  %3661 = fmul fast float %3622, %3449
  %3662 = fmul fast float %3623, %3450
  %3663 = fmul fast float %3658, 2.000000e+00
  %3664 = fadd fast float %3663, -1.000000e+00
  %3665 = fmul fast float %3659, 2.000000e+00
  %3666 = fadd fast float %3665, -1.000000e+00
  %3667 = fadd fast float %3664, %3666
  %3668 = fmul fast float %3667, 5.000000e-01
  %3669 = fsub fast float %3664, %3666
  %3670 = fmul fast float %3669, 5.000000e-01
  %3671 = call float @dx.op.unary.f32(i32 6, float %3668)  ; FAbs(value)
  %3672 = fsub fast float 1.000000e+00, %3671
  %3673 = call float @dx.op.unary.f32(i32 6, float %3670)  ; FAbs(value)
  %3674 = fsub fast float %3672, %3673
  %3675 = call float @dx.op.dot3.f32(i32 55, float %3668, float %3670, float %3674, float %3668, float %3670, float %3674)  ; Dot3(ax,ay,az,bx,by,bz)
  %3676 = call float @dx.op.unary.f32(i32 25, float %3675)  ; Rsqrt(value)
  %3677 = fmul fast float %3668, %3676
  %3678 = fmul fast float %3670, %3676
  %3679 = fmul fast float %3676, %3674
  %3680 = fmul fast float %3679, %3414
  %3681 = fmul fast float %3679, %3415
  %3682 = fmul fast float %3679, %3416
  %3683 = fmul fast float %3677, %3436
  %3684 = fmul fast float %3677, %3437
  %3685 = fmul fast float %3677, %3438
  %3686 = fadd fast float %3683, %3680
  %3687 = fadd fast float %3684, %3681
  %3688 = fadd fast float %3685, %3682
  %3689 = fmul fast float %3678, %3442
  %3690 = fmul fast float %3678, %3443
  %3691 = fmul fast float %3678, %3444
  %3692 = fadd fast float %3686, %3689
  %3693 = fadd fast float %3687, %3690
  %3694 = fadd fast float %3688, %3691
  %3695 = call float @dx.op.dot3.f32(i32 55, float %3692, float %3693, float %3694, float %3692, float %3693, float %3694)  ; Dot3(ax,ay,az,bx,by,bz)
  %3696 = call float @dx.op.unary.f32(i32 25, float %3695)  ; Rsqrt(value)
  %3697 = fmul fast float %3692, %3696
  %3698 = fmul fast float %3693, %3696
  %3699 = fmul fast float %3694, %3696
  %3700 = icmp ne i32 %3616, 0
  %3701 = select i1 %3700, float 1.000000e+00, float 0.000000e+00
  %3702 = fmul fast float %3606, %3701
  %3703 = and i32 %3536, 1
  %3704 = icmp eq i32 %3703, 0
  br i1 %3704, label %3705, label %3709

; <label>:3705                                    ; preds = %3614
  %3706 = fsub fast float %3697, %3396
  %3707 = fsub fast float %3698, %3397
  %3708 = fsub fast float %3699, %3398
  br label %3709

; <label>:3709                                    ; preds = %3705, %3614
  %3710 = phi float [ %3706, %3705 ], [ %3697, %3614 ]
  %3711 = phi float [ %3707, %3705 ], [ %3698, %3614 ]
  %3712 = phi float [ %3708, %3705 ], [ %3699, %3614 ]
  %3713 = fmul float %3712, %3702
  %3714 = fmul float %3711, %3702
  %3715 = fmul float %3710, %3702
  %3716 = fadd fast float %3715, %3396
  %3717 = fadd fast float %3714, %3397
  %3718 = fadd fast float %3713, %3398
  %3719 = icmp ne i32 %3615, 0
  %3720 = select i1 %3719, float 1.000000e+00, float 0.000000e+00
  %3721 = fmul fast float %3606, %3720
  %3722 = fsub fast float %3660, %3403
  %3723 = fsub fast float %3661, %3404
  %3724 = fsub fast float %3662, %3405
  %3725 = fmul fast float %3722, %3721
  %3726 = fmul fast float %3723, %3721
  %3727 = fmul fast float %3724, %3721
  %3728 = fadd fast float %3725, %3403
  %3729 = fadd fast float %3726, %3404
  %3730 = fadd fast float %3727, %3405
  %3731 = fsub fast float %3633, %3402
  %3732 = fmul fast float %3731, %3721
  %3733 = fadd fast float %3732, %3402
  %3734 = fmul fast float %3721, %3392
  %3735 = fsub fast float %3392, %3734
  %3736 = fmul fast float %3721, %3391
  %3737 = fsub fast float %3391, %3736
  %3738 = fadd fast float %3606, %3401
  %3739 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3740 = fsub fast float %3653, %3400
  %3741 = fmul fast float %3740, %3702
  %3742 = fadd fast float %3741, %3400
  %3743 = fsub fast float %3639, %3399
  %3744 = fmul fast float %3743, %3702
  %3745 = fadd fast float %3744, %3399
  %3746 = call float @dx.op.dot3.f32(i32 55, float %3660, float %3661, float %3662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3748 = extractvalue %dx.types.CBufRet.f32 %3747, 0
  %3749 = extractvalue %dx.types.CBufRet.f32 %3747, 1
  %3750 = fmul fast float %3749, %3746
  %3751 = fadd fast float %3750, %3748
  %3752 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3753 = bitcast float %3451 to i32
  %3754 = and i32 %3753, 65535
  %3755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3754)  ; LegacyF16ToF32(value)
  %3756 = lshr i32 %3753, 16
  %3757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3756)  ; LegacyF16ToF32(value)
  %3758 = fcmp fast oge float %3755, 0.000000e+00
  %3759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3759, 0
  %3761 = select i1 %3758, float %3755, float %3760
  %3762 = fadd fast float %3761, %3757
  %3763 = fsub fast float %3752, %3390
  %3764 = fmul fast float %3763, %3606
  %3765 = fadd fast float %3764, %3390
  %3766 = fmul fast float %3762, %3606
  %3767 = call float @dx.op.binary.f32(i32 35, float %3389, float %3766)  ; FMax(a,b)
  %3768 = and i32 %3536, 16
  %3769 = icmp eq i32 %3768, 0
  br i1 %3769, label %3792, label %3770

; <label>:3770                                    ; preds = %3709
  %3771 = bitcast float %3457 to i32
  %3772 = add i32 %3454, 0
  %3773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3772, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3774 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3773, %dx.types.Handle %3619, float %3547, float %3550, float undef, float undef, i32 0, i32 0, i32 undef, float %3552, float %3554, float undef, float %3556, float %3558, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3775 = extractvalue %dx.types.ResRet.f32 %3774, 0
  %3776 = extractvalue %dx.types.ResRet.f32 %3774, 1
  %3777 = extractvalue %dx.types.ResRet.f32 %3774, 2
  %3778 = and i32 %3771, 65535
  %3779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3778)  ; LegacyF16ToF32(value)
  %3780 = fmul fast float %3775, %3448
  %3781 = fmul fast float %3776, %3449
  %3782 = fmul fast float %3777, %3450
  %3783 = and i32 %3536, 16384
  %3784 = icmp ne i32 %3783, 0
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 0
  %3787 = select i1 %3784, float %3786, float 1.000000e+00
  %3788 = fmul fast float %3787, %3779
  %3789 = fmul fast float %3780, %3788
  %3790 = fmul fast float %3781, %3788
  %3791 = fmul fast float %3782, %3788
  br label %3792

; <label>:3792                                    ; preds = %3770, %3709
  %3793 = phi float [ %3789, %3770 ], [ 0.000000e+00, %3709 ]
  %3794 = phi float [ %3790, %3770 ], [ 0.000000e+00, %3709 ]
  %3795 = phi float [ %3791, %3770 ], [ 0.000000e+00, %3709 ]
  %3796 = fsub fast float %3793, %3393
  %3797 = fsub fast float %3794, %3394
  %3798 = fsub fast float %3795, %3395
  %3799 = fmul fast float %3796, %3606
  %3800 = fmul fast float %3797, %3606
  %3801 = fmul fast float %3798, %3606
  %3802 = fadd fast float %3799, %3393
  %3803 = fadd fast float %3800, %3394
  %3804 = fadd fast float %3801, %3395
  br label %3507

; <label>:3805                                    ; preds = %3507
  br label %3806

; <label>:3806                                    ; preds = %3805, %3323
  %3807 = phi float [ 0.000000e+00, %3323 ], [ %3508, %3805 ]
  %3808 = phi float [ %3293, %3323 ], [ %3509, %3805 ]
  %3809 = phi float [ %3291, %3323 ], [ %3510, %3805 ]
  %3810 = phi float [ %3290, %3323 ], [ %3511, %3805 ]
  %3811 = phi float [ 0.000000e+00, %3323 ], [ %3512, %3805 ]
  %3812 = phi float [ %3284, %3323 ], [ %3513, %3805 ]
  %3813 = phi float [ %3285, %3323 ], [ %3514, %3805 ]
  %3814 = phi float [ %3286, %3323 ], [ %3515, %3805 ]
  %3815 = phi float [ %3319, %3323 ], [ %3516, %3805 ]
  %3816 = phi float [ %3320, %3323 ], [ %3517, %3805 ]
  %3817 = phi float [ %3321, %3323 ], [ %3518, %3805 ]
  %3818 = phi float [ %3289, %3323 ], [ %3519, %3805 ]
  %3819 = phi float [ %3288, %3323 ], [ %3520, %3805 ]
  %3820 = phi float [ 0.000000e+00, %3323 ], [ %3521, %3805 ]
  %3821 = phi float [ %3287, %3323 ], [ %3522, %3805 ]
  %3822 = phi float [ %3281, %3323 ], [ %3523, %3805 ]
  %3823 = phi float [ %3282, %3323 ], [ %3524, %3805 ]
  %3824 = phi float [ %3283, %3323 ], [ %3525, %3805 ]
  %3825 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3816, float %3817, float %3815, float %3816, float %3817)  ; Dot3(ax,ay,az,bx,by,bz)
  %3826 = call float @dx.op.unary.f32(i32 25, float %3825)  ; Rsqrt(value)
  %3827 = fmul fast float %3826, %3815
  %3828 = fmul fast float %3826, %3816
  %3829 = fmul fast float %3826, %3817
  %3830 = fadd fast float %3820, %950
  %3831 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3832 = call float @dx.op.dot3.f32(i32 55, float %3827, float %3828, float %3829, float %3827, float %3828, float %3829)  ; Dot3(ax,ay,az,bx,by,bz)
  %3833 = call float @dx.op.unary.f32(i32 25, float %3832)  ; Rsqrt(value)
  %3834 = fmul fast float %3833, %3827
  %3835 = fmul fast float %3833, %3828
  %3836 = fmul fast float %3833, %3829
  br label %3837

; <label>:3837                                    ; preds = %3806, %3278
  %3838 = phi float [ %3834, %3806 ], [ %3319, %3278 ]
  %3839 = phi float [ %3835, %3806 ], [ %3320, %3278 ]
  %3840 = phi float [ %3836, %3806 ], [ %3321, %3278 ]
  %3841 = phi float [ %3822, %3806 ], [ %3281, %3278 ]
  %3842 = phi float [ %3823, %3806 ], [ %3282, %3278 ]
  %3843 = phi float [ %3824, %3806 ], [ %3283, %3278 ]
  %3844 = phi float [ %3812, %3806 ], [ %3284, %3278 ]
  %3845 = phi float [ %3813, %3806 ], [ %3285, %3278 ]
  %3846 = phi float [ %3814, %3806 ], [ %3286, %3278 ]
  %3847 = phi float [ %3821, %3806 ], [ %3287, %3278 ]
  %3848 = phi float [ %3831, %3806 ], [ %950, %3278 ]
  %3849 = phi float [ %3819, %3806 ], [ %3288, %3278 ]
  %3850 = phi float [ %3818, %3806 ], [ %3289, %3278 ]
  %3851 = phi float [ %3811, %3806 ], [ 0.000000e+00, %3278 ]
  %3852 = phi float [ %3810, %3806 ], [ %3290, %3278 ]
  %3853 = phi float [ %3807, %3806 ], [ 0.000000e+00, %3278 ]
  %3854 = phi float [ %3808, %3806 ], [ %3293, %3278 ]
  %3855 = phi float [ %3809, %3806 ], [ %3291, %3278 ]
  %3856 = fadd fast float %3847, 0xBFB99999A0000000
  %3857 = call float @dx.op.unary.f32(i32 7, float %3856)  ; Saturate(value)
  %3858 = fmul fast float %3857, 0x3FF1C71C80000000
  %3859 = call float @dx.op.binary.f32(i32 36, float %3847, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3860 = fsub fast float 1.000000e+00, %3858
  %3861 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3862 = fmul fast float %3861, %3841
  %3863 = fmul fast float %3861, %3842
  %3864 = fmul fast float %3861, %3843
  %3865 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3866 = call float @dx.op.unary.f32(i32 7, float %3863)  ; Saturate(value)
  %3867 = call float @dx.op.unary.f32(i32 7, float %3864)  ; Saturate(value)
  %3868 = fmul fast float %3858, %3841
  %3869 = fmul fast float %3858, %3842
  %3870 = fmul fast float %3858, %3843
  %3871 = fadd fast float %3868, %3859
  %3872 = fadd fast float %3869, %3859
  %3873 = fadd fast float %3870, %3859
  %3874 = call float @dx.op.unary.f32(i32 7, float %3871)  ; Saturate(value)
  %3875 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3876 = call float @dx.op.unary.f32(i32 7, float %3873)  ; Saturate(value)
  %3877 = call float @dx.op.unary.f32(i32 7, float %3849)  ; Saturate(value)
  %3878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.i32 %3878, 3
  %3880 = and i32 %3879, 8
  %3881 = icmp ne i32 %3880, 0
  %3882 = call float @dx.op.binary.f32(i32 35, float %3865, float %3841)  ; FMax(a,b)
  %3883 = call float @dx.op.binary.f32(i32 35, float %3866, float %3841)  ; FMax(a,b)
  %3884 = call float @dx.op.binary.f32(i32 35, float %3867, float %3841)  ; FMax(a,b)
  %3885 = call float @dx.op.dot3.f32(i32 55, float %3865, float %3866, float %3867, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3886 = select i1 %205, float %3841, float %3865
  %3887 = select i1 %205, float %3885, float %3866
  %3888 = select i1 %205, float 1.000000e+00, float %3867
  %3889 = select i1 %3881, float %3882, float %3886
  %3890 = select i1 %3881, float %3883, float %3887
  %3891 = select i1 %3881, float %3884, float %3888
  %3892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.CBufRet.f32 %3892, 1
  %3895 = extractvalue %dx.types.CBufRet.f32 %3892, 2
  %3896 = fadd fast float %3893, %166
  %3897 = fadd fast float %3894, %167
  %3898 = fadd fast float %3895, %168
  %3899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.CBufRet.f32 %3899, 1
  %3902 = fsub fast float %3896, %3900
  %3903 = fsub fast float %3897, %3901
  %3904 = fmul fast float %3902, %3902
  %3905 = fmul fast float %3903, %3903
  %3906 = fadd fast float %3904, %3905
  %3907 = call float @dx.op.unary.f32(i32 24, float %3906)  ; Sqrt(value)
  %3908 = extractvalue %dx.types.CBufRet.f32 %3899, 2
  %3909 = fcmp fast olt float %3907, %3908
  br i1 %3909, label %3910, label %3977

; <label>:3910                                    ; preds = %3837
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 0
  %3913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3914 = extractvalue %dx.types.CBufRet.f32 %3913, 0
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.CBufRet.f32 %3911, 1
  %3918 = extractvalue %dx.types.CBufRet.f32 %3913, 1
  %3919 = extractvalue %dx.types.CBufRet.f32 %3915, 1
  %3920 = extractvalue %dx.types.CBufRet.f32 %3911, 3
  %3921 = extractvalue %dx.types.CBufRet.f32 %3913, 3
  %3922 = extractvalue %dx.types.CBufRet.f32 %3915, 3
  %3923 = fadd fast float %3920, %3896
  %3924 = fadd fast float %3921, %3897
  %3925 = fadd fast float %3922, %3898
  %3926 = fmul fast float %3923, %3912
  %3927 = call float @dx.op.tertiary.f32(i32 46, float %3924, float %3914, float %3926)  ; FMad(a,b,c)
  %3928 = call float @dx.op.tertiary.f32(i32 46, float %3925, float %3916, float %3927)  ; FMad(a,b,c)
  %3929 = fmul fast float %3923, %3917
  %3930 = call float @dx.op.tertiary.f32(i32 46, float %3924, float %3918, float %3929)  ; FMad(a,b,c)
  %3931 = call float @dx.op.tertiary.f32(i32 46, float %3925, float %3919, float %3930)  ; FMad(a,b,c)
  %3932 = fsub fast float %3928, %3920
  %3933 = fsub fast float %3931, %3921
  %3934 = fsub fast float %3932, %3900
  %3935 = fadd fast float %3934, %3908
  %3936 = fsub fast float %3933, %3901
  %3937 = fadd fast float %3936, %3908
  %3938 = extractvalue %dx.types.CBufRet.f32 %3899, 3
  %3939 = fmul fast float %3935, %3938
  %3940 = fmul fast float %3937, %3938
  %3941 = call float @dx.op.unary.f32(i32 7, float %3939)  ; Saturate(value)
  %3942 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3943 = fsub fast float 1.000000e+00, %3941
  %3944 = fsub fast float 1.000000e+00, %3942
  %3945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3943, float %3944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 0
  %3947 = fcmp fast ugt float %3946, 0.000000e+00
  br i1 %3947, label %3948, label %4251

; <label>:3948                                    ; preds = %3910
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 2
  %3951 = fmul fast float %3950, %3946
  %3952 = extractvalue %dx.types.CBufRet.f32 %3949, 3
  %3953 = fadd fast float %3952, %3951
  %3954 = extractvalue %dx.types.CBufRet.f32 %3915, 2
  %3955 = fadd fast float %3953, %3922
  %3956 = fmul fast float %3928, %3916
  %3957 = call float @dx.op.tertiary.f32(i32 46, float %3931, float %3919, float %3956)  ; FMad(a,b,c)
  %3958 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %3954, float %3957)  ; FMad(a,b,c)
  %3959 = fsub fast float %3958, %3922
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 2
  %3962 = fsub fast float %3959, %3961
  %3963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3943, float %3944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = extractvalue %dx.types.ResRet.f32 %3963, 1
  %3966 = extractvalue %dx.types.ResRet.f32 %3963, 2
  %3967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3943, float %3944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3968 = extractvalue %dx.types.ResRet.f32 %3967, 0
  %3969 = extractvalue %dx.types.ResRet.f32 %3967, 1
  %3970 = extractvalue %dx.types.ResRet.f32 %3967, 2
  %3971 = fadd fast float %3968, %3964
  %3972 = fmul fast float %3971, 0x3F847AE140000000
  %3973 = fadd fast float %3969, %3965
  %3974 = fmul fast float %3973, 0x3F847AE140000000
  %3975 = fadd fast float %3970, %3966
  %3976 = fmul fast float %3975, 0x3F847AE140000000
  br label %4251

; <label>:3977                                    ; preds = %3837
  %3978 = and i32 %184, 1
  %3979 = icmp eq i32 %3978, 0
  br i1 %3979, label %4251, label %3980

; <label>:3980                                    ; preds = %3977
  %3981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3981, 0
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 0
  %3985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.CBufRet.f32 %3981, 1
  %3988 = extractvalue %dx.types.CBufRet.f32 %3983, 1
  %3989 = extractvalue %dx.types.CBufRet.f32 %3985, 1
  %3990 = extractvalue %dx.types.CBufRet.f32 %3981, 3
  %3991 = extractvalue %dx.types.CBufRet.f32 %3983, 3
  %3992 = extractvalue %dx.types.CBufRet.f32 %3985, 3
  %3993 = fadd fast float %3990, %3896
  %3994 = fadd fast float %3991, %3897
  %3995 = fadd fast float %3992, %3898
  %3996 = fmul fast float %3993, %3982
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %3984, float %3996)  ; FMad(a,b,c)
  %3998 = call float @dx.op.tertiary.f32(i32 46, float %3995, float %3986, float %3997)  ; FMad(a,b,c)
  %3999 = fmul fast float %3993, %3987
  %4000 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %3988, float %3999)  ; FMad(a,b,c)
  %4001 = call float @dx.op.tertiary.f32(i32 46, float %3995, float %3989, float %4000)  ; FMad(a,b,c)
  %4002 = fsub fast float %3998, %3990
  %4003 = fsub fast float %4001, %3991
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 0
  %4006 = extractvalue %dx.types.CBufRet.f32 %4004, 1
  %4007 = extractvalue %dx.types.CBufRet.f32 %4004, 2
  %4008 = extractvalue %dx.types.CBufRet.f32 %4004, 3
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 3
  %4011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.i32 %4011, 0
  %4013 = extractvalue %dx.types.CBufRet.i32 %4011, 1
  %4014 = udiv i32 %4013, %4012
  %4015 = fsub fast float %4002, %4005
  %4016 = fsub fast float %4003, %4006
  %4017 = call float @dx.op.binary.f32(i32 35, float %4015, float 0.000000e+00)  ; FMax(a,b)
  %4018 = call float @dx.op.binary.f32(i32 35, float %4016, float 0.000000e+00)  ; FMax(a,b)
  %4019 = call float @dx.op.binary.f32(i32 36, float %4017, float %4007)  ; FMin(a,b)
  %4020 = call float @dx.op.binary.f32(i32 36, float %4018, float %4008)  ; FMin(a,b)
  %4021 = add i32 %4012, -1
  %4022 = add i32 %4014, -1
  %4023 = fmul fast float %4019, %4010
  %4024 = fmul fast float %4020, %4010
  %4025 = fptoui float %4023 to i32
  %4026 = fptoui float %4024 to i32
  %4027 = call i32 @dx.op.binary.i32(i32 40, i32 %4025, i32 %4021)  ; UMin(a,b)
  %4028 = call i32 @dx.op.binary.i32(i32 40, i32 %4026, i32 %4022)  ; UMin(a,b)
  %4029 = mul i32 %4028, %4012
  %4030 = add i32 %4029, %4027
  %4031 = shl i32 %4030, 2
  %4032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4031, i32 undef)  ; BufferLoad(srv,index,wot)
  %4033 = extractvalue %dx.types.ResRet.i32 %4032, 0
  %4034 = icmp eq i32 %4033, -1
  br i1 %4034, label %4251, label %4035

; <label>:4035                                    ; preds = %3980
  %4036 = mul i32 %4033, 148
  %4037 = add i32 %4036, 4
  %4038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4037, i32 undef)  ; BufferLoad(srv,index,wot)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  %4040 = add i32 %4036, 8
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = add i32 %4036, 36
  %4044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4043, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = add i32 %4036, 60
  %4047 = add i32 %4036, 92
  %4048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4047, i32 undef)  ; BufferLoad(srv,index,wot)
  %4049 = extractvalue %dx.types.ResRet.i32 %4048, 0
  %4050 = add i32 %4036, 116
  %4051 = fsub fast float %4002, %4039
  %4052 = fsub fast float %4003, %4042
  %4053 = fmul fast float %4010, %4051
  %4054 = fmul fast float %4010, %4052
  %4055 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4056 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4057 = fsub fast float 1.000000e+00, %4056
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 2
  %4060 = call float @dx.op.unary.f32(i32 83, float %4055)  ; DerivCoarseX(value)
  %4061 = call float @dx.op.unary.f32(i32 83, float %4057)  ; DerivCoarseX(value)
  %4062 = call float @dx.op.unary.f32(i32 84, float %4055)  ; DerivCoarseY(value)
  %4063 = call float @dx.op.unary.f32(i32 84, float %4057)  ; DerivCoarseY(value)
  %4064 = fmul fast float %4060, %4059
  %4065 = fmul fast float %4061, %4059
  %4066 = fmul fast float %4062, %4059
  %4067 = fmul fast float %4063, %4059
  %4068 = call float @dx.op.dot2.f32(i32 54, float %4066, float %4067, float %4066, float %4067)  ; Dot2(ax,ay,bx,by)
  %4069 = call float @dx.op.dot2.f32(i32 54, float %4064, float %4065, float %4064, float %4065)  ; Dot2(ax,ay,bx,by)
  %4070 = call float @dx.op.binary.f32(i32 35, float %4069, float %4068)  ; FMax(a,b)
  %4071 = call float @dx.op.unary.f32(i32 23, float %4070)  ; Log(value)
  %4072 = fmul fast float %4071, 5.000000e-01
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 1
  %4075 = fadd fast float %4074, %4072
  %4076 = call float @dx.op.binary.f32(i32 35, float %4075, float 0.000000e+00)  ; FMax(a,b)
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 3
  %4079 = fadd fast float %4078, %4076
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 3
  %4082 = fadd fast float %4079, %4081
  %4083 = add i32 %4049, 0
  %4084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4083, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4085 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4084, i32 0)  ; GetDimensions(handle,mipLevel)
  %4086 = extractvalue %dx.types.Dimensions %4085, 0
  %4087 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4086)  ; FirstbitLo(value)
  %4088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.i32 %4088, 1
  %4090 = sub nsw i32 %4089, %4087
  %4091 = sitofp i32 %4090 to float
  %4092 = fsub fast float %4082, %4091
  %4093 = call float @dx.op.binary.f32(i32 35, float %4092, float 0.000000e+00)  ; FMax(a,b)
  %4094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4084, %dx.types.Handle %27, float %4055, float %4057, float %4045, float undef, i32 0, i32 0, i32 undef, float %4093)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4095 = extractvalue %dx.types.ResRet.f32 %4094, 0
  %4096 = fcmp ule float %4095, 0x3FE0101020000000
  %4097 = extractvalue %dx.types.CBufRet.i32 %4088, 0
  %4098 = and i32 %4097, 128
  %4099 = icmp ne i32 %4098, 0
  %4100 = and i1 %4096, %4099
  br i1 %4100, label %4251, label %4101

; <label>:4101                                    ; preds = %4035
  %4102 = add i32 %4036, 20
  %4103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4102, i32 undef)  ; BufferLoad(srv,index,wot)
  %4104 = extractvalue %dx.types.ResRet.f32 %4103, 0
  %4105 = add i32 %4036, 24
  %4106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4105, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = add i32 %4036, 40
  %4109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4108, i32 undef)  ; BufferLoad(srv,index,wot)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = add i32 %4036, 96
  %4112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4111, i32 undef)  ; BufferLoad(srv,index,wot)
  %4113 = extractvalue %dx.types.ResRet.i32 %4112, 0
  %4114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4114, 2
  %4116 = fmul fast float %4115, %4055
  %4117 = fmul fast float %4115, %4057
  %4118 = extractvalue %dx.types.CBufRet.f32 %4114, 3
  %4119 = fadd fast float %4116, %4118
  %4120 = fadd fast float %4117, %4118
  %4121 = add i32 %4113, 0
  %4122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4121, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4123 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4122, i32 0)  ; GetDimensions(handle,mipLevel)
  %4124 = extractvalue %dx.types.Dimensions %4123, 0
  %4125 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4124)  ; FirstbitLo(value)
  %4126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.i32 %4126, 1
  %4128 = sub nsw i32 %4127, %4125
  %4129 = sitofp i32 %4128 to float
  %4130 = fsub fast float %4079, %4129
  %4131 = call float @dx.op.binary.f32(i32 35, float %4130, float 0.000000e+00)  ; FMax(a,b)
  %4132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4122, %dx.types.Handle %27, float %4119, float %4120, float %4110, float undef, i32 0, i32 0, i32 undef, float %4131)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4133 = extractvalue %dx.types.ResRet.f32 %4132, 0
  %4134 = fmul fast float %4133, %4104
  %4135 = fadd fast float %4134, %4107
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.CBufRet.f32 %4136, 1
  %4139 = extractvalue %dx.types.CBufRet.f32 %4136, 2
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 3
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4144 = extractvalue %dx.types.CBufRet.f32 %4136, 3
  %4145 = fadd fast float %4141, %4002
  %4146 = fadd fast float %4143, %4003
  %4147 = fadd fast float %4135, %4144
  %4148 = fmul fast float %4145, %4137
  %4149 = call float @dx.op.tertiary.f32(i32 46, float %4146, float %4138, float %4148)  ; FMad(a,b,c)
  %4150 = call float @dx.op.tertiary.f32(i32 46, float %4147, float %4139, float %4149)  ; FMad(a,b,c)
  %4151 = fsub fast float %4150, %4144
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 2
  %4154 = fsub fast float %4151, %4153
  %4155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.i32 %4155, 0
  %4157 = call i32 @dx.op.binary.i32(i32 40, i32 %4033, i32 %4156)  ; UMin(a,b)
  %4158 = mul i32 %4157, 36
  %4159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4158, i32 undef)  ; BufferLoad(srv,index,wot)
  %4160 = extractvalue %dx.types.ResRet.i32 %4159, 0
  %4161 = add i32 %4158, 4
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 0
  %4164 = fmul fast float %4163, %4055
  %4165 = fmul fast float %4163, %4057
  %4166 = extractvalue %dx.types.CBufRet.f32 %4162, 1
  %4167 = fadd fast float %4164, %4166
  %4168 = fadd fast float %4165, %4166
  %4169 = icmp eq i32 %4160, 0
  br i1 %4169, label %4238, label %4170

; <label>:4170                                    ; preds = %4101
  br label %4171

; <label>:4171                                    ; preds = %4228, %4170
  %4172 = phi float [ %4229, %4228 ], [ 0.000000e+00, %4170 ]
  %4173 = phi float [ %4230, %4228 ], [ 0.000000e+00, %4170 ]
  %4174 = phi float [ %4231, %4228 ], [ 0.000000e+00, %4170 ]
  %4175 = phi float [ %4232, %4228 ], [ 0.000000e+00, %4170 ]
  %4176 = phi float [ %4233, %4228 ], [ 0.000000e+00, %4170 ]
  %4177 = phi float [ %4234, %4228 ], [ 0.000000e+00, %4170 ]
  %4178 = phi i32 [ %4235, %4228 ], [ 0, %4170 ]
  %4179 = shl i32 %4178, 2
  %4180 = add i32 %4046, %4179
  %4181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = add i32 %4050, %4179
  %4184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.i32 %4184, 0
  %4186 = add i32 %4185, 0
  %4187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4186, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4188 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4187, i32 0)  ; GetDimensions(handle,mipLevel)
  %4189 = extractvalue %dx.types.Dimensions %4188, 0
  %4190 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4189)  ; FirstbitLo(value)
  %4191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.i32 %4191, 1
  %4193 = sub nsw i32 %4192, %4190
  %4194 = sitofp i32 %4193 to float
  %4195 = fsub fast float %4079, %4194
  %4196 = call float @dx.op.binary.f32(i32 35, float %4195, float 0.000000e+00)  ; FMax(a,b)
  %4197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4187, %dx.types.Handle %27, float %4167, float %4168, float %4182, float undef, i32 0, i32 0, i32 undef, float %4196)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4198 = extractvalue %dx.types.ResRet.f32 %4197, 0
  %4199 = fcmp fast ogt float %4198, 0.000000e+00
  br i1 %4199, label %4200, label %4228

; <label>:4200                                    ; preds = %4171
  %4201 = add i32 %4161, %4179
  %4202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4201, i32 undef)  ; BufferLoad(srv,index,wot)
  %4203 = extractvalue %dx.types.ResRet.i32 %4202, 0
  %4204 = and i32 %4203, 32767
  %4205 = mul nuw nsw i32 %4204, 928
  %4206 = add nuw nsw i32 %4205, 48
  %4207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4207, 2
  %4211 = add nuw nsw i32 %4205, 60
  %4212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.ResRet.f32 %4212, 1
  %4215 = extractvalue %dx.types.ResRet.f32 %4212, 2
  %4216 = fmul fast float %4208, %4198
  %4217 = fmul fast float %4209, %4198
  %4218 = fmul fast float %4210, %4198
  %4219 = fadd fast float %4216, %4172
  %4220 = fadd fast float %4217, %4173
  %4221 = fadd fast float %4218, %4174
  %4222 = fmul fast float %4213, %4198
  %4223 = fmul fast float %4214, %4198
  %4224 = fmul fast float %4215, %4198
  %4225 = fadd fast float %4222, %4175
  %4226 = fadd fast float %4223, %4176
  %4227 = fadd fast float %4224, %4177
  br label %4228

; <label>:4228                                    ; preds = %4200, %4171
  %4229 = phi float [ %4219, %4200 ], [ %4172, %4171 ]
  %4230 = phi float [ %4220, %4200 ], [ %4173, %4171 ]
  %4231 = phi float [ %4221, %4200 ], [ %4174, %4171 ]
  %4232 = phi float [ %4225, %4200 ], [ %4175, %4171 ]
  %4233 = phi float [ %4226, %4200 ], [ %4176, %4171 ]
  %4234 = phi float [ %4227, %4200 ], [ %4177, %4171 ]
  %4235 = add nuw i32 %4178, 1
  %4236 = icmp eq i32 %4235, %4160
  br i1 %4236, label %4237, label %4171

; <label>:4237                                    ; preds = %4228
  br label %4238

; <label>:4238                                    ; preds = %4237, %4101
  %4239 = phi float [ 0.000000e+00, %4101 ], [ %4229, %4237 ]
  %4240 = phi float [ 0.000000e+00, %4101 ], [ %4230, %4237 ]
  %4241 = phi float [ 0.000000e+00, %4101 ], [ %4231, %4237 ]
  %4242 = phi float [ 0.000000e+00, %4101 ], [ %4232, %4237 ]
  %4243 = phi float [ 0.000000e+00, %4101 ], [ %4233, %4237 ]
  %4244 = phi float [ 0.000000e+00, %4101 ], [ %4234, %4237 ]
  %4245 = fadd fast float %4242, %4239
  %4246 = fmul fast float %4245, 0x3F847AE140000000
  %4247 = fadd fast float %4243, %4240
  %4248 = fmul fast float %4247, 0x3F847AE140000000
  %4249 = fadd fast float %4244, %4241
  %4250 = fmul fast float %4249, 0x3F847AE140000000
  br label %4251

; <label>:4251                                    ; preds = %4238, %4035, %3980, %3977, %3948, %3910
  %4252 = phi float [ %3962, %3948 ], [ -1.310720e+05, %3910 ], [ %4154, %4238 ], [ -1.310720e+05, %3980 ], [ -1.310720e+05, %4035 ], [ -1.310720e+05, %3977 ]
  %4253 = phi float [ %3972, %3948 ], [ 0.000000e+00, %3910 ], [ %4246, %4238 ], [ 0.000000e+00, %3980 ], [ 0.000000e+00, %4035 ], [ 0.000000e+00, %3977 ]
  %4254 = phi float [ %3974, %3948 ], [ 0.000000e+00, %3910 ], [ %4248, %4238 ], [ 0.000000e+00, %3980 ], [ 0.000000e+00, %4035 ], [ 0.000000e+00, %3977 ]
  %4255 = phi float [ %3976, %3948 ], [ 0.000000e+00, %3910 ], [ %4250, %4238 ], [ 0.000000e+00, %3980 ], [ 0.000000e+00, %4035 ], [ 0.000000e+00, %3977 ]
  %4256 = phi i1 [ true, %3948 ], [ false, %3910 ], [ true, %4238 ], [ false, %3980 ], [ false, %4035 ], [ false, %3977 ]
  %4257 = and i32 %184, 3
  %4258 = icmp eq i32 %4257, 1
  %4259 = select i1 %4258, float 1.000000e+00, float 0.000000e+00
  %4260 = fsub fast float %4252, %168
  %4261 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4262 = select i1 %4256, float %4261, float 1.000000e+00
  %4263 = fmul fast float %4262, %4259
  %4264 = icmp eq i32 %4257, 3
  %4265 = select i1 %4264, float 1.000000e+00, float %4263
  %4266 = call float @dx.op.binary.f32(i32 35, float %3853, float %4265)  ; FMax(a,b)
  %4267 = fcmp fast olt float %4265, 1.000000e+00
  %4268 = fcmp uge float %49, 0.000000e+00
  %4269 = and i1 %4268, %4267
  br i1 %4269, label %4270, label %4280

; <label>:4270                                    ; preds = %4251
  %4271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4272 = extractvalue %dx.types.ResRet.f32 %4271, 0
  %4273 = extractvalue %dx.types.ResRet.f32 %4271, 1
  %4274 = extractvalue %dx.types.ResRet.f32 %4271, 2
  %4275 = fadd fast float %4272, %4266
  %4276 = fcmp ule float %48, 0.000000e+00
  %4277 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4278 = select i1 %4276, float %4277, float 1.000000e+00
  %4279 = fmul fast float %4278, %4274
  br label %4280

; <label>:4280                                    ; preds = %4270, %4251
  %4281 = phi float [ %4275, %4270 ], [ %4266, %4251 ]
  %4282 = phi float [ %4273, %4270 ], [ 0.000000e+00, %4251 ]
  %4283 = phi float [ %4279, %4270 ], [ 0.000000e+00, %4251 ]
  %4284 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4285 = call float @dx.op.unary.f32(i32 7, float %4282)  ; Saturate(value)
  %4286 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4287 = fcmp fast une float %4285, 0.000000e+00
  %4288 = fcmp fast une float %4286, 0.000000e+00
  %4289 = or i1 %4287, %4288
  br i1 %4289, label %4290, label %4849

; <label>:4290                                    ; preds = %4280
  br i1 %4287, label %4291, label %4564

; <label>:4291                                    ; preds = %4290
  %4292 = call float @dx.op.unary.f32(i32 23, float %3850)  ; Log(value)
  %4293 = fmul fast float %4292, 4.000000e+00
  %4294 = call float @dx.op.unary.f32(i32 21, float %4293)  ; Exp(value)
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 0
  %4297 = fmul fast float %4296, %36
  %4298 = fmul fast float %4296, %37
  %4299 = fmul fast float %4296, %38
  %4300 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4301 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4302 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4303 = call float @dx.op.unary.f32(i32 23, float %4300)  ; Log(value)
  %4304 = call float @dx.op.unary.f32(i32 23, float %4301)  ; Log(value)
  %4305 = call float @dx.op.unary.f32(i32 23, float %4302)  ; Log(value)
  %4306 = fmul fast float %4303, 4.000000e+00
  %4307 = fmul fast float %4304, 4.000000e+00
  %4308 = fmul fast float %4305, 4.000000e+00
  %4309 = call float @dx.op.unary.f32(i32 21, float %4306)  ; Exp(value)
  %4310 = call float @dx.op.unary.f32(i32 21, float %4307)  ; Exp(value)
  %4311 = call float @dx.op.unary.f32(i32 21, float %4308)  ; Exp(value)
  %4312 = fadd fast float %4310, %4309
  %4313 = fadd fast float %4312, %4311
  %4314 = fdiv fast float 1.000000e+00, %4313
  %4315 = fmul fast float %4314, %4309
  %4316 = fcmp fast ogt float %45, 0.000000e+00
  %4317 = fcmp fast ogt float %46, 0.000000e+00
  %4318 = fcmp fast ogt float %47, 0.000000e+00
  %4319 = fcmp fast olt float %45, 0.000000e+00
  %4320 = fcmp fast olt float %46, 0.000000e+00
  %4321 = fcmp fast olt float %47, 0.000000e+00
  %4322 = zext i1 %4316 to i32
  %4323 = zext i1 %4317 to i32
  %4324 = zext i1 %4318 to i32
  %4325 = zext i1 %4319 to i32
  %4326 = zext i1 %4320 to i32
  %4327 = zext i1 %4321 to i32
  %4328 = sub nsw i32 %4322, %4325
  %4329 = sub nsw i32 %4323, %4326
  %4330 = sub nsw i32 %4324, %4327
  %4331 = call float @dx.op.unary.f32(i32 83, float %4297)  ; DerivCoarseX(value)
  %4332 = call float @dx.op.unary.f32(i32 83, float %4298)  ; DerivCoarseX(value)
  %4333 = call float @dx.op.unary.f32(i32 83, float %4299)  ; DerivCoarseX(value)
  %4334 = call float @dx.op.unary.f32(i32 84, float %4297)  ; DerivCoarseY(value)
  %4335 = call float @dx.op.unary.f32(i32 84, float %4298)  ; DerivCoarseY(value)
  %4336 = call float @dx.op.unary.f32(i32 84, float %4299)  ; DerivCoarseY(value)
  %4337 = fcmp fast ole float %216, %4315
  %4338 = fmul fast float %4314, %4312
  %4339 = fcmp fast ole float %216, %4338
  %4340 = select i1 %4339, float %4299, float %4297
  %4341 = select i1 %4339, float %4297, float %4298
  %4342 = select i1 %4337, float %4298, float %4340
  %4343 = select i1 %4337, float %4299, float %4341
  %4344 = select i1 %4339, float %4333, float %4331
  %4345 = select i1 %4339, float %4331, float %4332
  %4346 = select i1 %4337, float %4332, float %4344
  %4347 = select i1 %4337, float %4333, float %4345
  %4348 = select i1 %4339, float %4336, float %4334
  %4349 = select i1 %4339, float %4334, float %4335
  %4350 = select i1 %4337, float %4335, float %4348
  %4351 = select i1 %4337, float %4336, float %4349
  %4352 = call float @dx.op.unary.f32(i32 27, float %4342)  ; Round_ni(value)
  %4353 = call float @dx.op.unary.f32(i32 27, float %4343)  ; Round_ni(value)
  %4354 = fptosi float %4352 to i32
  %4355 = fptosi float %4353 to i32
  %4356 = xor i32 %4355, %4354
  %4357 = sitofp i32 %4356 to float
  %4358 = fptosi float %4357 to i32
  %4359 = sitofp i32 %4358 to float
  %4360 = fmul fast float %4359, 0x3FE3C6EF40000000
  %4361 = frem fast float %4352, 2.560000e+02
  %4362 = frem fast float %4353, 2.560000e+02
  %4363 = fptoui float %4361 to i32
  %4364 = fptoui float %4362 to i32
  %4365 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4363, i32 %4364, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = extractvalue %dx.types.ResRet.f32 %4365, 1
  %4368 = extractvalue %dx.types.ResRet.f32 %4365, 2
  %4369 = fadd fast float %4366, %4360
  %4370 = fadd fast float %4367, %4360
  %4371 = fadd fast float %4368, %4360
  %4372 = call float @dx.op.unary.f32(i32 22, float %4369)  ; Frc(value)
  %4373 = call float @dx.op.unary.f32(i32 22, float %4370)  ; Frc(value)
  %4374 = call float @dx.op.unary.f32(i32 22, float %4371)  ; Frc(value)
  %4375 = fmul fast float %4374, 0x401921FB60000000
  %4376 = call float @dx.op.unary.f32(i32 13, float %4375)  ; Sin(value)
  %4377 = call float @dx.op.unary.f32(i32 12, float %4375)  ; Cos(value)
  %4378 = fsub fast float -0.000000e+00, %4377
  %4379 = fmul fast float %4377, %4342
  %4380 = call float @dx.op.tertiary.f32(i32 46, float %4376, float %4343, float %4379)  ; FMad(a,b,c)
  %4381 = fmul fast float %4376, %4342
  %4382 = call float @dx.op.tertiary.f32(i32 46, float %4378, float %4343, float %4381)  ; FMad(a,b,c)
  %4383 = fadd fast float %4380, %4372
  %4384 = fadd fast float %4382, %4373
  %4385 = extractvalue %dx.types.CBufRet.f32 %4295, 3
  %4386 = bitcast float %4385 to i32
  %4387 = icmp eq i32 %4386, 0
  br i1 %4387, label %4426, label %4388

; <label>:4388                                    ; preds = %4291
  %4389 = add i32 %4386, 0
  %4390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4389, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4391 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4390, %dx.types.Handle %80, float %4383, float %4384, float undef, float undef, i32 0, i32 0, i32 undef, float %4346, float %4347, float undef, float %4350, float %4351, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4392 = extractvalue %dx.types.ResRet.f32 %4391, 0
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 1
  %4395 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4396 = fsub fast float 1.000000e+00, %4285
  %4397 = call float @dx.op.binary.f32(i32 35, float %4396, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4398 = bitcast float %4285 to i32
  %4399 = sitofp i32 %4398 to float
  %4400 = fadd fast float %4399, 0xC1CFBF8940000000
  %4401 = fmul fast float %4395, %4400
  %4402 = fadd fast float %4401, 0x41CFBF8940000000
  %4403 = fptosi float %4402 to i32
  %4404 = bitcast i32 %4403 to float
  %4405 = bitcast float %4397 to i32
  %4406 = sitofp i32 %4405 to float
  %4407 = fadd fast float %4406, 0xC1CFBF8940000000
  %4408 = fmul fast float %4407, %4395
  %4409 = fadd fast float %4408, 0x41CFBF8940000000
  %4410 = fptosi float %4409 to i32
  %4411 = bitcast i32 %4410 to float
  %4412 = fmul fast float %4404, %4394
  %4413 = fmul fast float %4411, %4394
  %4414 = fsub fast float %4397, %4412
  %4415 = fadd fast float %4413, %4397
  %4416 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4417 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4418 = fsub fast float %4392, %4416
  %4419 = fsub fast float %4417, %4416
  %4420 = bitcast float %4419 to i32
  %4421 = sub nsw i32 2129859010, %4420
  %4422 = bitcast i32 %4421 to float
  %4423 = fmul fast float %4422, %4418
  %4424 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4425 = fcmp fast olt float %4424, 0x3F70101020000000
  br i1 %4425, label %4564, label %4426

; <label>:4426                                    ; preds = %4388, %4291
  %4427 = phi float [ %4424, %4388 ], [ %4285, %4291 ]
  %4428 = fmul fast float %4427, %4294
  %4429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.i32 %4429, 1
  %4431 = extractvalue %dx.types.CBufRet.i32 %4429, 0
  %4432 = add i32 %4431, 0
  %4433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4434 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4433, %dx.types.Handle %79, float %4383, float %4384, float undef, float undef, i32 0, i32 0, i32 undef, float %4346, float %4347, float undef, float %4350, float %4351, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4435 = extractvalue %dx.types.ResRet.f32 %4434, 0
  %4436 = extractvalue %dx.types.ResRet.f32 %4434, 1
  %4437 = extractvalue %dx.types.ResRet.f32 %4434, 2
  %4438 = extractvalue %dx.types.ResRet.f32 %4434, 3
  %4439 = and i32 %4430, 255
  %4440 = uitofp i32 %4439 to float
  %4441 = lshr i32 %4430, 8
  %4442 = and i32 %4441, 255
  %4443 = uitofp i32 %4442 to float
  %4444 = fmul fast float %4438, %4440
  %4445 = fadd fast float %4444, %4443
  %4446 = fmul fast float %4445, 0x3F70101000000000
  %4447 = fadd fast float %4446, 0xBFB99999A0000000
  %4448 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4449 = fmul fast float %4448, 0x3FF1C71C80000000
  %4450 = call float @dx.op.binary.f32(i32 36, float %4446, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4451 = fsub fast float 1.000000e+00, %4449
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = fmul fast float %4452, %4435
  %4454 = fmul fast float %4452, %4436
  %4455 = fmul fast float %4452, %4437
  %4456 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4459 = fmul fast float %4449, %4435
  %4460 = fmul fast float %4449, %4436
  %4461 = fmul fast float %4449, %4437
  %4462 = fadd fast float %4459, %4450
  %4463 = fadd fast float %4460, %4450
  %4464 = fadd fast float %4461, %4450
  %4465 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4466 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4467 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.i32 %4468, 3
  %4470 = extractvalue %dx.types.CBufRet.i32 %4468, 2
  %4471 = add i32 %4470, 0
  %4472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4473 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4472, %dx.types.Handle %79, float %4383, float %4384, float undef, float undef, i32 0, i32 0, i32 undef, float %4346, float %4347, float undef, float %4350, float %4351, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4474 = extractvalue %dx.types.ResRet.f32 %4473, 0
  %4475 = extractvalue %dx.types.ResRet.f32 %4473, 1
  %4476 = extractvalue %dx.types.ResRet.f32 %4473, 2
  %4477 = extractvalue %dx.types.ResRet.f32 %4473, 3
  %4478 = and i32 %4469, 255
  %4479 = uitofp i32 %4478 to float
  %4480 = lshr i32 %4469, 8
  %4481 = and i32 %4480, 255
  %4482 = uitofp i32 %4481 to float
  %4483 = lshr i32 %4469, 16
  %4484 = and i32 %4483, 255
  %4485 = uitofp i32 %4484 to float
  %4486 = fmul fast float %4485, 0x3F70101000000000
  %4487 = fmul fast float %4474, %4479
  %4488 = fadd fast float %4487, %4482
  %4489 = fmul fast float %4488, 0x3F70101000000000
  %4490 = fadd fast float %4475, -5.000000e-01
  %4491 = fadd fast float %4477, -5.000000e-01
  %4492 = fmul fast float %4490, %4486
  %4493 = fmul fast float %4491, %4486
  %4494 = fadd fast float %4492, 5.000000e-01
  %4495 = fadd fast float %4493, 5.000000e-01
  %4496 = fmul fast float %4494, 2.000000e+00
  %4497 = fadd fast float %4496, -1.000000e+00
  %4498 = fmul fast float %4495, 2.000000e+00
  %4499 = fadd fast float %4498, -1.000000e+00
  %4500 = fadd fast float %4497, %4499
  %4501 = fmul fast float %4500, 5.000000e-01
  %4502 = fsub fast float %4497, %4499
  %4503 = fmul fast float %4502, 5.000000e-01
  %4504 = call float @dx.op.unary.f32(i32 6, float %4501)  ; FAbs(value)
  %4505 = fsub fast float 1.000000e+00, %4504
  %4506 = call float @dx.op.unary.f32(i32 6, float %4503)  ; FAbs(value)
  %4507 = fsub fast float %4505, %4506
  %4508 = call float @dx.op.dot3.f32(i32 55, float %4501, float %4503, float %4507, float %4501, float %4503, float %4507)  ; Dot3(ax,ay,az,bx,by,bz)
  %4509 = call float @dx.op.unary.f32(i32 25, float %4508)  ; Rsqrt(value)
  %4510 = fmul fast float %4501, %4509
  %4511 = fmul fast float %4503, %4509
  %4512 = select i1 %4339, i32 %4329, i32 %4330
  %4513 = select i1 %4337, i32 %4328, i32 %4512
  %4514 = sitofp i32 %4513 to float
  %4515 = fmul fast float %4507, %4514
  %4516 = fmul fast float %4515, %4509
  %4517 = select i1 %4339, float %4516, float %4511
  %4518 = select i1 %4339, float %4511, float %4516
  %4519 = select i1 %4337, float %4516, float %4510
  %4520 = select i1 %4337, float %4511, float %4517
  %4521 = select i1 %4337, float %4510, float %4518
  %4522 = fsub fast float %4456, %3889
  %4523 = fsub fast float %4457, %3890
  %4524 = fsub fast float %4458, %3891
  %4525 = fmul fast float %4522, %4428
  %4526 = fmul fast float %4523, %4428
  %4527 = fmul fast float %4524, %4428
  %4528 = fadd fast float %4525, %3889
  %4529 = fadd fast float %4526, %3890
  %4530 = fadd fast float %4527, %3891
  %4531 = fsub fast float %4465, %3874
  %4532 = fsub fast float %4466, %3875
  %4533 = fsub fast float %4467, %3876
  %4534 = fmul fast float %4531, %4428
  %4535 = fmul fast float %4532, %4428
  %4536 = fmul fast float %4533, %4428
  %4537 = fadd fast float %4534, %3874
  %4538 = fadd fast float %4535, %3875
  %4539 = fadd fast float %4536, %3876
  %4540 = fadd fast float %4519, %3838
  %4541 = fadd fast float %4520, %3839
  %4542 = fadd fast float %4521, %3840
  %4543 = call float @dx.op.dot3.f32(i32 55, float %4540, float %4541, float %4542, float %4540, float %4541, float %4542)  ; Dot3(ax,ay,az,bx,by,bz)
  %4544 = call float @dx.op.unary.f32(i32 25, float %4543)  ; Rsqrt(value)
  %4545 = fmul fast float %4540, %4544
  %4546 = fmul fast float %4541, %4544
  %4547 = fmul fast float %4542, %4544
  %4548 = fsub fast float %4545, %3838
  %4549 = fsub fast float %4546, %3839
  %4550 = fsub fast float %4547, %3840
  %4551 = fmul fast float %4548, %4428
  %4552 = fmul fast float %4549, %4428
  %4553 = fmul fast float %4550, %4428
  %4554 = fadd fast float %4551, %3838
  %4555 = fadd fast float %4552, %3839
  %4556 = fadd fast float %4553, %3840
  %4557 = call float @dx.op.binary.f32(i32 36, float %3850, float %4476)  ; FMin(a,b)
  %4558 = fsub fast float %4557, %3850
  %4559 = fmul fast float %4558, %4428
  %4560 = fadd fast float %4559, %3850
  %4561 = fsub fast float %4489, %3877
  %4562 = fmul fast float %4561, %4428
  %4563 = fadd fast float %4562, %3877
  br label %4564

; <label>:4564                                    ; preds = %4426, %4388, %4290
  %4565 = phi float [ %4528, %4426 ], [ %3889, %4388 ], [ %3889, %4290 ]
  %4566 = phi float [ %4529, %4426 ], [ %3890, %4388 ], [ %3890, %4290 ]
  %4567 = phi float [ %4530, %4426 ], [ %3891, %4388 ], [ %3891, %4290 ]
  %4568 = phi float [ %4537, %4426 ], [ %3874, %4388 ], [ %3874, %4290 ]
  %4569 = phi float [ %4538, %4426 ], [ %3875, %4388 ], [ %3875, %4290 ]
  %4570 = phi float [ %4539, %4426 ], [ %3876, %4388 ], [ %3876, %4290 ]
  %4571 = phi float [ %4554, %4426 ], [ %3838, %4388 ], [ %3838, %4290 ]
  %4572 = phi float [ %4555, %4426 ], [ %3839, %4388 ], [ %3839, %4290 ]
  %4573 = phi float [ %4556, %4426 ], [ %3840, %4388 ], [ %3840, %4290 ]
  %4574 = phi float [ %4563, %4426 ], [ %3877, %4388 ], [ %3877, %4290 ]
  %4575 = phi float [ %4560, %4426 ], [ %3850, %4388 ], [ %3850, %4290 ]
  br i1 %4288, label %4576, label %4849

; <label>:4576                                    ; preds = %4564
  %4577 = call float @dx.op.unary.f32(i32 23, float %4575)  ; Log(value)
  %4578 = fmul fast float %4577, 4.000000e+00
  %4579 = call float @dx.op.unary.f32(i32 21, float %4578)  ; Exp(value)
  %4580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.f32 %4580, 0
  %4582 = fmul fast float %4581, %36
  %4583 = fmul fast float %4581, %37
  %4584 = fmul fast float %4581, %38
  %4585 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4586 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4587 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4588 = call float @dx.op.unary.f32(i32 23, float %4585)  ; Log(value)
  %4589 = call float @dx.op.unary.f32(i32 23, float %4586)  ; Log(value)
  %4590 = call float @dx.op.unary.f32(i32 23, float %4587)  ; Log(value)
  %4591 = fmul fast float %4588, 4.000000e+00
  %4592 = fmul fast float %4589, 4.000000e+00
  %4593 = fmul fast float %4590, 4.000000e+00
  %4594 = call float @dx.op.unary.f32(i32 21, float %4591)  ; Exp(value)
  %4595 = call float @dx.op.unary.f32(i32 21, float %4592)  ; Exp(value)
  %4596 = call float @dx.op.unary.f32(i32 21, float %4593)  ; Exp(value)
  %4597 = fadd fast float %4595, %4594
  %4598 = fadd fast float %4597, %4596
  %4599 = fdiv fast float 1.000000e+00, %4598
  %4600 = fmul fast float %4599, %4594
  %4601 = fcmp fast ogt float %45, 0.000000e+00
  %4602 = fcmp fast ogt float %46, 0.000000e+00
  %4603 = fcmp fast ogt float %47, 0.000000e+00
  %4604 = fcmp fast olt float %45, 0.000000e+00
  %4605 = fcmp fast olt float %46, 0.000000e+00
  %4606 = fcmp fast olt float %47, 0.000000e+00
  %4607 = zext i1 %4601 to i32
  %4608 = zext i1 %4602 to i32
  %4609 = zext i1 %4603 to i32
  %4610 = zext i1 %4604 to i32
  %4611 = zext i1 %4605 to i32
  %4612 = zext i1 %4606 to i32
  %4613 = sub nsw i32 %4607, %4610
  %4614 = sub nsw i32 %4608, %4611
  %4615 = sub nsw i32 %4609, %4612
  %4616 = call float @dx.op.unary.f32(i32 83, float %4582)  ; DerivCoarseX(value)
  %4617 = call float @dx.op.unary.f32(i32 83, float %4583)  ; DerivCoarseX(value)
  %4618 = call float @dx.op.unary.f32(i32 83, float %4584)  ; DerivCoarseX(value)
  %4619 = call float @dx.op.unary.f32(i32 84, float %4582)  ; DerivCoarseY(value)
  %4620 = call float @dx.op.unary.f32(i32 84, float %4583)  ; DerivCoarseY(value)
  %4621 = call float @dx.op.unary.f32(i32 84, float %4584)  ; DerivCoarseY(value)
  %4622 = fcmp fast ole float %216, %4600
  %4623 = fmul fast float %4599, %4597
  %4624 = fcmp fast ole float %216, %4623
  %4625 = select i1 %4624, float %4584, float %4582
  %4626 = select i1 %4624, float %4582, float %4583
  %4627 = select i1 %4622, float %4583, float %4625
  %4628 = select i1 %4622, float %4584, float %4626
  %4629 = select i1 %4624, float %4618, float %4616
  %4630 = select i1 %4624, float %4616, float %4617
  %4631 = select i1 %4622, float %4617, float %4629
  %4632 = select i1 %4622, float %4618, float %4630
  %4633 = select i1 %4624, float %4621, float %4619
  %4634 = select i1 %4624, float %4619, float %4620
  %4635 = select i1 %4622, float %4620, float %4633
  %4636 = select i1 %4622, float %4621, float %4634
  %4637 = call float @dx.op.unary.f32(i32 27, float %4627)  ; Round_ni(value)
  %4638 = call float @dx.op.unary.f32(i32 27, float %4628)  ; Round_ni(value)
  %4639 = fptosi float %4637 to i32
  %4640 = fptosi float %4638 to i32
  %4641 = xor i32 %4640, %4639
  %4642 = sitofp i32 %4641 to float
  %4643 = fptosi float %4642 to i32
  %4644 = sitofp i32 %4643 to float
  %4645 = fmul fast float %4644, 0x3FE3C6EF40000000
  %4646 = frem fast float %4637, 2.560000e+02
  %4647 = frem fast float %4638, 2.560000e+02
  %4648 = fptoui float %4646 to i32
  %4649 = fptoui float %4647 to i32
  %4650 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4648, i32 %4649, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = extractvalue %dx.types.ResRet.f32 %4650, 1
  %4653 = extractvalue %dx.types.ResRet.f32 %4650, 2
  %4654 = fadd fast float %4651, %4645
  %4655 = fadd fast float %4652, %4645
  %4656 = fadd fast float %4653, %4645
  %4657 = call float @dx.op.unary.f32(i32 22, float %4654)  ; Frc(value)
  %4658 = call float @dx.op.unary.f32(i32 22, float %4655)  ; Frc(value)
  %4659 = call float @dx.op.unary.f32(i32 22, float %4656)  ; Frc(value)
  %4660 = fmul fast float %4659, 0x401921FB60000000
  %4661 = call float @dx.op.unary.f32(i32 13, float %4660)  ; Sin(value)
  %4662 = call float @dx.op.unary.f32(i32 12, float %4660)  ; Cos(value)
  %4663 = fsub fast float -0.000000e+00, %4662
  %4664 = fmul fast float %4662, %4627
  %4665 = call float @dx.op.tertiary.f32(i32 46, float %4661, float %4628, float %4664)  ; FMad(a,b,c)
  %4666 = fmul fast float %4661, %4627
  %4667 = call float @dx.op.tertiary.f32(i32 46, float %4663, float %4628, float %4666)  ; FMad(a,b,c)
  %4668 = fadd fast float %4665, %4657
  %4669 = fadd fast float %4667, %4658
  %4670 = extractvalue %dx.types.CBufRet.f32 %4580, 3
  %4671 = bitcast float %4670 to i32
  %4672 = icmp eq i32 %4671, 0
  br i1 %4672, label %4711, label %4673

; <label>:4673                                    ; preds = %4576
  %4674 = add i32 %4671, 0
  %4675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4676 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4675, %dx.types.Handle %80, float %4668, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float %4631, float %4632, float undef, float %4635, float %4636, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.f32 %4678, 1
  %4680 = extractvalue %dx.types.CBufRet.f32 %4678, 2
  %4681 = fsub fast float 1.000000e+00, %4286
  %4682 = call float @dx.op.binary.f32(i32 35, float %4681, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4683 = bitcast float %4286 to i32
  %4684 = sitofp i32 %4683 to float
  %4685 = fadd fast float %4684, 0xC1CFBF8940000000
  %4686 = fmul fast float %4680, %4685
  %4687 = fadd fast float %4686, 0x41CFBF8940000000
  %4688 = fptosi float %4687 to i32
  %4689 = bitcast i32 %4688 to float
  %4690 = bitcast float %4682 to i32
  %4691 = sitofp i32 %4690 to float
  %4692 = fadd fast float %4691, 0xC1CFBF8940000000
  %4693 = fmul fast float %4692, %4680
  %4694 = fadd fast float %4693, 0x41CFBF8940000000
  %4695 = fptosi float %4694 to i32
  %4696 = bitcast i32 %4695 to float
  %4697 = fmul fast float %4689, %4679
  %4698 = fmul fast float %4696, %4679
  %4699 = fsub fast float %4682, %4697
  %4700 = fadd fast float %4698, %4682
  %4701 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4702 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4703 = fsub fast float %4677, %4701
  %4704 = fsub fast float %4702, %4701
  %4705 = bitcast float %4704 to i32
  %4706 = sub nsw i32 2129859010, %4705
  %4707 = bitcast i32 %4706 to float
  %4708 = fmul fast float %4707, %4703
  %4709 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4710 = fcmp fast olt float %4709, 0x3F70101020000000
  br i1 %4710, label %4849, label %4711

; <label>:4711                                    ; preds = %4673, %4576
  %4712 = phi float [ %4709, %4673 ], [ %4286, %4576 ]
  %4713 = fmul fast float %4712, %4579
  %4714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.i32 %4714, 1
  %4716 = extractvalue %dx.types.CBufRet.i32 %4714, 0
  %4717 = add i32 %4716, 0
  %4718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4719 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4718, %dx.types.Handle %79, float %4668, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float %4631, float %4632, float undef, float %4635, float %4636, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4720 = extractvalue %dx.types.ResRet.f32 %4719, 0
  %4721 = extractvalue %dx.types.ResRet.f32 %4719, 1
  %4722 = extractvalue %dx.types.ResRet.f32 %4719, 2
  %4723 = extractvalue %dx.types.ResRet.f32 %4719, 3
  %4724 = and i32 %4715, 255
  %4725 = uitofp i32 %4724 to float
  %4726 = lshr i32 %4715, 8
  %4727 = and i32 %4726, 255
  %4728 = uitofp i32 %4727 to float
  %4729 = fmul fast float %4723, %4725
  %4730 = fadd fast float %4729, %4728
  %4731 = fmul fast float %4730, 0x3F70101000000000
  %4732 = fadd fast float %4731, 0xBFB99999A0000000
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %4733, 0x3FF1C71C80000000
  %4735 = call float @dx.op.binary.f32(i32 36, float %4731, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4736 = fsub fast float 1.000000e+00, %4734
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fmul fast float %4737, %4720
  %4739 = fmul fast float %4737, %4721
  %4740 = fmul fast float %4737, %4722
  %4741 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4742 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4743 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4744 = fmul fast float %4734, %4720
  %4745 = fmul fast float %4734, %4721
  %4746 = fmul fast float %4734, %4722
  %4747 = fadd fast float %4744, %4735
  %4748 = fadd fast float %4745, %4735
  %4749 = fadd fast float %4746, %4735
  %4750 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4751 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4752 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.i32 %4753, 3
  %4755 = extractvalue %dx.types.CBufRet.i32 %4753, 2
  %4756 = add i32 %4755, 0
  %4757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4758 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4757, %dx.types.Handle %79, float %4668, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float %4631, float %4632, float undef, float %4635, float %4636, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4759 = extractvalue %dx.types.ResRet.f32 %4758, 0
  %4760 = extractvalue %dx.types.ResRet.f32 %4758, 1
  %4761 = extractvalue %dx.types.ResRet.f32 %4758, 2
  %4762 = extractvalue %dx.types.ResRet.f32 %4758, 3
  %4763 = and i32 %4754, 255
  %4764 = uitofp i32 %4763 to float
  %4765 = lshr i32 %4754, 8
  %4766 = and i32 %4765, 255
  %4767 = uitofp i32 %4766 to float
  %4768 = lshr i32 %4754, 16
  %4769 = and i32 %4768, 255
  %4770 = uitofp i32 %4769 to float
  %4771 = fmul fast float %4770, 0x3F70101000000000
  %4772 = fmul fast float %4759, %4764
  %4773 = fadd fast float %4772, %4767
  %4774 = fmul fast float %4773, 0x3F70101000000000
  %4775 = fadd fast float %4760, -5.000000e-01
  %4776 = fadd fast float %4762, -5.000000e-01
  %4777 = fmul fast float %4775, %4771
  %4778 = fmul fast float %4776, %4771
  %4779 = fadd fast float %4777, 5.000000e-01
  %4780 = fadd fast float %4778, 5.000000e-01
  %4781 = fmul fast float %4779, 2.000000e+00
  %4782 = fadd fast float %4781, -1.000000e+00
  %4783 = fmul fast float %4780, 2.000000e+00
  %4784 = fadd fast float %4783, -1.000000e+00
  %4785 = fadd fast float %4782, %4784
  %4786 = fmul fast float %4785, 5.000000e-01
  %4787 = fsub fast float %4782, %4784
  %4788 = fmul fast float %4787, 5.000000e-01
  %4789 = call float @dx.op.unary.f32(i32 6, float %4786)  ; FAbs(value)
  %4790 = fsub fast float 1.000000e+00, %4789
  %4791 = call float @dx.op.unary.f32(i32 6, float %4788)  ; FAbs(value)
  %4792 = fsub fast float %4790, %4791
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4788, float %4792, float %4786, float %4788, float %4792)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = call float @dx.op.unary.f32(i32 25, float %4793)  ; Rsqrt(value)
  %4795 = fmul fast float %4786, %4794
  %4796 = fmul fast float %4788, %4794
  %4797 = select i1 %4624, i32 %4614, i32 %4615
  %4798 = select i1 %4622, i32 %4613, i32 %4797
  %4799 = sitofp i32 %4798 to float
  %4800 = fmul fast float %4792, %4799
  %4801 = fmul fast float %4800, %4794
  %4802 = select i1 %4624, float %4801, float %4796
  %4803 = select i1 %4624, float %4796, float %4801
  %4804 = select i1 %4622, float %4801, float %4795
  %4805 = select i1 %4622, float %4796, float %4802
  %4806 = select i1 %4622, float %4795, float %4803
  %4807 = fsub fast float %4741, %4565
  %4808 = fsub fast float %4742, %4566
  %4809 = fsub fast float %4743, %4567
  %4810 = fmul fast float %4807, %4713
  %4811 = fmul fast float %4808, %4713
  %4812 = fmul fast float %4809, %4713
  %4813 = fadd fast float %4810, %4565
  %4814 = fadd fast float %4811, %4566
  %4815 = fadd fast float %4812, %4567
  %4816 = fsub fast float %4750, %4568
  %4817 = fsub fast float %4751, %4569
  %4818 = fsub fast float %4752, %4570
  %4819 = fmul fast float %4816, %4713
  %4820 = fmul fast float %4817, %4713
  %4821 = fmul fast float %4818, %4713
  %4822 = fadd fast float %4819, %4568
  %4823 = fadd fast float %4820, %4569
  %4824 = fadd fast float %4821, %4570
  %4825 = fadd fast float %4804, %4571
  %4826 = fadd fast float %4805, %4572
  %4827 = fadd fast float %4806, %4573
  %4828 = call float @dx.op.dot3.f32(i32 55, float %4825, float %4826, float %4827, float %4825, float %4826, float %4827)  ; Dot3(ax,ay,az,bx,by,bz)
  %4829 = call float @dx.op.unary.f32(i32 25, float %4828)  ; Rsqrt(value)
  %4830 = fmul fast float %4825, %4829
  %4831 = fmul fast float %4826, %4829
  %4832 = fmul fast float %4827, %4829
  %4833 = fsub fast float %4830, %4571
  %4834 = fsub fast float %4831, %4572
  %4835 = fsub fast float %4832, %4573
  %4836 = fmul fast float %4833, %4713
  %4837 = fmul fast float %4834, %4713
  %4838 = fmul fast float %4835, %4713
  %4839 = fadd fast float %4836, %4571
  %4840 = fadd fast float %4837, %4572
  %4841 = fadd fast float %4838, %4573
  %4842 = call float @dx.op.binary.f32(i32 36, float %4575, float %4761)  ; FMin(a,b)
  %4843 = fsub fast float %4842, %4575
  %4844 = fmul fast float %4843, %4713
  %4845 = fadd fast float %4844, %4575
  %4846 = fsub fast float %4774, %4574
  %4847 = fmul fast float %4846, %4713
  %4848 = fadd fast float %4847, %4574
  br label %4849

; <label>:4849                                    ; preds = %4711, %4673, %4564, %4280
  %4850 = phi float [ %4813, %4711 ], [ %4565, %4673 ], [ %4565, %4564 ], [ %3889, %4280 ]
  %4851 = phi float [ %4814, %4711 ], [ %4566, %4673 ], [ %4566, %4564 ], [ %3890, %4280 ]
  %4852 = phi float [ %4815, %4711 ], [ %4567, %4673 ], [ %4567, %4564 ], [ %3891, %4280 ]
  %4853 = phi float [ %4822, %4711 ], [ %4568, %4673 ], [ %4568, %4564 ], [ %3874, %4280 ]
  %4854 = phi float [ %4823, %4711 ], [ %4569, %4673 ], [ %4569, %4564 ], [ %3875, %4280 ]
  %4855 = phi float [ %4824, %4711 ], [ %4570, %4673 ], [ %4570, %4564 ], [ %3876, %4280 ]
  %4856 = phi float [ %4839, %4711 ], [ %4571, %4673 ], [ %4571, %4564 ], [ %3838, %4280 ]
  %4857 = phi float [ %4840, %4711 ], [ %4572, %4673 ], [ %4572, %4564 ], [ %3839, %4280 ]
  %4858 = phi float [ %4841, %4711 ], [ %4573, %4673 ], [ %4573, %4564 ], [ %3840, %4280 ]
  %4859 = phi float [ %4848, %4711 ], [ %4574, %4673 ], [ %4574, %4564 ], [ %3877, %4280 ]
  %4860 = phi float [ %4845, %4711 ], [ %4575, %4673 ], [ %4575, %4564 ], [ %3850, %4280 ]
  %4861 = fcmp fast une float %4284, 0.000000e+00
  %4862 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %4863 = call float @dx.op.unary.f32(i32 25, float %4862)  ; Rsqrt(value)
  br i1 %4861, label %4871, label %4864

; <label>:4864                                    ; preds = %4849
  %4865 = fmul fast float %4863, %166
  %4866 = fmul fast float %4863, %167
  %4867 = fmul fast float %4863, %168
  %4868 = fsub fast float -0.000000e+00, %4865
  %4869 = fsub fast float -0.000000e+00, %4866
  %4870 = fsub fast float -0.000000e+00, %4867
  br label %5038

; <label>:4871                                    ; preds = %4849
  %4872 = fmul fast float %166, %4863
  %4873 = fsub fast float -0.000000e+00, %4872
  %4874 = fmul fast float %167, %4863
  %4875 = fsub fast float -0.000000e+00, %4874
  %4876 = fmul fast float %168, %4863
  %4877 = fsub fast float -0.000000e+00, %4876
  %4878 = call float @dx.op.dot3.f32(i32 55, float %4873, float %4875, float %4877, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4879 = fmul fast float %4284, 2.500000e+00
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4881 = fmul fast float %4284, 0x4013FFFFE0000000
  %4882 = fadd fast float %4881, 0xBFFFFFFFE0000000
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = fmul fast float %4284, 0x4004000020000000
  %4885 = fadd fast float %4884, 0xBFF8000040000000
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = fmul fast float %3856, 1.000000e+01
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fmul fast float %4888, 2.000000e+00
  %4890 = fsub fast float 3.000000e+00, %4889
  %4891 = fmul fast float %4888, %4888
  %4892 = fmul fast float %4891, %4890
  %4893 = fsub fast float 1.000000e+00, %4892
  %4894 = fsub fast float 0x3FE3333340000000, %4859
  %4895 = fmul fast float %4894, 0x400AAAAAA0000000
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = fmul fast float %4893, %4896
  %4898 = fmul fast float %4850, 0x3FEA2B8620000000
  %4899 = fmul fast float %4851, 0x3FEA2B8620000000
  %4900 = fmul fast float %4852, 0x3FEA2B8620000000
  %4901 = fadd fast float %4898, 0x3FC81DFBA0000000
  %4902 = fmul fast float %4901, %4850
  %4903 = fadd fast float %4902, 0x3F910E6020000000
  %4904 = fadd fast float %4899, 0x3FC81DFBA0000000
  %4905 = fmul fast float %4904, %4851
  %4906 = fadd fast float %4905, 0x3F910E6020000000
  %4907 = fadd fast float %4900, 0x3FC81DFBA0000000
  %4908 = fmul fast float %4907, %4852
  %4909 = fadd fast float %4908, 0x3F910E6020000000
  %4910 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4912 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4913 = fsub fast float %4910, %4850
  %4914 = fsub fast float %4911, %4851
  %4915 = fsub fast float %4912, %4852
  %4916 = fmul fast float %4913, %4880
  %4917 = fmul fast float %4916, %4897
  %4918 = fmul fast float %4914, %4880
  %4919 = fmul fast float %4918, %4897
  %4920 = fmul fast float %4915, %4880
  %4921 = fmul fast float %4920, %4897
  %4922 = fadd fast float %4917, %4850
  %4923 = fadd fast float %4919, %4851
  %4924 = fadd fast float %4921, %4852
  %4925 = fmul fast float %4860, %4860
  %4926 = fmul fast float %4925, %4925
  %4927 = fadd fast float %4883, 1.000000e+00
  %4928 = fsub fast float %4927, %4897
  %4929 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4930 = call float @dx.op.dot3.f32(i32 55, float %92, float %94, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4932 = fsub fast float 1.000000e+00, %4926
  %4933 = call float @dx.op.binary.f32(i32 36, float %4929, float %4932)  ; FMin(a,b)
  %4934 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4935 = call float @dx.op.binary.f32(i32 35, float %4933, float %4934)  ; FMax(a,b)
  %4936 = fadd fast float %4931, 0xBFE4CCCCC0000000
  %4937 = fmul fast float %4936, 0x4006DB6DA0000000
  %4938 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4939 = fmul fast float %4938, 2.000000e+00
  %4940 = fsub fast float 3.000000e+00, %4939
  %4941 = bitcast float %4853 to i32
  %4942 = ashr i32 %4941, 1
  %4943 = add nsw i32 %4942, 532487669
  %4944 = bitcast i32 %4943 to float
  %4945 = fsub fast float 1.000000e+00, %4944
  %4946 = bitcast float %4945 to i32
  %4947 = sub nsw i32 2129859010, %4946
  %4948 = bitcast i32 %4947 to float
  %4949 = fmul fast float %4948, 2.000000e+00
  %4950 = bitcast float %4854 to i32
  %4951 = ashr i32 %4950, 1
  %4952 = add nsw i32 %4951, 532487669
  %4953 = bitcast i32 %4952 to float
  %4954 = fsub fast float 1.000000e+00, %4953
  %4955 = bitcast float %4954 to i32
  %4956 = sub nsw i32 2129859010, %4955
  %4957 = bitcast i32 %4956 to float
  %4958 = fmul fast float %4957, 2.000000e+00
  %4959 = bitcast float %4855 to i32
  %4960 = ashr i32 %4959, 1
  %4961 = add nsw i32 %4960, 532487669
  %4962 = bitcast i32 %4961 to float
  %4963 = fsub fast float 1.000000e+00, %4962
  %4964 = bitcast float %4963 to i32
  %4965 = sub nsw i32 2129859010, %4964
  %4966 = bitcast i32 %4965 to float
  %4967 = fmul fast float %4966, 2.000000e+00
  %4968 = fsub fast float 0x4002A9FBE0000000, %4949
  %4969 = fadd fast float %4949, 0x3FD54FDF00000000
  %4970 = bitcast float %4969 to i32
  %4971 = sub nsw i32 2129859010, %4970
  %4972 = bitcast i32 %4971 to float
  %4973 = fmul fast float %4972, %4968
  %4974 = fmul fast float %4973, %4973
  %4975 = fsub fast float 0x4002A9FBE0000000, %4958
  %4976 = fadd fast float %4958, 0x3FD54FDF00000000
  %4977 = bitcast float %4976 to i32
  %4978 = sub nsw i32 2129859010, %4977
  %4979 = bitcast i32 %4978 to float
  %4980 = fmul fast float %4979, %4975
  %4981 = fmul fast float %4980, %4980
  %4982 = fsub fast float 0x4002A9FBE0000000, %4967
  %4983 = fadd fast float %4967, 0x3FD54FDF00000000
  %4984 = bitcast float %4983 to i32
  %4985 = sub nsw i32 2129859010, %4984
  %4986 = bitcast i32 %4985 to float
  %4987 = fmul fast float %4986, %4982
  %4988 = fmul fast float %4987, %4987
  %4989 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4974)  ; FMax(a,b)
  %4990 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4981)  ; FMax(a,b)
  %4991 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4988)  ; FMax(a,b)
  %4992 = fsub fast float 1.000000e+00, %4878
  %4993 = fadd fast float %4992, %4893
  %4994 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4995 = fsub fast float 1.000000e+00, %4265
  %4996 = fmul fast float %4935, %4995
  %4997 = fmul fast float %4938, %4938
  %4998 = fmul fast float %4997, %4996
  %4999 = fmul fast float %4998, %4940
  %5000 = fmul fast float %4995, 0xBFE99999A0000000
  %5001 = fmul fast float %5000, %4880
  %5002 = fmul fast float %5001, %4897
  %5003 = fadd fast float %5002, 1.000000e+00
  %5004 = fadd fast float %4859, -1.000000e+00
  %5005 = fmul fast float %5003, %5004
  %5006 = fadd fast float %5005, 1.000000e+00
  %5007 = fsub fast float %4989, %4853
  %5008 = fsub fast float %4990, %4854
  %5009 = fsub fast float %4991, %4855
  %5010 = fmul fast float %4999, %5007
  %5011 = fmul fast float %4999, %5008
  %5012 = fmul fast float %4999, %5009
  %5013 = fadd fast float %5010, %4853
  %5014 = fadd fast float %5011, %4854
  %5015 = fadd fast float %5012, %4855
  %5016 = fsub fast float %92, %4856
  %5017 = fsub fast float %94, %4857
  %5018 = fsub fast float %96, %4858
  %5019 = fmul fast float %4999, %5016
  %5020 = fmul fast float %4999, %5017
  %5021 = fmul fast float %4999, %5018
  %5022 = fadd fast float %5019, %4856
  %5023 = fadd fast float %5020, %4857
  %5024 = fadd fast float %5021, %4858
  %5025 = fmul fast float %4999, %4994
  %5026 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  %5027 = fsub fast float 1.000000e+00, %5026
  %5028 = fmul fast float %5025, %5027
  %5029 = fadd fast float %5028, %5026
  %5030 = fsub fast float 1.000000e+00, %4860
  %5031 = fmul fast float %4999, %5030
  %5032 = fadd fast float %5031, %4860
  %5033 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5023, float %5024, float %5022, float %5023, float %5024)  ; Dot3(ax,ay,az,bx,by,bz)
  %5034 = call float @dx.op.unary.f32(i32 25, float %5033)  ; Rsqrt(value)
  %5035 = fmul fast float %5022, %5034
  %5036 = fmul fast float %5023, %5034
  %5037 = fmul fast float %5024, %5034
  br label %5038

; <label>:5038                                    ; preds = %4871, %4864
  %5039 = phi float [ %4870, %4864 ], [ %4877, %4871 ]
  %5040 = phi float [ %4869, %4864 ], [ %4875, %4871 ]
  %5041 = phi float [ %4868, %4864 ], [ %4873, %4871 ]
  %5042 = phi float [ %4867, %4864 ], [ %4876, %4871 ]
  %5043 = phi float [ %4866, %4864 ], [ %4874, %4871 ]
  %5044 = phi float [ %4865, %4864 ], [ %4872, %4871 ]
  %5045 = phi float [ %4850, %4864 ], [ %4922, %4871 ]
  %5046 = phi float [ %4851, %4864 ], [ %4923, %4871 ]
  %5047 = phi float [ %4852, %4864 ], [ %4924, %4871 ]
  %5048 = phi float [ %4853, %4864 ], [ %5013, %4871 ]
  %5049 = phi float [ %4854, %4864 ], [ %5014, %4871 ]
  %5050 = phi float [ %4855, %4864 ], [ %5015, %4871 ]
  %5051 = phi float [ %4856, %4864 ], [ %5035, %4871 ]
  %5052 = phi float [ %4857, %4864 ], [ %5036, %4871 ]
  %5053 = phi float [ %4858, %4864 ], [ %5037, %4871 ]
  %5054 = phi float [ %4859, %4864 ], [ %5029, %4871 ]
  %5055 = phi float [ %4860, %4864 ], [ %5032, %4871 ]
  %5056 = select i1 %205, float 0.000000e+00, float %5050
  %5057 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5052, float %5053, float %5041, float %5040, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %5058 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5059 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5043, float %5042, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = fmul fast float %5059, 2.000000e+00
  %5061 = fmul fast float %5060, %5051
  %5062 = fmul fast float %5060, %5052
  %5063 = fmul fast float %5060, %5053
  %5064 = fsub fast float %5044, %5061
  %5065 = fsub fast float %5043, %5062
  %5066 = fsub fast float %5042, %5063
  %5067 = call float @dx.op.binary.f32(i32 36, float %5055, float 1.000000e+00)  ; FMin(a,b)
  %5068 = fsub fast float 1.000000e+00, %5055
  %5069 = bitcast float %5068 to i32
  %5070 = sub nsw i32 2129859010, %5069
  %5071 = bitcast i32 %5070 to float
  %5072 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %5073 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = fcmp fast oeq float %5073, 0.000000e+00
  %5075 = fcmp fast oeq float %5072, 0.000000e+00
  %5076 = or i1 %5075, %5074
  br i1 %5076, label %5106, label %5077

; <label>:5077                                    ; preds = %5038
  %5078 = fsub fast float -0.000000e+00, %63
  %5079 = fsub fast float -0.000000e+00, %61
  %5080 = call float @dx.op.unary.f32(i32 24, float %5073)  ; Sqrt(value)
  %5081 = fdiv fast float %5080, %5072
  %5082 = fcmp fast ogt float %5081, 0x3FFB6F8900000000
  %5083 = select i1 %5082, float 0x3FFB6F8900000000, float %5081
  %5084 = fmul fast float %5083, 0x3FE8A23460000000
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = call float @dx.op.binary.f32(i32 35, float %5083, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5087 = fmul fast float %5085, %5072
  %5088 = fmul fast float %5086, 0x3FF279A740000000
  %5089 = fadd fast float %5088, -1.000000e+00
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %62, float %5078, float %5079, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = call float @dx.op.unary.f32(i32 25, float %5090)  ; Rsqrt(value)
  %5092 = fmul fast float %5091, %5078
  %5093 = fmul fast float %5091, %5079
  %5094 = fmul fast float %5091, %62
  %5095 = fmul fast float %5089, %5089
  %5096 = fsub fast float 1.000000e+00, %5095
  %5097 = fmul fast float %5086, 0x40005F8BE0000000
  %5098 = fsub fast float 0x400C5BF8A0000000, %5097
  %5099 = fdiv fast float %5087, %5098
  %5100 = fmul fast float %5099, 0x3FEE31C3C0000000
  %5101 = fmul fast float %5100, %5096
  %5102 = fmul fast float %5086, 0x3FDACB7480000000
  %5103 = fadd fast float %5102, 0xBFD7347680000000
  %5104 = fmul fast float %5103, %5099
  %5105 = fmul fast float %5104, %5096
  br label %5106

; <label>:5106                                    ; preds = %5077, %5038
  %5107 = phi float [ %5092, %5077 ], [ 0.000000e+00, %5038 ]
  %5108 = phi float [ %5093, %5077 ], [ 0.000000e+00, %5038 ]
  %5109 = phi float [ %5094, %5077 ], [ 0.000000e+00, %5038 ]
  %5110 = phi float [ %5101, %5077 ], [ 0.000000e+00, %5038 ]
  %5111 = phi float [ %5105, %5077 ], [ 0.000000e+00, %5038 ]
  %5112 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5108, float %5109, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5113 = fmul fast float %5112, %5112
  %5114 = fmul fast float %5113, 0x3FEE471020000000
  %5115 = fadd fast float %5114, 0xBFD42F6020000000
  %5116 = fmul fast float %5072, 0x3FD20DD760000000
  %5117 = fmul fast float %5115, %5111
  %5118 = fmul fast float %5110, 0x3FDF454380000000
  %5119 = fmul fast float %5118, %5112
  %5120 = fadd fast float %5119, %5116
  %5121 = fadd fast float %5120, %5117
  %5122 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5108, float %5109, float %5064, float %5065, float %5066)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = fmul fast float %5122, 0x3FDF454380000000
  %5124 = fmul fast float %5122, %5122
  %5125 = fmul fast float %5124, 0x3FEE471020000000
  %5126 = fadd fast float %5125, 0xBFD42F6020000000
  %5127 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5110, float %5111, float 0x3FD20DD760000000, float %5123, float %5126)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %5129 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = fcmp fast oeq float %5129, 0.000000e+00
  %5131 = fcmp fast oeq float %5128, 0.000000e+00
  %5132 = or i1 %5131, %5130
  br i1 %5132, label %5162, label %5133

; <label>:5133                                    ; preds = %5106
  %5134 = fsub fast float -0.000000e+00, %59
  %5135 = fsub fast float -0.000000e+00, %57
  %5136 = call float @dx.op.unary.f32(i32 24, float %5129)  ; Sqrt(value)
  %5137 = fdiv fast float %5136, %5128
  %5138 = fcmp fast ogt float %5137, 0x3FFB6F8900000000
  %5139 = select i1 %5138, float 0x3FFB6F8900000000, float %5137
  %5140 = fmul fast float %5139, 0x3FE8A23460000000
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = call float @dx.op.binary.f32(i32 35, float %5139, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5143 = fmul fast float %5141, %5128
  %5144 = fmul fast float %5142, 0x3FF279A740000000
  %5145 = fadd fast float %5144, -1.000000e+00
  %5146 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %58, float %5134, float %5135, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %5147 = call float @dx.op.unary.f32(i32 25, float %5146)  ; Rsqrt(value)
  %5148 = fmul fast float %5147, %5134
  %5149 = fmul fast float %5147, %5135
  %5150 = fmul fast float %5147, %58
  %5151 = fmul fast float %5145, %5145
  %5152 = fsub fast float 1.000000e+00, %5151
  %5153 = fmul fast float %5142, 0x40005F8BE0000000
  %5154 = fsub fast float 0x400C5BF8A0000000, %5153
  %5155 = fdiv fast float %5143, %5154
  %5156 = fmul fast float %5155, 0x3FEE31C3C0000000
  %5157 = fmul fast float %5156, %5152
  %5158 = fmul fast float %5142, 0x3FDACB7480000000
  %5159 = fadd fast float %5158, 0xBFD7347680000000
  %5160 = fmul fast float %5159, %5155
  %5161 = fmul fast float %5160, %5152
  br label %5162

; <label>:5162                                    ; preds = %5133, %5106
  %5163 = phi float [ %5148, %5133 ], [ 0.000000e+00, %5106 ]
  %5164 = phi float [ %5149, %5133 ], [ 0.000000e+00, %5106 ]
  %5165 = phi float [ %5150, %5133 ], [ 0.000000e+00, %5106 ]
  %5166 = phi float [ %5157, %5133 ], [ 0.000000e+00, %5106 ]
  %5167 = phi float [ %5161, %5133 ], [ 0.000000e+00, %5106 ]
  %5168 = call float @dx.op.dot3.f32(i32 55, float %5163, float %5164, float %5165, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = fmul fast float %5168, %5168
  %5170 = fmul fast float %5169, 0x3FEE471020000000
  %5171 = fadd fast float %5170, 0xBFD42F6020000000
  %5172 = fmul fast float %5128, 0x3FD20DD760000000
  %5173 = fmul fast float %5171, %5167
  %5174 = fmul fast float %5166, 0x3FDF454380000000
  %5175 = fmul fast float %5174, %5168
  %5176 = fadd fast float %5175, %5172
  %5177 = fadd fast float %5176, %5173
  %5178 = call float @dx.op.dot3.f32(i32 55, float %5163, float %5164, float %5165, float %5064, float %5065, float %5066)  ; Dot3(ax,ay,az,bx,by,bz)
  %5179 = fmul fast float %5178, 0x3FDF454380000000
  %5180 = fmul fast float %5178, %5178
  %5181 = fmul fast float %5180, 0x3FEE471020000000
  %5182 = fadd fast float %5181, 0xBFD42F6020000000
  %5183 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5166, float %5167, float 0x3FD20DD760000000, float %5179, float %5182)  ; Dot3(ax,ay,az,bx,by,bz)
  %5184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5185 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = fcmp fast oeq float %5185, 0.000000e+00
  %5187 = fcmp fast oeq float %5184, 0.000000e+00
  %5188 = or i1 %5187, %5186
  br i1 %5188, label %5218, label %5189

; <label>:5189                                    ; preds = %5162
  %5190 = fsub fast float -0.000000e+00, %55
  %5191 = fsub fast float -0.000000e+00, %53
  %5192 = call float @dx.op.unary.f32(i32 24, float %5185)  ; Sqrt(value)
  %5193 = fdiv fast float %5192, %5184
  %5194 = fcmp fast ogt float %5193, 0x3FFB6F8900000000
  %5195 = select i1 %5194, float 0x3FFB6F8900000000, float %5193
  %5196 = fmul fast float %5195, 0x3FE8A23460000000
  %5197 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5198 = call float @dx.op.binary.f32(i32 35, float %5195, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5199 = fmul fast float %5197, %5184
  %5200 = fmul fast float %5198, 0x3FF279A740000000
  %5201 = fadd fast float %5200, -1.000000e+00
  %5202 = call float @dx.op.dot3.f32(i32 55, float %5190, float %5191, float %54, float %5190, float %5191, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5203 = call float @dx.op.unary.f32(i32 25, float %5202)  ; Rsqrt(value)
  %5204 = fmul fast float %5203, %5190
  %5205 = fmul fast float %5203, %5191
  %5206 = fmul fast float %5203, %54
  %5207 = fmul fast float %5201, %5201
  %5208 = fsub fast float 1.000000e+00, %5207
  %5209 = fmul fast float %5198, 0x40005F8BE0000000
  %5210 = fsub fast float 0x400C5BF8A0000000, %5209
  %5211 = fdiv fast float %5199, %5210
  %5212 = fmul fast float %5211, 0x3FEE31C3C0000000
  %5213 = fmul fast float %5212, %5208
  %5214 = fmul fast float %5198, 0x3FDACB7480000000
  %5215 = fadd fast float %5214, 0xBFD7347680000000
  %5216 = fmul fast float %5215, %5211
  %5217 = fmul fast float %5216, %5208
  br label %5218

; <label>:5218                                    ; preds = %5189, %5162
  %5219 = phi float [ %5204, %5189 ], [ 0.000000e+00, %5162 ]
  %5220 = phi float [ %5205, %5189 ], [ 0.000000e+00, %5162 ]
  %5221 = phi float [ %5206, %5189 ], [ 0.000000e+00, %5162 ]
  %5222 = phi float [ %5213, %5189 ], [ 0.000000e+00, %5162 ]
  %5223 = phi float [ %5217, %5189 ], [ 0.000000e+00, %5162 ]
  %5224 = call float @dx.op.dot3.f32(i32 55, float %5219, float %5220, float %5221, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5225 = fmul fast float %5224, %5224
  %5226 = fmul fast float %5225, 0x3FEE471020000000
  %5227 = fadd fast float %5226, 0xBFD42F6020000000
  %5228 = fmul fast float %5184, 0x3FD20DD760000000
  %5229 = fmul fast float %5227, %5223
  %5230 = fmul fast float %5222, 0x3FDF454380000000
  %5231 = fmul fast float %5230, %5224
  %5232 = fadd fast float %5231, %5228
  %5233 = fadd fast float %5232, %5229
  %5234 = call float @dx.op.dot3.f32(i32 55, float %5219, float %5220, float %5221, float %5064, float %5065, float %5066)  ; Dot3(ax,ay,az,bx,by,bz)
  %5235 = fmul fast float %5234, 0x3FDF454380000000
  %5236 = fmul fast float %5234, %5234
  %5237 = fmul fast float %5236, 0x3FEE471020000000
  %5238 = fadd fast float %5237, 0xBFD42F6020000000
  %5239 = call float @dx.op.dot3.f32(i32 55, float %5184, float %5222, float %5223, float 0x3FD20DD760000000, float %5235, float %5238)  ; Dot3(ax,ay,az,bx,by,bz)
  %5240 = call float @dx.op.binary.f32(i32 35, float %5121, float 0.000000e+00)  ; FMax(a,b)
  %5241 = call float @dx.op.binary.f32(i32 35, float %5177, float 0.000000e+00)  ; FMax(a,b)
  %5242 = call float @dx.op.binary.f32(i32 35, float %5233, float 0.000000e+00)  ; FMax(a,b)
  %5243 = call float @dx.op.binary.f32(i32 35, float %5127, float 0.000000e+00)  ; FMax(a,b)
  %5244 = call float @dx.op.binary.f32(i32 35, float %5183, float 0.000000e+00)  ; FMax(a,b)
  %5245 = call float @dx.op.binary.f32(i32 35, float %5239, float 0.000000e+00)  ; FMax(a,b)
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 0
  %5248 = call float @dx.op.binary.f32(i32 36, float %5045, float %5247)  ; FMin(a,b)
  %5249 = fsub fast float 1.000000e+00, %5067
  %5250 = fmul fast float %5248, %5249
  %5251 = fsub fast float 1.000000e+00, %5250
  %5252 = bitcast float %5251 to i32
  %5253 = sub nsw i32 2129859010, %5252
  %5254 = bitcast i32 %5253 to float
  %5255 = call float @dx.op.binary.f32(i32 36, float %5046, float %5247)  ; FMin(a,b)
  %5256 = fmul fast float %5255, %5249
  %5257 = fsub fast float 1.000000e+00, %5256
  %5258 = bitcast float %5257 to i32
  %5259 = sub nsw i32 2129859010, %5258
  %5260 = bitcast i32 %5259 to float
  %5261 = call float @dx.op.binary.f32(i32 36, float %5047, float %5247)  ; FMin(a,b)
  %5262 = fmul fast float %5261, %5249
  %5263 = fsub fast float 1.000000e+00, %5262
  %5264 = bitcast float %5263 to i32
  %5265 = sub nsw i32 2129859010, %5264
  %5266 = bitcast i32 %5265 to float
  %5267 = fmul fast float %5240, %5067
  %5268 = fmul fast float %5267, %5254
  %5269 = fmul fast float %5241, %5067
  %5270 = fmul fast float %5269, %5260
  %5271 = fmul fast float %5242, %5067
  %5272 = fmul fast float %5271, %5266
  %5273 = call float @dx.op.binary.f32(i32 36, float %5048, float %5247)  ; FMin(a,b)
  %5274 = fmul fast float %5273, %5249
  %5275 = fsub fast float 1.000000e+00, %5274
  %5276 = bitcast float %5275 to i32
  %5277 = sub nsw i32 2129859010, %5276
  %5278 = bitcast i32 %5277 to float
  %5279 = call float @dx.op.binary.f32(i32 36, float %5049, float %5247)  ; FMin(a,b)
  %5280 = fmul fast float %5279, %5249
  %5281 = fsub fast float 1.000000e+00, %5280
  %5282 = bitcast float %5281 to i32
  %5283 = sub nsw i32 2129859010, %5282
  %5284 = bitcast i32 %5283 to float
  %5285 = call float @dx.op.binary.f32(i32 36, float %5056, float %5247)  ; FMin(a,b)
  %5286 = fmul fast float %5285, %5249
  %5287 = fsub fast float 1.000000e+00, %5286
  %5288 = bitcast float %5287 to i32
  %5289 = sub nsw i32 2129859010, %5288
  %5290 = bitcast i32 %5289 to float
  %5291 = fmul fast float %5243, %5067
  %5292 = fmul fast float %5291, %5278
  %5293 = fmul fast float %5244, %5067
  %5294 = fmul fast float %5293, %5284
  %5295 = fmul fast float %5245, %5067
  %5296 = fmul fast float %5295, %5290
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5268, float %5270, float %5272, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = select i1 %205, float 0.000000e+00, float %5268
  %5299 = select i1 %205, float %5297, float %5270
  %5300 = select i1 %205, float 0.000000e+00, float %5272
  %5301 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5294, float %5296, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5302 = select i1 %205, float 0.000000e+00, float %5292
  %5303 = select i1 %205, float %5301, float %5294
  %5304 = select i1 %205, float 0.000000e+00, float %5296
  %5305 = fmul fast float %5058, 9.843750e-01
  %5306 = fmul fast float %5054, 9.843750e-01
  %5307 = fadd fast float %5305, 7.812500e-03
  %5308 = fadd fast float %5306, 7.812500e-03
  %5309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5307, float %5308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5310 = extractvalue %dx.types.ResRet.f32 %5309, 2
  %5311 = extractvalue %dx.types.ResRet.f32 %5309, 3
  %5312 = fmul fast float %5310, %5048
  %5313 = fmul fast float %5310, %5049
  %5314 = fmul fast float %5310, %5056
  %5315 = fadd fast float %5312, %5311
  %5316 = fadd fast float %5313, %5311
  %5317 = fadd fast float %5314, %5311
  %5318 = fcmp fast ogt float %3851, 0.000000e+00
  br i1 %5318, label %5319, label %5345

; <label>:5319                                    ; preds = %5218
  %5320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3851, float %5058, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5321 = extractvalue %dx.types.ResRet.f32 %5320, 0
  %5322 = extractvalue %dx.types.ResRet.f32 %5320, 1
  %5323 = extractvalue %dx.types.ResRet.f32 %5320, 2
  %5324 = fadd fast float %5321, -5.000000e-01
  %5325 = fadd fast float %5322, -5.000000e-01
  %5326 = fadd fast float %5323, -5.000000e-01
  %5327 = fsub fast float 1.000000e+00, %5048
  %5328 = fsub fast float 1.000000e+00, %5049
  %5329 = fsub fast float 1.000000e+00, %5056
  %5330 = fmul fast float %5048, 4.000000e+00
  %5331 = fmul fast float %5330, %5327
  %5332 = fmul fast float %5331, %5324
  %5333 = fmul fast float %5049, 4.000000e+00
  %5334 = fmul fast float %5333, %5328
  %5335 = fmul fast float %5334, %5325
  %5336 = fmul fast float %5056, 4.000000e+00
  %5337 = fmul fast float %5336, %5329
  %5338 = fmul fast float %5337, %5326
  %5339 = fadd fast float %5332, %5315
  %5340 = fadd fast float %5335, %5316
  %5341 = fadd fast float %5338, %5317
  %5342 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5343 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5344 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  br label %5345

; <label>:5345                                    ; preds = %5319, %5218
  %5346 = phi float [ %5342, %5319 ], [ %5315, %5218 ]
  %5347 = phi float [ %5343, %5319 ], [ %5316, %5218 ]
  %5348 = phi float [ %5344, %5319 ], [ %5317, %5218 ]
  %5349 = call float @dx.op.binary.f32(i32 35, float %5347, float %5348)  ; FMax(a,b)
  %5350 = call float @dx.op.binary.f32(i32 35, float %5346, float %5349)  ; FMax(a,b)
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = fmul fast float %5351, %5298
  %5353 = fmul fast float %5351, %5299
  %5354 = fmul fast float %5351, %5300
  %5355 = call float @dx.op.dot3.f32(i32 55, float %5045, float %5046, float %5047, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5356 = fcmp fast ogt float %5355, 0x3E7FF19E20000000
  %5357 = fdiv fast float 1.000000e+00, %5355
  %5358 = select i1 %5356, float %5357, float 0.000000e+00
  %5359 = fmul fast float %5358, %5045
  %5360 = fmul fast float %5358, %5046
  %5361 = fmul fast float %5358, %5047
  %5362 = fadd fast float %5359, -1.000000e+00
  %5363 = fadd fast float %5360, -1.000000e+00
  %5364 = fadd fast float %5361, -1.000000e+00
  %5365 = fmul fast float %5362, 5.000000e-01
  %5366 = fmul fast float %5363, 5.000000e-01
  %5367 = fmul fast float %5364, 5.000000e-01
  %5368 = fadd fast float %5365, 1.000000e+00
  %5369 = fadd fast float %5366, 1.000000e+00
  %5370 = fadd fast float %5367, 1.000000e+00
  %5371 = fmul fast float %5346, %5302
  %5372 = fmul fast float %5347, %5303
  %5373 = fmul fast float %5348, %5304
  %5374 = fsub fast float 1.000000e+00, %5058
  %5375 = bitcast float %5374 to i32
  %5376 = sitofp i32 %5375 to float
  %5377 = fmul fast float %5376, 5.000000e+00
  %5378 = fadd fast float %5377, 0xC1EFBF8940000000
  %5379 = fptosi float %5378 to i32
  %5380 = bitcast i32 %5379 to float
  %5381 = fmul fast float %5380, %3852
  %5382 = fmul fast float %5298, %5381
  %5383 = fmul fast float %5382, %5351
  %5384 = fmul fast float %5383, %5368
  %5385 = fmul fast float %5299, %5381
  %5386 = fmul fast float %5385, %5351
  %5387 = fmul fast float %5386, %5369
  %5388 = fmul fast float %5300, %5381
  %5389 = fmul fast float %5388, %5351
  %5390 = fmul fast float %5389, %5370
  %5391 = fmul fast float %5352, %3848
  %5392 = fmul fast float %5353, %3848
  %5393 = fmul fast float %5354, %3848
  %5394 = fadd fast float %5371, %3844
  %5395 = fadd fast float %5394, %5384
  %5396 = fmul fast float %5395, %3848
  %5397 = fadd fast float %5372, %3845
  %5398 = fadd fast float %5397, %5387
  %5399 = fmul fast float %5398, %3848
  %5400 = fadd fast float %5373, %3846
  %5401 = fadd fast float %5400, %5390
  %5402 = fmul fast float %5401, %3848
  %5403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5404 = extractvalue %dx.types.CBufRet.f32 %5403, 3
  %5405 = fcmp fast oeq float %5404, 0.000000e+00
  br i1 %5405, label %5633, label %5406

; <label>:5406                                    ; preds = %5345
  %5407 = extractvalue %dx.types.CBufRet.f32 %5403, 0
  %5408 = extractvalue %dx.types.CBufRet.f32 %5403, 1
  %5409 = extractvalue %dx.types.CBufRet.f32 %5403, 2
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.CBufRet.f32 %5410, 1
  %5413 = extractvalue %dx.types.CBufRet.f32 %5410, 2
  %5414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5415 = extractvalue %dx.types.CBufRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.CBufRet.f32 %5414, 1
  %5417 = call float @dx.op.dot3.f32(i32 55, float %5411, float %5412, float %5413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5418 = select i1 %205, float %5415, float %5411
  %5419 = select i1 %205, float %5417, float %5412
  %5420 = select i1 %205, float %5416, float %5413
  %5421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5422 = extractvalue %dx.types.CBufRet.f32 %5421, 1
  %5423 = fcmp fast une float %5422, 0.000000e+00
  br i1 %5423, label %5424, label %5441

; <label>:5424                                    ; preds = %5406
  %5425 = fptoui float %83 to i32
  %5426 = fptoui float %84 to i32
  %5427 = lshr i32 %5425, 4
  %5428 = lshr i32 %5426, 4
  %5429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5430 = extractvalue %dx.types.CBufRet.f32 %5429, 0
  %5431 = fptoui float %5430 to i32
  %5432 = add i32 %5431, 15
  %5433 = lshr i32 %5432, 4
  %5434 = mul i32 %5433, %5428
  %5435 = add i32 %5434, %5427
  %5436 = shl i32 %5435, 3
  %5437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5436, i32 undef)  ; BufferLoad(srv,index,wot)
  %5438 = extractvalue %dx.types.ResRet.i32 %5437, 0
  %5439 = and i32 %5438, -268435456
  %5440 = icmp eq i32 %5439, -1342177280
  br i1 %5440, label %5451, label %5441

; <label>:5441                                    ; preds = %5424, %5406
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 2
  %5444 = extractvalue %dx.types.CBufRet.f32 %5442, 3
  %5445 = fmul fast float %5443, %83
  %5446 = fmul fast float %5444, %84
  %5447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5445, float %5446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5448 = extractvalue %dx.types.ResRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.ResRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.ResRet.f32 %5447, 2
  br label %5451

; <label>:5451                                    ; preds = %5441, %5424
  %5452 = phi float [ %5448, %5441 ], [ 0.000000e+00, %5424 ]
  %5453 = phi float [ %5449, %5441 ], [ 0.000000e+00, %5424 ]
  %5454 = phi float [ %5450, %5441 ], [ 0.000000e+00, %5424 ]
  %5455 = call float @dx.op.binary.f32(i32 36, float %5453, float %5454)  ; FMin(a,b)
  %5456 = call float @dx.op.binary.f32(i32 36, float %5452, float %5455)  ; FMin(a,b)
  %5457 = fcmp fast ogt float %5456, 0.000000e+00
  br i1 %5457, label %5458, label %5633, !dx.controlflow.hints !76

; <label>:5458                                    ; preds = %5451
  %5459 = fmul fast float %5452, %5418
  %5460 = fmul fast float %5453, %5419
  %5461 = fmul fast float %5454, %5420
  %5462 = fsub fast float %5407, %5044
  %5463 = fsub fast float %5408, %5043
  %5464 = fsub fast float %5409, %5042
  %5465 = call float @dx.op.dot3.f32(i32 55, float %5462, float %5463, float %5464, float %5462, float %5463, float %5464)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = call float @dx.op.unary.f32(i32 25, float %5465)  ; Rsqrt(value)
  %5467 = fmul fast float %5466, %5462
  %5468 = fmul fast float %5466, %5463
  %5469 = fmul fast float %5466, %5464
  %5470 = call float @dx.op.dot3.f32(i32 55, float %5407, float %5408, float %5409, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5040, float %5039, float %5467, float %5468, float %5469)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5473 = fmul fast float %5472, %5472
  %5474 = fmul fast float %5473, %5071
  %5475 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5476 = fmul fast float %5475, %5472
  %5477 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5052, float %5053, float %5467, float %5468, float %5469)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = fmul fast float %5477, %5477
  %5479 = call float @dx.op.unary.f32(i32 6, float %5470)  ; FAbs(value)
  %5480 = fsub fast float 1.000000e+00, %5054
  %5481 = call float @dx.op.binary.f32(i32 35, float %5480, float 0x3F847AE140000000)  ; FMax(a,b)
  %5482 = fmul fast float %5481, %5481
  %5483 = fmul fast float %5482, %5482
  %5484 = fsub fast float 1.000000e+00, %5483
  %5485 = fmul fast float %5058, %5058
  %5486 = fmul fast float %5485, %5484
  %5487 = fadd fast float %5486, %5483
  %5488 = bitcast float %5487 to i32
  %5489 = ashr i32 %5488, 1
  %5490 = add nsw i32 %5489, 532487669
  %5491 = bitcast i32 %5490 to float
  %5492 = fadd fast float %5491, %5058
  %5493 = fmul fast float %5483, %5478
  %5494 = fsub fast float 1.000000e+00, %5478
  %5495 = fadd fast float %5494, %5493
  %5496 = fmul fast float %5479, %5479
  %5497 = fmul fast float %5496, %5484
  %5498 = fadd fast float %5497, %5483
  %5499 = bitcast float %5498 to i32
  %5500 = ashr i32 %5499, 1
  %5501 = add nsw i32 %5500, 532487669
  %5502 = bitcast i32 %5501 to float
  %5503 = fadd fast float %5502, %5479
  %5504 = fmul fast float %5495, %5495
  %5505 = fmul fast float %5504, %5492
  %5506 = fmul fast float %5505, %5503
  %5507 = fdiv fast float 0x3FF0A00000000000, %5506
  %5508 = fmul fast float %5507, %5483
  %5509 = call float @dx.op.unary.f32(i32 6, float %5471)  ; FAbs(value)
  %5510 = fsub fast float 1.000000e+00, %5509
  %5511 = bitcast float %5510 to i32
  %5512 = sitofp i32 %5511 to float
  %5513 = fmul fast float %5512, 5.000000e+00
  %5514 = fadd fast float %5513, 0xC1EFBF8940000000
  %5515 = fptosi float %5514 to i32
  %5516 = bitcast i32 %5515 to float
  %5517 = fsub fast float 1.000000e+00, %5048
  %5518 = fsub fast float 1.000000e+00, %5049
  %5519 = fsub fast float 1.000000e+00, %5056
  %5520 = fmul fast float %5516, %5517
  %5521 = fmul fast float %5516, %5518
  %5522 = fmul fast float %5516, %5519
  %5523 = fadd fast float %5520, %5048
  %5524 = fadd fast float %5521, %5049
  %5525 = fadd fast float %5522, %5056
  br i1 %5318, label %5526, label %5549

; <label>:5526                                    ; preds = %5458
  %5527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3851, float %5509, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5528 = extractvalue %dx.types.ResRet.f32 %5527, 0
  %5529 = extractvalue %dx.types.ResRet.f32 %5527, 1
  %5530 = extractvalue %dx.types.ResRet.f32 %5527, 2
  %5531 = fadd fast float %5528, -5.000000e-01
  %5532 = fadd fast float %5529, -5.000000e-01
  %5533 = fadd fast float %5530, -5.000000e-01
  %5534 = fmul fast float %5048, 4.000000e+00
  %5535 = fmul fast float %5534, %5517
  %5536 = fmul fast float %5535, %5531
  %5537 = fmul fast float %5049, 4.000000e+00
  %5538 = fmul fast float %5537, %5518
  %5539 = fmul fast float %5538, %5532
  %5540 = fmul fast float %5056, 4.000000e+00
  %5541 = fmul fast float %5540, %5519
  %5542 = fmul fast float %5541, %5533
  %5543 = fadd fast float %5536, %5523
  %5544 = fadd fast float %5539, %5524
  %5545 = fadd fast float %5542, %5525
  %5546 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5547 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5548 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  br label %5549

; <label>:5549                                    ; preds = %5526, %5458
  %5550 = phi float [ %5546, %5526 ], [ %5523, %5458 ]
  %5551 = phi float [ %5547, %5526 ], [ %5524, %5458 ]
  %5552 = phi float [ %5548, %5526 ], [ %5525, %5458 ]
  %5553 = fmul fast float %5470, 9.843750e-01
  %5554 = fadd fast float %5553, 7.812500e-03
  %5555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5554, float %5308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5556 = extractvalue %dx.types.ResRet.f32 %5555, 2
  %5557 = extractvalue %dx.types.ResRet.f32 %5555, 3
  %5558 = fmul fast float %5556, %5048
  %5559 = fmul fast float %5556, %5049
  %5560 = fmul fast float %5556, %5056
  %5561 = fadd fast float %5558, %5557
  %5562 = fadd fast float %5559, %5557
  %5563 = fadd fast float %5560, %5557
  br i1 %5318, label %5564, label %5587

; <label>:5564                                    ; preds = %5549
  %5565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3851, float %5470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5566 = extractvalue %dx.types.ResRet.f32 %5565, 0
  %5567 = extractvalue %dx.types.ResRet.f32 %5565, 1
  %5568 = extractvalue %dx.types.ResRet.f32 %5565, 2
  %5569 = fadd fast float %5566, -5.000000e-01
  %5570 = fadd fast float %5567, -5.000000e-01
  %5571 = fadd fast float %5568, -5.000000e-01
  %5572 = fmul fast float %5048, 4.000000e+00
  %5573 = fmul fast float %5572, %5517
  %5574 = fmul fast float %5573, %5569
  %5575 = fmul fast float %5049, 4.000000e+00
  %5576 = fmul fast float %5575, %5518
  %5577 = fmul fast float %5576, %5570
  %5578 = fmul fast float %5056, 4.000000e+00
  %5579 = fmul fast float %5578, %5519
  %5580 = fmul fast float %5579, %5571
  %5581 = fadd fast float %5574, %5561
  %5582 = fadd fast float %5577, %5562
  %5583 = fadd fast float %5580, %5563
  %5584 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5585 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5586 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  br label %5587

; <label>:5587                                    ; preds = %5564, %5549
  %5588 = phi float [ %5584, %5564 ], [ %5561, %5549 ]
  %5589 = phi float [ %5585, %5564 ], [ %5562, %5549 ]
  %5590 = phi float [ %5586, %5564 ], [ %5563, %5549 ]
  %5591 = call float @dx.op.binary.f32(i32 35, float %5589, float %5590)  ; FMax(a,b)
  %5592 = call float @dx.op.binary.f32(i32 35, float %5588, float %5591)  ; FMax(a,b)
  %5593 = fsub fast float 1.000000e+00, %5592
  %5594 = fmul fast float %5550, %5508
  %5595 = fmul fast float %5551, %5508
  %5596 = fmul fast float %5552, %5508
  %5597 = fsub fast float 1.000000e+00, %5471
  %5598 = bitcast float %5597 to i32
  %5599 = sitofp i32 %5598 to float
  %5600 = fmul fast float %5599, 5.000000e+00
  %5601 = fadd fast float %5600, 0xC1EFBF8940000000
  %5602 = fptosi float %5601 to i32
  %5603 = bitcast i32 %5602 to float
  %5604 = fmul fast float %5603, %3852
  %5605 = fmul fast float %5593, %5604
  %5606 = fmul fast float %5605, %5368
  %5607 = fmul fast float %5605, %5369
  %5608 = fmul fast float %5605, %5370
  %5609 = fadd fast float %5606, %5594
  %5610 = fadd fast float %5607, %5595
  %5611 = fadd fast float %5608, %5596
  %5612 = fmul fast float %5476, %5459
  %5613 = fmul fast float %5612, %5593
  %5614 = fmul fast float %5476, %5460
  %5615 = fmul fast float %5614, %5593
  %5616 = fmul fast float %5476, %5461
  %5617 = fmul fast float %5616, %5593
  %5618 = fmul fast float %5612, %5609
  %5619 = fmul fast float %5614, %5610
  %5620 = fmul fast float %5616, %5611
  %5621 = fadd fast float %5613, %5352
  %5622 = fmul fast float %5621, %3848
  %5623 = fadd fast float %5615, %5353
  %5624 = fmul fast float %5623, %3848
  %5625 = fadd fast float %5617, %5354
  %5626 = fmul fast float %5625, %3848
  %5627 = fadd fast float %5618, %5395
  %5628 = fmul fast float %5627, %3848
  %5629 = fadd fast float %5619, %5398
  %5630 = fmul fast float %5629, %3848
  %5631 = fadd fast float %5620, %5401
  %5632 = fmul fast float %5631, %3848
  br label %5633

; <label>:5633                                    ; preds = %5587, %5451, %5345
  %5634 = phi float [ %5396, %5345 ], [ %5396, %5451 ], [ %5628, %5587 ]
  %5635 = phi float [ %5399, %5345 ], [ %5399, %5451 ], [ %5630, %5587 ]
  %5636 = phi float [ %5402, %5345 ], [ %5402, %5451 ], [ %5632, %5587 ]
  %5637 = phi float [ %5391, %5345 ], [ %5391, %5451 ], [ %5622, %5587 ]
  %5638 = phi float [ %5392, %5345 ], [ %5392, %5451 ], [ %5624, %5587 ]
  %5639 = phi float [ %5393, %5345 ], [ %5393, %5451 ], [ %5626, %5587 ]
  %5640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5641 = extractvalue %dx.types.CBufRet.i32 %5640, 0
  %5642 = icmp eq i32 %5641, 0
  br i1 %5642, label %6077, label %5643

; <label>:5643                                    ; preds = %5633
  %5644 = fptoui float %83 to i32
  %5645 = fptoui float %84 to i32
  %5646 = lshr i32 %5644, 4
  %5647 = lshr i32 %5645, 4
  %5648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.i32 %5648, 0
  %5650 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5647, i32 %5649, i32 %5646)  ; UMad(a,b,c)
  %5651 = add nsw i32 %5641, -1
  %5652 = call i32 @dx.op.binary.i32(i32 37, i32 %5651, i32 0)  ; IMax(a,b)
  %5653 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %5654 = fptoui float %5653 to i32
  %5655 = lshr i32 %5654, 5
  %5656 = call i32 @dx.op.binary.i32(i32 40, i32 %5655, i32 8191)  ; UMin(a,b)
  %5657 = shl i32 %5656, 2
  %5658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5657, i32 undef)  ; BufferLoad(srv,index,wot)
  %5659 = extractvalue %dx.types.ResRet.i32 %5658, 0
  %5660 = lshr i32 %5659, 16
  %5661 = and i32 %5659, 65535
  %5662 = lshr i32 %5659, 21
  %5663 = lshr i32 %5661, 5
  %5664 = call i32 @dx.op.binary.i32(i32 40, i32 %5663, i32 %5652)  ; UMin(a,b)
  %5665 = icmp ugt i32 %5662, %5664
  br i1 %5665, label %6077, label %5666

; <label>:5666                                    ; preds = %5643
  br label %5667

; <label>:5667                                    ; preds = %6067, %5666
  %5668 = phi i32 [ %6074, %6067 ], [ %5662, %5666 ]
  %5669 = phi float [ %6068, %6067 ], [ %5634, %5666 ]
  %5670 = phi float [ %6069, %6067 ], [ %5635, %5666 ]
  %5671 = phi float [ %6070, %6067 ], [ %5636, %5666 ]
  %5672 = phi float [ %6071, %6067 ], [ %5637, %5666 ]
  %5673 = phi float [ %6072, %6067 ], [ %5638, %5666 ]
  %5674 = phi float [ %6073, %6067 ], [ %5639, %5666 ]
  %5675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.i32 %5675, 0
  %5677 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5650, i32 %5676, i32 %5668)  ; UMad(a,b,c)
  %5678 = shl i32 %5677, 2
  %5679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5678, i32 undef)  ; BufferLoad(srv,index,wot)
  %5680 = extractvalue %dx.types.ResRet.i32 %5679, 0
  %5681 = shl i32 %5668, 5
  %5682 = sub nsw i32 %5660, %5681
  %5683 = call i32 @dx.op.binary.i32(i32 37, i32 %5682, i32 0)  ; IMax(a,b)
  %5684 = call i32 @dx.op.binary.i32(i32 38, i32 %5683, i32 31)  ; IMin(a,b)
  %5685 = sub nsw i32 1, %5660
  %5686 = add nsw i32 %5685, %5661
  %5687 = call i32 @dx.op.binary.i32(i32 37, i32 %5686, i32 0)  ; IMax(a,b)
  %5688 = call i32 @dx.op.binary.i32(i32 38, i32 %5687, i32 32)  ; IMin(a,b)
  %5689 = and i32 %5688, 31
  %5690 = shl i32 -1, %5689
  %5691 = xor i32 %5690, -1
  %5692 = and i32 %5684, 31
  %5693 = shl i32 %5691, %5692
  %5694 = icmp eq i32 %5688, 32
  %5695 = select i1 %5694, i32 -1, i32 %5693
  %5696 = and i32 %5695, %5680
  %5697 = icmp eq i32 %5696, 0
  br i1 %5697, label %6067, label %5698

; <label>:5698                                    ; preds = %5667
  br label %5699

; <label>:5699                                    ; preds = %5779, %5698
  %5700 = phi i32 [ %5711, %5779 ], [ %5696, %5698 ]
  %5701 = phi float [ %5780, %5779 ], [ %5669, %5698 ]
  %5702 = phi float [ %5781, %5779 ], [ %5670, %5698 ]
  %5703 = phi float [ %5782, %5779 ], [ %5671, %5698 ]
  %5704 = phi float [ %5783, %5779 ], [ %5672, %5698 ]
  %5705 = phi float [ %5784, %5779 ], [ %5673, %5698 ]
  %5706 = phi float [ %5785, %5779 ], [ %5674, %5698 ]
  %5707 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5700)  ; FirstbitLo(value)
  %5708 = add i32 %5707, %5681
  %5709 = and i32 %5707, 31
  %5710 = shl i32 1, %5709
  %5711 = xor i32 %5710, %5700
  %5712 = mul i32 %5708, 112
  %5713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5712, i32 undef)  ; BufferLoad(srv,index,wot)
  %5714 = extractvalue %dx.types.ResRet.f32 %5713, 0
  %5715 = extractvalue %dx.types.ResRet.f32 %5713, 1
  %5716 = extractvalue %dx.types.ResRet.f32 %5713, 2
  %5717 = or i32 %5712, 12
  %5718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5717, i32 undef)  ; BufferLoad(srv,index,wot)
  %5719 = extractvalue %dx.types.ResRet.f32 %5718, 0
  %5720 = add i32 %5712, 44
  %5721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5720, i32 undef)  ; BufferLoad(srv,index,wot)
  %5722 = extractvalue %dx.types.ResRet.f32 %5721, 0
  %5723 = add i32 %5712, 48
  %5724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5723, i32 undef)  ; BufferLoad(srv,index,wot)
  %5725 = extractvalue %dx.types.ResRet.f32 %5724, 0
  %5726 = extractvalue %dx.types.ResRet.f32 %5724, 1
  %5727 = extractvalue %dx.types.ResRet.f32 %5724, 2
  %5728 = add i32 %5712, 80
  %5729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5728, i32 undef)  ; BufferLoad(srv,index,wot)
  %5730 = extractvalue %dx.types.ResRet.f32 %5729, 1
  %5731 = extractvalue %dx.types.ResRet.f32 %5729, 2
  %5732 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5715, float %5716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = select i1 %205, float %5730, float %5714
  %5734 = select i1 %205, float %5732, float %5715
  %5735 = select i1 %205, float %5731, float %5716
  %5736 = fsub fast float %5725, %166
  %5737 = fsub fast float %5726, %167
  %5738 = fsub fast float %5727, %168
  %5739 = call float @dx.op.dot3.f32(i32 55, float %5736, float %5737, float %5738, float %5736, float %5737, float %5738)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = call float @dx.op.unary.f32(i32 24, float %5739)  ; Sqrt(value)
  %5741 = fdiv fast float 1.000000e+00, %5740
  %5742 = fmul fast float %5741, %5736
  %5743 = fmul fast float %5741, %5737
  %5744 = fmul fast float %5741, %5738
  %5745 = fadd fast float %5740, %5719
  %5746 = fdiv fast float 1.000000e+00, %5745
  %5747 = fmul float %5722, %5746
  %5748 = fmul float %5747, %5747
  %5749 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  %5750 = and i32 %5710, %5696
  %5751 = icmp eq i32 %5750, 0
  br i1 %5751, label %5774, label %5752, !dx.controlflow.hints !77

; <label>:5752                                    ; preds = %5699
  %5753 = lshr i32 %5644, 5
  %5754 = lshr i32 %5645, 5
  %5755 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5753, i32 %5754, i32 %5708, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5756 = extractvalue %dx.types.ResRet.i32 %5755, 0
  %5757 = and i32 %5756, 3
  %5758 = icmp eq i32 %5757, 0
  %5759 = select i1 %5758, float 1.000000e+00, float 0.000000e+00
  %5760 = icmp eq i32 %5757, 3
  br i1 %5760, label %5761, label %5774

; <label>:5761                                    ; preds = %5752
  %5762 = lshr i32 %5756, 10
  %5763 = and i32 %5762, 8160
  %5764 = and i32 %5645, 31
  %5765 = or i32 %5763, %5764
  %5766 = lshr i32 %5756, 1
  %5767 = and i32 %5766, 16352
  %5768 = and i32 %5644, 31
  %5769 = or i32 %5767, %5768
  %5770 = lshr i32 %5756, 23
  %5771 = and i32 %5770, 255
  %5772 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5769, i32 %5765, i32 %5771, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5773 = extractvalue %dx.types.ResRet.f32 %5772, 0
  br label %5774

; <label>:5774                                    ; preds = %5761, %5752, %5699
  %5775 = phi float [ %5773, %5761 ], [ %5759, %5752 ], [ 0.000000e+00, %5699 ]
  %5776 = call float @dx.op.binary.f32(i32 36, float %5775, float %5775)  ; FMin(a,b)
  %5777 = call float @dx.op.binary.f32(i32 36, float %5775, float %5776)  ; FMin(a,b)
  %5778 = fcmp fast ogt float %5777, 0.000000e+00
  br i1 %5778, label %5787, label %5779, !dx.controlflow.hints !78

; <label>:5779                                    ; preds = %6023, %5774
  %5780 = phi float [ %5701, %5774 ], [ %6063, %6023 ]
  %5781 = phi float [ %5702, %5774 ], [ %6064, %6023 ]
  %5782 = phi float [ %5703, %5774 ], [ %6065, %6023 ]
  %5783 = phi float [ %5704, %5774 ], [ %6057, %6023 ]
  %5784 = phi float [ %5705, %5774 ], [ %6058, %6023 ]
  %5785 = phi float [ %5706, %5774 ], [ %6059, %6023 ]
  %5786 = icmp eq i32 %5700, %5710
  br i1 %5786, label %6066, label %5699

; <label>:5787                                    ; preds = %5774
  %5788 = fmul fast float %5775, %5733
  %5789 = fmul fast float %5775, %5734
  %5790 = fmul fast float %5775, %5735
  %5791 = fsub fast float %5727, %4252
  %5792 = fcmp fast ogt float %5791, 0.000000e+00
  %5793 = fsub fast float %168, %4252
  %5794 = fcmp fast ogt float %5793, 0.000000e+00
  %5795 = xor i1 %5794, %5792
  %5796 = fsub fast float %4252, %5727
  %5797 = fmul fast float %5796, 2.000000e+00
  %5798 = fadd fast float %5797, %5727
  %5799 = select i1 %5795, float %5727, float %5798
  %5800 = fsub fast float %5799, %168
  %5801 = call float @dx.op.dot3.f32(i32 55, float %5736, float %5737, float %5800, float %5736, float %5737, float %5800)  ; Dot3(ax,ay,az,bx,by,bz)
  %5802 = call float @dx.op.unary.f32(i32 25, float %5801)  ; Rsqrt(value)
  %5803 = fmul fast float %5802, %5736
  %5804 = fmul fast float %5802, %5737
  %5805 = fmul fast float %5802, %5800
  %5806 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4260)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5803, float %5804, float %5805)  ; Dot3(ax,ay,az,bx,by,bz)
  %5808 = fdiv fast float 1.000000e+00, %5807
  %5809 = fmul fast float %5808, %5806
  %5810 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5793, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5811 = fcmp fast ogt float %5810, 0.000000e+00
  %5812 = fcmp fast olt float %5810, 0.000000e+00
  %5813 = zext i1 %5811 to i32
  %5814 = zext i1 %5812 to i32
  %5815 = sub nsw i32 %5813, %5814
  %5816 = sitofp i32 %5815 to float
  %5817 = fsub fast float %5799, %4252
  %5818 = call float @dx.op.dot3.f32(i32 55, float %5736, float %5737, float %5817, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5819 = fcmp fast ogt float %5818, 0.000000e+00
  %5820 = fcmp fast olt float %5818, 0.000000e+00
  %5821 = zext i1 %5819 to i32
  %5822 = zext i1 %5820 to i32
  %5823 = sub nsw i32 %5821, %5822
  %5824 = sitofp i32 %5823 to float
  %5825 = fcmp fast une float %5816, %5824
  br i1 %5825, label %5826, label %5836

; <label>:5826                                    ; preds = %5787
  %5827 = fmul fast float %5809, %5805
  %5828 = fmul fast float %5809, %5804
  %5829 = fmul fast float %5809, %5803
  %5830 = fmul fast float %5829, %5829
  %5831 = fmul fast float %5828, %5828
  %5832 = fadd fast float %5830, %5831
  %5833 = fmul fast float %5827, %5827
  %5834 = fadd fast float %5832, %5833
  %5835 = call float @dx.op.unary.f32(i32 24, float %5834)  ; Sqrt(value)
  br label %5848

; <label>:5836                                    ; preds = %5787
  %5837 = icmp slt i32 %5815, 0
  br i1 %5837, label %5838, label %5848

; <label>:5838                                    ; preds = %5836
  %5839 = fsub fast float %166, %5725
  %5840 = fsub fast float %167, %5726
  %5841 = fsub fast float %168, %5799
  %5842 = fmul fast float %5839, %5839
  %5843 = fmul fast float %5840, %5840
  %5844 = fadd fast float %5842, %5843
  %5845 = fmul fast float %5841, %5841
  %5846 = fadd fast float %5844, %5845
  %5847 = call float @dx.op.unary.f32(i32 24, float %5846)  ; Sqrt(value)
  br label %5848

; <label>:5848                                    ; preds = %5838, %5836, %5826
  %5849 = phi float [ %5835, %5826 ], [ %5847, %5838 ], [ 0.000000e+00, %5836 ]
  %5850 = and i1 %5794, %5792
  %5851 = fsub fast float -0.000000e+00, %5849
  %5852 = select i1 %5850, float -0.000000e+00, float %5851
  %5853 = fmul fast float %4253, 0x3FF7154760000000
  %5854 = fmul fast float %5853, %5852
  %5855 = fmul fast float %4254, 0x3FF7154760000000
  %5856 = fmul fast float %5855, %5852
  %5857 = fmul fast float %4255, 0x3FF7154760000000
  %5858 = fmul fast float %5857, %5852
  %5859 = call float @dx.op.unary.f32(i32 21, float %5854)  ; Exp(value)
  %5860 = call float @dx.op.unary.f32(i32 21, float %5856)  ; Exp(value)
  %5861 = call float @dx.op.unary.f32(i32 21, float %5858)  ; Exp(value)
  %5862 = call float @dx.op.unary.f32(i32 7, float %5859)  ; Saturate(value)
  %5863 = call float @dx.op.unary.f32(i32 7, float %5860)  ; Saturate(value)
  %5864 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  %5865 = fmul fast float %5788, %5862
  %5866 = fmul fast float %5789, %5863
  %5867 = fmul fast float %5790, %5864
  %5868 = fsub fast float %5742, %5044
  %5869 = fsub fast float %5743, %5043
  %5870 = fsub fast float %5744, %5042
  %5871 = call float @dx.op.dot3.f32(i32 55, float %5868, float %5869, float %5870, float %5868, float %5869, float %5870)  ; Dot3(ax,ay,az,bx,by,bz)
  %5872 = call float @dx.op.unary.f32(i32 25, float %5871)  ; Rsqrt(value)
  %5873 = fmul fast float %5872, %5868
  %5874 = fmul fast float %5872, %5869
  %5875 = fmul fast float %5872, %5870
  %5876 = call float @dx.op.dot3.f32(i32 55, float %5742, float %5743, float %5744, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5877 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5040, float %5039, float %5873, float %5874, float %5875)  ; Dot3(ax,ay,az,bx,by,bz)
  %5878 = call float @dx.op.unary.f32(i32 7, float %5876)  ; Saturate(value)
  %5879 = fmul fast float %5878, %5749
  %5880 = fmul fast float %5878, %5878
  %5881 = fmul fast float %5880, %5071
  %5882 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5883 = fmul fast float %5879, %5882
  %5884 = bitcast float %5739 to i32
  %5885 = ashr i32 %5884, 1
  %5886 = sub nsw i32 1597463007, %5885
  %5887 = bitcast i32 %5886 to float
  %5888 = fmul fast float %5887, %5736
  %5889 = fmul fast float %5887, %5737
  %5890 = fmul fast float %5887, %5738
  %5891 = fsub fast float %5888, %5044
  %5892 = fsub fast float %5889, %5043
  %5893 = fsub fast float %5890, %5042
  %5894 = call float @dx.op.dot3.f32(i32 55, float %5891, float %5892, float %5893, float %5891, float %5892, float %5893)  ; Dot3(ax,ay,az,bx,by,bz)
  %5895 = call float @dx.op.unary.f32(i32 25, float %5894)  ; Rsqrt(value)
  %5896 = fmul fast float %5891, %5895
  %5897 = fmul fast float %5892, %5895
  %5898 = fmul fast float %5893, %5895
  %5899 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5052, float %5053, float %5896, float %5897, float %5898)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = fmul fast float %5899, %5899
  %5901 = call float @dx.op.unary.f32(i32 6, float %5876)  ; FAbs(value)
  %5902 = fsub fast float 1.000000e+00, %5054
  %5903 = call float @dx.op.binary.f32(i32 35, float %5902, float 0x3F847AE140000000)  ; FMax(a,b)
  %5904 = fmul fast float %5903, %5903
  %5905 = fmul fast float %5904, %5904
  %5906 = fsub fast float 1.000000e+00, %5905
  %5907 = fmul fast float %5058, %5058
  %5908 = fmul fast float %5907, %5906
  %5909 = fadd fast float %5908, %5905
  %5910 = bitcast float %5909 to i32
  %5911 = ashr i32 %5910, 1
  %5912 = add nsw i32 %5911, 532487669
  %5913 = bitcast i32 %5912 to float
  %5914 = fadd fast float %5913, %5058
  %5915 = fmul fast float %5905, %5900
  %5916 = fsub fast float 1.000000e+00, %5900
  %5917 = fadd fast float %5916, %5915
  %5918 = fmul fast float %5901, %5901
  %5919 = fmul fast float %5918, %5906
  %5920 = fadd fast float %5919, %5905
  %5921 = bitcast float %5920 to i32
  %5922 = ashr i32 %5921, 1
  %5923 = add nsw i32 %5922, 532487669
  %5924 = bitcast i32 %5923 to float
  %5925 = fadd fast float %5924, %5901
  %5926 = fmul fast float %5917, %5917
  %5927 = fmul fast float %5926, %5914
  %5928 = fmul fast float %5927, %5925
  %5929 = fdiv fast float 1.000000e+00, %5928
  %5930 = bitcast float %5905 to i32
  %5931 = sitofp i32 %5930 to float
  %5932 = fmul fast float %5931, 0x3FE7F73180000000
  %5933 = fadd fast float %5932, 0x41AFE27C40000000
  %5934 = fptosi float %5933 to i32
  %5935 = bitcast i32 %5934 to float
  %5936 = fmul fast float %5722, 0x3FD80E9D60000000
  %5937 = fmul fast float %5936, %5887
  %5938 = fadd fast float %5935, %5937
  %5939 = bitcast float %5938 to i32
  %5940 = sub nsw i32 2129859010, %5939
  %5941 = bitcast i32 %5940 to float
  %5942 = fmul fast float %5905, %5929
  %5943 = fmul fast float %5942, %5935
  %5944 = fmul fast float %5943, %5941
  %5945 = call float @dx.op.unary.f32(i32 6, float %5877)  ; FAbs(value)
  %5946 = fsub fast float 1.000000e+00, %5945
  %5947 = bitcast float %5946 to i32
  %5948 = sitofp i32 %5947 to float
  %5949 = fmul fast float %5948, 5.000000e+00
  %5950 = fadd fast float %5949, 0xC1EFBF8940000000
  %5951 = fptosi float %5950 to i32
  %5952 = bitcast i32 %5951 to float
  %5953 = fsub fast float 1.000000e+00, %5048
  %5954 = fsub fast float 1.000000e+00, %5049
  %5955 = fsub fast float 1.000000e+00, %5056
  %5956 = fmul fast float %5952, %5953
  %5957 = fmul fast float %5952, %5954
  %5958 = fmul fast float %5952, %5955
  %5959 = fadd fast float %5956, %5048
  %5960 = fadd fast float %5957, %5049
  %5961 = fadd fast float %5958, %5056
  br i1 %5318, label %5962, label %5985

; <label>:5962                                    ; preds = %5848
  %5963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3851, float %5945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5964 = extractvalue %dx.types.ResRet.f32 %5963, 0
  %5965 = extractvalue %dx.types.ResRet.f32 %5963, 1
  %5966 = extractvalue %dx.types.ResRet.f32 %5963, 2
  %5967 = fadd fast float %5964, -5.000000e-01
  %5968 = fadd fast float %5965, -5.000000e-01
  %5969 = fadd fast float %5966, -5.000000e-01
  %5970 = fmul fast float %5048, 4.000000e+00
  %5971 = fmul fast float %5970, %5953
  %5972 = fmul fast float %5971, %5967
  %5973 = fmul fast float %5049, 4.000000e+00
  %5974 = fmul fast float %5973, %5954
  %5975 = fmul fast float %5974, %5968
  %5976 = fmul fast float %5056, 4.000000e+00
  %5977 = fmul fast float %5976, %5955
  %5978 = fmul fast float %5977, %5969
  %5979 = fadd fast float %5972, %5959
  %5980 = fadd fast float %5975, %5960
  %5981 = fadd fast float %5978, %5961
  %5982 = call float @dx.op.unary.f32(i32 7, float %5979)  ; Saturate(value)
  %5983 = call float @dx.op.unary.f32(i32 7, float %5980)  ; Saturate(value)
  %5984 = call float @dx.op.unary.f32(i32 7, float %5981)  ; Saturate(value)
  br label %5985

; <label>:5985                                    ; preds = %5962, %5848
  %5986 = phi float [ %5982, %5962 ], [ %5959, %5848 ]
  %5987 = phi float [ %5983, %5962 ], [ %5960, %5848 ]
  %5988 = phi float [ %5984, %5962 ], [ %5961, %5848 ]
  %5989 = fmul fast float %5876, 9.843750e-01
  %5990 = fadd fast float %5989, 7.812500e-03
  %5991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5990, float %5308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5992 = extractvalue %dx.types.ResRet.f32 %5991, 2
  %5993 = extractvalue %dx.types.ResRet.f32 %5991, 3
  %5994 = fmul fast float %5992, %5048
  %5995 = fmul fast float %5992, %5049
  %5996 = fmul fast float %5992, %5056
  %5997 = fadd fast float %5994, %5993
  %5998 = fadd fast float %5995, %5993
  %5999 = fadd fast float %5996, %5993
  br i1 %5318, label %6000, label %6023

; <label>:6000                                    ; preds = %5985
  %6001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3851, float %5876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6002 = extractvalue %dx.types.ResRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.ResRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.ResRet.f32 %6001, 2
  %6005 = fadd fast float %6002, -5.000000e-01
  %6006 = fadd fast float %6003, -5.000000e-01
  %6007 = fadd fast float %6004, -5.000000e-01
  %6008 = fmul fast float %5048, 4.000000e+00
  %6009 = fmul fast float %6008, %5953
  %6010 = fmul fast float %6009, %6005
  %6011 = fmul fast float %5049, 4.000000e+00
  %6012 = fmul fast float %6011, %5954
  %6013 = fmul fast float %6012, %6006
  %6014 = fmul fast float %5056, 4.000000e+00
  %6015 = fmul fast float %6014, %5955
  %6016 = fmul fast float %6015, %6007
  %6017 = fadd fast float %6010, %5997
  %6018 = fadd fast float %6013, %5998
  %6019 = fadd fast float %6016, %5999
  %6020 = call float @dx.op.unary.f32(i32 7, float %6017)  ; Saturate(value)
  %6021 = call float @dx.op.unary.f32(i32 7, float %6018)  ; Saturate(value)
  %6022 = call float @dx.op.unary.f32(i32 7, float %6019)  ; Saturate(value)
  br label %6023

; <label>:6023                                    ; preds = %6000, %5985
  %6024 = phi float [ %6020, %6000 ], [ %5997, %5985 ]
  %6025 = phi float [ %6021, %6000 ], [ %5998, %5985 ]
  %6026 = phi float [ %6022, %6000 ], [ %5999, %5985 ]
  %6027 = call float @dx.op.binary.f32(i32 35, float %6025, float %6026)  ; FMax(a,b)
  %6028 = call float @dx.op.binary.f32(i32 35, float %6024, float %6027)  ; FMax(a,b)
  %6029 = fsub fast float 1.000000e+00, %6028
  %6030 = fmul fast float %5986, %5944
  %6031 = fmul fast float %5987, %5944
  %6032 = fmul fast float %5988, %5944
  %6033 = fsub fast float 1.000000e+00, %5877
  %6034 = bitcast float %6033 to i32
  %6035 = sitofp i32 %6034 to float
  %6036 = fmul fast float %6035, 5.000000e+00
  %6037 = fadd fast float %6036, 0xC1EFBF8940000000
  %6038 = fptosi float %6037 to i32
  %6039 = bitcast i32 %6038 to float
  %6040 = fmul fast float %6039, %3852
  %6041 = fmul fast float %6029, %6040
  %6042 = fmul fast float %6041, %5368
  %6043 = fmul fast float %6041, %5369
  %6044 = fmul fast float %6041, %5370
  %6045 = fadd fast float %6042, %6030
  %6046 = fadd fast float %6043, %6031
  %6047 = fadd fast float %6044, %6032
  %6048 = fmul fast float %5865, %3848
  %6049 = fmul fast float %6048, %5883
  %6050 = fmul fast float %6049, %6029
  %6051 = fmul fast float %5866, %3848
  %6052 = fmul fast float %6051, %5883
  %6053 = fmul fast float %6052, %6029
  %6054 = fmul fast float %5867, %3848
  %6055 = fmul fast float %6054, %5883
  %6056 = fmul fast float %6055, %6029
  %6057 = fadd fast float %6050, %5704
  %6058 = fadd fast float %6053, %5705
  %6059 = fadd fast float %6056, %5706
  %6060 = fmul fast float %6049, %6045
  %6061 = fmul fast float %6052, %6046
  %6062 = fmul fast float %6055, %6047
  %6063 = fadd fast float %6060, %5701
  %6064 = fadd fast float %6061, %5702
  %6065 = fadd fast float %6062, %5703
  br label %5779

; <label>:6066                                    ; preds = %5779
  br label %6067

; <label>:6067                                    ; preds = %6066, %5667
  %6068 = phi float [ %5669, %5667 ], [ %5780, %6066 ]
  %6069 = phi float [ %5670, %5667 ], [ %5781, %6066 ]
  %6070 = phi float [ %5671, %5667 ], [ %5782, %6066 ]
  %6071 = phi float [ %5672, %5667 ], [ %5783, %6066 ]
  %6072 = phi float [ %5673, %5667 ], [ %5784, %6066 ]
  %6073 = phi float [ %5674, %5667 ], [ %5785, %6066 ]
  %6074 = add i32 %5668, 1
  %6075 = icmp ugt i32 %6074, %5664
  br i1 %6075, label %6076, label %5667

; <label>:6076                                    ; preds = %6067
  br label %6077

; <label>:6077                                    ; preds = %6076, %5643, %5633
  %6078 = phi float [ %5634, %5633 ], [ %5634, %5643 ], [ %6068, %6076 ]
  %6079 = phi float [ %5635, %5633 ], [ %5635, %5643 ], [ %6069, %6076 ]
  %6080 = phi float [ %5636, %5633 ], [ %5636, %5643 ], [ %6070, %6076 ]
  %6081 = phi float [ %5637, %5633 ], [ %5637, %5643 ], [ %6071, %6076 ]
  %6082 = phi float [ %5638, %5633 ], [ %5638, %5643 ], [ %6072, %6076 ]
  %6083 = phi float [ %5639, %5633 ], [ %5639, %5643 ], [ %6073, %6076 ]
  %6084 = call float @dx.op.unary.f32(i32 24, float %5045)  ; Sqrt(value)
  %6085 = call float @dx.op.unary.f32(i32 24, float %5046)  ; Sqrt(value)
  %6086 = call float @dx.op.unary.f32(i32 24, float %5047)  ; Sqrt(value)
  %6087 = fmul fast float %6084, %6081
  %6088 = fmul fast float %6085, %6082
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  br i1 %205, label %6091, label %6111

; <label>:6091                                    ; preds = %6077
  %6092 = fadd fast float %6083, %3854
  %6093 = fmul fast float %6092, %3855
  %6094 = fsub fast float 1.000000e+00, %3855
  %6095 = call float @dx.op.unary.f32(i32 7, float %6094)  ; Saturate(value)
  %6096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6097 = extractvalue %dx.types.CBufRet.f32 %6096, 3
  %6098 = fmul fast float %6097, %6095
  %6099 = fadd fast float %6098, %6093
  %6100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6102 = fmul fast float %6101, %5374
  %6103 = fsub fast float %6099, %6102
  %6104 = fadd fast float %6088, %6087
  %6105 = fmul fast float %6090, %6104
  %6106 = extractvalue %dx.types.CBufRet.f32 %6096, 1
  %6107 = fsub fast float %6103, %6106
  %6108 = extractvalue %dx.types.CBufRet.f32 %6096, 2
  %6109 = fmul fast float %6107, %6108
  %6110 = call float @dx.op.unary.f32(i32 7, float %6109)  ; Saturate(value)
  br label %6127

; <label>:6111                                    ; preds = %6077
  %6112 = fmul fast float %6086, %6083
  %6113 = fmul fast float %6090, %6087
  %6114 = fmul fast float %6090, %6088
  %6115 = fmul fast float %6112, %6090
  %6116 = add i32 %34, 356
  %6117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6118 = extractvalue %dx.types.ResRet.i32 %6117, 0
  %6119 = and i32 %6118, 32
  %6120 = icmp eq i32 %6119, 0
  br i1 %6120, label %6127, label %6121

; <label>:6121                                    ; preds = %6111
  %6122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.f32 %6122, 0
  %6124 = fmul fast float %6123, 0x3FE99999A0000000
  %6125 = fadd fast float %6123, %6113
  %6126 = fadd fast float %6124, %6115
  br label %6127

; <label>:6127                                    ; preds = %6121, %6111, %6091
  %6128 = phi float [ %6105, %6091 ], [ %6125, %6121 ], [ %6113, %6111 ]
  %6129 = phi float [ %6110, %6091 ], [ %6114, %6121 ], [ %6114, %6111 ]
  %6130 = phi float [ 1.000000e+00, %6091 ], [ %6126, %6121 ], [ %6115, %6111 ]
  %6131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6132 = extractvalue %dx.types.CBufRet.f32 %6131, 0
  %6133 = fmul fast float %6132, %6079
  %6134 = fmul fast float %6132, %6080
  %6135 = fadd fast float %6079, %6078
  %6136 = select i1 %205, float %6135, float %6078
  %6137 = fmul float %6136, %6132
  %6138 = select i1 %205, float 0.000000e+00, float %6133
  %6139 = select i1 %205, float 0.000000e+00, float %6134
  %6140 = fmul fast float %6128, %6084
  %6141 = fmul fast float %6129, %6085
  %6142 = fmul fast float %6130, %6086
  %6143 = fadd fast float %6137, %6140
  %6144 = fadd fast float %6138, %6141
  %6145 = fadd fast float %6139, %6142
  %6146 = select i1 %205, float %6129, float %6144
  %6147 = select i1 %205, float %6130, float %6145
  %6148 = call float @dx.op.binary.f32(i32 36, float %6143, float 3.225500e+04)  ; FMin(a,b)
  %6149 = call float @dx.op.binary.f32(i32 36, float %6146, float 3.225500e+04)  ; FMin(a,b)
  %6150 = call float @dx.op.binary.f32(i32 36, float %6147, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6148)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6149)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6150)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

