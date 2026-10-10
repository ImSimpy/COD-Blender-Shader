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
; shader hash: ad0f68053dba17042e00b342310a3feb
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
  %3150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.f32 %3150, 0
  %3152 = fmul fast float %3151, %3135
  %3153 = fmul fast float %3151, %3136
  %3154 = fmul fast float %3151, %3137
  %3155 = call float @dx.op.dot2.f32(i32 54, float %3130, float %3131, float %3130, float %3131)  ; Dot2(ax,ay,bx,by)
  %3156 = fmul fast float %3155, 0x3FE3333340000000
  %3157 = fsub fast float 1.000000e+00, %3156
  %3158 = call float @dx.op.dot3.f32(i32 55, float %3130, float %3131, float %3157, float %3130, float %3131, float %3157)  ; Dot3(ax,ay,az,bx,by,bz)
  %3159 = call float @dx.op.unary.f32(i32 25, float %3158)  ; Rsqrt(value)
  %3160 = fmul fast float %3159, %3130
  %3161 = fmul fast float %3159, %3131
  %3162 = fmul fast float %3157, %3159
  %3163 = fmul fast float %3162, %92
  %3164 = fmul fast float %3162, %94
  %3165 = fmul fast float %3162, %96
  %3166 = fmul fast float %3160, %64
  %3167 = fmul fast float %3160, %65
  %3168 = fmul fast float %3160, %66
  %3169 = fadd fast float %3163, %3166
  %3170 = fadd fast float %3164, %3167
  %3171 = fadd fast float %3165, %3168
  %3172 = fmul fast float %106, %3161
  %3173 = fmul fast float %107, %3161
  %3174 = fmul fast float %108, %3161
  %3175 = fadd fast float %3169, %3172
  %3176 = fadd fast float %3170, %3173
  %3177 = fadd fast float %3171, %3174
  %3178 = call float @dx.op.dot3.f32(i32 55, float %3175, float %3176, float %3177, float %3175, float %3176, float %3177)  ; Dot3(ax,ay,az,bx,by,bz)
  %3179 = call float @dx.op.unary.f32(i32 25, float %3178)  ; Rsqrt(value)
  %3180 = fmul fast float %3175, %3179
  %3181 = fmul fast float %3176, %3179
  %3182 = fmul fast float %3177, %3179
  %3183 = icmp eq i32 %35, 65535
  br i1 %3183, label %3702, label %3184

; <label>:3184                                    ; preds = %3129
  %3185 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3186 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3187 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3188 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3189 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3190 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3191 = fadd fast float %3185, %36
  %3192 = fadd fast float %3186, %37
  %3193 = fadd fast float %3187, %38
  %3194 = fadd fast float %3188, %36
  %3195 = fadd fast float %3189, %37
  %3196 = fadd fast float %3190, %38
  %3197 = mul i32 %35, 48
  %3198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.f32 %3198, 0
  %3200 = extractvalue %dx.types.ResRet.f32 %3198, 1
  %3201 = extractvalue %dx.types.ResRet.f32 %3198, 2
  %3202 = add i32 %3197, 16
  %3203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.f32 %3203, 0
  %3205 = extractvalue %dx.types.ResRet.f32 %3203, 1
  %3206 = extractvalue %dx.types.ResRet.f32 %3203, 2
  %3207 = add i32 %3197, 32
  %3208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.f32 %3208, 0
  %3210 = extractvalue %dx.types.ResRet.f32 %3208, 1
  %3211 = extractvalue %dx.types.ResRet.f32 %3208, 2
  %3212 = extractvalue %dx.types.ResRet.f32 %3208, 3
  %3213 = bitcast float %3212 to i32
  %3214 = fmul fast float %3199, %36
  %3215 = fmul fast float %3200, %37
  %3216 = fmul fast float %3201, %38
  %3217 = fsub fast float %3214, %3204
  %3218 = fsub fast float %3215, %3205
  %3219 = fsub fast float %3216, %3206
  %3220 = call float @dx.op.unary.f32(i32 7, float %3217)  ; Saturate(value)
  %3221 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  %3222 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  %3223 = fmul fast float %3220, %3209
  %3224 = fmul fast float %3221, %3210
  %3225 = fmul fast float %3222, %3211
  %3226 = fadd fast float %3209, -1.000000e+00
  %3227 = fadd fast float %3210, -1.000000e+00
  %3228 = fadd fast float %3211, -1.000000e+00
  %3229 = call float @dx.op.unary.f32(i32 27, float %3223)  ; Round_ni(value)
  %3230 = call float @dx.op.unary.f32(i32 27, float %3224)  ; Round_ni(value)
  %3231 = call float @dx.op.unary.f32(i32 27, float %3225)  ; Round_ni(value)
  %3232 = call float @dx.op.binary.f32(i32 36, float %3229, float %3226)  ; FMin(a,b)
  %3233 = call float @dx.op.binary.f32(i32 36, float %3230, float %3227)  ; FMin(a,b)
  %3234 = call float @dx.op.binary.f32(i32 36, float %3231, float %3228)  ; FMin(a,b)
  %3235 = fmul fast float %3234, %3210
  %3236 = fadd fast float %3235, %3233
  %3237 = fmul fast float %3236, %3209
  %3238 = fadd fast float %3237, %3232
  %3239 = fptosi float %3238 to i32
  %3240 = add nsw i32 %3239, %3213
  %3241 = shl nsw i32 %3240, 2
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = lshr i32 %3243, 16
  %3245 = icmp eq i32 %3244, 0
  br i1 %3245, label %3670, label %3246

; <label>:3246                                    ; preds = %3184
  br label %3247

