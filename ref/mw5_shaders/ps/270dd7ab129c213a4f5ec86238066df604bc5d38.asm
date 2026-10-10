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
; shader hash: 60ef8ef30e7ce3d480bf6070be5aa17c
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
  %1778 = add i32 %34, 432
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
  %1830 = add i32 %34, 416
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
  %1856 = add i32 %34, 368
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
  %1879 = add i32 %34, 448
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
  %2077 = add i32 %34, 384
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
  %2161 = add i32 %34, 400
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
  %2517 = add i32 %34, 436
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
  %2569 = add i32 %34, 420
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
  %2595 = add i32 %34, 372
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
  %2618 = add i32 %34, 452
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
  %2816 = add i32 %34, 388
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
  %2900 = add i32 %34, 404
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
  %3142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3143 = extractvalue %dx.types.CBufRet.f32 %3142, 0
  %3144 = call float @dx.op.dot2.f32(i32 54, float %3130, float %3131, float %3130, float %3131)  ; Dot2(ax,ay,bx,by)
  %3145 = fmul fast float %3144, 0x3FE3333340000000
  %3146 = fsub fast float 1.000000e+00, %3145
  %3147 = call float @dx.op.dot3.f32(i32 55, float %3130, float %3131, float %3146, float %3130, float %3131, float %3146)  ; Dot3(ax,ay,az,bx,by,bz)
  %3148 = call float @dx.op.unary.f32(i32 25, float %3147)  ; Rsqrt(value)
  %3149 = fmul fast float %3148, %3130
  %3150 = fmul fast float %3148, %3131
  %3151 = fmul fast float %3146, %3148
  %3152 = fmul fast float %3151, %92
  %3153 = fmul fast float %3151, %94
  %3154 = fmul fast float %3151, %96
  %3155 = fmul fast float %3149, %64
  %3156 = fmul fast float %3149, %65
  %3157 = fmul fast float %3149, %66
  %3158 = fadd fast float %3152, %3155
  %3159 = fadd fast float %3153, %3156
  %3160 = fadd fast float %3154, %3157
  %3161 = fmul fast float %106, %3150
  %3162 = fmul fast float %107, %3150
  %3163 = fmul fast float %108, %3150
  %3164 = fadd fast float %3158, %3161
  %3165 = fadd fast float %3159, %3162
  %3166 = fadd fast float %3160, %3163
  %3167 = call float @dx.op.dot3.f32(i32 55, float %3164, float %3165, float %3166, float %3164, float %3165, float %3166)  ; Dot3(ax,ay,az,bx,by,bz)
  %3168 = call float @dx.op.unary.f32(i32 25, float %3167)  ; Rsqrt(value)
  %3169 = fmul fast float %3164, %3168
  %3170 = fmul fast float %3165, %3168
  %3171 = fmul fast float %3166, %3168
  %3172 = icmp eq i32 %35, 65535
  br i1 %3172, label %3687, label %3173

; <label>:3173                                    ; preds = %3129
  %3174 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3175 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3176 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3177 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3178 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3179 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3180 = fadd fast float %3174, %36
  %3181 = fadd fast float %3175, %37
  %3182 = fadd fast float %3176, %38
  %3183 = fadd fast float %3177, %36
  %3184 = fadd fast float %3178, %37
  %3185 = fadd fast float %3179, %38
  %3186 = mul i32 %35, 48
  %3187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3186, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.f32 %3187, 0
  %3189 = extractvalue %dx.types.ResRet.f32 %3187, 1
  %3190 = extractvalue %dx.types.ResRet.f32 %3187, 2
  %3191 = add i32 %3186, 16
  %3192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.f32 %3192, 0
  %3194 = extractvalue %dx.types.ResRet.f32 %3192, 1
  %3195 = extractvalue %dx.types.ResRet.f32 %3192, 2
  %3196 = add i32 %3186, 32
  %3197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.f32 %3197, 0
  %3199 = extractvalue %dx.types.ResRet.f32 %3197, 1
  %3200 = extractvalue %dx.types.ResRet.f32 %3197, 2
  %3201 = extractvalue %dx.types.ResRet.f32 %3197, 3
  %3202 = bitcast float %3201 to i32
  %3203 = fmul fast float %3188, %36
  %3204 = fmul fast float %3189, %37
  %3205 = fmul fast float %3190, %38
  %3206 = fsub fast float %3203, %3193
  %3207 = fsub fast float %3204, %3194
  %3208 = fsub fast float %3205, %3195
  %3209 = call float @dx.op.unary.f32(i32 7, float %3206)  ; Saturate(value)
  %3210 = call float @dx.op.unary.f32(i32 7, float %3207)  ; Saturate(value)
  %3211 = call float @dx.op.unary.f32(i32 7, float %3208)  ; Saturate(value)
  %3212 = fmul fast float %3209, %3198
  %3213 = fmul fast float %3210, %3199
  %3214 = fmul fast float %3211, %3200
  %3215 = fadd fast float %3198, -1.000000e+00
  %3216 = fadd fast float %3199, -1.000000e+00
  %3217 = fadd fast float %3200, -1.000000e+00
  %3218 = call float @dx.op.unary.f32(i32 27, float %3212)  ; Round_ni(value)
  %3219 = call float @dx.op.unary.f32(i32 27, float %3213)  ; Round_ni(value)
  %3220 = call float @dx.op.unary.f32(i32 27, float %3214)  ; Round_ni(value)
  %3221 = call float @dx.op.binary.f32(i32 36, float %3218, float %3215)  ; FMin(a,b)
  %3222 = call float @dx.op.binary.f32(i32 36, float %3219, float %3216)  ; FMin(a,b)
  %3223 = call float @dx.op.binary.f32(i32 36, float %3220, float %3217)  ; FMin(a,b)
  %3224 = fmul fast float %3223, %3199
  %3225 = fadd fast float %3224, %3222
  %3226 = fmul fast float %3225, %3198
  %3227 = fadd fast float %3226, %3221
  %3228 = fptosi float %3227 to i32
  %3229 = add nsw i32 %3228, %3202
  %3230 = shl nsw i32 %3229, 2
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = lshr i32 %3232, 16
  %3234 = icmp eq i32 %3233, 0
  br i1 %3234, label %3656, label %3235

; <label>:3235                                    ; preds = %3173
  br label %3236

