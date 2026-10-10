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
; ENTITY_IDS               0    yz        13     NONE    uint    y  
; SV_IsFrontFace           0      w       13    FFACE    uint      w
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
; shader hash: 75c7d5d1d5777e0f5f379646522ad95b
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
; ENTITY_IDS               0        nointerpolation       
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
;                                   texture    byte         r/o      T4     t22,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture     u32     2darray      T7     t11,space2     1
;                                   texture     f32     2darray      T8     t10,space2     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t18,space1     1
;                                   texture    byte         r/o     T11     t19,space1     1
;                                   texture    byte         r/o     T12     t20,space1     1
;                                   texture    byte         r/o     T13     t21,space1     1
;                                   texture     f32          2d     T14     t37,space2     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     f32          2d     T24     t34,space2     1
;                                   texture    byte         r/o     T25     t10,space1     1
;                                   texture    byte         r/o     T26     t68,space1     1
;                                   texture     f32          2d     T27      t0,space2     1
;                                   texture    byte         r/o     T28     t11,space1     1
;                                   texture    byte         r/o     T29     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = icmp ne i32 %33, 0
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = fmul fast float %84, %78
  %86 = fmul fast float %84, %79
  %87 = select i1 %34, float 1.000000e+00, float -1.000000e+00
  %88 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %89 = bitcast float %88 to i32
  %90 = ashr i32 %89, 1
  %91 = sub nsw i32 1597250115, %90
  %92 = bitcast i32 %91 to float
  %93 = fmul fast float %70, %87
  %94 = fmul fast float %93, %92
  %95 = fmul fast float %71, %87
  %96 = fmul fast float %95, %92
  %97 = fmul fast float %72, %87
  %98 = fmul fast float %97, %92
  %99 = fmul fast float %71, %68
  %100 = fmul fast float %72, %67
  %101 = fsub fast float %99, %100
  %102 = fmul fast float %72, %66
  %103 = fmul fast float %70, %68
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %70, %67
  %106 = fmul fast float %71, %66
  %107 = fsub fast float %105, %106
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fcmp fast une float %109, 0.000000e+00
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %85, 2.000000e+00
  %115 = fmul fast float %114, %112
  %116 = fmul fast float %86, 2.000000e+00
  %117 = fmul fast float %116, %113
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = select i1 %110, float %121, float %125
  %129 = select i1 %110, float %122, float %126
  %130 = select i1 %110, float %123, float %127
  %131 = fmul fast float %128, %118
  %132 = fmul fast float %129, %118
  %133 = fmul fast float %130, %118
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = select i1 %110, float %135, float %139
  %143 = select i1 %110, float %136, float %140
  %144 = select i1 %110, float %137, float %141
  %145 = fmul fast float %142, %119
  %146 = fmul fast float %143, %119
  %147 = fmul fast float %144, %119
  %148 = fadd fast float %145, %131
  %149 = fadd fast float %146, %132
  %150 = fadd fast float %147, %133
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = select i1 %110, float %152, float %156
  %160 = select i1 %110, float %153, float %157
  %161 = select i1 %110, float %154, float %158
  %162 = fadd fast float %148, %159
  %163 = fadd fast float %149, %160
  %164 = fadd fast float %150, %161
  %165 = fmul fast float %162, %80
  %166 = fmul fast float %163, %80
  %167 = fmul fast float %164, %80
  %168 = shl i32 %36, 5
  %169 = add i32 %168, 4194304
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = extractvalue %dx.types.ResRet.i32 %170, 2
  %174 = extractvalue %dx.types.ResRet.i32 %170, 3
  %175 = add i32 %168, 4194320
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = extractvalue %dx.types.ResRet.i32 %176, 1
  %179 = bitcast i32 %177 to float
  %180 = bitcast i32 %178 to float
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %184 = fmul fast float %182, %85
  %185 = fmul fast float %183, %86
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 114688
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, float %184, float 0.000000e+00
  %191 = select i1 %189, float %185, float 0.000000e+00
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fmul fast float %193, 2.550000e+02
  %195 = fptoui float %194 to i32
  %196 = select i1 %189, i32 %195, i32 0
  %197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.i32 %197, 3
  %199 = and i32 %198, 3
  %200 = icmp ne i32 %199, 0
  %201 = and i32 %198, 4
  %202 = icmp ne i32 %201, 0
  %203 = and i1 %200, %202
  br i1 %203, label %204, label %213

; <label>:204                                     ; preds = %0
  %205 = fmul fast float %113, %86
  %206 = fmul fast float %112, %85
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %206, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fsub fast float 1.000000e+00, %208
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fcmp fast olt float %209, %211
  br label %216

; <label>:213                                     ; preds = %0
  %214 = icmp eq i32 %201, 0
  %215 = and i1 %200, %214
  br label %216

; <label>:216                                     ; preds = %213, %204
  %217 = phi i1 [ %212, %204 ], [ %215, %213 ]
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = fmul fast float %219, 0x3FE3C6EF40000000
  %221 = frem fast float %85, 2.560000e+02
  %222 = frem fast float %86, 2.560000e+02
  %223 = fptoui float %221 to i32
  %224 = fptoui float %222 to i32
  %225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %223, i32 %224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fadd fast float %226, %220
  %228 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %229 = add i32 %35, 156
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl i32 %231, 4
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %231, 7
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %231, 22
  %239 = shl nuw nsw i32 %238, 5
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %35, 216
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %243, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %243, 16
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = add i32 %35, 36
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %35, 288
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %266, 0x3F50624DE0000000
  %270 = fmul fast float %268, 0x3F50624DE0000000
  %271 = add i32 %35, 172
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %35, 232
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %35, 52
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %35, 304
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %35, 188
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = shl i32 %315, 4
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %315, 7
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 22
  %323 = shl nuw nsw i32 %322, 5
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %35, 248
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %327, 8
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %327, 16
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = add i32 %35, 68
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %35, 320
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = fmul fast float %350, 0x3F50624DE0000000
  %354 = fmul fast float %352, 0x3F50624DE0000000
  %355 = add i32 %35, 204
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = shl i32 %357, 4
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %357, 7
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %357, 22
  %365 = shl nuw nsw i32 %364, 5
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %35, 264
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %369, 8
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %369, 16
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = add i32 %35, 84
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %35, 336
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %392, 0x3F50624DE0000000
  %396 = fmul fast float %394, 0x3F50624DE0000000
  %397 = add i32 %35, 348
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 32
  %401 = icmp eq i32 %400, 0
  %402 = and i32 %399, 64
  %403 = icmp eq i32 %402, 0
  %404 = and i32 %399, 128
  %405 = icmp eq i32 %404, 0
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %423, label %410

; <label>:410                                     ; preds = %216
  %411 = add i32 %35, 508
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %413, 0
  %415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %415, %dx.types.Handle %82, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = fmul fast float %417, %75
  %421 = fmul fast float %418, %76
  %422 = fmul fast float %419, %77
  br label %423

; <label>:423                                     ; preds = %410, %216
  %424 = phi float [ %77, %216 ], [ %422, %410 ]
  %425 = phi float [ %76, %216 ], [ %421, %410 ]
  %426 = phi float [ %75, %216 ], [ %420, %410 ]
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 2
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %450, label %431

; <label>:431                                     ; preds = %423
  %432 = add i32 %35, 44
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 1
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %426, float 1.000000e+00
  %438 = add i32 %35, 60
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %425, float 1.000000e+00
  %444 = add i32 %35, 76
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %424, float 1.000000e+00
  br label %450

; <label>:450                                     ; preds = %431, %423
  %451 = phi float [ %424, %423 ], [ %449, %431 ]
  %452 = phi float [ %425, %423 ], [ %443, %431 ]
  %453 = phi float [ %426, %423 ], [ %437, %431 ]
  %454 = lshr i32 %428, 20
  %455 = and i32 %454, 3
  %456 = add nuw nsw i32 %455, 1
  %457 = add i32 %35, 24
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = add i32 %35, 28
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = or i32 %462, %459
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %952, label %465

; <label>:465                                     ; preds = %450
  %466 = and i32 %459, 262144
  %467 = icmp ne i32 %466, 0
  %468 = select i1 %467, float %41, float 1.000000e+00
  %469 = select i1 %467, float %42, float 0.000000e+00
  %470 = select i1 %467, float %43, float 0.000000e+00
  %471 = select i1 %467, float %44, float 1.000000e+00
  %472 = select i1 %467, float %45, float %73
  %473 = select i1 %467, float %46, float %74
  %474 = add i32 %35, 284
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = lshr i32 %476, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = fmul fast float %478, 0x3F50624DE0000000
  %480 = add i32 %35, 88
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = lshr i32 %482, 16
  %484 = and i32 %483, 255
  %485 = lshr i32 %482, 24
  %486 = add i32 %35, 292
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 65535
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %488, 16
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = add i32 %35, 32
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = lshr i32 %495, 22
  %497 = shl nuw nsw i32 %496, 5
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = shl i32 %495, 4
  %500 = and i32 %499, 32752
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %495, 7
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 3
  %507 = fmul fast float %506, 1.000000e+03
  %508 = fmul fast float %269, %507
  %509 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %510 = fadd fast float %509, %259
  %511 = fmul fast float %270, %507
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fadd fast float %512, %261
  %514 = fmul fast float %479, %507
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fmul fast float %515, 0x401921FB60000000
  %517 = fadd fast float %516, %498
  %518 = call float @dx.op.unary.f32(i32 13, float %517)  ; Sin(value)
  %519 = call float @dx.op.unary.f32(i32 12, float %517)  ; Cos(value)
  %520 = fsub fast float -0.000000e+00, %518
  %521 = fadd fast float %472, -5.000000e-01
  %522 = fadd fast float %473, -5.000000e-01
  %523 = fmul fast float %490, %521
  %524 = fmul fast float %492, %522
  %525 = fadd fast float %523, 5.000000e-01
  %526 = fadd fast float %524, 5.000000e-01
  %527 = fmul fast float %501, %525
  %528 = fmul fast float %504, %526
  %529 = fmul fast float %519, %527
  %530 = call float @dx.op.tertiary.f32(i32 46, float %520, float %528, float %529)  ; FMad(a,b,c)
  %531 = fmul fast float %518, %527
  %532 = call float @dx.op.tertiary.f32(i32 46, float %519, float %528, float %531)  ; FMad(a,b,c)
  %533 = fadd fast float %510, %530
  %534 = fadd fast float %513, %532
  %535 = icmp ugt i32 %484, 1
  %536 = icmp ugt i32 %482, 33554431
  %537 = or i1 %536, %535
  br i1 %537, label %538, label %563

; <label>:538                                     ; preds = %465
  %539 = add i32 %35, 228
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = lshr i32 %541, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = fmul fast float %506, %543
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = mul nuw nsw i32 %484, %485
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %545, %547
  %549 = call float @dx.op.unary.f32(i32 27, float %548)  ; Round_ni(value)
  %550 = fptoui float %549 to i32
  %551 = urem i32 %550, %484
  %552 = udiv i32 %550, %485
  %553 = call float @dx.op.unary.f32(i32 22, float %533)  ; Frc(value)
  %554 = call float @dx.op.unary.f32(i32 22, float %534)  ; Frc(value)
  %555 = uitofp i32 %551 to float
  %556 = uitofp i32 %552 to float
  %557 = fadd fast float %553, %555
  %558 = fadd fast float %554, %556
  %559 = uitofp i32 %484 to float
  %560 = uitofp i32 %485 to float
  %561 = fdiv fast float %557, %559
  %562 = fdiv fast float %558, %560
  br label %563

; <label>:563                                     ; preds = %538, %465
  %564 = phi float [ %561, %538 ], [ %533, %465 ]
  %565 = phi float [ %562, %538 ], [ %534, %465 ]
  %566 = and i32 %459, 16
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %764, label %568

; <label>:568                                     ; preds = %563
  %569 = add i32 %35, 376
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = add i32 %571, 0
  %573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %573, %dx.types.Handle %81, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = extractvalue %dx.types.ResRet.f32 %574, 3
  %579 = and i32 %482, 255
  %580 = uitofp i32 %579 to float
  %581 = lshr i32 %482, 8
  %582 = and i32 %581, 255
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %578, %580
  %585 = fadd fast float %584, %583
  %586 = fmul fast float %585, 0x3F70101000000000
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 512
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %599, label %591

; <label>:591                                     ; preds = %568
  %592 = add i32 %35, 460
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = add i32 %594, 0
  %596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %596, %dx.types.Handle %82, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  br label %599

; <label>:599                                     ; preds = %591, %568
  %600 = phi float [ %598, %591 ], [ 1.000000e+00, %568 ]
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 33554432
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %711, label %605

; <label>:605                                     ; preds = %599
  %606 = add i32 %35, 224
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 65535
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %608, 16
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = add i32 %35, 228
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 65535
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = lshr i32 %619, 24
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = and i32 %619, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F70101020000000
  %626 = lshr i32 %619, 8
  %627 = and i32 %626, 255
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3F70101020000000
  %630 = lshr i32 %619, 16
  %631 = and i32 %630, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = add i32 %35, 220
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = lshr i32 %636, 24
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, 0x3F70101020000000
  %640 = and i32 %636, 255
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F70101020000000
  %643 = lshr i32 %636, 8
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = fmul fast float %645, 0x3F70101020000000
  %647 = lshr i32 %636, 16
  %648 = and i32 %647, 255
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, 0x3F70101020000000
  %651 = bitcast float %575 to i32
  %652 = ashr i32 %651, 1
  %653 = sub nsw i32 1597463174, %652
  %654 = bitcast i32 %653 to float
  %655 = fmul fast float %575, 5.000000e-01
  %656 = fmul fast float %654, %654
  %657 = fmul fast float %656, %655
  %658 = fsub fast float 1.500000e+00, %657
  %659 = fmul fast float %654, %575
  %660 = fmul fast float %659, %658
  %661 = bitcast float %576 to i32
  %662 = ashr i32 %661, 1
  %663 = sub nsw i32 1597463174, %662
  %664 = bitcast i32 %663 to float
  %665 = fmul fast float %576, 5.000000e-01
  %666 = fmul fast float %664, %664
  %667 = fmul fast float %666, %665
  %668 = fsub fast float 1.500000e+00, %667
  %669 = fmul fast float %664, %576
  %670 = fmul fast float %669, %668
  %671 = bitcast float %577 to i32
  %672 = ashr i32 %671, 1
  %673 = sub nsw i32 1597463174, %672
  %674 = bitcast i32 %673 to float
  %675 = fmul fast float %577, 5.000000e-01
  %676 = fmul fast float %674, %674
  %677 = fmul fast float %676, %675
  %678 = fsub fast float 1.500000e+00, %677
  %679 = fmul fast float %674, %577
  %680 = fmul fast float %679, %678
  %681 = fsub fast float %660, %642
  %682 = fsub fast float %670, %646
  %683 = fsub fast float %680, %650
  %684 = fmul fast float %681, %610
  %685 = fmul fast float %682, %612
  %686 = fmul fast float %683, %617
  %687 = fadd fast float %684, %625
  %688 = fadd fast float %685, %629
  %689 = fadd fast float %686, %633
  %690 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %691 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %692 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %693 = fmul fast float %690, %690
  %694 = fmul fast float %691, %691
  %695 = fmul fast float %692, %692
  %696 = fsub fast float %693, %575
  %697 = fsub fast float %694, %576
  %698 = fsub fast float %695, %577
  %699 = fmul fast float %696, %600
  %700 = fmul fast float %697, %600
  %701 = fmul fast float %698, %600
  %702 = fadd fast float %699, %575
  %703 = fadd fast float %700, %576
  %704 = fadd fast float %701, %577
  %705 = fadd fast float %622, %586
  %706 = fsub fast float %705, %639
  %707 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %708 = fsub fast float %707, %586
  %709 = fmul fast float %708, %600
  %710 = fadd fast float %709, %586
  br label %764

; <label>:711                                     ; preds = %599
  %712 = and i32 %602, 134217728
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %748, label %714

; <label>:714                                     ; preds = %711
  %715 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %716 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %717 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %718 = fadd fast float %715, -5.000000e-01
  %719 = fadd fast float %716, -5.000000e-01
  %720 = fadd fast float %717, -5.000000e-01
  %721 = fmul fast float %718, %600
  %722 = fmul fast float %719, %600
  %723 = fmul fast float %720, %600
  %724 = fadd fast float %721, 5.000000e-01
  %725 = fadd fast float %722, 5.000000e-01
  %726 = fadd fast float %723, 5.000000e-01
  %727 = call float @dx.op.unary.f32(i32 24, float %575)  ; Sqrt(value)
  %728 = call float @dx.op.unary.f32(i32 24, float %576)  ; Sqrt(value)
  %729 = call float @dx.op.unary.f32(i32 24, float %577)  ; Sqrt(value)
  %730 = fmul fast float %724, 2.000000e+00
  %731 = fsub fast float 1.000000e+00, %730
  %732 = fmul fast float %731, %727
  %733 = fadd fast float %732, %730
  %734 = fmul fast float %733, %727
  %735 = fmul fast float %725, 2.000000e+00
  %736 = fsub fast float 1.000000e+00, %735
  %737 = fmul fast float %736, %728
  %738 = fadd fast float %737, %735
  %739 = fmul fast float %738, %728
  %740 = fmul fast float %726, 2.000000e+00
  %741 = fsub fast float 1.000000e+00, %740
  %742 = fmul fast float %741, %729
  %743 = fadd fast float %742, %740
  %744 = fmul fast float %743, %729
  %745 = fmul fast float %734, %734
  %746 = fmul fast float %739, %739
  %747 = fmul fast float %744, %744
  br label %764

; <label>:748                                     ; preds = %711
  %749 = fmul fast float %246, %246
  %750 = fmul fast float %250, %250
  %751 = fmul fast float %254, %254
  %752 = fadd fast float %749, -1.000000e+00
  %753 = fadd fast float %750, -1.000000e+00
  %754 = fadd fast float %751, -1.000000e+00
  %755 = fmul fast float %600, %752
  %756 = fmul fast float %600, %753
  %757 = fmul fast float %600, %754
  %758 = fadd fast float %755, 1.000000e+00
  %759 = fadd fast float %756, 1.000000e+00
  %760 = fadd fast float %757, 1.000000e+00
  %761 = fmul fast float %758, %575
  %762 = fmul fast float %759, %576
  %763 = fmul fast float %760, %577
  br label %764

; <label>:764                                     ; preds = %748, %714, %605, %563
  %765 = phi float [ %710, %605 ], [ %586, %714 ], [ %586, %748 ], [ 0x3FA23C0BE0000000, %563 ]
  %766 = phi float [ %702, %605 ], [ %745, %714 ], [ %761, %748 ], [ 1.000000e+00, %563 ]
  %767 = phi float [ %703, %605 ], [ %746, %714 ], [ %762, %748 ], [ 1.000000e+00, %563 ]
  %768 = phi float [ %704, %605 ], [ %747, %714 ], [ %763, %748 ], [ 1.000000e+00, %563 ]
  %769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.i32 %769, 1
  %771 = and i32 %770, 1
  %772 = icmp ne i32 %771, 0
  %773 = add i32 %35, 356
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 32
  %777 = icmp ne i32 %776, 0
  %778 = and i1 %772, %777
  %779 = select i1 %778, float 1.000000e+00, float %766
  %780 = select i1 %778, float 0x3FD3333340000000, float %767
  %781 = select i1 %778, float 0x3FD3333340000000, float %768
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 32
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %858, label %786

; <label>:786                                     ; preds = %764
  %787 = add i32 %35, 92
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %35, 392
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = add i32 %792, 0
  %794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %795 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %794, %dx.types.Handle %81, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = extractvalue %dx.types.ResRet.f32 %795, 3
  %800 = and i32 %789, 255
  %801 = uitofp i32 %800 to float
  %802 = lshr i32 %789, 8
  %803 = and i32 %802, 255
  %804 = uitofp i32 %803 to float
  %805 = lshr i32 %789, 16
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101000000000
  %809 = fmul fast float %796, %801
  %810 = fadd fast float %809, %804
  %811 = fmul fast float %810, 0x3F70101000000000
  %812 = fadd fast float %797, -5.000000e-01
  %813 = fadd fast float %799, -5.000000e-01
  %814 = fmul fast float %812, %808
  %815 = fmul fast float %813, %808
  %816 = fadd fast float %814, 5.000000e-01
  %817 = fadd fast float %815, 5.000000e-01
  %818 = fmul fast float %816, 2.000000e+00
  %819 = fadd fast float %818, -1.000000e+00
  %820 = fmul fast float %817, 2.000000e+00
  %821 = fadd fast float %820, -1.000000e+00
  %822 = fadd fast float %819, %821
  %823 = fmul fast float %822, 5.000000e-01
  %824 = fsub fast float %819, %821
  %825 = fmul fast float %824, 5.000000e-01
  %826 = call float @dx.op.unary.f32(i32 6, float %823)  ; FAbs(value)
  %827 = fsub fast float 1.000000e+00, %826
  %828 = call float @dx.op.unary.f32(i32 6, float %825)  ; FAbs(value)
  %829 = fsub fast float %827, %828
  %830 = call float @dx.op.dot3.f32(i32 55, float %823, float %825, float %829, float %823, float %825, float %829)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = call float @dx.op.unary.f32(i32 25, float %830)  ; Rsqrt(value)
  %832 = fmul fast float %823, %831
  %833 = fmul fast float %825, %831
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = and i32 %835, 67108864
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %854, label %838

; <label>:838                                     ; preds = %786
  %839 = add i32 %35, 280
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 65535
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = and i32 %845, 65535
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = lshr i32 %841, 16
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = fsub fast float %811, %849
  %851 = fmul fast float %850, %843
  %852 = fadd fast float %851, %847
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  br label %854

; <label>:854                                     ; preds = %838, %786
  %855 = phi float [ %853, %838 ], [ %811, %786 ]
  %856 = call float @dx.op.dot2.f32(i32 54, float %832, float %833, float %468, float %469)  ; Dot2(ax,ay,bx,by)
  %857 = call float @dx.op.dot2.f32(i32 54, float %832, float %833, float %470, float %471)  ; Dot2(ax,ay,bx,by)
  br label %858

; <label>:858                                     ; preds = %854, %764
  %859 = phi float [ %855, %854 ], [ 0x3FD6666660000000, %764 ]
  %860 = phi float [ %856, %854 ], [ 0.000000e+00, %764 ]
  %861 = phi float [ %857, %854 ], [ 0.000000e+00, %764 ]
  %862 = phi float [ %798, %854 ], [ 1.000000e+00, %764 ]
  %863 = add i32 %35, 160
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = lshr i32 %865, 22
  %867 = shl nuw nsw i32 %866, 5
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 64
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %906, label %873

; <label>:873                                     ; preds = %858
  %874 = add i32 %35, 408
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = add i32 %876, 0
  %878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 131072
  %882 = icmp eq i32 %881, 0
  %883 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %878, %dx.types.Handle %81, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = extractvalue %dx.types.ResRet.f32 %883, 1
  %886 = extractvalue %dx.types.ResRet.f32 %883, 2
  %887 = fmul fast float %884, %234
  %888 = fmul fast float %885, %237
  %889 = fmul fast float %886, %240
  br i1 %882, label %896, label %890

; <label>:890                                     ; preds = %873
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = fmul fast float %892, %887
  %894 = fmul fast float %892, %888
  %895 = fmul fast float %892, %889
  br label %896

; <label>:896                                     ; preds = %890, %873
  %897 = phi float [ %893, %890 ], [ %887, %873 ]
  %898 = phi float [ %894, %890 ], [ %888, %873 ]
  %899 = phi float [ %895, %890 ], [ %889, %873 ]
  %900 = fmul fast float %897, %868
  %901 = select i1 %217, float %900, float %897
  %902 = call float @dx.op.dot3.f32(i32 55, float %901, float %898, float %899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = select i1 %217, float 0.000000e+00, float %897
  %904 = select i1 %217, float %902, float %898
  %905 = select i1 %217, float 0.000000e+00, float %899
  br label %906

; <label>:906                                     ; preds = %896, %858
  %907 = phi float [ %903, %896 ], [ 0.000000e+00, %858 ]
  %908 = phi float [ %904, %896 ], [ 0.000000e+00, %858 ]
  %909 = phi float [ %905, %896 ], [ 0.000000e+00, %858 ]
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = and i32 %911, 26624
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %937, label %914

; <label>:914                                     ; preds = %906
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = and i32 %916, 16384
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %937, label %919

; <label>:919                                     ; preds = %914
  %920 = and i32 %916, 1048576
  %921 = icmp ne i32 %920, 0
  %922 = add i32 %35, 492
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = add i32 %924, 0
  %926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %926, %dx.types.Handle %82, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %928 = extractvalue %dx.types.ResRet.f32 %927, 0
  %929 = add i32 %35, 96
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = lshr i32 %931, 24
  %933 = uitofp i32 %932 to float
  %934 = fmul fast float %928, 0x3F70101020000000
  %935 = select i1 %921, float 0x3F70101020000000, float %934
  %936 = fmul fast float %935, %933
  br label %937

; <label>:937                                     ; preds = %919, %914, %906
  %938 = phi float [ %936, %919 ], [ 0.000000e+00, %914 ], [ 0.000000e+00, %906 ]
  %939 = add i32 %35, 96
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = and i32 %941, 255
  %943 = uitofp i32 %942 to float
  %944 = lshr i32 %941, 8
  %945 = and i32 %944, 255
  %946 = uitofp i32 %945 to float
  %947 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %948 = fmul fast float %946, %947
  %949 = fadd fast float %948, %943
  %950 = fmul fast float %949, 0x3F70101020000000
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  br label %952

; <label>:952                                     ; preds = %937, %450
  %953 = phi float [ 0.000000e+00, %450 ], [ %860, %937 ]
  %954 = phi float [ 0.000000e+00, %450 ], [ %861, %937 ]
  %955 = phi float [ 0.000000e+00, %450 ], [ %907, %937 ]
  %956 = phi float [ 0.000000e+00, %450 ], [ %908, %937 ]
  %957 = phi float [ 0.000000e+00, %450 ], [ %909, %937 ]
  %958 = phi float [ 0.000000e+00, %450 ], [ %779, %937 ]
  %959 = phi float [ 0.000000e+00, %450 ], [ %780, %937 ]
  %960 = phi float [ 0.000000e+00, %450 ], [ %781, %937 ]
  %961 = phi float [ 0.000000e+00, %450 ], [ %765, %937 ]
  %962 = phi float [ 0.000000e+00, %450 ], [ 1.000000e+00, %937 ]
  %963 = phi float [ 0.000000e+00, %450 ], [ %859, %937 ]
  %964 = phi float [ 0.000000e+00, %450 ], [ %862, %937 ]
  %965 = phi float [ 0.000000e+00, %450 ], [ %938, %937 ]
  %966 = phi float [ 0.000000e+00, %450 ], [ %951, %937 ]
  br i1 %401, label %1831, label %967

; <label>:967                                     ; preds = %952
  %968 = icmp ult i32 %456, 2
  %969 = add i32 %35, 40
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = add i32 %35, 44
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = or i32 %974, %971
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %1831, label %977

; <label>:977                                     ; preds = %967
  %978 = and i32 %971, 262144
  %979 = icmp ne i32 %978, 0
  %980 = select i1 %979, float %41, float 1.000000e+00
  %981 = select i1 %979, float %42, float 0.000000e+00
  %982 = select i1 %979, float %43, float 0.000000e+00
  %983 = select i1 %979, float %44, float 1.000000e+00
  %984 = select i1 %979, float %45, float %73
  %985 = select i1 %979, float %46, float %74
  %986 = add i32 %35, 300
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = lshr i32 %988, 16
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = fmul fast float %990, 0x3F50624DE0000000
  %992 = add i32 %35, 104
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = lshr i32 %994, 16
  %996 = and i32 %995, 255
  %997 = lshr i32 %994, 24
  %998 = add i32 %35, 308
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = and i32 %1000, 65535
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = lshr i32 %1000, 16
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = add i32 %35, 48
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = lshr i32 %1007, 22
  %1009 = shl nuw nsw i32 %1008, 5
  %1010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1009)  ; LegacyF16ToF32(value)
  %1011 = shl i32 %1007, 4
  %1012 = and i32 %1011, 32752
  %1013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1012)  ; LegacyF16ToF32(value)
  %1014 = lshr i32 %1007, 7
  %1015 = and i32 %1014, 32752
  %1016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1015)  ; LegacyF16ToF32(value)
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 3
  %1019 = fmul fast float %1018, 1.000000e+03
  %1020 = fmul fast float %311, %1019
  %1021 = call float @dx.op.unary.f32(i32 22, float %1020)  ; Frc(value)
  %1022 = fadd fast float %1021, %301
  %1023 = fmul fast float %312, %1019
  %1024 = call float @dx.op.unary.f32(i32 22, float %1023)  ; Frc(value)
  %1025 = fadd fast float %1024, %303
  %1026 = fmul fast float %991, %1019
  %1027 = call float @dx.op.unary.f32(i32 22, float %1026)  ; Frc(value)
  %1028 = fmul fast float %1027, 0x401921FB60000000
  %1029 = fadd fast float %1028, %1010
  %1030 = call float @dx.op.unary.f32(i32 13, float %1029)  ; Sin(value)
  %1031 = call float @dx.op.unary.f32(i32 12, float %1029)  ; Cos(value)
  %1032 = fsub fast float -0.000000e+00, %1030
  %1033 = fadd fast float %984, -5.000000e-01
  %1034 = fadd fast float %985, -5.000000e-01
  %1035 = fmul fast float %1002, %1033
  %1036 = fmul fast float %1004, %1034
  %1037 = fadd fast float %1035, 5.000000e-01
  %1038 = fadd fast float %1036, 5.000000e-01
  %1039 = fmul fast float %1013, %1037
  %1040 = fmul fast float %1016, %1038
  %1041 = fmul fast float %1031, %1039
  %1042 = call float @dx.op.tertiary.f32(i32 46, float %1032, float %1040, float %1041)  ; FMad(a,b,c)
  %1043 = fmul fast float %1030, %1039
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %1031, float %1040, float %1043)  ; FMad(a,b,c)
  %1045 = fadd fast float %1022, %1042
  %1046 = fadd fast float %1025, %1044
  %1047 = icmp ugt i32 %996, 1
  %1048 = icmp ugt i32 %994, 33554431
  %1049 = or i1 %1048, %1047
  br i1 %1049, label %1050, label %1075

; <label>:1050                                    ; preds = %977
  %1051 = add i32 %35, 244
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = lshr i32 %1053, 16
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = fmul fast float %1018, %1055
  %1057 = call float @dx.op.unary.f32(i32 22, float %1056)  ; Frc(value)
  %1058 = mul nuw nsw i32 %996, %997
  %1059 = uitofp i32 %1058 to float
  %1060 = fmul fast float %1057, %1059
  %1061 = call float @dx.op.unary.f32(i32 27, float %1060)  ; Round_ni(value)
  %1062 = fptoui float %1061 to i32
  %1063 = urem i32 %1062, %996
  %1064 = udiv i32 %1062, %997
  %1065 = call float @dx.op.unary.f32(i32 22, float %1045)  ; Frc(value)
  %1066 = call float @dx.op.unary.f32(i32 22, float %1046)  ; Frc(value)
  %1067 = uitofp i32 %1063 to float
  %1068 = uitofp i32 %1064 to float
  %1069 = fadd fast float %1065, %1067
  %1070 = fadd fast float %1066, %1068
  %1071 = uitofp i32 %996 to float
  %1072 = uitofp i32 %997 to float
  %1073 = fdiv fast float %1069, %1071
  %1074 = fdiv fast float %1070, %1072
  br label %1075

; <label>:1075                                    ; preds = %1050, %977
  %1076 = phi float [ %1073, %1050 ], [ %1045, %977 ]
  %1077 = phi float [ %1074, %1050 ], [ %1046, %977 ]
  %1078 = and i32 %971, 256
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1126, label %1080

; <label>:1080                                    ; preds = %1075
  %1081 = add i32 %35, 444
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = add i32 %1083, 0
  %1085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1086 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1085, %dx.types.Handle %82, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = add i32 %35, 116
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = shl i32 %1090, 4
  %1092 = and i32 %1091, 32752
  %1093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1092)  ; LegacyF16ToF32(value)
  %1094 = lshr i32 %1090, 7
  %1095 = and i32 %1094, 32752
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = fsub fast float 1.000000e+00, %453
  %1098 = call float @dx.op.binary.f32(i32 35, float %1097, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1099 = bitcast float %453 to i32
  %1100 = sitofp i32 %1099 to float
  %1101 = fadd fast float %1100, 0xC1CFBF8940000000
  %1102 = fmul fast float %1096, %1101
  %1103 = fadd fast float %1102, 0x41CFBF8940000000
  %1104 = fptosi float %1103 to i32
  %1105 = bitcast i32 %1104 to float
  %1106 = bitcast float %1098 to i32
  %1107 = sitofp i32 %1106 to float
  %1108 = fadd fast float %1107, 0xC1CFBF8940000000
  %1109 = fmul fast float %1108, %1096
  %1110 = fadd fast float %1109, 0x41CFBF8940000000
  %1111 = fptosi float %1110 to i32
  %1112 = bitcast i32 %1111 to float
  %1113 = fmul fast float %1105, %1093
  %1114 = fmul fast float %1112, %1093
  %1115 = fsub fast float %1098, %1113
  %1116 = fadd fast float %1114, %1098
  %1117 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1118 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1119 = fsub fast float %1087, %1117
  %1120 = fsub fast float %1118, %1117
  %1121 = bitcast float %1120 to i32
  %1122 = sub nsw i32 2129859010, %1121
  %1123 = bitcast i32 %1122 to float
  %1124 = fmul fast float %1123, %1119
  %1125 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  br label %1126

; <label>:1126                                    ; preds = %1080, %1075
  %1127 = phi float [ %1125, %1080 ], [ %453, %1075 ]
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = and i32 %1129, 128
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1148, label %1132

; <label>:1132                                    ; preds = %1126
  %1133 = add i32 %35, 428
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = add i32 %1135, 0
  %1137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1137, %dx.types.Handle %82, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = and i32 %1141, 524288
  %1143 = icmp ne i32 %1142, 0
  %1144 = fcmp fast ogt float %1139, 0x3FE0101020000000
  %1145 = select i1 %1144, float 1.000000e+00, float 0.000000e+00
  %1146 = select i1 %1143, float %1145, float %1139
  %1147 = fmul fast float %1146, %1127
  br label %1148

; <label>:1148                                    ; preds = %1132, %1126
  %1149 = phi float [ %1147, %1132 ], [ %1127, %1126 ]
  %1150 = fcmp fast ult float %1149, 0x3F70101020000000
  br i1 %1150, label %1831, label %1151

; <label>:1151                                    ; preds = %1148
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 16
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1354, label %1156

; <label>:1156                                    ; preds = %1151
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = add i32 %35, 380
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = add i32 %1161, 0
  %1163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1163, %dx.types.Handle %81, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = extractvalue %dx.types.ResRet.f32 %1164, 3
  %1169 = and i32 %1158, 255
  %1170 = uitofp i32 %1169 to float
  %1171 = lshr i32 %1158, 8
  %1172 = and i32 %1171, 255
  %1173 = uitofp i32 %1172 to float
  %1174 = fmul fast float %1168, %1170
  %1175 = fadd fast float %1174, %1173
  %1176 = fmul fast float %1175, 0x3F70101000000000
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 512
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1189, label %1181

; <label>:1181                                    ; preds = %1156
  %1182 = add i32 %35, 464
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = add i32 %1184, 0
  %1186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1187 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1186, %dx.types.Handle %82, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  br label %1189

; <label>:1189                                    ; preds = %1181, %1156
  %1190 = phi float [ %1188, %1181 ], [ 1.000000e+00, %1156 ]
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 33554432
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1301, label %1195

; <label>:1195                                    ; preds = %1189
  %1196 = add i32 %35, 240
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 65535
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = lshr i32 %1198, 16
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = add i32 %35, 244
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = and i32 %1205, 65535
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = lshr i32 %1209, 24
  %1211 = uitofp i32 %1210 to float
  %1212 = fmul fast float %1211, 0x3F70101020000000
  %1213 = and i32 %1209, 255
  %1214 = uitofp i32 %1213 to float
  %1215 = fmul fast float %1214, 0x3F70101020000000
  %1216 = lshr i32 %1209, 8
  %1217 = and i32 %1216, 255
  %1218 = uitofp i32 %1217 to float
  %1219 = fmul fast float %1218, 0x3F70101020000000
  %1220 = lshr i32 %1209, 16
  %1221 = and i32 %1220, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = fmul fast float %1222, 0x3F70101020000000
  %1224 = add i32 %35, 236
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = lshr i32 %1226, 24
  %1228 = uitofp i32 %1227 to float
  %1229 = fmul fast float %1228, 0x3F70101020000000
  %1230 = and i32 %1226, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101020000000
  %1233 = lshr i32 %1226, 8
  %1234 = and i32 %1233, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, 0x3F70101020000000
  %1237 = lshr i32 %1226, 16
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1239, 0x3F70101020000000
  %1241 = bitcast float %1165 to i32
  %1242 = ashr i32 %1241, 1
  %1243 = sub nsw i32 1597463174, %1242
  %1244 = bitcast i32 %1243 to float
  %1245 = fmul fast float %1165, 5.000000e-01
  %1246 = fmul fast float %1244, %1244
  %1247 = fmul fast float %1246, %1245
  %1248 = fsub fast float 1.500000e+00, %1247
  %1249 = fmul fast float %1244, %1165
  %1250 = fmul fast float %1249, %1248
  %1251 = bitcast float %1166 to i32
  %1252 = ashr i32 %1251, 1
  %1253 = sub nsw i32 1597463174, %1252
  %1254 = bitcast i32 %1253 to float
  %1255 = fmul fast float %1166, 5.000000e-01
  %1256 = fmul fast float %1254, %1254
  %1257 = fmul fast float %1256, %1255
  %1258 = fsub fast float 1.500000e+00, %1257
  %1259 = fmul fast float %1254, %1166
  %1260 = fmul fast float %1259, %1258
  %1261 = bitcast float %1167 to i32
  %1262 = ashr i32 %1261, 1
  %1263 = sub nsw i32 1597463174, %1262
  %1264 = bitcast i32 %1263 to float
  %1265 = fmul fast float %1167, 5.000000e-01
  %1266 = fmul fast float %1264, %1264
  %1267 = fmul fast float %1266, %1265
  %1268 = fsub fast float 1.500000e+00, %1267
  %1269 = fmul fast float %1264, %1167
  %1270 = fmul fast float %1269, %1268
  %1271 = fsub fast float %1250, %1232
  %1272 = fsub fast float %1260, %1236
  %1273 = fsub fast float %1270, %1240
  %1274 = fmul fast float %1271, %1200
  %1275 = fmul fast float %1272, %1202
  %1276 = fmul fast float %1273, %1207
  %1277 = fadd fast float %1274, %1215
  %1278 = fadd fast float %1275, %1219
  %1279 = fadd fast float %1276, %1223
  %1280 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1281 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1282 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1283 = fmul fast float %1280, %1280
  %1284 = fmul fast float %1281, %1281
  %1285 = fmul fast float %1282, %1282
  %1286 = fsub fast float %1283, %1165
  %1287 = fsub fast float %1284, %1166
  %1288 = fsub fast float %1285, %1167
  %1289 = fmul fast float %1286, %1190
  %1290 = fmul fast float %1287, %1190
  %1291 = fmul fast float %1288, %1190
  %1292 = fadd fast float %1289, %1165
  %1293 = fadd fast float %1290, %1166
  %1294 = fadd fast float %1291, %1167
  %1295 = fadd fast float %1212, %1176
  %1296 = fsub fast float %1295, %1229
  %1297 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1298 = fsub fast float %1297, %1176
  %1299 = fmul fast float %1298, %1190
  %1300 = fadd fast float %1299, %1176
  br label %1354

; <label>:1301                                    ; preds = %1189
  %1302 = and i32 %1192, 134217728
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1338, label %1304

; <label>:1304                                    ; preds = %1301
  %1305 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1306 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1307 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1308 = fadd fast float %1305, -5.000000e-01
  %1309 = fadd fast float %1306, -5.000000e-01
  %1310 = fadd fast float %1307, -5.000000e-01
  %1311 = fmul fast float %1308, %1190
  %1312 = fmul fast float %1309, %1190
  %1313 = fmul fast float %1310, %1190
  %1314 = fadd fast float %1311, 5.000000e-01
  %1315 = fadd fast float %1312, 5.000000e-01
  %1316 = fadd fast float %1313, 5.000000e-01
  %1317 = call float @dx.op.unary.f32(i32 24, float %1165)  ; Sqrt(value)
  %1318 = call float @dx.op.unary.f32(i32 24, float %1166)  ; Sqrt(value)
  %1319 = call float @dx.op.unary.f32(i32 24, float %1167)  ; Sqrt(value)
  %1320 = fmul fast float %1314, 2.000000e+00
  %1321 = fsub fast float 1.000000e+00, %1320
  %1322 = fmul fast float %1321, %1317
  %1323 = fadd fast float %1322, %1320
  %1324 = fmul fast float %1323, %1317
  %1325 = fmul fast float %1315, 2.000000e+00
  %1326 = fsub fast float 1.000000e+00, %1325
  %1327 = fmul fast float %1326, %1318
  %1328 = fadd fast float %1327, %1325
  %1329 = fmul fast float %1328, %1318
  %1330 = fmul fast float %1316, 2.000000e+00
  %1331 = fsub fast float 1.000000e+00, %1330
  %1332 = fmul fast float %1331, %1319
  %1333 = fadd fast float %1332, %1330
  %1334 = fmul fast float %1333, %1319
  %1335 = fmul fast float %1324, %1324
  %1336 = fmul fast float %1329, %1329
  %1337 = fmul fast float %1334, %1334
  br label %1354

; <label>:1338                                    ; preds = %1301
  %1339 = fmul fast float %288, %288
  %1340 = fmul fast float %292, %292
  %1341 = fmul fast float %296, %296
  %1342 = fadd fast float %1339, -1.000000e+00
  %1343 = fadd fast float %1340, -1.000000e+00
  %1344 = fadd fast float %1341, -1.000000e+00
  %1345 = fmul fast float %1190, %1342
  %1346 = fmul fast float %1190, %1343
  %1347 = fmul fast float %1190, %1344
  %1348 = fadd fast float %1345, 1.000000e+00
  %1349 = fadd fast float %1346, 1.000000e+00
  %1350 = fadd fast float %1347, 1.000000e+00
  %1351 = fmul fast float %1348, %1165
  %1352 = fmul fast float %1349, %1166
  %1353 = fmul fast float %1350, %1167
  br label %1354

; <label>:1354                                    ; preds = %1338, %1304, %1195, %1151
  %1355 = phi float [ %1300, %1195 ], [ %1176, %1304 ], [ %1176, %1338 ], [ 0x3FA23C0BE0000000, %1151 ]
  %1356 = phi float [ %1292, %1195 ], [ %1335, %1304 ], [ %1351, %1338 ], [ 1.000000e+00, %1151 ]
  %1357 = phi float [ %1293, %1195 ], [ %1336, %1304 ], [ %1352, %1338 ], [ 1.000000e+00, %1151 ]
  %1358 = phi float [ %1294, %1195 ], [ %1337, %1304 ], [ %1353, %1338 ], [ 1.000000e+00, %1151 ]
  %1359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.i32 %1359, 1
  %1361 = and i32 %1360, 1
  %1362 = icmp ne i32 %1361, 0
  %1363 = add i32 %35, 356
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 32
  %1367 = icmp ne i32 %1366, 0
  %1368 = and i1 %1362, %1367
  %1369 = select i1 %1368, float 1.000000e+00, float %1356
  %1370 = select i1 %1368, float 0x3FD3333340000000, float %1357
  %1371 = select i1 %1368, float 0x3FD3333340000000, float %1358
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = and i32 %1373, 32
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1448, label %1376

; <label>:1376                                    ; preds = %1354
  %1377 = add i32 %35, 108
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = add i32 %35, 396
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = add i32 %1382, 0
  %1384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1384, %dx.types.Handle %81, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = extractvalue %dx.types.ResRet.f32 %1385, 1
  %1388 = extractvalue %dx.types.ResRet.f32 %1385, 2
  %1389 = extractvalue %dx.types.ResRet.f32 %1385, 3
  %1390 = and i32 %1379, 255
  %1391 = uitofp i32 %1390 to float
  %1392 = lshr i32 %1379, 8
  %1393 = and i32 %1392, 255
  %1394 = uitofp i32 %1393 to float
  %1395 = lshr i32 %1379, 16
  %1396 = and i32 %1395, 255
  %1397 = uitofp i32 %1396 to float
  %1398 = fmul fast float %1397, 0x3F70101000000000
  %1399 = fmul fast float %1386, %1391
  %1400 = fadd fast float %1399, %1394
  %1401 = fmul fast float %1400, 0x3F70101000000000
  %1402 = fadd fast float %1387, -5.000000e-01
  %1403 = fadd fast float %1389, -5.000000e-01
  %1404 = fmul fast float %1402, %1398
  %1405 = fmul fast float %1403, %1398
  %1406 = fadd fast float %1404, 5.000000e-01
  %1407 = fadd fast float %1405, 5.000000e-01
  %1408 = fmul fast float %1406, 2.000000e+00
  %1409 = fadd fast float %1408, -1.000000e+00
  %1410 = fmul fast float %1407, 2.000000e+00
  %1411 = fadd fast float %1410, -1.000000e+00
  %1412 = fadd fast float %1409, %1411
  %1413 = fmul fast float %1412, 5.000000e-01
  %1414 = fsub fast float %1409, %1411
  %1415 = fmul fast float %1414, 5.000000e-01
  %1416 = call float @dx.op.unary.f32(i32 6, float %1413)  ; FAbs(value)
  %1417 = fsub fast float 1.000000e+00, %1416
  %1418 = call float @dx.op.unary.f32(i32 6, float %1415)  ; FAbs(value)
  %1419 = fsub fast float %1417, %1418
  %1420 = call float @dx.op.dot3.f32(i32 55, float %1413, float %1415, float %1419, float %1413, float %1415, float %1419)  ; Dot3(ax,ay,az,bx,by,bz)
  %1421 = call float @dx.op.unary.f32(i32 25, float %1420)  ; Rsqrt(value)
  %1422 = fmul fast float %1413, %1421
  %1423 = fmul fast float %1415, %1421
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = and i32 %1425, 67108864
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %1444, label %1428

; <label>:1428                                    ; preds = %1376
  %1429 = add i32 %35, 296
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = and i32 %1431, 65535
  %1433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1432)  ; LegacyF16ToF32(value)
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = and i32 %1435, 65535
  %1437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1436)  ; LegacyF16ToF32(value)
  %1438 = lshr i32 %1431, 16
  %1439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1438)  ; LegacyF16ToF32(value)
  %1440 = fsub fast float %1401, %1439
  %1441 = fmul fast float %1440, %1433
  %1442 = fadd fast float %1441, %1437
  %1443 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  br label %1444

; <label>:1444                                    ; preds = %1428, %1376
  %1445 = phi float [ %1443, %1428 ], [ %1401, %1376 ]
  %1446 = call float @dx.op.dot2.f32(i32 54, float %1422, float %1423, float %980, float %981)  ; Dot2(ax,ay,bx,by)
  %1447 = call float @dx.op.dot2.f32(i32 54, float %1422, float %1423, float %982, float %983)  ; Dot2(ax,ay,bx,by)
  br label %1448

; <label>:1448                                    ; preds = %1444, %1354
  %1449 = phi float [ %1445, %1444 ], [ 0x3FD6666660000000, %1354 ]
  %1450 = phi float [ %1446, %1444 ], [ 0.000000e+00, %1354 ]
  %1451 = phi float [ %1447, %1444 ], [ 0.000000e+00, %1354 ]
  %1452 = phi float [ %1388, %1444 ], [ 1.000000e+00, %1354 ]
  %1453 = add i32 %35, 176
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = lshr i32 %1455, 22
  %1457 = shl nuw nsw i32 %1456, 5
  %1458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1457)  ; LegacyF16ToF32(value)
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 64
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1496, label %1463

; <label>:1463                                    ; preds = %1448
  %1464 = add i32 %35, 412
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %1466, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 131072
  %1472 = icmp eq i32 %1471, 0
  %1473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1468, %dx.types.Handle %81, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1474 = extractvalue %dx.types.ResRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.ResRet.f32 %1473, 1
  %1476 = extractvalue %dx.types.ResRet.f32 %1473, 2
  %1477 = fmul fast float %1474, %276
  %1478 = fmul fast float %1475, %279
  %1479 = fmul fast float %1476, %282
  br i1 %1472, label %1486, label %1480

; <label>:1480                                    ; preds = %1463
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 0
  %1483 = fmul fast float %1482, %1477
  %1484 = fmul fast float %1482, %1478
  %1485 = fmul fast float %1482, %1479
  br label %1486

; <label>:1486                                    ; preds = %1480, %1463
  %1487 = phi float [ %1483, %1480 ], [ %1477, %1463 ]
  %1488 = phi float [ %1484, %1480 ], [ %1478, %1463 ]
  %1489 = phi float [ %1485, %1480 ], [ %1479, %1463 ]
  %1490 = fmul fast float %1487, %1458
  %1491 = select i1 %217, float %1490, float %1487
  %1492 = call float @dx.op.dot3.f32(i32 55, float %1491, float %1488, float %1489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1493 = select i1 %217, float 0.000000e+00, float %1487
  %1494 = select i1 %217, float %1492, float %1488
  %1495 = select i1 %217, float 0.000000e+00, float %1489
  br label %1496

; <label>:1496                                    ; preds = %1486, %1448
  %1497 = phi float [ %1493, %1486 ], [ 0.000000e+00, %1448 ]
  %1498 = phi float [ %1494, %1486 ], [ 0.000000e+00, %1448 ]
  %1499 = phi float [ %1495, %1486 ], [ 0.000000e+00, %1448 ]
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 1024
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1534, label %1504

; <label>:1504                                    ; preds = %1496
  %1505 = add i32 %35, 168
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = fmul fast float %1509, 0x3F70101020000000
  %1511 = lshr i32 %1507, 8
  %1512 = and i32 %1511, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = lshr i32 %1507, 16
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = fmul fast float %1510, %1510
  %1520 = fmul fast float %1514, %1514
  %1521 = fmul fast float %1518, %1518
  %1522 = add i32 %35, 480
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = add i32 %1524, 0
  %1526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1527 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1526, %dx.types.Handle %82, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1528 = extractvalue %dx.types.ResRet.f32 %1527, 0
  %1529 = extractvalue %dx.types.ResRet.f32 %1527, 1
  %1530 = extractvalue %dx.types.ResRet.f32 %1527, 2
  %1531 = fmul fast float %1519, %1528
  %1532 = fmul fast float %1520, %1529
  %1533 = fmul fast float %1521, %1530
  br label %1534

; <label>:1534                                    ; preds = %1504, %1496
  %1535 = phi float [ %1531, %1504 ], [ 0.000000e+00, %1496 ]
  %1536 = phi float [ %1532, %1504 ], [ 0.000000e+00, %1496 ]
  %1537 = phi float [ %1533, %1504 ], [ 0.000000e+00, %1496 ]
  %1538 = fcmp fast ogt float %1535, 0.000000e+00
  %1539 = fcmp fast ogt float %1536, 0.000000e+00
  %1540 = fcmp fast ogt float %1537, 0.000000e+00
  %1541 = call float @dx.op.unary.f32(i32 23, float %1535)  ; Log(value)
  %1542 = call float @dx.op.unary.f32(i32 23, float %1536)  ; Log(value)
  %1543 = call float @dx.op.unary.f32(i32 23, float %1537)  ; Log(value)
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = lshr i32 %1545, 7
  %1547 = and i32 %1546, 32752
  %1548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1547)  ; LegacyF16ToF32(value)
  %1549 = fmul fast float %1541, 0xBFE62E4300000000
  %1550 = fmul fast float %1549, %1548
  %1551 = fmul fast float %1542, 0xBFE62E4300000000
  %1552 = fmul fast float %1551, %1548
  %1553 = fmul fast float %1543, 0xBFE62E4300000000
  %1554 = fmul fast float %1553, %1548
  %1555 = select i1 %1538, float %1550, float 1.270000e+02
  %1556 = select i1 %1539, float %1552, float 1.270000e+02
  %1557 = select i1 %1540, float %1554, float 1.270000e+02
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 26624
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1598, label %1562

; <label>:1562                                    ; preds = %1534
  %1563 = add i32 %35, 496
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = add i32 %1565, 0
  %1567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1567, %dx.types.Handle %82, float %1076, float %1077, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1569 = extractvalue %dx.types.ResRet.f32 %1568, 0
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 1048576
  %1573 = icmp ne i32 %1572, 0
  %1574 = and i32 %1571, 2048
  %1575 = icmp eq i32 %1574, 0
  br i1 %1575, label %1585, label %1576

; <label>:1576                                    ; preds = %1562
  %1577 = extractvalue %dx.types.ResRet.f32 %1568, 3
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = shl i32 %1579, 4
  %1581 = and i32 %1580, 32752
  %1582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1581)  ; LegacyF16ToF32(value)
  %1583 = fmul fast float %1582, %1577
  %1584 = call float @dx.op.binary.f32(i32 35, float %1583, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1585

; <label>:1585                                    ; preds = %1576, %1562
  %1586 = phi float [ %1584, %1576 ], [ 0x3F70101020000000, %1562 ]
  %1587 = and i32 %1571, 16384
  %1588 = icmp eq i32 %1587, 0
  br i1 %1588, label %1598, label %1589

; <label>:1589                                    ; preds = %1585
  %1590 = add i32 %35, 112
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1590, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = lshr i32 %1592, 24
  %1594 = uitofp i32 %1593 to float
  %1595 = fmul fast float %1569, 0x3F70101020000000
  %1596 = select i1 %1573, float 0x3F70101020000000, float %1595
  %1597 = fmul fast float %1596, %1594
  br label %1598

; <label>:1598                                    ; preds = %1589, %1585, %1534
  %1599 = phi float [ %1586, %1589 ], [ %1586, %1585 ], [ 0x3F70101020000000, %1534 ]
  %1600 = phi float [ %1597, %1589 ], [ 0.000000e+00, %1585 ], [ 0.000000e+00, %1534 ]
  %1601 = add i32 %35, 112
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 255
  %1605 = uitofp i32 %1604 to float
  %1606 = lshr i32 %1603, 8
  %1607 = and i32 %1606, 255
  %1608 = uitofp i32 %1607 to float
  %1609 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1610 = fmul fast float %1608, %1609
  %1611 = fadd fast float %1610, %1605
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  br i1 %968, label %1614, label %1649

; <label>:1614                                    ; preds = %1598
  %1615 = fmul fast float %1599, 2.000000e+00
  %1616 = fcmp fast olt float %1555, 1.270000e+02
  %1617 = fcmp fast olt float %1556, 1.270000e+02
  %1618 = fcmp fast olt float %1557, 1.270000e+02
  %1619 = fmul fast float %1555, 0xBFF7154760000000
  %1620 = fmul fast float %1619, %1615
  %1621 = fmul fast float %1556, 0xBFF7154760000000
  %1622 = fmul fast float %1621, %1615
  %1623 = fmul fast float %1557, 0xBFF7154760000000
  %1624 = fmul fast float %1623, %1615
  %1625 = call float @dx.op.unary.f32(i32 21, float %1620)  ; Exp(value)
  %1626 = call float @dx.op.unary.f32(i32 21, float %1622)  ; Exp(value)
  %1627 = call float @dx.op.unary.f32(i32 21, float %1624)  ; Exp(value)
  %1628 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1629 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1630 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  %1631 = fadd fast float %1628, -1.000000e+00
  %1632 = select i1 %1616, float %1631, float -1.000000e+00
  %1633 = fadd fast float %1629, -1.000000e+00
  %1634 = select i1 %1617, float %1633, float -1.000000e+00
  %1635 = fadd fast float %1630, -1.000000e+00
  %1636 = select i1 %1618, float %1635, float -1.000000e+00
  %1637 = fmul fast float %1632, %1149
  %1638 = fmul fast float %1634, %1149
  %1639 = fmul fast float %1636, %1149
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fadd fast float %1638, 1.000000e+00
  %1642 = fadd fast float %1639, 1.000000e+00
  %1643 = fmul fast float %1640, %958
  %1644 = fmul fast float %1641, %959
  %1645 = fmul fast float %1642, %960
  %1646 = fmul fast float %1640, %955
  %1647 = fmul fast float %1641, %956
  %1648 = fmul fast float %1642, %957
  br label %1649

; <label>:1649                                    ; preds = %1614, %1598
  %1650 = phi float [ %1646, %1614 ], [ %955, %1598 ]
  %1651 = phi float [ %1647, %1614 ], [ %956, %1598 ]
  %1652 = phi float [ %1648, %1614 ], [ %957, %1598 ]
  %1653 = phi float [ %1643, %1614 ], [ %958, %1598 ]
  %1654 = phi float [ %1644, %1614 ], [ %959, %1598 ]
  %1655 = phi float [ %1645, %1614 ], [ %960, %1598 ]
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 3
  %1659 = icmp eq i32 %1658, 3
  br i1 %1659, label %1738, label %1660

; <label>:1660                                    ; preds = %1649
  %1661 = and i32 %1657, 16
  %1662 = icmp ne i32 %1661, 0
  %1663 = select i1 %1662, float %1149, float 0.000000e+00
  %1664 = icmp eq i32 %1658, 0
  br i1 %1664, label %1665, label %1693

; <label>:1665                                    ; preds = %1660
  %1666 = and i32 %1657, 64
  %1667 = icmp ne i32 %1666, 0
  %1668 = select i1 %1667, float %1149, float 0.000000e+00
  %1669 = fsub fast float %1369, %1653
  %1670 = fsub fast float %1370, %1654
  %1671 = fsub fast float %1371, %1655
  %1672 = fmul fast float %1663, %1669
  %1673 = fmul fast float %1663, %1670
  %1674 = fmul fast float %1663, %1671
  %1675 = fadd fast float %1672, %1653
  %1676 = fadd fast float %1673, %1654
  %1677 = fadd fast float %1674, %1655
  %1678 = fsub fast float %1355, %961
  %1679 = fmul fast float %1663, %1678
  %1680 = fadd fast float %1679, %961
  %1681 = fsub fast float %1497, %1650
  %1682 = fsub fast float %1498, %1651
  %1683 = fsub fast float %1499, %1652
  %1684 = fmul fast float %1668, %1681
  %1685 = fmul fast float %1668, %1682
  %1686 = fmul fast float %1668, %1683
  %1687 = fadd fast float %1684, %1650
  %1688 = fadd fast float %1685, %1651
  %1689 = fadd fast float %1686, %1652
  %1690 = fsub fast float %1613, %966
  %1691 = fmul fast float %1663, %1690
  %1692 = fadd fast float %1691, %966
  br label %1738

; <label>:1693                                    ; preds = %1660
  %1694 = icmp eq i32 %1658, 1
  br i1 %1694, label %1695, label %1708

; <label>:1695                                    ; preds = %1693
  %1696 = fadd fast float %1369, -1.000000e+00
  %1697 = fadd fast float %1370, -1.000000e+00
  %1698 = fadd fast float %1371, -1.000000e+00
  %1699 = fmul fast float %1663, %1696
  %1700 = fmul fast float %1663, %1697
  %1701 = fmul fast float %1663, %1698
  %1702 = fadd fast float %1699, 1.000000e+00
  %1703 = fadd fast float %1700, 1.000000e+00
  %1704 = fadd fast float %1701, 1.000000e+00
  %1705 = fmul fast float %1702, %1653
  %1706 = fmul fast float %1703, %1654
  %1707 = fmul fast float %1704, %1655
  br label %1738

; <label>:1708                                    ; preds = %1693
  %1709 = icmp eq i32 %1658, 2
  br i1 %1709, label %1710, label %1738

; <label>:1710                                    ; preds = %1708
  %1711 = call float @dx.op.unary.f32(i32 24, float %1369)  ; Sqrt(value)
  %1712 = call float @dx.op.unary.f32(i32 24, float %1370)  ; Sqrt(value)
  %1713 = call float @dx.op.unary.f32(i32 24, float %1371)  ; Sqrt(value)
  %1714 = fadd fast float %1711, -5.000000e-01
  %1715 = fadd fast float %1712, -5.000000e-01
  %1716 = fadd fast float %1713, -5.000000e-01
  %1717 = fmul fast float %1714, %1663
  %1718 = fmul fast float %1715, %1663
  %1719 = fmul fast float %1716, %1663
  %1720 = fadd fast float %1717, 5.000000e-01
  %1721 = fadd fast float %1718, 5.000000e-01
  %1722 = fadd fast float %1719, 5.000000e-01
  %1723 = fmul fast float %1720, 2.000000e+00
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1724, %1653
  %1726 = fadd fast float %1725, %1723
  %1727 = fmul fast float %1726, %1653
  %1728 = fmul fast float %1721, 2.000000e+00
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = fmul fast float %1729, %1654
  %1731 = fadd fast float %1730, %1728
  %1732 = fmul fast float %1731, %1654
  %1733 = fmul fast float %1722, 2.000000e+00
  %1734 = fsub fast float 1.000000e+00, %1733
  %1735 = fmul fast float %1734, %1655
  %1736 = fadd fast float %1735, %1733
  %1737 = fmul fast float %1736, %1655
  br label %1738

; <label>:1738                                    ; preds = %1710, %1708, %1695, %1665, %1649
  %1739 = phi float [ %1650, %1649 ], [ %1650, %1710 ], [ %1650, %1708 ], [ %1650, %1695 ], [ %1687, %1665 ]
  %1740 = phi float [ %1651, %1649 ], [ %1651, %1710 ], [ %1651, %1708 ], [ %1651, %1695 ], [ %1688, %1665 ]
  %1741 = phi float [ %1652, %1649 ], [ %1652, %1710 ], [ %1652, %1708 ], [ %1652, %1695 ], [ %1689, %1665 ]
  %1742 = phi float [ %1653, %1649 ], [ %1727, %1710 ], [ %1653, %1708 ], [ %1705, %1695 ], [ %1675, %1665 ]
  %1743 = phi float [ %1654, %1649 ], [ %1732, %1710 ], [ %1654, %1708 ], [ %1706, %1695 ], [ %1676, %1665 ]
  %1744 = phi float [ %1655, %1649 ], [ %1737, %1710 ], [ %1655, %1708 ], [ %1707, %1695 ], [ %1677, %1665 ]
  %1745 = phi float [ %961, %1649 ], [ %961, %1710 ], [ %961, %1708 ], [ %961, %1695 ], [ %1680, %1665 ]
  %1746 = phi float [ %966, %1649 ], [ %966, %1710 ], [ %966, %1708 ], [ %966, %1695 ], [ %1692, %1665 ]
  %1747 = and i32 %1657, 12
  %1748 = icmp eq i32 %1747, 12
  br i1 %1748, label %1831, label %1749

; <label>:1749                                    ; preds = %1738
  %1750 = and i32 %1657, 2097184
  %1751 = icmp eq i32 %1750, 2097184
  %1752 = select i1 %1751, float %1149, float 0.000000e+00
  %1753 = and i32 %1657, 4194336
  %1754 = icmp eq i32 %1753, 4194336
  %1755 = select i1 %1754, float %1149, float 0.000000e+00
  %1756 = and i32 %1657, 8388640
  %1757 = icmp eq i32 %1756, 8388640
  %1758 = select i1 %1757, float %1149, float 0.000000e+00
  %1759 = and i32 %1657, 16384
  %1760 = icmp ne i32 %1759, 0
  %1761 = select i1 %1760, float %1149, float 0.000000e+00
  %1762 = icmp eq i32 %1747, 0
  br i1 %1762, label %1763, label %1779

; <label>:1763                                    ; preds = %1749
  %1764 = fsub fast float %1450, %953
  %1765 = fsub fast float %1451, %954
  %1766 = fmul fast float %1752, %1764
  %1767 = fmul fast float %1752, %1765
  %1768 = fadd fast float %1766, %953
  %1769 = fadd fast float %1767, %954
  %1770 = fsub fast float %1452, %964
  %1771 = fmul fast float %1755, %1770
  %1772 = fadd fast float %1771, %964
  %1773 = fsub fast float %1449, %963
  %1774 = fmul fast float %1758, %1773
  %1775 = fadd fast float %1774, %963
  %1776 = fsub fast float %1600, %965
  %1777 = fmul fast float %1761, %1776
  %1778 = fadd fast float %1777, %965
  br label %1831

; <label>:1779                                    ; preds = %1749
  %1780 = icmp eq i32 %1747, 4
  br i1 %1780, label %1781, label %1815

; <label>:1781                                    ; preds = %1779
  %1782 = fmul fast float %1752, %1450
  %1783 = fmul fast float %1752, %1451
  %1784 = fadd fast float %1782, %953
  %1785 = fadd fast float %1783, %954
  %1786 = call float @dx.op.binary.f32(i32 36, float %964, float %1452)  ; FMin(a,b)
  %1787 = fsub fast float %1786, %964
  %1788 = fmul fast float %1787, %1755
  %1789 = fadd fast float %1788, %964
  %1790 = fadd fast float %1449, %963
  %1791 = fmul fast float %1790, 0x3FF337FAE0000000
  %1792 = fmul fast float %963, %963
  %1793 = fmul fast float %1449, %1449
  %1794 = fadd fast float %1793, %1792
  %1795 = fmul fast float %1794, 0x3FE5152B00000000
  %1796 = fmul fast float %963, 0xBFCC1F85E0000000
  %1797 = fmul fast float %1796, %1449
  %1798 = fadd fast float %1797, 0xBFE1363700000000
  %1799 = fadd fast float %1798, %1791
  %1800 = fsub fast float %1799, %1795
  %1801 = fmul fast float %1790, 0x3FBA6F0D00000000
  %1802 = fmul fast float %1794, 0x3FD0432880000000
  %1803 = fmul fast float %963, 0xBFEF110800000000
  %1804 = fmul fast float %1803, %1449
  %1805 = fadd fast float %1804, 1.000000e+00
  %1806 = fsub fast float %1805, %1801
  %1807 = fadd fast float %1806, %1802
  %1808 = fdiv fast float %1800, %1807
  %1809 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  %1810 = fsub fast float %1809, %963
  %1811 = fmul fast float %1810, %1758
  %1812 = fadd fast float %1811, %963
  %1813 = fmul fast float %1761, %1600
  %1814 = fadd fast float %1813, %965
  br label %1831

; <label>:1815                                    ; preds = %1779
  %1816 = icmp eq i32 %1747, 8
  br i1 %1816, label %1817, label %1831

; <label>:1817                                    ; preds = %1815
  %1818 = fmul fast float %1752, %1450
  %1819 = fmul fast float %1752, %1451
  %1820 = fadd fast float %1818, %953
  %1821 = fadd fast float %1819, %954
  %1822 = call float @dx.op.binary.f32(i32 36, float %964, float %1452)  ; FMin(a,b)
  %1823 = fsub fast float %1822, %964
  %1824 = fmul fast float %1823, %1755
  %1825 = fadd fast float %1824, %964
  %1826 = fsub fast float %1449, %963
  %1827 = fmul fast float %1758, %1826
  %1828 = fadd fast float %1827, %963
  %1829 = fmul fast float %1761, %1600
  %1830 = fadd fast float %1829, %965
  br label %1831

; <label>:1831                                    ; preds = %1817, %1815, %1781, %1763, %1738, %1148, %967, %952
  %1832 = phi float [ %953, %1738 ], [ %953, %1148 ], [ %953, %952 ], [ %1820, %1817 ], [ %953, %1815 ], [ %1784, %1781 ], [ %1768, %1763 ], [ %953, %967 ]
  %1833 = phi float [ %954, %1738 ], [ %954, %1148 ], [ %954, %952 ], [ %1821, %1817 ], [ %954, %1815 ], [ %1785, %1781 ], [ %1769, %1763 ], [ %954, %967 ]
  %1834 = phi float [ %1739, %1738 ], [ %955, %1148 ], [ %955, %952 ], [ %1739, %1817 ], [ %1739, %1815 ], [ %1739, %1781 ], [ %1739, %1763 ], [ %955, %967 ]
  %1835 = phi float [ %1740, %1738 ], [ %956, %1148 ], [ %956, %952 ], [ %1740, %1817 ], [ %1740, %1815 ], [ %1740, %1781 ], [ %1740, %1763 ], [ %956, %967 ]
  %1836 = phi float [ %1741, %1738 ], [ %957, %1148 ], [ %957, %952 ], [ %1741, %1817 ], [ %1741, %1815 ], [ %1741, %1781 ], [ %1741, %1763 ], [ %957, %967 ]
  %1837 = phi float [ %1742, %1738 ], [ %958, %1148 ], [ %958, %952 ], [ %1742, %1817 ], [ %1742, %1815 ], [ %1742, %1781 ], [ %1742, %1763 ], [ %958, %967 ]
  %1838 = phi float [ %1743, %1738 ], [ %959, %1148 ], [ %959, %952 ], [ %1743, %1817 ], [ %1743, %1815 ], [ %1743, %1781 ], [ %1743, %1763 ], [ %959, %967 ]
  %1839 = phi float [ %1744, %1738 ], [ %960, %1148 ], [ %960, %952 ], [ %1744, %1817 ], [ %1744, %1815 ], [ %1744, %1781 ], [ %1744, %1763 ], [ %960, %967 ]
  %1840 = phi float [ %1745, %1738 ], [ %961, %1148 ], [ %961, %952 ], [ %1745, %1817 ], [ %1745, %1815 ], [ %1745, %1781 ], [ %1745, %1763 ], [ %961, %967 ]
  %1841 = phi float [ %963, %1738 ], [ %963, %1148 ], [ %963, %952 ], [ %1828, %1817 ], [ %963, %1815 ], [ %1812, %1781 ], [ %1775, %1763 ], [ %963, %967 ]
  %1842 = phi float [ %964, %1738 ], [ %964, %1148 ], [ %964, %952 ], [ %1825, %1817 ], [ %964, %1815 ], [ %1789, %1781 ], [ %1772, %1763 ], [ %964, %967 ]
  %1843 = phi float [ %965, %1738 ], [ %965, %1148 ], [ %965, %952 ], [ %1830, %1817 ], [ %965, %1815 ], [ %1814, %1781 ], [ %1778, %1763 ], [ %965, %967 ]
  %1844 = phi float [ %1746, %1738 ], [ %966, %1148 ], [ %966, %952 ], [ %1746, %1817 ], [ %1746, %1815 ], [ %1746, %1781 ], [ %1746, %1763 ], [ %966, %967 ]
  br i1 %403, label %2709, label %1845

; <label>:1845                                    ; preds = %1831
  %1846 = icmp ult i32 %456, 3
  %1847 = add i32 %35, 56
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = add i32 %35, 60
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = or i32 %1852, %1849
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %2709, label %1855

; <label>:1855                                    ; preds = %1845
  %1856 = and i32 %1849, 262144
  %1857 = icmp ne i32 %1856, 0
  %1858 = select i1 %1857, float %41, float 1.000000e+00
  %1859 = select i1 %1857, float %42, float 0.000000e+00
  %1860 = select i1 %1857, float %43, float 0.000000e+00
  %1861 = select i1 %1857, float %44, float 1.000000e+00
  %1862 = select i1 %1857, float %45, float %73
  %1863 = select i1 %1857, float %46, float %74
  %1864 = add i32 %35, 316
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = lshr i32 %1866, 16
  %1868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1867)  ; LegacyF16ToF32(value)
  %1869 = fmul fast float %1868, 0x3F50624DE0000000
  %1870 = add i32 %35, 120
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = lshr i32 %1872, 16
  %1874 = and i32 %1873, 255
  %1875 = lshr i32 %1872, 24
  %1876 = add i32 %35, 324
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = and i32 %1878, 65535
  %1880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1879)  ; LegacyF16ToF32(value)
  %1881 = lshr i32 %1878, 16
  %1882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1881)  ; LegacyF16ToF32(value)
  %1883 = add i32 %35, 64
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = lshr i32 %1885, 22
  %1887 = shl nuw nsw i32 %1886, 5
  %1888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1887)  ; LegacyF16ToF32(value)
  %1889 = shl i32 %1885, 4
  %1890 = and i32 %1889, 32752
  %1891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1890)  ; LegacyF16ToF32(value)
  %1892 = lshr i32 %1885, 7
  %1893 = and i32 %1892, 32752
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 3
  %1897 = fmul fast float %1896, 1.000000e+03
  %1898 = fmul fast float %353, %1897
  %1899 = call float @dx.op.unary.f32(i32 22, float %1898)  ; Frc(value)
  %1900 = fadd fast float %1899, %343
  %1901 = fmul fast float %354, %1897
  %1902 = call float @dx.op.unary.f32(i32 22, float %1901)  ; Frc(value)
  %1903 = fadd fast float %1902, %345
  %1904 = fmul fast float %1869, %1897
  %1905 = call float @dx.op.unary.f32(i32 22, float %1904)  ; Frc(value)
  %1906 = fmul fast float %1905, 0x401921FB60000000
  %1907 = fadd fast float %1906, %1888
  %1908 = call float @dx.op.unary.f32(i32 13, float %1907)  ; Sin(value)
  %1909 = call float @dx.op.unary.f32(i32 12, float %1907)  ; Cos(value)
  %1910 = fsub fast float -0.000000e+00, %1908
  %1911 = fadd fast float %1862, -5.000000e-01
  %1912 = fadd fast float %1863, -5.000000e-01
  %1913 = fmul fast float %1880, %1911
  %1914 = fmul fast float %1882, %1912
  %1915 = fadd fast float %1913, 5.000000e-01
  %1916 = fadd fast float %1914, 5.000000e-01
  %1917 = fmul fast float %1891, %1915
  %1918 = fmul fast float %1894, %1916
  %1919 = fmul fast float %1909, %1917
  %1920 = call float @dx.op.tertiary.f32(i32 46, float %1910, float %1918, float %1919)  ; FMad(a,b,c)
  %1921 = fmul fast float %1908, %1917
  %1922 = call float @dx.op.tertiary.f32(i32 46, float %1909, float %1918, float %1921)  ; FMad(a,b,c)
  %1923 = fadd fast float %1900, %1920
  %1924 = fadd fast float %1903, %1922
  %1925 = icmp ugt i32 %1874, 1
  %1926 = icmp ugt i32 %1872, 33554431
  %1927 = or i1 %1926, %1925
  br i1 %1927, label %1928, label %1953

; <label>:1928                                    ; preds = %1855
  %1929 = add i32 %35, 260
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = lshr i32 %1931, 16
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = fmul fast float %1896, %1933
  %1935 = call float @dx.op.unary.f32(i32 22, float %1934)  ; Frc(value)
  %1936 = mul nuw nsw i32 %1874, %1875
  %1937 = uitofp i32 %1936 to float
  %1938 = fmul fast float %1935, %1937
  %1939 = call float @dx.op.unary.f32(i32 27, float %1938)  ; Round_ni(value)
  %1940 = fptoui float %1939 to i32
  %1941 = urem i32 %1940, %1874
  %1942 = udiv i32 %1940, %1875
  %1943 = call float @dx.op.unary.f32(i32 22, float %1923)  ; Frc(value)
  %1944 = call float @dx.op.unary.f32(i32 22, float %1924)  ; Frc(value)
  %1945 = uitofp i32 %1941 to float
  %1946 = uitofp i32 %1942 to float
  %1947 = fadd fast float %1943, %1945
  %1948 = fadd fast float %1944, %1946
  %1949 = uitofp i32 %1874 to float
  %1950 = uitofp i32 %1875 to float
  %1951 = fdiv fast float %1947, %1949
  %1952 = fdiv fast float %1948, %1950
  br label %1953

; <label>:1953                                    ; preds = %1928, %1855
  %1954 = phi float [ %1951, %1928 ], [ %1923, %1855 ]
  %1955 = phi float [ %1952, %1928 ], [ %1924, %1855 ]
  %1956 = and i32 %1849, 256
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %2004, label %1958

; <label>:1958                                    ; preds = %1953
  %1959 = add i32 %35, 448
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = add i32 %1961, 0
  %1963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1963, %dx.types.Handle %82, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 0
  %1966 = add i32 %35, 132
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = shl i32 %1968, 4
  %1970 = and i32 %1969, 32752
  %1971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1970)  ; LegacyF16ToF32(value)
  %1972 = lshr i32 %1968, 7
  %1973 = and i32 %1972, 32752
  %1974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1973)  ; LegacyF16ToF32(value)
  %1975 = fsub fast float 1.000000e+00, %452
  %1976 = call float @dx.op.binary.f32(i32 35, float %1975, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1977 = bitcast float %452 to i32
  %1978 = sitofp i32 %1977 to float
  %1979 = fadd fast float %1978, 0xC1CFBF8940000000
  %1980 = fmul fast float %1974, %1979
  %1981 = fadd fast float %1980, 0x41CFBF8940000000
  %1982 = fptosi float %1981 to i32
  %1983 = bitcast i32 %1982 to float
  %1984 = bitcast float %1976 to i32
  %1985 = sitofp i32 %1984 to float
  %1986 = fadd fast float %1985, 0xC1CFBF8940000000
  %1987 = fmul fast float %1986, %1974
  %1988 = fadd fast float %1987, 0x41CFBF8940000000
  %1989 = fptosi float %1988 to i32
  %1990 = bitcast i32 %1989 to float
  %1991 = fmul fast float %1983, %1971
  %1992 = fmul fast float %1990, %1971
  %1993 = fsub fast float %1976, %1991
  %1994 = fadd fast float %1992, %1976
  %1995 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1996 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1997 = fsub fast float %1965, %1995
  %1998 = fsub fast float %1996, %1995
  %1999 = bitcast float %1998 to i32
  %2000 = sub nsw i32 2129859010, %1999
  %2001 = bitcast i32 %2000 to float
  %2002 = fmul fast float %2001, %1997
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  br label %2004

; <label>:2004                                    ; preds = %1958, %1953
  %2005 = phi float [ %2003, %1958 ], [ %452, %1953 ]
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %2007, 128
  %2009 = icmp eq i32 %2008, 0
  br i1 %2009, label %2026, label %2010

; <label>:2010                                    ; preds = %2004
  %2011 = add i32 %35, 432
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = add i32 %2013, 0
  %2015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2014, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2016 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2015, %dx.types.Handle %82, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 524288
  %2021 = icmp ne i32 %2020, 0
  %2022 = fcmp fast ogt float %2017, 0x3FE0101020000000
  %2023 = select i1 %2022, float 1.000000e+00, float 0.000000e+00
  %2024 = select i1 %2021, float %2023, float %2017
  %2025 = fmul fast float %2024, %2005
  br label %2026

; <label>:2026                                    ; preds = %2010, %2004
  %2027 = phi float [ %2025, %2010 ], [ %2005, %2004 ]
  %2028 = fcmp fast ult float %2027, 0x3F70101020000000
  br i1 %2028, label %2709, label %2029

; <label>:2029                                    ; preds = %2026
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 16
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2232, label %2034

; <label>:2034                                    ; preds = %2029
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = add i32 %35, 384
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = add i32 %2039, 0
  %2041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2041, %dx.types.Handle %81, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2043 = extractvalue %dx.types.ResRet.f32 %2042, 0
  %2044 = extractvalue %dx.types.ResRet.f32 %2042, 1
  %2045 = extractvalue %dx.types.ResRet.f32 %2042, 2
  %2046 = extractvalue %dx.types.ResRet.f32 %2042, 3
  %2047 = and i32 %2036, 255
  %2048 = uitofp i32 %2047 to float
  %2049 = lshr i32 %2036, 8
  %2050 = and i32 %2049, 255
  %2051 = uitofp i32 %2050 to float
  %2052 = fmul fast float %2046, %2048
  %2053 = fadd fast float %2052, %2051
  %2054 = fmul fast float %2053, 0x3F70101000000000
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = and i32 %2056, 512
  %2058 = icmp eq i32 %2057, 0
  br i1 %2058, label %2067, label %2059

; <label>:2059                                    ; preds = %2034
  %2060 = add i32 %35, 468
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = add i32 %2062, 0
  %2064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2065 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2064, %dx.types.Handle %82, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  br label %2067

; <label>:2067                                    ; preds = %2059, %2034
  %2068 = phi float [ %2066, %2059 ], [ 1.000000e+00, %2034 ]
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = and i32 %2070, 33554432
  %2072 = icmp eq i32 %2071, 0
  br i1 %2072, label %2179, label %2073

; <label>:2073                                    ; preds = %2067
  %2074 = add i32 %35, 256
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 65535
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = lshr i32 %2076, 16
  %2080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2079)  ; LegacyF16ToF32(value)
  %2081 = add i32 %35, 260
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = and i32 %2083, 65535
  %2085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2084)  ; LegacyF16ToF32(value)
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = lshr i32 %2087, 24
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2089, 0x3F70101020000000
  %2091 = and i32 %2087, 255
  %2092 = uitofp i32 %2091 to float
  %2093 = fmul fast float %2092, 0x3F70101020000000
  %2094 = lshr i32 %2087, 8
  %2095 = and i32 %2094, 255
  %2096 = uitofp i32 %2095 to float
  %2097 = fmul fast float %2096, 0x3F70101020000000
  %2098 = lshr i32 %2087, 16
  %2099 = and i32 %2098, 255
  %2100 = uitofp i32 %2099 to float
  %2101 = fmul fast float %2100, 0x3F70101020000000
  %2102 = add i32 %35, 252
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = lshr i32 %2104, 24
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = and i32 %2104, 255
  %2109 = uitofp i32 %2108 to float
  %2110 = fmul fast float %2109, 0x3F70101020000000
  %2111 = lshr i32 %2104, 8
  %2112 = and i32 %2111, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2113, 0x3F70101020000000
  %2115 = lshr i32 %2104, 16
  %2116 = and i32 %2115, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = bitcast float %2043 to i32
  %2120 = ashr i32 %2119, 1
  %2121 = sub nsw i32 1597463174, %2120
  %2122 = bitcast i32 %2121 to float
  %2123 = fmul fast float %2043, 5.000000e-01
  %2124 = fmul fast float %2122, %2122
  %2125 = fmul fast float %2124, %2123
  %2126 = fsub fast float 1.500000e+00, %2125
  %2127 = fmul fast float %2122, %2043
  %2128 = fmul fast float %2127, %2126
  %2129 = bitcast float %2044 to i32
  %2130 = ashr i32 %2129, 1
  %2131 = sub nsw i32 1597463174, %2130
  %2132 = bitcast i32 %2131 to float
  %2133 = fmul fast float %2044, 5.000000e-01
  %2134 = fmul fast float %2132, %2132
  %2135 = fmul fast float %2134, %2133
  %2136 = fsub fast float 1.500000e+00, %2135
  %2137 = fmul fast float %2132, %2044
  %2138 = fmul fast float %2137, %2136
  %2139 = bitcast float %2045 to i32
  %2140 = ashr i32 %2139, 1
  %2141 = sub nsw i32 1597463174, %2140
  %2142 = bitcast i32 %2141 to float
  %2143 = fmul fast float %2045, 5.000000e-01
  %2144 = fmul fast float %2142, %2142
  %2145 = fmul fast float %2144, %2143
  %2146 = fsub fast float 1.500000e+00, %2145
  %2147 = fmul fast float %2142, %2045
  %2148 = fmul fast float %2147, %2146
  %2149 = fsub fast float %2128, %2110
  %2150 = fsub fast float %2138, %2114
  %2151 = fsub fast float %2148, %2118
  %2152 = fmul fast float %2149, %2078
  %2153 = fmul fast float %2150, %2080
  %2154 = fmul fast float %2151, %2085
  %2155 = fadd fast float %2152, %2093
  %2156 = fadd fast float %2153, %2097
  %2157 = fadd fast float %2154, %2101
  %2158 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2159 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2160 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2161 = fmul fast float %2158, %2158
  %2162 = fmul fast float %2159, %2159
  %2163 = fmul fast float %2160, %2160
  %2164 = fsub fast float %2161, %2043
  %2165 = fsub fast float %2162, %2044
  %2166 = fsub fast float %2163, %2045
  %2167 = fmul fast float %2164, %2068
  %2168 = fmul fast float %2165, %2068
  %2169 = fmul fast float %2166, %2068
  %2170 = fadd fast float %2167, %2043
  %2171 = fadd fast float %2168, %2044
  %2172 = fadd fast float %2169, %2045
  %2173 = fadd fast float %2090, %2054
  %2174 = fsub fast float %2173, %2107
  %2175 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2176 = fsub fast float %2175, %2054
  %2177 = fmul fast float %2176, %2068
  %2178 = fadd fast float %2177, %2054
  br label %2232

; <label>:2179                                    ; preds = %2067
  %2180 = and i32 %2070, 134217728
  %2181 = icmp eq i32 %2180, 0
  br i1 %2181, label %2216, label %2182

; <label>:2182                                    ; preds = %2179
  %2183 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2184 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2185 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2186 = fadd fast float %2183, -5.000000e-01
  %2187 = fadd fast float %2184, -5.000000e-01
  %2188 = fadd fast float %2185, -5.000000e-01
  %2189 = fmul fast float %2186, %2068
  %2190 = fmul fast float %2187, %2068
  %2191 = fmul fast float %2188, %2068
  %2192 = fadd fast float %2189, 5.000000e-01
  %2193 = fadd fast float %2190, 5.000000e-01
  %2194 = fadd fast float %2191, 5.000000e-01
  %2195 = call float @dx.op.unary.f32(i32 24, float %2043)  ; Sqrt(value)
  %2196 = call float @dx.op.unary.f32(i32 24, float %2044)  ; Sqrt(value)
  %2197 = call float @dx.op.unary.f32(i32 24, float %2045)  ; Sqrt(value)
  %2198 = fmul fast float %2192, 2.000000e+00
  %2199 = fsub fast float 1.000000e+00, %2198
  %2200 = fmul fast float %2199, %2195
  %2201 = fadd fast float %2200, %2198
  %2202 = fmul fast float %2201, %2195
  %2203 = fmul fast float %2193, 2.000000e+00
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = fmul fast float %2204, %2196
  %2206 = fadd fast float %2205, %2203
  %2207 = fmul fast float %2206, %2196
  %2208 = fmul fast float %2194, 2.000000e+00
  %2209 = fsub fast float 1.000000e+00, %2208
  %2210 = fmul fast float %2209, %2197
  %2211 = fadd fast float %2210, %2208
  %2212 = fmul fast float %2211, %2197
  %2213 = fmul fast float %2202, %2202
  %2214 = fmul fast float %2207, %2207
  %2215 = fmul fast float %2212, %2212
  br label %2232

; <label>:2216                                    ; preds = %2179
  %2217 = fmul fast float %330, %330
  %2218 = fmul fast float %334, %334
  %2219 = fmul fast float %338, %338
  %2220 = fadd fast float %2217, -1.000000e+00
  %2221 = fadd fast float %2218, -1.000000e+00
  %2222 = fadd fast float %2219, -1.000000e+00
  %2223 = fmul fast float %2068, %2220
  %2224 = fmul fast float %2068, %2221
  %2225 = fmul fast float %2068, %2222
  %2226 = fadd fast float %2223, 1.000000e+00
  %2227 = fadd fast float %2224, 1.000000e+00
  %2228 = fadd fast float %2225, 1.000000e+00
  %2229 = fmul fast float %2226, %2043
  %2230 = fmul fast float %2227, %2044
  %2231 = fmul fast float %2228, %2045
  br label %2232

; <label>:2232                                    ; preds = %2216, %2182, %2073, %2029
  %2233 = phi float [ %2178, %2073 ], [ %2054, %2182 ], [ %2054, %2216 ], [ 0x3FA23C0BE0000000, %2029 ]
  %2234 = phi float [ %2170, %2073 ], [ %2213, %2182 ], [ %2229, %2216 ], [ 1.000000e+00, %2029 ]
  %2235 = phi float [ %2171, %2073 ], [ %2214, %2182 ], [ %2230, %2216 ], [ 1.000000e+00, %2029 ]
  %2236 = phi float [ %2172, %2073 ], [ %2215, %2182 ], [ %2231, %2216 ], [ 1.000000e+00, %2029 ]
  %2237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.i32 %2237, 1
  %2239 = and i32 %2238, 1
  %2240 = icmp ne i32 %2239, 0
  %2241 = add i32 %35, 356
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 32
  %2245 = icmp ne i32 %2244, 0
  %2246 = and i1 %2240, %2245
  %2247 = select i1 %2246, float 1.000000e+00, float %2234
  %2248 = select i1 %2246, float 0x3FD3333340000000, float %2235
  %2249 = select i1 %2246, float 0x3FD3333340000000, float %2236
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 32
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2326, label %2254

; <label>:2254                                    ; preds = %2232
  %2255 = add i32 %35, 124
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = add i32 %35, 400
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = add i32 %2260, 0
  %2262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2262, %dx.types.Handle %81, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.ResRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.ResRet.f32 %2263, 2
  %2267 = extractvalue %dx.types.ResRet.f32 %2263, 3
  %2268 = and i32 %2257, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = lshr i32 %2257, 8
  %2271 = and i32 %2270, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = lshr i32 %2257, 16
  %2274 = and i32 %2273, 255
  %2275 = uitofp i32 %2274 to float
  %2276 = fmul fast float %2275, 0x3F70101000000000
  %2277 = fmul fast float %2264, %2269
  %2278 = fadd fast float %2277, %2272
  %2279 = fmul fast float %2278, 0x3F70101000000000
  %2280 = fadd fast float %2265, -5.000000e-01
  %2281 = fadd fast float %2267, -5.000000e-01
  %2282 = fmul fast float %2280, %2276
  %2283 = fmul fast float %2281, %2276
  %2284 = fadd fast float %2282, 5.000000e-01
  %2285 = fadd fast float %2283, 5.000000e-01
  %2286 = fmul fast float %2284, 2.000000e+00
  %2287 = fadd fast float %2286, -1.000000e+00
  %2288 = fmul fast float %2285, 2.000000e+00
  %2289 = fadd fast float %2288, -1.000000e+00
  %2290 = fadd fast float %2287, %2289
  %2291 = fmul fast float %2290, 5.000000e-01
  %2292 = fsub fast float %2287, %2289
  %2293 = fmul fast float %2292, 5.000000e-01
  %2294 = call float @dx.op.unary.f32(i32 6, float %2291)  ; FAbs(value)
  %2295 = fsub fast float 1.000000e+00, %2294
  %2296 = call float @dx.op.unary.f32(i32 6, float %2293)  ; FAbs(value)
  %2297 = fsub fast float %2295, %2296
  %2298 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2293, float %2297, float %2291, float %2293, float %2297)  ; Dot3(ax,ay,az,bx,by,bz)
  %2299 = call float @dx.op.unary.f32(i32 25, float %2298)  ; Rsqrt(value)
  %2300 = fmul fast float %2291, %2299
  %2301 = fmul fast float %2293, %2299
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = and i32 %2303, 67108864
  %2305 = icmp eq i32 %2304, 0
  br i1 %2305, label %2322, label %2306

; <label>:2306                                    ; preds = %2254
  %2307 = add i32 %35, 312
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 65535
  %2311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2310)  ; LegacyF16ToF32(value)
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 65535
  %2315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2314)  ; LegacyF16ToF32(value)
  %2316 = lshr i32 %2309, 16
  %2317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2316)  ; LegacyF16ToF32(value)
  %2318 = fsub fast float %2279, %2317
  %2319 = fmul fast float %2318, %2311
  %2320 = fadd fast float %2319, %2315
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  br label %2322

; <label>:2322                                    ; preds = %2306, %2254
  %2323 = phi float [ %2321, %2306 ], [ %2279, %2254 ]
  %2324 = call float @dx.op.dot2.f32(i32 54, float %2300, float %2301, float %1858, float %1859)  ; Dot2(ax,ay,bx,by)
  %2325 = call float @dx.op.dot2.f32(i32 54, float %2300, float %2301, float %1860, float %1861)  ; Dot2(ax,ay,bx,by)
  br label %2326

; <label>:2326                                    ; preds = %2322, %2232
  %2327 = phi float [ %2323, %2322 ], [ 0x3FD6666660000000, %2232 ]
  %2328 = phi float [ %2324, %2322 ], [ 0.000000e+00, %2232 ]
  %2329 = phi float [ %2325, %2322 ], [ 0.000000e+00, %2232 ]
  %2330 = phi float [ %2266, %2322 ], [ 1.000000e+00, %2232 ]
  %2331 = add i32 %35, 192
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = lshr i32 %2333, 22
  %2335 = shl nuw nsw i32 %2334, 5
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 64
  %2340 = icmp eq i32 %2339, 0
  br i1 %2340, label %2374, label %2341

; <label>:2341                                    ; preds = %2326
  %2342 = add i32 %35, 416
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = add i32 %2344, 0
  %2346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, 131072
  %2350 = icmp eq i32 %2349, 0
  %2351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2346, %dx.types.Handle %81, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2352 = extractvalue %dx.types.ResRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.ResRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.ResRet.f32 %2351, 2
  %2355 = fmul fast float %2352, %318
  %2356 = fmul fast float %2353, %321
  %2357 = fmul fast float %2354, %324
  br i1 %2350, label %2364, label %2358

; <label>:2358                                    ; preds = %2341
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = fmul fast float %2360, %2355
  %2362 = fmul fast float %2360, %2356
  %2363 = fmul fast float %2360, %2357
  br label %2364

; <label>:2364                                    ; preds = %2358, %2341
  %2365 = phi float [ %2361, %2358 ], [ %2355, %2341 ]
  %2366 = phi float [ %2362, %2358 ], [ %2356, %2341 ]
  %2367 = phi float [ %2363, %2358 ], [ %2357, %2341 ]
  %2368 = fmul fast float %2365, %2336
  %2369 = select i1 %217, float %2368, float %2365
  %2370 = call float @dx.op.dot3.f32(i32 55, float %2369, float %2366, float %2367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2371 = select i1 %217, float 0.000000e+00, float %2365
  %2372 = select i1 %217, float %2370, float %2366
  %2373 = select i1 %217, float 0.000000e+00, float %2367
  br label %2374

; <label>:2374                                    ; preds = %2364, %2326
  %2375 = phi float [ %2371, %2364 ], [ 0.000000e+00, %2326 ]
  %2376 = phi float [ %2372, %2364 ], [ 0.000000e+00, %2326 ]
  %2377 = phi float [ %2373, %2364 ], [ 0.000000e+00, %2326 ]
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = and i32 %2379, 1024
  %2381 = icmp eq i32 %2380, 0
  br i1 %2381, label %2412, label %2382

; <label>:2382                                    ; preds = %2374
  %2383 = add i32 %35, 184
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = and i32 %2385, 255
  %2387 = uitofp i32 %2386 to float
  %2388 = fmul fast float %2387, 0x3F70101020000000
  %2389 = lshr i32 %2385, 8
  %2390 = and i32 %2389, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = fmul fast float %2391, 0x3F70101020000000
  %2393 = lshr i32 %2385, 16
  %2394 = and i32 %2393, 255
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2395, 0x3F70101020000000
  %2397 = fmul fast float %2388, %2388
  %2398 = fmul fast float %2392, %2392
  %2399 = fmul fast float %2396, %2396
  %2400 = add i32 %35, 484
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = add i32 %2402, 0
  %2404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2404, %dx.types.Handle %82, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2406 = extractvalue %dx.types.ResRet.f32 %2405, 0
  %2407 = extractvalue %dx.types.ResRet.f32 %2405, 1
  %2408 = extractvalue %dx.types.ResRet.f32 %2405, 2
  %2409 = fmul fast float %2397, %2406
  %2410 = fmul fast float %2398, %2407
  %2411 = fmul fast float %2399, %2408
  br label %2412

; <label>:2412                                    ; preds = %2382, %2374
  %2413 = phi float [ %2409, %2382 ], [ 0.000000e+00, %2374 ]
  %2414 = phi float [ %2410, %2382 ], [ 0.000000e+00, %2374 ]
  %2415 = phi float [ %2411, %2382 ], [ 0.000000e+00, %2374 ]
  %2416 = fcmp fast ogt float %2413, 0.000000e+00
  %2417 = fcmp fast ogt float %2414, 0.000000e+00
  %2418 = fcmp fast ogt float %2415, 0.000000e+00
  %2419 = call float @dx.op.unary.f32(i32 23, float %2413)  ; Log(value)
  %2420 = call float @dx.op.unary.f32(i32 23, float %2414)  ; Log(value)
  %2421 = call float @dx.op.unary.f32(i32 23, float %2415)  ; Log(value)
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = lshr i32 %2423, 7
  %2425 = and i32 %2424, 32752
  %2426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2425)  ; LegacyF16ToF32(value)
  %2427 = fmul fast float %2419, 0xBFE62E4300000000
  %2428 = fmul fast float %2427, %2426
  %2429 = fmul fast float %2420, 0xBFE62E4300000000
  %2430 = fmul fast float %2429, %2426
  %2431 = fmul fast float %2421, 0xBFE62E4300000000
  %2432 = fmul fast float %2431, %2426
  %2433 = select i1 %2416, float %2428, float 1.270000e+02
  %2434 = select i1 %2417, float %2430, float 1.270000e+02
  %2435 = select i1 %2418, float %2432, float 1.270000e+02
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = and i32 %2437, 26624
  %2439 = icmp eq i32 %2438, 0
  br i1 %2439, label %2476, label %2440

; <label>:2440                                    ; preds = %2412
  %2441 = add i32 %35, 500
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2441, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = add i32 %2443, 0
  %2445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2445, %dx.types.Handle %82, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2447 = extractvalue %dx.types.ResRet.f32 %2446, 0
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = and i32 %2449, 1048576
  %2451 = icmp ne i32 %2450, 0
  %2452 = and i32 %2449, 2048
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2463, label %2454

; <label>:2454                                    ; preds = %2440
  %2455 = extractvalue %dx.types.ResRet.f32 %2446, 3
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = shl i32 %2457, 4
  %2459 = and i32 %2458, 32752
  %2460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2459)  ; LegacyF16ToF32(value)
  %2461 = fmul fast float %2460, %2455
  %2462 = call float @dx.op.binary.f32(i32 35, float %2461, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2463

; <label>:2463                                    ; preds = %2454, %2440
  %2464 = phi float [ %2462, %2454 ], [ 0x3F70101020000000, %2440 ]
  %2465 = and i32 %2449, 16384
  %2466 = icmp eq i32 %2465, 0
  br i1 %2466, label %2476, label %2467

; <label>:2467                                    ; preds = %2463
  %2468 = add i32 %35, 128
  %2469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.i32 %2469, 0
  %2471 = lshr i32 %2470, 24
  %2472 = uitofp i32 %2471 to float
  %2473 = fmul fast float %2447, 0x3F70101020000000
  %2474 = select i1 %2451, float 0x3F70101020000000, float %2473
  %2475 = fmul fast float %2474, %2472
  br label %2476

; <label>:2476                                    ; preds = %2467, %2463, %2412
  %2477 = phi float [ %2464, %2467 ], [ %2464, %2463 ], [ 0x3F70101020000000, %2412 ]
  %2478 = phi float [ %2475, %2467 ], [ 0.000000e+00, %2463 ], [ 0.000000e+00, %2412 ]
  %2479 = add i32 %35, 128
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 255
  %2483 = uitofp i32 %2482 to float
  %2484 = lshr i32 %2481, 8
  %2485 = and i32 %2484, 255
  %2486 = uitofp i32 %2485 to float
  %2487 = call float @dx.op.dot3.f32(i32 55, float %2247, float %2248, float %2249, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2488 = fmul fast float %2486, %2487
  %2489 = fadd fast float %2488, %2483
  %2490 = fmul fast float %2489, 0x3F70101020000000
  %2491 = call float @dx.op.unary.f32(i32 7, float %2490)  ; Saturate(value)
  br i1 %1846, label %2492, label %2527

; <label>:2492                                    ; preds = %2476
  %2493 = fmul fast float %2477, 2.000000e+00
  %2494 = fcmp fast olt float %2433, 1.270000e+02
  %2495 = fcmp fast olt float %2434, 1.270000e+02
  %2496 = fcmp fast olt float %2435, 1.270000e+02
  %2497 = fmul fast float %2433, 0xBFF7154760000000
  %2498 = fmul fast float %2497, %2493
  %2499 = fmul fast float %2434, 0xBFF7154760000000
  %2500 = fmul fast float %2499, %2493
  %2501 = fmul fast float %2435, 0xBFF7154760000000
  %2502 = fmul fast float %2501, %2493
  %2503 = call float @dx.op.unary.f32(i32 21, float %2498)  ; Exp(value)
  %2504 = call float @dx.op.unary.f32(i32 21, float %2500)  ; Exp(value)
  %2505 = call float @dx.op.unary.f32(i32 21, float %2502)  ; Exp(value)
  %2506 = call float @dx.op.unary.f32(i32 7, float %2503)  ; Saturate(value)
  %2507 = call float @dx.op.unary.f32(i32 7, float %2504)  ; Saturate(value)
  %2508 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  %2509 = fadd fast float %2506, -1.000000e+00
  %2510 = select i1 %2494, float %2509, float -1.000000e+00
  %2511 = fadd fast float %2507, -1.000000e+00
  %2512 = select i1 %2495, float %2511, float -1.000000e+00
  %2513 = fadd fast float %2508, -1.000000e+00
  %2514 = select i1 %2496, float %2513, float -1.000000e+00
  %2515 = fmul fast float %2510, %2027
  %2516 = fmul fast float %2512, %2027
  %2517 = fmul fast float %2514, %2027
  %2518 = fadd fast float %2515, 1.000000e+00
  %2519 = fadd fast float %2516, 1.000000e+00
  %2520 = fadd fast float %2517, 1.000000e+00
  %2521 = fmul fast float %2518, %1837
  %2522 = fmul fast float %2519, %1838
  %2523 = fmul fast float %2520, %1839
  %2524 = fmul fast float %2518, %1834
  %2525 = fmul fast float %2519, %1835
  %2526 = fmul fast float %2520, %1836
  br label %2527

; <label>:2527                                    ; preds = %2492, %2476
  %2528 = phi float [ %2524, %2492 ], [ %1834, %2476 ]
  %2529 = phi float [ %2525, %2492 ], [ %1835, %2476 ]
  %2530 = phi float [ %2526, %2492 ], [ %1836, %2476 ]
  %2531 = phi float [ %2521, %2492 ], [ %1837, %2476 ]
  %2532 = phi float [ %2522, %2492 ], [ %1838, %2476 ]
  %2533 = phi float [ %2523, %2492 ], [ %1839, %2476 ]
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = and i32 %2535, 3
  %2537 = icmp eq i32 %2536, 3
  br i1 %2537, label %2616, label %2538

; <label>:2538                                    ; preds = %2527
  %2539 = and i32 %2535, 16
  %2540 = icmp ne i32 %2539, 0
  %2541 = select i1 %2540, float %2027, float 0.000000e+00
  %2542 = icmp eq i32 %2536, 0
  br i1 %2542, label %2543, label %2571

; <label>:2543                                    ; preds = %2538
  %2544 = and i32 %2535, 64
  %2545 = icmp ne i32 %2544, 0
  %2546 = select i1 %2545, float %2027, float 0.000000e+00
  %2547 = fsub fast float %2247, %2531
  %2548 = fsub fast float %2248, %2532
  %2549 = fsub fast float %2249, %2533
  %2550 = fmul fast float %2541, %2547
  %2551 = fmul fast float %2541, %2548
  %2552 = fmul fast float %2541, %2549
  %2553 = fadd fast float %2550, %2531
  %2554 = fadd fast float %2551, %2532
  %2555 = fadd fast float %2552, %2533
  %2556 = fsub fast float %2233, %1840
  %2557 = fmul fast float %2541, %2556
  %2558 = fadd fast float %2557, %1840
  %2559 = fsub fast float %2375, %2528
  %2560 = fsub fast float %2376, %2529
  %2561 = fsub fast float %2377, %2530
  %2562 = fmul fast float %2546, %2559
  %2563 = fmul fast float %2546, %2560
  %2564 = fmul fast float %2546, %2561
  %2565 = fadd fast float %2562, %2528
  %2566 = fadd fast float %2563, %2529
  %2567 = fadd fast float %2564, %2530
  %2568 = fsub fast float %2491, %1844
  %2569 = fmul fast float %2541, %2568
  %2570 = fadd fast float %2569, %1844
  br label %2616

; <label>:2571                                    ; preds = %2538
  %2572 = icmp eq i32 %2536, 1
  br i1 %2572, label %2573, label %2586

; <label>:2573                                    ; preds = %2571
  %2574 = fadd fast float %2247, -1.000000e+00
  %2575 = fadd fast float %2248, -1.000000e+00
  %2576 = fadd fast float %2249, -1.000000e+00
  %2577 = fmul fast float %2541, %2574
  %2578 = fmul fast float %2541, %2575
  %2579 = fmul fast float %2541, %2576
  %2580 = fadd fast float %2577, 1.000000e+00
  %2581 = fadd fast float %2578, 1.000000e+00
  %2582 = fadd fast float %2579, 1.000000e+00
  %2583 = fmul fast float %2580, %2531
  %2584 = fmul fast float %2581, %2532
  %2585 = fmul fast float %2582, %2533
  br label %2616

; <label>:2586                                    ; preds = %2571
  %2587 = icmp eq i32 %2536, 2
  br i1 %2587, label %2588, label %2616

; <label>:2588                                    ; preds = %2586
  %2589 = call float @dx.op.unary.f32(i32 24, float %2247)  ; Sqrt(value)
  %2590 = call float @dx.op.unary.f32(i32 24, float %2248)  ; Sqrt(value)
  %2591 = call float @dx.op.unary.f32(i32 24, float %2249)  ; Sqrt(value)
  %2592 = fadd fast float %2589, -5.000000e-01
  %2593 = fadd fast float %2590, -5.000000e-01
  %2594 = fadd fast float %2591, -5.000000e-01
  %2595 = fmul fast float %2592, %2541
  %2596 = fmul fast float %2593, %2541
  %2597 = fmul fast float %2594, %2541
  %2598 = fadd fast float %2595, 5.000000e-01
  %2599 = fadd fast float %2596, 5.000000e-01
  %2600 = fadd fast float %2597, 5.000000e-01
  %2601 = fmul fast float %2598, 2.000000e+00
  %2602 = fsub fast float 1.000000e+00, %2601
  %2603 = fmul fast float %2602, %2531
  %2604 = fadd fast float %2603, %2601
  %2605 = fmul fast float %2604, %2531
  %2606 = fmul fast float %2599, 2.000000e+00
  %2607 = fsub fast float 1.000000e+00, %2606
  %2608 = fmul fast float %2607, %2532
  %2609 = fadd fast float %2608, %2606
  %2610 = fmul fast float %2609, %2532
  %2611 = fmul fast float %2600, 2.000000e+00
  %2612 = fsub fast float 1.000000e+00, %2611
  %2613 = fmul fast float %2612, %2533
  %2614 = fadd fast float %2613, %2611
  %2615 = fmul fast float %2614, %2533
  br label %2616

; <label>:2616                                    ; preds = %2588, %2586, %2573, %2543, %2527
  %2617 = phi float [ %2528, %2527 ], [ %2528, %2588 ], [ %2528, %2586 ], [ %2528, %2573 ], [ %2565, %2543 ]
  %2618 = phi float [ %2529, %2527 ], [ %2529, %2588 ], [ %2529, %2586 ], [ %2529, %2573 ], [ %2566, %2543 ]
  %2619 = phi float [ %2530, %2527 ], [ %2530, %2588 ], [ %2530, %2586 ], [ %2530, %2573 ], [ %2567, %2543 ]
  %2620 = phi float [ %2531, %2527 ], [ %2605, %2588 ], [ %2531, %2586 ], [ %2583, %2573 ], [ %2553, %2543 ]
  %2621 = phi float [ %2532, %2527 ], [ %2610, %2588 ], [ %2532, %2586 ], [ %2584, %2573 ], [ %2554, %2543 ]
  %2622 = phi float [ %2533, %2527 ], [ %2615, %2588 ], [ %2533, %2586 ], [ %2585, %2573 ], [ %2555, %2543 ]
  %2623 = phi float [ %1840, %2527 ], [ %1840, %2588 ], [ %1840, %2586 ], [ %1840, %2573 ], [ %2558, %2543 ]
  %2624 = phi float [ %1844, %2527 ], [ %1844, %2588 ], [ %1844, %2586 ], [ %1844, %2573 ], [ %2570, %2543 ]
  %2625 = and i32 %2535, 12
  %2626 = icmp eq i32 %2625, 12
  br i1 %2626, label %2709, label %2627

; <label>:2627                                    ; preds = %2616
  %2628 = and i32 %2535, 2097184
  %2629 = icmp eq i32 %2628, 2097184
  %2630 = select i1 %2629, float %2027, float 0.000000e+00
  %2631 = and i32 %2535, 4194336
  %2632 = icmp eq i32 %2631, 4194336
  %2633 = select i1 %2632, float %2027, float 0.000000e+00
  %2634 = and i32 %2535, 8388640
  %2635 = icmp eq i32 %2634, 8388640
  %2636 = select i1 %2635, float %2027, float 0.000000e+00
  %2637 = and i32 %2535, 16384
  %2638 = icmp ne i32 %2637, 0
  %2639 = select i1 %2638, float %2027, float 0.000000e+00
  %2640 = icmp eq i32 %2625, 0
  br i1 %2640, label %2641, label %2657

; <label>:2641                                    ; preds = %2627
  %2642 = fsub fast float %2328, %1832
  %2643 = fsub fast float %2329, %1833
  %2644 = fmul fast float %2630, %2642
  %2645 = fmul fast float %2630, %2643
  %2646 = fadd fast float %2644, %1832
  %2647 = fadd fast float %2645, %1833
  %2648 = fsub fast float %2330, %1842
  %2649 = fmul fast float %2633, %2648
  %2650 = fadd fast float %2649, %1842
  %2651 = fsub fast float %2327, %1841
  %2652 = fmul fast float %2636, %2651
  %2653 = fadd fast float %2652, %1841
  %2654 = fsub fast float %2478, %1843
  %2655 = fmul fast float %2639, %2654
  %2656 = fadd fast float %2655, %1843
  br label %2709

; <label>:2657                                    ; preds = %2627
  %2658 = icmp eq i32 %2625, 4
  br i1 %2658, label %2659, label %2693

; <label>:2659                                    ; preds = %2657
  %2660 = fmul fast float %2630, %2328
  %2661 = fmul fast float %2630, %2329
  %2662 = fadd fast float %2660, %1832
  %2663 = fadd fast float %2661, %1833
  %2664 = call float @dx.op.binary.f32(i32 36, float %1842, float %2330)  ; FMin(a,b)
  %2665 = fsub fast float %2664, %1842
  %2666 = fmul fast float %2665, %2633
  %2667 = fadd fast float %2666, %1842
  %2668 = fadd fast float %2327, %1841
  %2669 = fmul fast float %2668, 0x3FF337FAE0000000
  %2670 = fmul fast float %1841, %1841
  %2671 = fmul fast float %2327, %2327
  %2672 = fadd fast float %2671, %2670
  %2673 = fmul fast float %2672, 0x3FE5152B00000000
  %2674 = fmul fast float %1841, 0xBFCC1F85E0000000
  %2675 = fmul fast float %2674, %2327
  %2676 = fadd fast float %2675, 0xBFE1363700000000
  %2677 = fadd fast float %2676, %2669
  %2678 = fsub fast float %2677, %2673
  %2679 = fmul fast float %2668, 0x3FBA6F0D00000000
  %2680 = fmul fast float %2672, 0x3FD0432880000000
  %2681 = fmul fast float %1841, 0xBFEF110800000000
  %2682 = fmul fast float %2681, %2327
  %2683 = fadd fast float %2682, 1.000000e+00
  %2684 = fsub fast float %2683, %2679
  %2685 = fadd fast float %2684, %2680
  %2686 = fdiv fast float %2678, %2685
  %2687 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  %2688 = fsub fast float %2687, %1841
  %2689 = fmul fast float %2688, %2636
  %2690 = fadd fast float %2689, %1841
  %2691 = fmul fast float %2639, %2478
  %2692 = fadd fast float %2691, %1843
  br label %2709

; <label>:2693                                    ; preds = %2657
  %2694 = icmp eq i32 %2625, 8
  br i1 %2694, label %2695, label %2709

; <label>:2695                                    ; preds = %2693
  %2696 = fmul fast float %2630, %2328
  %2697 = fmul fast float %2630, %2329
  %2698 = fadd fast float %2696, %1832
  %2699 = fadd fast float %2697, %1833
  %2700 = call float @dx.op.binary.f32(i32 36, float %1842, float %2330)  ; FMin(a,b)
  %2701 = fsub fast float %2700, %1842
  %2702 = fmul fast float %2701, %2633
  %2703 = fadd fast float %2702, %1842
  %2704 = fsub fast float %2327, %1841
  %2705 = fmul fast float %2636, %2704
  %2706 = fadd fast float %2705, %1841
  %2707 = fmul fast float %2639, %2478
  %2708 = fadd fast float %2707, %1843
  br label %2709

; <label>:2709                                    ; preds = %2695, %2693, %2659, %2641, %2616, %2026, %1845, %1831
  %2710 = phi float [ %1832, %2616 ], [ %1832, %2026 ], [ %1832, %1831 ], [ %2698, %2695 ], [ %1832, %2693 ], [ %2662, %2659 ], [ %2646, %2641 ], [ %1832, %1845 ]
  %2711 = phi float [ %1833, %2616 ], [ %1833, %2026 ], [ %1833, %1831 ], [ %2699, %2695 ], [ %1833, %2693 ], [ %2663, %2659 ], [ %2647, %2641 ], [ %1833, %1845 ]
  %2712 = phi float [ %2617, %2616 ], [ %1834, %2026 ], [ %1834, %1831 ], [ %2617, %2695 ], [ %2617, %2693 ], [ %2617, %2659 ], [ %2617, %2641 ], [ %1834, %1845 ]
  %2713 = phi float [ %2618, %2616 ], [ %1835, %2026 ], [ %1835, %1831 ], [ %2618, %2695 ], [ %2618, %2693 ], [ %2618, %2659 ], [ %2618, %2641 ], [ %1835, %1845 ]
  %2714 = phi float [ %2619, %2616 ], [ %1836, %2026 ], [ %1836, %1831 ], [ %2619, %2695 ], [ %2619, %2693 ], [ %2619, %2659 ], [ %2619, %2641 ], [ %1836, %1845 ]
  %2715 = phi float [ %2620, %2616 ], [ %1837, %2026 ], [ %1837, %1831 ], [ %2620, %2695 ], [ %2620, %2693 ], [ %2620, %2659 ], [ %2620, %2641 ], [ %1837, %1845 ]
  %2716 = phi float [ %2621, %2616 ], [ %1838, %2026 ], [ %1838, %1831 ], [ %2621, %2695 ], [ %2621, %2693 ], [ %2621, %2659 ], [ %2621, %2641 ], [ %1838, %1845 ]
  %2717 = phi float [ %2622, %2616 ], [ %1839, %2026 ], [ %1839, %1831 ], [ %2622, %2695 ], [ %2622, %2693 ], [ %2622, %2659 ], [ %2622, %2641 ], [ %1839, %1845 ]
  %2718 = phi float [ %2623, %2616 ], [ %1840, %2026 ], [ %1840, %1831 ], [ %2623, %2695 ], [ %2623, %2693 ], [ %2623, %2659 ], [ %2623, %2641 ], [ %1840, %1845 ]
  %2719 = phi float [ %1841, %2616 ], [ %1841, %2026 ], [ %1841, %1831 ], [ %2706, %2695 ], [ %1841, %2693 ], [ %2690, %2659 ], [ %2653, %2641 ], [ %1841, %1845 ]
  %2720 = phi float [ %1842, %2616 ], [ %1842, %2026 ], [ %1842, %1831 ], [ %2703, %2695 ], [ %1842, %2693 ], [ %2667, %2659 ], [ %2650, %2641 ], [ %1842, %1845 ]
  %2721 = phi float [ %1843, %2616 ], [ %1843, %2026 ], [ %1843, %1831 ], [ %2708, %2695 ], [ %1843, %2693 ], [ %2692, %2659 ], [ %2656, %2641 ], [ %1843, %1845 ]
  %2722 = phi float [ %2624, %2616 ], [ %1844, %2026 ], [ %1844, %1831 ], [ %2624, %2695 ], [ %2624, %2693 ], [ %2624, %2659 ], [ %2624, %2641 ], [ %1844, %1845 ]
  br i1 %405, label %3587, label %2723

; <label>:2723                                    ; preds = %2709
  %2724 = icmp ult i32 %456, 4
  %2725 = add i32 %35, 72
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = add i32 %35, 76
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = or i32 %2730, %2727
  %2732 = icmp eq i32 %2731, 0
  br i1 %2732, label %3587, label %2733

; <label>:2733                                    ; preds = %2723
  %2734 = and i32 %2727, 262144
  %2735 = icmp ne i32 %2734, 0
  %2736 = select i1 %2735, float %41, float 1.000000e+00
  %2737 = select i1 %2735, float %42, float 0.000000e+00
  %2738 = select i1 %2735, float %43, float 0.000000e+00
  %2739 = select i1 %2735, float %44, float 1.000000e+00
  %2740 = select i1 %2735, float %45, float %73
  %2741 = select i1 %2735, float %46, float %74
  %2742 = add i32 %35, 332
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = lshr i32 %2744, 16
  %2746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2745)  ; LegacyF16ToF32(value)
  %2747 = fmul fast float %2746, 0x3F50624DE0000000
  %2748 = add i32 %35, 136
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = lshr i32 %2750, 16
  %2752 = and i32 %2751, 255
  %2753 = lshr i32 %2750, 24
  %2754 = add i32 %35, 340
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 65535
  %2758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2757)  ; LegacyF16ToF32(value)
  %2759 = lshr i32 %2756, 16
  %2760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2759)  ; LegacyF16ToF32(value)
  %2761 = add i32 %35, 80
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = lshr i32 %2763, 22
  %2765 = shl nuw nsw i32 %2764, 5
  %2766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2765)  ; LegacyF16ToF32(value)
  %2767 = shl i32 %2763, 4
  %2768 = and i32 %2767, 32752
  %2769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2768)  ; LegacyF16ToF32(value)
  %2770 = lshr i32 %2763, 7
  %2771 = and i32 %2770, 32752
  %2772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2771)  ; LegacyF16ToF32(value)
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 3
  %2775 = fmul fast float %2774, 1.000000e+03
  %2776 = fmul fast float %395, %2775
  %2777 = call float @dx.op.unary.f32(i32 22, float %2776)  ; Frc(value)
  %2778 = fadd fast float %2777, %385
  %2779 = fmul fast float %396, %2775
  %2780 = call float @dx.op.unary.f32(i32 22, float %2779)  ; Frc(value)
  %2781 = fadd fast float %2780, %387
  %2782 = fmul fast float %2747, %2775
  %2783 = call float @dx.op.unary.f32(i32 22, float %2782)  ; Frc(value)
  %2784 = fmul fast float %2783, 0x401921FB60000000
  %2785 = fadd fast float %2784, %2766
  %2786 = call float @dx.op.unary.f32(i32 13, float %2785)  ; Sin(value)
  %2787 = call float @dx.op.unary.f32(i32 12, float %2785)  ; Cos(value)
  %2788 = fsub fast float -0.000000e+00, %2786
  %2789 = fadd fast float %2740, -5.000000e-01
  %2790 = fadd fast float %2741, -5.000000e-01
  %2791 = fmul fast float %2758, %2789
  %2792 = fmul fast float %2760, %2790
  %2793 = fadd fast float %2791, 5.000000e-01
  %2794 = fadd fast float %2792, 5.000000e-01
  %2795 = fmul fast float %2769, %2793
  %2796 = fmul fast float %2772, %2794
  %2797 = fmul fast float %2787, %2795
  %2798 = call float @dx.op.tertiary.f32(i32 46, float %2788, float %2796, float %2797)  ; FMad(a,b,c)
  %2799 = fmul fast float %2786, %2795
  %2800 = call float @dx.op.tertiary.f32(i32 46, float %2787, float %2796, float %2799)  ; FMad(a,b,c)
  %2801 = fadd fast float %2778, %2798
  %2802 = fadd fast float %2781, %2800
  %2803 = icmp ugt i32 %2752, 1
  %2804 = icmp ugt i32 %2750, 33554431
  %2805 = or i1 %2804, %2803
  br i1 %2805, label %2806, label %2831

; <label>:2806                                    ; preds = %2733
  %2807 = add i32 %35, 276
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = lshr i32 %2809, 16
  %2811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2810)  ; LegacyF16ToF32(value)
  %2812 = fmul fast float %2774, %2811
  %2813 = call float @dx.op.unary.f32(i32 22, float %2812)  ; Frc(value)
  %2814 = mul nuw nsw i32 %2752, %2753
  %2815 = uitofp i32 %2814 to float
  %2816 = fmul fast float %2813, %2815
  %2817 = call float @dx.op.unary.f32(i32 27, float %2816)  ; Round_ni(value)
  %2818 = fptoui float %2817 to i32
  %2819 = urem i32 %2818, %2752
  %2820 = udiv i32 %2818, %2753
  %2821 = call float @dx.op.unary.f32(i32 22, float %2801)  ; Frc(value)
  %2822 = call float @dx.op.unary.f32(i32 22, float %2802)  ; Frc(value)
  %2823 = uitofp i32 %2819 to float
  %2824 = uitofp i32 %2820 to float
  %2825 = fadd fast float %2821, %2823
  %2826 = fadd fast float %2822, %2824
  %2827 = uitofp i32 %2752 to float
  %2828 = uitofp i32 %2753 to float
  %2829 = fdiv fast float %2825, %2827
  %2830 = fdiv fast float %2826, %2828
  br label %2831

; <label>:2831                                    ; preds = %2806, %2733
  %2832 = phi float [ %2829, %2806 ], [ %2801, %2733 ]
  %2833 = phi float [ %2830, %2806 ], [ %2802, %2733 ]
  %2834 = and i32 %2727, 256
  %2835 = icmp eq i32 %2834, 0
  br i1 %2835, label %2882, label %2836

; <label>:2836                                    ; preds = %2831
  %2837 = add i32 %35, 452
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = add i32 %2839, 0
  %2841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2840, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2842 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2841, %dx.types.Handle %82, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = add i32 %35, 148
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = shl i32 %2846, 4
  %2848 = and i32 %2847, 32752
  %2849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2848)  ; LegacyF16ToF32(value)
  %2850 = lshr i32 %2846, 7
  %2851 = and i32 %2850, 32752
  %2852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2851)  ; LegacyF16ToF32(value)
  %2853 = fsub fast float 1.000000e+00, %451
  %2854 = call float @dx.op.binary.f32(i32 35, float %2853, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2855 = bitcast float %451 to i32
  %2856 = sitofp i32 %2855 to float
  %2857 = fadd fast float %2856, 0xC1CFBF8940000000
  %2858 = fmul fast float %2852, %2857
  %2859 = fadd fast float %2858, 0x41CFBF8940000000
  %2860 = fptosi float %2859 to i32
  %2861 = bitcast i32 %2860 to float
  %2862 = bitcast float %2854 to i32
  %2863 = sitofp i32 %2862 to float
  %2864 = fadd fast float %2863, 0xC1CFBF8940000000
  %2865 = fmul fast float %2864, %2852
  %2866 = fadd fast float %2865, 0x41CFBF8940000000
  %2867 = fptosi float %2866 to i32
  %2868 = bitcast i32 %2867 to float
  %2869 = fmul fast float %2861, %2849
  %2870 = fmul fast float %2868, %2849
  %2871 = fsub fast float %2854, %2869
  %2872 = fadd fast float %2870, %2854
  %2873 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2874 = call float @dx.op.unary.f32(i32 7, float %2872)  ; Saturate(value)
  %2875 = fsub fast float %2843, %2873
  %2876 = fsub fast float %2874, %2873
  %2877 = bitcast float %2876 to i32
  %2878 = sub nsw i32 2129859010, %2877
  %2879 = bitcast i32 %2878 to float
  %2880 = fmul fast float %2879, %2875
  %2881 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  br label %2882

; <label>:2882                                    ; preds = %2836, %2831
  %2883 = phi float [ %2881, %2836 ], [ %451, %2831 ]
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 128
  %2887 = icmp eq i32 %2886, 0
  br i1 %2887, label %2904, label %2888

; <label>:2888                                    ; preds = %2882
  %2889 = add i32 %35, 436
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = add i32 %2891, 0
  %2893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2892, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2894 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2893, %dx.types.Handle %82, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2895 = extractvalue %dx.types.ResRet.f32 %2894, 0
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = and i32 %2897, 524288
  %2899 = icmp ne i32 %2898, 0
  %2900 = fcmp fast ogt float %2895, 0x3FE0101020000000
  %2901 = select i1 %2900, float 1.000000e+00, float 0.000000e+00
  %2902 = select i1 %2899, float %2901, float %2895
  %2903 = fmul fast float %2902, %2883
  br label %2904

; <label>:2904                                    ; preds = %2888, %2882
  %2905 = phi float [ %2903, %2888 ], [ %2883, %2882 ]
  %2906 = fcmp fast ult float %2905, 0x3F70101020000000
  br i1 %2906, label %3587, label %2907

; <label>:2907                                    ; preds = %2904
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = and i32 %2909, 16
  %2911 = icmp eq i32 %2910, 0
  br i1 %2911, label %3110, label %2912

; <label>:2912                                    ; preds = %2907
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = add i32 %35, 388
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = add i32 %2917, 0
  %2919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2919, %dx.types.Handle %81, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2921 = extractvalue %dx.types.ResRet.f32 %2920, 0
  %2922 = extractvalue %dx.types.ResRet.f32 %2920, 1
  %2923 = extractvalue %dx.types.ResRet.f32 %2920, 2
  %2924 = extractvalue %dx.types.ResRet.f32 %2920, 3
  %2925 = and i32 %2914, 255
  %2926 = uitofp i32 %2925 to float
  %2927 = lshr i32 %2914, 8
  %2928 = and i32 %2927, 255
  %2929 = uitofp i32 %2928 to float
  %2930 = fmul fast float %2924, %2926
  %2931 = fadd fast float %2930, %2929
  %2932 = fmul fast float %2931, 0x3F70101000000000
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 512
  %2936 = icmp eq i32 %2935, 0
  br i1 %2936, label %2945, label %2937

; <label>:2937                                    ; preds = %2912
  %2938 = add i32 %35, 472
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = add i32 %2940, 0
  %2942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2943 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2942, %dx.types.Handle %82, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2944 = extractvalue %dx.types.ResRet.f32 %2943, 0
  br label %2945

; <label>:2945                                    ; preds = %2937, %2912
  %2946 = phi float [ %2944, %2937 ], [ 1.000000e+00, %2912 ]
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 33554432
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %3057, label %2951

; <label>:2951                                    ; preds = %2945
  %2952 = add i32 %35, 272
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %2954, 65535
  %2956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2955)  ; LegacyF16ToF32(value)
  %2957 = lshr i32 %2954, 16
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = add i32 %35, 276
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 65535
  %2963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2962)  ; LegacyF16ToF32(value)
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = lshr i32 %2965, 24
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = and i32 %2965, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = fmul fast float %2970, 0x3F70101020000000
  %2972 = lshr i32 %2965, 8
  %2973 = and i32 %2972, 255
  %2974 = uitofp i32 %2973 to float
  %2975 = fmul fast float %2974, 0x3F70101020000000
  %2976 = lshr i32 %2965, 16
  %2977 = and i32 %2976, 255
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2978, 0x3F70101020000000
  %2980 = add i32 %35, 268
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = lshr i32 %2982, 24
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = and i32 %2982, 255
  %2987 = uitofp i32 %2986 to float
  %2988 = fmul fast float %2987, 0x3F70101020000000
  %2989 = lshr i32 %2982, 8
  %2990 = and i32 %2989, 255
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = lshr i32 %2982, 16
  %2994 = and i32 %2993, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = bitcast float %2921 to i32
  %2998 = ashr i32 %2997, 1
  %2999 = sub nsw i32 1597463174, %2998
  %3000 = bitcast i32 %2999 to float
  %3001 = fmul fast float %2921, 5.000000e-01
  %3002 = fmul fast float %3000, %3000
  %3003 = fmul fast float %3002, %3001
  %3004 = fsub fast float 1.500000e+00, %3003
  %3005 = fmul fast float %3000, %2921
  %3006 = fmul fast float %3005, %3004
  %3007 = bitcast float %2922 to i32
  %3008 = ashr i32 %3007, 1
  %3009 = sub nsw i32 1597463174, %3008
  %3010 = bitcast i32 %3009 to float
  %3011 = fmul fast float %2922, 5.000000e-01
  %3012 = fmul fast float %3010, %3010
  %3013 = fmul fast float %3012, %3011
  %3014 = fsub fast float 1.500000e+00, %3013
  %3015 = fmul fast float %3010, %2922
  %3016 = fmul fast float %3015, %3014
  %3017 = bitcast float %2923 to i32
  %3018 = ashr i32 %3017, 1
  %3019 = sub nsw i32 1597463174, %3018
  %3020 = bitcast i32 %3019 to float
  %3021 = fmul fast float %2923, 5.000000e-01
  %3022 = fmul fast float %3020, %3020
  %3023 = fmul fast float %3022, %3021
  %3024 = fsub fast float 1.500000e+00, %3023
  %3025 = fmul fast float %3020, %2923
  %3026 = fmul fast float %3025, %3024
  %3027 = fsub fast float %3006, %2988
  %3028 = fsub fast float %3016, %2992
  %3029 = fsub fast float %3026, %2996
  %3030 = fmul fast float %3027, %2956
  %3031 = fmul fast float %3028, %2958
  %3032 = fmul fast float %3029, %2963
  %3033 = fadd fast float %3030, %2971
  %3034 = fadd fast float %3031, %2975
  %3035 = fadd fast float %3032, %2979
  %3036 = call float @dx.op.unary.f32(i32 7, float %3033)  ; Saturate(value)
  %3037 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3038 = call float @dx.op.unary.f32(i32 7, float %3035)  ; Saturate(value)
  %3039 = fmul fast float %3036, %3036
  %3040 = fmul fast float %3037, %3037
  %3041 = fmul fast float %3038, %3038
  %3042 = fsub fast float %3039, %2921
  %3043 = fsub fast float %3040, %2922
  %3044 = fsub fast float %3041, %2923
  %3045 = fmul fast float %3042, %2946
  %3046 = fmul fast float %3043, %2946
  %3047 = fmul fast float %3044, %2946
  %3048 = fadd fast float %3045, %2921
  %3049 = fadd fast float %3046, %2922
  %3050 = fadd fast float %3047, %2923
  %3051 = fadd fast float %2968, %2932
  %3052 = fsub fast float %3051, %2985
  %3053 = call float @dx.op.unary.f32(i32 7, float %3052)  ; Saturate(value)
  %3054 = fsub fast float %3053, %2932
  %3055 = fmul fast float %3054, %2946
  %3056 = fadd fast float %3055, %2932
  br label %3110

; <label>:3057                                    ; preds = %2945
  %3058 = and i32 %2948, 134217728
  %3059 = icmp eq i32 %3058, 0
  br i1 %3059, label %3094, label %3060

; <label>:3060                                    ; preds = %3057
  %3061 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %3062 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %3063 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %3064 = fadd fast float %3061, -5.000000e-01
  %3065 = fadd fast float %3062, -5.000000e-01
  %3066 = fadd fast float %3063, -5.000000e-01
  %3067 = fmul fast float %3064, %2946
  %3068 = fmul fast float %3065, %2946
  %3069 = fmul fast float %3066, %2946
  %3070 = fadd fast float %3067, 5.000000e-01
  %3071 = fadd fast float %3068, 5.000000e-01
  %3072 = fadd fast float %3069, 5.000000e-01
  %3073 = call float @dx.op.unary.f32(i32 24, float %2921)  ; Sqrt(value)
  %3074 = call float @dx.op.unary.f32(i32 24, float %2922)  ; Sqrt(value)
  %3075 = call float @dx.op.unary.f32(i32 24, float %2923)  ; Sqrt(value)
  %3076 = fmul fast float %3070, 2.000000e+00
  %3077 = fsub fast float 1.000000e+00, %3076
  %3078 = fmul fast float %3077, %3073
  %3079 = fadd fast float %3078, %3076
  %3080 = fmul fast float %3079, %3073
  %3081 = fmul fast float %3071, 2.000000e+00
  %3082 = fsub fast float 1.000000e+00, %3081
  %3083 = fmul fast float %3082, %3074
  %3084 = fadd fast float %3083, %3081
  %3085 = fmul fast float %3084, %3074
  %3086 = fmul fast float %3072, 2.000000e+00
  %3087 = fsub fast float 1.000000e+00, %3086
  %3088 = fmul fast float %3087, %3075
  %3089 = fadd fast float %3088, %3086
  %3090 = fmul fast float %3089, %3075
  %3091 = fmul fast float %3080, %3080
  %3092 = fmul fast float %3085, %3085
  %3093 = fmul fast float %3090, %3090
  br label %3110

; <label>:3094                                    ; preds = %3057
  %3095 = fmul fast float %372, %372
  %3096 = fmul fast float %376, %376
  %3097 = fmul fast float %380, %380
  %3098 = fadd fast float %3095, -1.000000e+00
  %3099 = fadd fast float %3096, -1.000000e+00
  %3100 = fadd fast float %3097, -1.000000e+00
  %3101 = fmul fast float %2946, %3098
  %3102 = fmul fast float %2946, %3099
  %3103 = fmul fast float %2946, %3100
  %3104 = fadd fast float %3101, 1.000000e+00
  %3105 = fadd fast float %3102, 1.000000e+00
  %3106 = fadd fast float %3103, 1.000000e+00
  %3107 = fmul fast float %3104, %2921
  %3108 = fmul fast float %3105, %2922
  %3109 = fmul fast float %3106, %2923
  br label %3110

; <label>:3110                                    ; preds = %3094, %3060, %2951, %2907
  %3111 = phi float [ %3056, %2951 ], [ %2932, %3060 ], [ %2932, %3094 ], [ 0x3FA23C0BE0000000, %2907 ]
  %3112 = phi float [ %3048, %2951 ], [ %3091, %3060 ], [ %3107, %3094 ], [ 1.000000e+00, %2907 ]
  %3113 = phi float [ %3049, %2951 ], [ %3092, %3060 ], [ %3108, %3094 ], [ 1.000000e+00, %2907 ]
  %3114 = phi float [ %3050, %2951 ], [ %3093, %3060 ], [ %3109, %3094 ], [ 1.000000e+00, %2907 ]
  %3115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3116 = extractvalue %dx.types.CBufRet.i32 %3115, 1
  %3117 = and i32 %3116, 1
  %3118 = icmp ne i32 %3117, 0
  %3119 = add i32 %35, 356
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 32
  %3123 = icmp ne i32 %3122, 0
  %3124 = and i1 %3118, %3123
  %3125 = select i1 %3124, float 1.000000e+00, float %3112
  %3126 = select i1 %3124, float 0x3FD3333340000000, float %3113
  %3127 = select i1 %3124, float 0x3FD3333340000000, float %3114
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = and i32 %3129, 32
  %3131 = icmp eq i32 %3130, 0
  br i1 %3131, label %3204, label %3132

; <label>:3132                                    ; preds = %3110
  %3133 = add i32 %35, 140
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %35, 404
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = add i32 %3138, 0
  %3140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3140, %dx.types.Handle %81, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3142 = extractvalue %dx.types.ResRet.f32 %3141, 0
  %3143 = extractvalue %dx.types.ResRet.f32 %3141, 1
  %3144 = extractvalue %dx.types.ResRet.f32 %3141, 2
  %3145 = extractvalue %dx.types.ResRet.f32 %3141, 3
  %3146 = and i32 %3135, 255
  %3147 = uitofp i32 %3146 to float
  %3148 = lshr i32 %3135, 8
  %3149 = and i32 %3148, 255
  %3150 = uitofp i32 %3149 to float
  %3151 = lshr i32 %3135, 16
  %3152 = and i32 %3151, 255
  %3153 = uitofp i32 %3152 to float
  %3154 = fmul fast float %3153, 0x3F70101000000000
  %3155 = fmul fast float %3142, %3147
  %3156 = fadd fast float %3155, %3150
  %3157 = fmul fast float %3156, 0x3F70101000000000
  %3158 = fadd fast float %3143, -5.000000e-01
  %3159 = fadd fast float %3145, -5.000000e-01
  %3160 = fmul fast float %3158, %3154
  %3161 = fmul fast float %3159, %3154
  %3162 = fadd fast float %3160, 5.000000e-01
  %3163 = fadd fast float %3161, 5.000000e-01
  %3164 = fmul fast float %3162, 2.000000e+00
  %3165 = fadd fast float %3164, -1.000000e+00
  %3166 = fmul fast float %3163, 2.000000e+00
  %3167 = fadd fast float %3166, -1.000000e+00
  %3168 = fadd fast float %3165, %3167
  %3169 = fmul fast float %3168, 5.000000e-01
  %3170 = fsub fast float %3165, %3167
  %3171 = fmul fast float %3170, 5.000000e-01
  %3172 = call float @dx.op.unary.f32(i32 6, float %3169)  ; FAbs(value)
  %3173 = fsub fast float 1.000000e+00, %3172
  %3174 = call float @dx.op.unary.f32(i32 6, float %3171)  ; FAbs(value)
  %3175 = fsub fast float %3173, %3174
  %3176 = call float @dx.op.dot3.f32(i32 55, float %3169, float %3171, float %3175, float %3169, float %3171, float %3175)  ; Dot3(ax,ay,az,bx,by,bz)
  %3177 = call float @dx.op.unary.f32(i32 25, float %3176)  ; Rsqrt(value)
  %3178 = fmul fast float %3169, %3177
  %3179 = fmul fast float %3171, %3177
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = and i32 %3181, 67108864
  %3183 = icmp eq i32 %3182, 0
  br i1 %3183, label %3200, label %3184

; <label>:3184                                    ; preds = %3132
  %3185 = add i32 %35, 328
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = and i32 %3187, 65535
  %3189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3188)  ; LegacyF16ToF32(value)
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 65535
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = lshr i32 %3187, 16
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = fsub fast float %3157, %3195
  %3197 = fmul fast float %3196, %3189
  %3198 = fadd fast float %3197, %3193
  %3199 = call float @dx.op.unary.f32(i32 7, float %3198)  ; Saturate(value)
  br label %3200

; <label>:3200                                    ; preds = %3184, %3132
  %3201 = phi float [ %3199, %3184 ], [ %3157, %3132 ]
  %3202 = call float @dx.op.dot2.f32(i32 54, float %3178, float %3179, float %2736, float %2737)  ; Dot2(ax,ay,bx,by)
  %3203 = call float @dx.op.dot2.f32(i32 54, float %3178, float %3179, float %2738, float %2739)  ; Dot2(ax,ay,bx,by)
  br label %3204

; <label>:3204                                    ; preds = %3200, %3110
  %3205 = phi float [ %3201, %3200 ], [ 0x3FD6666660000000, %3110 ]
  %3206 = phi float [ %3202, %3200 ], [ 0.000000e+00, %3110 ]
  %3207 = phi float [ %3203, %3200 ], [ 0.000000e+00, %3110 ]
  %3208 = phi float [ %3144, %3200 ], [ 1.000000e+00, %3110 ]
  %3209 = add i32 %35, 208
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3209, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = lshr i32 %3211, 22
  %3213 = shl nuw nsw i32 %3212, 5
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = and i32 %3216, 64
  %3218 = icmp eq i32 %3217, 0
  br i1 %3218, label %3252, label %3219

; <label>:3219                                    ; preds = %3204
  %3220 = add i32 %35, 420
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = add i32 %3222, 0
  %3224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = and i32 %3226, 131072
  %3228 = icmp eq i32 %3227, 0
  %3229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3224, %dx.types.Handle %81, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3230 = extractvalue %dx.types.ResRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.ResRet.f32 %3229, 1
  %3232 = extractvalue %dx.types.ResRet.f32 %3229, 2
  %3233 = fmul fast float %3230, %360
  %3234 = fmul fast float %3231, %363
  %3235 = fmul fast float %3232, %366
  br i1 %3228, label %3242, label %3236

; <label>:3236                                    ; preds = %3219
  %3237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3238 = extractvalue %dx.types.CBufRet.f32 %3237, 0
  %3239 = fmul fast float %3238, %3233
  %3240 = fmul fast float %3238, %3234
  %3241 = fmul fast float %3238, %3235
  br label %3242

; <label>:3242                                    ; preds = %3236, %3219
  %3243 = phi float [ %3239, %3236 ], [ %3233, %3219 ]
  %3244 = phi float [ %3240, %3236 ], [ %3234, %3219 ]
  %3245 = phi float [ %3241, %3236 ], [ %3235, %3219 ]
  %3246 = fmul fast float %3243, %3214
  %3247 = select i1 %217, float %3246, float %3243
  %3248 = call float @dx.op.dot3.f32(i32 55, float %3247, float %3244, float %3245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3249 = select i1 %217, float 0.000000e+00, float %3243
  %3250 = select i1 %217, float %3248, float %3244
  %3251 = select i1 %217, float 0.000000e+00, float %3245
  br label %3252

; <label>:3252                                    ; preds = %3242, %3204
  %3253 = phi float [ %3249, %3242 ], [ 0.000000e+00, %3204 ]
  %3254 = phi float [ %3250, %3242 ], [ 0.000000e+00, %3204 ]
  %3255 = phi float [ %3251, %3242 ], [ 0.000000e+00, %3204 ]
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = and i32 %3257, 1024
  %3259 = icmp eq i32 %3258, 0
  br i1 %3259, label %3290, label %3260

; <label>:3260                                    ; preds = %3252
  %3261 = add i32 %35, 200
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = and i32 %3263, 255
  %3265 = uitofp i32 %3264 to float
  %3266 = fmul fast float %3265, 0x3F70101020000000
  %3267 = lshr i32 %3263, 8
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = fmul fast float %3269, 0x3F70101020000000
  %3271 = lshr i32 %3263, 16
  %3272 = and i32 %3271, 255
  %3273 = uitofp i32 %3272 to float
  %3274 = fmul fast float %3273, 0x3F70101020000000
  %3275 = fmul fast float %3266, %3266
  %3276 = fmul fast float %3270, %3270
  %3277 = fmul fast float %3274, %3274
  %3278 = add i32 %35, 488
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = add i32 %3280, 0
  %3282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3283 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3282, %dx.types.Handle %82, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3284 = extractvalue %dx.types.ResRet.f32 %3283, 0
  %3285 = extractvalue %dx.types.ResRet.f32 %3283, 1
  %3286 = extractvalue %dx.types.ResRet.f32 %3283, 2
  %3287 = fmul fast float %3275, %3284
  %3288 = fmul fast float %3276, %3285
  %3289 = fmul fast float %3277, %3286
  br label %3290

; <label>:3290                                    ; preds = %3260, %3252
  %3291 = phi float [ %3287, %3260 ], [ 0.000000e+00, %3252 ]
  %3292 = phi float [ %3288, %3260 ], [ 0.000000e+00, %3252 ]
  %3293 = phi float [ %3289, %3260 ], [ 0.000000e+00, %3252 ]
  %3294 = fcmp fast ogt float %3291, 0.000000e+00
  %3295 = fcmp fast ogt float %3292, 0.000000e+00
  %3296 = fcmp fast ogt float %3293, 0.000000e+00
  %3297 = call float @dx.op.unary.f32(i32 23, float %3291)  ; Log(value)
  %3298 = call float @dx.op.unary.f32(i32 23, float %3292)  ; Log(value)
  %3299 = call float @dx.op.unary.f32(i32 23, float %3293)  ; Log(value)
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3209, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = lshr i32 %3301, 7
  %3303 = and i32 %3302, 32752
  %3304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3303)  ; LegacyF16ToF32(value)
  %3305 = fmul fast float %3297, 0xBFE62E4300000000
  %3306 = fmul fast float %3305, %3304
  %3307 = fmul fast float %3298, 0xBFE62E4300000000
  %3308 = fmul fast float %3307, %3304
  %3309 = fmul fast float %3299, 0xBFE62E4300000000
  %3310 = fmul fast float %3309, %3304
  %3311 = select i1 %3294, float %3306, float 1.270000e+02
  %3312 = select i1 %3295, float %3308, float 1.270000e+02
  %3313 = select i1 %3296, float %3310, float 1.270000e+02
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = and i32 %3315, 26624
  %3317 = icmp eq i32 %3316, 0
  br i1 %3317, label %3354, label %3318

; <label>:3318                                    ; preds = %3290
  %3319 = add i32 %35, 504
  %3320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.i32 %3320, 0
  %3322 = add i32 %3321, 0
  %3323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3324 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3323, %dx.types.Handle %82, float %2832, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3325 = extractvalue %dx.types.ResRet.f32 %3324, 0
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = and i32 %3327, 1048576
  %3329 = icmp ne i32 %3328, 0
  %3330 = and i32 %3327, 2048
  %3331 = icmp eq i32 %3330, 0
  br i1 %3331, label %3341, label %3332

; <label>:3332                                    ; preds = %3318
  %3333 = extractvalue %dx.types.ResRet.f32 %3324, 3
  %3334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3209, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.i32 %3334, 0
  %3336 = shl i32 %3335, 4
  %3337 = and i32 %3336, 32752
  %3338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3337)  ; LegacyF16ToF32(value)
  %3339 = fmul fast float %3338, %3333
  %3340 = call float @dx.op.binary.f32(i32 35, float %3339, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3341

; <label>:3341                                    ; preds = %3332, %3318
  %3342 = phi float [ %3340, %3332 ], [ 0x3F70101020000000, %3318 ]
  %3343 = and i32 %3327, 16384
  %3344 = icmp eq i32 %3343, 0
  br i1 %3344, label %3354, label %3345

; <label>:3345                                    ; preds = %3341
  %3346 = add i32 %35, 144
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = lshr i32 %3348, 24
  %3350 = uitofp i32 %3349 to float
  %3351 = fmul fast float %3325, 0x3F70101020000000
  %3352 = select i1 %3329, float 0x3F70101020000000, float %3351
  %3353 = fmul fast float %3352, %3350
  br label %3354

; <label>:3354                                    ; preds = %3345, %3341, %3290
  %3355 = phi float [ %3342, %3345 ], [ %3342, %3341 ], [ 0x3F70101020000000, %3290 ]
  %3356 = phi float [ %3353, %3345 ], [ 0.000000e+00, %3341 ], [ 0.000000e+00, %3290 ]
  %3357 = add i32 %35, 144
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 255
  %3361 = uitofp i32 %3360 to float
  %3362 = lshr i32 %3359, 8
  %3363 = and i32 %3362, 255
  %3364 = uitofp i32 %3363 to float
  %3365 = call float @dx.op.dot3.f32(i32 55, float %3125, float %3126, float %3127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3366 = fmul fast float %3364, %3365
  %3367 = fadd fast float %3366, %3361
  %3368 = fmul fast float %3367, 0x3F70101020000000
  %3369 = call float @dx.op.unary.f32(i32 7, float %3368)  ; Saturate(value)
  br i1 %2724, label %3370, label %3405

; <label>:3370                                    ; preds = %3354
  %3371 = fmul fast float %3355, 2.000000e+00
  %3372 = fcmp fast olt float %3311, 1.270000e+02
  %3373 = fcmp fast olt float %3312, 1.270000e+02
  %3374 = fcmp fast olt float %3313, 1.270000e+02
  %3375 = fmul fast float %3311, 0xBFF7154760000000
  %3376 = fmul fast float %3375, %3371
  %3377 = fmul fast float %3312, 0xBFF7154760000000
  %3378 = fmul fast float %3377, %3371
  %3379 = fmul fast float %3313, 0xBFF7154760000000
  %3380 = fmul fast float %3379, %3371
  %3381 = call float @dx.op.unary.f32(i32 21, float %3376)  ; Exp(value)
  %3382 = call float @dx.op.unary.f32(i32 21, float %3378)  ; Exp(value)
  %3383 = call float @dx.op.unary.f32(i32 21, float %3380)  ; Exp(value)
  %3384 = call float @dx.op.unary.f32(i32 7, float %3381)  ; Saturate(value)
  %3385 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3386 = call float @dx.op.unary.f32(i32 7, float %3383)  ; Saturate(value)
  %3387 = fadd fast float %3384, -1.000000e+00
  %3388 = select i1 %3372, float %3387, float -1.000000e+00
  %3389 = fadd fast float %3385, -1.000000e+00
  %3390 = select i1 %3373, float %3389, float -1.000000e+00
  %3391 = fadd fast float %3386, -1.000000e+00
  %3392 = select i1 %3374, float %3391, float -1.000000e+00
  %3393 = fmul fast float %3388, %2905
  %3394 = fmul fast float %3390, %2905
  %3395 = fmul fast float %3392, %2905
  %3396 = fadd fast float %3393, 1.000000e+00
  %3397 = fadd fast float %3394, 1.000000e+00
  %3398 = fadd fast float %3395, 1.000000e+00
  %3399 = fmul fast float %3396, %2715
  %3400 = fmul fast float %3397, %2716
  %3401 = fmul fast float %3398, %2717
  %3402 = fmul fast float %3396, %2712
  %3403 = fmul fast float %3397, %2713
  %3404 = fmul fast float %3398, %2714
  br label %3405

; <label>:3405                                    ; preds = %3370, %3354
  %3406 = phi float [ %3402, %3370 ], [ %2712, %3354 ]
  %3407 = phi float [ %3403, %3370 ], [ %2713, %3354 ]
  %3408 = phi float [ %3404, %3370 ], [ %2714, %3354 ]
  %3409 = phi float [ %3399, %3370 ], [ %2715, %3354 ]
  %3410 = phi float [ %3400, %3370 ], [ %2716, %3354 ]
  %3411 = phi float [ %3401, %3370 ], [ %2717, %3354 ]
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = and i32 %3413, 3
  %3415 = icmp eq i32 %3414, 3
  br i1 %3415, label %3494, label %3416

; <label>:3416                                    ; preds = %3405
  %3417 = and i32 %3413, 16
  %3418 = icmp ne i32 %3417, 0
  %3419 = select i1 %3418, float %2905, float 0.000000e+00
  %3420 = icmp eq i32 %3414, 0
  br i1 %3420, label %3421, label %3449

; <label>:3421                                    ; preds = %3416
  %3422 = and i32 %3413, 64
  %3423 = icmp ne i32 %3422, 0
  %3424 = select i1 %3423, float %2905, float 0.000000e+00
  %3425 = fsub fast float %3125, %3409
  %3426 = fsub fast float %3126, %3410
  %3427 = fsub fast float %3127, %3411
  %3428 = fmul fast float %3419, %3425
  %3429 = fmul fast float %3419, %3426
  %3430 = fmul fast float %3419, %3427
  %3431 = fadd fast float %3428, %3409
  %3432 = fadd fast float %3429, %3410
  %3433 = fadd fast float %3430, %3411
  %3434 = fsub fast float %3111, %2718
  %3435 = fmul fast float %3419, %3434
  %3436 = fadd fast float %3435, %2718
  %3437 = fsub fast float %3253, %3406
  %3438 = fsub fast float %3254, %3407
  %3439 = fsub fast float %3255, %3408
  %3440 = fmul fast float %3424, %3437
  %3441 = fmul fast float %3424, %3438
  %3442 = fmul fast float %3424, %3439
  %3443 = fadd fast float %3440, %3406
  %3444 = fadd fast float %3441, %3407
  %3445 = fadd fast float %3442, %3408
  %3446 = fsub fast float %3369, %2722
  %3447 = fmul fast float %3419, %3446
  %3448 = fadd fast float %3447, %2722
  br label %3494

; <label>:3449                                    ; preds = %3416
  %3450 = icmp eq i32 %3414, 1
  br i1 %3450, label %3451, label %3464

; <label>:3451                                    ; preds = %3449
  %3452 = fadd fast float %3125, -1.000000e+00
  %3453 = fadd fast float %3126, -1.000000e+00
  %3454 = fadd fast float %3127, -1.000000e+00
  %3455 = fmul fast float %3419, %3452
  %3456 = fmul fast float %3419, %3453
  %3457 = fmul fast float %3419, %3454
  %3458 = fadd fast float %3455, 1.000000e+00
  %3459 = fadd fast float %3456, 1.000000e+00
  %3460 = fadd fast float %3457, 1.000000e+00
  %3461 = fmul fast float %3458, %3409
  %3462 = fmul fast float %3459, %3410
  %3463 = fmul fast float %3460, %3411
  br label %3494

; <label>:3464                                    ; preds = %3449
  %3465 = icmp eq i32 %3414, 2
  br i1 %3465, label %3466, label %3494

; <label>:3466                                    ; preds = %3464
  %3467 = call float @dx.op.unary.f32(i32 24, float %3125)  ; Sqrt(value)
  %3468 = call float @dx.op.unary.f32(i32 24, float %3126)  ; Sqrt(value)
  %3469 = call float @dx.op.unary.f32(i32 24, float %3127)  ; Sqrt(value)
  %3470 = fadd fast float %3467, -5.000000e-01
  %3471 = fadd fast float %3468, -5.000000e-01
  %3472 = fadd fast float %3469, -5.000000e-01
  %3473 = fmul fast float %3470, %3419
  %3474 = fmul fast float %3471, %3419
  %3475 = fmul fast float %3472, %3419
  %3476 = fadd fast float %3473, 5.000000e-01
  %3477 = fadd fast float %3474, 5.000000e-01
  %3478 = fadd fast float %3475, 5.000000e-01
  %3479 = fmul fast float %3476, 2.000000e+00
  %3480 = fsub fast float 1.000000e+00, %3479
  %3481 = fmul fast float %3480, %3409
  %3482 = fadd fast float %3481, %3479
  %3483 = fmul fast float %3482, %3409
  %3484 = fmul fast float %3477, 2.000000e+00
  %3485 = fsub fast float 1.000000e+00, %3484
  %3486 = fmul fast float %3485, %3410
  %3487 = fadd fast float %3486, %3484
  %3488 = fmul fast float %3487, %3410
  %3489 = fmul fast float %3478, 2.000000e+00
  %3490 = fsub fast float 1.000000e+00, %3489
  %3491 = fmul fast float %3490, %3411
  %3492 = fadd fast float %3491, %3489
  %3493 = fmul fast float %3492, %3411
  br label %3494

; <label>:3494                                    ; preds = %3466, %3464, %3451, %3421, %3405
  %3495 = phi float [ %3406, %3405 ], [ %3406, %3466 ], [ %3406, %3464 ], [ %3406, %3451 ], [ %3443, %3421 ]
  %3496 = phi float [ %3407, %3405 ], [ %3407, %3466 ], [ %3407, %3464 ], [ %3407, %3451 ], [ %3444, %3421 ]
  %3497 = phi float [ %3408, %3405 ], [ %3408, %3466 ], [ %3408, %3464 ], [ %3408, %3451 ], [ %3445, %3421 ]
  %3498 = phi float [ %3409, %3405 ], [ %3483, %3466 ], [ %3409, %3464 ], [ %3461, %3451 ], [ %3431, %3421 ]
  %3499 = phi float [ %3410, %3405 ], [ %3488, %3466 ], [ %3410, %3464 ], [ %3462, %3451 ], [ %3432, %3421 ]
  %3500 = phi float [ %3411, %3405 ], [ %3493, %3466 ], [ %3411, %3464 ], [ %3463, %3451 ], [ %3433, %3421 ]
  %3501 = phi float [ %2718, %3405 ], [ %2718, %3466 ], [ %2718, %3464 ], [ %2718, %3451 ], [ %3436, %3421 ]
  %3502 = phi float [ %2722, %3405 ], [ %2722, %3466 ], [ %2722, %3464 ], [ %2722, %3451 ], [ %3448, %3421 ]
  %3503 = and i32 %3413, 12
  %3504 = icmp eq i32 %3503, 12
  br i1 %3504, label %3587, label %3505

; <label>:3505                                    ; preds = %3494
  %3506 = and i32 %3413, 2097184
  %3507 = icmp eq i32 %3506, 2097184
  %3508 = select i1 %3507, float %2905, float 0.000000e+00
  %3509 = and i32 %3413, 4194336
  %3510 = icmp eq i32 %3509, 4194336
  %3511 = select i1 %3510, float %2905, float 0.000000e+00
  %3512 = and i32 %3413, 8388640
  %3513 = icmp eq i32 %3512, 8388640
  %3514 = select i1 %3513, float %2905, float 0.000000e+00
  %3515 = and i32 %3413, 16384
  %3516 = icmp ne i32 %3515, 0
  %3517 = select i1 %3516, float %2905, float 0.000000e+00
  %3518 = icmp eq i32 %3503, 0
  br i1 %3518, label %3519, label %3535

; <label>:3519                                    ; preds = %3505
  %3520 = fsub fast float %3206, %2710
  %3521 = fsub fast float %3207, %2711
  %3522 = fmul fast float %3508, %3520
  %3523 = fmul fast float %3508, %3521
  %3524 = fadd fast float %3522, %2710
  %3525 = fadd fast float %3523, %2711
  %3526 = fsub fast float %3208, %2720
  %3527 = fmul fast float %3511, %3526
  %3528 = fadd fast float %3527, %2720
  %3529 = fsub fast float %3205, %2719
  %3530 = fmul fast float %3514, %3529
  %3531 = fadd fast float %3530, %2719
  %3532 = fsub fast float %3356, %2721
  %3533 = fmul fast float %3517, %3532
  %3534 = fadd fast float %3533, %2721
  br label %3587

; <label>:3535                                    ; preds = %3505
  %3536 = icmp eq i32 %3503, 4
  br i1 %3536, label %3537, label %3571

; <label>:3537                                    ; preds = %3535
  %3538 = fmul fast float %3508, %3206
  %3539 = fmul fast float %3508, %3207
  %3540 = fadd fast float %3538, %2710
  %3541 = fadd fast float %3539, %2711
  %3542 = call float @dx.op.binary.f32(i32 36, float %2720, float %3208)  ; FMin(a,b)
  %3543 = fsub fast float %3542, %2720
  %3544 = fmul fast float %3543, %3511
  %3545 = fadd fast float %3544, %2720
  %3546 = fadd fast float %3205, %2719
  %3547 = fmul fast float %3546, 0x3FF337FAE0000000
  %3548 = fmul fast float %2719, %2719
  %3549 = fmul fast float %3205, %3205
  %3550 = fadd fast float %3549, %3548
  %3551 = fmul fast float %3550, 0x3FE5152B00000000
  %3552 = fmul fast float %2719, 0xBFCC1F85E0000000
  %3553 = fmul fast float %3552, %3205
  %3554 = fadd fast float %3553, 0xBFE1363700000000
  %3555 = fadd fast float %3554, %3547
  %3556 = fsub fast float %3555, %3551
  %3557 = fmul fast float %3546, 0x3FBA6F0D00000000
  %3558 = fmul fast float %3550, 0x3FD0432880000000
  %3559 = fmul fast float %2719, 0xBFEF110800000000
  %3560 = fmul fast float %3559, %3205
  %3561 = fadd fast float %3560, 1.000000e+00
  %3562 = fsub fast float %3561, %3557
  %3563 = fadd fast float %3562, %3558
  %3564 = fdiv fast float %3556, %3563
  %3565 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3566 = fsub fast float %3565, %2719
  %3567 = fmul fast float %3566, %3514
  %3568 = fadd fast float %3567, %2719
  %3569 = fmul fast float %3517, %3356
  %3570 = fadd fast float %3569, %2721
  br label %3587

; <label>:3571                                    ; preds = %3535
  %3572 = icmp eq i32 %3503, 8
  br i1 %3572, label %3573, label %3587

; <label>:3573                                    ; preds = %3571
  %3574 = fmul fast float %3508, %3206
  %3575 = fmul fast float %3508, %3207
  %3576 = fadd fast float %3574, %2710
  %3577 = fadd fast float %3575, %2711
  %3578 = call float @dx.op.binary.f32(i32 36, float %2720, float %3208)  ; FMin(a,b)
  %3579 = fsub fast float %3578, %2720
  %3580 = fmul fast float %3579, %3511
  %3581 = fadd fast float %3580, %2720
  %3582 = fsub fast float %3205, %2719
  %3583 = fmul fast float %3514, %3582
  %3584 = fadd fast float %3583, %2719
  %3585 = fmul fast float %3517, %3356
  %3586 = fadd fast float %3585, %2721
  br label %3587

; <label>:3587                                    ; preds = %3573, %3571, %3537, %3519, %3494, %2904, %2723, %2709
  %3588 = phi float [ %2710, %3494 ], [ %2710, %2904 ], [ %2710, %2709 ], [ %2710, %2723 ], [ %3524, %3519 ], [ %3540, %3537 ], [ %2710, %3571 ], [ %3576, %3573 ]
  %3589 = phi float [ %2711, %3494 ], [ %2711, %2904 ], [ %2711, %2709 ], [ %2711, %2723 ], [ %3525, %3519 ], [ %3541, %3537 ], [ %2711, %3571 ], [ %3577, %3573 ]
  %3590 = phi float [ %3495, %3494 ], [ %2712, %2904 ], [ %2712, %2709 ], [ %2712, %2723 ], [ %3495, %3519 ], [ %3495, %3537 ], [ %3495, %3571 ], [ %3495, %3573 ]
  %3591 = phi float [ %3496, %3494 ], [ %2713, %2904 ], [ %2713, %2709 ], [ %2713, %2723 ], [ %3496, %3519 ], [ %3496, %3537 ], [ %3496, %3571 ], [ %3496, %3573 ]
  %3592 = phi float [ %3497, %3494 ], [ %2714, %2904 ], [ %2714, %2709 ], [ %2714, %2723 ], [ %3497, %3519 ], [ %3497, %3537 ], [ %3497, %3571 ], [ %3497, %3573 ]
  %3593 = phi float [ %3498, %3494 ], [ %2715, %2904 ], [ %2715, %2709 ], [ %2715, %2723 ], [ %3498, %3519 ], [ %3498, %3537 ], [ %3498, %3571 ], [ %3498, %3573 ]
  %3594 = phi float [ %3499, %3494 ], [ %2716, %2904 ], [ %2716, %2709 ], [ %2716, %2723 ], [ %3499, %3519 ], [ %3499, %3537 ], [ %3499, %3571 ], [ %3499, %3573 ]
  %3595 = phi float [ %3500, %3494 ], [ %2717, %2904 ], [ %2717, %2709 ], [ %2717, %2723 ], [ %3500, %3519 ], [ %3500, %3537 ], [ %3500, %3571 ], [ %3500, %3573 ]
  %3596 = phi float [ %3501, %3494 ], [ %2718, %2904 ], [ %2718, %2709 ], [ %2718, %2723 ], [ %3501, %3519 ], [ %3501, %3537 ], [ %3501, %3571 ], [ %3501, %3573 ]
  %3597 = phi float [ %2719, %3494 ], [ %2719, %2904 ], [ %2719, %2709 ], [ %2719, %2723 ], [ %3531, %3519 ], [ %3568, %3537 ], [ %2719, %3571 ], [ %3584, %3573 ]
  %3598 = phi float [ %2720, %3494 ], [ %2720, %2904 ], [ %2720, %2709 ], [ %2720, %2723 ], [ %3528, %3519 ], [ %3545, %3537 ], [ %2720, %3571 ], [ %3581, %3573 ]
  %3599 = phi float [ %2721, %3494 ], [ %2721, %2904 ], [ %2721, %2709 ], [ %2721, %2723 ], [ %3534, %3519 ], [ %3570, %3537 ], [ %2721, %3571 ], [ %3586, %3573 ]
  %3600 = phi float [ %3502, %3494 ], [ %2722, %2904 ], [ %2722, %2709 ], [ %2722, %2723 ], [ %3502, %3519 ], [ %3502, %3537 ], [ %3502, %3571 ], [ %3502, %3573 ]
  %3601 = add i32 %35, 360
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.i32 %3602, 1
  %3605 = bitcast i32 %3603 to float
  %3606 = bitcast i32 %3604 to float
  %3607 = fcmp fast oge float %3605, 0.000000e+00
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = select i1 %3607, float %3605, float %3609
  %3611 = fadd fast float %3610, %179
  %3612 = fmul fast float %3606, %180
  %3613 = add i32 %35, 456
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = add i32 %3615, 0
  %3617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3617, %dx.types.Handle %82, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = fmul fast float %3612, %3619
  %3621 = fadd fast float %3611, %3620
  %3622 = and i32 %171, 65535
  %3623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3622)  ; LegacyF16ToF32(value)
  %3624 = lshr i32 %171, 16
  %3625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3624)  ; LegacyF16ToF32(value)
  %3626 = and i32 %172, 65535
  %3627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3626)  ; LegacyF16ToF32(value)
  %3628 = fmul fast float %3623, %3593
  %3629 = fmul fast float %3625, %3594
  %3630 = fmul fast float %3627, %3595
  %3631 = shl i32 %173, 4
  %3632 = and i32 %3631, 32752
  %3633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3632)  ; LegacyF16ToF32(value)
  %3634 = lshr i32 %173, 7
  %3635 = and i32 %3634, 32752
  %3636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3635)  ; LegacyF16ToF32(value)
  %3637 = lshr i32 %173, 22
  %3638 = shl nuw nsw i32 %3637, 5
  %3639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3638)  ; LegacyF16ToF32(value)
  %3640 = and i32 %174, 65535
  %3641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3640)  ; LegacyF16ToF32(value)
  %3642 = fmul fast float %3633, %3590
  %3643 = fmul fast float %3642, %3641
  %3644 = fmul fast float %3636, %3591
  %3645 = fmul fast float %3644, %3641
  %3646 = fmul fast float %3639, %3592
  %3647 = fmul fast float %3646, %3641
  %3648 = call float @dx.op.dot2.f32(i32 54, float %3588, float %3589, float %3588, float %3589)  ; Dot2(ax,ay,bx,by)
  %3649 = fmul fast float %3648, 0x3FE3333340000000
  %3650 = fsub fast float 1.000000e+00, %3649
  %3651 = call float @dx.op.dot3.f32(i32 55, float %3588, float %3589, float %3650, float %3588, float %3589, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %3652 = call float @dx.op.unary.f32(i32 25, float %3651)  ; Rsqrt(value)
  %3653 = fmul fast float %3652, %3588
  %3654 = fmul fast float %3652, %3589
  %3655 = fmul fast float %3650, %3652
  %3656 = fmul fast float %3655, %94
  %3657 = fmul fast float %3655, %96
  %3658 = fmul fast float %3655, %98
  %3659 = fmul fast float %3653, %66
  %3660 = fmul fast float %3653, %67
  %3661 = fmul fast float %3653, %68
  %3662 = fmul fast float %101, %69
  %3663 = fmul fast float %3662, %3654
  %3664 = fmul fast float %104, %69
  %3665 = fmul fast float %3664, %3654
  %3666 = fmul fast float %107, %69
  %3667 = fmul fast float %3666, %3654
  %3668 = fadd fast float %3663, %3659
  %3669 = fmul fast float %3668, %87
  %3670 = fadd fast float %3669, %3656
  %3671 = fadd fast float %3665, %3660
  %3672 = fmul fast float %3671, %87
  %3673 = fadd fast float %3672, %3657
  %3674 = fadd fast float %3667, %3661
  %3675 = fmul fast float %3674, %87
  %3676 = fadd fast float %3675, %3658
  %3677 = call float @dx.op.dot3.f32(i32 55, float %3670, float %3673, float %3676, float %3670, float %3673, float %3676)  ; Dot3(ax,ay,az,bx,by,bz)
  %3678 = call float @dx.op.unary.f32(i32 25, float %3677)  ; Rsqrt(value)
  %3679 = fmul fast float %3670, %3678
  %3680 = fmul fast float %3673, %3678
  %3681 = fmul fast float %3676, %3678
  %3682 = icmp eq i32 %37, 65535
  br i1 %3682, label %4197, label %3683

; <label>:3683                                    ; preds = %3587
  %3684 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3685 = call float @dx.op.unary.f32(i32 83, float %39)  ; DerivCoarseX(value)
  %3686 = call float @dx.op.unary.f32(i32 83, float %40)  ; DerivCoarseX(value)
  %3687 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3688 = call float @dx.op.unary.f32(i32 84, float %39)  ; DerivCoarseY(value)
  %3689 = call float @dx.op.unary.f32(i32 84, float %40)  ; DerivCoarseY(value)
  %3690 = fadd fast float %3684, %38
  %3691 = fadd fast float %3685, %39
  %3692 = fadd fast float %3686, %40
  %3693 = fadd fast float %3687, %38
  %3694 = fadd fast float %3688, %39
  %3695 = fadd fast float %3689, %40
  %3696 = mul i32 %37, 48
  %3697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3696, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.f32 %3697, 0
  %3699 = extractvalue %dx.types.ResRet.f32 %3697, 1
  %3700 = extractvalue %dx.types.ResRet.f32 %3697, 2
  %3701 = add i32 %3696, 16
  %3702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.f32 %3702, 0
  %3704 = extractvalue %dx.types.ResRet.f32 %3702, 1
  %3705 = extractvalue %dx.types.ResRet.f32 %3702, 2
  %3706 = add i32 %3696, 32
  %3707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.f32 %3707, 0
  %3709 = extractvalue %dx.types.ResRet.f32 %3707, 1
  %3710 = extractvalue %dx.types.ResRet.f32 %3707, 2
  %3711 = extractvalue %dx.types.ResRet.f32 %3707, 3
  %3712 = bitcast float %3711 to i32
  %3713 = fmul fast float %3698, %38
  %3714 = fmul fast float %3699, %39
  %3715 = fmul fast float %3700, %40
  %3716 = fsub fast float %3713, %3703
  %3717 = fsub fast float %3714, %3704
  %3718 = fsub fast float %3715, %3705
  %3719 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3720 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3721 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3722 = fmul fast float %3719, %3708
  %3723 = fmul fast float %3720, %3709
  %3724 = fmul fast float %3721, %3710
  %3725 = fadd fast float %3708, -1.000000e+00
  %3726 = fadd fast float %3709, -1.000000e+00
  %3727 = fadd fast float %3710, -1.000000e+00
  %3728 = call float @dx.op.unary.f32(i32 27, float %3722)  ; Round_ni(value)
  %3729 = call float @dx.op.unary.f32(i32 27, float %3723)  ; Round_ni(value)
  %3730 = call float @dx.op.unary.f32(i32 27, float %3724)  ; Round_ni(value)
  %3731 = call float @dx.op.binary.f32(i32 36, float %3728, float %3725)  ; FMin(a,b)
  %3732 = call float @dx.op.binary.f32(i32 36, float %3729, float %3726)  ; FMin(a,b)
  %3733 = call float @dx.op.binary.f32(i32 36, float %3730, float %3727)  ; FMin(a,b)
  %3734 = fmul fast float %3733, %3709
  %3735 = fadd fast float %3734, %3732
  %3736 = fmul fast float %3735, %3708
  %3737 = fadd fast float %3736, %3731
  %3738 = fptosi float %3737 to i32
  %3739 = add nsw i32 %3738, %3712
  %3740 = shl nsw i32 %3739, 2
  %3741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.i32 %3741, 0
  %3743 = lshr i32 %3742, 16
  %3744 = icmp eq i32 %3743, 0
  br i1 %3744, label %4166, label %3745

; <label>:3745                                    ; preds = %3683
  br label %3746

; <label>:3746                                    ; preds = %3867, %3745
  %3747 = phi i32 [ %3769, %3867 ], [ %3743, %3745 ]
  %3748 = phi float [ %3868, %3867 ], [ 0.000000e+00, %3745 ]
  %3749 = phi float [ %3869, %3867 ], [ %3621, %3745 ]
  %3750 = phi float [ %3870, %3867 ], [ %3600, %3745 ]
  %3751 = phi float [ %3871, %3867 ], [ %3599, %3745 ]
  %3752 = phi float [ %3872, %3867 ], [ 0.000000e+00, %3745 ]
  %3753 = phi float [ %3873, %3867 ], [ %3643, %3745 ]
  %3754 = phi float [ %3874, %3867 ], [ %3645, %3745 ]
  %3755 = phi float [ %3875, %3867 ], [ %3647, %3745 ]
  %3756 = phi float [ %3876, %3867 ], [ %3679, %3745 ]
  %3757 = phi float [ %3877, %3867 ], [ %3680, %3745 ]
  %3758 = phi float [ %3878, %3867 ], [ %3681, %3745 ]
  %3759 = phi float [ %3879, %3867 ], [ %3598, %3745 ]
  %3760 = phi float [ %3880, %3867 ], [ %3597, %3745 ]
  %3761 = phi float [ %3881, %3867 ], [ 0.000000e+00, %3745 ]
  %3762 = phi float [ %3882, %3867 ], [ %3596, %3745 ]
  %3763 = phi float [ %3883, %3867 ], [ %3628, %3745 ]
  %3764 = phi float [ %3884, %3867 ], [ %3629, %3745 ]
  %3765 = phi float [ %3885, %3867 ], [ %3630, %3745 ]
  %3766 = shl nuw nsw i32 %3747, 2
  %3767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3766, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.i32 %3767, 0
  %3769 = lshr i32 %3768, 16
  %3770 = shl i32 %3768, 8
  %3771 = and i32 %3770, 16776960
  %3772 = or i32 %3771, 48
  %3773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3772, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.ResRet.f32 %3773, 2
  %3777 = or i32 %3771, 64
  %3778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3779 = extractvalue %dx.types.ResRet.i32 %3778, 0
  %3780 = extractvalue %dx.types.ResRet.i32 %3778, 1
  %3781 = or i32 %3771, 80
  %3782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.f32 %3782, 2
  %3784 = extractvalue %dx.types.ResRet.f32 %3782, 3
  %3785 = or i32 %3771, 96
  %3786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3790 = extractvalue %dx.types.ResRet.f32 %3786, 3
  %3791 = or i32 %3771, 112
  %3792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3791, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.f32 %3792, 2
  %3794 = or i32 %3771, 128
  %3795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 1
  %3798 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3799 = extractvalue %dx.types.ResRet.f32 %3795, 3
  %3800 = or i32 %3771, 144
  %3801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3802 = extractvalue %dx.types.ResRet.f32 %3801, 0
  %3803 = extractvalue %dx.types.ResRet.f32 %3801, 1
  %3804 = extractvalue %dx.types.ResRet.f32 %3801, 2
  %3805 = extractvalue %dx.types.ResRet.f32 %3801, 3
  %3806 = or i32 %3771, 160
  %3807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.ResRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.ResRet.f32 %3807, 2
  %3811 = extractvalue %dx.types.ResRet.f32 %3807, 3
  %3812 = or i32 %3771, 192
  %3813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.i32 %3813, 0
  %3815 = or i32 %3771, 208
  %3816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = or i32 %3771, 248
  %3819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3771, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.ResRet.f32 %3822, 1
  %3825 = extractvalue %dx.types.ResRet.f32 %3822, 2
  %3826 = extractvalue %dx.types.ResRet.f32 %3822, 3
  %3827 = call float @dx.op.dot4.f32(i32 56, float %3823, float %3824, float %3825, float %3826, float %38, float %39, float %40, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3828 = or i32 %3771, 16
  %3829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.f32 %3829, 0
  %3831 = extractvalue %dx.types.ResRet.f32 %3829, 1
  %3832 = extractvalue %dx.types.ResRet.f32 %3829, 2
  %3833 = extractvalue %dx.types.ResRet.f32 %3829, 3
  %3834 = call float @dx.op.dot4.f32(i32 56, float %3830, float %3831, float %3832, float %3833, float %38, float %39, float %40, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3835 = or i32 %3771, 32
  %3836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.ResRet.f32 %3836, 1
  %3839 = extractvalue %dx.types.ResRet.f32 %3836, 2
  %3840 = extractvalue %dx.types.ResRet.f32 %3836, 3
  %3841 = call float @dx.op.dot4.f32(i32 56, float %3837, float %3838, float %3839, float %3840, float %38, float %39, float %40, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3842 = call float @dx.op.unary.f32(i32 27, float %3827)  ; Round_ni(value)
  %3843 = call float @dx.op.unary.f32(i32 6, float %3842)  ; FAbs(value)
  %3844 = call float @dx.op.unary.f32(i32 27, float %3834)  ; Round_ni(value)
  %3845 = call float @dx.op.unary.f32(i32 6, float %3844)  ; FAbs(value)
  %3846 = call float @dx.op.unary.f32(i32 6, float %3841)  ; FAbs(value)
  %3847 = call float @dx.op.unary.f32(i32 27, float %3846)  ; Round_ni(value)
  %3848 = fadd fast float %3845, %3843
  %3849 = fadd fast float %3848, %3847
  %3850 = fcmp fast oeq float %3849, 0.000000e+00
  %3851 = call float @dx.op.dot4.f32(i32 56, float %3823, float %3824, float %3825, float %3826, float %3690, float %3691, float %3692, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3852 = call float @dx.op.dot4.f32(i32 56, float %3830, float %3831, float %3832, float %3833, float %3690, float %3691, float %3692, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3853 = call float @dx.op.dot4.f32(i32 56, float %3823, float %3824, float %3825, float %3826, float %3693, float %3694, float %3695, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3854 = call float @dx.op.dot4.f32(i32 56, float %3830, float %3831, float %3832, float %3833, float %3693, float %3694, float %3695, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3855 = fsub fast float %3851, %3827
  %3856 = fsub fast float %3853, %3827
  %3857 = fsub fast float %3852, %3834
  %3858 = fsub fast float %3854, %3834
  %3859 = call float @dx.op.dot3.f32(i32 55, float %3774, float %3775, float %3776, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %3860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3861 = extractvalue %dx.types.CBufRet.f32 %3860, 2
  %3862 = fadd fast float %3861, %3859
  %3863 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3864 = extractvalue %dx.types.CBufRet.f32 %3860, 0
  %3865 = fcmp fast ogt float %3863, %3864
  %3866 = and i1 %3850, %3865
  br i1 %3866, label %3887, label %3867

; <label>:3867                                    ; preds = %4152, %3970, %3887, %3746
  %3868 = phi float [ %3748, %3887 ], [ %3973, %3970 ], [ %3973, %4152 ], [ %3748, %3746 ]
  %3869 = phi float [ %3749, %3887 ], [ %3749, %3970 ], [ %4127, %4152 ], [ %3749, %3746 ]
  %3870 = phi float [ %3750, %3887 ], [ %3750, %3970 ], [ %4125, %4152 ], [ %3750, %3746 ]
  %3871 = phi float [ %3751, %3887 ], [ %3751, %3970 ], [ %4097, %4152 ], [ %3751, %3746 ]
  %3872 = phi float [ %3752, %3887 ], [ %3752, %3970 ], [ %4095, %4152 ], [ %3752, %3746 ]
  %3873 = phi float [ %3753, %3887 ], [ %3753, %3970 ], [ %4162, %4152 ], [ %3753, %3746 ]
  %3874 = phi float [ %3754, %3887 ], [ %3754, %3970 ], [ %4163, %4152 ], [ %3754, %3746 ]
  %3875 = phi float [ %3755, %3887 ], [ %3755, %3970 ], [ %4164, %4152 ], [ %3755, %3746 ]
  %3876 = phi float [ %3756, %3887 ], [ %3756, %3970 ], [ %4076, %4152 ], [ %3756, %3746 ]
  %3877 = phi float [ %3757, %3887 ], [ %3757, %3970 ], [ %4077, %4152 ], [ %3757, %3746 ]
  %3878 = phi float [ %3758, %3887 ], [ %3758, %3970 ], [ %4078, %4152 ], [ %3758, %3746 ]
  %3879 = phi float [ %3759, %3887 ], [ %3759, %3970 ], [ %4105, %4152 ], [ %3759, %3746 ]
  %3880 = phi float [ %3760, %3887 ], [ %3760, %3970 ], [ %4102, %4152 ], [ %3760, %3746 ]
  %3881 = phi float [ %3761, %3887 ], [ %3761, %3970 ], [ %4099, %4152 ], [ %3761, %3746 ]
  %3882 = phi float [ %3762, %3887 ], [ %3762, %3970 ], [ %4093, %4152 ], [ %3762, %3746 ]
  %3883 = phi float [ %3763, %3887 ], [ %3763, %3970 ], [ %4088, %4152 ], [ %3763, %3746 ]
  %3884 = phi float [ %3764, %3887 ], [ %3764, %3970 ], [ %4089, %4152 ], [ %3764, %3746 ]
  %3885 = phi float [ %3765, %3887 ], [ %3765, %3970 ], [ %4090, %4152 ], [ %3765, %3746 ]
  %3886 = icmp eq i32 %3769, 0
  br i1 %3886, label %4165, label %3746

; <label>:3887                                    ; preds = %3746
  %3888 = extractvalue %dx.types.ResRet.f32 %3773, 3
  %3889 = extractvalue %dx.types.ResRet.f32 %3792, 3
  %3890 = extractvalue %dx.types.ResRet.f32 %3792, 1
  %3891 = extractvalue %dx.types.ResRet.f32 %3792, 0
  %3892 = extractvalue %dx.types.ResRet.f32 %3782, 1
  %3893 = extractvalue %dx.types.ResRet.f32 %3782, 0
  %3894 = extractvalue %dx.types.ResRet.i32 %3778, 3
  %3895 = extractvalue %dx.types.ResRet.i32 %3778, 2
  %3896 = bitcast float %3888 to i32
  %3897 = add i32 %3894, 0
  %3898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3897, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3900 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3898, %dx.types.Handle %3899, float %3827, float %3834, float undef, float undef, i32 0, i32 0, i32 undef, float %3855, float %3857, float undef, float %3856, float %3858, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3901 = extractvalue %dx.types.ResRet.f32 %3900, 0
  %3902 = fmul fast float %3901, %3893
  %3903 = fadd fast float %3902, %3892
  %3904 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3905 = fmul fast float %3827, %3787
  %3906 = call float @dx.op.tertiary.f32(i32 46, float %3788, float %3834, float %3905)  ; FMad(a,b,c)
  %3907 = fadd fast float %3906, %3891
  %3908 = fmul fast float %3827, %3789
  %3909 = call float @dx.op.tertiary.f32(i32 46, float %3790, float %3834, float %3908)  ; FMad(a,b,c)
  %3910 = fadd fast float %3909, %3890
  %3911 = fmul fast float %3855, %3787
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %3788, float %3857, float %3911)  ; FMad(a,b,c)
  %3913 = fmul fast float %3855, %3789
  %3914 = call float @dx.op.tertiary.f32(i32 46, float %3790, float %3857, float %3913)  ; FMad(a,b,c)
  %3915 = fmul fast float %3856, %3787
  %3916 = call float @dx.op.tertiary.f32(i32 46, float %3788, float %3858, float %3915)  ; FMad(a,b,c)
  %3917 = fmul fast float %3856, %3789
  %3918 = call float @dx.op.tertiary.f32(i32 46, float %3790, float %3858, float %3917)  ; FMad(a,b,c)
  %3919 = add i32 %3895, 0
  %3920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3919, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3921 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3920, %dx.types.Handle %3899, float %3907, float %3910, float undef, float undef, i32 0, i32 0, i32 undef, float %3912, float %3914, float undef, float %3916, float %3918, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = and i32 %3896, 1024
  %3924 = icmp ne i32 %3923, 0
  %3925 = fcmp fast ogt float %3922, 0x3FE0101020000000
  %3926 = uitofp i1 %3925 to float
  %3927 = select i1 %3924, float %3926, float %3922
  %3928 = and i32 %3896, 8192
  %3929 = icmp ne i32 %3928, 0
  %3930 = select i1 %3929, float %3889, float 1.000000e+00
  %3931 = fmul fast float %3827, 2.000000e+00
  %3932 = fadd fast float %3931, -1.000000e+00
  %3933 = call float @dx.op.unary.f32(i32 6, float %3932)  ; FAbs(value)
  %3934 = fmul fast float %3933, %3820
  %3935 = fsub fast float %3934, %3820
  %3936 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3937 = fmul fast float %3834, 2.000000e+00
  %3938 = fadd fast float %3937, -1.000000e+00
  %3939 = call float @dx.op.unary.f32(i32 6, float %3938)  ; FAbs(value)
  %3940 = fmul fast float %3939, %3821
  %3941 = fsub fast float %3940, %3821
  %3942 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3943 = fmul fast float %3846, %3783
  %3944 = fsub fast float %3943, %3783
  %3945 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3946 = fmul fast float %3904, %3930
  %3947 = fmul fast float %3946, %3901
  %3948 = fmul fast float %3947, %3936
  %3949 = fmul fast float %3948, %3927
  %3950 = fmul fast float %3949, %3942
  %3951 = fmul fast float %3950, %3945
  %3952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.f32 %3952, 1
  %3954 = extractvalue %dx.types.CBufRet.f32 %3952, 0
  %3955 = fsub fast float %3863, %3954
  %3956 = fmul fast float %3955, %3953
  %3957 = call float @dx.op.unary.f32(i32 7, float %3956)  ; Saturate(value)
  %3958 = fmul fast float %3951, %3784
  %3959 = fadd fast float %3951, %3784
  %3960 = fmul fast float %3959, %3793
  %3961 = fsub fast float %3960, %3793
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3963 = and i32 %3896, 128
  %3964 = icmp ne i32 %3963, 0
  %3965 = select i1 %3964, float %3962, float %3958
  %3966 = fmul fast float %3965, %3957
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = fcmp fast ugt float %3966, %3968
  br i1 %3969, label %3970, label %3867

; <label>:3970                                    ; preds = %3887
  %3971 = select i1 %3929, float %3966, float 0.000000e+00
  %3972 = fadd fast float %3971, %3748
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  br i1 %3929, label %3867, label %3974

; <label>:3974                                    ; preds = %3970
  %3975 = and i32 %3896, 4
  %3976 = and i32 %3896, 8
  %3977 = add i32 %3779, 0
  %3978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3977, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3980 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3978, %dx.types.Handle %3979, float %3907, float %3910, float undef, float undef, i32 0, i32 0, i32 undef, float %3912, float %3914, float undef, float %3916, float %3918, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = extractvalue %dx.types.ResRet.f32 %3980, 2
  %3984 = extractvalue %dx.types.ResRet.f32 %3980, 3
  %3985 = bitcast float %3805 to i32
  %3986 = and i32 %3985, 255
  %3987 = uitofp i32 %3986 to float
  %3988 = lshr i32 %3985, 8
  %3989 = and i32 %3988, 255
  %3990 = uitofp i32 %3989 to float
  %3991 = fmul fast float %3984, %3987
  %3992 = fadd fast float %3991, %3990
  %3993 = fmul fast float %3992, 0x3F70101000000000
  %3994 = add i32 %3780, 0
  %3995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3994, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3996 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3995, %dx.types.Handle %3979, float %3907, float %3910, float undef, float undef, i32 0, i32 0, i32 undef, float %3912, float %3914, float undef, float %3916, float %3918, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %3998 = extractvalue %dx.types.ResRet.f32 %3996, 1
  %3999 = extractvalue %dx.types.ResRet.f32 %3996, 2
  %4000 = extractvalue %dx.types.ResRet.f32 %3996, 3
  %4001 = bitcast float %3799 to i32
  %4002 = and i32 %4001, 255
  %4003 = uitofp i32 %4002 to float
  %4004 = lshr i32 %4001, 8
  %4005 = and i32 %4004, 255
  %4006 = uitofp i32 %4005 to float
  %4007 = lshr i32 %4001, 16
  %4008 = and i32 %4007, 255
  %4009 = uitofp i32 %4008 to float
  %4010 = fmul fast float %4009, 0x3F70101000000000
  %4011 = fmul fast float %3997, %4003
  %4012 = fadd fast float %4011, %4006
  %4013 = fmul fast float %4012, 0x3F70101000000000
  %4014 = fadd fast float %3998, -5.000000e-01
  %4015 = fadd fast float %4000, -5.000000e-01
  %4016 = fmul fast float %4014, %4010
  %4017 = fmul fast float %4015, %4010
  %4018 = fadd fast float %4016, 5.000000e-01
  %4019 = fadd fast float %4017, 5.000000e-01
  %4020 = fmul fast float %3981, %3808
  %4021 = fmul fast float %3982, %3809
  %4022 = fmul fast float %3983, %3810
  %4023 = fmul fast float %4018, 2.000000e+00
  %4024 = fadd fast float %4023, -1.000000e+00
  %4025 = fmul fast float %4019, 2.000000e+00
  %4026 = fadd fast float %4025, -1.000000e+00
  %4027 = fadd fast float %4024, %4026
  %4028 = fmul fast float %4027, 5.000000e-01
  %4029 = fsub fast float %4024, %4026
  %4030 = fmul fast float %4029, 5.000000e-01
  %4031 = call float @dx.op.unary.f32(i32 6, float %4028)  ; FAbs(value)
  %4032 = fsub fast float 1.000000e+00, %4031
  %4033 = call float @dx.op.unary.f32(i32 6, float %4030)  ; FAbs(value)
  %4034 = fsub fast float %4032, %4033
  %4035 = call float @dx.op.dot3.f32(i32 55, float %4028, float %4030, float %4034, float %4028, float %4030, float %4034)  ; Dot3(ax,ay,az,bx,by,bz)
  %4036 = call float @dx.op.unary.f32(i32 25, float %4035)  ; Rsqrt(value)
  %4037 = fmul fast float %4028, %4036
  %4038 = fmul fast float %4030, %4036
  %4039 = fmul fast float %4036, %4034
  %4040 = fmul fast float %4039, %3774
  %4041 = fmul fast float %4039, %3775
  %4042 = fmul fast float %4039, %3776
  %4043 = fmul fast float %4037, %3796
  %4044 = fmul fast float %4037, %3797
  %4045 = fmul fast float %4037, %3798
  %4046 = fadd fast float %4043, %4040
  %4047 = fadd fast float %4044, %4041
  %4048 = fadd fast float %4045, %4042
  %4049 = fmul fast float %4038, %3802
  %4050 = fmul fast float %4038, %3803
  %4051 = fmul fast float %4038, %3804
  %4052 = fadd fast float %4046, %4049
  %4053 = fadd fast float %4047, %4050
  %4054 = fadd fast float %4048, %4051
  %4055 = call float @dx.op.dot3.f32(i32 55, float %4052, float %4053, float %4054, float %4052, float %4053, float %4054)  ; Dot3(ax,ay,az,bx,by,bz)
  %4056 = call float @dx.op.unary.f32(i32 25, float %4055)  ; Rsqrt(value)
  %4057 = fmul fast float %4052, %4056
  %4058 = fmul fast float %4053, %4056
  %4059 = fmul fast float %4054, %4056
  %4060 = icmp ne i32 %3976, 0
  %4061 = select i1 %4060, float 1.000000e+00, float 0.000000e+00
  %4062 = fmul fast float %3966, %4061
  %4063 = and i32 %3896, 1
  %4064 = icmp eq i32 %4063, 0
  br i1 %4064, label %4065, label %4069

; <label>:4065                                    ; preds = %3974
  %4066 = fsub fast float %4057, %3756
  %4067 = fsub fast float %4058, %3757
  %4068 = fsub fast float %4059, %3758
  br label %4069

; <label>:4069                                    ; preds = %4065, %3974
  %4070 = phi float [ %4066, %4065 ], [ %4057, %3974 ]
  %4071 = phi float [ %4067, %4065 ], [ %4058, %3974 ]
  %4072 = phi float [ %4068, %4065 ], [ %4059, %3974 ]
  %4073 = fmul float %4072, %4062
  %4074 = fmul float %4071, %4062
  %4075 = fmul float %4070, %4062
  %4076 = fadd fast float %4075, %3756
  %4077 = fadd fast float %4074, %3757
  %4078 = fadd fast float %4073, %3758
  %4079 = icmp ne i32 %3975, 0
  %4080 = select i1 %4079, float 1.000000e+00, float 0.000000e+00
  %4081 = fmul fast float %3966, %4080
  %4082 = fsub fast float %4020, %3763
  %4083 = fsub fast float %4021, %3764
  %4084 = fsub fast float %4022, %3765
  %4085 = fmul fast float %4082, %4081
  %4086 = fmul fast float %4083, %4081
  %4087 = fmul fast float %4084, %4081
  %4088 = fadd fast float %4085, %3763
  %4089 = fadd fast float %4086, %3764
  %4090 = fadd fast float %4087, %3765
  %4091 = fsub fast float %3993, %3762
  %4092 = fmul fast float %4091, %4081
  %4093 = fadd fast float %4092, %3762
  %4094 = fmul fast float %4081, %3752
  %4095 = fsub fast float %3752, %4094
  %4096 = fmul fast float %4081, %3751
  %4097 = fsub fast float %3751, %4096
  %4098 = fadd fast float %3966, %3761
  %4099 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4100 = fsub fast float %4013, %3760
  %4101 = fmul fast float %4100, %4062
  %4102 = fadd fast float %4101, %3760
  %4103 = fsub fast float %3999, %3759
  %4104 = fmul fast float %4103, %4062
  %4105 = fadd fast float %4104, %3759
  %4106 = call float @dx.op.dot3.f32(i32 55, float %4020, float %4021, float %4022, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 0
  %4109 = extractvalue %dx.types.CBufRet.f32 %4107, 1
  %4110 = fmul fast float %4109, %4106
  %4111 = fadd fast float %4110, %4108
  %4112 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4113 = bitcast float %3811 to i32
  %4114 = and i32 %4113, 65535
  %4115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4114)  ; LegacyF16ToF32(value)
  %4116 = lshr i32 %4113, 16
  %4117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4116)  ; LegacyF16ToF32(value)
  %4118 = fcmp fast oge float %4115, 0.000000e+00
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 0
  %4121 = select i1 %4118, float %4115, float %4120
  %4122 = fadd fast float %4121, %4117
  %4123 = fsub fast float %4112, %3750
  %4124 = fmul fast float %4123, %3966
  %4125 = fadd fast float %4124, %3750
  %4126 = fmul fast float %4122, %3966
  %4127 = call float @dx.op.binary.f32(i32 35, float %3749, float %4126)  ; FMax(a,b)
  %4128 = and i32 %3896, 16
  %4129 = icmp eq i32 %4128, 0
  br i1 %4129, label %4152, label %4130

; <label>:4130                                    ; preds = %4069
  %4131 = bitcast float %3817 to i32
  %4132 = add i32 %3814, 0
  %4133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4132, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4134 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4133, %dx.types.Handle %3979, float %3907, float %3910, float undef, float undef, i32 0, i32 0, i32 undef, float %3912, float %3914, float undef, float %3916, float %3918, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.ResRet.f32 %4134, 2
  %4138 = and i32 %4131, 65535
  %4139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4138)  ; LegacyF16ToF32(value)
  %4140 = fmul fast float %4135, %3808
  %4141 = fmul fast float %4136, %3809
  %4142 = fmul fast float %4137, %3810
  %4143 = and i32 %3896, 16384
  %4144 = icmp ne i32 %4143, 0
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = select i1 %4144, float %4146, float 1.000000e+00
  %4148 = fmul fast float %4147, %4139
  %4149 = fmul fast float %4140, %4148
  %4150 = fmul fast float %4141, %4148
  %4151 = fmul fast float %4142, %4148
  br label %4152

; <label>:4152                                    ; preds = %4130, %4069
  %4153 = phi float [ %4149, %4130 ], [ 0.000000e+00, %4069 ]
  %4154 = phi float [ %4150, %4130 ], [ 0.000000e+00, %4069 ]
  %4155 = phi float [ %4151, %4130 ], [ 0.000000e+00, %4069 ]
  %4156 = fsub fast float %4153, %3753
  %4157 = fsub fast float %4154, %3754
  %4158 = fsub fast float %4155, %3755
  %4159 = fmul fast float %4156, %3966
  %4160 = fmul fast float %4157, %3966
  %4161 = fmul fast float %4158, %3966
  %4162 = fadd fast float %4159, %3753
  %4163 = fadd fast float %4160, %3754
  %4164 = fadd fast float %4161, %3755
  br label %3867

; <label>:4165                                    ; preds = %3867
  br label %4166

; <label>:4166                                    ; preds = %4165, %3683
  %4167 = phi float [ 0.000000e+00, %3683 ], [ %3868, %4165 ]
  %4168 = phi float [ %3621, %3683 ], [ %3869, %4165 ]
  %4169 = phi float [ %3600, %3683 ], [ %3870, %4165 ]
  %4170 = phi float [ %3599, %3683 ], [ %3871, %4165 ]
  %4171 = phi float [ 0.000000e+00, %3683 ], [ %3872, %4165 ]
  %4172 = phi float [ %3643, %3683 ], [ %3873, %4165 ]
  %4173 = phi float [ %3645, %3683 ], [ %3874, %4165 ]
  %4174 = phi float [ %3647, %3683 ], [ %3875, %4165 ]
  %4175 = phi float [ %3679, %3683 ], [ %3876, %4165 ]
  %4176 = phi float [ %3680, %3683 ], [ %3877, %4165 ]
  %4177 = phi float [ %3681, %3683 ], [ %3878, %4165 ]
  %4178 = phi float [ %3598, %3683 ], [ %3879, %4165 ]
  %4179 = phi float [ %3597, %3683 ], [ %3880, %4165 ]
  %4180 = phi float [ 0.000000e+00, %3683 ], [ %3881, %4165 ]
  %4181 = phi float [ %3596, %3683 ], [ %3882, %4165 ]
  %4182 = phi float [ %3628, %3683 ], [ %3883, %4165 ]
  %4183 = phi float [ %3629, %3683 ], [ %3884, %4165 ]
  %4184 = phi float [ %3630, %3683 ], [ %3885, %4165 ]
  %4185 = call float @dx.op.dot3.f32(i32 55, float %4175, float %4176, float %4177, float %4175, float %4176, float %4177)  ; Dot3(ax,ay,az,bx,by,bz)
  %4186 = call float @dx.op.unary.f32(i32 25, float %4185)  ; Rsqrt(value)
  %4187 = fmul fast float %4186, %4175
  %4188 = fmul fast float %4186, %4176
  %4189 = fmul fast float %4186, %4177
  %4190 = fadd fast float %4180, %962
  %4191 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4192 = call float @dx.op.dot3.f32(i32 55, float %4187, float %4188, float %4189, float %4187, float %4188, float %4189)  ; Dot3(ax,ay,az,bx,by,bz)
  %4193 = call float @dx.op.unary.f32(i32 25, float %4192)  ; Rsqrt(value)
  %4194 = fmul fast float %4193, %4187
  %4195 = fmul fast float %4193, %4188
  %4196 = fmul fast float %4193, %4189
  br label %4197

; <label>:4197                                    ; preds = %4166, %3587
  %4198 = phi float [ %4194, %4166 ], [ %3679, %3587 ]
  %4199 = phi float [ %4195, %4166 ], [ %3680, %3587 ]
  %4200 = phi float [ %4196, %4166 ], [ %3681, %3587 ]
  %4201 = phi float [ %4182, %4166 ], [ %3628, %3587 ]
  %4202 = phi float [ %4183, %4166 ], [ %3629, %3587 ]
  %4203 = phi float [ %4184, %4166 ], [ %3630, %3587 ]
  %4204 = phi float [ %4172, %4166 ], [ %3643, %3587 ]
  %4205 = phi float [ %4173, %4166 ], [ %3645, %3587 ]
  %4206 = phi float [ %4174, %4166 ], [ %3647, %3587 ]
  %4207 = phi float [ %4181, %4166 ], [ %3596, %3587 ]
  %4208 = phi float [ %4191, %4166 ], [ %962, %3587 ]
  %4209 = phi float [ %4179, %4166 ], [ %3597, %3587 ]
  %4210 = phi float [ %4178, %4166 ], [ %3598, %3587 ]
  %4211 = phi float [ %4171, %4166 ], [ 0.000000e+00, %3587 ]
  %4212 = phi float [ %4170, %4166 ], [ %3599, %3587 ]
  %4213 = phi float [ %4167, %4166 ], [ 0.000000e+00, %3587 ]
  %4214 = phi float [ %4168, %4166 ], [ %3621, %3587 ]
  %4215 = phi float [ %4169, %4166 ], [ %3600, %3587 ]
  %4216 = fadd fast float %4207, 0xBFB99999A0000000
  %4217 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4218 = fmul fast float %4217, 0x3FF1C71C80000000
  %4219 = call float @dx.op.binary.f32(i32 36, float %4207, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4220 = fsub fast float 1.000000e+00, %4218
  %4221 = call float @dx.op.unary.f32(i32 7, float %4220)  ; Saturate(value)
  %4222 = fmul fast float %4221, %4201
  %4223 = fmul fast float %4221, %4202
  %4224 = fmul fast float %4221, %4203
  %4225 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4226 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4227 = call float @dx.op.unary.f32(i32 7, float %4224)  ; Saturate(value)
  %4228 = fmul fast float %4218, %4201
  %4229 = fmul fast float %4218, %4202
  %4230 = fmul fast float %4218, %4203
  %4231 = fadd fast float %4228, %4219
  %4232 = fadd fast float %4229, %4219
  %4233 = fadd fast float %4230, %4219
  %4234 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4235 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4237 = call float @dx.op.unary.f32(i32 7, float %4209)  ; Saturate(value)
  %4238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.i32 %4238, 3
  %4240 = and i32 %4239, 8
  %4241 = icmp ne i32 %4240, 0
  %4242 = call float @dx.op.binary.f32(i32 35, float %4225, float %4201)  ; FMax(a,b)
  %4243 = call float @dx.op.binary.f32(i32 35, float %4226, float %4201)  ; FMax(a,b)
  %4244 = call float @dx.op.binary.f32(i32 35, float %4227, float %4201)  ; FMax(a,b)
  %4245 = call float @dx.op.dot3.f32(i32 55, float %4225, float %4226, float %4227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4246 = select i1 %217, float %4201, float %4225
  %4247 = select i1 %217, float %4245, float %4226
  %4248 = select i1 %217, float 1.000000e+00, float %4227
  %4249 = select i1 %4241, float %4242, float %4246
  %4250 = select i1 %4241, float %4243, float %4247
  %4251 = select i1 %4241, float %4244, float %4248
  %4252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4252, 0
  %4254 = extractvalue %dx.types.CBufRet.f32 %4252, 1
  %4255 = extractvalue %dx.types.CBufRet.f32 %4252, 2
  %4256 = fadd fast float %4253, %165
  %4257 = fadd fast float %4254, %166
  %4258 = fadd fast float %4255, %167
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 0
  %4261 = extractvalue %dx.types.CBufRet.f32 %4259, 1
  %4262 = fsub fast float %4256, %4260
  %4263 = fsub fast float %4257, %4261
  %4264 = fmul fast float %4262, %4262
  %4265 = fmul fast float %4263, %4263
  %4266 = fadd fast float %4264, %4265
  %4267 = call float @dx.op.unary.f32(i32 24, float %4266)  ; Sqrt(value)
  %4268 = extractvalue %dx.types.CBufRet.f32 %4259, 2
  %4269 = fcmp fast olt float %4267, %4268
  br i1 %4269, label %4270, label %4337

; <label>:4270                                    ; preds = %4197
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 0
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 0
  %4275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4276 = extractvalue %dx.types.CBufRet.f32 %4275, 0
  %4277 = extractvalue %dx.types.CBufRet.f32 %4271, 1
  %4278 = extractvalue %dx.types.CBufRet.f32 %4273, 1
  %4279 = extractvalue %dx.types.CBufRet.f32 %4275, 1
  %4280 = extractvalue %dx.types.CBufRet.f32 %4271, 3
  %4281 = extractvalue %dx.types.CBufRet.f32 %4273, 3
  %4282 = extractvalue %dx.types.CBufRet.f32 %4275, 3
  %4283 = fadd fast float %4280, %4256
  %4284 = fadd fast float %4281, %4257
  %4285 = fadd fast float %4282, %4258
  %4286 = fmul fast float %4283, %4272
  %4287 = call float @dx.op.tertiary.f32(i32 46, float %4284, float %4274, float %4286)  ; FMad(a,b,c)
  %4288 = call float @dx.op.tertiary.f32(i32 46, float %4285, float %4276, float %4287)  ; FMad(a,b,c)
  %4289 = fmul fast float %4283, %4277
  %4290 = call float @dx.op.tertiary.f32(i32 46, float %4284, float %4278, float %4289)  ; FMad(a,b,c)
  %4291 = call float @dx.op.tertiary.f32(i32 46, float %4285, float %4279, float %4290)  ; FMad(a,b,c)
  %4292 = fsub fast float %4288, %4280
  %4293 = fsub fast float %4291, %4281
  %4294 = fsub fast float %4292, %4260
  %4295 = fadd fast float %4294, %4268
  %4296 = fsub fast float %4293, %4261
  %4297 = fadd fast float %4296, %4268
  %4298 = extractvalue %dx.types.CBufRet.f32 %4259, 3
  %4299 = fmul fast float %4295, %4298
  %4300 = fmul fast float %4297, %4298
  %4301 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4302 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4303 = fsub fast float 1.000000e+00, %4301
  %4304 = fsub fast float 1.000000e+00, %4302
  %4305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4303, float %4304, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = fcmp fast ugt float %4306, 0.000000e+00
  br i1 %4307, label %4308, label %4611

; <label>:4308                                    ; preds = %4270
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 2
  %4311 = fmul fast float %4310, %4306
  %4312 = extractvalue %dx.types.CBufRet.f32 %4309, 3
  %4313 = fadd fast float %4312, %4311
  %4314 = extractvalue %dx.types.CBufRet.f32 %4275, 2
  %4315 = fadd fast float %4313, %4282
  %4316 = fmul fast float %4288, %4276
  %4317 = call float @dx.op.tertiary.f32(i32 46, float %4291, float %4279, float %4316)  ; FMad(a,b,c)
  %4318 = call float @dx.op.tertiary.f32(i32 46, float %4315, float %4314, float %4317)  ; FMad(a,b,c)
  %4319 = fsub fast float %4318, %4282
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 2
  %4322 = fsub fast float %4319, %4321
  %4323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4303, float %4304, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4324 = extractvalue %dx.types.ResRet.f32 %4323, 0
  %4325 = extractvalue %dx.types.ResRet.f32 %4323, 1
  %4326 = extractvalue %dx.types.ResRet.f32 %4323, 2
  %4327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4303, float %4304, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4328 = extractvalue %dx.types.ResRet.f32 %4327, 0
  %4329 = extractvalue %dx.types.ResRet.f32 %4327, 1
  %4330 = extractvalue %dx.types.ResRet.f32 %4327, 2
  %4331 = fadd fast float %4328, %4324
  %4332 = fmul fast float %4331, 0x3F847AE140000000
  %4333 = fadd fast float %4329, %4325
  %4334 = fmul fast float %4333, 0x3F847AE140000000
  %4335 = fadd fast float %4330, %4326
  %4336 = fmul fast float %4335, 0x3F847AE140000000
  br label %4611

; <label>:4337                                    ; preds = %4197
  %4338 = and i32 %196, 1
  %4339 = icmp eq i32 %4338, 0
  br i1 %4339, label %4611, label %4340

; <label>:4340                                    ; preds = %4337
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 0
  %4343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.f32 %4343, 0
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.CBufRet.f32 %4341, 1
  %4348 = extractvalue %dx.types.CBufRet.f32 %4343, 1
  %4349 = extractvalue %dx.types.CBufRet.f32 %4345, 1
  %4350 = extractvalue %dx.types.CBufRet.f32 %4341, 3
  %4351 = extractvalue %dx.types.CBufRet.f32 %4343, 3
  %4352 = extractvalue %dx.types.CBufRet.f32 %4345, 3
  %4353 = fadd fast float %4350, %4256
  %4354 = fadd fast float %4351, %4257
  %4355 = fadd fast float %4352, %4258
  %4356 = fmul fast float %4353, %4342
  %4357 = call float @dx.op.tertiary.f32(i32 46, float %4354, float %4344, float %4356)  ; FMad(a,b,c)
  %4358 = call float @dx.op.tertiary.f32(i32 46, float %4355, float %4346, float %4357)  ; FMad(a,b,c)
  %4359 = fmul fast float %4353, %4347
  %4360 = call float @dx.op.tertiary.f32(i32 46, float %4354, float %4348, float %4359)  ; FMad(a,b,c)
  %4361 = call float @dx.op.tertiary.f32(i32 46, float %4355, float %4349, float %4360)  ; FMad(a,b,c)
  %4362 = fsub fast float %4358, %4350
  %4363 = fsub fast float %4361, %4351
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 0
  %4366 = extractvalue %dx.types.CBufRet.f32 %4364, 1
  %4367 = extractvalue %dx.types.CBufRet.f32 %4364, 2
  %4368 = extractvalue %dx.types.CBufRet.f32 %4364, 3
  %4369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4369, 3
  %4371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.i32 %4371, 0
  %4373 = extractvalue %dx.types.CBufRet.i32 %4371, 1
  %4374 = udiv i32 %4373, %4372
  %4375 = fsub fast float %4362, %4365
  %4376 = fsub fast float %4363, %4366
  %4377 = call float @dx.op.binary.f32(i32 35, float %4375, float 0.000000e+00)  ; FMax(a,b)
  %4378 = call float @dx.op.binary.f32(i32 35, float %4376, float 0.000000e+00)  ; FMax(a,b)
  %4379 = call float @dx.op.binary.f32(i32 36, float %4377, float %4367)  ; FMin(a,b)
  %4380 = call float @dx.op.binary.f32(i32 36, float %4378, float %4368)  ; FMin(a,b)
  %4381 = add i32 %4372, -1
  %4382 = add i32 %4374, -1
  %4383 = fmul fast float %4379, %4370
  %4384 = fmul fast float %4380, %4370
  %4385 = fptoui float %4383 to i32
  %4386 = fptoui float %4384 to i32
  %4387 = call i32 @dx.op.binary.i32(i32 40, i32 %4385, i32 %4381)  ; UMin(a,b)
  %4388 = call i32 @dx.op.binary.i32(i32 40, i32 %4386, i32 %4382)  ; UMin(a,b)
  %4389 = mul i32 %4388, %4372
  %4390 = add i32 %4389, %4387
  %4391 = shl i32 %4390, 2
  %4392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4393 = extractvalue %dx.types.ResRet.i32 %4392, 0
  %4394 = icmp eq i32 %4393, -1
  br i1 %4394, label %4611, label %4395

; <label>:4395                                    ; preds = %4340
  %4396 = mul i32 %4393, 148
  %4397 = add i32 %4396, 4
  %4398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4399 = extractvalue %dx.types.ResRet.f32 %4398, 0
  %4400 = add i32 %4396, 8
  %4401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4400, i32 undef)  ; BufferLoad(srv,index,wot)
  %4402 = extractvalue %dx.types.ResRet.f32 %4401, 0
  %4403 = add i32 %4396, 36
  %4404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4403, i32 undef)  ; BufferLoad(srv,index,wot)
  %4405 = extractvalue %dx.types.ResRet.f32 %4404, 0
  %4406 = add i32 %4396, 60
  %4407 = add i32 %4396, 92
  %4408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4409 = extractvalue %dx.types.ResRet.i32 %4408, 0
  %4410 = add i32 %4396, 116
  %4411 = fsub fast float %4362, %4399
  %4412 = fsub fast float %4363, %4402
  %4413 = fmul fast float %4370, %4411
  %4414 = fmul fast float %4370, %4412
  %4415 = call float @dx.op.unary.f32(i32 7, float %4413)  ; Saturate(value)
  %4416 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4417 = fsub fast float 1.000000e+00, %4416
  %4418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.f32 %4418, 2
  %4420 = call float @dx.op.unary.f32(i32 83, float %4415)  ; DerivCoarseX(value)
  %4421 = call float @dx.op.unary.f32(i32 83, float %4417)  ; DerivCoarseX(value)
  %4422 = call float @dx.op.unary.f32(i32 84, float %4415)  ; DerivCoarseY(value)
  %4423 = call float @dx.op.unary.f32(i32 84, float %4417)  ; DerivCoarseY(value)
  %4424 = fmul fast float %4420, %4419
  %4425 = fmul fast float %4421, %4419
  %4426 = fmul fast float %4422, %4419
  %4427 = fmul fast float %4423, %4419
  %4428 = call float @dx.op.dot2.f32(i32 54, float %4426, float %4427, float %4426, float %4427)  ; Dot2(ax,ay,bx,by)
  %4429 = call float @dx.op.dot2.f32(i32 54, float %4424, float %4425, float %4424, float %4425)  ; Dot2(ax,ay,bx,by)
  %4430 = call float @dx.op.binary.f32(i32 35, float %4429, float %4428)  ; FMax(a,b)
  %4431 = call float @dx.op.unary.f32(i32 23, float %4430)  ; Log(value)
  %4432 = fmul fast float %4431, 5.000000e-01
  %4433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.f32 %4433, 1
  %4435 = fadd fast float %4434, %4432
  %4436 = call float @dx.op.binary.f32(i32 35, float %4435, float 0.000000e+00)  ; FMax(a,b)
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4439 = fadd fast float %4438, %4436
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 3
  %4442 = fadd fast float %4439, %4441
  %4443 = add i32 %4409, 0
  %4444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4443, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4445 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4444, i32 0)  ; GetDimensions(handle,mipLevel)
  %4446 = extractvalue %dx.types.Dimensions %4445, 0
  %4447 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4446)  ; FirstbitLo(value)
  %4448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.i32 %4448, 1
  %4450 = sub nsw i32 %4449, %4447
  %4451 = sitofp i32 %4450 to float
  %4452 = fsub fast float %4442, %4451
  %4453 = call float @dx.op.binary.f32(i32 35, float %4452, float 0.000000e+00)  ; FMax(a,b)
  %4454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4444, %dx.types.Handle %28, float %4415, float %4417, float %4405, float undef, i32 0, i32 0, i32 undef, float %4453)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4455 = extractvalue %dx.types.ResRet.f32 %4454, 0
  %4456 = fcmp ule float %4455, 0x3FE0101020000000
  %4457 = extractvalue %dx.types.CBufRet.i32 %4448, 0
  %4458 = and i32 %4457, 128
  %4459 = icmp ne i32 %4458, 0
  %4460 = and i1 %4456, %4459
  br i1 %4460, label %4611, label %4461

; <label>:4461                                    ; preds = %4395
  %4462 = add i32 %4396, 20
  %4463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4462, i32 undef)  ; BufferLoad(srv,index,wot)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 0
  %4465 = add i32 %4396, 24
  %4466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4465, i32 undef)  ; BufferLoad(srv,index,wot)
  %4467 = extractvalue %dx.types.ResRet.f32 %4466, 0
  %4468 = add i32 %4396, 40
  %4469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4468, i32 undef)  ; BufferLoad(srv,index,wot)
  %4470 = extractvalue %dx.types.ResRet.f32 %4469, 0
  %4471 = add i32 %4396, 96
  %4472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4471, i32 undef)  ; BufferLoad(srv,index,wot)
  %4473 = extractvalue %dx.types.ResRet.i32 %4472, 0
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 2
  %4476 = fmul fast float %4475, %4415
  %4477 = fmul fast float %4475, %4417
  %4478 = extractvalue %dx.types.CBufRet.f32 %4474, 3
  %4479 = fadd fast float %4476, %4478
  %4480 = fadd fast float %4477, %4478
  %4481 = add i32 %4473, 0
  %4482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4481, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4483 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4482, i32 0)  ; GetDimensions(handle,mipLevel)
  %4484 = extractvalue %dx.types.Dimensions %4483, 0
  %4485 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4484)  ; FirstbitLo(value)
  %4486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.i32 %4486, 1
  %4488 = sub nsw i32 %4487, %4485
  %4489 = sitofp i32 %4488 to float
  %4490 = fsub fast float %4439, %4489
  %4491 = call float @dx.op.binary.f32(i32 35, float %4490, float 0.000000e+00)  ; FMax(a,b)
  %4492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4482, %dx.types.Handle %28, float %4479, float %4480, float %4470, float undef, i32 0, i32 0, i32 undef, float %4491)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4493 = extractvalue %dx.types.ResRet.f32 %4492, 0
  %4494 = fmul fast float %4493, %4464
  %4495 = fadd fast float %4494, %4467
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 0
  %4498 = extractvalue %dx.types.CBufRet.f32 %4496, 1
  %4499 = extractvalue %dx.types.CBufRet.f32 %4496, 2
  %4500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4501 = extractvalue %dx.types.CBufRet.f32 %4500, 3
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 3
  %4504 = extractvalue %dx.types.CBufRet.f32 %4496, 3
  %4505 = fadd fast float %4501, %4362
  %4506 = fadd fast float %4503, %4363
  %4507 = fadd fast float %4495, %4504
  %4508 = fmul fast float %4505, %4497
  %4509 = call float @dx.op.tertiary.f32(i32 46, float %4506, float %4498, float %4508)  ; FMad(a,b,c)
  %4510 = call float @dx.op.tertiary.f32(i32 46, float %4507, float %4499, float %4509)  ; FMad(a,b,c)
  %4511 = fsub fast float %4510, %4504
  %4512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.f32 %4512, 2
  %4514 = fsub fast float %4511, %4513
  %4515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.i32 %4515, 0
  %4517 = call i32 @dx.op.binary.i32(i32 40, i32 %4393, i32 %4516)  ; UMin(a,b)
  %4518 = mul i32 %4517, 36
  %4519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4518, i32 undef)  ; BufferLoad(srv,index,wot)
  %4520 = extractvalue %dx.types.ResRet.i32 %4519, 0
  %4521 = add i32 %4518, 4
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 0
  %4524 = fmul fast float %4523, %4415
  %4525 = fmul fast float %4523, %4417
  %4526 = extractvalue %dx.types.CBufRet.f32 %4522, 1
  %4527 = fadd fast float %4524, %4526
  %4528 = fadd fast float %4525, %4526
  %4529 = icmp eq i32 %4520, 0
  br i1 %4529, label %4598, label %4530

; <label>:4530                                    ; preds = %4461
  br label %4531

; <label>:4531                                    ; preds = %4588, %4530
  %4532 = phi float [ %4589, %4588 ], [ 0.000000e+00, %4530 ]
  %4533 = phi float [ %4590, %4588 ], [ 0.000000e+00, %4530 ]
  %4534 = phi float [ %4591, %4588 ], [ 0.000000e+00, %4530 ]
  %4535 = phi float [ %4592, %4588 ], [ 0.000000e+00, %4530 ]
  %4536 = phi float [ %4593, %4588 ], [ 0.000000e+00, %4530 ]
  %4537 = phi float [ %4594, %4588 ], [ 0.000000e+00, %4530 ]
  %4538 = phi i32 [ %4595, %4588 ], [ 0, %4530 ]
  %4539 = shl i32 %4538, 2
  %4540 = add i32 %4406, %4539
  %4541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4540, i32 undef)  ; BufferLoad(srv,index,wot)
  %4542 = extractvalue %dx.types.ResRet.f32 %4541, 0
  %4543 = add i32 %4410, %4539
  %4544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.i32 %4544, 0
  %4546 = add i32 %4545, 0
  %4547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4546, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4548 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4547, i32 0)  ; GetDimensions(handle,mipLevel)
  %4549 = extractvalue %dx.types.Dimensions %4548, 0
  %4550 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4549)  ; FirstbitLo(value)
  %4551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.i32 %4551, 1
  %4553 = sub nsw i32 %4552, %4550
  %4554 = sitofp i32 %4553 to float
  %4555 = fsub fast float %4439, %4554
  %4556 = call float @dx.op.binary.f32(i32 35, float %4555, float 0.000000e+00)  ; FMax(a,b)
  %4557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4547, %dx.types.Handle %28, float %4527, float %4528, float %4542, float undef, i32 0, i32 0, i32 undef, float %4556)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = fcmp fast ogt float %4558, 0.000000e+00
  br i1 %4559, label %4560, label %4588

; <label>:4560                                    ; preds = %4531
  %4561 = add i32 %4521, %4539
  %4562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4561, i32 undef)  ; BufferLoad(srv,index,wot)
  %4563 = extractvalue %dx.types.ResRet.i32 %4562, 0
  %4564 = and i32 %4563, 32767
  %4565 = mul nuw nsw i32 %4564, 928
  %4566 = add nuw nsw i32 %4565, 48
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4571 = add nuw nsw i32 %4565, 60
  %4572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4576 = fmul fast float %4568, %4558
  %4577 = fmul fast float %4569, %4558
  %4578 = fmul fast float %4570, %4558
  %4579 = fadd fast float %4576, %4532
  %4580 = fadd fast float %4577, %4533
  %4581 = fadd fast float %4578, %4534
  %4582 = fmul fast float %4573, %4558
  %4583 = fmul fast float %4574, %4558
  %4584 = fmul fast float %4575, %4558
  %4585 = fadd fast float %4582, %4535
  %4586 = fadd fast float %4583, %4536
  %4587 = fadd fast float %4584, %4537
  br label %4588

; <label>:4588                                    ; preds = %4560, %4531
  %4589 = phi float [ %4579, %4560 ], [ %4532, %4531 ]
  %4590 = phi float [ %4580, %4560 ], [ %4533, %4531 ]
  %4591 = phi float [ %4581, %4560 ], [ %4534, %4531 ]
  %4592 = phi float [ %4585, %4560 ], [ %4535, %4531 ]
  %4593 = phi float [ %4586, %4560 ], [ %4536, %4531 ]
  %4594 = phi float [ %4587, %4560 ], [ %4537, %4531 ]
  %4595 = add nuw i32 %4538, 1
  %4596 = icmp eq i32 %4595, %4520
  br i1 %4596, label %4597, label %4531

; <label>:4597                                    ; preds = %4588
  br label %4598

; <label>:4598                                    ; preds = %4597, %4461
  %4599 = phi float [ 0.000000e+00, %4461 ], [ %4589, %4597 ]
  %4600 = phi float [ 0.000000e+00, %4461 ], [ %4590, %4597 ]
  %4601 = phi float [ 0.000000e+00, %4461 ], [ %4591, %4597 ]
  %4602 = phi float [ 0.000000e+00, %4461 ], [ %4592, %4597 ]
  %4603 = phi float [ 0.000000e+00, %4461 ], [ %4593, %4597 ]
  %4604 = phi float [ 0.000000e+00, %4461 ], [ %4594, %4597 ]
  %4605 = fadd fast float %4602, %4599
  %4606 = fmul fast float %4605, 0x3F847AE140000000
  %4607 = fadd fast float %4603, %4600
  %4608 = fmul fast float %4607, 0x3F847AE140000000
  %4609 = fadd fast float %4604, %4601
  %4610 = fmul fast float %4609, 0x3F847AE140000000
  br label %4611

; <label>:4611                                    ; preds = %4598, %4395, %4340, %4337, %4308, %4270
  %4612 = phi float [ %4322, %4308 ], [ -1.310720e+05, %4270 ], [ %4514, %4598 ], [ -1.310720e+05, %4340 ], [ -1.310720e+05, %4395 ], [ -1.310720e+05, %4337 ]
  %4613 = phi float [ %4332, %4308 ], [ 0.000000e+00, %4270 ], [ %4606, %4598 ], [ 0.000000e+00, %4340 ], [ 0.000000e+00, %4395 ], [ 0.000000e+00, %4337 ]
  %4614 = phi float [ %4334, %4308 ], [ 0.000000e+00, %4270 ], [ %4608, %4598 ], [ 0.000000e+00, %4340 ], [ 0.000000e+00, %4395 ], [ 0.000000e+00, %4337 ]
  %4615 = phi float [ %4336, %4308 ], [ 0.000000e+00, %4270 ], [ %4610, %4598 ], [ 0.000000e+00, %4340 ], [ 0.000000e+00, %4395 ], [ 0.000000e+00, %4337 ]
  %4616 = phi i1 [ true, %4308 ], [ false, %4270 ], [ true, %4598 ], [ false, %4340 ], [ false, %4395 ], [ false, %4337 ]
  %4617 = and i32 %196, 3
  %4618 = icmp eq i32 %4617, 1
  %4619 = select i1 %4618, float 1.000000e+00, float 0.000000e+00
  %4620 = fsub fast float %4612, %167
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = select i1 %4616, float %4621, float 1.000000e+00
  %4623 = fmul fast float %4622, %4619
  %4624 = icmp eq i32 %4617, 3
  %4625 = select i1 %4624, float 1.000000e+00, float %4623
  %4626 = call float @dx.op.binary.f32(i32 35, float %4213, float %4625)  ; FMax(a,b)
  %4627 = fcmp fast olt float %4625, 1.000000e+00
  %4628 = fcmp uge float %51, 0.000000e+00
  %4629 = and i1 %4628, %4627
  br i1 %4629, label %4630, label %4640

; <label>:4630                                    ; preds = %4611
  %4631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %51, float %52, float %53, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4632 = extractvalue %dx.types.ResRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.ResRet.f32 %4631, 1
  %4634 = extractvalue %dx.types.ResRet.f32 %4631, 2
  %4635 = fadd fast float %4632, %4626
  %4636 = fcmp ule float %50, 0.000000e+00
  %4637 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4638 = select i1 %4636, float %4637, float 1.000000e+00
  %4639 = fmul fast float %4638, %4634
  br label %4640

; <label>:4640                                    ; preds = %4630, %4611
  %4641 = phi float [ %4635, %4630 ], [ %4626, %4611 ]
  %4642 = phi float [ %4633, %4630 ], [ 0.000000e+00, %4611 ]
  %4643 = phi float [ %4639, %4630 ], [ 0.000000e+00, %4611 ]
  %4644 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4646 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4647 = fcmp fast une float %4645, 0.000000e+00
  %4648 = fcmp fast une float %4646, 0.000000e+00
  %4649 = or i1 %4647, %4648
  br i1 %4649, label %4650, label %5209

; <label>:4650                                    ; preds = %4640
  br i1 %4647, label %4651, label %4924

; <label>:4651                                    ; preds = %4650
  %4652 = call float @dx.op.unary.f32(i32 23, float %4210)  ; Log(value)
  %4653 = fmul fast float %4652, 4.000000e+00
  %4654 = call float @dx.op.unary.f32(i32 21, float %4653)  ; Exp(value)
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 0
  %4657 = fmul fast float %4656, %38
  %4658 = fmul fast float %4656, %39
  %4659 = fmul fast float %4656, %40
  %4660 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4661 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %4662 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %4663 = call float @dx.op.unary.f32(i32 23, float %4660)  ; Log(value)
  %4664 = call float @dx.op.unary.f32(i32 23, float %4661)  ; Log(value)
  %4665 = call float @dx.op.unary.f32(i32 23, float %4662)  ; Log(value)
  %4666 = fmul fast float %4663, 4.000000e+00
  %4667 = fmul fast float %4664, 4.000000e+00
  %4668 = fmul fast float %4665, 4.000000e+00
  %4669 = call float @dx.op.unary.f32(i32 21, float %4666)  ; Exp(value)
  %4670 = call float @dx.op.unary.f32(i32 21, float %4667)  ; Exp(value)
  %4671 = call float @dx.op.unary.f32(i32 21, float %4668)  ; Exp(value)
  %4672 = fadd fast float %4670, %4669
  %4673 = fadd fast float %4672, %4671
  %4674 = fdiv fast float 1.000000e+00, %4673
  %4675 = fmul fast float %4674, %4669
  %4676 = fcmp fast ogt float %47, 0.000000e+00
  %4677 = fcmp fast ogt float %48, 0.000000e+00
  %4678 = fcmp fast ogt float %49, 0.000000e+00
  %4679 = fcmp fast olt float %47, 0.000000e+00
  %4680 = fcmp fast olt float %48, 0.000000e+00
  %4681 = fcmp fast olt float %49, 0.000000e+00
  %4682 = zext i1 %4676 to i32
  %4683 = zext i1 %4677 to i32
  %4684 = zext i1 %4678 to i32
  %4685 = zext i1 %4679 to i32
  %4686 = zext i1 %4680 to i32
  %4687 = zext i1 %4681 to i32
  %4688 = sub nsw i32 %4682, %4685
  %4689 = sub nsw i32 %4683, %4686
  %4690 = sub nsw i32 %4684, %4687
  %4691 = call float @dx.op.unary.f32(i32 83, float %4657)  ; DerivCoarseX(value)
  %4692 = call float @dx.op.unary.f32(i32 83, float %4658)  ; DerivCoarseX(value)
  %4693 = call float @dx.op.unary.f32(i32 83, float %4659)  ; DerivCoarseX(value)
  %4694 = call float @dx.op.unary.f32(i32 84, float %4657)  ; DerivCoarseY(value)
  %4695 = call float @dx.op.unary.f32(i32 84, float %4658)  ; DerivCoarseY(value)
  %4696 = call float @dx.op.unary.f32(i32 84, float %4659)  ; DerivCoarseY(value)
  %4697 = fcmp fast ole float %228, %4675
  %4698 = fmul fast float %4674, %4672
  %4699 = fcmp fast ole float %228, %4698
  %4700 = select i1 %4699, float %4659, float %4657
  %4701 = select i1 %4699, float %4657, float %4658
  %4702 = select i1 %4697, float %4658, float %4700
  %4703 = select i1 %4697, float %4659, float %4701
  %4704 = select i1 %4699, float %4693, float %4691
  %4705 = select i1 %4699, float %4691, float %4692
  %4706 = select i1 %4697, float %4692, float %4704
  %4707 = select i1 %4697, float %4693, float %4705
  %4708 = select i1 %4699, float %4696, float %4694
  %4709 = select i1 %4699, float %4694, float %4695
  %4710 = select i1 %4697, float %4695, float %4708
  %4711 = select i1 %4697, float %4696, float %4709
  %4712 = call float @dx.op.unary.f32(i32 27, float %4702)  ; Round_ni(value)
  %4713 = call float @dx.op.unary.f32(i32 27, float %4703)  ; Round_ni(value)
  %4714 = fptosi float %4712 to i32
  %4715 = fptosi float %4713 to i32
  %4716 = xor i32 %4715, %4714
  %4717 = sitofp i32 %4716 to float
  %4718 = fptosi float %4717 to i32
  %4719 = sitofp i32 %4718 to float
  %4720 = fmul fast float %4719, 0x3FE3C6EF40000000
  %4721 = frem fast float %4712, 2.560000e+02
  %4722 = frem fast float %4713, 2.560000e+02
  %4723 = fptoui float %4721 to i32
  %4724 = fptoui float %4722 to i32
  %4725 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4723, i32 %4724, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4726 = extractvalue %dx.types.ResRet.f32 %4725, 0
  %4727 = extractvalue %dx.types.ResRet.f32 %4725, 1
  %4728 = extractvalue %dx.types.ResRet.f32 %4725, 2
  %4729 = fadd fast float %4726, %4720
  %4730 = fadd fast float %4727, %4720
  %4731 = fadd fast float %4728, %4720
  %4732 = call float @dx.op.unary.f32(i32 22, float %4729)  ; Frc(value)
  %4733 = call float @dx.op.unary.f32(i32 22, float %4730)  ; Frc(value)
  %4734 = call float @dx.op.unary.f32(i32 22, float %4731)  ; Frc(value)
  %4735 = fmul fast float %4734, 0x401921FB60000000
  %4736 = call float @dx.op.unary.f32(i32 13, float %4735)  ; Sin(value)
  %4737 = call float @dx.op.unary.f32(i32 12, float %4735)  ; Cos(value)
  %4738 = fsub fast float -0.000000e+00, %4737
  %4739 = fmul fast float %4737, %4702
  %4740 = call float @dx.op.tertiary.f32(i32 46, float %4736, float %4703, float %4739)  ; FMad(a,b,c)
  %4741 = fmul fast float %4736, %4702
  %4742 = call float @dx.op.tertiary.f32(i32 46, float %4738, float %4703, float %4741)  ; FMad(a,b,c)
  %4743 = fadd fast float %4740, %4732
  %4744 = fadd fast float %4742, %4733
  %4745 = extractvalue %dx.types.CBufRet.f32 %4655, 3
  %4746 = bitcast float %4745 to i32
  %4747 = icmp eq i32 %4746, 0
  br i1 %4747, label %4786, label %4748

; <label>:4748                                    ; preds = %4651
  %4749 = add i32 %4746, 0
  %4750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4751 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4750, %dx.types.Handle %82, float %4743, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float %4706, float %4707, float undef, float %4710, float %4711, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4752 = extractvalue %dx.types.ResRet.f32 %4751, 0
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 1
  %4755 = extractvalue %dx.types.CBufRet.f32 %4753, 2
  %4756 = fsub fast float 1.000000e+00, %4645
  %4757 = call float @dx.op.binary.f32(i32 35, float %4756, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4758 = bitcast float %4645 to i32
  %4759 = sitofp i32 %4758 to float
  %4760 = fadd fast float %4759, 0xC1CFBF8940000000
  %4761 = fmul fast float %4755, %4760
  %4762 = fadd fast float %4761, 0x41CFBF8940000000
  %4763 = fptosi float %4762 to i32
  %4764 = bitcast i32 %4763 to float
  %4765 = bitcast float %4757 to i32
  %4766 = sitofp i32 %4765 to float
  %4767 = fadd fast float %4766, 0xC1CFBF8940000000
  %4768 = fmul fast float %4767, %4755
  %4769 = fadd fast float %4768, 0x41CFBF8940000000
  %4770 = fptosi float %4769 to i32
  %4771 = bitcast i32 %4770 to float
  %4772 = fmul fast float %4764, %4754
  %4773 = fmul fast float %4771, %4754
  %4774 = fsub fast float %4757, %4772
  %4775 = fadd fast float %4773, %4757
  %4776 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4777 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4778 = fsub fast float %4752, %4776
  %4779 = fsub fast float %4777, %4776
  %4780 = bitcast float %4779 to i32
  %4781 = sub nsw i32 2129859010, %4780
  %4782 = bitcast i32 %4781 to float
  %4783 = fmul fast float %4782, %4778
  %4784 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4785 = fcmp fast olt float %4784, 0x3F70101020000000
  br i1 %4785, label %4924, label %4786

; <label>:4786                                    ; preds = %4748, %4651
  %4787 = phi float [ %4784, %4748 ], [ %4645, %4651 ]
  %4788 = fmul fast float %4787, %4654
  %4789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.i32 %4789, 1
  %4791 = extractvalue %dx.types.CBufRet.i32 %4789, 0
  %4792 = add i32 %4791, 0
  %4793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4792, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4794 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4793, %dx.types.Handle %81, float %4743, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float %4706, float %4707, float undef, float %4710, float %4711, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4795 = extractvalue %dx.types.ResRet.f32 %4794, 0
  %4796 = extractvalue %dx.types.ResRet.f32 %4794, 1
  %4797 = extractvalue %dx.types.ResRet.f32 %4794, 2
  %4798 = extractvalue %dx.types.ResRet.f32 %4794, 3
  %4799 = and i32 %4790, 255
  %4800 = uitofp i32 %4799 to float
  %4801 = lshr i32 %4790, 8
  %4802 = and i32 %4801, 255
  %4803 = uitofp i32 %4802 to float
  %4804 = fmul fast float %4798, %4800
  %4805 = fadd fast float %4804, %4803
  %4806 = fmul fast float %4805, 0x3F70101000000000
  %4807 = fadd fast float %4806, 0xBFB99999A0000000
  %4808 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4809 = fmul fast float %4808, 0x3FF1C71C80000000
  %4810 = call float @dx.op.binary.f32(i32 36, float %4806, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4811 = fsub fast float 1.000000e+00, %4809
  %4812 = call float @dx.op.unary.f32(i32 7, float %4811)  ; Saturate(value)
  %4813 = fmul fast float %4812, %4795
  %4814 = fmul fast float %4812, %4796
  %4815 = fmul fast float %4812, %4797
  %4816 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4817 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4818 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4819 = fmul fast float %4809, %4795
  %4820 = fmul fast float %4809, %4796
  %4821 = fmul fast float %4809, %4797
  %4822 = fadd fast float %4819, %4810
  %4823 = fadd fast float %4820, %4810
  %4824 = fadd fast float %4821, %4810
  %4825 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4826 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4827 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.i32 %4828, 3
  %4830 = extractvalue %dx.types.CBufRet.i32 %4828, 2
  %4831 = add i32 %4830, 0
  %4832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4833 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4832, %dx.types.Handle %81, float %4743, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float %4706, float %4707, float undef, float %4710, float %4711, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4834 = extractvalue %dx.types.ResRet.f32 %4833, 0
  %4835 = extractvalue %dx.types.ResRet.f32 %4833, 1
  %4836 = extractvalue %dx.types.ResRet.f32 %4833, 2
  %4837 = extractvalue %dx.types.ResRet.f32 %4833, 3
  %4838 = and i32 %4829, 255
  %4839 = uitofp i32 %4838 to float
  %4840 = lshr i32 %4829, 8
  %4841 = and i32 %4840, 255
  %4842 = uitofp i32 %4841 to float
  %4843 = lshr i32 %4829, 16
  %4844 = and i32 %4843, 255
  %4845 = uitofp i32 %4844 to float
  %4846 = fmul fast float %4845, 0x3F70101000000000
  %4847 = fmul fast float %4834, %4839
  %4848 = fadd fast float %4847, %4842
  %4849 = fmul fast float %4848, 0x3F70101000000000
  %4850 = fadd fast float %4835, -5.000000e-01
  %4851 = fadd fast float %4837, -5.000000e-01
  %4852 = fmul fast float %4850, %4846
  %4853 = fmul fast float %4851, %4846
  %4854 = fadd fast float %4852, 5.000000e-01
  %4855 = fadd fast float %4853, 5.000000e-01
  %4856 = fmul fast float %4854, 2.000000e+00
  %4857 = fadd fast float %4856, -1.000000e+00
  %4858 = fmul fast float %4855, 2.000000e+00
  %4859 = fadd fast float %4858, -1.000000e+00
  %4860 = fadd fast float %4857, %4859
  %4861 = fmul fast float %4860, 5.000000e-01
  %4862 = fsub fast float %4857, %4859
  %4863 = fmul fast float %4862, 5.000000e-01
  %4864 = call float @dx.op.unary.f32(i32 6, float %4861)  ; FAbs(value)
  %4865 = fsub fast float 1.000000e+00, %4864
  %4866 = call float @dx.op.unary.f32(i32 6, float %4863)  ; FAbs(value)
  %4867 = fsub fast float %4865, %4866
  %4868 = call float @dx.op.dot3.f32(i32 55, float %4861, float %4863, float %4867, float %4861, float %4863, float %4867)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = call float @dx.op.unary.f32(i32 25, float %4868)  ; Rsqrt(value)
  %4870 = fmul fast float %4861, %4869
  %4871 = fmul fast float %4863, %4869
  %4872 = select i1 %4699, i32 %4689, i32 %4690
  %4873 = select i1 %4697, i32 %4688, i32 %4872
  %4874 = sitofp i32 %4873 to float
  %4875 = fmul fast float %4867, %4874
  %4876 = fmul fast float %4875, %4869
  %4877 = select i1 %4699, float %4876, float %4871
  %4878 = select i1 %4699, float %4871, float %4876
  %4879 = select i1 %4697, float %4876, float %4870
  %4880 = select i1 %4697, float %4871, float %4877
  %4881 = select i1 %4697, float %4870, float %4878
  %4882 = fsub fast float %4816, %4249
  %4883 = fsub fast float %4817, %4250
  %4884 = fsub fast float %4818, %4251
  %4885 = fmul fast float %4882, %4788
  %4886 = fmul fast float %4883, %4788
  %4887 = fmul fast float %4884, %4788
  %4888 = fadd fast float %4885, %4249
  %4889 = fadd fast float %4886, %4250
  %4890 = fadd fast float %4887, %4251
  %4891 = fsub fast float %4825, %4234
  %4892 = fsub fast float %4826, %4235
  %4893 = fsub fast float %4827, %4236
  %4894 = fmul fast float %4891, %4788
  %4895 = fmul fast float %4892, %4788
  %4896 = fmul fast float %4893, %4788
  %4897 = fadd fast float %4894, %4234
  %4898 = fadd fast float %4895, %4235
  %4899 = fadd fast float %4896, %4236
  %4900 = fadd fast float %4879, %4198
  %4901 = fadd fast float %4880, %4199
  %4902 = fadd fast float %4881, %4200
  %4903 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %4900, float %4901, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %4904 = call float @dx.op.unary.f32(i32 25, float %4903)  ; Rsqrt(value)
  %4905 = fmul fast float %4900, %4904
  %4906 = fmul fast float %4901, %4904
  %4907 = fmul fast float %4902, %4904
  %4908 = fsub fast float %4905, %4198
  %4909 = fsub fast float %4906, %4199
  %4910 = fsub fast float %4907, %4200
  %4911 = fmul fast float %4908, %4788
  %4912 = fmul fast float %4909, %4788
  %4913 = fmul fast float %4910, %4788
  %4914 = fadd fast float %4911, %4198
  %4915 = fadd fast float %4912, %4199
  %4916 = fadd fast float %4913, %4200
  %4917 = call float @dx.op.binary.f32(i32 36, float %4210, float %4836)  ; FMin(a,b)
  %4918 = fsub fast float %4917, %4210
  %4919 = fmul fast float %4918, %4788
  %4920 = fadd fast float %4919, %4210
  %4921 = fsub fast float %4849, %4237
  %4922 = fmul fast float %4921, %4788
  %4923 = fadd fast float %4922, %4237
  br label %4924

; <label>:4924                                    ; preds = %4786, %4748, %4650
  %4925 = phi float [ %4888, %4786 ], [ %4249, %4748 ], [ %4249, %4650 ]
  %4926 = phi float [ %4889, %4786 ], [ %4250, %4748 ], [ %4250, %4650 ]
  %4927 = phi float [ %4890, %4786 ], [ %4251, %4748 ], [ %4251, %4650 ]
  %4928 = phi float [ %4914, %4786 ], [ %4198, %4748 ], [ %4198, %4650 ]
  %4929 = phi float [ %4915, %4786 ], [ %4199, %4748 ], [ %4199, %4650 ]
  %4930 = phi float [ %4916, %4786 ], [ %4200, %4748 ], [ %4200, %4650 ]
  %4931 = phi float [ %4897, %4786 ], [ %4234, %4748 ], [ %4234, %4650 ]
  %4932 = phi float [ %4898, %4786 ], [ %4235, %4748 ], [ %4235, %4650 ]
  %4933 = phi float [ %4899, %4786 ], [ %4236, %4748 ], [ %4236, %4650 ]
  %4934 = phi float [ %4923, %4786 ], [ %4237, %4748 ], [ %4237, %4650 ]
  %4935 = phi float [ %4920, %4786 ], [ %4210, %4748 ], [ %4210, %4650 ]
  br i1 %4648, label %4936, label %5209

; <label>:4936                                    ; preds = %4924
  %4937 = call float @dx.op.unary.f32(i32 23, float %4935)  ; Log(value)
  %4938 = fmul fast float %4937, 4.000000e+00
  %4939 = call float @dx.op.unary.f32(i32 21, float %4938)  ; Exp(value)
  %4940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4940, 0
  %4942 = fmul fast float %4941, %38
  %4943 = fmul fast float %4941, %39
  %4944 = fmul fast float %4941, %40
  %4945 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4946 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %4947 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %4948 = call float @dx.op.unary.f32(i32 23, float %4945)  ; Log(value)
  %4949 = call float @dx.op.unary.f32(i32 23, float %4946)  ; Log(value)
  %4950 = call float @dx.op.unary.f32(i32 23, float %4947)  ; Log(value)
  %4951 = fmul fast float %4948, 4.000000e+00
  %4952 = fmul fast float %4949, 4.000000e+00
  %4953 = fmul fast float %4950, 4.000000e+00
  %4954 = call float @dx.op.unary.f32(i32 21, float %4951)  ; Exp(value)
  %4955 = call float @dx.op.unary.f32(i32 21, float %4952)  ; Exp(value)
  %4956 = call float @dx.op.unary.f32(i32 21, float %4953)  ; Exp(value)
  %4957 = fadd fast float %4955, %4954
  %4958 = fadd fast float %4957, %4956
  %4959 = fdiv fast float 1.000000e+00, %4958
  %4960 = fmul fast float %4959, %4954
  %4961 = fcmp fast ogt float %47, 0.000000e+00
  %4962 = fcmp fast ogt float %48, 0.000000e+00
  %4963 = fcmp fast ogt float %49, 0.000000e+00
  %4964 = fcmp fast olt float %47, 0.000000e+00
  %4965 = fcmp fast olt float %48, 0.000000e+00
  %4966 = fcmp fast olt float %49, 0.000000e+00
  %4967 = zext i1 %4961 to i32
  %4968 = zext i1 %4962 to i32
  %4969 = zext i1 %4963 to i32
  %4970 = zext i1 %4964 to i32
  %4971 = zext i1 %4965 to i32
  %4972 = zext i1 %4966 to i32
  %4973 = sub nsw i32 %4967, %4970
  %4974 = sub nsw i32 %4968, %4971
  %4975 = sub nsw i32 %4969, %4972
  %4976 = call float @dx.op.unary.f32(i32 83, float %4942)  ; DerivCoarseX(value)
  %4977 = call float @dx.op.unary.f32(i32 83, float %4943)  ; DerivCoarseX(value)
  %4978 = call float @dx.op.unary.f32(i32 83, float %4944)  ; DerivCoarseX(value)
  %4979 = call float @dx.op.unary.f32(i32 84, float %4942)  ; DerivCoarseY(value)
  %4980 = call float @dx.op.unary.f32(i32 84, float %4943)  ; DerivCoarseY(value)
  %4981 = call float @dx.op.unary.f32(i32 84, float %4944)  ; DerivCoarseY(value)
  %4982 = fcmp fast ole float %228, %4960
  %4983 = fmul fast float %4959, %4957
  %4984 = fcmp fast ole float %228, %4983
  %4985 = select i1 %4984, float %4944, float %4942
  %4986 = select i1 %4984, float %4942, float %4943
  %4987 = select i1 %4982, float %4943, float %4985
  %4988 = select i1 %4982, float %4944, float %4986
  %4989 = select i1 %4984, float %4978, float %4976
  %4990 = select i1 %4984, float %4976, float %4977
  %4991 = select i1 %4982, float %4977, float %4989
  %4992 = select i1 %4982, float %4978, float %4990
  %4993 = select i1 %4984, float %4981, float %4979
  %4994 = select i1 %4984, float %4979, float %4980
  %4995 = select i1 %4982, float %4980, float %4993
  %4996 = select i1 %4982, float %4981, float %4994
  %4997 = call float @dx.op.unary.f32(i32 27, float %4987)  ; Round_ni(value)
  %4998 = call float @dx.op.unary.f32(i32 27, float %4988)  ; Round_ni(value)
  %4999 = fptosi float %4997 to i32
  %5000 = fptosi float %4998 to i32
  %5001 = xor i32 %5000, %4999
  %5002 = sitofp i32 %5001 to float
  %5003 = fptosi float %5002 to i32
  %5004 = sitofp i32 %5003 to float
  %5005 = fmul fast float %5004, 0x3FE3C6EF40000000
  %5006 = frem fast float %4997, 2.560000e+02
  %5007 = frem fast float %4998, 2.560000e+02
  %5008 = fptoui float %5006 to i32
  %5009 = fptoui float %5007 to i32
  %5010 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %5008, i32 %5009, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5011 = extractvalue %dx.types.ResRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.ResRet.f32 %5010, 1
  %5013 = extractvalue %dx.types.ResRet.f32 %5010, 2
  %5014 = fadd fast float %5011, %5005
  %5015 = fadd fast float %5012, %5005
  %5016 = fadd fast float %5013, %5005
  %5017 = call float @dx.op.unary.f32(i32 22, float %5014)  ; Frc(value)
  %5018 = call float @dx.op.unary.f32(i32 22, float %5015)  ; Frc(value)
  %5019 = call float @dx.op.unary.f32(i32 22, float %5016)  ; Frc(value)
  %5020 = fmul fast float %5019, 0x401921FB60000000
  %5021 = call float @dx.op.unary.f32(i32 13, float %5020)  ; Sin(value)
  %5022 = call float @dx.op.unary.f32(i32 12, float %5020)  ; Cos(value)
  %5023 = fsub fast float -0.000000e+00, %5022
  %5024 = fmul fast float %5022, %4987
  %5025 = call float @dx.op.tertiary.f32(i32 46, float %5021, float %4988, float %5024)  ; FMad(a,b,c)
  %5026 = fmul fast float %5021, %4987
  %5027 = call float @dx.op.tertiary.f32(i32 46, float %5023, float %4988, float %5026)  ; FMad(a,b,c)
  %5028 = fadd fast float %5025, %5017
  %5029 = fadd fast float %5027, %5018
  %5030 = extractvalue %dx.types.CBufRet.f32 %4940, 3
  %5031 = bitcast float %5030 to i32
  %5032 = icmp eq i32 %5031, 0
  br i1 %5032, label %5071, label %5033

; <label>:5033                                    ; preds = %4936
  %5034 = add i32 %5031, 0
  %5035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5036 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5035, %dx.types.Handle %82, float %5028, float %5029, float undef, float undef, i32 0, i32 0, i32 undef, float %4991, float %4992, float undef, float %4995, float %4996, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5037 = extractvalue %dx.types.ResRet.f32 %5036, 0
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5040 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5041 = fsub fast float 1.000000e+00, %4646
  %5042 = call float @dx.op.binary.f32(i32 35, float %5041, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5043 = bitcast float %4646 to i32
  %5044 = sitofp i32 %5043 to float
  %5045 = fadd fast float %5044, 0xC1CFBF8940000000
  %5046 = fmul fast float %5040, %5045
  %5047 = fadd fast float %5046, 0x41CFBF8940000000
  %5048 = fptosi float %5047 to i32
  %5049 = bitcast i32 %5048 to float
  %5050 = bitcast float %5042 to i32
  %5051 = sitofp i32 %5050 to float
  %5052 = fadd fast float %5051, 0xC1CFBF8940000000
  %5053 = fmul fast float %5052, %5040
  %5054 = fadd fast float %5053, 0x41CFBF8940000000
  %5055 = fptosi float %5054 to i32
  %5056 = bitcast i32 %5055 to float
  %5057 = fmul fast float %5049, %5039
  %5058 = fmul fast float %5056, %5039
  %5059 = fsub fast float %5042, %5057
  %5060 = fadd fast float %5058, %5042
  %5061 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5062 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5063 = fsub fast float %5037, %5061
  %5064 = fsub fast float %5062, %5061
  %5065 = bitcast float %5064 to i32
  %5066 = sub nsw i32 2129859010, %5065
  %5067 = bitcast i32 %5066 to float
  %5068 = fmul fast float %5067, %5063
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = fcmp fast olt float %5069, 0x3F70101020000000
  br i1 %5070, label %5209, label %5071

; <label>:5071                                    ; preds = %5033, %4936
  %5072 = phi float [ %5069, %5033 ], [ %4646, %4936 ]
  %5073 = fmul fast float %5072, %4939
  %5074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5075 = extractvalue %dx.types.CBufRet.i32 %5074, 1
  %5076 = extractvalue %dx.types.CBufRet.i32 %5074, 0
  %5077 = add i32 %5076, 0
  %5078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5079 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5078, %dx.types.Handle %81, float %5028, float %5029, float undef, float undef, i32 0, i32 0, i32 undef, float %4991, float %4992, float undef, float %4995, float %4996, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5080 = extractvalue %dx.types.ResRet.f32 %5079, 0
  %5081 = extractvalue %dx.types.ResRet.f32 %5079, 1
  %5082 = extractvalue %dx.types.ResRet.f32 %5079, 2
  %5083 = extractvalue %dx.types.ResRet.f32 %5079, 3
  %5084 = and i32 %5075, 255
  %5085 = uitofp i32 %5084 to float
  %5086 = lshr i32 %5075, 8
  %5087 = and i32 %5086, 255
  %5088 = uitofp i32 %5087 to float
  %5089 = fmul fast float %5083, %5085
  %5090 = fadd fast float %5089, %5088
  %5091 = fmul fast float %5090, 0x3F70101000000000
  %5092 = fadd fast float %5091, 0xBFB99999A0000000
  %5093 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5094 = fmul fast float %5093, 0x3FF1C71C80000000
  %5095 = call float @dx.op.binary.f32(i32 36, float %5091, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5096 = fsub fast float 1.000000e+00, %5094
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = fmul fast float %5097, %5080
  %5099 = fmul fast float %5097, %5081
  %5100 = fmul fast float %5097, %5082
  %5101 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5104 = fmul fast float %5094, %5080
  %5105 = fmul fast float %5094, %5081
  %5106 = fmul fast float %5094, %5082
  %5107 = fadd fast float %5104, %5095
  %5108 = fadd fast float %5105, %5095
  %5109 = fadd fast float %5106, %5095
  %5110 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5112 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.i32 %5113, 3
  %5115 = extractvalue %dx.types.CBufRet.i32 %5113, 2
  %5116 = add i32 %5115, 0
  %5117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5118 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5117, %dx.types.Handle %81, float %5028, float %5029, float undef, float undef, i32 0, i32 0, i32 undef, float %4991, float %4992, float undef, float %4995, float %4996, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5119 = extractvalue %dx.types.ResRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.ResRet.f32 %5118, 1
  %5121 = extractvalue %dx.types.ResRet.f32 %5118, 2
  %5122 = extractvalue %dx.types.ResRet.f32 %5118, 3
  %5123 = and i32 %5114, 255
  %5124 = uitofp i32 %5123 to float
  %5125 = lshr i32 %5114, 8
  %5126 = and i32 %5125, 255
  %5127 = uitofp i32 %5126 to float
  %5128 = lshr i32 %5114, 16
  %5129 = and i32 %5128, 255
  %5130 = uitofp i32 %5129 to float
  %5131 = fmul fast float %5130, 0x3F70101000000000
  %5132 = fmul fast float %5119, %5124
  %5133 = fadd fast float %5132, %5127
  %5134 = fmul fast float %5133, 0x3F70101000000000
  %5135 = fadd fast float %5120, -5.000000e-01
  %5136 = fadd fast float %5122, -5.000000e-01
  %5137 = fmul fast float %5135, %5131
  %5138 = fmul fast float %5136, %5131
  %5139 = fadd fast float %5137, 5.000000e-01
  %5140 = fadd fast float %5138, 5.000000e-01
  %5141 = fmul fast float %5139, 2.000000e+00
  %5142 = fadd fast float %5141, -1.000000e+00
  %5143 = fmul fast float %5140, 2.000000e+00
  %5144 = fadd fast float %5143, -1.000000e+00
  %5145 = fadd fast float %5142, %5144
  %5146 = fmul fast float %5145, 5.000000e-01
  %5147 = fsub fast float %5142, %5144
  %5148 = fmul fast float %5147, 5.000000e-01
  %5149 = call float @dx.op.unary.f32(i32 6, float %5146)  ; FAbs(value)
  %5150 = fsub fast float 1.000000e+00, %5149
  %5151 = call float @dx.op.unary.f32(i32 6, float %5148)  ; FAbs(value)
  %5152 = fsub fast float %5150, %5151
  %5153 = call float @dx.op.dot3.f32(i32 55, float %5146, float %5148, float %5152, float %5146, float %5148, float %5152)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = call float @dx.op.unary.f32(i32 25, float %5153)  ; Rsqrt(value)
  %5155 = fmul fast float %5146, %5154
  %5156 = fmul fast float %5148, %5154
  %5157 = select i1 %4984, i32 %4974, i32 %4975
  %5158 = select i1 %4982, i32 %4973, i32 %5157
  %5159 = sitofp i32 %5158 to float
  %5160 = fmul fast float %5152, %5159
  %5161 = fmul fast float %5160, %5154
  %5162 = select i1 %4984, float %5161, float %5156
  %5163 = select i1 %4984, float %5156, float %5161
  %5164 = select i1 %4982, float %5161, float %5155
  %5165 = select i1 %4982, float %5156, float %5162
  %5166 = select i1 %4982, float %5155, float %5163
  %5167 = fsub fast float %5101, %4925
  %5168 = fsub fast float %5102, %4926
  %5169 = fsub fast float %5103, %4927
  %5170 = fmul fast float %5167, %5073
  %5171 = fmul fast float %5168, %5073
  %5172 = fmul fast float %5169, %5073
  %5173 = fadd fast float %5170, %4925
  %5174 = fadd fast float %5171, %4926
  %5175 = fadd fast float %5172, %4927
  %5176 = fsub fast float %5110, %4931
  %5177 = fsub fast float %5111, %4932
  %5178 = fsub fast float %5112, %4933
  %5179 = fmul fast float %5176, %5073
  %5180 = fmul fast float %5177, %5073
  %5181 = fmul fast float %5178, %5073
  %5182 = fadd fast float %5179, %4931
  %5183 = fadd fast float %5180, %4932
  %5184 = fadd fast float %5181, %4933
  %5185 = fadd fast float %5164, %4928
  %5186 = fadd fast float %5165, %4929
  %5187 = fadd fast float %5166, %4930
  %5188 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5186, float %5187, float %5185, float %5186, float %5187)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = call float @dx.op.unary.f32(i32 25, float %5188)  ; Rsqrt(value)
  %5190 = fmul fast float %5185, %5189
  %5191 = fmul fast float %5186, %5189
  %5192 = fmul fast float %5187, %5189
  %5193 = fsub fast float %5190, %4928
  %5194 = fsub fast float %5191, %4929
  %5195 = fsub fast float %5192, %4930
  %5196 = fmul fast float %5193, %5073
  %5197 = fmul fast float %5194, %5073
  %5198 = fmul fast float %5195, %5073
  %5199 = fadd fast float %5196, %4928
  %5200 = fadd fast float %5197, %4929
  %5201 = fadd fast float %5198, %4930
  %5202 = call float @dx.op.binary.f32(i32 36, float %4935, float %5121)  ; FMin(a,b)
  %5203 = fsub fast float %5202, %4935
  %5204 = fmul fast float %5203, %5073
  %5205 = fadd fast float %5204, %4935
  %5206 = fsub fast float %5134, %4934
  %5207 = fmul fast float %5206, %5073
  %5208 = fadd fast float %5207, %4934
  br label %5209

; <label>:5209                                    ; preds = %5071, %5033, %4924, %4640
  %5210 = phi float [ %5173, %5071 ], [ %4925, %5033 ], [ %4925, %4924 ], [ %4249, %4640 ]
  %5211 = phi float [ %5174, %5071 ], [ %4926, %5033 ], [ %4926, %4924 ], [ %4250, %4640 ]
  %5212 = phi float [ %5175, %5071 ], [ %4927, %5033 ], [ %4927, %4924 ], [ %4251, %4640 ]
  %5213 = phi float [ %5199, %5071 ], [ %4928, %5033 ], [ %4928, %4924 ], [ %4198, %4640 ]
  %5214 = phi float [ %5200, %5071 ], [ %4929, %5033 ], [ %4929, %4924 ], [ %4199, %4640 ]
  %5215 = phi float [ %5201, %5071 ], [ %4930, %5033 ], [ %4930, %4924 ], [ %4200, %4640 ]
  %5216 = phi float [ %5182, %5071 ], [ %4931, %5033 ], [ %4931, %4924 ], [ %4234, %4640 ]
  %5217 = phi float [ %5183, %5071 ], [ %4932, %5033 ], [ %4932, %4924 ], [ %4235, %4640 ]
  %5218 = phi float [ %5184, %5071 ], [ %4933, %5033 ], [ %4933, %4924 ], [ %4236, %4640 ]
  %5219 = phi float [ %5208, %5071 ], [ %4934, %5033 ], [ %4934, %4924 ], [ %4237, %4640 ]
  %5220 = phi float [ %5205, %5071 ], [ %4935, %5033 ], [ %4935, %4924 ], [ %4210, %4640 ]
  %5221 = fcmp fast une float %4644, 0.000000e+00
  %5222 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %5223 = call float @dx.op.unary.f32(i32 25, float %5222)  ; Rsqrt(value)
  br i1 %5221, label %5231, label %5224

; <label>:5224                                    ; preds = %5209
  %5225 = fmul fast float %5223, %165
  %5226 = fmul fast float %5223, %166
  %5227 = fmul fast float %5223, %167
  %5228 = fsub fast float -0.000000e+00, %5225
  %5229 = fsub fast float -0.000000e+00, %5226
  %5230 = fsub fast float -0.000000e+00, %5227
  br label %5398

; <label>:5231                                    ; preds = %5209
  %5232 = fmul fast float %165, %5223
  %5233 = fsub fast float -0.000000e+00, %5232
  %5234 = fmul fast float %166, %5223
  %5235 = fsub fast float -0.000000e+00, %5234
  %5236 = fmul fast float %167, %5223
  %5237 = fsub fast float -0.000000e+00, %5236
  %5238 = call float @dx.op.dot3.f32(i32 55, float %5233, float %5235, float %5237, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %5239 = fmul fast float %4644, 2.500000e+00
  %5240 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5241 = fmul fast float %4644, 0x4013FFFFE0000000
  %5242 = fadd fast float %5241, 0xBFFFFFFFE0000000
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fmul fast float %4644, 0x4004000020000000
  %5245 = fadd fast float %5244, 0xBFF8000040000000
  %5246 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5247 = fmul fast float %4216, 1.000000e+01
  %5248 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5249 = fmul fast float %5248, 2.000000e+00
  %5250 = fsub fast float 3.000000e+00, %5249
  %5251 = fmul fast float %5248, %5248
  %5252 = fmul fast float %5251, %5250
  %5253 = fsub fast float 1.000000e+00, %5252
  %5254 = fsub fast float 0x3FE3333340000000, %5219
  %5255 = fmul fast float %5254, 0x400AAAAAA0000000
  %5256 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5257 = fmul fast float %5253, %5256
  %5258 = fmul fast float %5210, 0x3FEA2B8620000000
  %5259 = fmul fast float %5211, 0x3FEA2B8620000000
  %5260 = fmul fast float %5212, 0x3FEA2B8620000000
  %5261 = fadd fast float %5258, 0x3FC81DFBA0000000
  %5262 = fmul fast float %5261, %5210
  %5263 = fadd fast float %5262, 0x3F910E6020000000
  %5264 = fadd fast float %5259, 0x3FC81DFBA0000000
  %5265 = fmul fast float %5264, %5211
  %5266 = fadd fast float %5265, 0x3F910E6020000000
  %5267 = fadd fast float %5260, 0x3FC81DFBA0000000
  %5268 = fmul fast float %5267, %5212
  %5269 = fadd fast float %5268, 0x3F910E6020000000
  %5270 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5271 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5273 = fsub fast float %5270, %5210
  %5274 = fsub fast float %5271, %5211
  %5275 = fsub fast float %5272, %5212
  %5276 = fmul fast float %5273, %5240
  %5277 = fmul fast float %5276, %5257
  %5278 = fmul fast float %5274, %5240
  %5279 = fmul fast float %5278, %5257
  %5280 = fmul fast float %5275, %5240
  %5281 = fmul fast float %5280, %5257
  %5282 = fadd fast float %5277, %5210
  %5283 = fadd fast float %5279, %5211
  %5284 = fadd fast float %5281, %5212
  %5285 = fmul fast float %5220, %5220
  %5286 = fmul fast float %5285, %5285
  %5287 = fadd fast float %5243, 1.000000e+00
  %5288 = fsub fast float %5287, %5257
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5292 = fsub fast float 1.000000e+00, %5286
  %5293 = call float @dx.op.binary.f32(i32 36, float %5289, float %5292)  ; FMin(a,b)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5295 = call float @dx.op.binary.f32(i32 35, float %5293, float %5294)  ; FMax(a,b)
  %5296 = fadd fast float %5291, 0xBFE4CCCCC0000000
  %5297 = fmul fast float %5296, 0x4006DB6DA0000000
  %5298 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5299 = fmul fast float %5298, 2.000000e+00
  %5300 = fsub fast float 3.000000e+00, %5299
  %5301 = bitcast float %5216 to i32
  %5302 = ashr i32 %5301, 1
  %5303 = add nsw i32 %5302, 532487669
  %5304 = bitcast i32 %5303 to float
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = bitcast float %5305 to i32
  %5307 = sub nsw i32 2129859010, %5306
  %5308 = bitcast i32 %5307 to float
  %5309 = fmul fast float %5308, 2.000000e+00
  %5310 = bitcast float %5217 to i32
  %5311 = ashr i32 %5310, 1
  %5312 = add nsw i32 %5311, 532487669
  %5313 = bitcast i32 %5312 to float
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = bitcast float %5314 to i32
  %5316 = sub nsw i32 2129859010, %5315
  %5317 = bitcast i32 %5316 to float
  %5318 = fmul fast float %5317, 2.000000e+00
  %5319 = bitcast float %5218 to i32
  %5320 = ashr i32 %5319, 1
  %5321 = add nsw i32 %5320, 532487669
  %5322 = bitcast i32 %5321 to float
  %5323 = fsub fast float 1.000000e+00, %5322
  %5324 = bitcast float %5323 to i32
  %5325 = sub nsw i32 2129859010, %5324
  %5326 = bitcast i32 %5325 to float
  %5327 = fmul fast float %5326, 2.000000e+00
  %5328 = fsub fast float 0x4002A9FBE0000000, %5309
  %5329 = fadd fast float %5309, 0x3FD54FDF00000000
  %5330 = bitcast float %5329 to i32
  %5331 = sub nsw i32 2129859010, %5330
  %5332 = bitcast i32 %5331 to float
  %5333 = fmul fast float %5332, %5328
  %5334 = fmul fast float %5333, %5333
  %5335 = fsub fast float 0x4002A9FBE0000000, %5318
  %5336 = fadd fast float %5318, 0x3FD54FDF00000000
  %5337 = bitcast float %5336 to i32
  %5338 = sub nsw i32 2129859010, %5337
  %5339 = bitcast i32 %5338 to float
  %5340 = fmul fast float %5339, %5335
  %5341 = fmul fast float %5340, %5340
  %5342 = fsub fast float 0x4002A9FBE0000000, %5327
  %5343 = fadd fast float %5327, 0x3FD54FDF00000000
  %5344 = bitcast float %5343 to i32
  %5345 = sub nsw i32 2129859010, %5344
  %5346 = bitcast i32 %5345 to float
  %5347 = fmul fast float %5346, %5342
  %5348 = fmul fast float %5347, %5347
  %5349 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5334)  ; FMax(a,b)
  %5350 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5341)  ; FMax(a,b)
  %5351 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5348)  ; FMax(a,b)
  %5352 = fsub fast float 1.000000e+00, %5238
  %5353 = fadd fast float %5352, %5253
  %5354 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5355 = fsub fast float 1.000000e+00, %4625
  %5356 = fmul fast float %5295, %5355
  %5357 = fmul fast float %5298, %5298
  %5358 = fmul fast float %5357, %5356
  %5359 = fmul fast float %5358, %5300
  %5360 = fmul fast float %5355, 0xBFE99999A0000000
  %5361 = fmul fast float %5360, %5240
  %5362 = fmul fast float %5361, %5257
  %5363 = fadd fast float %5362, 1.000000e+00
  %5364 = fadd fast float %5219, -1.000000e+00
  %5365 = fmul fast float %5363, %5364
  %5366 = fadd fast float %5365, 1.000000e+00
  %5367 = fsub fast float %5349, %5216
  %5368 = fsub fast float %5350, %5217
  %5369 = fsub fast float %5351, %5218
  %5370 = fmul fast float %5359, %5367
  %5371 = fmul fast float %5359, %5368
  %5372 = fmul fast float %5359, %5369
  %5373 = fadd fast float %5370, %5216
  %5374 = fadd fast float %5371, %5217
  %5375 = fadd fast float %5372, %5218
  %5376 = fsub fast float %94, %5213
  %5377 = fsub fast float %96, %5214
  %5378 = fsub fast float %98, %5215
  %5379 = fmul fast float %5359, %5376
  %5380 = fmul fast float %5359, %5377
  %5381 = fmul fast float %5359, %5378
  %5382 = fadd fast float %5379, %5213
  %5383 = fadd fast float %5380, %5214
  %5384 = fadd fast float %5381, %5215
  %5385 = fmul fast float %5359, %5354
  %5386 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = fmul fast float %5385, %5387
  %5389 = fadd fast float %5388, %5386
  %5390 = fsub fast float 1.000000e+00, %5220
  %5391 = fmul fast float %5359, %5390
  %5392 = fadd fast float %5391, %5220
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5382, float %5383, float %5384, float %5382, float %5383, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.unary.f32(i32 25, float %5393)  ; Rsqrt(value)
  %5395 = fmul fast float %5382, %5394
  %5396 = fmul fast float %5383, %5394
  %5397 = fmul fast float %5384, %5394
  br label %5398

; <label>:5398                                    ; preds = %5231, %5224
  %5399 = phi float [ %5230, %5224 ], [ %5237, %5231 ]
  %5400 = phi float [ %5229, %5224 ], [ %5235, %5231 ]
  %5401 = phi float [ %5228, %5224 ], [ %5233, %5231 ]
  %5402 = phi float [ %5227, %5224 ], [ %5236, %5231 ]
  %5403 = phi float [ %5226, %5224 ], [ %5234, %5231 ]
  %5404 = phi float [ %5225, %5224 ], [ %5232, %5231 ]
  %5405 = phi float [ %5210, %5224 ], [ %5282, %5231 ]
  %5406 = phi float [ %5211, %5224 ], [ %5283, %5231 ]
  %5407 = phi float [ %5212, %5224 ], [ %5284, %5231 ]
  %5408 = phi float [ %5213, %5224 ], [ %5395, %5231 ]
  %5409 = phi float [ %5214, %5224 ], [ %5396, %5231 ]
  %5410 = phi float [ %5215, %5224 ], [ %5397, %5231 ]
  %5411 = phi float [ %5216, %5224 ], [ %5373, %5231 ]
  %5412 = phi float [ %5217, %5224 ], [ %5374, %5231 ]
  %5413 = phi float [ %5218, %5224 ], [ %5375, %5231 ]
  %5414 = phi float [ %5219, %5224 ], [ %5389, %5231 ]
  %5415 = phi float [ %5220, %5224 ], [ %5392, %5231 ]
  %5416 = select i1 %217, float 0.000000e+00, float %5413
  %5417 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5401, float %5400, float %5399)  ; Dot3(ax,ay,az,bx,by,bz)
  %5418 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5419 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5403, float %5402, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5420 = fmul fast float %5419, 2.000000e+00
  %5421 = fmul fast float %5420, %5408
  %5422 = fmul fast float %5420, %5409
  %5423 = fmul fast float %5420, %5410
  %5424 = fsub fast float %5404, %5421
  %5425 = fsub fast float %5403, %5422
  %5426 = fsub fast float %5402, %5423
  %5427 = call float @dx.op.binary.f32(i32 36, float %5415, float 1.000000e+00)  ; FMin(a,b)
  %5428 = fsub fast float 1.000000e+00, %5415
  %5429 = bitcast float %5428 to i32
  %5430 = sub nsw i32 2129859010, %5429
  %5431 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %5432 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = fcmp fast oeq float %5432, 0.000000e+00
  %5434 = fcmp fast oeq float %5431, 0.000000e+00
  %5435 = or i1 %5434, %5433
  br i1 %5435, label %5465, label %5436

; <label>:5436                                    ; preds = %5398
  %5437 = fsub fast float -0.000000e+00, %65
  %5438 = fsub fast float -0.000000e+00, %63
  %5439 = call float @dx.op.unary.f32(i32 24, float %5432)  ; Sqrt(value)
  %5440 = fdiv fast float %5439, %5431
  %5441 = fcmp fast ogt float %5440, 0x3FFB6F8900000000
  %5442 = select i1 %5441, float 0x3FFB6F8900000000, float %5440
  %5443 = fmul fast float %5442, 0x3FE8A23460000000
  %5444 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5445 = call float @dx.op.binary.f32(i32 35, float %5442, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5446 = fmul fast float %5444, %5431
  %5447 = fmul fast float %5445, 0x3FF279A740000000
  %5448 = fadd fast float %5447, -1.000000e+00
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %64, float %5437, float %5438, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = call float @dx.op.unary.f32(i32 25, float %5449)  ; Rsqrt(value)
  %5451 = fmul fast float %5450, %5437
  %5452 = fmul fast float %5450, %5438
  %5453 = fmul fast float %5450, %64
  %5454 = fmul fast float %5448, %5448
  %5455 = fsub fast float 1.000000e+00, %5454
  %5456 = fmul fast float %5445, 0x40005F8BE0000000
  %5457 = fsub fast float 0x400C5BF8A0000000, %5456
  %5458 = fdiv fast float %5446, %5457
  %5459 = fmul fast float %5458, 0x3FEE31C3C0000000
  %5460 = fmul fast float %5459, %5455
  %5461 = fmul fast float %5445, 0x3FDACB7480000000
  %5462 = fadd fast float %5461, 0xBFD7347680000000
  %5463 = fmul fast float %5462, %5458
  %5464 = fmul fast float %5463, %5455
  br label %5465

; <label>:5465                                    ; preds = %5436, %5398
  %5466 = phi float [ %5451, %5436 ], [ 0.000000e+00, %5398 ]
  %5467 = phi float [ %5452, %5436 ], [ 0.000000e+00, %5398 ]
  %5468 = phi float [ %5453, %5436 ], [ 0.000000e+00, %5398 ]
  %5469 = phi float [ %5460, %5436 ], [ 0.000000e+00, %5398 ]
  %5470 = phi float [ %5464, %5436 ], [ 0.000000e+00, %5398 ]
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = fmul fast float %5471, %5471
  %5473 = fmul fast float %5472, 0x3FEE471020000000
  %5474 = fadd fast float %5473, 0xBFD42F6020000000
  %5475 = fmul fast float %5431, 0x3FD20DD760000000
  %5476 = fmul fast float %5474, %5470
  %5477 = fmul fast float %5469, 0x3FDF454380000000
  %5478 = fmul fast float %5477, %5471
  %5479 = fadd fast float %5478, %5475
  %5480 = fadd fast float %5479, %5476
  %5481 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = fmul fast float %5481, 0x3FDF454380000000
  %5483 = fmul fast float %5481, %5481
  %5484 = fmul fast float %5483, 0x3FEE471020000000
  %5485 = fadd fast float %5484, 0xBFD42F6020000000
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5469, float %5470, float 0x3FD20DD760000000, float %5482, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5488 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = fcmp fast oeq float %5488, 0.000000e+00
  %5490 = fcmp fast oeq float %5487, 0.000000e+00
  %5491 = or i1 %5490, %5489
  br i1 %5491, label %5521, label %5492

; <label>:5492                                    ; preds = %5465
  %5493 = fsub fast float -0.000000e+00, %61
  %5494 = fsub fast float -0.000000e+00, %59
  %5495 = call float @dx.op.unary.f32(i32 24, float %5488)  ; Sqrt(value)
  %5496 = fdiv fast float %5495, %5487
  %5497 = fcmp fast ogt float %5496, 0x3FFB6F8900000000
  %5498 = select i1 %5497, float 0x3FFB6F8900000000, float %5496
  %5499 = fmul fast float %5498, 0x3FE8A23460000000
  %5500 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5501 = call float @dx.op.binary.f32(i32 35, float %5498, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5502 = fmul fast float %5500, %5487
  %5503 = fmul fast float %5501, 0x3FF279A740000000
  %5504 = fadd fast float %5503, -1.000000e+00
  %5505 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5494, float %60, float %5493, float %5494, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5506 = call float @dx.op.unary.f32(i32 25, float %5505)  ; Rsqrt(value)
  %5507 = fmul fast float %5506, %5493
  %5508 = fmul fast float %5506, %5494
  %5509 = fmul fast float %5506, %60
  %5510 = fmul fast float %5504, %5504
  %5511 = fsub fast float 1.000000e+00, %5510
  %5512 = fmul fast float %5501, 0x40005F8BE0000000
  %5513 = fsub fast float 0x400C5BF8A0000000, %5512
  %5514 = fdiv fast float %5502, %5513
  %5515 = fmul fast float %5514, 0x3FEE31C3C0000000
  %5516 = fmul fast float %5515, %5511
  %5517 = fmul fast float %5501, 0x3FDACB7480000000
  %5518 = fadd fast float %5517, 0xBFD7347680000000
  %5519 = fmul fast float %5518, %5514
  %5520 = fmul fast float %5519, %5511
  br label %5521

; <label>:5521                                    ; preds = %5492, %5465
  %5522 = phi float [ %5507, %5492 ], [ 0.000000e+00, %5465 ]
  %5523 = phi float [ %5508, %5492 ], [ 0.000000e+00, %5465 ]
  %5524 = phi float [ %5509, %5492 ], [ 0.000000e+00, %5465 ]
  %5525 = phi float [ %5516, %5492 ], [ 0.000000e+00, %5465 ]
  %5526 = phi float [ %5520, %5492 ], [ 0.000000e+00, %5465 ]
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5522, float %5523, float %5524, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = fmul fast float %5527, %5527
  %5529 = fmul fast float %5528, 0x3FEE471020000000
  %5530 = fadd fast float %5529, 0xBFD42F6020000000
  %5531 = fmul fast float %5487, 0x3FD20DD760000000
  %5532 = fmul fast float %5530, %5526
  %5533 = fmul fast float %5525, 0x3FDF454380000000
  %5534 = fmul fast float %5533, %5527
  %5535 = fadd fast float %5534, %5531
  %5536 = fadd fast float %5535, %5532
  %5537 = call float @dx.op.dot3.f32(i32 55, float %5522, float %5523, float %5524, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = fmul fast float %5537, 0x3FDF454380000000
  %5539 = fmul fast float %5537, %5537
  %5540 = fmul fast float %5539, 0x3FEE471020000000
  %5541 = fadd fast float %5540, 0xBFD42F6020000000
  %5542 = call float @dx.op.dot3.f32(i32 55, float %5487, float %5525, float %5526, float 0x3FD20DD760000000, float %5538, float %5541)  ; Dot3(ax,ay,az,bx,by,bz)
  %5543 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %5544 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = fcmp fast oeq float %5544, 0.000000e+00
  %5546 = fcmp fast oeq float %5543, 0.000000e+00
  %5547 = or i1 %5546, %5545
  br i1 %5547, label %5577, label %5548

; <label>:5548                                    ; preds = %5521
  %5549 = fsub fast float -0.000000e+00, %57
  %5550 = fsub fast float -0.000000e+00, %55
  %5551 = call float @dx.op.unary.f32(i32 24, float %5544)  ; Sqrt(value)
  %5552 = fdiv fast float %5551, %5543
  %5553 = fcmp fast ogt float %5552, 0x3FFB6F8900000000
  %5554 = select i1 %5553, float 0x3FFB6F8900000000, float %5552
  %5555 = fmul fast float %5554, 0x3FE8A23460000000
  %5556 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5557 = call float @dx.op.binary.f32(i32 35, float %5554, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5558 = fmul fast float %5556, %5543
  %5559 = fmul fast float %5557, 0x3FF279A740000000
  %5560 = fadd fast float %5559, -1.000000e+00
  %5561 = call float @dx.op.dot3.f32(i32 55, float %5549, float %5550, float %56, float %5549, float %5550, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = call float @dx.op.unary.f32(i32 25, float %5561)  ; Rsqrt(value)
  %5563 = fmul fast float %5562, %5549
  %5564 = fmul fast float %5562, %5550
  %5565 = fmul fast float %5562, %56
  %5566 = fmul fast float %5560, %5560
  %5567 = fsub fast float 1.000000e+00, %5566
  %5568 = fmul fast float %5557, 0x40005F8BE0000000
  %5569 = fsub fast float 0x400C5BF8A0000000, %5568
  %5570 = fdiv fast float %5558, %5569
  %5571 = fmul fast float %5570, 0x3FEE31C3C0000000
  %5572 = fmul fast float %5571, %5567
  %5573 = fmul fast float %5557, 0x3FDACB7480000000
  %5574 = fadd fast float %5573, 0xBFD7347680000000
  %5575 = fmul fast float %5574, %5570
  %5576 = fmul fast float %5575, %5567
  br label %5577

; <label>:5577                                    ; preds = %5548, %5521
  %5578 = phi float [ %5563, %5548 ], [ 0.000000e+00, %5521 ]
  %5579 = phi float [ %5564, %5548 ], [ 0.000000e+00, %5521 ]
  %5580 = phi float [ %5565, %5548 ], [ 0.000000e+00, %5521 ]
  %5581 = phi float [ %5572, %5548 ], [ 0.000000e+00, %5521 ]
  %5582 = phi float [ %5576, %5548 ], [ 0.000000e+00, %5521 ]
  %5583 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = fmul fast float %5583, %5583
  %5585 = fmul fast float %5584, 0x3FEE471020000000
  %5586 = fadd fast float %5585, 0xBFD42F6020000000
  %5587 = fmul fast float %5543, 0x3FD20DD760000000
  %5588 = fmul fast float %5586, %5582
  %5589 = fmul fast float %5581, 0x3FDF454380000000
  %5590 = fmul fast float %5589, %5583
  %5591 = fadd fast float %5590, %5587
  %5592 = fadd fast float %5591, %5588
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = fmul fast float %5593, 0x3FDF454380000000
  %5595 = fmul fast float %5593, %5593
  %5596 = fmul fast float %5595, 0x3FEE471020000000
  %5597 = fadd fast float %5596, 0xBFD42F6020000000
  %5598 = call float @dx.op.dot3.f32(i32 55, float %5543, float %5581, float %5582, float 0x3FD20DD760000000, float %5594, float %5597)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = call float @dx.op.binary.f32(i32 35, float %5480, float 0.000000e+00)  ; FMax(a,b)
  %5600 = call float @dx.op.binary.f32(i32 35, float %5536, float 0.000000e+00)  ; FMax(a,b)
  %5601 = call float @dx.op.binary.f32(i32 35, float %5592, float 0.000000e+00)  ; FMax(a,b)
  %5602 = call float @dx.op.binary.f32(i32 35, float %5486, float 0.000000e+00)  ; FMax(a,b)
  %5603 = call float @dx.op.binary.f32(i32 35, float %5542, float 0.000000e+00)  ; FMax(a,b)
  %5604 = call float @dx.op.binary.f32(i32 35, float %5598, float 0.000000e+00)  ; FMax(a,b)
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 0
  %5607 = call float @dx.op.binary.f32(i32 36, float %5405, float %5606)  ; FMin(a,b)
  %5608 = fsub fast float 1.000000e+00, %5427
  %5609 = fmul fast float %5607, %5608
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = bitcast float %5610 to i32
  %5612 = sub nsw i32 2129859010, %5611
  %5613 = bitcast i32 %5612 to float
  %5614 = call float @dx.op.binary.f32(i32 36, float %5406, float %5606)  ; FMin(a,b)
  %5615 = fmul fast float %5614, %5608
  %5616 = fsub fast float 1.000000e+00, %5615
  %5617 = bitcast float %5616 to i32
  %5618 = sub nsw i32 2129859010, %5617
  %5619 = bitcast i32 %5618 to float
  %5620 = call float @dx.op.binary.f32(i32 36, float %5407, float %5606)  ; FMin(a,b)
  %5621 = fmul fast float %5620, %5608
  %5622 = fsub fast float 1.000000e+00, %5621
  %5623 = bitcast float %5622 to i32
  %5624 = sub nsw i32 2129859010, %5623
  %5625 = bitcast i32 %5624 to float
  %5626 = fmul fast float %5599, %5427
  %5627 = fmul fast float %5626, %5613
  %5628 = fmul fast float %5600, %5427
  %5629 = fmul fast float %5628, %5619
  %5630 = fmul fast float %5601, %5427
  %5631 = fmul fast float %5630, %5625
  %5632 = call float @dx.op.binary.f32(i32 36, float %5411, float %5606)  ; FMin(a,b)
  %5633 = fmul fast float %5632, %5608
  %5634 = fsub fast float 1.000000e+00, %5633
  %5635 = bitcast float %5634 to i32
  %5636 = sub nsw i32 2129859010, %5635
  %5637 = bitcast i32 %5636 to float
  %5638 = call float @dx.op.binary.f32(i32 36, float %5412, float %5606)  ; FMin(a,b)
  %5639 = fmul fast float %5638, %5608
  %5640 = fsub fast float 1.000000e+00, %5639
  %5641 = bitcast float %5640 to i32
  %5642 = sub nsw i32 2129859010, %5641
  %5643 = bitcast i32 %5642 to float
  %5644 = call float @dx.op.binary.f32(i32 36, float %5416, float %5606)  ; FMin(a,b)
  %5645 = fmul fast float %5644, %5608
  %5646 = fsub fast float 1.000000e+00, %5645
  %5647 = bitcast float %5646 to i32
  %5648 = sub nsw i32 2129859010, %5647
  %5649 = bitcast i32 %5648 to float
  %5650 = fmul fast float %5602, %5427
  %5651 = fmul fast float %5650, %5637
  %5652 = fmul fast float %5603, %5427
  %5653 = fmul fast float %5652, %5643
  %5654 = fmul fast float %5604, %5427
  %5655 = fmul fast float %5654, %5649
  %5656 = call float @dx.op.dot3.f32(i32 55, float %5627, float %5629, float %5631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5657 = select i1 %217, float 0.000000e+00, float %5627
  %5658 = select i1 %217, float %5656, float %5629
  %5659 = select i1 %217, float 0.000000e+00, float %5631
  %5660 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5653, float %5655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5661 = select i1 %217, float 0.000000e+00, float %5651
  %5662 = select i1 %217, float %5660, float %5653
  %5663 = select i1 %217, float 0.000000e+00, float %5655
  %5664 = fmul fast float %5418, 9.843750e-01
  %5665 = fmul fast float %5414, 9.843750e-01
  %5666 = fadd fast float %5664, 7.812500e-03
  %5667 = fadd fast float %5665, 7.812500e-03
  %5668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5666, float %5667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5669 = extractvalue %dx.types.ResRet.f32 %5668, 2
  %5670 = extractvalue %dx.types.ResRet.f32 %5668, 3
  %5671 = fmul fast float %5669, %5411
  %5672 = fmul fast float %5669, %5412
  %5673 = fmul fast float %5669, %5416
  %5674 = fadd fast float %5671, %5670
  %5675 = fadd fast float %5672, %5670
  %5676 = fadd fast float %5673, %5670
  %5677 = fcmp fast ogt float %4211, 0.000000e+00
  br i1 %5677, label %5678, label %5704

; <label>:5678                                    ; preds = %5577
  %5679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4211, float %5418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5680 = extractvalue %dx.types.ResRet.f32 %5679, 0
  %5681 = extractvalue %dx.types.ResRet.f32 %5679, 1
  %5682 = extractvalue %dx.types.ResRet.f32 %5679, 2
  %5683 = fadd fast float %5680, -5.000000e-01
  %5684 = fadd fast float %5681, -5.000000e-01
  %5685 = fadd fast float %5682, -5.000000e-01
  %5686 = fsub fast float 1.000000e+00, %5411
  %5687 = fsub fast float 1.000000e+00, %5412
  %5688 = fsub fast float 1.000000e+00, %5416
  %5689 = fmul fast float %5411, 4.000000e+00
  %5690 = fmul fast float %5689, %5686
  %5691 = fmul fast float %5690, %5683
  %5692 = fmul fast float %5412, 4.000000e+00
  %5693 = fmul fast float %5692, %5687
  %5694 = fmul fast float %5693, %5684
  %5695 = fmul fast float %5416, 4.000000e+00
  %5696 = fmul fast float %5695, %5688
  %5697 = fmul fast float %5696, %5685
  %5698 = fadd fast float %5691, %5674
  %5699 = fadd fast float %5694, %5675
  %5700 = fadd fast float %5697, %5676
  %5701 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5702 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5703 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  br label %5704

; <label>:5704                                    ; preds = %5678, %5577
  %5705 = phi float [ %5701, %5678 ], [ %5674, %5577 ]
  %5706 = phi float [ %5702, %5678 ], [ %5675, %5577 ]
  %5707 = phi float [ %5703, %5678 ], [ %5676, %5577 ]
  %5708 = call float @dx.op.binary.f32(i32 35, float %5706, float %5707)  ; FMax(a,b)
  %5709 = call float @dx.op.binary.f32(i32 35, float %5705, float %5708)  ; FMax(a,b)
  %5710 = fsub fast float 1.000000e+00, %5709
  %5711 = fmul fast float %5710, %5657
  %5712 = fmul fast float %5710, %5658
  %5713 = fmul fast float %5710, %5659
  %5714 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = fcmp fast ogt float %5714, 0x3E7FF19E20000000
  %5716 = fdiv fast float 1.000000e+00, %5714
  %5717 = select i1 %5715, float %5716, float 0.000000e+00
  %5718 = fmul fast float %5717, %5405
  %5719 = fmul fast float %5717, %5406
  %5720 = fmul fast float %5717, %5407
  %5721 = fadd fast float %5718, -1.000000e+00
  %5722 = fadd fast float %5719, -1.000000e+00
  %5723 = fadd fast float %5720, -1.000000e+00
  %5724 = fmul fast float %5721, 5.000000e-01
  %5725 = fmul fast float %5722, 5.000000e-01
  %5726 = fmul fast float %5723, 5.000000e-01
  %5727 = fadd fast float %5724, 1.000000e+00
  %5728 = fadd fast float %5725, 1.000000e+00
  %5729 = fadd fast float %5726, 1.000000e+00
  %5730 = fmul fast float %5705, %5661
  %5731 = fmul fast float %5706, %5662
  %5732 = fmul fast float %5707, %5663
  %5733 = fsub fast float 1.000000e+00, %5418
  %5734 = bitcast float %5733 to i32
  %5735 = sitofp i32 %5734 to float
  %5736 = fmul fast float %5735, 5.000000e+00
  %5737 = fadd fast float %5736, 0xC1EFBF8940000000
  %5738 = fptosi float %5737 to i32
  %5739 = bitcast i32 %5738 to float
  %5740 = fmul fast float %5739, %4212
  %5741 = fmul fast float %5657, %5740
  %5742 = fmul fast float %5741, %5710
  %5743 = fmul fast float %5742, %5727
  %5744 = fmul fast float %5658, %5740
  %5745 = fmul fast float %5744, %5710
  %5746 = fmul fast float %5745, %5728
  %5747 = fmul fast float %5659, %5740
  %5748 = fmul fast float %5747, %5710
  %5749 = fmul fast float %5748, %5729
  %5750 = fmul fast float %5711, %4208
  %5751 = fmul fast float %5712, %4208
  %5752 = fmul fast float %5713, %4208
  %5753 = fadd fast float %5730, %4204
  %5754 = fadd fast float %5753, %5743
  %5755 = fmul fast float %5754, %4208
  %5756 = fadd fast float %5731, %4205
  %5757 = fadd fast float %5756, %5746
  %5758 = fmul fast float %5757, %4208
  %5759 = fadd fast float %5732, %4206
  %5760 = fadd fast float %5759, %5749
  %5761 = fmul fast float %5760, %4208
  %5762 = bitcast i32 %5430 to float
  %5763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.f32 %5763, 3
  %5765 = fcmp fast oeq float %5764, 0.000000e+00
  br i1 %5765, label %5993, label %5766

; <label>:5766                                    ; preds = %5704
  %5767 = extractvalue %dx.types.CBufRet.f32 %5763, 0
  %5768 = extractvalue %dx.types.CBufRet.f32 %5763, 1
  %5769 = extractvalue %dx.types.CBufRet.f32 %5763, 2
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 0
  %5772 = extractvalue %dx.types.CBufRet.f32 %5770, 1
  %5773 = extractvalue %dx.types.CBufRet.f32 %5770, 2
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5777 = call float @dx.op.dot3.f32(i32 55, float %5771, float %5772, float %5773, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5778 = select i1 %217, float %5775, float %5771
  %5779 = select i1 %217, float %5777, float %5772
  %5780 = select i1 %217, float %5776, float %5773
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5783 = fcmp fast une float %5782, 0.000000e+00
  br i1 %5783, label %5784, label %5801

; <label>:5784                                    ; preds = %5766
  %5785 = fptoui float %85 to i32
  %5786 = fptoui float %86 to i32
  %5787 = lshr i32 %5785, 4
  %5788 = lshr i32 %5786, 4
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 0
  %5791 = fptoui float %5790 to i32
  %5792 = add i32 %5791, 15
  %5793 = lshr i32 %5792, 4
  %5794 = mul i32 %5793, %5788
  %5795 = add i32 %5794, %5787
  %5796 = shl i32 %5795, 3
  %5797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5796, i32 undef)  ; BufferLoad(srv,index,wot)
  %5798 = extractvalue %dx.types.ResRet.i32 %5797, 0
  %5799 = and i32 %5798, -268435456
  %5800 = icmp eq i32 %5799, -1342177280
  br i1 %5800, label %5811, label %5801

; <label>:5801                                    ; preds = %5784, %5766
  %5802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.f32 %5802, 2
  %5804 = extractvalue %dx.types.CBufRet.f32 %5802, 3
  %5805 = fmul fast float %5803, %85
  %5806 = fmul fast float %5804, %86
  %5807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5805, float %5806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5808 = extractvalue %dx.types.ResRet.f32 %5807, 0
  %5809 = extractvalue %dx.types.ResRet.f32 %5807, 1
  %5810 = extractvalue %dx.types.ResRet.f32 %5807, 2
  br label %5811

; <label>:5811                                    ; preds = %5801, %5784
  %5812 = phi float [ %5808, %5801 ], [ 0.000000e+00, %5784 ]
  %5813 = phi float [ %5809, %5801 ], [ 0.000000e+00, %5784 ]
  %5814 = phi float [ %5810, %5801 ], [ 0.000000e+00, %5784 ]
  %5815 = call float @dx.op.binary.f32(i32 36, float %5813, float %5814)  ; FMin(a,b)
  %5816 = call float @dx.op.binary.f32(i32 36, float %5812, float %5815)  ; FMin(a,b)
  %5817 = fcmp fast ogt float %5816, 0.000000e+00
  br i1 %5817, label %5818, label %5993, !dx.controlflow.hints !78

; <label>:5818                                    ; preds = %5811
  %5819 = fmul fast float %5812, %5778
  %5820 = fmul fast float %5813, %5779
  %5821 = fmul fast float %5814, %5780
  %5822 = fsub fast float %5767, %5404
  %5823 = fsub fast float %5768, %5403
  %5824 = fsub fast float %5769, %5402
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5822, float %5823, float %5824, float %5822, float %5823, float %5824)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = call float @dx.op.unary.f32(i32 25, float %5825)  ; Rsqrt(value)
  %5827 = fmul fast float %5826, %5822
  %5828 = fmul fast float %5826, %5823
  %5829 = fmul fast float %5826, %5824
  %5830 = call float @dx.op.dot3.f32(i32 55, float %5767, float %5768, float %5769, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5831 = call float @dx.op.dot3.f32(i32 55, float %5401, float %5400, float %5399, float %5827, float %5828, float %5829)  ; Dot3(ax,ay,az,bx,by,bz)
  %5832 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  %5833 = fmul fast float %5832, %5832
  %5834 = fmul fast float %5833, %5762
  %5835 = call float @dx.op.unary.f32(i32 7, float %5834)  ; Saturate(value)
  %5836 = fmul fast float %5835, %5832
  %5837 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5827, float %5828, float %5829)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = fmul fast float %5837, %5837
  %5839 = call float @dx.op.unary.f32(i32 6, float %5830)  ; FAbs(value)
  %5840 = fsub fast float 1.000000e+00, %5414
  %5841 = call float @dx.op.binary.f32(i32 35, float %5840, float 0x3F847AE140000000)  ; FMax(a,b)
  %5842 = fmul fast float %5841, %5841
  %5843 = fmul fast float %5842, %5842
  %5844 = fsub fast float 1.000000e+00, %5843
  %5845 = fmul fast float %5418, %5418
  %5846 = fmul fast float %5845, %5844
  %5847 = fadd fast float %5846, %5843
  %5848 = bitcast float %5847 to i32
  %5849 = ashr i32 %5848, 1
  %5850 = add nsw i32 %5849, 532487669
  %5851 = bitcast i32 %5850 to float
  %5852 = fadd fast float %5851, %5418
  %5853 = fmul fast float %5843, %5838
  %5854 = fsub fast float 1.000000e+00, %5838
  %5855 = fadd fast float %5854, %5853
  %5856 = fmul fast float %5839, %5839
  %5857 = fmul fast float %5856, %5844
  %5858 = fadd fast float %5857, %5843
  %5859 = bitcast float %5858 to i32
  %5860 = ashr i32 %5859, 1
  %5861 = add nsw i32 %5860, 532487669
  %5862 = bitcast i32 %5861 to float
  %5863 = fadd fast float %5862, %5839
  %5864 = fmul fast float %5855, %5855
  %5865 = fmul fast float %5864, %5852
  %5866 = fmul fast float %5865, %5863
  %5867 = fdiv fast float 0x3FF0A00000000000, %5866
  %5868 = fmul fast float %5867, %5843
  %5869 = call float @dx.op.unary.f32(i32 6, float %5831)  ; FAbs(value)
  %5870 = fsub fast float 1.000000e+00, %5869
  %5871 = bitcast float %5870 to i32
  %5872 = sitofp i32 %5871 to float
  %5873 = fmul fast float %5872, 5.000000e+00
  %5874 = fadd fast float %5873, 0xC1EFBF8940000000
  %5875 = fptosi float %5874 to i32
  %5876 = bitcast i32 %5875 to float
  %5877 = fsub fast float 1.000000e+00, %5411
  %5878 = fsub fast float 1.000000e+00, %5412
  %5879 = fsub fast float 1.000000e+00, %5416
  %5880 = fmul fast float %5876, %5877
  %5881 = fmul fast float %5876, %5878
  %5882 = fmul fast float %5876, %5879
  %5883 = fadd fast float %5880, %5411
  %5884 = fadd fast float %5881, %5412
  %5885 = fadd fast float %5882, %5416
  br i1 %5677, label %5886, label %5909

; <label>:5886                                    ; preds = %5818
  %5887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4211, float %5869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5891 = fadd fast float %5888, -5.000000e-01
  %5892 = fadd fast float %5889, -5.000000e-01
  %5893 = fadd fast float %5890, -5.000000e-01
  %5894 = fmul fast float %5411, 4.000000e+00
  %5895 = fmul fast float %5894, %5877
  %5896 = fmul fast float %5895, %5891
  %5897 = fmul fast float %5412, 4.000000e+00
  %5898 = fmul fast float %5897, %5878
  %5899 = fmul fast float %5898, %5892
  %5900 = fmul fast float %5416, 4.000000e+00
  %5901 = fmul fast float %5900, %5879
  %5902 = fmul fast float %5901, %5893
  %5903 = fadd fast float %5896, %5883
  %5904 = fadd fast float %5899, %5884
  %5905 = fadd fast float %5902, %5885
  %5906 = call float @dx.op.unary.f32(i32 7, float %5903)  ; Saturate(value)
  %5907 = call float @dx.op.unary.f32(i32 7, float %5904)  ; Saturate(value)
  %5908 = call float @dx.op.unary.f32(i32 7, float %5905)  ; Saturate(value)
  br label %5909

; <label>:5909                                    ; preds = %5886, %5818
  %5910 = phi float [ %5906, %5886 ], [ %5883, %5818 ]
  %5911 = phi float [ %5907, %5886 ], [ %5884, %5818 ]
  %5912 = phi float [ %5908, %5886 ], [ %5885, %5818 ]
  %5913 = fmul fast float %5830, 9.843750e-01
  %5914 = fadd fast float %5913, 7.812500e-03
  %5915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5914, float %5667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5916 = extractvalue %dx.types.ResRet.f32 %5915, 2
  %5917 = extractvalue %dx.types.ResRet.f32 %5915, 3
  %5918 = fmul fast float %5916, %5411
  %5919 = fmul fast float %5916, %5412
  %5920 = fmul fast float %5916, %5416
  %5921 = fadd fast float %5918, %5917
  %5922 = fadd fast float %5919, %5917
  %5923 = fadd fast float %5920, %5917
  br i1 %5677, label %5924, label %5947

; <label>:5924                                    ; preds = %5909
  %5925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4211, float %5830, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5926 = extractvalue %dx.types.ResRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.ResRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.ResRet.f32 %5925, 2
  %5929 = fadd fast float %5926, -5.000000e-01
  %5930 = fadd fast float %5927, -5.000000e-01
  %5931 = fadd fast float %5928, -5.000000e-01
  %5932 = fmul fast float %5411, 4.000000e+00
  %5933 = fmul fast float %5932, %5877
  %5934 = fmul fast float %5933, %5929
  %5935 = fmul fast float %5412, 4.000000e+00
  %5936 = fmul fast float %5935, %5878
  %5937 = fmul fast float %5936, %5930
  %5938 = fmul fast float %5416, 4.000000e+00
  %5939 = fmul fast float %5938, %5879
  %5940 = fmul fast float %5939, %5931
  %5941 = fadd fast float %5934, %5921
  %5942 = fadd fast float %5937, %5922
  %5943 = fadd fast float %5940, %5923
  %5944 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  %5945 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5946 = call float @dx.op.unary.f32(i32 7, float %5943)  ; Saturate(value)
  br label %5947

; <label>:5947                                    ; preds = %5924, %5909
  %5948 = phi float [ %5944, %5924 ], [ %5921, %5909 ]
  %5949 = phi float [ %5945, %5924 ], [ %5922, %5909 ]
  %5950 = phi float [ %5946, %5924 ], [ %5923, %5909 ]
  %5951 = call float @dx.op.binary.f32(i32 35, float %5949, float %5950)  ; FMax(a,b)
  %5952 = call float @dx.op.binary.f32(i32 35, float %5948, float %5951)  ; FMax(a,b)
  %5953 = fsub fast float 1.000000e+00, %5952
  %5954 = fmul fast float %5910, %5868
  %5955 = fmul fast float %5911, %5868
  %5956 = fmul fast float %5912, %5868
  %5957 = fsub fast float 1.000000e+00, %5831
  %5958 = bitcast float %5957 to i32
  %5959 = sitofp i32 %5958 to float
  %5960 = fmul fast float %5959, 5.000000e+00
  %5961 = fadd fast float %5960, 0xC1EFBF8940000000
  %5962 = fptosi float %5961 to i32
  %5963 = bitcast i32 %5962 to float
  %5964 = fmul fast float %5963, %4212
  %5965 = fmul fast float %5953, %5964
  %5966 = fmul fast float %5965, %5727
  %5967 = fmul fast float %5965, %5728
  %5968 = fmul fast float %5965, %5729
  %5969 = fadd fast float %5966, %5954
  %5970 = fadd fast float %5967, %5955
  %5971 = fadd fast float %5968, %5956
  %5972 = fmul fast float %5836, %5819
  %5973 = fmul fast float %5972, %5953
  %5974 = fmul fast float %5836, %5820
  %5975 = fmul fast float %5974, %5953
  %5976 = fmul fast float %5836, %5821
  %5977 = fmul fast float %5976, %5953
  %5978 = fmul fast float %5972, %5969
  %5979 = fmul fast float %5974, %5970
  %5980 = fmul fast float %5976, %5971
  %5981 = fadd fast float %5973, %5711
  %5982 = fmul fast float %5981, %4208
  %5983 = fadd fast float %5975, %5712
  %5984 = fmul fast float %5983, %4208
  %5985 = fadd fast float %5977, %5713
  %5986 = fmul fast float %5985, %4208
  %5987 = fadd fast float %5978, %5754
  %5988 = fmul fast float %5987, %4208
  %5989 = fadd fast float %5979, %5757
  %5990 = fmul fast float %5989, %4208
  %5991 = fadd fast float %5980, %5760
  %5992 = fmul fast float %5991, %4208
  br label %5993

; <label>:5993                                    ; preds = %5947, %5811, %5704
  %5994 = phi float [ %5755, %5704 ], [ %5755, %5811 ], [ %5988, %5947 ]
  %5995 = phi float [ %5758, %5704 ], [ %5758, %5811 ], [ %5990, %5947 ]
  %5996 = phi float [ %5761, %5704 ], [ %5761, %5811 ], [ %5992, %5947 ]
  %5997 = phi float [ %5750, %5704 ], [ %5750, %5811 ], [ %5982, %5947 ]
  %5998 = phi float [ %5751, %5704 ], [ %5751, %5811 ], [ %5984, %5947 ]
  %5999 = phi float [ %5752, %5704 ], [ %5752, %5811 ], [ %5986, %5947 ]
  %6000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.i32 %6000, 0
  %6002 = icmp eq i32 %6001, 0
  br i1 %6002, label %6437, label %6003

; <label>:6003                                    ; preds = %5993
  %6004 = fptoui float %85 to i32
  %6005 = fptoui float %86 to i32
  %6006 = lshr i32 %6004, 4
  %6007 = lshr i32 %6005, 4
  %6008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.i32 %6008, 0
  %6010 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6007, i32 %6009, i32 %6006)  ; UMad(a,b,c)
  %6011 = add nsw i32 %6001, -1
  %6012 = call i32 @dx.op.binary.i32(i32 37, i32 %6011, i32 0)  ; IMax(a,b)
  %6013 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6014 = fptoui float %6013 to i32
  %6015 = lshr i32 %6014, 5
  %6016 = call i32 @dx.op.binary.i32(i32 40, i32 %6015, i32 8191)  ; UMin(a,b)
  %6017 = shl i32 %6016, 2
  %6018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6017, i32 undef)  ; BufferLoad(srv,index,wot)
  %6019 = extractvalue %dx.types.ResRet.i32 %6018, 0
  %6020 = lshr i32 %6019, 16
  %6021 = and i32 %6019, 65535
  %6022 = lshr i32 %6019, 21
  %6023 = lshr i32 %6021, 5
  %6024 = call i32 @dx.op.binary.i32(i32 40, i32 %6023, i32 %6012)  ; UMin(a,b)
  %6025 = icmp ugt i32 %6022, %6024
  br i1 %6025, label %6437, label %6026

; <label>:6026                                    ; preds = %6003
  br label %6027

; <label>:6027                                    ; preds = %6427, %6026
  %6028 = phi i32 [ %6434, %6427 ], [ %6022, %6026 ]
  %6029 = phi float [ %6428, %6427 ], [ %5994, %6026 ]
  %6030 = phi float [ %6429, %6427 ], [ %5995, %6026 ]
  %6031 = phi float [ %6430, %6427 ], [ %5996, %6026 ]
  %6032 = phi float [ %6431, %6427 ], [ %5997, %6026 ]
  %6033 = phi float [ %6432, %6427 ], [ %5998, %6026 ]
  %6034 = phi float [ %6433, %6427 ], [ %5999, %6026 ]
  %6035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.i32 %6035, 0
  %6037 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6010, i32 %6036, i32 %6028)  ; UMad(a,b,c)
  %6038 = shl i32 %6037, 2
  %6039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6038, i32 undef)  ; BufferLoad(srv,index,wot)
  %6040 = extractvalue %dx.types.ResRet.i32 %6039, 0
  %6041 = shl i32 %6028, 5
  %6042 = sub nsw i32 %6020, %6041
  %6043 = call i32 @dx.op.binary.i32(i32 37, i32 %6042, i32 0)  ; IMax(a,b)
  %6044 = call i32 @dx.op.binary.i32(i32 38, i32 %6043, i32 31)  ; IMin(a,b)
  %6045 = sub nsw i32 1, %6020
  %6046 = add nsw i32 %6045, %6021
  %6047 = call i32 @dx.op.binary.i32(i32 37, i32 %6046, i32 0)  ; IMax(a,b)
  %6048 = call i32 @dx.op.binary.i32(i32 38, i32 %6047, i32 32)  ; IMin(a,b)
  %6049 = and i32 %6048, 31
  %6050 = shl i32 -1, %6049
  %6051 = xor i32 %6050, -1
  %6052 = and i32 %6044, 31
  %6053 = shl i32 %6051, %6052
  %6054 = icmp eq i32 %6048, 32
  %6055 = select i1 %6054, i32 -1, i32 %6053
  %6056 = and i32 %6055, %6040
  %6057 = icmp eq i32 %6056, 0
  br i1 %6057, label %6427, label %6058

; <label>:6058                                    ; preds = %6027
  br label %6059

; <label>:6059                                    ; preds = %6139, %6058
  %6060 = phi i32 [ %6071, %6139 ], [ %6056, %6058 ]
  %6061 = phi float [ %6140, %6139 ], [ %6029, %6058 ]
  %6062 = phi float [ %6141, %6139 ], [ %6030, %6058 ]
  %6063 = phi float [ %6142, %6139 ], [ %6031, %6058 ]
  %6064 = phi float [ %6143, %6139 ], [ %6032, %6058 ]
  %6065 = phi float [ %6144, %6139 ], [ %6033, %6058 ]
  %6066 = phi float [ %6145, %6139 ], [ %6034, %6058 ]
  %6067 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6060)  ; FirstbitLo(value)
  %6068 = add i32 %6067, %6041
  %6069 = and i32 %6067, 31
  %6070 = shl i32 1, %6069
  %6071 = xor i32 %6070, %6060
  %6072 = mul i32 %6068, 112
  %6073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6072, i32 undef)  ; BufferLoad(srv,index,wot)
  %6074 = extractvalue %dx.types.ResRet.f32 %6073, 0
  %6075 = extractvalue %dx.types.ResRet.f32 %6073, 1
  %6076 = extractvalue %dx.types.ResRet.f32 %6073, 2
  %6077 = or i32 %6072, 12
  %6078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6077, i32 undef)  ; BufferLoad(srv,index,wot)
  %6079 = extractvalue %dx.types.ResRet.f32 %6078, 0
  %6080 = add i32 %6072, 44
  %6081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6080, i32 undef)  ; BufferLoad(srv,index,wot)
  %6082 = extractvalue %dx.types.ResRet.f32 %6081, 0
  %6083 = add i32 %6072, 48
  %6084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6083, i32 undef)  ; BufferLoad(srv,index,wot)
  %6085 = extractvalue %dx.types.ResRet.f32 %6084, 0
  %6086 = extractvalue %dx.types.ResRet.f32 %6084, 1
  %6087 = extractvalue %dx.types.ResRet.f32 %6084, 2
  %6088 = add i32 %6072, 80
  %6089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6088, i32 undef)  ; BufferLoad(srv,index,wot)
  %6090 = extractvalue %dx.types.ResRet.f32 %6089, 1
  %6091 = extractvalue %dx.types.ResRet.f32 %6089, 2
  %6092 = call float @dx.op.dot3.f32(i32 55, float %6074, float %6075, float %6076, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6093 = select i1 %217, float %6090, float %6074
  %6094 = select i1 %217, float %6092, float %6075
  %6095 = select i1 %217, float %6091, float %6076
  %6096 = fsub fast float %6085, %165
  %6097 = fsub fast float %6086, %166
  %6098 = fsub fast float %6087, %167
  %6099 = call float @dx.op.dot3.f32(i32 55, float %6096, float %6097, float %6098, float %6096, float %6097, float %6098)  ; Dot3(ax,ay,az,bx,by,bz)
  %6100 = call float @dx.op.unary.f32(i32 24, float %6099)  ; Sqrt(value)
  %6101 = fdiv fast float 1.000000e+00, %6100
  %6102 = fmul fast float %6101, %6096
  %6103 = fmul fast float %6101, %6097
  %6104 = fmul fast float %6101, %6098
  %6105 = fadd fast float %6100, %6079
  %6106 = fdiv fast float 1.000000e+00, %6105
  %6107 = fmul float %6082, %6106
  %6108 = fmul float %6107, %6107
  %6109 = call float @dx.op.unary.f32(i32 7, float %6108)  ; Saturate(value)
  %6110 = and i32 %6070, %6056
  %6111 = icmp eq i32 %6110, 0
  br i1 %6111, label %6134, label %6112, !dx.controlflow.hints !79

; <label>:6112                                    ; preds = %6059
  %6113 = lshr i32 %6004, 5
  %6114 = lshr i32 %6005, 5
  %6115 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %6113, i32 %6114, i32 %6068, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6116 = extractvalue %dx.types.ResRet.i32 %6115, 0
  %6117 = and i32 %6116, 3
  %6118 = icmp eq i32 %6117, 0
  %6119 = select i1 %6118, float 1.000000e+00, float 0.000000e+00
  %6120 = icmp eq i32 %6117, 3
  br i1 %6120, label %6121, label %6134

; <label>:6121                                    ; preds = %6112
  %6122 = lshr i32 %6116, 10
  %6123 = and i32 %6122, 8160
  %6124 = and i32 %6005, 31
  %6125 = or i32 %6123, %6124
  %6126 = lshr i32 %6116, 1
  %6127 = and i32 %6126, 16352
  %6128 = and i32 %6004, 31
  %6129 = or i32 %6127, %6128
  %6130 = lshr i32 %6116, 23
  %6131 = and i32 %6130, 255
  %6132 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %6129, i32 %6125, i32 %6131, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6133 = extractvalue %dx.types.ResRet.f32 %6132, 0
  br label %6134

; <label>:6134                                    ; preds = %6121, %6112, %6059
  %6135 = phi float [ %6133, %6121 ], [ %6119, %6112 ], [ 0.000000e+00, %6059 ]
  %6136 = call float @dx.op.binary.f32(i32 36, float %6135, float %6135)  ; FMin(a,b)
  %6137 = call float @dx.op.binary.f32(i32 36, float %6135, float %6136)  ; FMin(a,b)
  %6138 = fcmp fast ogt float %6137, 0.000000e+00
  br i1 %6138, label %6147, label %6139, !dx.controlflow.hints !80

; <label>:6139                                    ; preds = %6383, %6134
  %6140 = phi float [ %6061, %6134 ], [ %6423, %6383 ]
  %6141 = phi float [ %6062, %6134 ], [ %6424, %6383 ]
  %6142 = phi float [ %6063, %6134 ], [ %6425, %6383 ]
  %6143 = phi float [ %6064, %6134 ], [ %6417, %6383 ]
  %6144 = phi float [ %6065, %6134 ], [ %6418, %6383 ]
  %6145 = phi float [ %6066, %6134 ], [ %6419, %6383 ]
  %6146 = icmp eq i32 %6060, %6070
  br i1 %6146, label %6426, label %6059

; <label>:6147                                    ; preds = %6134
  %6148 = fmul fast float %6135, %6093
  %6149 = fmul fast float %6135, %6094
  %6150 = fmul fast float %6135, %6095
  %6151 = fsub fast float %6087, %4612
  %6152 = fcmp fast ogt float %6151, 0.000000e+00
  %6153 = fsub fast float %167, %4612
  %6154 = fcmp fast ogt float %6153, 0.000000e+00
  %6155 = xor i1 %6154, %6152
  %6156 = fsub fast float %4612, %6087
  %6157 = fmul fast float %6156, 2.000000e+00
  %6158 = fadd fast float %6157, %6087
  %6159 = select i1 %6155, float %6087, float %6158
  %6160 = fsub fast float %6159, %167
  %6161 = call float @dx.op.dot3.f32(i32 55, float %6096, float %6097, float %6160, float %6096, float %6097, float %6160)  ; Dot3(ax,ay,az,bx,by,bz)
  %6162 = call float @dx.op.unary.f32(i32 25, float %6161)  ; Rsqrt(value)
  %6163 = fmul fast float %6162, %6096
  %6164 = fmul fast float %6162, %6097
  %6165 = fmul fast float %6162, %6160
  %6166 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4620)  ; Dot3(ax,ay,az,bx,by,bz)
  %6167 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6163, float %6164, float %6165)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = fdiv fast float 1.000000e+00, %6167
  %6169 = fmul fast float %6168, %6166
  %6170 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6153, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = fcmp fast ogt float %6170, 0.000000e+00
  %6172 = fcmp fast olt float %6170, 0.000000e+00
  %6173 = zext i1 %6171 to i32
  %6174 = zext i1 %6172 to i32
  %6175 = sub nsw i32 %6173, %6174
  %6176 = sitofp i32 %6175 to float
  %6177 = fsub fast float %6159, %4612
  %6178 = call float @dx.op.dot3.f32(i32 55, float %6096, float %6097, float %6177, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6179 = fcmp fast ogt float %6178, 0.000000e+00
  %6180 = fcmp fast olt float %6178, 0.000000e+00
  %6181 = zext i1 %6179 to i32
  %6182 = zext i1 %6180 to i32
  %6183 = sub nsw i32 %6181, %6182
  %6184 = sitofp i32 %6183 to float
  %6185 = fcmp fast une float %6176, %6184
  br i1 %6185, label %6186, label %6196

; <label>:6186                                    ; preds = %6147
  %6187 = fmul fast float %6169, %6165
  %6188 = fmul fast float %6169, %6164
  %6189 = fmul fast float %6169, %6163
  %6190 = fmul fast float %6189, %6189
  %6191 = fmul fast float %6188, %6188
  %6192 = fadd fast float %6190, %6191
  %6193 = fmul fast float %6187, %6187
  %6194 = fadd fast float %6192, %6193
  %6195 = call float @dx.op.unary.f32(i32 24, float %6194)  ; Sqrt(value)
  br label %6208

; <label>:6196                                    ; preds = %6147
  %6197 = icmp slt i32 %6175, 0
  br i1 %6197, label %6198, label %6208

; <label>:6198                                    ; preds = %6196
  %6199 = fsub fast float %165, %6085
  %6200 = fsub fast float %166, %6086
  %6201 = fsub fast float %167, %6159
  %6202 = fmul fast float %6199, %6199
  %6203 = fmul fast float %6200, %6200
  %6204 = fadd fast float %6202, %6203
  %6205 = fmul fast float %6201, %6201
  %6206 = fadd fast float %6204, %6205
  %6207 = call float @dx.op.unary.f32(i32 24, float %6206)  ; Sqrt(value)
  br label %6208

; <label>:6208                                    ; preds = %6198, %6196, %6186
  %6209 = phi float [ %6195, %6186 ], [ %6207, %6198 ], [ 0.000000e+00, %6196 ]
  %6210 = and i1 %6154, %6152
  %6211 = fsub fast float -0.000000e+00, %6209
  %6212 = select i1 %6210, float -0.000000e+00, float %6211
  %6213 = fmul fast float %4613, 0x3FF7154760000000
  %6214 = fmul fast float %6213, %6212
  %6215 = fmul fast float %4614, 0x3FF7154760000000
  %6216 = fmul fast float %6215, %6212
  %6217 = fmul fast float %4615, 0x3FF7154760000000
  %6218 = fmul fast float %6217, %6212
  %6219 = call float @dx.op.unary.f32(i32 21, float %6214)  ; Exp(value)
  %6220 = call float @dx.op.unary.f32(i32 21, float %6216)  ; Exp(value)
  %6221 = call float @dx.op.unary.f32(i32 21, float %6218)  ; Exp(value)
  %6222 = call float @dx.op.unary.f32(i32 7, float %6219)  ; Saturate(value)
  %6223 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  %6224 = call float @dx.op.unary.f32(i32 7, float %6221)  ; Saturate(value)
  %6225 = fmul fast float %6148, %6222
  %6226 = fmul fast float %6149, %6223
  %6227 = fmul fast float %6150, %6224
  %6228 = fsub fast float %6102, %5404
  %6229 = fsub fast float %6103, %5403
  %6230 = fsub fast float %6104, %5402
  %6231 = call float @dx.op.dot3.f32(i32 55, float %6228, float %6229, float %6230, float %6228, float %6229, float %6230)  ; Dot3(ax,ay,az,bx,by,bz)
  %6232 = call float @dx.op.unary.f32(i32 25, float %6231)  ; Rsqrt(value)
  %6233 = fmul fast float %6232, %6228
  %6234 = fmul fast float %6232, %6229
  %6235 = fmul fast float %6232, %6230
  %6236 = call float @dx.op.dot3.f32(i32 55, float %6102, float %6103, float %6104, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = call float @dx.op.dot3.f32(i32 55, float %5401, float %5400, float %5399, float %6233, float %6234, float %6235)  ; Dot3(ax,ay,az,bx,by,bz)
  %6238 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6239 = fmul fast float %6238, %6109
  %6240 = fmul fast float %6238, %6238
  %6241 = fmul fast float %6240, %5762
  %6242 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  %6243 = fmul fast float %6239, %6242
  %6244 = bitcast float %6099 to i32
  %6245 = ashr i32 %6244, 1
  %6246 = sub nsw i32 1597463007, %6245
  %6247 = bitcast i32 %6246 to float
  %6248 = fmul fast float %6247, %6096
  %6249 = fmul fast float %6247, %6097
  %6250 = fmul fast float %6247, %6098
  %6251 = fsub fast float %6248, %5404
  %6252 = fsub fast float %6249, %5403
  %6253 = fsub fast float %6250, %5402
  %6254 = call float @dx.op.dot3.f32(i32 55, float %6251, float %6252, float %6253, float %6251, float %6252, float %6253)  ; Dot3(ax,ay,az,bx,by,bz)
  %6255 = call float @dx.op.unary.f32(i32 25, float %6254)  ; Rsqrt(value)
  %6256 = fmul fast float %6251, %6255
  %6257 = fmul fast float %6252, %6255
  %6258 = fmul fast float %6253, %6255
  %6259 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %6256, float %6257, float %6258)  ; Dot3(ax,ay,az,bx,by,bz)
  %6260 = fmul fast float %6259, %6259
  %6261 = call float @dx.op.unary.f32(i32 6, float %6236)  ; FAbs(value)
  %6262 = fsub fast float 1.000000e+00, %5414
  %6263 = call float @dx.op.binary.f32(i32 35, float %6262, float 0x3F847AE140000000)  ; FMax(a,b)
  %6264 = fmul fast float %6263, %6263
  %6265 = fmul fast float %6264, %6264
  %6266 = fsub fast float 1.000000e+00, %6265
  %6267 = fmul fast float %5418, %5418
  %6268 = fmul fast float %6267, %6266
  %6269 = fadd fast float %6268, %6265
  %6270 = bitcast float %6269 to i32
  %6271 = ashr i32 %6270, 1
  %6272 = add nsw i32 %6271, 532487669
  %6273 = bitcast i32 %6272 to float
  %6274 = fadd fast float %6273, %5418
  %6275 = fmul fast float %6265, %6260
  %6276 = fsub fast float 1.000000e+00, %6260
  %6277 = fadd fast float %6276, %6275
  %6278 = fmul fast float %6261, %6261
  %6279 = fmul fast float %6278, %6266
  %6280 = fadd fast float %6279, %6265
  %6281 = bitcast float %6280 to i32
  %6282 = ashr i32 %6281, 1
  %6283 = add nsw i32 %6282, 532487669
  %6284 = bitcast i32 %6283 to float
  %6285 = fadd fast float %6284, %6261
  %6286 = fmul fast float %6277, %6277
  %6287 = fmul fast float %6286, %6274
  %6288 = fmul fast float %6287, %6285
  %6289 = fdiv fast float 1.000000e+00, %6288
  %6290 = bitcast float %6265 to i32
  %6291 = sitofp i32 %6290 to float
  %6292 = fmul fast float %6291, 0x3FE7F73180000000
  %6293 = fadd fast float %6292, 0x41AFE27C40000000
  %6294 = fptosi float %6293 to i32
  %6295 = bitcast i32 %6294 to float
  %6296 = fmul fast float %6082, 0x3FD80E9D60000000
  %6297 = fmul fast float %6296, %6247
  %6298 = fadd fast float %6295, %6297
  %6299 = bitcast float %6298 to i32
  %6300 = sub nsw i32 2129859010, %6299
  %6301 = bitcast i32 %6300 to float
  %6302 = fmul fast float %6265, %6289
  %6303 = fmul fast float %6302, %6295
  %6304 = fmul fast float %6303, %6301
  %6305 = call float @dx.op.unary.f32(i32 6, float %6237)  ; FAbs(value)
  %6306 = fsub fast float 1.000000e+00, %6305
  %6307 = bitcast float %6306 to i32
  %6308 = sitofp i32 %6307 to float
  %6309 = fmul fast float %6308, 5.000000e+00
  %6310 = fadd fast float %6309, 0xC1EFBF8940000000
  %6311 = fptosi float %6310 to i32
  %6312 = bitcast i32 %6311 to float
  %6313 = fsub fast float 1.000000e+00, %5411
  %6314 = fsub fast float 1.000000e+00, %5412
  %6315 = fsub fast float 1.000000e+00, %5416
  %6316 = fmul fast float %6312, %6313
  %6317 = fmul fast float %6312, %6314
  %6318 = fmul fast float %6312, %6315
  %6319 = fadd fast float %6316, %5411
  %6320 = fadd fast float %6317, %5412
  %6321 = fadd fast float %6318, %5416
  br i1 %5677, label %6322, label %6345

; <label>:6322                                    ; preds = %6208
  %6323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4211, float %6305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6324 = extractvalue %dx.types.ResRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.ResRet.f32 %6323, 1
  %6326 = extractvalue %dx.types.ResRet.f32 %6323, 2
  %6327 = fadd fast float %6324, -5.000000e-01
  %6328 = fadd fast float %6325, -5.000000e-01
  %6329 = fadd fast float %6326, -5.000000e-01
  %6330 = fmul fast float %5411, 4.000000e+00
  %6331 = fmul fast float %6330, %6313
  %6332 = fmul fast float %6331, %6327
  %6333 = fmul fast float %5412, 4.000000e+00
  %6334 = fmul fast float %6333, %6314
  %6335 = fmul fast float %6334, %6328
  %6336 = fmul fast float %5416, 4.000000e+00
  %6337 = fmul fast float %6336, %6315
  %6338 = fmul fast float %6337, %6329
  %6339 = fadd fast float %6332, %6319
  %6340 = fadd fast float %6335, %6320
  %6341 = fadd fast float %6338, %6321
  %6342 = call float @dx.op.unary.f32(i32 7, float %6339)  ; Saturate(value)
  %6343 = call float @dx.op.unary.f32(i32 7, float %6340)  ; Saturate(value)
  %6344 = call float @dx.op.unary.f32(i32 7, float %6341)  ; Saturate(value)
  br label %6345

; <label>:6345                                    ; preds = %6322, %6208
  %6346 = phi float [ %6342, %6322 ], [ %6319, %6208 ]
  %6347 = phi float [ %6343, %6322 ], [ %6320, %6208 ]
  %6348 = phi float [ %6344, %6322 ], [ %6321, %6208 ]
  %6349 = fmul fast float %6236, 9.843750e-01
  %6350 = fadd fast float %6349, 7.812500e-03
  %6351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %6350, float %5667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6352 = extractvalue %dx.types.ResRet.f32 %6351, 2
  %6353 = extractvalue %dx.types.ResRet.f32 %6351, 3
  %6354 = fmul fast float %6352, %5411
  %6355 = fmul fast float %6352, %5412
  %6356 = fmul fast float %6352, %5416
  %6357 = fadd fast float %6354, %6353
  %6358 = fadd fast float %6355, %6353
  %6359 = fadd fast float %6356, %6353
  br i1 %5677, label %6360, label %6383

; <label>:6360                                    ; preds = %6345
  %6361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4211, float %6236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6362 = extractvalue %dx.types.ResRet.f32 %6361, 0
  %6363 = extractvalue %dx.types.ResRet.f32 %6361, 1
  %6364 = extractvalue %dx.types.ResRet.f32 %6361, 2
  %6365 = fadd fast float %6362, -5.000000e-01
  %6366 = fadd fast float %6363, -5.000000e-01
  %6367 = fadd fast float %6364, -5.000000e-01
  %6368 = fmul fast float %5411, 4.000000e+00
  %6369 = fmul fast float %6368, %6313
  %6370 = fmul fast float %6369, %6365
  %6371 = fmul fast float %5412, 4.000000e+00
  %6372 = fmul fast float %6371, %6314
  %6373 = fmul fast float %6372, %6366
  %6374 = fmul fast float %5416, 4.000000e+00
  %6375 = fmul fast float %6374, %6315
  %6376 = fmul fast float %6375, %6367
  %6377 = fadd fast float %6370, %6357
  %6378 = fadd fast float %6373, %6358
  %6379 = fadd fast float %6376, %6359
  %6380 = call float @dx.op.unary.f32(i32 7, float %6377)  ; Saturate(value)
  %6381 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6382 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  br label %6383

; <label>:6383                                    ; preds = %6360, %6345
  %6384 = phi float [ %6380, %6360 ], [ %6357, %6345 ]
  %6385 = phi float [ %6381, %6360 ], [ %6358, %6345 ]
  %6386 = phi float [ %6382, %6360 ], [ %6359, %6345 ]
  %6387 = call float @dx.op.binary.f32(i32 35, float %6385, float %6386)  ; FMax(a,b)
  %6388 = call float @dx.op.binary.f32(i32 35, float %6384, float %6387)  ; FMax(a,b)
  %6389 = fsub fast float 1.000000e+00, %6388
  %6390 = fmul fast float %6346, %6304
  %6391 = fmul fast float %6347, %6304
  %6392 = fmul fast float %6348, %6304
  %6393 = fsub fast float 1.000000e+00, %6237
  %6394 = bitcast float %6393 to i32
  %6395 = sitofp i32 %6394 to float
  %6396 = fmul fast float %6395, 5.000000e+00
  %6397 = fadd fast float %6396, 0xC1EFBF8940000000
  %6398 = fptosi float %6397 to i32
  %6399 = bitcast i32 %6398 to float
  %6400 = fmul fast float %6399, %4212
  %6401 = fmul fast float %6389, %6400
  %6402 = fmul fast float %6401, %5727
  %6403 = fmul fast float %6401, %5728
  %6404 = fmul fast float %6401, %5729
  %6405 = fadd fast float %6402, %6390
  %6406 = fadd fast float %6403, %6391
  %6407 = fadd fast float %6404, %6392
  %6408 = fmul fast float %6225, %4208
  %6409 = fmul fast float %6408, %6243
  %6410 = fmul fast float %6409, %6389
  %6411 = fmul fast float %6226, %4208
  %6412 = fmul fast float %6411, %6243
  %6413 = fmul fast float %6412, %6389
  %6414 = fmul fast float %6227, %4208
  %6415 = fmul fast float %6414, %6243
  %6416 = fmul fast float %6415, %6389
  %6417 = fadd fast float %6410, %6064
  %6418 = fadd fast float %6413, %6065
  %6419 = fadd fast float %6416, %6066
  %6420 = fmul fast float %6409, %6405
  %6421 = fmul fast float %6412, %6406
  %6422 = fmul fast float %6415, %6407
  %6423 = fadd fast float %6420, %6061
  %6424 = fadd fast float %6421, %6062
  %6425 = fadd fast float %6422, %6063
  br label %6139

; <label>:6426                                    ; preds = %6139
  br label %6427

; <label>:6427                                    ; preds = %6426, %6027
  %6428 = phi float [ %6029, %6027 ], [ %6140, %6426 ]
  %6429 = phi float [ %6030, %6027 ], [ %6141, %6426 ]
  %6430 = phi float [ %6031, %6027 ], [ %6142, %6426 ]
  %6431 = phi float [ %6032, %6027 ], [ %6143, %6426 ]
  %6432 = phi float [ %6033, %6027 ], [ %6144, %6426 ]
  %6433 = phi float [ %6034, %6027 ], [ %6145, %6426 ]
  %6434 = add i32 %6028, 1
  %6435 = icmp ugt i32 %6434, %6024
  br i1 %6435, label %6436, label %6027

; <label>:6436                                    ; preds = %6427
  br label %6437

; <label>:6437                                    ; preds = %6436, %6003, %5993
  %6438 = phi float [ %5994, %5993 ], [ %5994, %6003 ], [ %6428, %6436 ]
  %6439 = phi float [ %5995, %5993 ], [ %5995, %6003 ], [ %6429, %6436 ]
  %6440 = phi float [ %5996, %5993 ], [ %5996, %6003 ], [ %6430, %6436 ]
  %6441 = phi float [ %5997, %5993 ], [ %5997, %6003 ], [ %6431, %6436 ]
  %6442 = phi float [ %5998, %5993 ], [ %5998, %6003 ], [ %6432, %6436 ]
  %6443 = phi float [ %5999, %5993 ], [ %5999, %6003 ], [ %6433, %6436 ]
  %6444 = call float @dx.op.unary.f32(i32 24, float %5405)  ; Sqrt(value)
  %6445 = call float @dx.op.unary.f32(i32 24, float %5406)  ; Sqrt(value)
  %6446 = call float @dx.op.unary.f32(i32 24, float %5407)  ; Sqrt(value)
  %6447 = fmul fast float %6444, %6441
  %6448 = fmul fast float %6445, %6442
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 0
  br i1 %217, label %6451, label %6471

; <label>:6451                                    ; preds = %6437
  %6452 = fadd fast float %6443, %4214
  %6453 = fmul fast float %6452, %4215
  %6454 = fsub fast float 1.000000e+00, %4215
  %6455 = call float @dx.op.unary.f32(i32 7, float %6454)  ; Saturate(value)
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 3
  %6458 = fmul fast float %6457, %6455
  %6459 = fadd fast float %6458, %6453
  %6460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.f32 %6460, 0
  %6462 = fmul fast float %6461, %5733
  %6463 = fsub fast float %6459, %6462
  %6464 = fadd fast float %6448, %6447
  %6465 = fmul fast float %6450, %6464
  %6466 = extractvalue %dx.types.CBufRet.f32 %6456, 1
  %6467 = fsub fast float %6463, %6466
  %6468 = extractvalue %dx.types.CBufRet.f32 %6456, 2
  %6469 = fmul fast float %6467, %6468
  %6470 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  br label %6487

; <label>:6471                                    ; preds = %6437
  %6472 = fmul fast float %6446, %6443
  %6473 = fmul fast float %6450, %6447
  %6474 = fmul fast float %6450, %6448
  %6475 = fmul fast float %6472, %6450
  %6476 = add i32 %35, 356
  %6477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6476, i32 undef)  ; BufferLoad(srv,index,wot)
  %6478 = extractvalue %dx.types.ResRet.i32 %6477, 0
  %6479 = and i32 %6478, 32
  %6480 = icmp eq i32 %6479, 0
  br i1 %6480, label %6487, label %6481

; <label>:6481                                    ; preds = %6471
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 0
  %6484 = fmul fast float %6483, 0x3FE99999A0000000
  %6485 = fadd fast float %6483, %6473
  %6486 = fadd fast float %6484, %6475
  br label %6487

; <label>:6487                                    ; preds = %6481, %6471, %6451
  %6488 = phi float [ %6465, %6451 ], [ %6485, %6481 ], [ %6473, %6471 ]
  %6489 = phi float [ %6470, %6451 ], [ %6474, %6481 ], [ %6474, %6471 ]
  %6490 = phi float [ 1.000000e+00, %6451 ], [ %6486, %6481 ], [ %6475, %6471 ]
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 0
  %6493 = fmul fast float %6492, %6439
  %6494 = fmul fast float %6492, %6440
  %6495 = fadd fast float %6439, %6438
  %6496 = select i1 %217, float %6495, float %6438
  %6497 = fmul float %6496, %6492
  %6498 = select i1 %217, float 0.000000e+00, float %6493
  %6499 = select i1 %217, float 0.000000e+00, float %6494
  %6500 = fmul fast float %6488, %6444
  %6501 = fmul fast float %6489, %6445
  %6502 = fmul fast float %6490, %6446
  %6503 = fadd fast float %6497, %6500
  %6504 = fadd fast float %6498, %6501
  %6505 = fadd fast float %6499, %6502
  %6506 = select i1 %217, float %6489, float %6504
  %6507 = select i1 %217, float %6490, float %6505
  %6508 = call float @dx.op.binary.f32(i32 36, float %6503, float 3.225500e+04)  ; FMin(a,b)
  %6509 = call float @dx.op.binary.f32(i32 36, float %6506, float 3.225500e+04)  ; FMin(a,b)
  %6510 = call float @dx.op.binary.f32(i32 36, float %6507, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6508)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6509)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6510)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!46}
!dx.entryPoints = !{!47}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !38, !41}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!41 = !{!42, !43, !44, !45}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!46 = !{[62 x i32] [i32 60, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0]}
!47 = !{void ()* @ps_main, !"ps_main", !48, !4, !77}
!48 = !{!49, !75, null}
!49 = !{!50, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !68, !69, !71, !72, !73, !74}
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
!61 = !{i32 5, !"SH_RED", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 5, i8 0, !60}
!62 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 6, i8 0, !60}
!63 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 7, i8 0, !60}
!64 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 3, i32 8, i8 0, !58}
!65 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 9, i8 0, !60}
!66 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !51, i8 2, i32 1, i8 2, i32 10, i8 0, !56}
!67 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 11, i8 0, !60}
!68 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 12, i8 0, !58}
!69 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !51, i8 1, i32 1, i8 1, i32 13, i8 0, !70}
!70 = !{i32 3, i32 1}
!71 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !51, i8 1, i32 1, i8 2, i32 13, i8 1, !70}
!72 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !51, i8 1, i32 1, i8 4, i32 14, i8 0, !70}
!73 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !51, i8 1, i32 1, i8 1, i32 13, i8 3, !70}
!74 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !51, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!75 = !{!76}
!76 = !{i32 0, !"SV_Target", i8 9, i8 16, !51, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!77 = !{i32 0, i64 24}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}