; <label>:3247                                    ; preds = %3369, %3246
  %3248 = phi i32 [ %3271, %3369 ], [ %3244, %3246 ]
  %3249 = phi float [ %3370, %3369 ], [ 0.000000e+00, %3246 ]
  %3250 = phi float [ %3371, %3369 ], [ %921, %3246 ]
  %3251 = phi float [ %3372, %3369 ], [ %3149, %3246 ]
  %3252 = phi float [ %3373, %3369 ], [ %3141, %3246 ]
  %3253 = phi float [ %3374, %3369 ], [ 0.000000e+00, %3246 ]
  %3254 = phi float [ %3375, %3369 ], [ 0.000000e+00, %3246 ]
  %3255 = phi float [ %3376, %3369 ], [ %3152, %3246 ]
  %3256 = phi float [ %3377, %3369 ], [ %3153, %3246 ]
  %3257 = phi float [ %3378, %3369 ], [ %3154, %3246 ]
  %3258 = phi float [ %3379, %3369 ], [ %3180, %3246 ]
  %3259 = phi float [ %3380, %3369 ], [ %3181, %3246 ]
  %3260 = phi float [ %3381, %3369 ], [ %3182, %3246 ]
  %3261 = phi float [ %3382, %3369 ], [ %3140, %3246 ]
  %3262 = phi float [ %3383, %3369 ], [ %3139, %3246 ]
  %3263 = phi float [ %3384, %3369 ], [ 0.000000e+00, %3246 ]
  %3264 = phi float [ %3385, %3369 ], [ %3138, %3246 ]
  %3265 = phi float [ %3386, %3369 ], [ %3132, %3246 ]
  %3266 = phi float [ %3387, %3369 ], [ %3133, %3246 ]
  %3267 = phi float [ %3388, %3369 ], [ %3134, %3246 ]
  %3268 = shl nuw nsw i32 %3248, 2
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
  %3329 = call float @dx.op.dot4.f32(i32 56, float %3325, float %3326, float %3327, float %3328, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3330 = or i32 %3273, 16
  %3331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3335 = extractvalue %dx.types.ResRet.f32 %3331, 3
  %3336 = call float @dx.op.dot4.f32(i32 56, float %3332, float %3333, float %3334, float %3335, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3337 = or i32 %3273, 32
  %3338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.ResRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.ResRet.f32 %3338, 2
  %3342 = extractvalue %dx.types.ResRet.f32 %3338, 3
  %3343 = call float @dx.op.dot4.f32(i32 56, float %3339, float %3340, float %3341, float %3342, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3344 = call float @dx.op.unary.f32(i32 27, float %3329)  ; Round_ni(value)
  %3345 = call float @dx.op.unary.f32(i32 6, float %3344)  ; FAbs(value)
  %3346 = call float @dx.op.unary.f32(i32 27, float %3336)  ; Round_ni(value)
  %3347 = call float @dx.op.unary.f32(i32 6, float %3346)  ; FAbs(value)
  %3348 = call float @dx.op.unary.f32(i32 6, float %3343)  ; FAbs(value)
  %3349 = call float @dx.op.unary.f32(i32 27, float %3348)  ; Round_ni(value)
  %3350 = fadd fast float %3347, %3345
  %3351 = fadd fast float %3350, %3349
  %3352 = fcmp fast oeq float %3351, 0.000000e+00
  %3353 = call float @dx.op.dot4.f32(i32 56, float %3325, float %3326, float %3327, float %3328, float %3191, float %3192, float %3193, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3354 = call float @dx.op.dot4.f32(i32 56, float %3332, float %3333, float %3334, float %3335, float %3191, float %3192, float %3193, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3355 = call float @dx.op.dot4.f32(i32 56, float %3325, float %3326, float %3327, float %3328, float %3194, float %3195, float %3196, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3356 = call float @dx.op.dot4.f32(i32 56, float %3332, float %3333, float %3334, float %3335, float %3194, float %3195, float %3196, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3357 = fsub fast float %3353, %3329
  %3358 = fsub fast float %3355, %3329
  %3359 = fsub fast float %3354, %3336
  %3360 = fsub fast float %3356, %3336
  %3361 = call float @dx.op.dot3.f32(i32 55, float %3276, float %3277, float %3278, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %3362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3363 = extractvalue %dx.types.CBufRet.f32 %3362, 2
  %3364 = fadd fast float %3363, %3361
  %3365 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3366 = extractvalue %dx.types.CBufRet.f32 %3362, 0
  %3367 = fcmp fast ogt float %3365, %3366
  %3368 = and i1 %3352, %3367
  br i1 %3368, label %3390, label %3369

; <label>:3369                                    ; preds = %3656, %3473, %3390, %3247
  %3370 = phi float [ %3249, %3390 ], [ %3476, %3473 ], [ %3476, %3656 ], [ %3249, %3247 ]
  %3371 = phi float [ %3250, %3390 ], [ %3250, %3473 ], [ %3631, %3656 ], [ %3250, %3247 ]
  %3372 = phi float [ %3251, %3390 ], [ %3251, %3473 ], [ %3630, %3656 ], [ %3251, %3247 ]
  %3373 = phi float [ %3252, %3390 ], [ %3252, %3473 ], [ %3628, %3656 ], [ %3252, %3247 ]
  %3374 = phi float [ %3253, %3390 ], [ %3253, %3473 ], [ %3600, %3656 ], [ %3253, %3247 ]
  %3375 = phi float [ %3254, %3390 ], [ %3254, %3473 ], [ %3598, %3656 ], [ %3254, %3247 ]
  %3376 = phi float [ %3255, %3390 ], [ %3255, %3473 ], [ %3666, %3656 ], [ %3255, %3247 ]
  %3377 = phi float [ %3256, %3390 ], [ %3256, %3473 ], [ %3667, %3656 ], [ %3256, %3247 ]
  %3378 = phi float [ %3257, %3390 ], [ %3257, %3473 ], [ %3668, %3656 ], [ %3257, %3247 ]
  %3379 = phi float [ %3258, %3390 ], [ %3258, %3473 ], [ %3579, %3656 ], [ %3258, %3247 ]
  %3380 = phi float [ %3259, %3390 ], [ %3259, %3473 ], [ %3580, %3656 ], [ %3259, %3247 ]
  %3381 = phi float [ %3260, %3390 ], [ %3260, %3473 ], [ %3581, %3656 ], [ %3260, %3247 ]
  %3382 = phi float [ %3261, %3390 ], [ %3261, %3473 ], [ %3608, %3656 ], [ %3261, %3247 ]
  %3383 = phi float [ %3262, %3390 ], [ %3262, %3473 ], [ %3605, %3656 ], [ %3262, %3247 ]
  %3384 = phi float [ %3263, %3390 ], [ %3263, %3473 ], [ %3602, %3656 ], [ %3263, %3247 ]
  %3385 = phi float [ %3264, %3390 ], [ %3264, %3473 ], [ %3596, %3656 ], [ %3264, %3247 ]
  %3386 = phi float [ %3265, %3390 ], [ %3265, %3473 ], [ %3591, %3656 ], [ %3265, %3247 ]
  %3387 = phi float [ %3266, %3390 ], [ %3266, %3473 ], [ %3592, %3656 ], [ %3266, %3247 ]
  %3388 = phi float [ %3267, %3390 ], [ %3267, %3473 ], [ %3593, %3656 ], [ %3267, %3247 ]
  %3389 = icmp eq i32 %3271, 0
  br i1 %3389, label %3669, label %3247

; <label>:3390                                    ; preds = %3247
  %3391 = extractvalue %dx.types.ResRet.f32 %3275, 3
  %3392 = extractvalue %dx.types.ResRet.f32 %3294, 3
  %3393 = extractvalue %dx.types.ResRet.f32 %3294, 1
  %3394 = extractvalue %dx.types.ResRet.f32 %3294, 0
  %3395 = extractvalue %dx.types.ResRet.f32 %3284, 1
  %3396 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3397 = extractvalue %dx.types.ResRet.i32 %3280, 3
  %3398 = extractvalue %dx.types.ResRet.i32 %3280, 2
  %3399 = bitcast float %3391 to i32
  %3400 = add i32 %3397, 0
  %3401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3400, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3403 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3401, %dx.types.Handle %3402, float %3329, float %3336, float undef, float undef, i32 0, i32 0, i32 undef, float %3357, float %3359, float undef, float %3358, float %3360, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3404 = extractvalue %dx.types.ResRet.f32 %3403, 0
  %3405 = fmul fast float %3404, %3396
  %3406 = fadd fast float %3405, %3395
  %3407 = call float @dx.op.unary.f32(i32 7, float %3406)  ; Saturate(value)
  %3408 = fmul fast float %3329, %3289
  %3409 = call float @dx.op.tertiary.f32(i32 46, float %3290, float %3336, float %3408)  ; FMad(a,b,c)
  %3410 = fadd fast float %3409, %3394
  %3411 = fmul fast float %3329, %3291
  %3412 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3336, float %3411)  ; FMad(a,b,c)
  %3413 = fadd fast float %3412, %3393
  %3414 = fmul fast float %3357, %3289
  %3415 = call float @dx.op.tertiary.f32(i32 46, float %3290, float %3359, float %3414)  ; FMad(a,b,c)
  %3416 = fmul fast float %3357, %3291
  %3417 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3359, float %3416)  ; FMad(a,b,c)
  %3418 = fmul fast float %3358, %3289
  %3419 = call float @dx.op.tertiary.f32(i32 46, float %3290, float %3360, float %3418)  ; FMad(a,b,c)
  %3420 = fmul fast float %3358, %3291
  %3421 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3360, float %3420)  ; FMad(a,b,c)
  %3422 = add i32 %3398, 0
  %3423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3422, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3424 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3423, %dx.types.Handle %3402, float %3410, float %3413, float undef, float undef, i32 0, i32 0, i32 undef, float %3415, float %3417, float undef, float %3419, float %3421, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3425 = extractvalue %dx.types.ResRet.f32 %3424, 0
  %3426 = and i32 %3399, 1024
  %3427 = icmp ne i32 %3426, 0
  %3428 = fcmp fast ogt float %3425, 0x3FE0101020000000
  %3429 = uitofp i1 %3428 to float
  %3430 = select i1 %3427, float %3429, float %3425
  %3431 = and i32 %3399, 8192
  %3432 = icmp ne i32 %3431, 0
  %3433 = select i1 %3432, float %3392, float 1.000000e+00
  %3434 = fmul fast float %3329, 2.000000e+00
  %3435 = fadd fast float %3434, -1.000000e+00
  %3436 = call float @dx.op.unary.f32(i32 6, float %3435)  ; FAbs(value)
  %3437 = fmul fast float %3436, %3322
  %3438 = fsub fast float %3437, %3322
  %3439 = call float @dx.op.unary.f32(i32 7, float %3438)  ; Saturate(value)
  %3440 = fmul fast float %3336, 2.000000e+00
  %3441 = fadd fast float %3440, -1.000000e+00
  %3442 = call float @dx.op.unary.f32(i32 6, float %3441)  ; FAbs(value)
  %3443 = fmul fast float %3442, %3323
  %3444 = fsub fast float %3443, %3323
  %3445 = call float @dx.op.unary.f32(i32 7, float %3444)  ; Saturate(value)
  %3446 = fmul fast float %3348, %3285
  %3447 = fsub fast float %3446, %3285
  %3448 = call float @dx.op.unary.f32(i32 7, float %3447)  ; Saturate(value)
  %3449 = fmul fast float %3407, %3433
  %3450 = fmul fast float %3449, %3404
  %3451 = fmul fast float %3450, %3439
  %3452 = fmul fast float %3451, %3430
  %3453 = fmul fast float %3452, %3445
  %3454 = fmul fast float %3453, %3448
  %3455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.f32 %3455, 1
  %3457 = extractvalue %dx.types.CBufRet.f32 %3455, 0
  %3458 = fsub fast float %3365, %3457
  %3459 = fmul fast float %3458, %3456
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3461 = fmul fast float %3454, %3286
  %3462 = fadd fast float %3454, %3286
  %3463 = fmul fast float %3462, %3295
  %3464 = fsub fast float %3463, %3295
  %3465 = call float @dx.op.unary.f32(i32 7, float %3464)  ; Saturate(value)
  %3466 = and i32 %3399, 128
  %3467 = icmp ne i32 %3466, 0
  %3468 = select i1 %3467, float %3465, float %3461
  %3469 = fmul fast float %3468, %3460
  %3470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3471 = extractvalue %dx.types.CBufRet.f32 %3470, 0
  %3472 = fcmp fast ugt float %3469, %3471
  br i1 %3472, label %3473, label %3369

; <label>:3473                                    ; preds = %3390
  %3474 = select i1 %3432, float %3469, float 0.000000e+00
  %3475 = fadd fast float %3474, %3249
  %3476 = call float @dx.op.unary.f32(i32 7, float %3475)  ; Saturate(value)
  br i1 %3432, label %3369, label %3477

; <label>:3477                                    ; preds = %3473
  %3478 = and i32 %3399, 4
  %3479 = and i32 %3399, 8
  %3480 = add i32 %3281, 0
  %3481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3480, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3483 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3481, %dx.types.Handle %3482, float %3410, float %3413, float undef, float undef, i32 0, i32 0, i32 undef, float %3415, float %3417, float undef, float %3419, float %3421, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = extractvalue %dx.types.ResRet.f32 %3483, 3
  %3488 = bitcast float %3307 to i32
  %3489 = and i32 %3488, 255
  %3490 = uitofp i32 %3489 to float
  %3491 = lshr i32 %3488, 8
  %3492 = and i32 %3491, 255
  %3493 = uitofp i32 %3492 to float
  %3494 = fmul fast float %3487, %3490
  %3495 = fadd fast float %3494, %3493
  %3496 = fmul fast float %3495, 0x3F70101000000000
  %3497 = add i32 %3282, 0
  %3498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3497, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3499 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3498, %dx.types.Handle %3482, float %3410, float %3413, float undef, float undef, i32 0, i32 0, i32 undef, float %3415, float %3417, float undef, float %3419, float %3421, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3501 = extractvalue %dx.types.ResRet.f32 %3499, 1
  %3502 = extractvalue %dx.types.ResRet.f32 %3499, 2
  %3503 = extractvalue %dx.types.ResRet.f32 %3499, 3
  %3504 = bitcast float %3301 to i32
  %3505 = and i32 %3504, 255
  %3506 = uitofp i32 %3505 to float
  %3507 = lshr i32 %3504, 8
  %3508 = and i32 %3507, 255
  %3509 = uitofp i32 %3508 to float
  %3510 = lshr i32 %3504, 16
  %3511 = and i32 %3510, 255
  %3512 = uitofp i32 %3511 to float
  %3513 = fmul fast float %3512, 0x3F70101000000000
  %3514 = fmul fast float %3500, %3506
  %3515 = fadd fast float %3514, %3509
  %3516 = fmul fast float %3515, 0x3F70101000000000
  %3517 = fadd fast float %3501, -5.000000e-01
  %3518 = fadd fast float %3503, -5.000000e-01
  %3519 = fmul fast float %3517, %3513
  %3520 = fmul fast float %3518, %3513
  %3521 = fadd fast float %3519, 5.000000e-01
  %3522 = fadd fast float %3520, 5.000000e-01
  %3523 = fmul fast float %3484, %3310
  %3524 = fmul fast float %3485, %3311
  %3525 = fmul fast float %3486, %3312
  %3526 = fmul fast float %3521, 2.000000e+00
  %3527 = fadd fast float %3526, -1.000000e+00
  %3528 = fmul fast float %3522, 2.000000e+00
  %3529 = fadd fast float %3528, -1.000000e+00
  %3530 = fadd fast float %3527, %3529
  %3531 = fmul fast float %3530, 5.000000e-01
  %3532 = fsub fast float %3527, %3529
  %3533 = fmul fast float %3532, 5.000000e-01
  %3534 = call float @dx.op.unary.f32(i32 6, float %3531)  ; FAbs(value)
  %3535 = fsub fast float 1.000000e+00, %3534
  %3536 = call float @dx.op.unary.f32(i32 6, float %3533)  ; FAbs(value)
  %3537 = fsub fast float %3535, %3536
  %3538 = call float @dx.op.dot3.f32(i32 55, float %3531, float %3533, float %3537, float %3531, float %3533, float %3537)  ; Dot3(ax,ay,az,bx,by,bz)
  %3539 = call float @dx.op.unary.f32(i32 25, float %3538)  ; Rsqrt(value)
  %3540 = fmul fast float %3531, %3539
  %3541 = fmul fast float %3533, %3539
  %3542 = fmul fast float %3539, %3537
  %3543 = fmul fast float %3542, %3276
  %3544 = fmul fast float %3542, %3277
  %3545 = fmul fast float %3542, %3278
  %3546 = fmul fast float %3540, %3298
  %3547 = fmul fast float %3540, %3299
  %3548 = fmul fast float %3540, %3300
  %3549 = fadd fast float %3546, %3543
  %3550 = fadd fast float %3547, %3544
  %3551 = fadd fast float %3548, %3545
  %3552 = fmul fast float %3541, %3304
  %3553 = fmul fast float %3541, %3305
  %3554 = fmul fast float %3541, %3306
  %3555 = fadd fast float %3549, %3552
  %3556 = fadd fast float %3550, %3553
  %3557 = fadd fast float %3551, %3554
  %3558 = call float @dx.op.dot3.f32(i32 55, float %3555, float %3556, float %3557, float %3555, float %3556, float %3557)  ; Dot3(ax,ay,az,bx,by,bz)
  %3559 = call float @dx.op.unary.f32(i32 25, float %3558)  ; Rsqrt(value)
  %3560 = fmul fast float %3555, %3559
  %3561 = fmul fast float %3556, %3559
  %3562 = fmul fast float %3557, %3559
  %3563 = icmp ne i32 %3479, 0
  %3564 = select i1 %3563, float 1.000000e+00, float 0.000000e+00
  %3565 = fmul fast float %3469, %3564
  %3566 = and i32 %3399, 1
  %3567 = icmp eq i32 %3566, 0
  br i1 %3567, label %3568, label %3572

; <label>:3568                                    ; preds = %3477
  %3569 = fsub fast float %3560, %3258
  %3570 = fsub fast float %3561, %3259
  %3571 = fsub fast float %3562, %3260
  br label %3572

; <label>:3572                                    ; preds = %3568, %3477
  %3573 = phi float [ %3569, %3568 ], [ %3560, %3477 ]
  %3574 = phi float [ %3570, %3568 ], [ %3561, %3477 ]
  %3575 = phi float [ %3571, %3568 ], [ %3562, %3477 ]
  %3576 = fmul float %3575, %3565
  %3577 = fmul float %3574, %3565
  %3578 = fmul float %3573, %3565
  %3579 = fadd fast float %3578, %3258
  %3580 = fadd fast float %3577, %3259
  %3581 = fadd fast float %3576, %3260
  %3582 = icmp ne i32 %3478, 0
  %3583 = select i1 %3582, float 1.000000e+00, float 0.000000e+00
  %3584 = fmul fast float %3469, %3583
  %3585 = fsub fast float %3523, %3265
  %3586 = fsub fast float %3524, %3266
  %3587 = fsub fast float %3525, %3267
  %3588 = fmul fast float %3585, %3584
  %3589 = fmul fast float %3586, %3584
  %3590 = fmul fast float %3587, %3584
  %3591 = fadd fast float %3588, %3265
  %3592 = fadd fast float %3589, %3266
  %3593 = fadd fast float %3590, %3267
  %3594 = fsub fast float %3496, %3264
  %3595 = fmul fast float %3594, %3584
  %3596 = fadd fast float %3595, %3264
  %3597 = fmul fast float %3584, %3254
  %3598 = fsub fast float %3254, %3597
  %3599 = fmul fast float %3584, %3253
  %3600 = fsub fast float %3253, %3599
  %3601 = fadd fast float %3469, %3263
  %3602 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  %3603 = fsub fast float %3516, %3262
  %3604 = fmul fast float %3603, %3565
  %3605 = fadd fast float %3604, %3262
  %3606 = fsub fast float %3502, %3261
  %3607 = fmul fast float %3606, %3565
  %3608 = fadd fast float %3607, %3261
  %3609 = call float @dx.op.dot3.f32(i32 55, float %3523, float %3524, float %3525, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3611 = extractvalue %dx.types.CBufRet.f32 %3610, 0
  %3612 = extractvalue %dx.types.CBufRet.f32 %3610, 1
  %3613 = fmul fast float %3612, %3609
  %3614 = fadd fast float %3613, %3611
  %3615 = call float @dx.op.unary.f32(i32 7, float %3614)  ; Saturate(value)
  %3616 = bitcast float %3313 to i32
  %3617 = and i32 %3616, 65535
  %3618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3617)  ; LegacyF16ToF32(value)
  %3619 = lshr i32 %3616, 16
  %3620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3619)  ; LegacyF16ToF32(value)
  %3621 = fcmp fast oge float %3618, 0.000000e+00
  %3622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3623 = extractvalue %dx.types.CBufRet.f32 %3622, 0
  %3624 = select i1 %3621, float %3618, float %3623
  %3625 = fadd fast float %3624, %3620
  %3626 = fsub fast float %3615, %3252
  %3627 = fmul fast float %3626, %3469
  %3628 = fadd fast float %3627, %3252
  %3629 = fmul fast float %3625, %3469
  %3630 = call float @dx.op.binary.f32(i32 35, float %3251, float %3629)  ; FMax(a,b)
  %3631 = call float @dx.op.binary.f32(i32 35, float %3250, float %3469)  ; FMax(a,b)
  %3632 = and i32 %3399, 16
  %3633 = icmp eq i32 %3632, 0
  br i1 %3633, label %3656, label %3634

; <label>:3634                                    ; preds = %3572
  %3635 = bitcast float %3319 to i32
  %3636 = add i32 %3316, 0
  %3637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3636, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3638 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3637, %dx.types.Handle %3482, float %3410, float %3413, float undef, float undef, i32 0, i32 0, i32 undef, float %3415, float %3417, float undef, float %3419, float %3421, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3639 = extractvalue %dx.types.ResRet.f32 %3638, 0
  %3640 = extractvalue %dx.types.ResRet.f32 %3638, 1
  %3641 = extractvalue %dx.types.ResRet.f32 %3638, 2
  %3642 = and i32 %3635, 65535
  %3643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3642)  ; LegacyF16ToF32(value)
  %3644 = fmul fast float %3639, %3310
  %3645 = fmul fast float %3640, %3311
  %3646 = fmul fast float %3641, %3312
  %3647 = and i32 %3399, 16384
  %3648 = icmp ne i32 %3647, 0
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 0
  %3651 = select i1 %3648, float %3650, float 1.000000e+00
  %3652 = fmul fast float %3651, %3643
  %3653 = fmul fast float %3644, %3652
  %3654 = fmul fast float %3645, %3652
  %3655 = fmul fast float %3646, %3652
  br label %3656

; <label>:3656                                    ; preds = %3634, %3572
  %3657 = phi float [ %3653, %3634 ], [ 0.000000e+00, %3572 ]
  %3658 = phi float [ %3654, %3634 ], [ 0.000000e+00, %3572 ]
  %3659 = phi float [ %3655, %3634 ], [ 0.000000e+00, %3572 ]
  %3660 = fsub fast float %3657, %3255
  %3661 = fsub fast float %3658, %3256
  %3662 = fsub fast float %3659, %3257
  %3663 = fmul fast float %3660, %3469
  %3664 = fmul fast float %3661, %3469
  %3665 = fmul fast float %3662, %3469
  %3666 = fadd fast float %3663, %3255
  %3667 = fadd fast float %3664, %3256
  %3668 = fadd fast float %3665, %3257
  br label %3369

; <label>:3669                                    ; preds = %3369
  br label %3670

; <label>:3670                                    ; preds = %3669, %3184
  %3671 = phi float [ 0.000000e+00, %3184 ], [ %3370, %3669 ]
  %3672 = phi float [ %921, %3184 ], [ %3371, %3669 ]
  %3673 = phi float [ %3149, %3184 ], [ %3372, %3669 ]
  %3674 = phi float [ %3141, %3184 ], [ %3373, %3669 ]
  %3675 = phi float [ 0.000000e+00, %3184 ], [ %3374, %3669 ]
  %3676 = phi float [ 0.000000e+00, %3184 ], [ %3375, %3669 ]
  %3677 = phi float [ %3152, %3184 ], [ %3376, %3669 ]
  %3678 = phi float [ %3153, %3184 ], [ %3377, %3669 ]
  %3679 = phi float [ %3154, %3184 ], [ %3378, %3669 ]
  %3680 = phi float [ %3180, %3184 ], [ %3379, %3669 ]
  %3681 = phi float [ %3181, %3184 ], [ %3380, %3669 ]
  %3682 = phi float [ %3182, %3184 ], [ %3381, %3669 ]
  %3683 = phi float [ %3140, %3184 ], [ %3382, %3669 ]
  %3684 = phi float [ %3139, %3184 ], [ %3383, %3669 ]
  %3685 = phi float [ 0.000000e+00, %3184 ], [ %3384, %3669 ]
  %3686 = phi float [ %3138, %3184 ], [ %3385, %3669 ]
  %3687 = phi float [ %3132, %3184 ], [ %3386, %3669 ]
  %3688 = phi float [ %3133, %3184 ], [ %3387, %3669 ]
  %3689 = phi float [ %3134, %3184 ], [ %3388, %3669 ]
  %3690 = call float @dx.op.dot3.f32(i32 55, float %3680, float %3681, float %3682, float %3680, float %3681, float %3682)  ; Dot3(ax,ay,az,bx,by,bz)
  %3691 = call float @dx.op.unary.f32(i32 25, float %3690)  ; Rsqrt(value)
  %3692 = fmul fast float %3691, %3680
  %3693 = fmul fast float %3691, %3681
  %3694 = fmul fast float %3691, %3682
  %3695 = fadd fast float %3685, %921
  %3696 = call float @dx.op.unary.f32(i32 7, float %3695)  ; Saturate(value)
  %3697 = call float @dx.op.dot3.f32(i32 55, float %3692, float %3693, float %3694, float %3692, float %3693, float %3694)  ; Dot3(ax,ay,az,bx,by,bz)
  %3698 = call float @dx.op.unary.f32(i32 25, float %3697)  ; Rsqrt(value)
  %3699 = fmul fast float %3698, %3692
  %3700 = fmul fast float %3698, %3693
  %3701 = fmul fast float %3698, %3694
  br label %3702

; <label>:3702                                    ; preds = %3670, %3129
  %3703 = phi float [ %3699, %3670 ], [ %3180, %3129 ]
  %3704 = phi float [ %3700, %3670 ], [ %3181, %3129 ]
  %3705 = phi float [ %3701, %3670 ], [ %3182, %3129 ]
  %3706 = phi float [ %3687, %3670 ], [ %3132, %3129 ]
  %3707 = phi float [ %3688, %3670 ], [ %3133, %3129 ]
  %3708 = phi float [ %3689, %3670 ], [ %3134, %3129 ]
  %3709 = phi float [ %3677, %3670 ], [ %3152, %3129 ]
  %3710 = phi float [ %3678, %3670 ], [ %3153, %3129 ]
  %3711 = phi float [ %3679, %3670 ], [ %3154, %3129 ]
  %3712 = phi float [ %3686, %3670 ], [ %3138, %3129 ]
  %3713 = phi float [ %3696, %3670 ], [ %921, %3129 ]
  %3714 = phi float [ %3684, %3670 ], [ %3139, %3129 ]
  %3715 = phi float [ %3683, %3670 ], [ %3140, %3129 ]
  %3716 = phi float [ %3676, %3670 ], [ 0.000000e+00, %3129 ]
  %3717 = phi float [ %3675, %3670 ], [ 0.000000e+00, %3129 ]
  %3718 = phi float [ %3671, %3670 ], [ 0.000000e+00, %3129 ]
  %3719 = phi float [ %3673, %3670 ], [ %3149, %3129 ]
  %3720 = phi float [ %3672, %3670 ], [ %921, %3129 ]
  %3721 = phi float [ %3674, %3670 ], [ %3141, %3129 ]
  %3722 = fadd fast float %3712, 0xBFB99999A0000000
  %3723 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3724 = fmul fast float %3723, 0x3FF1C71C80000000
  %3725 = call float @dx.op.binary.f32(i32 36, float %3712, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3726 = fsub fast float 1.000000e+00, %3724
  %3727 = call float @dx.op.unary.f32(i32 7, float %3726)  ; Saturate(value)
  %3728 = fmul fast float %3727, %3706
  %3729 = fmul fast float %3727, %3707
  %3730 = fmul fast float %3727, %3708
  %3731 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3732 = call float @dx.op.unary.f32(i32 7, float %3729)  ; Saturate(value)
  %3733 = call float @dx.op.unary.f32(i32 7, float %3730)  ; Saturate(value)
  %3734 = fmul fast float %3724, %3706
  %3735 = fmul fast float %3724, %3707
  %3736 = fmul fast float %3724, %3708
  %3737 = fadd fast float %3734, %3725
  %3738 = fadd fast float %3735, %3725
  %3739 = fadd fast float %3736, %3725
  %3740 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3741 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3742 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3743 = call float @dx.op.unary.f32(i32 7, float %3714)  ; Saturate(value)
  %3744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.i32 %3744, 3
  %3746 = and i32 %3745, 8
  %3747 = icmp ne i32 %3746, 0
  %3748 = call float @dx.op.binary.f32(i32 35, float %3731, float %3706)  ; FMax(a,b)
  %3749 = call float @dx.op.binary.f32(i32 35, float %3732, float %3706)  ; FMax(a,b)
  %3750 = call float @dx.op.binary.f32(i32 35, float %3733, float %3706)  ; FMax(a,b)
  %3751 = call float @dx.op.dot3.f32(i32 55, float %3731, float %3732, float %3733, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3752 = select i1 %205, float %3706, float %3731
  %3753 = select i1 %205, float %3751, float %3732
  %3754 = select i1 %205, float 1.000000e+00, float %3733
  %3755 = select i1 %3747, float %3748, float %3752
  %3756 = select i1 %3747, float %3749, float %3753
  %3757 = select i1 %3747, float %3750, float %3754
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.CBufRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.CBufRet.f32 %3758, 2
  %3762 = fadd fast float %3759, %166
  %3763 = fadd fast float %3760, %167
  %3764 = fadd fast float %3761, %168
  %3765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3765, 0
  %3767 = extractvalue %dx.types.CBufRet.f32 %3765, 1
  %3768 = fsub fast float %3762, %3766
  %3769 = fsub fast float %3763, %3767
  %3770 = fmul fast float %3768, %3768
  %3771 = fmul fast float %3769, %3769
  %3772 = fadd fast float %3770, %3771
  %3773 = call float @dx.op.unary.f32(i32 24, float %3772)  ; Sqrt(value)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3765, 2
  %3775 = fcmp fast olt float %3773, %3774
  br i1 %3775, label %3776, label %3843

; <label>:3776                                    ; preds = %3702
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 0
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 0
  %3781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.f32 %3781, 0
  %3783 = extractvalue %dx.types.CBufRet.f32 %3777, 1
  %3784 = extractvalue %dx.types.CBufRet.f32 %3779, 1
  %3785 = extractvalue %dx.types.CBufRet.f32 %3781, 1
  %3786 = extractvalue %dx.types.CBufRet.f32 %3777, 3
  %3787 = extractvalue %dx.types.CBufRet.f32 %3779, 3
  %3788 = extractvalue %dx.types.CBufRet.f32 %3781, 3
  %3789 = fadd fast float %3786, %3762
  %3790 = fadd fast float %3787, %3763
  %3791 = fadd fast float %3788, %3764
  %3792 = fmul fast float %3789, %3778
  %3793 = call float @dx.op.tertiary.f32(i32 46, float %3790, float %3780, float %3792)  ; FMad(a,b,c)
  %3794 = call float @dx.op.tertiary.f32(i32 46, float %3791, float %3782, float %3793)  ; FMad(a,b,c)
  %3795 = fmul fast float %3789, %3783
  %3796 = call float @dx.op.tertiary.f32(i32 46, float %3790, float %3784, float %3795)  ; FMad(a,b,c)
  %3797 = call float @dx.op.tertiary.f32(i32 46, float %3791, float %3785, float %3796)  ; FMad(a,b,c)
  %3798 = fsub fast float %3794, %3786
  %3799 = fsub fast float %3797, %3787
  %3800 = fsub fast float %3798, %3766
  %3801 = fadd fast float %3800, %3774
  %3802 = fsub fast float %3799, %3767
  %3803 = fadd fast float %3802, %3774
  %3804 = extractvalue %dx.types.CBufRet.f32 %3765, 3
  %3805 = fmul fast float %3801, %3804
  %3806 = fmul fast float %3803, %3804
  %3807 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  %3808 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3809 = fsub fast float 1.000000e+00, %3807
  %3810 = fsub fast float 1.000000e+00, %3808
  %3811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3809, float %3810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3812 = extractvalue %dx.types.ResRet.f32 %3811, 0
  %3813 = fcmp fast ugt float %3812, 0.000000e+00
  br i1 %3813, label %3814, label %4117

; <label>:3814                                    ; preds = %3776
  %3815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3816 = extractvalue %dx.types.CBufRet.f32 %3815, 2
  %3817 = fmul fast float %3816, %3812
  %3818 = extractvalue %dx.types.CBufRet.f32 %3815, 3
  %3819 = fadd fast float %3818, %3817
  %3820 = extractvalue %dx.types.CBufRet.f32 %3781, 2
  %3821 = fadd fast float %3819, %3788
  %3822 = fmul fast float %3794, %3782
  %3823 = call float @dx.op.tertiary.f32(i32 46, float %3797, float %3785, float %3822)  ; FMad(a,b,c)
  %3824 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %3820, float %3823)  ; FMad(a,b,c)
  %3825 = fsub fast float %3824, %3788
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 2
  %3828 = fsub fast float %3825, %3827
  %3829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3809, float %3810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3830 = extractvalue %dx.types.ResRet.f32 %3829, 0
  %3831 = extractvalue %dx.types.ResRet.f32 %3829, 1
  %3832 = extractvalue %dx.types.ResRet.f32 %3829, 2
  %3833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3809, float %3810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3836 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3837 = fadd fast float %3834, %3830
  %3838 = fmul fast float %3837, 0x3F847AE140000000
  %3839 = fadd fast float %3835, %3831
  %3840 = fmul fast float %3839, 0x3F847AE140000000
  %3841 = fadd fast float %3836, %3832
  %3842 = fmul fast float %3841, 0x3F847AE140000000
  br label %4117

; <label>:3843                                    ; preds = %3702
  %3844 = and i32 %184, 1
  %3845 = icmp eq i32 %3844, 0
  br i1 %3845, label %4117, label %3846

; <label>:3846                                    ; preds = %3843
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 0
  %3849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3849, 0
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.CBufRet.f32 %3847, 1
  %3854 = extractvalue %dx.types.CBufRet.f32 %3849, 1
  %3855 = extractvalue %dx.types.CBufRet.f32 %3851, 1
  %3856 = extractvalue %dx.types.CBufRet.f32 %3847, 3
  %3857 = extractvalue %dx.types.CBufRet.f32 %3849, 3
  %3858 = extractvalue %dx.types.CBufRet.f32 %3851, 3
  %3859 = fadd fast float %3856, %3762
  %3860 = fadd fast float %3857, %3763
  %3861 = fadd fast float %3858, %3764
  %3862 = fmul fast float %3859, %3848
  %3863 = call float @dx.op.tertiary.f32(i32 46, float %3860, float %3850, float %3862)  ; FMad(a,b,c)
  %3864 = call float @dx.op.tertiary.f32(i32 46, float %3861, float %3852, float %3863)  ; FMad(a,b,c)
  %3865 = fmul fast float %3859, %3853
  %3866 = call float @dx.op.tertiary.f32(i32 46, float %3860, float %3854, float %3865)  ; FMad(a,b,c)
  %3867 = call float @dx.op.tertiary.f32(i32 46, float %3861, float %3855, float %3866)  ; FMad(a,b,c)
  %3868 = fsub fast float %3864, %3856
  %3869 = fsub fast float %3867, %3857
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.CBufRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.CBufRet.f32 %3870, 2
  %3874 = extractvalue %dx.types.CBufRet.f32 %3870, 3
  %3875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3875, 3
  %3877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.i32 %3877, 0
  %3879 = extractvalue %dx.types.CBufRet.i32 %3877, 1
  %3880 = udiv i32 %3879, %3878
  %3881 = fsub fast float %3868, %3871
  %3882 = fsub fast float %3869, %3872
  %3883 = call float @dx.op.binary.f32(i32 35, float %3881, float 0.000000e+00)  ; FMax(a,b)
  %3884 = call float @dx.op.binary.f32(i32 35, float %3882, float 0.000000e+00)  ; FMax(a,b)
  %3885 = call float @dx.op.binary.f32(i32 36, float %3883, float %3873)  ; FMin(a,b)
  %3886 = call float @dx.op.binary.f32(i32 36, float %3884, float %3874)  ; FMin(a,b)
  %3887 = add i32 %3878, -1
  %3888 = add i32 %3880, -1
  %3889 = fmul fast float %3885, %3876
  %3890 = fmul fast float %3886, %3876
  %3891 = fptoui float %3889 to i32
  %3892 = fptoui float %3890 to i32
  %3893 = call i32 @dx.op.binary.i32(i32 40, i32 %3891, i32 %3887)  ; UMin(a,b)
  %3894 = call i32 @dx.op.binary.i32(i32 40, i32 %3892, i32 %3888)  ; UMin(a,b)
  %3895 = mul i32 %3894, %3878
  %3896 = add i32 %3895, %3893
  %3897 = shl i32 %3896, 2
  %3898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.i32 %3898, 0
  %3900 = icmp eq i32 %3899, -1
  br i1 %3900, label %4117, label %3901

; <label>:3901                                    ; preds = %3846
  %3902 = mul i32 %3899, 148
  %3903 = add i32 %3902, 4
  %3904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3905 = extractvalue %dx.types.ResRet.f32 %3904, 0
  %3906 = add i32 %3902, 8
  %3907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.f32 %3907, 0
  %3909 = add i32 %3902, 36
  %3910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3909, i32 undef)  ; BufferLoad(srv,index,wot)
  %3911 = extractvalue %dx.types.ResRet.f32 %3910, 0
  %3912 = add i32 %3902, 60
  %3913 = add i32 %3902, 92
  %3914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.i32 %3914, 0
  %3916 = add i32 %3902, 116
  %3917 = fsub fast float %3868, %3905
  %3918 = fsub fast float %3869, %3908
  %3919 = fmul fast float %3876, %3917
  %3920 = fmul fast float %3876, %3918
  %3921 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3922 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3923 = fsub fast float 1.000000e+00, %3922
  %3924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3924, 2
  %3926 = call float @dx.op.unary.f32(i32 83, float %3921)  ; DerivCoarseX(value)
  %3927 = call float @dx.op.unary.f32(i32 83, float %3923)  ; DerivCoarseX(value)
  %3928 = call float @dx.op.unary.f32(i32 84, float %3921)  ; DerivCoarseY(value)
  %3929 = call float @dx.op.unary.f32(i32 84, float %3923)  ; DerivCoarseY(value)
  %3930 = fmul fast float %3926, %3925
  %3931 = fmul fast float %3927, %3925
  %3932 = fmul fast float %3928, %3925
  %3933 = fmul fast float %3929, %3925
  %3934 = call float @dx.op.dot2.f32(i32 54, float %3932, float %3933, float %3932, float %3933)  ; Dot2(ax,ay,bx,by)
  %3935 = call float @dx.op.dot2.f32(i32 54, float %3930, float %3931, float %3930, float %3931)  ; Dot2(ax,ay,bx,by)
  %3936 = call float @dx.op.binary.f32(i32 35, float %3935, float %3934)  ; FMax(a,b)
  %3937 = call float @dx.op.unary.f32(i32 23, float %3936)  ; Log(value)
  %3938 = fmul fast float %3937, 5.000000e-01
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 1
  %3941 = fadd fast float %3940, %3938
  %3942 = call float @dx.op.binary.f32(i32 35, float %3941, float 0.000000e+00)  ; FMax(a,b)
  %3943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.f32 %3943, 3
  %3945 = fadd fast float %3944, %3942
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 3
  %3948 = fadd fast float %3945, %3947
  %3949 = add i32 %3915, 0
  %3950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3949, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3951 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3950, i32 0)  ; GetDimensions(handle,mipLevel)
  %3952 = extractvalue %dx.types.Dimensions %3951, 0
  %3953 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3952)  ; FirstbitLo(value)
  %3954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.i32 %3954, 1
  %3956 = sub nsw i32 %3955, %3953
  %3957 = sitofp i32 %3956 to float
  %3958 = fsub fast float %3948, %3957
  %3959 = call float @dx.op.binary.f32(i32 35, float %3958, float 0.000000e+00)  ; FMax(a,b)
  %3960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3950, %dx.types.Handle %27, float %3921, float %3923, float %3911, float undef, i32 0, i32 0, i32 undef, float %3959)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %3962 = fcmp ule float %3961, 0x3FE0101020000000
  %3963 = extractvalue %dx.types.CBufRet.i32 %3954, 0
  %3964 = and i32 %3963, 128
  %3965 = icmp ne i32 %3964, 0
  %3966 = and i1 %3962, %3965
  br i1 %3966, label %4117, label %3967