; <label>:3236                                    ; preds = %3357, %3235
  %3237 = phi i32 [ %3259, %3357 ], [ %3233, %3235 ]
  %3238 = phi float [ %3358, %3357 ], [ 0.000000e+00, %3235 ]
  %3239 = phi float [ %3359, %3357 ], [ %3143, %3235 ]
  %3240 = phi float [ %3360, %3357 ], [ %3141, %3235 ]
  %3241 = phi float [ %3361, %3357 ], [ 0.000000e+00, %3235 ]
  %3242 = phi float [ %3362, %3357 ], [ 0.000000e+00, %3235 ]
  %3243 = phi float [ %3363, %3357 ], [ %3135, %3235 ]
  %3244 = phi float [ %3364, %3357 ], [ %3136, %3235 ]
  %3245 = phi float [ %3365, %3357 ], [ %3137, %3235 ]
  %3246 = phi float [ %3366, %3357 ], [ %3169, %3235 ]
  %3247 = phi float [ %3367, %3357 ], [ %3170, %3235 ]
  %3248 = phi float [ %3368, %3357 ], [ %3171, %3235 ]
  %3249 = phi float [ %3369, %3357 ], [ %3140, %3235 ]
  %3250 = phi float [ %3370, %3357 ], [ %3139, %3235 ]
  %3251 = phi float [ %3371, %3357 ], [ 0.000000e+00, %3235 ]
  %3252 = phi float [ %3372, %3357 ], [ %3138, %3235 ]
  %3253 = phi float [ %3373, %3357 ], [ %3132, %3235 ]
  %3254 = phi float [ %3374, %3357 ], [ %3133, %3235 ]
  %3255 = phi float [ %3375, %3357 ], [ %3134, %3235 ]
  %3256 = shl nuw nsw i32 %3237, 2
  %3257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.i32 %3257, 0
  %3259 = lshr i32 %3258, 16
  %3260 = shl i32 %3258, 8
  %3261 = and i32 %3260, 16776960
  %3262 = or i32 %3261, 48
  %3263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.f32 %3263, 0
  %3265 = extractvalue %dx.types.ResRet.f32 %3263, 1
  %3266 = extractvalue %dx.types.ResRet.f32 %3263, 2
  %3267 = or i32 %3261, 64
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = extractvalue %dx.types.ResRet.i32 %3268, 1
  %3271 = or i32 %3261, 80
  %3272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.f32 %3272, 2
  %3274 = extractvalue %dx.types.ResRet.f32 %3272, 3
  %3275 = or i32 %3261, 96
  %3276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.f32 %3276, 0
  %3278 = extractvalue %dx.types.ResRet.f32 %3276, 1
  %3279 = extractvalue %dx.types.ResRet.f32 %3276, 2
  %3280 = extractvalue %dx.types.ResRet.f32 %3276, 3
  %3281 = or i32 %3261, 112
  %3282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 2
  %3284 = or i32 %3261, 128
  %3285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 0
  %3287 = extractvalue %dx.types.ResRet.f32 %3285, 1
  %3288 = extractvalue %dx.types.ResRet.f32 %3285, 2
  %3289 = extractvalue %dx.types.ResRet.f32 %3285, 3
  %3290 = or i32 %3261, 144
  %3291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3290, i32 undef)  ; BufferLoad(srv,index,wot)
  %3292 = extractvalue %dx.types.ResRet.f32 %3291, 0
  %3293 = extractvalue %dx.types.ResRet.f32 %3291, 1
  %3294 = extractvalue %dx.types.ResRet.f32 %3291, 2
  %3295 = extractvalue %dx.types.ResRet.f32 %3291, 3
  %3296 = or i32 %3261, 160
  %3297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.ResRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.ResRet.f32 %3297, 2
  %3301 = extractvalue %dx.types.ResRet.f32 %3297, 3
  %3302 = or i32 %3261, 192
  %3303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.i32 %3303, 0
  %3305 = or i32 %3261, 208
  %3306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = or i32 %3261, 248
  %3309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.f32 %3309, 0
  %3311 = extractvalue %dx.types.ResRet.f32 %3309, 1
  %3312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.ResRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.ResRet.f32 %3312, 2
  %3316 = extractvalue %dx.types.ResRet.f32 %3312, 3
  %3317 = call float @dx.op.dot4.f32(i32 56, float %3313, float %3314, float %3315, float %3316, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3318 = or i32 %3261, 16
  %3319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3318, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.f32 %3319, 0
  %3321 = extractvalue %dx.types.ResRet.f32 %3319, 1
  %3322 = extractvalue %dx.types.ResRet.f32 %3319, 2
  %3323 = extractvalue %dx.types.ResRet.f32 %3319, 3
  %3324 = call float @dx.op.dot4.f32(i32 56, float %3320, float %3321, float %3322, float %3323, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3325 = or i32 %3261, 32
  %3326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.f32 %3326, 0
  %3328 = extractvalue %dx.types.ResRet.f32 %3326, 1
  %3329 = extractvalue %dx.types.ResRet.f32 %3326, 2
  %3330 = extractvalue %dx.types.ResRet.f32 %3326, 3
  %3331 = call float @dx.op.dot4.f32(i32 56, float %3327, float %3328, float %3329, float %3330, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3332 = call float @dx.op.unary.f32(i32 27, float %3317)  ; Round_ni(value)
  %3333 = call float @dx.op.unary.f32(i32 6, float %3332)  ; FAbs(value)
  %3334 = call float @dx.op.unary.f32(i32 27, float %3324)  ; Round_ni(value)
  %3335 = call float @dx.op.unary.f32(i32 6, float %3334)  ; FAbs(value)
  %3336 = call float @dx.op.unary.f32(i32 6, float %3331)  ; FAbs(value)
  %3337 = call float @dx.op.unary.f32(i32 27, float %3336)  ; Round_ni(value)
  %3338 = fadd fast float %3335, %3333
  %3339 = fadd fast float %3338, %3337
  %3340 = fcmp fast oeq float %3339, 0.000000e+00
  %3341 = call float @dx.op.dot4.f32(i32 56, float %3313, float %3314, float %3315, float %3316, float %3180, float %3181, float %3182, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3342 = call float @dx.op.dot4.f32(i32 56, float %3320, float %3321, float %3322, float %3323, float %3180, float %3181, float %3182, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3343 = call float @dx.op.dot4.f32(i32 56, float %3313, float %3314, float %3315, float %3316, float %3183, float %3184, float %3185, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3344 = call float @dx.op.dot4.f32(i32 56, float %3320, float %3321, float %3322, float %3323, float %3183, float %3184, float %3185, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3345 = fsub fast float %3341, %3317
  %3346 = fsub fast float %3343, %3317
  %3347 = fsub fast float %3342, %3324
  %3348 = fsub fast float %3344, %3324
  %3349 = call float @dx.op.dot3.f32(i32 55, float %3264, float %3265, float %3266, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %3350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3351 = extractvalue %dx.types.CBufRet.f32 %3350, 2
  %3352 = fadd fast float %3351, %3349
  %3353 = call float @dx.op.unary.f32(i32 7, float %3352)  ; Saturate(value)
  %3354 = extractvalue %dx.types.CBufRet.f32 %3350, 0
  %3355 = fcmp fast ogt float %3353, %3354
  %3356 = and i1 %3340, %3355
  br i1 %3356, label %3377, label %3357

; <label>:3357                                    ; preds = %3642, %3460, %3377, %3236
  %3358 = phi float [ %3238, %3377 ], [ %3463, %3460 ], [ %3463, %3642 ], [ %3238, %3236 ]
  %3359 = phi float [ %3239, %3377 ], [ %3239, %3460 ], [ %3617, %3642 ], [ %3239, %3236 ]
  %3360 = phi float [ %3240, %3377 ], [ %3240, %3460 ], [ %3615, %3642 ], [ %3240, %3236 ]
  %3361 = phi float [ %3241, %3377 ], [ %3241, %3460 ], [ %3587, %3642 ], [ %3241, %3236 ]
  %3362 = phi float [ %3242, %3377 ], [ %3242, %3460 ], [ %3585, %3642 ], [ %3242, %3236 ]
  %3363 = phi float [ %3243, %3377 ], [ %3243, %3460 ], [ %3652, %3642 ], [ %3243, %3236 ]
  %3364 = phi float [ %3244, %3377 ], [ %3244, %3460 ], [ %3653, %3642 ], [ %3244, %3236 ]
  %3365 = phi float [ %3245, %3377 ], [ %3245, %3460 ], [ %3654, %3642 ], [ %3245, %3236 ]
  %3366 = phi float [ %3246, %3377 ], [ %3246, %3460 ], [ %3566, %3642 ], [ %3246, %3236 ]
  %3367 = phi float [ %3247, %3377 ], [ %3247, %3460 ], [ %3567, %3642 ], [ %3247, %3236 ]
  %3368 = phi float [ %3248, %3377 ], [ %3248, %3460 ], [ %3568, %3642 ], [ %3248, %3236 ]
  %3369 = phi float [ %3249, %3377 ], [ %3249, %3460 ], [ %3595, %3642 ], [ %3249, %3236 ]
  %3370 = phi float [ %3250, %3377 ], [ %3250, %3460 ], [ %3592, %3642 ], [ %3250, %3236 ]
  %3371 = phi float [ %3251, %3377 ], [ %3251, %3460 ], [ %3589, %3642 ], [ %3251, %3236 ]
  %3372 = phi float [ %3252, %3377 ], [ %3252, %3460 ], [ %3583, %3642 ], [ %3252, %3236 ]
  %3373 = phi float [ %3253, %3377 ], [ %3253, %3460 ], [ %3578, %3642 ], [ %3253, %3236 ]
  %3374 = phi float [ %3254, %3377 ], [ %3254, %3460 ], [ %3579, %3642 ], [ %3254, %3236 ]
  %3375 = phi float [ %3255, %3377 ], [ %3255, %3460 ], [ %3580, %3642 ], [ %3255, %3236 ]
  %3376 = icmp eq i32 %3259, 0
  br i1 %3376, label %3655, label %3236

; <label>:3377                                    ; preds = %3236
  %3378 = extractvalue %dx.types.ResRet.f32 %3263, 3
  %3379 = extractvalue %dx.types.ResRet.f32 %3282, 3
  %3380 = extractvalue %dx.types.ResRet.f32 %3282, 1
  %3381 = extractvalue %dx.types.ResRet.f32 %3282, 0
  %3382 = extractvalue %dx.types.ResRet.f32 %3272, 1
  %3383 = extractvalue %dx.types.ResRet.f32 %3272, 0
  %3384 = extractvalue %dx.types.ResRet.i32 %3268, 3
  %3385 = extractvalue %dx.types.ResRet.i32 %3268, 2
  %3386 = bitcast float %3378 to i32
  %3387 = add i32 %3384, 0
  %3388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3387, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3390 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3388, %dx.types.Handle %3389, float %3317, float %3324, float undef, float undef, i32 0, i32 0, i32 undef, float %3345, float %3347, float undef, float %3346, float %3348, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3391 = extractvalue %dx.types.ResRet.f32 %3390, 0
  %3392 = fmul fast float %3391, %3383
  %3393 = fadd fast float %3392, %3382
  %3394 = call float @dx.op.unary.f32(i32 7, float %3393)  ; Saturate(value)
  %3395 = fmul fast float %3317, %3277
  %3396 = call float @dx.op.tertiary.f32(i32 46, float %3278, float %3324, float %3395)  ; FMad(a,b,c)
  %3397 = fadd fast float %3396, %3381
  %3398 = fmul fast float %3317, %3279
  %3399 = call float @dx.op.tertiary.f32(i32 46, float %3280, float %3324, float %3398)  ; FMad(a,b,c)
  %3400 = fadd fast float %3399, %3380
  %3401 = fmul fast float %3345, %3277
  %3402 = call float @dx.op.tertiary.f32(i32 46, float %3278, float %3347, float %3401)  ; FMad(a,b,c)
  %3403 = fmul fast float %3345, %3279
  %3404 = call float @dx.op.tertiary.f32(i32 46, float %3280, float %3347, float %3403)  ; FMad(a,b,c)
  %3405 = fmul fast float %3346, %3277
  %3406 = call float @dx.op.tertiary.f32(i32 46, float %3278, float %3348, float %3405)  ; FMad(a,b,c)
  %3407 = fmul fast float %3346, %3279
  %3408 = call float @dx.op.tertiary.f32(i32 46, float %3280, float %3348, float %3407)  ; FMad(a,b,c)
  %3409 = add i32 %3385, 0
  %3410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3409, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3411 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3410, %dx.types.Handle %3389, float %3397, float %3400, float undef, float undef, i32 0, i32 0, i32 undef, float %3402, float %3404, float undef, float %3406, float %3408, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3412 = extractvalue %dx.types.ResRet.f32 %3411, 0
  %3413 = and i32 %3386, 1024
  %3414 = icmp ne i32 %3413, 0
  %3415 = fcmp fast ogt float %3412, 0x3FE0101020000000
  %3416 = uitofp i1 %3415 to float
  %3417 = select i1 %3414, float %3416, float %3412
  %3418 = and i32 %3386, 8192
  %3419 = icmp ne i32 %3418, 0
  %3420 = select i1 %3419, float %3379, float 1.000000e+00
  %3421 = fmul fast float %3317, 2.000000e+00
  %3422 = fadd fast float %3421, -1.000000e+00
  %3423 = call float @dx.op.unary.f32(i32 6, float %3422)  ; FAbs(value)
  %3424 = fmul fast float %3423, %3310
  %3425 = fsub fast float %3424, %3310
  %3426 = call float @dx.op.unary.f32(i32 7, float %3425)  ; Saturate(value)
  %3427 = fmul fast float %3324, 2.000000e+00
  %3428 = fadd fast float %3427, -1.000000e+00
  %3429 = call float @dx.op.unary.f32(i32 6, float %3428)  ; FAbs(value)
  %3430 = fmul fast float %3429, %3311
  %3431 = fsub fast float %3430, %3311
  %3432 = call float @dx.op.unary.f32(i32 7, float %3431)  ; Saturate(value)
  %3433 = fmul fast float %3336, %3273
  %3434 = fsub fast float %3433, %3273
  %3435 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  %3436 = fmul fast float %3394, %3420
  %3437 = fmul fast float %3436, %3391
  %3438 = fmul fast float %3437, %3426
  %3439 = fmul fast float %3438, %3417
  %3440 = fmul fast float %3439, %3432
  %3441 = fmul fast float %3440, %3435
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 1
  %3444 = extractvalue %dx.types.CBufRet.f32 %3442, 0
  %3445 = fsub fast float %3353, %3444
  %3446 = fmul fast float %3445, %3443
  %3447 = call float @dx.op.unary.f32(i32 7, float %3446)  ; Saturate(value)
  %3448 = fmul fast float %3441, %3274
  %3449 = fadd fast float %3441, %3274
  %3450 = fmul fast float %3449, %3283
  %3451 = fsub fast float %3450, %3283
  %3452 = call float @dx.op.unary.f32(i32 7, float %3451)  ; Saturate(value)
  %3453 = and i32 %3386, 128
  %3454 = icmp ne i32 %3453, 0
  %3455 = select i1 %3454, float %3452, float %3448
  %3456 = fmul fast float %3455, %3447
  %3457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3458 = extractvalue %dx.types.CBufRet.f32 %3457, 0
  %3459 = fcmp fast ugt float %3456, %3458
  br i1 %3459, label %3460, label %3357

; <label>:3460                                    ; preds = %3377
  %3461 = select i1 %3419, float %3456, float 0.000000e+00
  %3462 = fadd fast float %3461, %3238
  %3463 = call float @dx.op.unary.f32(i32 7, float %3462)  ; Saturate(value)
  br i1 %3419, label %3357, label %3464

; <label>:3464                                    ; preds = %3460
  %3465 = and i32 %3386, 4
  %3466 = and i32 %3386, 8
  %3467 = add i32 %3269, 0
  %3468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3467, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3470 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3468, %dx.types.Handle %3469, float %3397, float %3400, float undef, float undef, i32 0, i32 0, i32 undef, float %3402, float %3404, float undef, float %3406, float %3408, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3471 = extractvalue %dx.types.ResRet.f32 %3470, 0
  %3472 = extractvalue %dx.types.ResRet.f32 %3470, 1
  %3473 = extractvalue %dx.types.ResRet.f32 %3470, 2
  %3474 = extractvalue %dx.types.ResRet.f32 %3470, 3
  %3475 = bitcast float %3295 to i32
  %3476 = and i32 %3475, 255
  %3477 = uitofp i32 %3476 to float
  %3478 = lshr i32 %3475, 8
  %3479 = and i32 %3478, 255
  %3480 = uitofp i32 %3479 to float
  %3481 = fmul fast float %3474, %3477
  %3482 = fadd fast float %3481, %3480
  %3483 = fmul fast float %3482, 0x3F70101000000000
  %3484 = add i32 %3270, 0
  %3485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3484, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3486 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3485, %dx.types.Handle %3469, float %3397, float %3400, float undef, float undef, i32 0, i32 0, i32 undef, float %3402, float %3404, float undef, float %3406, float %3408, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.ResRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.ResRet.f32 %3486, 2
  %3490 = extractvalue %dx.types.ResRet.f32 %3486, 3
  %3491 = bitcast float %3289 to i32
  %3492 = and i32 %3491, 255
  %3493 = uitofp i32 %3492 to float
  %3494 = lshr i32 %3491, 8
  %3495 = and i32 %3494, 255
  %3496 = uitofp i32 %3495 to float
  %3497 = lshr i32 %3491, 16
  %3498 = and i32 %3497, 255
  %3499 = uitofp i32 %3498 to float
  %3500 = fmul fast float %3499, 0x3F70101000000000
  %3501 = fmul fast float %3487, %3493
  %3502 = fadd fast float %3501, %3496
  %3503 = fmul fast float %3502, 0x3F70101000000000
  %3504 = fadd fast float %3488, -5.000000e-01
  %3505 = fadd fast float %3490, -5.000000e-01
  %3506 = fmul fast float %3504, %3500
  %3507 = fmul fast float %3505, %3500
  %3508 = fadd fast float %3506, 5.000000e-01
  %3509 = fadd fast float %3507, 5.000000e-01
  %3510 = fmul fast float %3471, %3298
  %3511 = fmul fast float %3472, %3299
  %3512 = fmul fast float %3473, %3300
  %3513 = fmul fast float %3508, 2.000000e+00
  %3514 = fadd fast float %3513, -1.000000e+00
  %3515 = fmul fast float %3509, 2.000000e+00
  %3516 = fadd fast float %3515, -1.000000e+00
  %3517 = fadd fast float %3514, %3516
  %3518 = fmul fast float %3517, 5.000000e-01
  %3519 = fsub fast float %3514, %3516
  %3520 = fmul fast float %3519, 5.000000e-01
  %3521 = call float @dx.op.unary.f32(i32 6, float %3518)  ; FAbs(value)
  %3522 = fsub fast float 1.000000e+00, %3521
  %3523 = call float @dx.op.unary.f32(i32 6, float %3520)  ; FAbs(value)
  %3524 = fsub fast float %3522, %3523
  %3525 = call float @dx.op.dot3.f32(i32 55, float %3518, float %3520, float %3524, float %3518, float %3520, float %3524)  ; Dot3(ax,ay,az,bx,by,bz)
  %3526 = call float @dx.op.unary.f32(i32 25, float %3525)  ; Rsqrt(value)
  %3527 = fmul fast float %3518, %3526
  %3528 = fmul fast float %3520, %3526
  %3529 = fmul fast float %3526, %3524
  %3530 = fmul fast float %3529, %3264
  %3531 = fmul fast float %3529, %3265
  %3532 = fmul fast float %3529, %3266
  %3533 = fmul fast float %3527, %3286
  %3534 = fmul fast float %3527, %3287
  %3535 = fmul fast float %3527, %3288
  %3536 = fadd fast float %3533, %3530
  %3537 = fadd fast float %3534, %3531
  %3538 = fadd fast float %3535, %3532
  %3539 = fmul fast float %3528, %3292
  %3540 = fmul fast float %3528, %3293
  %3541 = fmul fast float %3528, %3294
  %3542 = fadd fast float %3536, %3539
  %3543 = fadd fast float %3537, %3540
  %3544 = fadd fast float %3538, %3541
  %3545 = call float @dx.op.dot3.f32(i32 55, float %3542, float %3543, float %3544, float %3542, float %3543, float %3544)  ; Dot3(ax,ay,az,bx,by,bz)
  %3546 = call float @dx.op.unary.f32(i32 25, float %3545)  ; Rsqrt(value)
  %3547 = fmul fast float %3542, %3546
  %3548 = fmul fast float %3543, %3546
  %3549 = fmul fast float %3544, %3546
  %3550 = icmp ne i32 %3466, 0
  %3551 = select i1 %3550, float 1.000000e+00, float 0.000000e+00
  %3552 = fmul fast float %3456, %3551
  %3553 = and i32 %3386, 1
  %3554 = icmp eq i32 %3553, 0
  br i1 %3554, label %3555, label %3559

; <label>:3555                                    ; preds = %3464
  %3556 = fsub fast float %3547, %3246
  %3557 = fsub fast float %3548, %3247
  %3558 = fsub fast float %3549, %3248
  br label %3559

; <label>:3559                                    ; preds = %3555, %3464
  %3560 = phi float [ %3556, %3555 ], [ %3547, %3464 ]
  %3561 = phi float [ %3557, %3555 ], [ %3548, %3464 ]
  %3562 = phi float [ %3558, %3555 ], [ %3549, %3464 ]
  %3563 = fmul float %3562, %3552
  %3564 = fmul float %3561, %3552
  %3565 = fmul float %3560, %3552
  %3566 = fadd fast float %3565, %3246
  %3567 = fadd fast float %3564, %3247
  %3568 = fadd fast float %3563, %3248
  %3569 = icmp ne i32 %3465, 0
  %3570 = select i1 %3569, float 1.000000e+00, float 0.000000e+00
  %3571 = fmul fast float %3456, %3570
  %3572 = fsub fast float %3510, %3253
  %3573 = fsub fast float %3511, %3254
  %3574 = fsub fast float %3512, %3255
  %3575 = fmul fast float %3572, %3571
  %3576 = fmul fast float %3573, %3571
  %3577 = fmul fast float %3574, %3571
  %3578 = fadd fast float %3575, %3253
  %3579 = fadd fast float %3576, %3254
  %3580 = fadd fast float %3577, %3255
  %3581 = fsub fast float %3483, %3252
  %3582 = fmul fast float %3581, %3571
  %3583 = fadd fast float %3582, %3252
  %3584 = fmul fast float %3571, %3242
  %3585 = fsub fast float %3242, %3584
  %3586 = fmul fast float %3571, %3241
  %3587 = fsub fast float %3241, %3586
  %3588 = fadd fast float %3456, %3251
  %3589 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  %3590 = fsub fast float %3503, %3250
  %3591 = fmul fast float %3590, %3552
  %3592 = fadd fast float %3591, %3250
  %3593 = fsub fast float %3489, %3249
  %3594 = fmul fast float %3593, %3552
  %3595 = fadd fast float %3594, %3249
  %3596 = call float @dx.op.dot3.f32(i32 55, float %3510, float %3511, float %3512, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3598 = extractvalue %dx.types.CBufRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.CBufRet.f32 %3597, 1
  %3600 = fmul fast float %3599, %3596
  %3601 = fadd fast float %3600, %3598
  %3602 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  %3603 = bitcast float %3301 to i32
  %3604 = and i32 %3603, 65535
  %3605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3604)  ; LegacyF16ToF32(value)
  %3606 = lshr i32 %3603, 16
  %3607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3606)  ; LegacyF16ToF32(value)
  %3608 = fcmp fast oge float %3605, 0.000000e+00
  %3609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3610 = extractvalue %dx.types.CBufRet.f32 %3609, 0
  %3611 = select i1 %3608, float %3605, float %3610
  %3612 = fadd fast float %3611, %3607
  %3613 = fsub fast float %3602, %3240
  %3614 = fmul fast float %3613, %3456
  %3615 = fadd fast float %3614, %3240
  %3616 = fmul fast float %3612, %3456
  %3617 = call float @dx.op.binary.f32(i32 35, float %3239, float %3616)  ; FMax(a,b)
  %3618 = and i32 %3386, 16
  %3619 = icmp eq i32 %3618, 0
  br i1 %3619, label %3642, label %3620

; <label>:3620                                    ; preds = %3559
  %3621 = bitcast float %3307 to i32
  %3622 = add i32 %3304, 0
  %3623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3622, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3624 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3623, %dx.types.Handle %3469, float %3397, float %3400, float undef, float undef, i32 0, i32 0, i32 undef, float %3402, float %3404, float undef, float %3406, float %3408, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3627 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3628 = and i32 %3621, 65535
  %3629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3628)  ; LegacyF16ToF32(value)
  %3630 = fmul fast float %3625, %3298
  %3631 = fmul fast float %3626, %3299
  %3632 = fmul fast float %3627, %3300
  %3633 = and i32 %3386, 16384
  %3634 = icmp ne i32 %3633, 0
  %3635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3636 = extractvalue %dx.types.CBufRet.f32 %3635, 0
  %3637 = select i1 %3634, float %3636, float 1.000000e+00
  %3638 = fmul fast float %3637, %3629
  %3639 = fmul fast float %3630, %3638
  %3640 = fmul fast float %3631, %3638
  %3641 = fmul fast float %3632, %3638
  br label %3642

; <label>:3642                                    ; preds = %3620, %3559
  %3643 = phi float [ %3639, %3620 ], [ 0.000000e+00, %3559 ]
  %3644 = phi float [ %3640, %3620 ], [ 0.000000e+00, %3559 ]
  %3645 = phi float [ %3641, %3620 ], [ 0.000000e+00, %3559 ]
  %3646 = fsub fast float %3643, %3243
  %3647 = fsub fast float %3644, %3244
  %3648 = fsub fast float %3645, %3245
  %3649 = fmul fast float %3646, %3456
  %3650 = fmul fast float %3647, %3456
  %3651 = fmul fast float %3648, %3456
  %3652 = fadd fast float %3649, %3243
  %3653 = fadd fast float %3650, %3244
  %3654 = fadd fast float %3651, %3245
  br label %3357

; <label>:3655                                    ; preds = %3357
  br label %3656

; <label>:3656                                    ; preds = %3655, %3173
  %3657 = phi float [ 0.000000e+00, %3173 ], [ %3358, %3655 ]
  %3658 = phi float [ %3143, %3173 ], [ %3359, %3655 ]
  %3659 = phi float [ %3141, %3173 ], [ %3360, %3655 ]
  %3660 = phi float [ 0.000000e+00, %3173 ], [ %3361, %3655 ]
  %3661 = phi float [ 0.000000e+00, %3173 ], [ %3362, %3655 ]
  %3662 = phi float [ %3135, %3173 ], [ %3363, %3655 ]
  %3663 = phi float [ %3136, %3173 ], [ %3364, %3655 ]
  %3664 = phi float [ %3137, %3173 ], [ %3365, %3655 ]
  %3665 = phi float [ %3169, %3173 ], [ %3366, %3655 ]
  %3666 = phi float [ %3170, %3173 ], [ %3367, %3655 ]
  %3667 = phi float [ %3171, %3173 ], [ %3368, %3655 ]
  %3668 = phi float [ %3140, %3173 ], [ %3369, %3655 ]
  %3669 = phi float [ %3139, %3173 ], [ %3370, %3655 ]
  %3670 = phi float [ 0.000000e+00, %3173 ], [ %3371, %3655 ]
  %3671 = phi float [ %3138, %3173 ], [ %3372, %3655 ]
  %3672 = phi float [ %3132, %3173 ], [ %3373, %3655 ]
  %3673 = phi float [ %3133, %3173 ], [ %3374, %3655 ]
  %3674 = phi float [ %3134, %3173 ], [ %3375, %3655 ]
  %3675 = call float @dx.op.dot3.f32(i32 55, float %3665, float %3666, float %3667, float %3665, float %3666, float %3667)  ; Dot3(ax,ay,az,bx,by,bz)
  %3676 = call float @dx.op.unary.f32(i32 25, float %3675)  ; Rsqrt(value)
  %3677 = fmul fast float %3676, %3665
  %3678 = fmul fast float %3676, %3666
  %3679 = fmul fast float %3676, %3667
  %3680 = fadd fast float %3670, %921
  %3681 = call float @dx.op.unary.f32(i32 7, float %3680)  ; Saturate(value)
  %3682 = call float @dx.op.dot3.f32(i32 55, float %3677, float %3678, float %3679, float %3677, float %3678, float %3679)  ; Dot3(ax,ay,az,bx,by,bz)
  %3683 = call float @dx.op.unary.f32(i32 25, float %3682)  ; Rsqrt(value)
  %3684 = fmul fast float %3683, %3677
  %3685 = fmul fast float %3683, %3678
  %3686 = fmul fast float %3683, %3679
  br label %3687

; <label>:3687                                    ; preds = %3656, %3129
  %3688 = phi float [ %3684, %3656 ], [ %3169, %3129 ]
  %3689 = phi float [ %3685, %3656 ], [ %3170, %3129 ]
  %3690 = phi float [ %3686, %3656 ], [ %3171, %3129 ]
  %3691 = phi float [ %3672, %3656 ], [ %3132, %3129 ]
  %3692 = phi float [ %3673, %3656 ], [ %3133, %3129 ]
  %3693 = phi float [ %3674, %3656 ], [ %3134, %3129 ]
  %3694 = phi float [ %3662, %3656 ], [ %3135, %3129 ]
  %3695 = phi float [ %3663, %3656 ], [ %3136, %3129 ]
  %3696 = phi float [ %3664, %3656 ], [ %3137, %3129 ]
  %3697 = phi float [ %3671, %3656 ], [ %3138, %3129 ]
  %3698 = phi float [ %3681, %3656 ], [ %921, %3129 ]
  %3699 = phi float [ %3669, %3656 ], [ %3139, %3129 ]
  %3700 = phi float [ %3668, %3656 ], [ %3140, %3129 ]
  %3701 = phi float [ %3661, %3656 ], [ 0.000000e+00, %3129 ]
  %3702 = phi float [ %3660, %3656 ], [ 0.000000e+00, %3129 ]
  %3703 = phi float [ %3657, %3656 ], [ 0.000000e+00, %3129 ]
  %3704 = phi float [ %3658, %3656 ], [ %3143, %3129 ]
  %3705 = phi float [ %3659, %3656 ], [ %3141, %3129 ]
  %3706 = fadd fast float %3697, 0xBFB99999A0000000
  %3707 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  %3708 = fmul fast float %3707, 0x3FF1C71C80000000
  %3709 = call float @dx.op.binary.f32(i32 36, float %3697, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3710 = fsub fast float 1.000000e+00, %3708
  %3711 = call float @dx.op.unary.f32(i32 7, float %3710)  ; Saturate(value)
  %3712 = fmul fast float %3711, %3691
  %3713 = fmul fast float %3711, %3692
  %3714 = fmul fast float %3711, %3693
  %3715 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3716 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3717 = call float @dx.op.unary.f32(i32 7, float %3714)  ; Saturate(value)
  %3718 = fmul fast float %3708, %3691
  %3719 = fmul fast float %3708, %3692
  %3720 = fmul fast float %3708, %3693
  %3721 = fadd fast float %3718, %3709
  %3722 = fadd fast float %3719, %3709
  %3723 = fadd fast float %3720, %3709
  %3724 = call float @dx.op.unary.f32(i32 7, float %3721)  ; Saturate(value)
  %3725 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3726 = call float @dx.op.unary.f32(i32 7, float %3723)  ; Saturate(value)
  %3727 = call float @dx.op.unary.f32(i32 7, float %3699)  ; Saturate(value)
  %3728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3729 = extractvalue %dx.types.CBufRet.i32 %3728, 3
  %3730 = and i32 %3729, 8
  %3731 = icmp ne i32 %3730, 0
  %3732 = call float @dx.op.binary.f32(i32 35, float %3715, float %3691)  ; FMax(a,b)
  %3733 = call float @dx.op.binary.f32(i32 35, float %3716, float %3691)  ; FMax(a,b)
  %3734 = call float @dx.op.binary.f32(i32 35, float %3717, float %3691)  ; FMax(a,b)
  %3735 = call float @dx.op.dot3.f32(i32 55, float %3715, float %3716, float %3717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3736 = select i1 %205, float %3691, float %3715
  %3737 = select i1 %205, float %3735, float %3716
  %3738 = select i1 %205, float 1.000000e+00, float %3717
  %3739 = select i1 %3731, float %3732, float %3736
  %3740 = select i1 %3731, float %3733, float %3737
  %3741 = select i1 %3731, float %3734, float %3738
  %3742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3743 = extractvalue %dx.types.CBufRet.f32 %3742, 0
  %3744 = extractvalue %dx.types.CBufRet.f32 %3742, 1
  %3745 = extractvalue %dx.types.CBufRet.f32 %3742, 2
  %3746 = fadd fast float %3743, %166
  %3747 = fadd fast float %3744, %167
  %3748 = fadd fast float %3745, %168
  %3749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3750 = extractvalue %dx.types.CBufRet.f32 %3749, 0
  %3751 = extractvalue %dx.types.CBufRet.f32 %3749, 1
  %3752 = fsub fast float %3746, %3750
  %3753 = fsub fast float %3747, %3751
  %3754 = fmul fast float %3752, %3752
  %3755 = fmul fast float %3753, %3753
  %3756 = fadd fast float %3754, %3755
  %3757 = call float @dx.op.unary.f32(i32 24, float %3756)  ; Sqrt(value)
  %3758 = extractvalue %dx.types.CBufRet.f32 %3749, 2
  %3759 = fcmp fast olt float %3757, %3758
  br i1 %3759, label %3760, label %3827

; <label>:3760                                    ; preds = %3687
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 0
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 0
  %3765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3765, 0
  %3767 = extractvalue %dx.types.CBufRet.f32 %3761, 1
  %3768 = extractvalue %dx.types.CBufRet.f32 %3763, 1
  %3769 = extractvalue %dx.types.CBufRet.f32 %3765, 1
  %3770 = extractvalue %dx.types.CBufRet.f32 %3761, 3
  %3771 = extractvalue %dx.types.CBufRet.f32 %3763, 3
  %3772 = extractvalue %dx.types.CBufRet.f32 %3765, 3
  %3773 = fadd fast float %3770, %3746
  %3774 = fadd fast float %3771, %3747
  %3775 = fadd fast float %3772, %3748
  %3776 = fmul fast float %3773, %3762
  %3777 = call float @dx.op.tertiary.f32(i32 46, float %3774, float %3764, float %3776)  ; FMad(a,b,c)
  %3778 = call float @dx.op.tertiary.f32(i32 46, float %3775, float %3766, float %3777)  ; FMad(a,b,c)
  %3779 = fmul fast float %3773, %3767
  %3780 = call float @dx.op.tertiary.f32(i32 46, float %3774, float %3768, float %3779)  ; FMad(a,b,c)
  %3781 = call float @dx.op.tertiary.f32(i32 46, float %3775, float %3769, float %3780)  ; FMad(a,b,c)
  %3782 = fsub fast float %3778, %3770
  %3783 = fsub fast float %3781, %3771
  %3784 = fsub fast float %3782, %3750
  %3785 = fadd fast float %3784, %3758
  %3786 = fsub fast float %3783, %3751
  %3787 = fadd fast float %3786, %3758
  %3788 = extractvalue %dx.types.CBufRet.f32 %3749, 3
  %3789 = fmul fast float %3785, %3788
  %3790 = fmul fast float %3787, %3788
  %3791 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3792 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3793 = fsub fast float 1.000000e+00, %3791
  %3794 = fsub fast float 1.000000e+00, %3792
  %3795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3793, float %3794, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = fcmp fast ugt float %3796, 0.000000e+00
  br i1 %3797, label %3798, label %4101

; <label>:3798                                    ; preds = %3760
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 2
  %3801 = fmul fast float %3800, %3796
  %3802 = extractvalue %dx.types.CBufRet.f32 %3799, 3
  %3803 = fadd fast float %3802, %3801
  %3804 = extractvalue %dx.types.CBufRet.f32 %3765, 2
  %3805 = fadd fast float %3803, %3772
  %3806 = fmul fast float %3778, %3766
  %3807 = call float @dx.op.tertiary.f32(i32 46, float %3781, float %3769, float %3806)  ; FMad(a,b,c)
  %3808 = call float @dx.op.tertiary.f32(i32 46, float %3805, float %3804, float %3807)  ; FMad(a,b,c)
  %3809 = fsub fast float %3808, %3772
  %3810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3811 = extractvalue %dx.types.CBufRet.f32 %3810, 2
  %3812 = fsub fast float %3809, %3811
  %3813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3793, float %3794, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.ResRet.f32 %3813, 2
  %3817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3793, float %3794, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3821 = fadd fast float %3818, %3814
  %3822 = fmul fast float %3821, 0x3F847AE140000000
  %3823 = fadd fast float %3819, %3815
  %3824 = fmul fast float %3823, 0x3F847AE140000000
  %3825 = fadd fast float %3820, %3816
  %3826 = fmul fast float %3825, 0x3F847AE140000000
  br label %4101

; <label>:3827                                    ; preds = %3687
  %3828 = and i32 %184, 1
  %3829 = icmp eq i32 %3828, 0
  br i1 %3829, label %4101, label %3830

; <label>:3830                                    ; preds = %3827
  %3831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3831, 0
  %3833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3834 = extractvalue %dx.types.CBufRet.f32 %3833, 0
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.CBufRet.f32 %3831, 1
  %3838 = extractvalue %dx.types.CBufRet.f32 %3833, 1
  %3839 = extractvalue %dx.types.CBufRet.f32 %3835, 1
  %3840 = extractvalue %dx.types.CBufRet.f32 %3831, 3
  %3841 = extractvalue %dx.types.CBufRet.f32 %3833, 3
  %3842 = extractvalue %dx.types.CBufRet.f32 %3835, 3
  %3843 = fadd fast float %3840, %3746
  %3844 = fadd fast float %3841, %3747
  %3845 = fadd fast float %3842, %3748
  %3846 = fmul fast float %3843, %3832
  %3847 = call float @dx.op.tertiary.f32(i32 46, float %3844, float %3834, float %3846)  ; FMad(a,b,c)
  %3848 = call float @dx.op.tertiary.f32(i32 46, float %3845, float %3836, float %3847)  ; FMad(a,b,c)
  %3849 = fmul fast float %3843, %3837
  %3850 = call float @dx.op.tertiary.f32(i32 46, float %3844, float %3838, float %3849)  ; FMad(a,b,c)
  %3851 = call float @dx.op.tertiary.f32(i32 46, float %3845, float %3839, float %3850)  ; FMad(a,b,c)
  %3852 = fsub fast float %3848, %3840
  %3853 = fsub fast float %3851, %3841
  %3854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.CBufRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.CBufRet.f32 %3854, 2
  %3858 = extractvalue %dx.types.CBufRet.f32 %3854, 3
  %3859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3860 = extractvalue %dx.types.CBufRet.f32 %3859, 3
  %3861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.i32 %3861, 0
  %3863 = extractvalue %dx.types.CBufRet.i32 %3861, 1
  %3864 = udiv i32 %3863, %3862
  %3865 = fsub fast float %3852, %3855
  %3866 = fsub fast float %3853, %3856
  %3867 = call float @dx.op.binary.f32(i32 35, float %3865, float 0.000000e+00)  ; FMax(a,b)
  %3868 = call float @dx.op.binary.f32(i32 35, float %3866, float 0.000000e+00)  ; FMax(a,b)
  %3869 = call float @dx.op.binary.f32(i32 36, float %3867, float %3857)  ; FMin(a,b)
  %3870 = call float @dx.op.binary.f32(i32 36, float %3868, float %3858)  ; FMin(a,b)
  %3871 = add i32 %3862, -1
  %3872 = add i32 %3864, -1
  %3873 = fmul fast float %3869, %3860
  %3874 = fmul fast float %3870, %3860
  %3875 = fptoui float %3873 to i32
  %3876 = fptoui float %3874 to i32
  %3877 = call i32 @dx.op.binary.i32(i32 40, i32 %3875, i32 %3871)  ; UMin(a,b)
  %3878 = call i32 @dx.op.binary.i32(i32 40, i32 %3876, i32 %3872)  ; UMin(a,b)
  %3879 = mul i32 %3878, %3862
  %3880 = add i32 %3879, %3877
  %3881 = shl i32 %3880, 2
  %3882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.i32 %3882, 0
  %3884 = icmp eq i32 %3883, -1
  br i1 %3884, label %4101, label %3885

; <label>:3885                                    ; preds = %3830
  %3886 = mul i32 %3883, 148
  %3887 = add i32 %3886, 4
  %3888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = add i32 %3886, 8
  %3891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.f32 %3891, 0
  %3893 = add i32 %3886, 36
  %3894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3896 = add i32 %3886, 60
  %3897 = add i32 %3886, 92
  %3898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.i32 %3898, 0
  %3900 = add i32 %3886, 116
  %3901 = fsub fast float %3852, %3889
  %3902 = fsub fast float %3853, %3892
  %3903 = fmul fast float %3860, %3901
  %3904 = fmul fast float %3860, %3902
  %3905 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3906 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3907 = fsub fast float 1.000000e+00, %3906
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 2
  %3910 = call float @dx.op.unary.f32(i32 83, float %3905)  ; DerivCoarseX(value)
  %3911 = call float @dx.op.unary.f32(i32 83, float %3907)  ; DerivCoarseX(value)
  %3912 = call float @dx.op.unary.f32(i32 84, float %3905)  ; DerivCoarseY(value)
  %3913 = call float @dx.op.unary.f32(i32 84, float %3907)  ; DerivCoarseY(value)
  %3914 = fmul fast float %3910, %3909
  %3915 = fmul fast float %3911, %3909
  %3916 = fmul fast float %3912, %3909
  %3917 = fmul fast float %3913, %3909
  %3918 = call float @dx.op.dot2.f32(i32 54, float %3916, float %3917, float %3916, float %3917)  ; Dot2(ax,ay,bx,by)
  %3919 = call float @dx.op.dot2.f32(i32 54, float %3914, float %3915, float %3914, float %3915)  ; Dot2(ax,ay,bx,by)
  %3920 = call float @dx.op.binary.f32(i32 35, float %3919, float %3918)  ; FMax(a,b)
  %3921 = call float @dx.op.unary.f32(i32 23, float %3920)  ; Log(value)
  %3922 = fmul fast float %3921, 5.000000e-01
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 1
  %3925 = fadd fast float %3924, %3922
  %3926 = call float @dx.op.binary.f32(i32 35, float %3925, float 0.000000e+00)  ; FMax(a,b)
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 3
  %3929 = fadd fast float %3928, %3926
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 3
  %3932 = fadd fast float %3929, %3931
  %3933 = add i32 %3899, 0
  %3934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3933, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3935 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3934, i32 0)  ; GetDimensions(handle,mipLevel)
  %3936 = extractvalue %dx.types.Dimensions %3935, 0
  %3937 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3936)  ; FirstbitLo(value)
  %3938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.i32 %3938, 1
  %3940 = sub nsw i32 %3939, %3937
  %3941 = sitofp i32 %3940 to float
  %3942 = fsub fast float %3932, %3941
  %3943 = call float @dx.op.binary.f32(i32 35, float %3942, float 0.000000e+00)  ; FMax(a,b)
  %3944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3934, %dx.types.Handle %27, float %3905, float %3907, float %3895, float undef, i32 0, i32 0, i32 undef, float %3943)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %3946 = fcmp ule float %3945, 0x3FE0101020000000
  %3947 = extractvalue %dx.types.CBufRet.i32 %3938, 0
  %3948 = and i32 %3947, 128
  %3949 = icmp ne i32 %3948, 0
  %3950 = and i1 %3946, %3949
  br i1 %3950, label %4101, label %3951

; <label>:3951                                    ; preds = %3885
  %3952 = add i32 %3886, 20
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = add i32 %3886, 24
  %3956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = add i32 %3886, 40
  %3959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = add i32 %3886, 96
  %3962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3961, i32 undef)  ; BufferLoad(srv,index,wot)
  %3963 = extractvalue %dx.types.ResRet.i32 %3962, 0
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 2
  %3966 = fmul fast float %3965, %3905
  %3967 = fmul fast float %3965, %3907
  %3968 = extractvalue %dx.types.CBufRet.f32 %3964, 3
  %3969 = fadd fast float %3966, %3968
  %3970 = fadd fast float %3967, %3968
  %3971 = add i32 %3963, 0
  %3972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3971, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3973 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3972, i32 0)  ; GetDimensions(handle,mipLevel)
  %3974 = extractvalue %dx.types.Dimensions %3973, 0
  %3975 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3974)  ; FirstbitLo(value)
  %3976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.i32 %3976, 1
  %3978 = sub nsw i32 %3977, %3975
  %3979 = sitofp i32 %3978 to float
  %3980 = fsub fast float %3929, %3979
  %3981 = call float @dx.op.binary.f32(i32 35, float %3980, float 0.000000e+00)  ; FMax(a,b)
  %3982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3972, %dx.types.Handle %27, float %3969, float %3970, float %3960, float undef, i32 0, i32 0, i32 undef, float %3981)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3983 = extractvalue %dx.types.ResRet.f32 %3982, 0
  %3984 = fmul fast float %3983, %3954
  %3985 = fadd fast float %3984, %3957
  %3986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3987 = extractvalue %dx.types.CBufRet.f32 %3986, 0
  %3988 = extractvalue %dx.types.CBufRet.f32 %3986, 1
  %3989 = extractvalue %dx.types.CBufRet.f32 %3986, 2
  %3990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.f32 %3990, 3
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 3
  %3994 = extractvalue %dx.types.CBufRet.f32 %3986, 3
  %3995 = fadd fast float %3991, %3852
  %3996 = fadd fast float %3993, %3853
  %3997 = fadd fast float %3985, %3994
  %3998 = fmul fast float %3995, %3987
  %3999 = call float @dx.op.tertiary.f32(i32 46, float %3996, float %3988, float %3998)  ; FMad(a,b,c)
  %4000 = call float @dx.op.tertiary.f32(i32 46, float %3997, float %3989, float %3999)  ; FMad(a,b,c)
  %4001 = fsub fast float %4000, %3994
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 2
  %4004 = fsub fast float %4001, %4003
  %4005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4006 = extractvalue %dx.types.CBufRet.i32 %4005, 0
  %4007 = call i32 @dx.op.binary.i32(i32 40, i32 %3883, i32 %4006)  ; UMin(a,b)
  %4008 = mul i32 %4007, 36
  %4009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4008, i32 undef)  ; BufferLoad(srv,index,wot)
  %4010 = extractvalue %dx.types.ResRet.i32 %4009, 0
  %4011 = add i32 %4008, 4
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4014 = fmul fast float %4013, %3905
  %4015 = fmul fast float %4013, %3907
  %4016 = extractvalue %dx.types.CBufRet.f32 %4012, 1
  %4017 = fadd fast float %4014, %4016
  %4018 = fadd fast float %4015, %4016
  %4019 = icmp eq i32 %4010, 0
  br i1 %4019, label %4088, label %4020

