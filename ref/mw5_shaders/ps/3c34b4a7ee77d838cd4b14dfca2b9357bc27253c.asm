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
; shader hash: cdc2bfc66d15fdf4a8b26013a7f28664
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
  %108 = fmul fast float %101, %69
  %109 = fmul fast float %104, %69
  %110 = fmul fast float %107, %69
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = fcmp fast une float %112, 0.000000e+00
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %117 = fmul fast float %85, 2.000000e+00
  %118 = fmul fast float %117, %115
  %119 = fmul fast float %86, 2.000000e+00
  %120 = fmul fast float %119, %116
  %121 = fsub fast float 1.000000e+00, %118
  %122 = fsub fast float 1.000000e+00, %120
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = select i1 %113, float %124, float %128
  %132 = select i1 %113, float %125, float %129
  %133 = select i1 %113, float %126, float %130
  %134 = fmul fast float %131, %121
  %135 = fmul fast float %132, %121
  %136 = fmul fast float %133, %121
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = select i1 %113, float %138, float %142
  %146 = select i1 %113, float %139, float %143
  %147 = select i1 %113, float %140, float %144
  %148 = fmul fast float %145, %122
  %149 = fmul fast float %146, %122
  %150 = fmul fast float %147, %122
  %151 = fadd fast float %148, %134
  %152 = fadd fast float %149, %135
  %153 = fadd fast float %150, %136
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = select i1 %113, float %155, float %159
  %163 = select i1 %113, float %156, float %160
  %164 = select i1 %113, float %157, float %161
  %165 = fadd fast float %151, %162
  %166 = fadd fast float %152, %163
  %167 = fadd fast float %153, %164
  %168 = fmul fast float %165, %80
  %169 = fmul fast float %166, %80
  %170 = fmul fast float %167, %80
  %171 = shl i32 %36, 5
  %172 = add i32 %171, 4194304
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = extractvalue %dx.types.ResRet.i32 %173, 1
  %176 = extractvalue %dx.types.ResRet.i32 %173, 2
  %177 = extractvalue %dx.types.ResRet.i32 %173, 3
  %178 = add i32 %171, 4194320
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = extractvalue %dx.types.ResRet.i32 %179, 1
  %182 = bitcast i32 %180 to float
  %183 = bitcast i32 %181 to float
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %187 = fmul fast float %185, %85
  %188 = fmul fast float %186, %86
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 114688
  %192 = icmp ne i32 %191, 0
  %193 = select i1 %192, float %187, float 0.000000e+00
  %194 = select i1 %192, float %188, float 0.000000e+00
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = fmul fast float %196, 2.550000e+02
  %198 = fptoui float %197 to i32
  %199 = select i1 %192, i32 %198, i32 0
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 3
  %202 = and i32 %201, 3
  %203 = icmp ne i32 %202, 0
  %204 = and i32 %201, 4
  %205 = icmp ne i32 %204, 0
  %206 = and i1 %203, %205
  br i1 %206, label %207, label %216

; <label>:207                                     ; preds = %0
  %208 = fmul fast float %116, %86
  %209 = fmul fast float %115, %85
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %209, float %208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fsub fast float 1.000000e+00, %211
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %215 = fcmp fast olt float %212, %214
  br label %219

; <label>:216                                     ; preds = %0
  %217 = icmp eq i32 %204, 0
  %218 = and i1 %203, %217
  br label %219

; <label>:219                                     ; preds = %216, %207
  %220 = phi i1 [ %215, %207 ], [ %218, %216 ]
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = fmul fast float %222, 0x3FE3C6EF40000000
  %224 = frem fast float %85, 2.560000e+02
  %225 = frem fast float %86, 2.560000e+02
  %226 = fptoui float %224 to i32
  %227 = fptoui float %225 to i32
  %228 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %226, i32 %227, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fadd fast float %229, %223
  %231 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  %232 = add i32 %35, 156
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = shl i32 %234, 4
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %234, 7
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %234, 22
  %242 = shl nuw nsw i32 %241, 5
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = add i32 %35, 216
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 255
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F70101020000000
  %250 = lshr i32 %246, 8
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = lshr i32 %246, 16
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = add i32 %35, 36
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 65535
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %260, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = add i32 %35, 288
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 65535
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %267, 16
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = fmul fast float %269, 0x3F50624DE0000000
  %273 = fmul fast float %271, 0x3F50624DE0000000
  %274 = add i32 %35, 172
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = shl i32 %276, 4
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %276, 7
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %276, 22
  %284 = shl nuw nsw i32 %283, 5
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %35, 232
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %288, 8
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %288, 16
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = add i32 %35, 52
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %35, 304
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = fmul fast float %311, 0x3F50624DE0000000
  %315 = fmul fast float %313, 0x3F50624DE0000000
  %316 = add i32 %35, 188
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = shl i32 %318, 4
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %318, 7
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %318, 22
  %326 = shl nuw nsw i32 %325, 5
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = add i32 %35, 248
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = lshr i32 %330, 8
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %330, 16
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = add i32 %35, 68
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add i32 %35, 320
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = fmul fast float %353, 0x3F50624DE0000000
  %357 = fmul fast float %355, 0x3F50624DE0000000
  %358 = add i32 %35, 204
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = shl i32 %360, 4
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %360, 7
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %360, 22
  %368 = shl nuw nsw i32 %367, 5
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = add i32 %35, 264
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = lshr i32 %372, 8
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %372, 16
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = add i32 %35, 84
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = add i32 %35, 336
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = fmul fast float %395, 0x3F50624DE0000000
  %399 = fmul fast float %397, 0x3F50624DE0000000
  %400 = add i32 %35, 348
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 32
  %404 = icmp eq i32 %403, 0
  %405 = and i32 %402, 64
  %406 = icmp eq i32 %405, 0
  %407 = and i32 %402, 128
  %408 = icmp eq i32 %407, 0
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 2
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %426, label %413

; <label>:413                                     ; preds = %219
  %414 = add i32 %35, 492
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = add i32 %416, 0
  %418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %418, %dx.types.Handle %82, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = extractvalue %dx.types.ResRet.f32 %419, 2
  %423 = fmul fast float %420, %75
  %424 = fmul fast float %421, %76
  %425 = fmul fast float %422, %77
  br label %426

; <label>:426                                     ; preds = %413, %219
  %427 = phi float [ %77, %219 ], [ %425, %413 ]
  %428 = phi float [ %76, %219 ], [ %424, %413 ]
  %429 = phi float [ %75, %219 ], [ %423, %413 ]
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 2
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %453, label %434

; <label>:434                                     ; preds = %426
  %435 = add i32 %35, 44
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 1
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %439, float %429, float 1.000000e+00
  %441 = add i32 %35, 60
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 1
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %428, float 1.000000e+00
  %447 = add i32 %35, 76
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 1
  %451 = icmp ne i32 %450, 0
  %452 = select i1 %451, float %427, float 1.000000e+00
  br label %453

; <label>:453                                     ; preds = %434, %426
  %454 = phi float [ %427, %426 ], [ %452, %434 ]
  %455 = phi float [ %428, %426 ], [ %446, %434 ]
  %456 = phi float [ %429, %426 ], [ %440, %434 ]
  %457 = lshr i32 %431, 20
  %458 = and i32 %457, 3
  %459 = add nuw nsw i32 %458, 1
  %460 = add i32 %35, 24
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = add i32 %35, 28
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = or i32 %465, %462
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %926, label %468

; <label>:468                                     ; preds = %453
  %469 = and i32 %462, 262144
  %470 = icmp ne i32 %469, 0
  %471 = select i1 %470, float %41, float 1.000000e+00
  %472 = select i1 %470, float %42, float 0.000000e+00
  %473 = select i1 %470, float %43, float 0.000000e+00
  %474 = select i1 %470, float %44, float 1.000000e+00
  %475 = select i1 %470, float %45, float %73
  %476 = select i1 %470, float %46, float %74
  %477 = add i32 %35, 284
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = lshr i32 %479, 16
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = fmul fast float %481, 0x3F50624DE0000000
  %483 = add i32 %35, 88
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = lshr i32 %485, 16
  %487 = and i32 %486, 255
  %488 = lshr i32 %485, 24
  %489 = add i32 %35, 292
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 65535
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = lshr i32 %491, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = add i32 %35, 32
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = lshr i32 %498, 22
  %500 = shl nuw nsw i32 %499, 5
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = shl i32 %498, 4
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %498, 7
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 3
  %510 = fmul fast float %509, 1.000000e+03
  %511 = fmul fast float %272, %510
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fadd fast float %512, %262
  %514 = fmul fast float %273, %510
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fadd fast float %515, %264
  %517 = fmul fast float %482, %510
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fmul fast float %518, 0x401921FB60000000
  %520 = fadd fast float %519, %501
  %521 = call float @dx.op.unary.f32(i32 13, float %520)  ; Sin(value)
  %522 = call float @dx.op.unary.f32(i32 12, float %520)  ; Cos(value)
  %523 = fsub fast float -0.000000e+00, %521
  %524 = fadd fast float %475, -5.000000e-01
  %525 = fadd fast float %476, -5.000000e-01
  %526 = fmul fast float %493, %524
  %527 = fmul fast float %495, %525
  %528 = fadd fast float %526, 5.000000e-01
  %529 = fadd fast float %527, 5.000000e-01
  %530 = fmul fast float %504, %528
  %531 = fmul fast float %507, %529
  %532 = fmul fast float %522, %530
  %533 = call float @dx.op.tertiary.f32(i32 46, float %523, float %531, float %532)  ; FMad(a,b,c)
  %534 = fmul fast float %521, %530
  %535 = call float @dx.op.tertiary.f32(i32 46, float %522, float %531, float %534)  ; FMad(a,b,c)
  %536 = fadd fast float %513, %533
  %537 = fadd fast float %516, %535
  %538 = icmp ugt i32 %487, 1
  %539 = icmp ugt i32 %485, 33554431
  %540 = or i1 %539, %538
  br i1 %540, label %541, label %566

; <label>:541                                     ; preds = %468
  %542 = add i32 %35, 228
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = lshr i32 %544, 16
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = fmul fast float %509, %546
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = mul nuw nsw i32 %487, %488
  %550 = uitofp i32 %549 to float
  %551 = fmul fast float %548, %550
  %552 = call float @dx.op.unary.f32(i32 27, float %551)  ; Round_ni(value)
  %553 = fptoui float %552 to i32
  %554 = urem i32 %553, %487
  %555 = udiv i32 %553, %488
  %556 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %557 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %558 = uitofp i32 %554 to float
  %559 = uitofp i32 %555 to float
  %560 = fadd fast float %556, %558
  %561 = fadd fast float %557, %559
  %562 = uitofp i32 %487 to float
  %563 = uitofp i32 %488 to float
  %564 = fdiv fast float %560, %562
  %565 = fdiv fast float %561, %563
  br label %566

; <label>:566                                     ; preds = %541, %468
  %567 = phi float [ %564, %541 ], [ %536, %468 ]
  %568 = phi float [ %565, %541 ], [ %537, %468 ]
  %569 = and i32 %462, 16
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %767, label %571

; <label>:571                                     ; preds = %566
  %572 = add i32 %35, 376
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = add i32 %574, 0
  %576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %577 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %576, %dx.types.Handle %81, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = extractvalue %dx.types.ResRet.f32 %577, 1
  %580 = extractvalue %dx.types.ResRet.f32 %577, 2
  %581 = extractvalue %dx.types.ResRet.f32 %577, 3
  %582 = and i32 %485, 255
  %583 = uitofp i32 %582 to float
  %584 = lshr i32 %485, 8
  %585 = and i32 %584, 255
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %581, %583
  %588 = fadd fast float %587, %586
  %589 = fmul fast float %588, 0x3F70101000000000
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = and i32 %591, 512
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %602, label %594

; <label>:594                                     ; preds = %571
  %595 = add i32 %35, 460
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = add i32 %597, 0
  %599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %599, %dx.types.Handle %82, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  br label %602

; <label>:602                                     ; preds = %594, %571
  %603 = phi float [ %601, %594 ], [ 1.000000e+00, %571 ]
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = and i32 %605, 33554432
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %714, label %608

; <label>:608                                     ; preds = %602
  %609 = add i32 %35, 224
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 65535
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = lshr i32 %611, 16
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = add i32 %35, 228
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = and i32 %618, 65535
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %637 = add i32 %35, 220
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = lshr i32 %639, 24
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F70101020000000
  %643 = and i32 %639, 255
  %644 = uitofp i32 %643 to float
  %645 = fmul fast float %644, 0x3F70101020000000
  %646 = lshr i32 %639, 8
  %647 = and i32 %646, 255
  %648 = uitofp i32 %647 to float
  %649 = fmul fast float %648, 0x3F70101020000000
  %650 = lshr i32 %639, 16
  %651 = and i32 %650, 255
  %652 = uitofp i32 %651 to float
  %653 = fmul fast float %652, 0x3F70101020000000
  %654 = bitcast float %578 to i32
  %655 = ashr i32 %654, 1
  %656 = sub nsw i32 1597463174, %655
  %657 = bitcast i32 %656 to float
  %658 = fmul fast float %578, 5.000000e-01
  %659 = fmul fast float %657, %657
  %660 = fmul fast float %659, %658
  %661 = fsub fast float 1.500000e+00, %660
  %662 = fmul fast float %657, %578
  %663 = fmul fast float %662, %661
  %664 = bitcast float %579 to i32
  %665 = ashr i32 %664, 1
  %666 = sub nsw i32 1597463174, %665
  %667 = bitcast i32 %666 to float
  %668 = fmul fast float %579, 5.000000e-01
  %669 = fmul fast float %667, %667
  %670 = fmul fast float %669, %668
  %671 = fsub fast float 1.500000e+00, %670
  %672 = fmul fast float %667, %579
  %673 = fmul fast float %672, %671
  %674 = bitcast float %580 to i32
  %675 = ashr i32 %674, 1
  %676 = sub nsw i32 1597463174, %675
  %677 = bitcast i32 %676 to float
  %678 = fmul fast float %580, 5.000000e-01
  %679 = fmul fast float %677, %677
  %680 = fmul fast float %679, %678
  %681 = fsub fast float 1.500000e+00, %680
  %682 = fmul fast float %677, %580
  %683 = fmul fast float %682, %681
  %684 = fsub fast float %663, %645
  %685 = fsub fast float %673, %649
  %686 = fsub fast float %683, %653
  %687 = fmul fast float %684, %613
  %688 = fmul fast float %685, %615
  %689 = fmul fast float %686, %620
  %690 = fadd fast float %687, %628
  %691 = fadd fast float %688, %632
  %692 = fadd fast float %689, %636
  %693 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  %694 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %695 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  %696 = fmul fast float %693, %693
  %697 = fmul fast float %694, %694
  %698 = fmul fast float %695, %695
  %699 = fsub fast float %696, %578
  %700 = fsub fast float %697, %579
  %701 = fsub fast float %698, %580
  %702 = fmul fast float %699, %603
  %703 = fmul fast float %700, %603
  %704 = fmul fast float %701, %603
  %705 = fadd fast float %702, %578
  %706 = fadd fast float %703, %579
  %707 = fadd fast float %704, %580
  %708 = fadd fast float %625, %589
  %709 = fsub fast float %708, %642
  %710 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  %711 = fsub fast float %710, %589
  %712 = fmul fast float %711, %603
  %713 = fadd fast float %712, %589
  br label %767

; <label>:714                                     ; preds = %602
  %715 = and i32 %605, 134217728
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %751, label %717

; <label>:717                                     ; preds = %714
  %718 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %719 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %720 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %721 = fadd fast float %718, -5.000000e-01
  %722 = fadd fast float %719, -5.000000e-01
  %723 = fadd fast float %720, -5.000000e-01
  %724 = fmul fast float %721, %603
  %725 = fmul fast float %722, %603
  %726 = fmul fast float %723, %603
  %727 = fadd fast float %724, 5.000000e-01
  %728 = fadd fast float %725, 5.000000e-01
  %729 = fadd fast float %726, 5.000000e-01
  %730 = call float @dx.op.unary.f32(i32 24, float %578)  ; Sqrt(value)
  %731 = call float @dx.op.unary.f32(i32 24, float %579)  ; Sqrt(value)
  %732 = call float @dx.op.unary.f32(i32 24, float %580)  ; Sqrt(value)
  %733 = fmul fast float %727, 2.000000e+00
  %734 = fsub fast float 1.000000e+00, %733
  %735 = fmul fast float %734, %730
  %736 = fadd fast float %735, %733
  %737 = fmul fast float %736, %730
  %738 = fmul fast float %728, 2.000000e+00
  %739 = fsub fast float 1.000000e+00, %738
  %740 = fmul fast float %739, %731
  %741 = fadd fast float %740, %738
  %742 = fmul fast float %741, %731
  %743 = fmul fast float %729, 2.000000e+00
  %744 = fsub fast float 1.000000e+00, %743
  %745 = fmul fast float %744, %732
  %746 = fadd fast float %745, %743
  %747 = fmul fast float %746, %732
  %748 = fmul fast float %737, %737
  %749 = fmul fast float %742, %742
  %750 = fmul fast float %747, %747
  br label %767

; <label>:751                                     ; preds = %714
  %752 = fmul fast float %249, %249
  %753 = fmul fast float %253, %253
  %754 = fmul fast float %257, %257
  %755 = fadd fast float %752, -1.000000e+00
  %756 = fadd fast float %753, -1.000000e+00
  %757 = fadd fast float %754, -1.000000e+00
  %758 = fmul fast float %603, %755
  %759 = fmul fast float %603, %756
  %760 = fmul fast float %603, %757
  %761 = fadd fast float %758, 1.000000e+00
  %762 = fadd fast float %759, 1.000000e+00
  %763 = fadd fast float %760, 1.000000e+00
  %764 = fmul fast float %761, %578
  %765 = fmul fast float %762, %579
  %766 = fmul fast float %763, %580
  br label %767

; <label>:767                                     ; preds = %751, %717, %608, %566
  %768 = phi float [ %713, %608 ], [ %589, %717 ], [ %589, %751 ], [ 0x3FA23C0BE0000000, %566 ]
  %769 = phi float [ %705, %608 ], [ %748, %717 ], [ %764, %751 ], [ 1.000000e+00, %566 ]
  %770 = phi float [ %706, %608 ], [ %749, %717 ], [ %765, %751 ], [ 1.000000e+00, %566 ]
  %771 = phi float [ %707, %608 ], [ %750, %717 ], [ %766, %751 ], [ 1.000000e+00, %566 ]
  %772 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.i32 %772, 1
  %774 = and i32 %773, 1
  %775 = icmp ne i32 %774, 0
  %776 = add i32 %35, 356
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = and i32 %778, 32
  %780 = icmp ne i32 %779, 0
  %781 = and i1 %775, %780
  %782 = select i1 %781, float 1.000000e+00, float %769
  %783 = select i1 %781, float 0x3FD3333340000000, float %770
  %784 = select i1 %781, float 0x3FD3333340000000, float %771
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = and i32 %786, 32
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %861, label %789

; <label>:789                                     ; preds = %767
  %790 = add i32 %35, 92
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = add i32 %35, 392
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = add i32 %795, 0
  %797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %796, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %798 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %797, %dx.types.Handle %81, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = extractvalue %dx.types.ResRet.f32 %798, 2
  %802 = extractvalue %dx.types.ResRet.f32 %798, 3
  %803 = and i32 %792, 255
  %804 = uitofp i32 %803 to float
  %805 = lshr i32 %792, 8
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = lshr i32 %792, 16
  %809 = and i32 %808, 255
  %810 = uitofp i32 %809 to float
  %811 = fmul fast float %810, 0x3F70101000000000
  %812 = fmul fast float %799, %804
  %813 = fadd fast float %812, %807
  %814 = fmul fast float %813, 0x3F70101000000000
  %815 = fadd fast float %800, -5.000000e-01
  %816 = fadd fast float %802, -5.000000e-01
  %817 = fmul fast float %815, %811
  %818 = fmul fast float %816, %811
  %819 = fadd fast float %817, 5.000000e-01
  %820 = fadd fast float %818, 5.000000e-01
  %821 = fmul fast float %819, 2.000000e+00
  %822 = fadd fast float %821, -1.000000e+00
  %823 = fmul fast float %820, 2.000000e+00
  %824 = fadd fast float %823, -1.000000e+00
  %825 = fadd fast float %822, %824
  %826 = fmul fast float %825, 5.000000e-01
  %827 = fsub fast float %822, %824
  %828 = fmul fast float %827, 5.000000e-01
  %829 = call float @dx.op.unary.f32(i32 6, float %826)  ; FAbs(value)
  %830 = fsub fast float 1.000000e+00, %829
  %831 = call float @dx.op.unary.f32(i32 6, float %828)  ; FAbs(value)
  %832 = fsub fast float %830, %831
  %833 = call float @dx.op.dot3.f32(i32 55, float %826, float %828, float %832, float %826, float %828, float %832)  ; Dot3(ax,ay,az,bx,by,bz)
  %834 = call float @dx.op.unary.f32(i32 25, float %833)  ; Rsqrt(value)
  %835 = fmul fast float %826, %834
  %836 = fmul fast float %828, %834
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = and i32 %838, 67108864
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %857, label %841

; <label>:841                                     ; preds = %789
  %842 = add i32 %35, 280
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = and i32 %844, 65535
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = and i32 %848, 65535
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = lshr i32 %844, 16
  %852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %851)  ; LegacyF16ToF32(value)
  %853 = fsub fast float %814, %852
  %854 = fmul fast float %853, %846
  %855 = fadd fast float %854, %850
  %856 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  br label %857

; <label>:857                                     ; preds = %841, %789
  %858 = phi float [ %856, %841 ], [ %814, %789 ]
  %859 = call float @dx.op.dot2.f32(i32 54, float %835, float %836, float %471, float %472)  ; Dot2(ax,ay,bx,by)
  %860 = call float @dx.op.dot2.f32(i32 54, float %835, float %836, float %473, float %474)  ; Dot2(ax,ay,bx,by)
  br label %861

; <label>:861                                     ; preds = %857, %767
  %862 = phi float [ %858, %857 ], [ 0x3FD6666660000000, %767 ]
  %863 = phi float [ %859, %857 ], [ 0.000000e+00, %767 ]
  %864 = phi float [ %860, %857 ], [ 0.000000e+00, %767 ]
  %865 = phi float [ %801, %857 ], [ 1.000000e+00, %767 ]
  %866 = add i32 %35, 160
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %866, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = lshr i32 %868, 22
  %870 = shl nuw nsw i32 %869, 5
  %871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %870)  ; LegacyF16ToF32(value)
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 64
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %909, label %876

; <label>:876                                     ; preds = %861
  %877 = add i32 %35, 408
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = add i32 %879, 0
  %881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %880, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = and i32 %883, 131072
  %885 = icmp eq i32 %884, 0
  %886 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %881, %dx.types.Handle %81, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = extractvalue %dx.types.ResRet.f32 %886, 1
  %889 = extractvalue %dx.types.ResRet.f32 %886, 2
  %890 = fmul fast float %887, %237
  %891 = fmul fast float %888, %240
  %892 = fmul fast float %889, %243
  br i1 %885, label %899, label %893

; <label>:893                                     ; preds = %876
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = fmul fast float %895, %890
  %897 = fmul fast float %895, %891
  %898 = fmul fast float %895, %892
  br label %899

; <label>:899                                     ; preds = %893, %876
  %900 = phi float [ %896, %893 ], [ %890, %876 ]
  %901 = phi float [ %897, %893 ], [ %891, %876 ]
  %902 = phi float [ %898, %893 ], [ %892, %876 ]
  %903 = fmul fast float %900, %871
  %904 = select i1 %220, float %903, float %900
  %905 = call float @dx.op.dot3.f32(i32 55, float %904, float %901, float %902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = select i1 %220, float 0.000000e+00, float %900
  %907 = select i1 %220, float %905, float %901
  %908 = select i1 %220, float 0.000000e+00, float %902
  br label %909

; <label>:909                                     ; preds = %899, %861
  %910 = phi float [ %906, %899 ], [ 0.000000e+00, %861 ]
  %911 = phi float [ %907, %899 ], [ 0.000000e+00, %861 ]
  %912 = phi float [ %908, %899 ], [ 0.000000e+00, %861 ]
  %913 = add i32 %35, 96
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = lshr i32 %915, 8
  %919 = and i32 %918, 255
  %920 = uitofp i32 %919 to float
  %921 = call float @dx.op.dot3.f32(i32 55, float %782, float %783, float %784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %922 = fmul fast float %920, %921
  %923 = fadd fast float %922, %917
  %924 = fmul fast float %923, 0x3F70101020000000
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  br label %926

; <label>:926                                     ; preds = %909, %453
  %927 = phi float [ 0.000000e+00, %453 ], [ %863, %909 ]
  %928 = phi float [ 0.000000e+00, %453 ], [ %864, %909 ]
  %929 = phi float [ 0.000000e+00, %453 ], [ %782, %909 ]
  %930 = phi float [ 0.000000e+00, %453 ], [ %783, %909 ]
  %931 = phi float [ 0.000000e+00, %453 ], [ %784, %909 ]
  %932 = phi float [ 0.000000e+00, %453 ], [ %910, %909 ]
  %933 = phi float [ 0.000000e+00, %453 ], [ %911, %909 ]
  %934 = phi float [ 0.000000e+00, %453 ], [ %912, %909 ]
  %935 = phi float [ 0.000000e+00, %453 ], [ %768, %909 ]
  %936 = phi float [ 0.000000e+00, %453 ], [ 1.000000e+00, %909 ]
  %937 = phi float [ 0.000000e+00, %453 ], [ %862, %909 ]
  %938 = phi float [ 0.000000e+00, %453 ], [ %865, %909 ]
  %939 = phi float [ 0.000000e+00, %453 ], [ %925, %909 ]
  br i1 %404, label %1666, label %940

; <label>:940                                     ; preds = %926
  %941 = icmp ult i32 %459, 2
  %942 = add i32 %35, 40
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = add i32 %35, 44
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = or i32 %947, %944
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %1666, label %950

; <label>:950                                     ; preds = %940
  %951 = and i32 %944, 262144
  %952 = icmp ne i32 %951, 0
  %953 = select i1 %952, float %41, float 1.000000e+00
  %954 = select i1 %952, float %42, float 0.000000e+00
  %955 = select i1 %952, float %43, float 0.000000e+00
  %956 = select i1 %952, float %44, float 1.000000e+00
  %957 = select i1 %952, float %45, float %73
  %958 = select i1 %952, float %46, float %74
  %959 = add i32 %35, 300
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = lshr i32 %961, 16
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = fmul fast float %963, 0x3F50624DE0000000
  %965 = add i32 %35, 104
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = lshr i32 %967, 16
  %969 = and i32 %968, 255
  %970 = lshr i32 %967, 24
  %971 = add i32 %35, 308
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = and i32 %973, 65535
  %975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %974)  ; LegacyF16ToF32(value)
  %976 = lshr i32 %973, 16
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = add i32 %35, 48
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = lshr i32 %980, 22
  %982 = shl nuw nsw i32 %981, 5
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = shl i32 %980, 4
  %985 = and i32 %984, 32752
  %986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %985)  ; LegacyF16ToF32(value)
  %987 = lshr i32 %980, 7
  %988 = and i32 %987, 32752
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 3
  %992 = fmul fast float %991, 1.000000e+03
  %993 = fmul fast float %314, %992
  %994 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %995 = fadd fast float %994, %304
  %996 = fmul fast float %315, %992
  %997 = call float @dx.op.unary.f32(i32 22, float %996)  ; Frc(value)
  %998 = fadd fast float %997, %306
  %999 = fmul fast float %964, %992
  %1000 = call float @dx.op.unary.f32(i32 22, float %999)  ; Frc(value)
  %1001 = fmul fast float %1000, 0x401921FB60000000
  %1002 = fadd fast float %1001, %983
  %1003 = call float @dx.op.unary.f32(i32 13, float %1002)  ; Sin(value)
  %1004 = call float @dx.op.unary.f32(i32 12, float %1002)  ; Cos(value)
  %1005 = fsub fast float -0.000000e+00, %1003
  %1006 = fadd fast float %957, -5.000000e-01
  %1007 = fadd fast float %958, -5.000000e-01
  %1008 = fmul fast float %975, %1006
  %1009 = fmul fast float %977, %1007
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fmul fast float %986, %1010
  %1013 = fmul fast float %989, %1011
  %1014 = fmul fast float %1004, %1012
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %1013, float %1014)  ; FMad(a,b,c)
  %1016 = fmul fast float %1003, %1012
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %1013, float %1016)  ; FMad(a,b,c)
  %1018 = fadd fast float %995, %1015
  %1019 = fadd fast float %998, %1017
  %1020 = icmp ugt i32 %969, 1
  %1021 = icmp ugt i32 %967, 33554431
  %1022 = or i1 %1021, %1020
  br i1 %1022, label %1023, label %1048

; <label>:1023                                    ; preds = %950
  %1024 = add i32 %35, 244
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = lshr i32 %1026, 16
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = fmul fast float %991, %1028
  %1030 = call float @dx.op.unary.f32(i32 22, float %1029)  ; Frc(value)
  %1031 = mul nuw nsw i32 %969, %970
  %1032 = uitofp i32 %1031 to float
  %1033 = fmul fast float %1030, %1032
  %1034 = call float @dx.op.unary.f32(i32 27, float %1033)  ; Round_ni(value)
  %1035 = fptoui float %1034 to i32
  %1036 = urem i32 %1035, %969
  %1037 = udiv i32 %1035, %970
  %1038 = call float @dx.op.unary.f32(i32 22, float %1018)  ; Frc(value)
  %1039 = call float @dx.op.unary.f32(i32 22, float %1019)  ; Frc(value)
  %1040 = uitofp i32 %1036 to float
  %1041 = uitofp i32 %1037 to float
  %1042 = fadd fast float %1038, %1040
  %1043 = fadd fast float %1039, %1041
  %1044 = uitofp i32 %969 to float
  %1045 = uitofp i32 %970 to float
  %1046 = fdiv fast float %1042, %1044
  %1047 = fdiv fast float %1043, %1045
  br label %1048

; <label>:1048                                    ; preds = %1023, %950
  %1049 = phi float [ %1046, %1023 ], [ %1018, %950 ]
  %1050 = phi float [ %1047, %1023 ], [ %1019, %950 ]
  %1051 = and i32 %944, 256
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1099, label %1053

; <label>:1053                                    ; preds = %1048
  %1054 = add i32 %35, 444
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = add i32 %1056, 0
  %1058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1058, %dx.types.Handle %82, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = add i32 %35, 116
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = shl i32 %1063, 4
  %1065 = and i32 %1064, 32752
  %1066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1065)  ; LegacyF16ToF32(value)
  %1067 = lshr i32 %1063, 7
  %1068 = and i32 %1067, 32752
  %1069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1068)  ; LegacyF16ToF32(value)
  %1070 = fsub fast float 1.000000e+00, %456
  %1071 = call float @dx.op.binary.f32(i32 35, float %1070, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1072 = bitcast float %456 to i32
  %1073 = sitofp i32 %1072 to float
  %1074 = fadd fast float %1073, 0xC1CFBF8940000000
  %1075 = fmul fast float %1069, %1074
  %1076 = fadd fast float %1075, 0x41CFBF8940000000
  %1077 = fptosi float %1076 to i32
  %1078 = bitcast i32 %1077 to float
  %1079 = bitcast float %1071 to i32
  %1080 = sitofp i32 %1079 to float
  %1081 = fadd fast float %1080, 0xC1CFBF8940000000
  %1082 = fmul fast float %1081, %1069
  %1083 = fadd fast float %1082, 0x41CFBF8940000000
  %1084 = fptosi float %1083 to i32
  %1085 = bitcast i32 %1084 to float
  %1086 = fmul fast float %1078, %1066
  %1087 = fmul fast float %1085, %1066
  %1088 = fsub fast float %1071, %1086
  %1089 = fadd fast float %1087, %1071
  %1090 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  %1091 = call float @dx.op.unary.f32(i32 7, float %1089)  ; Saturate(value)
  %1092 = fsub fast float %1060, %1090
  %1093 = fsub fast float %1091, %1090
  %1094 = bitcast float %1093 to i32
  %1095 = sub nsw i32 2129859010, %1094
  %1096 = bitcast i32 %1095 to float
  %1097 = fmul fast float %1096, %1092
  %1098 = call float @dx.op.unary.f32(i32 7, float %1097)  ; Saturate(value)
  br label %1099

; <label>:1099                                    ; preds = %1053, %1048
  %1100 = phi float [ %1098, %1053 ], [ %456, %1048 ]
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 128
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1121, label %1105

; <label>:1105                                    ; preds = %1099
  %1106 = add i32 %35, 428
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = add i32 %1108, 0
  %1110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1109, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1111 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1110, %dx.types.Handle %82, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 524288
  %1116 = icmp ne i32 %1115, 0
  %1117 = fcmp fast ogt float %1112, 0x3FE0101020000000
  %1118 = select i1 %1117, float 1.000000e+00, float 0.000000e+00
  %1119 = select i1 %1116, float %1118, float %1112
  %1120 = fmul fast float %1119, %1100
  br label %1121

; <label>:1121                                    ; preds = %1105, %1099
  %1122 = phi float [ %1120, %1105 ], [ %1100, %1099 ]
  %1123 = fcmp fast ult float %1122, 0x3F70101020000000
  br i1 %1123, label %1666, label %1124

; <label>:1124                                    ; preds = %1121
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = and i32 %1126, 16
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1327, label %1129

; <label>:1129                                    ; preds = %1124
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = add i32 %35, 380
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = add i32 %1134, 0
  %1136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1137 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1136, %dx.types.Handle %81, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1138 = extractvalue %dx.types.ResRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.ResRet.f32 %1137, 1
  %1140 = extractvalue %dx.types.ResRet.f32 %1137, 2
  %1141 = extractvalue %dx.types.ResRet.f32 %1137, 3
  %1142 = and i32 %1131, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = lshr i32 %1131, 8
  %1145 = and i32 %1144, 255
  %1146 = uitofp i32 %1145 to float
  %1147 = fmul fast float %1141, %1143
  %1148 = fadd fast float %1147, %1146
  %1149 = fmul fast float %1148, 0x3F70101000000000
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = and i32 %1151, 512
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1162, label %1154

; <label>:1154                                    ; preds = %1129
  %1155 = add i32 %35, 464
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = add i32 %1157, 0
  %1159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1158, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1160 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1159, %dx.types.Handle %82, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  br label %1162

; <label>:1162                                    ; preds = %1154, %1129
  %1163 = phi float [ %1161, %1154 ], [ 1.000000e+00, %1129 ]
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = and i32 %1165, 33554432
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1274, label %1168

; <label>:1168                                    ; preds = %1162
  %1169 = add i32 %35, 240
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 65535
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = lshr i32 %1171, 16
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = add i32 %35, 244
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 65535
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1197 = add i32 %35, 236
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = lshr i32 %1199, 24
  %1201 = uitofp i32 %1200 to float
  %1202 = fmul fast float %1201, 0x3F70101020000000
  %1203 = and i32 %1199, 255
  %1204 = uitofp i32 %1203 to float
  %1205 = fmul fast float %1204, 0x3F70101020000000
  %1206 = lshr i32 %1199, 8
  %1207 = and i32 %1206, 255
  %1208 = uitofp i32 %1207 to float
  %1209 = fmul fast float %1208, 0x3F70101020000000
  %1210 = lshr i32 %1199, 16
  %1211 = and i32 %1210, 255
  %1212 = uitofp i32 %1211 to float
  %1213 = fmul fast float %1212, 0x3F70101020000000
  %1214 = bitcast float %1138 to i32
  %1215 = ashr i32 %1214, 1
  %1216 = sub nsw i32 1597463174, %1215
  %1217 = bitcast i32 %1216 to float
  %1218 = fmul fast float %1138, 5.000000e-01
  %1219 = fmul fast float %1217, %1217
  %1220 = fmul fast float %1219, %1218
  %1221 = fsub fast float 1.500000e+00, %1220
  %1222 = fmul fast float %1217, %1138
  %1223 = fmul fast float %1222, %1221
  %1224 = bitcast float %1139 to i32
  %1225 = ashr i32 %1224, 1
  %1226 = sub nsw i32 1597463174, %1225
  %1227 = bitcast i32 %1226 to float
  %1228 = fmul fast float %1139, 5.000000e-01
  %1229 = fmul fast float %1227, %1227
  %1230 = fmul fast float %1229, %1228
  %1231 = fsub fast float 1.500000e+00, %1230
  %1232 = fmul fast float %1227, %1139
  %1233 = fmul fast float %1232, %1231
  %1234 = bitcast float %1140 to i32
  %1235 = ashr i32 %1234, 1
  %1236 = sub nsw i32 1597463174, %1235
  %1237 = bitcast i32 %1236 to float
  %1238 = fmul fast float %1140, 5.000000e-01
  %1239 = fmul fast float %1237, %1237
  %1240 = fmul fast float %1239, %1238
  %1241 = fsub fast float 1.500000e+00, %1240
  %1242 = fmul fast float %1237, %1140
  %1243 = fmul fast float %1242, %1241
  %1244 = fsub fast float %1223, %1205
  %1245 = fsub fast float %1233, %1209
  %1246 = fsub fast float %1243, %1213
  %1247 = fmul fast float %1244, %1173
  %1248 = fmul fast float %1245, %1175
  %1249 = fmul fast float %1246, %1180
  %1250 = fadd fast float %1247, %1188
  %1251 = fadd fast float %1248, %1192
  %1252 = fadd fast float %1249, %1196
  %1253 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1254 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1255 = call float @dx.op.unary.f32(i32 7, float %1252)  ; Saturate(value)
  %1256 = fmul fast float %1253, %1253
  %1257 = fmul fast float %1254, %1254
  %1258 = fmul fast float %1255, %1255
  %1259 = fsub fast float %1256, %1138
  %1260 = fsub fast float %1257, %1139
  %1261 = fsub fast float %1258, %1140
  %1262 = fmul fast float %1259, %1163
  %1263 = fmul fast float %1260, %1163
  %1264 = fmul fast float %1261, %1163
  %1265 = fadd fast float %1262, %1138
  %1266 = fadd fast float %1263, %1139
  %1267 = fadd fast float %1264, %1140
  %1268 = fadd fast float %1185, %1149
  %1269 = fsub fast float %1268, %1202
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1271 = fsub fast float %1270, %1149
  %1272 = fmul fast float %1271, %1163
  %1273 = fadd fast float %1272, %1149
  br label %1327

; <label>:1274                                    ; preds = %1162
  %1275 = and i32 %1165, 134217728
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1311, label %1277

; <label>:1277                                    ; preds = %1274
  %1278 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1279 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1280 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1281 = fadd fast float %1278, -5.000000e-01
  %1282 = fadd fast float %1279, -5.000000e-01
  %1283 = fadd fast float %1280, -5.000000e-01
  %1284 = fmul fast float %1281, %1163
  %1285 = fmul fast float %1282, %1163
  %1286 = fmul fast float %1283, %1163
  %1287 = fadd fast float %1284, 5.000000e-01
  %1288 = fadd fast float %1285, 5.000000e-01
  %1289 = fadd fast float %1286, 5.000000e-01
  %1290 = call float @dx.op.unary.f32(i32 24, float %1138)  ; Sqrt(value)
  %1291 = call float @dx.op.unary.f32(i32 24, float %1139)  ; Sqrt(value)
  %1292 = call float @dx.op.unary.f32(i32 24, float %1140)  ; Sqrt(value)
  %1293 = fmul fast float %1287, 2.000000e+00
  %1294 = fsub fast float 1.000000e+00, %1293
  %1295 = fmul fast float %1294, %1290
  %1296 = fadd fast float %1295, %1293
  %1297 = fmul fast float %1296, %1290
  %1298 = fmul fast float %1288, 2.000000e+00
  %1299 = fsub fast float 1.000000e+00, %1298
  %1300 = fmul fast float %1299, %1291
  %1301 = fadd fast float %1300, %1298
  %1302 = fmul fast float %1301, %1291
  %1303 = fmul fast float %1289, 2.000000e+00
  %1304 = fsub fast float 1.000000e+00, %1303
  %1305 = fmul fast float %1304, %1292
  %1306 = fadd fast float %1305, %1303
  %1307 = fmul fast float %1306, %1292
  %1308 = fmul fast float %1297, %1297
  %1309 = fmul fast float %1302, %1302
  %1310 = fmul fast float %1307, %1307
  br label %1327

; <label>:1311                                    ; preds = %1274
  %1312 = fmul fast float %291, %291
  %1313 = fmul fast float %295, %295
  %1314 = fmul fast float %299, %299
  %1315 = fadd fast float %1312, -1.000000e+00
  %1316 = fadd fast float %1313, -1.000000e+00
  %1317 = fadd fast float %1314, -1.000000e+00
  %1318 = fmul fast float %1163, %1315
  %1319 = fmul fast float %1163, %1316
  %1320 = fmul fast float %1163, %1317
  %1321 = fadd fast float %1318, 1.000000e+00
  %1322 = fadd fast float %1319, 1.000000e+00
  %1323 = fadd fast float %1320, 1.000000e+00
  %1324 = fmul fast float %1321, %1138
  %1325 = fmul fast float %1322, %1139
  %1326 = fmul fast float %1323, %1140
  br label %1327

; <label>:1327                                    ; preds = %1311, %1277, %1168, %1124
  %1328 = phi float [ %1273, %1168 ], [ %1149, %1277 ], [ %1149, %1311 ], [ 0x3FA23C0BE0000000, %1124 ]
  %1329 = phi float [ %1265, %1168 ], [ %1308, %1277 ], [ %1324, %1311 ], [ 1.000000e+00, %1124 ]
  %1330 = phi float [ %1266, %1168 ], [ %1309, %1277 ], [ %1325, %1311 ], [ 1.000000e+00, %1124 ]
  %1331 = phi float [ %1267, %1168 ], [ %1310, %1277 ], [ %1326, %1311 ], [ 1.000000e+00, %1124 ]
  %1332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.i32 %1332, 1
  %1334 = and i32 %1333, 1
  %1335 = icmp ne i32 %1334, 0
  %1336 = add i32 %35, 356
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 32
  %1340 = icmp ne i32 %1339, 0
  %1341 = and i1 %1335, %1340
  %1342 = select i1 %1341, float 1.000000e+00, float %1329
  %1343 = select i1 %1341, float 0x3FD3333340000000, float %1330
  %1344 = select i1 %1341, float 0x3FD3333340000000, float %1331
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = and i32 %1346, 32
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1421, label %1349

; <label>:1349                                    ; preds = %1327
  %1350 = add i32 %35, 108
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = add i32 %35, 396
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1353, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = add i32 %1355, 0
  %1357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1357, %dx.types.Handle %81, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.ResRet.f32 %1358, 1
  %1361 = extractvalue %dx.types.ResRet.f32 %1358, 2
  %1362 = extractvalue %dx.types.ResRet.f32 %1358, 3
  %1363 = and i32 %1352, 255
  %1364 = uitofp i32 %1363 to float
  %1365 = lshr i32 %1352, 8
  %1366 = and i32 %1365, 255
  %1367 = uitofp i32 %1366 to float
  %1368 = lshr i32 %1352, 16
  %1369 = and i32 %1368, 255
  %1370 = uitofp i32 %1369 to float
  %1371 = fmul fast float %1370, 0x3F70101000000000
  %1372 = fmul fast float %1359, %1364
  %1373 = fadd fast float %1372, %1367
  %1374 = fmul fast float %1373, 0x3F70101000000000
  %1375 = fadd fast float %1360, -5.000000e-01
  %1376 = fadd fast float %1362, -5.000000e-01
  %1377 = fmul fast float %1375, %1371
  %1378 = fmul fast float %1376, %1371
  %1379 = fadd fast float %1377, 5.000000e-01
  %1380 = fadd fast float %1378, 5.000000e-01
  %1381 = fmul fast float %1379, 2.000000e+00
  %1382 = fadd fast float %1381, -1.000000e+00
  %1383 = fmul fast float %1380, 2.000000e+00
  %1384 = fadd fast float %1383, -1.000000e+00
  %1385 = fadd fast float %1382, %1384
  %1386 = fmul fast float %1385, 5.000000e-01
  %1387 = fsub fast float %1382, %1384
  %1388 = fmul fast float %1387, 5.000000e-01
  %1389 = call float @dx.op.unary.f32(i32 6, float %1386)  ; FAbs(value)
  %1390 = fsub fast float 1.000000e+00, %1389
  %1391 = call float @dx.op.unary.f32(i32 6, float %1388)  ; FAbs(value)
  %1392 = fsub fast float %1390, %1391
  %1393 = call float @dx.op.dot3.f32(i32 55, float %1386, float %1388, float %1392, float %1386, float %1388, float %1392)  ; Dot3(ax,ay,az,bx,by,bz)
  %1394 = call float @dx.op.unary.f32(i32 25, float %1393)  ; Rsqrt(value)
  %1395 = fmul fast float %1386, %1394
  %1396 = fmul fast float %1388, %1394
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = and i32 %1398, 67108864
  %1400 = icmp eq i32 %1399, 0
  br i1 %1400, label %1417, label %1401

; <label>:1401                                    ; preds = %1349
  %1402 = add i32 %35, 296
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = and i32 %1404, 65535
  %1406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1405)  ; LegacyF16ToF32(value)
  %1407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.i32 %1407, 0
  %1409 = and i32 %1408, 65535
  %1410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1409)  ; LegacyF16ToF32(value)
  %1411 = lshr i32 %1404, 16
  %1412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1411)  ; LegacyF16ToF32(value)
  %1413 = fsub fast float %1374, %1412
  %1414 = fmul fast float %1413, %1406
  %1415 = fadd fast float %1414, %1410
  %1416 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  br label %1417