; <label>:3967                                    ; preds = %3901
  %3968 = add i32 %3902, 20
  %3969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3968, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = add i32 %3902, 24
  %3972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3971, i32 undef)  ; BufferLoad(srv,index,wot)
  %3973 = extractvalue %dx.types.ResRet.f32 %3972, 0
  %3974 = add i32 %3902, 40
  %3975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.f32 %3975, 0
  %3977 = add i32 %3902, 96
  %3978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.i32 %3978, 0
  %3980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3980, 2
  %3982 = fmul fast float %3981, %3921
  %3983 = fmul fast float %3981, %3923
  %3984 = extractvalue %dx.types.CBufRet.f32 %3980, 3
  %3985 = fadd fast float %3982, %3984
  %3986 = fadd fast float %3983, %3984
  %3987 = add i32 %3979, 0
  %3988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3987, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3989 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3988, i32 0)  ; GetDimensions(handle,mipLevel)
  %3990 = extractvalue %dx.types.Dimensions %3989, 0
  %3991 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3990)  ; FirstbitLo(value)
  %3992 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.i32 %3992, 1
  %3994 = sub nsw i32 %3993, %3991
  %3995 = sitofp i32 %3994 to float
  %3996 = fsub fast float %3945, %3995
  %3997 = call float @dx.op.binary.f32(i32 35, float %3996, float 0.000000e+00)  ; FMax(a,b)
  %3998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3988, %dx.types.Handle %27, float %3985, float %3986, float %3976, float undef, i32 0, i32 0, i32 undef, float %3997)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = fmul fast float %3999, %3970
  %4001 = fadd fast float %4000, %3973
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4004 = extractvalue %dx.types.CBufRet.f32 %4002, 1
  %4005 = extractvalue %dx.types.CBufRet.f32 %4002, 2
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 3
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 3
  %4010 = extractvalue %dx.types.CBufRet.f32 %4002, 3
  %4011 = fadd fast float %4007, %3868
  %4012 = fadd fast float %4009, %3869
  %4013 = fadd fast float %4001, %4010
  %4014 = fmul fast float %4011, %4003
  %4015 = call float @dx.op.tertiary.f32(i32 46, float %4012, float %4004, float %4014)  ; FMad(a,b,c)
  %4016 = call float @dx.op.tertiary.f32(i32 46, float %4013, float %4005, float %4015)  ; FMad(a,b,c)
  %4017 = fsub fast float %4016, %4010
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 2
  %4020 = fsub fast float %4017, %4019
  %4021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.i32 %4021, 0
  %4023 = call i32 @dx.op.binary.i32(i32 40, i32 %3899, i32 %4022)  ; UMin(a,b)
  %4024 = mul i32 %4023, 36
  %4025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4024, i32 undef)  ; BufferLoad(srv,index,wot)
  %4026 = extractvalue %dx.types.ResRet.i32 %4025, 0
  %4027 = add i32 %4024, 4
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 0
  %4030 = fmul fast float %4029, %3921
  %4031 = fmul fast float %4029, %3923
  %4032 = extractvalue %dx.types.CBufRet.f32 %4028, 1
  %4033 = fadd fast float %4030, %4032
  %4034 = fadd fast float %4031, %4032
  %4035 = icmp eq i32 %4026, 0
  br i1 %4035, label %4104, label %4036

; <label>:4036                                    ; preds = %3967
  br label %4037

; <label>:4037                                    ; preds = %4094, %4036
  %4038 = phi float [ %4095, %4094 ], [ 0.000000e+00, %4036 ]
  %4039 = phi float [ %4096, %4094 ], [ 0.000000e+00, %4036 ]
  %4040 = phi float [ %4097, %4094 ], [ 0.000000e+00, %4036 ]
  %4041 = phi float [ %4098, %4094 ], [ 0.000000e+00, %4036 ]
  %4042 = phi float [ %4099, %4094 ], [ 0.000000e+00, %4036 ]
  %4043 = phi float [ %4100, %4094 ], [ 0.000000e+00, %4036 ]
  %4044 = phi i32 [ %4101, %4094 ], [ 0, %4036 ]
  %4045 = shl i32 %4044, 2
  %4046 = add i32 %3912, %4045
  %4047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = add i32 %3916, %4045
  %4050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.i32 %4050, 0
  %4052 = add i32 %4051, 0
  %4053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4052, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4054 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4053, i32 0)  ; GetDimensions(handle,mipLevel)
  %4055 = extractvalue %dx.types.Dimensions %4054, 0
  %4056 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4055)  ; FirstbitLo(value)
  %4057 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.i32 %4057, 1
  %4059 = sub nsw i32 %4058, %4056
  %4060 = sitofp i32 %4059 to float
  %4061 = fsub fast float %3945, %4060
  %4062 = call float @dx.op.binary.f32(i32 35, float %4061, float 0.000000e+00)  ; FMax(a,b)
  %4063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4053, %dx.types.Handle %27, float %4033, float %4034, float %4048, float undef, i32 0, i32 0, i32 undef, float %4062)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4064 = extractvalue %dx.types.ResRet.f32 %4063, 0
  %4065 = fcmp fast ogt float %4064, 0.000000e+00
  br i1 %4065, label %4066, label %4094

; <label>:4066                                    ; preds = %4037
  %4067 = add i32 %4027, %4045
  %4068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4067, i32 undef)  ; BufferLoad(srv,index,wot)
  %4069 = extractvalue %dx.types.ResRet.i32 %4068, 0
  %4070 = and i32 %4069, 32767
  %4071 = mul nuw nsw i32 %4070, 928
  %4072 = add nuw nsw i32 %4071, 48
  %4073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4072, i32 undef)  ; BufferLoad(srv,index,wot)
  %4074 = extractvalue %dx.types.ResRet.f32 %4073, 0
  %4075 = extractvalue %dx.types.ResRet.f32 %4073, 1
  %4076 = extractvalue %dx.types.ResRet.f32 %4073, 2
  %4077 = add nuw nsw i32 %4071, 60
  %4078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4077, i32 undef)  ; BufferLoad(srv,index,wot)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.ResRet.f32 %4078, 1
  %4081 = extractvalue %dx.types.ResRet.f32 %4078, 2
  %4082 = fmul fast float %4074, %4064
  %4083 = fmul fast float %4075, %4064
  %4084 = fmul fast float %4076, %4064
  %4085 = fadd fast float %4082, %4038
  %4086 = fadd fast float %4083, %4039
  %4087 = fadd fast float %4084, %4040
  %4088 = fmul fast float %4079, %4064
  %4089 = fmul fast float %4080, %4064
  %4090 = fmul fast float %4081, %4064
  %4091 = fadd fast float %4088, %4041
  %4092 = fadd fast float %4089, %4042
  %4093 = fadd fast float %4090, %4043
  br label %4094

; <label>:4094                                    ; preds = %4066, %4037
  %4095 = phi float [ %4085, %4066 ], [ %4038, %4037 ]
  %4096 = phi float [ %4086, %4066 ], [ %4039, %4037 ]
  %4097 = phi float [ %4087, %4066 ], [ %4040, %4037 ]
  %4098 = phi float [ %4091, %4066 ], [ %4041, %4037 ]
  %4099 = phi float [ %4092, %4066 ], [ %4042, %4037 ]
  %4100 = phi float [ %4093, %4066 ], [ %4043, %4037 ]
  %4101 = add nuw i32 %4044, 1
  %4102 = icmp eq i32 %4101, %4026
  br i1 %4102, label %4103, label %4037

; <label>:4103                                    ; preds = %4094
  br label %4104

; <label>:4104                                    ; preds = %4103, %3967
  %4105 = phi float [ 0.000000e+00, %3967 ], [ %4095, %4103 ]
  %4106 = phi float [ 0.000000e+00, %3967 ], [ %4096, %4103 ]
  %4107 = phi float [ 0.000000e+00, %3967 ], [ %4097, %4103 ]
  %4108 = phi float [ 0.000000e+00, %3967 ], [ %4098, %4103 ]
  %4109 = phi float [ 0.000000e+00, %3967 ], [ %4099, %4103 ]
  %4110 = phi float [ 0.000000e+00, %3967 ], [ %4100, %4103 ]
  %4111 = fadd fast float %4108, %4105
  %4112 = fmul fast float %4111, 0x3F847AE140000000
  %4113 = fadd fast float %4109, %4106
  %4114 = fmul fast float %4113, 0x3F847AE140000000
  %4115 = fadd fast float %4110, %4107
  %4116 = fmul fast float %4115, 0x3F847AE140000000
  br label %4117

; <label>:4117                                    ; preds = %4104, %3901, %3846, %3843, %3814, %3776
  %4118 = phi float [ %3828, %3814 ], [ -1.310720e+05, %3776 ], [ %4020, %4104 ], [ -1.310720e+05, %3846 ], [ -1.310720e+05, %3901 ], [ -1.310720e+05, %3843 ]
  %4119 = phi float [ %3838, %3814 ], [ 0.000000e+00, %3776 ], [ %4112, %4104 ], [ 0.000000e+00, %3846 ], [ 0.000000e+00, %3901 ], [ 0.000000e+00, %3843 ]
  %4120 = phi float [ %3840, %3814 ], [ 0.000000e+00, %3776 ], [ %4114, %4104 ], [ 0.000000e+00, %3846 ], [ 0.000000e+00, %3901 ], [ 0.000000e+00, %3843 ]
  %4121 = phi float [ %3842, %3814 ], [ 0.000000e+00, %3776 ], [ %4116, %4104 ], [ 0.000000e+00, %3846 ], [ 0.000000e+00, %3901 ], [ 0.000000e+00, %3843 ]
  %4122 = phi i1 [ true, %3814 ], [ false, %3776 ], [ true, %4104 ], [ false, %3846 ], [ false, %3901 ], [ false, %3843 ]
  %4123 = and i32 %184, 3
  %4124 = icmp eq i32 %4123, 1
  %4125 = select i1 %4124, float 1.000000e+00, float 0.000000e+00
  %4126 = fsub fast float %4118, %168
  %4127 = call float @dx.op.unary.f32(i32 7, float %4126)  ; Saturate(value)
  %4128 = select i1 %4122, float %4127, float 1.000000e+00
  %4129 = fmul fast float %4128, %4125
  %4130 = icmp eq i32 %4123, 3
  %4131 = select i1 %4130, float 1.000000e+00, float %4129
  %4132 = call float @dx.op.binary.f32(i32 35, float %3718, float %4131)  ; FMax(a,b)
  %4133 = fcmp fast olt float %4131, 1.000000e+00
  %4134 = fcmp uge float %49, 0.000000e+00
  %4135 = and i1 %4134, %4133
  br i1 %4135, label %4136, label %4146

; <label>:4136                                    ; preds = %4117
  %4137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = extractvalue %dx.types.ResRet.f32 %4137, 1
  %4140 = extractvalue %dx.types.ResRet.f32 %4137, 2
  %4141 = fadd fast float %4138, %4132
  %4142 = fcmp ule float %48, 0.000000e+00
  %4143 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4144 = select i1 %4142, float %4143, float 1.000000e+00
  %4145 = fmul fast float %4144, %4140
  br label %4146

; <label>:4146                                    ; preds = %4136, %4117
  %4147 = phi float [ %4141, %4136 ], [ %4132, %4117 ]
  %4148 = phi float [ %4139, %4136 ], [ 0.000000e+00, %4117 ]
  %4149 = phi float [ %4145, %4136 ], [ 0.000000e+00, %4117 ]
  %4150 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4151 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4152 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4153 = fcmp fast une float %4151, 0.000000e+00
  %4154 = fcmp fast une float %4152, 0.000000e+00
  %4155 = or i1 %4153, %4154
  br i1 %4155, label %4156, label %4715

; <label>:4156                                    ; preds = %4146
  br i1 %4153, label %4157, label %4430

; <label>:4157                                    ; preds = %4156
  %4158 = call float @dx.op.unary.f32(i32 23, float %3715)  ; Log(value)
  %4159 = fmul fast float %4158, 4.000000e+00
  %4160 = call float @dx.op.unary.f32(i32 21, float %4159)  ; Exp(value)
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 0
  %4163 = fmul fast float %4162, %36
  %4164 = fmul fast float %4162, %37
  %4165 = fmul fast float %4162, %38
  %4166 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4167 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4168 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4169 = call float @dx.op.unary.f32(i32 23, float %4166)  ; Log(value)
  %4170 = call float @dx.op.unary.f32(i32 23, float %4167)  ; Log(value)
  %4171 = call float @dx.op.unary.f32(i32 23, float %4168)  ; Log(value)
  %4172 = fmul fast float %4169, 4.000000e+00
  %4173 = fmul fast float %4170, 4.000000e+00
  %4174 = fmul fast float %4171, 4.000000e+00
  %4175 = call float @dx.op.unary.f32(i32 21, float %4172)  ; Exp(value)
  %4176 = call float @dx.op.unary.f32(i32 21, float %4173)  ; Exp(value)
  %4177 = call float @dx.op.unary.f32(i32 21, float %4174)  ; Exp(value)
  %4178 = fadd fast float %4176, %4175
  %4179 = fadd fast float %4178, %4177
  %4180 = fdiv fast float 1.000000e+00, %4179
  %4181 = fmul fast float %4180, %4175
  %4182 = fcmp fast ogt float %45, 0.000000e+00
  %4183 = fcmp fast ogt float %46, 0.000000e+00
  %4184 = fcmp fast ogt float %47, 0.000000e+00
  %4185 = fcmp fast olt float %45, 0.000000e+00
  %4186 = fcmp fast olt float %46, 0.000000e+00
  %4187 = fcmp fast olt float %47, 0.000000e+00
  %4188 = zext i1 %4182 to i32
  %4189 = zext i1 %4183 to i32
  %4190 = zext i1 %4184 to i32
  %4191 = zext i1 %4185 to i32
  %4192 = zext i1 %4186 to i32
  %4193 = zext i1 %4187 to i32
  %4194 = sub nsw i32 %4188, %4191
  %4195 = sub nsw i32 %4189, %4192
  %4196 = sub nsw i32 %4190, %4193
  %4197 = call float @dx.op.unary.f32(i32 83, float %4163)  ; DerivCoarseX(value)
  %4198 = call float @dx.op.unary.f32(i32 83, float %4164)  ; DerivCoarseX(value)
  %4199 = call float @dx.op.unary.f32(i32 83, float %4165)  ; DerivCoarseX(value)
  %4200 = call float @dx.op.unary.f32(i32 84, float %4163)  ; DerivCoarseY(value)
  %4201 = call float @dx.op.unary.f32(i32 84, float %4164)  ; DerivCoarseY(value)
  %4202 = call float @dx.op.unary.f32(i32 84, float %4165)  ; DerivCoarseY(value)
  %4203 = fcmp fast ole float %216, %4181
  %4204 = fmul fast float %4180, %4178
  %4205 = fcmp fast ole float %216, %4204
  %4206 = select i1 %4205, float %4165, float %4163
  %4207 = select i1 %4205, float %4163, float %4164
  %4208 = select i1 %4203, float %4164, float %4206
  %4209 = select i1 %4203, float %4165, float %4207
  %4210 = select i1 %4205, float %4199, float %4197
  %4211 = select i1 %4205, float %4197, float %4198
  %4212 = select i1 %4203, float %4198, float %4210
  %4213 = select i1 %4203, float %4199, float %4211
  %4214 = select i1 %4205, float %4202, float %4200
  %4215 = select i1 %4205, float %4200, float %4201
  %4216 = select i1 %4203, float %4201, float %4214
  %4217 = select i1 %4203, float %4202, float %4215
  %4218 = call float @dx.op.unary.f32(i32 27, float %4208)  ; Round_ni(value)
  %4219 = call float @dx.op.unary.f32(i32 27, float %4209)  ; Round_ni(value)
  %4220 = fptosi float %4218 to i32
  %4221 = fptosi float %4219 to i32
  %4222 = xor i32 %4221, %4220
  %4223 = sitofp i32 %4222 to float
  %4224 = fptosi float %4223 to i32
  %4225 = sitofp i32 %4224 to float
  %4226 = fmul fast float %4225, 0x3FE3C6EF40000000
  %4227 = frem fast float %4218, 2.560000e+02
  %4228 = frem fast float %4219, 2.560000e+02
  %4229 = fptoui float %4227 to i32
  %4230 = fptoui float %4228 to i32
  %4231 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4229, i32 %4230, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = extractvalue %dx.types.ResRet.f32 %4231, 2
  %4235 = fadd fast float %4232, %4226
  %4236 = fadd fast float %4233, %4226
  %4237 = fadd fast float %4234, %4226
  %4238 = call float @dx.op.unary.f32(i32 22, float %4235)  ; Frc(value)
  %4239 = call float @dx.op.unary.f32(i32 22, float %4236)  ; Frc(value)
  %4240 = call float @dx.op.unary.f32(i32 22, float %4237)  ; Frc(value)
  %4241 = fmul fast float %4240, 0x401921FB60000000
  %4242 = call float @dx.op.unary.f32(i32 13, float %4241)  ; Sin(value)
  %4243 = call float @dx.op.unary.f32(i32 12, float %4241)  ; Cos(value)
  %4244 = fsub fast float -0.000000e+00, %4243
  %4245 = fmul fast float %4243, %4208
  %4246 = call float @dx.op.tertiary.f32(i32 46, float %4242, float %4209, float %4245)  ; FMad(a,b,c)
  %4247 = fmul fast float %4242, %4208
  %4248 = call float @dx.op.tertiary.f32(i32 46, float %4244, float %4209, float %4247)  ; FMad(a,b,c)
  %4249 = fadd fast float %4246, %4238
  %4250 = fadd fast float %4248, %4239
  %4251 = extractvalue %dx.types.CBufRet.f32 %4161, 3
  %4252 = bitcast float %4251 to i32
  %4253 = icmp eq i32 %4252, 0
  br i1 %4253, label %4292, label %4254