; <label>:4020                                    ; preds = %3951
  br label %4021

; <label>:4021                                    ; preds = %4078, %4020
  %4022 = phi float [ %4079, %4078 ], [ 0.000000e+00, %4020 ]
  %4023 = phi float [ %4080, %4078 ], [ 0.000000e+00, %4020 ]
  %4024 = phi float [ %4081, %4078 ], [ 0.000000e+00, %4020 ]
  %4025 = phi float [ %4082, %4078 ], [ 0.000000e+00, %4020 ]
  %4026 = phi float [ %4083, %4078 ], [ 0.000000e+00, %4020 ]
  %4027 = phi float [ %4084, %4078 ], [ 0.000000e+00, %4020 ]
  %4028 = phi i32 [ %4085, %4078 ], [ 0, %4020 ]
  %4029 = shl i32 %4028, 2
  %4030 = add i32 %3896, %4029
  %4031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4030, i32 undef)  ; BufferLoad(srv,index,wot)
  %4032 = extractvalue %dx.types.ResRet.f32 %4031, 0
  %4033 = add i32 %3900, %4029
  %4034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4033, i32 undef)  ; BufferLoad(srv,index,wot)
  %4035 = extractvalue %dx.types.ResRet.i32 %4034, 0
  %4036 = add i32 %4035, 0
  %4037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4036, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4038 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4037, i32 0)  ; GetDimensions(handle,mipLevel)
  %4039 = extractvalue %dx.types.Dimensions %4038, 0
  %4040 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4039)  ; FirstbitLo(value)
  %4041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4042 = extractvalue %dx.types.CBufRet.i32 %4041, 1
  %4043 = sub nsw i32 %4042, %4040
  %4044 = sitofp i32 %4043 to float
  %4045 = fsub fast float %3929, %4044
  %4046 = call float @dx.op.binary.f32(i32 35, float %4045, float 0.000000e+00)  ; FMax(a,b)
  %4047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4037, %dx.types.Handle %27, float %4017, float %4018, float %4032, float undef, i32 0, i32 0, i32 undef, float %4046)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = fcmp fast ogt float %4048, 0.000000e+00
  br i1 %4049, label %4050, label %4078

; <label>:4050                                    ; preds = %4021
  %4051 = add i32 %4011, %4029
  %4052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4051, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.i32 %4052, 0
  %4054 = and i32 %4053, 32767
  %4055 = mul nuw nsw i32 %4054, 928
  %4056 = add nuw nsw i32 %4055, 48
  %4057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4056, i32 undef)  ; BufferLoad(srv,index,wot)
  %4058 = extractvalue %dx.types.ResRet.f32 %4057, 0
  %4059 = extractvalue %dx.types.ResRet.f32 %4057, 1
  %4060 = extractvalue %dx.types.ResRet.f32 %4057, 2
  %4061 = add nuw nsw i32 %4055, 60
  %4062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.f32 %4062, 0
  %4064 = extractvalue %dx.types.ResRet.f32 %4062, 1
  %4065 = extractvalue %dx.types.ResRet.f32 %4062, 2
  %4066 = fmul fast float %4058, %4048
  %4067 = fmul fast float %4059, %4048
  %4068 = fmul fast float %4060, %4048
  %4069 = fadd fast float %4066, %4022
  %4070 = fadd fast float %4067, %4023
  %4071 = fadd fast float %4068, %4024
  %4072 = fmul fast float %4063, %4048
  %4073 = fmul fast float %4064, %4048
  %4074 = fmul fast float %4065, %4048
  %4075 = fadd fast float %4072, %4025
  %4076 = fadd fast float %4073, %4026
  %4077 = fadd fast float %4074, %4027
  br label %4078

; <label>:4078                                    ; preds = %4050, %4021
  %4079 = phi float [ %4069, %4050 ], [ %4022, %4021 ]
  %4080 = phi float [ %4070, %4050 ], [ %4023, %4021 ]
  %4081 = phi float [ %4071, %4050 ], [ %4024, %4021 ]
  %4082 = phi float [ %4075, %4050 ], [ %4025, %4021 ]
  %4083 = phi float [ %4076, %4050 ], [ %4026, %4021 ]
  %4084 = phi float [ %4077, %4050 ], [ %4027, %4021 ]
  %4085 = add nuw i32 %4028, 1
  %4086 = icmp eq i32 %4085, %4010
  br i1 %4086, label %4087, label %4021

; <label>:4087                                    ; preds = %4078
  br label %4088

; <label>:4088                                    ; preds = %4087, %3951
  %4089 = phi float [ 0.000000e+00, %3951 ], [ %4079, %4087 ]
  %4090 = phi float [ 0.000000e+00, %3951 ], [ %4080, %4087 ]
  %4091 = phi float [ 0.000000e+00, %3951 ], [ %4081, %4087 ]
  %4092 = phi float [ 0.000000e+00, %3951 ], [ %4082, %4087 ]
  %4093 = phi float [ 0.000000e+00, %3951 ], [ %4083, %4087 ]
  %4094 = phi float [ 0.000000e+00, %3951 ], [ %4084, %4087 ]
  %4095 = fadd fast float %4092, %4089
  %4096 = fmul fast float %4095, 0x3F847AE140000000
  %4097 = fadd fast float %4093, %4090
  %4098 = fmul fast float %4097, 0x3F847AE140000000
  %4099 = fadd fast float %4094, %4091
  %4100 = fmul fast float %4099, 0x3F847AE140000000
  br label %4101

; <label>:4101                                    ; preds = %4088, %3885, %3830, %3827, %3798, %3760
  %4102 = phi float [ %3812, %3798 ], [ -1.310720e+05, %3760 ], [ %4004, %4088 ], [ -1.310720e+05, %3830 ], [ -1.310720e+05, %3885 ], [ -1.310720e+05, %3827 ]
  %4103 = phi float [ %3822, %3798 ], [ 0.000000e+00, %3760 ], [ %4096, %4088 ], [ 0.000000e+00, %3830 ], [ 0.000000e+00, %3885 ], [ 0.000000e+00, %3827 ]
  %4104 = phi float [ %3824, %3798 ], [ 0.000000e+00, %3760 ], [ %4098, %4088 ], [ 0.000000e+00, %3830 ], [ 0.000000e+00, %3885 ], [ 0.000000e+00, %3827 ]
  %4105 = phi float [ %3826, %3798 ], [ 0.000000e+00, %3760 ], [ %4100, %4088 ], [ 0.000000e+00, %3830 ], [ 0.000000e+00, %3885 ], [ 0.000000e+00, %3827 ]
  %4106 = phi i1 [ true, %3798 ], [ false, %3760 ], [ true, %4088 ], [ false, %3830 ], [ false, %3885 ], [ false, %3827 ]
  %4107 = and i32 %184, 3
  %4108 = icmp eq i32 %4107, 1
  %4109 = select i1 %4108, float 1.000000e+00, float 0.000000e+00
  %4110 = fsub fast float %4102, %168
  %4111 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4112 = select i1 %4106, float %4111, float 1.000000e+00
  %4113 = fmul fast float %4112, %4109
  %4114 = icmp eq i32 %4107, 3
  %4115 = select i1 %4114, float 1.000000e+00, float %4113
  %4116 = call float @dx.op.binary.f32(i32 35, float %3703, float %4115)  ; FMax(a,b)
  %4117 = fcmp fast olt float %4115, 1.000000e+00
  %4118 = fcmp uge float %49, 0.000000e+00
  %4119 = and i1 %4118, %4117
  br i1 %4119, label %4120, label %4130

; <label>:4120                                    ; preds = %4101
  %4121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4122 = extractvalue %dx.types.ResRet.f32 %4121, 0
  %4123 = extractvalue %dx.types.ResRet.f32 %4121, 1
  %4124 = extractvalue %dx.types.ResRet.f32 %4121, 2
  %4125 = fadd fast float %4122, %4116
  %4126 = fcmp ule float %48, 0.000000e+00
  %4127 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4128 = select i1 %4126, float %4127, float 1.000000e+00
  %4129 = fmul fast float %4128, %4124
  br label %4130

; <label>:4130                                    ; preds = %4120, %4101
  %4131 = phi float [ %4125, %4120 ], [ %4116, %4101 ]
  %4132 = phi float [ %4123, %4120 ], [ 0.000000e+00, %4101 ]
  %4133 = phi float [ %4129, %4120 ], [ 0.000000e+00, %4101 ]
  %4134 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4135 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4136 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  %4137 = fcmp fast une float %4135, 0.000000e+00
  %4138 = fcmp fast une float %4136, 0.000000e+00
  %4139 = or i1 %4137, %4138
  br i1 %4139, label %4140, label %4699

; <label>:4140                                    ; preds = %4130
  br i1 %4137, label %4141, label %4414

; <label>:4141                                    ; preds = %4140
  %4142 = call float @dx.op.unary.f32(i32 23, float %3700)  ; Log(value)
  %4143 = fmul fast float %4142, 4.000000e+00
  %4144 = call float @dx.op.unary.f32(i32 21, float %4143)  ; Exp(value)
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = fmul fast float %4146, %36
  %4148 = fmul fast float %4146, %37
  %4149 = fmul fast float %4146, %38
  %4150 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4151 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4152 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4153 = call float @dx.op.unary.f32(i32 23, float %4150)  ; Log(value)
  %4154 = call float @dx.op.unary.f32(i32 23, float %4151)  ; Log(value)
  %4155 = call float @dx.op.unary.f32(i32 23, float %4152)  ; Log(value)
  %4156 = fmul fast float %4153, 4.000000e+00
  %4157 = fmul fast float %4154, 4.000000e+00
  %4158 = fmul fast float %4155, 4.000000e+00
  %4159 = call float @dx.op.unary.f32(i32 21, float %4156)  ; Exp(value)
  %4160 = call float @dx.op.unary.f32(i32 21, float %4157)  ; Exp(value)
  %4161 = call float @dx.op.unary.f32(i32 21, float %4158)  ; Exp(value)
  %4162 = fadd fast float %4160, %4159
  %4163 = fadd fast float %4162, %4161
  %4164 = fdiv fast float 1.000000e+00, %4163
  %4165 = fmul fast float %4164, %4159
  %4166 = fcmp fast ogt float %45, 0.000000e+00
  %4167 = fcmp fast ogt float %46, 0.000000e+00
  %4168 = fcmp fast ogt float %47, 0.000000e+00
  %4169 = fcmp fast olt float %45, 0.000000e+00
  %4170 = fcmp fast olt float %46, 0.000000e+00
  %4171 = fcmp fast olt float %47, 0.000000e+00
  %4172 = zext i1 %4166 to i32
  %4173 = zext i1 %4167 to i32
  %4174 = zext i1 %4168 to i32
  %4175 = zext i1 %4169 to i32
  %4176 = zext i1 %4170 to i32
  %4177 = zext i1 %4171 to i32
  %4178 = sub nsw i32 %4172, %4175
  %4179 = sub nsw i32 %4173, %4176
  %4180 = sub nsw i32 %4174, %4177
  %4181 = call float @dx.op.unary.f32(i32 83, float %4147)  ; DerivCoarseX(value)
  %4182 = call float @dx.op.unary.f32(i32 83, float %4148)  ; DerivCoarseX(value)
  %4183 = call float @dx.op.unary.f32(i32 83, float %4149)  ; DerivCoarseX(value)
  %4184 = call float @dx.op.unary.f32(i32 84, float %4147)  ; DerivCoarseY(value)
  %4185 = call float @dx.op.unary.f32(i32 84, float %4148)  ; DerivCoarseY(value)
  %4186 = call float @dx.op.unary.f32(i32 84, float %4149)  ; DerivCoarseY(value)
  %4187 = fcmp fast ole float %216, %4165
  %4188 = fmul fast float %4164, %4162
  %4189 = fcmp fast ole float %216, %4188
  %4190 = select i1 %4189, float %4149, float %4147
  %4191 = select i1 %4189, float %4147, float %4148
  %4192 = select i1 %4187, float %4148, float %4190
  %4193 = select i1 %4187, float %4149, float %4191
  %4194 = select i1 %4189, float %4183, float %4181
  %4195 = select i1 %4189, float %4181, float %4182
  %4196 = select i1 %4187, float %4182, float %4194
  %4197 = select i1 %4187, float %4183, float %4195
  %4198 = select i1 %4189, float %4186, float %4184
  %4199 = select i1 %4189, float %4184, float %4185
  %4200 = select i1 %4187, float %4185, float %4198
  %4201 = select i1 %4187, float %4186, float %4199
  %4202 = call float @dx.op.unary.f32(i32 27, float %4192)  ; Round_ni(value)
  %4203 = call float @dx.op.unary.f32(i32 27, float %4193)  ; Round_ni(value)
  %4204 = fptosi float %4202 to i32
  %4205 = fptosi float %4203 to i32
  %4206 = xor i32 %4205, %4204
  %4207 = sitofp i32 %4206 to float
  %4208 = fptosi float %4207 to i32
  %4209 = sitofp i32 %4208 to float
  %4210 = fmul fast float %4209, 0x3FE3C6EF40000000
  %4211 = frem fast float %4202, 2.560000e+02
  %4212 = frem fast float %4203, 2.560000e+02
  %4213 = fptoui float %4211 to i32
  %4214 = fptoui float %4212 to i32
  %4215 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4213, i32 %4214, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.ResRet.f32 %4215, 1
  %4218 = extractvalue %dx.types.ResRet.f32 %4215, 2
  %4219 = fadd fast float %4216, %4210
  %4220 = fadd fast float %4217, %4210
  %4221 = fadd fast float %4218, %4210
  %4222 = call float @dx.op.unary.f32(i32 22, float %4219)  ; Frc(value)
  %4223 = call float @dx.op.unary.f32(i32 22, float %4220)  ; Frc(value)
  %4224 = call float @dx.op.unary.f32(i32 22, float %4221)  ; Frc(value)
  %4225 = fmul fast float %4224, 0x401921FB60000000
  %4226 = call float @dx.op.unary.f32(i32 13, float %4225)  ; Sin(value)
  %4227 = call float @dx.op.unary.f32(i32 12, float %4225)  ; Cos(value)
  %4228 = fsub fast float -0.000000e+00, %4227
  %4229 = fmul fast float %4227, %4192
  %4230 = call float @dx.op.tertiary.f32(i32 46, float %4226, float %4193, float %4229)  ; FMad(a,b,c)
  %4231 = fmul fast float %4226, %4192
  %4232 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4193, float %4231)  ; FMad(a,b,c)
  %4233 = fadd fast float %4230, %4222
  %4234 = fadd fast float %4232, %4223
  %4235 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4236 = bitcast float %4235 to i32
  %4237 = icmp eq i32 %4236, 0
  br i1 %4237, label %4276, label %4238