; <label>:1417                                    ; preds = %1401, %1349
  %1418 = phi float [ %1416, %1401 ], [ %1374, %1349 ]
  %1419 = call float @dx.op.dot2.f32(i32 54, float %1395, float %1396, float %953, float %954)  ; Dot2(ax,ay,bx,by)
  %1420 = call float @dx.op.dot2.f32(i32 54, float %1395, float %1396, float %955, float %956)  ; Dot2(ax,ay,bx,by)
  br label %1421

; <label>:1421                                    ; preds = %1417, %1327
  %1422 = phi float [ %1418, %1417 ], [ 0x3FD6666660000000, %1327 ]
  %1423 = phi float [ %1419, %1417 ], [ 0.000000e+00, %1327 ]
  %1424 = phi float [ %1420, %1417 ], [ 0.000000e+00, %1327 ]
  %1425 = phi float [ %1361, %1417 ], [ 1.000000e+00, %1327 ]
  %1426 = add i32 %35, 176
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = lshr i32 %1428, 22
  %1430 = shl nuw nsw i32 %1429, 5
  %1431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1430)  ; LegacyF16ToF32(value)
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = and i32 %1433, 64
  %1435 = icmp eq i32 %1434, 0
  br i1 %1435, label %1469, label %1436

; <label>:1436                                    ; preds = %1421
  %1437 = add i32 %35, 412
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = add i32 %1439, 0
  %1441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 131072
  %1445 = icmp eq i32 %1444, 0
  %1446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1441, %dx.types.Handle %81, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.ResRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.ResRet.f32 %1446, 2
  %1450 = fmul fast float %1447, %279
  %1451 = fmul fast float %1448, %282
  %1452 = fmul fast float %1449, %285
  br i1 %1445, label %1459, label %1453

; <label>:1453                                    ; preds = %1436
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 0
  %1456 = fmul fast float %1455, %1450
  %1457 = fmul fast float %1455, %1451
  %1458 = fmul fast float %1455, %1452
  br label %1459

; <label>:1459                                    ; preds = %1453, %1436
  %1460 = phi float [ %1456, %1453 ], [ %1450, %1436 ]
  %1461 = phi float [ %1457, %1453 ], [ %1451, %1436 ]
  %1462 = phi float [ %1458, %1453 ], [ %1452, %1436 ]
  %1463 = fmul fast float %1460, %1431
  %1464 = select i1 %220, float %1463, float %1460
  %1465 = call float @dx.op.dot3.f32(i32 55, float %1464, float %1461, float %1462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1466 = select i1 %220, float 0.000000e+00, float %1460
  %1467 = select i1 %220, float %1465, float %1461
  %1468 = select i1 %220, float 0.000000e+00, float %1462
  br label %1469

; <label>:1469                                    ; preds = %1459, %1421
  %1470 = phi float [ %1466, %1459 ], [ 0.000000e+00, %1421 ]
  %1471 = phi float [ %1467, %1459 ], [ 0.000000e+00, %1421 ]
  %1472 = phi float [ %1468, %1459 ], [ 0.000000e+00, %1421 ]
  %1473 = add i32 %35, 112
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = lshr i32 %1475, 8
  %1479 = and i32 %1478, 255
  %1480 = uitofp i32 %1479 to float
  %1481 = call float @dx.op.dot3.f32(i32 55, float %1342, float %1343, float %1344, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1482 = fmul fast float %1480, %1481
  %1483 = fadd fast float %1482, %1477
  %1484 = fmul fast float %1483, 0x3F70101020000000
  %1485 = call float @dx.op.unary.f32(i32 7, float %1484)  ; Saturate(value)
  br i1 %941, label %1486, label %1494

; <label>:1486                                    ; preds = %1469
  %1487 = fsub fast float 1.000000e+00, %1122
  %1488 = fmul fast float %1487, %929
  %1489 = fmul fast float %1487, %930
  %1490 = fmul fast float %1487, %931
  %1491 = fmul fast float %1487, %932
  %1492 = fmul fast float %1487, %933
  %1493 = fmul fast float %1487, %934
  br label %1494

; <label>:1494                                    ; preds = %1486, %1469
  %1495 = phi float [ %1488, %1486 ], [ %929, %1469 ]
  %1496 = phi float [ %1489, %1486 ], [ %930, %1469 ]
  %1497 = phi float [ %1490, %1486 ], [ %931, %1469 ]
  %1498 = phi float [ %1491, %1486 ], [ %932, %1469 ]
  %1499 = phi float [ %1492, %1486 ], [ %933, %1469 ]
  %1500 = phi float [ %1493, %1486 ], [ %934, %1469 ]
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 3
  %1504 = icmp eq i32 %1503, 3
  br i1 %1504, label %1583, label %1505

; <label>:1505                                    ; preds = %1494
  %1506 = and i32 %1502, 16
  %1507 = icmp ne i32 %1506, 0
  %1508 = select i1 %1507, float %1122, float 0.000000e+00
  %1509 = icmp eq i32 %1503, 0
  br i1 %1509, label %1510, label %1538

; <label>:1510                                    ; preds = %1505
  %1511 = and i32 %1502, 64
  %1512 = icmp ne i32 %1511, 0
  %1513 = select i1 %1512, float %1122, float 0.000000e+00
  %1514 = fsub fast float %1342, %1495
  %1515 = fsub fast float %1343, %1496
  %1516 = fsub fast float %1344, %1497
  %1517 = fmul fast float %1508, %1514
  %1518 = fmul fast float %1508, %1515
  %1519 = fmul fast float %1508, %1516
  %1520 = fadd fast float %1517, %1495
  %1521 = fadd fast float %1518, %1496
  %1522 = fadd fast float %1519, %1497
  %1523 = fsub fast float %1328, %935
  %1524 = fmul fast float %1508, %1523
  %1525 = fadd fast float %1524, %935
  %1526 = fsub fast float %1470, %1498
  %1527 = fsub fast float %1471, %1499
  %1528 = fsub fast float %1472, %1500
  %1529 = fmul fast float %1513, %1526
  %1530 = fmul fast float %1513, %1527
  %1531 = fmul fast float %1513, %1528
  %1532 = fadd fast float %1529, %1498
  %1533 = fadd fast float %1530, %1499
  %1534 = fadd fast float %1531, %1500
  %1535 = fsub fast float %1485, %939
  %1536 = fmul fast float %1508, %1535
  %1537 = fadd fast float %1536, %939
  br label %1583

; <label>:1538                                    ; preds = %1505
  %1539 = icmp eq i32 %1503, 1
  br i1 %1539, label %1540, label %1553

; <label>:1540                                    ; preds = %1538
  %1541 = fadd fast float %1342, -1.000000e+00
  %1542 = fadd fast float %1343, -1.000000e+00
  %1543 = fadd fast float %1344, -1.000000e+00
  %1544 = fmul fast float %1508, %1541
  %1545 = fmul fast float %1508, %1542
  %1546 = fmul fast float %1508, %1543
  %1547 = fadd fast float %1544, 1.000000e+00
  %1548 = fadd fast float %1545, 1.000000e+00
  %1549 = fadd fast float %1546, 1.000000e+00
  %1550 = fmul fast float %1547, %1495
  %1551 = fmul fast float %1548, %1496
  %1552 = fmul fast float %1549, %1497
  br label %1583

; <label>:1553                                    ; preds = %1538
  %1554 = icmp eq i32 %1503, 2
  br i1 %1554, label %1555, label %1583

; <label>:1555                                    ; preds = %1553
  %1556 = call float @dx.op.unary.f32(i32 24, float %1342)  ; Sqrt(value)
  %1557 = call float @dx.op.unary.f32(i32 24, float %1343)  ; Sqrt(value)
  %1558 = call float @dx.op.unary.f32(i32 24, float %1344)  ; Sqrt(value)
  %1559 = fadd fast float %1556, -5.000000e-01
  %1560 = fadd fast float %1557, -5.000000e-01
  %1561 = fadd fast float %1558, -5.000000e-01
  %1562 = fmul fast float %1559, %1508
  %1563 = fmul fast float %1560, %1508
  %1564 = fmul fast float %1561, %1508
  %1565 = fadd fast float %1562, 5.000000e-01
  %1566 = fadd fast float %1563, 5.000000e-01
  %1567 = fadd fast float %1564, 5.000000e-01
  %1568 = fmul fast float %1565, 2.000000e+00
  %1569 = fsub fast float 1.000000e+00, %1568
  %1570 = fmul fast float %1569, %1495
  %1571 = fadd fast float %1570, %1568
  %1572 = fmul fast float %1571, %1495
  %1573 = fmul fast float %1566, 2.000000e+00
  %1574 = fsub fast float 1.000000e+00, %1573
  %1575 = fmul fast float %1574, %1496
  %1576 = fadd fast float %1575, %1573
  %1577 = fmul fast float %1576, %1496
  %1578 = fmul fast float %1567, 2.000000e+00
  %1579 = fsub fast float 1.000000e+00, %1578
  %1580 = fmul fast float %1579, %1497
  %1581 = fadd fast float %1580, %1578
  %1582 = fmul fast float %1581, %1497
  br label %1583

; <label>:1583                                    ; preds = %1555, %1553, %1540, %1510, %1494
  %1584 = phi float [ %1495, %1494 ], [ %1572, %1555 ], [ %1495, %1553 ], [ %1550, %1540 ], [ %1520, %1510 ]
  %1585 = phi float [ %1496, %1494 ], [ %1577, %1555 ], [ %1496, %1553 ], [ %1551, %1540 ], [ %1521, %1510 ]
  %1586 = phi float [ %1497, %1494 ], [ %1582, %1555 ], [ %1497, %1553 ], [ %1552, %1540 ], [ %1522, %1510 ]
  %1587 = phi float [ %1498, %1494 ], [ %1498, %1555 ], [ %1498, %1553 ], [ %1498, %1540 ], [ %1532, %1510 ]
  %1588 = phi float [ %1499, %1494 ], [ %1499, %1555 ], [ %1499, %1553 ], [ %1499, %1540 ], [ %1533, %1510 ]
  %1589 = phi float [ %1500, %1494 ], [ %1500, %1555 ], [ %1500, %1553 ], [ %1500, %1540 ], [ %1534, %1510 ]
  %1590 = phi float [ %935, %1494 ], [ %935, %1555 ], [ %935, %1553 ], [ %935, %1540 ], [ %1525, %1510 ]
  %1591 = phi float [ %939, %1494 ], [ %939, %1555 ], [ %939, %1553 ], [ %939, %1540 ], [ %1537, %1510 ]
  %1592 = and i32 %1502, 12
  %1593 = icmp eq i32 %1592, 12
  br i1 %1593, label %1666, label %1594

; <label>:1594                                    ; preds = %1583
  %1595 = and i32 %1502, 2097184
  %1596 = icmp eq i32 %1595, 2097184
  %1597 = select i1 %1596, float %1122, float 0.000000e+00
  %1598 = and i32 %1502, 4194336
  %1599 = icmp eq i32 %1598, 4194336
  %1600 = select i1 %1599, float %1122, float 0.000000e+00
  %1601 = and i32 %1502, 8388640
  %1602 = icmp eq i32 %1601, 8388640
  %1603 = select i1 %1602, float %1122, float 0.000000e+00
  %1604 = icmp eq i32 %1592, 0
  br i1 %1604, label %1605, label %1618

; <label>:1605                                    ; preds = %1594
  %1606 = fsub fast float %1423, %927
  %1607 = fsub fast float %1424, %928
  %1608 = fmul fast float %1597, %1606
  %1609 = fmul fast float %1597, %1607
  %1610 = fadd fast float %1608, %927
  %1611 = fadd fast float %1609, %928
  %1612 = fsub fast float %1425, %938
  %1613 = fmul fast float %1600, %1612
  %1614 = fadd fast float %1613, %938
  %1615 = fsub fast float %1422, %937
  %1616 = fmul fast float %1603, %1615
  %1617 = fadd fast float %1616, %937
  br label %1666

; <label>:1618                                    ; preds = %1594
  %1619 = icmp eq i32 %1592, 4
  br i1 %1619, label %1620, label %1652

; <label>:1620                                    ; preds = %1618
  %1621 = fmul fast float %1597, %1423
  %1622 = fmul fast float %1597, %1424
  %1623 = fadd fast float %1621, %927
  %1624 = fadd fast float %1622, %928
  %1625 = call float @dx.op.binary.f32(i32 36, float %938, float %1425)  ; FMin(a,b)
  %1626 = fsub fast float %1625, %938
  %1627 = fmul fast float %1626, %1600
  %1628 = fadd fast float %1627, %938
  %1629 = fadd fast float %1422, %937
  %1630 = fmul fast float %1629, 0x3FF337FAE0000000
  %1631 = fmul fast float %937, %937
  %1632 = fmul fast float %1422, %1422
  %1633 = fadd fast float %1632, %1631
  %1634 = fmul fast float %1633, 0x3FE5152B00000000
  %1635 = fmul fast float %937, 0xBFCC1F85E0000000
  %1636 = fmul fast float %1635, %1422
  %1637 = fadd fast float %1636, 0xBFE1363700000000
  %1638 = fadd fast float %1637, %1630
  %1639 = fsub fast float %1638, %1634
  %1640 = fmul fast float %1629, 0x3FBA6F0D00000000
  %1641 = fmul fast float %1633, 0x3FD0432880000000
  %1642 = fmul fast float %937, 0xBFEF110800000000
  %1643 = fmul fast float %1642, %1422
  %1644 = fadd fast float %1643, 1.000000e+00
  %1645 = fsub fast float %1644, %1640
  %1646 = fadd fast float %1645, %1641
  %1647 = fdiv fast float %1639, %1646
  %1648 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1649 = fsub fast float %1648, %937
  %1650 = fmul fast float %1649, %1603
  %1651 = fadd fast float %1650, %937
  br label %1666

; <label>:1652                                    ; preds = %1618
  %1653 = icmp eq i32 %1592, 8
  br i1 %1653, label %1654, label %1666

; <label>:1654                                    ; preds = %1652
  %1655 = fmul fast float %1597, %1423
  %1656 = fmul fast float %1597, %1424
  %1657 = fadd fast float %1655, %927
  %1658 = fadd fast float %1656, %928
  %1659 = call float @dx.op.binary.f32(i32 36, float %938, float %1425)  ; FMin(a,b)
  %1660 = fsub fast float %1659, %938
  %1661 = fmul fast float %1660, %1600
  %1662 = fadd fast float %1661, %938
  %1663 = fsub fast float %1422, %937
  %1664 = fmul fast float %1603, %1663
  %1665 = fadd fast float %1664, %937
  br label %1666

; <label>:1666                                    ; preds = %1654, %1652, %1620, %1605, %1583, %1121, %940, %926
  %1667 = phi float [ %927, %1583 ], [ %927, %1121 ], [ %927, %926 ], [ %1657, %1654 ], [ %927, %1652 ], [ %1623, %1620 ], [ %1610, %1605 ], [ %927, %940 ]
  %1668 = phi float [ %928, %1583 ], [ %928, %1121 ], [ %928, %926 ], [ %1658, %1654 ], [ %928, %1652 ], [ %1624, %1620 ], [ %1611, %1605 ], [ %928, %940 ]
  %1669 = phi float [ %1584, %1583 ], [ %929, %1121 ], [ %929, %926 ], [ %1584, %1654 ], [ %1584, %1652 ], [ %1584, %1620 ], [ %1584, %1605 ], [ %929, %940 ]
  %1670 = phi float [ %1585, %1583 ], [ %930, %1121 ], [ %930, %926 ], [ %1585, %1654 ], [ %1585, %1652 ], [ %1585, %1620 ], [ %1585, %1605 ], [ %930, %940 ]
  %1671 = phi float [ %1586, %1583 ], [ %931, %1121 ], [ %931, %926 ], [ %1586, %1654 ], [ %1586, %1652 ], [ %1586, %1620 ], [ %1586, %1605 ], [ %931, %940 ]
  %1672 = phi float [ %1587, %1583 ], [ %932, %1121 ], [ %932, %926 ], [ %1587, %1654 ], [ %1587, %1652 ], [ %1587, %1620 ], [ %1587, %1605 ], [ %932, %940 ]
  %1673 = phi float [ %1588, %1583 ], [ %933, %1121 ], [ %933, %926 ], [ %1588, %1654 ], [ %1588, %1652 ], [ %1588, %1620 ], [ %1588, %1605 ], [ %933, %940 ]
  %1674 = phi float [ %1589, %1583 ], [ %934, %1121 ], [ %934, %926 ], [ %1589, %1654 ], [ %1589, %1652 ], [ %1589, %1620 ], [ %1589, %1605 ], [ %934, %940 ]
  %1675 = phi float [ %1590, %1583 ], [ %935, %1121 ], [ %935, %926 ], [ %1590, %1654 ], [ %1590, %1652 ], [ %1590, %1620 ], [ %1590, %1605 ], [ %935, %940 ]
  %1676 = phi float [ %937, %1583 ], [ %937, %1121 ], [ %937, %926 ], [ %1665, %1654 ], [ %937, %1652 ], [ %1651, %1620 ], [ %1617, %1605 ], [ %937, %940 ]
  %1677 = phi float [ %938, %1583 ], [ %938, %1121 ], [ %938, %926 ], [ %1662, %1654 ], [ %938, %1652 ], [ %1628, %1620 ], [ %1614, %1605 ], [ %938, %940 ]
  %1678 = phi float [ %1591, %1583 ], [ %939, %1121 ], [ %939, %926 ], [ %1591, %1654 ], [ %1591, %1652 ], [ %1591, %1620 ], [ %1591, %1605 ], [ %939, %940 ]
  br i1 %406, label %2405, label %1679

; <label>:1679                                    ; preds = %1666
  %1680 = icmp ult i32 %459, 3
  %1681 = add i32 %35, 56
  %1682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.i32 %1682, 0
  %1684 = add i32 %35, 60
  %1685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1684, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.i32 %1685, 0
  %1687 = or i32 %1686, %1683
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %2405, label %1689

; <label>:1689                                    ; preds = %1679
  %1690 = and i32 %1683, 262144
  %1691 = icmp ne i32 %1690, 0
  %1692 = select i1 %1691, float %41, float 1.000000e+00
  %1693 = select i1 %1691, float %42, float 0.000000e+00
  %1694 = select i1 %1691, float %43, float 0.000000e+00
  %1695 = select i1 %1691, float %44, float 1.000000e+00
  %1696 = select i1 %1691, float %45, float %73
  %1697 = select i1 %1691, float %46, float %74
  %1698 = add i32 %35, 316
  %1699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1700 = extractvalue %dx.types.ResRet.i32 %1699, 0
  %1701 = lshr i32 %1700, 16
  %1702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1701)  ; LegacyF16ToF32(value)
  %1703 = fmul fast float %1702, 0x3F50624DE0000000
  %1704 = add i32 %35, 120
  %1705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.i32 %1705, 0
  %1707 = lshr i32 %1706, 16
  %1708 = and i32 %1707, 255
  %1709 = lshr i32 %1706, 24
  %1710 = add i32 %35, 324
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 0
  %1713 = and i32 %1712, 65535
  %1714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1713)  ; LegacyF16ToF32(value)
  %1715 = lshr i32 %1712, 16
  %1716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1715)  ; LegacyF16ToF32(value)
  %1717 = add i32 %35, 64
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = lshr i32 %1719, 22
  %1721 = shl nuw nsw i32 %1720, 5
  %1722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1721)  ; LegacyF16ToF32(value)
  %1723 = shl i32 %1719, 4
  %1724 = and i32 %1723, 32752
  %1725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1724)  ; LegacyF16ToF32(value)
  %1726 = lshr i32 %1719, 7
  %1727 = and i32 %1726, 32752
  %1728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1727)  ; LegacyF16ToF32(value)
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 3
  %1731 = fmul fast float %1730, 1.000000e+03
  %1732 = fmul fast float %356, %1731
  %1733 = call float @dx.op.unary.f32(i32 22, float %1732)  ; Frc(value)
  %1734 = fadd fast float %1733, %346
  %1735 = fmul fast float %357, %1731
  %1736 = call float @dx.op.unary.f32(i32 22, float %1735)  ; Frc(value)
  %1737 = fadd fast float %1736, %348
  %1738 = fmul fast float %1703, %1731
  %1739 = call float @dx.op.unary.f32(i32 22, float %1738)  ; Frc(value)
  %1740 = fmul fast float %1739, 0x401921FB60000000
  %1741 = fadd fast float %1740, %1722
  %1742 = call float @dx.op.unary.f32(i32 13, float %1741)  ; Sin(value)
  %1743 = call float @dx.op.unary.f32(i32 12, float %1741)  ; Cos(value)
  %1744 = fsub fast float -0.000000e+00, %1742
  %1745 = fadd fast float %1696, -5.000000e-01
  %1746 = fadd fast float %1697, -5.000000e-01
  %1747 = fmul fast float %1714, %1745
  %1748 = fmul fast float %1716, %1746
  %1749 = fadd fast float %1747, 5.000000e-01
  %1750 = fadd fast float %1748, 5.000000e-01
  %1751 = fmul fast float %1725, %1749
  %1752 = fmul fast float %1728, %1750
  %1753 = fmul fast float %1743, %1751
  %1754 = call float @dx.op.tertiary.f32(i32 46, float %1744, float %1752, float %1753)  ; FMad(a,b,c)
  %1755 = fmul fast float %1742, %1751
  %1756 = call float @dx.op.tertiary.f32(i32 46, float %1743, float %1752, float %1755)  ; FMad(a,b,c)
  %1757 = fadd fast float %1734, %1754
  %1758 = fadd fast float %1737, %1756
  %1759 = icmp ugt i32 %1708, 1
  %1760 = icmp ugt i32 %1706, 33554431
  %1761 = or i1 %1760, %1759
  br i1 %1761, label %1762, label %1787

; <label>:1762                                    ; preds = %1689
  %1763 = add i32 %35, 260
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = lshr i32 %1765, 16
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = fmul fast float %1730, %1767
  %1769 = call float @dx.op.unary.f32(i32 22, float %1768)  ; Frc(value)
  %1770 = mul nuw nsw i32 %1708, %1709
  %1771 = uitofp i32 %1770 to float
  %1772 = fmul fast float %1769, %1771
  %1773 = call float @dx.op.unary.f32(i32 27, float %1772)  ; Round_ni(value)
  %1774 = fptoui float %1773 to i32
  %1775 = urem i32 %1774, %1708
  %1776 = udiv i32 %1774, %1709
  %1777 = call float @dx.op.unary.f32(i32 22, float %1757)  ; Frc(value)
  %1778 = call float @dx.op.unary.f32(i32 22, float %1758)  ; Frc(value)
  %1779 = uitofp i32 %1775 to float
  %1780 = uitofp i32 %1776 to float
  %1781 = fadd fast float %1777, %1779
  %1782 = fadd fast float %1778, %1780
  %1783 = uitofp i32 %1708 to float
  %1784 = uitofp i32 %1709 to float
  %1785 = fdiv fast float %1781, %1783
  %1786 = fdiv fast float %1782, %1784
  br label %1787

; <label>:1787                                    ; preds = %1762, %1689
  %1788 = phi float [ %1785, %1762 ], [ %1757, %1689 ]
  %1789 = phi float [ %1786, %1762 ], [ %1758, %1689 ]
  %1790 = and i32 %1683, 256
  %1791 = icmp eq i32 %1790, 0
  br i1 %1791, label %1838, label %1792

; <label>:1792                                    ; preds = %1787
  %1793 = add i32 %35, 448
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = add i32 %1795, 0
  %1797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1796, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1798 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1797, %dx.types.Handle %82, float %1788, float %1789, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1799 = extractvalue %dx.types.ResRet.f32 %1798, 0
  %1800 = add i32 %35, 132
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = shl i32 %1802, 4
  %1804 = and i32 %1803, 32752
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = lshr i32 %1802, 7
  %1807 = and i32 %1806, 32752
  %1808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1807)  ; LegacyF16ToF32(value)
  %1809 = fsub fast float 1.000000e+00, %455
  %1810 = call float @dx.op.binary.f32(i32 35, float %1809, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1811 = bitcast float %455 to i32
  %1812 = sitofp i32 %1811 to float
  %1813 = fadd fast float %1812, 0xC1CFBF8940000000
  %1814 = fmul fast float %1808, %1813
  %1815 = fadd fast float %1814, 0x41CFBF8940000000
  %1816 = fptosi float %1815 to i32
  %1817 = bitcast i32 %1816 to float
  %1818 = bitcast float %1810 to i32
  %1819 = sitofp i32 %1818 to float
  %1820 = fadd fast float %1819, 0xC1CFBF8940000000
  %1821 = fmul fast float %1820, %1808
  %1822 = fadd fast float %1821, 0x41CFBF8940000000
  %1823 = fptosi float %1822 to i32
  %1824 = bitcast i32 %1823 to float
  %1825 = fmul fast float %1817, %1805
  %1826 = fmul fast float %1824, %1805
  %1827 = fsub fast float %1810, %1825
  %1828 = fadd fast float %1826, %1810
  %1829 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  %1830 = call float @dx.op.unary.f32(i32 7, float %1828)  ; Saturate(value)
  %1831 = fsub fast float %1799, %1829
  %1832 = fsub fast float %1830, %1829
  %1833 = bitcast float %1832 to i32
  %1834 = sub nsw i32 2129859010, %1833
  %1835 = bitcast i32 %1834 to float
  %1836 = fmul fast float %1835, %1831
  %1837 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  br label %1838

; <label>:1838                                    ; preds = %1792, %1787
  %1839 = phi float [ %1837, %1792 ], [ %455, %1787 ]
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = and i32 %1841, 128
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %1860, label %1844

; <label>:1844                                    ; preds = %1838
  %1845 = add i32 %35, 432
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1845, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = add i32 %1847, 0
  %1849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1849, %dx.types.Handle %82, float %1788, float %1789, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = and i32 %1853, 524288
  %1855 = icmp ne i32 %1854, 0
  %1856 = fcmp fast ogt float %1851, 0x3FE0101020000000
  %1857 = select i1 %1856, float 1.000000e+00, float 0.000000e+00
  %1858 = select i1 %1855, float %1857, float %1851
  %1859 = fmul fast float %1858, %1839
  br label %1860

; <label>:1860                                    ; preds = %1844, %1838
  %1861 = phi float [ %1859, %1844 ], [ %1839, %1838 ]
  %1862 = fcmp fast ult float %1861, 0x3F70101020000000
  br i1 %1862, label %2405, label %1863

; <label>:1863                                    ; preds = %1860
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %1865, 16
  %1867 = icmp eq i32 %1866, 0
  br i1 %1867, label %2066, label %1868

; <label>:1868                                    ; preds = %1863
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = add i32 %35, 384
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = add i32 %1873, 0
  %1875 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1874, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1876 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1875, %dx.types.Handle %81, float %1788, float %1789, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = extractvalue %dx.types.ResRet.f32 %1876, 3
  %1881 = and i32 %1870, 255
  %1882 = uitofp i32 %1881 to float
  %1883 = lshr i32 %1870, 8
  %1884 = and i32 %1883, 255
  %1885 = uitofp i32 %1884 to float
  %1886 = fmul fast float %1880, %1882
  %1887 = fadd fast float %1886, %1885
  %1888 = fmul fast float %1887, 0x3F70101000000000
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = and i32 %1890, 512
  %1892 = icmp eq i32 %1891, 0
  br i1 %1892, label %1901, label %1893

; <label>:1893                                    ; preds = %1868
  %1894 = add i32 %35, 468
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = add i32 %1896, 0
  %1898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1899 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1898, %dx.types.Handle %82, float %1788, float %1789, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1900 = extractvalue %dx.types.ResRet.f32 %1899, 0
  br label %1901

; <label>:1901                                    ; preds = %1893, %1868
  %1902 = phi float [ %1900, %1893 ], [ 1.000000e+00, %1868 ]
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 33554432
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %2013, label %1907

; <label>:1907                                    ; preds = %1901
  %1908 = add i32 %35, 256
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = and i32 %1910, 65535
  %1912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1911)  ; LegacyF16ToF32(value)
  %1913 = lshr i32 %1910, 16
  %1914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1913)  ; LegacyF16ToF32(value)
  %1915 = add i32 %35, 260
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = and i32 %1917, 65535
  %1919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1918)  ; LegacyF16ToF32(value)
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1936 = add i32 %35, 252
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = lshr i32 %1938, 24
  %1940 = uitofp i32 %1939 to float
  %1941 = fmul fast float %1940, 0x3F70101020000000
  %1942 = and i32 %1938, 255
  %1943 = uitofp i32 %1942 to float
  %1944 = fmul fast float %1943, 0x3F70101020000000
  %1945 = lshr i32 %1938, 8
  %1946 = and i32 %1945, 255
  %1947 = uitofp i32 %1946 to float
  %1948 = fmul fast float %1947, 0x3F70101020000000
  %1949 = lshr i32 %1938, 16
  %1950 = and i32 %1949, 255
  %1951 = uitofp i32 %1950 to float
  %1952 = fmul fast float %1951, 0x3F70101020000000
  %1953 = bitcast float %1877 to i32
  %1954 = ashr i32 %1953, 1
  %1955 = sub nsw i32 1597463174, %1954
  %1956 = bitcast i32 %1955 to float
  %1957 = fmul fast float %1877, 5.000000e-01
  %1958 = fmul fast float %1956, %1956
  %1959 = fmul fast float %1958, %1957
  %1960 = fsub fast float 1.500000e+00, %1959
  %1961 = fmul fast float %1956, %1877
  %1962 = fmul fast float %1961, %1960
  %1963 = bitcast float %1878 to i32
  %1964 = ashr i32 %1963, 1
  %1965 = sub nsw i32 1597463174, %1964
  %1966 = bitcast i32 %1965 to float
  %1967 = fmul fast float %1878, 5.000000e-01
  %1968 = fmul fast float %1966, %1966
  %1969 = fmul fast float %1968, %1967
  %1970 = fsub fast float 1.500000e+00, %1969
  %1971 = fmul fast float %1966, %1878
  %1972 = fmul fast float %1971, %1970
  %1973 = bitcast float %1879 to i32
  %1974 = ashr i32 %1973, 1
  %1975 = sub nsw i32 1597463174, %1974
  %1976 = bitcast i32 %1975 to float
  %1977 = fmul fast float %1879, 5.000000e-01
  %1978 = fmul fast float %1976, %1976
  %1979 = fmul fast float %1978, %1977
  %1980 = fsub fast float 1.500000e+00, %1979
  %1981 = fmul fast float %1976, %1879
  %1982 = fmul fast float %1981, %1980
  %1983 = fsub fast float %1962, %1944
  %1984 = fsub fast float %1972, %1948
  %1985 = fsub fast float %1982, %1952
  %1986 = fmul fast float %1983, %1912
  %1987 = fmul fast float %1984, %1914
  %1988 = fmul fast float %1985, %1919
  %1989 = fadd fast float %1986, %1927
  %1990 = fadd fast float %1987, %1931
  %1991 = fadd fast float %1988, %1935
  %1992 = call float @dx.op.unary.f32(i32 7, float %1989)  ; Saturate(value)
  %1993 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1994 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1995 = fmul fast float %1992, %1992
  %1996 = fmul fast float %1993, %1993
  %1997 = fmul fast float %1994, %1994
  %1998 = fsub fast float %1995, %1877
  %1999 = fsub fast float %1996, %1878
  %2000 = fsub fast float %1997, %1879
  %2001 = fmul fast float %1998, %1902
  %2002 = fmul fast float %1999, %1902
  %2003 = fmul fast float %2000, %1902
  %2004 = fadd fast float %2001, %1877
  %2005 = fadd fast float %2002, %1878
  %2006 = fadd fast float %2003, %1879
  %2007 = fadd fast float %1924, %1888
  %2008 = fsub fast float %2007, %1941
  %2009 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  %2010 = fsub fast float %2009, %1888
  %2011 = fmul fast float %2010, %1902
  %2012 = fadd fast float %2011, %1888
  br label %2066

; <label>:2013                                    ; preds = %1901
  %2014 = and i32 %1904, 134217728
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2050, label %2016

; <label>:2016                                    ; preds = %2013
  %2017 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %2018 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2019 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %2020 = fadd fast float %2017, -5.000000e-01
  %2021 = fadd fast float %2018, -5.000000e-01
  %2022 = fadd fast float %2019, -5.000000e-01
  %2023 = fmul fast float %2020, %1902
  %2024 = fmul fast float %2021, %1902
  %2025 = fmul fast float %2022, %1902
  %2026 = fadd fast float %2023, 5.000000e-01
  %2027 = fadd fast float %2024, 5.000000e-01
  %2028 = fadd fast float %2025, 5.000000e-01
  %2029 = call float @dx.op.unary.f32(i32 24, float %1877)  ; Sqrt(value)
  %2030 = call float @dx.op.unary.f32(i32 24, float %1878)  ; Sqrt(value)
  %2031 = call float @dx.op.unary.f32(i32 24, float %1879)  ; Sqrt(value)
  %2032 = fmul fast float %2026, 2.000000e+00
  %2033 = fsub fast float 1.000000e+00, %2032
  %2034 = fmul fast float %2033, %2029
  %2035 = fadd fast float %2034, %2032
  %2036 = fmul fast float %2035, %2029
  %2037 = fmul fast float %2027, 2.000000e+00
  %2038 = fsub fast float 1.000000e+00, %2037
  %2039 = fmul fast float %2038, %2030
  %2040 = fadd fast float %2039, %2037
  %2041 = fmul fast float %2040, %2030
  %2042 = fmul fast float %2028, 2.000000e+00
  %2043 = fsub fast float 1.000000e+00, %2042
  %2044 = fmul fast float %2043, %2031
  %2045 = fadd fast float %2044, %2042
  %2046 = fmul fast float %2045, %2031
  %2047 = fmul fast float %2036, %2036
  %2048 = fmul fast float %2041, %2041
  %2049 = fmul fast float %2046, %2046
  br label %2066