; <label>:4254                                    ; preds = %4157
  %4255 = add i32 %4252, 0
  %4256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4257 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4256, %dx.types.Handle %80, float %4249, float %4250, float undef, float undef, i32 0, i32 0, i32 undef, float %4212, float %4213, float undef, float %4216, float %4217, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 1
  %4261 = extractvalue %dx.types.CBufRet.f32 %4259, 2
  %4262 = fsub fast float 1.000000e+00, %4151
  %4263 = call float @dx.op.binary.f32(i32 35, float %4262, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4264 = bitcast float %4151 to i32
  %4265 = sitofp i32 %4264 to float
  %4266 = fadd fast float %4265, 0xC1CFBF8940000000
  %4267 = fmul fast float %4261, %4266
  %4268 = fadd fast float %4267, 0x41CFBF8940000000
  %4269 = fptosi float %4268 to i32
  %4270 = bitcast i32 %4269 to float
  %4271 = bitcast float %4263 to i32
  %4272 = sitofp i32 %4271 to float
  %4273 = fadd fast float %4272, 0xC1CFBF8940000000
  %4274 = fmul fast float %4273, %4261
  %4275 = fadd fast float %4274, 0x41CFBF8940000000
  %4276 = fptosi float %4275 to i32
  %4277 = bitcast i32 %4276 to float
  %4278 = fmul fast float %4270, %4260
  %4279 = fmul fast float %4277, %4260
  %4280 = fsub fast float %4263, %4278
  %4281 = fadd fast float %4279, %4263
  %4282 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4283 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4284 = fsub fast float %4258, %4282
  %4285 = fsub fast float %4283, %4282
  %4286 = bitcast float %4285 to i32
  %4287 = sub nsw i32 2129859010, %4286
  %4288 = bitcast i32 %4287 to float
  %4289 = fmul fast float %4288, %4284
  %4290 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4291 = fcmp fast olt float %4290, 0x3F70101020000000
  br i1 %4291, label %4430, label %4292

; <label>:4292                                    ; preds = %4254, %4157
  %4293 = phi float [ %4290, %4254 ], [ %4151, %4157 ]
  %4294 = fmul fast float %4293, %4160
  %4295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.i32 %4295, 1
  %4297 = extractvalue %dx.types.CBufRet.i32 %4295, 0
  %4298 = add i32 %4297, 0
  %4299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4300 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4299, %dx.types.Handle %79, float %4249, float %4250, float undef, float undef, i32 0, i32 0, i32 undef, float %4212, float %4213, float undef, float %4216, float %4217, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.ResRet.f32 %4300, 1
  %4303 = extractvalue %dx.types.ResRet.f32 %4300, 2
  %4304 = extractvalue %dx.types.ResRet.f32 %4300, 3
  %4305 = and i32 %4296, 255
  %4306 = uitofp i32 %4305 to float
  %4307 = lshr i32 %4296, 8
  %4308 = and i32 %4307, 255
  %4309 = uitofp i32 %4308 to float
  %4310 = fmul fast float %4304, %4306
  %4311 = fadd fast float %4310, %4309
  %4312 = fmul fast float %4311, 0x3F70101000000000
  %4313 = fadd fast float %4312, 0xBFB99999A0000000
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = fmul fast float %4314, 0x3FF1C71C80000000
  %4316 = call float @dx.op.binary.f32(i32 36, float %4312, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4317 = fsub fast float 1.000000e+00, %4315
  %4318 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4319 = fmul fast float %4318, %4301
  %4320 = fmul fast float %4318, %4302
  %4321 = fmul fast float %4318, %4303
  %4322 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4323 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4324 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4325 = fmul fast float %4315, %4301
  %4326 = fmul fast float %4315, %4302
  %4327 = fmul fast float %4315, %4303
  %4328 = fadd fast float %4325, %4316
  %4329 = fadd fast float %4326, %4316
  %4330 = fadd fast float %4327, %4316
  %4331 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4332 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4333 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.i32 %4334, 3
  %4336 = extractvalue %dx.types.CBufRet.i32 %4334, 2
  %4337 = add i32 %4336, 0
  %4338 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4337, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4339 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4338, %dx.types.Handle %79, float %4249, float %4250, float undef, float undef, i32 0, i32 0, i32 undef, float %4212, float %4213, float undef, float %4216, float %4217, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4340 = extractvalue %dx.types.ResRet.f32 %4339, 0
  %4341 = extractvalue %dx.types.ResRet.f32 %4339, 1
  %4342 = extractvalue %dx.types.ResRet.f32 %4339, 2
  %4343 = extractvalue %dx.types.ResRet.f32 %4339, 3
  %4344 = and i32 %4335, 255
  %4345 = uitofp i32 %4344 to float
  %4346 = lshr i32 %4335, 8
  %4347 = and i32 %4346, 255
  %4348 = uitofp i32 %4347 to float
  %4349 = lshr i32 %4335, 16
  %4350 = and i32 %4349, 255
  %4351 = uitofp i32 %4350 to float
  %4352 = fmul fast float %4351, 0x3F70101000000000
  %4353 = fmul fast float %4340, %4345
  %4354 = fadd fast float %4353, %4348
  %4355 = fmul fast float %4354, 0x3F70101000000000
  %4356 = fadd fast float %4341, -5.000000e-01
  %4357 = fadd fast float %4343, -5.000000e-01
  %4358 = fmul fast float %4356, %4352
  %4359 = fmul fast float %4357, %4352
  %4360 = fadd fast float %4358, 5.000000e-01
  %4361 = fadd fast float %4359, 5.000000e-01
  %4362 = fmul fast float %4360, 2.000000e+00
  %4363 = fadd fast float %4362, -1.000000e+00
  %4364 = fmul fast float %4361, 2.000000e+00
  %4365 = fadd fast float %4364, -1.000000e+00
  %4366 = fadd fast float %4363, %4365
  %4367 = fmul fast float %4366, 5.000000e-01
  %4368 = fsub fast float %4363, %4365
  %4369 = fmul fast float %4368, 5.000000e-01
  %4370 = call float @dx.op.unary.f32(i32 6, float %4367)  ; FAbs(value)
  %4371 = fsub fast float 1.000000e+00, %4370
  %4372 = call float @dx.op.unary.f32(i32 6, float %4369)  ; FAbs(value)
  %4373 = fsub fast float %4371, %4372
  %4374 = call float @dx.op.dot3.f32(i32 55, float %4367, float %4369, float %4373, float %4367, float %4369, float %4373)  ; Dot3(ax,ay,az,bx,by,bz)
  %4375 = call float @dx.op.unary.f32(i32 25, float %4374)  ; Rsqrt(value)
  %4376 = fmul fast float %4367, %4375
  %4377 = fmul fast float %4369, %4375
  %4378 = select i1 %4205, i32 %4195, i32 %4196
  %4379 = select i1 %4203, i32 %4194, i32 %4378
  %4380 = sitofp i32 %4379 to float
  %4381 = fmul fast float %4373, %4380
  %4382 = fmul fast float %4381, %4375
  %4383 = select i1 %4205, float %4382, float %4377
  %4384 = select i1 %4205, float %4377, float %4382
  %4385 = select i1 %4203, float %4382, float %4376
  %4386 = select i1 %4203, float %4377, float %4383
  %4387 = select i1 %4203, float %4376, float %4384
  %4388 = fsub fast float %4322, %3755
  %4389 = fsub fast float %4323, %3756
  %4390 = fsub fast float %4324, %3757
  %4391 = fmul fast float %4388, %4294
  %4392 = fmul fast float %4389, %4294
  %4393 = fmul fast float %4390, %4294
  %4394 = fadd fast float %4391, %3755
  %4395 = fadd fast float %4392, %3756
  %4396 = fadd fast float %4393, %3757
  %4397 = fsub fast float %4331, %3740
  %4398 = fsub fast float %4332, %3741
  %4399 = fsub fast float %4333, %3742
  %4400 = fmul fast float %4397, %4294
  %4401 = fmul fast float %4398, %4294
  %4402 = fmul fast float %4399, %4294
  %4403 = fadd fast float %4400, %3740
  %4404 = fadd fast float %4401, %3741
  %4405 = fadd fast float %4402, %3742
  %4406 = fadd fast float %4385, %3703
  %4407 = fadd fast float %4386, %3704
  %4408 = fadd fast float %4387, %3705
  %4409 = call float @dx.op.dot3.f32(i32 55, float %4406, float %4407, float %4408, float %4406, float %4407, float %4408)  ; Dot3(ax,ay,az,bx,by,bz)
  %4410 = call float @dx.op.unary.f32(i32 25, float %4409)  ; Rsqrt(value)
  %4411 = fmul fast float %4406, %4410
  %4412 = fmul fast float %4407, %4410
  %4413 = fmul fast float %4408, %4410
  %4414 = fsub fast float %4411, %3703
  %4415 = fsub fast float %4412, %3704
  %4416 = fsub fast float %4413, %3705
  %4417 = fmul fast float %4414, %4294
  %4418 = fmul fast float %4415, %4294
  %4419 = fmul fast float %4416, %4294
  %4420 = fadd fast float %4417, %3703
  %4421 = fadd fast float %4418, %3704
  %4422 = fadd fast float %4419, %3705
  %4423 = call float @dx.op.binary.f32(i32 36, float %3715, float %4342)  ; FMin(a,b)
  %4424 = fsub fast float %4423, %3715
  %4425 = fmul fast float %4424, %4294
  %4426 = fadd fast float %4425, %3715
  %4427 = fsub fast float %4355, %3743
  %4428 = fmul fast float %4427, %4294
  %4429 = fadd fast float %4428, %3743
  br label %4430

; <label>:4430                                    ; preds = %4292, %4254, %4156
  %4431 = phi float [ %4394, %4292 ], [ %3755, %4254 ], [ %3755, %4156 ]
  %4432 = phi float [ %4395, %4292 ], [ %3756, %4254 ], [ %3756, %4156 ]
  %4433 = phi float [ %4396, %4292 ], [ %3757, %4254 ], [ %3757, %4156 ]
  %4434 = phi float [ %4403, %4292 ], [ %3740, %4254 ], [ %3740, %4156 ]
  %4435 = phi float [ %4404, %4292 ], [ %3741, %4254 ], [ %3741, %4156 ]
  %4436 = phi float [ %4405, %4292 ], [ %3742, %4254 ], [ %3742, %4156 ]
  %4437 = phi float [ %4420, %4292 ], [ %3703, %4254 ], [ %3703, %4156 ]
  %4438 = phi float [ %4421, %4292 ], [ %3704, %4254 ], [ %3704, %4156 ]
  %4439 = phi float [ %4422, %4292 ], [ %3705, %4254 ], [ %3705, %4156 ]
  %4440 = phi float [ %4429, %4292 ], [ %3743, %4254 ], [ %3743, %4156 ]
  %4441 = phi float [ %4426, %4292 ], [ %3715, %4254 ], [ %3715, %4156 ]
  br i1 %4154, label %4442, label %4715

; <label>:4442                                    ; preds = %4430
  %4443 = call float @dx.op.unary.f32(i32 23, float %4441)  ; Log(value)
  %4444 = fmul fast float %4443, 4.000000e+00
  %4445 = call float @dx.op.unary.f32(i32 21, float %4444)  ; Exp(value)
  %4446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4446, 0
  %4448 = fmul fast float %4447, %36
  %4449 = fmul fast float %4447, %37
  %4450 = fmul fast float %4447, %38
  %4451 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4452 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4453 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4454 = call float @dx.op.unary.f32(i32 23, float %4451)  ; Log(value)
  %4455 = call float @dx.op.unary.f32(i32 23, float %4452)  ; Log(value)
  %4456 = call float @dx.op.unary.f32(i32 23, float %4453)  ; Log(value)
  %4457 = fmul fast float %4454, 4.000000e+00
  %4458 = fmul fast float %4455, 4.000000e+00
  %4459 = fmul fast float %4456, 4.000000e+00
  %4460 = call float @dx.op.unary.f32(i32 21, float %4457)  ; Exp(value)
  %4461 = call float @dx.op.unary.f32(i32 21, float %4458)  ; Exp(value)
  %4462 = call float @dx.op.unary.f32(i32 21, float %4459)  ; Exp(value)
  %4463 = fadd fast float %4461, %4460
  %4464 = fadd fast float %4463, %4462
  %4465 = fdiv fast float 1.000000e+00, %4464
  %4466 = fmul fast float %4465, %4460
  %4467 = fcmp fast ogt float %45, 0.000000e+00
  %4468 = fcmp fast ogt float %46, 0.000000e+00
  %4469 = fcmp fast ogt float %47, 0.000000e+00
  %4470 = fcmp fast olt float %45, 0.000000e+00
  %4471 = fcmp fast olt float %46, 0.000000e+00
  %4472 = fcmp fast olt float %47, 0.000000e+00
  %4473 = zext i1 %4467 to i32
  %4474 = zext i1 %4468 to i32
  %4475 = zext i1 %4469 to i32
  %4476 = zext i1 %4470 to i32
  %4477 = zext i1 %4471 to i32
  %4478 = zext i1 %4472 to i32
  %4479 = sub nsw i32 %4473, %4476
  %4480 = sub nsw i32 %4474, %4477
  %4481 = sub nsw i32 %4475, %4478
  %4482 = call float @dx.op.unary.f32(i32 83, float %4448)  ; DerivCoarseX(value)
  %4483 = call float @dx.op.unary.f32(i32 83, float %4449)  ; DerivCoarseX(value)
  %4484 = call float @dx.op.unary.f32(i32 83, float %4450)  ; DerivCoarseX(value)
  %4485 = call float @dx.op.unary.f32(i32 84, float %4448)  ; DerivCoarseY(value)
  %4486 = call float @dx.op.unary.f32(i32 84, float %4449)  ; DerivCoarseY(value)
  %4487 = call float @dx.op.unary.f32(i32 84, float %4450)  ; DerivCoarseY(value)
  %4488 = fcmp fast ole float %216, %4466
  %4489 = fmul fast float %4465, %4463
  %4490 = fcmp fast ole float %216, %4489
  %4491 = select i1 %4490, float %4450, float %4448
  %4492 = select i1 %4490, float %4448, float %4449
  %4493 = select i1 %4488, float %4449, float %4491
  %4494 = select i1 %4488, float %4450, float %4492
  %4495 = select i1 %4490, float %4484, float %4482
  %4496 = select i1 %4490, float %4482, float %4483
  %4497 = select i1 %4488, float %4483, float %4495
  %4498 = select i1 %4488, float %4484, float %4496
  %4499 = select i1 %4490, float %4487, float %4485
  %4500 = select i1 %4490, float %4485, float %4486
  %4501 = select i1 %4488, float %4486, float %4499
  %4502 = select i1 %4488, float %4487, float %4500
  %4503 = call float @dx.op.unary.f32(i32 27, float %4493)  ; Round_ni(value)
  %4504 = call float @dx.op.unary.f32(i32 27, float %4494)  ; Round_ni(value)
  %4505 = fptosi float %4503 to i32
  %4506 = fptosi float %4504 to i32
  %4507 = xor i32 %4506, %4505
  %4508 = sitofp i32 %4507 to float
  %4509 = fptosi float %4508 to i32
  %4510 = sitofp i32 %4509 to float
  %4511 = fmul fast float %4510, 0x3FE3C6EF40000000
  %4512 = frem fast float %4503, 2.560000e+02
  %4513 = frem fast float %4504, 2.560000e+02
  %4514 = fptoui float %4512 to i32
  %4515 = fptoui float %4513 to i32
  %4516 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4514, i32 %4515, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4517 = extractvalue %dx.types.ResRet.f32 %4516, 0
  %4518 = extractvalue %dx.types.ResRet.f32 %4516, 1
  %4519 = extractvalue %dx.types.ResRet.f32 %4516, 2
  %4520 = fadd fast float %4517, %4511
  %4521 = fadd fast float %4518, %4511
  %4522 = fadd fast float %4519, %4511
  %4523 = call float @dx.op.unary.f32(i32 22, float %4520)  ; Frc(value)
  %4524 = call float @dx.op.unary.f32(i32 22, float %4521)  ; Frc(value)
  %4525 = call float @dx.op.unary.f32(i32 22, float %4522)  ; Frc(value)
  %4526 = fmul fast float %4525, 0x401921FB60000000
  %4527 = call float @dx.op.unary.f32(i32 13, float %4526)  ; Sin(value)
  %4528 = call float @dx.op.unary.f32(i32 12, float %4526)  ; Cos(value)
  %4529 = fsub fast float -0.000000e+00, %4528
  %4530 = fmul fast float %4528, %4493
  %4531 = call float @dx.op.tertiary.f32(i32 46, float %4527, float %4494, float %4530)  ; FMad(a,b,c)
  %4532 = fmul fast float %4527, %4493
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4529, float %4494, float %4532)  ; FMad(a,b,c)
  %4534 = fadd fast float %4531, %4523
  %4535 = fadd fast float %4533, %4524
  %4536 = extractvalue %dx.types.CBufRet.f32 %4446, 3
  %4537 = bitcast float %4536 to i32
  %4538 = icmp eq i32 %4537, 0
  br i1 %4538, label %4577, label %4539

; <label>:4539                                    ; preds = %4442
  %4540 = add i32 %4537, 0
  %4541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4542 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4541, %dx.types.Handle %80, float %4534, float %4535, float undef, float undef, i32 0, i32 0, i32 undef, float %4497, float %4498, float undef, float %4501, float %4502, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 1
  %4546 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4547 = fsub fast float 1.000000e+00, %4152
  %4548 = call float @dx.op.binary.f32(i32 35, float %4547, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4549 = bitcast float %4152 to i32
  %4550 = sitofp i32 %4549 to float
  %4551 = fadd fast float %4550, 0xC1CFBF8940000000
  %4552 = fmul fast float %4546, %4551
  %4553 = fadd fast float %4552, 0x41CFBF8940000000
  %4554 = fptosi float %4553 to i32
  %4555 = bitcast i32 %4554 to float
  %4556 = bitcast float %4548 to i32
  %4557 = sitofp i32 %4556 to float
  %4558 = fadd fast float %4557, 0xC1CFBF8940000000
  %4559 = fmul fast float %4558, %4546
  %4560 = fadd fast float %4559, 0x41CFBF8940000000
  %4561 = fptosi float %4560 to i32
  %4562 = bitcast i32 %4561 to float
  %4563 = fmul fast float %4555, %4545
  %4564 = fmul fast float %4562, %4545
  %4565 = fsub fast float %4548, %4563
  %4566 = fadd fast float %4564, %4548
  %4567 = call float @dx.op.unary.f32(i32 7, float %4565)  ; Saturate(value)
  %4568 = call float @dx.op.unary.f32(i32 7, float %4566)  ; Saturate(value)
  %4569 = fsub fast float %4543, %4567
  %4570 = fsub fast float %4568, %4567
  %4571 = bitcast float %4570 to i32
  %4572 = sub nsw i32 2129859010, %4571
  %4573 = bitcast i32 %4572 to float
  %4574 = fmul fast float %4573, %4569
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = fcmp fast olt float %4575, 0x3F70101020000000
  br i1 %4576, label %4715, label %4577

; <label>:4577                                    ; preds = %4539, %4442
  %4578 = phi float [ %4575, %4539 ], [ %4152, %4442 ]
  %4579 = fmul fast float %4578, %4445
  %4580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.i32 %4580, 1
  %4582 = extractvalue %dx.types.CBufRet.i32 %4580, 0
  %4583 = add i32 %4582, 0
  %4584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4585 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4584, %dx.types.Handle %79, float %4534, float %4535, float undef, float undef, i32 0, i32 0, i32 undef, float %4497, float %4498, float undef, float %4501, float %4502, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.ResRet.f32 %4585, 1
  %4588 = extractvalue %dx.types.ResRet.f32 %4585, 2
  %4589 = extractvalue %dx.types.ResRet.f32 %4585, 3
  %4590 = and i32 %4581, 255
  %4591 = uitofp i32 %4590 to float
  %4592 = lshr i32 %4581, 8
  %4593 = and i32 %4592, 255
  %4594 = uitofp i32 %4593 to float
  %4595 = fmul fast float %4589, %4591
  %4596 = fadd fast float %4595, %4594
  %4597 = fmul fast float %4596, 0x3F70101000000000
  %4598 = fadd fast float %4597, 0xBFB99999A0000000
  %4599 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4600 = fmul fast float %4599, 0x3FF1C71C80000000
  %4601 = call float @dx.op.binary.f32(i32 36, float %4597, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4602 = fsub fast float 1.000000e+00, %4600
  %4603 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4604 = fmul fast float %4603, %4586
  %4605 = fmul fast float %4603, %4587
  %4606 = fmul fast float %4603, %4588
  %4607 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4608 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4609 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4610 = fmul fast float %4600, %4586
  %4611 = fmul fast float %4600, %4587
  %4612 = fmul fast float %4600, %4588
  %4613 = fadd fast float %4610, %4601
  %4614 = fadd fast float %4611, %4601
  %4615 = fadd fast float %4612, %4601
  %4616 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4617 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4618 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.i32 %4619, 3
  %4621 = extractvalue %dx.types.CBufRet.i32 %4619, 2
  %4622 = add i32 %4621, 0
  %4623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4624 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4623, %dx.types.Handle %79, float %4534, float %4535, float undef, float undef, i32 0, i32 0, i32 undef, float %4497, float %4498, float undef, float %4501, float %4502, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4625 = extractvalue %dx.types.ResRet.f32 %4624, 0
  %4626 = extractvalue %dx.types.ResRet.f32 %4624, 1
  %4627 = extractvalue %dx.types.ResRet.f32 %4624, 2
  %4628 = extractvalue %dx.types.ResRet.f32 %4624, 3
  %4629 = and i32 %4620, 255
  %4630 = uitofp i32 %4629 to float
  %4631 = lshr i32 %4620, 8
  %4632 = and i32 %4631, 255
  %4633 = uitofp i32 %4632 to float
  %4634 = lshr i32 %4620, 16
  %4635 = and i32 %4634, 255
  %4636 = uitofp i32 %4635 to float
  %4637 = fmul fast float %4636, 0x3F70101000000000
  %4638 = fmul fast float %4625, %4630
  %4639 = fadd fast float %4638, %4633
  %4640 = fmul fast float %4639, 0x3F70101000000000
  %4641 = fadd fast float %4626, -5.000000e-01
  %4642 = fadd fast float %4628, -5.000000e-01
  %4643 = fmul fast float %4641, %4637
  %4644 = fmul fast float %4642, %4637
  %4645 = fadd fast float %4643, 5.000000e-01
  %4646 = fadd fast float %4644, 5.000000e-01
  %4647 = fmul fast float %4645, 2.000000e+00
  %4648 = fadd fast float %4647, -1.000000e+00
  %4649 = fmul fast float %4646, 2.000000e+00
  %4650 = fadd fast float %4649, -1.000000e+00
  %4651 = fadd fast float %4648, %4650
  %4652 = fmul fast float %4651, 5.000000e-01
  %4653 = fsub fast float %4648, %4650
  %4654 = fmul fast float %4653, 5.000000e-01
  %4655 = call float @dx.op.unary.f32(i32 6, float %4652)  ; FAbs(value)
  %4656 = fsub fast float 1.000000e+00, %4655
  %4657 = call float @dx.op.unary.f32(i32 6, float %4654)  ; FAbs(value)
  %4658 = fsub fast float %4656, %4657
  %4659 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4654, float %4658, float %4652, float %4654, float %4658)  ; Dot3(ax,ay,az,bx,by,bz)
  %4660 = call float @dx.op.unary.f32(i32 25, float %4659)  ; Rsqrt(value)
  %4661 = fmul fast float %4652, %4660
  %4662 = fmul fast float %4654, %4660
  %4663 = select i1 %4490, i32 %4480, i32 %4481
  %4664 = select i1 %4488, i32 %4479, i32 %4663
  %4665 = sitofp i32 %4664 to float
  %4666 = fmul fast float %4658, %4665
  %4667 = fmul fast float %4666, %4660
  %4668 = select i1 %4490, float %4667, float %4662
  %4669 = select i1 %4490, float %4662, float %4667
  %4670 = select i1 %4488, float %4667, float %4661
  %4671 = select i1 %4488, float %4662, float %4668
  %4672 = select i1 %4488, float %4661, float %4669
  %4673 = fsub fast float %4607, %4431
  %4674 = fsub fast float %4608, %4432
  %4675 = fsub fast float %4609, %4433
  %4676 = fmul fast float %4673, %4579
  %4677 = fmul fast float %4674, %4579
  %4678 = fmul fast float %4675, %4579
  %4679 = fadd fast float %4676, %4431
  %4680 = fadd fast float %4677, %4432
  %4681 = fadd fast float %4678, %4433
  %4682 = fsub fast float %4616, %4434
  %4683 = fsub fast float %4617, %4435
  %4684 = fsub fast float %4618, %4436
  %4685 = fmul fast float %4682, %4579
  %4686 = fmul fast float %4683, %4579
  %4687 = fmul fast float %4684, %4579
  %4688 = fadd fast float %4685, %4434
  %4689 = fadd fast float %4686, %4435
  %4690 = fadd fast float %4687, %4436
  %4691 = fadd fast float %4670, %4437
  %4692 = fadd fast float %4671, %4438
  %4693 = fadd fast float %4672, %4439
  %4694 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %4691, float %4692, float %4693)  ; Dot3(ax,ay,az,bx,by,bz)
  %4695 = call float @dx.op.unary.f32(i32 25, float %4694)  ; Rsqrt(value)
  %4696 = fmul fast float %4691, %4695
  %4697 = fmul fast float %4692, %4695
  %4698 = fmul fast float %4693, %4695
  %4699 = fsub fast float %4696, %4437
  %4700 = fsub fast float %4697, %4438
  %4701 = fsub fast float %4698, %4439
  %4702 = fmul fast float %4699, %4579
  %4703 = fmul fast float %4700, %4579
  %4704 = fmul fast float %4701, %4579
  %4705 = fadd fast float %4702, %4437
  %4706 = fadd fast float %4703, %4438
  %4707 = fadd fast float %4704, %4439
  %4708 = call float @dx.op.binary.f32(i32 36, float %4441, float %4627)  ; FMin(a,b)
  %4709 = fsub fast float %4708, %4441
  %4710 = fmul fast float %4709, %4579
  %4711 = fadd fast float %4710, %4441
  %4712 = fsub fast float %4640, %4440
  %4713 = fmul fast float %4712, %4579
  %4714 = fadd fast float %4713, %4440
  br label %4715

; <label>:4715                                    ; preds = %4577, %4539, %4430, %4146
  %4716 = phi float [ %4679, %4577 ], [ %4431, %4539 ], [ %4431, %4430 ], [ %3755, %4146 ]
  %4717 = phi float [ %4680, %4577 ], [ %4432, %4539 ], [ %4432, %4430 ], [ %3756, %4146 ]
  %4718 = phi float [ %4681, %4577 ], [ %4433, %4539 ], [ %4433, %4430 ], [ %3757, %4146 ]
  %4719 = phi float [ %4688, %4577 ], [ %4434, %4539 ], [ %4434, %4430 ], [ %3740, %4146 ]
  %4720 = phi float [ %4689, %4577 ], [ %4435, %4539 ], [ %4435, %4430 ], [ %3741, %4146 ]
  %4721 = phi float [ %4690, %4577 ], [ %4436, %4539 ], [ %4436, %4430 ], [ %3742, %4146 ]
  %4722 = phi float [ %4705, %4577 ], [ %4437, %4539 ], [ %4437, %4430 ], [ %3703, %4146 ]
  %4723 = phi float [ %4706, %4577 ], [ %4438, %4539 ], [ %4438, %4430 ], [ %3704, %4146 ]
  %4724 = phi float [ %4707, %4577 ], [ %4439, %4539 ], [ %4439, %4430 ], [ %3705, %4146 ]
  %4725 = phi float [ %4714, %4577 ], [ %4440, %4539 ], [ %4440, %4430 ], [ %3743, %4146 ]
  %4726 = phi float [ %4711, %4577 ], [ %4441, %4539 ], [ %4441, %4430 ], [ %3715, %4146 ]
  %4727 = fcmp fast une float %4150, 0.000000e+00
  %4728 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = call float @dx.op.unary.f32(i32 25, float %4728)  ; Rsqrt(value)
  br i1 %4727, label %4737, label %4730

; <label>:4730                                    ; preds = %4715
  %4731 = fmul fast float %4729, %166
  %4732 = fmul fast float %4729, %167
  %4733 = fmul fast float %4729, %168
  %4734 = fsub fast float -0.000000e+00, %4731
  %4735 = fsub fast float -0.000000e+00, %4732
  %4736 = fsub fast float -0.000000e+00, %4733
  br label %4904

; <label>:4737                                    ; preds = %4715
  %4738 = fmul fast float %166, %4729
  %4739 = fsub fast float -0.000000e+00, %4738
  %4740 = fmul fast float %167, %4729
  %4741 = fsub fast float -0.000000e+00, %4740
  %4742 = fmul fast float %168, %4729
  %4743 = fsub fast float -0.000000e+00, %4742
  %4744 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4741, float %4743, float %92, float %94, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4745 = fmul fast float %4150, 2.500000e+00
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = fmul fast float %4150, 0x4013FFFFE0000000
  %4748 = fadd fast float %4747, 0xBFFFFFFFE0000000
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fmul fast float %4150, 0x4004000020000000
  %4751 = fadd fast float %4750, 0xBFF8000040000000
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fmul fast float %3722, 1.000000e+01
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4755 = fmul fast float %4754, 2.000000e+00
  %4756 = fsub fast float 3.000000e+00, %4755
  %4757 = fmul fast float %4754, %4754
  %4758 = fmul fast float %4757, %4756
  %4759 = fsub fast float 1.000000e+00, %4758
  %4760 = fsub fast float 0x3FE3333340000000, %4725
  %4761 = fmul fast float %4760, 0x400AAAAAA0000000
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4763 = fmul fast float %4759, %4762
  %4764 = fmul fast float %4716, 0x3FEA2B8620000000
  %4765 = fmul fast float %4717, 0x3FEA2B8620000000
  %4766 = fmul fast float %4718, 0x3FEA2B8620000000
  %4767 = fadd fast float %4764, 0x3FC81DFBA0000000
  %4768 = fmul fast float %4767, %4716
  %4769 = fadd fast float %4768, 0x3F910E6020000000
  %4770 = fadd fast float %4765, 0x3FC81DFBA0000000
  %4771 = fmul fast float %4770, %4717
  %4772 = fadd fast float %4771, 0x3F910E6020000000
  %4773 = fadd fast float %4766, 0x3FC81DFBA0000000
  %4774 = fmul fast float %4773, %4718
  %4775 = fadd fast float %4774, 0x3F910E6020000000
  %4776 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4777 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4778 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4779 = fsub fast float %4776, %4716
  %4780 = fsub fast float %4777, %4717
  %4781 = fsub fast float %4778, %4718
  %4782 = fmul fast float %4779, %4746
  %4783 = fmul fast float %4782, %4763
  %4784 = fmul fast float %4780, %4746
  %4785 = fmul fast float %4784, %4763
  %4786 = fmul fast float %4781, %4746
  %4787 = fmul fast float %4786, %4763
  %4788 = fadd fast float %4783, %4716
  %4789 = fadd fast float %4785, %4717
  %4790 = fadd fast float %4787, %4718
  %4791 = fmul fast float %4726, %4726
  %4792 = fmul fast float %4791, %4791
  %4793 = fadd fast float %4749, 1.000000e+00
  %4794 = fsub fast float %4793, %4763
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = call float @dx.op.dot3.f32(i32 55, float %92, float %94, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4798 = fsub fast float 1.000000e+00, %4792
  %4799 = call float @dx.op.binary.f32(i32 36, float %4795, float %4798)  ; FMin(a,b)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4801 = call float @dx.op.binary.f32(i32 35, float %4799, float %4800)  ; FMax(a,b)
  %4802 = fadd fast float %4797, 0xBFE4CCCCC0000000
  %4803 = fmul fast float %4802, 0x4006DB6DA0000000
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = fmul fast float %4804, 2.000000e+00
  %4806 = fsub fast float 3.000000e+00, %4805
  %4807 = bitcast float %4719 to i32
  %4808 = ashr i32 %4807, 1
  %4809 = add nsw i32 %4808, 532487669
  %4810 = bitcast i32 %4809 to float
  %4811 = fsub fast float 1.000000e+00, %4810
  %4812 = bitcast float %4811 to i32
  %4813 = sub nsw i32 2129859010, %4812
  %4814 = bitcast i32 %4813 to float
  %4815 = fmul fast float %4814, 2.000000e+00
  %4816 = bitcast float %4720 to i32
  %4817 = ashr i32 %4816, 1
  %4818 = add nsw i32 %4817, 532487669
  %4819 = bitcast i32 %4818 to float
  %4820 = fsub fast float 1.000000e+00, %4819
  %4821 = bitcast float %4820 to i32
  %4822 = sub nsw i32 2129859010, %4821
  %4823 = bitcast i32 %4822 to float
  %4824 = fmul fast float %4823, 2.000000e+00
  %4825 = bitcast float %4721 to i32
  %4826 = ashr i32 %4825, 1
  %4827 = add nsw i32 %4826, 532487669
  %4828 = bitcast i32 %4827 to float
  %4829 = fsub fast float 1.000000e+00, %4828
  %4830 = bitcast float %4829 to i32
  %4831 = sub nsw i32 2129859010, %4830
  %4832 = bitcast i32 %4831 to float
  %4833 = fmul fast float %4832, 2.000000e+00
  %4834 = fsub fast float 0x4002A9FBE0000000, %4815
  %4835 = fadd fast float %4815, 0x3FD54FDF00000000
  %4836 = bitcast float %4835 to i32
  %4837 = sub nsw i32 2129859010, %4836
  %4838 = bitcast i32 %4837 to float
  %4839 = fmul fast float %4838, %4834
  %4840 = fmul fast float %4839, %4839
  %4841 = fsub fast float 0x4002A9FBE0000000, %4824
  %4842 = fadd fast float %4824, 0x3FD54FDF00000000
  %4843 = bitcast float %4842 to i32
  %4844 = sub nsw i32 2129859010, %4843
  %4845 = bitcast i32 %4844 to float
  %4846 = fmul fast float %4845, %4841
  %4847 = fmul fast float %4846, %4846
  %4848 = fsub fast float 0x4002A9FBE0000000, %4833
  %4849 = fadd fast float %4833, 0x3FD54FDF00000000
  %4850 = bitcast float %4849 to i32
  %4851 = sub nsw i32 2129859010, %4850
  %4852 = bitcast i32 %4851 to float
  %4853 = fmul fast float %4852, %4848
  %4854 = fmul fast float %4853, %4853
  %4855 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4840)  ; FMax(a,b)
  %4856 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4847)  ; FMax(a,b)
  %4857 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4854)  ; FMax(a,b)
  %4858 = fsub fast float 1.000000e+00, %4744
  %4859 = fadd fast float %4858, %4759
  %4860 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4861 = fsub fast float 1.000000e+00, %4131
  %4862 = fmul fast float %4801, %4861
  %4863 = fmul fast float %4804, %4804
  %4864 = fmul fast float %4863, %4862
  %4865 = fmul fast float %4864, %4806
  %4866 = fmul fast float %4861, 0xBFE99999A0000000
  %4867 = fmul fast float %4866, %4746
  %4868 = fmul fast float %4867, %4763
  %4869 = fadd fast float %4868, 1.000000e+00
  %4870 = fadd fast float %4725, -1.000000e+00
  %4871 = fmul fast float %4869, %4870
  %4872 = fadd fast float %4871, 1.000000e+00
  %4873 = fsub fast float %4855, %4719
  %4874 = fsub fast float %4856, %4720
  %4875 = fsub fast float %4857, %4721
  %4876 = fmul fast float %4865, %4873
  %4877 = fmul fast float %4865, %4874
  %4878 = fmul fast float %4865, %4875
  %4879 = fadd fast float %4876, %4719
  %4880 = fadd fast float %4877, %4720
  %4881 = fadd fast float %4878, %4721
  %4882 = fsub fast float %92, %4722
  %4883 = fsub fast float %94, %4723
  %4884 = fsub fast float %96, %4724
  %4885 = fmul fast float %4865, %4882
  %4886 = fmul fast float %4865, %4883
  %4887 = fmul fast float %4865, %4884
  %4888 = fadd fast float %4885, %4722
  %4889 = fadd fast float %4886, %4723
  %4890 = fadd fast float %4887, %4724
  %4891 = fmul fast float %4865, %4860
  %4892 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4893 = fsub fast float 1.000000e+00, %4892
  %4894 = fmul fast float %4891, %4893
  %4895 = fadd fast float %4894, %4892
  %4896 = fsub fast float 1.000000e+00, %4726
  %4897 = fmul fast float %4865, %4896
  %4898 = fadd fast float %4897, %4726
  %4899 = call float @dx.op.dot3.f32(i32 55, float %4888, float %4889, float %4890, float %4888, float %4889, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %4900 = call float @dx.op.unary.f32(i32 25, float %4899)  ; Rsqrt(value)
  %4901 = fmul fast float %4888, %4900
  %4902 = fmul fast float %4889, %4900
  %4903 = fmul fast float %4890, %4900
  br label %4904

; <label>:4904                                    ; preds = %4737, %4730
  %4905 = phi float [ %4736, %4730 ], [ %4743, %4737 ]
  %4906 = phi float [ %4735, %4730 ], [ %4741, %4737 ]
  %4907 = phi float [ %4734, %4730 ], [ %4739, %4737 ]
  %4908 = phi float [ %4733, %4730 ], [ %4742, %4737 ]
  %4909 = phi float [ %4732, %4730 ], [ %4740, %4737 ]
  %4910 = phi float [ %4731, %4730 ], [ %4738, %4737 ]
  %4911 = phi float [ %4716, %4730 ], [ %4788, %4737 ]
  %4912 = phi float [ %4717, %4730 ], [ %4789, %4737 ]
  %4913 = phi float [ %4718, %4730 ], [ %4790, %4737 ]
  %4914 = phi float [ %4719, %4730 ], [ %4879, %4737 ]
  %4915 = phi float [ %4720, %4730 ], [ %4880, %4737 ]
  %4916 = phi float [ %4721, %4730 ], [ %4881, %4737 ]
  %4917 = phi float [ %4722, %4730 ], [ %4901, %4737 ]
  %4918 = phi float [ %4723, %4730 ], [ %4902, %4737 ]
  %4919 = phi float [ %4724, %4730 ], [ %4903, %4737 ]
  %4920 = phi float [ %4725, %4730 ], [ %4895, %4737 ]
  %4921 = phi float [ %4726, %4730 ], [ %4898, %4737 ]
  %4922 = select i1 %205, float 0.000000e+00, float %4916
  %4923 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %4907, float %4906, float %4905)  ; Dot3(ax,ay,az,bx,by,bz)
  %4924 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4909, float %4908, float %4917, float %4918, float %4919)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = fmul fast float %4925, 2.000000e+00
  %4927 = fmul fast float %4926, %4917
  %4928 = fmul fast float %4926, %4918
  %4929 = fmul fast float %4926, %4919
  %4930 = fsub fast float %4910, %4927
  %4931 = fsub fast float %4909, %4928
  %4932 = fsub fast float %4908, %4929
  %4933 = call float @dx.op.binary.f32(i32 36, float %4921, float 1.000000e+00)  ; FMin(a,b)
  %4934 = fsub fast float 1.000000e+00, %4921
  %4935 = bitcast float %4934 to i32
  %4936 = sub nsw i32 2129859010, %4935
  %4937 = bitcast i32 %4936 to float
  %4938 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %4939 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %4940 = fcmp fast oeq float %4939, 0.000000e+00
  %4941 = fcmp fast oeq float %4938, 0.000000e+00
  %4942 = or i1 %4941, %4940
  br i1 %4942, label %4972, label %4943

