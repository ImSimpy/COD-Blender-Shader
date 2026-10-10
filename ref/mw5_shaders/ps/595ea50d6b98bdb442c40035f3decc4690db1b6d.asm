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
; shader hash: 406d0b294b81d97e66fc62235999ce2b
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
  %943 = phi float [ 0.000000e+00, %438 ], [ %895, %925 ]
  %944 = phi float [ 0.000000e+00, %438 ], [ %896, %925 ]
  %945 = phi float [ 0.000000e+00, %438 ], [ %897, %925 ]
  %946 = phi float [ 0.000000e+00, %438 ], [ %767, %925 ]
  %947 = phi float [ 0.000000e+00, %438 ], [ %768, %925 ]
  %948 = phi float [ 0.000000e+00, %438 ], [ %769, %925 ]
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
  %1069 = add i32 %34, 444
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
  %1121 = add i32 %34, 428
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
  %1147 = add i32 %34, 380
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
  %1170 = add i32 %34, 460
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
  %1368 = add i32 %34, 396
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
  %1452 = add i32 %34, 412
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
  %1500 = add i32 %34, 476
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
  %1532 = fmul fast float %1531, %946
  %1533 = fmul fast float %1531, %947
  %1534 = fmul fast float %1531, %948
  %1535 = fmul fast float %1531, %943
  %1536 = fmul fast float %1531, %944
  %1537 = fmul fast float %1531, %945
  br label %1538

; <label>:1538                                    ; preds = %1530, %1515
  %1539 = phi float [ %1535, %1530 ], [ %943, %1515 ]
  %1540 = phi float [ %1536, %1530 ], [ %944, %1515 ]
  %1541 = phi float [ %1537, %1530 ], [ %945, %1515 ]
  %1542 = phi float [ %1532, %1530 ], [ %946, %1515 ]
  %1543 = phi float [ %1533, %1530 ], [ %947, %1515 ]
  %1544 = phi float [ %1534, %1530 ], [ %948, %1515 ]
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
  %1558 = fsub fast float %1357, %1542
  %1559 = fsub fast float %1358, %1543
  %1560 = fsub fast float %1359, %1544
  %1561 = fmul fast float %1552, %1558
  %1562 = fmul fast float %1552, %1559
  %1563 = fmul fast float %1552, %1560
  %1564 = fadd fast float %1561, %1542
  %1565 = fadd fast float %1562, %1543
  %1566 = fadd fast float %1563, %1544
  %1567 = fsub fast float %1343, %949
  %1568 = fmul fast float %1552, %1567
  %1569 = fadd fast float %1568, %949
  %1570 = fsub fast float %1485, %1539
  %1571 = fsub fast float %1486, %1540
  %1572 = fsub fast float %1487, %1541
  %1573 = fmul fast float %1557, %1570
  %1574 = fmul fast float %1557, %1571
  %1575 = fmul fast float %1557, %1572
  %1576 = fadd fast float %1573, %1539
  %1577 = fadd fast float %1574, %1540
  %1578 = fadd fast float %1575, %1541
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
  %1594 = fmul fast float %1591, %1542
  %1595 = fmul fast float %1592, %1543
  %1596 = fmul fast float %1593, %1544
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
  %1614 = fmul fast float %1613, %1542
  %1615 = fadd fast float %1614, %1612
  %1616 = fmul fast float %1615, %1542
  %1617 = fmul fast float %1610, 2.000000e+00
  %1618 = fsub fast float 1.000000e+00, %1617
  %1619 = fmul fast float %1618, %1543
  %1620 = fadd fast float %1619, %1617
  %1621 = fmul fast float %1620, %1543
  %1622 = fmul fast float %1611, 2.000000e+00
  %1623 = fsub fast float 1.000000e+00, %1622
  %1624 = fmul fast float %1623, %1544
  %1625 = fadd fast float %1624, %1622
  %1626 = fmul fast float %1625, %1544
  br label %1627

; <label>:1627                                    ; preds = %1599, %1597, %1584, %1554, %1538
  %1628 = phi float [ %1539, %1538 ], [ %1539, %1599 ], [ %1539, %1597 ], [ %1539, %1584 ], [ %1576, %1554 ]
  %1629 = phi float [ %1540, %1538 ], [ %1540, %1599 ], [ %1540, %1597 ], [ %1540, %1584 ], [ %1577, %1554 ]
  %1630 = phi float [ %1541, %1538 ], [ %1541, %1599 ], [ %1541, %1597 ], [ %1541, %1584 ], [ %1578, %1554 ]
  %1631 = phi float [ %1542, %1538 ], [ %1616, %1599 ], [ %1542, %1597 ], [ %1594, %1584 ], [ %1564, %1554 ]
  %1632 = phi float [ %1543, %1538 ], [ %1621, %1599 ], [ %1543, %1597 ], [ %1595, %1584 ], [ %1565, %1554 ]
  %1633 = phi float [ %1544, %1538 ], [ %1626, %1599 ], [ %1544, %1597 ], [ %1596, %1584 ], [ %1566, %1554 ]
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
  %1848 = add i32 %34, 448
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
  %1900 = add i32 %34, 432
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
  %1926 = add i32 %34, 384
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
  %1949 = add i32 %34, 464
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
  %2147 = add i32 %34, 400
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
  %2231 = add i32 %34, 416
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
  %2279 = add i32 %34, 480
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
  %2311 = fmul fast float %2310, %1726
  %2312 = fmul fast float %2310, %1727
  %2313 = fmul fast float %2310, %1728
  %2314 = fmul fast float %2310, %1723
  %2315 = fmul fast float %2310, %1724
  %2316 = fmul fast float %2310, %1725
  br label %2317

; <label>:2317                                    ; preds = %2309, %2294
  %2318 = phi float [ %2314, %2309 ], [ %1723, %2294 ]
  %2319 = phi float [ %2315, %2309 ], [ %1724, %2294 ]
  %2320 = phi float [ %2316, %2309 ], [ %1725, %2294 ]
  %2321 = phi float [ %2311, %2309 ], [ %1726, %2294 ]
  %2322 = phi float [ %2312, %2309 ], [ %1727, %2294 ]
  %2323 = phi float [ %2313, %2309 ], [ %1728, %2294 ]
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
  %2337 = fsub fast float %2136, %2321
  %2338 = fsub fast float %2137, %2322
  %2339 = fsub fast float %2138, %2323
  %2340 = fmul fast float %2331, %2337
  %2341 = fmul fast float %2331, %2338
  %2342 = fmul fast float %2331, %2339
  %2343 = fadd fast float %2340, %2321
  %2344 = fadd fast float %2341, %2322
  %2345 = fadd fast float %2342, %2323
  %2346 = fsub fast float %2122, %1729
  %2347 = fmul fast float %2331, %2346
  %2348 = fadd fast float %2347, %1729
  %2349 = fsub fast float %2264, %2318
  %2350 = fsub fast float %2265, %2319
  %2351 = fsub fast float %2266, %2320
  %2352 = fmul fast float %2336, %2349
  %2353 = fmul fast float %2336, %2350
  %2354 = fmul fast float %2336, %2351
  %2355 = fadd fast float %2352, %2318
  %2356 = fadd fast float %2353, %2319
  %2357 = fadd fast float %2354, %2320
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
  %2373 = fmul fast float %2370, %2321
  %2374 = fmul fast float %2371, %2322
  %2375 = fmul fast float %2372, %2323
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
  %2393 = fmul fast float %2392, %2321
  %2394 = fadd fast float %2393, %2391
  %2395 = fmul fast float %2394, %2321
  %2396 = fmul fast float %2389, 2.000000e+00
  %2397 = fsub fast float 1.000000e+00, %2396
  %2398 = fmul fast float %2397, %2322
  %2399 = fadd fast float %2398, %2396
  %2400 = fmul fast float %2399, %2322
  %2401 = fmul fast float %2390, 2.000000e+00
  %2402 = fsub fast float 1.000000e+00, %2401
  %2403 = fmul fast float %2402, %2323
  %2404 = fadd fast float %2403, %2401
  %2405 = fmul fast float %2404, %2323
  br label %2406

; <label>:2406                                    ; preds = %2378, %2376, %2363, %2333, %2317
  %2407 = phi float [ %2318, %2317 ], [ %2318, %2378 ], [ %2318, %2376 ], [ %2318, %2363 ], [ %2355, %2333 ]
  %2408 = phi float [ %2319, %2317 ], [ %2319, %2378 ], [ %2319, %2376 ], [ %2319, %2363 ], [ %2356, %2333 ]
  %2409 = phi float [ %2320, %2317 ], [ %2320, %2378 ], [ %2320, %2376 ], [ %2320, %2363 ], [ %2357, %2333 ]
  %2410 = phi float [ %2321, %2317 ], [ %2395, %2378 ], [ %2321, %2376 ], [ %2373, %2363 ], [ %2343, %2333 ]
  %2411 = phi float [ %2322, %2317 ], [ %2400, %2378 ], [ %2322, %2376 ], [ %2374, %2363 ], [ %2344, %2333 ]
  %2412 = phi float [ %2323, %2317 ], [ %2405, %2378 ], [ %2323, %2376 ], [ %2375, %2363 ], [ %2345, %2333 ]
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
  %2627 = add i32 %34, 452
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
  %2679 = add i32 %34, 436
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
  %2705 = add i32 %34, 388
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
  %2728 = add i32 %34, 468
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
  %2926 = add i32 %34, 404
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
  %3010 = add i32 %34, 420
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
  %3058 = add i32 %34, 484
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
  %3090 = fmul fast float %3089, %2505
  %3091 = fmul fast float %3089, %2506
  %3092 = fmul fast float %3089, %2507
  %3093 = fmul fast float %3089, %2502
  %3094 = fmul fast float %3089, %2503
  %3095 = fmul fast float %3089, %2504
  br label %3096

; <label>:3096                                    ; preds = %3088, %3073
  %3097 = phi float [ %3093, %3088 ], [ %2502, %3073 ]
  %3098 = phi float [ %3094, %3088 ], [ %2503, %3073 ]
  %3099 = phi float [ %3095, %3088 ], [ %2504, %3073 ]
  %3100 = phi float [ %3090, %3088 ], [ %2505, %3073 ]
  %3101 = phi float [ %3091, %3088 ], [ %2506, %3073 ]
  %3102 = phi float [ %3092, %3088 ], [ %2507, %3073 ]
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
  %3116 = fsub fast float %2915, %3100
  %3117 = fsub fast float %2916, %3101
  %3118 = fsub fast float %2917, %3102
  %3119 = fmul fast float %3110, %3116
  %3120 = fmul fast float %3110, %3117
  %3121 = fmul fast float %3110, %3118
  %3122 = fadd fast float %3119, %3100
  %3123 = fadd fast float %3120, %3101
  %3124 = fadd fast float %3121, %3102
  %3125 = fsub fast float %2901, %2508
  %3126 = fmul fast float %3110, %3125
  %3127 = fadd fast float %3126, %2508
  %3128 = fsub fast float %3043, %3097
  %3129 = fsub fast float %3044, %3098
  %3130 = fsub fast float %3045, %3099
  %3131 = fmul fast float %3115, %3128
  %3132 = fmul fast float %3115, %3129
  %3133 = fmul fast float %3115, %3130
  %3134 = fadd fast float %3131, %3097
  %3135 = fadd fast float %3132, %3098
  %3136 = fadd fast float %3133, %3099
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
  %3152 = fmul fast float %3149, %3100
  %3153 = fmul fast float %3150, %3101
  %3154 = fmul fast float %3151, %3102
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
  %3172 = fmul fast float %3171, %3100
  %3173 = fadd fast float %3172, %3170
  %3174 = fmul fast float %3173, %3100
  %3175 = fmul fast float %3168, 2.000000e+00
  %3176 = fsub fast float 1.000000e+00, %3175
  %3177 = fmul fast float %3176, %3101
  %3178 = fadd fast float %3177, %3175
  %3179 = fmul fast float %3178, %3101
  %3180 = fmul fast float %3169, 2.000000e+00
  %3181 = fsub fast float 1.000000e+00, %3180
  %3182 = fmul fast float %3181, %3102
  %3183 = fadd fast float %3182, %3180
  %3184 = fmul fast float %3183, %3102
  br label %3185

; <label>:3185                                    ; preds = %3157, %3155, %3142, %3112, %3096
  %3186 = phi float [ %3097, %3096 ], [ %3097, %3157 ], [ %3097, %3155 ], [ %3097, %3142 ], [ %3134, %3112 ]
  %3187 = phi float [ %3098, %3096 ], [ %3098, %3157 ], [ %3098, %3155 ], [ %3098, %3142 ], [ %3135, %3112 ]
  %3188 = phi float [ %3099, %3096 ], [ %3099, %3157 ], [ %3099, %3155 ], [ %3099, %3142 ], [ %3136, %3112 ]
  %3189 = phi float [ %3100, %3096 ], [ %3174, %3157 ], [ %3100, %3155 ], [ %3152, %3142 ], [ %3122, %3112 ]
  %3190 = phi float [ %3101, %3096 ], [ %3179, %3157 ], [ %3101, %3155 ], [ %3153, %3142 ], [ %3123, %3112 ]
  %3191 = phi float [ %3102, %3096 ], [ %3184, %3157 ], [ %3102, %3155 ], [ %3154, %3142 ], [ %3124, %3112 ]
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
  %3311 = fmul fast float %3300, %106
  %3312 = fmul fast float %3300, %107
  %3313 = fmul fast float %3300, %108
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
  %3393 = phi float [ %3513, %3507 ], [ %3281, %3385 ]
  %3394 = phi float [ %3514, %3507 ], [ %3282, %3385 ]
  %3395 = phi float [ %3515, %3507 ], [ %3283, %3385 ]
  %3396 = phi float [ %3516, %3507 ], [ %3319, %3385 ]
  %3397 = phi float [ %3517, %3507 ], [ %3320, %3385 ]
  %3398 = phi float [ %3518, %3507 ], [ %3321, %3385 ]
  %3399 = phi float [ %3519, %3507 ], [ %3289, %3385 ]
  %3400 = phi float [ %3520, %3507 ], [ %3288, %3385 ]
  %3401 = phi float [ %3521, %3507 ], [ 0.000000e+00, %3385 ]
  %3402 = phi float [ %3522, %3507 ], [ %3287, %3385 ]
  %3403 = phi float [ %3523, %3507 ], [ %3284, %3385 ]
  %3404 = phi float [ %3524, %3507 ], [ %3285, %3385 ]
  %3405 = phi float [ %3525, %3507 ], [ %3286, %3385 ]
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
  %3812 = phi float [ %3281, %3323 ], [ %3513, %3805 ]
  %3813 = phi float [ %3282, %3323 ], [ %3514, %3805 ]
  %3814 = phi float [ %3283, %3323 ], [ %3515, %3805 ]
  %3815 = phi float [ %3319, %3323 ], [ %3516, %3805 ]
  %3816 = phi float [ %3320, %3323 ], [ %3517, %3805 ]
  %3817 = phi float [ %3321, %3323 ], [ %3518, %3805 ]
  %3818 = phi float [ %3289, %3323 ], [ %3519, %3805 ]
  %3819 = phi float [ %3288, %3323 ], [ %3520, %3805 ]
  %3820 = phi float [ 0.000000e+00, %3323 ], [ %3521, %3805 ]
  %3821 = phi float [ %3287, %3323 ], [ %3522, %3805 ]
  %3822 = phi float [ %3284, %3323 ], [ %3523, %3805 ]
  %3823 = phi float [ %3285, %3323 ], [ %3524, %3805 ]
  %3824 = phi float [ %3286, %3323 ], [ %3525, %3805 ]
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
  %3841 = phi float [ %3812, %3806 ], [ %3281, %3278 ]
  %3842 = phi float [ %3813, %3806 ], [ %3282, %3278 ]
  %3843 = phi float [ %3814, %3806 ], [ %3283, %3278 ]
  %3844 = phi float [ %3822, %3806 ], [ %3284, %3278 ]
  %3845 = phi float [ %3823, %3806 ], [ %3285, %3278 ]
  %3846 = phi float [ %3824, %3806 ], [ %3286, %3278 ]
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
  %3862 = fmul fast float %3861, %3844
  %3863 = fmul fast float %3861, %3845
  %3864 = fmul fast float %3861, %3846
  %3865 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3866 = call float @dx.op.unary.f32(i32 7, float %3863)  ; Saturate(value)
  %3867 = call float @dx.op.unary.f32(i32 7, float %3864)  ; Saturate(value)
  %3868 = fmul fast float %3858, %3844
  %3869 = fmul fast float %3858, %3845
  %3870 = fmul fast float %3858, %3846
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
  %3882 = call float @dx.op.binary.f32(i32 35, float %3865, float %3844)  ; FMax(a,b)
  %3883 = call float @dx.op.binary.f32(i32 35, float %3866, float %3844)  ; FMax(a,b)
  %3884 = call float @dx.op.binary.f32(i32 35, float %3867, float %3844)  ; FMax(a,b)
  %3885 = call float @dx.op.dot3.f32(i32 55, float %3865, float %3866, float %3867, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3886 = select i1 %205, float %3844, float %3865
  %3887 = select i1 %205, float %3885, float %3866
  %3888 = select i1 %205, float 1.000000e+00, float %3867
  %3889 = select i1 %3881, float %3882, float %3886
  %3890 = select i1 %3881, float %3883, float %3887
  %3891 = select i1 %3881, float %3884, float %3888
  %3892 = add i32 %34, 492
  %3893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.i32 %3893, 0
  %3895 = add i32 %3894, 0
  %3896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3896, %dx.types.Handle %80, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3897, 1
  %3900 = extractvalue %dx.types.ResRet.f32 %3897, 2
  %3901 = extractvalue %dx.types.ResRet.f32 %3897, 3
  %3902 = fmul fast float %3898, 2.000000e+00
  %3903 = fadd fast float %3902, -1.000000e+00
  %3904 = fmul fast float %3899, 2.000000e+00
  %3905 = fadd fast float %3904, -1.000000e+00
  %3906 = fmul fast float %3903, %64
  %3907 = fmul fast float %3903, %65
  %3908 = fmul fast float %3903, %66
  %3909 = fmul fast float %3905, %106
  %3910 = fmul fast float %3905, %107
  %3911 = fmul fast float %3905, %108
  %3912 = fadd fast float %3906, %3909
  %3913 = fadd fast float %3907, %3910
  %3914 = fadd fast float %3908, %3911
  %3915 = call float @dx.op.dot3.f32(i32 55, float %3912, float %3913, float %3914, float %3912, float %3913, float %3914)  ; Dot3(ax,ay,az,bx,by,bz)
  %3916 = call float @dx.op.unary.f32(i32 25, float %3915)  ; Rsqrt(value)
  %3917 = fmul fast float %3912, %3916
  %3918 = fmul fast float %3913, %3916
  %3919 = fmul fast float %3914, %3916
  %3920 = add i32 %34, 360
  %3921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.i32 %3921, 0
  %3923 = bitcast i32 %3922 to float
  %3924 = fmul fast float %3923, %3900
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3926 = extractvalue %dx.types.ResRet.i32 %3921, 1
  %3927 = bitcast i32 %3926 to float
  %3928 = fmul fast float %3927, %3901
  %3929 = fmul fast float %3928, %3838
  %3930 = fmul fast float %3928, %3839
  %3931 = fmul fast float %3928, %3840
  %3932 = fadd fast float %3929, %3917
  %3933 = fadd fast float %3930, %3918
  %3934 = fadd fast float %3931, %3919
  %3935 = call float @dx.op.dot3.f32(i32 55, float %3932, float %3933, float %3934, float %3932, float %3933, float %3934)  ; Dot3(ax,ay,az,bx,by,bz)
  %3936 = call float @dx.op.unary.f32(i32 25, float %3935)  ; Rsqrt(value)
  %3937 = fmul fast float %3932, %3936
  %3938 = fmul fast float %3933, %3936
  %3939 = fmul fast float %3934, %3936
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.CBufRet.f32 %3940, 1
  %3943 = extractvalue %dx.types.CBufRet.f32 %3940, 2
  %3944 = fadd fast float %3941, %166
  %3945 = fadd fast float %3942, %167
  %3946 = fadd fast float %3943, %168
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.CBufRet.f32 %3947, 1
  %3950 = fsub fast float %3944, %3948
  %3951 = fsub fast float %3945, %3949
  %3952 = fmul fast float %3950, %3950
  %3953 = fmul fast float %3951, %3951
  %3954 = fadd fast float %3952, %3953
  %3955 = call float @dx.op.unary.f32(i32 24, float %3954)  ; Sqrt(value)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3947, 2
  %3957 = fcmp fast olt float %3955, %3956
  br i1 %3957, label %3958, label %4025

; <label>:3958                                    ; preds = %3837
  %3959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3959, 0
  %3961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3962 = extractvalue %dx.types.CBufRet.f32 %3961, 0
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 0
  %3965 = extractvalue %dx.types.CBufRet.f32 %3959, 1
  %3966 = extractvalue %dx.types.CBufRet.f32 %3961, 1
  %3967 = extractvalue %dx.types.CBufRet.f32 %3963, 1
  %3968 = extractvalue %dx.types.CBufRet.f32 %3959, 3
  %3969 = extractvalue %dx.types.CBufRet.f32 %3961, 3
  %3970 = extractvalue %dx.types.CBufRet.f32 %3963, 3
  %3971 = fadd fast float %3968, %3944
  %3972 = fadd fast float %3969, %3945
  %3973 = fadd fast float %3970, %3946
  %3974 = fmul fast float %3971, %3960
  %3975 = call float @dx.op.tertiary.f32(i32 46, float %3972, float %3962, float %3974)  ; FMad(a,b,c)
  %3976 = call float @dx.op.tertiary.f32(i32 46, float %3973, float %3964, float %3975)  ; FMad(a,b,c)
  %3977 = fmul fast float %3971, %3965
  %3978 = call float @dx.op.tertiary.f32(i32 46, float %3972, float %3966, float %3977)  ; FMad(a,b,c)
  %3979 = call float @dx.op.tertiary.f32(i32 46, float %3973, float %3967, float %3978)  ; FMad(a,b,c)
  %3980 = fsub fast float %3976, %3968
  %3981 = fsub fast float %3979, %3969
  %3982 = fsub fast float %3980, %3948
  %3983 = fadd fast float %3982, %3956
  %3984 = fsub fast float %3981, %3949
  %3985 = fadd fast float %3984, %3956
  %3986 = extractvalue %dx.types.CBufRet.f32 %3947, 3
  %3987 = fmul fast float %3983, %3986
  %3988 = fmul fast float %3985, %3986
  %3989 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3990 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3991 = fsub fast float 1.000000e+00, %3989
  %3992 = fsub fast float 1.000000e+00, %3990
  %3993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3991, float %3992, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3994 = extractvalue %dx.types.ResRet.f32 %3993, 0
  %3995 = fcmp fast ugt float %3994, 0.000000e+00
  br i1 %3995, label %3996, label %4299

; <label>:3996                                    ; preds = %3958
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 2
  %3999 = fmul fast float %3998, %3994
  %4000 = extractvalue %dx.types.CBufRet.f32 %3997, 3
  %4001 = fadd fast float %4000, %3999
  %4002 = extractvalue %dx.types.CBufRet.f32 %3963, 2
  %4003 = fadd fast float %4001, %3970
  %4004 = fmul fast float %3976, %3964
  %4005 = call float @dx.op.tertiary.f32(i32 46, float %3979, float %3967, float %4004)  ; FMad(a,b,c)
  %4006 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %4002, float %4005)  ; FMad(a,b,c)
  %4007 = fsub fast float %4006, %3970
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 2
  %4010 = fsub fast float %4007, %4009
  %4011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3991, float %3992, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4012 = extractvalue %dx.types.ResRet.f32 %4011, 0
  %4013 = extractvalue %dx.types.ResRet.f32 %4011, 1
  %4014 = extractvalue %dx.types.ResRet.f32 %4011, 2
  %4015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3991, float %3992, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4016 = extractvalue %dx.types.ResRet.f32 %4015, 0
  %4017 = extractvalue %dx.types.ResRet.f32 %4015, 1
  %4018 = extractvalue %dx.types.ResRet.f32 %4015, 2
  %4019 = fadd fast float %4016, %4012
  %4020 = fmul fast float %4019, 0x3F847AE140000000
  %4021 = fadd fast float %4017, %4013
  %4022 = fmul fast float %4021, 0x3F847AE140000000
  %4023 = fadd fast float %4018, %4014
  %4024 = fmul fast float %4023, 0x3F847AE140000000
  br label %4299