; <label>:2050                                    ; preds = %2013
  %2051 = fmul fast float %333, %333
  %2052 = fmul fast float %337, %337
  %2053 = fmul fast float %341, %341
  %2054 = fadd fast float %2051, -1.000000e+00
  %2055 = fadd fast float %2052, -1.000000e+00
  %2056 = fadd fast float %2053, -1.000000e+00
  %2057 = fmul fast float %1902, %2054
  %2058 = fmul fast float %1902, %2055
  %2059 = fmul fast float %1902, %2056
  %2060 = fadd fast float %2057, 1.000000e+00
  %2061 = fadd fast float %2058, 1.000000e+00
  %2062 = fadd fast float %2059, 1.000000e+00
  %2063 = fmul fast float %2060, %1877
  %2064 = fmul fast float %2061, %1878
  %2065 = fmul fast float %2062, %1879
  br label %2066

; <label>:2066                                    ; preds = %2050, %2016, %1907, %1863
  %2067 = phi float [ %2012, %1907 ], [ %1888, %2016 ], [ %1888, %2050 ], [ 0x3FA23C0BE0000000, %1863 ]
  %2068 = phi float [ %2004, %1907 ], [ %2047, %2016 ], [ %2063, %2050 ], [ 1.000000e+00, %1863 ]
  %2069 = phi float [ %2005, %1907 ], [ %2048, %2016 ], [ %2064, %2050 ], [ 1.000000e+00, %1863 ]
  %2070 = phi float [ %2006, %1907 ], [ %2049, %2016 ], [ %2065, %2050 ], [ 1.000000e+00, %1863 ]
  %2071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2072 = extractvalue %dx.types.CBufRet.i32 %2071, 1
  %2073 = and i32 %2072, 1
  %2074 = icmp ne i32 %2073, 0
  %2075 = add i32 %35, 356
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = and i32 %2077, 32
  %2079 = icmp ne i32 %2078, 0
  %2080 = and i1 %2074, %2079
  %2081 = select i1 %2080, float 1.000000e+00, float %2068
  %2082 = select i1 %2080, float 0x3FD3333340000000, float %2069
  %2083 = select i1 %2080, float 0x3FD3333340000000, float %2070
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = and i32 %2085, 32
  %2087 = icmp eq i32 %2086, 0
  br i1 %2087, label %2160, label %2088

; <label>:2088                                    ; preds = %2066
  %2089 = add i32 %35, 124
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = add i32 %35, 400
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = add i32 %2094, 0
  %2096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2097 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2096, %dx.types.Handle %81, float %1788, float %1789, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2098 = extractvalue %dx.types.ResRet.f32 %2097, 0
  %2099 = extractvalue %dx.types.ResRet.f32 %2097, 1
  %2100 = extractvalue %dx.types.ResRet.f32 %2097, 2
  %2101 = extractvalue %dx.types.ResRet.f32 %2097, 3
  %2102 = and i32 %2091, 255
  %2103 = uitofp i32 %2102 to float
  %2104 = lshr i32 %2091, 8
  %2105 = and i32 %2104, 255
  %2106 = uitofp i32 %2105 to float
  %2107 = lshr i32 %2091, 16
  %2108 = and i32 %2107, 255
  %2109 = uitofp i32 %2108 to float
  %2110 = fmul fast float %2109, 0x3F70101000000000
  %2111 = fmul fast float %2098, %2103
  %2112 = fadd fast float %2111, %2106
  %2113 = fmul fast float %2112, 0x3F70101000000000
  %2114 = fadd fast float %2099, -5.000000e-01
  %2115 = fadd fast float %2101, -5.000000e-01
  %2116 = fmul fast float %2114, %2110
  %2117 = fmul fast float %2115, %2110
  %2118 = fadd fast float %2116, 5.000000e-01
  %2119 = fadd fast float %2117, 5.000000e-01
  %2120 = fmul fast float %2118, 2.000000e+00
  %2121 = fadd fast float %2120, -1.000000e+00
  %2122 = fmul fast float %2119, 2.000000e+00
  %2123 = fadd fast float %2122, -1.000000e+00
  %2124 = fadd fast float %2121, %2123
  %2125 = fmul fast float %2124, 5.000000e-01
  %2126 = fsub fast float %2121, %2123
  %2127 = fmul fast float %2126, 5.000000e-01
  %2128 = call float @dx.op.unary.f32(i32 6, float %2125)  ; FAbs(value)
  %2129 = fsub fast float 1.000000e+00, %2128
  %2130 = call float @dx.op.unary.f32(i32 6, float %2127)  ; FAbs(value)
  %2131 = fsub fast float %2129, %2130
  %2132 = call float @dx.op.dot3.f32(i32 55, float %2125, float %2127, float %2131, float %2125, float %2127, float %2131)  ; Dot3(ax,ay,az,bx,by,bz)
  %2133 = call float @dx.op.unary.f32(i32 25, float %2132)  ; Rsqrt(value)
  %2134 = fmul fast float %2125, %2133
  %2135 = fmul fast float %2127, %2133
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = and i32 %2137, 67108864
  %2139 = icmp eq i32 %2138, 0
  br i1 %2139, label %2156, label %2140

; <label>:2140                                    ; preds = %2088
  %2141 = add i32 %35, 312
  %2142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.i32 %2142, 0
  %2144 = and i32 %2143, 65535
  %2145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2144)  ; LegacyF16ToF32(value)
  %2146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1698, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.i32 %2146, 0
  %2148 = and i32 %2147, 65535
  %2149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2148)  ; LegacyF16ToF32(value)
  %2150 = lshr i32 %2143, 16
  %2151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2150)  ; LegacyF16ToF32(value)
  %2152 = fsub fast float %2113, %2151
  %2153 = fmul fast float %2152, %2145
  %2154 = fadd fast float %2153, %2149
  %2155 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  br label %2156

; <label>:2156                                    ; preds = %2140, %2088
  %2157 = phi float [ %2155, %2140 ], [ %2113, %2088 ]
  %2158 = call float @dx.op.dot2.f32(i32 54, float %2134, float %2135, float %1692, float %1693)  ; Dot2(ax,ay,bx,by)
  %2159 = call float @dx.op.dot2.f32(i32 54, float %2134, float %2135, float %1694, float %1695)  ; Dot2(ax,ay,bx,by)
  br label %2160

; <label>:2160                                    ; preds = %2156, %2066
  %2161 = phi float [ %2157, %2156 ], [ 0x3FD6666660000000, %2066 ]
  %2162 = phi float [ %2158, %2156 ], [ 0.000000e+00, %2066 ]
  %2163 = phi float [ %2159, %2156 ], [ 0.000000e+00, %2066 ]
  %2164 = phi float [ %2100, %2156 ], [ 1.000000e+00, %2066 ]
  %2165 = add i32 %35, 192
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2165, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = lshr i32 %2167, 22
  %2169 = shl nuw nsw i32 %2168, 5
  %2170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2169)  ; LegacyF16ToF32(value)
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = and i32 %2172, 64
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2208, label %2175

; <label>:2175                                    ; preds = %2160
  %2176 = add i32 %35, 416
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = add i32 %2178, 0
  %2180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = and i32 %2182, 131072
  %2184 = icmp eq i32 %2183, 0
  %2185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2180, %dx.types.Handle %81, float %1788, float %1789, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  %2187 = extractvalue %dx.types.ResRet.f32 %2185, 1
  %2188 = extractvalue %dx.types.ResRet.f32 %2185, 2
  %2189 = fmul fast float %2186, %321
  %2190 = fmul fast float %2187, %324
  %2191 = fmul fast float %2188, %327
  br i1 %2184, label %2198, label %2192

; <label>:2192                                    ; preds = %2175
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 0
  %2195 = fmul fast float %2194, %2189
  %2196 = fmul fast float %2194, %2190
  %2197 = fmul fast float %2194, %2191
  br label %2198

; <label>:2198                                    ; preds = %2192, %2175
  %2199 = phi float [ %2195, %2192 ], [ %2189, %2175 ]
  %2200 = phi float [ %2196, %2192 ], [ %2190, %2175 ]
  %2201 = phi float [ %2197, %2192 ], [ %2191, %2175 ]
  %2202 = fmul fast float %2199, %2170
  %2203 = select i1 %220, float %2202, float %2199
  %2204 = call float @dx.op.dot3.f32(i32 55, float %2203, float %2200, float %2201, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2205 = select i1 %220, float 0.000000e+00, float %2199
  %2206 = select i1 %220, float %2204, float %2200
  %2207 = select i1 %220, float 0.000000e+00, float %2201
  br label %2208

; <label>:2208                                    ; preds = %2198, %2160
  %2209 = phi float [ %2205, %2198 ], [ 0.000000e+00, %2160 ]
  %2210 = phi float [ %2206, %2198 ], [ 0.000000e+00, %2160 ]
  %2211 = phi float [ %2207, %2198 ], [ 0.000000e+00, %2160 ]
  %2212 = add i32 %35, 128
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 255
  %2216 = uitofp i32 %2215 to float
  %2217 = lshr i32 %2214, 8
  %2218 = and i32 %2217, 255
  %2219 = uitofp i32 %2218 to float
  %2220 = call float @dx.op.dot3.f32(i32 55, float %2081, float %2082, float %2083, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2221 = fmul fast float %2219, %2220
  %2222 = fadd fast float %2221, %2216
  %2223 = fmul fast float %2222, 0x3F70101020000000
  %2224 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  br i1 %1680, label %2225, label %2233

; <label>:2225                                    ; preds = %2208
  %2226 = fsub fast float 1.000000e+00, %1861
  %2227 = fmul fast float %2226, %1669
  %2228 = fmul fast float %2226, %1670
  %2229 = fmul fast float %2226, %1671
  %2230 = fmul fast float %2226, %1672
  %2231 = fmul fast float %2226, %1673
  %2232 = fmul fast float %2226, %1674
  br label %2233

; <label>:2233                                    ; preds = %2225, %2208
  %2234 = phi float [ %2227, %2225 ], [ %1669, %2208 ]
  %2235 = phi float [ %2228, %2225 ], [ %1670, %2208 ]
  %2236 = phi float [ %2229, %2225 ], [ %1671, %2208 ]
  %2237 = phi float [ %2230, %2225 ], [ %1672, %2208 ]
  %2238 = phi float [ %2231, %2225 ], [ %1673, %2208 ]
  %2239 = phi float [ %2232, %2225 ], [ %1674, %2208 ]
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = and i32 %2241, 3
  %2243 = icmp eq i32 %2242, 3
  br i1 %2243, label %2322, label %2244

; <label>:2244                                    ; preds = %2233
  %2245 = and i32 %2241, 16
  %2246 = icmp ne i32 %2245, 0
  %2247 = select i1 %2246, float %1861, float 0.000000e+00
  %2248 = icmp eq i32 %2242, 0
  br i1 %2248, label %2249, label %2277

; <label>:2249                                    ; preds = %2244
  %2250 = and i32 %2241, 64
  %2251 = icmp ne i32 %2250, 0
  %2252 = select i1 %2251, float %1861, float 0.000000e+00
  %2253 = fsub fast float %2081, %2234
  %2254 = fsub fast float %2082, %2235
  %2255 = fsub fast float %2083, %2236
  %2256 = fmul fast float %2247, %2253
  %2257 = fmul fast float %2247, %2254
  %2258 = fmul fast float %2247, %2255
  %2259 = fadd fast float %2256, %2234
  %2260 = fadd fast float %2257, %2235
  %2261 = fadd fast float %2258, %2236
  %2262 = fsub fast float %2067, %1675
  %2263 = fmul fast float %2247, %2262
  %2264 = fadd fast float %2263, %1675
  %2265 = fsub fast float %2209, %2237
  %2266 = fsub fast float %2210, %2238
  %2267 = fsub fast float %2211, %2239
  %2268 = fmul fast float %2252, %2265
  %2269 = fmul fast float %2252, %2266
  %2270 = fmul fast float %2252, %2267
  %2271 = fadd fast float %2268, %2237
  %2272 = fadd fast float %2269, %2238
  %2273 = fadd fast float %2270, %2239
  %2274 = fsub fast float %2224, %1678
  %2275 = fmul fast float %2247, %2274
  %2276 = fadd fast float %2275, %1678
  br label %2322

; <label>:2277                                    ; preds = %2244
  %2278 = icmp eq i32 %2242, 1
  br i1 %2278, label %2279, label %2292

; <label>:2279                                    ; preds = %2277
  %2280 = fadd fast float %2081, -1.000000e+00
  %2281 = fadd fast float %2082, -1.000000e+00
  %2282 = fadd fast float %2083, -1.000000e+00
  %2283 = fmul fast float %2247, %2280
  %2284 = fmul fast float %2247, %2281
  %2285 = fmul fast float %2247, %2282
  %2286 = fadd fast float %2283, 1.000000e+00
  %2287 = fadd fast float %2284, 1.000000e+00
  %2288 = fadd fast float %2285, 1.000000e+00
  %2289 = fmul fast float %2286, %2234
  %2290 = fmul fast float %2287, %2235
  %2291 = fmul fast float %2288, %2236
  br label %2322

; <label>:2292                                    ; preds = %2277
  %2293 = icmp eq i32 %2242, 2
  br i1 %2293, label %2294, label %2322

; <label>:2294                                    ; preds = %2292
  %2295 = call float @dx.op.unary.f32(i32 24, float %2081)  ; Sqrt(value)
  %2296 = call float @dx.op.unary.f32(i32 24, float %2082)  ; Sqrt(value)
  %2297 = call float @dx.op.unary.f32(i32 24, float %2083)  ; Sqrt(value)
  %2298 = fadd fast float %2295, -5.000000e-01
  %2299 = fadd fast float %2296, -5.000000e-01
  %2300 = fadd fast float %2297, -5.000000e-01
  %2301 = fmul fast float %2298, %2247
  %2302 = fmul fast float %2299, %2247
  %2303 = fmul fast float %2300, %2247
  %2304 = fadd fast float %2301, 5.000000e-01
  %2305 = fadd fast float %2302, 5.000000e-01
  %2306 = fadd fast float %2303, 5.000000e-01
  %2307 = fmul fast float %2304, 2.000000e+00
  %2308 = fsub fast float 1.000000e+00, %2307
  %2309 = fmul fast float %2308, %2234
  %2310 = fadd fast float %2309, %2307
  %2311 = fmul fast float %2310, %2234
  %2312 = fmul fast float %2305, 2.000000e+00
  %2313 = fsub fast float 1.000000e+00, %2312
  %2314 = fmul fast float %2313, %2235
  %2315 = fadd fast float %2314, %2312
  %2316 = fmul fast float %2315, %2235
  %2317 = fmul fast float %2306, 2.000000e+00
  %2318 = fsub fast float 1.000000e+00, %2317
  %2319 = fmul fast float %2318, %2236
  %2320 = fadd fast float %2319, %2317
  %2321 = fmul fast float %2320, %2236
  br label %2322

; <label>:2322                                    ; preds = %2294, %2292, %2279, %2249, %2233
  %2323 = phi float [ %2234, %2233 ], [ %2311, %2294 ], [ %2234, %2292 ], [ %2289, %2279 ], [ %2259, %2249 ]
  %2324 = phi float [ %2235, %2233 ], [ %2316, %2294 ], [ %2235, %2292 ], [ %2290, %2279 ], [ %2260, %2249 ]
  %2325 = phi float [ %2236, %2233 ], [ %2321, %2294 ], [ %2236, %2292 ], [ %2291, %2279 ], [ %2261, %2249 ]
  %2326 = phi float [ %2237, %2233 ], [ %2237, %2294 ], [ %2237, %2292 ], [ %2237, %2279 ], [ %2271, %2249 ]
  %2327 = phi float [ %2238, %2233 ], [ %2238, %2294 ], [ %2238, %2292 ], [ %2238, %2279 ], [ %2272, %2249 ]
  %2328 = phi float [ %2239, %2233 ], [ %2239, %2294 ], [ %2239, %2292 ], [ %2239, %2279 ], [ %2273, %2249 ]
  %2329 = phi float [ %1675, %2233 ], [ %1675, %2294 ], [ %1675, %2292 ], [ %1675, %2279 ], [ %2264, %2249 ]
  %2330 = phi float [ %1678, %2233 ], [ %1678, %2294 ], [ %1678, %2292 ], [ %1678, %2279 ], [ %2276, %2249 ]
  %2331 = and i32 %2241, 12
  %2332 = icmp eq i32 %2331, 12
  br i1 %2332, label %2405, label %2333

; <label>:2333                                    ; preds = %2322
  %2334 = and i32 %2241, 2097184
  %2335 = icmp eq i32 %2334, 2097184
  %2336 = select i1 %2335, float %1861, float 0.000000e+00
  %2337 = and i32 %2241, 4194336
  %2338 = icmp eq i32 %2337, 4194336
  %2339 = select i1 %2338, float %1861, float 0.000000e+00
  %2340 = and i32 %2241, 8388640
  %2341 = icmp eq i32 %2340, 8388640
  %2342 = select i1 %2341, float %1861, float 0.000000e+00
  %2343 = icmp eq i32 %2331, 0
  br i1 %2343, label %2344, label %2357

; <label>:2344                                    ; preds = %2333
  %2345 = fsub fast float %2162, %1667
  %2346 = fsub fast float %2163, %1668
  %2347 = fmul fast float %2336, %2345
  %2348 = fmul fast float %2336, %2346
  %2349 = fadd fast float %2347, %1667
  %2350 = fadd fast float %2348, %1668
  %2351 = fsub fast float %2164, %1677
  %2352 = fmul fast float %2339, %2351
  %2353 = fadd fast float %2352, %1677
  %2354 = fsub fast float %2161, %1676
  %2355 = fmul fast float %2342, %2354
  %2356 = fadd fast float %2355, %1676
  br label %2405

; <label>:2357                                    ; preds = %2333
  %2358 = icmp eq i32 %2331, 4
  br i1 %2358, label %2359, label %2391

; <label>:2359                                    ; preds = %2357
  %2360 = fmul fast float %2336, %2162
  %2361 = fmul fast float %2336, %2163
  %2362 = fadd fast float %2360, %1667
  %2363 = fadd fast float %2361, %1668
  %2364 = call float @dx.op.binary.f32(i32 36, float %1677, float %2164)  ; FMin(a,b)
  %2365 = fsub fast float %2364, %1677
  %2366 = fmul fast float %2365, %2339
  %2367 = fadd fast float %2366, %1677
  %2368 = fadd fast float %2161, %1676
  %2369 = fmul fast float %2368, 0x3FF337FAE0000000
  %2370 = fmul fast float %1676, %1676
  %2371 = fmul fast float %2161, %2161
  %2372 = fadd fast float %2371, %2370
  %2373 = fmul fast float %2372, 0x3FE5152B00000000
  %2374 = fmul fast float %1676, 0xBFCC1F85E0000000
  %2375 = fmul fast float %2374, %2161
  %2376 = fadd fast float %2375, 0xBFE1363700000000
  %2377 = fadd fast float %2376, %2369
  %2378 = fsub fast float %2377, %2373
  %2379 = fmul fast float %2368, 0x3FBA6F0D00000000
  %2380 = fmul fast float %2372, 0x3FD0432880000000
  %2381 = fmul fast float %1676, 0xBFEF110800000000
  %2382 = fmul fast float %2381, %2161
  %2383 = fadd fast float %2382, 1.000000e+00
  %2384 = fsub fast float %2383, %2379
  %2385 = fadd fast float %2384, %2380
  %2386 = fdiv fast float %2378, %2385
  %2387 = call float @dx.op.unary.f32(i32 7, float %2386)  ; Saturate(value)
  %2388 = fsub fast float %2387, %1676
  %2389 = fmul fast float %2388, %2342
  %2390 = fadd fast float %2389, %1676
  br label %2405

; <label>:2391                                    ; preds = %2357
  %2392 = icmp eq i32 %2331, 8
  br i1 %2392, label %2393, label %2405

; <label>:2393                                    ; preds = %2391
  %2394 = fmul fast float %2336, %2162
  %2395 = fmul fast float %2336, %2163
  %2396 = fadd fast float %2394, %1667
  %2397 = fadd fast float %2395, %1668
  %2398 = call float @dx.op.binary.f32(i32 36, float %1677, float %2164)  ; FMin(a,b)
  %2399 = fsub fast float %2398, %1677
  %2400 = fmul fast float %2399, %2339
  %2401 = fadd fast float %2400, %1677
  %2402 = fsub fast float %2161, %1676
  %2403 = fmul fast float %2342, %2402
  %2404 = fadd fast float %2403, %1676
  br label %2405

; <label>:2405                                    ; preds = %2393, %2391, %2359, %2344, %2322, %1860, %1679, %1666
  %2406 = phi float [ %1667, %2322 ], [ %1667, %1860 ], [ %1667, %1666 ], [ %2396, %2393 ], [ %1667, %2391 ], [ %2362, %2359 ], [ %2349, %2344 ], [ %1667, %1679 ]
  %2407 = phi float [ %1668, %2322 ], [ %1668, %1860 ], [ %1668, %1666 ], [ %2397, %2393 ], [ %1668, %2391 ], [ %2363, %2359 ], [ %2350, %2344 ], [ %1668, %1679 ]
  %2408 = phi float [ %2323, %2322 ], [ %1669, %1860 ], [ %1669, %1666 ], [ %2323, %2393 ], [ %2323, %2391 ], [ %2323, %2359 ], [ %2323, %2344 ], [ %1669, %1679 ]
  %2409 = phi float [ %2324, %2322 ], [ %1670, %1860 ], [ %1670, %1666 ], [ %2324, %2393 ], [ %2324, %2391 ], [ %2324, %2359 ], [ %2324, %2344 ], [ %1670, %1679 ]
  %2410 = phi float [ %2325, %2322 ], [ %1671, %1860 ], [ %1671, %1666 ], [ %2325, %2393 ], [ %2325, %2391 ], [ %2325, %2359 ], [ %2325, %2344 ], [ %1671, %1679 ]
  %2411 = phi float [ %2326, %2322 ], [ %1672, %1860 ], [ %1672, %1666 ], [ %2326, %2393 ], [ %2326, %2391 ], [ %2326, %2359 ], [ %2326, %2344 ], [ %1672, %1679 ]
  %2412 = phi float [ %2327, %2322 ], [ %1673, %1860 ], [ %1673, %1666 ], [ %2327, %2393 ], [ %2327, %2391 ], [ %2327, %2359 ], [ %2327, %2344 ], [ %1673, %1679 ]
  %2413 = phi float [ %2328, %2322 ], [ %1674, %1860 ], [ %1674, %1666 ], [ %2328, %2393 ], [ %2328, %2391 ], [ %2328, %2359 ], [ %2328, %2344 ], [ %1674, %1679 ]
  %2414 = phi float [ %2329, %2322 ], [ %1675, %1860 ], [ %1675, %1666 ], [ %2329, %2393 ], [ %2329, %2391 ], [ %2329, %2359 ], [ %2329, %2344 ], [ %1675, %1679 ]
  %2415 = phi float [ %1676, %2322 ], [ %1676, %1860 ], [ %1676, %1666 ], [ %2404, %2393 ], [ %1676, %2391 ], [ %2390, %2359 ], [ %2356, %2344 ], [ %1676, %1679 ]
  %2416 = phi float [ %1677, %2322 ], [ %1677, %1860 ], [ %1677, %1666 ], [ %2401, %2393 ], [ %1677, %2391 ], [ %2367, %2359 ], [ %2353, %2344 ], [ %1677, %1679 ]
  %2417 = phi float [ %2330, %2322 ], [ %1678, %1860 ], [ %1678, %1666 ], [ %2330, %2393 ], [ %2330, %2391 ], [ %2330, %2359 ], [ %2330, %2344 ], [ %1678, %1679 ]
  br i1 %408, label %3144, label %2418

; <label>:2418                                    ; preds = %2405
  %2419 = icmp ult i32 %459, 4
  %2420 = add i32 %35, 72
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = add i32 %35, 76
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = or i32 %2425, %2422
  %2427 = icmp eq i32 %2426, 0
  br i1 %2427, label %3144, label %2428

; <label>:2428                                    ; preds = %2418
  %2429 = and i32 %2422, 262144
  %2430 = icmp ne i32 %2429, 0
  %2431 = select i1 %2430, float %41, float 1.000000e+00
  %2432 = select i1 %2430, float %42, float 0.000000e+00
  %2433 = select i1 %2430, float %43, float 0.000000e+00
  %2434 = select i1 %2430, float %44, float 1.000000e+00
  %2435 = select i1 %2430, float %45, float %73
  %2436 = select i1 %2430, float %46, float %74
  %2437 = add i32 %35, 332
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2437, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = lshr i32 %2439, 16
  %2441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2440)  ; LegacyF16ToF32(value)
  %2442 = fmul fast float %2441, 0x3F50624DE0000000
  %2443 = add i32 %35, 136
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2443, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = lshr i32 %2445, 16
  %2447 = and i32 %2446, 255
  %2448 = lshr i32 %2445, 24
  %2449 = add i32 %35, 340
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = and i32 %2451, 65535
  %2453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2452)  ; LegacyF16ToF32(value)
  %2454 = lshr i32 %2451, 16
  %2455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2454)  ; LegacyF16ToF32(value)
  %2456 = add i32 %35, 80
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = lshr i32 %2458, 22
  %2460 = shl nuw nsw i32 %2459, 5
  %2461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2460)  ; LegacyF16ToF32(value)
  %2462 = shl i32 %2458, 4
  %2463 = and i32 %2462, 32752
  %2464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2463)  ; LegacyF16ToF32(value)
  %2465 = lshr i32 %2458, 7
  %2466 = and i32 %2465, 32752
  %2467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2466)  ; LegacyF16ToF32(value)
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 3
  %2470 = fmul fast float %2469, 1.000000e+03
  %2471 = fmul fast float %398, %2470
  %2472 = call float @dx.op.unary.f32(i32 22, float %2471)  ; Frc(value)
  %2473 = fadd fast float %2472, %388
  %2474 = fmul fast float %399, %2470
  %2475 = call float @dx.op.unary.f32(i32 22, float %2474)  ; Frc(value)
  %2476 = fadd fast float %2475, %390
  %2477 = fmul fast float %2442, %2470
  %2478 = call float @dx.op.unary.f32(i32 22, float %2477)  ; Frc(value)
  %2479 = fmul fast float %2478, 0x401921FB60000000
  %2480 = fadd fast float %2479, %2461
  %2481 = call float @dx.op.unary.f32(i32 13, float %2480)  ; Sin(value)
  %2482 = call float @dx.op.unary.f32(i32 12, float %2480)  ; Cos(value)
  %2483 = fsub fast float -0.000000e+00, %2481
  %2484 = fadd fast float %2435, -5.000000e-01
  %2485 = fadd fast float %2436, -5.000000e-01
  %2486 = fmul fast float %2453, %2484
  %2487 = fmul fast float %2455, %2485
  %2488 = fadd fast float %2486, 5.000000e-01
  %2489 = fadd fast float %2487, 5.000000e-01
  %2490 = fmul fast float %2464, %2488
  %2491 = fmul fast float %2467, %2489
  %2492 = fmul fast float %2482, %2490
  %2493 = call float @dx.op.tertiary.f32(i32 46, float %2483, float %2491, float %2492)  ; FMad(a,b,c)
  %2494 = fmul fast float %2481, %2490
  %2495 = call float @dx.op.tertiary.f32(i32 46, float %2482, float %2491, float %2494)  ; FMad(a,b,c)
  %2496 = fadd fast float %2473, %2493
  %2497 = fadd fast float %2476, %2495
  %2498 = icmp ugt i32 %2447, 1
  %2499 = icmp ugt i32 %2445, 33554431
  %2500 = or i1 %2499, %2498
  br i1 %2500, label %2501, label %2526

; <label>:2501                                    ; preds = %2428
  %2502 = add i32 %35, 276
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = lshr i32 %2504, 16
  %2506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2505)  ; LegacyF16ToF32(value)
  %2507 = fmul fast float %2469, %2506
  %2508 = call float @dx.op.unary.f32(i32 22, float %2507)  ; Frc(value)
  %2509 = mul nuw nsw i32 %2447, %2448
  %2510 = uitofp i32 %2509 to float
  %2511 = fmul fast float %2508, %2510
  %2512 = call float @dx.op.unary.f32(i32 27, float %2511)  ; Round_ni(value)
  %2513 = fptoui float %2512 to i32
  %2514 = urem i32 %2513, %2447
  %2515 = udiv i32 %2513, %2448
  %2516 = call float @dx.op.unary.f32(i32 22, float %2496)  ; Frc(value)
  %2517 = call float @dx.op.unary.f32(i32 22, float %2497)  ; Frc(value)
  %2518 = uitofp i32 %2514 to float
  %2519 = uitofp i32 %2515 to float
  %2520 = fadd fast float %2516, %2518
  %2521 = fadd fast float %2517, %2519
  %2522 = uitofp i32 %2447 to float
  %2523 = uitofp i32 %2448 to float
  %2524 = fdiv fast float %2520, %2522
  %2525 = fdiv fast float %2521, %2523
  br label %2526

; <label>:2526                                    ; preds = %2501, %2428
  %2527 = phi float [ %2524, %2501 ], [ %2496, %2428 ]
  %2528 = phi float [ %2525, %2501 ], [ %2497, %2428 ]
  %2529 = and i32 %2422, 256
  %2530 = icmp eq i32 %2529, 0
  br i1 %2530, label %2577, label %2531

; <label>:2531                                    ; preds = %2526
  %2532 = add i32 %35, 452
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = add i32 %2534, 0
  %2536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2537 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2536, %dx.types.Handle %82, float %2527, float %2528, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2538 = extractvalue %dx.types.ResRet.f32 %2537, 0
  %2539 = add i32 %35, 148
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = shl i32 %2541, 4
  %2543 = and i32 %2542, 32752
  %2544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2543)  ; LegacyF16ToF32(value)
  %2545 = lshr i32 %2541, 7
  %2546 = and i32 %2545, 32752
  %2547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2546)  ; LegacyF16ToF32(value)
  %2548 = fsub fast float 1.000000e+00, %454
  %2549 = call float @dx.op.binary.f32(i32 35, float %2548, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2550 = bitcast float %454 to i32
  %2551 = sitofp i32 %2550 to float
  %2552 = fadd fast float %2551, 0xC1CFBF8940000000
  %2553 = fmul fast float %2547, %2552
  %2554 = fadd fast float %2553, 0x41CFBF8940000000
  %2555 = fptosi float %2554 to i32
  %2556 = bitcast i32 %2555 to float
  %2557 = bitcast float %2549 to i32
  %2558 = sitofp i32 %2557 to float
  %2559 = fadd fast float %2558, 0xC1CFBF8940000000
  %2560 = fmul fast float %2559, %2547
  %2561 = fadd fast float %2560, 0x41CFBF8940000000
  %2562 = fptosi float %2561 to i32
  %2563 = bitcast i32 %2562 to float
  %2564 = fmul fast float %2556, %2544
  %2565 = fmul fast float %2563, %2544
  %2566 = fsub fast float %2549, %2564
  %2567 = fadd fast float %2565, %2549
  %2568 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2569 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  %2570 = fsub fast float %2538, %2568
  %2571 = fsub fast float %2569, %2568
  %2572 = bitcast float %2571 to i32
  %2573 = sub nsw i32 2129859010, %2572
  %2574 = bitcast i32 %2573 to float
  %2575 = fmul fast float %2574, %2570
  %2576 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  br label %2577

; <label>:2577                                    ; preds = %2531, %2526
  %2578 = phi float [ %2576, %2531 ], [ %454, %2526 ]
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 128
  %2582 = icmp eq i32 %2581, 0
  br i1 %2582, label %2599, label %2583

; <label>:2583                                    ; preds = %2577
  %2584 = add i32 %35, 436
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2584, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = add i32 %2586, 0
  %2588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2589 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2588, %dx.types.Handle %82, float %2527, float %2528, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2590 = extractvalue %dx.types.ResRet.f32 %2589, 0
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = and i32 %2592, 524288
  %2594 = icmp ne i32 %2593, 0
  %2595 = fcmp fast ogt float %2590, 0x3FE0101020000000
  %2596 = select i1 %2595, float 1.000000e+00, float 0.000000e+00
  %2597 = select i1 %2594, float %2596, float %2590
  %2598 = fmul fast float %2597, %2578
  br label %2599

; <label>:2599                                    ; preds = %2583, %2577
  %2600 = phi float [ %2598, %2583 ], [ %2578, %2577 ]
  %2601 = fcmp fast ult float %2600, 0x3F70101020000000
  br i1 %2601, label %3144, label %2602

; <label>:2602                                    ; preds = %2599
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = and i32 %2604, 16
  %2606 = icmp eq i32 %2605, 0
  br i1 %2606, label %2805, label %2607

; <label>:2607                                    ; preds = %2602
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2443, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = add i32 %35, 388
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = add i32 %2612, 0
  %2614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2613, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2615 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2614, %dx.types.Handle %81, float %2527, float %2528, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2616 = extractvalue %dx.types.ResRet.f32 %2615, 0
  %2617 = extractvalue %dx.types.ResRet.f32 %2615, 1
  %2618 = extractvalue %dx.types.ResRet.f32 %2615, 2
  %2619 = extractvalue %dx.types.ResRet.f32 %2615, 3
  %2620 = and i32 %2609, 255
  %2621 = uitofp i32 %2620 to float
  %2622 = lshr i32 %2609, 8
  %2623 = and i32 %2622, 255
  %2624 = uitofp i32 %2623 to float
  %2625 = fmul fast float %2619, %2621
  %2626 = fadd fast float %2625, %2624
  %2627 = fmul fast float %2626, 0x3F70101000000000
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 512
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2640, label %2632

; <label>:2632                                    ; preds = %2607
  %2633 = add i32 %35, 472
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = add i32 %2635, 0
  %2637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2637, %dx.types.Handle %82, float %2527, float %2528, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2639 = extractvalue %dx.types.ResRet.f32 %2638, 0
  br label %2640

; <label>:2640                                    ; preds = %2632, %2607
  %2641 = phi float [ %2639, %2632 ], [ 1.000000e+00, %2607 ]
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = and i32 %2643, 33554432
  %2645 = icmp eq i32 %2644, 0
  br i1 %2645, label %2752, label %2646

; <label>:2646                                    ; preds = %2640
  %2647 = add i32 %35, 272
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = and i32 %2649, 65535
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = lshr i32 %2649, 16
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = add i32 %35, 276
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, 65535
  %2658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2657)  ; LegacyF16ToF32(value)
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2675 = add i32 %35, 268
  %2676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2675, i32 undef)  ; BufferLoad(srv,index,wot)
  %2677 = extractvalue %dx.types.ResRet.i32 %2676, 0
  %2678 = lshr i32 %2677, 24
  %2679 = uitofp i32 %2678 to float
  %2680 = fmul fast float %2679, 0x3F70101020000000
  %2681 = and i32 %2677, 255
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2682, 0x3F70101020000000
  %2684 = lshr i32 %2677, 8
  %2685 = and i32 %2684, 255
  %2686 = uitofp i32 %2685 to float
  %2687 = fmul fast float %2686, 0x3F70101020000000
  %2688 = lshr i32 %2677, 16
  %2689 = and i32 %2688, 255
  %2690 = uitofp i32 %2689 to float
  %2691 = fmul fast float %2690, 0x3F70101020000000
  %2692 = bitcast float %2616 to i32
  %2693 = ashr i32 %2692, 1
  %2694 = sub nsw i32 1597463174, %2693
  %2695 = bitcast i32 %2694 to float
  %2696 = fmul fast float %2616, 5.000000e-01
  %2697 = fmul fast float %2695, %2695
  %2698 = fmul fast float %2697, %2696
  %2699 = fsub fast float 1.500000e+00, %2698
  %2700 = fmul fast float %2695, %2616
  %2701 = fmul fast float %2700, %2699
  %2702 = bitcast float %2617 to i32
  %2703 = ashr i32 %2702, 1
  %2704 = sub nsw i32 1597463174, %2703
  %2705 = bitcast i32 %2704 to float
  %2706 = fmul fast float %2617, 5.000000e-01
  %2707 = fmul fast float %2705, %2705
  %2708 = fmul fast float %2707, %2706
  %2709 = fsub fast float 1.500000e+00, %2708
  %2710 = fmul fast float %2705, %2617
  %2711 = fmul fast float %2710, %2709
  %2712 = bitcast float %2618 to i32
  %2713 = ashr i32 %2712, 1
  %2714 = sub nsw i32 1597463174, %2713
  %2715 = bitcast i32 %2714 to float
  %2716 = fmul fast float %2618, 5.000000e-01
  %2717 = fmul fast float %2715, %2715
  %2718 = fmul fast float %2717, %2716
  %2719 = fsub fast float 1.500000e+00, %2718
  %2720 = fmul fast float %2715, %2618
  %2721 = fmul fast float %2720, %2719
  %2722 = fsub fast float %2701, %2683
  %2723 = fsub fast float %2711, %2687
  %2724 = fsub fast float %2721, %2691
  %2725 = fmul fast float %2722, %2651
  %2726 = fmul fast float %2723, %2653
  %2727 = fmul fast float %2724, %2658
  %2728 = fadd fast float %2725, %2666
  %2729 = fadd fast float %2726, %2670
  %2730 = fadd fast float %2727, %2674
  %2731 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  %2732 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2733 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2734 = fmul fast float %2731, %2731
  %2735 = fmul fast float %2732, %2732
  %2736 = fmul fast float %2733, %2733
  %2737 = fsub fast float %2734, %2616
  %2738 = fsub fast float %2735, %2617
  %2739 = fsub fast float %2736, %2618
  %2740 = fmul fast float %2737, %2641
  %2741 = fmul fast float %2738, %2641
  %2742 = fmul fast float %2739, %2641
  %2743 = fadd fast float %2740, %2616
  %2744 = fadd fast float %2741, %2617
  %2745 = fadd fast float %2742, %2618
  %2746 = fadd fast float %2663, %2627
  %2747 = fsub fast float %2746, %2680
  %2748 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2749 = fsub fast float %2748, %2627
  %2750 = fmul fast float %2749, %2641
  %2751 = fadd fast float %2750, %2627
  br label %2805

; <label>:2752                                    ; preds = %2640
  %2753 = and i32 %2643, 134217728
  %2754 = icmp eq i32 %2753, 0
  br i1 %2754, label %2789, label %2755