; <label>:4238                                    ; preds = %4141
  %4239 = add i32 %4236, 0
  %4240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4241 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4240, %dx.types.Handle %80, float %4233, float %4234, float undef, float undef, i32 0, i32 0, i32 undef, float %4196, float %4197, float undef, float %4200, float %4201, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 1
  %4245 = extractvalue %dx.types.CBufRet.f32 %4243, 2
  %4246 = fsub fast float 1.000000e+00, %4135
  %4247 = call float @dx.op.binary.f32(i32 35, float %4246, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4248 = bitcast float %4135 to i32
  %4249 = sitofp i32 %4248 to float
  %4250 = fadd fast float %4249, 0xC1CFBF8940000000
  %4251 = fmul fast float %4245, %4250
  %4252 = fadd fast float %4251, 0x41CFBF8940000000
  %4253 = fptosi float %4252 to i32
  %4254 = bitcast i32 %4253 to float
  %4255 = bitcast float %4247 to i32
  %4256 = sitofp i32 %4255 to float
  %4257 = fadd fast float %4256, 0xC1CFBF8940000000
  %4258 = fmul fast float %4257, %4245
  %4259 = fadd fast float %4258, 0x41CFBF8940000000
  %4260 = fptosi float %4259 to i32
  %4261 = bitcast i32 %4260 to float
  %4262 = fmul fast float %4254, %4244
  %4263 = fmul fast float %4261, %4244
  %4264 = fsub fast float %4247, %4262
  %4265 = fadd fast float %4263, %4247
  %4266 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4267 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4268 = fsub fast float %4242, %4266
  %4269 = fsub fast float %4267, %4266
  %4270 = bitcast float %4269 to i32
  %4271 = sub nsw i32 2129859010, %4270
  %4272 = bitcast i32 %4271 to float
  %4273 = fmul fast float %4272, %4268
  %4274 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4275 = fcmp fast olt float %4274, 0x3F70101020000000
  br i1 %4275, label %4414, label %4276

; <label>:4276                                    ; preds = %4238, %4141
  %4277 = phi float [ %4274, %4238 ], [ %4135, %4141 ]
  %4278 = fmul fast float %4277, %4144
  %4279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.i32 %4279, 1
  %4281 = extractvalue %dx.types.CBufRet.i32 %4279, 0
  %4282 = add i32 %4281, 0
  %4283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4284 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4283, %dx.types.Handle %79, float %4233, float %4234, float undef, float undef, i32 0, i32 0, i32 undef, float %4196, float %4197, float undef, float %4200, float %4201, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.ResRet.f32 %4284, 1
  %4287 = extractvalue %dx.types.ResRet.f32 %4284, 2
  %4288 = extractvalue %dx.types.ResRet.f32 %4284, 3
  %4289 = and i32 %4280, 255
  %4290 = uitofp i32 %4289 to float
  %4291 = lshr i32 %4280, 8
  %4292 = and i32 %4291, 255
  %4293 = uitofp i32 %4292 to float
  %4294 = fmul fast float %4288, %4290
  %4295 = fadd fast float %4294, %4293
  %4296 = fmul fast float %4295, 0x3F70101000000000
  %4297 = fadd fast float %4296, 0xBFB99999A0000000
  %4298 = call float @dx.op.unary.f32(i32 7, float %4297)  ; Saturate(value)
  %4299 = fmul fast float %4298, 0x3FF1C71C80000000
  %4300 = call float @dx.op.binary.f32(i32 36, float %4296, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4301 = fsub fast float 1.000000e+00, %4299
  %4302 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4303 = fmul fast float %4302, %4285
  %4304 = fmul fast float %4302, %4286
  %4305 = fmul fast float %4302, %4287
  %4306 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4307 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4308 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  %4309 = fmul fast float %4299, %4285
  %4310 = fmul fast float %4299, %4286
  %4311 = fmul fast float %4299, %4287
  %4312 = fadd fast float %4309, %4300
  %4313 = fadd fast float %4310, %4300
  %4314 = fadd fast float %4311, %4300
  %4315 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4316 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4317 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.i32 %4318, 3
  %4320 = extractvalue %dx.types.CBufRet.i32 %4318, 2
  %4321 = add i32 %4320, 0
  %4322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4323 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4322, %dx.types.Handle %79, float %4233, float %4234, float undef, float undef, i32 0, i32 0, i32 undef, float %4196, float %4197, float undef, float %4200, float %4201, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4324 = extractvalue %dx.types.ResRet.f32 %4323, 0
  %4325 = extractvalue %dx.types.ResRet.f32 %4323, 1
  %4326 = extractvalue %dx.types.ResRet.f32 %4323, 2
  %4327 = extractvalue %dx.types.ResRet.f32 %4323, 3
  %4328 = and i32 %4319, 255
  %4329 = uitofp i32 %4328 to float
  %4330 = lshr i32 %4319, 8
  %4331 = and i32 %4330, 255
  %4332 = uitofp i32 %4331 to float
  %4333 = lshr i32 %4319, 16
  %4334 = and i32 %4333, 255
  %4335 = uitofp i32 %4334 to float
  %4336 = fmul fast float %4335, 0x3F70101000000000
  %4337 = fmul fast float %4324, %4329
  %4338 = fadd fast float %4337, %4332
  %4339 = fmul fast float %4338, 0x3F70101000000000
  %4340 = fadd fast float %4325, -5.000000e-01
  %4341 = fadd fast float %4327, -5.000000e-01
  %4342 = fmul fast float %4340, %4336
  %4343 = fmul fast float %4341, %4336
  %4344 = fadd fast float %4342, 5.000000e-01
  %4345 = fadd fast float %4343, 5.000000e-01
  %4346 = fmul fast float %4344, 2.000000e+00
  %4347 = fadd fast float %4346, -1.000000e+00
  %4348 = fmul fast float %4345, 2.000000e+00
  %4349 = fadd fast float %4348, -1.000000e+00
  %4350 = fadd fast float %4347, %4349
  %4351 = fmul fast float %4350, 5.000000e-01
  %4352 = fsub fast float %4347, %4349
  %4353 = fmul fast float %4352, 5.000000e-01
  %4354 = call float @dx.op.unary.f32(i32 6, float %4351)  ; FAbs(value)
  %4355 = fsub fast float 1.000000e+00, %4354
  %4356 = call float @dx.op.unary.f32(i32 6, float %4353)  ; FAbs(value)
  %4357 = fsub fast float %4355, %4356
  %4358 = call float @dx.op.dot3.f32(i32 55, float %4351, float %4353, float %4357, float %4351, float %4353, float %4357)  ; Dot3(ax,ay,az,bx,by,bz)
  %4359 = call float @dx.op.unary.f32(i32 25, float %4358)  ; Rsqrt(value)
  %4360 = fmul fast float %4351, %4359
  %4361 = fmul fast float %4353, %4359
  %4362 = select i1 %4189, i32 %4179, i32 %4180
  %4363 = select i1 %4187, i32 %4178, i32 %4362
  %4364 = sitofp i32 %4363 to float
  %4365 = fmul fast float %4357, %4364
  %4366 = fmul fast float %4365, %4359
  %4367 = select i1 %4189, float %4366, float %4361
  %4368 = select i1 %4189, float %4361, float %4366
  %4369 = select i1 %4187, float %4366, float %4360
  %4370 = select i1 %4187, float %4361, float %4367
  %4371 = select i1 %4187, float %4360, float %4368
  %4372 = fsub fast float %4306, %3739
  %4373 = fsub fast float %4307, %3740
  %4374 = fsub fast float %4308, %3741
  %4375 = fmul fast float %4372, %4278
  %4376 = fmul fast float %4373, %4278
  %4377 = fmul fast float %4374, %4278
  %4378 = fadd fast float %4375, %3739
  %4379 = fadd fast float %4376, %3740
  %4380 = fadd fast float %4377, %3741
  %4381 = fsub fast float %4315, %3724
  %4382 = fsub fast float %4316, %3725
  %4383 = fsub fast float %4317, %3726
  %4384 = fmul fast float %4381, %4278
  %4385 = fmul fast float %4382, %4278
  %4386 = fmul fast float %4383, %4278
  %4387 = fadd fast float %4384, %3724
  %4388 = fadd fast float %4385, %3725
  %4389 = fadd fast float %4386, %3726
  %4390 = fadd fast float %4369, %3688
  %4391 = fadd fast float %4370, %3689
  %4392 = fadd fast float %4371, %3690
  %4393 = call float @dx.op.dot3.f32(i32 55, float %4390, float %4391, float %4392, float %4390, float %4391, float %4392)  ; Dot3(ax,ay,az,bx,by,bz)
  %4394 = call float @dx.op.unary.f32(i32 25, float %4393)  ; Rsqrt(value)
  %4395 = fmul fast float %4390, %4394
  %4396 = fmul fast float %4391, %4394
  %4397 = fmul fast float %4392, %4394
  %4398 = fsub fast float %4395, %3688
  %4399 = fsub fast float %4396, %3689
  %4400 = fsub fast float %4397, %3690
  %4401 = fmul fast float %4398, %4278
  %4402 = fmul fast float %4399, %4278
  %4403 = fmul fast float %4400, %4278
  %4404 = fadd fast float %4401, %3688
  %4405 = fadd fast float %4402, %3689
  %4406 = fadd fast float %4403, %3690
  %4407 = call float @dx.op.binary.f32(i32 36, float %3700, float %4326)  ; FMin(a,b)
  %4408 = fsub fast float %4407, %3700
  %4409 = fmul fast float %4408, %4278
  %4410 = fadd fast float %4409, %3700
  %4411 = fsub fast float %4339, %3727
  %4412 = fmul fast float %4411, %4278
  %4413 = fadd fast float %4412, %3727
  br label %4414

; <label>:4414                                    ; preds = %4276, %4238, %4140
  %4415 = phi float [ %4378, %4276 ], [ %3739, %4238 ], [ %3739, %4140 ]
  %4416 = phi float [ %4379, %4276 ], [ %3740, %4238 ], [ %3740, %4140 ]
  %4417 = phi float [ %4380, %4276 ], [ %3741, %4238 ], [ %3741, %4140 ]
  %4418 = phi float [ %4387, %4276 ], [ %3724, %4238 ], [ %3724, %4140 ]
  %4419 = phi float [ %4388, %4276 ], [ %3725, %4238 ], [ %3725, %4140 ]
  %4420 = phi float [ %4389, %4276 ], [ %3726, %4238 ], [ %3726, %4140 ]
  %4421 = phi float [ %4404, %4276 ], [ %3688, %4238 ], [ %3688, %4140 ]
  %4422 = phi float [ %4405, %4276 ], [ %3689, %4238 ], [ %3689, %4140 ]
  %4423 = phi float [ %4406, %4276 ], [ %3690, %4238 ], [ %3690, %4140 ]
  %4424 = phi float [ %4413, %4276 ], [ %3727, %4238 ], [ %3727, %4140 ]
  %4425 = phi float [ %4410, %4276 ], [ %3700, %4238 ], [ %3700, %4140 ]
  br i1 %4138, label %4426, label %4699

; <label>:4426                                    ; preds = %4414
  %4427 = call float @dx.op.unary.f32(i32 23, float %4425)  ; Log(value)
  %4428 = fmul fast float %4427, 4.000000e+00
  %4429 = call float @dx.op.unary.f32(i32 21, float %4428)  ; Exp(value)
  %4430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.f32 %4430, 0
  %4432 = fmul fast float %4431, %36
  %4433 = fmul fast float %4431, %37
  %4434 = fmul fast float %4431, %38
  %4435 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4436 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4437 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4438 = call float @dx.op.unary.f32(i32 23, float %4435)  ; Log(value)
  %4439 = call float @dx.op.unary.f32(i32 23, float %4436)  ; Log(value)
  %4440 = call float @dx.op.unary.f32(i32 23, float %4437)  ; Log(value)
  %4441 = fmul fast float %4438, 4.000000e+00
  %4442 = fmul fast float %4439, 4.000000e+00
  %4443 = fmul fast float %4440, 4.000000e+00
  %4444 = call float @dx.op.unary.f32(i32 21, float %4441)  ; Exp(value)
  %4445 = call float @dx.op.unary.f32(i32 21, float %4442)  ; Exp(value)
  %4446 = call float @dx.op.unary.f32(i32 21, float %4443)  ; Exp(value)
  %4447 = fadd fast float %4445, %4444
  %4448 = fadd fast float %4447, %4446
  %4449 = fdiv fast float 1.000000e+00, %4448
  %4450 = fmul fast float %4449, %4444
  %4451 = fcmp fast ogt float %45, 0.000000e+00
  %4452 = fcmp fast ogt float %46, 0.000000e+00
  %4453 = fcmp fast ogt float %47, 0.000000e+00
  %4454 = fcmp fast olt float %45, 0.000000e+00
  %4455 = fcmp fast olt float %46, 0.000000e+00
  %4456 = fcmp fast olt float %47, 0.000000e+00
  %4457 = zext i1 %4451 to i32
  %4458 = zext i1 %4452 to i32
  %4459 = zext i1 %4453 to i32
  %4460 = zext i1 %4454 to i32
  %4461 = zext i1 %4455 to i32
  %4462 = zext i1 %4456 to i32
  %4463 = sub nsw i32 %4457, %4460
  %4464 = sub nsw i32 %4458, %4461
  %4465 = sub nsw i32 %4459, %4462
  %4466 = call float @dx.op.unary.f32(i32 83, float %4432)  ; DerivCoarseX(value)
  %4467 = call float @dx.op.unary.f32(i32 83, float %4433)  ; DerivCoarseX(value)
  %4468 = call float @dx.op.unary.f32(i32 83, float %4434)  ; DerivCoarseX(value)
  %4469 = call float @dx.op.unary.f32(i32 84, float %4432)  ; DerivCoarseY(value)
  %4470 = call float @dx.op.unary.f32(i32 84, float %4433)  ; DerivCoarseY(value)
  %4471 = call float @dx.op.unary.f32(i32 84, float %4434)  ; DerivCoarseY(value)
  %4472 = fcmp fast ole float %216, %4450
  %4473 = fmul fast float %4449, %4447
  %4474 = fcmp fast ole float %216, %4473
  %4475 = select i1 %4474, float %4434, float %4432
  %4476 = select i1 %4474, float %4432, float %4433
  %4477 = select i1 %4472, float %4433, float %4475
  %4478 = select i1 %4472, float %4434, float %4476
  %4479 = select i1 %4474, float %4468, float %4466
  %4480 = select i1 %4474, float %4466, float %4467
  %4481 = select i1 %4472, float %4467, float %4479
  %4482 = select i1 %4472, float %4468, float %4480
  %4483 = select i1 %4474, float %4471, float %4469
  %4484 = select i1 %4474, float %4469, float %4470
  %4485 = select i1 %4472, float %4470, float %4483
  %4486 = select i1 %4472, float %4471, float %4484
  %4487 = call float @dx.op.unary.f32(i32 27, float %4477)  ; Round_ni(value)
  %4488 = call float @dx.op.unary.f32(i32 27, float %4478)  ; Round_ni(value)
  %4489 = fptosi float %4487 to i32
  %4490 = fptosi float %4488 to i32
  %4491 = xor i32 %4490, %4489
  %4492 = sitofp i32 %4491 to float
  %4493 = fptosi float %4492 to i32
  %4494 = sitofp i32 %4493 to float
  %4495 = fmul fast float %4494, 0x3FE3C6EF40000000
  %4496 = frem fast float %4487, 2.560000e+02
  %4497 = frem fast float %4488, 2.560000e+02
  %4498 = fptoui float %4496 to i32
  %4499 = fptoui float %4497 to i32
  %4500 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4498, i32 %4499, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4501 = extractvalue %dx.types.ResRet.f32 %4500, 0
  %4502 = extractvalue %dx.types.ResRet.f32 %4500, 1
  %4503 = extractvalue %dx.types.ResRet.f32 %4500, 2
  %4504 = fadd fast float %4501, %4495
  %4505 = fadd fast float %4502, %4495
  %4506 = fadd fast float %4503, %4495
  %4507 = call float @dx.op.unary.f32(i32 22, float %4504)  ; Frc(value)
  %4508 = call float @dx.op.unary.f32(i32 22, float %4505)  ; Frc(value)
  %4509 = call float @dx.op.unary.f32(i32 22, float %4506)  ; Frc(value)
  %4510 = fmul fast float %4509, 0x401921FB60000000
  %4511 = call float @dx.op.unary.f32(i32 13, float %4510)  ; Sin(value)
  %4512 = call float @dx.op.unary.f32(i32 12, float %4510)  ; Cos(value)
  %4513 = fsub fast float -0.000000e+00, %4512
  %4514 = fmul fast float %4512, %4477
  %4515 = call float @dx.op.tertiary.f32(i32 46, float %4511, float %4478, float %4514)  ; FMad(a,b,c)
  %4516 = fmul fast float %4511, %4477
  %4517 = call float @dx.op.tertiary.f32(i32 46, float %4513, float %4478, float %4516)  ; FMad(a,b,c)
  %4518 = fadd fast float %4515, %4507
  %4519 = fadd fast float %4517, %4508
  %4520 = extractvalue %dx.types.CBufRet.f32 %4430, 3
  %4521 = bitcast float %4520 to i32
  %4522 = icmp eq i32 %4521, 0
  br i1 %4522, label %4561, label %4523

; <label>:4523                                    ; preds = %4426
  %4524 = add i32 %4521, 0
  %4525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4526 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4525, %dx.types.Handle %80, float %4518, float %4519, float undef, float undef, i32 0, i32 0, i32 undef, float %4481, float %4482, float undef, float %4485, float %4486, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4527 = extractvalue %dx.types.ResRet.f32 %4526, 0
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 1
  %4530 = extractvalue %dx.types.CBufRet.f32 %4528, 2
  %4531 = fsub fast float 1.000000e+00, %4136
  %4532 = call float @dx.op.binary.f32(i32 35, float %4531, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4533 = bitcast float %4136 to i32
  %4534 = sitofp i32 %4533 to float
  %4535 = fadd fast float %4534, 0xC1CFBF8940000000
  %4536 = fmul fast float %4530, %4535
  %4537 = fadd fast float %4536, 0x41CFBF8940000000
  %4538 = fptosi float %4537 to i32
  %4539 = bitcast i32 %4538 to float
  %4540 = bitcast float %4532 to i32
  %4541 = sitofp i32 %4540 to float
  %4542 = fadd fast float %4541, 0xC1CFBF8940000000
  %4543 = fmul fast float %4542, %4530
  %4544 = fadd fast float %4543, 0x41CFBF8940000000
  %4545 = fptosi float %4544 to i32
  %4546 = bitcast i32 %4545 to float
  %4547 = fmul fast float %4539, %4529
  %4548 = fmul fast float %4546, %4529
  %4549 = fsub fast float %4532, %4547
  %4550 = fadd fast float %4548, %4532
  %4551 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4552 = call float @dx.op.unary.f32(i32 7, float %4550)  ; Saturate(value)
  %4553 = fsub fast float %4527, %4551
  %4554 = fsub fast float %4552, %4551
  %4555 = bitcast float %4554 to i32
  %4556 = sub nsw i32 2129859010, %4555
  %4557 = bitcast i32 %4556 to float
  %4558 = fmul fast float %4557, %4553
  %4559 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4560 = fcmp fast olt float %4559, 0x3F70101020000000
  br i1 %4560, label %4699, label %4561

; <label>:4561                                    ; preds = %4523, %4426
  %4562 = phi float [ %4559, %4523 ], [ %4136, %4426 ]
  %4563 = fmul fast float %4562, %4429
  %4564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.i32 %4564, 1
  %4566 = extractvalue %dx.types.CBufRet.i32 %4564, 0
  %4567 = add i32 %4566, 0
  %4568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4569 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4568, %dx.types.Handle %79, float %4518, float %4519, float undef, float undef, i32 0, i32 0, i32 undef, float %4481, float %4482, float undef, float %4485, float %4486, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = extractvalue %dx.types.ResRet.f32 %4569, 3
  %4574 = and i32 %4565, 255
  %4575 = uitofp i32 %4574 to float
  %4576 = lshr i32 %4565, 8
  %4577 = and i32 %4576, 255
  %4578 = uitofp i32 %4577 to float
  %4579 = fmul fast float %4573, %4575
  %4580 = fadd fast float %4579, %4578
  %4581 = fmul fast float %4580, 0x3F70101000000000
  %4582 = fadd fast float %4581, 0xBFB99999A0000000
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = fmul fast float %4583, 0x3FF1C71C80000000
  %4585 = call float @dx.op.binary.f32(i32 36, float %4581, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4586 = fsub fast float 1.000000e+00, %4584
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = fmul fast float %4587, %4570
  %4589 = fmul fast float %4587, %4571
  %4590 = fmul fast float %4587, %4572
  %4591 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4592 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4593 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4594 = fmul fast float %4584, %4570
  %4595 = fmul fast float %4584, %4571
  %4596 = fmul fast float %4584, %4572
  %4597 = fadd fast float %4594, %4585
  %4598 = fadd fast float %4595, %4585
  %4599 = fadd fast float %4596, %4585
  %4600 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4601 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4602 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.i32 %4603, 3
  %4605 = extractvalue %dx.types.CBufRet.i32 %4603, 2
  %4606 = add i32 %4605, 0
  %4607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4606, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4608 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4607, %dx.types.Handle %79, float %4518, float %4519, float undef, float undef, i32 0, i32 0, i32 undef, float %4481, float %4482, float undef, float %4485, float %4486, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4612 = extractvalue %dx.types.ResRet.f32 %4608, 3
  %4613 = and i32 %4604, 255
  %4614 = uitofp i32 %4613 to float
  %4615 = lshr i32 %4604, 8
  %4616 = and i32 %4615, 255
  %4617 = uitofp i32 %4616 to float
  %4618 = lshr i32 %4604, 16
  %4619 = and i32 %4618, 255
  %4620 = uitofp i32 %4619 to float
  %4621 = fmul fast float %4620, 0x3F70101000000000
  %4622 = fmul fast float %4609, %4614
  %4623 = fadd fast float %4622, %4617
  %4624 = fmul fast float %4623, 0x3F70101000000000
  %4625 = fadd fast float %4610, -5.000000e-01
  %4626 = fadd fast float %4612, -5.000000e-01
  %4627 = fmul fast float %4625, %4621
  %4628 = fmul fast float %4626, %4621
  %4629 = fadd fast float %4627, 5.000000e-01
  %4630 = fadd fast float %4628, 5.000000e-01
  %4631 = fmul fast float %4629, 2.000000e+00
  %4632 = fadd fast float %4631, -1.000000e+00
  %4633 = fmul fast float %4630, 2.000000e+00
  %4634 = fadd fast float %4633, -1.000000e+00
  %4635 = fadd fast float %4632, %4634
  %4636 = fmul fast float %4635, 5.000000e-01
  %4637 = fsub fast float %4632, %4634
  %4638 = fmul fast float %4637, 5.000000e-01
  %4639 = call float @dx.op.unary.f32(i32 6, float %4636)  ; FAbs(value)
  %4640 = fsub fast float 1.000000e+00, %4639
  %4641 = call float @dx.op.unary.f32(i32 6, float %4638)  ; FAbs(value)
  %4642 = fsub fast float %4640, %4641
  %4643 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4638, float %4642, float %4636, float %4638, float %4642)  ; Dot3(ax,ay,az,bx,by,bz)
  %4644 = call float @dx.op.unary.f32(i32 25, float %4643)  ; Rsqrt(value)
  %4645 = fmul fast float %4636, %4644
  %4646 = fmul fast float %4638, %4644
  %4647 = select i1 %4474, i32 %4464, i32 %4465
  %4648 = select i1 %4472, i32 %4463, i32 %4647
  %4649 = sitofp i32 %4648 to float
  %4650 = fmul fast float %4642, %4649
  %4651 = fmul fast float %4650, %4644
  %4652 = select i1 %4474, float %4651, float %4646
  %4653 = select i1 %4474, float %4646, float %4651
  %4654 = select i1 %4472, float %4651, float %4645
  %4655 = select i1 %4472, float %4646, float %4652
  %4656 = select i1 %4472, float %4645, float %4653
  %4657 = fsub fast float %4591, %4415
  %4658 = fsub fast float %4592, %4416
  %4659 = fsub fast float %4593, %4417
  %4660 = fmul fast float %4657, %4563
  %4661 = fmul fast float %4658, %4563
  %4662 = fmul fast float %4659, %4563
  %4663 = fadd fast float %4660, %4415
  %4664 = fadd fast float %4661, %4416
  %4665 = fadd fast float %4662, %4417
  %4666 = fsub fast float %4600, %4418
  %4667 = fsub fast float %4601, %4419
  %4668 = fsub fast float %4602, %4420
  %4669 = fmul fast float %4666, %4563
  %4670 = fmul fast float %4667, %4563
  %4671 = fmul fast float %4668, %4563
  %4672 = fadd fast float %4669, %4418
  %4673 = fadd fast float %4670, %4419
  %4674 = fadd fast float %4671, %4420
  %4675 = fadd fast float %4654, %4421
  %4676 = fadd fast float %4655, %4422
  %4677 = fadd fast float %4656, %4423
  %4678 = call float @dx.op.dot3.f32(i32 55, float %4675, float %4676, float %4677, float %4675, float %4676, float %4677)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = call float @dx.op.unary.f32(i32 25, float %4678)  ; Rsqrt(value)
  %4680 = fmul fast float %4675, %4679
  %4681 = fmul fast float %4676, %4679
  %4682 = fmul fast float %4677, %4679
  %4683 = fsub fast float %4680, %4421
  %4684 = fsub fast float %4681, %4422
  %4685 = fsub fast float %4682, %4423
  %4686 = fmul fast float %4683, %4563
  %4687 = fmul fast float %4684, %4563
  %4688 = fmul fast float %4685, %4563
  %4689 = fadd fast float %4686, %4421
  %4690 = fadd fast float %4687, %4422
  %4691 = fadd fast float %4688, %4423
  %4692 = call float @dx.op.binary.f32(i32 36, float %4425, float %4611)  ; FMin(a,b)
  %4693 = fsub fast float %4692, %4425
  %4694 = fmul fast float %4693, %4563
  %4695 = fadd fast float %4694, %4425
  %4696 = fsub fast float %4624, %4424
  %4697 = fmul fast float %4696, %4563
  %4698 = fadd fast float %4697, %4424
  br label %4699

; <label>:4699                                    ; preds = %4561, %4523, %4414, %4130
  %4700 = phi float [ %4663, %4561 ], [ %4415, %4523 ], [ %4415, %4414 ], [ %3739, %4130 ]
  %4701 = phi float [ %4664, %4561 ], [ %4416, %4523 ], [ %4416, %4414 ], [ %3740, %4130 ]
  %4702 = phi float [ %4665, %4561 ], [ %4417, %4523 ], [ %4417, %4414 ], [ %3741, %4130 ]
  %4703 = phi float [ %4672, %4561 ], [ %4418, %4523 ], [ %4418, %4414 ], [ %3724, %4130 ]
  %4704 = phi float [ %4673, %4561 ], [ %4419, %4523 ], [ %4419, %4414 ], [ %3725, %4130 ]
  %4705 = phi float [ %4674, %4561 ], [ %4420, %4523 ], [ %4420, %4414 ], [ %3726, %4130 ]
  %4706 = phi float [ %4689, %4561 ], [ %4421, %4523 ], [ %4421, %4414 ], [ %3688, %4130 ]
  %4707 = phi float [ %4690, %4561 ], [ %4422, %4523 ], [ %4422, %4414 ], [ %3689, %4130 ]
  %4708 = phi float [ %4691, %4561 ], [ %4423, %4523 ], [ %4423, %4414 ], [ %3690, %4130 ]
  %4709 = phi float [ %4698, %4561 ], [ %4424, %4523 ], [ %4424, %4414 ], [ %3727, %4130 ]
  %4710 = phi float [ %4695, %4561 ], [ %4425, %4523 ], [ %4425, %4414 ], [ %3700, %4130 ]
  %4711 = fcmp fast une float %4134, 0.000000e+00
  %4712 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %4713 = call float @dx.op.unary.f32(i32 25, float %4712)  ; Rsqrt(value)
  br i1 %4711, label %4721, label %4714

; <label>:4714                                    ; preds = %4699
  %4715 = fmul fast float %4713, %166
  %4716 = fmul fast float %4713, %167
  %4717 = fmul fast float %4713, %168
  %4718 = fsub fast float -0.000000e+00, %4715
  %4719 = fsub fast float -0.000000e+00, %4716
  %4720 = fsub fast float -0.000000e+00, %4717
  br label %4888

; <label>:4721                                    ; preds = %4699
  %4722 = fmul fast float %166, %4713
  %4723 = fsub fast float -0.000000e+00, %4722
  %4724 = fmul fast float %167, %4713
  %4725 = fsub fast float -0.000000e+00, %4724
  %4726 = fmul fast float %168, %4713
  %4727 = fsub fast float -0.000000e+00, %4726
  %4728 = call float @dx.op.dot3.f32(i32 55, float %4723, float %4725, float %4727, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = fmul fast float %4134, 2.500000e+00
  %4730 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4731 = fmul fast float %4134, 0x4013FFFFE0000000
  %4732 = fadd fast float %4731, 0xBFFFFFFFE0000000
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %4134, 0x4004000020000000
  %4735 = fadd fast float %4734, 0xBFF8000040000000
  %4736 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4737 = fmul fast float %3706, 1.000000e+01
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = fmul fast float %4738, 2.000000e+00
  %4740 = fsub fast float 3.000000e+00, %4739
  %4741 = fmul fast float %4738, %4738
  %4742 = fmul fast float %4741, %4740
  %4743 = fsub fast float 1.000000e+00, %4742
  %4744 = fsub fast float 0x3FE3333340000000, %4709
  %4745 = fmul fast float %4744, 0x400AAAAAA0000000
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = fmul fast float %4743, %4746
  %4748 = fmul fast float %4700, 0x3FEA2B8620000000
  %4749 = fmul fast float %4701, 0x3FEA2B8620000000
  %4750 = fmul fast float %4702, 0x3FEA2B8620000000
  %4751 = fadd fast float %4748, 0x3FC81DFBA0000000
  %4752 = fmul fast float %4751, %4700
  %4753 = fadd fast float %4752, 0x3F910E6020000000
  %4754 = fadd fast float %4749, 0x3FC81DFBA0000000
  %4755 = fmul fast float %4754, %4701
  %4756 = fadd fast float %4755, 0x3F910E6020000000
  %4757 = fadd fast float %4750, 0x3FC81DFBA0000000
  %4758 = fmul fast float %4757, %4702
  %4759 = fadd fast float %4758, 0x3F910E6020000000
  %4760 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4761 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4762 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4763 = fsub fast float %4760, %4700
  %4764 = fsub fast float %4761, %4701
  %4765 = fsub fast float %4762, %4702
  %4766 = fmul fast float %4763, %4730
  %4767 = fmul fast float %4766, %4747
  %4768 = fmul fast float %4764, %4730
  %4769 = fmul fast float %4768, %4747
  %4770 = fmul fast float %4765, %4730
  %4771 = fmul fast float %4770, %4747
  %4772 = fadd fast float %4767, %4700
  %4773 = fadd fast float %4769, %4701
  %4774 = fadd fast float %4771, %4702
  %4775 = fmul fast float %4710, %4710
  %4776 = fmul fast float %4775, %4775
  %4777 = fadd fast float %4733, 1.000000e+00
  %4778 = fsub fast float %4777, %4747
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = call float @dx.op.dot3.f32(i32 55, float %92, float %94, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4782 = fsub fast float 1.000000e+00, %4776
  %4783 = call float @dx.op.binary.f32(i32 36, float %4779, float %4782)  ; FMin(a,b)
  %4784 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4785 = call float @dx.op.binary.f32(i32 35, float %4783, float %4784)  ; FMax(a,b)
  %4786 = fadd fast float %4781, 0xBFE4CCCCC0000000
  %4787 = fmul fast float %4786, 0x4006DB6DA0000000
  %4788 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4789 = fmul fast float %4788, 2.000000e+00
  %4790 = fsub fast float 3.000000e+00, %4789
  %4791 = bitcast float %4703 to i32
  %4792 = ashr i32 %4791, 1
  %4793 = add nsw i32 %4792, 532487669
  %4794 = bitcast i32 %4793 to float
  %4795 = fsub fast float 1.000000e+00, %4794
  %4796 = bitcast float %4795 to i32
  %4797 = sub nsw i32 2129859010, %4796
  %4798 = bitcast i32 %4797 to float
  %4799 = fmul fast float %4798, 2.000000e+00
  %4800 = bitcast float %4704 to i32
  %4801 = ashr i32 %4800, 1
  %4802 = add nsw i32 %4801, 532487669
  %4803 = bitcast i32 %4802 to float
  %4804 = fsub fast float 1.000000e+00, %4803
  %4805 = bitcast float %4804 to i32
  %4806 = sub nsw i32 2129859010, %4805
  %4807 = bitcast i32 %4806 to float
  %4808 = fmul fast float %4807, 2.000000e+00
  %4809 = bitcast float %4705 to i32
  %4810 = ashr i32 %4809, 1
  %4811 = add nsw i32 %4810, 532487669
  %4812 = bitcast i32 %4811 to float
  %4813 = fsub fast float 1.000000e+00, %4812
  %4814 = bitcast float %4813 to i32
  %4815 = sub nsw i32 2129859010, %4814
  %4816 = bitcast i32 %4815 to float
  %4817 = fmul fast float %4816, 2.000000e+00
  %4818 = fsub fast float 0x4002A9FBE0000000, %4799
  %4819 = fadd fast float %4799, 0x3FD54FDF00000000
  %4820 = bitcast float %4819 to i32
  %4821 = sub nsw i32 2129859010, %4820
  %4822 = bitcast i32 %4821 to float
  %4823 = fmul fast float %4822, %4818
  %4824 = fmul fast float %4823, %4823
  %4825 = fsub fast float 0x4002A9FBE0000000, %4808
  %4826 = fadd fast float %4808, 0x3FD54FDF00000000
  %4827 = bitcast float %4826 to i32
  %4828 = sub nsw i32 2129859010, %4827
  %4829 = bitcast i32 %4828 to float
  %4830 = fmul fast float %4829, %4825
  %4831 = fmul fast float %4830, %4830
  %4832 = fsub fast float 0x4002A9FBE0000000, %4817
  %4833 = fadd fast float %4817, 0x3FD54FDF00000000
  %4834 = bitcast float %4833 to i32
  %4835 = sub nsw i32 2129859010, %4834
  %4836 = bitcast i32 %4835 to float
  %4837 = fmul fast float %4836, %4832
  %4838 = fmul fast float %4837, %4837
  %4839 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4824)  ; FMax(a,b)
  %4840 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4831)  ; FMax(a,b)
  %4841 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4838)  ; FMax(a,b)
  %4842 = fsub fast float 1.000000e+00, %4728
  %4843 = fadd fast float %4842, %4743
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = fsub fast float 1.000000e+00, %4115
  %4846 = fmul fast float %4785, %4845
  %4847 = fmul fast float %4788, %4788
  %4848 = fmul fast float %4847, %4846
  %4849 = fmul fast float %4848, %4790
  %4850 = fmul fast float %4845, 0xBFE99999A0000000
  %4851 = fmul fast float %4850, %4730
  %4852 = fmul fast float %4851, %4747
  %4853 = fadd fast float %4852, 1.000000e+00
  %4854 = fadd fast float %4709, -1.000000e+00
  %4855 = fmul fast float %4853, %4854
  %4856 = fadd fast float %4855, 1.000000e+00
  %4857 = fsub fast float %4839, %4703
  %4858 = fsub fast float %4840, %4704
  %4859 = fsub fast float %4841, %4705
  %4860 = fmul fast float %4849, %4857
  %4861 = fmul fast float %4849, %4858
  %4862 = fmul fast float %4849, %4859
  %4863 = fadd fast float %4860, %4703
  %4864 = fadd fast float %4861, %4704
  %4865 = fadd fast float %4862, %4705
  %4866 = fsub fast float %92, %4706
  %4867 = fsub fast float %94, %4707
  %4868 = fsub fast float %96, %4708
  %4869 = fmul fast float %4849, %4866
  %4870 = fmul fast float %4849, %4867
  %4871 = fmul fast float %4849, %4868
  %4872 = fadd fast float %4869, %4706
  %4873 = fadd fast float %4870, %4707
  %4874 = fadd fast float %4871, %4708
  %4875 = fmul fast float %4849, %4844
  %4876 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4877 = fsub fast float 1.000000e+00, %4876
  %4878 = fmul fast float %4875, %4877
  %4879 = fadd fast float %4878, %4876
  %4880 = fsub fast float 1.000000e+00, %4710
  %4881 = fmul fast float %4849, %4880
  %4882 = fadd fast float %4881, %4710
  %4883 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4872, float %4873, float %4874)  ; Dot3(ax,ay,az,bx,by,bz)
  %4884 = call float @dx.op.unary.f32(i32 25, float %4883)  ; Rsqrt(value)
  %4885 = fmul fast float %4872, %4884
  %4886 = fmul fast float %4873, %4884
  %4887 = fmul fast float %4874, %4884
  br label %4888

; <label>:4888                                    ; preds = %4721, %4714
  %4889 = phi float [ %4720, %4714 ], [ %4727, %4721 ]
  %4890 = phi float [ %4719, %4714 ], [ %4725, %4721 ]
  %4891 = phi float [ %4718, %4714 ], [ %4723, %4721 ]
  %4892 = phi float [ %4717, %4714 ], [ %4726, %4721 ]
  %4893 = phi float [ %4716, %4714 ], [ %4724, %4721 ]
  %4894 = phi float [ %4715, %4714 ], [ %4722, %4721 ]
  %4895 = phi float [ %4700, %4714 ], [ %4772, %4721 ]
  %4896 = phi float [ %4701, %4714 ], [ %4773, %4721 ]
  %4897 = phi float [ %4702, %4714 ], [ %4774, %4721 ]
  %4898 = phi float [ %4703, %4714 ], [ %4863, %4721 ]
  %4899 = phi float [ %4704, %4714 ], [ %4864, %4721 ]
  %4900 = phi float [ %4705, %4714 ], [ %4865, %4721 ]
  %4901 = phi float [ %4706, %4714 ], [ %4885, %4721 ]
  %4902 = phi float [ %4707, %4714 ], [ %4886, %4721 ]
  %4903 = phi float [ %4708, %4714 ], [ %4887, %4721 ]
  %4904 = phi float [ %4709, %4714 ], [ %4879, %4721 ]
  %4905 = phi float [ %4710, %4714 ], [ %4882, %4721 ]
  %4906 = select i1 %205, float 0.000000e+00, float %4900
  %4907 = call float @dx.op.dot3.f32(i32 55, float %4901, float %4902, float %4903, float %4891, float %4890, float %4889)  ; Dot3(ax,ay,az,bx,by,bz)
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4893, float %4892, float %4901, float %4902, float %4903)  ; Dot3(ax,ay,az,bx,by,bz)
  %4910 = fmul fast float %4909, 2.000000e+00
  %4911 = fmul fast float %4910, %4901
  %4912 = fmul fast float %4910, %4902
  %4913 = fmul fast float %4910, %4903
  %4914 = fsub fast float %4894, %4911
  %4915 = fsub fast float %4893, %4912
  %4916 = fsub fast float %4892, %4913
  %4917 = call float @dx.op.binary.f32(i32 36, float %4905, float 1.000000e+00)  ; FMin(a,b)
  %4918 = fsub fast float 1.000000e+00, %4905
  %4919 = bitcast float %4918 to i32
  %4920 = sub nsw i32 2129859010, %4919
  %4921 = bitcast i32 %4920 to float
  %4922 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %4923 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %4924 = fcmp fast oeq float %4923, 0.000000e+00
  %4925 = fcmp fast oeq float %4922, 0.000000e+00
  %4926 = or i1 %4925, %4924
  br i1 %4926, label %4956, label %4927