; <label>:4025                                    ; preds = %3837
  %4026 = and i32 %184, 1
  %4027 = icmp eq i32 %4026, 0
  br i1 %4027, label %4299, label %4028

; <label>:4028                                    ; preds = %4025
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4032 = extractvalue %dx.types.CBufRet.f32 %4031, 0
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 0
  %4035 = extractvalue %dx.types.CBufRet.f32 %4029, 1
  %4036 = extractvalue %dx.types.CBufRet.f32 %4031, 1
  %4037 = extractvalue %dx.types.CBufRet.f32 %4033, 1
  %4038 = extractvalue %dx.types.CBufRet.f32 %4029, 3
  %4039 = extractvalue %dx.types.CBufRet.f32 %4031, 3
  %4040 = extractvalue %dx.types.CBufRet.f32 %4033, 3
  %4041 = fadd fast float %4038, %3944
  %4042 = fadd fast float %4039, %3945
  %4043 = fadd fast float %4040, %3946
  %4044 = fmul fast float %4041, %4030
  %4045 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %4032, float %4044)  ; FMad(a,b,c)
  %4046 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4034, float %4045)  ; FMad(a,b,c)
  %4047 = fmul fast float %4041, %4035
  %4048 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %4036, float %4047)  ; FMad(a,b,c)
  %4049 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4037, float %4048)  ; FMad(a,b,c)
  %4050 = fsub fast float %4046, %4038
  %4051 = fsub fast float %4049, %4039
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 0
  %4054 = extractvalue %dx.types.CBufRet.f32 %4052, 1
  %4055 = extractvalue %dx.types.CBufRet.f32 %4052, 2
  %4056 = extractvalue %dx.types.CBufRet.f32 %4052, 3
  %4057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.f32 %4057, 3
  %4059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4060 = extractvalue %dx.types.CBufRet.i32 %4059, 0
  %4061 = extractvalue %dx.types.CBufRet.i32 %4059, 1
  %4062 = udiv i32 %4061, %4060
  %4063 = fsub fast float %4050, %4053
  %4064 = fsub fast float %4051, %4054
  %4065 = call float @dx.op.binary.f32(i32 35, float %4063, float 0.000000e+00)  ; FMax(a,b)
  %4066 = call float @dx.op.binary.f32(i32 35, float %4064, float 0.000000e+00)  ; FMax(a,b)
  %4067 = call float @dx.op.binary.f32(i32 36, float %4065, float %4055)  ; FMin(a,b)
  %4068 = call float @dx.op.binary.f32(i32 36, float %4066, float %4056)  ; FMin(a,b)
  %4069 = add i32 %4060, -1
  %4070 = add i32 %4062, -1
  %4071 = fmul fast float %4067, %4058
  %4072 = fmul fast float %4068, %4058
  %4073 = fptoui float %4071 to i32
  %4074 = fptoui float %4072 to i32
  %4075 = call i32 @dx.op.binary.i32(i32 40, i32 %4073, i32 %4069)  ; UMin(a,b)
  %4076 = call i32 @dx.op.binary.i32(i32 40, i32 %4074, i32 %4070)  ; UMin(a,b)
  %4077 = mul i32 %4076, %4060
  %4078 = add i32 %4077, %4075
  %4079 = shl i32 %4078, 2
  %4080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.i32 %4080, 0
  %4082 = icmp eq i32 %4081, -1
  br i1 %4082, label %4299, label %4083

; <label>:4083                                    ; preds = %4028
  %4084 = mul i32 %4081, 148
  %4085 = add i32 %4084, 4
  %4086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4087 = extractvalue %dx.types.ResRet.f32 %4086, 0
  %4088 = add i32 %4084, 8
  %4089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4088, i32 undef)  ; BufferLoad(srv,index,wot)
  %4090 = extractvalue %dx.types.ResRet.f32 %4089, 0
  %4091 = add i32 %4084, 36
  %4092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4091, i32 undef)  ; BufferLoad(srv,index,wot)
  %4093 = extractvalue %dx.types.ResRet.f32 %4092, 0
  %4094 = add i32 %4084, 60
  %4095 = add i32 %4084, 92
  %4096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4095, i32 undef)  ; BufferLoad(srv,index,wot)
  %4097 = extractvalue %dx.types.ResRet.i32 %4096, 0
  %4098 = add i32 %4084, 116
  %4099 = fsub fast float %4050, %4087
  %4100 = fsub fast float %4051, %4090
  %4101 = fmul fast float %4058, %4099
  %4102 = fmul fast float %4058, %4100
  %4103 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4104 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4105 = fsub fast float 1.000000e+00, %4104
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 2
  %4108 = call float @dx.op.unary.f32(i32 83, float %4103)  ; DerivCoarseX(value)
  %4109 = call float @dx.op.unary.f32(i32 83, float %4105)  ; DerivCoarseX(value)
  %4110 = call float @dx.op.unary.f32(i32 84, float %4103)  ; DerivCoarseY(value)
  %4111 = call float @dx.op.unary.f32(i32 84, float %4105)  ; DerivCoarseY(value)
  %4112 = fmul fast float %4108, %4107
  %4113 = fmul fast float %4109, %4107
  %4114 = fmul fast float %4110, %4107
  %4115 = fmul fast float %4111, %4107
  %4116 = call float @dx.op.dot2.f32(i32 54, float %4114, float %4115, float %4114, float %4115)  ; Dot2(ax,ay,bx,by)
  %4117 = call float @dx.op.dot2.f32(i32 54, float %4112, float %4113, float %4112, float %4113)  ; Dot2(ax,ay,bx,by)
  %4118 = call float @dx.op.binary.f32(i32 35, float %4117, float %4116)  ; FMax(a,b)
  %4119 = call float @dx.op.unary.f32(i32 23, float %4118)  ; Log(value)
  %4120 = fmul fast float %4119, 5.000000e-01
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 1
  %4123 = fadd fast float %4122, %4120
  %4124 = call float @dx.op.binary.f32(i32 35, float %4123, float 0.000000e+00)  ; FMax(a,b)
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 3
  %4127 = fadd fast float %4126, %4124
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4130 = fadd fast float %4127, %4129
  %4131 = add i32 %4097, 0
  %4132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4131, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4133 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4132, i32 0)  ; GetDimensions(handle,mipLevel)
  %4134 = extractvalue %dx.types.Dimensions %4133, 0
  %4135 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4134)  ; FirstbitLo(value)
  %4136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.i32 %4136, 1
  %4138 = sub nsw i32 %4137, %4135
  %4139 = sitofp i32 %4138 to float
  %4140 = fsub fast float %4130, %4139
  %4141 = call float @dx.op.binary.f32(i32 35, float %4140, float 0.000000e+00)  ; FMax(a,b)
  %4142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4132, %dx.types.Handle %27, float %4103, float %4105, float %4093, float undef, i32 0, i32 0, i32 undef, float %4141)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = fcmp ule float %4143, 0x3FE0101020000000
  %4145 = extractvalue %dx.types.CBufRet.i32 %4136, 0
  %4146 = and i32 %4145, 128
  %4147 = icmp ne i32 %4146, 0
  %4148 = and i1 %4144, %4147
  br i1 %4148, label %4299, label %4149

; <label>:4149                                    ; preds = %4083
  %4150 = add i32 %4084, 20
  %4151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = add i32 %4084, 24
  %4154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4153, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.f32 %4154, 0
  %4156 = add i32 %4084, 40
  %4157 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4156, i32 undef)  ; BufferLoad(srv,index,wot)
  %4158 = extractvalue %dx.types.ResRet.f32 %4157, 0
  %4159 = add i32 %4084, 96
  %4160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.i32 %4160, 0
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 2
  %4164 = fmul fast float %4163, %4103
  %4165 = fmul fast float %4163, %4105
  %4166 = extractvalue %dx.types.CBufRet.f32 %4162, 3
  %4167 = fadd fast float %4164, %4166
  %4168 = fadd fast float %4165, %4166
  %4169 = add i32 %4161, 0
  %4170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4169, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4171 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4170, i32 0)  ; GetDimensions(handle,mipLevel)
  %4172 = extractvalue %dx.types.Dimensions %4171, 0
  %4173 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4172)  ; FirstbitLo(value)
  %4174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.i32 %4174, 1
  %4176 = sub nsw i32 %4175, %4173
  %4177 = sitofp i32 %4176 to float
  %4178 = fsub fast float %4127, %4177
  %4179 = call float @dx.op.binary.f32(i32 35, float %4178, float 0.000000e+00)  ; FMax(a,b)
  %4180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4170, %dx.types.Handle %27, float %4167, float %4168, float %4158, float undef, i32 0, i32 0, i32 undef, float %4179)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4181 = extractvalue %dx.types.ResRet.f32 %4180, 0
  %4182 = fmul fast float %4181, %4152
  %4183 = fadd fast float %4182, %4155
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.CBufRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.CBufRet.f32 %4184, 2
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 3
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 3
  %4192 = extractvalue %dx.types.CBufRet.f32 %4184, 3
  %4193 = fadd fast float %4189, %4050
  %4194 = fadd fast float %4191, %4051
  %4195 = fadd fast float %4183, %4192
  %4196 = fmul fast float %4193, %4185
  %4197 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4186, float %4196)  ; FMad(a,b,c)
  %4198 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4187, float %4197)  ; FMad(a,b,c)
  %4199 = fsub fast float %4198, %4192
  %4200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.f32 %4200, 2
  %4202 = fsub fast float %4199, %4201
  %4203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4204 = extractvalue %dx.types.CBufRet.i32 %4203, 0
  %4205 = call i32 @dx.op.binary.i32(i32 40, i32 %4081, i32 %4204)  ; UMin(a,b)
  %4206 = mul i32 %4205, 36
  %4207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.i32 %4207, 0
  %4209 = add i32 %4206, 4
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = fmul fast float %4211, %4103
  %4213 = fmul fast float %4211, %4105
  %4214 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4215 = fadd fast float %4212, %4214
  %4216 = fadd fast float %4213, %4214
  %4217 = icmp eq i32 %4208, 0
  br i1 %4217, label %4286, label %4218

; <label>:4218                                    ; preds = %4149
  br label %4219

; <label>:4219                                    ; preds = %4276, %4218
  %4220 = phi float [ %4277, %4276 ], [ 0.000000e+00, %4218 ]
  %4221 = phi float [ %4278, %4276 ], [ 0.000000e+00, %4218 ]
  %4222 = phi float [ %4279, %4276 ], [ 0.000000e+00, %4218 ]
  %4223 = phi float [ %4280, %4276 ], [ 0.000000e+00, %4218 ]
  %4224 = phi float [ %4281, %4276 ], [ 0.000000e+00, %4218 ]
  %4225 = phi float [ %4282, %4276 ], [ 0.000000e+00, %4218 ]
  %4226 = phi i32 [ %4283, %4276 ], [ 0, %4218 ]
  %4227 = shl i32 %4226, 2
  %4228 = add i32 %4094, %4227
  %4229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4228, i32 undef)  ; BufferLoad(srv,index,wot)
  %4230 = extractvalue %dx.types.ResRet.f32 %4229, 0
  %4231 = add i32 %4098, %4227
  %4232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4231, i32 undef)  ; BufferLoad(srv,index,wot)
  %4233 = extractvalue %dx.types.ResRet.i32 %4232, 0
  %4234 = add i32 %4233, 0
  %4235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4234, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4236 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4235, i32 0)  ; GetDimensions(handle,mipLevel)
  %4237 = extractvalue %dx.types.Dimensions %4236, 0
  %4238 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4237)  ; FirstbitLo(value)
  %4239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4240 = extractvalue %dx.types.CBufRet.i32 %4239, 1
  %4241 = sub nsw i32 %4240, %4238
  %4242 = sitofp i32 %4241 to float
  %4243 = fsub fast float %4127, %4242
  %4244 = call float @dx.op.binary.f32(i32 35, float %4243, float 0.000000e+00)  ; FMax(a,b)
  %4245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4235, %dx.types.Handle %27, float %4215, float %4216, float %4230, float undef, i32 0, i32 0, i32 undef, float %4244)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = fcmp fast ogt float %4246, 0.000000e+00
  br i1 %4247, label %4248, label %4276

; <label>:4248                                    ; preds = %4219
  %4249 = add i32 %4209, %4227
  %4250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.i32 %4250, 0
  %4252 = and i32 %4251, 32767
  %4253 = mul nuw nsw i32 %4252, 928
  %4254 = add nuw nsw i32 %4253, 48
  %4255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4254, i32 undef)  ; BufferLoad(srv,index,wot)
  %4256 = extractvalue %dx.types.ResRet.f32 %4255, 0
  %4257 = extractvalue %dx.types.ResRet.f32 %4255, 1
  %4258 = extractvalue %dx.types.ResRet.f32 %4255, 2
  %4259 = add nuw nsw i32 %4253, 60
  %4260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4259, i32 undef)  ; BufferLoad(srv,index,wot)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.ResRet.f32 %4260, 1
  %4263 = extractvalue %dx.types.ResRet.f32 %4260, 2
  %4264 = fmul fast float %4256, %4246
  %4265 = fmul fast float %4257, %4246
  %4266 = fmul fast float %4258, %4246
  %4267 = fadd fast float %4264, %4220
  %4268 = fadd fast float %4265, %4221
  %4269 = fadd fast float %4266, %4222
  %4270 = fmul fast float %4261, %4246
  %4271 = fmul fast float %4262, %4246
  %4272 = fmul fast float %4263, %4246
  %4273 = fadd fast float %4270, %4223
  %4274 = fadd fast float %4271, %4224
  %4275 = fadd fast float %4272, %4225
  br label %4276

; <label>:4276                                    ; preds = %4248, %4219
  %4277 = phi float [ %4267, %4248 ], [ %4220, %4219 ]
  %4278 = phi float [ %4268, %4248 ], [ %4221, %4219 ]
  %4279 = phi float [ %4269, %4248 ], [ %4222, %4219 ]
  %4280 = phi float [ %4273, %4248 ], [ %4223, %4219 ]
  %4281 = phi float [ %4274, %4248 ], [ %4224, %4219 ]
  %4282 = phi float [ %4275, %4248 ], [ %4225, %4219 ]
  %4283 = add nuw i32 %4226, 1
  %4284 = icmp eq i32 %4283, %4208
  br i1 %4284, label %4285, label %4219

; <label>:4285                                    ; preds = %4276
  br label %4286

; <label>:4286                                    ; preds = %4285, %4149
  %4287 = phi float [ 0.000000e+00, %4149 ], [ %4277, %4285 ]
  %4288 = phi float [ 0.000000e+00, %4149 ], [ %4278, %4285 ]
  %4289 = phi float [ 0.000000e+00, %4149 ], [ %4279, %4285 ]
  %4290 = phi float [ 0.000000e+00, %4149 ], [ %4280, %4285 ]
  %4291 = phi float [ 0.000000e+00, %4149 ], [ %4281, %4285 ]
  %4292 = phi float [ 0.000000e+00, %4149 ], [ %4282, %4285 ]
  %4293 = fadd fast float %4290, %4287
  %4294 = fmul fast float %4293, 0x3F847AE140000000
  %4295 = fadd fast float %4291, %4288
  %4296 = fmul fast float %4295, 0x3F847AE140000000
  %4297 = fadd fast float %4292, %4289
  %4298 = fmul fast float %4297, 0x3F847AE140000000
  br label %4299