; <label>:2755                                    ; preds = %2752
  %2756 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %2757 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %2758 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %2759 = fadd fast float %2756, -5.000000e-01
  %2760 = fadd fast float %2757, -5.000000e-01
  %2761 = fadd fast float %2758, -5.000000e-01
  %2762 = fmul fast float %2759, %2641
  %2763 = fmul fast float %2760, %2641
  %2764 = fmul fast float %2761, %2641
  %2765 = fadd fast float %2762, 5.000000e-01
  %2766 = fadd fast float %2763, 5.000000e-01
  %2767 = fadd fast float %2764, 5.000000e-01
  %2768 = call float @dx.op.unary.f32(i32 24, float %2616)  ; Sqrt(value)
  %2769 = call float @dx.op.unary.f32(i32 24, float %2617)  ; Sqrt(value)
  %2770 = call float @dx.op.unary.f32(i32 24, float %2618)  ; Sqrt(value)
  %2771 = fmul fast float %2765, 2.000000e+00
  %2772 = fsub fast float 1.000000e+00, %2771
  %2773 = fmul fast float %2772, %2768
  %2774 = fadd fast float %2773, %2771
  %2775 = fmul fast float %2774, %2768
  %2776 = fmul fast float %2766, 2.000000e+00
  %2777 = fsub fast float 1.000000e+00, %2776
  %2778 = fmul fast float %2777, %2769
  %2779 = fadd fast float %2778, %2776
  %2780 = fmul fast float %2779, %2769
  %2781 = fmul fast float %2767, 2.000000e+00
  %2782 = fsub fast float 1.000000e+00, %2781
  %2783 = fmul fast float %2782, %2770
  %2784 = fadd fast float %2783, %2781
  %2785 = fmul fast float %2784, %2770
  %2786 = fmul fast float %2775, %2775
  %2787 = fmul fast float %2780, %2780
  %2788 = fmul fast float %2785, %2785
  br label %2805

; <label>:2789                                    ; preds = %2752
  %2790 = fmul fast float %375, %375
  %2791 = fmul fast float %379, %379
  %2792 = fmul fast float %383, %383
  %2793 = fadd fast float %2790, -1.000000e+00
  %2794 = fadd fast float %2791, -1.000000e+00
  %2795 = fadd fast float %2792, -1.000000e+00
  %2796 = fmul fast float %2641, %2793
  %2797 = fmul fast float %2641, %2794
  %2798 = fmul fast float %2641, %2795
  %2799 = fadd fast float %2796, 1.000000e+00
  %2800 = fadd fast float %2797, 1.000000e+00
  %2801 = fadd fast float %2798, 1.000000e+00
  %2802 = fmul fast float %2799, %2616
  %2803 = fmul fast float %2800, %2617
  %2804 = fmul fast float %2801, %2618
  br label %2805

; <label>:2805                                    ; preds = %2789, %2755, %2646, %2602
  %2806 = phi float [ %2751, %2646 ], [ %2627, %2755 ], [ %2627, %2789 ], [ 0x3FA23C0BE0000000, %2602 ]
  %2807 = phi float [ %2743, %2646 ], [ %2786, %2755 ], [ %2802, %2789 ], [ 1.000000e+00, %2602 ]
  %2808 = phi float [ %2744, %2646 ], [ %2787, %2755 ], [ %2803, %2789 ], [ 1.000000e+00, %2602 ]
  %2809 = phi float [ %2745, %2646 ], [ %2788, %2755 ], [ %2804, %2789 ], [ 1.000000e+00, %2602 ]
  %2810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2811 = extractvalue %dx.types.CBufRet.i32 %2810, 1
  %2812 = and i32 %2811, 1
  %2813 = icmp ne i32 %2812, 0
  %2814 = add i32 %35, 356
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = and i32 %2816, 32
  %2818 = icmp ne i32 %2817, 0
  %2819 = and i1 %2813, %2818
  %2820 = select i1 %2819, float 1.000000e+00, float %2807
  %2821 = select i1 %2819, float 0x3FD3333340000000, float %2808
  %2822 = select i1 %2819, float 0x3FD3333340000000, float %2809
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = and i32 %2824, 32
  %2826 = icmp eq i32 %2825, 0
  br i1 %2826, label %2899, label %2827

; <label>:2827                                    ; preds = %2805
  %2828 = add i32 %35, 140
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = add i32 %35, 404
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = add i32 %2833, 0
  %2835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2834, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2836 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2835, %dx.types.Handle %81, float %2527, float %2528, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.ResRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.ResRet.f32 %2836, 2
  %2840 = extractvalue %dx.types.ResRet.f32 %2836, 3
  %2841 = and i32 %2830, 255
  %2842 = uitofp i32 %2841 to float
  %2843 = lshr i32 %2830, 8
  %2844 = and i32 %2843, 255
  %2845 = uitofp i32 %2844 to float
  %2846 = lshr i32 %2830, 16
  %2847 = and i32 %2846, 255
  %2848 = uitofp i32 %2847 to float
  %2849 = fmul fast float %2848, 0x3F70101000000000
  %2850 = fmul fast float %2837, %2842
  %2851 = fadd fast float %2850, %2845
  %2852 = fmul fast float %2851, 0x3F70101000000000
  %2853 = fadd fast float %2838, -5.000000e-01
  %2854 = fadd fast float %2840, -5.000000e-01
  %2855 = fmul fast float %2853, %2849
  %2856 = fmul fast float %2854, %2849
  %2857 = fadd fast float %2855, 5.000000e-01
  %2858 = fadd fast float %2856, 5.000000e-01
  %2859 = fmul fast float %2857, 2.000000e+00
  %2860 = fadd fast float %2859, -1.000000e+00
  %2861 = fmul fast float %2858, 2.000000e+00
  %2862 = fadd fast float %2861, -1.000000e+00
  %2863 = fadd fast float %2860, %2862
  %2864 = fmul fast float %2863, 5.000000e-01
  %2865 = fsub fast float %2860, %2862
  %2866 = fmul fast float %2865, 5.000000e-01
  %2867 = call float @dx.op.unary.f32(i32 6, float %2864)  ; FAbs(value)
  %2868 = fsub fast float 1.000000e+00, %2867
  %2869 = call float @dx.op.unary.f32(i32 6, float %2866)  ; FAbs(value)
  %2870 = fsub fast float %2868, %2869
  %2871 = call float @dx.op.dot3.f32(i32 55, float %2864, float %2866, float %2870, float %2864, float %2866, float %2870)  ; Dot3(ax,ay,az,bx,by,bz)
  %2872 = call float @dx.op.unary.f32(i32 25, float %2871)  ; Rsqrt(value)
  %2873 = fmul fast float %2864, %2872
  %2874 = fmul fast float %2866, %2872
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = and i32 %2876, 67108864
  %2878 = icmp eq i32 %2877, 0
  br i1 %2878, label %2895, label %2879

; <label>:2879                                    ; preds = %2827
  %2880 = add i32 %35, 328
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = and i32 %2882, 65535
  %2884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2883)  ; LegacyF16ToF32(value)
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2437, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = and i32 %2886, 65535
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = lshr i32 %2882, 16
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = fsub fast float %2852, %2890
  %2892 = fmul fast float %2891, %2884
  %2893 = fadd fast float %2892, %2888
  %2894 = call float @dx.op.unary.f32(i32 7, float %2893)  ; Saturate(value)
  br label %2895

; <label>:2895                                    ; preds = %2879, %2827
  %2896 = phi float [ %2894, %2879 ], [ %2852, %2827 ]
  %2897 = call float @dx.op.dot2.f32(i32 54, float %2873, float %2874, float %2431, float %2432)  ; Dot2(ax,ay,bx,by)
  %2898 = call float @dx.op.dot2.f32(i32 54, float %2873, float %2874, float %2433, float %2434)  ; Dot2(ax,ay,bx,by)
  br label %2899

; <label>:2899                                    ; preds = %2895, %2805
  %2900 = phi float [ %2896, %2895 ], [ 0x3FD6666660000000, %2805 ]
  %2901 = phi float [ %2897, %2895 ], [ 0.000000e+00, %2805 ]
  %2902 = phi float [ %2898, %2895 ], [ 0.000000e+00, %2805 ]
  %2903 = phi float [ %2839, %2895 ], [ 1.000000e+00, %2805 ]
  %2904 = add i32 %35, 208
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2904, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = lshr i32 %2906, 22
  %2908 = shl nuw nsw i32 %2907, 5
  %2909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2908)  ; LegacyF16ToF32(value)
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = and i32 %2911, 64
  %2913 = icmp eq i32 %2912, 0
  br i1 %2913, label %2947, label %2914

; <label>:2914                                    ; preds = %2899
  %2915 = add i32 %35, 420
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = add i32 %2917, 0
  %2919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = and i32 %2921, 131072
  %2923 = icmp eq i32 %2922, 0
  %2924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2919, %dx.types.Handle %81, float %2527, float %2528, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2925 = extractvalue %dx.types.ResRet.f32 %2924, 0
  %2926 = extractvalue %dx.types.ResRet.f32 %2924, 1
  %2927 = extractvalue %dx.types.ResRet.f32 %2924, 2
  %2928 = fmul fast float %2925, %363
  %2929 = fmul fast float %2926, %366
  %2930 = fmul fast float %2927, %369
  br i1 %2923, label %2937, label %2931

; <label>:2931                                    ; preds = %2914
  %2932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2933 = extractvalue %dx.types.CBufRet.f32 %2932, 0
  %2934 = fmul fast float %2933, %2928
  %2935 = fmul fast float %2933, %2929
  %2936 = fmul fast float %2933, %2930
  br label %2937

; <label>:2937                                    ; preds = %2931, %2914
  %2938 = phi float [ %2934, %2931 ], [ %2928, %2914 ]
  %2939 = phi float [ %2935, %2931 ], [ %2929, %2914 ]
  %2940 = phi float [ %2936, %2931 ], [ %2930, %2914 ]
  %2941 = fmul fast float %2938, %2909
  %2942 = select i1 %220, float %2941, float %2938
  %2943 = call float @dx.op.dot3.f32(i32 55, float %2942, float %2939, float %2940, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2944 = select i1 %220, float 0.000000e+00, float %2938
  %2945 = select i1 %220, float %2943, float %2939
  %2946 = select i1 %220, float 0.000000e+00, float %2940
  br label %2947

; <label>:2947                                    ; preds = %2937, %2899
  %2948 = phi float [ %2944, %2937 ], [ 0.000000e+00, %2899 ]
  %2949 = phi float [ %2945, %2937 ], [ 0.000000e+00, %2899 ]
  %2950 = phi float [ %2946, %2937 ], [ 0.000000e+00, %2899 ]
  %2951 = add i32 %35, 144
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = and i32 %2953, 255
  %2955 = uitofp i32 %2954 to float
  %2956 = lshr i32 %2953, 8
  %2957 = and i32 %2956, 255
  %2958 = uitofp i32 %2957 to float
  %2959 = call float @dx.op.dot3.f32(i32 55, float %2820, float %2821, float %2822, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2960 = fmul fast float %2958, %2959
  %2961 = fadd fast float %2960, %2955
  %2962 = fmul fast float %2961, 0x3F70101020000000
  %2963 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  br i1 %2419, label %2964, label %2972

; <label>:2964                                    ; preds = %2947
  %2965 = fsub fast float 1.000000e+00, %2600
  %2966 = fmul fast float %2965, %2408
  %2967 = fmul fast float %2965, %2409
  %2968 = fmul fast float %2965, %2410
  %2969 = fmul fast float %2965, %2411
  %2970 = fmul fast float %2965, %2412
  %2971 = fmul fast float %2965, %2413
  br label %2972

; <label>:2972                                    ; preds = %2964, %2947
  %2973 = phi float [ %2966, %2964 ], [ %2408, %2947 ]
  %2974 = phi float [ %2967, %2964 ], [ %2409, %2947 ]
  %2975 = phi float [ %2968, %2964 ], [ %2410, %2947 ]
  %2976 = phi float [ %2969, %2964 ], [ %2411, %2947 ]
  %2977 = phi float [ %2970, %2964 ], [ %2412, %2947 ]
  %2978 = phi float [ %2971, %2964 ], [ %2413, %2947 ]
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = and i32 %2980, 3
  %2982 = icmp eq i32 %2981, 3
  br i1 %2982, label %3061, label %2983

; <label>:2983                                    ; preds = %2972
  %2984 = and i32 %2980, 16
  %2985 = icmp ne i32 %2984, 0
  %2986 = select i1 %2985, float %2600, float 0.000000e+00
  %2987 = icmp eq i32 %2981, 0
  br i1 %2987, label %2988, label %3016

; <label>:2988                                    ; preds = %2983
  %2989 = and i32 %2980, 64
  %2990 = icmp ne i32 %2989, 0
  %2991 = select i1 %2990, float %2600, float 0.000000e+00
  %2992 = fsub fast float %2820, %2973
  %2993 = fsub fast float %2821, %2974
  %2994 = fsub fast float %2822, %2975
  %2995 = fmul fast float %2986, %2992
  %2996 = fmul fast float %2986, %2993
  %2997 = fmul fast float %2986, %2994
  %2998 = fadd fast float %2995, %2973
  %2999 = fadd fast float %2996, %2974
  %3000 = fadd fast float %2997, %2975
  %3001 = fsub fast float %2806, %2414
  %3002 = fmul fast float %2986, %3001
  %3003 = fadd fast float %3002, %2414
  %3004 = fsub fast float %2948, %2976
  %3005 = fsub fast float %2949, %2977
  %3006 = fsub fast float %2950, %2978
  %3007 = fmul fast float %2991, %3004
  %3008 = fmul fast float %2991, %3005
  %3009 = fmul fast float %2991, %3006
  %3010 = fadd fast float %3007, %2976
  %3011 = fadd fast float %3008, %2977
  %3012 = fadd fast float %3009, %2978
  %3013 = fsub fast float %2963, %2417
  %3014 = fmul fast float %2986, %3013
  %3015 = fadd fast float %3014, %2417
  br label %3061

; <label>:3016                                    ; preds = %2983
  %3017 = icmp eq i32 %2981, 1
  br i1 %3017, label %3018, label %3031

; <label>:3018                                    ; preds = %3016
  %3019 = fadd fast float %2820, -1.000000e+00
  %3020 = fadd fast float %2821, -1.000000e+00
  %3021 = fadd fast float %2822, -1.000000e+00
  %3022 = fmul fast float %2986, %3019
  %3023 = fmul fast float %2986, %3020
  %3024 = fmul fast float %2986, %3021
  %3025 = fadd fast float %3022, 1.000000e+00
  %3026 = fadd fast float %3023, 1.000000e+00
  %3027 = fadd fast float %3024, 1.000000e+00
  %3028 = fmul fast float %3025, %2973
  %3029 = fmul fast float %3026, %2974
  %3030 = fmul fast float %3027, %2975
  br label %3061

; <label>:3031                                    ; preds = %3016
  %3032 = icmp eq i32 %2981, 2
  br i1 %3032, label %3033, label %3061

; <label>:3033                                    ; preds = %3031
  %3034 = call float @dx.op.unary.f32(i32 24, float %2820)  ; Sqrt(value)
  %3035 = call float @dx.op.unary.f32(i32 24, float %2821)  ; Sqrt(value)
  %3036 = call float @dx.op.unary.f32(i32 24, float %2822)  ; Sqrt(value)
  %3037 = fadd fast float %3034, -5.000000e-01
  %3038 = fadd fast float %3035, -5.000000e-01
  %3039 = fadd fast float %3036, -5.000000e-01
  %3040 = fmul fast float %3037, %2986
  %3041 = fmul fast float %3038, %2986
  %3042 = fmul fast float %3039, %2986
  %3043 = fadd fast float %3040, 5.000000e-01
  %3044 = fadd fast float %3041, 5.000000e-01
  %3045 = fadd fast float %3042, 5.000000e-01
  %3046 = fmul fast float %3043, 2.000000e+00
  %3047 = fsub fast float 1.000000e+00, %3046
  %3048 = fmul fast float %3047, %2973
  %3049 = fadd fast float %3048, %3046
  %3050 = fmul fast float %3049, %2973
  %3051 = fmul fast float %3044, 2.000000e+00
  %3052 = fsub fast float 1.000000e+00, %3051
  %3053 = fmul fast float %3052, %2974
  %3054 = fadd fast float %3053, %3051
  %3055 = fmul fast float %3054, %2974
  %3056 = fmul fast float %3045, 2.000000e+00
  %3057 = fsub fast float 1.000000e+00, %3056
  %3058 = fmul fast float %3057, %2975
  %3059 = fadd fast float %3058, %3056
  %3060 = fmul fast float %3059, %2975
  br label %3061

; <label>:3061                                    ; preds = %3033, %3031, %3018, %2988, %2972
  %3062 = phi float [ %2973, %2972 ], [ %3050, %3033 ], [ %2973, %3031 ], [ %3028, %3018 ], [ %2998, %2988 ]
  %3063 = phi float [ %2974, %2972 ], [ %3055, %3033 ], [ %2974, %3031 ], [ %3029, %3018 ], [ %2999, %2988 ]
  %3064 = phi float [ %2975, %2972 ], [ %3060, %3033 ], [ %2975, %3031 ], [ %3030, %3018 ], [ %3000, %2988 ]
  %3065 = phi float [ %2976, %2972 ], [ %2976, %3033 ], [ %2976, %3031 ], [ %2976, %3018 ], [ %3010, %2988 ]
  %3066 = phi float [ %2977, %2972 ], [ %2977, %3033 ], [ %2977, %3031 ], [ %2977, %3018 ], [ %3011, %2988 ]
  %3067 = phi float [ %2978, %2972 ], [ %2978, %3033 ], [ %2978, %3031 ], [ %2978, %3018 ], [ %3012, %2988 ]
  %3068 = phi float [ %2414, %2972 ], [ %2414, %3033 ], [ %2414, %3031 ], [ %2414, %3018 ], [ %3003, %2988 ]
  %3069 = phi float [ %2417, %2972 ], [ %2417, %3033 ], [ %2417, %3031 ], [ %2417, %3018 ], [ %3015, %2988 ]
  %3070 = and i32 %2980, 12
  %3071 = icmp eq i32 %3070, 12
  br i1 %3071, label %3144, label %3072

; <label>:3072                                    ; preds = %3061
  %3073 = and i32 %2980, 2097184
  %3074 = icmp eq i32 %3073, 2097184
  %3075 = select i1 %3074, float %2600, float 0.000000e+00
  %3076 = and i32 %2980, 4194336
  %3077 = icmp eq i32 %3076, 4194336
  %3078 = select i1 %3077, float %2600, float 0.000000e+00
  %3079 = and i32 %2980, 8388640
  %3080 = icmp eq i32 %3079, 8388640
  %3081 = select i1 %3080, float %2600, float 0.000000e+00
  %3082 = icmp eq i32 %3070, 0
  br i1 %3082, label %3083, label %3096

; <label>:3083                                    ; preds = %3072
  %3084 = fsub fast float %2901, %2406
  %3085 = fsub fast float %2902, %2407
  %3086 = fmul fast float %3075, %3084
  %3087 = fmul fast float %3075, %3085
  %3088 = fadd fast float %3086, %2406
  %3089 = fadd fast float %3087, %2407
  %3090 = fsub fast float %2903, %2416
  %3091 = fmul fast float %3078, %3090
  %3092 = fadd fast float %3091, %2416
  %3093 = fsub fast float %2900, %2415
  %3094 = fmul fast float %3081, %3093
  %3095 = fadd fast float %3094, %2415
  br label %3144

; <label>:3096                                    ; preds = %3072
  %3097 = icmp eq i32 %3070, 4
  br i1 %3097, label %3098, label %3130

; <label>:3098                                    ; preds = %3096
  %3099 = fmul fast float %3075, %2901
  %3100 = fmul fast float %3075, %2902
  %3101 = fadd fast float %3099, %2406
  %3102 = fadd fast float %3100, %2407
  %3103 = call float @dx.op.binary.f32(i32 36, float %2416, float %2903)  ; FMin(a,b)
  %3104 = fsub fast float %3103, %2416
  %3105 = fmul fast float %3104, %3078
  %3106 = fadd fast float %3105, %2416
  %3107 = fadd fast float %2900, %2415
  %3108 = fmul fast float %3107, 0x3FF337FAE0000000
  %3109 = fmul fast float %2415, %2415
  %3110 = fmul fast float %2900, %2900
  %3111 = fadd fast float %3110, %3109
  %3112 = fmul fast float %3111, 0x3FE5152B00000000
  %3113 = fmul fast float %2415, 0xBFCC1F85E0000000
  %3114 = fmul fast float %3113, %2900
  %3115 = fadd fast float %3114, 0xBFE1363700000000
  %3116 = fadd fast float %3115, %3108
  %3117 = fsub fast float %3116, %3112
  %3118 = fmul fast float %3107, 0x3FBA6F0D00000000
  %3119 = fmul fast float %3111, 0x3FD0432880000000
  %3120 = fmul fast float %2415, 0xBFEF110800000000
  %3121 = fmul fast float %3120, %2900
  %3122 = fadd fast float %3121, 1.000000e+00
  %3123 = fsub fast float %3122, %3118
  %3124 = fadd fast float %3123, %3119
  %3125 = fdiv fast float %3117, %3124
  %3126 = call float @dx.op.unary.f32(i32 7, float %3125)  ; Saturate(value)
  %3127 = fsub fast float %3126, %2415
  %3128 = fmul fast float %3127, %3081
  %3129 = fadd fast float %3128, %2415
  br label %3144

; <label>:3130                                    ; preds = %3096
  %3131 = icmp eq i32 %3070, 8
  br i1 %3131, label %3132, label %3144

; <label>:3132                                    ; preds = %3130
  %3133 = fmul fast float %3075, %2901
  %3134 = fmul fast float %3075, %2902
  %3135 = fadd fast float %3133, %2406
  %3136 = fadd fast float %3134, %2407
  %3137 = call float @dx.op.binary.f32(i32 36, float %2416, float %2903)  ; FMin(a,b)
  %3138 = fsub fast float %3137, %2416
  %3139 = fmul fast float %3138, %3078
  %3140 = fadd fast float %3139, %2416
  %3141 = fsub fast float %2900, %2415
  %3142 = fmul fast float %3081, %3141
  %3143 = fadd fast float %3142, %2415
  br label %3144

; <label>:3144                                    ; preds = %3132, %3130, %3098, %3083, %3061, %2599, %2418, %2405
  %3145 = phi float [ %2406, %3061 ], [ %2406, %2599 ], [ %2406, %2405 ], [ %2406, %2418 ], [ %3088, %3083 ], [ %3101, %3098 ], [ %2406, %3130 ], [ %3135, %3132 ]
  %3146 = phi float [ %2407, %3061 ], [ %2407, %2599 ], [ %2407, %2405 ], [ %2407, %2418 ], [ %3089, %3083 ], [ %3102, %3098 ], [ %2407, %3130 ], [ %3136, %3132 ]
  %3147 = phi float [ %3062, %3061 ], [ %2408, %2599 ], [ %2408, %2405 ], [ %2408, %2418 ], [ %3062, %3083 ], [ %3062, %3098 ], [ %3062, %3130 ], [ %3062, %3132 ]
  %3148 = phi float [ %3063, %3061 ], [ %2409, %2599 ], [ %2409, %2405 ], [ %2409, %2418 ], [ %3063, %3083 ], [ %3063, %3098 ], [ %3063, %3130 ], [ %3063, %3132 ]
  %3149 = phi float [ %3064, %3061 ], [ %2410, %2599 ], [ %2410, %2405 ], [ %2410, %2418 ], [ %3064, %3083 ], [ %3064, %3098 ], [ %3064, %3130 ], [ %3064, %3132 ]
  %3150 = phi float [ %3065, %3061 ], [ %2411, %2599 ], [ %2411, %2405 ], [ %2411, %2418 ], [ %3065, %3083 ], [ %3065, %3098 ], [ %3065, %3130 ], [ %3065, %3132 ]
  %3151 = phi float [ %3066, %3061 ], [ %2412, %2599 ], [ %2412, %2405 ], [ %2412, %2418 ], [ %3066, %3083 ], [ %3066, %3098 ], [ %3066, %3130 ], [ %3066, %3132 ]
  %3152 = phi float [ %3067, %3061 ], [ %2413, %2599 ], [ %2413, %2405 ], [ %2413, %2418 ], [ %3067, %3083 ], [ %3067, %3098 ], [ %3067, %3130 ], [ %3067, %3132 ]
  %3153 = phi float [ %3068, %3061 ], [ %2414, %2599 ], [ %2414, %2405 ], [ %2414, %2418 ], [ %3068, %3083 ], [ %3068, %3098 ], [ %3068, %3130 ], [ %3068, %3132 ]
  %3154 = phi float [ %2415, %3061 ], [ %2415, %2599 ], [ %2415, %2405 ], [ %2415, %2418 ], [ %3095, %3083 ], [ %3129, %3098 ], [ %2415, %3130 ], [ %3143, %3132 ]
  %3155 = phi float [ %2416, %3061 ], [ %2416, %2599 ], [ %2416, %2405 ], [ %2416, %2418 ], [ %3092, %3083 ], [ %3106, %3098 ], [ %2416, %3130 ], [ %3140, %3132 ]
  %3156 = phi float [ %3069, %3061 ], [ %2417, %2599 ], [ %2417, %2405 ], [ %2417, %2418 ], [ %3069, %3083 ], [ %3069, %3098 ], [ %3069, %3130 ], [ %3069, %3132 ]
  %3157 = add i32 %35, 360
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = extractvalue %dx.types.ResRet.i32 %3158, 1
  %3161 = bitcast i32 %3159 to float
  %3162 = bitcast i32 %3160 to float
  %3163 = fcmp fast oge float %3161, 0.000000e+00
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 0
  %3166 = select i1 %3163, float %3161, float %3165
  %3167 = fadd fast float %3166, %182
  %3168 = fmul fast float %3162, %183
  %3169 = add i32 %35, 456
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = add i32 %3171, 0
  %3173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3173, %dx.types.Handle %82, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3175 = extractvalue %dx.types.ResRet.f32 %3174, 0
  %3176 = fmul fast float %3168, %3175
  %3177 = fadd fast float %3167, %3176
  %3178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3179 = extractvalue %dx.types.CBufRet.f32 %3178, 0
  %3180 = and i32 %174, 65535
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = lshr i32 %174, 16
  %3183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3182)  ; LegacyF16ToF32(value)
  %3184 = and i32 %175, 65535
  %3185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3184)  ; LegacyF16ToF32(value)
  %3186 = fmul fast float %3181, %3147
  %3187 = fmul fast float %3183, %3148
  %3188 = fmul fast float %3185, %3149
  %3189 = shl i32 %176, 4
  %3190 = and i32 %3189, 32752
  %3191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3190)  ; LegacyF16ToF32(value)
  %3192 = lshr i32 %176, 7
  %3193 = and i32 %3192, 32752
  %3194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3193)  ; LegacyF16ToF32(value)
  %3195 = lshr i32 %176, 22
  %3196 = shl nuw nsw i32 %3195, 5
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = and i32 %177, 65535
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = fmul fast float %3179, %3150
  %3201 = fmul fast float %3200, %3191
  %3202 = fmul fast float %3201, %3199
  %3203 = fmul fast float %3179, %3151
  %3204 = fmul fast float %3203, %3194
  %3205 = fmul fast float %3204, %3199
  %3206 = fmul fast float %3179, %3152
  %3207 = fmul fast float %3206, %3197
  %3208 = fmul fast float %3207, %3199
  %3209 = call float @dx.op.dot2.f32(i32 54, float %3145, float %3146, float %3145, float %3146)  ; Dot2(ax,ay,bx,by)
  %3210 = fmul fast float %3209, 0x3FE3333340000000
  %3211 = fsub fast float 1.000000e+00, %3210
  %3212 = call float @dx.op.dot3.f32(i32 55, float %3145, float %3146, float %3211, float %3145, float %3146, float %3211)  ; Dot3(ax,ay,az,bx,by,bz)
  %3213 = call float @dx.op.unary.f32(i32 25, float %3212)  ; Rsqrt(value)
  %3214 = fmul fast float %3213, %3145
  %3215 = fmul fast float %3213, %3146
  %3216 = fmul fast float %3211, %3213
  %3217 = fmul fast float %3216, %94
  %3218 = fmul fast float %3216, %96
  %3219 = fmul fast float %3216, %98
  %3220 = fmul fast float %3214, %66
  %3221 = fmul fast float %3214, %67
  %3222 = fmul fast float %3214, %68
  %3223 = fadd fast float %3217, %3220
  %3224 = fadd fast float %3218, %3221
  %3225 = fadd fast float %3219, %3222
  %3226 = fmul fast float %108, %3215
  %3227 = fmul fast float %109, %3215
  %3228 = fmul fast float %110, %3215
  %3229 = fadd fast float %3223, %3226
  %3230 = fadd fast float %3224, %3227
  %3231 = fadd fast float %3225, %3228
  %3232 = call float @dx.op.dot3.f32(i32 55, float %3229, float %3230, float %3231, float %3229, float %3230, float %3231)  ; Dot3(ax,ay,az,bx,by,bz)
  %3233 = call float @dx.op.unary.f32(i32 25, float %3232)  ; Rsqrt(value)
  %3234 = fmul fast float %3229, %3233
  %3235 = fmul fast float %3230, %3233
  %3236 = fmul fast float %3231, %3233
  %3237 = icmp eq i32 %37, 65535
  br i1 %3237, label %3752, label %3238

; <label>:3238                                    ; preds = %3144
  %3239 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3240 = call float @dx.op.unary.f32(i32 83, float %39)  ; DerivCoarseX(value)
  %3241 = call float @dx.op.unary.f32(i32 83, float %40)  ; DerivCoarseX(value)
  %3242 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3243 = call float @dx.op.unary.f32(i32 84, float %39)  ; DerivCoarseY(value)
  %3244 = call float @dx.op.unary.f32(i32 84, float %40)  ; DerivCoarseY(value)
  %3245 = fadd fast float %3239, %38
  %3246 = fadd fast float %3240, %39
  %3247 = fadd fast float %3241, %40
  %3248 = fadd fast float %3242, %38
  %3249 = fadd fast float %3243, %39
  %3250 = fadd fast float %3244, %40
  %3251 = mul i32 %37, 48
  %3252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3251, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.f32 %3252, 0
  %3254 = extractvalue %dx.types.ResRet.f32 %3252, 1
  %3255 = extractvalue %dx.types.ResRet.f32 %3252, 2
  %3256 = add i32 %3251, 16
  %3257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.f32 %3257, 0
  %3259 = extractvalue %dx.types.ResRet.f32 %3257, 1
  %3260 = extractvalue %dx.types.ResRet.f32 %3257, 2
  %3261 = add i32 %3251, 32
  %3262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.f32 %3262, 0
  %3264 = extractvalue %dx.types.ResRet.f32 %3262, 1
  %3265 = extractvalue %dx.types.ResRet.f32 %3262, 2
  %3266 = extractvalue %dx.types.ResRet.f32 %3262, 3
  %3267 = bitcast float %3266 to i32
  %3268 = fmul fast float %3253, %38
  %3269 = fmul fast float %3254, %39
  %3270 = fmul fast float %3255, %40
  %3271 = fsub fast float %3268, %3258
  %3272 = fsub fast float %3269, %3259
  %3273 = fsub fast float %3270, %3260
  %3274 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3275 = call float @dx.op.unary.f32(i32 7, float %3272)  ; Saturate(value)
  %3276 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  %3277 = fmul fast float %3274, %3263
  %3278 = fmul fast float %3275, %3264
  %3279 = fmul fast float %3276, %3265
  %3280 = fadd fast float %3263, -1.000000e+00
  %3281 = fadd fast float %3264, -1.000000e+00
  %3282 = fadd fast float %3265, -1.000000e+00
  %3283 = call float @dx.op.unary.f32(i32 27, float %3277)  ; Round_ni(value)
  %3284 = call float @dx.op.unary.f32(i32 27, float %3278)  ; Round_ni(value)
  %3285 = call float @dx.op.unary.f32(i32 27, float %3279)  ; Round_ni(value)
  %3286 = call float @dx.op.binary.f32(i32 36, float %3283, float %3280)  ; FMin(a,b)
  %3287 = call float @dx.op.binary.f32(i32 36, float %3284, float %3281)  ; FMin(a,b)
  %3288 = call float @dx.op.binary.f32(i32 36, float %3285, float %3282)  ; FMin(a,b)
  %3289 = fmul fast float %3288, %3264
  %3290 = fadd fast float %3289, %3287
  %3291 = fmul fast float %3290, %3263
  %3292 = fadd fast float %3291, %3286
  %3293 = fptosi float %3292 to i32
  %3294 = add nsw i32 %3293, %3267
  %3295 = shl nsw i32 %3294, 2
  %3296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3295, i32 undef)  ; BufferLoad(srv,index,wot)
  %3297 = extractvalue %dx.types.ResRet.i32 %3296, 0
  %3298 = lshr i32 %3297, 16
  %3299 = icmp eq i32 %3298, 0
  br i1 %3299, label %3721, label %3300

; <label>:3300                                    ; preds = %3238
  br label %3301