; <label>:4927                                    ; preds = %4888
  %4928 = fsub fast float -0.000000e+00, %63
  %4929 = fsub fast float -0.000000e+00, %61
  %4930 = call float @dx.op.unary.f32(i32 24, float %4923)  ; Sqrt(value)
  %4931 = fdiv fast float %4930, %4922
  %4932 = fcmp fast ogt float %4931, 0x3FFB6F8900000000
  %4933 = select i1 %4932, float 0x3FFB6F8900000000, float %4931
  %4934 = fmul fast float %4933, 0x3FE8A23460000000
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = call float @dx.op.binary.f32(i32 35, float %4933, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4937 = fmul fast float %4935, %4922
  %4938 = fmul fast float %4936, 0x3FF279A740000000
  %4939 = fadd fast float %4938, -1.000000e+00
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4928, float %4929, float %62, float %4928, float %4929, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = call float @dx.op.unary.f32(i32 25, float %4940)  ; Rsqrt(value)
  %4942 = fmul fast float %4941, %4928
  %4943 = fmul fast float %4941, %4929
  %4944 = fmul fast float %4941, %62
  %4945 = fmul fast float %4939, %4939
  %4946 = fsub fast float 1.000000e+00, %4945
  %4947 = fmul fast float %4936, 0x40005F8BE0000000
  %4948 = fsub fast float 0x400C5BF8A0000000, %4947
  %4949 = fdiv fast float %4937, %4948
  %4950 = fmul fast float %4949, 0x3FEE31C3C0000000
  %4951 = fmul fast float %4950, %4946
  %4952 = fmul fast float %4936, 0x3FDACB7480000000
  %4953 = fadd fast float %4952, 0xBFD7347680000000
  %4954 = fmul fast float %4953, %4949
  %4955 = fmul fast float %4954, %4946
  br label %4956

; <label>:4956                                    ; preds = %4927, %4888
  %4957 = phi float [ %4942, %4927 ], [ 0.000000e+00, %4888 ]
  %4958 = phi float [ %4943, %4927 ], [ 0.000000e+00, %4888 ]
  %4959 = phi float [ %4944, %4927 ], [ 0.000000e+00, %4888 ]
  %4960 = phi float [ %4951, %4927 ], [ 0.000000e+00, %4888 ]
  %4961 = phi float [ %4955, %4927 ], [ 0.000000e+00, %4888 ]
  %4962 = call float @dx.op.dot3.f32(i32 55, float %4957, float %4958, float %4959, float %4901, float %4902, float %4903)  ; Dot3(ax,ay,az,bx,by,bz)
  %4963 = fmul fast float %4962, %4962
  %4964 = fmul fast float %4963, 0x3FEE471020000000
  %4965 = fadd fast float %4964, 0xBFD42F6020000000
  %4966 = fmul fast float %4922, 0x3FD20DD760000000
  %4967 = fmul fast float %4965, %4961
  %4968 = fmul fast float %4960, 0x3FDF454380000000
  %4969 = fmul fast float %4968, %4962
  %4970 = fadd fast float %4969, %4966
  %4971 = fadd fast float %4970, %4967
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4957, float %4958, float %4959, float %4914, float %4915, float %4916)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = fmul fast float %4972, 0x3FDF454380000000
  %4974 = fmul fast float %4972, %4972
  %4975 = fmul fast float %4974, 0x3FEE471020000000
  %4976 = fadd fast float %4975, 0xBFD42F6020000000
  %4977 = call float @dx.op.dot3.f32(i32 55, float %4922, float %4960, float %4961, float 0x3FD20DD760000000, float %4973, float %4976)  ; Dot3(ax,ay,az,bx,by,bz)
  %4978 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %4979 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %4980 = fcmp fast oeq float %4979, 0.000000e+00
  %4981 = fcmp fast oeq float %4978, 0.000000e+00
  %4982 = or i1 %4981, %4980
  br i1 %4982, label %5012, label %4983