; <label>:4299                                    ; preds = %4286, %4083, %4028, %4025, %3996, %3958
  %4300 = phi float [ %4010, %3996 ], [ -1.310720e+05, %3958 ], [ %4202, %4286 ], [ -1.310720e+05, %4028 ], [ -1.310720e+05, %4083 ], [ -1.310720e+05, %4025 ]
  %4301 = phi float [ %4020, %3996 ], [ 0.000000e+00, %3958 ], [ %4294, %4286 ], [ 0.000000e+00, %4028 ], [ 0.000000e+00, %4083 ], [ 0.000000e+00, %4025 ]
  %4302 = phi float [ %4022, %3996 ], [ 0.000000e+00, %3958 ], [ %4296, %4286 ], [ 0.000000e+00, %4028 ], [ 0.000000e+00, %4083 ], [ 0.000000e+00, %4025 ]
  %4303 = phi float [ %4024, %3996 ], [ 0.000000e+00, %3958 ], [ %4298, %4286 ], [ 0.000000e+00, %4028 ], [ 0.000000e+00, %4083 ], [ 0.000000e+00, %4025 ]
  %4304 = phi i1 [ true, %3996 ], [ false, %3958 ], [ true, %4286 ], [ false, %4028 ], [ false, %4083 ], [ false, %4025 ]
  %4305 = and i32 %184, 3
  %4306 = icmp eq i32 %4305, 1
  %4307 = select i1 %4306, float 1.000000e+00, float 0.000000e+00
  %4308 = fsub fast float %4300, %168
  %4309 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4310 = select i1 %4304, float %4309, float 1.000000e+00
  %4311 = fmul fast float %4310, %4307
  %4312 = icmp eq i32 %4305, 3
  %4313 = select i1 %4312, float 1.000000e+00, float %4311
  %4314 = call float @dx.op.binary.f32(i32 35, float %3853, float %4313)  ; FMax(a,b)
  %4315 = fcmp fast olt float %4313, 1.000000e+00
  %4316 = fcmp uge float %49, 0.000000e+00
  %4317 = and i1 %4316, %4315
  br i1 %4317, label %4318, label %4328

; <label>:4318                                    ; preds = %4299
  %4319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4320 = extractvalue %dx.types.ResRet.f32 %4319, 0
  %4321 = extractvalue %dx.types.ResRet.f32 %4319, 1
  %4322 = extractvalue %dx.types.ResRet.f32 %4319, 2
  %4323 = fadd fast float %4320, %4314
  %4324 = fcmp ule float %48, 0.000000e+00
  %4325 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4326 = select i1 %4324, float %4325, float 1.000000e+00
  %4327 = fmul fast float %4326, %4322
  br label %4328

; <label>:4328                                    ; preds = %4318, %4299
  %4329 = phi float [ %4323, %4318 ], [ %4314, %4299 ]
  %4330 = phi float [ %4321, %4318 ], [ 0.000000e+00, %4299 ]
  %4331 = phi float [ %4327, %4318 ], [ 0.000000e+00, %4299 ]
  %4332 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4333 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4334 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4335 = fcmp fast une float %4333, 0.000000e+00
  %4336 = fcmp fast une float %4334, 0.000000e+00
  %4337 = or i1 %4335, %4336
  br i1 %4337, label %4338, label %4897

; <label>:4338                                    ; preds = %4328
  br i1 %4335, label %4339, label %4612

; <label>:4339                                    ; preds = %4338
  %4340 = call float @dx.op.unary.f32(i32 23, float %3850)  ; Log(value)
  %4341 = fmul fast float %4340, 4.000000e+00
  %4342 = call float @dx.op.unary.f32(i32 21, float %4341)  ; Exp(value)
  %4343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.f32 %4343, 0
  %4345 = fmul fast float %4344, %36
  %4346 = fmul fast float %4344, %37
  %4347 = fmul fast float %4344, %38
  %4348 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4349 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4350 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4351 = call float @dx.op.unary.f32(i32 23, float %4348)  ; Log(value)
  %4352 = call float @dx.op.unary.f32(i32 23, float %4349)  ; Log(value)
  %4353 = call float @dx.op.unary.f32(i32 23, float %4350)  ; Log(value)
  %4354 = fmul fast float %4351, 4.000000e+00
  %4355 = fmul fast float %4352, 4.000000e+00
  %4356 = fmul fast float %4353, 4.000000e+00
  %4357 = call float @dx.op.unary.f32(i32 21, float %4354)  ; Exp(value)
  %4358 = call float @dx.op.unary.f32(i32 21, float %4355)  ; Exp(value)
  %4359 = call float @dx.op.unary.f32(i32 21, float %4356)  ; Exp(value)
  %4360 = fadd fast float %4358, %4357
  %4361 = fadd fast float %4360, %4359
  %4362 = fdiv fast float 1.000000e+00, %4361
  %4363 = fmul fast float %4362, %4357
  %4364 = fcmp fast ogt float %45, 0.000000e+00
  %4365 = fcmp fast ogt float %46, 0.000000e+00
  %4366 = fcmp fast ogt float %47, 0.000000e+00
  %4367 = fcmp fast olt float %45, 0.000000e+00
  %4368 = fcmp fast olt float %46, 0.000000e+00
  %4369 = fcmp fast olt float %47, 0.000000e+00
  %4370 = zext i1 %4364 to i32
  %4371 = zext i1 %4365 to i32
  %4372 = zext i1 %4366 to i32
  %4373 = zext i1 %4367 to i32
  %4374 = zext i1 %4368 to i32
  %4375 = zext i1 %4369 to i32
  %4376 = sub nsw i32 %4370, %4373
  %4377 = sub nsw i32 %4371, %4374
  %4378 = sub nsw i32 %4372, %4375
  %4379 = call float @dx.op.unary.f32(i32 83, float %4345)  ; DerivCoarseX(value)
  %4380 = call float @dx.op.unary.f32(i32 83, float %4346)  ; DerivCoarseX(value)
  %4381 = call float @dx.op.unary.f32(i32 83, float %4347)  ; DerivCoarseX(value)
  %4382 = call float @dx.op.unary.f32(i32 84, float %4345)  ; DerivCoarseY(value)
  %4383 = call float @dx.op.unary.f32(i32 84, float %4346)  ; DerivCoarseY(value)
  %4384 = call float @dx.op.unary.f32(i32 84, float %4347)  ; DerivCoarseY(value)
  %4385 = fcmp fast ole float %216, %4363
  %4386 = fmul fast float %4362, %4360
  %4387 = fcmp fast ole float %216, %4386
  %4388 = select i1 %4387, float %4347, float %4345
  %4389 = select i1 %4387, float %4345, float %4346
  %4390 = select i1 %4385, float %4346, float %4388
  %4391 = select i1 %4385, float %4347, float %4389
  %4392 = select i1 %4387, float %4381, float %4379
  %4393 = select i1 %4387, float %4379, float %4380
  %4394 = select i1 %4385, float %4380, float %4392
  %4395 = select i1 %4385, float %4381, float %4393
  %4396 = select i1 %4387, float %4384, float %4382
  %4397 = select i1 %4387, float %4382, float %4383
  %4398 = select i1 %4385, float %4383, float %4396
  %4399 = select i1 %4385, float %4384, float %4397
  %4400 = call float @dx.op.unary.f32(i32 27, float %4390)  ; Round_ni(value)
  %4401 = call float @dx.op.unary.f32(i32 27, float %4391)  ; Round_ni(value)
  %4402 = fptosi float %4400 to i32
  %4403 = fptosi float %4401 to i32
  %4404 = xor i32 %4403, %4402
  %4405 = sitofp i32 %4404 to float
  %4406 = fptosi float %4405 to i32
  %4407 = sitofp i32 %4406 to float
  %4408 = fmul fast float %4407, 0x3FE3C6EF40000000
  %4409 = frem fast float %4400, 2.560000e+02
  %4410 = frem fast float %4401, 2.560000e+02
  %4411 = fptoui float %4409 to i32
  %4412 = fptoui float %4410 to i32
  %4413 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4411, i32 %4412, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = fadd fast float %4414, %4408
  %4418 = fadd fast float %4415, %4408
  %4419 = fadd fast float %4416, %4408
  %4420 = call float @dx.op.unary.f32(i32 22, float %4417)  ; Frc(value)
  %4421 = call float @dx.op.unary.f32(i32 22, float %4418)  ; Frc(value)
  %4422 = call float @dx.op.unary.f32(i32 22, float %4419)  ; Frc(value)
  %4423 = fmul fast float %4422, 0x401921FB60000000
  %4424 = call float @dx.op.unary.f32(i32 13, float %4423)  ; Sin(value)
  %4425 = call float @dx.op.unary.f32(i32 12, float %4423)  ; Cos(value)
  %4426 = fsub fast float -0.000000e+00, %4425
  %4427 = fmul fast float %4425, %4390
  %4428 = call float @dx.op.tertiary.f32(i32 46, float %4424, float %4391, float %4427)  ; FMad(a,b,c)
  %4429 = fmul fast float %4424, %4390
  %4430 = call float @dx.op.tertiary.f32(i32 46, float %4426, float %4391, float %4429)  ; FMad(a,b,c)
  %4431 = fadd fast float %4428, %4420
  %4432 = fadd fast float %4430, %4421
  %4433 = extractvalue %dx.types.CBufRet.f32 %4343, 3
  %4434 = bitcast float %4433 to i32
  %4435 = icmp eq i32 %4434, 0
  br i1 %4435, label %4474, label %4436