; <label>:3301                                    ; preds = %3422, %3300
  %3302 = phi i32 [ %3324, %3422 ], [ %3298, %3300 ]
  %3303 = phi float [ %3423, %3422 ], [ 0.000000e+00, %3300 ]
  %3304 = phi float [ %3424, %3422 ], [ %3177, %3300 ]
  %3305 = phi float [ %3425, %3422 ], [ %3156, %3300 ]
  %3306 = phi float [ %3426, %3422 ], [ 0.000000e+00, %3300 ]
  %3307 = phi float [ %3427, %3422 ], [ 0.000000e+00, %3300 ]
  %3308 = phi float [ %3428, %3422 ], [ %3202, %3300 ]
  %3309 = phi float [ %3429, %3422 ], [ %3205, %3300 ]
  %3310 = phi float [ %3430, %3422 ], [ %3208, %3300 ]
  %3311 = phi float [ %3431, %3422 ], [ %3234, %3300 ]
  %3312 = phi float [ %3432, %3422 ], [ %3235, %3300 ]
  %3313 = phi float [ %3433, %3422 ], [ %3236, %3300 ]
  %3314 = phi float [ %3434, %3422 ], [ %3155, %3300 ]
  %3315 = phi float [ %3435, %3422 ], [ %3154, %3300 ]
  %3316 = phi float [ %3436, %3422 ], [ 0.000000e+00, %3300 ]
  %3317 = phi float [ %3437, %3422 ], [ %3153, %3300 ]
  %3318 = phi float [ %3438, %3422 ], [ %3186, %3300 ]
  %3319 = phi float [ %3439, %3422 ], [ %3187, %3300 ]
  %3320 = phi float [ %3440, %3422 ], [ %3188, %3300 ]
  %3321 = shl nuw nsw i32 %3302, 2
  %3322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3321, i32 undef)  ; BufferLoad(srv,index,wot)
  %3323 = extractvalue %dx.types.ResRet.i32 %3322, 0
  %3324 = lshr i32 %3323, 16
  %3325 = shl i32 %3323, 8
  %3326 = and i32 %3325, 16776960
  %3327 = or i32 %3326, 48
  %3328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.f32 %3328, 0
  %3330 = extractvalue %dx.types.ResRet.f32 %3328, 1
  %3331 = extractvalue %dx.types.ResRet.f32 %3328, 2
  %3332 = or i32 %3326, 64
  %3333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3332, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.i32 %3333, 0
  %3335 = extractvalue %dx.types.ResRet.i32 %3333, 1
  %3336 = or i32 %3326, 80
  %3337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.f32 %3337, 2
  %3339 = extractvalue %dx.types.ResRet.f32 %3337, 3
  %3340 = or i32 %3326, 96
  %3341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.f32 %3341, 0
  %3343 = extractvalue %dx.types.ResRet.f32 %3341, 1
  %3344 = extractvalue %dx.types.ResRet.f32 %3341, 2
  %3345 = extractvalue %dx.types.ResRet.f32 %3341, 3
  %3346 = or i32 %3326, 112
  %3347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.f32 %3347, 2
  %3349 = or i32 %3326, 128
  %3350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.f32 %3350, 0
  %3352 = extractvalue %dx.types.ResRet.f32 %3350, 1
  %3353 = extractvalue %dx.types.ResRet.f32 %3350, 2
  %3354 = extractvalue %dx.types.ResRet.f32 %3350, 3
  %3355 = or i32 %3326, 144
  %3356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.ResRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.ResRet.f32 %3356, 2
  %3360 = extractvalue %dx.types.ResRet.f32 %3356, 3
  %3361 = or i32 %3326, 160
  %3362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.f32 %3362, 0
  %3364 = extractvalue %dx.types.ResRet.f32 %3362, 1
  %3365 = extractvalue %dx.types.ResRet.f32 %3362, 2
  %3366 = extractvalue %dx.types.ResRet.f32 %3362, 3
  %3367 = or i32 %3326, 192
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = or i32 %3326, 208
  %3371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = or i32 %3326, 248
  %3374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.f32 %3374, 0
  %3376 = extractvalue %dx.types.ResRet.f32 %3374, 1
  %3377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3326, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.ResRet.f32 %3377, 1
  %3380 = extractvalue %dx.types.ResRet.f32 %3377, 2
  %3381 = extractvalue %dx.types.ResRet.f32 %3377, 3
  %3382 = call float @dx.op.dot4.f32(i32 56, float %3378, float %3379, float %3380, float %3381, float %38, float %39, float %40, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3383 = or i32 %3326, 16
  %3384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.ResRet.f32 %3384, 1
  %3387 = extractvalue %dx.types.ResRet.f32 %3384, 2
  %3388 = extractvalue %dx.types.ResRet.f32 %3384, 3
  %3389 = call float @dx.op.dot4.f32(i32 56, float %3385, float %3386, float %3387, float %3388, float %38, float %39, float %40, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3390 = or i32 %3326, 32
  %3391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = extractvalue %dx.types.ResRet.f32 %3391, 1
  %3394 = extractvalue %dx.types.ResRet.f32 %3391, 2
  %3395 = extractvalue %dx.types.ResRet.f32 %3391, 3
  %3396 = call float @dx.op.dot4.f32(i32 56, float %3392, float %3393, float %3394, float %3395, float %38, float %39, float %40, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3397 = call float @dx.op.unary.f32(i32 27, float %3382)  ; Round_ni(value)
  %3398 = call float @dx.op.unary.f32(i32 6, float %3397)  ; FAbs(value)
  %3399 = call float @dx.op.unary.f32(i32 27, float %3389)  ; Round_ni(value)
  %3400 = call float @dx.op.unary.f32(i32 6, float %3399)  ; FAbs(value)
  %3401 = call float @dx.op.unary.f32(i32 6, float %3396)  ; FAbs(value)
  %3402 = call float @dx.op.unary.f32(i32 27, float %3401)  ; Round_ni(value)
  %3403 = fadd fast float %3400, %3398
  %3404 = fadd fast float %3403, %3402
  %3405 = fcmp fast oeq float %3404, 0.000000e+00
  %3406 = call float @dx.op.dot4.f32(i32 56, float %3378, float %3379, float %3380, float %3381, float %3245, float %3246, float %3247, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3407 = call float @dx.op.dot4.f32(i32 56, float %3385, float %3386, float %3387, float %3388, float %3245, float %3246, float %3247, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3408 = call float @dx.op.dot4.f32(i32 56, float %3378, float %3379, float %3380, float %3381, float %3248, float %3249, float %3250, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3409 = call float @dx.op.dot4.f32(i32 56, float %3385, float %3386, float %3387, float %3388, float %3248, float %3249, float %3250, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3410 = fsub fast float %3406, %3382
  %3411 = fsub fast float %3408, %3382
  %3412 = fsub fast float %3407, %3389
  %3413 = fsub fast float %3409, %3389
  %3414 = call float @dx.op.dot3.f32(i32 55, float %3329, float %3330, float %3331, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %3415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3416 = extractvalue %dx.types.CBufRet.f32 %3415, 2
  %3417 = fadd fast float %3416, %3414
  %3418 = call float @dx.op.unary.f32(i32 7, float %3417)  ; Saturate(value)
  %3419 = extractvalue %dx.types.CBufRet.f32 %3415, 0
  %3420 = fcmp fast ogt float %3418, %3419
  %3421 = and i1 %3405, %3420
  br i1 %3421, label %3442, label %3422

; <label>:3422                                    ; preds = %3707, %3525, %3442, %3301
  %3423 = phi float [ %3303, %3442 ], [ %3528, %3525 ], [ %3528, %3707 ], [ %3303, %3301 ]
  %3424 = phi float [ %3304, %3442 ], [ %3304, %3525 ], [ %3682, %3707 ], [ %3304, %3301 ]
  %3425 = phi float [ %3305, %3442 ], [ %3305, %3525 ], [ %3680, %3707 ], [ %3305, %3301 ]
  %3426 = phi float [ %3306, %3442 ], [ %3306, %3525 ], [ %3652, %3707 ], [ %3306, %3301 ]
  %3427 = phi float [ %3307, %3442 ], [ %3307, %3525 ], [ %3650, %3707 ], [ %3307, %3301 ]
  %3428 = phi float [ %3308, %3442 ], [ %3308, %3525 ], [ %3717, %3707 ], [ %3308, %3301 ]
  %3429 = phi float [ %3309, %3442 ], [ %3309, %3525 ], [ %3718, %3707 ], [ %3309, %3301 ]
  %3430 = phi float [ %3310, %3442 ], [ %3310, %3525 ], [ %3719, %3707 ], [ %3310, %3301 ]
  %3431 = phi float [ %3311, %3442 ], [ %3311, %3525 ], [ %3631, %3707 ], [ %3311, %3301 ]
  %3432 = phi float [ %3312, %3442 ], [ %3312, %3525 ], [ %3632, %3707 ], [ %3312, %3301 ]
  %3433 = phi float [ %3313, %3442 ], [ %3313, %3525 ], [ %3633, %3707 ], [ %3313, %3301 ]
  %3434 = phi float [ %3314, %3442 ], [ %3314, %3525 ], [ %3660, %3707 ], [ %3314, %3301 ]
  %3435 = phi float [ %3315, %3442 ], [ %3315, %3525 ], [ %3657, %3707 ], [ %3315, %3301 ]
  %3436 = phi float [ %3316, %3442 ], [ %3316, %3525 ], [ %3654, %3707 ], [ %3316, %3301 ]
  %3437 = phi float [ %3317, %3442 ], [ %3317, %3525 ], [ %3648, %3707 ], [ %3317, %3301 ]
  %3438 = phi float [ %3318, %3442 ], [ %3318, %3525 ], [ %3643, %3707 ], [ %3318, %3301 ]
  %3439 = phi float [ %3319, %3442 ], [ %3319, %3525 ], [ %3644, %3707 ], [ %3319, %3301 ]
  %3440 = phi float [ %3320, %3442 ], [ %3320, %3525 ], [ %3645, %3707 ], [ %3320, %3301 ]
  %3441 = icmp eq i32 %3324, 0
  br i1 %3441, label %3720, label %3301

; <label>:3442                                    ; preds = %3301
  %3443 = extractvalue %dx.types.ResRet.f32 %3328, 3
  %3444 = extractvalue %dx.types.ResRet.f32 %3347, 3
  %3445 = extractvalue %dx.types.ResRet.f32 %3347, 1
  %3446 = extractvalue %dx.types.ResRet.f32 %3347, 0
  %3447 = extractvalue %dx.types.ResRet.f32 %3337, 1
  %3448 = extractvalue %dx.types.ResRet.f32 %3337, 0
  %3449 = extractvalue %dx.types.ResRet.i32 %3333, 3
  %3450 = extractvalue %dx.types.ResRet.i32 %3333, 2
  %3451 = bitcast float %3443 to i32
  %3452 = add i32 %3449, 0
  %3453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3452, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3455 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3453, %dx.types.Handle %3454, float %3382, float %3389, float undef, float undef, i32 0, i32 0, i32 undef, float %3410, float %3412, float undef, float %3411, float %3413, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3456 = extractvalue %dx.types.ResRet.f32 %3455, 0
  %3457 = fmul fast float %3456, %3448
  %3458 = fadd fast float %3457, %3447
  %3459 = call float @dx.op.unary.f32(i32 7, float %3458)  ; Saturate(value)
  %3460 = fmul fast float %3382, %3342
  %3461 = call float @dx.op.tertiary.f32(i32 46, float %3343, float %3389, float %3460)  ; FMad(a,b,c)
  %3462 = fadd fast float %3461, %3446
  %3463 = fmul fast float %3382, %3344
  %3464 = call float @dx.op.tertiary.f32(i32 46, float %3345, float %3389, float %3463)  ; FMad(a,b,c)
  %3465 = fadd fast float %3464, %3445
  %3466 = fmul fast float %3410, %3342
  %3467 = call float @dx.op.tertiary.f32(i32 46, float %3343, float %3412, float %3466)  ; FMad(a,b,c)
  %3468 = fmul fast float %3410, %3344
  %3469 = call float @dx.op.tertiary.f32(i32 46, float %3345, float %3412, float %3468)  ; FMad(a,b,c)
  %3470 = fmul fast float %3411, %3342
  %3471 = call float @dx.op.tertiary.f32(i32 46, float %3343, float %3413, float %3470)  ; FMad(a,b,c)
  %3472 = fmul fast float %3411, %3344
  %3473 = call float @dx.op.tertiary.f32(i32 46, float %3345, float %3413, float %3472)  ; FMad(a,b,c)
  %3474 = add i32 %3450, 0
  %3475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3474, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3476 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3475, %dx.types.Handle %3454, float %3462, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float %3467, float %3469, float undef, float %3471, float %3473, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = and i32 %3451, 1024
  %3479 = icmp ne i32 %3478, 0
  %3480 = fcmp fast ogt float %3477, 0x3FE0101020000000
  %3481 = uitofp i1 %3480 to float
  %3482 = select i1 %3479, float %3481, float %3477
  %3483 = and i32 %3451, 8192
  %3484 = icmp ne i32 %3483, 0
  %3485 = select i1 %3484, float %3444, float 1.000000e+00
  %3486 = fmul fast float %3382, 2.000000e+00
  %3487 = fadd fast float %3486, -1.000000e+00
  %3488 = call float @dx.op.unary.f32(i32 6, float %3487)  ; FAbs(value)
  %3489 = fmul fast float %3488, %3375
  %3490 = fsub fast float %3489, %3375
  %3491 = call float @dx.op.unary.f32(i32 7, float %3490)  ; Saturate(value)
  %3492 = fmul fast float %3389, 2.000000e+00
  %3493 = fadd fast float %3492, -1.000000e+00
  %3494 = call float @dx.op.unary.f32(i32 6, float %3493)  ; FAbs(value)
  %3495 = fmul fast float %3494, %3376
  %3496 = fsub fast float %3495, %3376
  %3497 = call float @dx.op.unary.f32(i32 7, float %3496)  ; Saturate(value)
  %3498 = fmul fast float %3401, %3338
  %3499 = fsub fast float %3498, %3338
  %3500 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3501 = fmul fast float %3459, %3485
  %3502 = fmul fast float %3501, %3456
  %3503 = fmul fast float %3502, %3491
  %3504 = fmul fast float %3503, %3482
  %3505 = fmul fast float %3504, %3497
  %3506 = fmul fast float %3505, %3500
  %3507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3508 = extractvalue %dx.types.CBufRet.f32 %3507, 1
  %3509 = extractvalue %dx.types.CBufRet.f32 %3507, 0
  %3510 = fsub fast float %3418, %3509
  %3511 = fmul fast float %3510, %3508
  %3512 = call float @dx.op.unary.f32(i32 7, float %3511)  ; Saturate(value)
  %3513 = fmul fast float %3506, %3339
  %3514 = fadd fast float %3506, %3339
  %3515 = fmul fast float %3514, %3348
  %3516 = fsub fast float %3515, %3348
  %3517 = call float @dx.op.unary.f32(i32 7, float %3516)  ; Saturate(value)
  %3518 = and i32 %3451, 128
  %3519 = icmp ne i32 %3518, 0
  %3520 = select i1 %3519, float %3517, float %3513
  %3521 = fmul fast float %3520, %3512
  %3522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3523 = extractvalue %dx.types.CBufRet.f32 %3522, 0
  %3524 = fcmp fast ugt float %3521, %3523
  br i1 %3524, label %3525, label %3422

; <label>:3525                                    ; preds = %3442
  %3526 = select i1 %3484, float %3521, float 0.000000e+00
  %3527 = fadd fast float %3526, %3303
  %3528 = call float @dx.op.unary.f32(i32 7, float %3527)  ; Saturate(value)
  br i1 %3484, label %3422, label %3529

; <label>:3529                                    ; preds = %3525
  %3530 = and i32 %3451, 4
  %3531 = and i32 %3451, 8
  %3532 = add i32 %3334, 0
  %3533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3532, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3535 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3533, %dx.types.Handle %3534, float %3462, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float %3467, float %3469, float undef, float %3471, float %3473, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3536 = extractvalue %dx.types.ResRet.f32 %3535, 0
  %3537 = extractvalue %dx.types.ResRet.f32 %3535, 1
  %3538 = extractvalue %dx.types.ResRet.f32 %3535, 2
  %3539 = extractvalue %dx.types.ResRet.f32 %3535, 3
  %3540 = bitcast float %3360 to i32
  %3541 = and i32 %3540, 255
  %3542 = uitofp i32 %3541 to float
  %3543 = lshr i32 %3540, 8
  %3544 = and i32 %3543, 255
  %3545 = uitofp i32 %3544 to float
  %3546 = fmul fast float %3539, %3542
  %3547 = fadd fast float %3546, %3545
  %3548 = fmul fast float %3547, 0x3F70101000000000
  %3549 = add i32 %3335, 0
  %3550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3549, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3551 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3550, %dx.types.Handle %3534, float %3462, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float %3467, float %3469, float undef, float %3471, float %3473, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3552 = extractvalue %dx.types.ResRet.f32 %3551, 0
  %3553 = extractvalue %dx.types.ResRet.f32 %3551, 1
  %3554 = extractvalue %dx.types.ResRet.f32 %3551, 2
  %3555 = extractvalue %dx.types.ResRet.f32 %3551, 3
  %3556 = bitcast float %3354 to i32
  %3557 = and i32 %3556, 255
  %3558 = uitofp i32 %3557 to float
  %3559 = lshr i32 %3556, 8
  %3560 = and i32 %3559, 255
  %3561 = uitofp i32 %3560 to float
  %3562 = lshr i32 %3556, 16
  %3563 = and i32 %3562, 255
  %3564 = uitofp i32 %3563 to float
  %3565 = fmul fast float %3564, 0x3F70101000000000
  %3566 = fmul fast float %3552, %3558
  %3567 = fadd fast float %3566, %3561
  %3568 = fmul fast float %3567, 0x3F70101000000000
  %3569 = fadd fast float %3553, -5.000000e-01
  %3570 = fadd fast float %3555, -5.000000e-01
  %3571 = fmul fast float %3569, %3565
  %3572 = fmul fast float %3570, %3565
  %3573 = fadd fast float %3571, 5.000000e-01
  %3574 = fadd fast float %3572, 5.000000e-01
  %3575 = fmul fast float %3536, %3363
  %3576 = fmul fast float %3537, %3364
  %3577 = fmul fast float %3538, %3365
  %3578 = fmul fast float %3573, 2.000000e+00
  %3579 = fadd fast float %3578, -1.000000e+00
  %3580 = fmul fast float %3574, 2.000000e+00
  %3581 = fadd fast float %3580, -1.000000e+00
  %3582 = fadd fast float %3579, %3581
  %3583 = fmul fast float %3582, 5.000000e-01
  %3584 = fsub fast float %3579, %3581
  %3585 = fmul fast float %3584, 5.000000e-01
  %3586 = call float @dx.op.unary.f32(i32 6, float %3583)  ; FAbs(value)
  %3587 = fsub fast float 1.000000e+00, %3586
  %3588 = call float @dx.op.unary.f32(i32 6, float %3585)  ; FAbs(value)
  %3589 = fsub fast float %3587, %3588
  %3590 = call float @dx.op.dot3.f32(i32 55, float %3583, float %3585, float %3589, float %3583, float %3585, float %3589)  ; Dot3(ax,ay,az,bx,by,bz)
  %3591 = call float @dx.op.unary.f32(i32 25, float %3590)  ; Rsqrt(value)
  %3592 = fmul fast float %3583, %3591
  %3593 = fmul fast float %3585, %3591
  %3594 = fmul fast float %3591, %3589
  %3595 = fmul fast float %3594, %3329
  %3596 = fmul fast float %3594, %3330
  %3597 = fmul fast float %3594, %3331
  %3598 = fmul fast float %3592, %3351
  %3599 = fmul fast float %3592, %3352
  %3600 = fmul fast float %3592, %3353
  %3601 = fadd fast float %3598, %3595
  %3602 = fadd fast float %3599, %3596
  %3603 = fadd fast float %3600, %3597
  %3604 = fmul fast float %3593, %3357
  %3605 = fmul fast float %3593, %3358
  %3606 = fmul fast float %3593, %3359
  %3607 = fadd fast float %3601, %3604
  %3608 = fadd fast float %3602, %3605
  %3609 = fadd fast float %3603, %3606
  %3610 = call float @dx.op.dot3.f32(i32 55, float %3607, float %3608, float %3609, float %3607, float %3608, float %3609)  ; Dot3(ax,ay,az,bx,by,bz)
  %3611 = call float @dx.op.unary.f32(i32 25, float %3610)  ; Rsqrt(value)
  %3612 = fmul fast float %3607, %3611
  %3613 = fmul fast float %3608, %3611
  %3614 = fmul fast float %3609, %3611
  %3615 = icmp ne i32 %3531, 0
  %3616 = select i1 %3615, float 1.000000e+00, float 0.000000e+00
  %3617 = fmul fast float %3521, %3616
  %3618 = and i32 %3451, 1
  %3619 = icmp eq i32 %3618, 0
  br i1 %3619, label %3620, label %3624

; <label>:3620                                    ; preds = %3529
  %3621 = fsub fast float %3612, %3311
  %3622 = fsub fast float %3613, %3312
  %3623 = fsub fast float %3614, %3313
  br label %3624

; <label>:3624                                    ; preds = %3620, %3529
  %3625 = phi float [ %3621, %3620 ], [ %3612, %3529 ]
  %3626 = phi float [ %3622, %3620 ], [ %3613, %3529 ]
  %3627 = phi float [ %3623, %3620 ], [ %3614, %3529 ]
  %3628 = fmul float %3627, %3617
  %3629 = fmul float %3626, %3617
  %3630 = fmul float %3625, %3617
  %3631 = fadd fast float %3630, %3311
  %3632 = fadd fast float %3629, %3312
  %3633 = fadd fast float %3628, %3313
  %3634 = icmp ne i32 %3530, 0
  %3635 = select i1 %3634, float 1.000000e+00, float 0.000000e+00
  %3636 = fmul fast float %3521, %3635
  %3637 = fsub fast float %3575, %3318
  %3638 = fsub fast float %3576, %3319
  %3639 = fsub fast float %3577, %3320
  %3640 = fmul fast float %3637, %3636
  %3641 = fmul fast float %3638, %3636
  %3642 = fmul fast float %3639, %3636
  %3643 = fadd fast float %3640, %3318
  %3644 = fadd fast float %3641, %3319
  %3645 = fadd fast float %3642, %3320
  %3646 = fsub fast float %3548, %3317
  %3647 = fmul fast float %3646, %3636
  %3648 = fadd fast float %3647, %3317
  %3649 = fmul fast float %3636, %3307
  %3650 = fsub fast float %3307, %3649
  %3651 = fmul fast float %3636, %3306
  %3652 = fsub fast float %3306, %3651
  %3653 = fadd fast float %3521, %3316
  %3654 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3655 = fsub fast float %3568, %3315
  %3656 = fmul fast float %3655, %3617
  %3657 = fadd fast float %3656, %3315
  %3658 = fsub fast float %3554, %3314
  %3659 = fmul fast float %3658, %3617
  %3660 = fadd fast float %3659, %3314
  %3661 = call float @dx.op.dot3.f32(i32 55, float %3575, float %3576, float %3577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3663 = extractvalue %dx.types.CBufRet.f32 %3662, 0
  %3664 = extractvalue %dx.types.CBufRet.f32 %3662, 1
  %3665 = fmul fast float %3664, %3661
  %3666 = fadd fast float %3665, %3663
  %3667 = call float @dx.op.unary.f32(i32 7, float %3666)  ; Saturate(value)
  %3668 = bitcast float %3366 to i32
  %3669 = and i32 %3668, 65535
  %3670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3669)  ; LegacyF16ToF32(value)
  %3671 = lshr i32 %3668, 16
  %3672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3671)  ; LegacyF16ToF32(value)
  %3673 = fcmp fast oge float %3670, 0.000000e+00
  %3674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3674, 0
  %3676 = select i1 %3673, float %3670, float %3675
  %3677 = fadd fast float %3676, %3672
  %3678 = fsub fast float %3667, %3305
  %3679 = fmul fast float %3678, %3521
  %3680 = fadd fast float %3679, %3305
  %3681 = fmul fast float %3677, %3521
  %3682 = call float @dx.op.binary.f32(i32 35, float %3304, float %3681)  ; FMax(a,b)
  %3683 = and i32 %3451, 16
  %3684 = icmp eq i32 %3683, 0
  br i1 %3684, label %3707, label %3685

; <label>:3685                                    ; preds = %3624
  %3686 = bitcast float %3372 to i32
  %3687 = add i32 %3369, 0
  %3688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3687, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3689 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3688, %dx.types.Handle %3534, float %3462, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float %3467, float %3469, float undef, float %3471, float %3473, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3690 = extractvalue %dx.types.ResRet.f32 %3689, 0
  %3691 = extractvalue %dx.types.ResRet.f32 %3689, 1
  %3692 = extractvalue %dx.types.ResRet.f32 %3689, 2
  %3693 = and i32 %3686, 65535
  %3694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3693)  ; LegacyF16ToF32(value)
  %3695 = fmul fast float %3690, %3363
  %3696 = fmul fast float %3691, %3364
  %3697 = fmul fast float %3692, %3365
  %3698 = and i32 %3451, 16384
  %3699 = icmp ne i32 %3698, 0
  %3700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3701 = extractvalue %dx.types.CBufRet.f32 %3700, 0
  %3702 = select i1 %3699, float %3701, float 1.000000e+00
  %3703 = fmul fast float %3702, %3694
  %3704 = fmul fast float %3695, %3703
  %3705 = fmul fast float %3696, %3703
  %3706 = fmul fast float %3697, %3703
  br label %3707

; <label>:3707                                    ; preds = %3685, %3624
  %3708 = phi float [ %3704, %3685 ], [ 0.000000e+00, %3624 ]
  %3709 = phi float [ %3705, %3685 ], [ 0.000000e+00, %3624 ]
  %3710 = phi float [ %3706, %3685 ], [ 0.000000e+00, %3624 ]
  %3711 = fsub fast float %3708, %3308
  %3712 = fsub fast float %3709, %3309
  %3713 = fsub fast float %3710, %3310
  %3714 = fmul fast float %3711, %3521
  %3715 = fmul fast float %3712, %3521
  %3716 = fmul fast float %3713, %3521
  %3717 = fadd fast float %3714, %3308
  %3718 = fadd fast float %3715, %3309
  %3719 = fadd fast float %3716, %3310
  br label %3422

; <label>:3720                                    ; preds = %3422
  br label %3721

; <label>:3721                                    ; preds = %3720, %3238
  %3722 = phi float [ 0.000000e+00, %3238 ], [ %3423, %3720 ]
  %3723 = phi float [ %3177, %3238 ], [ %3424, %3720 ]
  %3724 = phi float [ %3156, %3238 ], [ %3425, %3720 ]
  %3725 = phi float [ 0.000000e+00, %3238 ], [ %3426, %3720 ]
  %3726 = phi float [ 0.000000e+00, %3238 ], [ %3427, %3720 ]
  %3727 = phi float [ %3202, %3238 ], [ %3428, %3720 ]
  %3728 = phi float [ %3205, %3238 ], [ %3429, %3720 ]
  %3729 = phi float [ %3208, %3238 ], [ %3430, %3720 ]
  %3730 = phi float [ %3234, %3238 ], [ %3431, %3720 ]
  %3731 = phi float [ %3235, %3238 ], [ %3432, %3720 ]
  %3732 = phi float [ %3236, %3238 ], [ %3433, %3720 ]
  %3733 = phi float [ %3155, %3238 ], [ %3434, %3720 ]
  %3734 = phi float [ %3154, %3238 ], [ %3435, %3720 ]
  %3735 = phi float [ 0.000000e+00, %3238 ], [ %3436, %3720 ]
  %3736 = phi float [ %3153, %3238 ], [ %3437, %3720 ]
  %3737 = phi float [ %3186, %3238 ], [ %3438, %3720 ]
  %3738 = phi float [ %3187, %3238 ], [ %3439, %3720 ]
  %3739 = phi float [ %3188, %3238 ], [ %3440, %3720 ]
  %3740 = call float @dx.op.dot3.f32(i32 55, float %3730, float %3731, float %3732, float %3730, float %3731, float %3732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3741 = call float @dx.op.unary.f32(i32 25, float %3740)  ; Rsqrt(value)
  %3742 = fmul fast float %3741, %3730
  %3743 = fmul fast float %3741, %3731
  %3744 = fmul fast float %3741, %3732
  %3745 = fadd fast float %3735, %936
  %3746 = call float @dx.op.unary.f32(i32 7, float %3745)  ; Saturate(value)
  %3747 = call float @dx.op.dot3.f32(i32 55, float %3742, float %3743, float %3744, float %3742, float %3743, float %3744)  ; Dot3(ax,ay,az,bx,by,bz)
  %3748 = call float @dx.op.unary.f32(i32 25, float %3747)  ; Rsqrt(value)
  %3749 = fmul fast float %3748, %3742
  %3750 = fmul fast float %3748, %3743
  %3751 = fmul fast float %3748, %3744
  br label %3752

; <label>:3752                                    ; preds = %3721, %3144
  %3753 = phi float [ %3749, %3721 ], [ %3234, %3144 ]
  %3754 = phi float [ %3750, %3721 ], [ %3235, %3144 ]
  %3755 = phi float [ %3751, %3721 ], [ %3236, %3144 ]
  %3756 = phi float [ %3727, %3721 ], [ %3202, %3144 ]
  %3757 = phi float [ %3728, %3721 ], [ %3205, %3144 ]
  %3758 = phi float [ %3729, %3721 ], [ %3208, %3144 ]
  %3759 = phi float [ %3737, %3721 ], [ %3186, %3144 ]
  %3760 = phi float [ %3738, %3721 ], [ %3187, %3144 ]
  %3761 = phi float [ %3739, %3721 ], [ %3188, %3144 ]
  %3762 = phi float [ %3736, %3721 ], [ %3153, %3144 ]
  %3763 = phi float [ %3746, %3721 ], [ %936, %3144 ]
  %3764 = phi float [ %3734, %3721 ], [ %3154, %3144 ]
  %3765 = phi float [ %3733, %3721 ], [ %3155, %3144 ]
  %3766 = phi float [ %3726, %3721 ], [ 0.000000e+00, %3144 ]
  %3767 = phi float [ %3725, %3721 ], [ 0.000000e+00, %3144 ]
  %3768 = phi float [ %3722, %3721 ], [ 0.000000e+00, %3144 ]
  %3769 = phi float [ %3723, %3721 ], [ %3177, %3144 ]
  %3770 = phi float [ %3724, %3721 ], [ %3156, %3144 ]
  %3771 = fadd fast float %3762, 0xBFB99999A0000000
  %3772 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3773 = fmul fast float %3772, 0x3FF1C71C80000000
  %3774 = call float @dx.op.binary.f32(i32 36, float %3762, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3775 = fsub fast float 1.000000e+00, %3773
  %3776 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3777 = fmul fast float %3776, %3759
  %3778 = fmul fast float %3776, %3760
  %3779 = fmul fast float %3776, %3761
  %3780 = call float @dx.op.unary.f32(i32 7, float %3777)  ; Saturate(value)
  %3781 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3782 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3783 = fmul fast float %3773, %3759
  %3784 = fmul fast float %3773, %3760
  %3785 = fmul fast float %3773, %3761
  %3786 = fadd fast float %3783, %3774
  %3787 = fadd fast float %3784, %3774
  %3788 = fadd fast float %3785, %3774
  %3789 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3790 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3791 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  %3792 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.i32 %3793, 3
  %3795 = and i32 %3794, 8
  %3796 = icmp ne i32 %3795, 0
  %3797 = call float @dx.op.binary.f32(i32 35, float %3780, float %3759)  ; FMax(a,b)
  %3798 = call float @dx.op.binary.f32(i32 35, float %3781, float %3759)  ; FMax(a,b)
  %3799 = call float @dx.op.binary.f32(i32 35, float %3782, float %3759)  ; FMax(a,b)
  %3800 = call float @dx.op.dot3.f32(i32 55, float %3780, float %3781, float %3782, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3801 = select i1 %220, float %3759, float %3780
  %3802 = select i1 %220, float %3800, float %3781
  %3803 = select i1 %220, float 1.000000e+00, float %3782
  %3804 = select i1 %3796, float %3797, float %3801
  %3805 = select i1 %3796, float %3798, float %3802
  %3806 = select i1 %3796, float %3799, float %3803
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.CBufRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.CBufRet.f32 %3807, 2
  %3811 = fadd fast float %3808, %168
  %3812 = fadd fast float %3809, %169
  %3813 = fadd fast float %3810, %170
  %3814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3815 = extractvalue %dx.types.CBufRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.CBufRet.f32 %3814, 1
  %3817 = fsub fast float %3811, %3815
  %3818 = fsub fast float %3812, %3816
  %3819 = fmul fast float %3817, %3817
  %3820 = fmul fast float %3818, %3818
  %3821 = fadd fast float %3819, %3820
  %3822 = call float @dx.op.unary.f32(i32 24, float %3821)  ; Sqrt(value)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3814, 2
  %3824 = fcmp fast olt float %3822, %3823
  br i1 %3824, label %3825, label %3892

; <label>:3825                                    ; preds = %3752
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 0
  %3828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.f32 %3828, 0
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.CBufRet.f32 %3826, 1
  %3833 = extractvalue %dx.types.CBufRet.f32 %3828, 1
  %3834 = extractvalue %dx.types.CBufRet.f32 %3830, 1
  %3835 = extractvalue %dx.types.CBufRet.f32 %3826, 3
  %3836 = extractvalue %dx.types.CBufRet.f32 %3828, 3
  %3837 = extractvalue %dx.types.CBufRet.f32 %3830, 3
  %3838 = fadd fast float %3835, %3811
  %3839 = fadd fast float %3836, %3812
  %3840 = fadd fast float %3837, %3813
  %3841 = fmul fast float %3838, %3827
  %3842 = call float @dx.op.tertiary.f32(i32 46, float %3839, float %3829, float %3841)  ; FMad(a,b,c)
  %3843 = call float @dx.op.tertiary.f32(i32 46, float %3840, float %3831, float %3842)  ; FMad(a,b,c)
  %3844 = fmul fast float %3838, %3832
  %3845 = call float @dx.op.tertiary.f32(i32 46, float %3839, float %3833, float %3844)  ; FMad(a,b,c)
  %3846 = call float @dx.op.tertiary.f32(i32 46, float %3840, float %3834, float %3845)  ; FMad(a,b,c)
  %3847 = fsub fast float %3843, %3835
  %3848 = fsub fast float %3846, %3836
  %3849 = fsub fast float %3847, %3815
  %3850 = fadd fast float %3849, %3823
  %3851 = fsub fast float %3848, %3816
  %3852 = fadd fast float %3851, %3823
  %3853 = extractvalue %dx.types.CBufRet.f32 %3814, 3
  %3854 = fmul fast float %3850, %3853
  %3855 = fmul fast float %3852, %3853
  %3856 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3857 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  %3858 = fsub fast float 1.000000e+00, %3856
  %3859 = fsub fast float 1.000000e+00, %3857
  %3860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %3858, float %3859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = fcmp fast ugt float %3861, 0.000000e+00
  br i1 %3862, label %3863, label %4166

; <label>:3863                                    ; preds = %3825
  %3864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.f32 %3864, 2
  %3866 = fmul fast float %3865, %3861
  %3867 = extractvalue %dx.types.CBufRet.f32 %3864, 3
  %3868 = fadd fast float %3867, %3866
  %3869 = extractvalue %dx.types.CBufRet.f32 %3830, 2
  %3870 = fadd fast float %3868, %3837
  %3871 = fmul fast float %3843, %3831
  %3872 = call float @dx.op.tertiary.f32(i32 46, float %3846, float %3834, float %3871)  ; FMad(a,b,c)
  %3873 = call float @dx.op.tertiary.f32(i32 46, float %3870, float %3869, float %3872)  ; FMad(a,b,c)
  %3874 = fsub fast float %3873, %3837
  %3875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3875, 2
  %3877 = fsub fast float %3874, %3876
  %3878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %3858, float %3859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3879 = extractvalue %dx.types.ResRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.ResRet.f32 %3878, 1
  %3881 = extractvalue %dx.types.ResRet.f32 %3878, 2
  %3882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %3858, float %3859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3883 = extractvalue %dx.types.ResRet.f32 %3882, 0
  %3884 = extractvalue %dx.types.ResRet.f32 %3882, 1
  %3885 = extractvalue %dx.types.ResRet.f32 %3882, 2
  %3886 = fadd fast float %3883, %3879
  %3887 = fmul fast float %3886, 0x3F847AE140000000
  %3888 = fadd fast float %3884, %3880
  %3889 = fmul fast float %3888, 0x3F847AE140000000
  %3890 = fadd fast float %3885, %3881
  %3891 = fmul fast float %3890, 0x3F847AE140000000
  br label %4166

; <label>:3892                                    ; preds = %3752
  %3893 = and i32 %199, 1
  %3894 = icmp eq i32 %3893, 0
  br i1 %3894, label %4166, label %3895

; <label>:3895                                    ; preds = %3892
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3898, 0
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.CBufRet.f32 %3896, 1
  %3903 = extractvalue %dx.types.CBufRet.f32 %3898, 1
  %3904 = extractvalue %dx.types.CBufRet.f32 %3900, 1
  %3905 = extractvalue %dx.types.CBufRet.f32 %3896, 3
  %3906 = extractvalue %dx.types.CBufRet.f32 %3898, 3
  %3907 = extractvalue %dx.types.CBufRet.f32 %3900, 3
  %3908 = fadd fast float %3905, %3811
  %3909 = fadd fast float %3906, %3812
  %3910 = fadd fast float %3907, %3813
  %3911 = fmul fast float %3908, %3897
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %3909, float %3899, float %3911)  ; FMad(a,b,c)
  %3913 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3901, float %3912)  ; FMad(a,b,c)
  %3914 = fmul fast float %3908, %3902
  %3915 = call float @dx.op.tertiary.f32(i32 46, float %3909, float %3903, float %3914)  ; FMad(a,b,c)
  %3916 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3904, float %3915)  ; FMad(a,b,c)
  %3917 = fsub fast float %3913, %3905
  %3918 = fsub fast float %3916, %3906
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.CBufRet.f32 %3919, 2
  %3923 = extractvalue %dx.types.CBufRet.f32 %3919, 3
  %3924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3924, 3
  %3926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.i32 %3926, 0
  %3928 = extractvalue %dx.types.CBufRet.i32 %3926, 1
  %3929 = udiv i32 %3928, %3927
  %3930 = fsub fast float %3917, %3920
  %3931 = fsub fast float %3918, %3921
  %3932 = call float @dx.op.binary.f32(i32 35, float %3930, float 0.000000e+00)  ; FMax(a,b)
  %3933 = call float @dx.op.binary.f32(i32 35, float %3931, float 0.000000e+00)  ; FMax(a,b)
  %3934 = call float @dx.op.binary.f32(i32 36, float %3932, float %3922)  ; FMin(a,b)
  %3935 = call float @dx.op.binary.f32(i32 36, float %3933, float %3923)  ; FMin(a,b)
  %3936 = add i32 %3927, -1
  %3937 = add i32 %3929, -1
  %3938 = fmul fast float %3934, %3925
  %3939 = fmul fast float %3935, %3925
  %3940 = fptoui float %3938 to i32
  %3941 = fptoui float %3939 to i32
  %3942 = call i32 @dx.op.binary.i32(i32 40, i32 %3940, i32 %3936)  ; UMin(a,b)
  %3943 = call i32 @dx.op.binary.i32(i32 40, i32 %3941, i32 %3937)  ; UMin(a,b)
  %3944 = mul i32 %3943, %3927
  %3945 = add i32 %3944, %3942
  %3946 = shl i32 %3945, 2
  %3947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.i32 %3947, 0
  %3949 = icmp eq i32 %3948, -1
  br i1 %3949, label %4166, label %3950

; <label>:3950                                    ; preds = %3895
  %3951 = mul i32 %3948, 148
  %3952 = add i32 %3951, 4
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = add i32 %3951, 8
  %3956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = add i32 %3951, 36
  %3959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = add i32 %3951, 60
  %3962 = add i32 %3951, 92
  %3963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.i32 %3963, 0
  %3965 = add i32 %3951, 116
  %3966 = fsub fast float %3917, %3954
  %3967 = fsub fast float %3918, %3957
  %3968 = fmul fast float %3925, %3966
  %3969 = fmul fast float %3925, %3967
  %3970 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3971 = call float @dx.op.unary.f32(i32 7, float %3969)  ; Saturate(value)
  %3972 = fsub fast float 1.000000e+00, %3971
  %3973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3974 = extractvalue %dx.types.CBufRet.f32 %3973, 2
  %3975 = call float @dx.op.unary.f32(i32 83, float %3970)  ; DerivCoarseX(value)
  %3976 = call float @dx.op.unary.f32(i32 83, float %3972)  ; DerivCoarseX(value)
  %3977 = call float @dx.op.unary.f32(i32 84, float %3970)  ; DerivCoarseY(value)
  %3978 = call float @dx.op.unary.f32(i32 84, float %3972)  ; DerivCoarseY(value)
  %3979 = fmul fast float %3975, %3974
  %3980 = fmul fast float %3976, %3974
  %3981 = fmul fast float %3977, %3974
  %3982 = fmul fast float %3978, %3974
  %3983 = call float @dx.op.dot2.f32(i32 54, float %3981, float %3982, float %3981, float %3982)  ; Dot2(ax,ay,bx,by)
  %3984 = call float @dx.op.dot2.f32(i32 54, float %3979, float %3980, float %3979, float %3980)  ; Dot2(ax,ay,bx,by)
  %3985 = call float @dx.op.binary.f32(i32 35, float %3984, float %3983)  ; FMax(a,b)
  %3986 = call float @dx.op.unary.f32(i32 23, float %3985)  ; Log(value)
  %3987 = fmul fast float %3986, 5.000000e-01
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 1
  %3990 = fadd fast float %3989, %3987
  %3991 = call float @dx.op.binary.f32(i32 35, float %3990, float 0.000000e+00)  ; FMax(a,b)
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 3
  %3994 = fadd fast float %3993, %3991
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 3
  %3997 = fadd fast float %3994, %3996
  %3998 = add i32 %3964, 0
  %3999 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3998, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4000 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3999, i32 0)  ; GetDimensions(handle,mipLevel)
  %4001 = extractvalue %dx.types.Dimensions %4000, 0
  %4002 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4001)  ; FirstbitLo(value)
  %4003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4004 = extractvalue %dx.types.CBufRet.i32 %4003, 1
  %4005 = sub nsw i32 %4004, %4002
  %4006 = sitofp i32 %4005 to float
  %4007 = fsub fast float %3997, %4006
  %4008 = call float @dx.op.binary.f32(i32 35, float %4007, float 0.000000e+00)  ; FMax(a,b)
  %4009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3999, %dx.types.Handle %28, float %3970, float %3972, float %3960, float undef, i32 0, i32 0, i32 undef, float %4008)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = fcmp ule float %4010, 0x3FE0101020000000
  %4012 = extractvalue %dx.types.CBufRet.i32 %4003, 0
  %4013 = and i32 %4012, 128
  %4014 = icmp ne i32 %4013, 0
  %4015 = and i1 %4011, %4014
  br i1 %4015, label %4166, label %4016

; <label>:4016                                    ; preds = %3950
  %4017 = add i32 %3951, 20
  %4018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.f32 %4018, 0
  %4020 = add i32 %3951, 24
  %4021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4020, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = add i32 %3951, 40
  %4024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4023, i32 undef)  ; BufferLoad(srv,index,wot)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = add i32 %3951, 96
  %4027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4026, i32 undef)  ; BufferLoad(srv,index,wot)
  %4028 = extractvalue %dx.types.ResRet.i32 %4027, 0
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 2
  %4031 = fmul fast float %4030, %3970
  %4032 = fmul fast float %4030, %3972
  %4033 = extractvalue %dx.types.CBufRet.f32 %4029, 3
  %4034 = fadd fast float %4031, %4033
  %4035 = fadd fast float %4032, %4033
  %4036 = add i32 %4028, 0
  %4037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4036, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4038 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4037, i32 0)  ; GetDimensions(handle,mipLevel)
  %4039 = extractvalue %dx.types.Dimensions %4038, 0
  %4040 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4039)  ; FirstbitLo(value)
  %4041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4042 = extractvalue %dx.types.CBufRet.i32 %4041, 1
  %4043 = sub nsw i32 %4042, %4040
  %4044 = sitofp i32 %4043 to float
  %4045 = fsub fast float %3994, %4044
  %4046 = call float @dx.op.binary.f32(i32 35, float %4045, float 0.000000e+00)  ; FMax(a,b)
  %4047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4037, %dx.types.Handle %28, float %4034, float %4035, float %4025, float undef, i32 0, i32 0, i32 undef, float %4046)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = fmul fast float %4048, %4019
  %4050 = fadd fast float %4049, %4022
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4054 = extractvalue %dx.types.CBufRet.f32 %4051, 2
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 3
  %4057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.f32 %4057, 3
  %4059 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4060 = fadd fast float %4056, %3917
  %4061 = fadd fast float %4058, %3918
  %4062 = fadd fast float %4050, %4059
  %4063 = fmul fast float %4060, %4052
  %4064 = call float @dx.op.tertiary.f32(i32 46, float %4061, float %4053, float %4063)  ; FMad(a,b,c)
  %4065 = call float @dx.op.tertiary.f32(i32 46, float %4062, float %4054, float %4064)  ; FMad(a,b,c)
  %4066 = fsub fast float %4065, %4059
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 2
  %4069 = fsub fast float %4066, %4068
  %4070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.i32 %4070, 0
  %4072 = call i32 @dx.op.binary.i32(i32 40, i32 %3948, i32 %4071)  ; UMin(a,b)
  %4073 = mul i32 %4072, 36
  %4074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.i32 %4074, 0
  %4076 = add i32 %4073, 4
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = fmul fast float %4078, %3970
  %4080 = fmul fast float %4078, %3972
  %4081 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4082 = fadd fast float %4079, %4081
  %4083 = fadd fast float %4080, %4081
  %4084 = icmp eq i32 %4075, 0
  br i1 %4084, label %4153, label %4085