; <label>:4943                                    ; preds = %4904
  %4944 = fsub fast float -0.000000e+00, %63
  %4945 = fsub fast float -0.000000e+00, %61
  %4946 = call float @dx.op.unary.f32(i32 24, float %4939)  ; Sqrt(value)
  %4947 = fdiv fast float %4946, %4938
  %4948 = fcmp fast ogt float %4947, 0x3FFB6F8900000000
  %4949 = select i1 %4948, float 0x3FFB6F8900000000, float %4947
  %4950 = fmul fast float %4949, 0x3FE8A23460000000
  %4951 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4952 = call float @dx.op.binary.f32(i32 35, float %4949, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4953 = fmul fast float %4951, %4938
  %4954 = fmul fast float %4952, 0x3FF279A740000000
  %4955 = fadd fast float %4954, -1.000000e+00
  %4956 = call float @dx.op.dot3.f32(i32 55, float %4944, float %4945, float %62, float %4944, float %4945, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %4957 = call float @dx.op.unary.f32(i32 25, float %4956)  ; Rsqrt(value)
  %4958 = fmul fast float %4957, %4944
  %4959 = fmul fast float %4957, %4945
  %4960 = fmul fast float %4957, %62
  %4961 = fmul fast float %4955, %4955
  %4962 = fsub fast float 1.000000e+00, %4961
  %4963 = fmul fast float %4952, 0x40005F8BE0000000
  %4964 = fsub fast float 0x400C5BF8A0000000, %4963
  %4965 = fdiv fast float %4953, %4964
  %4966 = fmul fast float %4965, 0x3FEE31C3C0000000
  %4967 = fmul fast float %4966, %4962
  %4968 = fmul fast float %4952, 0x3FDACB7480000000
  %4969 = fadd fast float %4968, 0xBFD7347680000000
  %4970 = fmul fast float %4969, %4965
  %4971 = fmul fast float %4970, %4962
  br label %4972

; <label>:4972                                    ; preds = %4943, %4904
  %4973 = phi float [ %4958, %4943 ], [ 0.000000e+00, %4904 ]
  %4974 = phi float [ %4959, %4943 ], [ 0.000000e+00, %4904 ]
  %4975 = phi float [ %4960, %4943 ], [ 0.000000e+00, %4904 ]
  %4976 = phi float [ %4967, %4943 ], [ 0.000000e+00, %4904 ]
  %4977 = phi float [ %4971, %4943 ], [ 0.000000e+00, %4904 ]
  %4978 = call float @dx.op.dot3.f32(i32 55, float %4973, float %4974, float %4975, float %4917, float %4918, float %4919)  ; Dot3(ax,ay,az,bx,by,bz)
  %4979 = fmul fast float %4978, %4978
  %4980 = fmul fast float %4979, 0x3FEE471020000000
  %4981 = fadd fast float %4980, 0xBFD42F6020000000
  %4982 = fmul fast float %4938, 0x3FD20DD760000000
  %4983 = fmul fast float %4981, %4977
  %4984 = fmul fast float %4976, 0x3FDF454380000000
  %4985 = fmul fast float %4984, %4978
  %4986 = fadd fast float %4985, %4982
  %4987 = fadd fast float %4986, %4983
  %4988 = call float @dx.op.dot3.f32(i32 55, float %4973, float %4974, float %4975, float %4930, float %4931, float %4932)  ; Dot3(ax,ay,az,bx,by,bz)
  %4989 = fmul fast float %4988, 0x3FDF454380000000
  %4990 = fmul fast float %4988, %4988
  %4991 = fmul fast float %4990, 0x3FEE471020000000
  %4992 = fadd fast float %4991, 0xBFD42F6020000000
  %4993 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4976, float %4977, float 0x3FD20DD760000000, float %4989, float %4992)  ; Dot3(ax,ay,az,bx,by,bz)
  %4994 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %4995 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %4996 = fcmp fast oeq float %4995, 0.000000e+00
  %4997 = fcmp fast oeq float %4994, 0.000000e+00
  %4998 = or i1 %4997, %4996
  br i1 %4998, label %5028, label %4999

; <label>:4999                                    ; preds = %4972
  %5000 = fsub fast float -0.000000e+00, %59
  %5001 = fsub fast float -0.000000e+00, %57
  %5002 = call float @dx.op.unary.f32(i32 24, float %4995)  ; Sqrt(value)
  %5003 = fdiv fast float %5002, %4994
  %5004 = fcmp fast ogt float %5003, 0x3FFB6F8900000000
  %5005 = select i1 %5004, float 0x3FFB6F8900000000, float %5003
  %5006 = fmul fast float %5005, 0x3FE8A23460000000
  %5007 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  %5008 = call float @dx.op.binary.f32(i32 35, float %5005, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5009 = fmul fast float %5007, %4994
  %5010 = fmul fast float %5008, 0x3FF279A740000000
  %5011 = fadd fast float %5010, -1.000000e+00
  %5012 = call float @dx.op.dot3.f32(i32 55, float %5000, float %5001, float %58, float %5000, float %5001, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %5013 = call float @dx.op.unary.f32(i32 25, float %5012)  ; Rsqrt(value)
  %5014 = fmul fast float %5013, %5000
  %5015 = fmul fast float %5013, %5001
  %5016 = fmul fast float %5013, %58
  %5017 = fmul fast float %5011, %5011
  %5018 = fsub fast float 1.000000e+00, %5017
  %5019 = fmul fast float %5008, 0x40005F8BE0000000
  %5020 = fsub fast float 0x400C5BF8A0000000, %5019
  %5021 = fdiv fast float %5009, %5020
  %5022 = fmul fast float %5021, 0x3FEE31C3C0000000
  %5023 = fmul fast float %5022, %5018
  %5024 = fmul fast float %5008, 0x3FDACB7480000000
  %5025 = fadd fast float %5024, 0xBFD7347680000000
  %5026 = fmul fast float %5025, %5021
  %5027 = fmul fast float %5026, %5018
  br label %5028

; <label>:5028                                    ; preds = %4999, %4972
  %5029 = phi float [ %5014, %4999 ], [ 0.000000e+00, %4972 ]
  %5030 = phi float [ %5015, %4999 ], [ 0.000000e+00, %4972 ]
  %5031 = phi float [ %5016, %4999 ], [ 0.000000e+00, %4972 ]
  %5032 = phi float [ %5023, %4999 ], [ 0.000000e+00, %4972 ]
  %5033 = phi float [ %5027, %4999 ], [ 0.000000e+00, %4972 ]
  %5034 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5030, float %5031, float %4917, float %4918, float %4919)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = fmul fast float %5034, %5034
  %5036 = fmul fast float %5035, 0x3FEE471020000000
  %5037 = fadd fast float %5036, 0xBFD42F6020000000
  %5038 = fmul fast float %4994, 0x3FD20DD760000000
  %5039 = fmul fast float %5037, %5033
  %5040 = fmul fast float %5032, 0x3FDF454380000000
  %5041 = fmul fast float %5040, %5034
  %5042 = fadd fast float %5041, %5038
  %5043 = fadd fast float %5042, %5039
  %5044 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5030, float %5031, float %4930, float %4931, float %4932)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = fmul fast float %5044, 0x3FDF454380000000
  %5046 = fmul fast float %5044, %5044
  %5047 = fmul fast float %5046, 0x3FEE471020000000
  %5048 = fadd fast float %5047, 0xBFD42F6020000000
  %5049 = call float @dx.op.dot3.f32(i32 55, float %4994, float %5032, float %5033, float 0x3FD20DD760000000, float %5045, float %5048)  ; Dot3(ax,ay,az,bx,by,bz)
  %5050 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5051 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5052 = fcmp fast oeq float %5051, 0.000000e+00
  %5053 = fcmp fast oeq float %5050, 0.000000e+00
  %5054 = or i1 %5053, %5052
  br i1 %5054, label %5084, label %5055

; <label>:5055                                    ; preds = %5028
  %5056 = fsub fast float -0.000000e+00, %55
  %5057 = fsub fast float -0.000000e+00, %53
  %5058 = call float @dx.op.unary.f32(i32 24, float %5051)  ; Sqrt(value)
  %5059 = fdiv fast float %5058, %5050
  %5060 = fcmp fast ogt float %5059, 0x3FFB6F8900000000
  %5061 = select i1 %5060, float 0x3FFB6F8900000000, float %5059
  %5062 = fmul fast float %5061, 0x3FE8A23460000000
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = call float @dx.op.binary.f32(i32 35, float %5061, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5065 = fmul fast float %5063, %5050
  %5066 = fmul fast float %5064, 0x3FF279A740000000
  %5067 = fadd fast float %5066, -1.000000e+00
  %5068 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %54, float %5056, float %5057, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = call float @dx.op.unary.f32(i32 25, float %5068)  ; Rsqrt(value)
  %5070 = fmul fast float %5069, %5056
  %5071 = fmul fast float %5069, %5057
  %5072 = fmul fast float %5069, %54
  %5073 = fmul fast float %5067, %5067
  %5074 = fsub fast float 1.000000e+00, %5073
  %5075 = fmul fast float %5064, 0x40005F8BE0000000
  %5076 = fsub fast float 0x400C5BF8A0000000, %5075
  %5077 = fdiv fast float %5065, %5076
  %5078 = fmul fast float %5077, 0x3FEE31C3C0000000
  %5079 = fmul fast float %5078, %5074
  %5080 = fmul fast float %5064, 0x3FDACB7480000000
  %5081 = fadd fast float %5080, 0xBFD7347680000000
  %5082 = fmul fast float %5081, %5077
  %5083 = fmul fast float %5082, %5074
  br label %5084

; <label>:5084                                    ; preds = %5055, %5028
  %5085 = phi float [ %5070, %5055 ], [ 0.000000e+00, %5028 ]
  %5086 = phi float [ %5071, %5055 ], [ 0.000000e+00, %5028 ]
  %5087 = phi float [ %5072, %5055 ], [ 0.000000e+00, %5028 ]
  %5088 = phi float [ %5079, %5055 ], [ 0.000000e+00, %5028 ]
  %5089 = phi float [ %5083, %5055 ], [ 0.000000e+00, %5028 ]
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5087, float %4917, float %4918, float %4919)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = fmul fast float %5090, %5090
  %5092 = fmul fast float %5091, 0x3FEE471020000000
  %5093 = fadd fast float %5092, 0xBFD42F6020000000
  %5094 = fmul fast float %5050, 0x3FD20DD760000000
  %5095 = fmul fast float %5093, %5089
  %5096 = fmul fast float %5088, 0x3FDF454380000000
  %5097 = fmul fast float %5096, %5090
  %5098 = fadd fast float %5097, %5094
  %5099 = fadd fast float %5098, %5095
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5087, float %4930, float %4931, float %4932)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = fmul fast float %5100, 0x3FDF454380000000
  %5102 = fmul fast float %5100, %5100
  %5103 = fmul fast float %5102, 0x3FEE471020000000
  %5104 = fadd fast float %5103, 0xBFD42F6020000000
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5088, float %5089, float 0x3FD20DD760000000, float %5101, float %5104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.binary.f32(i32 35, float %4987, float 0.000000e+00)  ; FMax(a,b)
  %5107 = call float @dx.op.binary.f32(i32 35, float %5043, float 0.000000e+00)  ; FMax(a,b)
  %5108 = call float @dx.op.binary.f32(i32 35, float %5099, float 0.000000e+00)  ; FMax(a,b)
  %5109 = call float @dx.op.binary.f32(i32 35, float %4993, float 0.000000e+00)  ; FMax(a,b)
  %5110 = call float @dx.op.binary.f32(i32 35, float %5049, float 0.000000e+00)  ; FMax(a,b)
  %5111 = call float @dx.op.binary.f32(i32 35, float %5105, float 0.000000e+00)  ; FMax(a,b)
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 0
  %5114 = call float @dx.op.binary.f32(i32 36, float %4911, float %5113)  ; FMin(a,b)
  %5115 = fsub fast float 1.000000e+00, %4933
  %5116 = fmul fast float %5114, %5115
  %5117 = fsub fast float 1.000000e+00, %5116
  %5118 = bitcast float %5117 to i32
  %5119 = sub nsw i32 2129859010, %5118
  %5120 = bitcast i32 %5119 to float
  %5121 = call float @dx.op.binary.f32(i32 36, float %4912, float %5113)  ; FMin(a,b)
  %5122 = fmul fast float %5121, %5115
  %5123 = fsub fast float 1.000000e+00, %5122
  %5124 = bitcast float %5123 to i32
  %5125 = sub nsw i32 2129859010, %5124
  %5126 = bitcast i32 %5125 to float
  %5127 = call float @dx.op.binary.f32(i32 36, float %4913, float %5113)  ; FMin(a,b)
  %5128 = fmul fast float %5127, %5115
  %5129 = fsub fast float 1.000000e+00, %5128
  %5130 = bitcast float %5129 to i32
  %5131 = sub nsw i32 2129859010, %5130
  %5132 = bitcast i32 %5131 to float
  %5133 = fmul fast float %5106, %4933
  %5134 = fmul fast float %5133, %5120
  %5135 = fmul fast float %5107, %4933
  %5136 = fmul fast float %5135, %5126
  %5137 = fmul fast float %5108, %4933
  %5138 = fmul fast float %5137, %5132
  %5139 = call float @dx.op.binary.f32(i32 36, float %4914, float %5113)  ; FMin(a,b)
  %5140 = fmul fast float %5139, %5115
  %5141 = fsub fast float 1.000000e+00, %5140
  %5142 = bitcast float %5141 to i32
  %5143 = sub nsw i32 2129859010, %5142
  %5144 = bitcast i32 %5143 to float
  %5145 = call float @dx.op.binary.f32(i32 36, float %4915, float %5113)  ; FMin(a,b)
  %5146 = fmul fast float %5145, %5115
  %5147 = fsub fast float 1.000000e+00, %5146
  %5148 = bitcast float %5147 to i32
  %5149 = sub nsw i32 2129859010, %5148
  %5150 = bitcast i32 %5149 to float
  %5151 = call float @dx.op.binary.f32(i32 36, float %4922, float %5113)  ; FMin(a,b)
  %5152 = fmul fast float %5151, %5115
  %5153 = fsub fast float 1.000000e+00, %5152
  %5154 = bitcast float %5153 to i32
  %5155 = sub nsw i32 2129859010, %5154
  %5156 = bitcast i32 %5155 to float
  %5157 = fmul fast float %5109, %4933
  %5158 = fmul fast float %5157, %5144
  %5159 = fmul fast float %5110, %4933
  %5160 = fmul fast float %5159, %5150
  %5161 = fmul fast float %5111, %4933
  %5162 = fmul fast float %5161, %5156
  %5163 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5136, float %5138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = select i1 %205, float 0.000000e+00, float %5134
  %5165 = select i1 %205, float %5163, float %5136
  %5166 = select i1 %205, float 0.000000e+00, float %5138
  %5167 = call float @dx.op.dot3.f32(i32 55, float %5158, float %5160, float %5162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5168 = select i1 %205, float 0.000000e+00, float %5158
  %5169 = select i1 %205, float %5167, float %5160
  %5170 = select i1 %205, float 0.000000e+00, float %5162
  %5171 = fmul fast float %4924, 9.843750e-01
  %5172 = fmul fast float %4920, 9.843750e-01
  %5173 = fadd fast float %5171, 7.812500e-03
  %5174 = fadd fast float %5172, 7.812500e-03
  %5175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5173, float %5174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5176 = extractvalue %dx.types.ResRet.f32 %5175, 2
  %5177 = extractvalue %dx.types.ResRet.f32 %5175, 3
  %5178 = fmul fast float %5176, %4914
  %5179 = fmul fast float %5176, %4915
  %5180 = fmul fast float %5176, %4922
  %5181 = fadd fast float %5178, %5177
  %5182 = fadd fast float %5179, %5177
  %5183 = fadd fast float %5180, %5177
  %5184 = fcmp fast ogt float %3716, 0.000000e+00
  br i1 %5184, label %5185, label %5211

; <label>:5185                                    ; preds = %5084
  %5186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3716, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5187 = extractvalue %dx.types.ResRet.f32 %5186, 0
  %5188 = extractvalue %dx.types.ResRet.f32 %5186, 1
  %5189 = extractvalue %dx.types.ResRet.f32 %5186, 2
  %5190 = fadd fast float %5187, -5.000000e-01
  %5191 = fadd fast float %5188, -5.000000e-01
  %5192 = fadd fast float %5189, -5.000000e-01
  %5193 = fsub fast float 1.000000e+00, %4914
  %5194 = fsub fast float 1.000000e+00, %4915
  %5195 = fsub fast float 1.000000e+00, %4922
  %5196 = fmul fast float %4914, 4.000000e+00
  %5197 = fmul fast float %5196, %5193
  %5198 = fmul fast float %5197, %5190
  %5199 = fmul fast float %4915, 4.000000e+00
  %5200 = fmul fast float %5199, %5194
  %5201 = fmul fast float %5200, %5191
  %5202 = fmul fast float %4922, 4.000000e+00
  %5203 = fmul fast float %5202, %5195
  %5204 = fmul fast float %5203, %5192
  %5205 = fadd fast float %5198, %5181
  %5206 = fadd fast float %5201, %5182
  %5207 = fadd fast float %5204, %5183
  %5208 = call float @dx.op.unary.f32(i32 7, float %5205)  ; Saturate(value)
  %5209 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5210 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  br label %5211

; <label>:5211                                    ; preds = %5185, %5084
  %5212 = phi float [ %5208, %5185 ], [ %5181, %5084 ]
  %5213 = phi float [ %5209, %5185 ], [ %5182, %5084 ]
  %5214 = phi float [ %5210, %5185 ], [ %5183, %5084 ]
  %5215 = call float @dx.op.binary.f32(i32 35, float %5213, float %5214)  ; FMax(a,b)
  %5216 = call float @dx.op.binary.f32(i32 35, float %5212, float %5215)  ; FMax(a,b)
  %5217 = fsub fast float 1.000000e+00, %5216
  %5218 = fmul fast float %5217, %5164
  %5219 = fmul fast float %5217, %5165
  %5220 = fmul fast float %5217, %5166
  %5221 = call float @dx.op.dot3.f32(i32 55, float %4911, float %4912, float %4913, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = fcmp fast ogt float %5221, 0x3E7FF19E20000000
  %5223 = fdiv fast float 1.000000e+00, %5221
  %5224 = select i1 %5222, float %5223, float 0.000000e+00
  %5225 = fmul fast float %5224, %4911
  %5226 = fmul fast float %5224, %4912
  %5227 = fmul fast float %5224, %4913
  %5228 = fadd fast float %5225, -1.000000e+00
  %5229 = fadd fast float %5226, -1.000000e+00
  %5230 = fadd fast float %5227, -1.000000e+00
  %5231 = fmul fast float %5228, 5.000000e-01
  %5232 = fmul fast float %5229, 5.000000e-01
  %5233 = fmul fast float %5230, 5.000000e-01
  %5234 = fadd fast float %5231, 1.000000e+00
  %5235 = fadd fast float %5232, 1.000000e+00
  %5236 = fadd fast float %5233, 1.000000e+00
  %5237 = fmul fast float %5212, %5168
  %5238 = fmul fast float %5213, %5169
  %5239 = fmul fast float %5214, %5170
  %5240 = fsub fast float 1.000000e+00, %4924
  %5241 = bitcast float %5240 to i32
  %5242 = sitofp i32 %5241 to float
  %5243 = fmul fast float %5242, 5.000000e+00
  %5244 = fadd fast float %5243, 0xC1EFBF8940000000
  %5245 = fptosi float %5244 to i32
  %5246 = bitcast i32 %5245 to float
  %5247 = fmul fast float %5246, %3717
  %5248 = fmul fast float %5164, %5247
  %5249 = fmul fast float %5248, %5217
  %5250 = fmul fast float %5249, %5234
  %5251 = fmul fast float %5165, %5247
  %5252 = fmul fast float %5251, %5217
  %5253 = fmul fast float %5252, %5235
  %5254 = fmul fast float %5166, %5247
  %5255 = fmul fast float %5254, %5217
  %5256 = fmul fast float %5255, %5236
  %5257 = fmul fast float %5218, %3713
  %5258 = fmul fast float %5219, %3713
  %5259 = fmul fast float %5220, %3713
  %5260 = fadd fast float %5237, %3709
  %5261 = fadd fast float %5260, %5250
  %5262 = fmul fast float %5261, %3713
  %5263 = fadd fast float %5238, %3710
  %5264 = fadd fast float %5263, %5253
  %5265 = fmul fast float %5264, %3713
  %5266 = fadd fast float %5239, %3711
  %5267 = fadd fast float %5266, %5256
  %5268 = fmul fast float %5267, %3713
  %5269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.f32 %5269, 3
  %5271 = fcmp fast oeq float %5270, 0.000000e+00
  br i1 %5271, label %5499, label %5272

; <label>:5272                                    ; preds = %5211
  %5273 = extractvalue %dx.types.CBufRet.f32 %5269, 0
  %5274 = extractvalue %dx.types.CBufRet.f32 %5269, 1
  %5275 = extractvalue %dx.types.CBufRet.f32 %5269, 2
  %5276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.f32 %5276, 0
  %5278 = extractvalue %dx.types.CBufRet.f32 %5276, 1
  %5279 = extractvalue %dx.types.CBufRet.f32 %5276, 2
  %5280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.f32 %5280, 0
  %5282 = extractvalue %dx.types.CBufRet.f32 %5280, 1
  %5283 = call float @dx.op.dot3.f32(i32 55, float %5277, float %5278, float %5279, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5284 = select i1 %205, float %5281, float %5277
  %5285 = select i1 %205, float %5283, float %5278
  %5286 = select i1 %205, float %5282, float %5279
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 1
  %5289 = fcmp fast une float %5288, 0.000000e+00
  br i1 %5289, label %5290, label %5307

; <label>:5290                                    ; preds = %5272
  %5291 = fptoui float %83 to i32
  %5292 = fptoui float %84 to i32
  %5293 = lshr i32 %5291, 4
  %5294 = lshr i32 %5292, 4
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 0
  %5297 = fptoui float %5296 to i32
  %5298 = add i32 %5297, 15
  %5299 = lshr i32 %5298, 4
  %5300 = mul i32 %5299, %5294
  %5301 = add i32 %5300, %5293
  %5302 = shl i32 %5301, 3
  %5303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5302, i32 undef)  ; BufferLoad(srv,index,wot)
  %5304 = extractvalue %dx.types.ResRet.i32 %5303, 0
  %5305 = and i32 %5304, -268435456
  %5306 = icmp eq i32 %5305, -1342177280
  br i1 %5306, label %5317, label %5307

; <label>:5307                                    ; preds = %5290, %5272
  %5308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.f32 %5308, 2
  %5310 = extractvalue %dx.types.CBufRet.f32 %5308, 3
  %5311 = fmul fast float %5309, %83
  %5312 = fmul fast float %5310, %84
  %5313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5311, float %5312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5314 = extractvalue %dx.types.ResRet.f32 %5313, 0
  %5315 = extractvalue %dx.types.ResRet.f32 %5313, 1
  %5316 = extractvalue %dx.types.ResRet.f32 %5313, 2
  br label %5317

; <label>:5317                                    ; preds = %5307, %5290
  %5318 = phi float [ %5314, %5307 ], [ 0.000000e+00, %5290 ]
  %5319 = phi float [ %5315, %5307 ], [ 0.000000e+00, %5290 ]
  %5320 = phi float [ %5316, %5307 ], [ 0.000000e+00, %5290 ]
  %5321 = call float @dx.op.binary.f32(i32 36, float %5319, float %5320)  ; FMin(a,b)
  %5322 = call float @dx.op.binary.f32(i32 36, float %5318, float %5321)  ; FMin(a,b)
  %5323 = fcmp fast ogt float %5322, 0.000000e+00
  br i1 %5323, label %5324, label %5499, !dx.controlflow.hints !76

; <label>:5324                                    ; preds = %5317
  %5325 = fmul fast float %5318, %5284
  %5326 = fmul fast float %5319, %5285
  %5327 = fmul fast float %5320, %5286
  %5328 = fsub fast float %5273, %4910
  %5329 = fsub fast float %5274, %4909
  %5330 = fsub fast float %5275, %4908
  %5331 = call float @dx.op.dot3.f32(i32 55, float %5328, float %5329, float %5330, float %5328, float %5329, float %5330)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = call float @dx.op.unary.f32(i32 25, float %5331)  ; Rsqrt(value)
  %5333 = fmul fast float %5332, %5328
  %5334 = fmul fast float %5332, %5329
  %5335 = fmul fast float %5332, %5330
  %5336 = call float @dx.op.dot3.f32(i32 55, float %5273, float %5274, float %5275, float %4917, float %4918, float %4919)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = call float @dx.op.dot3.f32(i32 55, float %4907, float %4906, float %4905, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5339 = fmul fast float %5338, %5338
  %5340 = fmul fast float %5339, %4937
  %5341 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5342 = fmul fast float %5341, %5338
  %5343 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = fmul fast float %5343, %5343
  %5345 = call float @dx.op.unary.f32(i32 6, float %5336)  ; FAbs(value)
  %5346 = fsub fast float 1.000000e+00, %4920
  %5347 = call float @dx.op.binary.f32(i32 35, float %5346, float 0x3F847AE140000000)  ; FMax(a,b)
  %5348 = fmul fast float %5347, %5347
  %5349 = fmul fast float %5348, %5348
  %5350 = fsub fast float 1.000000e+00, %5349
  %5351 = fmul fast float %4924, %4924
  %5352 = fmul fast float %5351, %5350
  %5353 = fadd fast float %5352, %5349
  %5354 = bitcast float %5353 to i32
  %5355 = ashr i32 %5354, 1
  %5356 = add nsw i32 %5355, 532487669
  %5357 = bitcast i32 %5356 to float
  %5358 = fadd fast float %5357, %4924
  %5359 = fmul fast float %5349, %5344
  %5360 = fsub fast float 1.000000e+00, %5344
  %5361 = fadd fast float %5360, %5359
  %5362 = fmul fast float %5345, %5345
  %5363 = fmul fast float %5362, %5350
  %5364 = fadd fast float %5363, %5349
  %5365 = bitcast float %5364 to i32
  %5366 = ashr i32 %5365, 1
  %5367 = add nsw i32 %5366, 532487669
  %5368 = bitcast i32 %5367 to float
  %5369 = fadd fast float %5368, %5345
  %5370 = fmul fast float %5361, %5361
  %5371 = fmul fast float %5370, %5358
  %5372 = fmul fast float %5371, %5369
  %5373 = fdiv fast float 0x3FF0A00000000000, %5372
  %5374 = fmul fast float %5373, %5349
  %5375 = call float @dx.op.unary.f32(i32 6, float %5337)  ; FAbs(value)
  %5376 = fsub fast float 1.000000e+00, %5375
  %5377 = bitcast float %5376 to i32
  %5378 = sitofp i32 %5377 to float
  %5379 = fmul fast float %5378, 5.000000e+00
  %5380 = fadd fast float %5379, 0xC1EFBF8940000000
  %5381 = fptosi float %5380 to i32
  %5382 = bitcast i32 %5381 to float
  %5383 = fsub fast float 1.000000e+00, %4914
  %5384 = fsub fast float 1.000000e+00, %4915
  %5385 = fsub fast float 1.000000e+00, %4922
  %5386 = fmul fast float %5382, %5383
  %5387 = fmul fast float %5382, %5384
  %5388 = fmul fast float %5382, %5385
  %5389 = fadd fast float %5386, %4914
  %5390 = fadd fast float %5387, %4915
  %5391 = fadd fast float %5388, %4922
  br i1 %5184, label %5392, label %5415

; <label>:5392                                    ; preds = %5324
  %5393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3716, float %5375, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = extractvalue %dx.types.ResRet.f32 %5393, 1
  %5396 = extractvalue %dx.types.ResRet.f32 %5393, 2
  %5397 = fadd fast float %5394, -5.000000e-01
  %5398 = fadd fast float %5395, -5.000000e-01
  %5399 = fadd fast float %5396, -5.000000e-01
  %5400 = fmul fast float %4914, 4.000000e+00
  %5401 = fmul fast float %5400, %5383
  %5402 = fmul fast float %5401, %5397
  %5403 = fmul fast float %4915, 4.000000e+00
  %5404 = fmul fast float %5403, %5384
  %5405 = fmul fast float %5404, %5398
  %5406 = fmul fast float %4922, 4.000000e+00
  %5407 = fmul fast float %5406, %5385
  %5408 = fmul fast float %5407, %5399
  %5409 = fadd fast float %5402, %5389
  %5410 = fadd fast float %5405, %5390
  %5411 = fadd fast float %5408, %5391
  %5412 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5413 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5414 = call float @dx.op.unary.f32(i32 7, float %5411)  ; Saturate(value)
  br label %5415

; <label>:5415                                    ; preds = %5392, %5324
  %5416 = phi float [ %5412, %5392 ], [ %5389, %5324 ]
  %5417 = phi float [ %5413, %5392 ], [ %5390, %5324 ]
  %5418 = phi float [ %5414, %5392 ], [ %5391, %5324 ]
  %5419 = fmul fast float %5336, 9.843750e-01
  %5420 = fadd fast float %5419, 7.812500e-03
  %5421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5420, float %5174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 2
  %5423 = extractvalue %dx.types.ResRet.f32 %5421, 3
  %5424 = fmul fast float %5422, %4914
  %5425 = fmul fast float %5422, %4915
  %5426 = fmul fast float %5422, %4922
  %5427 = fadd fast float %5424, %5423
  %5428 = fadd fast float %5425, %5423
  %5429 = fadd fast float %5426, %5423
  br i1 %5184, label %5430, label %5453

; <label>:5430                                    ; preds = %5415
  %5431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3716, float %5336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.ResRet.f32 %5431, 1
  %5434 = extractvalue %dx.types.ResRet.f32 %5431, 2
  %5435 = fadd fast float %5432, -5.000000e-01
  %5436 = fadd fast float %5433, -5.000000e-01
  %5437 = fadd fast float %5434, -5.000000e-01
  %5438 = fmul fast float %4914, 4.000000e+00
  %5439 = fmul fast float %5438, %5383
  %5440 = fmul fast float %5439, %5435
  %5441 = fmul fast float %4915, 4.000000e+00
  %5442 = fmul fast float %5441, %5384
  %5443 = fmul fast float %5442, %5436
  %5444 = fmul fast float %4922, 4.000000e+00
  %5445 = fmul fast float %5444, %5385
  %5446 = fmul fast float %5445, %5437
  %5447 = fadd fast float %5440, %5427
  %5448 = fadd fast float %5443, %5428
  %5449 = fadd fast float %5446, %5429
  %5450 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5451 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5452 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  br label %5453

; <label>:5453                                    ; preds = %5430, %5415
  %5454 = phi float [ %5450, %5430 ], [ %5427, %5415 ]
  %5455 = phi float [ %5451, %5430 ], [ %5428, %5415 ]
  %5456 = phi float [ %5452, %5430 ], [ %5429, %5415 ]
  %5457 = call float @dx.op.binary.f32(i32 35, float %5455, float %5456)  ; FMax(a,b)
  %5458 = call float @dx.op.binary.f32(i32 35, float %5454, float %5457)  ; FMax(a,b)
  %5459 = fsub fast float 1.000000e+00, %5458
  %5460 = fmul fast float %5416, %5374
  %5461 = fmul fast float %5417, %5374
  %5462 = fmul fast float %5418, %5374
  %5463 = fsub fast float 1.000000e+00, %5337
  %5464 = bitcast float %5463 to i32
  %5465 = sitofp i32 %5464 to float
  %5466 = fmul fast float %5465, 5.000000e+00
  %5467 = fadd fast float %5466, 0xC1EFBF8940000000
  %5468 = fptosi float %5467 to i32
  %5469 = bitcast i32 %5468 to float
  %5470 = fmul fast float %5469, %3717
  %5471 = fmul fast float %5459, %5470
  %5472 = fmul fast float %5471, %5234
  %5473 = fmul fast float %5471, %5235
  %5474 = fmul fast float %5471, %5236
  %5475 = fadd fast float %5472, %5460
  %5476 = fadd fast float %5473, %5461
  %5477 = fadd fast float %5474, %5462
  %5478 = fmul fast float %5342, %5325
  %5479 = fmul fast float %5478, %5459
  %5480 = fmul fast float %5342, %5326
  %5481 = fmul fast float %5480, %5459
  %5482 = fmul fast float %5342, %5327
  %5483 = fmul fast float %5482, %5459
  %5484 = fmul fast float %5478, %5475
  %5485 = fmul fast float %5480, %5476
  %5486 = fmul fast float %5482, %5477
  %5487 = fadd fast float %5479, %5218
  %5488 = fmul fast float %5487, %3713
  %5489 = fadd fast float %5481, %5219
  %5490 = fmul fast float %5489, %3713
  %5491 = fadd fast float %5483, %5220
  %5492 = fmul fast float %5491, %3713
  %5493 = fadd fast float %5484, %5261
  %5494 = fmul fast float %5493, %3713
  %5495 = fadd fast float %5485, %5264
  %5496 = fmul fast float %5495, %3713
  %5497 = fadd fast float %5486, %5267
  %5498 = fmul fast float %5497, %3713
  br label %5499

; <label>:5499                                    ; preds = %5453, %5317, %5211
  %5500 = phi float [ %5262, %5211 ], [ %5262, %5317 ], [ %5494, %5453 ]
  %5501 = phi float [ %5265, %5211 ], [ %5265, %5317 ], [ %5496, %5453 ]
  %5502 = phi float [ %5268, %5211 ], [ %5268, %5317 ], [ %5498, %5453 ]
  %5503 = phi float [ %5257, %5211 ], [ %5257, %5317 ], [ %5488, %5453 ]
  %5504 = phi float [ %5258, %5211 ], [ %5258, %5317 ], [ %5490, %5453 ]
  %5505 = phi float [ %5259, %5211 ], [ %5259, %5317 ], [ %5492, %5453 ]
  %5506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.i32 %5506, 0
  %5508 = icmp eq i32 %5507, 0
  br i1 %5508, label %5943, label %5509

; <label>:5509                                    ; preds = %5499
  %5510 = fptoui float %83 to i32
  %5511 = fptoui float %84 to i32
  %5512 = lshr i32 %5510, 4
  %5513 = lshr i32 %5511, 4
  %5514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.i32 %5514, 0
  %5516 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5513, i32 %5515, i32 %5512)  ; UMad(a,b,c)
  %5517 = add nsw i32 %5507, -1
  %5518 = call i32 @dx.op.binary.i32(i32 37, i32 %5517, i32 0)  ; IMax(a,b)
  %5519 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %5520 = fptoui float %5519 to i32
  %5521 = lshr i32 %5520, 5
  %5522 = call i32 @dx.op.binary.i32(i32 40, i32 %5521, i32 8191)  ; UMin(a,b)
  %5523 = shl i32 %5522, 2
  %5524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5523, i32 undef)  ; BufferLoad(srv,index,wot)
  %5525 = extractvalue %dx.types.ResRet.i32 %5524, 0
  %5526 = lshr i32 %5525, 16
  %5527 = and i32 %5525, 65535
  %5528 = lshr i32 %5525, 21
  %5529 = lshr i32 %5527, 5
  %5530 = call i32 @dx.op.binary.i32(i32 40, i32 %5529, i32 %5518)  ; UMin(a,b)
  %5531 = icmp ugt i32 %5528, %5530
  br i1 %5531, label %5943, label %5532

; <label>:5532                                    ; preds = %5509
  br label %5533

; <label>:5533                                    ; preds = %5933, %5532
  %5534 = phi i32 [ %5940, %5933 ], [ %5528, %5532 ]
  %5535 = phi float [ %5934, %5933 ], [ %5500, %5532 ]
  %5536 = phi float [ %5935, %5933 ], [ %5501, %5532 ]
  %5537 = phi float [ %5936, %5933 ], [ %5502, %5532 ]
  %5538 = phi float [ %5937, %5933 ], [ %5503, %5532 ]
  %5539 = phi float [ %5938, %5933 ], [ %5504, %5532 ]
  %5540 = phi float [ %5939, %5933 ], [ %5505, %5532 ]
  %5541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5542 = extractvalue %dx.types.CBufRet.i32 %5541, 0
  %5543 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5516, i32 %5542, i32 %5534)  ; UMad(a,b,c)
  %5544 = shl i32 %5543, 2
  %5545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5544, i32 undef)  ; BufferLoad(srv,index,wot)
  %5546 = extractvalue %dx.types.ResRet.i32 %5545, 0
  %5547 = shl i32 %5534, 5
  %5548 = sub nsw i32 %5526, %5547
  %5549 = call i32 @dx.op.binary.i32(i32 37, i32 %5548, i32 0)  ; IMax(a,b)
  %5550 = call i32 @dx.op.binary.i32(i32 38, i32 %5549, i32 31)  ; IMin(a,b)
  %5551 = sub nsw i32 1, %5526
  %5552 = add nsw i32 %5551, %5527
  %5553 = call i32 @dx.op.binary.i32(i32 37, i32 %5552, i32 0)  ; IMax(a,b)
  %5554 = call i32 @dx.op.binary.i32(i32 38, i32 %5553, i32 32)  ; IMin(a,b)
  %5555 = and i32 %5554, 31
  %5556 = shl i32 -1, %5555
  %5557 = xor i32 %5556, -1
  %5558 = and i32 %5550, 31
  %5559 = shl i32 %5557, %5558
  %5560 = icmp eq i32 %5554, 32
  %5561 = select i1 %5560, i32 -1, i32 %5559
  %5562 = and i32 %5561, %5546
  %5563 = icmp eq i32 %5562, 0
  br i1 %5563, label %5933, label %5564