; <label>:4436                                    ; preds = %4339
  %4437 = add i32 %4434, 0
  %4438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4439 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4438, %dx.types.Handle %80, float %4431, float %4432, float undef, float undef, i32 0, i32 0, i32 undef, float %4394, float %4395, float undef, float %4398, float %4399, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4440 = extractvalue %dx.types.ResRet.f32 %4439, 0
  %4441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4442 = extractvalue %dx.types.CBufRet.f32 %4441, 1
  %4443 = extractvalue %dx.types.CBufRet.f32 %4441, 2
  %4444 = fsub fast float 1.000000e+00, %4333
  %4445 = call float @dx.op.binary.f32(i32 35, float %4444, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4446 = bitcast float %4333 to i32
  %4447 = sitofp i32 %4446 to float
  %4448 = fadd fast float %4447, 0xC1CFBF8940000000
  %4449 = fmul fast float %4443, %4448
  %4450 = fadd fast float %4449, 0x41CFBF8940000000
  %4451 = fptosi float %4450 to i32
  %4452 = bitcast i32 %4451 to float
  %4453 = bitcast float %4445 to i32
  %4454 = sitofp i32 %4453 to float
  %4455 = fadd fast float %4454, 0xC1CFBF8940000000
  %4456 = fmul fast float %4455, %4443
  %4457 = fadd fast float %4456, 0x41CFBF8940000000
  %4458 = fptosi float %4457 to i32
  %4459 = bitcast i32 %4458 to float
  %4460 = fmul fast float %4452, %4442
  %4461 = fmul fast float %4459, %4442
  %4462 = fsub fast float %4445, %4460
  %4463 = fadd fast float %4461, %4445
  %4464 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4465 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4466 = fsub fast float %4440, %4464
  %4467 = fsub fast float %4465, %4464
  %4468 = bitcast float %4467 to i32
  %4469 = sub nsw i32 2129859010, %4468
  %4470 = bitcast i32 %4469 to float
  %4471 = fmul fast float %4470, %4466
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = fcmp fast olt float %4472, 0x3F70101020000000
  br i1 %4473, label %4612, label %4474

; <label>:4474                                    ; preds = %4436, %4339
  %4475 = phi float [ %4472, %4436 ], [ %4333, %4339 ]
  %4476 = fmul fast float %4475, %4342
  %4477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.i32 %4477, 1
  %4479 = extractvalue %dx.types.CBufRet.i32 %4477, 0
  %4480 = add i32 %4479, 0
  %4481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4482 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4481, %dx.types.Handle %79, float %4431, float %4432, float undef, float undef, i32 0, i32 0, i32 undef, float %4394, float %4395, float undef, float %4398, float %4399, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4483 = extractvalue %dx.types.ResRet.f32 %4482, 0
  %4484 = extractvalue %dx.types.ResRet.f32 %4482, 1
  %4485 = extractvalue %dx.types.ResRet.f32 %4482, 2
  %4486 = extractvalue %dx.types.ResRet.f32 %4482, 3
  %4487 = and i32 %4478, 255
  %4488 = uitofp i32 %4487 to float
  %4489 = lshr i32 %4478, 8
  %4490 = and i32 %4489, 255
  %4491 = uitofp i32 %4490 to float
  %4492 = fmul fast float %4486, %4488
  %4493 = fadd fast float %4492, %4491
  %4494 = fmul fast float %4493, 0x3F70101000000000
  %4495 = fadd fast float %4494, 0xBFB99999A0000000
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = fmul fast float %4496, 0x3FF1C71C80000000
  %4498 = call float @dx.op.binary.f32(i32 36, float %4494, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4499 = fsub fast float 1.000000e+00, %4497
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = fmul fast float %4500, %4483
  %4502 = fmul fast float %4500, %4484
  %4503 = fmul fast float %4500, %4485
  %4504 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4507 = fmul fast float %4497, %4483
  %4508 = fmul fast float %4497, %4484
  %4509 = fmul fast float %4497, %4485
  %4510 = fadd fast float %4507, %4498
  %4511 = fadd fast float %4508, %4498
  %4512 = fadd fast float %4509, %4498
  %4513 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.i32 %4516, 3
  %4518 = extractvalue %dx.types.CBufRet.i32 %4516, 2
  %4519 = add i32 %4518, 0
  %4520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4521 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4520, %dx.types.Handle %79, float %4431, float %4432, float undef, float undef, i32 0, i32 0, i32 undef, float %4394, float %4395, float undef, float %4398, float %4399, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4522 = extractvalue %dx.types.ResRet.f32 %4521, 0
  %4523 = extractvalue %dx.types.ResRet.f32 %4521, 1
  %4524 = extractvalue %dx.types.ResRet.f32 %4521, 2
  %4525 = extractvalue %dx.types.ResRet.f32 %4521, 3
  %4526 = and i32 %4517, 255
  %4527 = uitofp i32 %4526 to float
  %4528 = lshr i32 %4517, 8
  %4529 = and i32 %4528, 255
  %4530 = uitofp i32 %4529 to float
  %4531 = lshr i32 %4517, 16
  %4532 = and i32 %4531, 255
  %4533 = uitofp i32 %4532 to float
  %4534 = fmul fast float %4533, 0x3F70101000000000
  %4535 = fmul fast float %4522, %4527
  %4536 = fadd fast float %4535, %4530
  %4537 = fmul fast float %4536, 0x3F70101000000000
  %4538 = fadd fast float %4523, -5.000000e-01
  %4539 = fadd fast float %4525, -5.000000e-01
  %4540 = fmul fast float %4538, %4534
  %4541 = fmul fast float %4539, %4534
  %4542 = fadd fast float %4540, 5.000000e-01
  %4543 = fadd fast float %4541, 5.000000e-01
  %4544 = fmul fast float %4542, 2.000000e+00
  %4545 = fadd fast float %4544, -1.000000e+00
  %4546 = fmul fast float %4543, 2.000000e+00
  %4547 = fadd fast float %4546, -1.000000e+00
  %4548 = fadd fast float %4545, %4547
  %4549 = fmul fast float %4548, 5.000000e-01
  %4550 = fsub fast float %4545, %4547
  %4551 = fmul fast float %4550, 5.000000e-01
  %4552 = call float @dx.op.unary.f32(i32 6, float %4549)  ; FAbs(value)
  %4553 = fsub fast float 1.000000e+00, %4552
  %4554 = call float @dx.op.unary.f32(i32 6, float %4551)  ; FAbs(value)
  %4555 = fsub fast float %4553, %4554
  %4556 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4551, float %4555, float %4549, float %4551, float %4555)  ; Dot3(ax,ay,az,bx,by,bz)
  %4557 = call float @dx.op.unary.f32(i32 25, float %4556)  ; Rsqrt(value)
  %4558 = fmul fast float %4549, %4557
  %4559 = fmul fast float %4551, %4557
  %4560 = select i1 %4387, i32 %4377, i32 %4378
  %4561 = select i1 %4385, i32 %4376, i32 %4560
  %4562 = sitofp i32 %4561 to float
  %4563 = fmul fast float %4555, %4562
  %4564 = fmul fast float %4563, %4557
  %4565 = select i1 %4387, float %4564, float %4559
  %4566 = select i1 %4387, float %4559, float %4564
  %4567 = select i1 %4385, float %4564, float %4558
  %4568 = select i1 %4385, float %4559, float %4565
  %4569 = select i1 %4385, float %4558, float %4566
  %4570 = fsub fast float %4504, %3889
  %4571 = fsub fast float %4505, %3890
  %4572 = fsub fast float %4506, %3891
  %4573 = fmul fast float %4570, %4476
  %4574 = fmul fast float %4571, %4476
  %4575 = fmul fast float %4572, %4476
  %4576 = fadd fast float %4573, %3889
  %4577 = fadd fast float %4574, %3890
  %4578 = fadd fast float %4575, %3891
  %4579 = fsub fast float %4513, %3874
  %4580 = fsub fast float %4514, %3875
  %4581 = fsub fast float %4515, %3876
  %4582 = fmul fast float %4579, %4476
  %4583 = fmul fast float %4580, %4476
  %4584 = fmul fast float %4581, %4476
  %4585 = fadd fast float %4582, %3874
  %4586 = fadd fast float %4583, %3875
  %4587 = fadd fast float %4584, %3876
  %4588 = fadd fast float %4567, %3838
  %4589 = fadd fast float %4568, %3839
  %4590 = fadd fast float %4569, %3840
  %4591 = call float @dx.op.dot3.f32(i32 55, float %4588, float %4589, float %4590, float %4588, float %4589, float %4590)  ; Dot3(ax,ay,az,bx,by,bz)
  %4592 = call float @dx.op.unary.f32(i32 25, float %4591)  ; Rsqrt(value)
  %4593 = fmul fast float %4588, %4592
  %4594 = fmul fast float %4589, %4592
  %4595 = fmul fast float %4590, %4592
  %4596 = fsub fast float %4593, %3838
  %4597 = fsub fast float %4594, %3839
  %4598 = fsub fast float %4595, %3840
  %4599 = fmul fast float %4596, %4476
  %4600 = fmul fast float %4597, %4476
  %4601 = fmul fast float %4598, %4476
  %4602 = fadd fast float %4599, %3838
  %4603 = fadd fast float %4600, %3839
  %4604 = fadd fast float %4601, %3840
  %4605 = call float @dx.op.binary.f32(i32 36, float %3850, float %4524)  ; FMin(a,b)
  %4606 = fsub fast float %4605, %3850
  %4607 = fmul fast float %4606, %4476
  %4608 = fadd fast float %4607, %3850
  %4609 = fsub fast float %4537, %3877
  %4610 = fmul fast float %4609, %4476
  %4611 = fadd fast float %4610, %3877
  br label %4612

; <label>:4612                                    ; preds = %4474, %4436, %4338
  %4613 = phi float [ %4585, %4474 ], [ %3874, %4436 ], [ %3874, %4338 ]
  %4614 = phi float [ %4586, %4474 ], [ %3875, %4436 ], [ %3875, %4338 ]
  %4615 = phi float [ %4587, %4474 ], [ %3876, %4436 ], [ %3876, %4338 ]
  %4616 = phi float [ %4602, %4474 ], [ %3838, %4436 ], [ %3838, %4338 ]
  %4617 = phi float [ %4603, %4474 ], [ %3839, %4436 ], [ %3839, %4338 ]
  %4618 = phi float [ %4604, %4474 ], [ %3840, %4436 ], [ %3840, %4338 ]
  %4619 = phi float [ %4576, %4474 ], [ %3889, %4436 ], [ %3889, %4338 ]
  %4620 = phi float [ %4577, %4474 ], [ %3890, %4436 ], [ %3890, %4338 ]
  %4621 = phi float [ %4578, %4474 ], [ %3891, %4436 ], [ %3891, %4338 ]
  %4622 = phi float [ %4611, %4474 ], [ %3877, %4436 ], [ %3877, %4338 ]
  %4623 = phi float [ %4608, %4474 ], [ %3850, %4436 ], [ %3850, %4338 ]
  br i1 %4336, label %4624, label %4897

; <label>:4624                                    ; preds = %4612
  %4625 = call float @dx.op.unary.f32(i32 23, float %4623)  ; Log(value)
  %4626 = fmul fast float %4625, 4.000000e+00
  %4627 = call float @dx.op.unary.f32(i32 21, float %4626)  ; Exp(value)
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 0
  %4630 = fmul fast float %4629, %36
  %4631 = fmul fast float %4629, %37
  %4632 = fmul fast float %4629, %38
  %4633 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4634 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4635 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4636 = call float @dx.op.unary.f32(i32 23, float %4633)  ; Log(value)
  %4637 = call float @dx.op.unary.f32(i32 23, float %4634)  ; Log(value)
  %4638 = call float @dx.op.unary.f32(i32 23, float %4635)  ; Log(value)
  %4639 = fmul fast float %4636, 4.000000e+00
  %4640 = fmul fast float %4637, 4.000000e+00
  %4641 = fmul fast float %4638, 4.000000e+00
  %4642 = call float @dx.op.unary.f32(i32 21, float %4639)  ; Exp(value)
  %4643 = call float @dx.op.unary.f32(i32 21, float %4640)  ; Exp(value)
  %4644 = call float @dx.op.unary.f32(i32 21, float %4641)  ; Exp(value)
  %4645 = fadd fast float %4643, %4642
  %4646 = fadd fast float %4645, %4644
  %4647 = fdiv fast float 1.000000e+00, %4646
  %4648 = fmul fast float %4647, %4642
  %4649 = fcmp fast ogt float %45, 0.000000e+00
  %4650 = fcmp fast ogt float %46, 0.000000e+00
  %4651 = fcmp fast ogt float %47, 0.000000e+00
  %4652 = fcmp fast olt float %45, 0.000000e+00
  %4653 = fcmp fast olt float %46, 0.000000e+00
  %4654 = fcmp fast olt float %47, 0.000000e+00
  %4655 = zext i1 %4649 to i32
  %4656 = zext i1 %4650 to i32
  %4657 = zext i1 %4651 to i32
  %4658 = zext i1 %4652 to i32
  %4659 = zext i1 %4653 to i32
  %4660 = zext i1 %4654 to i32
  %4661 = sub nsw i32 %4655, %4658
  %4662 = sub nsw i32 %4656, %4659
  %4663 = sub nsw i32 %4657, %4660
  %4664 = call float @dx.op.unary.f32(i32 83, float %4630)  ; DerivCoarseX(value)
  %4665 = call float @dx.op.unary.f32(i32 83, float %4631)  ; DerivCoarseX(value)
  %4666 = call float @dx.op.unary.f32(i32 83, float %4632)  ; DerivCoarseX(value)
  %4667 = call float @dx.op.unary.f32(i32 84, float %4630)  ; DerivCoarseY(value)
  %4668 = call float @dx.op.unary.f32(i32 84, float %4631)  ; DerivCoarseY(value)
  %4669 = call float @dx.op.unary.f32(i32 84, float %4632)  ; DerivCoarseY(value)
  %4670 = fcmp fast ole float %216, %4648
  %4671 = fmul fast float %4647, %4645
  %4672 = fcmp fast ole float %216, %4671
  %4673 = select i1 %4672, float %4632, float %4630
  %4674 = select i1 %4672, float %4630, float %4631
  %4675 = select i1 %4670, float %4631, float %4673
  %4676 = select i1 %4670, float %4632, float %4674
  %4677 = select i1 %4672, float %4666, float %4664
  %4678 = select i1 %4672, float %4664, float %4665
  %4679 = select i1 %4670, float %4665, float %4677
  %4680 = select i1 %4670, float %4666, float %4678
  %4681 = select i1 %4672, float %4669, float %4667
  %4682 = select i1 %4672, float %4667, float %4668
  %4683 = select i1 %4670, float %4668, float %4681
  %4684 = select i1 %4670, float %4669, float %4682
  %4685 = call float @dx.op.unary.f32(i32 27, float %4675)  ; Round_ni(value)
  %4686 = call float @dx.op.unary.f32(i32 27, float %4676)  ; Round_ni(value)
  %4687 = fptosi float %4685 to i32
  %4688 = fptosi float %4686 to i32
  %4689 = xor i32 %4688, %4687
  %4690 = sitofp i32 %4689 to float
  %4691 = fptosi float %4690 to i32
  %4692 = sitofp i32 %4691 to float
  %4693 = fmul fast float %4692, 0x3FE3C6EF40000000
  %4694 = frem fast float %4685, 2.560000e+02
  %4695 = frem fast float %4686, 2.560000e+02
  %4696 = fptoui float %4694 to i32
  %4697 = fptoui float %4695 to i32
  %4698 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4696, i32 %4697, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.ResRet.f32 %4698, 1
  %4701 = extractvalue %dx.types.ResRet.f32 %4698, 2
  %4702 = fadd fast float %4699, %4693
  %4703 = fadd fast float %4700, %4693
  %4704 = fadd fast float %4701, %4693
  %4705 = call float @dx.op.unary.f32(i32 22, float %4702)  ; Frc(value)
  %4706 = call float @dx.op.unary.f32(i32 22, float %4703)  ; Frc(value)
  %4707 = call float @dx.op.unary.f32(i32 22, float %4704)  ; Frc(value)
  %4708 = fmul fast float %4707, 0x401921FB60000000
  %4709 = call float @dx.op.unary.f32(i32 13, float %4708)  ; Sin(value)
  %4710 = call float @dx.op.unary.f32(i32 12, float %4708)  ; Cos(value)
  %4711 = fsub fast float -0.000000e+00, %4710
  %4712 = fmul fast float %4710, %4675
  %4713 = call float @dx.op.tertiary.f32(i32 46, float %4709, float %4676, float %4712)  ; FMad(a,b,c)
  %4714 = fmul fast float %4709, %4675
  %4715 = call float @dx.op.tertiary.f32(i32 46, float %4711, float %4676, float %4714)  ; FMad(a,b,c)
  %4716 = fadd fast float %4713, %4705
  %4717 = fadd fast float %4715, %4706
  %4718 = extractvalue %dx.types.CBufRet.f32 %4628, 3
  %4719 = bitcast float %4718 to i32
  %4720 = icmp eq i32 %4719, 0
  br i1 %4720, label %4759, label %4721

; <label>:4721                                    ; preds = %4624
  %4722 = add i32 %4719, 0
  %4723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4724 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4723, %dx.types.Handle %80, float %4716, float %4717, float undef, float undef, i32 0, i32 0, i32 undef, float %4679, float %4680, float undef, float %4683, float %4684, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4725 = extractvalue %dx.types.ResRet.f32 %4724, 0
  %4726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.f32 %4726, 1
  %4728 = extractvalue %dx.types.CBufRet.f32 %4726, 2
  %4729 = fsub fast float 1.000000e+00, %4334
  %4730 = call float @dx.op.binary.f32(i32 35, float %4729, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4731 = bitcast float %4334 to i32
  %4732 = sitofp i32 %4731 to float
  %4733 = fadd fast float %4732, 0xC1CFBF8940000000
  %4734 = fmul fast float %4728, %4733
  %4735 = fadd fast float %4734, 0x41CFBF8940000000
  %4736 = fptosi float %4735 to i32
  %4737 = bitcast i32 %4736 to float
  %4738 = bitcast float %4730 to i32
  %4739 = sitofp i32 %4738 to float
  %4740 = fadd fast float %4739, 0xC1CFBF8940000000
  %4741 = fmul fast float %4740, %4728
  %4742 = fadd fast float %4741, 0x41CFBF8940000000
  %4743 = fptosi float %4742 to i32
  %4744 = bitcast i32 %4743 to float
  %4745 = fmul fast float %4737, %4727
  %4746 = fmul fast float %4744, %4727
  %4747 = fsub fast float %4730, %4745
  %4748 = fadd fast float %4746, %4730
  %4749 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4750 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4751 = fsub fast float %4725, %4749
  %4752 = fsub fast float %4750, %4749
  %4753 = bitcast float %4752 to i32
  %4754 = sub nsw i32 2129859010, %4753
  %4755 = bitcast i32 %4754 to float
  %4756 = fmul fast float %4755, %4751
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4758 = fcmp fast olt float %4757, 0x3F70101020000000
  br i1 %4758, label %4897, label %4759

; <label>:4759                                    ; preds = %4721, %4624
  %4760 = phi float [ %4757, %4721 ], [ %4334, %4624 ]
  %4761 = fmul fast float %4760, %4627
  %4762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.i32 %4762, 1
  %4764 = extractvalue %dx.types.CBufRet.i32 %4762, 0
  %4765 = add i32 %4764, 0
  %4766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4765, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4767 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4766, %dx.types.Handle %79, float %4716, float %4717, float undef, float undef, i32 0, i32 0, i32 undef, float %4679, float %4680, float undef, float %4683, float %4684, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4768 = extractvalue %dx.types.ResRet.f32 %4767, 0
  %4769 = extractvalue %dx.types.ResRet.f32 %4767, 1
  %4770 = extractvalue %dx.types.ResRet.f32 %4767, 2
  %4771 = extractvalue %dx.types.ResRet.f32 %4767, 3
  %4772 = and i32 %4763, 255
  %4773 = uitofp i32 %4772 to float
  %4774 = lshr i32 %4763, 8
  %4775 = and i32 %4774, 255
  %4776 = uitofp i32 %4775 to float
  %4777 = fmul fast float %4771, %4773
  %4778 = fadd fast float %4777, %4776
  %4779 = fmul fast float %4778, 0x3F70101000000000
  %4780 = fadd fast float %4779, 0xBFB99999A0000000
  %4781 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4782 = fmul fast float %4781, 0x3FF1C71C80000000
  %4783 = call float @dx.op.binary.f32(i32 36, float %4779, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4784 = fsub fast float 1.000000e+00, %4782
  %4785 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4786 = fmul fast float %4785, %4768
  %4787 = fmul fast float %4785, %4769
  %4788 = fmul fast float %4785, %4770
  %4789 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4790 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4791 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4792 = fmul fast float %4782, %4768
  %4793 = fmul fast float %4782, %4769
  %4794 = fmul fast float %4782, %4770
  %4795 = fadd fast float %4792, %4783
  %4796 = fadd fast float %4793, %4783
  %4797 = fadd fast float %4794, %4783
  %4798 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4802 = extractvalue %dx.types.CBufRet.i32 %4801, 3
  %4803 = extractvalue %dx.types.CBufRet.i32 %4801, 2
  %4804 = add i32 %4803, 0
  %4805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4804, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4806 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4805, %dx.types.Handle %79, float %4716, float %4717, float undef, float undef, i32 0, i32 0, i32 undef, float %4679, float %4680, float undef, float %4683, float %4684, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4807 = extractvalue %dx.types.ResRet.f32 %4806, 0
  %4808 = extractvalue %dx.types.ResRet.f32 %4806, 1
  %4809 = extractvalue %dx.types.ResRet.f32 %4806, 2
  %4810 = extractvalue %dx.types.ResRet.f32 %4806, 3
  %4811 = and i32 %4802, 255
  %4812 = uitofp i32 %4811 to float
  %4813 = lshr i32 %4802, 8
  %4814 = and i32 %4813, 255
  %4815 = uitofp i32 %4814 to float
  %4816 = lshr i32 %4802, 16
  %4817 = and i32 %4816, 255
  %4818 = uitofp i32 %4817 to float
  %4819 = fmul fast float %4818, 0x3F70101000000000
  %4820 = fmul fast float %4807, %4812
  %4821 = fadd fast float %4820, %4815
  %4822 = fmul fast float %4821, 0x3F70101000000000
  %4823 = fadd fast float %4808, -5.000000e-01
  %4824 = fadd fast float %4810, -5.000000e-01
  %4825 = fmul fast float %4823, %4819
  %4826 = fmul fast float %4824, %4819
  %4827 = fadd fast float %4825, 5.000000e-01
  %4828 = fadd fast float %4826, 5.000000e-01
  %4829 = fmul fast float %4827, 2.000000e+00
  %4830 = fadd fast float %4829, -1.000000e+00
  %4831 = fmul fast float %4828, 2.000000e+00
  %4832 = fadd fast float %4831, -1.000000e+00
  %4833 = fadd fast float %4830, %4832
  %4834 = fmul fast float %4833, 5.000000e-01
  %4835 = fsub fast float %4830, %4832
  %4836 = fmul fast float %4835, 5.000000e-01
  %4837 = call float @dx.op.unary.f32(i32 6, float %4834)  ; FAbs(value)
  %4838 = fsub fast float 1.000000e+00, %4837
  %4839 = call float @dx.op.unary.f32(i32 6, float %4836)  ; FAbs(value)
  %4840 = fsub fast float %4838, %4839
  %4841 = call float @dx.op.dot3.f32(i32 55, float %4834, float %4836, float %4840, float %4834, float %4836, float %4840)  ; Dot3(ax,ay,az,bx,by,bz)
  %4842 = call float @dx.op.unary.f32(i32 25, float %4841)  ; Rsqrt(value)
  %4843 = fmul fast float %4834, %4842
  %4844 = fmul fast float %4836, %4842
  %4845 = select i1 %4672, i32 %4662, i32 %4663
  %4846 = select i1 %4670, i32 %4661, i32 %4845
  %4847 = sitofp i32 %4846 to float
  %4848 = fmul fast float %4840, %4847
  %4849 = fmul fast float %4848, %4842
  %4850 = select i1 %4672, float %4849, float %4844
  %4851 = select i1 %4672, float %4844, float %4849
  %4852 = select i1 %4670, float %4849, float %4843
  %4853 = select i1 %4670, float %4844, float %4850
  %4854 = select i1 %4670, float %4843, float %4851
  %4855 = fsub fast float %4789, %4619
  %4856 = fsub fast float %4790, %4620
  %4857 = fsub fast float %4791, %4621
  %4858 = fmul fast float %4855, %4761
  %4859 = fmul fast float %4856, %4761
  %4860 = fmul fast float %4857, %4761
  %4861 = fadd fast float %4858, %4619
  %4862 = fadd fast float %4859, %4620
  %4863 = fadd fast float %4860, %4621
  %4864 = fsub fast float %4798, %4613
  %4865 = fsub fast float %4799, %4614
  %4866 = fsub fast float %4800, %4615
  %4867 = fmul fast float %4864, %4761
  %4868 = fmul fast float %4865, %4761
  %4869 = fmul fast float %4866, %4761
  %4870 = fadd fast float %4867, %4613
  %4871 = fadd fast float %4868, %4614
  %4872 = fadd fast float %4869, %4615
  %4873 = fadd fast float %4852, %4616
  %4874 = fadd fast float %4853, %4617
  %4875 = fadd fast float %4854, %4618
  %4876 = call float @dx.op.dot3.f32(i32 55, float %4873, float %4874, float %4875, float %4873, float %4874, float %4875)  ; Dot3(ax,ay,az,bx,by,bz)
  %4877 = call float @dx.op.unary.f32(i32 25, float %4876)  ; Rsqrt(value)
  %4878 = fmul fast float %4873, %4877
  %4879 = fmul fast float %4874, %4877
  %4880 = fmul fast float %4875, %4877
  %4881 = fsub fast float %4878, %4616
  %4882 = fsub fast float %4879, %4617
  %4883 = fsub fast float %4880, %4618
  %4884 = fmul fast float %4881, %4761
  %4885 = fmul fast float %4882, %4761
  %4886 = fmul fast float %4883, %4761
  %4887 = fadd fast float %4884, %4616
  %4888 = fadd fast float %4885, %4617
  %4889 = fadd fast float %4886, %4618
  %4890 = call float @dx.op.binary.f32(i32 36, float %4623, float %4809)  ; FMin(a,b)
  %4891 = fsub fast float %4890, %4623
  %4892 = fmul fast float %4891, %4761
  %4893 = fadd fast float %4892, %4623
  %4894 = fsub fast float %4822, %4622
  %4895 = fmul fast float %4894, %4761
  %4896 = fadd fast float %4895, %4622
  br label %4897

; <label>:4897                                    ; preds = %4759, %4721, %4612, %4328
  %4898 = phi float [ %4870, %4759 ], [ %4613, %4721 ], [ %4613, %4612 ], [ %3874, %4328 ]
  %4899 = phi float [ %4871, %4759 ], [ %4614, %4721 ], [ %4614, %4612 ], [ %3875, %4328 ]
  %4900 = phi float [ %4872, %4759 ], [ %4615, %4721 ], [ %4615, %4612 ], [ %3876, %4328 ]
  %4901 = phi float [ %4887, %4759 ], [ %4616, %4721 ], [ %4616, %4612 ], [ %3838, %4328 ]
  %4902 = phi float [ %4888, %4759 ], [ %4617, %4721 ], [ %4617, %4612 ], [ %3839, %4328 ]
  %4903 = phi float [ %4889, %4759 ], [ %4618, %4721 ], [ %4618, %4612 ], [ %3840, %4328 ]
  %4904 = phi float [ %4861, %4759 ], [ %4619, %4721 ], [ %4619, %4612 ], [ %3889, %4328 ]
  %4905 = phi float [ %4862, %4759 ], [ %4620, %4721 ], [ %4620, %4612 ], [ %3890, %4328 ]
  %4906 = phi float [ %4863, %4759 ], [ %4621, %4721 ], [ %4621, %4612 ], [ %3891, %4328 ]
  %4907 = phi float [ %4896, %4759 ], [ %4622, %4721 ], [ %4622, %4612 ], [ %3877, %4328 ]
  %4908 = phi float [ %4893, %4759 ], [ %4623, %4721 ], [ %4623, %4612 ], [ %3850, %4328 ]
  %4909 = fcmp fast une float %4332, 0.000000e+00
  %4910 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = call float @dx.op.unary.f32(i32 25, float %4910)  ; Rsqrt(value)
  br i1 %4909, label %4919, label %4912

; <label>:4912                                    ; preds = %4897
  %4913 = fmul fast float %4911, %166
  %4914 = fmul fast float %4911, %167
  %4915 = fmul fast float %4911, %168
  %4916 = fsub fast float -0.000000e+00, %4913
  %4917 = fsub fast float -0.000000e+00, %4914
  %4918 = fsub fast float -0.000000e+00, %4915
  br label %5086

; <label>:4919                                    ; preds = %4897
  %4920 = fmul fast float %166, %4911
  %4921 = fsub fast float -0.000000e+00, %4920
  %4922 = fmul fast float %167, %4911
  %4923 = fsub fast float -0.000000e+00, %4922
  %4924 = fmul fast float %168, %4911
  %4925 = fsub fast float -0.000000e+00, %4924
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4923, float %4925, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = fmul fast float %4332, 2.500000e+00
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fmul fast float %4332, 0x4013FFFFE0000000
  %4930 = fadd fast float %4929, 0xBFFFFFFFE0000000
  %4931 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4932 = fmul fast float %4332, 0x4004000020000000
  %4933 = fadd fast float %4932, 0xBFF8000040000000
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = fmul fast float %3856, 1.000000e+01
  %4936 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4937 = fmul fast float %4936, 2.000000e+00
  %4938 = fsub fast float 3.000000e+00, %4937
  %4939 = fmul fast float %4936, %4936
  %4940 = fmul fast float %4939, %4938
  %4941 = fsub fast float 1.000000e+00, %4940
  %4942 = fsub fast float 0x3FE3333340000000, %4907
  %4943 = fmul fast float %4942, 0x400AAAAAA0000000
  %4944 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4945 = fmul fast float %4941, %4944
  %4946 = fmul fast float %4904, 0x3FEA2B8620000000
  %4947 = fmul fast float %4905, 0x3FEA2B8620000000
  %4948 = fmul fast float %4906, 0x3FEA2B8620000000
  %4949 = fadd fast float %4946, 0x3FC81DFBA0000000
  %4950 = fmul fast float %4949, %4904
  %4951 = fadd fast float %4950, 0x3F910E6020000000
  %4952 = fadd fast float %4947, 0x3FC81DFBA0000000
  %4953 = fmul fast float %4952, %4905
  %4954 = fadd fast float %4953, 0x3F910E6020000000
  %4955 = fadd fast float %4948, 0x3FC81DFBA0000000
  %4956 = fmul fast float %4955, %4906
  %4957 = fadd fast float %4956, 0x3F910E6020000000
  %4958 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4959 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4960 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  %4961 = fsub fast float %4958, %4904
  %4962 = fsub fast float %4959, %4905
  %4963 = fsub fast float %4960, %4906
  %4964 = fmul fast float %4961, %4928
  %4965 = fmul fast float %4964, %4945
  %4966 = fmul fast float %4962, %4928
  %4967 = fmul fast float %4966, %4945
  %4968 = fmul fast float %4963, %4928
  %4969 = fmul fast float %4968, %4945
  %4970 = fadd fast float %4965, %4904
  %4971 = fadd fast float %4967, %4905
  %4972 = fadd fast float %4969, %4906
  %4973 = fmul fast float %4908, %4908
  %4974 = fmul fast float %4973, %4973
  %4975 = fadd fast float %4931, 1.000000e+00
  %4976 = fsub fast float %4975, %4945
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = call float @dx.op.dot3.f32(i32 55, float %92, float %94, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = fsub fast float 1.000000e+00, %4974
  %4981 = call float @dx.op.binary.f32(i32 36, float %4977, float %4980)  ; FMin(a,b)
  %4982 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4983 = call float @dx.op.binary.f32(i32 35, float %4981, float %4982)  ; FMax(a,b)
  %4984 = fadd fast float %4979, 0xBFE4CCCCC0000000
  %4985 = fmul fast float %4984, 0x4006DB6DA0000000
  %4986 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4987 = fmul fast float %4986, 2.000000e+00
  %4988 = fsub fast float 3.000000e+00, %4987
  %4989 = bitcast float %4898 to i32
  %4990 = ashr i32 %4989, 1
  %4991 = add nsw i32 %4990, 532487669
  %4992 = bitcast i32 %4991 to float
  %4993 = fsub fast float 1.000000e+00, %4992
  %4994 = bitcast float %4993 to i32
  %4995 = sub nsw i32 2129859010, %4994
  %4996 = bitcast i32 %4995 to float
  %4997 = fmul fast float %4996, 2.000000e+00
  %4998 = bitcast float %4899 to i32
  %4999 = ashr i32 %4998, 1
  %5000 = add nsw i32 %4999, 532487669
  %5001 = bitcast i32 %5000 to float
  %5002 = fsub fast float 1.000000e+00, %5001
  %5003 = bitcast float %5002 to i32
  %5004 = sub nsw i32 2129859010, %5003
  %5005 = bitcast i32 %5004 to float
  %5006 = fmul fast float %5005, 2.000000e+00
  %5007 = bitcast float %4900 to i32
  %5008 = ashr i32 %5007, 1
  %5009 = add nsw i32 %5008, 532487669
  %5010 = bitcast i32 %5009 to float
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = bitcast float %5011 to i32
  %5013 = sub nsw i32 2129859010, %5012
  %5014 = bitcast i32 %5013 to float
  %5015 = fmul fast float %5014, 2.000000e+00
  %5016 = fsub fast float 0x4002A9FBE0000000, %4997
  %5017 = fadd fast float %4997, 0x3FD54FDF00000000
  %5018 = bitcast float %5017 to i32
  %5019 = sub nsw i32 2129859010, %5018
  %5020 = bitcast i32 %5019 to float
  %5021 = fmul fast float %5020, %5016
  %5022 = fmul fast float %5021, %5021
  %5023 = fsub fast float 0x4002A9FBE0000000, %5006
  %5024 = fadd fast float %5006, 0x3FD54FDF00000000
  %5025 = bitcast float %5024 to i32
  %5026 = sub nsw i32 2129859010, %5025
  %5027 = bitcast i32 %5026 to float
  %5028 = fmul fast float %5027, %5023
  %5029 = fmul fast float %5028, %5028
  %5030 = fsub fast float 0x4002A9FBE0000000, %5015
  %5031 = fadd fast float %5015, 0x3FD54FDF00000000
  %5032 = bitcast float %5031 to i32
  %5033 = sub nsw i32 2129859010, %5032
  %5034 = bitcast i32 %5033 to float
  %5035 = fmul fast float %5034, %5030
  %5036 = fmul fast float %5035, %5035
  %5037 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5022)  ; FMax(a,b)
  %5038 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5029)  ; FMax(a,b)
  %5039 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5036)  ; FMax(a,b)
  %5040 = fsub fast float 1.000000e+00, %4926
  %5041 = fadd fast float %5040, %4941
  %5042 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5043 = fsub fast float 1.000000e+00, %4313
  %5044 = fmul fast float %4983, %5043
  %5045 = fmul fast float %4986, %4986
  %5046 = fmul fast float %5045, %5044
  %5047 = fmul fast float %5046, %4988
  %5048 = fmul fast float %5043, 0xBFE99999A0000000
  %5049 = fmul fast float %5048, %4928
  %5050 = fmul fast float %5049, %4945
  %5051 = fadd fast float %5050, 1.000000e+00
  %5052 = fadd fast float %4907, -1.000000e+00
  %5053 = fmul fast float %5051, %5052
  %5054 = fadd fast float %5053, 1.000000e+00
  %5055 = fsub fast float %5037, %4898
  %5056 = fsub fast float %5038, %4899
  %5057 = fsub fast float %5039, %4900
  %5058 = fmul fast float %5047, %5055
  %5059 = fmul fast float %5047, %5056
  %5060 = fmul fast float %5047, %5057
  %5061 = fadd fast float %5058, %4898
  %5062 = fadd fast float %5059, %4899
  %5063 = fadd fast float %5060, %4900
  %5064 = fsub fast float %92, %4901
  %5065 = fsub fast float %94, %4902
  %5066 = fsub fast float %96, %4903
  %5067 = fmul fast float %5047, %5064
  %5068 = fmul fast float %5047, %5065
  %5069 = fmul fast float %5047, %5066
  %5070 = fadd fast float %5067, %4901
  %5071 = fadd fast float %5068, %4902
  %5072 = fadd fast float %5069, %4903
  %5073 = fmul fast float %5047, %5042
  %5074 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5075 = fsub fast float 1.000000e+00, %5074
  %5076 = fmul fast float %5073, %5075
  %5077 = fadd fast float %5076, %5074
  %5078 = fsub fast float 1.000000e+00, %4908
  %5079 = fmul fast float %5047, %5078
  %5080 = fadd fast float %5079, %4908
  %5081 = call float @dx.op.dot3.f32(i32 55, float %5070, float %5071, float %5072, float %5070, float %5071, float %5072)  ; Dot3(ax,ay,az,bx,by,bz)
  %5082 = call float @dx.op.unary.f32(i32 25, float %5081)  ; Rsqrt(value)
  %5083 = fmul fast float %5070, %5082
  %5084 = fmul fast float %5071, %5082
  %5085 = fmul fast float %5072, %5082
  br label %5086

; <label>:5086                                    ; preds = %4919, %4912
  %5087 = phi float [ %4918, %4912 ], [ %4925, %4919 ]
  %5088 = phi float [ %4917, %4912 ], [ %4923, %4919 ]
  %5089 = phi float [ %4916, %4912 ], [ %4921, %4919 ]
  %5090 = phi float [ %4915, %4912 ], [ %4924, %4919 ]
  %5091 = phi float [ %4914, %4912 ], [ %4922, %4919 ]
  %5092 = phi float [ %4913, %4912 ], [ %4920, %4919 ]
  %5093 = phi float [ %4898, %4912 ], [ %5061, %4919 ]
  %5094 = phi float [ %4899, %4912 ], [ %5062, %4919 ]
  %5095 = phi float [ %4900, %4912 ], [ %5063, %4919 ]
  %5096 = phi float [ %4901, %4912 ], [ %5083, %4919 ]
  %5097 = phi float [ %4902, %4912 ], [ %5084, %4919 ]
  %5098 = phi float [ %4903, %4912 ], [ %5085, %4919 ]
  %5099 = phi float [ %4904, %4912 ], [ %4970, %4919 ]
  %5100 = phi float [ %4905, %4912 ], [ %4971, %4919 ]
  %5101 = phi float [ %4906, %4912 ], [ %4972, %4919 ]
  %5102 = phi float [ %4907, %4912 ], [ %5077, %4919 ]
  %5103 = phi float [ %4908, %4912 ], [ %5080, %4919 ]
  %5104 = select i1 %205, float 0.000000e+00, float %5095
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5096, float %5097, float %5098, float %5089, float %5088, float %5087)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = fmul fast float %5091, %3939
  %5108 = fmul fast float %5090, %3938
  %5109 = fsub fast float %5107, %5108
  %5110 = fmul fast float %5090, %3937
  %5111 = fmul fast float %5092, %3939
  %5112 = fsub fast float %5110, %5111
  %5113 = fmul fast float %5092, %3938
  %5114 = fmul fast float %5091, %3937
  %5115 = fsub fast float %5113, %5114
  %5116 = fmul fast float %5112, %3939
  %5117 = fmul fast float %5115, %3938
  %5118 = fmul fast float %5115, %3937
  %5119 = fmul fast float %5109, %3939
  %5120 = fmul fast float %5109, %3938
  %5121 = fmul fast float %5112, %3937
  %5122 = fsub fast float -0.000000e+00, %5096
  %5123 = fsub fast float %5122, %5117
  %5124 = fadd fast float %5123, %5116
  %5125 = fsub fast float -0.000000e+00, %5097
  %5126 = fsub fast float %5125, %5119
  %5127 = fadd fast float %5126, %5118
  %5128 = fsub fast float -0.000000e+00, %5098
  %5129 = fsub fast float %5128, %5121
  %5130 = fadd fast float %5129, %5120
  %5131 = fmul fast float %5124, %3925
  %5132 = fmul fast float %5127, %3925
  %5133 = fmul fast float %5130, %3925
  %5134 = fadd fast float %5131, %5096
  %5135 = fadd fast float %5132, %5097
  %5136 = fadd fast float %5133, %5098
  %5137 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %5134, float %5135, float %5136)  ; Dot3(ax,ay,az,bx,by,bz)
  %5138 = call float @dx.op.unary.f32(i32 25, float %5137)  ; Rsqrt(value)
  %5139 = fmul fast float %5134, %5138
  %5140 = fmul fast float %5135, %5138
  %5141 = fmul fast float %5136, %5138
  %5142 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5091, float %5090, float %5139, float %5140, float %5141)  ; Dot3(ax,ay,az,bx,by,bz)
  %5143 = fmul fast float %5142, 2.000000e+00
  %5144 = fmul fast float %5139, %5143
  %5145 = fmul fast float %5140, %5143
  %5146 = fmul fast float %5141, %5143
  %5147 = fsub fast float %5092, %5144
  %5148 = fsub fast float %5091, %5145
  %5149 = fsub fast float %5090, %5146
  %5150 = call float @dx.op.binary.f32(i32 36, float %5103, float 1.000000e+00)  ; FMin(a,b)
  %5151 = fsub fast float 1.000000e+00, %5103
  %5152 = bitcast float %5151 to i32
  %5153 = sub nsw i32 2129859010, %5152
  %5154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %5155 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5156 = fcmp fast oeq float %5155, 0.000000e+00
  %5157 = fcmp fast oeq float %5154, 0.000000e+00
  %5158 = or i1 %5157, %5156
  br i1 %5158, label %5188, label %5159