; <label>:4085                                    ; preds = %4016
  br label %4086

; <label>:4086                                    ; preds = %4143, %4085
  %4087 = phi float [ %4144, %4143 ], [ 0.000000e+00, %4085 ]
  %4088 = phi float [ %4145, %4143 ], [ 0.000000e+00, %4085 ]
  %4089 = phi float [ %4146, %4143 ], [ 0.000000e+00, %4085 ]
  %4090 = phi float [ %4147, %4143 ], [ 0.000000e+00, %4085 ]
  %4091 = phi float [ %4148, %4143 ], [ 0.000000e+00, %4085 ]
  %4092 = phi float [ %4149, %4143 ], [ 0.000000e+00, %4085 ]
  %4093 = phi i32 [ %4150, %4143 ], [ 0, %4085 ]
  %4094 = shl i32 %4093, 2
  %4095 = add i32 %3961, %4094
  %4096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4095, i32 undef)  ; BufferLoad(srv,index,wot)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = add i32 %3965, %4094
  %4099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4098, i32 undef)  ; BufferLoad(srv,index,wot)
  %4100 = extractvalue %dx.types.ResRet.i32 %4099, 0
  %4101 = add i32 %4100, 0
  %4102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4101, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4103 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4102, i32 0)  ; GetDimensions(handle,mipLevel)
  %4104 = extractvalue %dx.types.Dimensions %4103, 0
  %4105 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4104)  ; FirstbitLo(value)
  %4106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.i32 %4106, 1
  %4108 = sub nsw i32 %4107, %4105
  %4109 = sitofp i32 %4108 to float
  %4110 = fsub fast float %3994, %4109
  %4111 = call float @dx.op.binary.f32(i32 35, float %4110, float 0.000000e+00)  ; FMax(a,b)
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4102, %dx.types.Handle %28, float %4082, float %4083, float %4097, float undef, i32 0, i32 0, i32 undef, float %4111)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = fcmp fast ogt float %4113, 0.000000e+00
  br i1 %4114, label %4115, label %4143

; <label>:4115                                    ; preds = %4086
  %4116 = add i32 %4076, %4094
  %4117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.i32 %4117, 0
  %4119 = and i32 %4118, 32767
  %4120 = mul nuw nsw i32 %4119, 928
  %4121 = add nuw nsw i32 %4120, 48
  %4122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4126 = add nuw nsw i32 %4120, 60
  %4127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4126, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.ResRet.f32 %4127, 1
  %4130 = extractvalue %dx.types.ResRet.f32 %4127, 2
  %4131 = fmul fast float %4123, %4113
  %4132 = fmul fast float %4124, %4113
  %4133 = fmul fast float %4125, %4113
  %4134 = fadd fast float %4131, %4087
  %4135 = fadd fast float %4132, %4088
  %4136 = fadd fast float %4133, %4089
  %4137 = fmul fast float %4128, %4113
  %4138 = fmul fast float %4129, %4113
  %4139 = fmul fast float %4130, %4113
  %4140 = fadd fast float %4137, %4090
  %4141 = fadd fast float %4138, %4091
  %4142 = fadd fast float %4139, %4092
  br label %4143

; <label>:4143                                    ; preds = %4115, %4086
  %4144 = phi float [ %4134, %4115 ], [ %4087, %4086 ]
  %4145 = phi float [ %4135, %4115 ], [ %4088, %4086 ]
  %4146 = phi float [ %4136, %4115 ], [ %4089, %4086 ]
  %4147 = phi float [ %4140, %4115 ], [ %4090, %4086 ]
  %4148 = phi float [ %4141, %4115 ], [ %4091, %4086 ]
  %4149 = phi float [ %4142, %4115 ], [ %4092, %4086 ]
  %4150 = add nuw i32 %4093, 1
  %4151 = icmp eq i32 %4150, %4075
  br i1 %4151, label %4152, label %4086

; <label>:4152                                    ; preds = %4143
  br label %4153

; <label>:4153                                    ; preds = %4152, %4016
  %4154 = phi float [ 0.000000e+00, %4016 ], [ %4144, %4152 ]
  %4155 = phi float [ 0.000000e+00, %4016 ], [ %4145, %4152 ]
  %4156 = phi float [ 0.000000e+00, %4016 ], [ %4146, %4152 ]
  %4157 = phi float [ 0.000000e+00, %4016 ], [ %4147, %4152 ]
  %4158 = phi float [ 0.000000e+00, %4016 ], [ %4148, %4152 ]
  %4159 = phi float [ 0.000000e+00, %4016 ], [ %4149, %4152 ]
  %4160 = fadd fast float %4157, %4154
  %4161 = fmul fast float %4160, 0x3F847AE140000000
  %4162 = fadd fast float %4158, %4155
  %4163 = fmul fast float %4162, 0x3F847AE140000000
  %4164 = fadd fast float %4159, %4156
  %4165 = fmul fast float %4164, 0x3F847AE140000000
  br label %4166

; <label>:4166                                    ; preds = %4153, %3950, %3895, %3892, %3863, %3825
  %4167 = phi float [ %3877, %3863 ], [ -1.310720e+05, %3825 ], [ %4069, %4153 ], [ -1.310720e+05, %3895 ], [ -1.310720e+05, %3950 ], [ -1.310720e+05, %3892 ]
  %4168 = phi float [ %3887, %3863 ], [ 0.000000e+00, %3825 ], [ %4161, %4153 ], [ 0.000000e+00, %3895 ], [ 0.000000e+00, %3950 ], [ 0.000000e+00, %3892 ]
  %4169 = phi float [ %3889, %3863 ], [ 0.000000e+00, %3825 ], [ %4163, %4153 ], [ 0.000000e+00, %3895 ], [ 0.000000e+00, %3950 ], [ 0.000000e+00, %3892 ]
  %4170 = phi float [ %3891, %3863 ], [ 0.000000e+00, %3825 ], [ %4165, %4153 ], [ 0.000000e+00, %3895 ], [ 0.000000e+00, %3950 ], [ 0.000000e+00, %3892 ]
  %4171 = phi i1 [ true, %3863 ], [ false, %3825 ], [ true, %4153 ], [ false, %3895 ], [ false, %3950 ], [ false, %3892 ]
  %4172 = and i32 %199, 3
  %4173 = icmp eq i32 %4172, 1
  %4174 = select i1 %4173, float 1.000000e+00, float 0.000000e+00
  %4175 = fsub fast float %4167, %170
  %4176 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4177 = select i1 %4171, float %4176, float 1.000000e+00
  %4178 = fmul fast float %4177, %4174
  %4179 = icmp eq i32 %4172, 3
  %4180 = select i1 %4179, float 1.000000e+00, float %4178
  %4181 = call float @dx.op.binary.f32(i32 35, float %3768, float %4180)  ; FMax(a,b)
  %4182 = fcmp fast olt float %4180, 1.000000e+00
  %4183 = fcmp uge float %51, 0.000000e+00
  %4184 = and i1 %4183, %4182
  br i1 %4184, label %4185, label %4195

; <label>:4185                                    ; preds = %4166
  %4186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %51, float %52, float %53, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.ResRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.ResRet.f32 %4186, 2
  %4190 = fadd fast float %4187, %4181
  %4191 = fcmp ule float %50, 0.000000e+00
  %4192 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4193 = select i1 %4191, float %4192, float 1.000000e+00
  %4194 = fmul fast float %4193, %4189
  br label %4195

; <label>:4195                                    ; preds = %4185, %4166
  %4196 = phi float [ %4190, %4185 ], [ %4181, %4166 ]
  %4197 = phi float [ %4188, %4185 ], [ 0.000000e+00, %4166 ]
  %4198 = phi float [ %4194, %4185 ], [ 0.000000e+00, %4166 ]
  %4199 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4200 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  %4201 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  %4202 = fcmp fast une float %4200, 0.000000e+00
  %4203 = fcmp fast une float %4201, 0.000000e+00
  %4204 = or i1 %4202, %4203
  br i1 %4204, label %4205, label %4764

; <label>:4205                                    ; preds = %4195
  br i1 %4202, label %4206, label %4479

; <label>:4206                                    ; preds = %4205
  %4207 = call float @dx.op.unary.f32(i32 23, float %3765)  ; Log(value)
  %4208 = fmul fast float %4207, 4.000000e+00
  %4209 = call float @dx.op.unary.f32(i32 21, float %4208)  ; Exp(value)
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = fmul fast float %4211, %38
  %4213 = fmul fast float %4211, %39
  %4214 = fmul fast float %4211, %40
  %4215 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4216 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %4217 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %4218 = call float @dx.op.unary.f32(i32 23, float %4215)  ; Log(value)
  %4219 = call float @dx.op.unary.f32(i32 23, float %4216)  ; Log(value)
  %4220 = call float @dx.op.unary.f32(i32 23, float %4217)  ; Log(value)
  %4221 = fmul fast float %4218, 4.000000e+00
  %4222 = fmul fast float %4219, 4.000000e+00
  %4223 = fmul fast float %4220, 4.000000e+00
  %4224 = call float @dx.op.unary.f32(i32 21, float %4221)  ; Exp(value)
  %4225 = call float @dx.op.unary.f32(i32 21, float %4222)  ; Exp(value)
  %4226 = call float @dx.op.unary.f32(i32 21, float %4223)  ; Exp(value)
  %4227 = fadd fast float %4225, %4224
  %4228 = fadd fast float %4227, %4226
  %4229 = fdiv fast float 1.000000e+00, %4228
  %4230 = fmul fast float %4229, %4224
  %4231 = fcmp fast ogt float %47, 0.000000e+00
  %4232 = fcmp fast ogt float %48, 0.000000e+00
  %4233 = fcmp fast ogt float %49, 0.000000e+00
  %4234 = fcmp fast olt float %47, 0.000000e+00
  %4235 = fcmp fast olt float %48, 0.000000e+00
  %4236 = fcmp fast olt float %49, 0.000000e+00
  %4237 = zext i1 %4231 to i32
  %4238 = zext i1 %4232 to i32
  %4239 = zext i1 %4233 to i32
  %4240 = zext i1 %4234 to i32
  %4241 = zext i1 %4235 to i32
  %4242 = zext i1 %4236 to i32
  %4243 = sub nsw i32 %4237, %4240
  %4244 = sub nsw i32 %4238, %4241
  %4245 = sub nsw i32 %4239, %4242
  %4246 = call float @dx.op.unary.f32(i32 83, float %4212)  ; DerivCoarseX(value)
  %4247 = call float @dx.op.unary.f32(i32 83, float %4213)  ; DerivCoarseX(value)
  %4248 = call float @dx.op.unary.f32(i32 83, float %4214)  ; DerivCoarseX(value)
  %4249 = call float @dx.op.unary.f32(i32 84, float %4212)  ; DerivCoarseY(value)
  %4250 = call float @dx.op.unary.f32(i32 84, float %4213)  ; DerivCoarseY(value)
  %4251 = call float @dx.op.unary.f32(i32 84, float %4214)  ; DerivCoarseY(value)
  %4252 = fcmp fast ole float %231, %4230
  %4253 = fmul fast float %4229, %4227
  %4254 = fcmp fast ole float %231, %4253
  %4255 = select i1 %4254, float %4214, float %4212
  %4256 = select i1 %4254, float %4212, float %4213
  %4257 = select i1 %4252, float %4213, float %4255
  %4258 = select i1 %4252, float %4214, float %4256
  %4259 = select i1 %4254, float %4248, float %4246
  %4260 = select i1 %4254, float %4246, float %4247
  %4261 = select i1 %4252, float %4247, float %4259
  %4262 = select i1 %4252, float %4248, float %4260
  %4263 = select i1 %4254, float %4251, float %4249
  %4264 = select i1 %4254, float %4249, float %4250
  %4265 = select i1 %4252, float %4250, float %4263
  %4266 = select i1 %4252, float %4251, float %4264
  %4267 = call float @dx.op.unary.f32(i32 27, float %4257)  ; Round_ni(value)
  %4268 = call float @dx.op.unary.f32(i32 27, float %4258)  ; Round_ni(value)
  %4269 = fptosi float %4267 to i32
  %4270 = fptosi float %4268 to i32
  %4271 = xor i32 %4270, %4269
  %4272 = sitofp i32 %4271 to float
  %4273 = fptosi float %4272 to i32
  %4274 = sitofp i32 %4273 to float
  %4275 = fmul fast float %4274, 0x3FE3C6EF40000000
  %4276 = frem fast float %4267, 2.560000e+02
  %4277 = frem fast float %4268, 2.560000e+02
  %4278 = fptoui float %4276 to i32
  %4279 = fptoui float %4277 to i32
  %4280 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4278, i32 %4279, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = extractvalue %dx.types.ResRet.f32 %4280, 1
  %4283 = extractvalue %dx.types.ResRet.f32 %4280, 2
  %4284 = fadd fast float %4281, %4275
  %4285 = fadd fast float %4282, %4275
  %4286 = fadd fast float %4283, %4275
  %4287 = call float @dx.op.unary.f32(i32 22, float %4284)  ; Frc(value)
  %4288 = call float @dx.op.unary.f32(i32 22, float %4285)  ; Frc(value)
  %4289 = call float @dx.op.unary.f32(i32 22, float %4286)  ; Frc(value)
  %4290 = fmul fast float %4289, 0x401921FB60000000
  %4291 = call float @dx.op.unary.f32(i32 13, float %4290)  ; Sin(value)
  %4292 = call float @dx.op.unary.f32(i32 12, float %4290)  ; Cos(value)
  %4293 = fsub fast float -0.000000e+00, %4292
  %4294 = fmul fast float %4292, %4257
  %4295 = call float @dx.op.tertiary.f32(i32 46, float %4291, float %4258, float %4294)  ; FMad(a,b,c)
  %4296 = fmul fast float %4291, %4257
  %4297 = call float @dx.op.tertiary.f32(i32 46, float %4293, float %4258, float %4296)  ; FMad(a,b,c)
  %4298 = fadd fast float %4295, %4287
  %4299 = fadd fast float %4297, %4288
  %4300 = extractvalue %dx.types.CBufRet.f32 %4210, 3
  %4301 = bitcast float %4300 to i32
  %4302 = icmp eq i32 %4301, 0
  br i1 %4302, label %4341, label %4303

; <label>:4303                                    ; preds = %4206
  %4304 = add i32 %4301, 0
  %4305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4306 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4305, %dx.types.Handle %82, float %4298, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4261, float %4262, float undef, float %4265, float %4266, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4307 = extractvalue %dx.types.ResRet.f32 %4306, 0
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4310 = extractvalue %dx.types.CBufRet.f32 %4308, 2
  %4311 = fsub fast float 1.000000e+00, %4200
  %4312 = call float @dx.op.binary.f32(i32 35, float %4311, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4313 = bitcast float %4200 to i32
  %4314 = sitofp i32 %4313 to float
  %4315 = fadd fast float %4314, 0xC1CFBF8940000000
  %4316 = fmul fast float %4310, %4315
  %4317 = fadd fast float %4316, 0x41CFBF8940000000
  %4318 = fptosi float %4317 to i32
  %4319 = bitcast i32 %4318 to float
  %4320 = bitcast float %4312 to i32
  %4321 = sitofp i32 %4320 to float
  %4322 = fadd fast float %4321, 0xC1CFBF8940000000
  %4323 = fmul fast float %4322, %4310
  %4324 = fadd fast float %4323, 0x41CFBF8940000000
  %4325 = fptosi float %4324 to i32
  %4326 = bitcast i32 %4325 to float
  %4327 = fmul fast float %4319, %4309
  %4328 = fmul fast float %4326, %4309
  %4329 = fsub fast float %4312, %4327
  %4330 = fadd fast float %4328, %4312
  %4331 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4332 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4333 = fsub fast float %4307, %4331
  %4334 = fsub fast float %4332, %4331
  %4335 = bitcast float %4334 to i32
  %4336 = sub nsw i32 2129859010, %4335
  %4337 = bitcast i32 %4336 to float
  %4338 = fmul fast float %4337, %4333
  %4339 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4340 = fcmp fast olt float %4339, 0x3F70101020000000
  br i1 %4340, label %4479, label %4341

; <label>:4341                                    ; preds = %4303, %4206
  %4342 = phi float [ %4339, %4303 ], [ %4200, %4206 ]
  %4343 = fmul fast float %4342, %4209
  %4344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.i32 %4344, 1
  %4346 = extractvalue %dx.types.CBufRet.i32 %4344, 0
  %4347 = add i32 %4346, 0
  %4348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4349 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4348, %dx.types.Handle %81, float %4298, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4261, float %4262, float undef, float %4265, float %4266, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.ResRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.ResRet.f32 %4349, 2
  %4353 = extractvalue %dx.types.ResRet.f32 %4349, 3
  %4354 = and i32 %4345, 255
  %4355 = uitofp i32 %4354 to float
  %4356 = lshr i32 %4345, 8
  %4357 = and i32 %4356, 255
  %4358 = uitofp i32 %4357 to float
  %4359 = fmul fast float %4353, %4355
  %4360 = fadd fast float %4359, %4358
  %4361 = fmul fast float %4360, 0x3F70101000000000
  %4362 = fadd fast float %4361, 0xBFB99999A0000000
  %4363 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  %4364 = fmul fast float %4363, 0x3FF1C71C80000000
  %4365 = call float @dx.op.binary.f32(i32 36, float %4361, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4366 = fsub fast float 1.000000e+00, %4364
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = fmul fast float %4367, %4350
  %4369 = fmul fast float %4367, %4351
  %4370 = fmul fast float %4367, %4352
  %4371 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4372 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4373 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4374 = fmul fast float %4364, %4350
  %4375 = fmul fast float %4364, %4351
  %4376 = fmul fast float %4364, %4352
  %4377 = fadd fast float %4374, %4365
  %4378 = fadd fast float %4375, %4365
  %4379 = fadd fast float %4376, %4365
  %4380 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4381 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4382 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.i32 %4383, 3
  %4385 = extractvalue %dx.types.CBufRet.i32 %4383, 2
  %4386 = add i32 %4385, 0
  %4387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4388 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4387, %dx.types.Handle %81, float %4298, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4261, float %4262, float undef, float %4265, float %4266, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.ResRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.ResRet.f32 %4388, 2
  %4392 = extractvalue %dx.types.ResRet.f32 %4388, 3
  %4393 = and i32 %4384, 255
  %4394 = uitofp i32 %4393 to float
  %4395 = lshr i32 %4384, 8
  %4396 = and i32 %4395, 255
  %4397 = uitofp i32 %4396 to float
  %4398 = lshr i32 %4384, 16
  %4399 = and i32 %4398, 255
  %4400 = uitofp i32 %4399 to float
  %4401 = fmul fast float %4400, 0x3F70101000000000
  %4402 = fmul fast float %4389, %4394
  %4403 = fadd fast float %4402, %4397
  %4404 = fmul fast float %4403, 0x3F70101000000000
  %4405 = fadd fast float %4390, -5.000000e-01
  %4406 = fadd fast float %4392, -5.000000e-01
  %4407 = fmul fast float %4405, %4401
  %4408 = fmul fast float %4406, %4401
  %4409 = fadd fast float %4407, 5.000000e-01
  %4410 = fadd fast float %4408, 5.000000e-01
  %4411 = fmul fast float %4409, 2.000000e+00
  %4412 = fadd fast float %4411, -1.000000e+00
  %4413 = fmul fast float %4410, 2.000000e+00
  %4414 = fadd fast float %4413, -1.000000e+00
  %4415 = fadd fast float %4412, %4414
  %4416 = fmul fast float %4415, 5.000000e-01
  %4417 = fsub fast float %4412, %4414
  %4418 = fmul fast float %4417, 5.000000e-01
  %4419 = call float @dx.op.unary.f32(i32 6, float %4416)  ; FAbs(value)
  %4420 = fsub fast float 1.000000e+00, %4419
  %4421 = call float @dx.op.unary.f32(i32 6, float %4418)  ; FAbs(value)
  %4422 = fsub fast float %4420, %4421
  %4423 = call float @dx.op.dot3.f32(i32 55, float %4416, float %4418, float %4422, float %4416, float %4418, float %4422)  ; Dot3(ax,ay,az,bx,by,bz)
  %4424 = call float @dx.op.unary.f32(i32 25, float %4423)  ; Rsqrt(value)
  %4425 = fmul fast float %4416, %4424
  %4426 = fmul fast float %4418, %4424
  %4427 = select i1 %4254, i32 %4244, i32 %4245
  %4428 = select i1 %4252, i32 %4243, i32 %4427
  %4429 = sitofp i32 %4428 to float
  %4430 = fmul fast float %4422, %4429
  %4431 = fmul fast float %4430, %4424
  %4432 = select i1 %4254, float %4431, float %4426
  %4433 = select i1 %4254, float %4426, float %4431
  %4434 = select i1 %4252, float %4431, float %4425
  %4435 = select i1 %4252, float %4426, float %4432
  %4436 = select i1 %4252, float %4425, float %4433
  %4437 = fsub fast float %4371, %3804
  %4438 = fsub fast float %4372, %3805
  %4439 = fsub fast float %4373, %3806
  %4440 = fmul fast float %4437, %4343
  %4441 = fmul fast float %4438, %4343
  %4442 = fmul fast float %4439, %4343
  %4443 = fadd fast float %4440, %3804
  %4444 = fadd fast float %4441, %3805
  %4445 = fadd fast float %4442, %3806
  %4446 = fsub fast float %4380, %3789
  %4447 = fsub fast float %4381, %3790
  %4448 = fsub fast float %4382, %3791
  %4449 = fmul fast float %4446, %4343
  %4450 = fmul fast float %4447, %4343
  %4451 = fmul fast float %4448, %4343
  %4452 = fadd fast float %4449, %3789
  %4453 = fadd fast float %4450, %3790
  %4454 = fadd fast float %4451, %3791
  %4455 = fadd fast float %4434, %3753
  %4456 = fadd fast float %4435, %3754
  %4457 = fadd fast float %4436, %3755
  %4458 = call float @dx.op.dot3.f32(i32 55, float %4455, float %4456, float %4457, float %4455, float %4456, float %4457)  ; Dot3(ax,ay,az,bx,by,bz)
  %4459 = call float @dx.op.unary.f32(i32 25, float %4458)  ; Rsqrt(value)
  %4460 = fmul fast float %4455, %4459
  %4461 = fmul fast float %4456, %4459
  %4462 = fmul fast float %4457, %4459
  %4463 = fsub fast float %4460, %3753
  %4464 = fsub fast float %4461, %3754
  %4465 = fsub fast float %4462, %3755
  %4466 = fmul fast float %4463, %4343
  %4467 = fmul fast float %4464, %4343
  %4468 = fmul fast float %4465, %4343
  %4469 = fadd fast float %4466, %3753
  %4470 = fadd fast float %4467, %3754
  %4471 = fadd fast float %4468, %3755
  %4472 = call float @dx.op.binary.f32(i32 36, float %3765, float %4391)  ; FMin(a,b)
  %4473 = fsub fast float %4472, %3765
  %4474 = fmul fast float %4473, %4343
  %4475 = fadd fast float %4474, %3765
  %4476 = fsub fast float %4404, %3792
  %4477 = fmul fast float %4476, %4343
  %4478 = fadd fast float %4477, %3792
  br label %4479

; <label>:4479                                    ; preds = %4341, %4303, %4205
  %4480 = phi float [ %4452, %4341 ], [ %3789, %4303 ], [ %3789, %4205 ]
  %4481 = phi float [ %4453, %4341 ], [ %3790, %4303 ], [ %3790, %4205 ]
  %4482 = phi float [ %4454, %4341 ], [ %3791, %4303 ], [ %3791, %4205 ]
  %4483 = phi float [ %4443, %4341 ], [ %3804, %4303 ], [ %3804, %4205 ]
  %4484 = phi float [ %4444, %4341 ], [ %3805, %4303 ], [ %3805, %4205 ]
  %4485 = phi float [ %4445, %4341 ], [ %3806, %4303 ], [ %3806, %4205 ]
  %4486 = phi float [ %4469, %4341 ], [ %3753, %4303 ], [ %3753, %4205 ]
  %4487 = phi float [ %4470, %4341 ], [ %3754, %4303 ], [ %3754, %4205 ]
  %4488 = phi float [ %4471, %4341 ], [ %3755, %4303 ], [ %3755, %4205 ]
  %4489 = phi float [ %4478, %4341 ], [ %3792, %4303 ], [ %3792, %4205 ]
  %4490 = phi float [ %4475, %4341 ], [ %3765, %4303 ], [ %3765, %4205 ]
  br i1 %4203, label %4491, label %4764

; <label>:4491                                    ; preds = %4479
  %4492 = call float @dx.op.unary.f32(i32 23, float %4490)  ; Log(value)
  %4493 = fmul fast float %4492, 4.000000e+00
  %4494 = call float @dx.op.unary.f32(i32 21, float %4493)  ; Exp(value)
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 0
  %4497 = fmul fast float %4496, %38
  %4498 = fmul fast float %4496, %39
  %4499 = fmul fast float %4496, %40
  %4500 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4501 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %4502 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %4503 = call float @dx.op.unary.f32(i32 23, float %4500)  ; Log(value)
  %4504 = call float @dx.op.unary.f32(i32 23, float %4501)  ; Log(value)
  %4505 = call float @dx.op.unary.f32(i32 23, float %4502)  ; Log(value)
  %4506 = fmul fast float %4503, 4.000000e+00
  %4507 = fmul fast float %4504, 4.000000e+00
  %4508 = fmul fast float %4505, 4.000000e+00
  %4509 = call float @dx.op.unary.f32(i32 21, float %4506)  ; Exp(value)
  %4510 = call float @dx.op.unary.f32(i32 21, float %4507)  ; Exp(value)
  %4511 = call float @dx.op.unary.f32(i32 21, float %4508)  ; Exp(value)
  %4512 = fadd fast float %4510, %4509
  %4513 = fadd fast float %4512, %4511
  %4514 = fdiv fast float 1.000000e+00, %4513
  %4515 = fmul fast float %4514, %4509
  %4516 = fcmp fast ogt float %47, 0.000000e+00
  %4517 = fcmp fast ogt float %48, 0.000000e+00
  %4518 = fcmp fast ogt float %49, 0.000000e+00
  %4519 = fcmp fast olt float %47, 0.000000e+00
  %4520 = fcmp fast olt float %48, 0.000000e+00
  %4521 = fcmp fast olt float %49, 0.000000e+00
  %4522 = zext i1 %4516 to i32
  %4523 = zext i1 %4517 to i32
  %4524 = zext i1 %4518 to i32
  %4525 = zext i1 %4519 to i32
  %4526 = zext i1 %4520 to i32
  %4527 = zext i1 %4521 to i32
  %4528 = sub nsw i32 %4522, %4525
  %4529 = sub nsw i32 %4523, %4526
  %4530 = sub nsw i32 %4524, %4527
  %4531 = call float @dx.op.unary.f32(i32 83, float %4497)  ; DerivCoarseX(value)
  %4532 = call float @dx.op.unary.f32(i32 83, float %4498)  ; DerivCoarseX(value)
  %4533 = call float @dx.op.unary.f32(i32 83, float %4499)  ; DerivCoarseX(value)
  %4534 = call float @dx.op.unary.f32(i32 84, float %4497)  ; DerivCoarseY(value)
  %4535 = call float @dx.op.unary.f32(i32 84, float %4498)  ; DerivCoarseY(value)
  %4536 = call float @dx.op.unary.f32(i32 84, float %4499)  ; DerivCoarseY(value)
  %4537 = fcmp fast ole float %231, %4515
  %4538 = fmul fast float %4514, %4512
  %4539 = fcmp fast ole float %231, %4538
  %4540 = select i1 %4539, float %4499, float %4497
  %4541 = select i1 %4539, float %4497, float %4498
  %4542 = select i1 %4537, float %4498, float %4540
  %4543 = select i1 %4537, float %4499, float %4541
  %4544 = select i1 %4539, float %4533, float %4531
  %4545 = select i1 %4539, float %4531, float %4532
  %4546 = select i1 %4537, float %4532, float %4544
  %4547 = select i1 %4537, float %4533, float %4545
  %4548 = select i1 %4539, float %4536, float %4534
  %4549 = select i1 %4539, float %4534, float %4535
  %4550 = select i1 %4537, float %4535, float %4548
  %4551 = select i1 %4537, float %4536, float %4549
  %4552 = call float @dx.op.unary.f32(i32 27, float %4542)  ; Round_ni(value)
  %4553 = call float @dx.op.unary.f32(i32 27, float %4543)  ; Round_ni(value)
  %4554 = fptosi float %4552 to i32
  %4555 = fptosi float %4553 to i32
  %4556 = xor i32 %4555, %4554
  %4557 = sitofp i32 %4556 to float
  %4558 = fptosi float %4557 to i32
  %4559 = sitofp i32 %4558 to float
  %4560 = fmul fast float %4559, 0x3FE3C6EF40000000
  %4561 = frem fast float %4552, 2.560000e+02
  %4562 = frem fast float %4553, 2.560000e+02
  %4563 = fptoui float %4561 to i32
  %4564 = fptoui float %4562 to i32
  %4565 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4563, i32 %4564, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4566 = extractvalue %dx.types.ResRet.f32 %4565, 0
  %4567 = extractvalue %dx.types.ResRet.f32 %4565, 1
  %4568 = extractvalue %dx.types.ResRet.f32 %4565, 2
  %4569 = fadd fast float %4566, %4560
  %4570 = fadd fast float %4567, %4560
  %4571 = fadd fast float %4568, %4560
  %4572 = call float @dx.op.unary.f32(i32 22, float %4569)  ; Frc(value)
  %4573 = call float @dx.op.unary.f32(i32 22, float %4570)  ; Frc(value)
  %4574 = call float @dx.op.unary.f32(i32 22, float %4571)  ; Frc(value)
  %4575 = fmul fast float %4574, 0x401921FB60000000
  %4576 = call float @dx.op.unary.f32(i32 13, float %4575)  ; Sin(value)
  %4577 = call float @dx.op.unary.f32(i32 12, float %4575)  ; Cos(value)
  %4578 = fsub fast float -0.000000e+00, %4577
  %4579 = fmul fast float %4577, %4542
  %4580 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4543, float %4579)  ; FMad(a,b,c)
  %4581 = fmul fast float %4576, %4542
  %4582 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4543, float %4581)  ; FMad(a,b,c)
  %4583 = fadd fast float %4580, %4572
  %4584 = fadd fast float %4582, %4573
  %4585 = extractvalue %dx.types.CBufRet.f32 %4495, 3
  %4586 = bitcast float %4585 to i32
  %4587 = icmp eq i32 %4586, 0
  br i1 %4587, label %4626, label %4588