; <label>:5564                                    ; preds = %5533
  br label %5565

; <label>:5565                                    ; preds = %5645, %5564
  %5566 = phi i32 [ %5577, %5645 ], [ %5562, %5564 ]
  %5567 = phi float [ %5646, %5645 ], [ %5535, %5564 ]
  %5568 = phi float [ %5647, %5645 ], [ %5536, %5564 ]
  %5569 = phi float [ %5648, %5645 ], [ %5537, %5564 ]
  %5570 = phi float [ %5649, %5645 ], [ %5538, %5564 ]
  %5571 = phi float [ %5650, %5645 ], [ %5539, %5564 ]
  %5572 = phi float [ %5651, %5645 ], [ %5540, %5564 ]
  %5573 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5566)  ; FirstbitLo(value)
  %5574 = add i32 %5573, %5547
  %5575 = and i32 %5573, 31
  %5576 = shl i32 1, %5575
  %5577 = xor i32 %5576, %5566
  %5578 = mul i32 %5574, 112
  %5579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5578, i32 undef)  ; BufferLoad(srv,index,wot)
  %5580 = extractvalue %dx.types.ResRet.f32 %5579, 0
  %5581 = extractvalue %dx.types.ResRet.f32 %5579, 1
  %5582 = extractvalue %dx.types.ResRet.f32 %5579, 2
  %5583 = or i32 %5578, 12
  %5584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5583, i32 undef)  ; BufferLoad(srv,index,wot)
  %5585 = extractvalue %dx.types.ResRet.f32 %5584, 0
  %5586 = add i32 %5578, 44
  %5587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5586, i32 undef)  ; BufferLoad(srv,index,wot)
  %5588 = extractvalue %dx.types.ResRet.f32 %5587, 0
  %5589 = add i32 %5578, 48
  %5590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5589, i32 undef)  ; BufferLoad(srv,index,wot)
  %5591 = extractvalue %dx.types.ResRet.f32 %5590, 0
  %5592 = extractvalue %dx.types.ResRet.f32 %5590, 1
  %5593 = extractvalue %dx.types.ResRet.f32 %5590, 2
  %5594 = add i32 %5578, 80
  %5595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5594, i32 undef)  ; BufferLoad(srv,index,wot)
  %5596 = extractvalue %dx.types.ResRet.f32 %5595, 1
  %5597 = extractvalue %dx.types.ResRet.f32 %5595, 2
  %5598 = call float @dx.op.dot3.f32(i32 55, float %5580, float %5581, float %5582, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = select i1 %205, float %5596, float %5580
  %5600 = select i1 %205, float %5598, float %5581
  %5601 = select i1 %205, float %5597, float %5582
  %5602 = fsub fast float %5591, %166
  %5603 = fsub fast float %5592, %167
  %5604 = fsub fast float %5593, %168
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5604, float %5602, float %5603, float %5604)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = call float @dx.op.unary.f32(i32 24, float %5605)  ; Sqrt(value)
  %5607 = fdiv fast float 1.000000e+00, %5606
  %5608 = fmul fast float %5607, %5602
  %5609 = fmul fast float %5607, %5603
  %5610 = fmul fast float %5607, %5604
  %5611 = fadd fast float %5606, %5585
  %5612 = fdiv fast float 1.000000e+00, %5611
  %5613 = fmul float %5588, %5612
  %5614 = fmul float %5613, %5613
  %5615 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5616 = and i32 %5576, %5562
  %5617 = icmp eq i32 %5616, 0
  br i1 %5617, label %5640, label %5618, !dx.controlflow.hints !77