; <label>:5159                                    ; preds = %5086
  %5160 = fsub fast float -0.000000e+00, %63
  %5161 = fsub fast float -0.000000e+00, %61
  %5162 = call float @dx.op.unary.f32(i32 24, float %5155)  ; Sqrt(value)
  %5163 = fdiv fast float %5162, %5154
  %5164 = fcmp fast ogt float %5163, 0x3FFB6F8900000000
  %5165 = select i1 %5164, float 0x3FFB6F8900000000, float %5163
  %5166 = fmul fast float %5165, 0x3FE8A23460000000
  %5167 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5168 = call float @dx.op.binary.f32(i32 35, float %5165, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5169 = fmul fast float %5167, %5154
  %5170 = fmul fast float %5168, 0x3FF279A740000000
  %5171 = fadd fast float %5170, -1.000000e+00
  %5172 = call float @dx.op.dot3.f32(i32 55, float %5160, float %5161, float %62, float %5160, float %5161, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5173 = call float @dx.op.unary.f32(i32 25, float %5172)  ; Rsqrt(value)
  %5174 = fmul fast float %5173, %5160
  %5175 = fmul fast float %5173, %5161
  %5176 = fmul fast float %5173, %62
  %5177 = fmul fast float %5171, %5171
  %5178 = fsub fast float 1.000000e+00, %5177
  %5179 = fmul fast float %5168, 0x40005F8BE0000000
  %5180 = fsub fast float 0x400C5BF8A0000000, %5179
  %5181 = fdiv fast float %5169, %5180
  %5182 = fmul fast float %5181, 0x3FEE31C3C0000000
  %5183 = fmul fast float %5182, %5178
  %5184 = fmul fast float %5168, 0x3FDACB7480000000
  %5185 = fadd fast float %5184, 0xBFD7347680000000
  %5186 = fmul fast float %5185, %5181
  %5187 = fmul fast float %5186, %5178
  br label %5188

; <label>:5188                                    ; preds = %5159, %5086
  %5189 = phi float [ %5174, %5159 ], [ 0.000000e+00, %5086 ]
  %5190 = phi float [ %5175, %5159 ], [ 0.000000e+00, %5086 ]
  %5191 = phi float [ %5176, %5159 ], [ 0.000000e+00, %5086 ]
  %5192 = phi float [ %5183, %5159 ], [ 0.000000e+00, %5086 ]
  %5193 = phi float [ %5187, %5159 ], [ 0.000000e+00, %5086 ]
  %5194 = call float @dx.op.dot3.f32(i32 55, float %5189, float %5190, float %5191, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = fmul fast float %5194, %5194
  %5196 = fmul fast float %5195, 0x3FEE471020000000
  %5197 = fadd fast float %5196, 0xBFD42F6020000000
  %5198 = fmul fast float %5154, 0x3FD20DD760000000
  %5199 = fmul fast float %5197, %5193
  %5200 = fmul fast float %5192, 0x3FDF454380000000
  %5201 = fmul fast float %5200, %5194
  %5202 = fadd fast float %5201, %5198
  %5203 = fadd fast float %5202, %5199
  %5204 = call float @dx.op.dot3.f32(i32 55, float %5189, float %5190, float %5191, float %5147, float %5148, float %5149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = fmul fast float %5204, 0x3FDF454380000000
  %5206 = fmul fast float %5204, %5204
  %5207 = fmul fast float %5206, 0x3FEE471020000000
  %5208 = fadd fast float %5207, 0xBFD42F6020000000
  %5209 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5192, float %5193, float 0x3FD20DD760000000, float %5205, float %5208)  ; Dot3(ax,ay,az,bx,by,bz)
  %5210 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %5211 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5212 = fcmp fast oeq float %5211, 0.000000e+00
  %5213 = fcmp fast oeq float %5210, 0.000000e+00
  %5214 = or i1 %5213, %5212
  br i1 %5214, label %5244, label %5215

; <label>:5215                                    ; preds = %5188
  %5216 = fsub fast float -0.000000e+00, %59
  %5217 = fsub fast float -0.000000e+00, %57
  %5218 = call float @dx.op.unary.f32(i32 24, float %5211)  ; Sqrt(value)
  %5219 = fdiv fast float %5218, %5210
  %5220 = fcmp fast ogt float %5219, 0x3FFB6F8900000000
  %5221 = select i1 %5220, float 0x3FFB6F8900000000, float %5219
  %5222 = fmul fast float %5221, 0x3FE8A23460000000
  %5223 = call float @dx.op.unary.f32(i32 7, float %5222)  ; Saturate(value)
  %5224 = call float @dx.op.binary.f32(i32 35, float %5221, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5225 = fmul fast float %5223, %5210
  %5226 = fmul fast float %5224, 0x3FF279A740000000
  %5227 = fadd fast float %5226, -1.000000e+00
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5216, float %5217, float %58, float %5216, float %5217, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = call float @dx.op.unary.f32(i32 25, float %5228)  ; Rsqrt(value)
  %5230 = fmul fast float %5229, %5216
  %5231 = fmul fast float %5229, %5217
  %5232 = fmul fast float %5229, %58
  %5233 = fmul fast float %5227, %5227
  %5234 = fsub fast float 1.000000e+00, %5233
  %5235 = fmul fast float %5224, 0x40005F8BE0000000
  %5236 = fsub fast float 0x400C5BF8A0000000, %5235
  %5237 = fdiv fast float %5225, %5236
  %5238 = fmul fast float %5237, 0x3FEE31C3C0000000
  %5239 = fmul fast float %5238, %5234
  %5240 = fmul fast float %5224, 0x3FDACB7480000000
  %5241 = fadd fast float %5240, 0xBFD7347680000000
  %5242 = fmul fast float %5241, %5237
  %5243 = fmul fast float %5242, %5234
  br label %5244

; <label>:5244                                    ; preds = %5215, %5188
  %5245 = phi float [ %5230, %5215 ], [ 0.000000e+00, %5188 ]
  %5246 = phi float [ %5231, %5215 ], [ 0.000000e+00, %5188 ]
  %5247 = phi float [ %5232, %5215 ], [ 0.000000e+00, %5188 ]
  %5248 = phi float [ %5239, %5215 ], [ 0.000000e+00, %5188 ]
  %5249 = phi float [ %5243, %5215 ], [ 0.000000e+00, %5188 ]
  %5250 = call float @dx.op.dot3.f32(i32 55, float %5245, float %5246, float %5247, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5251 = fmul fast float %5250, %5250
  %5252 = fmul fast float %5251, 0x3FEE471020000000
  %5253 = fadd fast float %5252, 0xBFD42F6020000000
  %5254 = fmul fast float %5210, 0x3FD20DD760000000
  %5255 = fmul fast float %5253, %5249
  %5256 = fmul fast float %5248, 0x3FDF454380000000
  %5257 = fmul fast float %5256, %5250
  %5258 = fadd fast float %5257, %5254
  %5259 = fadd fast float %5258, %5255
  %5260 = call float @dx.op.dot3.f32(i32 55, float %5245, float %5246, float %5247, float %5147, float %5148, float %5149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5261 = fmul fast float %5260, 0x3FDF454380000000
  %5262 = fmul fast float %5260, %5260
  %5263 = fmul fast float %5262, 0x3FEE471020000000
  %5264 = fadd fast float %5263, 0xBFD42F6020000000
  %5265 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5248, float %5249, float 0x3FD20DD760000000, float %5261, float %5264)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5267 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = fcmp fast oeq float %5267, 0.000000e+00
  %5269 = fcmp fast oeq float %5266, 0.000000e+00
  %5270 = or i1 %5269, %5268
  br i1 %5270, label %5300, label %5271

; <label>:5271                                    ; preds = %5244
  %5272 = fsub fast float -0.000000e+00, %55
  %5273 = fsub fast float -0.000000e+00, %53
  %5274 = call float @dx.op.unary.f32(i32 24, float %5267)  ; Sqrt(value)
  %5275 = fdiv fast float %5274, %5266
  %5276 = fcmp fast ogt float %5275, 0x3FFB6F8900000000
  %5277 = select i1 %5276, float 0x3FFB6F8900000000, float %5275
  %5278 = fmul fast float %5277, 0x3FE8A23460000000
  %5279 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5280 = call float @dx.op.binary.f32(i32 35, float %5277, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5281 = fmul fast float %5279, %5266
  %5282 = fmul fast float %5280, 0x3FF279A740000000
  %5283 = fadd fast float %5282, -1.000000e+00
  %5284 = call float @dx.op.dot3.f32(i32 55, float %5272, float %5273, float %54, float %5272, float %5273, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5285 = call float @dx.op.unary.f32(i32 25, float %5284)  ; Rsqrt(value)
  %5286 = fmul fast float %5285, %5272
  %5287 = fmul fast float %5285, %5273
  %5288 = fmul fast float %5285, %54
  %5289 = fmul fast float %5283, %5283
  %5290 = fsub fast float 1.000000e+00, %5289
  %5291 = fmul fast float %5280, 0x40005F8BE0000000
  %5292 = fsub fast float 0x400C5BF8A0000000, %5291
  %5293 = fdiv fast float %5281, %5292
  %5294 = fmul fast float %5293, 0x3FEE31C3C0000000
  %5295 = fmul fast float %5294, %5290
  %5296 = fmul fast float %5280, 0x3FDACB7480000000
  %5297 = fadd fast float %5296, 0xBFD7347680000000
  %5298 = fmul fast float %5297, %5293
  %5299 = fmul fast float %5298, %5290
  br label %5300

; <label>:5300                                    ; preds = %5271, %5244
  %5301 = phi float [ %5286, %5271 ], [ 0.000000e+00, %5244 ]
  %5302 = phi float [ %5287, %5271 ], [ 0.000000e+00, %5244 ]
  %5303 = phi float [ %5288, %5271 ], [ 0.000000e+00, %5244 ]
  %5304 = phi float [ %5295, %5271 ], [ 0.000000e+00, %5244 ]
  %5305 = phi float [ %5299, %5271 ], [ 0.000000e+00, %5244 ]
  %5306 = call float @dx.op.dot3.f32(i32 55, float %5301, float %5302, float %5303, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5307 = fmul fast float %5306, %5306
  %5308 = fmul fast float %5307, 0x3FEE471020000000
  %5309 = fadd fast float %5308, 0xBFD42F6020000000
  %5310 = fmul fast float %5266, 0x3FD20DD760000000
  %5311 = fmul fast float %5309, %5305
  %5312 = fmul fast float %5304, 0x3FDF454380000000
  %5313 = fmul fast float %5312, %5306
  %5314 = fadd fast float %5313, %5310
  %5315 = fadd fast float %5314, %5311
  %5316 = call float @dx.op.dot3.f32(i32 55, float %5301, float %5302, float %5303, float %5147, float %5148, float %5149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = fmul fast float %5316, 0x3FDF454380000000
  %5318 = fmul fast float %5316, %5316
  %5319 = fmul fast float %5318, 0x3FEE471020000000
  %5320 = fadd fast float %5319, 0xBFD42F6020000000
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5304, float %5305, float 0x3FD20DD760000000, float %5317, float %5320)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = call float @dx.op.binary.f32(i32 35, float %5203, float 0.000000e+00)  ; FMax(a,b)
  %5323 = call float @dx.op.binary.f32(i32 35, float %5259, float 0.000000e+00)  ; FMax(a,b)
  %5324 = call float @dx.op.binary.f32(i32 35, float %5315, float 0.000000e+00)  ; FMax(a,b)
  %5325 = call float @dx.op.binary.f32(i32 35, float %5209, float 0.000000e+00)  ; FMax(a,b)
  %5326 = call float @dx.op.binary.f32(i32 35, float %5265, float 0.000000e+00)  ; FMax(a,b)
  %5327 = call float @dx.op.binary.f32(i32 35, float %5321, float 0.000000e+00)  ; FMax(a,b)
  %5328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.f32 %5328, 0
  %5330 = call float @dx.op.binary.f32(i32 36, float %5099, float %5329)  ; FMin(a,b)
  %5331 = fsub fast float 1.000000e+00, %5150
  %5332 = fmul fast float %5330, %5331
  %5333 = fsub fast float 1.000000e+00, %5332
  %5334 = bitcast float %5333 to i32
  %5335 = sub nsw i32 2129859010, %5334
  %5336 = bitcast i32 %5335 to float
  %5337 = call float @dx.op.binary.f32(i32 36, float %5100, float %5329)  ; FMin(a,b)
  %5338 = fmul fast float %5337, %5331
  %5339 = fsub fast float 1.000000e+00, %5338
  %5340 = bitcast float %5339 to i32
  %5341 = sub nsw i32 2129859010, %5340
  %5342 = bitcast i32 %5341 to float
  %5343 = call float @dx.op.binary.f32(i32 36, float %5101, float %5329)  ; FMin(a,b)
  %5344 = fmul fast float %5343, %5331
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = bitcast float %5345 to i32
  %5347 = sub nsw i32 2129859010, %5346
  %5348 = bitcast i32 %5347 to float
  %5349 = fmul fast float %5322, %5150
  %5350 = fmul fast float %5349, %5336
  %5351 = fmul fast float %5323, %5150
  %5352 = fmul fast float %5351, %5342
  %5353 = fmul fast float %5324, %5150
  %5354 = fmul fast float %5353, %5348
  %5355 = call float @dx.op.binary.f32(i32 36, float %5093, float %5329)  ; FMin(a,b)
  %5356 = fmul fast float %5355, %5331
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = bitcast float %5357 to i32
  %5359 = sub nsw i32 2129859010, %5358
  %5360 = bitcast i32 %5359 to float
  %5361 = call float @dx.op.binary.f32(i32 36, float %5094, float %5329)  ; FMin(a,b)
  %5362 = fmul fast float %5361, %5331
  %5363 = fsub fast float 1.000000e+00, %5362
  %5364 = bitcast float %5363 to i32
  %5365 = sub nsw i32 2129859010, %5364
  %5366 = bitcast i32 %5365 to float
  %5367 = call float @dx.op.binary.f32(i32 36, float %5104, float %5329)  ; FMin(a,b)
  %5368 = fmul fast float %5367, %5331
  %5369 = fsub fast float 1.000000e+00, %5368
  %5370 = bitcast float %5369 to i32
  %5371 = sub nsw i32 2129859010, %5370
  %5372 = bitcast i32 %5371 to float
  %5373 = fmul fast float %5325, %5150
  %5374 = fmul fast float %5373, %5360
  %5375 = fmul fast float %5326, %5150
  %5376 = fmul fast float %5375, %5366
  %5377 = fmul fast float %5327, %5150
  %5378 = fmul fast float %5377, %5372
  %5379 = call float @dx.op.dot3.f32(i32 55, float %5350, float %5352, float %5354, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5380 = select i1 %205, float 0.000000e+00, float %5350
  %5381 = select i1 %205, float %5379, float %5352
  %5382 = select i1 %205, float 0.000000e+00, float %5354
  %5383 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5376, float %5378, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5384 = select i1 %205, float 0.000000e+00, float %5374
  %5385 = select i1 %205, float %5383, float %5376
  %5386 = select i1 %205, float 0.000000e+00, float %5378
  %5387 = fmul fast float %5106, 9.843750e-01
  %5388 = fmul fast float %5102, 9.843750e-01
  %5389 = fadd fast float %5387, 7.812500e-03
  %5390 = fadd fast float %5388, 7.812500e-03
  %5391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5389, float %5390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5392 = extractvalue %dx.types.ResRet.f32 %5391, 2
  %5393 = extractvalue %dx.types.ResRet.f32 %5391, 3
  %5394 = fmul fast float %5392, %5093
  %5395 = fmul fast float %5392, %5094
  %5396 = fmul fast float %5392, %5104
  %5397 = fadd fast float %5394, %5393
  %5398 = fadd fast float %5395, %5393
  %5399 = fadd fast float %5396, %5393
  %5400 = fcmp fast ogt float %3851, 0.000000e+00
  br i1 %5400, label %5401, label %5427

; <label>:5401                                    ; preds = %5300
  %5402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3851, float %5106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5403 = extractvalue %dx.types.ResRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.ResRet.f32 %5402, 1
  %5405 = extractvalue %dx.types.ResRet.f32 %5402, 2
  %5406 = fadd fast float %5403, -5.000000e-01
  %5407 = fadd fast float %5404, -5.000000e-01
  %5408 = fadd fast float %5405, -5.000000e-01
  %5409 = fsub fast float 1.000000e+00, %5093
  %5410 = fsub fast float 1.000000e+00, %5094
  %5411 = fsub fast float 1.000000e+00, %5104
  %5412 = fmul fast float %5093, 4.000000e+00
  %5413 = fmul fast float %5412, %5409
  %5414 = fmul fast float %5413, %5406
  %5415 = fmul fast float %5094, 4.000000e+00
  %5416 = fmul fast float %5415, %5410
  %5417 = fmul fast float %5416, %5407
  %5418 = fmul fast float %5104, 4.000000e+00
  %5419 = fmul fast float %5418, %5411
  %5420 = fmul fast float %5419, %5408
  %5421 = fadd fast float %5414, %5397
  %5422 = fadd fast float %5417, %5398
  %5423 = fadd fast float %5420, %5399
  %5424 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5425 = call float @dx.op.unary.f32(i32 7, float %5422)  ; Saturate(value)
  %5426 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  br label %5427

; <label>:5427                                    ; preds = %5401, %5300
  %5428 = phi float [ %5424, %5401 ], [ %5397, %5300 ]
  %5429 = phi float [ %5425, %5401 ], [ %5398, %5300 ]
  %5430 = phi float [ %5426, %5401 ], [ %5399, %5300 ]
  %5431 = call float @dx.op.binary.f32(i32 35, float %5429, float %5430)  ; FMax(a,b)
  %5432 = call float @dx.op.binary.f32(i32 35, float %5428, float %5431)  ; FMax(a,b)
  %5433 = fsub fast float 1.000000e+00, %5432
  %5434 = fmul fast float %5433, %5380
  %5435 = fmul fast float %5433, %5381
  %5436 = fmul fast float %5433, %5382
  %5437 = call float @dx.op.dot3.f32(i32 55, float %5099, float %5100, float %5101, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = fcmp fast ogt float %5437, 0x3E7FF19E20000000
  %5439 = fdiv fast float 1.000000e+00, %5437
  %5440 = select i1 %5438, float %5439, float 0.000000e+00
  %5441 = fmul fast float %5440, %5099
  %5442 = fmul fast float %5440, %5100
  %5443 = fmul fast float %5440, %5101
  %5444 = fadd fast float %5441, -1.000000e+00
  %5445 = fadd fast float %5442, -1.000000e+00
  %5446 = fadd fast float %5443, -1.000000e+00
  %5447 = fmul fast float %5444, 5.000000e-01
  %5448 = fmul fast float %5445, 5.000000e-01
  %5449 = fmul fast float %5446, 5.000000e-01
  %5450 = fadd fast float %5447, 1.000000e+00
  %5451 = fadd fast float %5448, 1.000000e+00
  %5452 = fadd fast float %5449, 1.000000e+00
  %5453 = fmul fast float %5428, %5384
  %5454 = fmul fast float %5429, %5385
  %5455 = fmul fast float %5430, %5386
  %5456 = fsub fast float 1.000000e+00, %5106
  %5457 = bitcast float %5456 to i32
  %5458 = sitofp i32 %5457 to float
  %5459 = fmul fast float %5458, 5.000000e+00
  %5460 = fadd fast float %5459, 0xC1EFBF8940000000
  %5461 = fptosi float %5460 to i32
  %5462 = bitcast i32 %5461 to float
  %5463 = fmul fast float %5462, %3852
  %5464 = fmul fast float %5380, %5463
  %5465 = fmul fast float %5464, %5433
  %5466 = fmul fast float %5465, %5450
  %5467 = fmul fast float %5381, %5463
  %5468 = fmul fast float %5467, %5433
  %5469 = fmul fast float %5468, %5451
  %5470 = fmul fast float %5382, %5463
  %5471 = fmul fast float %5470, %5433
  %5472 = fmul fast float %5471, %5452
  %5473 = fmul fast float %5434, %3848
  %5474 = fmul fast float %5435, %3848
  %5475 = fmul fast float %5436, %3848
  %5476 = fadd fast float %5453, %3841
  %5477 = fadd fast float %5476, %5466
  %5478 = fmul fast float %5477, %3848
  %5479 = fadd fast float %5454, %3842
  %5480 = fadd fast float %5479, %5469
  %5481 = fmul fast float %5480, %3848
  %5482 = fadd fast float %5455, %3843
  %5483 = fadd fast float %5482, %5472
  %5484 = fmul fast float %5483, %3848
  %5485 = bitcast i32 %5153 to float
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 3
  %5488 = fcmp fast oeq float %5487, 0.000000e+00
  br i1 %5488, label %5726, label %5489

; <label>:5489                                    ; preds = %5427
  %5490 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5491 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5492 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 0
  %5495 = extractvalue %dx.types.CBufRet.f32 %5493, 1
  %5496 = extractvalue %dx.types.CBufRet.f32 %5493, 2
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 0
  %5499 = extractvalue %dx.types.CBufRet.f32 %5497, 1
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5495, float %5496, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = select i1 %205, float %5498, float %5494
  %5502 = select i1 %205, float %5500, float %5495
  %5503 = select i1 %205, float %5499, float %5496
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 1
  %5506 = fcmp fast une float %5505, 0.000000e+00
  br i1 %5506, label %5507, label %5524

; <label>:5507                                    ; preds = %5489
  %5508 = fptoui float %83 to i32
  %5509 = fptoui float %84 to i32
  %5510 = lshr i32 %5508, 4
  %5511 = lshr i32 %5509, 4
  %5512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5513 = extractvalue %dx.types.CBufRet.f32 %5512, 0
  %5514 = fptoui float %5513 to i32
  %5515 = add i32 %5514, 15
  %5516 = lshr i32 %5515, 4
  %5517 = mul i32 %5516, %5511
  %5518 = add i32 %5517, %5510
  %5519 = shl i32 %5518, 3
  %5520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5519, i32 undef)  ; BufferLoad(srv,index,wot)
  %5521 = extractvalue %dx.types.ResRet.i32 %5520, 0
  %5522 = and i32 %5521, -268435456
  %5523 = icmp eq i32 %5522, -1342177280
  br i1 %5523, label %5534, label %5524

; <label>:5524                                    ; preds = %5507, %5489
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 2
  %5527 = extractvalue %dx.types.CBufRet.f32 %5525, 3
  %5528 = fmul fast float %5526, %83
  %5529 = fmul fast float %5527, %84
  %5530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5528, float %5529, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.ResRet.f32 %5530, 2
  br label %5534

; <label>:5534                                    ; preds = %5524, %5507
  %5535 = phi float [ %5531, %5524 ], [ 0.000000e+00, %5507 ]
  %5536 = phi float [ %5532, %5524 ], [ 0.000000e+00, %5507 ]
  %5537 = phi float [ %5533, %5524 ], [ 0.000000e+00, %5507 ]
  %5538 = call float @dx.op.binary.f32(i32 36, float %5536, float %5537)  ; FMin(a,b)
  %5539 = call float @dx.op.binary.f32(i32 36, float %5535, float %5538)  ; FMin(a,b)
  %5540 = fcmp fast ogt float %5539, 0.000000e+00
  br i1 %5540, label %5541, label %5726, !dx.controlflow.hints !76

; <label>:5541                                    ; preds = %5534
  %5542 = fmul fast float %5535, %5501
  %5543 = fmul fast float %5536, %5502
  %5544 = fmul fast float %5537, %5503
  %5545 = fsub fast float %5490, %5092
  %5546 = fsub fast float %5491, %5091
  %5547 = fsub fast float %5492, %5090
  %5548 = call float @dx.op.dot3.f32(i32 55, float %5545, float %5546, float %5547, float %5545, float %5546, float %5547)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = call float @dx.op.unary.f32(i32 25, float %5548)  ; Rsqrt(value)
  %5550 = fmul fast float %5549, %5545
  %5551 = fmul fast float %5549, %5546
  %5552 = fmul fast float %5549, %5547
  %5553 = call float @dx.op.dot3.f32(i32 55, float %5490, float %5491, float %5492, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = call float @dx.op.dot3.f32(i32 55, float %5089, float %5088, float %5087, float %5550, float %5551, float %5552)  ; Dot3(ax,ay,az,bx,by,bz)
  %5555 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5556 = fmul fast float %5555, %5555
  %5557 = fmul fast float %5556, %5485
  %5558 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5559 = fmul fast float %5558, %5555
  %5560 = call float @dx.op.dot3.f32(i32 55, float %5096, float %5097, float %5098, float %5550, float %5551, float %5552)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = fmul fast float %5560, %5560
  %5562 = call float @dx.op.unary.f32(i32 6, float %5553)  ; FAbs(value)
  %5563 = fsub fast float 1.000000e+00, %5102
  %5564 = call float @dx.op.binary.f32(i32 35, float %5563, float 0x3F847AE140000000)  ; FMax(a,b)
  %5565 = fmul fast float %5564, %5564
  %5566 = fmul fast float %5565, %5565
  %5567 = fsub fast float 1.000000e+00, %5566
  %5568 = fmul fast float %5106, %5106
  %5569 = fmul fast float %5568, %5567
  %5570 = fadd fast float %5569, %5566
  %5571 = bitcast float %5570 to i32
  %5572 = ashr i32 %5571, 1
  %5573 = add nsw i32 %5572, 532487669
  %5574 = bitcast i32 %5573 to float
  %5575 = fadd fast float %5574, %5106
  %5576 = call float @dx.op.dot3.f32(i32 55, float %3937, float %3938, float %3939, float %5550, float %5551, float %5552)  ; Dot3(ax,ay,az,bx,by,bz)
  %5577 = fsub fast float 1.000000e+00, %3925
  %5578 = call float @dx.op.binary.f32(i32 35, float %5577, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5579 = fmul fast float %5578, %5578
  %5580 = fmul fast float %5579, %5566
  %5581 = fmul fast float %5576, %5576
  %5582 = fsub fast float 1.000000e+00, %5561
  %5583 = fsub fast float %5582, %5581
  %5584 = fdiv fast float %5581, %5580
  %5585 = fadd fast float %5584, %5561
  %5586 = fdiv fast float %5583, %5566
  %5587 = fadd fast float %5585, %5586
  %5588 = fmul fast float %5562, %5562
  %5589 = fmul fast float %5588, %5567
  %5590 = fadd fast float %5589, %5566
  %5591 = bitcast float %5590 to i32
  %5592 = ashr i32 %5591, 1
  %5593 = add nsw i32 %5592, 532487669
  %5594 = bitcast i32 %5593 to float
  %5595 = fadd fast float %5594, %5562
  %5596 = fmul fast float %5566, %5578
  %5597 = fmul fast float %5587, %5587
  %5598 = fmul fast float %5597, %5596
  %5599 = fmul fast float %5598, %5575
  %5600 = fmul fast float %5599, %5595
  %5601 = fdiv fast float 0x3FF0A00000000000, %5600
  %5602 = call float @dx.op.unary.f32(i32 6, float %5554)  ; FAbs(value)
  %5603 = fsub fast float 1.000000e+00, %5602
  %5604 = bitcast float %5603 to i32
  %5605 = sitofp i32 %5604 to float
  %5606 = fmul fast float %5605, 5.000000e+00
  %5607 = fadd fast float %5606, 0xC1EFBF8940000000
  %5608 = fptosi float %5607 to i32
  %5609 = bitcast i32 %5608 to float
  %5610 = fsub fast float 1.000000e+00, %5093
  %5611 = fsub fast float 1.000000e+00, %5094
  %5612 = fsub fast float 1.000000e+00, %5104
  %5613 = fmul fast float %5609, %5610
  %5614 = fmul fast float %5609, %5611
  %5615 = fmul fast float %5609, %5612
  %5616 = fadd fast float %5613, %5093
  %5617 = fadd fast float %5614, %5094
  %5618 = fadd fast float %5615, %5104
  br i1 %5400, label %5619, label %5642

; <label>:5619                                    ; preds = %5541
  %5620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3851, float %5602, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5621 = extractvalue %dx.types.ResRet.f32 %5620, 0
  %5622 = extractvalue %dx.types.ResRet.f32 %5620, 1
  %5623 = extractvalue %dx.types.ResRet.f32 %5620, 2
  %5624 = fadd fast float %5621, -5.000000e-01
  %5625 = fadd fast float %5622, -5.000000e-01
  %5626 = fadd fast float %5623, -5.000000e-01
  %5627 = fmul fast float %5093, 4.000000e+00
  %5628 = fmul fast float %5627, %5610
  %5629 = fmul fast float %5628, %5624
  %5630 = fmul fast float %5094, 4.000000e+00
  %5631 = fmul fast float %5630, %5611
  %5632 = fmul fast float %5631, %5625
  %5633 = fmul fast float %5104, 4.000000e+00
  %5634 = fmul fast float %5633, %5612
  %5635 = fmul fast float %5634, %5626
  %5636 = fadd fast float %5629, %5616
  %5637 = fadd fast float %5632, %5617
  %5638 = fadd fast float %5635, %5618
  %5639 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5640 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5641 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  br label %5642

; <label>:5642                                    ; preds = %5619, %5541
  %5643 = phi float [ %5639, %5619 ], [ %5616, %5541 ]
  %5644 = phi float [ %5640, %5619 ], [ %5617, %5541 ]
  %5645 = phi float [ %5641, %5619 ], [ %5618, %5541 ]
  %5646 = fmul fast float %5553, 9.843750e-01
  %5647 = fadd fast float %5646, 7.812500e-03
  %5648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5647, float %5390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5649 = extractvalue %dx.types.ResRet.f32 %5648, 2
  %5650 = extractvalue %dx.types.ResRet.f32 %5648, 3
  %5651 = fmul fast float %5649, %5093
  %5652 = fmul fast float %5649, %5094
  %5653 = fmul fast float %5649, %5104
  %5654 = fadd fast float %5651, %5650
  %5655 = fadd fast float %5652, %5650
  %5656 = fadd fast float %5653, %5650
  br i1 %5400, label %5657, label %5680

; <label>:5657                                    ; preds = %5642
  %5658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3851, float %5553, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5659 = extractvalue %dx.types.ResRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.ResRet.f32 %5658, 1
  %5661 = extractvalue %dx.types.ResRet.f32 %5658, 2
  %5662 = fadd fast float %5659, -5.000000e-01
  %5663 = fadd fast float %5660, -5.000000e-01
  %5664 = fadd fast float %5661, -5.000000e-01
  %5665 = fmul fast float %5093, 4.000000e+00
  %5666 = fmul fast float %5665, %5610
  %5667 = fmul fast float %5666, %5662
  %5668 = fmul fast float %5094, 4.000000e+00
  %5669 = fmul fast float %5668, %5611
  %5670 = fmul fast float %5669, %5663
  %5671 = fmul fast float %5104, 4.000000e+00
  %5672 = fmul fast float %5671, %5612
  %5673 = fmul fast float %5672, %5664
  %5674 = fadd fast float %5667, %5654
  %5675 = fadd fast float %5670, %5655
  %5676 = fadd fast float %5673, %5656
  %5677 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5678 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5679 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  br label %5680

; <label>:5680                                    ; preds = %5657, %5642
  %5681 = phi float [ %5677, %5657 ], [ %5654, %5642 ]
  %5682 = phi float [ %5678, %5657 ], [ %5655, %5642 ]
  %5683 = phi float [ %5679, %5657 ], [ %5656, %5642 ]
  %5684 = call float @dx.op.binary.f32(i32 35, float %5682, float %5683)  ; FMax(a,b)
  %5685 = call float @dx.op.binary.f32(i32 35, float %5681, float %5684)  ; FMax(a,b)
  %5686 = fsub fast float 1.000000e+00, %5685
  %5687 = fmul fast float %5643, %5601
  %5688 = fmul fast float %5644, %5601
  %5689 = fmul fast float %5645, %5601
  %5690 = fsub fast float 1.000000e+00, %5554
  %5691 = bitcast float %5690 to i32
  %5692 = sitofp i32 %5691 to float
  %5693 = fmul fast float %5692, 5.000000e+00
  %5694 = fadd fast float %5693, 0xC1EFBF8940000000
  %5695 = fptosi float %5694 to i32
  %5696 = bitcast i32 %5695 to float
  %5697 = fmul fast float %5696, %3852
  %5698 = fmul fast float %5686, %5697
  %5699 = fmul fast float %5698, %5450
  %5700 = fmul fast float %5698, %5451
  %5701 = fmul fast float %5698, %5452
  %5702 = fadd fast float %5699, %5687
  %5703 = fadd fast float %5700, %5688
  %5704 = fadd fast float %5701, %5689
  %5705 = fmul fast float %5559, %5542
  %5706 = fmul fast float %5705, %5686
  %5707 = fmul fast float %5559, %5543
  %5708 = fmul fast float %5707, %5686
  %5709 = fmul fast float %5559, %5544
  %5710 = fmul fast float %5709, %5686
  %5711 = fmul fast float %5705, %5702
  %5712 = fmul fast float %5707, %5703
  %5713 = fmul fast float %5709, %5704
  %5714 = fadd fast float %5706, %5434
  %5715 = fmul fast float %5714, %3848
  %5716 = fadd fast float %5708, %5435
  %5717 = fmul fast float %5716, %3848
  %5718 = fadd fast float %5710, %5436
  %5719 = fmul fast float %5718, %3848
  %5720 = fadd fast float %5711, %5477
  %5721 = fmul fast float %5720, %3848
  %5722 = fadd fast float %5712, %5480
  %5723 = fmul fast float %5722, %3848
  %5724 = fadd fast float %5713, %5483
  %5725 = fmul fast float %5724, %3848
  br label %5726

; <label>:5726                                    ; preds = %5680, %5534, %5427
  %5727 = phi float [ %5478, %5427 ], [ %5478, %5534 ], [ %5721, %5680 ]
  %5728 = phi float [ %5481, %5427 ], [ %5481, %5534 ], [ %5723, %5680 ]
  %5729 = phi float [ %5484, %5427 ], [ %5484, %5534 ], [ %5725, %5680 ]
  %5730 = phi float [ %5473, %5427 ], [ %5473, %5534 ], [ %5715, %5680 ]
  %5731 = phi float [ %5474, %5427 ], [ %5474, %5534 ], [ %5717, %5680 ]
  %5732 = phi float [ %5475, %5427 ], [ %5475, %5534 ], [ %5719, %5680 ]
  %5733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.i32 %5733, 0
  %5735 = icmp eq i32 %5734, 0
  br i1 %5735, label %6180, label %5736

; <label>:5736                                    ; preds = %5726
  %5737 = fptoui float %83 to i32
  %5738 = fptoui float %84 to i32
  %5739 = lshr i32 %5737, 4
  %5740 = lshr i32 %5738, 4
  %5741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5742 = extractvalue %dx.types.CBufRet.i32 %5741, 0
  %5743 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5740, i32 %5742, i32 %5739)  ; UMad(a,b,c)
  %5744 = add nsw i32 %5734, -1
  %5745 = call i32 @dx.op.binary.i32(i32 37, i32 %5744, i32 0)  ; IMax(a,b)
  %5746 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %5747 = fptoui float %5746 to i32
  %5748 = lshr i32 %5747, 5
  %5749 = call i32 @dx.op.binary.i32(i32 40, i32 %5748, i32 8191)  ; UMin(a,b)
  %5750 = shl i32 %5749, 2
  %5751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5750, i32 undef)  ; BufferLoad(srv,index,wot)
  %5752 = extractvalue %dx.types.ResRet.i32 %5751, 0
  %5753 = lshr i32 %5752, 16
  %5754 = and i32 %5752, 65535
  %5755 = lshr i32 %5752, 21
  %5756 = lshr i32 %5754, 5
  %5757 = call i32 @dx.op.binary.i32(i32 40, i32 %5756, i32 %5745)  ; UMin(a,b)
  %5758 = icmp ugt i32 %5755, %5757
  br i1 %5758, label %6180, label %5759

; <label>:5759                                    ; preds = %5736
  br label %5760

; <label>:5760                                    ; preds = %6170, %5759
  %5761 = phi i32 [ %6177, %6170 ], [ %5755, %5759 ]
  %5762 = phi float [ %6171, %6170 ], [ %5727, %5759 ]
  %5763 = phi float [ %6172, %6170 ], [ %5728, %5759 ]
  %5764 = phi float [ %6173, %6170 ], [ %5729, %5759 ]
  %5765 = phi float [ %6174, %6170 ], [ %5730, %5759 ]
  %5766 = phi float [ %6175, %6170 ], [ %5731, %5759 ]
  %5767 = phi float [ %6176, %6170 ], [ %5732, %5759 ]
  %5768 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5769 = extractvalue %dx.types.CBufRet.i32 %5768, 0
  %5770 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5743, i32 %5769, i32 %5761)  ; UMad(a,b,c)
  %5771 = shl i32 %5770, 2
  %5772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5771, i32 undef)  ; BufferLoad(srv,index,wot)
  %5773 = extractvalue %dx.types.ResRet.i32 %5772, 0
  %5774 = shl i32 %5761, 5
  %5775 = sub nsw i32 %5753, %5774
  %5776 = call i32 @dx.op.binary.i32(i32 37, i32 %5775, i32 0)  ; IMax(a,b)
  %5777 = call i32 @dx.op.binary.i32(i32 38, i32 %5776, i32 31)  ; IMin(a,b)
  %5778 = sub nsw i32 1, %5753
  %5779 = add nsw i32 %5778, %5754
  %5780 = call i32 @dx.op.binary.i32(i32 37, i32 %5779, i32 0)  ; IMax(a,b)
  %5781 = call i32 @dx.op.binary.i32(i32 38, i32 %5780, i32 32)  ; IMin(a,b)
  %5782 = and i32 %5781, 31
  %5783 = shl i32 -1, %5782
  %5784 = xor i32 %5783, -1
  %5785 = and i32 %5777, 31
  %5786 = shl i32 %5784, %5785
  %5787 = icmp eq i32 %5781, 32
  %5788 = select i1 %5787, i32 -1, i32 %5786
  %5789 = and i32 %5788, %5773
  %5790 = icmp eq i32 %5789, 0
  br i1 %5790, label %6170, label %5791

; <label>:5791                                    ; preds = %5760
  br label %5792

; <label>:5792                                    ; preds = %5872, %5791
  %5793 = phi i32 [ %5804, %5872 ], [ %5789, %5791 ]
  %5794 = phi float [ %5873, %5872 ], [ %5762, %5791 ]
  %5795 = phi float [ %5874, %5872 ], [ %5763, %5791 ]
  %5796 = phi float [ %5875, %5872 ], [ %5764, %5791 ]
  %5797 = phi float [ %5876, %5872 ], [ %5765, %5791 ]
  %5798 = phi float [ %5877, %5872 ], [ %5766, %5791 ]
  %5799 = phi float [ %5878, %5872 ], [ %5767, %5791 ]
  %5800 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5793)  ; FirstbitLo(value)
  %5801 = add i32 %5800, %5774
  %5802 = and i32 %5800, 31
  %5803 = shl i32 1, %5802
  %5804 = xor i32 %5803, %5793
  %5805 = mul i32 %5801, 112
  %5806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5805, i32 undef)  ; BufferLoad(srv,index,wot)
  %5807 = extractvalue %dx.types.ResRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.ResRet.f32 %5806, 1
  %5809 = extractvalue %dx.types.ResRet.f32 %5806, 2
  %5810 = or i32 %5805, 12
  %5811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5810, i32 undef)  ; BufferLoad(srv,index,wot)
  %5812 = extractvalue %dx.types.ResRet.f32 %5811, 0
  %5813 = add i32 %5805, 44
  %5814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5813, i32 undef)  ; BufferLoad(srv,index,wot)
  %5815 = extractvalue %dx.types.ResRet.f32 %5814, 0
  %5816 = add i32 %5805, 48
  %5817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5816, i32 undef)  ; BufferLoad(srv,index,wot)
  %5818 = extractvalue %dx.types.ResRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.ResRet.f32 %5817, 1
  %5820 = extractvalue %dx.types.ResRet.f32 %5817, 2
  %5821 = add i32 %5805, 80
  %5822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5821, i32 undef)  ; BufferLoad(srv,index,wot)
  %5823 = extractvalue %dx.types.ResRet.f32 %5822, 1
  %5824 = extractvalue %dx.types.ResRet.f32 %5822, 2
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5807, float %5808, float %5809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = select i1 %205, float %5823, float %5807
  %5827 = select i1 %205, float %5825, float %5808
  %5828 = select i1 %205, float %5824, float %5809
  %5829 = fsub fast float %5818, %166
  %5830 = fsub fast float %5819, %167
  %5831 = fsub fast float %5820, %168
  %5832 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float %5829, float %5830, float %5831)  ; Dot3(ax,ay,az,bx,by,bz)
  %5833 = call float @dx.op.unary.f32(i32 24, float %5832)  ; Sqrt(value)
  %5834 = fdiv fast float 1.000000e+00, %5833
  %5835 = fmul fast float %5834, %5829
  %5836 = fmul fast float %5834, %5830
  %5837 = fmul fast float %5834, %5831
  %5838 = fadd fast float %5833, %5812
  %5839 = fdiv fast float 1.000000e+00, %5838
  %5840 = fmul float %5815, %5839
  %5841 = fmul float %5840, %5840
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5843 = and i32 %5803, %5789
  %5844 = icmp eq i32 %5843, 0
  br i1 %5844, label %5867, label %5845, !dx.controlflow.hints !77