; <label>:4983                                    ; preds = %4956
  %4984 = fsub fast float -0.000000e+00, %59
  %4985 = fsub fast float -0.000000e+00, %57
  %4986 = call float @dx.op.unary.f32(i32 24, float %4979)  ; Sqrt(value)
  %4987 = fdiv fast float %4986, %4978
  %4988 = fcmp fast ogt float %4987, 0x3FFB6F8900000000
  %4989 = select i1 %4988, float 0x3FFB6F8900000000, float %4987
  %4990 = fmul fast float %4989, 0x3FE8A23460000000
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = call float @dx.op.binary.f32(i32 35, float %4989, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4993 = fmul fast float %4991, %4978
  %4994 = fmul fast float %4992, 0x3FF279A740000000
  %4995 = fadd fast float %4994, -1.000000e+00
  %4996 = call float @dx.op.dot3.f32(i32 55, float %4984, float %4985, float %58, float %4984, float %4985, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %4997 = call float @dx.op.unary.f32(i32 25, float %4996)  ; Rsqrt(value)
  %4998 = fmul fast float %4997, %4984
  %4999 = fmul fast float %4997, %4985
  %5000 = fmul fast float %4997, %58
  %5001 = fmul fast float %4995, %4995
  %5002 = fsub fast float 1.000000e+00, %5001
  %5003 = fmul fast float %4992, 0x40005F8BE0000000
  %5004 = fsub fast float 0x400C5BF8A0000000, %5003
  %5005 = fdiv fast float %4993, %5004
  %5006 = fmul fast float %5005, 0x3FEE31C3C0000000
  %5007 = fmul fast float %5006, %5002
  %5008 = fmul fast float %4992, 0x3FDACB7480000000
  %5009 = fadd fast float %5008, 0xBFD7347680000000
  %5010 = fmul fast float %5009, %5005
  %5011 = fmul fast float %5010, %5002
  br label %5012

; <label>:5012                                    ; preds = %4983, %4956
  %5013 = phi float [ %4998, %4983 ], [ 0.000000e+00, %4956 ]
  %5014 = phi float [ %4999, %4983 ], [ 0.000000e+00, %4956 ]
  %5015 = phi float [ %5000, %4983 ], [ 0.000000e+00, %4956 ]
  %5016 = phi float [ %5007, %4983 ], [ 0.000000e+00, %4956 ]
  %5017 = phi float [ %5011, %4983 ], [ 0.000000e+00, %4956 ]
  %5018 = call float @dx.op.dot3.f32(i32 55, float %5013, float %5014, float %5015, float %4901, float %4902, float %4903)  ; Dot3(ax,ay,az,bx,by,bz)
  %5019 = fmul fast float %5018, %5018
  %5020 = fmul fast float %5019, 0x3FEE471020000000
  %5021 = fadd fast float %5020, 0xBFD42F6020000000
  %5022 = fmul fast float %4978, 0x3FD20DD760000000
  %5023 = fmul fast float %5021, %5017
  %5024 = fmul fast float %5016, 0x3FDF454380000000
  %5025 = fmul fast float %5024, %5018
  %5026 = fadd fast float %5025, %5022
  %5027 = fadd fast float %5026, %5023
  %5028 = call float @dx.op.dot3.f32(i32 55, float %5013, float %5014, float %5015, float %4914, float %4915, float %4916)  ; Dot3(ax,ay,az,bx,by,bz)
  %5029 = fmul fast float %5028, 0x3FDF454380000000
  %5030 = fmul fast float %5028, %5028
  %5031 = fmul fast float %5030, 0x3FEE471020000000
  %5032 = fadd fast float %5031, 0xBFD42F6020000000
  %5033 = call float @dx.op.dot3.f32(i32 55, float %4978, float %5016, float %5017, float 0x3FD20DD760000000, float %5029, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5034 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5035 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = fcmp fast oeq float %5035, 0.000000e+00
  %5037 = fcmp fast oeq float %5034, 0.000000e+00
  %5038 = or i1 %5037, %5036
  br i1 %5038, label %5068, label %5039

; <label>:5039                                    ; preds = %5012
  %5040 = fsub fast float -0.000000e+00, %55
  %5041 = fsub fast float -0.000000e+00, %53
  %5042 = call float @dx.op.unary.f32(i32 24, float %5035)  ; Sqrt(value)
  %5043 = fdiv fast float %5042, %5034
  %5044 = fcmp fast ogt float %5043, 0x3FFB6F8900000000
  %5045 = select i1 %5044, float 0x3FFB6F8900000000, float %5043
  %5046 = fmul fast float %5045, 0x3FE8A23460000000
  %5047 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5048 = call float @dx.op.binary.f32(i32 35, float %5045, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5049 = fmul fast float %5047, %5034
  %5050 = fmul fast float %5048, 0x3FF279A740000000
  %5051 = fadd fast float %5050, -1.000000e+00
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5041, float %54, float %5040, float %5041, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = call float @dx.op.unary.f32(i32 25, float %5052)  ; Rsqrt(value)
  %5054 = fmul fast float %5053, %5040
  %5055 = fmul fast float %5053, %5041
  %5056 = fmul fast float %5053, %54
  %5057 = fmul fast float %5051, %5051
  %5058 = fsub fast float 1.000000e+00, %5057
  %5059 = fmul fast float %5048, 0x40005F8BE0000000
  %5060 = fsub fast float 0x400C5BF8A0000000, %5059
  %5061 = fdiv fast float %5049, %5060
  %5062 = fmul fast float %5061, 0x3FEE31C3C0000000
  %5063 = fmul fast float %5062, %5058
  %5064 = fmul fast float %5048, 0x3FDACB7480000000
  %5065 = fadd fast float %5064, 0xBFD7347680000000
  %5066 = fmul fast float %5065, %5061
  %5067 = fmul fast float %5066, %5058
  br label %5068

; <label>:5068                                    ; preds = %5039, %5012
  %5069 = phi float [ %5054, %5039 ], [ 0.000000e+00, %5012 ]
  %5070 = phi float [ %5055, %5039 ], [ 0.000000e+00, %5012 ]
  %5071 = phi float [ %5056, %5039 ], [ 0.000000e+00, %5012 ]
  %5072 = phi float [ %5063, %5039 ], [ 0.000000e+00, %5012 ]
  %5073 = phi float [ %5067, %5039 ], [ 0.000000e+00, %5012 ]
  %5074 = call float @dx.op.dot3.f32(i32 55, float %5069, float %5070, float %5071, float %4901, float %4902, float %4903)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = fmul fast float %5074, %5074
  %5076 = fmul fast float %5075, 0x3FEE471020000000
  %5077 = fadd fast float %5076, 0xBFD42F6020000000
  %5078 = fmul fast float %5034, 0x3FD20DD760000000
  %5079 = fmul fast float %5077, %5073
  %5080 = fmul fast float %5072, 0x3FDF454380000000
  %5081 = fmul fast float %5080, %5074
  %5082 = fadd fast float %5081, %5078
  %5083 = fadd fast float %5082, %5079
  %5084 = call float @dx.op.dot3.f32(i32 55, float %5069, float %5070, float %5071, float %4914, float %4915, float %4916)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = fmul fast float %5084, 0x3FDF454380000000
  %5086 = fmul fast float %5084, %5084
  %5087 = fmul fast float %5086, 0x3FEE471020000000
  %5088 = fadd fast float %5087, 0xBFD42F6020000000
  %5089 = call float @dx.op.dot3.f32(i32 55, float %5034, float %5072, float %5073, float 0x3FD20DD760000000, float %5085, float %5088)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = call float @dx.op.binary.f32(i32 35, float %4971, float 0.000000e+00)  ; FMax(a,b)
  %5091 = call float @dx.op.binary.f32(i32 35, float %5027, float 0.000000e+00)  ; FMax(a,b)
  %5092 = call float @dx.op.binary.f32(i32 35, float %5083, float 0.000000e+00)  ; FMax(a,b)
  %5093 = call float @dx.op.binary.f32(i32 35, float %4977, float 0.000000e+00)  ; FMax(a,b)
  %5094 = call float @dx.op.binary.f32(i32 35, float %5033, float 0.000000e+00)  ; FMax(a,b)
  %5095 = call float @dx.op.binary.f32(i32 35, float %5089, float 0.000000e+00)  ; FMax(a,b)
  %5096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.f32 %5096, 0
  %5098 = call float @dx.op.binary.f32(i32 36, float %4895, float %5097)  ; FMin(a,b)
  %5099 = fsub fast float 1.000000e+00, %4917
  %5100 = fmul fast float %5098, %5099
  %5101 = fsub fast float 1.000000e+00, %5100
  %5102 = bitcast float %5101 to i32
  %5103 = sub nsw i32 2129859010, %5102
  %5104 = bitcast i32 %5103 to float
  %5105 = call float @dx.op.binary.f32(i32 36, float %4896, float %5097)  ; FMin(a,b)
  %5106 = fmul fast float %5105, %5099
  %5107 = fsub fast float 1.000000e+00, %5106
  %5108 = bitcast float %5107 to i32
  %5109 = sub nsw i32 2129859010, %5108
  %5110 = bitcast i32 %5109 to float
  %5111 = call float @dx.op.binary.f32(i32 36, float %4897, float %5097)  ; FMin(a,b)
  %5112 = fmul fast float %5111, %5099
  %5113 = fsub fast float 1.000000e+00, %5112
  %5114 = bitcast float %5113 to i32
  %5115 = sub nsw i32 2129859010, %5114
  %5116 = bitcast i32 %5115 to float
  %5117 = fmul fast float %5090, %4917
  %5118 = fmul fast float %5117, %5104
  %5119 = fmul fast float %5091, %4917
  %5120 = fmul fast float %5119, %5110
  %5121 = fmul fast float %5092, %4917
  %5122 = fmul fast float %5121, %5116
  %5123 = call float @dx.op.binary.f32(i32 36, float %4898, float %5097)  ; FMin(a,b)
  %5124 = fmul fast float %5123, %5099
  %5125 = fsub fast float 1.000000e+00, %5124
  %5126 = bitcast float %5125 to i32
  %5127 = sub nsw i32 2129859010, %5126
  %5128 = bitcast i32 %5127 to float
  %5129 = call float @dx.op.binary.f32(i32 36, float %4899, float %5097)  ; FMin(a,b)
  %5130 = fmul fast float %5129, %5099
  %5131 = fsub fast float 1.000000e+00, %5130
  %5132 = bitcast float %5131 to i32
  %5133 = sub nsw i32 2129859010, %5132
  %5134 = bitcast i32 %5133 to float
  %5135 = call float @dx.op.binary.f32(i32 36, float %4906, float %5097)  ; FMin(a,b)
  %5136 = fmul fast float %5135, %5099
  %5137 = fsub fast float 1.000000e+00, %5136
  %5138 = bitcast float %5137 to i32
  %5139 = sub nsw i32 2129859010, %5138
  %5140 = bitcast i32 %5139 to float
  %5141 = fmul fast float %5093, %4917
  %5142 = fmul fast float %5141, %5128
  %5143 = fmul fast float %5094, %4917
  %5144 = fmul fast float %5143, %5134
  %5145 = fmul fast float %5095, %4917
  %5146 = fmul fast float %5145, %5140
  %5147 = call float @dx.op.dot3.f32(i32 55, float %5118, float %5120, float %5122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = select i1 %205, float 0.000000e+00, float %5118
  %5149 = select i1 %205, float %5147, float %5120
  %5150 = select i1 %205, float 0.000000e+00, float %5122
  %5151 = call float @dx.op.dot3.f32(i32 55, float %5142, float %5144, float %5146, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5152 = select i1 %205, float 0.000000e+00, float %5142
  %5153 = select i1 %205, float %5151, float %5144
  %5154 = select i1 %205, float 0.000000e+00, float %5146
  %5155 = fmul fast float %4908, 9.843750e-01
  %5156 = fmul fast float %4904, 9.843750e-01
  %5157 = fadd fast float %5155, 7.812500e-03
  %5158 = fadd fast float %5156, 7.812500e-03
  %5159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5157, float %5158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5160 = extractvalue %dx.types.ResRet.f32 %5159, 2
  %5161 = extractvalue %dx.types.ResRet.f32 %5159, 3
  %5162 = fmul fast float %5160, %4898
  %5163 = fmul fast float %5160, %4899
  %5164 = fmul fast float %5160, %4906
  %5165 = fadd fast float %5162, %5161
  %5166 = fadd fast float %5163, %5161
  %5167 = fadd fast float %5164, %5161
  %5168 = fcmp fast ogt float %3701, 0.000000e+00
  br i1 %5168, label %5169, label %5195

; <label>:5169                                    ; preds = %5068
  %5170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3701, float %4908, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5171 = extractvalue %dx.types.ResRet.f32 %5170, 0
  %5172 = extractvalue %dx.types.ResRet.f32 %5170, 1
  %5173 = extractvalue %dx.types.ResRet.f32 %5170, 2
  %5174 = fadd fast float %5171, -5.000000e-01
  %5175 = fadd fast float %5172, -5.000000e-01
  %5176 = fadd fast float %5173, -5.000000e-01
  %5177 = fsub fast float 1.000000e+00, %4898
  %5178 = fsub fast float 1.000000e+00, %4899
  %5179 = fsub fast float 1.000000e+00, %4906
  %5180 = fmul fast float %4898, 4.000000e+00
  %5181 = fmul fast float %5180, %5177
  %5182 = fmul fast float %5181, %5174
  %5183 = fmul fast float %4899, 4.000000e+00
  %5184 = fmul fast float %5183, %5178
  %5185 = fmul fast float %5184, %5175
  %5186 = fmul fast float %4906, 4.000000e+00
  %5187 = fmul fast float %5186, %5179
  %5188 = fmul fast float %5187, %5176
  %5189 = fadd fast float %5182, %5165
  %5190 = fadd fast float %5185, %5166
  %5191 = fadd fast float %5188, %5167
  %5192 = call float @dx.op.unary.f32(i32 7, float %5189)  ; Saturate(value)
  %5193 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5194 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  br label %5195

; <label>:5195                                    ; preds = %5169, %5068
  %5196 = phi float [ %5192, %5169 ], [ %5165, %5068 ]
  %5197 = phi float [ %5193, %5169 ], [ %5166, %5068 ]
  %5198 = phi float [ %5194, %5169 ], [ %5167, %5068 ]
  %5199 = call float @dx.op.binary.f32(i32 35, float %5197, float %5198)  ; FMax(a,b)
  %5200 = call float @dx.op.binary.f32(i32 35, float %5196, float %5199)  ; FMax(a,b)
  %5201 = fsub fast float 1.000000e+00, %5200
  %5202 = fmul fast float %5201, %5148
  %5203 = fmul fast float %5201, %5149
  %5204 = fmul fast float %5201, %5150
  %5205 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4896, float %4897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5206 = fcmp fast ogt float %5205, 0x3E7FF19E20000000
  %5207 = fdiv fast float 1.000000e+00, %5205
  %5208 = select i1 %5206, float %5207, float 0.000000e+00
  %5209 = fmul fast float %5208, %4895
  %5210 = fmul fast float %5208, %4896
  %5211 = fmul fast float %5208, %4897
  %5212 = fadd fast float %5209, -1.000000e+00
  %5213 = fadd fast float %5210, -1.000000e+00
  %5214 = fadd fast float %5211, -1.000000e+00
  %5215 = fmul fast float %5212, 5.000000e-01
  %5216 = fmul fast float %5213, 5.000000e-01
  %5217 = fmul fast float %5214, 5.000000e-01
  %5218 = fadd fast float %5215, 1.000000e+00
  %5219 = fadd fast float %5216, 1.000000e+00
  %5220 = fadd fast float %5217, 1.000000e+00
  %5221 = fmul fast float %5196, %5152
  %5222 = fmul fast float %5197, %5153
  %5223 = fmul fast float %5198, %5154
  %5224 = fsub fast float 1.000000e+00, %4908
  %5225 = bitcast float %5224 to i32
  %5226 = sitofp i32 %5225 to float
  %5227 = fmul fast float %5226, 5.000000e+00
  %5228 = fadd fast float %5227, 0xC1EFBF8940000000
  %5229 = fptosi float %5228 to i32
  %5230 = bitcast i32 %5229 to float
  %5231 = fmul fast float %5230, %3702
  %5232 = fmul fast float %5148, %5231
  %5233 = fmul fast float %5232, %5201
  %5234 = fmul fast float %5233, %5218
  %5235 = fmul fast float %5149, %5231
  %5236 = fmul fast float %5235, %5201
  %5237 = fmul fast float %5236, %5219
  %5238 = fmul fast float %5150, %5231
  %5239 = fmul fast float %5238, %5201
  %5240 = fmul fast float %5239, %5220
  %5241 = fmul fast float %5202, %3698
  %5242 = fmul fast float %5203, %3698
  %5243 = fmul fast float %5204, %3698
  %5244 = fadd fast float %5221, %3694
  %5245 = fadd fast float %5244, %5234
  %5246 = fmul fast float %5245, %3698
  %5247 = fadd fast float %5222, %3695
  %5248 = fadd fast float %5247, %5237
  %5249 = fmul fast float %5248, %3698
  %5250 = fadd fast float %5223, %3696
  %5251 = fadd fast float %5250, %5240
  %5252 = fmul fast float %5251, %3698
  %5253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5254 = extractvalue %dx.types.CBufRet.f32 %5253, 3
  %5255 = fcmp fast oeq float %5254, 0.000000e+00
  br i1 %5255, label %5483, label %5256

; <label>:5256                                    ; preds = %5195
  %5257 = extractvalue %dx.types.CBufRet.f32 %5253, 0
  %5258 = extractvalue %dx.types.CBufRet.f32 %5253, 1
  %5259 = extractvalue %dx.types.CBufRet.f32 %5253, 2
  %5260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5261 = extractvalue %dx.types.CBufRet.f32 %5260, 0
  %5262 = extractvalue %dx.types.CBufRet.f32 %5260, 1
  %5263 = extractvalue %dx.types.CBufRet.f32 %5260, 2
  %5264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.CBufRet.f32 %5264, 1
  %5267 = call float @dx.op.dot3.f32(i32 55, float %5261, float %5262, float %5263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = select i1 %205, float %5265, float %5261
  %5269 = select i1 %205, float %5267, float %5262
  %5270 = select i1 %205, float %5266, float %5263
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 1
  %5273 = fcmp fast une float %5272, 0.000000e+00
  br i1 %5273, label %5274, label %5291

; <label>:5274                                    ; preds = %5256
  %5275 = fptoui float %83 to i32
  %5276 = fptoui float %84 to i32
  %5277 = lshr i32 %5275, 4
  %5278 = lshr i32 %5276, 4
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  %5281 = fptoui float %5280 to i32
  %5282 = add i32 %5281, 15
  %5283 = lshr i32 %5282, 4
  %5284 = mul i32 %5283, %5278
  %5285 = add i32 %5284, %5277
  %5286 = shl i32 %5285, 3
  %5287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5286, i32 undef)  ; BufferLoad(srv,index,wot)
  %5288 = extractvalue %dx.types.ResRet.i32 %5287, 0
  %5289 = and i32 %5288, -268435456
  %5290 = icmp eq i32 %5289, -1342177280
  br i1 %5290, label %5301, label %5291

; <label>:5291                                    ; preds = %5274, %5256
  %5292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5292, 2
  %5294 = extractvalue %dx.types.CBufRet.f32 %5292, 3
  %5295 = fmul fast float %5293, %83
  %5296 = fmul fast float %5294, %84
  %5297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5295, float %5296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5298 = extractvalue %dx.types.ResRet.f32 %5297, 0
  %5299 = extractvalue %dx.types.ResRet.f32 %5297, 1
  %5300 = extractvalue %dx.types.ResRet.f32 %5297, 2
  br label %5301

; <label>:5301                                    ; preds = %5291, %5274
  %5302 = phi float [ %5298, %5291 ], [ 0.000000e+00, %5274 ]
  %5303 = phi float [ %5299, %5291 ], [ 0.000000e+00, %5274 ]
  %5304 = phi float [ %5300, %5291 ], [ 0.000000e+00, %5274 ]
  %5305 = call float @dx.op.binary.f32(i32 36, float %5303, float %5304)  ; FMin(a,b)
  %5306 = call float @dx.op.binary.f32(i32 36, float %5302, float %5305)  ; FMin(a,b)
  %5307 = fcmp fast ogt float %5306, 0.000000e+00
  br i1 %5307, label %5308, label %5483, !dx.controlflow.hints !76

; <label>:5308                                    ; preds = %5301
  %5309 = fmul fast float %5302, %5268
  %5310 = fmul fast float %5303, %5269
  %5311 = fmul fast float %5304, %5270
  %5312 = fsub fast float %5257, %4894
  %5313 = fsub fast float %5258, %4893
  %5314 = fsub fast float %5259, %4892
  %5315 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5314, float %5312, float %5313, float %5314)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = call float @dx.op.unary.f32(i32 25, float %5315)  ; Rsqrt(value)
  %5317 = fmul fast float %5316, %5312
  %5318 = fmul fast float %5316, %5313
  %5319 = fmul fast float %5316, %5314
  %5320 = call float @dx.op.dot3.f32(i32 55, float %5257, float %5258, float %5259, float %4901, float %4902, float %4903)  ; Dot3(ax,ay,az,bx,by,bz)
  %5321 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4890, float %4889, float %5317, float %5318, float %5319)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  %5323 = fmul fast float %5322, %5322
  %5324 = fmul fast float %5323, %4921
  %5325 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5326 = fmul fast float %5325, %5322
  %5327 = call float @dx.op.dot3.f32(i32 55, float %4901, float %4902, float %4903, float %5317, float %5318, float %5319)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = fmul fast float %5327, %5327
  %5329 = call float @dx.op.unary.f32(i32 6, float %5320)  ; FAbs(value)
  %5330 = fsub fast float 1.000000e+00, %4904
  %5331 = call float @dx.op.binary.f32(i32 35, float %5330, float 0x3F847AE140000000)  ; FMax(a,b)
  %5332 = fmul fast float %5331, %5331
  %5333 = fmul fast float %5332, %5332
  %5334 = fsub fast float 1.000000e+00, %5333
  %5335 = fmul fast float %4908, %4908
  %5336 = fmul fast float %5335, %5334
  %5337 = fadd fast float %5336, %5333
  %5338 = bitcast float %5337 to i32
  %5339 = ashr i32 %5338, 1
  %5340 = add nsw i32 %5339, 532487669
  %5341 = bitcast i32 %5340 to float
  %5342 = fadd fast float %5341, %4908
  %5343 = fmul fast float %5333, %5328
  %5344 = fsub fast float 1.000000e+00, %5328
  %5345 = fadd fast float %5344, %5343
  %5346 = fmul fast float %5329, %5329
  %5347 = fmul fast float %5346, %5334
  %5348 = fadd fast float %5347, %5333
  %5349 = bitcast float %5348 to i32
  %5350 = ashr i32 %5349, 1
  %5351 = add nsw i32 %5350, 532487669
  %5352 = bitcast i32 %5351 to float
  %5353 = fadd fast float %5352, %5329
  %5354 = fmul fast float %5345, %5345
  %5355 = fmul fast float %5354, %5342
  %5356 = fmul fast float %5355, %5353
  %5357 = fdiv fast float 0x3FF0A00000000000, %5356
  %5358 = fmul fast float %5357, %5333
  %5359 = call float @dx.op.unary.f32(i32 6, float %5321)  ; FAbs(value)
  %5360 = fsub fast float 1.000000e+00, %5359
  %5361 = bitcast float %5360 to i32
  %5362 = sitofp i32 %5361 to float
  %5363 = fmul fast float %5362, 5.000000e+00
  %5364 = fadd fast float %5363, 0xC1EFBF8940000000
  %5365 = fptosi float %5364 to i32
  %5366 = bitcast i32 %5365 to float
  %5367 = fsub fast float 1.000000e+00, %4898
  %5368 = fsub fast float 1.000000e+00, %4899
  %5369 = fsub fast float 1.000000e+00, %4906
  %5370 = fmul fast float %5366, %5367
  %5371 = fmul fast float %5366, %5368
  %5372 = fmul fast float %5366, %5369
  %5373 = fadd fast float %5370, %4898
  %5374 = fadd fast float %5371, %4899
  %5375 = fadd fast float %5372, %4906
  br i1 %5168, label %5376, label %5399

; <label>:5376                                    ; preds = %5308
  %5377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3701, float %5359, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.ResRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.ResRet.f32 %5377, 2
  %5381 = fadd fast float %5378, -5.000000e-01
  %5382 = fadd fast float %5379, -5.000000e-01
  %5383 = fadd fast float %5380, -5.000000e-01
  %5384 = fmul fast float %4898, 4.000000e+00
  %5385 = fmul fast float %5384, %5367
  %5386 = fmul fast float %5385, %5381
  %5387 = fmul fast float %4899, 4.000000e+00
  %5388 = fmul fast float %5387, %5368
  %5389 = fmul fast float %5388, %5382
  %5390 = fmul fast float %4906, 4.000000e+00
  %5391 = fmul fast float %5390, %5369
  %5392 = fmul fast float %5391, %5383
  %5393 = fadd fast float %5386, %5373
  %5394 = fadd fast float %5389, %5374
  %5395 = fadd fast float %5392, %5375
  %5396 = call float @dx.op.unary.f32(i32 7, float %5393)  ; Saturate(value)
  %5397 = call float @dx.op.unary.f32(i32 7, float %5394)  ; Saturate(value)
  %5398 = call float @dx.op.unary.f32(i32 7, float %5395)  ; Saturate(value)
  br label %5399

; <label>:5399                                    ; preds = %5376, %5308
  %5400 = phi float [ %5396, %5376 ], [ %5373, %5308 ]
  %5401 = phi float [ %5397, %5376 ], [ %5374, %5308 ]
  %5402 = phi float [ %5398, %5376 ], [ %5375, %5308 ]
  %5403 = fmul fast float %5320, 9.843750e-01
  %5404 = fadd fast float %5403, 7.812500e-03
  %5405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5404, float %5158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5406 = extractvalue %dx.types.ResRet.f32 %5405, 2
  %5407 = extractvalue %dx.types.ResRet.f32 %5405, 3
  %5408 = fmul fast float %5406, %4898
  %5409 = fmul fast float %5406, %4899
  %5410 = fmul fast float %5406, %4906
  %5411 = fadd fast float %5408, %5407
  %5412 = fadd fast float %5409, %5407
  %5413 = fadd fast float %5410, %5407
  br i1 %5168, label %5414, label %5437

; <label>:5414                                    ; preds = %5399
  %5415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3701, float %5320, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5416 = extractvalue %dx.types.ResRet.f32 %5415, 0
  %5417 = extractvalue %dx.types.ResRet.f32 %5415, 1
  %5418 = extractvalue %dx.types.ResRet.f32 %5415, 2
  %5419 = fadd fast float %5416, -5.000000e-01
  %5420 = fadd fast float %5417, -5.000000e-01
  %5421 = fadd fast float %5418, -5.000000e-01
  %5422 = fmul fast float %4898, 4.000000e+00
  %5423 = fmul fast float %5422, %5367
  %5424 = fmul fast float %5423, %5419
  %5425 = fmul fast float %4899, 4.000000e+00
  %5426 = fmul fast float %5425, %5368
  %5427 = fmul fast float %5426, %5420
  %5428 = fmul fast float %4906, 4.000000e+00
  %5429 = fmul fast float %5428, %5369
  %5430 = fmul fast float %5429, %5421
  %5431 = fadd fast float %5424, %5411
  %5432 = fadd fast float %5427, %5412
  %5433 = fadd fast float %5430, %5413
  %5434 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5435 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5436 = call float @dx.op.unary.f32(i32 7, float %5433)  ; Saturate(value)
  br label %5437

; <label>:5437                                    ; preds = %5414, %5399
  %5438 = phi float [ %5434, %5414 ], [ %5411, %5399 ]
  %5439 = phi float [ %5435, %5414 ], [ %5412, %5399 ]
  %5440 = phi float [ %5436, %5414 ], [ %5413, %5399 ]
  %5441 = call float @dx.op.binary.f32(i32 35, float %5439, float %5440)  ; FMax(a,b)
  %5442 = call float @dx.op.binary.f32(i32 35, float %5438, float %5441)  ; FMax(a,b)
  %5443 = fsub fast float 1.000000e+00, %5442
  %5444 = fmul fast float %5400, %5358
  %5445 = fmul fast float %5401, %5358
  %5446 = fmul fast float %5402, %5358
  %5447 = fsub fast float 1.000000e+00, %5321
  %5448 = bitcast float %5447 to i32
  %5449 = sitofp i32 %5448 to float
  %5450 = fmul fast float %5449, 5.000000e+00
  %5451 = fadd fast float %5450, 0xC1EFBF8940000000
  %5452 = fptosi float %5451 to i32
  %5453 = bitcast i32 %5452 to float
  %5454 = fmul fast float %5453, %3702
  %5455 = fmul fast float %5443, %5454
  %5456 = fmul fast float %5455, %5218
  %5457 = fmul fast float %5455, %5219
  %5458 = fmul fast float %5455, %5220
  %5459 = fadd fast float %5456, %5444
  %5460 = fadd fast float %5457, %5445
  %5461 = fadd fast float %5458, %5446
  %5462 = fmul fast float %5326, %5309
  %5463 = fmul fast float %5462, %5443
  %5464 = fmul fast float %5326, %5310
  %5465 = fmul fast float %5464, %5443
  %5466 = fmul fast float %5326, %5311
  %5467 = fmul fast float %5466, %5443
  %5468 = fmul fast float %5462, %5459
  %5469 = fmul fast float %5464, %5460
  %5470 = fmul fast float %5466, %5461
  %5471 = fadd fast float %5463, %5202
  %5472 = fmul fast float %5471, %3698
  %5473 = fadd fast float %5465, %5203
  %5474 = fmul fast float %5473, %3698
  %5475 = fadd fast float %5467, %5204
  %5476 = fmul fast float %5475, %3698
  %5477 = fadd fast float %5468, %5245
  %5478 = fmul fast float %5477, %3698
  %5479 = fadd fast float %5469, %5248
  %5480 = fmul fast float %5479, %3698
  %5481 = fadd fast float %5470, %5251
  %5482 = fmul fast float %5481, %3698
  br label %5483

; <label>:5483                                    ; preds = %5437, %5301, %5195
  %5484 = phi float [ %5246, %5195 ], [ %5246, %5301 ], [ %5478, %5437 ]
  %5485 = phi float [ %5249, %5195 ], [ %5249, %5301 ], [ %5480, %5437 ]
  %5486 = phi float [ %5252, %5195 ], [ %5252, %5301 ], [ %5482, %5437 ]
  %5487 = phi float [ %5241, %5195 ], [ %5241, %5301 ], [ %5472, %5437 ]
  %5488 = phi float [ %5242, %5195 ], [ %5242, %5301 ], [ %5474, %5437 ]
  %5489 = phi float [ %5243, %5195 ], [ %5243, %5301 ], [ %5476, %5437 ]
  %5490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5491 = extractvalue %dx.types.CBufRet.i32 %5490, 0
  %5492 = icmp eq i32 %5491, 0
  br i1 %5492, label %5927, label %5493

; <label>:5493                                    ; preds = %5483
  %5494 = fptoui float %83 to i32
  %5495 = fptoui float %84 to i32
  %5496 = lshr i32 %5494, 4
  %5497 = lshr i32 %5495, 4
  %5498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.i32 %5498, 0
  %5500 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5497, i32 %5499, i32 %5496)  ; UMad(a,b,c)
  %5501 = add nsw i32 %5491, -1
  %5502 = call i32 @dx.op.binary.i32(i32 37, i32 %5501, i32 0)  ; IMax(a,b)
  %5503 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %5504 = fptoui float %5503 to i32
  %5505 = lshr i32 %5504, 5
  %5506 = call i32 @dx.op.binary.i32(i32 40, i32 %5505, i32 8191)  ; UMin(a,b)
  %5507 = shl i32 %5506, 2
  %5508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5507, i32 undef)  ; BufferLoad(srv,index,wot)
  %5509 = extractvalue %dx.types.ResRet.i32 %5508, 0
  %5510 = lshr i32 %5509, 16
  %5511 = and i32 %5509, 65535
  %5512 = lshr i32 %5509, 21
  %5513 = lshr i32 %5511, 5
  %5514 = call i32 @dx.op.binary.i32(i32 40, i32 %5513, i32 %5502)  ; UMin(a,b)
  %5515 = icmp ugt i32 %5512, %5514
  br i1 %5515, label %5927, label %5516

; <label>:5516                                    ; preds = %5493
  br label %5517

; <label>:5517                                    ; preds = %5917, %5516
  %5518 = phi i32 [ %5924, %5917 ], [ %5512, %5516 ]
  %5519 = phi float [ %5918, %5917 ], [ %5484, %5516 ]
  %5520 = phi float [ %5919, %5917 ], [ %5485, %5516 ]
  %5521 = phi float [ %5920, %5917 ], [ %5486, %5516 ]
  %5522 = phi float [ %5921, %5917 ], [ %5487, %5516 ]
  %5523 = phi float [ %5922, %5917 ], [ %5488, %5516 ]
  %5524 = phi float [ %5923, %5917 ], [ %5489, %5516 ]
  %5525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.i32 %5525, 0
  %5527 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5500, i32 %5526, i32 %5518)  ; UMad(a,b,c)
  %5528 = shl i32 %5527, 2
  %5529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5528, i32 undef)  ; BufferLoad(srv,index,wot)
  %5530 = extractvalue %dx.types.ResRet.i32 %5529, 0
  %5531 = shl i32 %5518, 5
  %5532 = sub nsw i32 %5510, %5531
  %5533 = call i32 @dx.op.binary.i32(i32 37, i32 %5532, i32 0)  ; IMax(a,b)
  %5534 = call i32 @dx.op.binary.i32(i32 38, i32 %5533, i32 31)  ; IMin(a,b)
  %5535 = sub nsw i32 1, %5510
  %5536 = add nsw i32 %5535, %5511
  %5537 = call i32 @dx.op.binary.i32(i32 37, i32 %5536, i32 0)  ; IMax(a,b)
  %5538 = call i32 @dx.op.binary.i32(i32 38, i32 %5537, i32 32)  ; IMin(a,b)
  %5539 = and i32 %5538, 31
  %5540 = shl i32 -1, %5539
  %5541 = xor i32 %5540, -1
  %5542 = and i32 %5534, 31
  %5543 = shl i32 %5541, %5542
  %5544 = icmp eq i32 %5538, 32
  %5545 = select i1 %5544, i32 -1, i32 %5543
  %5546 = and i32 %5545, %5530
  %5547 = icmp eq i32 %5546, 0
  br i1 %5547, label %5917, label %5548