; <label>:5618                                    ; preds = %5565
  %5619 = lshr i32 %5510, 5
  %5620 = lshr i32 %5511, 5
  %5621 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5619, i32 %5620, i32 %5574, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5622 = extractvalue %dx.types.ResRet.i32 %5621, 0
  %5623 = and i32 %5622, 3
  %5624 = icmp eq i32 %5623, 0
  %5625 = select i1 %5624, float 1.000000e+00, float 0.000000e+00
  %5626 = icmp eq i32 %5623, 3
  br i1 %5626, label %5627, label %5640

; <label>:5627                                    ; preds = %5618
  %5628 = lshr i32 %5622, 10
  %5629 = and i32 %5628, 8160
  %5630 = and i32 %5511, 31
  %5631 = or i32 %5629, %5630
  %5632 = lshr i32 %5622, 1
  %5633 = and i32 %5632, 16352
  %5634 = and i32 %5510, 31
  %5635 = or i32 %5633, %5634
  %5636 = lshr i32 %5622, 23
  %5637 = and i32 %5636, 255
  %5638 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5635, i32 %5631, i32 %5637, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5639 = extractvalue %dx.types.ResRet.f32 %5638, 0
  br label %5640

; <label>:5640                                    ; preds = %5627, %5618, %5565
  %5641 = phi float [ %5639, %5627 ], [ %5625, %5618 ], [ 0.000000e+00, %5565 ]
  %5642 = call float @dx.op.binary.f32(i32 36, float %5641, float %5641)  ; FMin(a,b)
  %5643 = call float @dx.op.binary.f32(i32 36, float %5641, float %5642)  ; FMin(a,b)
  %5644 = fcmp fast ogt float %5643, 0.000000e+00
  br i1 %5644, label %5653, label %5645, !dx.controlflow.hints !78

; <label>:5645                                    ; preds = %5889, %5640
  %5646 = phi float [ %5567, %5640 ], [ %5929, %5889 ]
  %5647 = phi float [ %5568, %5640 ], [ %5930, %5889 ]
  %5648 = phi float [ %5569, %5640 ], [ %5931, %5889 ]
  %5649 = phi float [ %5570, %5640 ], [ %5923, %5889 ]
  %5650 = phi float [ %5571, %5640 ], [ %5924, %5889 ]
  %5651 = phi float [ %5572, %5640 ], [ %5925, %5889 ]
  %5652 = icmp eq i32 %5566, %5576
  br i1 %5652, label %5932, label %5565