; <label>:5845                                    ; preds = %5792
  %5846 = lshr i32 %5737, 5
  %5847 = lshr i32 %5738, 5
  %5848 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5846, i32 %5847, i32 %5801, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5849 = extractvalue %dx.types.ResRet.i32 %5848, 0
  %5850 = and i32 %5849, 3
  %5851 = icmp eq i32 %5850, 0
  %5852 = select i1 %5851, float 1.000000e+00, float 0.000000e+00
  %5853 = icmp eq i32 %5850, 3
  br i1 %5853, label %5854, label %5867

; <label>:5854                                    ; preds = %5845
  %5855 = lshr i32 %5849, 10
  %5856 = and i32 %5855, 8160
  %5857 = and i32 %5738, 31
  %5858 = or i32 %5856, %5857
  %5859 = lshr i32 %5849, 1
  %5860 = and i32 %5859, 16352
  %5861 = and i32 %5737, 31
  %5862 = or i32 %5860, %5861
  %5863 = lshr i32 %5849, 23
  %5864 = and i32 %5863, 255
  %5865 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5862, i32 %5858, i32 %5864, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5866 = extractvalue %dx.types.ResRet.f32 %5865, 0
  br label %5867

; <label>:5867                                    ; preds = %5854, %5845, %5792
  %5868 = phi float [ %5866, %5854 ], [ %5852, %5845 ], [ 0.000000e+00, %5792 ]
  %5869 = call float @dx.op.binary.f32(i32 36, float %5868, float %5868)  ; FMin(a,b)
  %5870 = call float @dx.op.binary.f32(i32 36, float %5868, float %5869)  ; FMin(a,b)
  %5871 = fcmp fast ogt float %5870, 0.000000e+00
  br i1 %5871, label %5880, label %5872, !dx.controlflow.hints !78