; <label>:4588                                    ; preds = %4491
  %4589 = add i32 %4586, 0
  %4590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4591 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4590, %dx.types.Handle %82, float %4583, float %4584, float undef, float undef, i32 0, i32 0, i32 undef, float %4546, float %4547, float undef, float %4550, float %4551, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.f32 %4593, 1
  %4595 = extractvalue %dx.types.CBufRet.f32 %4593, 2
  %4596 = fsub fast float 1.000000e+00, %4201
  %4597 = call float @dx.op.binary.f32(i32 35, float %4596, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4598 = bitcast float %4201 to i32
  %4599 = sitofp i32 %4598 to float
  %4600 = fadd fast float %4599, 0xC1CFBF8940000000
  %4601 = fmul fast float %4595, %4600
  %4602 = fadd fast float %4601, 0x41CFBF8940000000
  %4603 = fptosi float %4602 to i32
  %4604 = bitcast i32 %4603 to float
  %4605 = bitcast float %4597 to i32
  %4606 = sitofp i32 %4605 to float
  %4607 = fadd fast float %4606, 0xC1CFBF8940000000
  %4608 = fmul fast float %4607, %4595
  %4609 = fadd fast float %4608, 0x41CFBF8940000000
  %4610 = fptosi float %4609 to i32
  %4611 = bitcast i32 %4610 to float
  %4612 = fmul fast float %4604, %4594
  %4613 = fmul fast float %4611, %4594
  %4614 = fsub fast float %4597, %4612
  %4615 = fadd fast float %4613, %4597
  %4616 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4617 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4618 = fsub fast float %4592, %4616
  %4619 = fsub fast float %4617, %4616
  %4620 = bitcast float %4619 to i32
  %4621 = sub nsw i32 2129859010, %4620
  %4622 = bitcast i32 %4621 to float
  %4623 = fmul fast float %4622, %4618
  %4624 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4625 = fcmp fast olt float %4624, 0x3F70101020000000
  br i1 %4625, label %4764, label %4626

; <label>:4626                                    ; preds = %4588, %4491
  %4627 = phi float [ %4624, %4588 ], [ %4201, %4491 ]
  %4628 = fmul fast float %4627, %4494
  %4629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.i32 %4629, 1
  %4631 = extractvalue %dx.types.CBufRet.i32 %4629, 0
  %4632 = add i32 %4631, 0
  %4633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4634 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4633, %dx.types.Handle %81, float %4583, float %4584, float undef, float undef, i32 0, i32 0, i32 undef, float %4546, float %4547, float undef, float %4550, float %4551, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = extractvalue %dx.types.ResRet.f32 %4634, 1
  %4637 = extractvalue %dx.types.ResRet.f32 %4634, 2
  %4638 = extractvalue %dx.types.ResRet.f32 %4634, 3
  %4639 = and i32 %4630, 255
  %4640 = uitofp i32 %4639 to float
  %4641 = lshr i32 %4630, 8
  %4642 = and i32 %4641, 255
  %4643 = uitofp i32 %4642 to float
  %4644 = fmul fast float %4638, %4640
  %4645 = fadd fast float %4644, %4643
  %4646 = fmul fast float %4645, 0x3F70101000000000
  %4647 = fadd fast float %4646, 0xBFB99999A0000000
  %4648 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4649 = fmul fast float %4648, 0x3FF1C71C80000000
  %4650 = call float @dx.op.binary.f32(i32 36, float %4646, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4651 = fsub fast float 1.000000e+00, %4649
  %4652 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4653 = fmul fast float %4652, %4635
  %4654 = fmul fast float %4652, %4636
  %4655 = fmul fast float %4652, %4637
  %4656 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4657 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4659 = fmul fast float %4649, %4635
  %4660 = fmul fast float %4649, %4636
  %4661 = fmul fast float %4649, %4637
  %4662 = fadd fast float %4659, %4650
  %4663 = fadd fast float %4660, %4650
  %4664 = fadd fast float %4661, %4650
  %4665 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4666 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4667 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.i32 %4668, 3
  %4670 = extractvalue %dx.types.CBufRet.i32 %4668, 2
  %4671 = add i32 %4670, 0
  %4672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4673 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4672, %dx.types.Handle %81, float %4583, float %4584, float undef, float undef, i32 0, i32 0, i32 undef, float %4546, float %4547, float undef, float %4550, float %4551, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 0
  %4675 = extractvalue %dx.types.ResRet.f32 %4673, 1
  %4676 = extractvalue %dx.types.ResRet.f32 %4673, 2
  %4677 = extractvalue %dx.types.ResRet.f32 %4673, 3
  %4678 = and i32 %4669, 255
  %4679 = uitofp i32 %4678 to float
  %4680 = lshr i32 %4669, 8
  %4681 = and i32 %4680, 255
  %4682 = uitofp i32 %4681 to float
  %4683 = lshr i32 %4669, 16
  %4684 = and i32 %4683, 255
  %4685 = uitofp i32 %4684 to float
  %4686 = fmul fast float %4685, 0x3F70101000000000
  %4687 = fmul fast float %4674, %4679
  %4688 = fadd fast float %4687, %4682
  %4689 = fmul fast float %4688, 0x3F70101000000000
  %4690 = fadd fast float %4675, -5.000000e-01
  %4691 = fadd fast float %4677, -5.000000e-01
  %4692 = fmul fast float %4690, %4686
  %4693 = fmul fast float %4691, %4686
  %4694 = fadd fast float %4692, 5.000000e-01
  %4695 = fadd fast float %4693, 5.000000e-01
  %4696 = fmul fast float %4694, 2.000000e+00
  %4697 = fadd fast float %4696, -1.000000e+00
  %4698 = fmul fast float %4695, 2.000000e+00
  %4699 = fadd fast float %4698, -1.000000e+00
  %4700 = fadd fast float %4697, %4699
  %4701 = fmul fast float %4700, 5.000000e-01
  %4702 = fsub fast float %4697, %4699
  %4703 = fmul fast float %4702, 5.000000e-01
  %4704 = call float @dx.op.unary.f32(i32 6, float %4701)  ; FAbs(value)
  %4705 = fsub fast float 1.000000e+00, %4704
  %4706 = call float @dx.op.unary.f32(i32 6, float %4703)  ; FAbs(value)
  %4707 = fsub fast float %4705, %4706
  %4708 = call float @dx.op.dot3.f32(i32 55, float %4701, float %4703, float %4707, float %4701, float %4703, float %4707)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = call float @dx.op.unary.f32(i32 25, float %4708)  ; Rsqrt(value)
  %4710 = fmul fast float %4701, %4709
  %4711 = fmul fast float %4703, %4709
  %4712 = select i1 %4539, i32 %4529, i32 %4530
  %4713 = select i1 %4537, i32 %4528, i32 %4712
  %4714 = sitofp i32 %4713 to float
  %4715 = fmul fast float %4707, %4714
  %4716 = fmul fast float %4715, %4709
  %4717 = select i1 %4539, float %4716, float %4711
  %4718 = select i1 %4539, float %4711, float %4716
  %4719 = select i1 %4537, float %4716, float %4710
  %4720 = select i1 %4537, float %4711, float %4717
  %4721 = select i1 %4537, float %4710, float %4718
  %4722 = fsub fast float %4656, %4483
  %4723 = fsub fast float %4657, %4484
  %4724 = fsub fast float %4658, %4485
  %4725 = fmul fast float %4722, %4628
  %4726 = fmul fast float %4723, %4628
  %4727 = fmul fast float %4724, %4628
  %4728 = fadd fast float %4725, %4483
  %4729 = fadd fast float %4726, %4484
  %4730 = fadd fast float %4727, %4485
  %4731 = fsub fast float %4665, %4480
  %4732 = fsub fast float %4666, %4481
  %4733 = fsub fast float %4667, %4482
  %4734 = fmul fast float %4731, %4628
  %4735 = fmul fast float %4732, %4628
  %4736 = fmul fast float %4733, %4628
  %4737 = fadd fast float %4734, %4480
  %4738 = fadd fast float %4735, %4481
  %4739 = fadd fast float %4736, %4482
  %4740 = fadd fast float %4719, %4486
  %4741 = fadd fast float %4720, %4487
  %4742 = fadd fast float %4721, %4488
  %4743 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4741, float %4742, float %4740, float %4741, float %4742)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = call float @dx.op.unary.f32(i32 25, float %4743)  ; Rsqrt(value)
  %4745 = fmul fast float %4740, %4744
  %4746 = fmul fast float %4741, %4744
  %4747 = fmul fast float %4742, %4744
  %4748 = fsub fast float %4745, %4486
  %4749 = fsub fast float %4746, %4487
  %4750 = fsub fast float %4747, %4488
  %4751 = fmul fast float %4748, %4628
  %4752 = fmul fast float %4749, %4628
  %4753 = fmul fast float %4750, %4628
  %4754 = fadd fast float %4751, %4486
  %4755 = fadd fast float %4752, %4487
  %4756 = fadd fast float %4753, %4488
  %4757 = call float @dx.op.binary.f32(i32 36, float %4490, float %4676)  ; FMin(a,b)
  %4758 = fsub fast float %4757, %4490
  %4759 = fmul fast float %4758, %4628
  %4760 = fadd fast float %4759, %4490
  %4761 = fsub fast float %4689, %4489
  %4762 = fmul fast float %4761, %4628
  %4763 = fadd fast float %4762, %4489
  br label %4764

; <label>:4764                                    ; preds = %4626, %4588, %4479, %4195
  %4765 = phi float [ %4737, %4626 ], [ %4480, %4588 ], [ %4480, %4479 ], [ %3789, %4195 ]
  %4766 = phi float [ %4738, %4626 ], [ %4481, %4588 ], [ %4481, %4479 ], [ %3790, %4195 ]
  %4767 = phi float [ %4739, %4626 ], [ %4482, %4588 ], [ %4482, %4479 ], [ %3791, %4195 ]
  %4768 = phi float [ %4728, %4626 ], [ %4483, %4588 ], [ %4483, %4479 ], [ %3804, %4195 ]
  %4769 = phi float [ %4729, %4626 ], [ %4484, %4588 ], [ %4484, %4479 ], [ %3805, %4195 ]
  %4770 = phi float [ %4730, %4626 ], [ %4485, %4588 ], [ %4485, %4479 ], [ %3806, %4195 ]
  %4771 = phi float [ %4754, %4626 ], [ %4486, %4588 ], [ %4486, %4479 ], [ %3753, %4195 ]
  %4772 = phi float [ %4755, %4626 ], [ %4487, %4588 ], [ %4487, %4479 ], [ %3754, %4195 ]
  %4773 = phi float [ %4756, %4626 ], [ %4488, %4588 ], [ %4488, %4479 ], [ %3755, %4195 ]
  %4774 = phi float [ %4763, %4626 ], [ %4489, %4588 ], [ %4489, %4479 ], [ %3792, %4195 ]
  %4775 = phi float [ %4760, %4626 ], [ %4490, %4588 ], [ %4490, %4479 ], [ %3765, %4195 ]
  %4776 = fcmp fast une float %4199, 0.000000e+00
  %4777 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %168, float %169, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %4778 = call float @dx.op.unary.f32(i32 25, float %4777)  ; Rsqrt(value)
  br i1 %4776, label %4786, label %4779

; <label>:4779                                    ; preds = %4764
  %4780 = fmul fast float %4778, %168
  %4781 = fmul fast float %4778, %169
  %4782 = fmul fast float %4778, %170
  %4783 = fsub fast float -0.000000e+00, %4780
  %4784 = fsub fast float -0.000000e+00, %4781
  %4785 = fsub fast float -0.000000e+00, %4782
  br label %4953

; <label>:4786                                    ; preds = %4764
  %4787 = fmul fast float %168, %4778
  %4788 = fsub fast float -0.000000e+00, %4787
  %4789 = fmul fast float %169, %4778
  %4790 = fsub fast float -0.000000e+00, %4789
  %4791 = fmul fast float %170, %4778
  %4792 = fsub fast float -0.000000e+00, %4791
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4788, float %4790, float %4792, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = fmul fast float %4199, 2.500000e+00
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = fmul fast float %4199, 0x4013FFFFE0000000
  %4797 = fadd fast float %4796, 0xBFFFFFFFE0000000
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4799 = fmul fast float %4199, 0x4004000020000000
  %4800 = fadd fast float %4799, 0xBFF8000040000000
  %4801 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4802 = fmul fast float %3771, 1.000000e+01
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = fmul fast float %4803, 2.000000e+00
  %4805 = fsub fast float 3.000000e+00, %4804
  %4806 = fmul fast float %4803, %4803
  %4807 = fmul fast float %4806, %4805
  %4808 = fsub fast float 1.000000e+00, %4807
  %4809 = fsub fast float 0x3FE3333340000000, %4774
  %4810 = fmul fast float %4809, 0x400AAAAAA0000000
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4812 = fmul fast float %4808, %4811
  %4813 = fmul fast float %4768, 0x3FEA2B8620000000
  %4814 = fmul fast float %4769, 0x3FEA2B8620000000
  %4815 = fmul fast float %4770, 0x3FEA2B8620000000
  %4816 = fadd fast float %4813, 0x3FC81DFBA0000000
  %4817 = fmul fast float %4816, %4768
  %4818 = fadd fast float %4817, 0x3F910E6020000000
  %4819 = fadd fast float %4814, 0x3FC81DFBA0000000
  %4820 = fmul fast float %4819, %4769
  %4821 = fadd fast float %4820, 0x3F910E6020000000
  %4822 = fadd fast float %4815, 0x3FC81DFBA0000000
  %4823 = fmul fast float %4822, %4770
  %4824 = fadd fast float %4823, 0x3F910E6020000000
  %4825 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4826 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4827 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4828 = fsub fast float %4825, %4768
  %4829 = fsub fast float %4826, %4769
  %4830 = fsub fast float %4827, %4770
  %4831 = fmul fast float %4828, %4795
  %4832 = fmul fast float %4831, %4812
  %4833 = fmul fast float %4829, %4795
  %4834 = fmul fast float %4833, %4812
  %4835 = fmul fast float %4830, %4795
  %4836 = fmul fast float %4835, %4812
  %4837 = fadd fast float %4832, %4768
  %4838 = fadd fast float %4834, %4769
  %4839 = fadd fast float %4836, %4770
  %4840 = fmul fast float %4775, %4775
  %4841 = fmul fast float %4840, %4840
  %4842 = fadd fast float %4798, 1.000000e+00
  %4843 = fsub fast float %4842, %4812
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4847 = fsub fast float 1.000000e+00, %4841
  %4848 = call float @dx.op.binary.f32(i32 36, float %4844, float %4847)  ; FMin(a,b)
  %4849 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4850 = call float @dx.op.binary.f32(i32 35, float %4848, float %4849)  ; FMax(a,b)
  %4851 = fadd fast float %4846, 0xBFE4CCCCC0000000
  %4852 = fmul fast float %4851, 0x4006DB6DA0000000
  %4853 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4854 = fmul fast float %4853, 2.000000e+00
  %4855 = fsub fast float 3.000000e+00, %4854
  %4856 = bitcast float %4765 to i32
  %4857 = ashr i32 %4856, 1
  %4858 = add nsw i32 %4857, 532487669
  %4859 = bitcast i32 %4858 to float
  %4860 = fsub fast float 1.000000e+00, %4859
  %4861 = bitcast float %4860 to i32
  %4862 = sub nsw i32 2129859010, %4861
  %4863 = bitcast i32 %4862 to float
  %4864 = fmul fast float %4863, 2.000000e+00
  %4865 = bitcast float %4766 to i32
  %4866 = ashr i32 %4865, 1
  %4867 = add nsw i32 %4866, 532487669
  %4868 = bitcast i32 %4867 to float
  %4869 = fsub fast float 1.000000e+00, %4868
  %4870 = bitcast float %4869 to i32
  %4871 = sub nsw i32 2129859010, %4870
  %4872 = bitcast i32 %4871 to float
  %4873 = fmul fast float %4872, 2.000000e+00
  %4874 = bitcast float %4767 to i32
  %4875 = ashr i32 %4874, 1
  %4876 = add nsw i32 %4875, 532487669
  %4877 = bitcast i32 %4876 to float
  %4878 = fsub fast float 1.000000e+00, %4877
  %4879 = bitcast float %4878 to i32
  %4880 = sub nsw i32 2129859010, %4879
  %4881 = bitcast i32 %4880 to float
  %4882 = fmul fast float %4881, 2.000000e+00
  %4883 = fsub fast float 0x4002A9FBE0000000, %4864
  %4884 = fadd fast float %4864, 0x3FD54FDF00000000
  %4885 = bitcast float %4884 to i32
  %4886 = sub nsw i32 2129859010, %4885
  %4887 = bitcast i32 %4886 to float
  %4888 = fmul fast float %4887, %4883
  %4889 = fmul fast float %4888, %4888
  %4890 = fsub fast float 0x4002A9FBE0000000, %4873
  %4891 = fadd fast float %4873, 0x3FD54FDF00000000
  %4892 = bitcast float %4891 to i32
  %4893 = sub nsw i32 2129859010, %4892
  %4894 = bitcast i32 %4893 to float
  %4895 = fmul fast float %4894, %4890
  %4896 = fmul fast float %4895, %4895
  %4897 = fsub fast float 0x4002A9FBE0000000, %4882
  %4898 = fadd fast float %4882, 0x3FD54FDF00000000
  %4899 = bitcast float %4898 to i32
  %4900 = sub nsw i32 2129859010, %4899
  %4901 = bitcast i32 %4900 to float
  %4902 = fmul fast float %4901, %4897
  %4903 = fmul fast float %4902, %4902
  %4904 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4889)  ; FMax(a,b)
  %4905 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4896)  ; FMax(a,b)
  %4906 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4903)  ; FMax(a,b)
  %4907 = fsub fast float 1.000000e+00, %4793
  %4908 = fadd fast float %4907, %4808
  %4909 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4910 = fsub fast float 1.000000e+00, %4180
  %4911 = fmul fast float %4850, %4910
  %4912 = fmul fast float %4853, %4853
  %4913 = fmul fast float %4912, %4911
  %4914 = fmul fast float %4913, %4855
  %4915 = fmul fast float %4910, 0xBFE99999A0000000
  %4916 = fmul fast float %4915, %4795
  %4917 = fmul fast float %4916, %4812
  %4918 = fadd fast float %4917, 1.000000e+00
  %4919 = fadd fast float %4774, -1.000000e+00
  %4920 = fmul fast float %4918, %4919
  %4921 = fadd fast float %4920, 1.000000e+00
  %4922 = fsub fast float %4904, %4765
  %4923 = fsub fast float %4905, %4766
  %4924 = fsub fast float %4906, %4767
  %4925 = fmul fast float %4914, %4922
  %4926 = fmul fast float %4914, %4923
  %4927 = fmul fast float %4914, %4924
  %4928 = fadd fast float %4925, %4765
  %4929 = fadd fast float %4926, %4766
  %4930 = fadd fast float %4927, %4767
  %4931 = fsub fast float %94, %4771
  %4932 = fsub fast float %96, %4772
  %4933 = fsub fast float %98, %4773
  %4934 = fmul fast float %4914, %4931
  %4935 = fmul fast float %4914, %4932
  %4936 = fmul fast float %4914, %4933
  %4937 = fadd fast float %4934, %4771
  %4938 = fadd fast float %4935, %4772
  %4939 = fadd fast float %4936, %4773
  %4940 = fmul fast float %4914, %4909
  %4941 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = fmul fast float %4940, %4942
  %4944 = fadd fast float %4943, %4941
  %4945 = fsub fast float 1.000000e+00, %4775
  %4946 = fmul fast float %4914, %4945
  %4947 = fadd fast float %4946, %4775
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4937, float %4938, float %4939, float %4937, float %4938, float %4939)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = call float @dx.op.unary.f32(i32 25, float %4948)  ; Rsqrt(value)
  %4950 = fmul fast float %4937, %4949
  %4951 = fmul fast float %4938, %4949
  %4952 = fmul fast float %4939, %4949
  br label %4953

; <label>:4953                                    ; preds = %4786, %4779
  %4954 = phi float [ %4785, %4779 ], [ %4792, %4786 ]
  %4955 = phi float [ %4784, %4779 ], [ %4790, %4786 ]
  %4956 = phi float [ %4783, %4779 ], [ %4788, %4786 ]
  %4957 = phi float [ %4782, %4779 ], [ %4791, %4786 ]
  %4958 = phi float [ %4781, %4779 ], [ %4789, %4786 ]
  %4959 = phi float [ %4780, %4779 ], [ %4787, %4786 ]
  %4960 = phi float [ %4765, %4779 ], [ %4928, %4786 ]
  %4961 = phi float [ %4766, %4779 ], [ %4929, %4786 ]
  %4962 = phi float [ %4767, %4779 ], [ %4930, %4786 ]
  %4963 = phi float [ %4768, %4779 ], [ %4837, %4786 ]
  %4964 = phi float [ %4769, %4779 ], [ %4838, %4786 ]
  %4965 = phi float [ %4770, %4779 ], [ %4839, %4786 ]
  %4966 = phi float [ %4771, %4779 ], [ %4950, %4786 ]
  %4967 = phi float [ %4772, %4779 ], [ %4951, %4786 ]
  %4968 = phi float [ %4773, %4779 ], [ %4952, %4786 ]
  %4969 = phi float [ %4774, %4779 ], [ %4944, %4786 ]
  %4970 = phi float [ %4775, %4779 ], [ %4947, %4786 ]
  %4971 = select i1 %220, float 0.000000e+00, float %4962
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4967, float %4968, float %4956, float %4955, float %4954)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4974 = call float @dx.op.dot3.f32(i32 55, float %4959, float %4958, float %4957, float %4966, float %4967, float %4968)  ; Dot3(ax,ay,az,bx,by,bz)
  %4975 = fmul fast float %4974, 2.000000e+00
  %4976 = fmul fast float %4975, %4966
  %4977 = fmul fast float %4975, %4967
  %4978 = fmul fast float %4975, %4968
  %4979 = fsub fast float %4959, %4976
  %4980 = fsub fast float %4958, %4977
  %4981 = fsub fast float %4957, %4978
  %4982 = call float @dx.op.binary.f32(i32 36, float %4970, float 1.000000e+00)  ; FMin(a,b)
  %4983 = fsub fast float 1.000000e+00, %4970
  %4984 = bitcast float %4983 to i32
  %4985 = sub nsw i32 2129859010, %4984
  %4986 = bitcast i32 %4985 to float
  %4987 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %4988 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4989 = fcmp fast oeq float %4988, 0.000000e+00
  %4990 = fcmp fast oeq float %4987, 0.000000e+00
  %4991 = or i1 %4990, %4989
  br i1 %4991, label %5021, label %4992

; <label>:4992                                    ; preds = %4953
  %4993 = fsub fast float -0.000000e+00, %65
  %4994 = fsub fast float -0.000000e+00, %63
  %4995 = call float @dx.op.unary.f32(i32 24, float %4988)  ; Sqrt(value)
  %4996 = fdiv fast float %4995, %4987
  %4997 = fcmp fast ogt float %4996, 0x3FFB6F8900000000
  %4998 = select i1 %4997, float 0x3FFB6F8900000000, float %4996
  %4999 = fmul fast float %4998, 0x3FE8A23460000000
  %5000 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5001 = call float @dx.op.binary.f32(i32 35, float %4998, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5002 = fmul fast float %5000, %4987
  %5003 = fmul fast float %5001, 0x3FF279A740000000
  %5004 = fadd fast float %5003, -1.000000e+00
  %5005 = call float @dx.op.dot3.f32(i32 55, float %4993, float %4994, float %64, float %4993, float %4994, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5006 = call float @dx.op.unary.f32(i32 25, float %5005)  ; Rsqrt(value)
  %5007 = fmul fast float %5006, %4993
  %5008 = fmul fast float %5006, %4994
  %5009 = fmul fast float %5006, %64
  %5010 = fmul fast float %5004, %5004
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = fmul fast float %5001, 0x40005F8BE0000000
  %5013 = fsub fast float 0x400C5BF8A0000000, %5012
  %5014 = fdiv fast float %5002, %5013
  %5015 = fmul fast float %5014, 0x3FEE31C3C0000000
  %5016 = fmul fast float %5015, %5011
  %5017 = fmul fast float %5001, 0x3FDACB7480000000
  %5018 = fadd fast float %5017, 0xBFD7347680000000
  %5019 = fmul fast float %5018, %5014
  %5020 = fmul fast float %5019, %5011
  br label %5021

; <label>:5021                                    ; preds = %4992, %4953
  %5022 = phi float [ %5007, %4992 ], [ 0.000000e+00, %4953 ]
  %5023 = phi float [ %5008, %4992 ], [ 0.000000e+00, %4953 ]
  %5024 = phi float [ %5009, %4992 ], [ 0.000000e+00, %4953 ]
  %5025 = phi float [ %5016, %4992 ], [ 0.000000e+00, %4953 ]
  %5026 = phi float [ %5020, %4992 ], [ 0.000000e+00, %4953 ]
  %5027 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5023, float %5024, float %4966, float %4967, float %4968)  ; Dot3(ax,ay,az,bx,by,bz)
  %5028 = fmul fast float %5027, %5027
  %5029 = fmul fast float %5028, 0x3FEE471020000000
  %5030 = fadd fast float %5029, 0xBFD42F6020000000
  %5031 = fmul fast float %4987, 0x3FD20DD760000000
  %5032 = fmul fast float %5030, %5026
  %5033 = fmul fast float %5025, 0x3FDF454380000000
  %5034 = fmul fast float %5033, %5027
  %5035 = fadd fast float %5034, %5031
  %5036 = fadd fast float %5035, %5032
  %5037 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5023, float %5024, float %4979, float %4980, float %4981)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = fmul fast float %5037, 0x3FDF454380000000
  %5039 = fmul fast float %5037, %5037
  %5040 = fmul fast float %5039, 0x3FEE471020000000
  %5041 = fadd fast float %5040, 0xBFD42F6020000000
  %5042 = call float @dx.op.dot3.f32(i32 55, float %4987, float %5025, float %5026, float 0x3FD20DD760000000, float %5038, float %5041)  ; Dot3(ax,ay,az,bx,by,bz)
  %5043 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5044 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = fcmp fast oeq float %5044, 0.000000e+00
  %5046 = fcmp fast oeq float %5043, 0.000000e+00
  %5047 = or i1 %5046, %5045
  br i1 %5047, label %5077, label %5048

; <label>:5048                                    ; preds = %5021
  %5049 = fsub fast float -0.000000e+00, %61
  %5050 = fsub fast float -0.000000e+00, %59
  %5051 = call float @dx.op.unary.f32(i32 24, float %5044)  ; Sqrt(value)
  %5052 = fdiv fast float %5051, %5043
  %5053 = fcmp fast ogt float %5052, 0x3FFB6F8900000000
  %5054 = select i1 %5053, float 0x3FFB6F8900000000, float %5052
  %5055 = fmul fast float %5054, 0x3FE8A23460000000
  %5056 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5057 = call float @dx.op.binary.f32(i32 35, float %5054, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5058 = fmul fast float %5056, %5043
  %5059 = fmul fast float %5057, 0x3FF279A740000000
  %5060 = fadd fast float %5059, -1.000000e+00
  %5061 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %60, float %5049, float %5050, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = call float @dx.op.unary.f32(i32 25, float %5061)  ; Rsqrt(value)
  %5063 = fmul fast float %5062, %5049
  %5064 = fmul fast float %5062, %5050
  %5065 = fmul fast float %5062, %60
  %5066 = fmul fast float %5060, %5060
  %5067 = fsub fast float 1.000000e+00, %5066
  %5068 = fmul fast float %5057, 0x40005F8BE0000000
  %5069 = fsub fast float 0x400C5BF8A0000000, %5068
  %5070 = fdiv fast float %5058, %5069
  %5071 = fmul fast float %5070, 0x3FEE31C3C0000000
  %5072 = fmul fast float %5071, %5067
  %5073 = fmul fast float %5057, 0x3FDACB7480000000
  %5074 = fadd fast float %5073, 0xBFD7347680000000
  %5075 = fmul fast float %5074, %5070
  %5076 = fmul fast float %5075, %5067
  br label %5077

; <label>:5077                                    ; preds = %5048, %5021
  %5078 = phi float [ %5063, %5048 ], [ 0.000000e+00, %5021 ]
  %5079 = phi float [ %5064, %5048 ], [ 0.000000e+00, %5021 ]
  %5080 = phi float [ %5065, %5048 ], [ 0.000000e+00, %5021 ]
  %5081 = phi float [ %5072, %5048 ], [ 0.000000e+00, %5021 ]
  %5082 = phi float [ %5076, %5048 ], [ 0.000000e+00, %5021 ]
  %5083 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float %4966, float %4967, float %4968)  ; Dot3(ax,ay,az,bx,by,bz)
  %5084 = fmul fast float %5083, %5083
  %5085 = fmul fast float %5084, 0x3FEE471020000000
  %5086 = fadd fast float %5085, 0xBFD42F6020000000
  %5087 = fmul fast float %5043, 0x3FD20DD760000000
  %5088 = fmul fast float %5086, %5082
  %5089 = fmul fast float %5081, 0x3FDF454380000000
  %5090 = fmul fast float %5089, %5083
  %5091 = fadd fast float %5090, %5087
  %5092 = fadd fast float %5091, %5088
  %5093 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float %4979, float %4980, float %4981)  ; Dot3(ax,ay,az,bx,by,bz)
  %5094 = fmul fast float %5093, 0x3FDF454380000000
  %5095 = fmul fast float %5093, %5093
  %5096 = fmul fast float %5095, 0x3FEE471020000000
  %5097 = fadd fast float %5096, 0xBFD42F6020000000
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5081, float %5082, float 0x3FD20DD760000000, float %5094, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %5100 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = fcmp fast oeq float %5100, 0.000000e+00
  %5102 = fcmp fast oeq float %5099, 0.000000e+00
  %5103 = or i1 %5102, %5101
  br i1 %5103, label %5133, label %5104

; <label>:5104                                    ; preds = %5077
  %5105 = fsub fast float -0.000000e+00, %57
  %5106 = fsub fast float -0.000000e+00, %55
  %5107 = call float @dx.op.unary.f32(i32 24, float %5100)  ; Sqrt(value)
  %5108 = fdiv fast float %5107, %5099
  %5109 = fcmp fast ogt float %5108, 0x3FFB6F8900000000
  %5110 = select i1 %5109, float 0x3FFB6F8900000000, float %5108
  %5111 = fmul fast float %5110, 0x3FE8A23460000000
  %5112 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5113 = call float @dx.op.binary.f32(i32 35, float %5110, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5114 = fmul fast float %5112, %5099
  %5115 = fmul fast float %5113, 0x3FF279A740000000
  %5116 = fadd fast float %5115, -1.000000e+00
  %5117 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5106, float %56, float %5105, float %5106, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5118 = call float @dx.op.unary.f32(i32 25, float %5117)  ; Rsqrt(value)
  %5119 = fmul fast float %5118, %5105
  %5120 = fmul fast float %5118, %5106
  %5121 = fmul fast float %5118, %56
  %5122 = fmul fast float %5116, %5116
  %5123 = fsub fast float 1.000000e+00, %5122
  %5124 = fmul fast float %5113, 0x40005F8BE0000000
  %5125 = fsub fast float 0x400C5BF8A0000000, %5124
  %5126 = fdiv fast float %5114, %5125
  %5127 = fmul fast float %5126, 0x3FEE31C3C0000000
  %5128 = fmul fast float %5127, %5123
  %5129 = fmul fast float %5113, 0x3FDACB7480000000
  %5130 = fadd fast float %5129, 0xBFD7347680000000
  %5131 = fmul fast float %5130, %5126
  %5132 = fmul fast float %5131, %5123
  br label %5133

; <label>:5133                                    ; preds = %5104, %5077
  %5134 = phi float [ %5119, %5104 ], [ 0.000000e+00, %5077 ]
  %5135 = phi float [ %5120, %5104 ], [ 0.000000e+00, %5077 ]
  %5136 = phi float [ %5121, %5104 ], [ 0.000000e+00, %5077 ]
  %5137 = phi float [ %5128, %5104 ], [ 0.000000e+00, %5077 ]
  %5138 = phi float [ %5132, %5104 ], [ 0.000000e+00, %5077 ]
  %5139 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %4966, float %4967, float %4968)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = fmul fast float %5139, %5139
  %5141 = fmul fast float %5140, 0x3FEE471020000000
  %5142 = fadd fast float %5141, 0xBFD42F6020000000
  %5143 = fmul fast float %5099, 0x3FD20DD760000000
  %5144 = fmul fast float %5142, %5138
  %5145 = fmul fast float %5137, 0x3FDF454380000000
  %5146 = fmul fast float %5145, %5139
  %5147 = fadd fast float %5146, %5143
  %5148 = fadd fast float %5147, %5144
  %5149 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %4979, float %4980, float %4981)  ; Dot3(ax,ay,az,bx,by,bz)
  %5150 = fmul fast float %5149, 0x3FDF454380000000
  %5151 = fmul fast float %5149, %5149
  %5152 = fmul fast float %5151, 0x3FEE471020000000
  %5153 = fadd fast float %5152, 0xBFD42F6020000000
  %5154 = call float @dx.op.dot3.f32(i32 55, float %5099, float %5137, float %5138, float 0x3FD20DD760000000, float %5150, float %5153)  ; Dot3(ax,ay,az,bx,by,bz)
  %5155 = call float @dx.op.binary.f32(i32 35, float %5036, float 0.000000e+00)  ; FMax(a,b)
  %5156 = call float @dx.op.binary.f32(i32 35, float %5092, float 0.000000e+00)  ; FMax(a,b)
  %5157 = call float @dx.op.binary.f32(i32 35, float %5148, float 0.000000e+00)  ; FMax(a,b)
  %5158 = call float @dx.op.binary.f32(i32 35, float %5042, float 0.000000e+00)  ; FMax(a,b)
  %5159 = call float @dx.op.binary.f32(i32 35, float %5098, float 0.000000e+00)  ; FMax(a,b)
  %5160 = call float @dx.op.binary.f32(i32 35, float %5154, float 0.000000e+00)  ; FMax(a,b)
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = call float @dx.op.binary.f32(i32 36, float %4963, float %5162)  ; FMin(a,b)
  %5164 = fsub fast float 1.000000e+00, %4982
  %5165 = fmul fast float %5163, %5164
  %5166 = fsub fast float 1.000000e+00, %5165
  %5167 = bitcast float %5166 to i32
  %5168 = sub nsw i32 2129859010, %5167
  %5169 = bitcast i32 %5168 to float
  %5170 = call float @dx.op.binary.f32(i32 36, float %4964, float %5162)  ; FMin(a,b)
  %5171 = fmul fast float %5170, %5164
  %5172 = fsub fast float 1.000000e+00, %5171
  %5173 = bitcast float %5172 to i32
  %5174 = sub nsw i32 2129859010, %5173
  %5175 = bitcast i32 %5174 to float
  %5176 = call float @dx.op.binary.f32(i32 36, float %4965, float %5162)  ; FMin(a,b)
  %5177 = fmul fast float %5176, %5164
  %5178 = fsub fast float 1.000000e+00, %5177
  %5179 = bitcast float %5178 to i32
  %5180 = sub nsw i32 2129859010, %5179
  %5181 = bitcast i32 %5180 to float
  %5182 = fmul fast float %5155, %4982
  %5183 = fmul fast float %5182, %5169
  %5184 = fmul fast float %5156, %4982
  %5185 = fmul fast float %5184, %5175
  %5186 = fmul fast float %5157, %4982
  %5187 = fmul fast float %5186, %5181
  %5188 = call float @dx.op.binary.f32(i32 36, float %4960, float %5162)  ; FMin(a,b)
  %5189 = fmul fast float %5188, %5164
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = bitcast float %5190 to i32
  %5192 = sub nsw i32 2129859010, %5191
  %5193 = bitcast i32 %5192 to float
  %5194 = call float @dx.op.binary.f32(i32 36, float %4961, float %5162)  ; FMin(a,b)
  %5195 = fmul fast float %5194, %5164
  %5196 = fsub fast float 1.000000e+00, %5195
  %5197 = bitcast float %5196 to i32
  %5198 = sub nsw i32 2129859010, %5197
  %5199 = bitcast i32 %5198 to float
  %5200 = call float @dx.op.binary.f32(i32 36, float %4971, float %5162)  ; FMin(a,b)
  %5201 = fmul fast float %5200, %5164
  %5202 = fsub fast float 1.000000e+00, %5201
  %5203 = bitcast float %5202 to i32
  %5204 = sub nsw i32 2129859010, %5203
  %5205 = bitcast i32 %5204 to float
  %5206 = fmul fast float %5158, %4982
  %5207 = fmul fast float %5206, %5193
  %5208 = fmul fast float %5159, %4982
  %5209 = fmul fast float %5208, %5199
  %5210 = fmul fast float %5160, %4982
  %5211 = fmul fast float %5210, %5205
  %5212 = call float @dx.op.dot3.f32(i32 55, float %5183, float %5185, float %5187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5213 = select i1 %220, float 0.000000e+00, float %5183
  %5214 = select i1 %220, float %5212, float %5185
  %5215 = select i1 %220, float 0.000000e+00, float %5187
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5207, float %5209, float %5211, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = select i1 %220, float 0.000000e+00, float %5207
  %5218 = select i1 %220, float %5216, float %5209
  %5219 = select i1 %220, float 0.000000e+00, float %5211
  %5220 = fmul fast float %4973, 9.843750e-01
  %5221 = fmul fast float %4969, 9.843750e-01
  %5222 = fadd fast float %5220, 7.812500e-03
  %5223 = fadd fast float %5221, 7.812500e-03
  %5224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5222, float %5223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5225 = extractvalue %dx.types.ResRet.f32 %5224, 2
  %5226 = extractvalue %dx.types.ResRet.f32 %5224, 3
  %5227 = fmul fast float %5225, %4960
  %5228 = fmul fast float %5225, %4961
  %5229 = fmul fast float %5225, %4971
  %5230 = fadd fast float %5227, %5226
  %5231 = fadd fast float %5228, %5226
  %5232 = fadd fast float %5229, %5226
  %5233 = fcmp fast ogt float %3766, 0.000000e+00
  br i1 %5233, label %5234, label %5260

; <label>:5234                                    ; preds = %5133
  %5235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3766, float %4973, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.ResRet.f32 %5235, 2
  %5239 = fadd fast float %5236, -5.000000e-01
  %5240 = fadd fast float %5237, -5.000000e-01
  %5241 = fadd fast float %5238, -5.000000e-01
  %5242 = fsub fast float 1.000000e+00, %4960
  %5243 = fsub fast float 1.000000e+00, %4961
  %5244 = fsub fast float 1.000000e+00, %4971
  %5245 = fmul fast float %4960, 4.000000e+00
  %5246 = fmul fast float %5245, %5242
  %5247 = fmul fast float %5246, %5239
  %5248 = fmul fast float %4961, 4.000000e+00
  %5249 = fmul fast float %5248, %5243
  %5250 = fmul fast float %5249, %5240
  %5251 = fmul fast float %4971, 4.000000e+00
  %5252 = fmul fast float %5251, %5244
  %5253 = fmul fast float %5252, %5241
  %5254 = fadd fast float %5247, %5230
  %5255 = fadd fast float %5250, %5231
  %5256 = fadd fast float %5253, %5232
  %5257 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5258 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5259 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  br label %5260

; <label>:5260                                    ; preds = %5234, %5133
  %5261 = phi float [ %5257, %5234 ], [ %5230, %5133 ]
  %5262 = phi float [ %5258, %5234 ], [ %5231, %5133 ]
  %5263 = phi float [ %5259, %5234 ], [ %5232, %5133 ]
  %5264 = call float @dx.op.binary.f32(i32 35, float %5262, float %5263)  ; FMax(a,b)
  %5265 = call float @dx.op.binary.f32(i32 35, float %5261, float %5264)  ; FMax(a,b)
  %5266 = fsub fast float 1.000000e+00, %5265
  %5267 = fmul fast float %5266, %5213
  %5268 = fmul fast float %5266, %5214
  %5269 = fmul fast float %5266, %5215
  %5270 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5271 = fcmp fast ogt float %5270, 0x3E7FF19E20000000
  %5272 = fdiv fast float 1.000000e+00, %5270
  %5273 = select i1 %5271, float %5272, float 0.000000e+00
  %5274 = fmul fast float %5273, %4963
  %5275 = fmul fast float %5273, %4964
  %5276 = fmul fast float %5273, %4965
  %5277 = fadd fast float %5274, -1.000000e+00
  %5278 = fadd fast float %5275, -1.000000e+00
  %5279 = fadd fast float %5276, -1.000000e+00
  %5280 = fmul fast float %5277, 5.000000e-01
  %5281 = fmul fast float %5278, 5.000000e-01
  %5282 = fmul fast float %5279, 5.000000e-01
  %5283 = fadd fast float %5280, 1.000000e+00
  %5284 = fadd fast float %5281, 1.000000e+00
  %5285 = fadd fast float %5282, 1.000000e+00
  %5286 = fmul fast float %5261, %5217
  %5287 = fmul fast float %5262, %5218
  %5288 = fmul fast float %5263, %5219
  %5289 = fsub fast float 1.000000e+00, %4973
  %5290 = bitcast float %5289 to i32
  %5291 = sitofp i32 %5290 to float
  %5292 = fmul fast float %5291, 5.000000e+00
  %5293 = fadd fast float %5292, 0xC1EFBF8940000000
  %5294 = fptosi float %5293 to i32
  %5295 = bitcast i32 %5294 to float
  %5296 = fmul fast float %5295, %3767
  %5297 = fmul fast float %5213, %5296
  %5298 = fmul fast float %5297, %5266
  %5299 = fmul fast float %5298, %5283
  %5300 = fmul fast float %5214, %5296
  %5301 = fmul fast float %5300, %5266
  %5302 = fmul fast float %5301, %5284
  %5303 = fmul fast float %5215, %5296
  %5304 = fmul fast float %5303, %5266
  %5305 = fmul fast float %5304, %5285
  %5306 = fmul fast float %5267, %3763
  %5307 = fmul fast float %5268, %3763
  %5308 = fmul fast float %5269, %3763
  %5309 = fadd fast float %5286, %3756
  %5310 = fadd fast float %5309, %5299
  %5311 = fmul fast float %5310, %3763
  %5312 = fadd fast float %5287, %3757
  %5313 = fadd fast float %5312, %5302
  %5314 = fmul fast float %5313, %3763
  %5315 = fadd fast float %5288, %3758
  %5316 = fadd fast float %5315, %5305
  %5317 = fmul fast float %5316, %3763
  %5318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5319 = extractvalue %dx.types.CBufRet.f32 %5318, 3
  %5320 = fcmp fast oeq float %5319, 0.000000e+00
  br i1 %5320, label %5548, label %5321

; <label>:5321                                    ; preds = %5260
  %5322 = extractvalue %dx.types.CBufRet.f32 %5318, 0
  %5323 = extractvalue %dx.types.CBufRet.f32 %5318, 1
  %5324 = extractvalue %dx.types.CBufRet.f32 %5318, 2
  %5325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.CBufRet.f32 %5325, 1
  %5328 = extractvalue %dx.types.CBufRet.f32 %5325, 2
  %5329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.f32 %5329, 0
  %5331 = extractvalue %dx.types.CBufRet.f32 %5329, 1
  %5332 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = select i1 %220, float %5330, float %5326
  %5334 = select i1 %220, float %5332, float %5327
  %5335 = select i1 %220, float %5331, float %5328
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 1
  %5338 = fcmp fast une float %5337, 0.000000e+00
  br i1 %5338, label %5339, label %5356

; <label>:5339                                    ; preds = %5321
  %5340 = fptoui float %85 to i32
  %5341 = fptoui float %86 to i32
  %5342 = lshr i32 %5340, 4
  %5343 = lshr i32 %5341, 4
  %5344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.f32 %5344, 0
  %5346 = fptoui float %5345 to i32
  %5347 = add i32 %5346, 15
  %5348 = lshr i32 %5347, 4
  %5349 = mul i32 %5348, %5343
  %5350 = add i32 %5349, %5342
  %5351 = shl i32 %5350, 3
  %5352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5351, i32 undef)  ; BufferLoad(srv,index,wot)
  %5353 = extractvalue %dx.types.ResRet.i32 %5352, 0
  %5354 = and i32 %5353, -268435456
  %5355 = icmp eq i32 %5354, -1342177280
  br i1 %5355, label %5366, label %5356

; <label>:5356                                    ; preds = %5339, %5321
  %5357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.f32 %5357, 2
  %5359 = extractvalue %dx.types.CBufRet.f32 %5357, 3
  %5360 = fmul fast float %5358, %85
  %5361 = fmul fast float %5359, %86
  %5362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5360, float %5361, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = extractvalue %dx.types.ResRet.f32 %5362, 1
  %5365 = extractvalue %dx.types.ResRet.f32 %5362, 2
  br label %5366

; <label>:5366                                    ; preds = %5356, %5339
  %5367 = phi float [ %5363, %5356 ], [ 0.000000e+00, %5339 ]
  %5368 = phi float [ %5364, %5356 ], [ 0.000000e+00, %5339 ]
  %5369 = phi float [ %5365, %5356 ], [ 0.000000e+00, %5339 ]
  %5370 = call float @dx.op.binary.f32(i32 36, float %5368, float %5369)  ; FMin(a,b)
  %5371 = call float @dx.op.binary.f32(i32 36, float %5367, float %5370)  ; FMin(a,b)
  %5372 = fcmp fast ogt float %5371, 0.000000e+00
  br i1 %5372, label %5373, label %5548, !dx.controlflow.hints !78