; <label>:5548                                    ; preds = %5517
  br label %5549

; <label>:5549                                    ; preds = %5629, %5548
  %5550 = phi i32 [ %5561, %5629 ], [ %5546, %5548 ]
  %5551 = phi float [ %5630, %5629 ], [ %5519, %5548 ]
  %5552 = phi float [ %5631, %5629 ], [ %5520, %5548 ]
  %5553 = phi float [ %5632, %5629 ], [ %5521, %5548 ]
  %5554 = phi float [ %5633, %5629 ], [ %5522, %5548 ]
  %5555 = phi float [ %5634, %5629 ], [ %5523, %5548 ]
  %5556 = phi float [ %5635, %5629 ], [ %5524, %5548 ]
  %5557 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5550)  ; FirstbitLo(value)
  %5558 = add i32 %5557, %5531
  %5559 = and i32 %5557, 31
  %5560 = shl i32 1, %5559
  %5561 = xor i32 %5560, %5550
  %5562 = mul i32 %5558, 112
  %5563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5562, i32 undef)  ; BufferLoad(srv,index,wot)
  %5564 = extractvalue %dx.types.ResRet.f32 %5563, 0
  %5565 = extractvalue %dx.types.ResRet.f32 %5563, 1
  %5566 = extractvalue %dx.types.ResRet.f32 %5563, 2
  %5567 = or i32 %5562, 12
  %5568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5567, i32 undef)  ; BufferLoad(srv,index,wot)
  %5569 = extractvalue %dx.types.ResRet.f32 %5568, 0
  %5570 = add i32 %5562, 44
  %5571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5570, i32 undef)  ; BufferLoad(srv,index,wot)
  %5572 = extractvalue %dx.types.ResRet.f32 %5571, 0
  %5573 = add i32 %5562, 48
  %5574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5573, i32 undef)  ; BufferLoad(srv,index,wot)
  %5575 = extractvalue %dx.types.ResRet.f32 %5574, 0
  %5576 = extractvalue %dx.types.ResRet.f32 %5574, 1
  %5577 = extractvalue %dx.types.ResRet.f32 %5574, 2
  %5578 = add i32 %5562, 80
  %5579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5578, i32 undef)  ; BufferLoad(srv,index,wot)
  %5580 = extractvalue %dx.types.ResRet.f32 %5579, 1
  %5581 = extractvalue %dx.types.ResRet.f32 %5579, 2
  %5582 = call float @dx.op.dot3.f32(i32 55, float %5564, float %5565, float %5566, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5583 = select i1 %205, float %5580, float %5564
  %5584 = select i1 %205, float %5582, float %5565
  %5585 = select i1 %205, float %5581, float %5566
  %5586 = fsub fast float %5575, %166
  %5587 = fsub fast float %5576, %167
  %5588 = fsub fast float %5577, %168
  %5589 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5587, float %5588, float %5586, float %5587, float %5588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = call float @dx.op.unary.f32(i32 24, float %5589)  ; Sqrt(value)
  %5591 = fdiv fast float 1.000000e+00, %5590
  %5592 = fmul fast float %5591, %5586
  %5593 = fmul fast float %5591, %5587
  %5594 = fmul fast float %5591, %5588
  %5595 = fadd fast float %5590, %5569
  %5596 = fdiv fast float 1.000000e+00, %5595
  %5597 = fmul float %5572, %5596
  %5598 = fmul float %5597, %5597
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = and i32 %5560, %5546
  %5601 = icmp eq i32 %5600, 0
  br i1 %5601, label %5624, label %5602, !dx.controlflow.hints !77

; <label>:5602                                    ; preds = %5549
  %5603 = lshr i32 %5494, 5
  %5604 = lshr i32 %5495, 5
  %5605 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5603, i32 %5604, i32 %5558, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5606 = extractvalue %dx.types.ResRet.i32 %5605, 0
  %5607 = and i32 %5606, 3
  %5608 = icmp eq i32 %5607, 0
  %5609 = select i1 %5608, float 1.000000e+00, float 0.000000e+00
  %5610 = icmp eq i32 %5607, 3
  br i1 %5610, label %5611, label %5624

; <label>:5611                                    ; preds = %5602
  %5612 = lshr i32 %5606, 10
  %5613 = and i32 %5612, 8160
  %5614 = and i32 %5495, 31
  %5615 = or i32 %5613, %5614
  %5616 = lshr i32 %5606, 1
  %5617 = and i32 %5616, 16352
  %5618 = and i32 %5494, 31
  %5619 = or i32 %5617, %5618
  %5620 = lshr i32 %5606, 23
  %5621 = and i32 %5620, 255
  %5622 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5619, i32 %5615, i32 %5621, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5623 = extractvalue %dx.types.ResRet.f32 %5622, 0
  br label %5624

; <label>:5624                                    ; preds = %5611, %5602, %5549
  %5625 = phi float [ %5623, %5611 ], [ %5609, %5602 ], [ 0.000000e+00, %5549 ]
  %5626 = call float @dx.op.binary.f32(i32 36, float %5625, float %5625)  ; FMin(a,b)
  %5627 = call float @dx.op.binary.f32(i32 36, float %5625, float %5626)  ; FMin(a,b)
  %5628 = fcmp fast ogt float %5627, 0.000000e+00
  br i1 %5628, label %5637, label %5629, !dx.controlflow.hints !78

; <label>:5629                                    ; preds = %5873, %5624
  %5630 = phi float [ %5551, %5624 ], [ %5913, %5873 ]
  %5631 = phi float [ %5552, %5624 ], [ %5914, %5873 ]
  %5632 = phi float [ %5553, %5624 ], [ %5915, %5873 ]
  %5633 = phi float [ %5554, %5624 ], [ %5907, %5873 ]
  %5634 = phi float [ %5555, %5624 ], [ %5908, %5873 ]
  %5635 = phi float [ %5556, %5624 ], [ %5909, %5873 ]
  %5636 = icmp eq i32 %5550, %5560
  br i1 %5636, label %5916, label %5549

; <label>:5637                                    ; preds = %5624
  %5638 = fmul fast float %5625, %5583
  %5639 = fmul fast float %5625, %5584
  %5640 = fmul fast float %5625, %5585
  %5641 = fsub fast float %5577, %4102
  %5642 = fcmp fast ogt float %5641, 0.000000e+00
  %5643 = fsub fast float %168, %4102
  %5644 = fcmp fast ogt float %5643, 0.000000e+00
  %5645 = xor i1 %5644, %5642
  %5646 = fsub fast float %4102, %5577
  %5647 = fmul fast float %5646, 2.000000e+00
  %5648 = fadd fast float %5647, %5577
  %5649 = select i1 %5645, float %5577, float %5648
  %5650 = fsub fast float %5649, %168
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5587, float %5650, float %5586, float %5587, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = call float @dx.op.unary.f32(i32 25, float %5651)  ; Rsqrt(value)
  %5653 = fmul fast float %5652, %5586
  %5654 = fmul fast float %5652, %5587
  %5655 = fmul fast float %5652, %5650
  %5656 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5657 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5653, float %5654, float %5655)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = fdiv fast float 1.000000e+00, %5657
  %5659 = fmul fast float %5658, %5656
  %5660 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5643, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5661 = fcmp fast ogt float %5660, 0.000000e+00
  %5662 = fcmp fast olt float %5660, 0.000000e+00
  %5663 = zext i1 %5661 to i32
  %5664 = zext i1 %5662 to i32
  %5665 = sub nsw i32 %5663, %5664
  %5666 = sitofp i32 %5665 to float
  %5667 = fsub fast float %5649, %4102
  %5668 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5587, float %5667, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5669 = fcmp fast ogt float %5668, 0.000000e+00
  %5670 = fcmp fast olt float %5668, 0.000000e+00
  %5671 = zext i1 %5669 to i32
  %5672 = zext i1 %5670 to i32
  %5673 = sub nsw i32 %5671, %5672
  %5674 = sitofp i32 %5673 to float
  %5675 = fcmp fast une float %5666, %5674
  br i1 %5675, label %5676, label %5686