; <label>:5872                                    ; preds = %6126, %5867
  %5873 = phi float [ %5794, %5867 ], [ %6166, %6126 ]
  %5874 = phi float [ %5795, %5867 ], [ %6167, %6126 ]
  %5875 = phi float [ %5796, %5867 ], [ %6168, %6126 ]
  %5876 = phi float [ %5797, %5867 ], [ %6160, %6126 ]
  %5877 = phi float [ %5798, %5867 ], [ %6161, %6126 ]
  %5878 = phi float [ %5799, %5867 ], [ %6162, %6126 ]
  %5879 = icmp eq i32 %5793, %5803
  br i1 %5879, label %6169, label %5792

; <label>:5880                                    ; preds = %5867
  %5881 = fmul fast float %5868, %5826
  %5882 = fmul fast float %5868, %5827
  %5883 = fmul fast float %5868, %5828
  %5884 = fsub fast float %5820, %4300
  %5885 = fcmp fast ogt float %5884, 0.000000e+00
  %5886 = fsub fast float %168, %4300
  %5887 = fcmp fast ogt float %5886, 0.000000e+00
  %5888 = xor i1 %5887, %5885
  %5889 = fsub fast float %4300, %5820
  %5890 = fmul fast float %5889, 2.000000e+00
  %5891 = fadd fast float %5890, %5820
  %5892 = select i1 %5888, float %5820, float %5891
  %5893 = fsub fast float %5892, %168
  %5894 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5893, float %5829, float %5830, float %5893)  ; Dot3(ax,ay,az,bx,by,bz)
  %5895 = call float @dx.op.unary.f32(i32 25, float %5894)  ; Rsqrt(value)
  %5896 = fmul fast float %5895, %5829
  %5897 = fmul fast float %5895, %5830
  %5898 = fmul fast float %5895, %5893
  %5899 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5896, float %5897, float %5898)  ; Dot3(ax,ay,az,bx,by,bz)
  %5901 = fdiv fast float 1.000000e+00, %5900
  %5902 = fmul fast float %5901, %5899
  %5903 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5886, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5904 = fcmp fast ogt float %5903, 0.000000e+00
  %5905 = fcmp fast olt float %5903, 0.000000e+00
  %5906 = zext i1 %5904 to i32
  %5907 = zext i1 %5905 to i32
  %5908 = sub nsw i32 %5906, %5907
  %5909 = sitofp i32 %5908 to float
  %5910 = fsub fast float %5892, %4300
  %5911 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5910, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5912 = fcmp fast ogt float %5911, 0.000000e+00
  %5913 = fcmp fast olt float %5911, 0.000000e+00
  %5914 = zext i1 %5912 to i32
  %5915 = zext i1 %5913 to i32
  %5916 = sub nsw i32 %5914, %5915
  %5917 = sitofp i32 %5916 to float
  %5918 = fcmp fast une float %5909, %5917
  br i1 %5918, label %5919, label %5929

; <label>:5919                                    ; preds = %5880
  %5920 = fmul fast float %5902, %5898
  %5921 = fmul fast float %5902, %5897
  %5922 = fmul fast float %5902, %5896
  %5923 = fmul fast float %5922, %5922
  %5924 = fmul fast float %5921, %5921
  %5925 = fadd fast float %5923, %5924
  %5926 = fmul fast float %5920, %5920
  %5927 = fadd fast float %5925, %5926
  %5928 = call float @dx.op.unary.f32(i32 24, float %5927)  ; Sqrt(value)
  br label %5941

; <label>:5929                                    ; preds = %5880
  %5930 = icmp slt i32 %5908, 0
  br i1 %5930, label %5931, label %5941