; <label>:5373                                    ; preds = %5366
  %5374 = fmul fast float %5367, %5333
  %5375 = fmul fast float %5368, %5334
  %5376 = fmul fast float %5369, %5335
  %5377 = fsub fast float %5322, %4959
  %5378 = fsub fast float %5323, %4958
  %5379 = fsub fast float %5324, %4957
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5377, float %5378, float %5379, float %5377, float %5378, float %5379)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = call float @dx.op.unary.f32(i32 25, float %5380)  ; Rsqrt(value)
  %5382 = fmul fast float %5381, %5377
  %5383 = fmul fast float %5381, %5378
  %5384 = fmul fast float %5381, %5379
  %5385 = call float @dx.op.dot3.f32(i32 55, float %5322, float %5323, float %5324, float %4966, float %4967, float %4968)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = call float @dx.op.dot3.f32(i32 55, float %4956, float %4955, float %4954, float %5382, float %5383, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5387 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  %5388 = fmul fast float %5387, %5387
  %5389 = fmul fast float %5388, %4986
  %5390 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  %5391 = fmul fast float %5390, %5387
  %5392 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4967, float %4968, float %5382, float %5383, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5393 = fmul fast float %5392, %5392
  %5394 = call float @dx.op.unary.f32(i32 6, float %5385)  ; FAbs(value)
  %5395 = fsub fast float 1.000000e+00, %4969
  %5396 = call float @dx.op.binary.f32(i32 35, float %5395, float 0x3F847AE140000000)  ; FMax(a,b)
  %5397 = fmul fast float %5396, %5396
  %5398 = fmul fast float %5397, %5397
  %5399 = fsub fast float 1.000000e+00, %5398
  %5400 = fmul fast float %4973, %4973
  %5401 = fmul fast float %5400, %5399
  %5402 = fadd fast float %5401, %5398
  %5403 = bitcast float %5402 to i32
  %5404 = ashr i32 %5403, 1
  %5405 = add nsw i32 %5404, 532487669
  %5406 = bitcast i32 %5405 to float
  %5407 = fadd fast float %5406, %4973
  %5408 = fmul fast float %5398, %5393
  %5409 = fsub fast float 1.000000e+00, %5393
  %5410 = fadd fast float %5409, %5408
  %5411 = fmul fast float %5394, %5394
  %5412 = fmul fast float %5411, %5399
  %5413 = fadd fast float %5412, %5398
  %5414 = bitcast float %5413 to i32
  %5415 = ashr i32 %5414, 1
  %5416 = add nsw i32 %5415, 532487669
  %5417 = bitcast i32 %5416 to float
  %5418 = fadd fast float %5417, %5394
  %5419 = fmul fast float %5410, %5410
  %5420 = fmul fast float %5419, %5407
  %5421 = fmul fast float %5420, %5418
  %5422 = fdiv fast float 0x3FF0A00000000000, %5421
  %5423 = fmul fast float %5422, %5398
  %5424 = call float @dx.op.unary.f32(i32 6, float %5386)  ; FAbs(value)
  %5425 = fsub fast float 1.000000e+00, %5424
  %5426 = bitcast float %5425 to i32
  %5427 = sitofp i32 %5426 to float
  %5428 = fmul fast float %5427, 5.000000e+00
  %5429 = fadd fast float %5428, 0xC1EFBF8940000000
  %5430 = fptosi float %5429 to i32
  %5431 = bitcast i32 %5430 to float
  %5432 = fsub fast float 1.000000e+00, %4960
  %5433 = fsub fast float 1.000000e+00, %4961
  %5434 = fsub fast float 1.000000e+00, %4971
  %5435 = fmul fast float %5431, %5432
  %5436 = fmul fast float %5431, %5433
  %5437 = fmul fast float %5431, %5434
  %5438 = fadd fast float %5435, %4960
  %5439 = fadd fast float %5436, %4961
  %5440 = fadd fast float %5437, %4971
  br i1 %5233, label %5441, label %5464

; <label>:5441                                    ; preds = %5373
  %5442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3766, float %5424, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5443 = extractvalue %dx.types.ResRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.ResRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.ResRet.f32 %5442, 2
  %5446 = fadd fast float %5443, -5.000000e-01
  %5447 = fadd fast float %5444, -5.000000e-01
  %5448 = fadd fast float %5445, -5.000000e-01
  %5449 = fmul fast float %4960, 4.000000e+00
  %5450 = fmul fast float %5449, %5432
  %5451 = fmul fast float %5450, %5446
  %5452 = fmul fast float %4961, 4.000000e+00
  %5453 = fmul fast float %5452, %5433
  %5454 = fmul fast float %5453, %5447
  %5455 = fmul fast float %4971, 4.000000e+00
  %5456 = fmul fast float %5455, %5434
  %5457 = fmul fast float %5456, %5448
  %5458 = fadd fast float %5451, %5438
  %5459 = fadd fast float %5454, %5439
  %5460 = fadd fast float %5457, %5440
  %5461 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5462 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5463 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  br label %5464

; <label>:5464                                    ; preds = %5441, %5373
  %5465 = phi float [ %5461, %5441 ], [ %5438, %5373 ]
  %5466 = phi float [ %5462, %5441 ], [ %5439, %5373 ]
  %5467 = phi float [ %5463, %5441 ], [ %5440, %5373 ]
  %5468 = fmul fast float %5385, 9.843750e-01
  %5469 = fadd fast float %5468, 7.812500e-03
  %5470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5469, float %5223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5471 = extractvalue %dx.types.ResRet.f32 %5470, 2
  %5472 = extractvalue %dx.types.ResRet.f32 %5470, 3
  %5473 = fmul fast float %5471, %4960
  %5474 = fmul fast float %5471, %4961
  %5475 = fmul fast float %5471, %4971
  %5476 = fadd fast float %5473, %5472
  %5477 = fadd fast float %5474, %5472
  %5478 = fadd fast float %5475, %5472
  br i1 %5233, label %5479, label %5502

; <label>:5479                                    ; preds = %5464
  %5480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3766, float %5385, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5481 = extractvalue %dx.types.ResRet.f32 %5480, 0
  %5482 = extractvalue %dx.types.ResRet.f32 %5480, 1
  %5483 = extractvalue %dx.types.ResRet.f32 %5480, 2
  %5484 = fadd fast float %5481, -5.000000e-01
  %5485 = fadd fast float %5482, -5.000000e-01
  %5486 = fadd fast float %5483, -5.000000e-01
  %5487 = fmul fast float %4960, 4.000000e+00
  %5488 = fmul fast float %5487, %5432
  %5489 = fmul fast float %5488, %5484
  %5490 = fmul fast float %4961, 4.000000e+00
  %5491 = fmul fast float %5490, %5433
  %5492 = fmul fast float %5491, %5485
  %5493 = fmul fast float %4971, 4.000000e+00
  %5494 = fmul fast float %5493, %5434
  %5495 = fmul fast float %5494, %5486
  %5496 = fadd fast float %5489, %5476
  %5497 = fadd fast float %5492, %5477
  %5498 = fadd fast float %5495, %5478
  %5499 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5500 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5501 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  br label %5502

; <label>:5502                                    ; preds = %5479, %5464
  %5503 = phi float [ %5499, %5479 ], [ %5476, %5464 ]
  %5504 = phi float [ %5500, %5479 ], [ %5477, %5464 ]
  %5505 = phi float [ %5501, %5479 ], [ %5478, %5464 ]
  %5506 = call float @dx.op.binary.f32(i32 35, float %5504, float %5505)  ; FMax(a,b)
  %5507 = call float @dx.op.binary.f32(i32 35, float %5503, float %5506)  ; FMax(a,b)
  %5508 = fsub fast float 1.000000e+00, %5507
  %5509 = fmul fast float %5465, %5423
  %5510 = fmul fast float %5466, %5423
  %5511 = fmul fast float %5467, %5423
  %5512 = fsub fast float 1.000000e+00, %5386
  %5513 = bitcast float %5512 to i32
  %5514 = sitofp i32 %5513 to float
  %5515 = fmul fast float %5514, 5.000000e+00
  %5516 = fadd fast float %5515, 0xC1EFBF8940000000
  %5517 = fptosi float %5516 to i32
  %5518 = bitcast i32 %5517 to float
  %5519 = fmul fast float %5518, %3767
  %5520 = fmul fast float %5508, %5519
  %5521 = fmul fast float %5520, %5283
  %5522 = fmul fast float %5520, %5284
  %5523 = fmul fast float %5520, %5285
  %5524 = fadd fast float %5521, %5509
  %5525 = fadd fast float %5522, %5510
  %5526 = fadd fast float %5523, %5511
  %5527 = fmul fast float %5391, %5374
  %5528 = fmul fast float %5527, %5508
  %5529 = fmul fast float %5391, %5375
  %5530 = fmul fast float %5529, %5508
  %5531 = fmul fast float %5391, %5376
  %5532 = fmul fast float %5531, %5508
  %5533 = fmul fast float %5527, %5524
  %5534 = fmul fast float %5529, %5525
  %5535 = fmul fast float %5531, %5526
  %5536 = fadd fast float %5528, %5267
  %5537 = fmul fast float %5536, %3763
  %5538 = fadd fast float %5530, %5268
  %5539 = fmul fast float %5538, %3763
  %5540 = fadd fast float %5532, %5269
  %5541 = fmul fast float %5540, %3763
  %5542 = fadd fast float %5533, %5310
  %5543 = fmul fast float %5542, %3763
  %5544 = fadd fast float %5534, %5313
  %5545 = fmul fast float %5544, %3763
  %5546 = fadd fast float %5535, %5316
  %5547 = fmul fast float %5546, %3763
  br label %5548

; <label>:5548                                    ; preds = %5502, %5366, %5260
  %5549 = phi float [ %5311, %5260 ], [ %5311, %5366 ], [ %5543, %5502 ]
  %5550 = phi float [ %5314, %5260 ], [ %5314, %5366 ], [ %5545, %5502 ]
  %5551 = phi float [ %5317, %5260 ], [ %5317, %5366 ], [ %5547, %5502 ]
  %5552 = phi float [ %5306, %5260 ], [ %5306, %5366 ], [ %5537, %5502 ]
  %5553 = phi float [ %5307, %5260 ], [ %5307, %5366 ], [ %5539, %5502 ]
  %5554 = phi float [ %5308, %5260 ], [ %5308, %5366 ], [ %5541, %5502 ]
  %5555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5556 = extractvalue %dx.types.CBufRet.i32 %5555, 0
  %5557 = icmp eq i32 %5556, 0
  br i1 %5557, label %5992, label %5558

; <label>:5558                                    ; preds = %5548
  %5559 = fptoui float %85 to i32
  %5560 = fptoui float %86 to i32
  %5561 = lshr i32 %5559, 4
  %5562 = lshr i32 %5560, 4
  %5563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5564 = extractvalue %dx.types.CBufRet.i32 %5563, 0
  %5565 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5562, i32 %5564, i32 %5561)  ; UMad(a,b,c)
  %5566 = add nsw i32 %5556, -1
  %5567 = call i32 @dx.op.binary.i32(i32 37, i32 %5566, i32 0)  ; IMax(a,b)
  %5568 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5569 = fptoui float %5568 to i32
  %5570 = lshr i32 %5569, 5
  %5571 = call i32 @dx.op.binary.i32(i32 40, i32 %5570, i32 8191)  ; UMin(a,b)
  %5572 = shl i32 %5571, 2
  %5573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5572, i32 undef)  ; BufferLoad(srv,index,wot)
  %5574 = extractvalue %dx.types.ResRet.i32 %5573, 0
  %5575 = lshr i32 %5574, 16
  %5576 = and i32 %5574, 65535
  %5577 = lshr i32 %5574, 21
  %5578 = lshr i32 %5576, 5
  %5579 = call i32 @dx.op.binary.i32(i32 40, i32 %5578, i32 %5567)  ; UMin(a,b)
  %5580 = icmp ugt i32 %5577, %5579
  br i1 %5580, label %5992, label %5581

; <label>:5581                                    ; preds = %5558
  br label %5582

; <label>:5582                                    ; preds = %5982, %5581
  %5583 = phi i32 [ %5989, %5982 ], [ %5577, %5581 ]
  %5584 = phi float [ %5983, %5982 ], [ %5549, %5581 ]
  %5585 = phi float [ %5984, %5982 ], [ %5550, %5581 ]
  %5586 = phi float [ %5985, %5982 ], [ %5551, %5581 ]
  %5587 = phi float [ %5986, %5982 ], [ %5552, %5581 ]
  %5588 = phi float [ %5987, %5982 ], [ %5553, %5581 ]
  %5589 = phi float [ %5988, %5982 ], [ %5554, %5581 ]
  %5590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5591 = extractvalue %dx.types.CBufRet.i32 %5590, 0
  %5592 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5565, i32 %5591, i32 %5583)  ; UMad(a,b,c)
  %5593 = shl i32 %5592, 2
  %5594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5593, i32 undef)  ; BufferLoad(srv,index,wot)
  %5595 = extractvalue %dx.types.ResRet.i32 %5594, 0
  %5596 = shl i32 %5583, 5
  %5597 = sub nsw i32 %5575, %5596
  %5598 = call i32 @dx.op.binary.i32(i32 37, i32 %5597, i32 0)  ; IMax(a,b)
  %5599 = call i32 @dx.op.binary.i32(i32 38, i32 %5598, i32 31)  ; IMin(a,b)
  %5600 = sub nsw i32 1, %5575
  %5601 = add nsw i32 %5600, %5576
  %5602 = call i32 @dx.op.binary.i32(i32 37, i32 %5601, i32 0)  ; IMax(a,b)
  %5603 = call i32 @dx.op.binary.i32(i32 38, i32 %5602, i32 32)  ; IMin(a,b)
  %5604 = and i32 %5603, 31
  %5605 = shl i32 -1, %5604
  %5606 = xor i32 %5605, -1
  %5607 = and i32 %5599, 31
  %5608 = shl i32 %5606, %5607
  %5609 = icmp eq i32 %5603, 32
  %5610 = select i1 %5609, i32 -1, i32 %5608
  %5611 = and i32 %5610, %5595
  %5612 = icmp eq i32 %5611, 0
  br i1 %5612, label %5982, label %5613

; <label>:5613                                    ; preds = %5582
  br label %5614

; <label>:5614                                    ; preds = %5694, %5613
  %5615 = phi i32 [ %5626, %5694 ], [ %5611, %5613 ]
  %5616 = phi float [ %5695, %5694 ], [ %5584, %5613 ]
  %5617 = phi float [ %5696, %5694 ], [ %5585, %5613 ]
  %5618 = phi float [ %5697, %5694 ], [ %5586, %5613 ]
  %5619 = phi float [ %5698, %5694 ], [ %5587, %5613 ]
  %5620 = phi float [ %5699, %5694 ], [ %5588, %5613 ]
  %5621 = phi float [ %5700, %5694 ], [ %5589, %5613 ]
  %5622 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5615)  ; FirstbitLo(value)
  %5623 = add i32 %5622, %5596
  %5624 = and i32 %5622, 31
  %5625 = shl i32 1, %5624
  %5626 = xor i32 %5625, %5615
  %5627 = mul i32 %5623, 112
  %5628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5627, i32 undef)  ; BufferLoad(srv,index,wot)
  %5629 = extractvalue %dx.types.ResRet.f32 %5628, 0
  %5630 = extractvalue %dx.types.ResRet.f32 %5628, 1
  %5631 = extractvalue %dx.types.ResRet.f32 %5628, 2
  %5632 = or i32 %5627, 12
  %5633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5632, i32 undef)  ; BufferLoad(srv,index,wot)
  %5634 = extractvalue %dx.types.ResRet.f32 %5633, 0
  %5635 = add i32 %5627, 44
  %5636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5635, i32 undef)  ; BufferLoad(srv,index,wot)
  %5637 = extractvalue %dx.types.ResRet.f32 %5636, 0
  %5638 = add i32 %5627, 48
  %5639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5638, i32 undef)  ; BufferLoad(srv,index,wot)
  %5640 = extractvalue %dx.types.ResRet.f32 %5639, 0
  %5641 = extractvalue %dx.types.ResRet.f32 %5639, 1
  %5642 = extractvalue %dx.types.ResRet.f32 %5639, 2
  %5643 = add i32 %5627, 80
  %5644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5643, i32 undef)  ; BufferLoad(srv,index,wot)
  %5645 = extractvalue %dx.types.ResRet.f32 %5644, 1
  %5646 = extractvalue %dx.types.ResRet.f32 %5644, 2
  %5647 = call float @dx.op.dot3.f32(i32 55, float %5629, float %5630, float %5631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = select i1 %220, float %5645, float %5629
  %5649 = select i1 %220, float %5647, float %5630
  %5650 = select i1 %220, float %5646, float %5631
  %5651 = fsub fast float %5640, %168
  %5652 = fsub fast float %5641, %169
  %5653 = fsub fast float %5642, %170
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5652, float %5653, float %5651, float %5652, float %5653)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = call float @dx.op.unary.f32(i32 24, float %5654)  ; Sqrt(value)
  %5656 = fdiv fast float 1.000000e+00, %5655
  %5657 = fmul fast float %5656, %5651
  %5658 = fmul fast float %5656, %5652
  %5659 = fmul fast float %5656, %5653
  %5660 = fadd fast float %5655, %5634
  %5661 = fdiv fast float 1.000000e+00, %5660
  %5662 = fmul float %5637, %5661
  %5663 = fmul float %5662, %5662
  %5664 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5665 = and i32 %5625, %5611
  %5666 = icmp eq i32 %5665, 0
  br i1 %5666, label %5689, label %5667, !dx.controlflow.hints !79

; <label>:5667                                    ; preds = %5614
  %5668 = lshr i32 %5559, 5
  %5669 = lshr i32 %5560, 5
  %5670 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5668, i32 %5669, i32 %5623, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5671 = extractvalue %dx.types.ResRet.i32 %5670, 0
  %5672 = and i32 %5671, 3
  %5673 = icmp eq i32 %5672, 0
  %5674 = select i1 %5673, float 1.000000e+00, float 0.000000e+00
  %5675 = icmp eq i32 %5672, 3
  br i1 %5675, label %5676, label %5689

; <label>:5676                                    ; preds = %5667
  %5677 = lshr i32 %5671, 10
  %5678 = and i32 %5677, 8160
  %5679 = and i32 %5560, 31
  %5680 = or i32 %5678, %5679
  %5681 = lshr i32 %5671, 1
  %5682 = and i32 %5681, 16352
  %5683 = and i32 %5559, 31
  %5684 = or i32 %5682, %5683
  %5685 = lshr i32 %5671, 23
  %5686 = and i32 %5685, 255
  %5687 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5684, i32 %5680, i32 %5686, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5688 = extractvalue %dx.types.ResRet.f32 %5687, 0
  br label %5689

; <label>:5689                                    ; preds = %5676, %5667, %5614
  %5690 = phi float [ %5688, %5676 ], [ %5674, %5667 ], [ 0.000000e+00, %5614 ]
  %5691 = call float @dx.op.binary.f32(i32 36, float %5690, float %5690)  ; FMin(a,b)
  %5692 = call float @dx.op.binary.f32(i32 36, float %5690, float %5691)  ; FMin(a,b)
  %5693 = fcmp fast ogt float %5692, 0.000000e+00
  br i1 %5693, label %5702, label %5694, !dx.controlflow.hints !80

; <label>:5694                                    ; preds = %5938, %5689
  %5695 = phi float [ %5616, %5689 ], [ %5978, %5938 ]
  %5696 = phi float [ %5617, %5689 ], [ %5979, %5938 ]
  %5697 = phi float [ %5618, %5689 ], [ %5980, %5938 ]
  %5698 = phi float [ %5619, %5689 ], [ %5972, %5938 ]
  %5699 = phi float [ %5620, %5689 ], [ %5973, %5938 ]
  %5700 = phi float [ %5621, %5689 ], [ %5974, %5938 ]
  %5701 = icmp eq i32 %5615, %5625
  br i1 %5701, label %5981, label %5614

; <label>:5702                                    ; preds = %5689
  %5703 = fmul fast float %5690, %5648
  %5704 = fmul fast float %5690, %5649
  %5705 = fmul fast float %5690, %5650
  %5706 = fsub fast float %5642, %4167
  %5707 = fcmp fast ogt float %5706, 0.000000e+00
  %5708 = fsub fast float %170, %4167
  %5709 = fcmp fast ogt float %5708, 0.000000e+00
  %5710 = xor i1 %5709, %5707
  %5711 = fsub fast float %4167, %5642
  %5712 = fmul fast float %5711, 2.000000e+00
  %5713 = fadd fast float %5712, %5642
  %5714 = select i1 %5710, float %5642, float %5713
  %5715 = fsub fast float %5714, %170
  %5716 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5652, float %5715, float %5651, float %5652, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5717 = call float @dx.op.unary.f32(i32 25, float %5716)  ; Rsqrt(value)
  %5718 = fmul fast float %5717, %5651
  %5719 = fmul fast float %5717, %5652
  %5720 = fmul fast float %5717, %5715
  %5721 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4175)  ; Dot3(ax,ay,az,bx,by,bz)
  %5722 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5718, float %5719, float %5720)  ; Dot3(ax,ay,az,bx,by,bz)
  %5723 = fdiv fast float 1.000000e+00, %5722
  %5724 = fmul fast float %5723, %5721
  %5725 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5708, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = fcmp fast ogt float %5725, 0.000000e+00
  %5727 = fcmp fast olt float %5725, 0.000000e+00
  %5728 = zext i1 %5726 to i32
  %5729 = zext i1 %5727 to i32
  %5730 = sub nsw i32 %5728, %5729
  %5731 = sitofp i32 %5730 to float
  %5732 = fsub fast float %5714, %4167
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5652, float %5732, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = fcmp fast ogt float %5733, 0.000000e+00
  %5735 = fcmp fast olt float %5733, 0.000000e+00
  %5736 = zext i1 %5734 to i32
  %5737 = zext i1 %5735 to i32
  %5738 = sub nsw i32 %5736, %5737
  %5739 = sitofp i32 %5738 to float
  %5740 = fcmp fast une float %5731, %5739
  br i1 %5740, label %5741, label %5751

; <label>:5741                                    ; preds = %5702
  %5742 = fmul fast float %5724, %5720
  %5743 = fmul fast float %5724, %5719
  %5744 = fmul fast float %5724, %5718
  %5745 = fmul fast float %5744, %5744
  %5746 = fmul fast float %5743, %5743
  %5747 = fadd fast float %5745, %5746
  %5748 = fmul fast float %5742, %5742
  %5749 = fadd fast float %5747, %5748
  %5750 = call float @dx.op.unary.f32(i32 24, float %5749)  ; Sqrt(value)
  br label %5763

; <label>:5751                                    ; preds = %5702
  %5752 = icmp slt i32 %5730, 0
  br i1 %5752, label %5753, label %5763

; <label>:5753                                    ; preds = %5751
  %5754 = fsub fast float %168, %5640
  %5755 = fsub fast float %169, %5641
  %5756 = fsub fast float %170, %5714
  %5757 = fmul fast float %5754, %5754
  %5758 = fmul fast float %5755, %5755
  %5759 = fadd fast float %5757, %5758
  %5760 = fmul fast float %5756, %5756
  %5761 = fadd fast float %5759, %5760
  %5762 = call float @dx.op.unary.f32(i32 24, float %5761)  ; Sqrt(value)
  br label %5763

; <label>:5763                                    ; preds = %5753, %5751, %5741
  %5764 = phi float [ %5750, %5741 ], [ %5762, %5753 ], [ 0.000000e+00, %5751 ]
  %5765 = and i1 %5709, %5707
  %5766 = fsub fast float -0.000000e+00, %5764
  %5767 = select i1 %5765, float -0.000000e+00, float %5766
  %5768 = fmul fast float %4168, 0x3FF7154760000000
  %5769 = fmul fast float %5768, %5767
  %5770 = fmul fast float %4169, 0x3FF7154760000000
  %5771 = fmul fast float %5770, %5767
  %5772 = fmul fast float %4170, 0x3FF7154760000000
  %5773 = fmul fast float %5772, %5767
  %5774 = call float @dx.op.unary.f32(i32 21, float %5769)  ; Exp(value)
  %5775 = call float @dx.op.unary.f32(i32 21, float %5771)  ; Exp(value)
  %5776 = call float @dx.op.unary.f32(i32 21, float %5773)  ; Exp(value)
  %5777 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5778 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  %5779 = call float @dx.op.unary.f32(i32 7, float %5776)  ; Saturate(value)
  %5780 = fmul fast float %5703, %5777
  %5781 = fmul fast float %5704, %5778
  %5782 = fmul fast float %5705, %5779
  %5783 = fsub fast float %5657, %4959
  %5784 = fsub fast float %5658, %4958
  %5785 = fsub fast float %5659, %4957
  %5786 = call float @dx.op.dot3.f32(i32 55, float %5783, float %5784, float %5785, float %5783, float %5784, float %5785)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = call float @dx.op.unary.f32(i32 25, float %5786)  ; Rsqrt(value)
  %5788 = fmul fast float %5787, %5783
  %5789 = fmul fast float %5787, %5784
  %5790 = fmul fast float %5787, %5785
  %5791 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5659, float %4966, float %4967, float %4968)  ; Dot3(ax,ay,az,bx,by,bz)
  %5792 = call float @dx.op.dot3.f32(i32 55, float %4956, float %4955, float %4954, float %5788, float %5789, float %5790)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = call float @dx.op.unary.f32(i32 7, float %5791)  ; Saturate(value)
  %5794 = fmul fast float %5793, %5664
  %5795 = fmul fast float %5793, %5793
  %5796 = fmul fast float %5795, %4986
  %5797 = call float @dx.op.unary.f32(i32 7, float %5796)  ; Saturate(value)
  %5798 = fmul fast float %5794, %5797
  %5799 = bitcast float %5654 to i32
  %5800 = ashr i32 %5799, 1
  %5801 = sub nsw i32 1597463007, %5800
  %5802 = bitcast i32 %5801 to float
  %5803 = fmul fast float %5802, %5651
  %5804 = fmul fast float %5802, %5652
  %5805 = fmul fast float %5802, %5653
  %5806 = fsub fast float %5803, %4959
  %5807 = fsub fast float %5804, %4958
  %5808 = fsub fast float %5805, %4957
  %5809 = call float @dx.op.dot3.f32(i32 55, float %5806, float %5807, float %5808, float %5806, float %5807, float %5808)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = call float @dx.op.unary.f32(i32 25, float %5809)  ; Rsqrt(value)
  %5811 = fmul fast float %5806, %5810
  %5812 = fmul fast float %5807, %5810
  %5813 = fmul fast float %5808, %5810
  %5814 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4967, float %4968, float %5811, float %5812, float %5813)  ; Dot3(ax,ay,az,bx,by,bz)
  %5815 = fmul fast float %5814, %5814
  %5816 = call float @dx.op.unary.f32(i32 6, float %5791)  ; FAbs(value)
  %5817 = fsub fast float 1.000000e+00, %4969
  %5818 = call float @dx.op.binary.f32(i32 35, float %5817, float 0x3F847AE140000000)  ; FMax(a,b)
  %5819 = fmul fast float %5818, %5818
  %5820 = fmul fast float %5819, %5819
  %5821 = fsub fast float 1.000000e+00, %5820
  %5822 = fmul fast float %4973, %4973
  %5823 = fmul fast float %5822, %5821
  %5824 = fadd fast float %5823, %5820
  %5825 = bitcast float %5824 to i32
  %5826 = ashr i32 %5825, 1
  %5827 = add nsw i32 %5826, 532487669
  %5828 = bitcast i32 %5827 to float
  %5829 = fadd fast float %5828, %4973
  %5830 = fmul fast float %5820, %5815
  %5831 = fsub fast float 1.000000e+00, %5815
  %5832 = fadd fast float %5831, %5830
  %5833 = fmul fast float %5816, %5816
  %5834 = fmul fast float %5833, %5821
  %5835 = fadd fast float %5834, %5820
  %5836 = bitcast float %5835 to i32
  %5837 = ashr i32 %5836, 1
  %5838 = add nsw i32 %5837, 532487669
  %5839 = bitcast i32 %5838 to float
  %5840 = fadd fast float %5839, %5816
  %5841 = fmul fast float %5832, %5832
  %5842 = fmul fast float %5841, %5829
  %5843 = fmul fast float %5842, %5840
  %5844 = fdiv fast float 1.000000e+00, %5843
  %5845 = bitcast float %5820 to i32
  %5846 = sitofp i32 %5845 to float
  %5847 = fmul fast float %5846, 0x3FE7F73180000000
  %5848 = fadd fast float %5847, 0x41AFE27C40000000
  %5849 = fptosi float %5848 to i32
  %5850 = bitcast i32 %5849 to float
  %5851 = fmul fast float %5637, 0x3FD80E9D60000000
  %5852 = fmul fast float %5851, %5802
  %5853 = fadd fast float %5850, %5852
  %5854 = bitcast float %5853 to i32
  %5855 = sub nsw i32 2129859010, %5854
  %5856 = bitcast i32 %5855 to float
  %5857 = fmul fast float %5820, %5844
  %5858 = fmul fast float %5857, %5850
  %5859 = fmul fast float %5858, %5856
  %5860 = call float @dx.op.unary.f32(i32 6, float %5792)  ; FAbs(value)
  %5861 = fsub fast float 1.000000e+00, %5860
  %5862 = bitcast float %5861 to i32
  %5863 = sitofp i32 %5862 to float
  %5864 = fmul fast float %5863, 5.000000e+00
  %5865 = fadd fast float %5864, 0xC1EFBF8940000000
  %5866 = fptosi float %5865 to i32
  %5867 = bitcast i32 %5866 to float
  %5868 = fsub fast float 1.000000e+00, %4960
  %5869 = fsub fast float 1.000000e+00, %4961
  %5870 = fsub fast float 1.000000e+00, %4971
  %5871 = fmul fast float %5867, %5868
  %5872 = fmul fast float %5867, %5869
  %5873 = fmul fast float %5867, %5870
  %5874 = fadd fast float %5871, %4960
  %5875 = fadd fast float %5872, %4961
  %5876 = fadd fast float %5873, %4971
  br i1 %5233, label %5877, label %5900

; <label>:5877                                    ; preds = %5763
  %5878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3766, float %5860, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5879 = extractvalue %dx.types.ResRet.f32 %5878, 0
  %5880 = extractvalue %dx.types.ResRet.f32 %5878, 1
  %5881 = extractvalue %dx.types.ResRet.f32 %5878, 2
  %5882 = fadd fast float %5879, -5.000000e-01
  %5883 = fadd fast float %5880, -5.000000e-01
  %5884 = fadd fast float %5881, -5.000000e-01
  %5885 = fmul fast float %4960, 4.000000e+00
  %5886 = fmul fast float %5885, %5868
  %5887 = fmul fast float %5886, %5882
  %5888 = fmul fast float %4961, 4.000000e+00
  %5889 = fmul fast float %5888, %5869
  %5890 = fmul fast float %5889, %5883
  %5891 = fmul fast float %4971, 4.000000e+00
  %5892 = fmul fast float %5891, %5870
  %5893 = fmul fast float %5892, %5884
  %5894 = fadd fast float %5887, %5874
  %5895 = fadd fast float %5890, %5875
  %5896 = fadd fast float %5893, %5876
  %5897 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5898 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  %5899 = call float @dx.op.unary.f32(i32 7, float %5896)  ; Saturate(value)
  br label %5900

; <label>:5900                                    ; preds = %5877, %5763
  %5901 = phi float [ %5897, %5877 ], [ %5874, %5763 ]
  %5902 = phi float [ %5898, %5877 ], [ %5875, %5763 ]
  %5903 = phi float [ %5899, %5877 ], [ %5876, %5763 ]
  %5904 = fmul fast float %5791, 9.843750e-01
  %5905 = fadd fast float %5904, 7.812500e-03
  %5906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5905, float %5223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5907 = extractvalue %dx.types.ResRet.f32 %5906, 2
  %5908 = extractvalue %dx.types.ResRet.f32 %5906, 3
  %5909 = fmul fast float %5907, %4960
  %5910 = fmul fast float %5907, %4961
  %5911 = fmul fast float %5907, %4971
  %5912 = fadd fast float %5909, %5908
  %5913 = fadd fast float %5910, %5908
  %5914 = fadd fast float %5911, %5908
  br i1 %5233, label %5915, label %5938

; <label>:5915                                    ; preds = %5900
  %5916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3766, float %5791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5917 = extractvalue %dx.types.ResRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.ResRet.f32 %5916, 1
  %5919 = extractvalue %dx.types.ResRet.f32 %5916, 2
  %5920 = fadd fast float %5917, -5.000000e-01
  %5921 = fadd fast float %5918, -5.000000e-01
  %5922 = fadd fast float %5919, -5.000000e-01
  %5923 = fmul fast float %4960, 4.000000e+00
  %5924 = fmul fast float %5923, %5868
  %5925 = fmul fast float %5924, %5920
  %5926 = fmul fast float %4961, 4.000000e+00
  %5927 = fmul fast float %5926, %5869
  %5928 = fmul fast float %5927, %5921
  %5929 = fmul fast float %4971, 4.000000e+00
  %5930 = fmul fast float %5929, %5870
  %5931 = fmul fast float %5930, %5922
  %5932 = fadd fast float %5925, %5912
  %5933 = fadd fast float %5928, %5913
  %5934 = fadd fast float %5931, %5914
  %5935 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5936 = call float @dx.op.unary.f32(i32 7, float %5933)  ; Saturate(value)
  %5937 = call float @dx.op.unary.f32(i32 7, float %5934)  ; Saturate(value)
  br label %5938

; <label>:5938                                    ; preds = %5915, %5900
  %5939 = phi float [ %5935, %5915 ], [ %5912, %5900 ]
  %5940 = phi float [ %5936, %5915 ], [ %5913, %5900 ]
  %5941 = phi float [ %5937, %5915 ], [ %5914, %5900 ]
  %5942 = call float @dx.op.binary.f32(i32 35, float %5940, float %5941)  ; FMax(a,b)
  %5943 = call float @dx.op.binary.f32(i32 35, float %5939, float %5942)  ; FMax(a,b)
  %5944 = fsub fast float 1.000000e+00, %5943
  %5945 = fmul fast float %5901, %5859
  %5946 = fmul fast float %5902, %5859
  %5947 = fmul fast float %5903, %5859
  %5948 = fsub fast float 1.000000e+00, %5792
  %5949 = bitcast float %5948 to i32
  %5950 = sitofp i32 %5949 to float
  %5951 = fmul fast float %5950, 5.000000e+00
  %5952 = fadd fast float %5951, 0xC1EFBF8940000000
  %5953 = fptosi float %5952 to i32
  %5954 = bitcast i32 %5953 to float
  %5955 = fmul fast float %5954, %3767
  %5956 = fmul fast float %5944, %5955
  %5957 = fmul fast float %5956, %5283
  %5958 = fmul fast float %5956, %5284
  %5959 = fmul fast float %5956, %5285
  %5960 = fadd fast float %5957, %5945
  %5961 = fadd fast float %5958, %5946
  %5962 = fadd fast float %5959, %5947
  %5963 = fmul fast float %5780, %3763
  %5964 = fmul fast float %5963, %5798
  %5965 = fmul fast float %5964, %5944
  %5966 = fmul fast float %5781, %3763
  %5967 = fmul fast float %5966, %5798
  %5968 = fmul fast float %5967, %5944
  %5969 = fmul fast float %5782, %3763
  %5970 = fmul fast float %5969, %5798
  %5971 = fmul fast float %5970, %5944
  %5972 = fadd fast float %5965, %5619
  %5973 = fadd fast float %5968, %5620
  %5974 = fadd fast float %5971, %5621
  %5975 = fmul fast float %5964, %5960
  %5976 = fmul fast float %5967, %5961
  %5977 = fmul fast float %5970, %5962
  %5978 = fadd fast float %5975, %5616
  %5979 = fadd fast float %5976, %5617
  %5980 = fadd fast float %5977, %5618
  br label %5694

; <label>:5981                                    ; preds = %5694
  br label %5982

; <label>:5982                                    ; preds = %5981, %5582
  %5983 = phi float [ %5584, %5582 ], [ %5695, %5981 ]
  %5984 = phi float [ %5585, %5582 ], [ %5696, %5981 ]
  %5985 = phi float [ %5586, %5582 ], [ %5697, %5981 ]
  %5986 = phi float [ %5587, %5582 ], [ %5698, %5981 ]
  %5987 = phi float [ %5588, %5582 ], [ %5699, %5981 ]
  %5988 = phi float [ %5589, %5582 ], [ %5700, %5981 ]
  %5989 = add i32 %5583, 1
  %5990 = icmp ugt i32 %5989, %5579
  br i1 %5990, label %5991, label %5582

; <label>:5991                                    ; preds = %5982
  br label %5992

; <label>:5992                                    ; preds = %5991, %5558, %5548
  %5993 = phi float [ %5549, %5548 ], [ %5549, %5558 ], [ %5983, %5991 ]
  %5994 = phi float [ %5550, %5548 ], [ %5550, %5558 ], [ %5984, %5991 ]
  %5995 = phi float [ %5551, %5548 ], [ %5551, %5558 ], [ %5985, %5991 ]
  %5996 = phi float [ %5552, %5548 ], [ %5552, %5558 ], [ %5986, %5991 ]
  %5997 = phi float [ %5553, %5548 ], [ %5553, %5558 ], [ %5987, %5991 ]
  %5998 = phi float [ %5554, %5548 ], [ %5554, %5558 ], [ %5988, %5991 ]
  %5999 = call float @dx.op.unary.f32(i32 24, float %4963)  ; Sqrt(value)
  %6000 = call float @dx.op.unary.f32(i32 24, float %4964)  ; Sqrt(value)
  %6001 = call float @dx.op.unary.f32(i32 24, float %4965)  ; Sqrt(value)
  %6002 = fmul fast float %5999, %5996
  %6003 = fmul fast float %6000, %5997
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 0
  br i1 %220, label %6006, label %6026

; <label>:6006                                    ; preds = %5992
  %6007 = fadd fast float %5998, %3769
  %6008 = fmul fast float %6007, %3770
  %6009 = fsub fast float 1.000000e+00, %3770
  %6010 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.f32 %6011, 3
  %6013 = fmul fast float %6012, %6010
  %6014 = fadd fast float %6013, %6008
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6017 = fmul fast float %6016, %5289
  %6018 = fsub fast float %6014, %6017
  %6019 = fadd fast float %6003, %6002
  %6020 = fmul fast float %6005, %6019
  %6021 = extractvalue %dx.types.CBufRet.f32 %6011, 1
  %6022 = fsub fast float %6018, %6021
  %6023 = extractvalue %dx.types.CBufRet.f32 %6011, 2
  %6024 = fmul fast float %6022, %6023
  %6025 = call float @dx.op.unary.f32(i32 7, float %6024)  ; Saturate(value)
  br label %6042

; <label>:6026                                    ; preds = %5992
  %6027 = fmul fast float %6001, %5998
  %6028 = fmul fast float %6005, %6002
  %6029 = fmul fast float %6005, %6003
  %6030 = fmul fast float %6027, %6005
  %6031 = add i32 %35, 356
  %6032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6031, i32 undef)  ; BufferLoad(srv,index,wot)
  %6033 = extractvalue %dx.types.ResRet.i32 %6032, 0
  %6034 = and i32 %6033, 32
  %6035 = icmp eq i32 %6034, 0
  br i1 %6035, label %6042, label %6036

; <label>:6036                                    ; preds = %6026
  %6037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6038 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6039 = fmul fast float %6038, 0x3FE99999A0000000
  %6040 = fadd fast float %6038, %6028
  %6041 = fadd fast float %6039, %6030
  br label %6042

; <label>:6042                                    ; preds = %6036, %6026, %6006
  %6043 = phi float [ %6020, %6006 ], [ %6040, %6036 ], [ %6028, %6026 ]
  %6044 = phi float [ %6025, %6006 ], [ %6029, %6036 ], [ %6029, %6026 ]
  %6045 = phi float [ 1.000000e+00, %6006 ], [ %6041, %6036 ], [ %6030, %6026 ]
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 0
  %6048 = fmul fast float %6047, %5994
  %6049 = fmul fast float %6047, %5995
  %6050 = fadd fast float %5994, %5993
  %6051 = select i1 %220, float %6050, float %5993
  %6052 = fmul float %6051, %6047
  %6053 = select i1 %220, float 0.000000e+00, float %6048
  %6054 = select i1 %220, float 0.000000e+00, float %6049
  %6055 = fmul fast float %6043, %5999
  %6056 = fmul fast float %6044, %6000
  %6057 = fmul fast float %6045, %6001
  %6058 = fadd fast float %6052, %6055
  %6059 = fadd fast float %6053, %6056
  %6060 = fadd fast float %6054, %6057
  %6061 = select i1 %220, float %6044, float %6059
  %6062 = select i1 %220, float %6045, float %6060
  %6063 = call float @dx.op.binary.f32(i32 36, float %6058, float 3.225500e+04)  ; FMin(a,b)
  %6064 = call float @dx.op.binary.f32(i32 36, float %6061, float 3.225500e+04)  ; FMin(a,b)
  %6065 = call float @dx.op.binary.f32(i32 36, float %6062, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6063)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6064)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6065)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