; <label>:5653                                    ; preds = %5640
  %5654 = fmul fast float %5641, %5599
  %5655 = fmul fast float %5641, %5600
  %5656 = fmul fast float %5641, %5601
  %5657 = fsub fast float %5593, %4118
  %5658 = fcmp fast ogt float %5657, 0.000000e+00
  %5659 = fsub fast float %168, %4118
  %5660 = fcmp fast ogt float %5659, 0.000000e+00
  %5661 = xor i1 %5660, %5658
  %5662 = fsub fast float %4118, %5593
  %5663 = fmul fast float %5662, 2.000000e+00
  %5664 = fadd fast float %5663, %5593
  %5665 = select i1 %5661, float %5593, float %5664
  %5666 = fsub fast float %5665, %168
  %5667 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5666, float %5602, float %5603, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5668 = call float @dx.op.unary.f32(i32 25, float %5667)  ; Rsqrt(value)
  %5669 = fmul fast float %5668, %5602
  %5670 = fmul fast float %5668, %5603
  %5671 = fmul fast float %5668, %5666
  %5672 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4126)  ; Dot3(ax,ay,az,bx,by,bz)
  %5673 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5674 = fdiv fast float 1.000000e+00, %5673
  %5675 = fmul fast float %5674, %5672
  %5676 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5659, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = fcmp fast ogt float %5676, 0.000000e+00
  %5678 = fcmp fast olt float %5676, 0.000000e+00
  %5679 = zext i1 %5677 to i32
  %5680 = zext i1 %5678 to i32
  %5681 = sub nsw i32 %5679, %5680
  %5682 = sitofp i32 %5681 to float
  %5683 = fsub fast float %5665, %4118
  %5684 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5683, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5685 = fcmp fast ogt float %5684, 0.000000e+00
  %5686 = fcmp fast olt float %5684, 0.000000e+00
  %5687 = zext i1 %5685 to i32
  %5688 = zext i1 %5686 to i32
  %5689 = sub nsw i32 %5687, %5688
  %5690 = sitofp i32 %5689 to float
  %5691 = fcmp fast une float %5682, %5690
  br i1 %5691, label %5692, label %5702

; <label>:5692                                    ; preds = %5653
  %5693 = fmul fast float %5675, %5671
  %5694 = fmul fast float %5675, %5670
  %5695 = fmul fast float %5675, %5669
  %5696 = fmul fast float %5695, %5695
  %5697 = fmul fast float %5694, %5694
  %5698 = fadd fast float %5696, %5697
  %5699 = fmul fast float %5693, %5693
  %5700 = fadd fast float %5698, %5699
  %5701 = call float @dx.op.unary.f32(i32 24, float %5700)  ; Sqrt(value)
  br label %5714

; <label>:5702                                    ; preds = %5653
  %5703 = icmp slt i32 %5681, 0
  br i1 %5703, label %5704, label %5714

; <label>:5704                                    ; preds = %5702
  %5705 = fsub fast float %166, %5591
  %5706 = fsub fast float %167, %5592
  %5707 = fsub fast float %168, %5665
  %5708 = fmul fast float %5705, %5705
  %5709 = fmul fast float %5706, %5706
  %5710 = fadd fast float %5708, %5709
  %5711 = fmul fast float %5707, %5707
  %5712 = fadd fast float %5710, %5711
  %5713 = call float @dx.op.unary.f32(i32 24, float %5712)  ; Sqrt(value)
  br label %5714

; <label>:5714                                    ; preds = %5704, %5702, %5692
  %5715 = phi float [ %5701, %5692 ], [ %5713, %5704 ], [ 0.000000e+00, %5702 ]
  %5716 = and i1 %5660, %5658
  %5717 = fsub fast float -0.000000e+00, %5715
  %5718 = select i1 %5716, float -0.000000e+00, float %5717
  %5719 = fmul fast float %4119, 0x3FF7154760000000
  %5720 = fmul fast float %5719, %5718
  %5721 = fmul fast float %4120, 0x3FF7154760000000
  %5722 = fmul fast float %5721, %5718
  %5723 = fmul fast float %4121, 0x3FF7154760000000
  %5724 = fmul fast float %5723, %5718
  %5725 = call float @dx.op.unary.f32(i32 21, float %5720)  ; Exp(value)
  %5726 = call float @dx.op.unary.f32(i32 21, float %5722)  ; Exp(value)
  %5727 = call float @dx.op.unary.f32(i32 21, float %5724)  ; Exp(value)
  %5728 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5729 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5730 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5731 = fmul fast float %5654, %5728
  %5732 = fmul fast float %5655, %5729
  %5733 = fmul fast float %5656, %5730
  %5734 = fsub fast float %5608, %4910
  %5735 = fsub fast float %5609, %4909
  %5736 = fsub fast float %5610, %4908
  %5737 = call float @dx.op.dot3.f32(i32 55, float %5734, float %5735, float %5736, float %5734, float %5735, float %5736)  ; Dot3(ax,ay,az,bx,by,bz)
  %5738 = call float @dx.op.unary.f32(i32 25, float %5737)  ; Rsqrt(value)
  %5739 = fmul fast float %5738, %5734
  %5740 = fmul fast float %5738, %5735
  %5741 = fmul fast float %5738, %5736
  %5742 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5609, float %5610, float %4917, float %4918, float %4919)  ; Dot3(ax,ay,az,bx,by,bz)
  %5743 = call float @dx.op.dot3.f32(i32 55, float %4907, float %4906, float %4905, float %5739, float %5740, float %5741)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = call float @dx.op.unary.f32(i32 7, float %5742)  ; Saturate(value)
  %5745 = fmul fast float %5744, %5615
  %5746 = fmul fast float %5744, %5744
  %5747 = fmul fast float %5746, %4937
  %5748 = call float @dx.op.unary.f32(i32 7, float %5747)  ; Saturate(value)
  %5749 = fmul fast float %5745, %5748
  %5750 = bitcast float %5605 to i32
  %5751 = ashr i32 %5750, 1
  %5752 = sub nsw i32 1597463007, %5751
  %5753 = bitcast i32 %5752 to float
  %5754 = fmul fast float %5753, %5602
  %5755 = fmul fast float %5753, %5603
  %5756 = fmul fast float %5753, %5604
  %5757 = fsub fast float %5754, %4910
  %5758 = fsub fast float %5755, %4909
  %5759 = fsub fast float %5756, %4908
  %5760 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5758, float %5759, float %5757, float %5758, float %5759)  ; Dot3(ax,ay,az,bx,by,bz)
  %5761 = call float @dx.op.unary.f32(i32 25, float %5760)  ; Rsqrt(value)
  %5762 = fmul fast float %5757, %5761
  %5763 = fmul fast float %5758, %5761
  %5764 = fmul fast float %5759, %5761
  %5765 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %5762, float %5763, float %5764)  ; Dot3(ax,ay,az,bx,by,bz)
  %5766 = fmul fast float %5765, %5765
  %5767 = call float @dx.op.unary.f32(i32 6, float %5742)  ; FAbs(value)
  %5768 = fsub fast float 1.000000e+00, %4920
  %5769 = call float @dx.op.binary.f32(i32 35, float %5768, float 0x3F847AE140000000)  ; FMax(a,b)
  %5770 = fmul fast float %5769, %5769
  %5771 = fmul fast float %5770, %5770
  %5772 = fsub fast float 1.000000e+00, %5771
  %5773 = fmul fast float %4924, %4924
  %5774 = fmul fast float %5773, %5772
  %5775 = fadd fast float %5774, %5771
  %5776 = bitcast float %5775 to i32
  %5777 = ashr i32 %5776, 1
  %5778 = add nsw i32 %5777, 532487669
  %5779 = bitcast i32 %5778 to float
  %5780 = fadd fast float %5779, %4924
  %5781 = fmul fast float %5771, %5766
  %5782 = fsub fast float 1.000000e+00, %5766
  %5783 = fadd fast float %5782, %5781
  %5784 = fmul fast float %5767, %5767
  %5785 = fmul fast float %5784, %5772
  %5786 = fadd fast float %5785, %5771
  %5787 = bitcast float %5786 to i32
  %5788 = ashr i32 %5787, 1
  %5789 = add nsw i32 %5788, 532487669
  %5790 = bitcast i32 %5789 to float
  %5791 = fadd fast float %5790, %5767
  %5792 = fmul fast float %5783, %5783
  %5793 = fmul fast float %5792, %5780
  %5794 = fmul fast float %5793, %5791
  %5795 = fdiv fast float 1.000000e+00, %5794
  %5796 = bitcast float %5771 to i32
  %5797 = sitofp i32 %5796 to float
  %5798 = fmul fast float %5797, 0x3FE7F73180000000
  %5799 = fadd fast float %5798, 0x41AFE27C40000000
  %5800 = fptosi float %5799 to i32
  %5801 = bitcast i32 %5800 to float
  %5802 = fmul fast float %5588, 0x3FD80E9D60000000
  %5803 = fmul fast float %5802, %5753
  %5804 = fadd fast float %5801, %5803
  %5805 = bitcast float %5804 to i32
  %5806 = sub nsw i32 2129859010, %5805
  %5807 = bitcast i32 %5806 to float
  %5808 = fmul fast float %5771, %5795
  %5809 = fmul fast float %5808, %5801
  %5810 = fmul fast float %5809, %5807
  %5811 = call float @dx.op.unary.f32(i32 6, float %5743)  ; FAbs(value)
  %5812 = fsub fast float 1.000000e+00, %5811
  %5813 = bitcast float %5812 to i32
  %5814 = sitofp i32 %5813 to float
  %5815 = fmul fast float %5814, 5.000000e+00
  %5816 = fadd fast float %5815, 0xC1EFBF8940000000
  %5817 = fptosi float %5816 to i32
  %5818 = bitcast i32 %5817 to float
  %5819 = fsub fast float 1.000000e+00, %4914
  %5820 = fsub fast float 1.000000e+00, %4915
  %5821 = fsub fast float 1.000000e+00, %4922
  %5822 = fmul fast float %5818, %5819
  %5823 = fmul fast float %5818, %5820
  %5824 = fmul fast float %5818, %5821
  %5825 = fadd fast float %5822, %4914
  %5826 = fadd fast float %5823, %4915
  %5827 = fadd fast float %5824, %4922
  br i1 %5184, label %5828, label %5851

; <label>:5828                                    ; preds = %5714
  %5829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3716, float %5811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5830 = extractvalue %dx.types.ResRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.ResRet.f32 %5829, 1
  %5832 = extractvalue %dx.types.ResRet.f32 %5829, 2
  %5833 = fadd fast float %5830, -5.000000e-01
  %5834 = fadd fast float %5831, -5.000000e-01
  %5835 = fadd fast float %5832, -5.000000e-01
  %5836 = fmul fast float %4914, 4.000000e+00
  %5837 = fmul fast float %5836, %5819
  %5838 = fmul fast float %5837, %5833
  %5839 = fmul fast float %4915, 4.000000e+00
  %5840 = fmul fast float %5839, %5820
  %5841 = fmul fast float %5840, %5834
  %5842 = fmul fast float %4922, 4.000000e+00
  %5843 = fmul fast float %5842, %5821
  %5844 = fmul fast float %5843, %5835
  %5845 = fadd fast float %5838, %5825
  %5846 = fadd fast float %5841, %5826
  %5847 = fadd fast float %5844, %5827
  %5848 = call float @dx.op.unary.f32(i32 7, float %5845)  ; Saturate(value)
  %5849 = call float @dx.op.unary.f32(i32 7, float %5846)  ; Saturate(value)
  %5850 = call float @dx.op.unary.f32(i32 7, float %5847)  ; Saturate(value)
  br label %5851

; <label>:5851                                    ; preds = %5828, %5714
  %5852 = phi float [ %5848, %5828 ], [ %5825, %5714 ]
  %5853 = phi float [ %5849, %5828 ], [ %5826, %5714 ]
  %5854 = phi float [ %5850, %5828 ], [ %5827, %5714 ]
  %5855 = fmul fast float %5742, 9.843750e-01
  %5856 = fadd fast float %5855, 7.812500e-03
  %5857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5856, float %5174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5858 = extractvalue %dx.types.ResRet.f32 %5857, 2
  %5859 = extractvalue %dx.types.ResRet.f32 %5857, 3
  %5860 = fmul fast float %5858, %4914
  %5861 = fmul fast float %5858, %4915
  %5862 = fmul fast float %5858, %4922
  %5863 = fadd fast float %5860, %5859
  %5864 = fadd fast float %5861, %5859
  %5865 = fadd fast float %5862, %5859
  br i1 %5184, label %5866, label %5889

; <label>:5866                                    ; preds = %5851
  %5867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3716, float %5742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5868 = extractvalue %dx.types.ResRet.f32 %5867, 0
  %5869 = extractvalue %dx.types.ResRet.f32 %5867, 1
  %5870 = extractvalue %dx.types.ResRet.f32 %5867, 2
  %5871 = fadd fast float %5868, -5.000000e-01
  %5872 = fadd fast float %5869, -5.000000e-01
  %5873 = fadd fast float %5870, -5.000000e-01
  %5874 = fmul fast float %4914, 4.000000e+00
  %5875 = fmul fast float %5874, %5819
  %5876 = fmul fast float %5875, %5871
  %5877 = fmul fast float %4915, 4.000000e+00
  %5878 = fmul fast float %5877, %5820
  %5879 = fmul fast float %5878, %5872
  %5880 = fmul fast float %4922, 4.000000e+00
  %5881 = fmul fast float %5880, %5821
  %5882 = fmul fast float %5881, %5873
  %5883 = fadd fast float %5876, %5863
  %5884 = fadd fast float %5879, %5864
  %5885 = fadd fast float %5882, %5865
  %5886 = call float @dx.op.unary.f32(i32 7, float %5883)  ; Saturate(value)
  %5887 = call float @dx.op.unary.f32(i32 7, float %5884)  ; Saturate(value)
  %5888 = call float @dx.op.unary.f32(i32 7, float %5885)  ; Saturate(value)
  br label %5889

; <label>:5889                                    ; preds = %5866, %5851
  %5890 = phi float [ %5886, %5866 ], [ %5863, %5851 ]
  %5891 = phi float [ %5887, %5866 ], [ %5864, %5851 ]
  %5892 = phi float [ %5888, %5866 ], [ %5865, %5851 ]
  %5893 = call float @dx.op.binary.f32(i32 35, float %5891, float %5892)  ; FMax(a,b)
  %5894 = call float @dx.op.binary.f32(i32 35, float %5890, float %5893)  ; FMax(a,b)
  %5895 = fsub fast float 1.000000e+00, %5894
  %5896 = fmul fast float %5852, %5810
  %5897 = fmul fast float %5853, %5810
  %5898 = fmul fast float %5854, %5810
  %5899 = fsub fast float 1.000000e+00, %5743
  %5900 = bitcast float %5899 to i32
  %5901 = sitofp i32 %5900 to float
  %5902 = fmul fast float %5901, 5.000000e+00
  %5903 = fadd fast float %5902, 0xC1EFBF8940000000
  %5904 = fptosi float %5903 to i32
  %5905 = bitcast i32 %5904 to float
  %5906 = fmul fast float %5905, %3717
  %5907 = fmul fast float %5895, %5906
  %5908 = fmul fast float %5907, %5234
  %5909 = fmul fast float %5907, %5235
  %5910 = fmul fast float %5907, %5236
  %5911 = fadd fast float %5908, %5896
  %5912 = fadd fast float %5909, %5897
  %5913 = fadd fast float %5910, %5898
  %5914 = fmul fast float %5731, %3713
  %5915 = fmul fast float %5914, %5749
  %5916 = fmul fast float %5915, %5895
  %5917 = fmul fast float %5732, %3713
  %5918 = fmul fast float %5917, %5749
  %5919 = fmul fast float %5918, %5895
  %5920 = fmul fast float %5733, %3713
  %5921 = fmul fast float %5920, %5749
  %5922 = fmul fast float %5921, %5895
  %5923 = fadd fast float %5916, %5570
  %5924 = fadd fast float %5919, %5571
  %5925 = fadd fast float %5922, %5572
  %5926 = fmul fast float %5915, %5911
  %5927 = fmul fast float %5918, %5912
  %5928 = fmul fast float %5921, %5913
  %5929 = fadd fast float %5926, %5567
  %5930 = fadd fast float %5927, %5568
  %5931 = fadd fast float %5928, %5569
  br label %5645

; <label>:5932                                    ; preds = %5645
  br label %5933

; <label>:5933                                    ; preds = %5932, %5533
  %5934 = phi float [ %5535, %5533 ], [ %5646, %5932 ]
  %5935 = phi float [ %5536, %5533 ], [ %5647, %5932 ]
  %5936 = phi float [ %5537, %5533 ], [ %5648, %5932 ]
  %5937 = phi float [ %5538, %5533 ], [ %5649, %5932 ]
  %5938 = phi float [ %5539, %5533 ], [ %5650, %5932 ]
  %5939 = phi float [ %5540, %5533 ], [ %5651, %5932 ]
  %5940 = add i32 %5534, 1
  %5941 = icmp ugt i32 %5940, %5530
  br i1 %5941, label %5942, label %5533

; <label>:5942                                    ; preds = %5933
  br label %5943

; <label>:5943                                    ; preds = %5942, %5509, %5499
  %5944 = phi float [ %5500, %5499 ], [ %5500, %5509 ], [ %5934, %5942 ]
  %5945 = phi float [ %5501, %5499 ], [ %5501, %5509 ], [ %5935, %5942 ]
  %5946 = phi float [ %5502, %5499 ], [ %5502, %5509 ], [ %5936, %5942 ]
  %5947 = phi float [ %5503, %5499 ], [ %5503, %5509 ], [ %5937, %5942 ]
  %5948 = phi float [ %5504, %5499 ], [ %5504, %5509 ], [ %5938, %5942 ]
  %5949 = phi float [ %5505, %5499 ], [ %5505, %5509 ], [ %5939, %5942 ]
  %5950 = call float @dx.op.unary.f32(i32 24, float %4911)  ; Sqrt(value)
  %5951 = call float @dx.op.unary.f32(i32 24, float %4912)  ; Sqrt(value)
  %5952 = call float @dx.op.unary.f32(i32 24, float %4913)  ; Sqrt(value)
  %5953 = fmul fast float %5950, %5947
  %5954 = fmul fast float %5951, %5948
  %5955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5955, 0
  br i1 %205, label %5957, label %5986

; <label>:5957                                    ; preds = %5943
  %5958 = fadd fast float %5949, %3719
  %5959 = fmul fast float %5958, %3721
  %5960 = fsub fast float 1.000000e+00, %3721
  %5961 = call float @dx.op.unary.f32(i32 7, float %5960)  ; Saturate(value)
  %5962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.f32 %5962, 3
  %5964 = fmul fast float %5963, %5961
  %5965 = fadd fast float %5964, %5959
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 0
  %5968 = fmul fast float %5967, %5240
  %5969 = fsub fast float %5965, %5968
  %5970 = fadd fast float %5954, %5953
  %5971 = fmul fast float %5956, %5970
  %5972 = extractvalue %dx.types.CBufRet.f32 %5962, 1
  %5973 = fsub fast float %5969, %5972
  %5974 = extractvalue %dx.types.CBufRet.f32 %5962, 2
  %5975 = fmul fast float %5973, %5974
  %5976 = call float @dx.op.unary.f32(i32 7, float %5975)  ; Saturate(value)
  %5977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5978 = extractvalue %dx.types.CBufRet.f32 %5977, 0
  %5979 = fsub fast float %5976, %5978
  %5980 = fmul fast float %5979, 1.000000e+01
  %5981 = call float @dx.op.unary.f32(i32 7, float %5980)  ; Saturate(value)
  %5982 = fadd fast float %3720, -1.000000e+00
  %5983 = fmul fast float %5981, %5982
  %5984 = fadd fast float %5983, 1.000000e+00
  %5985 = fmul fast float %5984, %5976
  br label %6002

; <label>:5986                                    ; preds = %5943
  %5987 = fmul fast float %5952, %5949
  %5988 = fmul fast float %5956, %5953
  %5989 = fmul fast float %5956, %5954
  %5990 = fmul fast float %5987, %5956
  %5991 = add i32 %34, 356
  %5992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5991, i32 undef)  ; BufferLoad(srv,index,wot)
  %5993 = extractvalue %dx.types.ResRet.i32 %5992, 0
  %5994 = and i32 %5993, 32
  %5995 = icmp eq i32 %5994, 0
  br i1 %5995, label %6002, label %5996

; <label>:5996                                    ; preds = %5986
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 0
  %5999 = fmul fast float %5998, 0x3FE99999A0000000
  %6000 = fadd fast float %5998, %5988
  %6001 = fadd fast float %5999, %5990
  br label %6002

; <label>:6002                                    ; preds = %5996, %5986, %5957
  %6003 = phi float [ %5971, %5957 ], [ %6000, %5996 ], [ %5988, %5986 ]
  %6004 = phi float [ %5985, %5957 ], [ %5989, %5996 ], [ %5989, %5986 ]
  %6005 = phi float [ %5984, %5957 ], [ %6001, %5996 ], [ %5990, %5986 ]
  %6006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6007 = extractvalue %dx.types.CBufRet.f32 %6006, 0
  %6008 = fmul fast float %6007, %5945
  %6009 = fmul fast float %6007, %5946
  %6010 = fadd fast float %5945, %5944
  %6011 = select i1 %205, float %6010, float %5944
  %6012 = fmul float %6011, %6007
  %6013 = select i1 %205, float 0.000000e+00, float %6008
  %6014 = select i1 %205, float 0.000000e+00, float %6009
  %6015 = fmul fast float %6003, %5950
  %6016 = fmul fast float %6004, %5951
  %6017 = fmul fast float %6005, %5952
  %6018 = fadd fast float %6012, %6015
  %6019 = fadd fast float %6013, %6016
  %6020 = fadd fast float %6014, %6017
  %6021 = select i1 %205, float %6004, float %6019
  %6022 = select i1 %205, float %6005, float %6020
  %6023 = call float @dx.op.binary.f32(i32 36, float %6018, float 3.225500e+04)  ; FMin(a,b)
  %6024 = call float @dx.op.binary.f32(i32 36, float %6021, float 3.225500e+04)  ; FMin(a,b)
  %6025 = call float @dx.op.binary.f32(i32 36, float %6022, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6023)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6024)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6025)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