; <label>:5676                                    ; preds = %5637
  %5677 = fmul fast float %5659, %5655
  %5678 = fmul fast float %5659, %5654
  %5679 = fmul fast float %5659, %5653
  %5680 = fmul fast float %5679, %5679
  %5681 = fmul fast float %5678, %5678
  %5682 = fadd fast float %5680, %5681
  %5683 = fmul fast float %5677, %5677
  %5684 = fadd fast float %5682, %5683
  %5685 = call float @dx.op.unary.f32(i32 24, float %5684)  ; Sqrt(value)
  br label %5698

; <label>:5686                                    ; preds = %5637
  %5687 = icmp slt i32 %5665, 0
  br i1 %5687, label %5688, label %5698

; <label>:5688                                    ; preds = %5686
  %5689 = fsub fast float %166, %5575
  %5690 = fsub fast float %167, %5576
  %5691 = fsub fast float %168, %5649
  %5692 = fmul fast float %5689, %5689
  %5693 = fmul fast float %5690, %5690
  %5694 = fadd fast float %5692, %5693
  %5695 = fmul fast float %5691, %5691
  %5696 = fadd fast float %5694, %5695
  %5697 = call float @dx.op.unary.f32(i32 24, float %5696)  ; Sqrt(value)
  br label %5698

; <label>:5698                                    ; preds = %5688, %5686, %5676
  %5699 = phi float [ %5685, %5676 ], [ %5697, %5688 ], [ 0.000000e+00, %5686 ]
  %5700 = and i1 %5644, %5642
  %5701 = fsub fast float -0.000000e+00, %5699
  %5702 = select i1 %5700, float -0.000000e+00, float %5701
  %5703 = fmul fast float %4103, 0x3FF7154760000000
  %5704 = fmul fast float %5703, %5702
  %5705 = fmul fast float %4104, 0x3FF7154760000000
  %5706 = fmul fast float %5705, %5702
  %5707 = fmul fast float %4105, 0x3FF7154760000000
  %5708 = fmul fast float %5707, %5702
  %5709 = call float @dx.op.unary.f32(i32 21, float %5704)  ; Exp(value)
  %5710 = call float @dx.op.unary.f32(i32 21, float %5706)  ; Exp(value)
  %5711 = call float @dx.op.unary.f32(i32 21, float %5708)  ; Exp(value)
  %5712 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5713 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  %5714 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  %5715 = fmul fast float %5638, %5712
  %5716 = fmul fast float %5639, %5713
  %5717 = fmul fast float %5640, %5714
  %5718 = fsub fast float %5592, %4894
  %5719 = fsub fast float %5593, %4893
  %5720 = fsub fast float %5594, %4892
  %5721 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5719, float %5720, float %5718, float %5719, float %5720)  ; Dot3(ax,ay,az,bx,by,bz)
  %5722 = call float @dx.op.unary.f32(i32 25, float %5721)  ; Rsqrt(value)
  %5723 = fmul fast float %5722, %5718
  %5724 = fmul fast float %5722, %5719
  %5725 = fmul fast float %5722, %5720
  %5726 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float %4901, float %4902, float %4903)  ; Dot3(ax,ay,az,bx,by,bz)
  %5727 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4890, float %4889, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5729 = fmul fast float %5728, %5599
  %5730 = fmul fast float %5728, %5728
  %5731 = fmul fast float %5730, %4921
  %5732 = call float @dx.op.unary.f32(i32 7, float %5731)  ; Saturate(value)
  %5733 = fmul fast float %5729, %5732
  %5734 = bitcast float %5589 to i32
  %5735 = ashr i32 %5734, 1
  %5736 = sub nsw i32 1597463007, %5735
  %5737 = bitcast i32 %5736 to float
  %5738 = fmul fast float %5737, %5586
  %5739 = fmul fast float %5737, %5587
  %5740 = fmul fast float %5737, %5588
  %5741 = fsub fast float %5738, %4894
  %5742 = fsub fast float %5739, %4893
  %5743 = fsub fast float %5740, %4892
  %5744 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float %5741, float %5742, float %5743)  ; Dot3(ax,ay,az,bx,by,bz)
  %5745 = call float @dx.op.unary.f32(i32 25, float %5744)  ; Rsqrt(value)
  %5746 = fmul fast float %5741, %5745
  %5747 = fmul fast float %5742, %5745
  %5748 = fmul fast float %5743, %5745
  %5749 = call float @dx.op.dot3.f32(i32 55, float %4901, float %4902, float %4903, float %5746, float %5747, float %5748)  ; Dot3(ax,ay,az,bx,by,bz)
  %5750 = fmul fast float %5749, %5749
  %5751 = call float @dx.op.unary.f32(i32 6, float %5726)  ; FAbs(value)
  %5752 = fsub fast float 1.000000e+00, %4904
  %5753 = call float @dx.op.binary.f32(i32 35, float %5752, float 0x3F847AE140000000)  ; FMax(a,b)
  %5754 = fmul fast float %5753, %5753
  %5755 = fmul fast float %5754, %5754
  %5756 = fsub fast float 1.000000e+00, %5755
  %5757 = fmul fast float %4908, %4908
  %5758 = fmul fast float %5757, %5756
  %5759 = fadd fast float %5758, %5755
  %5760 = bitcast float %5759 to i32
  %5761 = ashr i32 %5760, 1
  %5762 = add nsw i32 %5761, 532487669
  %5763 = bitcast i32 %5762 to float
  %5764 = fadd fast float %5763, %4908
  %5765 = fmul fast float %5755, %5750
  %5766 = fsub fast float 1.000000e+00, %5750
  %5767 = fadd fast float %5766, %5765
  %5768 = fmul fast float %5751, %5751
  %5769 = fmul fast float %5768, %5756
  %5770 = fadd fast float %5769, %5755
  %5771 = bitcast float %5770 to i32
  %5772 = ashr i32 %5771, 1
  %5773 = add nsw i32 %5772, 532487669
  %5774 = bitcast i32 %5773 to float
  %5775 = fadd fast float %5774, %5751
  %5776 = fmul fast float %5767, %5767
  %5777 = fmul fast float %5776, %5764
  %5778 = fmul fast float %5777, %5775
  %5779 = fdiv fast float 1.000000e+00, %5778
  %5780 = bitcast float %5755 to i32
  %5781 = sitofp i32 %5780 to float
  %5782 = fmul fast float %5781, 0x3FE7F73180000000
  %5783 = fadd fast float %5782, 0x41AFE27C40000000
  %5784 = fptosi float %5783 to i32
  %5785 = bitcast i32 %5784 to float
  %5786 = fmul fast float %5572, 0x3FD80E9D60000000
  %5787 = fmul fast float %5786, %5737
  %5788 = fadd fast float %5785, %5787
  %5789 = bitcast float %5788 to i32
  %5790 = sub nsw i32 2129859010, %5789
  %5791 = bitcast i32 %5790 to float
  %5792 = fmul fast float %5755, %5779
  %5793 = fmul fast float %5792, %5785
  %5794 = fmul fast float %5793, %5791
  %5795 = call float @dx.op.unary.f32(i32 6, float %5727)  ; FAbs(value)
  %5796 = fsub fast float 1.000000e+00, %5795
  %5797 = bitcast float %5796 to i32
  %5798 = sitofp i32 %5797 to float
  %5799 = fmul fast float %5798, 5.000000e+00
  %5800 = fadd fast float %5799, 0xC1EFBF8940000000
  %5801 = fptosi float %5800 to i32
  %5802 = bitcast i32 %5801 to float
  %5803 = fsub fast float 1.000000e+00, %4898
  %5804 = fsub fast float 1.000000e+00, %4899
  %5805 = fsub fast float 1.000000e+00, %4906
  %5806 = fmul fast float %5802, %5803
  %5807 = fmul fast float %5802, %5804
  %5808 = fmul fast float %5802, %5805
  %5809 = fadd fast float %5806, %4898
  %5810 = fadd fast float %5807, %4899
  %5811 = fadd fast float %5808, %4906
  br i1 %5168, label %5812, label %5835

; <label>:5812                                    ; preds = %5698
  %5813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3701, float %5795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5814 = extractvalue %dx.types.ResRet.f32 %5813, 0
  %5815 = extractvalue %dx.types.ResRet.f32 %5813, 1
  %5816 = extractvalue %dx.types.ResRet.f32 %5813, 2
  %5817 = fadd fast float %5814, -5.000000e-01
  %5818 = fadd fast float %5815, -5.000000e-01
  %5819 = fadd fast float %5816, -5.000000e-01
  %5820 = fmul fast float %4898, 4.000000e+00
  %5821 = fmul fast float %5820, %5803
  %5822 = fmul fast float %5821, %5817
  %5823 = fmul fast float %4899, 4.000000e+00
  %5824 = fmul fast float %5823, %5804
  %5825 = fmul fast float %5824, %5818
  %5826 = fmul fast float %4906, 4.000000e+00
  %5827 = fmul fast float %5826, %5805
  %5828 = fmul fast float %5827, %5819
  %5829 = fadd fast float %5822, %5809
  %5830 = fadd fast float %5825, %5810
  %5831 = fadd fast float %5828, %5811
  %5832 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  %5833 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  %5834 = call float @dx.op.unary.f32(i32 7, float %5831)  ; Saturate(value)
  br label %5835

; <label>:5835                                    ; preds = %5812, %5698
  %5836 = phi float [ %5832, %5812 ], [ %5809, %5698 ]
  %5837 = phi float [ %5833, %5812 ], [ %5810, %5698 ]
  %5838 = phi float [ %5834, %5812 ], [ %5811, %5698 ]
  %5839 = fmul fast float %5726, 9.843750e-01
  %5840 = fadd fast float %5839, 7.812500e-03
  %5841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5840, float %5158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5842 = extractvalue %dx.types.ResRet.f32 %5841, 2
  %5843 = extractvalue %dx.types.ResRet.f32 %5841, 3
  %5844 = fmul fast float %5842, %4898
  %5845 = fmul fast float %5842, %4899
  %5846 = fmul fast float %5842, %4906
  %5847 = fadd fast float %5844, %5843
  %5848 = fadd fast float %5845, %5843
  %5849 = fadd fast float %5846, %5843
  br i1 %5168, label %5850, label %5873

; <label>:5850                                    ; preds = %5835
  %5851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3701, float %5726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5852 = extractvalue %dx.types.ResRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.ResRet.f32 %5851, 1
  %5854 = extractvalue %dx.types.ResRet.f32 %5851, 2
  %5855 = fadd fast float %5852, -5.000000e-01
  %5856 = fadd fast float %5853, -5.000000e-01
  %5857 = fadd fast float %5854, -5.000000e-01
  %5858 = fmul fast float %4898, 4.000000e+00
  %5859 = fmul fast float %5858, %5803
  %5860 = fmul fast float %5859, %5855
  %5861 = fmul fast float %4899, 4.000000e+00
  %5862 = fmul fast float %5861, %5804
  %5863 = fmul fast float %5862, %5856
  %5864 = fmul fast float %4906, 4.000000e+00
  %5865 = fmul fast float %5864, %5805
  %5866 = fmul fast float %5865, %5857
  %5867 = fadd fast float %5860, %5847
  %5868 = fadd fast float %5863, %5848
  %5869 = fadd fast float %5866, %5849
  %5870 = call float @dx.op.unary.f32(i32 7, float %5867)  ; Saturate(value)
  %5871 = call float @dx.op.unary.f32(i32 7, float %5868)  ; Saturate(value)
  %5872 = call float @dx.op.unary.f32(i32 7, float %5869)  ; Saturate(value)
  br label %5873

; <label>:5873                                    ; preds = %5850, %5835
  %5874 = phi float [ %5870, %5850 ], [ %5847, %5835 ]
  %5875 = phi float [ %5871, %5850 ], [ %5848, %5835 ]
  %5876 = phi float [ %5872, %5850 ], [ %5849, %5835 ]
  %5877 = call float @dx.op.binary.f32(i32 35, float %5875, float %5876)  ; FMax(a,b)
  %5878 = call float @dx.op.binary.f32(i32 35, float %5874, float %5877)  ; FMax(a,b)
  %5879 = fsub fast float 1.000000e+00, %5878
  %5880 = fmul fast float %5836, %5794
  %5881 = fmul fast float %5837, %5794
  %5882 = fmul fast float %5838, %5794
  %5883 = fsub fast float 1.000000e+00, %5727
  %5884 = bitcast float %5883 to i32
  %5885 = sitofp i32 %5884 to float
  %5886 = fmul fast float %5885, 5.000000e+00
  %5887 = fadd fast float %5886, 0xC1EFBF8940000000
  %5888 = fptosi float %5887 to i32
  %5889 = bitcast i32 %5888 to float
  %5890 = fmul fast float %5889, %3702
  %5891 = fmul fast float %5879, %5890
  %5892 = fmul fast float %5891, %5218
  %5893 = fmul fast float %5891, %5219
  %5894 = fmul fast float %5891, %5220
  %5895 = fadd fast float %5892, %5880
  %5896 = fadd fast float %5893, %5881
  %5897 = fadd fast float %5894, %5882
  %5898 = fmul fast float %5715, %3698
  %5899 = fmul fast float %5898, %5733
  %5900 = fmul fast float %5899, %5879
  %5901 = fmul fast float %5716, %3698
  %5902 = fmul fast float %5901, %5733
  %5903 = fmul fast float %5902, %5879
  %5904 = fmul fast float %5717, %3698
  %5905 = fmul fast float %5904, %5733
  %5906 = fmul fast float %5905, %5879
  %5907 = fadd fast float %5900, %5554
  %5908 = fadd fast float %5903, %5555
  %5909 = fadd fast float %5906, %5556
  %5910 = fmul fast float %5899, %5895
  %5911 = fmul fast float %5902, %5896
  %5912 = fmul fast float %5905, %5897
  %5913 = fadd fast float %5910, %5551
  %5914 = fadd fast float %5911, %5552
  %5915 = fadd fast float %5912, %5553
  br label %5629

; <label>:5916                                    ; preds = %5629
  br label %5917

; <label>:5917                                    ; preds = %5916, %5517
  %5918 = phi float [ %5519, %5517 ], [ %5630, %5916 ]
  %5919 = phi float [ %5520, %5517 ], [ %5631, %5916 ]
  %5920 = phi float [ %5521, %5517 ], [ %5632, %5916 ]
  %5921 = phi float [ %5522, %5517 ], [ %5633, %5916 ]
  %5922 = phi float [ %5523, %5517 ], [ %5634, %5916 ]
  %5923 = phi float [ %5524, %5517 ], [ %5635, %5916 ]
  %5924 = add i32 %5518, 1
  %5925 = icmp ugt i32 %5924, %5514
  br i1 %5925, label %5926, label %5517

; <label>:5926                                    ; preds = %5917
  br label %5927

; <label>:5927                                    ; preds = %5926, %5493, %5483
  %5928 = phi float [ %5484, %5483 ], [ %5484, %5493 ], [ %5918, %5926 ]
  %5929 = phi float [ %5485, %5483 ], [ %5485, %5493 ], [ %5919, %5926 ]
  %5930 = phi float [ %5486, %5483 ], [ %5486, %5493 ], [ %5920, %5926 ]
  %5931 = phi float [ %5487, %5483 ], [ %5487, %5493 ], [ %5921, %5926 ]
  %5932 = phi float [ %5488, %5483 ], [ %5488, %5493 ], [ %5922, %5926 ]
  %5933 = phi float [ %5489, %5483 ], [ %5489, %5493 ], [ %5923, %5926 ]
  %5934 = call float @dx.op.unary.f32(i32 24, float %4895)  ; Sqrt(value)
  %5935 = call float @dx.op.unary.f32(i32 24, float %4896)  ; Sqrt(value)
  %5936 = call float @dx.op.unary.f32(i32 24, float %4897)  ; Sqrt(value)
  %5937 = fmul fast float %5934, %5931
  %5938 = fmul fast float %5935, %5932
  %5939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.f32 %5939, 0
  br i1 %205, label %5941, label %5961

; <label>:5941                                    ; preds = %5927
  %5942 = fadd fast float %5933, %3704
  %5943 = fmul fast float %5942, %3705
  %5944 = fsub fast float 1.000000e+00, %3705
  %5945 = call float @dx.op.unary.f32(i32 7, float %5944)  ; Saturate(value)
  %5946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5947 = extractvalue %dx.types.CBufRet.f32 %5946, 3
  %5948 = fmul fast float %5947, %5945
  %5949 = fadd fast float %5948, %5943
  %5950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5951 = extractvalue %dx.types.CBufRet.f32 %5950, 0
  %5952 = fmul fast float %5951, %5224
  %5953 = fsub fast float %5949, %5952
  %5954 = fadd fast float %5938, %5937
  %5955 = fmul fast float %5940, %5954
  %5956 = extractvalue %dx.types.CBufRet.f32 %5946, 1
  %5957 = fsub fast float %5953, %5956
  %5958 = extractvalue %dx.types.CBufRet.f32 %5946, 2
  %5959 = fmul fast float %5957, %5958
  %5960 = call float @dx.op.unary.f32(i32 7, float %5959)  ; Saturate(value)
  br label %5977

; <label>:5961                                    ; preds = %5927
  %5962 = fmul fast float %5936, %5933
  %5963 = fmul fast float %5940, %5937
  %5964 = fmul fast float %5940, %5938
  %5965 = fmul fast float %5962, %5940
  %5966 = add i32 %34, 356
  %5967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5966, i32 undef)  ; BufferLoad(srv,index,wot)
  %5968 = extractvalue %dx.types.ResRet.i32 %5967, 0
  %5969 = and i32 %5968, 32
  %5970 = icmp eq i32 %5969, 0
  br i1 %5970, label %5977, label %5971

; <label>:5971                                    ; preds = %5961
  %5972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5972, 0
  %5974 = fmul fast float %5973, 0x3FE99999A0000000
  %5975 = fadd fast float %5973, %5963
  %5976 = fadd fast float %5974, %5965
  br label %5977

; <label>:5977                                    ; preds = %5971, %5961, %5941
  %5978 = phi float [ %5955, %5941 ], [ %5975, %5971 ], [ %5963, %5961 ]
  %5979 = phi float [ %5960, %5941 ], [ %5964, %5971 ], [ %5964, %5961 ]
  %5980 = phi float [ 1.000000e+00, %5941 ], [ %5976, %5971 ], [ %5965, %5961 ]
  %5981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5982 = extractvalue %dx.types.CBufRet.f32 %5981, 0
  %5983 = fmul fast float %5982, %5929
  %5984 = fmul fast float %5982, %5930
  %5985 = fadd fast float %5929, %5928
  %5986 = select i1 %205, float %5985, float %5928
  %5987 = fmul float %5986, %5982
  %5988 = select i1 %205, float 0.000000e+00, float %5983
  %5989 = select i1 %205, float 0.000000e+00, float %5984
  %5990 = fmul fast float %5978, %5934
  %5991 = fmul fast float %5979, %5935
  %5992 = fmul fast float %5980, %5936
  %5993 = fadd fast float %5987, %5990
  %5994 = fadd fast float %5988, %5991
  %5995 = fadd fast float %5989, %5992
  %5996 = select i1 %205, float %5979, float %5994
  %5997 = select i1 %205, float %5980, float %5995
  %5998 = call float @dx.op.binary.f32(i32 36, float %5993, float 3.225500e+04)  ; FMin(a,b)
  %5999 = call float @dx.op.binary.f32(i32 36, float %5996, float 3.225500e+04)  ; FMin(a,b)
  %6000 = call float @dx.op.binary.f32(i32 36, float %5997, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5998)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5999)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6000)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