; <label>:5931                                    ; preds = %5929
  %5932 = fsub fast float %166, %5818
  %5933 = fsub fast float %167, %5819
  %5934 = fsub fast float %168, %5892
  %5935 = fmul fast float %5932, %5932
  %5936 = fmul fast float %5933, %5933
  %5937 = fadd fast float %5935, %5936
  %5938 = fmul fast float %5934, %5934
  %5939 = fadd fast float %5937, %5938
  %5940 = call float @dx.op.unary.f32(i32 24, float %5939)  ; Sqrt(value)
  br label %5941

; <label>:5941                                    ; preds = %5931, %5929, %5919
  %5942 = phi float [ %5928, %5919 ], [ %5940, %5931 ], [ 0.000000e+00, %5929 ]
  %5943 = and i1 %5887, %5885
  %5944 = fsub fast float -0.000000e+00, %5942
  %5945 = select i1 %5943, float -0.000000e+00, float %5944
  %5946 = fmul fast float %4301, 0x3FF7154760000000
  %5947 = fmul fast float %5946, %5945
  %5948 = fmul fast float %4302, 0x3FF7154760000000
  %5949 = fmul fast float %5948, %5945
  %5950 = fmul fast float %4303, 0x3FF7154760000000
  %5951 = fmul fast float %5950, %5945
  %5952 = call float @dx.op.unary.f32(i32 21, float %5947)  ; Exp(value)
  %5953 = call float @dx.op.unary.f32(i32 21, float %5949)  ; Exp(value)
  %5954 = call float @dx.op.unary.f32(i32 21, float %5951)  ; Exp(value)
  %5955 = call float @dx.op.unary.f32(i32 7, float %5952)  ; Saturate(value)
  %5956 = call float @dx.op.unary.f32(i32 7, float %5953)  ; Saturate(value)
  %5957 = call float @dx.op.unary.f32(i32 7, float %5954)  ; Saturate(value)
  %5958 = fmul fast float %5881, %5955
  %5959 = fmul fast float %5882, %5956
  %5960 = fmul fast float %5883, %5957
  %5961 = fsub fast float %5835, %5092
  %5962 = fsub fast float %5836, %5091
  %5963 = fsub fast float %5837, %5090
  %5964 = call float @dx.op.dot3.f32(i32 55, float %5961, float %5962, float %5963, float %5961, float %5962, float %5963)  ; Dot3(ax,ay,az,bx,by,bz)
  %5965 = call float @dx.op.unary.f32(i32 25, float %5964)  ; Rsqrt(value)
  %5966 = fmul fast float %5965, %5961
  %5967 = fmul fast float %5965, %5962
  %5968 = fmul fast float %5965, %5963
  %5969 = call float @dx.op.dot3.f32(i32 55, float %5835, float %5836, float %5837, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5970 = call float @dx.op.dot3.f32(i32 55, float %5089, float %5088, float %5087, float %5966, float %5967, float %5968)  ; Dot3(ax,ay,az,bx,by,bz)
  %5971 = call float @dx.op.unary.f32(i32 7, float %5969)  ; Saturate(value)
  %5972 = fmul fast float %5971, %5842
  %5973 = fmul fast float %5971, %5971
  %5974 = fmul fast float %5973, %5485
  %5975 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  %5976 = fmul fast float %5972, %5975
  %5977 = bitcast float %5832 to i32
  %5978 = ashr i32 %5977, 1
  %5979 = sub nsw i32 1597463007, %5978
  %5980 = bitcast i32 %5979 to float
  %5981 = fmul fast float %5980, %5829
  %5982 = fmul fast float %5980, %5830
  %5983 = fmul fast float %5980, %5831
  %5984 = fsub fast float %5981, %5092
  %5985 = fsub fast float %5982, %5091
  %5986 = fsub fast float %5983, %5090
  %5987 = call float @dx.op.dot3.f32(i32 55, float %5984, float %5985, float %5986, float %5984, float %5985, float %5986)  ; Dot3(ax,ay,az,bx,by,bz)
  %5988 = call float @dx.op.unary.f32(i32 25, float %5987)  ; Rsqrt(value)
  %5989 = fmul fast float %5984, %5988
  %5990 = fmul fast float %5985, %5988
  %5991 = fmul fast float %5986, %5988
  %5992 = call float @dx.op.dot3.f32(i32 55, float %5096, float %5097, float %5098, float %5989, float %5990, float %5991)  ; Dot3(ax,ay,az,bx,by,bz)
  %5993 = fmul fast float %5992, %5992
  %5994 = call float @dx.op.unary.f32(i32 6, float %5969)  ; FAbs(value)
  %5995 = fsub fast float 1.000000e+00, %5102
  %5996 = call float @dx.op.binary.f32(i32 35, float %5995, float 0x3F847AE140000000)  ; FMax(a,b)
  %5997 = fmul fast float %5996, %5996
  %5998 = fmul fast float %5997, %5997
  %5999 = fsub fast float 1.000000e+00, %5998
  %6000 = fmul fast float %5106, %5106
  %6001 = fmul fast float %6000, %5999
  %6002 = fadd fast float %6001, %5998
  %6003 = bitcast float %6002 to i32
  %6004 = ashr i32 %6003, 1
  %6005 = add nsw i32 %6004, 532487669
  %6006 = bitcast i32 %6005 to float
  %6007 = fadd fast float %6006, %5106
  %6008 = call float @dx.op.dot3.f32(i32 55, float %3937, float %3938, float %3939, float %5989, float %5990, float %5991)  ; Dot3(ax,ay,az,bx,by,bz)
  %6009 = fsub fast float 1.000000e+00, %3925
  %6010 = call float @dx.op.binary.f32(i32 35, float %6009, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6011 = fmul fast float %6010, %6010
  %6012 = fmul fast float %6011, %5998
  %6013 = fmul fast float %6008, %6008
  %6014 = fsub fast float 1.000000e+00, %5993
  %6015 = fsub fast float %6014, %6013
  %6016 = fdiv fast float %6013, %6012
  %6017 = fadd fast float %6016, %5993
  %6018 = fdiv fast float %6015, %5998
  %6019 = fadd fast float %6017, %6018
  %6020 = fmul fast float %5994, %5994
  %6021 = fmul fast float %6020, %5999
  %6022 = fadd fast float %6021, %5998
  %6023 = bitcast float %6022 to i32
  %6024 = ashr i32 %6023, 1
  %6025 = add nsw i32 %6024, 532487669
  %6026 = bitcast i32 %6025 to float
  %6027 = fadd fast float %6026, %5994
  %6028 = fmul fast float %5998, %6010
  %6029 = fmul fast float %6019, %6019
  %6030 = fmul fast float %6029, %6028
  %6031 = fmul fast float %6030, %6007
  %6032 = fmul fast float %6031, %6027
  %6033 = fdiv fast float 1.000000e+00, %6032
  %6034 = bitcast float %5998 to i32
  %6035 = sitofp i32 %6034 to float
  %6036 = fmul fast float %6035, 0x3FE7F73180000000
  %6037 = fadd fast float %6036, 0x41AFE27C40000000
  %6038 = fptosi float %6037 to i32
  %6039 = bitcast i32 %6038 to float
  %6040 = fmul fast float %5815, 0x3FD80E9D60000000
  %6041 = fmul fast float %6040, %5980
  %6042 = fadd fast float %6039, %6041
  %6043 = bitcast float %6042 to i32
  %6044 = sub nsw i32 2129859010, %6043
  %6045 = bitcast i32 %6044 to float
  %6046 = fmul fast float %6039, %6033
  %6047 = fmul fast float %6046, %6045
  %6048 = call float @dx.op.unary.f32(i32 6, float %5970)  ; FAbs(value)
  %6049 = fsub fast float 1.000000e+00, %6048
  %6050 = bitcast float %6049 to i32
  %6051 = sitofp i32 %6050 to float
  %6052 = fmul fast float %6051, 5.000000e+00
  %6053 = fadd fast float %6052, 0xC1EFBF8940000000
  %6054 = fptosi float %6053 to i32
  %6055 = bitcast i32 %6054 to float
  %6056 = fsub fast float 1.000000e+00, %5093
  %6057 = fsub fast float 1.000000e+00, %5094
  %6058 = fsub fast float 1.000000e+00, %5104
  %6059 = fmul fast float %6055, %6056
  %6060 = fmul fast float %6055, %6057
  %6061 = fmul fast float %6055, %6058
  %6062 = fadd fast float %6059, %5093
  %6063 = fadd fast float %6060, %5094
  %6064 = fadd fast float %6061, %5104
  br i1 %5400, label %6065, label %6088

; <label>:6065                                    ; preds = %5941
  %6066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3851, float %6048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6067 = extractvalue %dx.types.ResRet.f32 %6066, 0
  %6068 = extractvalue %dx.types.ResRet.f32 %6066, 1
  %6069 = extractvalue %dx.types.ResRet.f32 %6066, 2
  %6070 = fadd fast float %6067, -5.000000e-01
  %6071 = fadd fast float %6068, -5.000000e-01
  %6072 = fadd fast float %6069, -5.000000e-01
  %6073 = fmul fast float %5093, 4.000000e+00
  %6074 = fmul fast float %6073, %6056
  %6075 = fmul fast float %6074, %6070
  %6076 = fmul fast float %5094, 4.000000e+00
  %6077 = fmul fast float %6076, %6057
  %6078 = fmul fast float %6077, %6071
  %6079 = fmul fast float %5104, 4.000000e+00
  %6080 = fmul fast float %6079, %6058
  %6081 = fmul fast float %6080, %6072
  %6082 = fadd fast float %6075, %6062
  %6083 = fadd fast float %6078, %6063
  %6084 = fadd fast float %6081, %6064
  %6085 = call float @dx.op.unary.f32(i32 7, float %6082)  ; Saturate(value)
  %6086 = call float @dx.op.unary.f32(i32 7, float %6083)  ; Saturate(value)
  %6087 = call float @dx.op.unary.f32(i32 7, float %6084)  ; Saturate(value)
  br label %6088

; <label>:6088                                    ; preds = %6065, %5941
  %6089 = phi float [ %6085, %6065 ], [ %6062, %5941 ]
  %6090 = phi float [ %6086, %6065 ], [ %6063, %5941 ]
  %6091 = phi float [ %6087, %6065 ], [ %6064, %5941 ]
  %6092 = fmul fast float %5969, 9.843750e-01
  %6093 = fadd fast float %6092, 7.812500e-03
  %6094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6093, float %5390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6095 = extractvalue %dx.types.ResRet.f32 %6094, 2
  %6096 = extractvalue %dx.types.ResRet.f32 %6094, 3
  %6097 = fmul fast float %6095, %5093
  %6098 = fmul fast float %6095, %5094
  %6099 = fmul fast float %6095, %5104
  %6100 = fadd fast float %6097, %6096
  %6101 = fadd fast float %6098, %6096
  %6102 = fadd fast float %6099, %6096
  br i1 %5400, label %6103, label %6126

; <label>:6103                                    ; preds = %6088
  %6104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3851, float %5969, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6105 = extractvalue %dx.types.ResRet.f32 %6104, 0
  %6106 = extractvalue %dx.types.ResRet.f32 %6104, 1
  %6107 = extractvalue %dx.types.ResRet.f32 %6104, 2
  %6108 = fadd fast float %6105, -5.000000e-01
  %6109 = fadd fast float %6106, -5.000000e-01
  %6110 = fadd fast float %6107, -5.000000e-01
  %6111 = fmul fast float %5093, 4.000000e+00
  %6112 = fmul fast float %6111, %6056
  %6113 = fmul fast float %6112, %6108
  %6114 = fmul fast float %5094, 4.000000e+00
  %6115 = fmul fast float %6114, %6057
  %6116 = fmul fast float %6115, %6109
  %6117 = fmul fast float %5104, 4.000000e+00
  %6118 = fmul fast float %6117, %6058
  %6119 = fmul fast float %6118, %6110
  %6120 = fadd fast float %6113, %6100
  %6121 = fadd fast float %6116, %6101
  %6122 = fadd fast float %6119, %6102
  %6123 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6124 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6125 = call float @dx.op.unary.f32(i32 7, float %6122)  ; Saturate(value)
  br label %6126

; <label>:6126                                    ; preds = %6103, %6088
  %6127 = phi float [ %6123, %6103 ], [ %6100, %6088 ]
  %6128 = phi float [ %6124, %6103 ], [ %6101, %6088 ]
  %6129 = phi float [ %6125, %6103 ], [ %6102, %6088 ]
  %6130 = call float @dx.op.binary.f32(i32 35, float %6128, float %6129)  ; FMax(a,b)
  %6131 = call float @dx.op.binary.f32(i32 35, float %6127, float %6130)  ; FMax(a,b)
  %6132 = fsub fast float 1.000000e+00, %6131
  %6133 = fmul fast float %6089, %6047
  %6134 = fmul fast float %6090, %6047
  %6135 = fmul fast float %6091, %6047
  %6136 = fsub fast float 1.000000e+00, %5970
  %6137 = bitcast float %6136 to i32
  %6138 = sitofp i32 %6137 to float
  %6139 = fmul fast float %6138, 5.000000e+00
  %6140 = fadd fast float %6139, 0xC1EFBF8940000000
  %6141 = fptosi float %6140 to i32
  %6142 = bitcast i32 %6141 to float
  %6143 = fmul fast float %6142, %3852
  %6144 = fmul fast float %6132, %6143
  %6145 = fmul fast float %6144, %5450
  %6146 = fmul fast float %6144, %5451
  %6147 = fmul fast float %6144, %5452
  %6148 = fadd fast float %6145, %6133
  %6149 = fadd fast float %6146, %6134
  %6150 = fadd fast float %6147, %6135
  %6151 = fmul fast float %5958, %3848
  %6152 = fmul fast float %6151, %5976
  %6153 = fmul fast float %6152, %6132
  %6154 = fmul fast float %5959, %3848
  %6155 = fmul fast float %6154, %5976
  %6156 = fmul fast float %6155, %6132
  %6157 = fmul fast float %5960, %3848
  %6158 = fmul fast float %6157, %5976
  %6159 = fmul fast float %6158, %6132
  %6160 = fadd fast float %6153, %5797
  %6161 = fadd fast float %6156, %5798
  %6162 = fadd fast float %6159, %5799
  %6163 = fmul fast float %6152, %6148
  %6164 = fmul fast float %6155, %6149
  %6165 = fmul fast float %6158, %6150
  %6166 = fadd fast float %6163, %5794
  %6167 = fadd fast float %6164, %5795
  %6168 = fadd fast float %6165, %5796
  br label %5872

; <label>:6169                                    ; preds = %5872
  br label %6170

; <label>:6170                                    ; preds = %6169, %5760
  %6171 = phi float [ %5762, %5760 ], [ %5873, %6169 ]
  %6172 = phi float [ %5763, %5760 ], [ %5874, %6169 ]
  %6173 = phi float [ %5764, %5760 ], [ %5875, %6169 ]
  %6174 = phi float [ %5765, %5760 ], [ %5876, %6169 ]
  %6175 = phi float [ %5766, %5760 ], [ %5877, %6169 ]
  %6176 = phi float [ %5767, %5760 ], [ %5878, %6169 ]
  %6177 = add i32 %5761, 1
  %6178 = icmp ugt i32 %6177, %5757
  br i1 %6178, label %6179, label %5760

; <label>:6179                                    ; preds = %6170
  br label %6180

; <label>:6180                                    ; preds = %6179, %5736, %5726
  %6181 = phi float [ %5727, %5726 ], [ %5727, %5736 ], [ %6171, %6179 ]
  %6182 = phi float [ %5728, %5726 ], [ %5728, %5736 ], [ %6172, %6179 ]
  %6183 = phi float [ %5729, %5726 ], [ %5729, %5736 ], [ %6173, %6179 ]
  %6184 = phi float [ %5730, %5726 ], [ %5730, %5736 ], [ %6174, %6179 ]
  %6185 = phi float [ %5731, %5726 ], [ %5731, %5736 ], [ %6175, %6179 ]
  %6186 = phi float [ %5732, %5726 ], [ %5732, %5736 ], [ %6176, %6179 ]
  %6187 = call float @dx.op.unary.f32(i32 24, float %5099)  ; Sqrt(value)
  %6188 = call float @dx.op.unary.f32(i32 24, float %5100)  ; Sqrt(value)
  %6189 = call float @dx.op.unary.f32(i32 24, float %5101)  ; Sqrt(value)
  %6190 = fmul fast float %6187, %6184
  %6191 = fmul fast float %6188, %6185
  %6192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6193 = extractvalue %dx.types.CBufRet.f32 %6192, 0
  br i1 %205, label %6194, label %6214

; <label>:6194                                    ; preds = %6180
  %6195 = fadd fast float %6186, %3854
  %6196 = fmul fast float %6195, %3855
  %6197 = fsub fast float 1.000000e+00, %3855
  %6198 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  %6199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.f32 %6199, 3
  %6201 = fmul fast float %6200, %6198
  %6202 = fadd fast float %6201, %6196
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6205 = fmul fast float %6204, %5456
  %6206 = fsub fast float %6202, %6205
  %6207 = fadd fast float %6191, %6190
  %6208 = fmul fast float %6193, %6207
  %6209 = extractvalue %dx.types.CBufRet.f32 %6199, 1
  %6210 = fsub fast float %6206, %6209
  %6211 = extractvalue %dx.types.CBufRet.f32 %6199, 2
  %6212 = fmul fast float %6210, %6211
  %6213 = call float @dx.op.unary.f32(i32 7, float %6212)  ; Saturate(value)
  br label %6230

; <label>:6214                                    ; preds = %6180
  %6215 = fmul fast float %6189, %6186
  %6216 = fmul fast float %6193, %6190
  %6217 = fmul fast float %6193, %6191
  %6218 = fmul fast float %6215, %6193
  %6219 = add i32 %34, 356
  %6220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6219, i32 undef)  ; BufferLoad(srv,index,wot)
  %6221 = extractvalue %dx.types.ResRet.i32 %6220, 0
  %6222 = and i32 %6221, 32
  %6223 = icmp eq i32 %6222, 0
  br i1 %6223, label %6230, label %6224

; <label>:6224                                    ; preds = %6214
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 0
  %6227 = fmul fast float %6226, 0x3FE99999A0000000
  %6228 = fadd fast float %6226, %6216
  %6229 = fadd fast float %6227, %6218
  br label %6230

; <label>:6230                                    ; preds = %6224, %6214, %6194
  %6231 = phi float [ %6208, %6194 ], [ %6228, %6224 ], [ %6216, %6214 ]
  %6232 = phi float [ %6213, %6194 ], [ %6217, %6224 ], [ %6217, %6214 ]
  %6233 = phi float [ 1.000000e+00, %6194 ], [ %6229, %6224 ], [ %6218, %6214 ]
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = fmul fast float %6235, %6182
  %6237 = fmul fast float %6235, %6183
  %6238 = fadd fast float %6182, %6181
  %6239 = select i1 %205, float %6238, float %6181
  %6240 = fmul float %6239, %6235
  %6241 = select i1 %205, float 0.000000e+00, float %6236
  %6242 = select i1 %205, float 0.000000e+00, float %6237
  %6243 = fmul fast float %6231, %6187
  %6244 = fmul fast float %6232, %6188
  %6245 = fmul fast float %6233, %6189
  %6246 = fadd fast float %6240, %6243
  %6247 = fadd fast float %6241, %6244
  %6248 = fadd fast float %6242, %6245
  %6249 = select i1 %205, float %6232, float %6247
  %6250 = select i1 %205, float %6233, float %6248
  %6251 = call float @dx.op.binary.f32(i32 36, float %6246, float 3.225500e+04)  ; FMin(a,b)
  %6252 = call float @dx.op.binary.f32(i32 36, float %6249, float 3.225500e+04)  ; FMin(a,b)
  %6253 = call float @dx.op.binary.f32(i32 36, float %6250, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6251)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6252)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6253)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

