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
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 08578713bbd3269c69542f17d038b1a1
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
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
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
;   [144 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t49,space1     1
;                                   texture    byte         r/o     T11     t50,space1     1
;                                   texture    byte         r/o     T12     t51,space1     1
;                                   texture    byte         r/o     T13     t52,space1     1
;                                   texture    byte         r/o     T14     t16,space1     1
;                                   texture    byte         r/o     T15     t17,space1     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture     f32     2darray     T18     t49,space2     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t57,space2     1
;                                   texture    byte         r/o     T21     t69,space1     1
;                                   texture     f32     2darray     T22     t35,space2     1
;                                   texture     f32          2d     T23     t34,space2     1
;                                   texture     f32          3d     T24     t31,space2     1
;                                   texture    byte         r/o     T25     t68,space1     1
;                                   texture     f32          2d     T26      t0,space2     1
;                                   texture     f32          2d     T27     t48,space2     1
;
;
; ViewId state:
;
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = icmp ne i32 %32, 0
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %71 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = fmul fast float %73, %67
  %75 = fmul fast float %73, %68
  %76 = select i1 %33, float 1.000000e+00, float -1.000000e+00
  %77 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %78 = bitcast float %77 to i32
  %79 = ashr i32 %78, 1
  %80 = sub nsw i32 1597250115, %79
  %81 = bitcast i32 %80 to float
  %82 = fmul fast float %59, %76
  %83 = fmul fast float %82, %81
  %84 = fmul fast float %60, %76
  %85 = fmul fast float %84, %81
  %86 = fmul fast float %61, %76
  %87 = fmul fast float %86, %81
  %88 = fmul fast float %60, %57
  %89 = fmul fast float %61, %56
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %61, %55
  %92 = fmul fast float %59, %57
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %59, %56
  %95 = fmul fast float %60, %55
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %90, %58
  %98 = fmul fast float %93, %58
  %99 = fmul fast float %96, %58
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %103 = fmul fast float %74, 2.000000e+00
  %104 = fmul fast float %103, %101
  %105 = fmul fast float %75, 2.000000e+00
  %106 = fmul fast float %105, %102
  %107 = fsub fast float 1.000000e+00, %104
  %108 = fsub fast float 1.000000e+00, %106
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = fmul fast float %107, %110
  %114 = fmul fast float %107, %111
  %115 = fmul fast float %107, %112
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %108, %117
  %121 = fmul fast float %108, %118
  %122 = fmul fast float %108, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fadd fast float %120, %124
  %128 = fadd fast float %127, %113
  %129 = fadd fast float %121, %125
  %130 = fadd fast float %129, %114
  %131 = fadd fast float %122, %126
  %132 = fadd fast float %131, %115
  %133 = fmul fast float %128, %69
  %134 = fmul fast float %130, %69
  %135 = fmul fast float %132, %69
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %137, %74
  %140 = fmul fast float %138, %75
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %142, 114688
  %144 = icmp ne i32 %143, 0
  %145 = select i1 %144, float %139, float 0.000000e+00
  %146 = select i1 %144, float %140, float 0.000000e+00
  %147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %29, float %145, float %146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = fmul fast float %148, 2.550000e+02
  %150 = fptoui float %149 to i32
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.i32 %152, 3
  %154 = and i32 %153, 3
  %155 = icmp ne i32 %154, 0
  %156 = and i32 %153, 4
  %157 = icmp ne i32 %156, 0
  %158 = and i1 %155, %157
  br i1 %158, label %159, label %170

; <label>:159                                     ; preds = %0
  %160 = extractvalue %dx.types.CBufRet.f32 %151, 3
  %161 = fmul fast float %160, %75
  %162 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %163 = fmul fast float %162, %74
  %164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %28, float %163, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = fsub fast float 1.000000e+00, %165
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = fcmp fast olt float %166, %168
  br label %173

; <label>:170                                     ; preds = %0
  %171 = icmp eq i32 %156, 0
  %172 = and i1 %155, %171
  br label %173

; <label>:173                                     ; preds = %170, %159
  %174 = phi i1 [ %169, %159 ], [ %172, %170 ]
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %177 = fmul fast float %176, 0x3FE3C6EF40000000
  %178 = frem fast float %74, 2.560000e+02
  %179 = frem fast float %75, 2.560000e+02
  %180 = fptoui float %178 to i32
  %181 = fptoui float %179 to i32
  %182 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %180, i32 %181, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = extractvalue %dx.types.ResRet.f32 %182, 1
  %185 = fadd fast float %183, %177
  %186 = fadd fast float %184, %177
  %187 = call float @dx.op.unary.f32(i32 22, float %185)  ; Frc(value)
  %188 = call float @dx.op.unary.f32(i32 22, float %186)  ; Frc(value)
  %189 = add i32 %34, 156
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = shl i32 %191, 4
  %193 = and i32 %192, 32752
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = lshr i32 %191, 7
  %196 = and i32 %195, 32752
  %197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %196)  ; LegacyF16ToF32(value)
  %198 = lshr i32 %191, 22
  %199 = shl nuw nsw i32 %198, 5
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = add i32 %34, 216
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %203, 255
  %205 = uitofp i32 %204 to float
  %206 = fmul fast float %205, 0x3F70101020000000
  %207 = lshr i32 %203, 8
  %208 = and i32 %207, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F70101020000000
  %211 = lshr i32 %203, 16
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = add i32 %34, 36
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = and i32 %217, 65535
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = lshr i32 %217, 16
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = add i32 %34, 288
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 65535
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %224, 16
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = fmul fast float %226, 0x3F50624DE0000000
  %230 = fmul fast float %228, 0x3F50624DE0000000
  %231 = add i32 %34, 172
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = shl i32 %233, 4
  %235 = and i32 %234, 32752
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %233, 7
  %238 = and i32 %237, 32752
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %233, 22
  %241 = shl nuw nsw i32 %240, 5
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = add i32 %34, 232
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 255
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F70101020000000
  %249 = lshr i32 %245, 8
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = lshr i32 %245, 16
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = add i32 %34, 52
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 65535
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %259, 16
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = add i32 %34, 304
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 65535
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %266, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = fmul fast float %268, 0x3F50624DE0000000
  %272 = fmul fast float %270, 0x3F50624DE0000000
  %273 = add i32 %34, 188
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = shl i32 %275, 4
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %275, 7
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %275, 22
  %283 = shl nuw nsw i32 %282, 5
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %34, 248
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %287, 8
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %287, 16
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = add i32 %34, 68
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %34, 320
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = fmul fast float %310, 0x3F50624DE0000000
  %314 = fmul fast float %312, 0x3F50624DE0000000
  %315 = add i32 %34, 204
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = shl i32 %317, 4
  %319 = and i32 %318, 32752
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %317, 7
  %322 = and i32 %321, 32752
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %317, 22
  %325 = shl nuw nsw i32 %324, 5
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %34, 264
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %329, 8
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %329, 16
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = add i32 %34, 84
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 65535
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %343, 16
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = add i32 %34, 336
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = fmul fast float %352, 0x3F50624DE0000000
  %356 = fmul fast float %354, 0x3F50624DE0000000
  %357 = add i32 %34, 348
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 32
  %361 = icmp eq i32 %360, 0
  %362 = and i32 %359, 64
  %363 = icmp eq i32 %362, 0
  %364 = and i32 %359, 128
  %365 = icmp eq i32 %364, 0
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 2
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %383, label %370

; <label>:370                                     ; preds = %173
  %371 = add i32 %34, 568
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = add i32 %373, 0
  %375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %375, %dx.types.Handle %71, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = extractvalue %dx.types.ResRet.f32 %376, 2
  %380 = fmul fast float %377, %64
  %381 = fmul fast float %378, %65
  %382 = fmul fast float %379, %66
  br label %383

; <label>:383                                     ; preds = %370, %173
  %384 = phi float [ %66, %173 ], [ %382, %370 ]
  %385 = phi float [ %65, %173 ], [ %381, %370 ]
  %386 = phi float [ %64, %173 ], [ %380, %370 ]
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 2
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %410, label %391

; <label>:391                                     ; preds = %383
  %392 = add i32 %34, 44
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 1
  %396 = icmp ne i32 %395, 0
  %397 = select i1 %396, float %386, float 1.000000e+00
  %398 = add i32 %34, 60
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 1
  %402 = icmp ne i32 %401, 0
  %403 = select i1 %402, float %385, float 1.000000e+00
  %404 = add i32 %34, 76
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 1
  %408 = icmp ne i32 %407, 0
  %409 = select i1 %408, float %384, float 1.000000e+00
  br label %410

; <label>:410                                     ; preds = %391, %383
  %411 = phi float [ %384, %383 ], [ %409, %391 ]
  %412 = phi float [ %385, %383 ], [ %403, %391 ]
  %413 = phi float [ %386, %383 ], [ %397, %391 ]
  %414 = lshr i32 %388, 20
  %415 = and i32 %414, 3
  %416 = add nuw nsw i32 %415, 1
  %417 = add i32 %34, 24
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = add i32 %34, 28
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = or i32 %422, %419
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %883, label %425

; <label>:425                                     ; preds = %410
  %426 = and i32 %419, 262144
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, float %37, float 1.000000e+00
  %429 = select i1 %427, float %38, float 0.000000e+00
  %430 = select i1 %427, float %39, float 0.000000e+00
  %431 = select i1 %427, float %40, float 1.000000e+00
  %432 = select i1 %427, float %41, float %62
  %433 = select i1 %427, float %42, float %63
  %434 = add i32 %34, 284
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = lshr i32 %436, 16
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = fmul fast float %438, 0x3F50624DE0000000
  %440 = add i32 %34, 88
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = lshr i32 %442, 16
  %444 = and i32 %443, 255
  %445 = lshr i32 %442, 24
  %446 = add i32 %34, 292
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %448, 16
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = add i32 %34, 32
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = lshr i32 %455, 22
  %457 = shl nuw nsw i32 %456, 5
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = shl i32 %455, 4
  %460 = and i32 %459, 32752
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = lshr i32 %455, 7
  %463 = and i32 %462, 32752
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 3
  %467 = fmul fast float %466, 1.000000e+03
  %468 = fmul fast float %229, %467
  %469 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %470 = fadd fast float %469, %219
  %471 = fmul fast float %230, %467
  %472 = call float @dx.op.unary.f32(i32 22, float %471)  ; Frc(value)
  %473 = fadd fast float %472, %221
  %474 = fmul fast float %439, %467
  %475 = call float @dx.op.unary.f32(i32 22, float %474)  ; Frc(value)
  %476 = fmul fast float %475, 0x401921FB60000000
  %477 = fadd fast float %476, %458
  %478 = call float @dx.op.unary.f32(i32 13, float %477)  ; Sin(value)
  %479 = call float @dx.op.unary.f32(i32 12, float %477)  ; Cos(value)
  %480 = fsub fast float -0.000000e+00, %478
  %481 = fadd fast float %432, -5.000000e-01
  %482 = fadd fast float %433, -5.000000e-01
  %483 = fmul fast float %450, %481
  %484 = fmul fast float %452, %482
  %485 = fadd fast float %483, 5.000000e-01
  %486 = fadd fast float %484, 5.000000e-01
  %487 = fmul fast float %461, %485
  %488 = fmul fast float %464, %486
  %489 = fmul fast float %479, %487
  %490 = call float @dx.op.tertiary.f32(i32 46, float %480, float %488, float %489)  ; FMad(a,b,c)
  %491 = fmul fast float %478, %487
  %492 = call float @dx.op.tertiary.f32(i32 46, float %479, float %488, float %491)  ; FMad(a,b,c)
  %493 = fadd fast float %470, %490
  %494 = fadd fast float %473, %492
  %495 = icmp ugt i32 %444, 1
  %496 = icmp ugt i32 %442, 33554431
  %497 = or i1 %496, %495
  br i1 %497, label %498, label %523

; <label>:498                                     ; preds = %425
  %499 = add i32 %34, 228
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = lshr i32 %501, 16
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = fmul fast float %466, %503
  %505 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %506 = mul nuw nsw i32 %444, %445
  %507 = uitofp i32 %506 to float
  %508 = fmul fast float %505, %507
  %509 = call float @dx.op.unary.f32(i32 27, float %508)  ; Round_ni(value)
  %510 = fptoui float %509 to i32
  %511 = urem i32 %510, %444
  %512 = udiv i32 %510, %445
  %513 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %514 = call float @dx.op.unary.f32(i32 22, float %494)  ; Frc(value)
  %515 = uitofp i32 %511 to float
  %516 = uitofp i32 %512 to float
  %517 = fadd fast float %513, %515
  %518 = fadd fast float %514, %516
  %519 = uitofp i32 %444 to float
  %520 = uitofp i32 %445 to float
  %521 = fdiv fast float %517, %519
  %522 = fdiv fast float %518, %520
  br label %523

; <label>:523                                     ; preds = %498, %425
  %524 = phi float [ %521, %498 ], [ %493, %425 ]
  %525 = phi float [ %522, %498 ], [ %494, %425 ]
  %526 = and i32 %419, 16
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %724, label %528

; <label>:528                                     ; preds = %523
  %529 = add i32 %34, 440
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = add i32 %531, 0
  %533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %533, %dx.types.Handle %70, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = extractvalue %dx.types.ResRet.f32 %534, 1
  %537 = extractvalue %dx.types.ResRet.f32 %534, 2
  %538 = extractvalue %dx.types.ResRet.f32 %534, 3
  %539 = and i32 %442, 255
  %540 = uitofp i32 %539 to float
  %541 = lshr i32 %442, 8
  %542 = and i32 %541, 255
  %543 = uitofp i32 %542 to float
  %544 = fmul fast float %538, %540
  %545 = fadd fast float %544, %543
  %546 = fmul fast float %545, 0x3F70101000000000
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, 512
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %559, label %551

; <label>:551                                     ; preds = %528
  %552 = add i32 %34, 520
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = add i32 %554, 0
  %556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %556, %dx.types.Handle %71, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  br label %559

; <label>:559                                     ; preds = %551, %528
  %560 = phi float [ %558, %551 ], [ 1.000000e+00, %528 ]
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 33554432
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %671, label %565

; <label>:565                                     ; preds = %559
  %566 = add i32 %34, 224
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 65535
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = lshr i32 %568, 16
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = add i32 %34, 228
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 65535
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = lshr i32 %579, 24
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = and i32 %579, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = lshr i32 %579, 8
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = lshr i32 %579, 16
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = add i32 %34, 220
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = lshr i32 %596, 24
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %598, 0x3F70101020000000
  %600 = and i32 %596, 255
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, 0x3F70101020000000
  %603 = lshr i32 %596, 8
  %604 = and i32 %603, 255
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = lshr i32 %596, 16
  %608 = and i32 %607, 255
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = bitcast float %535 to i32
  %612 = ashr i32 %611, 1
  %613 = sub nsw i32 1597463174, %612
  %614 = bitcast i32 %613 to float
  %615 = fmul fast float %535, 5.000000e-01
  %616 = fmul fast float %614, %614
  %617 = fmul fast float %616, %615
  %618 = fsub fast float 1.500000e+00, %617
  %619 = fmul fast float %614, %535
  %620 = fmul fast float %619, %618
  %621 = bitcast float %536 to i32
  %622 = ashr i32 %621, 1
  %623 = sub nsw i32 1597463174, %622
  %624 = bitcast i32 %623 to float
  %625 = fmul fast float %536, 5.000000e-01
  %626 = fmul fast float %624, %624
  %627 = fmul fast float %626, %625
  %628 = fsub fast float 1.500000e+00, %627
  %629 = fmul fast float %624, %536
  %630 = fmul fast float %629, %628
  %631 = bitcast float %537 to i32
  %632 = ashr i32 %631, 1
  %633 = sub nsw i32 1597463174, %632
  %634 = bitcast i32 %633 to float
  %635 = fmul fast float %537, 5.000000e-01
  %636 = fmul fast float %634, %634
  %637 = fmul fast float %636, %635
  %638 = fsub fast float 1.500000e+00, %637
  %639 = fmul fast float %634, %537
  %640 = fmul fast float %639, %638
  %641 = fsub fast float %620, %602
  %642 = fsub fast float %630, %606
  %643 = fsub fast float %640, %610
  %644 = fmul fast float %641, %570
  %645 = fmul fast float %642, %572
  %646 = fmul fast float %643, %577
  %647 = fadd fast float %644, %585
  %648 = fadd fast float %645, %589
  %649 = fadd fast float %646, %593
  %650 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %651 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %652 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %653 = fmul fast float %650, %650
  %654 = fmul fast float %651, %651
  %655 = fmul fast float %652, %652
  %656 = fsub fast float %653, %535
  %657 = fsub fast float %654, %536
  %658 = fsub fast float %655, %537
  %659 = fmul fast float %656, %560
  %660 = fmul fast float %657, %560
  %661 = fmul fast float %658, %560
  %662 = fadd fast float %659, %535
  %663 = fadd fast float %660, %536
  %664 = fadd fast float %661, %537
  %665 = fadd fast float %582, %546
  %666 = fsub fast float %665, %599
  %667 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %668 = fsub fast float %667, %546
  %669 = fmul fast float %668, %560
  %670 = fadd fast float %669, %546
  br label %724

; <label>:671                                     ; preds = %559
  %672 = and i32 %562, 134217728
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %708, label %674

; <label>:674                                     ; preds = %671
  %675 = call float @dx.op.unary.f32(i32 24, float %206)  ; Sqrt(value)
  %676 = call float @dx.op.unary.f32(i32 24, float %210)  ; Sqrt(value)
  %677 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %678 = fadd fast float %675, -5.000000e-01
  %679 = fadd fast float %676, -5.000000e-01
  %680 = fadd fast float %677, -5.000000e-01
  %681 = fmul fast float %678, %560
  %682 = fmul fast float %679, %560
  %683 = fmul fast float %680, %560
  %684 = fadd fast float %681, 5.000000e-01
  %685 = fadd fast float %682, 5.000000e-01
  %686 = fadd fast float %683, 5.000000e-01
  %687 = call float @dx.op.unary.f32(i32 24, float %535)  ; Sqrt(value)
  %688 = call float @dx.op.unary.f32(i32 24, float %536)  ; Sqrt(value)
  %689 = call float @dx.op.unary.f32(i32 24, float %537)  ; Sqrt(value)
  %690 = fmul fast float %684, 2.000000e+00
  %691 = fsub fast float 1.000000e+00, %690
  %692 = fmul fast float %691, %687
  %693 = fadd fast float %692, %690
  %694 = fmul fast float %693, %687
  %695 = fmul fast float %685, 2.000000e+00
  %696 = fsub fast float 1.000000e+00, %695
  %697 = fmul fast float %696, %688
  %698 = fadd fast float %697, %695
  %699 = fmul fast float %698, %688
  %700 = fmul fast float %686, 2.000000e+00
  %701 = fsub fast float 1.000000e+00, %700
  %702 = fmul fast float %701, %689
  %703 = fadd fast float %702, %700
  %704 = fmul fast float %703, %689
  %705 = fmul fast float %694, %694
  %706 = fmul fast float %699, %699
  %707 = fmul fast float %704, %704
  br label %724

; <label>:708                                     ; preds = %671
  %709 = fmul fast float %206, %206
  %710 = fmul fast float %210, %210
  %711 = fmul fast float %214, %214
  %712 = fadd fast float %709, -1.000000e+00
  %713 = fadd fast float %710, -1.000000e+00
  %714 = fadd fast float %711, -1.000000e+00
  %715 = fmul fast float %560, %712
  %716 = fmul fast float %560, %713
  %717 = fmul fast float %560, %714
  %718 = fadd fast float %715, 1.000000e+00
  %719 = fadd fast float %716, 1.000000e+00
  %720 = fadd fast float %717, 1.000000e+00
  %721 = fmul fast float %718, %535
  %722 = fmul fast float %719, %536
  %723 = fmul fast float %720, %537
  br label %724

; <label>:724                                     ; preds = %708, %674, %565, %523
  %725 = phi float [ %670, %565 ], [ %546, %674 ], [ %546, %708 ], [ 0x3FA23C0BE0000000, %523 ]
  %726 = phi float [ %662, %565 ], [ %705, %674 ], [ %721, %708 ], [ 1.000000e+00, %523 ]
  %727 = phi float [ %663, %565 ], [ %706, %674 ], [ %722, %708 ], [ 1.000000e+00, %523 ]
  %728 = phi float [ %664, %565 ], [ %707, %674 ], [ %723, %708 ], [ 1.000000e+00, %523 ]
  %729 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.i32 %729, 1
  %731 = and i32 %730, 1
  %732 = icmp ne i32 %731, 0
  %733 = add i32 %34, 356
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 32
  %737 = icmp ne i32 %736, 0
  %738 = and i1 %732, %737
  %739 = select i1 %738, float 1.000000e+00, float %726
  %740 = select i1 %738, float 0x3FD3333340000000, float %727
  %741 = select i1 %738, float 0x3FD3333340000000, float %728
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = and i32 %743, 32
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %818, label %746

; <label>:746                                     ; preds = %724
  %747 = add i32 %34, 92
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = add i32 %34, 456
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = add i32 %752, 0
  %754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %754, %dx.types.Handle %70, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = extractvalue %dx.types.ResRet.f32 %755, 1
  %758 = extractvalue %dx.types.ResRet.f32 %755, 2
  %759 = extractvalue %dx.types.ResRet.f32 %755, 3
  %760 = and i32 %749, 255
  %761 = uitofp i32 %760 to float
  %762 = lshr i32 %749, 8
  %763 = and i32 %762, 255
  %764 = uitofp i32 %763 to float
  %765 = lshr i32 %749, 16
  %766 = and i32 %765, 255
  %767 = uitofp i32 %766 to float
  %768 = fmul fast float %767, 0x3F70101000000000
  %769 = fmul fast float %756, %761
  %770 = fadd fast float %769, %764
  %771 = fmul fast float %770, 0x3F70101000000000
  %772 = fadd fast float %757, -5.000000e-01
  %773 = fadd fast float %759, -5.000000e-01
  %774 = fmul fast float %772, %768
  %775 = fmul fast float %773, %768
  %776 = fadd fast float %774, 5.000000e-01
  %777 = fadd fast float %775, 5.000000e-01
  %778 = fmul fast float %776, 2.000000e+00
  %779 = fadd fast float %778, -1.000000e+00
  %780 = fmul fast float %777, 2.000000e+00
  %781 = fadd fast float %780, -1.000000e+00
  %782 = fadd fast float %779, %781
  %783 = fmul fast float %782, 5.000000e-01
  %784 = fsub fast float %779, %781
  %785 = fmul fast float %784, 5.000000e-01
  %786 = call float @dx.op.unary.f32(i32 6, float %783)  ; FAbs(value)
  %787 = fsub fast float 1.000000e+00, %786
  %788 = call float @dx.op.unary.f32(i32 6, float %785)  ; FAbs(value)
  %789 = fsub fast float %787, %788
  %790 = call float @dx.op.dot3.f32(i32 55, float %783, float %785, float %789, float %783, float %785, float %789)  ; Dot3(ax,ay,az,bx,by,bz)
  %791 = call float @dx.op.unary.f32(i32 25, float %790)  ; Rsqrt(value)
  %792 = fmul fast float %783, %791
  %793 = fmul fast float %785, %791
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = and i32 %795, 67108864
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %814, label %798

; <label>:798                                     ; preds = %746
  %799 = add i32 %34, 280
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 65535
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = lshr i32 %801, 16
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = fsub fast float %771, %809
  %811 = fmul fast float %810, %803
  %812 = fadd fast float %811, %807
  %813 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  br label %814

; <label>:814                                     ; preds = %798, %746
  %815 = phi float [ %813, %798 ], [ %771, %746 ]
  %816 = call float @dx.op.dot2.f32(i32 54, float %792, float %793, float %428, float %429)  ; Dot2(ax,ay,bx,by)
  %817 = call float @dx.op.dot2.f32(i32 54, float %792, float %793, float %430, float %431)  ; Dot2(ax,ay,bx,by)
  br label %818

; <label>:818                                     ; preds = %814, %724
  %819 = phi float [ %815, %814 ], [ 0x3FD6666660000000, %724 ]
  %820 = phi float [ %816, %814 ], [ 0.000000e+00, %724 ]
  %821 = phi float [ %817, %814 ], [ 0.000000e+00, %724 ]
  %822 = phi float [ %758, %814 ], [ 1.000000e+00, %724 ]
  %823 = add i32 %34, 160
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = lshr i32 %825, 22
  %827 = shl nuw nsw i32 %826, 5
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = and i32 %830, 64
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %866, label %833

; <label>:833                                     ; preds = %818
  %834 = add i32 %34, 472
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = add i32 %836, 0
  %838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = and i32 %840, 131072
  %842 = icmp eq i32 %841, 0
  %843 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %838, %dx.types.Handle %70, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %844 = extractvalue %dx.types.ResRet.f32 %843, 0
  %845 = extractvalue %dx.types.ResRet.f32 %843, 1
  %846 = extractvalue %dx.types.ResRet.f32 %843, 2
  %847 = fmul fast float %844, %194
  %848 = fmul fast float %845, %197
  %849 = fmul fast float %846, %200
  br i1 %842, label %856, label %850

; <label>:850                                     ; preds = %833
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = fmul fast float %852, %847
  %854 = fmul fast float %852, %848
  %855 = fmul fast float %852, %849
  br label %856

; <label>:856                                     ; preds = %850, %833
  %857 = phi float [ %853, %850 ], [ %847, %833 ]
  %858 = phi float [ %854, %850 ], [ %848, %833 ]
  %859 = phi float [ %855, %850 ], [ %849, %833 ]
  %860 = fmul fast float %857, %828
  %861 = select i1 %174, float %860, float %857
  %862 = call float @dx.op.dot3.f32(i32 55, float %861, float %858, float %859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = select i1 %174, float 0.000000e+00, float %857
  %864 = select i1 %174, float %862, float %858
  %865 = select i1 %174, float 0.000000e+00, float %859
  br label %866

; <label>:866                                     ; preds = %856, %818
  %867 = phi float [ %863, %856 ], [ 0.000000e+00, %818 ]
  %868 = phi float [ %864, %856 ], [ 0.000000e+00, %818 ]
  %869 = phi float [ %865, %856 ], [ 0.000000e+00, %818 ]
  %870 = add i32 %34, 96
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %872, 255
  %874 = uitofp i32 %873 to float
  %875 = lshr i32 %872, 8
  %876 = and i32 %875, 255
  %877 = uitofp i32 %876 to float
  %878 = call float @dx.op.dot3.f32(i32 55, float %739, float %740, float %741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = fmul fast float %877, %878
  %880 = fadd fast float %879, %874
  %881 = fmul fast float %880, 0x3F70101020000000
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  br label %883

; <label>:883                                     ; preds = %866, %410
  %884 = phi float [ 0.000000e+00, %410 ], [ %820, %866 ]
  %885 = phi float [ 0.000000e+00, %410 ], [ %821, %866 ]
  %886 = phi float [ 0.000000e+00, %410 ], [ %739, %866 ]
  %887 = phi float [ 0.000000e+00, %410 ], [ %740, %866 ]
  %888 = phi float [ 0.000000e+00, %410 ], [ %741, %866 ]
  %889 = phi float [ 0.000000e+00, %410 ], [ %867, %866 ]
  %890 = phi float [ 0.000000e+00, %410 ], [ %868, %866 ]
  %891 = phi float [ 0.000000e+00, %410 ], [ %869, %866 ]
  %892 = phi float [ 0.000000e+00, %410 ], [ %725, %866 ]
  %893 = phi float [ 0.000000e+00, %410 ], [ 1.000000e+00, %866 ]
  %894 = phi float [ 0.000000e+00, %410 ], [ %819, %866 ]
  %895 = phi float [ 0.000000e+00, %410 ], [ %822, %866 ]
  %896 = phi float [ 0.000000e+00, %410 ], [ %882, %866 ]
  br i1 %361, label %1849, label %897

; <label>:897                                     ; preds = %883
  %898 = icmp ult i32 %416, 2
  %899 = add i32 %34, 40
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %34, 44
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = or i32 %904, %901
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %1849, label %907

; <label>:907                                     ; preds = %897
  %908 = and i32 %901, 262144
  %909 = icmp ne i32 %908, 0
  %910 = select i1 %909, float %37, float 1.000000e+00
  %911 = select i1 %909, float %38, float 0.000000e+00
  %912 = select i1 %909, float %39, float 0.000000e+00
  %913 = select i1 %909, float %40, float 1.000000e+00
  %914 = select i1 %909, float %41, float %62
  %915 = select i1 %909, float %42, float %63
  %916 = add i32 %34, 300
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = lshr i32 %918, 16
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = fmul fast float %920, 0x3F50624DE0000000
  %922 = add i32 %34, 104
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = lshr i32 %924, 16
  %926 = and i32 %925, 255
  %927 = lshr i32 %924, 24
  %928 = add i32 %34, 308
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = and i32 %930, 65535
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = lshr i32 %930, 16
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = add i32 %34, 48
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = lshr i32 %937, 22
  %939 = shl nuw nsw i32 %938, 5
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = shl i32 %937, 4
  %942 = and i32 %941, 32752
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = lshr i32 %937, 7
  %945 = and i32 %944, 32752
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %949 = fmul fast float %948, 1.000000e+03
  %950 = fmul fast float %271, %949
  %951 = call float @dx.op.unary.f32(i32 22, float %950)  ; Frc(value)
  %952 = fadd fast float %951, %261
  %953 = fmul fast float %272, %949
  %954 = call float @dx.op.unary.f32(i32 22, float %953)  ; Frc(value)
  %955 = fadd fast float %954, %263
  %956 = fmul fast float %921, %949
  %957 = call float @dx.op.unary.f32(i32 22, float %956)  ; Frc(value)
  %958 = fmul fast float %957, 0x401921FB60000000
  %959 = fadd fast float %958, %940
  %960 = call float @dx.op.unary.f32(i32 13, float %959)  ; Sin(value)
  %961 = call float @dx.op.unary.f32(i32 12, float %959)  ; Cos(value)
  %962 = fsub fast float -0.000000e+00, %960
  %963 = fadd fast float %914, -5.000000e-01
  %964 = fadd fast float %915, -5.000000e-01
  %965 = fmul fast float %932, %963
  %966 = fmul fast float %934, %964
  %967 = fadd fast float %965, 5.000000e-01
  %968 = fadd fast float %966, 5.000000e-01
  %969 = fmul fast float %943, %967
  %970 = fmul fast float %946, %968
  %971 = fmul fast float %961, %969
  %972 = call float @dx.op.tertiary.f32(i32 46, float %962, float %970, float %971)  ; FMad(a,b,c)
  %973 = fmul fast float %960, %969
  %974 = call float @dx.op.tertiary.f32(i32 46, float %961, float %970, float %973)  ; FMad(a,b,c)
  %975 = fadd fast float %952, %972
  %976 = fadd fast float %955, %974
  %977 = icmp ugt i32 %926, 1
  %978 = icmp ugt i32 %924, 33554431
  %979 = or i1 %978, %977
  br i1 %979, label %980, label %1005

; <label>:980                                     ; preds = %907
  %981 = add i32 %34, 244
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = lshr i32 %983, 16
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = fmul fast float %948, %985
  %987 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %988 = mul nuw nsw i32 %926, %927
  %989 = uitofp i32 %988 to float
  %990 = fmul fast float %987, %989
  %991 = call float @dx.op.unary.f32(i32 27, float %990)  ; Round_ni(value)
  %992 = fptoui float %991 to i32
  %993 = urem i32 %992, %926
  %994 = udiv i32 %992, %927
  %995 = call float @dx.op.unary.f32(i32 22, float %975)  ; Frc(value)
  %996 = call float @dx.op.unary.f32(i32 22, float %976)  ; Frc(value)
  %997 = uitofp i32 %993 to float
  %998 = uitofp i32 %994 to float
  %999 = fadd fast float %995, %997
  %1000 = fadd fast float %996, %998
  %1001 = uitofp i32 %926 to float
  %1002 = uitofp i32 %927 to float
  %1003 = fdiv fast float %999, %1001
  %1004 = fdiv fast float %1000, %1002
  br label %1005

; <label>:1005                                    ; preds = %980, %907
  %1006 = phi float [ %1003, %980 ], [ %975, %907 ]
  %1007 = phi float [ %1004, %980 ], [ %976, %907 ]
  %1008 = and i32 %901, 16777216
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1119, label %1010

; <label>:1010                                    ; preds = %1005
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1015 = fadd fast float %1012, %133
  %1016 = fadd fast float %1013, %134
  %1017 = fadd fast float %1014, %135
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1021 = icmp eq i32 %35, 65535
  br i1 %1021, label %1116, label %1022

; <label>:1022                                    ; preds = %1010
  %1023 = lshr i32 %35, 1
  %1024 = shl i32 %1023, 2
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = and i32 %35, 1
  %1028 = icmp ne i32 %1027, 0
  %1029 = lshr i32 %1026, 16
  %1030 = and i32 %1026, 65535
  %1031 = select i1 %1028, i32 %1029, i32 %1030
  %1032 = icmp eq i32 %1031, 65535
  br i1 %1032, label %1112, label %1033

; <label>:1033                                    ; preds = %1022
  %1034 = mul nuw nsw i32 %1031, 40
  %1035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1039 = add nuw nsw i32 %1034, 12
  %1040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1044 = add nuw nsw i32 %1034, 24
  %1045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = add nuw nsw i32 %1034, 36
  %1050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = fsub fast float %1015, %1036
  %1053 = fsub fast float %1016, %1037
  %1054 = fsub fast float %1017, %1038
  %1055 = fmul fast float %1051, %1052
  %1056 = fmul fast float %1051, %1053
  %1057 = fmul fast float %1051, %1054
  %1058 = call float @dx.op.unary.f32(i32 27, float %1055)  ; Round_ni(value)
  %1059 = call float @dx.op.unary.f32(i32 27, float %1056)  ; Round_ni(value)
  %1060 = call float @dx.op.unary.f32(i32 27, float %1057)  ; Round_ni(value)
  %1061 = fadd fast float %1058, 5.000000e-01
  %1062 = fadd fast float %1059, 5.000000e-01
  %1063 = fadd fast float %1060, 5.000000e-01
  %1064 = fmul fast float %1061, %1041
  %1065 = fmul fast float %1062, %1042
  %1066 = fmul fast float %1063, %1043
  %1067 = shl i32 %35, 2
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = add i32 %1069, 0
  %1071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1072 = call float @dx.op.unary.f32(i32 22, float %1064)  ; Frc(value)
  %1073 = call float @dx.op.unary.f32(i32 22, float %1065)  ; Frc(value)
  %1074 = call float @dx.op.unary.f32(i32 22, float %1066)  ; Frc(value)
  %1075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1071, %dx.types.Handle %29, float %1072, float %1073, float %1074, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1079 = fmul fast float %1076, 1.023000e+03
  %1080 = fmul fast float %1077, 1.023000e+03
  %1081 = fmul fast float %1078, 1.023000e+03
  %1082 = fadd fast float %1079, 5.000000e-01
  %1083 = fadd fast float %1080, 5.000000e-01
  %1084 = fadd fast float %1081, 5.000000e-01
  %1085 = call float @dx.op.unary.f32(i32 27, float %1082)  ; Round_ni(value)
  %1086 = call float @dx.op.unary.f32(i32 27, float %1083)  ; Round_ni(value)
  %1087 = call float @dx.op.unary.f32(i32 27, float %1084)  ; Round_ni(value)
  %1088 = fsub fast float %1055, %1058
  %1089 = fsub fast float %1056, %1059
  %1090 = fsub fast float %1057, %1060
  %1091 = fmul fast float %1088, 7.500000e-01
  %1092 = fmul fast float %1089, 7.500000e-01
  %1093 = fmul fast float %1090, 7.500000e-01
  %1094 = fadd fast float %1058, 1.250000e-01
  %1095 = fadd fast float %1094, %1091
  %1096 = fadd fast float %1095, %1085
  %1097 = fadd fast float %1059, 1.250000e-01
  %1098 = fadd fast float %1097, %1092
  %1099 = fadd fast float %1098, %1086
  %1100 = fadd fast float %1060, 1.250000e-01
  %1101 = fadd fast float %1100, %1093
  %1102 = fadd fast float %1101, %1087
  %1103 = fmul fast float %1096, %1046
  %1104 = fmul fast float %1099, %1047
  %1105 = fmul fast float %1102, %1048
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1109, %dx.types.Handle %27, float %1103, float %1104, float %1105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  br label %1112

; <label>:1112                                    ; preds = %1033, %1022
  %1113 = phi float [ %1111, %1033 ], [ -1.000000e+00, %1022 ]
  %1114 = fadd fast float %1113, %1020
  %1115 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  br label %1116

; <label>:1116                                    ; preds = %1112, %1010
  %1117 = phi float [ %1115, %1112 ], [ %1020, %1010 ]
  %1118 = fmul fast float %1117, %413
  br label %1119

; <label>:1119                                    ; preds = %1116, %1005
  %1120 = phi float [ %1118, %1116 ], [ %413, %1005 ]
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = and i32 %1122, 256
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1171, label %1125

; <label>:1125                                    ; preds = %1119
  %1126 = add i32 %34, 508
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1126, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = add i32 %1128, 0
  %1130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1129, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1131 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1130, %dx.types.Handle %71, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = add i32 %34, 116
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = shl i32 %1135, 4
  %1137 = and i32 %1136, 32752
  %1138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1137)  ; LegacyF16ToF32(value)
  %1139 = lshr i32 %1135, 7
  %1140 = and i32 %1139, 32752
  %1141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1140)  ; LegacyF16ToF32(value)
  %1142 = fsub fast float 1.000000e+00, %1120
  %1143 = call float @dx.op.binary.f32(i32 35, float %1142, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1144 = bitcast float %1120 to i32
  %1145 = sitofp i32 %1144 to float
  %1146 = fadd fast float %1145, 0xC1CFBF8940000000
  %1147 = fmul fast float %1141, %1146
  %1148 = fadd fast float %1147, 0x41CFBF8940000000
  %1149 = fptosi float %1148 to i32
  %1150 = bitcast i32 %1149 to float
  %1151 = bitcast float %1143 to i32
  %1152 = sitofp i32 %1151 to float
  %1153 = fadd fast float %1152, 0xC1CFBF8940000000
  %1154 = fmul fast float %1153, %1141
  %1155 = fadd fast float %1154, 0x41CFBF8940000000
  %1156 = fptosi float %1155 to i32
  %1157 = bitcast i32 %1156 to float
  %1158 = fmul fast float %1150, %1138
  %1159 = fmul fast float %1157, %1138
  %1160 = fsub fast float %1143, %1158
  %1161 = fadd fast float %1159, %1143
  %1162 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1163 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1164 = fsub fast float %1132, %1162
  %1165 = fsub fast float %1163, %1162
  %1166 = bitcast float %1165 to i32
  %1167 = sub nsw i32 2129859010, %1166
  %1168 = bitcast i32 %1167 to float
  %1169 = fmul fast float %1168, %1164
  %1170 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  br label %1171

; <label>:1171                                    ; preds = %1125, %1119
  %1172 = phi float [ %1170, %1125 ], [ %1120, %1119 ]
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 128
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1193, label %1177

; <label>:1177                                    ; preds = %1171
  %1178 = add i32 %34, 492
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = add i32 %1180, 0
  %1182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1182, %dx.types.Handle %71, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = and i32 %1186, 524288
  %1188 = icmp ne i32 %1187, 0
  %1189 = fcmp fast ogt float %1184, 0x3FE0101020000000
  %1190 = select i1 %1189, float 1.000000e+00, float 0.000000e+00
  %1191 = select i1 %1188, float %1190, float %1184
  %1192 = fmul fast float %1191, %1172
  br label %1193

; <label>:1193                                    ; preds = %1177, %1171
  %1194 = phi float [ %1192, %1177 ], [ %1172, %1171 ]
  %1195 = fcmp fast ult float %1194, 0x3F70101020000000
  br i1 %1195, label %1849, label %1196

; <label>:1196                                    ; preds = %1193
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 16
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1399, label %1201

; <label>:1201                                    ; preds = %1196
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = add i32 %34, 444
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = add i32 %1206, 0
  %1208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1208, %dx.types.Handle %70, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = extractvalue %dx.types.ResRet.f32 %1209, 3
  %1214 = and i32 %1203, 255
  %1215 = uitofp i32 %1214 to float
  %1216 = lshr i32 %1203, 8
  %1217 = and i32 %1216, 255
  %1218 = uitofp i32 %1217 to float
  %1219 = fmul fast float %1213, %1215
  %1220 = fadd fast float %1219, %1218
  %1221 = fmul fast float %1220, 0x3F70101000000000
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 512
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1234, label %1226

; <label>:1226                                    ; preds = %1201
  %1227 = add i32 %34, 524
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = add i32 %1229, 0
  %1231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1231, %dx.types.Handle %71, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  br label %1234

; <label>:1234                                    ; preds = %1226, %1201
  %1235 = phi float [ %1233, %1226 ], [ 1.000000e+00, %1201 ]
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 33554432
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1346, label %1240

; <label>:1240                                    ; preds = %1234
  %1241 = add i32 %34, 240
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 65535
  %1245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1244)  ; LegacyF16ToF32(value)
  %1246 = lshr i32 %1243, 16
  %1247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1246)  ; LegacyF16ToF32(value)
  %1248 = add i32 %34, 244
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 65535
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = lshr i32 %1254, 24
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1256, 0x3F70101020000000
  %1258 = and i32 %1254, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1259, 0x3F70101020000000
  %1261 = lshr i32 %1254, 8
  %1262 = and i32 %1261, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F70101020000000
  %1265 = lshr i32 %1254, 16
  %1266 = and i32 %1265, 255
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1267, 0x3F70101020000000
  %1269 = add i32 %34, 236
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = lshr i32 %1271, 24
  %1273 = uitofp i32 %1272 to float
  %1274 = fmul fast float %1273, 0x3F70101020000000
  %1275 = and i32 %1271, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, 0x3F70101020000000
  %1278 = lshr i32 %1271, 8
  %1279 = and i32 %1278, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = fmul fast float %1280, 0x3F70101020000000
  %1282 = lshr i32 %1271, 16
  %1283 = and i32 %1282, 255
  %1284 = uitofp i32 %1283 to float
  %1285 = fmul fast float %1284, 0x3F70101020000000
  %1286 = bitcast float %1210 to i32
  %1287 = ashr i32 %1286, 1
  %1288 = sub nsw i32 1597463174, %1287
  %1289 = bitcast i32 %1288 to float
  %1290 = fmul fast float %1210, 5.000000e-01
  %1291 = fmul fast float %1289, %1289
  %1292 = fmul fast float %1291, %1290
  %1293 = fsub fast float 1.500000e+00, %1292
  %1294 = fmul fast float %1289, %1210
  %1295 = fmul fast float %1294, %1293
  %1296 = bitcast float %1211 to i32
  %1297 = ashr i32 %1296, 1
  %1298 = sub nsw i32 1597463174, %1297
  %1299 = bitcast i32 %1298 to float
  %1300 = fmul fast float %1211, 5.000000e-01
  %1301 = fmul fast float %1299, %1299
  %1302 = fmul fast float %1301, %1300
  %1303 = fsub fast float 1.500000e+00, %1302
  %1304 = fmul fast float %1299, %1211
  %1305 = fmul fast float %1304, %1303
  %1306 = bitcast float %1212 to i32
  %1307 = ashr i32 %1306, 1
  %1308 = sub nsw i32 1597463174, %1307
  %1309 = bitcast i32 %1308 to float
  %1310 = fmul fast float %1212, 5.000000e-01
  %1311 = fmul fast float %1309, %1309
  %1312 = fmul fast float %1311, %1310
  %1313 = fsub fast float 1.500000e+00, %1312
  %1314 = fmul fast float %1309, %1212
  %1315 = fmul fast float %1314, %1313
  %1316 = fsub fast float %1295, %1277
  %1317 = fsub fast float %1305, %1281
  %1318 = fsub fast float %1315, %1285
  %1319 = fmul fast float %1316, %1245
  %1320 = fmul fast float %1317, %1247
  %1321 = fmul fast float %1318, %1252
  %1322 = fadd fast float %1319, %1260
  %1323 = fadd fast float %1320, %1264
  %1324 = fadd fast float %1321, %1268
  %1325 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1326 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1327 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1328 = fmul fast float %1325, %1325
  %1329 = fmul fast float %1326, %1326
  %1330 = fmul fast float %1327, %1327
  %1331 = fsub fast float %1328, %1210
  %1332 = fsub fast float %1329, %1211
  %1333 = fsub fast float %1330, %1212
  %1334 = fmul fast float %1331, %1235
  %1335 = fmul fast float %1332, %1235
  %1336 = fmul fast float %1333, %1235
  %1337 = fadd fast float %1334, %1210
  %1338 = fadd fast float %1335, %1211
  %1339 = fadd fast float %1336, %1212
  %1340 = fadd fast float %1257, %1221
  %1341 = fsub fast float %1340, %1274
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1343 = fsub fast float %1342, %1221
  %1344 = fmul fast float %1343, %1235
  %1345 = fadd fast float %1344, %1221
  br label %1399

; <label>:1346                                    ; preds = %1234
  %1347 = and i32 %1237, 134217728
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1383, label %1349

; <label>:1349                                    ; preds = %1346
  %1350 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %1351 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %1352 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %1353 = fadd fast float %1350, -5.000000e-01
  %1354 = fadd fast float %1351, -5.000000e-01
  %1355 = fadd fast float %1352, -5.000000e-01
  %1356 = fmul fast float %1353, %1235
  %1357 = fmul fast float %1354, %1235
  %1358 = fmul fast float %1355, %1235
  %1359 = fadd fast float %1356, 5.000000e-01
  %1360 = fadd fast float %1357, 5.000000e-01
  %1361 = fadd fast float %1358, 5.000000e-01
  %1362 = call float @dx.op.unary.f32(i32 24, float %1210)  ; Sqrt(value)
  %1363 = call float @dx.op.unary.f32(i32 24, float %1211)  ; Sqrt(value)
  %1364 = call float @dx.op.unary.f32(i32 24, float %1212)  ; Sqrt(value)
  %1365 = fmul fast float %1359, 2.000000e+00
  %1366 = fsub fast float 1.000000e+00, %1365
  %1367 = fmul fast float %1366, %1362
  %1368 = fadd fast float %1367, %1365
  %1369 = fmul fast float %1368, %1362
  %1370 = fmul fast float %1360, 2.000000e+00
  %1371 = fsub fast float 1.000000e+00, %1370
  %1372 = fmul fast float %1371, %1363
  %1373 = fadd fast float %1372, %1370
  %1374 = fmul fast float %1373, %1363
  %1375 = fmul fast float %1361, 2.000000e+00
  %1376 = fsub fast float 1.000000e+00, %1375
  %1377 = fmul fast float %1376, %1364
  %1378 = fadd fast float %1377, %1375
  %1379 = fmul fast float %1378, %1364
  %1380 = fmul fast float %1369, %1369
  %1381 = fmul fast float %1374, %1374
  %1382 = fmul fast float %1379, %1379
  br label %1399

; <label>:1383                                    ; preds = %1346
  %1384 = fmul fast float %248, %248
  %1385 = fmul fast float %252, %252
  %1386 = fmul fast float %256, %256
  %1387 = fadd fast float %1384, -1.000000e+00
  %1388 = fadd fast float %1385, -1.000000e+00
  %1389 = fadd fast float %1386, -1.000000e+00
  %1390 = fmul fast float %1235, %1387
  %1391 = fmul fast float %1235, %1388
  %1392 = fmul fast float %1235, %1389
  %1393 = fadd fast float %1390, 1.000000e+00
  %1394 = fadd fast float %1391, 1.000000e+00
  %1395 = fadd fast float %1392, 1.000000e+00
  %1396 = fmul fast float %1393, %1210
  %1397 = fmul fast float %1394, %1211
  %1398 = fmul fast float %1395, %1212
  br label %1399

; <label>:1399                                    ; preds = %1383, %1349, %1240, %1196
  %1400 = phi float [ %1345, %1240 ], [ %1221, %1349 ], [ %1221, %1383 ], [ 0x3FA23C0BE0000000, %1196 ]
  %1401 = phi float [ %1337, %1240 ], [ %1380, %1349 ], [ %1396, %1383 ], [ 1.000000e+00, %1196 ]
  %1402 = phi float [ %1338, %1240 ], [ %1381, %1349 ], [ %1397, %1383 ], [ 1.000000e+00, %1196 ]
  %1403 = phi float [ %1339, %1240 ], [ %1382, %1349 ], [ %1398, %1383 ], [ 1.000000e+00, %1196 ]
  %1404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.i32 %1404, 1
  %1406 = and i32 %1405, 1
  %1407 = icmp ne i32 %1406, 0
  %1408 = add i32 %34, 356
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = and i32 %1410, 32
  %1412 = icmp ne i32 %1411, 0
  %1413 = and i1 %1407, %1412
  %1414 = select i1 %1413, float 1.000000e+00, float %1401
  %1415 = select i1 %1413, float 0x3FD3333340000000, float %1402
  %1416 = select i1 %1413, float 0x3FD3333340000000, float %1403
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = and i32 %1418, 32
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1493, label %1421

; <label>:1421                                    ; preds = %1399
  %1422 = add i32 %34, 108
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = add i32 %34, 460
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, 0
  %1429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1429, %dx.types.Handle %70, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.ResRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.ResRet.f32 %1430, 2
  %1434 = extractvalue %dx.types.ResRet.f32 %1430, 3
  %1435 = and i32 %1424, 255
  %1436 = uitofp i32 %1435 to float
  %1437 = lshr i32 %1424, 8
  %1438 = and i32 %1437, 255
  %1439 = uitofp i32 %1438 to float
  %1440 = lshr i32 %1424, 16
  %1441 = and i32 %1440, 255
  %1442 = uitofp i32 %1441 to float
  %1443 = fmul fast float %1442, 0x3F70101000000000
  %1444 = fmul fast float %1431, %1436
  %1445 = fadd fast float %1444, %1439
  %1446 = fmul fast float %1445, 0x3F70101000000000
  %1447 = fadd fast float %1432, -5.000000e-01
  %1448 = fadd fast float %1434, -5.000000e-01
  %1449 = fmul fast float %1447, %1443
  %1450 = fmul fast float %1448, %1443
  %1451 = fadd fast float %1449, 5.000000e-01
  %1452 = fadd fast float %1450, 5.000000e-01
  %1453 = fmul fast float %1451, 2.000000e+00
  %1454 = fadd fast float %1453, -1.000000e+00
  %1455 = fmul fast float %1452, 2.000000e+00
  %1456 = fadd fast float %1455, -1.000000e+00
  %1457 = fadd fast float %1454, %1456
  %1458 = fmul fast float %1457, 5.000000e-01
  %1459 = fsub fast float %1454, %1456
  %1460 = fmul fast float %1459, 5.000000e-01
  %1461 = call float @dx.op.unary.f32(i32 6, float %1458)  ; FAbs(value)
  %1462 = fsub fast float 1.000000e+00, %1461
  %1463 = call float @dx.op.unary.f32(i32 6, float %1460)  ; FAbs(value)
  %1464 = fsub fast float %1462, %1463
  %1465 = call float @dx.op.dot3.f32(i32 55, float %1458, float %1460, float %1464, float %1458, float %1460, float %1464)  ; Dot3(ax,ay,az,bx,by,bz)
  %1466 = call float @dx.op.unary.f32(i32 25, float %1465)  ; Rsqrt(value)
  %1467 = fmul fast float %1458, %1466
  %1468 = fmul fast float %1460, %1466
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 67108864
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %1489, label %1473

; <label>:1473                                    ; preds = %1421
  %1474 = add i32 %34, 296
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 65535
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 65535
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = lshr i32 %1476, 16
  %1484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1483)  ; LegacyF16ToF32(value)
  %1485 = fsub fast float %1446, %1484
  %1486 = fmul fast float %1485, %1478
  %1487 = fadd fast float %1486, %1482
  %1488 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  br label %1489

; <label>:1489                                    ; preds = %1473, %1421
  %1490 = phi float [ %1488, %1473 ], [ %1446, %1421 ]
  %1491 = call float @dx.op.dot2.f32(i32 54, float %1467, float %1468, float %910, float %911)  ; Dot2(ax,ay,bx,by)
  %1492 = call float @dx.op.dot2.f32(i32 54, float %1467, float %1468, float %912, float %913)  ; Dot2(ax,ay,bx,by)
  br label %1493

; <label>:1493                                    ; preds = %1489, %1399
  %1494 = phi float [ %1490, %1489 ], [ 0x3FD6666660000000, %1399 ]
  %1495 = phi float [ %1491, %1489 ], [ 0.000000e+00, %1399 ]
  %1496 = phi float [ %1492, %1489 ], [ 0.000000e+00, %1399 ]
  %1497 = phi float [ %1433, %1489 ], [ 1.000000e+00, %1399 ]
  %1498 = add i32 %34, 176
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = lshr i32 %1500, 22
  %1502 = shl nuw nsw i32 %1501, 5
  %1503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1502)  ; LegacyF16ToF32(value)
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = and i32 %1505, 64
  %1507 = icmp eq i32 %1506, 0
  br i1 %1507, label %1541, label %1508

; <label>:1508                                    ; preds = %1493
  %1509 = add i32 %34, 476
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = add i32 %1511, 0
  %1513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 131072
  %1517 = icmp eq i32 %1516, 0
  %1518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1513, %dx.types.Handle %70, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.ResRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.ResRet.f32 %1518, 2
  %1522 = fmul fast float %1519, %236
  %1523 = fmul fast float %1520, %239
  %1524 = fmul fast float %1521, %242
  br i1 %1517, label %1531, label %1525

; <label>:1525                                    ; preds = %1508
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 0
  %1528 = fmul fast float %1527, %1522
  %1529 = fmul fast float %1527, %1523
  %1530 = fmul fast float %1527, %1524
  br label %1531

; <label>:1531                                    ; preds = %1525, %1508
  %1532 = phi float [ %1528, %1525 ], [ %1522, %1508 ]
  %1533 = phi float [ %1529, %1525 ], [ %1523, %1508 ]
  %1534 = phi float [ %1530, %1525 ], [ %1524, %1508 ]
  %1535 = fmul fast float %1532, %1503
  %1536 = select i1 %174, float %1535, float %1532
  %1537 = call float @dx.op.dot3.f32(i32 55, float %1536, float %1533, float %1534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1538 = select i1 %174, float 0.000000e+00, float %1532
  %1539 = select i1 %174, float %1537, float %1533
  %1540 = select i1 %174, float 0.000000e+00, float %1534
  br label %1541

; <label>:1541                                    ; preds = %1531, %1493
  %1542 = phi float [ %1538, %1531 ], [ 0.000000e+00, %1493 ]
  %1543 = phi float [ %1539, %1531 ], [ 0.000000e+00, %1493 ]
  %1544 = phi float [ %1540, %1531 ], [ 0.000000e+00, %1493 ]
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 1024
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1579, label %1549

; <label>:1549                                    ; preds = %1541
  %1550 = add i32 %34, 168
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 255
  %1554 = uitofp i32 %1553 to float
  %1555 = fmul fast float %1554, 0x3F70101020000000
  %1556 = lshr i32 %1552, 8
  %1557 = and i32 %1556, 255
  %1558 = uitofp i32 %1557 to float
  %1559 = fmul fast float %1558, 0x3F70101020000000
  %1560 = lshr i32 %1552, 16
  %1561 = and i32 %1560, 255
  %1562 = uitofp i32 %1561 to float
  %1563 = fmul fast float %1562, 0x3F70101020000000
  %1564 = fmul fast float %1555, %1555
  %1565 = fmul fast float %1559, %1559
  %1566 = fmul fast float %1563, %1563
  %1567 = add i32 %34, 540
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1567, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = add i32 %1569, 0
  %1571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1571, %dx.types.Handle %71, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.ResRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.ResRet.f32 %1572, 2
  %1576 = fmul fast float %1564, %1573
  %1577 = fmul fast float %1565, %1574
  %1578 = fmul fast float %1566, %1575
  br label %1579

; <label>:1579                                    ; preds = %1549, %1541
  %1580 = phi float [ %1576, %1549 ], [ 0.000000e+00, %1541 ]
  %1581 = phi float [ %1577, %1549 ], [ 0.000000e+00, %1541 ]
  %1582 = phi float [ %1578, %1549 ], [ 0.000000e+00, %1541 ]
  %1583 = fcmp fast ogt float %1580, 0.000000e+00
  %1584 = fcmp fast ogt float %1581, 0.000000e+00
  %1585 = fcmp fast ogt float %1582, 0.000000e+00
  %1586 = call float @dx.op.unary.f32(i32 23, float %1580)  ; Log(value)
  %1587 = call float @dx.op.unary.f32(i32 23, float %1581)  ; Log(value)
  %1588 = call float @dx.op.unary.f32(i32 23, float %1582)  ; Log(value)
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = lshr i32 %1590, 7
  %1592 = and i32 %1591, 32752
  %1593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1592)  ; LegacyF16ToF32(value)
  %1594 = fmul fast float %1586, 0xBFE62E4300000000
  %1595 = fmul fast float %1594, %1593
  %1596 = fmul fast float %1587, 0xBFE62E4300000000
  %1597 = fmul fast float %1596, %1593
  %1598 = fmul fast float %1588, 0xBFE62E4300000000
  %1599 = fmul fast float %1598, %1593
  %1600 = select i1 %1583, float %1595, float 1.270000e+02
  %1601 = select i1 %1584, float %1597, float 1.270000e+02
  %1602 = select i1 %1585, float %1599, float 1.270000e+02
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = and i32 %1604, 10240
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %1627, label %1607

; <label>:1607                                    ; preds = %1579
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 2048
  %1611 = icmp eq i32 %1610, 0
  br i1 %1611, label %1627, label %1612

; <label>:1612                                    ; preds = %1607
  %1613 = add i32 %34, 556
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = add i32 %1615, 0
  %1617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1617, %dx.types.Handle %71, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1619 = extractvalue %dx.types.ResRet.f32 %1618, 3
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = shl i32 %1621, 4
  %1623 = and i32 %1622, 32752
  %1624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1623)  ; LegacyF16ToF32(value)
  %1625 = fmul fast float %1624, %1619
  %1626 = call float @dx.op.binary.f32(i32 35, float %1625, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1627

; <label>:1627                                    ; preds = %1612, %1607, %1579
  %1628 = phi float [ %1626, %1612 ], [ 0x3F70101020000000, %1607 ], [ 0x3F70101020000000, %1579 ]
  %1629 = add i32 %34, 112
  %1630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1629, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.i32 %1630, 0
  %1632 = and i32 %1631, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = lshr i32 %1631, 8
  %1635 = and i32 %1634, 255
  %1636 = uitofp i32 %1635 to float
  %1637 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1638 = fmul fast float %1636, %1637
  %1639 = fadd fast float %1638, %1633
  %1640 = fmul fast float %1639, 0x3F70101020000000
  %1641 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  br i1 %898, label %1642, label %1677

; <label>:1642                                    ; preds = %1627
  %1643 = fmul fast float %1628, 2.000000e+00
  %1644 = fcmp fast olt float %1600, 1.270000e+02
  %1645 = fcmp fast olt float %1601, 1.270000e+02
  %1646 = fcmp fast olt float %1602, 1.270000e+02
  %1647 = fmul fast float %1600, 0xBFF7154760000000
  %1648 = fmul fast float %1647, %1643
  %1649 = fmul fast float %1601, 0xBFF7154760000000
  %1650 = fmul fast float %1649, %1643
  %1651 = fmul fast float %1602, 0xBFF7154760000000
  %1652 = fmul fast float %1651, %1643
  %1653 = call float @dx.op.unary.f32(i32 21, float %1648)  ; Exp(value)
  %1654 = call float @dx.op.unary.f32(i32 21, float %1650)  ; Exp(value)
  %1655 = call float @dx.op.unary.f32(i32 21, float %1652)  ; Exp(value)
  %1656 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1657 = call float @dx.op.unary.f32(i32 7, float %1654)  ; Saturate(value)
  %1658 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1659 = fadd fast float %1656, -1.000000e+00
  %1660 = select i1 %1644, float %1659, float -1.000000e+00
  %1661 = fadd fast float %1657, -1.000000e+00
  %1662 = select i1 %1645, float %1661, float -1.000000e+00
  %1663 = fadd fast float %1658, -1.000000e+00
  %1664 = select i1 %1646, float %1663, float -1.000000e+00
  %1665 = fmul fast float %1660, %1194
  %1666 = fmul fast float %1662, %1194
  %1667 = fmul fast float %1664, %1194
  %1668 = fadd fast float %1665, 1.000000e+00
  %1669 = fadd fast float %1666, 1.000000e+00
  %1670 = fadd fast float %1667, 1.000000e+00
  %1671 = fmul fast float %1668, %886
  %1672 = fmul fast float %1669, %887
  %1673 = fmul fast float %1670, %888
  %1674 = fmul fast float %1668, %889
  %1675 = fmul fast float %1669, %890
  %1676 = fmul fast float %1670, %891
  br label %1677

; <label>:1677                                    ; preds = %1642, %1627
  %1678 = phi float [ %1671, %1642 ], [ %886, %1627 ]
  %1679 = phi float [ %1672, %1642 ], [ %887, %1627 ]
  %1680 = phi float [ %1673, %1642 ], [ %888, %1627 ]
  %1681 = phi float [ %1674, %1642 ], [ %889, %1627 ]
  %1682 = phi float [ %1675, %1642 ], [ %890, %1627 ]
  %1683 = phi float [ %1676, %1642 ], [ %891, %1627 ]
  %1684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.i32 %1684, 0
  %1686 = and i32 %1685, 3
  %1687 = icmp eq i32 %1686, 3
  br i1 %1687, label %1766, label %1688

; <label>:1688                                    ; preds = %1677
  %1689 = and i32 %1685, 16
  %1690 = icmp ne i32 %1689, 0
  %1691 = select i1 %1690, float %1194, float 0.000000e+00
  %1692 = icmp eq i32 %1686, 0
  br i1 %1692, label %1693, label %1721

; <label>:1693                                    ; preds = %1688
  %1694 = and i32 %1685, 64
  %1695 = icmp ne i32 %1694, 0
  %1696 = select i1 %1695, float %1194, float 0.000000e+00
  %1697 = fsub fast float %1414, %1678
  %1698 = fsub fast float %1415, %1679
  %1699 = fsub fast float %1416, %1680
  %1700 = fmul fast float %1691, %1697
  %1701 = fmul fast float %1691, %1698
  %1702 = fmul fast float %1691, %1699
  %1703 = fadd fast float %1700, %1678
  %1704 = fadd fast float %1701, %1679
  %1705 = fadd fast float %1702, %1680
  %1706 = fsub fast float %1400, %892
  %1707 = fmul fast float %1691, %1706
  %1708 = fadd fast float %1707, %892
  %1709 = fsub fast float %1542, %1681
  %1710 = fsub fast float %1543, %1682
  %1711 = fsub fast float %1544, %1683
  %1712 = fmul fast float %1696, %1709
  %1713 = fmul fast float %1696, %1710
  %1714 = fmul fast float %1696, %1711
  %1715 = fadd fast float %1712, %1681
  %1716 = fadd fast float %1713, %1682
  %1717 = fadd fast float %1714, %1683
  %1718 = fsub fast float %1641, %896
  %1719 = fmul fast float %1691, %1718
  %1720 = fadd fast float %1719, %896
  br label %1766

; <label>:1721                                    ; preds = %1688
  %1722 = icmp eq i32 %1686, 1
  br i1 %1722, label %1723, label %1736

; <label>:1723                                    ; preds = %1721
  %1724 = fadd fast float %1414, -1.000000e+00
  %1725 = fadd fast float %1415, -1.000000e+00
  %1726 = fadd fast float %1416, -1.000000e+00
  %1727 = fmul fast float %1691, %1724
  %1728 = fmul fast float %1691, %1725
  %1729 = fmul fast float %1691, %1726
  %1730 = fadd fast float %1727, 1.000000e+00
  %1731 = fadd fast float %1728, 1.000000e+00
  %1732 = fadd fast float %1729, 1.000000e+00
  %1733 = fmul fast float %1730, %1678
  %1734 = fmul fast float %1731, %1679
  %1735 = fmul fast float %1732, %1680
  br label %1766

; <label>:1736                                    ; preds = %1721
  %1737 = icmp eq i32 %1686, 2
  br i1 %1737, label %1738, label %1766

; <label>:1738                                    ; preds = %1736
  %1739 = call float @dx.op.unary.f32(i32 24, float %1414)  ; Sqrt(value)
  %1740 = call float @dx.op.unary.f32(i32 24, float %1415)  ; Sqrt(value)
  %1741 = call float @dx.op.unary.f32(i32 24, float %1416)  ; Sqrt(value)
  %1742 = fadd fast float %1739, -5.000000e-01
  %1743 = fadd fast float %1740, -5.000000e-01
  %1744 = fadd fast float %1741, -5.000000e-01
  %1745 = fmul fast float %1742, %1691
  %1746 = fmul fast float %1743, %1691
  %1747 = fmul fast float %1744, %1691
  %1748 = fadd fast float %1745, 5.000000e-01
  %1749 = fadd fast float %1746, 5.000000e-01
  %1750 = fadd fast float %1747, 5.000000e-01
  %1751 = fmul fast float %1748, 2.000000e+00
  %1752 = fsub fast float 1.000000e+00, %1751
  %1753 = fmul fast float %1752, %1678
  %1754 = fadd fast float %1753, %1751
  %1755 = fmul fast float %1754, %1678
  %1756 = fmul fast float %1749, 2.000000e+00
  %1757 = fsub fast float 1.000000e+00, %1756
  %1758 = fmul fast float %1757, %1679
  %1759 = fadd fast float %1758, %1756
  %1760 = fmul fast float %1759, %1679
  %1761 = fmul fast float %1750, 2.000000e+00
  %1762 = fsub fast float 1.000000e+00, %1761
  %1763 = fmul fast float %1762, %1680
  %1764 = fadd fast float %1763, %1761
  %1765 = fmul fast float %1764, %1680
  br label %1766

; <label>:1766                                    ; preds = %1738, %1736, %1723, %1693, %1677
  %1767 = phi float [ %1678, %1677 ], [ %1755, %1738 ], [ %1678, %1736 ], [ %1733, %1723 ], [ %1703, %1693 ]
  %1768 = phi float [ %1679, %1677 ], [ %1760, %1738 ], [ %1679, %1736 ], [ %1734, %1723 ], [ %1704, %1693 ]
  %1769 = phi float [ %1680, %1677 ], [ %1765, %1738 ], [ %1680, %1736 ], [ %1735, %1723 ], [ %1705, %1693 ]
  %1770 = phi float [ %1681, %1677 ], [ %1681, %1738 ], [ %1681, %1736 ], [ %1681, %1723 ], [ %1715, %1693 ]
  %1771 = phi float [ %1682, %1677 ], [ %1682, %1738 ], [ %1682, %1736 ], [ %1682, %1723 ], [ %1716, %1693 ]
  %1772 = phi float [ %1683, %1677 ], [ %1683, %1738 ], [ %1683, %1736 ], [ %1683, %1723 ], [ %1717, %1693 ]
  %1773 = phi float [ %892, %1677 ], [ %892, %1738 ], [ %892, %1736 ], [ %892, %1723 ], [ %1708, %1693 ]
  %1774 = phi float [ %896, %1677 ], [ %896, %1738 ], [ %896, %1736 ], [ %896, %1723 ], [ %1720, %1693 ]
  %1775 = and i32 %1685, 12
  %1776 = icmp eq i32 %1775, 12
  br i1 %1776, label %1849, label %1777

; <label>:1777                                    ; preds = %1766
  %1778 = and i32 %1685, 2097184
  %1779 = icmp eq i32 %1778, 2097184
  %1780 = select i1 %1779, float %1194, float 0.000000e+00
  %1781 = and i32 %1685, 4194336
  %1782 = icmp eq i32 %1781, 4194336
  %1783 = select i1 %1782, float %1194, float 0.000000e+00
  %1784 = and i32 %1685, 8388640
  %1785 = icmp eq i32 %1784, 8388640
  %1786 = select i1 %1785, float %1194, float 0.000000e+00
  %1787 = icmp eq i32 %1775, 0
  br i1 %1787, label %1788, label %1801

; <label>:1788                                    ; preds = %1777
  %1789 = fsub fast float %1495, %884
  %1790 = fsub fast float %1496, %885
  %1791 = fmul fast float %1780, %1789
  %1792 = fmul fast float %1780, %1790
  %1793 = fadd fast float %1791, %884
  %1794 = fadd fast float %1792, %885
  %1795 = fsub fast float %1497, %895
  %1796 = fmul fast float %1783, %1795
  %1797 = fadd fast float %1796, %895
  %1798 = fsub fast float %1494, %894
  %1799 = fmul fast float %1786, %1798
  %1800 = fadd fast float %1799, %894
  br label %1849

; <label>:1801                                    ; preds = %1777
  %1802 = icmp eq i32 %1775, 4
  br i1 %1802, label %1803, label %1835

; <label>:1803                                    ; preds = %1801
  %1804 = fmul fast float %1780, %1495
  %1805 = fmul fast float %1780, %1496
  %1806 = fadd fast float %1804, %884
  %1807 = fadd fast float %1805, %885
  %1808 = call float @dx.op.binary.f32(i32 36, float %895, float %1497)  ; FMin(a,b)
  %1809 = fsub fast float %1808, %895
  %1810 = fmul fast float %1809, %1783
  %1811 = fadd fast float %1810, %895
  %1812 = fadd fast float %1494, %894
  %1813 = fmul fast float %1812, 0x3FF337FAE0000000
  %1814 = fmul fast float %894, %894
  %1815 = fmul fast float %1494, %1494
  %1816 = fadd fast float %1815, %1814
  %1817 = fmul fast float %1816, 0x3FE5152B00000000
  %1818 = fmul fast float %894, 0xBFCC1F85E0000000
  %1819 = fmul fast float %1818, %1494
  %1820 = fadd fast float %1819, 0xBFE1363700000000
  %1821 = fadd fast float %1820, %1813
  %1822 = fsub fast float %1821, %1817
  %1823 = fmul fast float %1812, 0x3FBA6F0D00000000
  %1824 = fmul fast float %1816, 0x3FD0432880000000
  %1825 = fmul fast float %894, 0xBFEF110800000000
  %1826 = fmul fast float %1825, %1494
  %1827 = fadd fast float %1826, 1.000000e+00
  %1828 = fsub fast float %1827, %1823
  %1829 = fadd fast float %1828, %1824
  %1830 = fdiv fast float %1822, %1829
  %1831 = call float @dx.op.unary.f32(i32 7, float %1830)  ; Saturate(value)
  %1832 = fsub fast float %1831, %894
  %1833 = fmul fast float %1832, %1786
  %1834 = fadd fast float %1833, %894
  br label %1849

; <label>:1835                                    ; preds = %1801
  %1836 = icmp eq i32 %1775, 8
  br i1 %1836, label %1837, label %1849

; <label>:1837                                    ; preds = %1835
  %1838 = fmul fast float %1780, %1495
  %1839 = fmul fast float %1780, %1496
  %1840 = fadd fast float %1838, %884
  %1841 = fadd fast float %1839, %885
  %1842 = call float @dx.op.binary.f32(i32 36, float %895, float %1497)  ; FMin(a,b)
  %1843 = fsub fast float %1842, %895
  %1844 = fmul fast float %1843, %1783
  %1845 = fadd fast float %1844, %895
  %1846 = fsub fast float %1494, %894
  %1847 = fmul fast float %1786, %1846
  %1848 = fadd fast float %1847, %894
  br label %1849

; <label>:1849                                    ; preds = %1837, %1835, %1803, %1788, %1766, %1193, %897, %883
  %1850 = phi float [ %884, %1766 ], [ %884, %1193 ], [ %884, %883 ], [ %1840, %1837 ], [ %884, %1835 ], [ %1806, %1803 ], [ %1793, %1788 ], [ %884, %897 ]
  %1851 = phi float [ %885, %1766 ], [ %885, %1193 ], [ %885, %883 ], [ %1841, %1837 ], [ %885, %1835 ], [ %1807, %1803 ], [ %1794, %1788 ], [ %885, %897 ]
  %1852 = phi float [ %1767, %1766 ], [ %886, %1193 ], [ %886, %883 ], [ %1767, %1837 ], [ %1767, %1835 ], [ %1767, %1803 ], [ %1767, %1788 ], [ %886, %897 ]
  %1853 = phi float [ %1768, %1766 ], [ %887, %1193 ], [ %887, %883 ], [ %1768, %1837 ], [ %1768, %1835 ], [ %1768, %1803 ], [ %1768, %1788 ], [ %887, %897 ]
  %1854 = phi float [ %1769, %1766 ], [ %888, %1193 ], [ %888, %883 ], [ %1769, %1837 ], [ %1769, %1835 ], [ %1769, %1803 ], [ %1769, %1788 ], [ %888, %897 ]
  %1855 = phi float [ %1770, %1766 ], [ %889, %1193 ], [ %889, %883 ], [ %1770, %1837 ], [ %1770, %1835 ], [ %1770, %1803 ], [ %1770, %1788 ], [ %889, %897 ]
  %1856 = phi float [ %1771, %1766 ], [ %890, %1193 ], [ %890, %883 ], [ %1771, %1837 ], [ %1771, %1835 ], [ %1771, %1803 ], [ %1771, %1788 ], [ %890, %897 ]
  %1857 = phi float [ %1772, %1766 ], [ %891, %1193 ], [ %891, %883 ], [ %1772, %1837 ], [ %1772, %1835 ], [ %1772, %1803 ], [ %1772, %1788 ], [ %891, %897 ]
  %1858 = phi float [ %1773, %1766 ], [ %892, %1193 ], [ %892, %883 ], [ %1773, %1837 ], [ %1773, %1835 ], [ %1773, %1803 ], [ %1773, %1788 ], [ %892, %897 ]
  %1859 = phi float [ %894, %1766 ], [ %894, %1193 ], [ %894, %883 ], [ %1848, %1837 ], [ %894, %1835 ], [ %1834, %1803 ], [ %1800, %1788 ], [ %894, %897 ]
  %1860 = phi float [ %895, %1766 ], [ %895, %1193 ], [ %895, %883 ], [ %1845, %1837 ], [ %895, %1835 ], [ %1811, %1803 ], [ %1797, %1788 ], [ %895, %897 ]
  %1861 = phi float [ %1774, %1766 ], [ %896, %1193 ], [ %896, %883 ], [ %1774, %1837 ], [ %1774, %1835 ], [ %1774, %1803 ], [ %1774, %1788 ], [ %896, %897 ]
  br i1 %363, label %2814, label %1862

; <label>:1862                                    ; preds = %1849
  %1863 = icmp ult i32 %416, 3
  %1864 = add i32 %34, 56
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = add i32 %34, 60
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = or i32 %1869, %1866
  %1871 = icmp eq i32 %1870, 0
  br i1 %1871, label %2814, label %1872

; <label>:1872                                    ; preds = %1862
  %1873 = and i32 %1866, 262144
  %1874 = icmp ne i32 %1873, 0
  %1875 = select i1 %1874, float %37, float 1.000000e+00
  %1876 = select i1 %1874, float %38, float 0.000000e+00
  %1877 = select i1 %1874, float %39, float 0.000000e+00
  %1878 = select i1 %1874, float %40, float 1.000000e+00
  %1879 = select i1 %1874, float %41, float %62
  %1880 = select i1 %1874, float %42, float %63
  %1881 = add i32 %34, 316
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = lshr i32 %1883, 16
  %1885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1884)  ; LegacyF16ToF32(value)
  %1886 = fmul fast float %1885, 0x3F50624DE0000000
  %1887 = add i32 %34, 120
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = lshr i32 %1889, 16
  %1891 = and i32 %1890, 255
  %1892 = lshr i32 %1889, 24
  %1893 = add i32 %34, 324
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = and i32 %1895, 65535
  %1897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1896)  ; LegacyF16ToF32(value)
  %1898 = lshr i32 %1895, 16
  %1899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1898)  ; LegacyF16ToF32(value)
  %1900 = add i32 %34, 64
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = lshr i32 %1902, 22
  %1904 = shl nuw nsw i32 %1903, 5
  %1905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1904)  ; LegacyF16ToF32(value)
  %1906 = shl i32 %1902, 4
  %1907 = and i32 %1906, 32752
  %1908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1907)  ; LegacyF16ToF32(value)
  %1909 = lshr i32 %1902, 7
  %1910 = and i32 %1909, 32752
  %1911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1910)  ; LegacyF16ToF32(value)
  %1912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.f32 %1912, 3
  %1914 = fmul fast float %1913, 1.000000e+03
  %1915 = fmul fast float %313, %1914
  %1916 = call float @dx.op.unary.f32(i32 22, float %1915)  ; Frc(value)
  %1917 = fadd fast float %1916, %303
  %1918 = fmul fast float %314, %1914
  %1919 = call float @dx.op.unary.f32(i32 22, float %1918)  ; Frc(value)
  %1920 = fadd fast float %1919, %305
  %1921 = fmul fast float %1886, %1914
  %1922 = call float @dx.op.unary.f32(i32 22, float %1921)  ; Frc(value)
  %1923 = fmul fast float %1922, 0x401921FB60000000
  %1924 = fadd fast float %1923, %1905
  %1925 = call float @dx.op.unary.f32(i32 13, float %1924)  ; Sin(value)
  %1926 = call float @dx.op.unary.f32(i32 12, float %1924)  ; Cos(value)
  %1927 = fsub fast float -0.000000e+00, %1925
  %1928 = fadd fast float %1879, -5.000000e-01
  %1929 = fadd fast float %1880, -5.000000e-01
  %1930 = fmul fast float %1897, %1928
  %1931 = fmul fast float %1899, %1929
  %1932 = fadd fast float %1930, 5.000000e-01
  %1933 = fadd fast float %1931, 5.000000e-01
  %1934 = fmul fast float %1908, %1932
  %1935 = fmul fast float %1911, %1933
  %1936 = fmul fast float %1926, %1934
  %1937 = call float @dx.op.tertiary.f32(i32 46, float %1927, float %1935, float %1936)  ; FMad(a,b,c)
  %1938 = fmul fast float %1925, %1934
  %1939 = call float @dx.op.tertiary.f32(i32 46, float %1926, float %1935, float %1938)  ; FMad(a,b,c)
  %1940 = fadd fast float %1917, %1937
  %1941 = fadd fast float %1920, %1939
  %1942 = icmp ugt i32 %1891, 1
  %1943 = icmp ugt i32 %1889, 33554431
  %1944 = or i1 %1943, %1942
  br i1 %1944, label %1945, label %1970

; <label>:1945                                    ; preds = %1872
  %1946 = add i32 %34, 260
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = lshr i32 %1948, 16
  %1950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1949)  ; LegacyF16ToF32(value)
  %1951 = fmul fast float %1913, %1950
  %1952 = call float @dx.op.unary.f32(i32 22, float %1951)  ; Frc(value)
  %1953 = mul nuw nsw i32 %1891, %1892
  %1954 = uitofp i32 %1953 to float
  %1955 = fmul fast float %1952, %1954
  %1956 = call float @dx.op.unary.f32(i32 27, float %1955)  ; Round_ni(value)
  %1957 = fptoui float %1956 to i32
  %1958 = urem i32 %1957, %1891
  %1959 = udiv i32 %1957, %1892
  %1960 = call float @dx.op.unary.f32(i32 22, float %1940)  ; Frc(value)
  %1961 = call float @dx.op.unary.f32(i32 22, float %1941)  ; Frc(value)
  %1962 = uitofp i32 %1958 to float
  %1963 = uitofp i32 %1959 to float
  %1964 = fadd fast float %1960, %1962
  %1965 = fadd fast float %1961, %1963
  %1966 = uitofp i32 %1891 to float
  %1967 = uitofp i32 %1892 to float
  %1968 = fdiv fast float %1964, %1966
  %1969 = fdiv fast float %1965, %1967
  br label %1970

; <label>:1970                                    ; preds = %1945, %1872
  %1971 = phi float [ %1968, %1945 ], [ %1940, %1872 ]
  %1972 = phi float [ %1969, %1945 ], [ %1941, %1872 ]
  %1973 = and i32 %1866, 16777216
  %1974 = icmp eq i32 %1973, 0
  br i1 %1974, label %2084, label %1975

; <label>:1975                                    ; preds = %1970
  %1976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1976, 0
  %1978 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %1979 = extractvalue %dx.types.CBufRet.f32 %1976, 2
  %1980 = fadd fast float %1977, %133
  %1981 = fadd fast float %1978, %134
  %1982 = fadd fast float %1979, %135
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 0
  %1985 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1986 = icmp eq i32 %35, 65535
  br i1 %1986, label %2081, label %1987

; <label>:1987                                    ; preds = %1975
  %1988 = lshr i32 %35, 1
  %1989 = shl i32 %1988, 2
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = and i32 %35, 1
  %1993 = icmp ne i32 %1992, 0
  %1994 = lshr i32 %1991, 16
  %1995 = and i32 %1991, 65535
  %1996 = select i1 %1993, i32 %1994, i32 %1995
  %1997 = icmp eq i32 %1996, 65535
  br i1 %1997, label %2077, label %1998

; <label>:1998                                    ; preds = %1987
  %1999 = mul nuw nsw i32 %1996, 40
  %2000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.ResRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.ResRet.f32 %2000, 2
  %2004 = add nuw nsw i32 %1999, 12
  %2005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.f32 %2005, 0
  %2007 = extractvalue %dx.types.ResRet.f32 %2005, 1
  %2008 = extractvalue %dx.types.ResRet.f32 %2005, 2
  %2009 = add nuw nsw i32 %1999, 24
  %2010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = extractvalue %dx.types.ResRet.f32 %2010, 1
  %2013 = extractvalue %dx.types.ResRet.f32 %2010, 2
  %2014 = add nuw nsw i32 %1999, 36
  %2015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2014, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.f32 %2015, 0
  %2017 = fsub fast float %1980, %2001
  %2018 = fsub fast float %1981, %2002
  %2019 = fsub fast float %1982, %2003
  %2020 = fmul fast float %2016, %2017
  %2021 = fmul fast float %2016, %2018
  %2022 = fmul fast float %2016, %2019
  %2023 = call float @dx.op.unary.f32(i32 27, float %2020)  ; Round_ni(value)
  %2024 = call float @dx.op.unary.f32(i32 27, float %2021)  ; Round_ni(value)
  %2025 = call float @dx.op.unary.f32(i32 27, float %2022)  ; Round_ni(value)
  %2026 = fadd fast float %2023, 5.000000e-01
  %2027 = fadd fast float %2024, 5.000000e-01
  %2028 = fadd fast float %2025, 5.000000e-01
  %2029 = fmul fast float %2026, %2006
  %2030 = fmul fast float %2027, %2007
  %2031 = fmul fast float %2028, %2008
  %2032 = shl i32 %35, 2
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = add i32 %2034, 0
  %2036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2037 = call float @dx.op.unary.f32(i32 22, float %2029)  ; Frc(value)
  %2038 = call float @dx.op.unary.f32(i32 22, float %2030)  ; Frc(value)
  %2039 = call float @dx.op.unary.f32(i32 22, float %2031)  ; Frc(value)
  %2040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2036, %dx.types.Handle %29, float %2037, float %2038, float %2039, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  %2042 = extractvalue %dx.types.ResRet.f32 %2040, 1
  %2043 = extractvalue %dx.types.ResRet.f32 %2040, 2
  %2044 = fmul fast float %2041, 1.023000e+03
  %2045 = fmul fast float %2042, 1.023000e+03
  %2046 = fmul fast float %2043, 1.023000e+03
  %2047 = fadd fast float %2044, 5.000000e-01
  %2048 = fadd fast float %2045, 5.000000e-01
  %2049 = fadd fast float %2046, 5.000000e-01
  %2050 = call float @dx.op.unary.f32(i32 27, float %2047)  ; Round_ni(value)
  %2051 = call float @dx.op.unary.f32(i32 27, float %2048)  ; Round_ni(value)
  %2052 = call float @dx.op.unary.f32(i32 27, float %2049)  ; Round_ni(value)
  %2053 = fsub fast float %2020, %2023
  %2054 = fsub fast float %2021, %2024
  %2055 = fsub fast float %2022, %2025
  %2056 = fmul fast float %2053, 7.500000e-01
  %2057 = fmul fast float %2054, 7.500000e-01
  %2058 = fmul fast float %2055, 7.500000e-01
  %2059 = fadd fast float %2023, 1.250000e-01
  %2060 = fadd fast float %2059, %2056
  %2061 = fadd fast float %2060, %2050
  %2062 = fadd fast float %2024, 1.250000e-01
  %2063 = fadd fast float %2062, %2057
  %2064 = fadd fast float %2063, %2051
  %2065 = fadd fast float %2025, 1.250000e-01
  %2066 = fadd fast float %2065, %2058
  %2067 = fadd fast float %2066, %2052
  %2068 = fmul fast float %2061, %2011
  %2069 = fmul fast float %2064, %2012
  %2070 = fmul fast float %2067, %2013
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = add i32 %2072, 0
  %2074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2073, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2074, %dx.types.Handle %27, float %2068, float %2069, float %2070, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  br label %2077

; <label>:2077                                    ; preds = %1998, %1987
  %2078 = phi float [ %2076, %1998 ], [ -1.000000e+00, %1987 ]
  %2079 = fadd fast float %2078, %1985
  %2080 = call float @dx.op.unary.f32(i32 7, float %2079)  ; Saturate(value)
  br label %2081

; <label>:2081                                    ; preds = %2077, %1975
  %2082 = phi float [ %2080, %2077 ], [ %1985, %1975 ]
  %2083 = fmul fast float %2082, %412
  br label %2084

; <label>:2084                                    ; preds = %2081, %1970
  %2085 = phi float [ %2083, %2081 ], [ %412, %1970 ]
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = and i32 %2087, 256
  %2089 = icmp eq i32 %2088, 0
  br i1 %2089, label %2136, label %2090

; <label>:2090                                    ; preds = %2084
  %2091 = add i32 %34, 512
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = add i32 %2093, 0
  %2095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2096 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2095, %dx.types.Handle %71, float %1971, float %1972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2097 = extractvalue %dx.types.ResRet.f32 %2096, 0
  %2098 = add i32 %34, 132
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = shl i32 %2100, 4
  %2102 = and i32 %2101, 32752
  %2103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2102)  ; LegacyF16ToF32(value)
  %2104 = lshr i32 %2100, 7
  %2105 = and i32 %2104, 32752
  %2106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2105)  ; LegacyF16ToF32(value)
  %2107 = fsub fast float 1.000000e+00, %2085
  %2108 = call float @dx.op.binary.f32(i32 35, float %2107, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2109 = bitcast float %2085 to i32
  %2110 = sitofp i32 %2109 to float
  %2111 = fadd fast float %2110, 0xC1CFBF8940000000
  %2112 = fmul fast float %2106, %2111
  %2113 = fadd fast float %2112, 0x41CFBF8940000000
  %2114 = fptosi float %2113 to i32
  %2115 = bitcast i32 %2114 to float
  %2116 = bitcast float %2108 to i32
  %2117 = sitofp i32 %2116 to float
  %2118 = fadd fast float %2117, 0xC1CFBF8940000000
  %2119 = fmul fast float %2118, %2106
  %2120 = fadd fast float %2119, 0x41CFBF8940000000
  %2121 = fptosi float %2120 to i32
  %2122 = bitcast i32 %2121 to float
  %2123 = fmul fast float %2115, %2103
  %2124 = fmul fast float %2122, %2103
  %2125 = fsub fast float %2108, %2123
  %2126 = fadd fast float %2124, %2108
  %2127 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2128 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2129 = fsub fast float %2097, %2127
  %2130 = fsub fast float %2128, %2127
  %2131 = bitcast float %2130 to i32
  %2132 = sub nsw i32 2129859010, %2131
  %2133 = bitcast i32 %2132 to float
  %2134 = fmul fast float %2133, %2129
  %2135 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  br label %2136

; <label>:2136                                    ; preds = %2090, %2084
  %2137 = phi float [ %2135, %2090 ], [ %2085, %2084 ]
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = and i32 %2139, 128
  %2141 = icmp eq i32 %2140, 0
  br i1 %2141, label %2158, label %2142

; <label>:2142                                    ; preds = %2136
  %2143 = add i32 %34, 496
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = add i32 %2145, 0
  %2147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2147, %dx.types.Handle %71, float %1971, float %1972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2149 = extractvalue %dx.types.ResRet.f32 %2148, 0
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = and i32 %2151, 524288
  %2153 = icmp ne i32 %2152, 0
  %2154 = fcmp fast ogt float %2149, 0x3FE0101020000000
  %2155 = select i1 %2154, float 1.000000e+00, float 0.000000e+00
  %2156 = select i1 %2153, float %2155, float %2149
  %2157 = fmul fast float %2156, %2137
  br label %2158

; <label>:2158                                    ; preds = %2142, %2136
  %2159 = phi float [ %2157, %2142 ], [ %2137, %2136 ]
  %2160 = fcmp fast ult float %2159, 0x3F70101020000000
  br i1 %2160, label %2814, label %2161

; <label>:2161                                    ; preds = %2158
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = and i32 %2163, 16
  %2165 = icmp eq i32 %2164, 0
  br i1 %2165, label %2364, label %2166

; <label>:2166                                    ; preds = %2161
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = add i32 %34, 448
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = add i32 %2171, 0
  %2173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2173, %dx.types.Handle %70, float %1971, float %1972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2175 = extractvalue %dx.types.ResRet.f32 %2174, 0
  %2176 = extractvalue %dx.types.ResRet.f32 %2174, 1
  %2177 = extractvalue %dx.types.ResRet.f32 %2174, 2
  %2178 = extractvalue %dx.types.ResRet.f32 %2174, 3
  %2179 = and i32 %2168, 255
  %2180 = uitofp i32 %2179 to float
  %2181 = lshr i32 %2168, 8
  %2182 = and i32 %2181, 255
  %2183 = uitofp i32 %2182 to float
  %2184 = fmul fast float %2178, %2180
  %2185 = fadd fast float %2184, %2183
  %2186 = fmul fast float %2185, 0x3F70101000000000
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = and i32 %2188, 512
  %2190 = icmp eq i32 %2189, 0
  br i1 %2190, label %2199, label %2191

; <label>:2191                                    ; preds = %2166
  %2192 = add i32 %34, 528
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2192, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = add i32 %2194, 0
  %2196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2197 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2196, %dx.types.Handle %71, float %1971, float %1972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2198 = extractvalue %dx.types.ResRet.f32 %2197, 0
  br label %2199

; <label>:2199                                    ; preds = %2191, %2166
  %2200 = phi float [ %2198, %2191 ], [ 1.000000e+00, %2166 ]
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = and i32 %2202, 33554432
  %2204 = icmp eq i32 %2203, 0
  br i1 %2204, label %2311, label %2205

; <label>:2205                                    ; preds = %2199
  %2206 = add i32 %34, 256
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = and i32 %2208, 65535
  %2210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2209)  ; LegacyF16ToF32(value)
  %2211 = lshr i32 %2208, 16
  %2212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2211)  ; LegacyF16ToF32(value)
  %2213 = add i32 %34, 260
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = and i32 %2215, 65535
  %2217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2216)  ; LegacyF16ToF32(value)
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = lshr i32 %2219, 24
  %2221 = uitofp i32 %2220 to float
  %2222 = fmul fast float %2221, 0x3F70101020000000
  %2223 = and i32 %2219, 255
  %2224 = uitofp i32 %2223 to float
  %2225 = fmul fast float %2224, 0x3F70101020000000
  %2226 = lshr i32 %2219, 8
  %2227 = and i32 %2226, 255
  %2228 = uitofp i32 %2227 to float
  %2229 = fmul fast float %2228, 0x3F70101020000000
  %2230 = lshr i32 %2219, 16
  %2231 = and i32 %2230, 255
  %2232 = uitofp i32 %2231 to float
  %2233 = fmul fast float %2232, 0x3F70101020000000
  %2234 = add i32 %34, 252
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2234, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = lshr i32 %2236, 24
  %2238 = uitofp i32 %2237 to float
  %2239 = fmul fast float %2238, 0x3F70101020000000
  %2240 = and i32 %2236, 255
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2241, 0x3F70101020000000
  %2243 = lshr i32 %2236, 8
  %2244 = and i32 %2243, 255
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2245, 0x3F70101020000000
  %2247 = lshr i32 %2236, 16
  %2248 = and i32 %2247, 255
  %2249 = uitofp i32 %2248 to float
  %2250 = fmul fast float %2249, 0x3F70101020000000
  %2251 = bitcast float %2175 to i32
  %2252 = ashr i32 %2251, 1
  %2253 = sub nsw i32 1597463174, %2252
  %2254 = bitcast i32 %2253 to float
  %2255 = fmul fast float %2175, 5.000000e-01
  %2256 = fmul fast float %2254, %2254
  %2257 = fmul fast float %2256, %2255
  %2258 = fsub fast float 1.500000e+00, %2257
  %2259 = fmul fast float %2254, %2175
  %2260 = fmul fast float %2259, %2258
  %2261 = bitcast float %2176 to i32
  %2262 = ashr i32 %2261, 1
  %2263 = sub nsw i32 1597463174, %2262
  %2264 = bitcast i32 %2263 to float
  %2265 = fmul fast float %2176, 5.000000e-01
  %2266 = fmul fast float %2264, %2264
  %2267 = fmul fast float %2266, %2265
  %2268 = fsub fast float 1.500000e+00, %2267
  %2269 = fmul fast float %2264, %2176
  %2270 = fmul fast float %2269, %2268
  %2271 = bitcast float %2177 to i32
  %2272 = ashr i32 %2271, 1
  %2273 = sub nsw i32 1597463174, %2272
  %2274 = bitcast i32 %2273 to float
  %2275 = fmul fast float %2177, 5.000000e-01
  %2276 = fmul fast float %2274, %2274
  %2277 = fmul fast float %2276, %2275
  %2278 = fsub fast float 1.500000e+00, %2277
  %2279 = fmul fast float %2274, %2177
  %2280 = fmul fast float %2279, %2278
  %2281 = fsub fast float %2260, %2242
  %2282 = fsub fast float %2270, %2246
  %2283 = fsub fast float %2280, %2250
  %2284 = fmul fast float %2281, %2210
  %2285 = fmul fast float %2282, %2212
  %2286 = fmul fast float %2283, %2217
  %2287 = fadd fast float %2284, %2225
  %2288 = fadd fast float %2285, %2229
  %2289 = fadd fast float %2286, %2233
  %2290 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2291 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2292 = call float @dx.op.unary.f32(i32 7, float %2289)  ; Saturate(value)
  %2293 = fmul fast float %2290, %2290
  %2294 = fmul fast float %2291, %2291
  %2295 = fmul fast float %2292, %2292
  %2296 = fsub fast float %2293, %2175
  %2297 = fsub fast float %2294, %2176
  %2298 = fsub fast float %2295, %2177
  %2299 = fmul fast float %2296, %2200
  %2300 = fmul fast float %2297, %2200
  %2301 = fmul fast float %2298, %2200
  %2302 = fadd fast float %2299, %2175
  %2303 = fadd fast float %2300, %2176
  %2304 = fadd fast float %2301, %2177
  %2305 = fadd fast float %2222, %2186
  %2306 = fsub fast float %2305, %2239
  %2307 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2308 = fsub fast float %2307, %2186
  %2309 = fmul fast float %2308, %2200
  %2310 = fadd fast float %2309, %2186
  br label %2364

; <label>:2311                                    ; preds = %2199
  %2312 = and i32 %2202, 134217728
  %2313 = icmp eq i32 %2312, 0
  br i1 %2313, label %2348, label %2314

; <label>:2314                                    ; preds = %2311
  %2315 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %2316 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %2317 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %2318 = fadd fast float %2315, -5.000000e-01
  %2319 = fadd fast float %2316, -5.000000e-01
  %2320 = fadd fast float %2317, -5.000000e-01
  %2321 = fmul fast float %2318, %2200
  %2322 = fmul fast float %2319, %2200
  %2323 = fmul fast float %2320, %2200
  %2324 = fadd fast float %2321, 5.000000e-01
  %2325 = fadd fast float %2322, 5.000000e-01
  %2326 = fadd fast float %2323, 5.000000e-01
  %2327 = call float @dx.op.unary.f32(i32 24, float %2175)  ; Sqrt(value)
  %2328 = call float @dx.op.unary.f32(i32 24, float %2176)  ; Sqrt(value)
  %2329 = call float @dx.op.unary.f32(i32 24, float %2177)  ; Sqrt(value)
  %2330 = fmul fast float %2324, 2.000000e+00
  %2331 = fsub fast float 1.000000e+00, %2330
  %2332 = fmul fast float %2331, %2327
  %2333 = fadd fast float %2332, %2330
  %2334 = fmul fast float %2333, %2327
  %2335 = fmul fast float %2325, 2.000000e+00
  %2336 = fsub fast float 1.000000e+00, %2335
  %2337 = fmul fast float %2336, %2328
  %2338 = fadd fast float %2337, %2335
  %2339 = fmul fast float %2338, %2328
  %2340 = fmul fast float %2326, 2.000000e+00
  %2341 = fsub fast float 1.000000e+00, %2340
  %2342 = fmul fast float %2341, %2329
  %2343 = fadd fast float %2342, %2340
  %2344 = fmul fast float %2343, %2329
  %2345 = fmul fast float %2334, %2334
  %2346 = fmul fast float %2339, %2339
  %2347 = fmul fast float %2344, %2344
  br label %2364

; <label>:2348                                    ; preds = %2311
  %2349 = fmul fast float %290, %290
  %2350 = fmul fast float %294, %294
  %2351 = fmul fast float %298, %298
  %2352 = fadd fast float %2349, -1.000000e+00
  %2353 = fadd fast float %2350, -1.000000e+00
  %2354 = fadd fast float %2351, -1.000000e+00
  %2355 = fmul fast float %2200, %2352
  %2356 = fmul fast float %2200, %2353
  %2357 = fmul fast float %2200, %2354
  %2358 = fadd fast float %2355, 1.000000e+00
  %2359 = fadd fast float %2356, 1.000000e+00
  %2360 = fadd fast float %2357, 1.000000e+00
  %2361 = fmul fast float %2358, %2175
  %2362 = fmul fast float %2359, %2176
  %2363 = fmul fast float %2360, %2177
  br label %2364

; <label>:2364                                    ; preds = %2348, %2314, %2205, %2161
  %2365 = phi float [ %2310, %2205 ], [ %2186, %2314 ], [ %2186, %2348 ], [ 0x3FA23C0BE0000000, %2161 ]
  %2366 = phi float [ %2302, %2205 ], [ %2345, %2314 ], [ %2361, %2348 ], [ 1.000000e+00, %2161 ]
  %2367 = phi float [ %2303, %2205 ], [ %2346, %2314 ], [ %2362, %2348 ], [ 1.000000e+00, %2161 ]
  %2368 = phi float [ %2304, %2205 ], [ %2347, %2314 ], [ %2363, %2348 ], [ 1.000000e+00, %2161 ]
  %2369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.i32 %2369, 1
  %2371 = and i32 %2370, 1
  %2372 = icmp ne i32 %2371, 0
  %2373 = add i32 %34, 356
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = and i32 %2375, 32
  %2377 = icmp ne i32 %2376, 0
  %2378 = and i1 %2372, %2377
  %2379 = select i1 %2378, float 1.000000e+00, float %2366
  %2380 = select i1 %2378, float 0x3FD3333340000000, float %2367
  %2381 = select i1 %2378, float 0x3FD3333340000000, float %2368
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = and i32 %2383, 32
  %2385 = icmp eq i32 %2384, 0
  br i1 %2385, label %2458, label %2386

; <label>:2386                                    ; preds = %2364
  %2387 = add i32 %34, 124
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = add i32 %34, 464
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = add i32 %2392, 0
  %2394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2394, %dx.types.Handle %70, float %1971, float %1972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.ResRet.f32 %2395, 1
  %2398 = extractvalue %dx.types.ResRet.f32 %2395, 2
  %2399 = extractvalue %dx.types.ResRet.f32 %2395, 3
  %2400 = and i32 %2389, 255
  %2401 = uitofp i32 %2400 to float
  %2402 = lshr i32 %2389, 8
  %2403 = and i32 %2402, 255
  %2404 = uitofp i32 %2403 to float
  %2405 = lshr i32 %2389, 16
  %2406 = and i32 %2405, 255
  %2407 = uitofp i32 %2406 to float
  %2408 = fmul fast float %2407, 0x3F70101000000000
  %2409 = fmul fast float %2396, %2401
  %2410 = fadd fast float %2409, %2404
  %2411 = fmul fast float %2410, 0x3F70101000000000
  %2412 = fadd fast float %2397, -5.000000e-01
  %2413 = fadd fast float %2399, -5.000000e-01
  %2414 = fmul fast float %2412, %2408
  %2415 = fmul fast float %2413, %2408
  %2416 = fadd fast float %2414, 5.000000e-01
  %2417 = fadd fast float %2415, 5.000000e-01
  %2418 = fmul fast float %2416, 2.000000e+00
  %2419 = fadd fast float %2418, -1.000000e+00
  %2420 = fmul fast float %2417, 2.000000e+00
  %2421 = fadd fast float %2420, -1.000000e+00
  %2422 = fadd fast float %2419, %2421
  %2423 = fmul fast float %2422, 5.000000e-01
  %2424 = fsub fast float %2419, %2421
  %2425 = fmul fast float %2424, 5.000000e-01
  %2426 = call float @dx.op.unary.f32(i32 6, float %2423)  ; FAbs(value)
  %2427 = fsub fast float 1.000000e+00, %2426
  %2428 = call float @dx.op.unary.f32(i32 6, float %2425)  ; FAbs(value)
  %2429 = fsub fast float %2427, %2428
  %2430 = call float @dx.op.dot3.f32(i32 55, float %2423, float %2425, float %2429, float %2423, float %2425, float %2429)  ; Dot3(ax,ay,az,bx,by,bz)
  %2431 = call float @dx.op.unary.f32(i32 25, float %2430)  ; Rsqrt(value)
  %2432 = fmul fast float %2423, %2431
  %2433 = fmul fast float %2425, %2431
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = and i32 %2435, 67108864
  %2437 = icmp eq i32 %2436, 0
  br i1 %2437, label %2454, label %2438

; <label>:2438                                    ; preds = %2386
  %2439 = add i32 %34, 312
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 65535
  %2443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2442)  ; LegacyF16ToF32(value)
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = and i32 %2445, 65535
  %2447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2446)  ; LegacyF16ToF32(value)
  %2448 = lshr i32 %2441, 16
  %2449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2448)  ; LegacyF16ToF32(value)
  %2450 = fsub fast float %2411, %2449
  %2451 = fmul fast float %2450, %2443
  %2452 = fadd fast float %2451, %2447
  %2453 = call float @dx.op.unary.f32(i32 7, float %2452)  ; Saturate(value)
  br label %2454

; <label>:2454                                    ; preds = %2438, %2386
  %2455 = phi float [ %2453, %2438 ], [ %2411, %2386 ]
  %2456 = call float @dx.op.dot2.f32(i32 54, float %2432, float %2433, float %1875, float %1876)  ; Dot2(ax,ay,bx,by)
  %2457 = call float @dx.op.dot2.f32(i32 54, float %2432, float %2433, float %1877, float %1878)  ; Dot2(ax,ay,bx,by)
  br label %2458

; <label>:2458                                    ; preds = %2454, %2364
  %2459 = phi float [ %2455, %2454 ], [ 0x3FD6666660000000, %2364 ]
  %2460 = phi float [ %2456, %2454 ], [ 0.000000e+00, %2364 ]
  %2461 = phi float [ %2457, %2454 ], [ 0.000000e+00, %2364 ]
  %2462 = phi float [ %2398, %2454 ], [ 1.000000e+00, %2364 ]
  %2463 = add i32 %34, 192
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = lshr i32 %2465, 22
  %2467 = shl nuw nsw i32 %2466, 5
  %2468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2467)  ; LegacyF16ToF32(value)
  %2469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.i32 %2469, 0
  %2471 = and i32 %2470, 64
  %2472 = icmp eq i32 %2471, 0
  br i1 %2472, label %2506, label %2473

; <label>:2473                                    ; preds = %2458
  %2474 = add i32 %34, 480
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2474, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = add i32 %2476, 0
  %2478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2477, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = and i32 %2480, 131072
  %2482 = icmp eq i32 %2481, 0
  %2483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2478, %dx.types.Handle %70, float %1971, float %1972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.ResRet.f32 %2483, 1
  %2486 = extractvalue %dx.types.ResRet.f32 %2483, 2
  %2487 = fmul fast float %2484, %278
  %2488 = fmul fast float %2485, %281
  %2489 = fmul fast float %2486, %284
  br i1 %2482, label %2496, label %2490

; <label>:2490                                    ; preds = %2473
  %2491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.f32 %2491, 0
  %2493 = fmul fast float %2492, %2487
  %2494 = fmul fast float %2492, %2488
  %2495 = fmul fast float %2492, %2489
  br label %2496

; <label>:2496                                    ; preds = %2490, %2473
  %2497 = phi float [ %2493, %2490 ], [ %2487, %2473 ]
  %2498 = phi float [ %2494, %2490 ], [ %2488, %2473 ]
  %2499 = phi float [ %2495, %2490 ], [ %2489, %2473 ]
  %2500 = fmul fast float %2497, %2468
  %2501 = select i1 %174, float %2500, float %2497
  %2502 = call float @dx.op.dot3.f32(i32 55, float %2501, float %2498, float %2499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2503 = select i1 %174, float 0.000000e+00, float %2497
  %2504 = select i1 %174, float %2502, float %2498
  %2505 = select i1 %174, float 0.000000e+00, float %2499
  br label %2506

; <label>:2506                                    ; preds = %2496, %2458
  %2507 = phi float [ %2503, %2496 ], [ 0.000000e+00, %2458 ]
  %2508 = phi float [ %2504, %2496 ], [ 0.000000e+00, %2458 ]
  %2509 = phi float [ %2505, %2496 ], [ 0.000000e+00, %2458 ]
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 1024
  %2513 = icmp eq i32 %2512, 0
  br i1 %2513, label %2544, label %2514

; <label>:2514                                    ; preds = %2506
  %2515 = add i32 %34, 184
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = and i32 %2517, 255
  %2519 = uitofp i32 %2518 to float
  %2520 = fmul fast float %2519, 0x3F70101020000000
  %2521 = lshr i32 %2517, 8
  %2522 = and i32 %2521, 255
  %2523 = uitofp i32 %2522 to float
  %2524 = fmul fast float %2523, 0x3F70101020000000
  %2525 = lshr i32 %2517, 16
  %2526 = and i32 %2525, 255
  %2527 = uitofp i32 %2526 to float
  %2528 = fmul fast float %2527, 0x3F70101020000000
  %2529 = fmul fast float %2520, %2520
  %2530 = fmul fast float %2524, %2524
  %2531 = fmul fast float %2528, %2528
  %2532 = add i32 %34, 544
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = add i32 %2534, 0
  %2536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2537 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2536, %dx.types.Handle %71, float %1971, float %1972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2538 = extractvalue %dx.types.ResRet.f32 %2537, 0
  %2539 = extractvalue %dx.types.ResRet.f32 %2537, 1
  %2540 = extractvalue %dx.types.ResRet.f32 %2537, 2
  %2541 = fmul fast float %2529, %2538
  %2542 = fmul fast float %2530, %2539
  %2543 = fmul fast float %2531, %2540
  br label %2544

; <label>:2544                                    ; preds = %2514, %2506
  %2545 = phi float [ %2541, %2514 ], [ 0.000000e+00, %2506 ]
  %2546 = phi float [ %2542, %2514 ], [ 0.000000e+00, %2506 ]
  %2547 = phi float [ %2543, %2514 ], [ 0.000000e+00, %2506 ]
  %2548 = fcmp fast ogt float %2545, 0.000000e+00
  %2549 = fcmp fast ogt float %2546, 0.000000e+00
  %2550 = fcmp fast ogt float %2547, 0.000000e+00
  %2551 = call float @dx.op.unary.f32(i32 23, float %2545)  ; Log(value)
  %2552 = call float @dx.op.unary.f32(i32 23, float %2546)  ; Log(value)
  %2553 = call float @dx.op.unary.f32(i32 23, float %2547)  ; Log(value)
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = lshr i32 %2555, 7
  %2557 = and i32 %2556, 32752
  %2558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2557)  ; LegacyF16ToF32(value)
  %2559 = fmul fast float %2551, 0xBFE62E4300000000
  %2560 = fmul fast float %2559, %2558
  %2561 = fmul fast float %2552, 0xBFE62E4300000000
  %2562 = fmul fast float %2561, %2558
  %2563 = fmul fast float %2553, 0xBFE62E4300000000
  %2564 = fmul fast float %2563, %2558
  %2565 = select i1 %2548, float %2560, float 1.270000e+02
  %2566 = select i1 %2549, float %2562, float 1.270000e+02
  %2567 = select i1 %2550, float %2564, float 1.270000e+02
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = and i32 %2569, 10240
  %2571 = icmp eq i32 %2570, 0
  br i1 %2571, label %2592, label %2572

; <label>:2572                                    ; preds = %2544
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 2048
  %2576 = icmp eq i32 %2575, 0
  br i1 %2576, label %2592, label %2577

; <label>:2577                                    ; preds = %2572
  %2578 = add i32 %34, 560
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = add i32 %2580, 0
  %2582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2582, %dx.types.Handle %71, float %1971, float %1972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2584 = extractvalue %dx.types.ResRet.f32 %2583, 3
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = shl i32 %2586, 4
  %2588 = and i32 %2587, 32752
  %2589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2588)  ; LegacyF16ToF32(value)
  %2590 = fmul fast float %2589, %2584
  %2591 = call float @dx.op.binary.f32(i32 35, float %2590, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2592

; <label>:2592                                    ; preds = %2577, %2572, %2544
  %2593 = phi float [ %2591, %2577 ], [ 0x3F70101020000000, %2572 ], [ 0x3F70101020000000, %2544 ]
  %2594 = add i32 %34, 128
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 255
  %2598 = uitofp i32 %2597 to float
  %2599 = lshr i32 %2596, 8
  %2600 = and i32 %2599, 255
  %2601 = uitofp i32 %2600 to float
  %2602 = call float @dx.op.dot3.f32(i32 55, float %2379, float %2380, float %2381, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2603 = fmul fast float %2601, %2602
  %2604 = fadd fast float %2603, %2598
  %2605 = fmul fast float %2604, 0x3F70101020000000
  %2606 = call float @dx.op.unary.f32(i32 7, float %2605)  ; Saturate(value)
  br i1 %1863, label %2607, label %2642

; <label>:2607                                    ; preds = %2592
  %2608 = fmul fast float %2593, 2.000000e+00
  %2609 = fcmp fast olt float %2565, 1.270000e+02
  %2610 = fcmp fast olt float %2566, 1.270000e+02
  %2611 = fcmp fast olt float %2567, 1.270000e+02
  %2612 = fmul fast float %2565, 0xBFF7154760000000
  %2613 = fmul fast float %2612, %2608
  %2614 = fmul fast float %2566, 0xBFF7154760000000
  %2615 = fmul fast float %2614, %2608
  %2616 = fmul fast float %2567, 0xBFF7154760000000
  %2617 = fmul fast float %2616, %2608
  %2618 = call float @dx.op.unary.f32(i32 21, float %2613)  ; Exp(value)
  %2619 = call float @dx.op.unary.f32(i32 21, float %2615)  ; Exp(value)
  %2620 = call float @dx.op.unary.f32(i32 21, float %2617)  ; Exp(value)
  %2621 = call float @dx.op.unary.f32(i32 7, float %2618)  ; Saturate(value)
  %2622 = call float @dx.op.unary.f32(i32 7, float %2619)  ; Saturate(value)
  %2623 = call float @dx.op.unary.f32(i32 7, float %2620)  ; Saturate(value)
  %2624 = fadd fast float %2621, -1.000000e+00
  %2625 = select i1 %2609, float %2624, float -1.000000e+00
  %2626 = fadd fast float %2622, -1.000000e+00
  %2627 = select i1 %2610, float %2626, float -1.000000e+00
  %2628 = fadd fast float %2623, -1.000000e+00
  %2629 = select i1 %2611, float %2628, float -1.000000e+00
  %2630 = fmul fast float %2625, %2159
  %2631 = fmul fast float %2627, %2159
  %2632 = fmul fast float %2629, %2159
  %2633 = fadd fast float %2630, 1.000000e+00
  %2634 = fadd fast float %2631, 1.000000e+00
  %2635 = fadd fast float %2632, 1.000000e+00
  %2636 = fmul fast float %2633, %1852
  %2637 = fmul fast float %2634, %1853
  %2638 = fmul fast float %2635, %1854
  %2639 = fmul fast float %2633, %1855
  %2640 = fmul fast float %2634, %1856
  %2641 = fmul fast float %2635, %1857
  br label %2642

; <label>:2642                                    ; preds = %2607, %2592
  %2643 = phi float [ %2636, %2607 ], [ %1852, %2592 ]
  %2644 = phi float [ %2637, %2607 ], [ %1853, %2592 ]
  %2645 = phi float [ %2638, %2607 ], [ %1854, %2592 ]
  %2646 = phi float [ %2639, %2607 ], [ %1855, %2592 ]
  %2647 = phi float [ %2640, %2607 ], [ %1856, %2592 ]
  %2648 = phi float [ %2641, %2607 ], [ %1857, %2592 ]
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = and i32 %2650, 3
  %2652 = icmp eq i32 %2651, 3
  br i1 %2652, label %2731, label %2653

; <label>:2653                                    ; preds = %2642
  %2654 = and i32 %2650, 16
  %2655 = icmp ne i32 %2654, 0
  %2656 = select i1 %2655, float %2159, float 0.000000e+00
  %2657 = icmp eq i32 %2651, 0
  br i1 %2657, label %2658, label %2686

; <label>:2658                                    ; preds = %2653
  %2659 = and i32 %2650, 64
  %2660 = icmp ne i32 %2659, 0
  %2661 = select i1 %2660, float %2159, float 0.000000e+00
  %2662 = fsub fast float %2379, %2643
  %2663 = fsub fast float %2380, %2644
  %2664 = fsub fast float %2381, %2645
  %2665 = fmul fast float %2656, %2662
  %2666 = fmul fast float %2656, %2663
  %2667 = fmul fast float %2656, %2664
  %2668 = fadd fast float %2665, %2643
  %2669 = fadd fast float %2666, %2644
  %2670 = fadd fast float %2667, %2645
  %2671 = fsub fast float %2365, %1858
  %2672 = fmul fast float %2656, %2671
  %2673 = fadd fast float %2672, %1858
  %2674 = fsub fast float %2507, %2646
  %2675 = fsub fast float %2508, %2647
  %2676 = fsub fast float %2509, %2648
  %2677 = fmul fast float %2661, %2674
  %2678 = fmul fast float %2661, %2675
  %2679 = fmul fast float %2661, %2676
  %2680 = fadd fast float %2677, %2646
  %2681 = fadd fast float %2678, %2647
  %2682 = fadd fast float %2679, %2648
  %2683 = fsub fast float %2606, %1861
  %2684 = fmul fast float %2656, %2683
  %2685 = fadd fast float %2684, %1861
  br label %2731

; <label>:2686                                    ; preds = %2653
  %2687 = icmp eq i32 %2651, 1
  br i1 %2687, label %2688, label %2701

; <label>:2688                                    ; preds = %2686
  %2689 = fadd fast float %2379, -1.000000e+00
  %2690 = fadd fast float %2380, -1.000000e+00
  %2691 = fadd fast float %2381, -1.000000e+00
  %2692 = fmul fast float %2656, %2689
  %2693 = fmul fast float %2656, %2690
  %2694 = fmul fast float %2656, %2691
  %2695 = fadd fast float %2692, 1.000000e+00
  %2696 = fadd fast float %2693, 1.000000e+00
  %2697 = fadd fast float %2694, 1.000000e+00
  %2698 = fmul fast float %2695, %2643
  %2699 = fmul fast float %2696, %2644
  %2700 = fmul fast float %2697, %2645
  br label %2731

; <label>:2701                                    ; preds = %2686
  %2702 = icmp eq i32 %2651, 2
  br i1 %2702, label %2703, label %2731

; <label>:2703                                    ; preds = %2701
  %2704 = call float @dx.op.unary.f32(i32 24, float %2379)  ; Sqrt(value)
  %2705 = call float @dx.op.unary.f32(i32 24, float %2380)  ; Sqrt(value)
  %2706 = call float @dx.op.unary.f32(i32 24, float %2381)  ; Sqrt(value)
  %2707 = fadd fast float %2704, -5.000000e-01
  %2708 = fadd fast float %2705, -5.000000e-01
  %2709 = fadd fast float %2706, -5.000000e-01
  %2710 = fmul fast float %2707, %2656
  %2711 = fmul fast float %2708, %2656
  %2712 = fmul fast float %2709, %2656
  %2713 = fadd fast float %2710, 5.000000e-01
  %2714 = fadd fast float %2711, 5.000000e-01
  %2715 = fadd fast float %2712, 5.000000e-01
  %2716 = fmul fast float %2713, 2.000000e+00
  %2717 = fsub fast float 1.000000e+00, %2716
  %2718 = fmul fast float %2717, %2643
  %2719 = fadd fast float %2718, %2716
  %2720 = fmul fast float %2719, %2643
  %2721 = fmul fast float %2714, 2.000000e+00
  %2722 = fsub fast float 1.000000e+00, %2721
  %2723 = fmul fast float %2722, %2644
  %2724 = fadd fast float %2723, %2721
  %2725 = fmul fast float %2724, %2644
  %2726 = fmul fast float %2715, 2.000000e+00
  %2727 = fsub fast float 1.000000e+00, %2726
  %2728 = fmul fast float %2727, %2645
  %2729 = fadd fast float %2728, %2726
  %2730 = fmul fast float %2729, %2645
  br label %2731

; <label>:2731                                    ; preds = %2703, %2701, %2688, %2658, %2642
  %2732 = phi float [ %2643, %2642 ], [ %2720, %2703 ], [ %2643, %2701 ], [ %2698, %2688 ], [ %2668, %2658 ]
  %2733 = phi float [ %2644, %2642 ], [ %2725, %2703 ], [ %2644, %2701 ], [ %2699, %2688 ], [ %2669, %2658 ]
  %2734 = phi float [ %2645, %2642 ], [ %2730, %2703 ], [ %2645, %2701 ], [ %2700, %2688 ], [ %2670, %2658 ]
  %2735 = phi float [ %2646, %2642 ], [ %2646, %2703 ], [ %2646, %2701 ], [ %2646, %2688 ], [ %2680, %2658 ]
  %2736 = phi float [ %2647, %2642 ], [ %2647, %2703 ], [ %2647, %2701 ], [ %2647, %2688 ], [ %2681, %2658 ]
  %2737 = phi float [ %2648, %2642 ], [ %2648, %2703 ], [ %2648, %2701 ], [ %2648, %2688 ], [ %2682, %2658 ]
  %2738 = phi float [ %1858, %2642 ], [ %1858, %2703 ], [ %1858, %2701 ], [ %1858, %2688 ], [ %2673, %2658 ]
  %2739 = phi float [ %1861, %2642 ], [ %1861, %2703 ], [ %1861, %2701 ], [ %1861, %2688 ], [ %2685, %2658 ]
  %2740 = and i32 %2650, 12
  %2741 = icmp eq i32 %2740, 12
  br i1 %2741, label %2814, label %2742

; <label>:2742                                    ; preds = %2731
  %2743 = and i32 %2650, 2097184
  %2744 = icmp eq i32 %2743, 2097184
  %2745 = select i1 %2744, float %2159, float 0.000000e+00
  %2746 = and i32 %2650, 4194336
  %2747 = icmp eq i32 %2746, 4194336
  %2748 = select i1 %2747, float %2159, float 0.000000e+00
  %2749 = and i32 %2650, 8388640
  %2750 = icmp eq i32 %2749, 8388640
  %2751 = select i1 %2750, float %2159, float 0.000000e+00
  %2752 = icmp eq i32 %2740, 0
  br i1 %2752, label %2753, label %2766

; <label>:2753                                    ; preds = %2742
  %2754 = fsub fast float %2460, %1850
  %2755 = fsub fast float %2461, %1851
  %2756 = fmul fast float %2745, %2754
  %2757 = fmul fast float %2745, %2755
  %2758 = fadd fast float %2756, %1850
  %2759 = fadd fast float %2757, %1851
  %2760 = fsub fast float %2462, %1860
  %2761 = fmul fast float %2748, %2760
  %2762 = fadd fast float %2761, %1860
  %2763 = fsub fast float %2459, %1859
  %2764 = fmul fast float %2751, %2763
  %2765 = fadd fast float %2764, %1859
  br label %2814

; <label>:2766                                    ; preds = %2742
  %2767 = icmp eq i32 %2740, 4
  br i1 %2767, label %2768, label %2800

; <label>:2768                                    ; preds = %2766
  %2769 = fmul fast float %2745, %2460
  %2770 = fmul fast float %2745, %2461
  %2771 = fadd fast float %2769, %1850
  %2772 = fadd fast float %2770, %1851
  %2773 = call float @dx.op.binary.f32(i32 36, float %1860, float %2462)  ; FMin(a,b)
  %2774 = fsub fast float %2773, %1860
  %2775 = fmul fast float %2774, %2748
  %2776 = fadd fast float %2775, %1860
  %2777 = fadd fast float %2459, %1859
  %2778 = fmul fast float %2777, 0x3FF337FAE0000000
  %2779 = fmul fast float %1859, %1859
  %2780 = fmul fast float %2459, %2459
  %2781 = fadd fast float %2780, %2779
  %2782 = fmul fast float %2781, 0x3FE5152B00000000
  %2783 = fmul fast float %1859, 0xBFCC1F85E0000000
  %2784 = fmul fast float %2783, %2459
  %2785 = fadd fast float %2784, 0xBFE1363700000000
  %2786 = fadd fast float %2785, %2778
  %2787 = fsub fast float %2786, %2782
  %2788 = fmul fast float %2777, 0x3FBA6F0D00000000
  %2789 = fmul fast float %2781, 0x3FD0432880000000
  %2790 = fmul fast float %1859, 0xBFEF110800000000
  %2791 = fmul fast float %2790, %2459
  %2792 = fadd fast float %2791, 1.000000e+00
  %2793 = fsub fast float %2792, %2788
  %2794 = fadd fast float %2793, %2789
  %2795 = fdiv fast float %2787, %2794
  %2796 = call float @dx.op.unary.f32(i32 7, float %2795)  ; Saturate(value)
  %2797 = fsub fast float %2796, %1859
  %2798 = fmul fast float %2797, %2751
  %2799 = fadd fast float %2798, %1859
  br label %2814

; <label>:2800                                    ; preds = %2766
  %2801 = icmp eq i32 %2740, 8
  br i1 %2801, label %2802, label %2814

; <label>:2802                                    ; preds = %2800
  %2803 = fmul fast float %2745, %2460
  %2804 = fmul fast float %2745, %2461
  %2805 = fadd fast float %2803, %1850
  %2806 = fadd fast float %2804, %1851
  %2807 = call float @dx.op.binary.f32(i32 36, float %1860, float %2462)  ; FMin(a,b)
  %2808 = fsub fast float %2807, %1860
  %2809 = fmul fast float %2808, %2748
  %2810 = fadd fast float %2809, %1860
  %2811 = fsub fast float %2459, %1859
  %2812 = fmul fast float %2751, %2811
  %2813 = fadd fast float %2812, %1859
  br label %2814

; <label>:2814                                    ; preds = %2802, %2800, %2768, %2753, %2731, %2158, %1862, %1849
  %2815 = phi float [ %1850, %2731 ], [ %1850, %2158 ], [ %1850, %1849 ], [ %2805, %2802 ], [ %1850, %2800 ], [ %2771, %2768 ], [ %2758, %2753 ], [ %1850, %1862 ]
  %2816 = phi float [ %1851, %2731 ], [ %1851, %2158 ], [ %1851, %1849 ], [ %2806, %2802 ], [ %1851, %2800 ], [ %2772, %2768 ], [ %2759, %2753 ], [ %1851, %1862 ]
  %2817 = phi float [ %2732, %2731 ], [ %1852, %2158 ], [ %1852, %1849 ], [ %2732, %2802 ], [ %2732, %2800 ], [ %2732, %2768 ], [ %2732, %2753 ], [ %1852, %1862 ]
  %2818 = phi float [ %2733, %2731 ], [ %1853, %2158 ], [ %1853, %1849 ], [ %2733, %2802 ], [ %2733, %2800 ], [ %2733, %2768 ], [ %2733, %2753 ], [ %1853, %1862 ]
  %2819 = phi float [ %2734, %2731 ], [ %1854, %2158 ], [ %1854, %1849 ], [ %2734, %2802 ], [ %2734, %2800 ], [ %2734, %2768 ], [ %2734, %2753 ], [ %1854, %1862 ]
  %2820 = phi float [ %2735, %2731 ], [ %1855, %2158 ], [ %1855, %1849 ], [ %2735, %2802 ], [ %2735, %2800 ], [ %2735, %2768 ], [ %2735, %2753 ], [ %1855, %1862 ]
  %2821 = phi float [ %2736, %2731 ], [ %1856, %2158 ], [ %1856, %1849 ], [ %2736, %2802 ], [ %2736, %2800 ], [ %2736, %2768 ], [ %2736, %2753 ], [ %1856, %1862 ]
  %2822 = phi float [ %2737, %2731 ], [ %1857, %2158 ], [ %1857, %1849 ], [ %2737, %2802 ], [ %2737, %2800 ], [ %2737, %2768 ], [ %2737, %2753 ], [ %1857, %1862 ]
  %2823 = phi float [ %2738, %2731 ], [ %1858, %2158 ], [ %1858, %1849 ], [ %2738, %2802 ], [ %2738, %2800 ], [ %2738, %2768 ], [ %2738, %2753 ], [ %1858, %1862 ]
  %2824 = phi float [ %1859, %2731 ], [ %1859, %2158 ], [ %1859, %1849 ], [ %2813, %2802 ], [ %1859, %2800 ], [ %2799, %2768 ], [ %2765, %2753 ], [ %1859, %1862 ]
  %2825 = phi float [ %1860, %2731 ], [ %1860, %2158 ], [ %1860, %1849 ], [ %2810, %2802 ], [ %1860, %2800 ], [ %2776, %2768 ], [ %2762, %2753 ], [ %1860, %1862 ]
  %2826 = phi float [ %2739, %2731 ], [ %1861, %2158 ], [ %1861, %1849 ], [ %2739, %2802 ], [ %2739, %2800 ], [ %2739, %2768 ], [ %2739, %2753 ], [ %1861, %1862 ]
  br i1 %365, label %3779, label %2827

; <label>:2827                                    ; preds = %2814
  %2828 = icmp ult i32 %416, 4
  %2829 = add i32 %34, 72
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = add i32 %34, 76
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = or i32 %2834, %2831
  %2836 = icmp eq i32 %2835, 0
  br i1 %2836, label %3779, label %2837

; <label>:2837                                    ; preds = %2827
  %2838 = and i32 %2831, 262144
  %2839 = icmp ne i32 %2838, 0
  %2840 = select i1 %2839, float %37, float 1.000000e+00
  %2841 = select i1 %2839, float %38, float 0.000000e+00
  %2842 = select i1 %2839, float %39, float 0.000000e+00
  %2843 = select i1 %2839, float %40, float 1.000000e+00
  %2844 = select i1 %2839, float %41, float %62
  %2845 = select i1 %2839, float %42, float %63
  %2846 = add i32 %34, 332
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = lshr i32 %2848, 16
  %2850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2849)  ; LegacyF16ToF32(value)
  %2851 = fmul fast float %2850, 0x3F50624DE0000000
  %2852 = add i32 %34, 136
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = lshr i32 %2854, 16
  %2856 = and i32 %2855, 255
  %2857 = lshr i32 %2854, 24
  %2858 = add i32 %34, 340
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = and i32 %2860, 65535
  %2862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2861)  ; LegacyF16ToF32(value)
  %2863 = lshr i32 %2860, 16
  %2864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2863)  ; LegacyF16ToF32(value)
  %2865 = add i32 %34, 80
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = lshr i32 %2867, 22
  %2869 = shl nuw nsw i32 %2868, 5
  %2870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2869)  ; LegacyF16ToF32(value)
  %2871 = shl i32 %2867, 4
  %2872 = and i32 %2871, 32752
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = lshr i32 %2867, 7
  %2875 = and i32 %2874, 32752
  %2876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2875)  ; LegacyF16ToF32(value)
  %2877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2878 = extractvalue %dx.types.CBufRet.f32 %2877, 3
  %2879 = fmul fast float %2878, 1.000000e+03
  %2880 = fmul fast float %355, %2879
  %2881 = call float @dx.op.unary.f32(i32 22, float %2880)  ; Frc(value)
  %2882 = fadd fast float %2881, %345
  %2883 = fmul fast float %356, %2879
  %2884 = call float @dx.op.unary.f32(i32 22, float %2883)  ; Frc(value)
  %2885 = fadd fast float %2884, %347
  %2886 = fmul fast float %2851, %2879
  %2887 = call float @dx.op.unary.f32(i32 22, float %2886)  ; Frc(value)
  %2888 = fmul fast float %2887, 0x401921FB60000000
  %2889 = fadd fast float %2888, %2870
  %2890 = call float @dx.op.unary.f32(i32 13, float %2889)  ; Sin(value)
  %2891 = call float @dx.op.unary.f32(i32 12, float %2889)  ; Cos(value)
  %2892 = fsub fast float -0.000000e+00, %2890
  %2893 = fadd fast float %2844, -5.000000e-01
  %2894 = fadd fast float %2845, -5.000000e-01
  %2895 = fmul fast float %2862, %2893
  %2896 = fmul fast float %2864, %2894
  %2897 = fadd fast float %2895, 5.000000e-01
  %2898 = fadd fast float %2896, 5.000000e-01
  %2899 = fmul fast float %2873, %2897
  %2900 = fmul fast float %2876, %2898
  %2901 = fmul fast float %2891, %2899
  %2902 = call float @dx.op.tertiary.f32(i32 46, float %2892, float %2900, float %2901)  ; FMad(a,b,c)
  %2903 = fmul fast float %2890, %2899
  %2904 = call float @dx.op.tertiary.f32(i32 46, float %2891, float %2900, float %2903)  ; FMad(a,b,c)
  %2905 = fadd fast float %2882, %2902
  %2906 = fadd fast float %2885, %2904
  %2907 = icmp ugt i32 %2856, 1
  %2908 = icmp ugt i32 %2854, 33554431
  %2909 = or i1 %2908, %2907
  br i1 %2909, label %2910, label %2935

; <label>:2910                                    ; preds = %2837
  %2911 = add i32 %34, 276
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = lshr i32 %2913, 16
  %2915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2914)  ; LegacyF16ToF32(value)
  %2916 = fmul fast float %2878, %2915
  %2917 = call float @dx.op.unary.f32(i32 22, float %2916)  ; Frc(value)
  %2918 = mul nuw nsw i32 %2856, %2857
  %2919 = uitofp i32 %2918 to float
  %2920 = fmul fast float %2917, %2919
  %2921 = call float @dx.op.unary.f32(i32 27, float %2920)  ; Round_ni(value)
  %2922 = fptoui float %2921 to i32
  %2923 = urem i32 %2922, %2856
  %2924 = udiv i32 %2922, %2857
  %2925 = call float @dx.op.unary.f32(i32 22, float %2905)  ; Frc(value)
  %2926 = call float @dx.op.unary.f32(i32 22, float %2906)  ; Frc(value)
  %2927 = uitofp i32 %2923 to float
  %2928 = uitofp i32 %2924 to float
  %2929 = fadd fast float %2925, %2927
  %2930 = fadd fast float %2926, %2928
  %2931 = uitofp i32 %2856 to float
  %2932 = uitofp i32 %2857 to float
  %2933 = fdiv fast float %2929, %2931
  %2934 = fdiv fast float %2930, %2932
  br label %2935

; <label>:2935                                    ; preds = %2910, %2837
  %2936 = phi float [ %2933, %2910 ], [ %2905, %2837 ]
  %2937 = phi float [ %2934, %2910 ], [ %2906, %2837 ]
  %2938 = and i32 %2831, 16777216
  %2939 = icmp eq i32 %2938, 0
  br i1 %2939, label %3049, label %2940

; <label>:2940                                    ; preds = %2935
  %2941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2942 = extractvalue %dx.types.CBufRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.CBufRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.CBufRet.f32 %2941, 2
  %2945 = fadd fast float %2942, %133
  %2946 = fadd fast float %2943, %134
  %2947 = fadd fast float %2944, %135
  %2948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2949 = extractvalue %dx.types.CBufRet.f32 %2948, 0
  %2950 = call float @dx.op.unary.f32(i32 7, float %2949)  ; Saturate(value)
  %2951 = icmp eq i32 %35, 65535
  br i1 %2951, label %3046, label %2952

; <label>:2952                                    ; preds = %2940
  %2953 = lshr i32 %35, 1
  %2954 = shl i32 %2953, 2
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %35, 1
  %2958 = icmp ne i32 %2957, 0
  %2959 = lshr i32 %2956, 16
  %2960 = and i32 %2956, 65535
  %2961 = select i1 %2958, i32 %2959, i32 %2960
  %2962 = icmp eq i32 %2961, 65535
  br i1 %2962, label %3042, label %2963

; <label>:2963                                    ; preds = %2952
  %2964 = mul nuw nsw i32 %2961, 40
  %2965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.ResRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.ResRet.f32 %2965, 2
  %2969 = add nuw nsw i32 %2964, 12
  %2970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.f32 %2970, 0
  %2972 = extractvalue %dx.types.ResRet.f32 %2970, 1
  %2973 = extractvalue %dx.types.ResRet.f32 %2970, 2
  %2974 = add nuw nsw i32 %2964, 24
  %2975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.f32 %2975, 0
  %2977 = extractvalue %dx.types.ResRet.f32 %2975, 1
  %2978 = extractvalue %dx.types.ResRet.f32 %2975, 2
  %2979 = add nuw nsw i32 %2964, 36
  %2980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = fsub fast float %2945, %2966
  %2983 = fsub fast float %2946, %2967
  %2984 = fsub fast float %2947, %2968
  %2985 = fmul fast float %2981, %2982
  %2986 = fmul fast float %2981, %2983
  %2987 = fmul fast float %2981, %2984
  %2988 = call float @dx.op.unary.f32(i32 27, float %2985)  ; Round_ni(value)
  %2989 = call float @dx.op.unary.f32(i32 27, float %2986)  ; Round_ni(value)
  %2990 = call float @dx.op.unary.f32(i32 27, float %2987)  ; Round_ni(value)
  %2991 = fadd fast float %2988, 5.000000e-01
  %2992 = fadd fast float %2989, 5.000000e-01
  %2993 = fadd fast float %2990, 5.000000e-01
  %2994 = fmul fast float %2991, %2971
  %2995 = fmul fast float %2992, %2972
  %2996 = fmul fast float %2993, %2973
  %2997 = shl i32 %35, 2
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = add i32 %2999, 0
  %3001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3002 = call float @dx.op.unary.f32(i32 22, float %2994)  ; Frc(value)
  %3003 = call float @dx.op.unary.f32(i32 22, float %2995)  ; Frc(value)
  %3004 = call float @dx.op.unary.f32(i32 22, float %2996)  ; Frc(value)
  %3005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3001, %dx.types.Handle %29, float %3002, float %3003, float %3004, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3006 = extractvalue %dx.types.ResRet.f32 %3005, 0
  %3007 = extractvalue %dx.types.ResRet.f32 %3005, 1
  %3008 = extractvalue %dx.types.ResRet.f32 %3005, 2
  %3009 = fmul fast float %3006, 1.023000e+03
  %3010 = fmul fast float %3007, 1.023000e+03
  %3011 = fmul fast float %3008, 1.023000e+03
  %3012 = fadd fast float %3009, 5.000000e-01
  %3013 = fadd fast float %3010, 5.000000e-01
  %3014 = fadd fast float %3011, 5.000000e-01
  %3015 = call float @dx.op.unary.f32(i32 27, float %3012)  ; Round_ni(value)
  %3016 = call float @dx.op.unary.f32(i32 27, float %3013)  ; Round_ni(value)
  %3017 = call float @dx.op.unary.f32(i32 27, float %3014)  ; Round_ni(value)
  %3018 = fsub fast float %2985, %2988
  %3019 = fsub fast float %2986, %2989
  %3020 = fsub fast float %2987, %2990
  %3021 = fmul fast float %3018, 7.500000e-01
  %3022 = fmul fast float %3019, 7.500000e-01
  %3023 = fmul fast float %3020, 7.500000e-01
  %3024 = fadd fast float %2988, 1.250000e-01
  %3025 = fadd fast float %3024, %3021
  %3026 = fadd fast float %3025, %3015
  %3027 = fadd fast float %2989, 1.250000e-01
  %3028 = fadd fast float %3027, %3022
  %3029 = fadd fast float %3028, %3016
  %3030 = fadd fast float %2990, 1.250000e-01
  %3031 = fadd fast float %3030, %3023
  %3032 = fadd fast float %3031, %3017
  %3033 = fmul fast float %3026, %2976
  %3034 = fmul fast float %3029, %2977
  %3035 = fmul fast float %3032, %2978
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = add i32 %3037, 0
  %3039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3039, %dx.types.Handle %27, float %3033, float %3034, float %3035, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3041 = extractvalue %dx.types.ResRet.f32 %3040, 0
  br label %3042

; <label>:3042                                    ; preds = %2963, %2952
  %3043 = phi float [ %3041, %2963 ], [ -1.000000e+00, %2952 ]
  %3044 = fadd fast float %3043, %2950
  %3045 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  br label %3046

; <label>:3046                                    ; preds = %3042, %2940
  %3047 = phi float [ %3045, %3042 ], [ %2950, %2940 ]
  %3048 = fmul fast float %3047, %411
  br label %3049

; <label>:3049                                    ; preds = %3046, %2935
  %3050 = phi float [ %3048, %3046 ], [ %411, %2935 ]
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %3052, 256
  %3054 = icmp eq i32 %3053, 0
  br i1 %3054, label %3101, label %3055

; <label>:3055                                    ; preds = %3049
  %3056 = add i32 %34, 516
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = add i32 %3058, 0
  %3060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3060, %dx.types.Handle %71, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  %3063 = add i32 %34, 148
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = shl i32 %3065, 4
  %3067 = and i32 %3066, 32752
  %3068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3067)  ; LegacyF16ToF32(value)
  %3069 = lshr i32 %3065, 7
  %3070 = and i32 %3069, 32752
  %3071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3070)  ; LegacyF16ToF32(value)
  %3072 = fsub fast float 1.000000e+00, %3050
  %3073 = call float @dx.op.binary.f32(i32 35, float %3072, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3074 = bitcast float %3050 to i32
  %3075 = sitofp i32 %3074 to float
  %3076 = fadd fast float %3075, 0xC1CFBF8940000000
  %3077 = fmul fast float %3071, %3076
  %3078 = fadd fast float %3077, 0x41CFBF8940000000
  %3079 = fptosi float %3078 to i32
  %3080 = bitcast i32 %3079 to float
  %3081 = bitcast float %3073 to i32
  %3082 = sitofp i32 %3081 to float
  %3083 = fadd fast float %3082, 0xC1CFBF8940000000
  %3084 = fmul fast float %3083, %3071
  %3085 = fadd fast float %3084, 0x41CFBF8940000000
  %3086 = fptosi float %3085 to i32
  %3087 = bitcast i32 %3086 to float
  %3088 = fmul fast float %3080, %3068
  %3089 = fmul fast float %3087, %3068
  %3090 = fsub fast float %3073, %3088
  %3091 = fadd fast float %3089, %3073
  %3092 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3094 = fsub fast float %3062, %3092
  %3095 = fsub fast float %3093, %3092
  %3096 = bitcast float %3095 to i32
  %3097 = sub nsw i32 2129859010, %3096
  %3098 = bitcast i32 %3097 to float
  %3099 = fmul fast float %3098, %3094
  %3100 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  br label %3101

; <label>:3101                                    ; preds = %3055, %3049
  %3102 = phi float [ %3100, %3055 ], [ %3050, %3049 ]
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = and i32 %3104, 128
  %3106 = icmp eq i32 %3105, 0
  br i1 %3106, label %3123, label %3107

; <label>:3107                                    ; preds = %3101
  %3108 = add i32 %34, 500
  %3109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3108, i32 undef)  ; BufferLoad(srv,index,wot)
  %3110 = extractvalue %dx.types.ResRet.i32 %3109, 0
  %3111 = add i32 %3110, 0
  %3112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3113 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3112, %dx.types.Handle %71, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3114 = extractvalue %dx.types.ResRet.f32 %3113, 0
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = and i32 %3116, 524288
  %3118 = icmp ne i32 %3117, 0
  %3119 = fcmp fast ogt float %3114, 0x3FE0101020000000
  %3120 = select i1 %3119, float 1.000000e+00, float 0.000000e+00
  %3121 = select i1 %3118, float %3120, float %3114
  %3122 = fmul fast float %3121, %3102
  br label %3123

; <label>:3123                                    ; preds = %3107, %3101
  %3124 = phi float [ %3122, %3107 ], [ %3102, %3101 ]
  %3125 = fcmp fast ult float %3124, 0x3F70101020000000
  br i1 %3125, label %3779, label %3126

; <label>:3126                                    ; preds = %3123
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 16
  %3130 = icmp eq i32 %3129, 0
  br i1 %3130, label %3329, label %3131

; <label>:3131                                    ; preds = %3126
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = add i32 %34, 452
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3134, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = add i32 %3136, 0
  %3138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3138, %dx.types.Handle %70, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3140 = extractvalue %dx.types.ResRet.f32 %3139, 0
  %3141 = extractvalue %dx.types.ResRet.f32 %3139, 1
  %3142 = extractvalue %dx.types.ResRet.f32 %3139, 2
  %3143 = extractvalue %dx.types.ResRet.f32 %3139, 3
  %3144 = and i32 %3133, 255
  %3145 = uitofp i32 %3144 to float
  %3146 = lshr i32 %3133, 8
  %3147 = and i32 %3146, 255
  %3148 = uitofp i32 %3147 to float
  %3149 = fmul fast float %3143, %3145
  %3150 = fadd fast float %3149, %3148
  %3151 = fmul fast float %3150, 0x3F70101000000000
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = and i32 %3153, 512
  %3155 = icmp eq i32 %3154, 0
  br i1 %3155, label %3164, label %3156

; <label>:3156                                    ; preds = %3131
  %3157 = add i32 %34, 532
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = add i32 %3159, 0
  %3161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3161, %dx.types.Handle %71, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3163 = extractvalue %dx.types.ResRet.f32 %3162, 0
  br label %3164

; <label>:3164                                    ; preds = %3156, %3131
  %3165 = phi float [ %3163, %3156 ], [ 1.000000e+00, %3131 ]
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 33554432
  %3169 = icmp eq i32 %3168, 0
  br i1 %3169, label %3276, label %3170

; <label>:3170                                    ; preds = %3164
  %3171 = add i32 %34, 272
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3171, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = and i32 %3173, 65535
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = lshr i32 %3173, 16
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = add i32 %34, 276
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = and i32 %3180, 65535
  %3182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3181)  ; LegacyF16ToF32(value)
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = lshr i32 %3184, 24
  %3186 = uitofp i32 %3185 to float
  %3187 = fmul fast float %3186, 0x3F70101020000000
  %3188 = and i32 %3184, 255
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3F70101020000000
  %3191 = lshr i32 %3184, 8
  %3192 = and i32 %3191, 255
  %3193 = uitofp i32 %3192 to float
  %3194 = fmul fast float %3193, 0x3F70101020000000
  %3195 = lshr i32 %3184, 16
  %3196 = and i32 %3195, 255
  %3197 = uitofp i32 %3196 to float
  %3198 = fmul fast float %3197, 0x3F70101020000000
  %3199 = add i32 %34, 268
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = lshr i32 %3201, 24
  %3203 = uitofp i32 %3202 to float
  %3204 = fmul fast float %3203, 0x3F70101020000000
  %3205 = and i32 %3201, 255
  %3206 = uitofp i32 %3205 to float
  %3207 = fmul fast float %3206, 0x3F70101020000000
  %3208 = lshr i32 %3201, 8
  %3209 = and i32 %3208, 255
  %3210 = uitofp i32 %3209 to float
  %3211 = fmul fast float %3210, 0x3F70101020000000
  %3212 = lshr i32 %3201, 16
  %3213 = and i32 %3212, 255
  %3214 = uitofp i32 %3213 to float
  %3215 = fmul fast float %3214, 0x3F70101020000000
  %3216 = bitcast float %3140 to i32
  %3217 = ashr i32 %3216, 1
  %3218 = sub nsw i32 1597463174, %3217
  %3219 = bitcast i32 %3218 to float
  %3220 = fmul fast float %3140, 5.000000e-01
  %3221 = fmul fast float %3219, %3219
  %3222 = fmul fast float %3221, %3220
  %3223 = fsub fast float 1.500000e+00, %3222
  %3224 = fmul fast float %3219, %3140
  %3225 = fmul fast float %3224, %3223
  %3226 = bitcast float %3141 to i32
  %3227 = ashr i32 %3226, 1
  %3228 = sub nsw i32 1597463174, %3227
  %3229 = bitcast i32 %3228 to float
  %3230 = fmul fast float %3141, 5.000000e-01
  %3231 = fmul fast float %3229, %3229
  %3232 = fmul fast float %3231, %3230
  %3233 = fsub fast float 1.500000e+00, %3232
  %3234 = fmul fast float %3229, %3141
  %3235 = fmul fast float %3234, %3233
  %3236 = bitcast float %3142 to i32
  %3237 = ashr i32 %3236, 1
  %3238 = sub nsw i32 1597463174, %3237
  %3239 = bitcast i32 %3238 to float
  %3240 = fmul fast float %3142, 5.000000e-01
  %3241 = fmul fast float %3239, %3239
  %3242 = fmul fast float %3241, %3240
  %3243 = fsub fast float 1.500000e+00, %3242
  %3244 = fmul fast float %3239, %3142
  %3245 = fmul fast float %3244, %3243
  %3246 = fsub fast float %3225, %3207
  %3247 = fsub fast float %3235, %3211
  %3248 = fsub fast float %3245, %3215
  %3249 = fmul fast float %3246, %3175
  %3250 = fmul fast float %3247, %3177
  %3251 = fmul fast float %3248, %3182
  %3252 = fadd fast float %3249, %3190
  %3253 = fadd fast float %3250, %3194
  %3254 = fadd fast float %3251, %3198
  %3255 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3256 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  %3257 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3258 = fmul fast float %3255, %3255
  %3259 = fmul fast float %3256, %3256
  %3260 = fmul fast float %3257, %3257
  %3261 = fsub fast float %3258, %3140
  %3262 = fsub fast float %3259, %3141
  %3263 = fsub fast float %3260, %3142
  %3264 = fmul fast float %3261, %3165
  %3265 = fmul fast float %3262, %3165
  %3266 = fmul fast float %3263, %3165
  %3267 = fadd fast float %3264, %3140
  %3268 = fadd fast float %3265, %3141
  %3269 = fadd fast float %3266, %3142
  %3270 = fadd fast float %3187, %3151
  %3271 = fsub fast float %3270, %3204
  %3272 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3273 = fsub fast float %3272, %3151
  %3274 = fmul fast float %3273, %3165
  %3275 = fadd fast float %3274, %3151
  br label %3329

; <label>:3276                                    ; preds = %3164
  %3277 = and i32 %3167, 134217728
  %3278 = icmp eq i32 %3277, 0
  br i1 %3278, label %3313, label %3279

; <label>:3279                                    ; preds = %3276
  %3280 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %3281 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %3282 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %3283 = fadd fast float %3280, -5.000000e-01
  %3284 = fadd fast float %3281, -5.000000e-01
  %3285 = fadd fast float %3282, -5.000000e-01
  %3286 = fmul fast float %3283, %3165
  %3287 = fmul fast float %3284, %3165
  %3288 = fmul fast float %3285, %3165
  %3289 = fadd fast float %3286, 5.000000e-01
  %3290 = fadd fast float %3287, 5.000000e-01
  %3291 = fadd fast float %3288, 5.000000e-01
  %3292 = call float @dx.op.unary.f32(i32 24, float %3140)  ; Sqrt(value)
  %3293 = call float @dx.op.unary.f32(i32 24, float %3141)  ; Sqrt(value)
  %3294 = call float @dx.op.unary.f32(i32 24, float %3142)  ; Sqrt(value)
  %3295 = fmul fast float %3289, 2.000000e+00
  %3296 = fsub fast float 1.000000e+00, %3295
  %3297 = fmul fast float %3296, %3292
  %3298 = fadd fast float %3297, %3295
  %3299 = fmul fast float %3298, %3292
  %3300 = fmul fast float %3290, 2.000000e+00
  %3301 = fsub fast float 1.000000e+00, %3300
  %3302 = fmul fast float %3301, %3293
  %3303 = fadd fast float %3302, %3300
  %3304 = fmul fast float %3303, %3293
  %3305 = fmul fast float %3291, 2.000000e+00
  %3306 = fsub fast float 1.000000e+00, %3305
  %3307 = fmul fast float %3306, %3294
  %3308 = fadd fast float %3307, %3305
  %3309 = fmul fast float %3308, %3294
  %3310 = fmul fast float %3299, %3299
  %3311 = fmul fast float %3304, %3304
  %3312 = fmul fast float %3309, %3309
  br label %3329

; <label>:3313                                    ; preds = %3276
  %3314 = fmul fast float %332, %332
  %3315 = fmul fast float %336, %336
  %3316 = fmul fast float %340, %340
  %3317 = fadd fast float %3314, -1.000000e+00
  %3318 = fadd fast float %3315, -1.000000e+00
  %3319 = fadd fast float %3316, -1.000000e+00
  %3320 = fmul fast float %3165, %3317
  %3321 = fmul fast float %3165, %3318
  %3322 = fmul fast float %3165, %3319
  %3323 = fadd fast float %3320, 1.000000e+00
  %3324 = fadd fast float %3321, 1.000000e+00
  %3325 = fadd fast float %3322, 1.000000e+00
  %3326 = fmul fast float %3323, %3140
  %3327 = fmul fast float %3324, %3141
  %3328 = fmul fast float %3325, %3142
  br label %3329

; <label>:3329                                    ; preds = %3313, %3279, %3170, %3126
  %3330 = phi float [ %3275, %3170 ], [ %3151, %3279 ], [ %3151, %3313 ], [ 0x3FA23C0BE0000000, %3126 ]
  %3331 = phi float [ %3267, %3170 ], [ %3310, %3279 ], [ %3326, %3313 ], [ 1.000000e+00, %3126 ]
  %3332 = phi float [ %3268, %3170 ], [ %3311, %3279 ], [ %3327, %3313 ], [ 1.000000e+00, %3126 ]
  %3333 = phi float [ %3269, %3170 ], [ %3312, %3279 ], [ %3328, %3313 ], [ 1.000000e+00, %3126 ]
  %3334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.i32 %3334, 1
  %3336 = and i32 %3335, 1
  %3337 = icmp ne i32 %3336, 0
  %3338 = add i32 %34, 356
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = and i32 %3340, 32
  %3342 = icmp ne i32 %3341, 0
  %3343 = and i1 %3337, %3342
  %3344 = select i1 %3343, float 1.000000e+00, float %3331
  %3345 = select i1 %3343, float 0x3FD3333340000000, float %3332
  %3346 = select i1 %3343, float 0x3FD3333340000000, float %3333
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = and i32 %3348, 32
  %3350 = icmp eq i32 %3349, 0
  br i1 %3350, label %3423, label %3351

; <label>:3351                                    ; preds = %3329
  %3352 = add i32 %34, 140
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = add i32 %34, 468
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = add i32 %3357, 0
  %3359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3358, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3360 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3359, %dx.types.Handle %70, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3361 = extractvalue %dx.types.ResRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.ResRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.ResRet.f32 %3360, 2
  %3364 = extractvalue %dx.types.ResRet.f32 %3360, 3
  %3365 = and i32 %3354, 255
  %3366 = uitofp i32 %3365 to float
  %3367 = lshr i32 %3354, 8
  %3368 = and i32 %3367, 255
  %3369 = uitofp i32 %3368 to float
  %3370 = lshr i32 %3354, 16
  %3371 = and i32 %3370, 255
  %3372 = uitofp i32 %3371 to float
  %3373 = fmul fast float %3372, 0x3F70101000000000
  %3374 = fmul fast float %3361, %3366
  %3375 = fadd fast float %3374, %3369
  %3376 = fmul fast float %3375, 0x3F70101000000000
  %3377 = fadd fast float %3362, -5.000000e-01
  %3378 = fadd fast float %3364, -5.000000e-01
  %3379 = fmul fast float %3377, %3373
  %3380 = fmul fast float %3378, %3373
  %3381 = fadd fast float %3379, 5.000000e-01
  %3382 = fadd fast float %3380, 5.000000e-01
  %3383 = fmul fast float %3381, 2.000000e+00
  %3384 = fadd fast float %3383, -1.000000e+00
  %3385 = fmul fast float %3382, 2.000000e+00
  %3386 = fadd fast float %3385, -1.000000e+00
  %3387 = fadd fast float %3384, %3386
  %3388 = fmul fast float %3387, 5.000000e-01
  %3389 = fsub fast float %3384, %3386
  %3390 = fmul fast float %3389, 5.000000e-01
  %3391 = call float @dx.op.unary.f32(i32 6, float %3388)  ; FAbs(value)
  %3392 = fsub fast float 1.000000e+00, %3391
  %3393 = call float @dx.op.unary.f32(i32 6, float %3390)  ; FAbs(value)
  %3394 = fsub fast float %3392, %3393
  %3395 = call float @dx.op.dot3.f32(i32 55, float %3388, float %3390, float %3394, float %3388, float %3390, float %3394)  ; Dot3(ax,ay,az,bx,by,bz)
  %3396 = call float @dx.op.unary.f32(i32 25, float %3395)  ; Rsqrt(value)
  %3397 = fmul fast float %3388, %3396
  %3398 = fmul fast float %3390, %3396
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = and i32 %3400, 67108864
  %3402 = icmp eq i32 %3401, 0
  br i1 %3402, label %3419, label %3403

; <label>:3403                                    ; preds = %3351
  %3404 = add i32 %34, 328
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 65535
  %3408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3407)  ; LegacyF16ToF32(value)
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = and i32 %3410, 65535
  %3412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3411)  ; LegacyF16ToF32(value)
  %3413 = lshr i32 %3406, 16
  %3414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3413)  ; LegacyF16ToF32(value)
  %3415 = fsub fast float %3376, %3414
  %3416 = fmul fast float %3415, %3408
  %3417 = fadd fast float %3416, %3412
  %3418 = call float @dx.op.unary.f32(i32 7, float %3417)  ; Saturate(value)
  br label %3419

; <label>:3419                                    ; preds = %3403, %3351
  %3420 = phi float [ %3418, %3403 ], [ %3376, %3351 ]
  %3421 = call float @dx.op.dot2.f32(i32 54, float %3397, float %3398, float %2840, float %2841)  ; Dot2(ax,ay,bx,by)
  %3422 = call float @dx.op.dot2.f32(i32 54, float %3397, float %3398, float %2842, float %2843)  ; Dot2(ax,ay,bx,by)
  br label %3423

; <label>:3423                                    ; preds = %3419, %3329
  %3424 = phi float [ %3420, %3419 ], [ 0x3FD6666660000000, %3329 ]
  %3425 = phi float [ %3421, %3419 ], [ 0.000000e+00, %3329 ]
  %3426 = phi float [ %3422, %3419 ], [ 0.000000e+00, %3329 ]
  %3427 = phi float [ %3363, %3419 ], [ 1.000000e+00, %3329 ]
  %3428 = add i32 %34, 208
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = lshr i32 %3430, 22
  %3432 = shl nuw nsw i32 %3431, 5
  %3433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3432)  ; LegacyF16ToF32(value)
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = and i32 %3435, 64
  %3437 = icmp eq i32 %3436, 0
  br i1 %3437, label %3471, label %3438

; <label>:3438                                    ; preds = %3423
  %3439 = add i32 %34, 484
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = add i32 %3441, 0
  %3443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = and i32 %3445, 131072
  %3447 = icmp eq i32 %3446, 0
  %3448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3443, %dx.types.Handle %70, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3449 = extractvalue %dx.types.ResRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.ResRet.f32 %3448, 1
  %3451 = extractvalue %dx.types.ResRet.f32 %3448, 2
  %3452 = fmul fast float %3449, %320
  %3453 = fmul fast float %3450, %323
  %3454 = fmul fast float %3451, %326
  br i1 %3447, label %3461, label %3455

; <label>:3455                                    ; preds = %3438
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 0
  %3458 = fmul fast float %3457, %3452
  %3459 = fmul fast float %3457, %3453
  %3460 = fmul fast float %3457, %3454
  br label %3461

; <label>:3461                                    ; preds = %3455, %3438
  %3462 = phi float [ %3458, %3455 ], [ %3452, %3438 ]
  %3463 = phi float [ %3459, %3455 ], [ %3453, %3438 ]
  %3464 = phi float [ %3460, %3455 ], [ %3454, %3438 ]
  %3465 = fmul fast float %3462, %3433
  %3466 = select i1 %174, float %3465, float %3462
  %3467 = call float @dx.op.dot3.f32(i32 55, float %3466, float %3463, float %3464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3468 = select i1 %174, float 0.000000e+00, float %3462
  %3469 = select i1 %174, float %3467, float %3463
  %3470 = select i1 %174, float 0.000000e+00, float %3464
  br label %3471

; <label>:3471                                    ; preds = %3461, %3423
  %3472 = phi float [ %3468, %3461 ], [ 0.000000e+00, %3423 ]
  %3473 = phi float [ %3469, %3461 ], [ 0.000000e+00, %3423 ]
  %3474 = phi float [ %3470, %3461 ], [ 0.000000e+00, %3423 ]
  %3475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.i32 %3475, 0
  %3477 = and i32 %3476, 1024
  %3478 = icmp eq i32 %3477, 0
  br i1 %3478, label %3509, label %3479

; <label>:3479                                    ; preds = %3471
  %3480 = add i32 %34, 200
  %3481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3480, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.i32 %3481, 0
  %3483 = and i32 %3482, 255
  %3484 = uitofp i32 %3483 to float
  %3485 = fmul fast float %3484, 0x3F70101020000000
  %3486 = lshr i32 %3482, 8
  %3487 = and i32 %3486, 255
  %3488 = uitofp i32 %3487 to float
  %3489 = fmul fast float %3488, 0x3F70101020000000
  %3490 = lshr i32 %3482, 16
  %3491 = and i32 %3490, 255
  %3492 = uitofp i32 %3491 to float
  %3493 = fmul fast float %3492, 0x3F70101020000000
  %3494 = fmul fast float %3485, %3485
  %3495 = fmul fast float %3489, %3489
  %3496 = fmul fast float %3493, %3493
  %3497 = add i32 %34, 548
  %3498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.i32 %3498, 0
  %3500 = add i32 %3499, 0
  %3501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3502 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3501, %dx.types.Handle %71, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3503 = extractvalue %dx.types.ResRet.f32 %3502, 0
  %3504 = extractvalue %dx.types.ResRet.f32 %3502, 1
  %3505 = extractvalue %dx.types.ResRet.f32 %3502, 2
  %3506 = fmul fast float %3494, %3503
  %3507 = fmul fast float %3495, %3504
  %3508 = fmul fast float %3496, %3505
  br label %3509

; <label>:3509                                    ; preds = %3479, %3471
  %3510 = phi float [ %3506, %3479 ], [ 0.000000e+00, %3471 ]
  %3511 = phi float [ %3507, %3479 ], [ 0.000000e+00, %3471 ]
  %3512 = phi float [ %3508, %3479 ], [ 0.000000e+00, %3471 ]
  %3513 = fcmp fast ogt float %3510, 0.000000e+00
  %3514 = fcmp fast ogt float %3511, 0.000000e+00
  %3515 = fcmp fast ogt float %3512, 0.000000e+00
  %3516 = call float @dx.op.unary.f32(i32 23, float %3510)  ; Log(value)
  %3517 = call float @dx.op.unary.f32(i32 23, float %3511)  ; Log(value)
  %3518 = call float @dx.op.unary.f32(i32 23, float %3512)  ; Log(value)
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = lshr i32 %3520, 7
  %3522 = and i32 %3521, 32752
  %3523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3522)  ; LegacyF16ToF32(value)
  %3524 = fmul fast float %3516, 0xBFE62E4300000000
  %3525 = fmul fast float %3524, %3523
  %3526 = fmul fast float %3517, 0xBFE62E4300000000
  %3527 = fmul fast float %3526, %3523
  %3528 = fmul fast float %3518, 0xBFE62E4300000000
  %3529 = fmul fast float %3528, %3523
  %3530 = select i1 %3513, float %3525, float 1.270000e+02
  %3531 = select i1 %3514, float %3527, float 1.270000e+02
  %3532 = select i1 %3515, float %3529, float 1.270000e+02
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = and i32 %3534, 10240
  %3536 = icmp eq i32 %3535, 0
  br i1 %3536, label %3557, label %3537

; <label>:3537                                    ; preds = %3509
  %3538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.i32 %3538, 0
  %3540 = and i32 %3539, 2048
  %3541 = icmp eq i32 %3540, 0
  br i1 %3541, label %3557, label %3542

; <label>:3542                                    ; preds = %3537
  %3543 = add i32 %34, 564
  %3544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.i32 %3544, 0
  %3546 = add i32 %3545, 0
  %3547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3546, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3547, %dx.types.Handle %71, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 3
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = shl i32 %3551, 4
  %3553 = and i32 %3552, 32752
  %3554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3553)  ; LegacyF16ToF32(value)
  %3555 = fmul fast float %3554, %3549
  %3556 = call float @dx.op.binary.f32(i32 35, float %3555, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3557

; <label>:3557                                    ; preds = %3542, %3537, %3509
  %3558 = phi float [ %3556, %3542 ], [ 0x3F70101020000000, %3537 ], [ 0x3F70101020000000, %3509 ]
  %3559 = add i32 %34, 144
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = and i32 %3561, 255
  %3563 = uitofp i32 %3562 to float
  %3564 = lshr i32 %3561, 8
  %3565 = and i32 %3564, 255
  %3566 = uitofp i32 %3565 to float
  %3567 = call float @dx.op.dot3.f32(i32 55, float %3344, float %3345, float %3346, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3568 = fmul fast float %3566, %3567
  %3569 = fadd fast float %3568, %3563
  %3570 = fmul fast float %3569, 0x3F70101020000000
  %3571 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  br i1 %2828, label %3572, label %3607

; <label>:3572                                    ; preds = %3557
  %3573 = fmul fast float %3558, 2.000000e+00
  %3574 = fcmp fast olt float %3530, 1.270000e+02
  %3575 = fcmp fast olt float %3531, 1.270000e+02
  %3576 = fcmp fast olt float %3532, 1.270000e+02
  %3577 = fmul fast float %3530, 0xBFF7154760000000
  %3578 = fmul fast float %3577, %3573
  %3579 = fmul fast float %3531, 0xBFF7154760000000
  %3580 = fmul fast float %3579, %3573
  %3581 = fmul fast float %3532, 0xBFF7154760000000
  %3582 = fmul fast float %3581, %3573
  %3583 = call float @dx.op.unary.f32(i32 21, float %3578)  ; Exp(value)
  %3584 = call float @dx.op.unary.f32(i32 21, float %3580)  ; Exp(value)
  %3585 = call float @dx.op.unary.f32(i32 21, float %3582)  ; Exp(value)
  %3586 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3587 = call float @dx.op.unary.f32(i32 7, float %3584)  ; Saturate(value)
  %3588 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  %3589 = fadd fast float %3586, -1.000000e+00
  %3590 = select i1 %3574, float %3589, float -1.000000e+00
  %3591 = fadd fast float %3587, -1.000000e+00
  %3592 = select i1 %3575, float %3591, float -1.000000e+00
  %3593 = fadd fast float %3588, -1.000000e+00
  %3594 = select i1 %3576, float %3593, float -1.000000e+00
  %3595 = fmul fast float %3590, %3124
  %3596 = fmul fast float %3592, %3124
  %3597 = fmul fast float %3594, %3124
  %3598 = fadd fast float %3595, 1.000000e+00
  %3599 = fadd fast float %3596, 1.000000e+00
  %3600 = fadd fast float %3597, 1.000000e+00
  %3601 = fmul fast float %3598, %2817
  %3602 = fmul fast float %3599, %2818
  %3603 = fmul fast float %3600, %2819
  %3604 = fmul fast float %3598, %2820
  %3605 = fmul fast float %3599, %2821
  %3606 = fmul fast float %3600, %2822
  br label %3607

; <label>:3607                                    ; preds = %3572, %3557
  %3608 = phi float [ %3601, %3572 ], [ %2817, %3557 ]
  %3609 = phi float [ %3602, %3572 ], [ %2818, %3557 ]
  %3610 = phi float [ %3603, %3572 ], [ %2819, %3557 ]
  %3611 = phi float [ %3604, %3572 ], [ %2820, %3557 ]
  %3612 = phi float [ %3605, %3572 ], [ %2821, %3557 ]
  %3613 = phi float [ %3606, %3572 ], [ %2822, %3557 ]
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = and i32 %3615, 3
  %3617 = icmp eq i32 %3616, 3
  br i1 %3617, label %3696, label %3618

; <label>:3618                                    ; preds = %3607
  %3619 = and i32 %3615, 16
  %3620 = icmp ne i32 %3619, 0
  %3621 = select i1 %3620, float %3124, float 0.000000e+00
  %3622 = icmp eq i32 %3616, 0
  br i1 %3622, label %3623, label %3651

; <label>:3623                                    ; preds = %3618
  %3624 = and i32 %3615, 64
  %3625 = icmp ne i32 %3624, 0
  %3626 = select i1 %3625, float %3124, float 0.000000e+00
  %3627 = fsub fast float %3344, %3608
  %3628 = fsub fast float %3345, %3609
  %3629 = fsub fast float %3346, %3610
  %3630 = fmul fast float %3621, %3627
  %3631 = fmul fast float %3621, %3628
  %3632 = fmul fast float %3621, %3629
  %3633 = fadd fast float %3630, %3608
  %3634 = fadd fast float %3631, %3609
  %3635 = fadd fast float %3632, %3610
  %3636 = fsub fast float %3330, %2823
  %3637 = fmul fast float %3621, %3636
  %3638 = fadd fast float %3637, %2823
  %3639 = fsub fast float %3472, %3611
  %3640 = fsub fast float %3473, %3612
  %3641 = fsub fast float %3474, %3613
  %3642 = fmul fast float %3626, %3639
  %3643 = fmul fast float %3626, %3640
  %3644 = fmul fast float %3626, %3641
  %3645 = fadd fast float %3642, %3611
  %3646 = fadd fast float %3643, %3612
  %3647 = fadd fast float %3644, %3613
  %3648 = fsub fast float %3571, %2826
  %3649 = fmul fast float %3621, %3648
  %3650 = fadd fast float %3649, %2826
  br label %3696

; <label>:3651                                    ; preds = %3618
  %3652 = icmp eq i32 %3616, 1
  br i1 %3652, label %3653, label %3666

; <label>:3653                                    ; preds = %3651
  %3654 = fadd fast float %3344, -1.000000e+00
  %3655 = fadd fast float %3345, -1.000000e+00
  %3656 = fadd fast float %3346, -1.000000e+00
  %3657 = fmul fast float %3621, %3654
  %3658 = fmul fast float %3621, %3655
  %3659 = fmul fast float %3621, %3656
  %3660 = fadd fast float %3657, 1.000000e+00
  %3661 = fadd fast float %3658, 1.000000e+00
  %3662 = fadd fast float %3659, 1.000000e+00
  %3663 = fmul fast float %3660, %3608
  %3664 = fmul fast float %3661, %3609
  %3665 = fmul fast float %3662, %3610
  br label %3696

; <label>:3666                                    ; preds = %3651
  %3667 = icmp eq i32 %3616, 2
  br i1 %3667, label %3668, label %3696

; <label>:3668                                    ; preds = %3666
  %3669 = call float @dx.op.unary.f32(i32 24, float %3344)  ; Sqrt(value)
  %3670 = call float @dx.op.unary.f32(i32 24, float %3345)  ; Sqrt(value)
  %3671 = call float @dx.op.unary.f32(i32 24, float %3346)  ; Sqrt(value)
  %3672 = fadd fast float %3669, -5.000000e-01
  %3673 = fadd fast float %3670, -5.000000e-01
  %3674 = fadd fast float %3671, -5.000000e-01
  %3675 = fmul fast float %3672, %3621
  %3676 = fmul fast float %3673, %3621
  %3677 = fmul fast float %3674, %3621
  %3678 = fadd fast float %3675, 5.000000e-01
  %3679 = fadd fast float %3676, 5.000000e-01
  %3680 = fadd fast float %3677, 5.000000e-01
  %3681 = fmul fast float %3678, 2.000000e+00
  %3682 = fsub fast float 1.000000e+00, %3681
  %3683 = fmul fast float %3682, %3608
  %3684 = fadd fast float %3683, %3681
  %3685 = fmul fast float %3684, %3608
  %3686 = fmul fast float %3679, 2.000000e+00
  %3687 = fsub fast float 1.000000e+00, %3686
  %3688 = fmul fast float %3687, %3609
  %3689 = fadd fast float %3688, %3686
  %3690 = fmul fast float %3689, %3609
  %3691 = fmul fast float %3680, 2.000000e+00
  %3692 = fsub fast float 1.000000e+00, %3691
  %3693 = fmul fast float %3692, %3610
  %3694 = fadd fast float %3693, %3691
  %3695 = fmul fast float %3694, %3610
  br label %3696

; <label>:3696                                    ; preds = %3668, %3666, %3653, %3623, %3607
  %3697 = phi float [ %3608, %3607 ], [ %3685, %3668 ], [ %3608, %3666 ], [ %3663, %3653 ], [ %3633, %3623 ]
  %3698 = phi float [ %3609, %3607 ], [ %3690, %3668 ], [ %3609, %3666 ], [ %3664, %3653 ], [ %3634, %3623 ]
  %3699 = phi float [ %3610, %3607 ], [ %3695, %3668 ], [ %3610, %3666 ], [ %3665, %3653 ], [ %3635, %3623 ]
  %3700 = phi float [ %3611, %3607 ], [ %3611, %3668 ], [ %3611, %3666 ], [ %3611, %3653 ], [ %3645, %3623 ]
  %3701 = phi float [ %3612, %3607 ], [ %3612, %3668 ], [ %3612, %3666 ], [ %3612, %3653 ], [ %3646, %3623 ]
  %3702 = phi float [ %3613, %3607 ], [ %3613, %3668 ], [ %3613, %3666 ], [ %3613, %3653 ], [ %3647, %3623 ]
  %3703 = phi float [ %2823, %3607 ], [ %2823, %3668 ], [ %2823, %3666 ], [ %2823, %3653 ], [ %3638, %3623 ]
  %3704 = phi float [ %2826, %3607 ], [ %2826, %3668 ], [ %2826, %3666 ], [ %2826, %3653 ], [ %3650, %3623 ]
  %3705 = and i32 %3615, 12
  %3706 = icmp eq i32 %3705, 12
  br i1 %3706, label %3779, label %3707

; <label>:3707                                    ; preds = %3696
  %3708 = and i32 %3615, 2097184
  %3709 = icmp eq i32 %3708, 2097184
  %3710 = select i1 %3709, float %3124, float 0.000000e+00
  %3711 = and i32 %3615, 4194336
  %3712 = icmp eq i32 %3711, 4194336
  %3713 = select i1 %3712, float %3124, float 0.000000e+00
  %3714 = and i32 %3615, 8388640
  %3715 = icmp eq i32 %3714, 8388640
  %3716 = select i1 %3715, float %3124, float 0.000000e+00
  %3717 = icmp eq i32 %3705, 0
  br i1 %3717, label %3718, label %3731

; <label>:3718                                    ; preds = %3707
  %3719 = fsub fast float %3425, %2815
  %3720 = fsub fast float %3426, %2816
  %3721 = fmul fast float %3710, %3719
  %3722 = fmul fast float %3710, %3720
  %3723 = fadd fast float %3721, %2815
  %3724 = fadd fast float %3722, %2816
  %3725 = fsub fast float %3427, %2825
  %3726 = fmul fast float %3713, %3725
  %3727 = fadd fast float %3726, %2825
  %3728 = fsub fast float %3424, %2824
  %3729 = fmul fast float %3716, %3728
  %3730 = fadd fast float %3729, %2824
  br label %3779

; <label>:3731                                    ; preds = %3707
  %3732 = icmp eq i32 %3705, 4
  br i1 %3732, label %3733, label %3765

; <label>:3733                                    ; preds = %3731
  %3734 = fmul fast float %3710, %3425
  %3735 = fmul fast float %3710, %3426
  %3736 = fadd fast float %3734, %2815
  %3737 = fadd fast float %3735, %2816
  %3738 = call float @dx.op.binary.f32(i32 36, float %2825, float %3427)  ; FMin(a,b)
  %3739 = fsub fast float %3738, %2825
  %3740 = fmul fast float %3739, %3713
  %3741 = fadd fast float %3740, %2825
  %3742 = fadd fast float %3424, %2824
  %3743 = fmul fast float %3742, 0x3FF337FAE0000000
  %3744 = fmul fast float %2824, %2824
  %3745 = fmul fast float %3424, %3424
  %3746 = fadd fast float %3745, %3744
  %3747 = fmul fast float %3746, 0x3FE5152B00000000
  %3748 = fmul fast float %2824, 0xBFCC1F85E0000000
  %3749 = fmul fast float %3748, %3424
  %3750 = fadd fast float %3749, 0xBFE1363700000000
  %3751 = fadd fast float %3750, %3743
  %3752 = fsub fast float %3751, %3747
  %3753 = fmul fast float %3742, 0x3FBA6F0D00000000
  %3754 = fmul fast float %3746, 0x3FD0432880000000
  %3755 = fmul fast float %2824, 0xBFEF110800000000
  %3756 = fmul fast float %3755, %3424
  %3757 = fadd fast float %3756, 1.000000e+00
  %3758 = fsub fast float %3757, %3753
  %3759 = fadd fast float %3758, %3754
  %3760 = fdiv fast float %3752, %3759
  %3761 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3762 = fsub fast float %3761, %2824
  %3763 = fmul fast float %3762, %3716
  %3764 = fadd fast float %3763, %2824
  br label %3779

; <label>:3765                                    ; preds = %3731
  %3766 = icmp eq i32 %3705, 8
  br i1 %3766, label %3767, label %3779

; <label>:3767                                    ; preds = %3765
  %3768 = fmul fast float %3710, %3425
  %3769 = fmul fast float %3710, %3426
  %3770 = fadd fast float %3768, %2815
  %3771 = fadd fast float %3769, %2816
  %3772 = call float @dx.op.binary.f32(i32 36, float %2825, float %3427)  ; FMin(a,b)
  %3773 = fsub fast float %3772, %2825
  %3774 = fmul fast float %3773, %3713
  %3775 = fadd fast float %3774, %2825
  %3776 = fsub fast float %3424, %2824
  %3777 = fmul fast float %3716, %3776
  %3778 = fadd fast float %3777, %2824
  br label %3779

; <label>:3779                                    ; preds = %3767, %3765, %3733, %3718, %3696, %3123, %2827, %2814
  %3780 = phi float [ %2815, %3696 ], [ %2815, %3123 ], [ %2815, %2814 ], [ %2815, %2827 ], [ %3723, %3718 ], [ %3736, %3733 ], [ %2815, %3765 ], [ %3770, %3767 ]
  %3781 = phi float [ %2816, %3696 ], [ %2816, %3123 ], [ %2816, %2814 ], [ %2816, %2827 ], [ %3724, %3718 ], [ %3737, %3733 ], [ %2816, %3765 ], [ %3771, %3767 ]
  %3782 = phi float [ %3697, %3696 ], [ %2817, %3123 ], [ %2817, %2814 ], [ %2817, %2827 ], [ %3697, %3718 ], [ %3697, %3733 ], [ %3697, %3765 ], [ %3697, %3767 ]
  %3783 = phi float [ %3698, %3696 ], [ %2818, %3123 ], [ %2818, %2814 ], [ %2818, %2827 ], [ %3698, %3718 ], [ %3698, %3733 ], [ %3698, %3765 ], [ %3698, %3767 ]
  %3784 = phi float [ %3699, %3696 ], [ %2819, %3123 ], [ %2819, %2814 ], [ %2819, %2827 ], [ %3699, %3718 ], [ %3699, %3733 ], [ %3699, %3765 ], [ %3699, %3767 ]
  %3785 = phi float [ %3700, %3696 ], [ %2820, %3123 ], [ %2820, %2814 ], [ %2820, %2827 ], [ %3700, %3718 ], [ %3700, %3733 ], [ %3700, %3765 ], [ %3700, %3767 ]
  %3786 = phi float [ %3701, %3696 ], [ %2821, %3123 ], [ %2821, %2814 ], [ %2821, %2827 ], [ %3701, %3718 ], [ %3701, %3733 ], [ %3701, %3765 ], [ %3701, %3767 ]
  %3787 = phi float [ %3702, %3696 ], [ %2822, %3123 ], [ %2822, %2814 ], [ %2822, %2827 ], [ %3702, %3718 ], [ %3702, %3733 ], [ %3702, %3765 ], [ %3702, %3767 ]
  %3788 = phi float [ %3703, %3696 ], [ %2823, %3123 ], [ %2823, %2814 ], [ %2823, %2827 ], [ %3703, %3718 ], [ %3703, %3733 ], [ %3703, %3765 ], [ %3703, %3767 ]
  %3789 = phi float [ %2824, %3696 ], [ %2824, %3123 ], [ %2824, %2814 ], [ %2824, %2827 ], [ %3730, %3718 ], [ %3764, %3733 ], [ %2824, %3765 ], [ %3778, %3767 ]
  %3790 = phi float [ %2825, %3696 ], [ %2825, %3123 ], [ %2825, %2814 ], [ %2825, %2827 ], [ %3727, %3718 ], [ %3741, %3733 ], [ %2825, %3765 ], [ %3775, %3767 ]
  %3791 = phi float [ %3704, %3696 ], [ %2826, %3123 ], [ %2826, %2814 ], [ %2826, %2827 ], [ %3704, %3718 ], [ %3704, %3733 ], [ %3704, %3765 ], [ %3704, %3767 ]
  %3792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3793 = extractvalue %dx.types.CBufRet.f32 %3792, 0
  %3794 = call float @dx.op.dot2.f32(i32 54, float %3780, float %3781, float %3780, float %3781)  ; Dot2(ax,ay,bx,by)
  %3795 = fmul fast float %3794, 0x3FE3333340000000
  %3796 = fsub fast float 1.000000e+00, %3795
  %3797 = call float @dx.op.dot3.f32(i32 55, float %3780, float %3781, float %3796, float %3780, float %3781, float %3796)  ; Dot3(ax,ay,az,bx,by,bz)
  %3798 = call float @dx.op.unary.f32(i32 25, float %3797)  ; Rsqrt(value)
  %3799 = fmul fast float %3798, %3780
  %3800 = fmul fast float %3798, %3781
  %3801 = fmul fast float %3796, %3798
  %3802 = fmul fast float %3801, %83
  %3803 = fmul fast float %3801, %85
  %3804 = fmul fast float %3801, %87
  %3805 = fmul fast float %3799, %55
  %3806 = fmul fast float %3799, %56
  %3807 = fmul fast float %3799, %57
  %3808 = fadd fast float %3802, %3805
  %3809 = fadd fast float %3803, %3806
  %3810 = fadd fast float %3804, %3807
  %3811 = fmul fast float %97, %3800
  %3812 = fmul fast float %98, %3800
  %3813 = fmul fast float %99, %3800
  %3814 = fadd fast float %3808, %3811
  %3815 = fadd fast float %3809, %3812
  %3816 = fadd fast float %3810, %3813
  %3817 = call float @dx.op.dot3.f32(i32 55, float %3814, float %3815, float %3816, float %3814, float %3815, float %3816)  ; Dot3(ax,ay,az,bx,by,bz)
  %3818 = call float @dx.op.unary.f32(i32 25, float %3817)  ; Rsqrt(value)
  %3819 = fmul fast float %3814, %3818
  %3820 = fmul fast float %3815, %3818
  %3821 = fmul fast float %3816, %3818
  %3822 = and i32 %36, 1
  %3823 = icmp eq i32 %3822, 0
  br i1 %3823, label %3824, label %4332

; <label>:3824                                    ; preds = %3779
  %3825 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3826 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3827 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3828 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3829 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3830 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3831 = fadd fast float %3825, %133
  %3832 = fadd fast float %3826, %134
  %3833 = fadd fast float %3827, %135
  %3834 = fadd fast float %3828, %133
  %3835 = fadd fast float %3829, %134
  %3836 = fadd fast float %3830, %135
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.CBufRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.CBufRet.f32 %3837, 2
  %3841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3841, 2
  %3843 = extractvalue %dx.types.CBufRet.f32 %3841, 3
  %3844 = fmul fast float %3838, %74
  %3845 = fmul fast float %3844, %3842
  %3846 = fmul fast float %3839, %75
  %3847 = fmul fast float %3846, %3843
  %3848 = fptoui float %3845 to i32
  %3849 = fptoui float %3847 to i32
  %3850 = fadd fast float %3838, -1.000000e+00
  %3851 = fadd fast float %3839, -1.000000e+00
  %3852 = fptoui float %3850 to i32
  %3853 = fptoui float %3851 to i32
  %3854 = call i32 @dx.op.binary.i32(i32 40, i32 %3848, i32 %3852)  ; UMin(a,b)
  %3855 = call i32 @dx.op.binary.i32(i32 40, i32 %3849, i32 %3853)  ; UMin(a,b)
  %3856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3857 = extractvalue %dx.types.CBufRet.f32 %3856, 2
  %3858 = extractvalue %dx.types.CBufRet.f32 %3856, 3
  %3859 = fmul fast float %3857, %69
  %3860 = fsub fast float %3859, %3858
  %3861 = fadd fast float %3840, -1.000000e+00
  %3862 = call float @dx.op.binary.f32(i32 36, float %3860, float %3861)  ; FMin(a,b)
  %3863 = fptoui float %3862 to i32
  %3864 = fptoui float %3838 to i32
  %3865 = fptoui float %3839 to i32
  %3866 = mul i32 %3863, %3865
  %3867 = add i32 %3866, %3855
  %3868 = mul i32 %3867, %3864
  %3869 = add i32 %3868, %3854
  %3870 = shl i32 %3869, 2
  %3871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.i32 %3871, 0
  %3873 = and i32 %3872, 1023
  %3874 = lshr i32 %3872, 10
  %3875 = icmp eq i32 %3873, 0
  br i1 %3875, label %4301, label %3876

; <label>:3876                                    ; preds = %3824
  %3877 = and i32 %3872, 1023
  br label %3878

; <label>:3878                                    ; preds = %4004, %3876
  %3879 = phi i32 [ %3954, %4004 ], [ 0, %3876 ]
  %3880 = phi float [ %4005, %4004 ], [ 0.000000e+00, %3876 ]
  %3881 = phi float [ %4006, %4004 ], [ %3793, %3876 ]
  %3882 = phi float [ %4007, %4004 ], [ %3791, %3876 ]
  %3883 = phi float [ %4008, %4004 ], [ 0.000000e+00, %3876 ]
  %3884 = phi float [ %4009, %4004 ], [ 0.000000e+00, %3876 ]
  %3885 = phi float [ %4010, %4004 ], [ %3785, %3876 ]
  %3886 = phi float [ %4011, %4004 ], [ %3786, %3876 ]
  %3887 = phi float [ %4012, %4004 ], [ %3787, %3876 ]
  %3888 = phi float [ %4013, %4004 ], [ %3819, %3876 ]
  %3889 = phi float [ %4014, %4004 ], [ %3820, %3876 ]
  %3890 = phi float [ %4015, %4004 ], [ %3821, %3876 ]
  %3891 = phi float [ %4016, %4004 ], [ %3790, %3876 ]
  %3892 = phi float [ %4017, %4004 ], [ %3789, %3876 ]
  %3893 = phi float [ %4018, %4004 ], [ 0.000000e+00, %3876 ]
  %3894 = phi float [ %4019, %4004 ], [ %3788, %3876 ]
  %3895 = phi float [ %4020, %4004 ], [ %3782, %3876 ]
  %3896 = phi float [ %4021, %4004 ], [ %3783, %3876 ]
  %3897 = phi float [ %4022, %4004 ], [ %3784, %3876 ]
  %3898 = add nuw nsw i32 %3879, %3874
  %3899 = shl i32 %3898, 2
  %3900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.i32 %3900, 0
  %3902 = shl i32 %3901, 8
  %3903 = or i32 %3902, 48
  %3904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3905 = extractvalue %dx.types.ResRet.f32 %3904, 0
  %3906 = extractvalue %dx.types.ResRet.f32 %3904, 1
  %3907 = extractvalue %dx.types.ResRet.f32 %3904, 2
  %3908 = extractvalue %dx.types.ResRet.f32 %3904, 3
  %3909 = or i32 %3902, 64
  %3910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3909, i32 undef)  ; BufferLoad(srv,index,wot)
  %3911 = extractvalue %dx.types.ResRet.i32 %3910, 0
  %3912 = extractvalue %dx.types.ResRet.i32 %3910, 1
  %3913 = or i32 %3902, 80
  %3914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 2
  %3916 = extractvalue %dx.types.ResRet.f32 %3914, 3
  %3917 = or i32 %3902, 96
  %3918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.ResRet.f32 %3918, 1
  %3921 = extractvalue %dx.types.ResRet.f32 %3918, 2
  %3922 = extractvalue %dx.types.ResRet.f32 %3918, 3
  %3923 = or i32 %3902, 112
  %3924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 2
  %3926 = or i32 %3902, 128
  %3927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3931 = extractvalue %dx.types.ResRet.f32 %3927, 3
  %3932 = or i32 %3902, 144
  %3933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = extractvalue %dx.types.ResRet.f32 %3933, 2
  %3937 = extractvalue %dx.types.ResRet.f32 %3933, 3
  %3938 = or i32 %3902, 160
  %3939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3938, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.ResRet.f32 %3939, 1
  %3942 = extractvalue %dx.types.ResRet.f32 %3939, 2
  %3943 = extractvalue %dx.types.ResRet.f32 %3939, 3
  %3944 = or i32 %3902, 192
  %3945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.i32 %3945, 0
  %3947 = or i32 %3902, 208
  %3948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3947, i32 undef)  ; BufferLoad(srv,index,wot)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = or i32 %3902, 248
  %3951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3950, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.f32 %3951, 0
  %3953 = extractvalue %dx.types.ResRet.f32 %3951, 1
  %3954 = add nuw nsw i32 %3879, 1
  %3955 = bitcast float %3908 to i32
  %3956 = and i32 %3955, 512
  %3957 = icmp eq i32 %3956, 0
  %3958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.ResRet.f32 %3958, 1
  %3961 = extractvalue %dx.types.ResRet.f32 %3958, 2
  %3962 = extractvalue %dx.types.ResRet.f32 %3958, 3
  %3963 = call float @dx.op.dot4.f32(i32 56, float %3959, float %3960, float %3961, float %3962, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3964 = or i32 %3902, 16
  %3965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = extractvalue %dx.types.ResRet.f32 %3965, 1
  %3968 = extractvalue %dx.types.ResRet.f32 %3965, 2
  %3969 = extractvalue %dx.types.ResRet.f32 %3965, 3
  %3970 = call float @dx.op.dot4.f32(i32 56, float %3966, float %3967, float %3968, float %3969, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3971 = or i32 %3902, 32
  %3972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3971, i32 undef)  ; BufferLoad(srv,index,wot)
  %3973 = extractvalue %dx.types.ResRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.ResRet.f32 %3972, 1
  %3975 = extractvalue %dx.types.ResRet.f32 %3972, 2
  %3976 = extractvalue %dx.types.ResRet.f32 %3972, 3
  %3977 = call float @dx.op.dot4.f32(i32 56, float %3973, float %3974, float %3975, float %3976, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3978 = call float @dx.op.unary.f32(i32 27, float %3963)  ; Round_ni(value)
  %3979 = call float @dx.op.unary.f32(i32 6, float %3978)  ; FAbs(value)
  %3980 = call float @dx.op.unary.f32(i32 27, float %3970)  ; Round_ni(value)
  %3981 = call float @dx.op.unary.f32(i32 6, float %3980)  ; FAbs(value)
  %3982 = call float @dx.op.unary.f32(i32 6, float %3977)  ; FAbs(value)
  %3983 = call float @dx.op.unary.f32(i32 27, float %3982)  ; Round_ni(value)
  %3984 = fadd fast float %3981, %3979
  %3985 = fadd fast float %3984, %3983
  %3986 = fcmp fast oeq float %3985, 0.000000e+00
  %3987 = call float @dx.op.dot4.f32(i32 56, float %3959, float %3960, float %3961, float %3962, float %3831, float %3832, float %3833, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3988 = call float @dx.op.dot4.f32(i32 56, float %3966, float %3967, float %3968, float %3969, float %3831, float %3832, float %3833, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3989 = call float @dx.op.dot4.f32(i32 56, float %3959, float %3960, float %3961, float %3962, float %3834, float %3835, float %3836, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3990 = call float @dx.op.dot4.f32(i32 56, float %3966, float %3967, float %3968, float %3969, float %3834, float %3835, float %3836, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3991 = fsub fast float %3987, %3963
  %3992 = fsub fast float %3989, %3963
  %3993 = fsub fast float %3988, %3970
  %3994 = fsub fast float %3990, %3970
  %3995 = call float @dx.op.dot3.f32(i32 55, float %3905, float %3906, float %3907, float %83, float %85, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 2
  %3998 = fadd fast float %3997, %3995
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3996, 0
  %4001 = fcmp fast ogt float %3999, %4000
  %4002 = and i1 %3986, %4001
  %4003 = and i1 %3957, %4002
  br i1 %4003, label %4024, label %4004

; <label>:4004                                    ; preds = %4287, %4105, %4024, %3878
  %4005 = phi float [ %3880, %4024 ], [ %4108, %4105 ], [ %4108, %4287 ], [ %3880, %3878 ]
  %4006 = phi float [ %3881, %4024 ], [ %3881, %4105 ], [ %4262, %4287 ], [ %3881, %3878 ]
  %4007 = phi float [ %3882, %4024 ], [ %3882, %4105 ], [ %4260, %4287 ], [ %3882, %3878 ]
  %4008 = phi float [ %3883, %4024 ], [ %3883, %4105 ], [ %4232, %4287 ], [ %3883, %3878 ]
  %4009 = phi float [ %3884, %4024 ], [ %3884, %4105 ], [ %4230, %4287 ], [ %3884, %3878 ]
  %4010 = phi float [ %3885, %4024 ], [ %3885, %4105 ], [ %4297, %4287 ], [ %3885, %3878 ]
  %4011 = phi float [ %3886, %4024 ], [ %3886, %4105 ], [ %4298, %4287 ], [ %3886, %3878 ]
  %4012 = phi float [ %3887, %4024 ], [ %3887, %4105 ], [ %4299, %4287 ], [ %3887, %3878 ]
  %4013 = phi float [ %3888, %4024 ], [ %3888, %4105 ], [ %4211, %4287 ], [ %3888, %3878 ]
  %4014 = phi float [ %3889, %4024 ], [ %3889, %4105 ], [ %4212, %4287 ], [ %3889, %3878 ]
  %4015 = phi float [ %3890, %4024 ], [ %3890, %4105 ], [ %4213, %4287 ], [ %3890, %3878 ]
  %4016 = phi float [ %3891, %4024 ], [ %3891, %4105 ], [ %4240, %4287 ], [ %3891, %3878 ]
  %4017 = phi float [ %3892, %4024 ], [ %3892, %4105 ], [ %4237, %4287 ], [ %3892, %3878 ]
  %4018 = phi float [ %3893, %4024 ], [ %3893, %4105 ], [ %4234, %4287 ], [ %3893, %3878 ]
  %4019 = phi float [ %3894, %4024 ], [ %3894, %4105 ], [ %4228, %4287 ], [ %3894, %3878 ]
  %4020 = phi float [ %3895, %4024 ], [ %3895, %4105 ], [ %4223, %4287 ], [ %3895, %3878 ]
  %4021 = phi float [ %3896, %4024 ], [ %3896, %4105 ], [ %4224, %4287 ], [ %3896, %3878 ]
  %4022 = phi float [ %3897, %4024 ], [ %3897, %4105 ], [ %4225, %4287 ], [ %3897, %3878 ]
  %4023 = icmp eq i32 %3954, %3877
  br i1 %4023, label %4300, label %3878

; <label>:4024                                    ; preds = %3878
  %4025 = extractvalue %dx.types.ResRet.f32 %3924, 3
  %4026 = extractvalue %dx.types.ResRet.f32 %3924, 1
  %4027 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %4028 = extractvalue %dx.types.ResRet.f32 %3914, 1
  %4029 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %4030 = extractvalue %dx.types.ResRet.i32 %3910, 3
  %4031 = extractvalue %dx.types.ResRet.i32 %3910, 2
  %4032 = add i32 %4030, 0
  %4033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4032, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4035 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4033, %dx.types.Handle %4034, float %3963, float %3970, float undef, float undef, i32 0, i32 0, i32 undef, float %3991, float %3993, float undef, float %3992, float %3994, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = fmul fast float %4036, %4029
  %4038 = fadd fast float %4037, %4028
  %4039 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4040 = fmul fast float %3963, %3919
  %4041 = call float @dx.op.tertiary.f32(i32 46, float %3920, float %3970, float %4040)  ; FMad(a,b,c)
  %4042 = fadd fast float %4041, %4027
  %4043 = fmul fast float %3963, %3921
  %4044 = call float @dx.op.tertiary.f32(i32 46, float %3922, float %3970, float %4043)  ; FMad(a,b,c)
  %4045 = fadd fast float %4044, %4026
  %4046 = fmul fast float %3991, %3919
  %4047 = call float @dx.op.tertiary.f32(i32 46, float %3920, float %3993, float %4046)  ; FMad(a,b,c)
  %4048 = fmul fast float %3991, %3921
  %4049 = call float @dx.op.tertiary.f32(i32 46, float %3922, float %3993, float %4048)  ; FMad(a,b,c)
  %4050 = fmul fast float %3992, %3919
  %4051 = call float @dx.op.tertiary.f32(i32 46, float %3920, float %3994, float %4050)  ; FMad(a,b,c)
  %4052 = fmul fast float %3992, %3921
  %4053 = call float @dx.op.tertiary.f32(i32 46, float %3922, float %3994, float %4052)  ; FMad(a,b,c)
  %4054 = add i32 %4031, 0
  %4055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4054, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4056 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4055, %dx.types.Handle %4034, float %4042, float %4045, float undef, float undef, i32 0, i32 0, i32 undef, float %4047, float %4049, float undef, float %4051, float %4053, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = and i32 %3955, 1024
  %4059 = icmp ne i32 %4058, 0
  %4060 = fcmp fast ogt float %4057, 0x3FE0101020000000
  %4061 = uitofp i1 %4060 to float
  %4062 = select i1 %4059, float %4061, float %4057
  %4063 = and i32 %3955, 8192
  %4064 = icmp ne i32 %4063, 0
  %4065 = select i1 %4064, float %4025, float 1.000000e+00
  %4066 = fmul fast float %3963, 2.000000e+00
  %4067 = fadd fast float %4066, -1.000000e+00
  %4068 = call float @dx.op.unary.f32(i32 6, float %4067)  ; FAbs(value)
  %4069 = fmul fast float %4068, %3952
  %4070 = fsub fast float %4069, %3952
  %4071 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4072 = fmul fast float %3970, 2.000000e+00
  %4073 = fadd fast float %4072, -1.000000e+00
  %4074 = call float @dx.op.unary.f32(i32 6, float %4073)  ; FAbs(value)
  %4075 = fmul fast float %4074, %3953
  %4076 = fsub fast float %4075, %3953
  %4077 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4078 = fmul fast float %3982, %3915
  %4079 = fsub fast float %4078, %3915
  %4080 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4081 = fmul fast float %4039, %4065
  %4082 = fmul fast float %4081, %4036
  %4083 = fmul fast float %4082, %4071
  %4084 = fmul fast float %4083, %4062
  %4085 = fmul fast float %4084, %4077
  %4086 = fmul fast float %4085, %4080
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 1
  %4089 = extractvalue %dx.types.CBufRet.f32 %4087, 0
  %4090 = fsub fast float %3999, %4089
  %4091 = fmul fast float %4090, %4088
  %4092 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  %4093 = fmul fast float %4086, %3916
  %4094 = fadd fast float %4086, %3916
  %4095 = fmul fast float %4094, %3925
  %4096 = fsub fast float %4095, %3925
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4098 = and i32 %3955, 128
  %4099 = icmp ne i32 %4098, 0
  %4100 = select i1 %4099, float %4097, float %4093
  %4101 = fmul fast float %4100, %4092
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 0
  %4104 = fcmp fast ugt float %4101, %4103
  br i1 %4104, label %4105, label %4004

; <label>:4105                                    ; preds = %4024
  %4106 = select i1 %4064, float %4101, float 0.000000e+00
  %4107 = fadd fast float %4106, %3880
  %4108 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  br i1 %4064, label %4004, label %4109

; <label>:4109                                    ; preds = %4105
  %4110 = and i32 %3955, 4
  %4111 = and i32 %3955, 8
  %4112 = add i32 %3911, 0
  %4113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4112, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4115 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4113, %dx.types.Handle %4114, float %4042, float %4045, float undef, float undef, i32 0, i32 0, i32 undef, float %4047, float %4049, float undef, float %4051, float %4053, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = extractvalue %dx.types.ResRet.f32 %4115, 1
  %4118 = extractvalue %dx.types.ResRet.f32 %4115, 2
  %4119 = extractvalue %dx.types.ResRet.f32 %4115, 3
  %4120 = bitcast float %3937 to i32
  %4121 = and i32 %4120, 255
  %4122 = uitofp i32 %4121 to float
  %4123 = lshr i32 %4120, 8
  %4124 = and i32 %4123, 255
  %4125 = uitofp i32 %4124 to float
  %4126 = fmul fast float %4119, %4122
  %4127 = fadd fast float %4126, %4125
  %4128 = fmul fast float %4127, 0x3F70101000000000
  %4129 = add i32 %3912, 0
  %4130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4129, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4131 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4130, %dx.types.Handle %4114, float %4042, float %4045, float undef, float undef, i32 0, i32 0, i32 undef, float %4047, float %4049, float undef, float %4051, float %4053, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.ResRet.f32 %4131, 1
  %4134 = extractvalue %dx.types.ResRet.f32 %4131, 2
  %4135 = extractvalue %dx.types.ResRet.f32 %4131, 3
  %4136 = bitcast float %3931 to i32
  %4137 = and i32 %4136, 255
  %4138 = uitofp i32 %4137 to float
  %4139 = lshr i32 %4136, 8
  %4140 = and i32 %4139, 255
  %4141 = uitofp i32 %4140 to float
  %4142 = lshr i32 %4136, 16
  %4143 = and i32 %4142, 255
  %4144 = uitofp i32 %4143 to float
  %4145 = fmul fast float %4144, 0x3F70101000000000
  %4146 = fmul fast float %4132, %4138
  %4147 = fadd fast float %4146, %4141
  %4148 = fmul fast float %4147, 0x3F70101000000000
  %4149 = fadd fast float %4133, -5.000000e-01
  %4150 = fadd fast float %4135, -5.000000e-01
  %4151 = fmul fast float %4149, %4145
  %4152 = fmul fast float %4150, %4145
  %4153 = fadd fast float %4151, 5.000000e-01
  %4154 = fadd fast float %4152, 5.000000e-01
  %4155 = fmul fast float %4116, %3940
  %4156 = fmul fast float %4117, %3941
  %4157 = fmul fast float %4118, %3942
  %4158 = fmul fast float %4153, 2.000000e+00
  %4159 = fadd fast float %4158, -1.000000e+00
  %4160 = fmul fast float %4154, 2.000000e+00
  %4161 = fadd fast float %4160, -1.000000e+00
  %4162 = fadd fast float %4159, %4161
  %4163 = fmul fast float %4162, 5.000000e-01
  %4164 = fsub fast float %4159, %4161
  %4165 = fmul fast float %4164, 5.000000e-01
  %4166 = call float @dx.op.unary.f32(i32 6, float %4163)  ; FAbs(value)
  %4167 = fsub fast float 1.000000e+00, %4166
  %4168 = call float @dx.op.unary.f32(i32 6, float %4165)  ; FAbs(value)
  %4169 = fsub fast float %4167, %4168
  %4170 = call float @dx.op.dot3.f32(i32 55, float %4163, float %4165, float %4169, float %4163, float %4165, float %4169)  ; Dot3(ax,ay,az,bx,by,bz)
  %4171 = call float @dx.op.unary.f32(i32 25, float %4170)  ; Rsqrt(value)
  %4172 = fmul fast float %4163, %4171
  %4173 = fmul fast float %4165, %4171
  %4174 = fmul fast float %4171, %4169
  %4175 = fmul fast float %4174, %3905
  %4176 = fmul fast float %4174, %3906
  %4177 = fmul fast float %4174, %3907
  %4178 = fmul fast float %4172, %3928
  %4179 = fmul fast float %4172, %3929
  %4180 = fmul fast float %4172, %3930
  %4181 = fadd fast float %4178, %4175
  %4182 = fadd fast float %4179, %4176
  %4183 = fadd fast float %4180, %4177
  %4184 = fmul fast float %4173, %3934
  %4185 = fmul fast float %4173, %3935
  %4186 = fmul fast float %4173, %3936
  %4187 = fadd fast float %4181, %4184
  %4188 = fadd fast float %4182, %4185
  %4189 = fadd fast float %4183, %4186
  %4190 = call float @dx.op.dot3.f32(i32 55, float %4187, float %4188, float %4189, float %4187, float %4188, float %4189)  ; Dot3(ax,ay,az,bx,by,bz)
  %4191 = call float @dx.op.unary.f32(i32 25, float %4190)  ; Rsqrt(value)
  %4192 = fmul fast float %4187, %4191
  %4193 = fmul fast float %4188, %4191
  %4194 = fmul fast float %4189, %4191
  %4195 = icmp ne i32 %4111, 0
  %4196 = select i1 %4195, float 1.000000e+00, float 0.000000e+00
  %4197 = fmul fast float %4101, %4196
  %4198 = and i32 %3955, 1
  %4199 = icmp eq i32 %4198, 0
  br i1 %4199, label %4200, label %4204

; <label>:4200                                    ; preds = %4109
  %4201 = fsub fast float %4192, %3888
  %4202 = fsub fast float %4193, %3889
  %4203 = fsub fast float %4194, %3890
  br label %4204

; <label>:4204                                    ; preds = %4200, %4109
  %4205 = phi float [ %4201, %4200 ], [ %4192, %4109 ]
  %4206 = phi float [ %4202, %4200 ], [ %4193, %4109 ]
  %4207 = phi float [ %4203, %4200 ], [ %4194, %4109 ]
  %4208 = fmul float %4207, %4197
  %4209 = fmul float %4206, %4197
  %4210 = fmul float %4205, %4197
  %4211 = fadd fast float %4210, %3888
  %4212 = fadd fast float %4209, %3889
  %4213 = fadd fast float %4208, %3890
  %4214 = icmp ne i32 %4110, 0
  %4215 = select i1 %4214, float 1.000000e+00, float 0.000000e+00
  %4216 = fmul fast float %4101, %4215
  %4217 = fsub fast float %4155, %3895
  %4218 = fsub fast float %4156, %3896
  %4219 = fsub fast float %4157, %3897
  %4220 = fmul fast float %4217, %4216
  %4221 = fmul fast float %4218, %4216
  %4222 = fmul fast float %4219, %4216
  %4223 = fadd fast float %4220, %3895
  %4224 = fadd fast float %4221, %3896
  %4225 = fadd fast float %4222, %3897
  %4226 = fsub fast float %4128, %3894
  %4227 = fmul fast float %4226, %4216
  %4228 = fadd fast float %4227, %3894
  %4229 = fmul fast float %4216, %3884
  %4230 = fsub fast float %3884, %4229
  %4231 = fmul fast float %4216, %3883
  %4232 = fsub fast float %3883, %4231
  %4233 = fadd fast float %4101, %3893
  %4234 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4235 = fsub fast float %4148, %3892
  %4236 = fmul fast float %4235, %4197
  %4237 = fadd fast float %4236, %3892
  %4238 = fsub fast float %4134, %3891
  %4239 = fmul fast float %4238, %4197
  %4240 = fadd fast float %4239, %3891
  %4241 = call float @dx.op.dot3.f32(i32 55, float %4155, float %4156, float %4157, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 0
  %4244 = extractvalue %dx.types.CBufRet.f32 %4242, 1
  %4245 = fmul fast float %4244, %4241
  %4246 = fadd fast float %4245, %4243
  %4247 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4248 = bitcast float %3943 to i32
  %4249 = and i32 %4248, 65535
  %4250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4249)  ; LegacyF16ToF32(value)
  %4251 = lshr i32 %4248, 16
  %4252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4251)  ; LegacyF16ToF32(value)
  %4253 = fcmp fast oge float %4250, 0.000000e+00
  %4254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4255 = extractvalue %dx.types.CBufRet.f32 %4254, 0
  %4256 = select i1 %4253, float %4250, float %4255
  %4257 = fadd fast float %4256, %4252
  %4258 = fsub fast float %4247, %3882
  %4259 = fmul fast float %4258, %4101
  %4260 = fadd fast float %4259, %3882
  %4261 = fmul fast float %4257, %4101
  %4262 = call float @dx.op.binary.f32(i32 35, float %3881, float %4261)  ; FMax(a,b)
  %4263 = and i32 %3955, 16
  %4264 = icmp eq i32 %4263, 0
  br i1 %4264, label %4287, label %4265

; <label>:4265                                    ; preds = %4204
  %4266 = bitcast float %3949 to i32
  %4267 = add i32 %3946, 0
  %4268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4267, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4269 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4268, %dx.types.Handle %4114, float %4042, float %4045, float undef, float undef, i32 0, i32 0, i32 undef, float %4047, float %4049, float undef, float %4051, float %4053, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.ResRet.f32 %4269, 1
  %4272 = extractvalue %dx.types.ResRet.f32 %4269, 2
  %4273 = and i32 %4266, 65535
  %4274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4273)  ; LegacyF16ToF32(value)
  %4275 = fmul fast float %4270, %3940
  %4276 = fmul fast float %4271, %3941
  %4277 = fmul fast float %4272, %3942
  %4278 = and i32 %3955, 16384
  %4279 = icmp ne i32 %4278, 0
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 0
  %4282 = select i1 %4279, float %4281, float 1.000000e+00
  %4283 = fmul fast float %4282, %4274
  %4284 = fmul fast float %4275, %4283
  %4285 = fmul fast float %4276, %4283
  %4286 = fmul fast float %4277, %4283
  br label %4287

; <label>:4287                                    ; preds = %4265, %4204
  %4288 = phi float [ %4284, %4265 ], [ 0.000000e+00, %4204 ]
  %4289 = phi float [ %4285, %4265 ], [ 0.000000e+00, %4204 ]
  %4290 = phi float [ %4286, %4265 ], [ 0.000000e+00, %4204 ]
  %4291 = fsub fast float %4288, %3885
  %4292 = fsub fast float %4289, %3886
  %4293 = fsub fast float %4290, %3887
  %4294 = fmul fast float %4291, %4101
  %4295 = fmul fast float %4292, %4101
  %4296 = fmul fast float %4293, %4101
  %4297 = fadd fast float %4294, %3885
  %4298 = fadd fast float %4295, %3886
  %4299 = fadd fast float %4296, %3887
  br label %4004

; <label>:4300                                    ; preds = %4004
  br label %4301

; <label>:4301                                    ; preds = %4300, %3824
  %4302 = phi float [ 0.000000e+00, %3824 ], [ %4005, %4300 ]
  %4303 = phi float [ %3793, %3824 ], [ %4006, %4300 ]
  %4304 = phi float [ %3791, %3824 ], [ %4007, %4300 ]
  %4305 = phi float [ 0.000000e+00, %3824 ], [ %4008, %4300 ]
  %4306 = phi float [ 0.000000e+00, %3824 ], [ %4009, %4300 ]
  %4307 = phi float [ %3785, %3824 ], [ %4010, %4300 ]
  %4308 = phi float [ %3786, %3824 ], [ %4011, %4300 ]
  %4309 = phi float [ %3787, %3824 ], [ %4012, %4300 ]
  %4310 = phi float [ %3819, %3824 ], [ %4013, %4300 ]
  %4311 = phi float [ %3820, %3824 ], [ %4014, %4300 ]
  %4312 = phi float [ %3821, %3824 ], [ %4015, %4300 ]
  %4313 = phi float [ %3790, %3824 ], [ %4016, %4300 ]
  %4314 = phi float [ %3789, %3824 ], [ %4017, %4300 ]
  %4315 = phi float [ 0.000000e+00, %3824 ], [ %4018, %4300 ]
  %4316 = phi float [ %3788, %3824 ], [ %4019, %4300 ]
  %4317 = phi float [ %3782, %3824 ], [ %4020, %4300 ]
  %4318 = phi float [ %3783, %3824 ], [ %4021, %4300 ]
  %4319 = phi float [ %3784, %3824 ], [ %4022, %4300 ]
  %4320 = call float @dx.op.dot3.f32(i32 55, float %4310, float %4311, float %4312, float %4310, float %4311, float %4312)  ; Dot3(ax,ay,az,bx,by,bz)
  %4321 = call float @dx.op.unary.f32(i32 25, float %4320)  ; Rsqrt(value)
  %4322 = fmul fast float %4321, %4310
  %4323 = fmul fast float %4321, %4311
  %4324 = fmul fast float %4321, %4312
  %4325 = fadd fast float %4315, %893
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4327 = call float @dx.op.dot3.f32(i32 55, float %4322, float %4323, float %4324, float %4322, float %4323, float %4324)  ; Dot3(ax,ay,az,bx,by,bz)
  %4328 = call float @dx.op.unary.f32(i32 25, float %4327)  ; Rsqrt(value)
  %4329 = fmul fast float %4328, %4322
  %4330 = fmul fast float %4328, %4323
  %4331 = fmul fast float %4328, %4324
  br label %4332

; <label>:4332                                    ; preds = %4301, %3779
  %4333 = phi float [ %4329, %4301 ], [ %3819, %3779 ]
  %4334 = phi float [ %4330, %4301 ], [ %3820, %3779 ]
  %4335 = phi float [ %4331, %4301 ], [ %3821, %3779 ]
  %4336 = phi float [ %4317, %4301 ], [ %3782, %3779 ]
  %4337 = phi float [ %4318, %4301 ], [ %3783, %3779 ]
  %4338 = phi float [ %4319, %4301 ], [ %3784, %3779 ]
  %4339 = phi float [ %4307, %4301 ], [ %3785, %3779 ]
  %4340 = phi float [ %4308, %4301 ], [ %3786, %3779 ]
  %4341 = phi float [ %4309, %4301 ], [ %3787, %3779 ]
  %4342 = phi float [ %4316, %4301 ], [ %3788, %3779 ]
  %4343 = phi float [ %4326, %4301 ], [ %893, %3779 ]
  %4344 = phi float [ %4314, %4301 ], [ %3789, %3779 ]
  %4345 = phi float [ %4313, %4301 ], [ %3790, %3779 ]
  %4346 = phi float [ %4306, %4301 ], [ 0.000000e+00, %3779 ]
  %4347 = phi float [ %4305, %4301 ], [ 0.000000e+00, %3779 ]
  %4348 = phi float [ %4302, %4301 ], [ 0.000000e+00, %3779 ]
  %4349 = phi float [ %4303, %4301 ], [ %3793, %3779 ]
  %4350 = phi float [ %4304, %4301 ], [ %3791, %3779 ]
  %4351 = fadd fast float %4342, 0xBFB99999A0000000
  %4352 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4353 = fmul fast float %4352, 0x3FF1C71C80000000
  %4354 = call float @dx.op.binary.f32(i32 36, float %4342, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4355 = fsub fast float 1.000000e+00, %4353
  %4356 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4357 = fmul fast float %4356, %4336
  %4358 = fmul fast float %4356, %4337
  %4359 = fmul fast float %4356, %4338
  %4360 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4362 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4363 = fmul fast float %4353, %4336
  %4364 = fmul fast float %4353, %4337
  %4365 = fmul fast float %4353, %4338
  %4366 = fadd fast float %4363, %4354
  %4367 = fadd fast float %4364, %4354
  %4368 = fadd fast float %4365, %4354
  %4369 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4370 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4371 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4372 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.i32 %4373, 3
  %4375 = and i32 %4374, 8
  %4376 = icmp ne i32 %4375, 0
  %4377 = call float @dx.op.binary.f32(i32 35, float %4360, float %4336)  ; FMax(a,b)
  %4378 = call float @dx.op.binary.f32(i32 35, float %4361, float %4336)  ; FMax(a,b)
  %4379 = call float @dx.op.binary.f32(i32 35, float %4362, float %4336)  ; FMax(a,b)
  %4380 = call float @dx.op.dot3.f32(i32 55, float %4360, float %4361, float %4362, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4381 = select i1 %174, float %4336, float %4360
  %4382 = select i1 %174, float %4380, float %4361
  %4383 = select i1 %174, float 1.000000e+00, float %4362
  %4384 = select i1 %4376, float %4377, float %4381
  %4385 = select i1 %4376, float %4378, float %4382
  %4386 = select i1 %4376, float %4379, float %4383
  %4387 = and i32 %150, 3
  %4388 = select i1 %144, i32 %4387, i32 0
  %4389 = icmp eq i32 %4388, 1
  br i1 %4389, label %4390, label %4466

; <label>:4390                                    ; preds = %4332
  %4391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4391, 0
  %4393 = extractvalue %dx.types.CBufRet.f32 %4391, 1
  %4394 = fadd fast float %4392, %133
  %4395 = fadd fast float %4393, %134
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.CBufRet.f32 %4396, 1
  %4399 = fsub fast float %4394, %4397
  %4400 = fsub fast float %4395, %4398
  %4401 = fmul fast float %4399, %4399
  %4402 = fmul fast float %4400, %4400
  %4403 = fadd fast float %4401, %4402
  %4404 = call float @dx.op.unary.f32(i32 24, float %4403)  ; Sqrt(value)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4396, 2
  %4406 = fcmp fast olt float %4404, %4405
  br i1 %4406, label %4407, label %4460

; <label>:4407                                    ; preds = %4390
  %4408 = extractvalue %dx.types.CBufRet.f32 %4391, 2
  %4409 = fadd fast float %4408, %135
  %4410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.f32 %4410, 0
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 0
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.CBufRet.f32 %4410, 1
  %4417 = extractvalue %dx.types.CBufRet.f32 %4412, 1
  %4418 = extractvalue %dx.types.CBufRet.f32 %4414, 1
  %4419 = extractvalue %dx.types.CBufRet.f32 %4410, 3
  %4420 = extractvalue %dx.types.CBufRet.f32 %4412, 3
  %4421 = extractvalue %dx.types.CBufRet.f32 %4414, 3
  %4422 = fadd fast float %4419, %4394
  %4423 = fadd fast float %4420, %4395
  %4424 = fadd fast float %4409, %4421
  %4425 = fmul fast float %4422, %4411
  %4426 = call float @dx.op.tertiary.f32(i32 46, float %4423, float %4413, float %4425)  ; FMad(a,b,c)
  %4427 = call float @dx.op.tertiary.f32(i32 46, float %4424, float %4415, float %4426)  ; FMad(a,b,c)
  %4428 = fmul fast float %4422, %4416
  %4429 = call float @dx.op.tertiary.f32(i32 46, float %4423, float %4417, float %4428)  ; FMad(a,b,c)
  %4430 = call float @dx.op.tertiary.f32(i32 46, float %4424, float %4418, float %4429)  ; FMad(a,b,c)
  %4431 = fsub fast float %4427, %4419
  %4432 = fsub fast float %4430, %4420
  %4433 = fsub fast float %4431, %4397
  %4434 = fadd fast float %4433, %4405
  %4435 = fsub fast float %4432, %4398
  %4436 = fadd fast float %4435, %4405
  %4437 = extractvalue %dx.types.CBufRet.f32 %4396, 3
  %4438 = fmul fast float %4434, %4437
  %4439 = fmul fast float %4436, %4437
  %4440 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4441 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4442 = fsub fast float 1.000000e+00, %4440
  %4443 = fsub fast float 1.000000e+00, %4441
  %4444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %28, float %4442, float %4443, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4445 = extractvalue %dx.types.ResRet.f32 %4444, 0
  %4446 = fcmp fast ugt float %4445, 0.000000e+00
  br i1 %4446, label %4447, label %4460

; <label>:4447                                    ; preds = %4407
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 2
  %4450 = fmul fast float %4449, %4445
  %4451 = extractvalue %dx.types.CBufRet.f32 %4448, 3
  %4452 = fadd fast float %4451, %4450
  %4453 = extractvalue %dx.types.CBufRet.f32 %4414, 2
  %4454 = fadd fast float %4452, %4421
  %4455 = fmul fast float %4427, %4415
  %4456 = call float @dx.op.tertiary.f32(i32 46, float %4430, float %4418, float %4455)  ; FMad(a,b,c)
  %4457 = call float @dx.op.tertiary.f32(i32 46, float %4454, float %4453, float %4456)  ; FMad(a,b,c)
  %4458 = fsub fast float %4457, %4421
  %4459 = fsub fast float %4458, %4408
  br label %4460

; <label>:4460                                    ; preds = %4447, %4407, %4390
  %4461 = phi i1 [ true, %4447 ], [ false, %4407 ], [ false, %4390 ]
  %4462 = phi float [ %4459, %4447 ], [ -1.310720e+05, %4407 ], [ -1.310720e+05, %4390 ]
  %4463 = fsub fast float %4462, %135
  %4464 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4465 = select i1 %4461, float %4464, float 1.000000e+00
  br label %4466

; <label>:4466                                    ; preds = %4460, %4332
  %4467 = phi float [ %4465, %4460 ], [ 0.000000e+00, %4332 ]
  %4468 = icmp eq i32 %4388, 3
  %4469 = select i1 %4468, float 1.000000e+00, float %4467
  %4470 = call float @dx.op.binary.f32(i32 35, float %4348, float %4469)  ; FMax(a,b)
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = fcmp fast une float %4471, 0.000000e+00
  %4473 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %4474 = call float @dx.op.unary.f32(i32 25, float %4473)  ; Rsqrt(value)
  br i1 %4472, label %4482, label %4475

; <label>:4475                                    ; preds = %4466
  %4476 = fmul fast float %4474, %133
  %4477 = fmul fast float %4474, %134
  %4478 = fmul fast float %4474, %135
  %4479 = fsub fast float -0.000000e+00, %4476
  %4480 = fsub fast float -0.000000e+00, %4477
  %4481 = fsub fast float -0.000000e+00, %4478
  br label %4650

; <label>:4482                                    ; preds = %4466
  %4483 = fmul fast float %133, %4474
  %4484 = fsub fast float -0.000000e+00, %4483
  %4485 = fmul fast float %134, %4474
  %4486 = fsub fast float -0.000000e+00, %4485
  %4487 = fmul fast float %135, %4474
  %4488 = fsub fast float -0.000000e+00, %4487
  %4489 = call float @dx.op.dot3.f32(i32 55, float %4484, float %4486, float %4488, float %83, float %85, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4490 = fmul fast float %4471, 2.500000e+00
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = fmul fast float %4471, 0x4013FFFFE0000000
  %4493 = fadd fast float %4492, 0xBFFFFFFFE0000000
  %4494 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4495 = fmul fast float %4471, 0x4004000020000000
  %4496 = fadd fast float %4495, 0xBFF8000040000000
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4499 = fmul fast float %4351, 1.000000e+01
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = fmul fast float %4500, 2.000000e+00
  %4502 = fsub fast float 3.000000e+00, %4501
  %4503 = fmul fast float %4500, %4500
  %4504 = fmul fast float %4503, %4502
  %4505 = fsub fast float 1.000000e+00, %4504
  %4506 = fsub fast float 0x3FE3333340000000, %4372
  %4507 = fmul fast float %4506, 0x400AAAAAA0000000
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = fmul fast float %4505, %4508
  %4510 = fmul fast float %4384, 0x3FEA2B8620000000
  %4511 = fmul fast float %4385, 0x3FEA2B8620000000
  %4512 = fmul fast float %4386, 0x3FEA2B8620000000
  %4513 = fadd fast float %4510, 0x3FC81DFBA0000000
  %4514 = fmul fast float %4513, %4384
  %4515 = fadd fast float %4514, 0x3F910E6020000000
  %4516 = fadd fast float %4511, 0x3FC81DFBA0000000
  %4517 = fmul fast float %4516, %4385
  %4518 = fadd fast float %4517, 0x3F910E6020000000
  %4519 = fadd fast float %4512, 0x3FC81DFBA0000000
  %4520 = fmul fast float %4519, %4386
  %4521 = fadd fast float %4520, 0x3F910E6020000000
  %4522 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4523 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4524 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4525 = fsub fast float %4522, %4384
  %4526 = fsub fast float %4523, %4385
  %4527 = fsub fast float %4524, %4386
  %4528 = fmul fast float %4525, %4498
  %4529 = fmul fast float %4528, %4509
  %4530 = fmul fast float %4526, %4498
  %4531 = fmul fast float %4530, %4509
  %4532 = fmul fast float %4527, %4498
  %4533 = fmul fast float %4532, %4509
  %4534 = fadd fast float %4529, %4384
  %4535 = fadd fast float %4531, %4385
  %4536 = fadd fast float %4533, %4386
  %4537 = fmul fast float %4345, %4345
  %4538 = fmul fast float %4537, %4537
  %4539 = fadd fast float %4494, 1.000000e+00
  %4540 = fsub fast float %4539, %4509
  %4541 = call float @dx.op.unary.f32(i32 7, float %4540)  ; Saturate(value)
  %4542 = call float @dx.op.dot3.f32(i32 55, float %83, float %85, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4543 = call float @dx.op.unary.f32(i32 7, float %4542)  ; Saturate(value)
  %4544 = fsub fast float 1.000000e+00, %4538
  %4545 = call float @dx.op.binary.f32(i32 36, float %4541, float %4544)  ; FMin(a,b)
  %4546 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4547 = call float @dx.op.binary.f32(i32 35, float %4545, float %4546)  ; FMax(a,b)
  %4548 = fadd fast float %4543, 0xBFE4CCCCC0000000
  %4549 = fmul fast float %4548, 0x4006DB6DA0000000
  %4550 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4551 = fmul fast float %4550, 2.000000e+00
  %4552 = fsub fast float 3.000000e+00, %4551
  %4553 = bitcast float %4369 to i32
  %4554 = ashr i32 %4553, 1
  %4555 = add nsw i32 %4554, 532487669
  %4556 = bitcast i32 %4555 to float
  %4557 = fsub fast float 1.000000e+00, %4556
  %4558 = bitcast float %4557 to i32
  %4559 = sub nsw i32 2129859010, %4558
  %4560 = bitcast i32 %4559 to float
  %4561 = fmul fast float %4560, 2.000000e+00
  %4562 = bitcast float %4370 to i32
  %4563 = ashr i32 %4562, 1
  %4564 = add nsw i32 %4563, 532487669
  %4565 = bitcast i32 %4564 to float
  %4566 = fsub fast float 1.000000e+00, %4565
  %4567 = bitcast float %4566 to i32
  %4568 = sub nsw i32 2129859010, %4567
  %4569 = bitcast i32 %4568 to float
  %4570 = fmul fast float %4569, 2.000000e+00
  %4571 = bitcast float %4371 to i32
  %4572 = ashr i32 %4571, 1
  %4573 = add nsw i32 %4572, 532487669
  %4574 = bitcast i32 %4573 to float
  %4575 = fsub fast float 1.000000e+00, %4574
  %4576 = bitcast float %4575 to i32
  %4577 = sub nsw i32 2129859010, %4576
  %4578 = bitcast i32 %4577 to float
  %4579 = fmul fast float %4578, 2.000000e+00
  %4580 = fsub fast float 0x4002A9FBE0000000, %4561
  %4581 = fadd fast float %4561, 0x3FD54FDF00000000
  %4582 = bitcast float %4581 to i32
  %4583 = sub nsw i32 2129859010, %4582
  %4584 = bitcast i32 %4583 to float
  %4585 = fmul fast float %4584, %4580
  %4586 = fmul fast float %4585, %4585
  %4587 = fsub fast float 0x4002A9FBE0000000, %4570
  %4588 = fadd fast float %4570, 0x3FD54FDF00000000
  %4589 = bitcast float %4588 to i32
  %4590 = sub nsw i32 2129859010, %4589
  %4591 = bitcast i32 %4590 to float
  %4592 = fmul fast float %4591, %4587
  %4593 = fmul fast float %4592, %4592
  %4594 = fsub fast float 0x4002A9FBE0000000, %4579
  %4595 = fadd fast float %4579, 0x3FD54FDF00000000
  %4596 = bitcast float %4595 to i32
  %4597 = sub nsw i32 2129859010, %4596
  %4598 = bitcast i32 %4597 to float
  %4599 = fmul fast float %4598, %4594
  %4600 = fmul fast float %4599, %4599
  %4601 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4586)  ; FMax(a,b)
  %4602 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4593)  ; FMax(a,b)
  %4603 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4600)  ; FMax(a,b)
  %4604 = fsub fast float 1.000000e+00, %4489
  %4605 = fadd fast float %4604, %4505
  %4606 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4607 = fsub fast float 1.000000e+00, %4469
  %4608 = fmul fast float %4547, %4607
  %4609 = fmul fast float %4550, %4550
  %4610 = fmul fast float %4609, %4608
  %4611 = fmul fast float %4610, %4552
  %4612 = fmul fast float %4607, 0xBFE99999A0000000
  %4613 = fmul fast float %4612, %4498
  %4614 = fmul fast float %4613, %4509
  %4615 = fadd fast float %4614, 1.000000e+00
  %4616 = fadd fast float %4372, -1.000000e+00
  %4617 = fmul fast float %4615, %4616
  %4618 = fadd fast float %4617, 1.000000e+00
  %4619 = fsub fast float %4601, %4369
  %4620 = fsub fast float %4602, %4370
  %4621 = fsub fast float %4603, %4371
  %4622 = fmul fast float %4611, %4619
  %4623 = fmul fast float %4611, %4620
  %4624 = fmul fast float %4611, %4621
  %4625 = fadd fast float %4622, %4369
  %4626 = fadd fast float %4623, %4370
  %4627 = fadd fast float %4624, %4371
  %4628 = fsub fast float %83, %4333
  %4629 = fsub fast float %85, %4334
  %4630 = fsub fast float %87, %4335
  %4631 = fmul fast float %4611, %4628
  %4632 = fmul fast float %4611, %4629
  %4633 = fmul fast float %4611, %4630
  %4634 = fadd fast float %4631, %4333
  %4635 = fadd fast float %4632, %4334
  %4636 = fadd fast float %4633, %4335
  %4637 = fmul fast float %4611, %4606
  %4638 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4639 = fsub fast float 1.000000e+00, %4638
  %4640 = fmul fast float %4637, %4639
  %4641 = fadd fast float %4640, %4638
  %4642 = fsub fast float 1.000000e+00, %4345
  %4643 = fmul fast float %4611, %4642
  %4644 = fadd fast float %4643, %4345
  %4645 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4636, float %4634, float %4635, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %4646 = call float @dx.op.unary.f32(i32 25, float %4645)  ; Rsqrt(value)
  %4647 = fmul fast float %4634, %4646
  %4648 = fmul fast float %4635, %4646
  %4649 = fmul fast float %4636, %4646
  br label %4650

; <label>:4650                                    ; preds = %4482, %4475
  %4651 = phi float [ %4481, %4475 ], [ %4488, %4482 ]
  %4652 = phi float [ %4480, %4475 ], [ %4486, %4482 ]
  %4653 = phi float [ %4479, %4475 ], [ %4484, %4482 ]
  %4654 = phi float [ %4478, %4475 ], [ %4487, %4482 ]
  %4655 = phi float [ %4477, %4475 ], [ %4485, %4482 ]
  %4656 = phi float [ %4476, %4475 ], [ %4483, %4482 ]
  %4657 = phi float [ %4369, %4475 ], [ %4625, %4482 ]
  %4658 = phi float [ %4370, %4475 ], [ %4626, %4482 ]
  %4659 = phi float [ %4371, %4475 ], [ %4627, %4482 ]
  %4660 = phi float [ %4384, %4475 ], [ %4534, %4482 ]
  %4661 = phi float [ %4385, %4475 ], [ %4535, %4482 ]
  %4662 = phi float [ %4386, %4475 ], [ %4536, %4482 ]
  %4663 = phi float [ %4333, %4475 ], [ %4647, %4482 ]
  %4664 = phi float [ %4334, %4475 ], [ %4648, %4482 ]
  %4665 = phi float [ %4335, %4475 ], [ %4649, %4482 ]
  %4666 = phi float [ %4372, %4475 ], [ %4641, %4482 ]
  %4667 = phi float [ %4345, %4475 ], [ %4644, %4482 ]
  %4668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.f32 %4668, 2
  %4670 = extractvalue %dx.types.CBufRet.f32 %4668, 3
  %4671 = fmul fast float %4669, %74
  %4672 = fmul fast float %4670, %75
  %4673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.f32 %4673, 0
  %4675 = extractvalue %dx.types.CBufRet.f32 %4673, 1
  %4676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %28, float %4671, float %4672, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = fmul fast float %4677, %4675
  %4679 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4680 = fadd fast float %4679, -1.000000e+00
  %4681 = fmul fast float %4680, %4674
  %4682 = fadd fast float %4681, 1.000000e+00
  %4683 = select i1 %174, float 0.000000e+00, float %4659
  %4684 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %4665, float %4653, float %4652, float %4651)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4656, float %4655, float %4654, float %4663, float %4664, float %4665)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = fmul fast float %4686, 2.000000e+00
  %4688 = fmul fast float %4687, %4663
  %4689 = fmul fast float %4687, %4664
  %4690 = fmul fast float %4687, %4665
  %4691 = fsub fast float %4656, %4688
  %4692 = fsub fast float %4655, %4689
  %4693 = fsub fast float %4654, %4690
  %4694 = call float @dx.op.binary.f32(i32 36, float %4667, float %4682)  ; FMin(a,b)
  %4695 = fsub fast float 1.000000e+00, %4694
  %4696 = bitcast float %4695 to i32
  %4697 = ashr i32 %4696, 1
  %4698 = add nsw i32 %4697, 532487669
  %4699 = bitcast i32 %4698 to float
  %4700 = fsub fast float 1.000000e+00, %4666
  %4701 = call float @dx.op.binary.f32(i32 35, float %4700, float 0x3F847AE140000000)  ; FMax(a,b)
  %4702 = fmul fast float %4701, %4701
  %4703 = fmul fast float %4702, %4702
  %4704 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %4699, float %4703, float %4704, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 0
  %4707 = fsub fast float 1.000000e+00, %4667
  %4708 = bitcast float %4707 to i32
  %4709 = sub nsw i32 2129859010, %4708
  %4710 = call float @dx.op.dot3.f32(i32 55, float %51, float %47, float %43, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4711 = fmul fast float %4710, 0x3FD20DD760000000
  %4712 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %51)  ; FMax(a,b)
  %4713 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4714 = fcmp fast oeq float %4713, 0.000000e+00
  %4715 = fcmp fast oeq float %4712, 0.000000e+00
  %4716 = or i1 %4715, %4714
  br i1 %4716, label %4746, label %4717

; <label>:4717                                    ; preds = %4650
  %4718 = fsub fast float -0.000000e+00, %54
  %4719 = fsub fast float -0.000000e+00, %52
  %4720 = call float @dx.op.unary.f32(i32 24, float %4713)  ; Sqrt(value)
  %4721 = fdiv fast float %4720, %4712
  %4722 = fcmp fast ogt float %4721, 0x3FFB6F8900000000
  %4723 = select i1 %4722, float 0x3FFB6F8900000000, float %4721
  %4724 = fmul fast float %4723, 0x3FE8A23460000000
  %4725 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4726 = call float @dx.op.binary.f32(i32 35, float %4723, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4727 = fmul fast float %4725, %4712
  %4728 = fmul fast float %4726, 0x3FF279A740000000
  %4729 = fadd fast float %4728, -1.000000e+00
  %4730 = call float @dx.op.dot3.f32(i32 55, float %4718, float %4719, float %53, float %4718, float %4719, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %4731 = call float @dx.op.unary.f32(i32 25, float %4730)  ; Rsqrt(value)
  %4732 = fmul fast float %4731, %4718
  %4733 = fmul fast float %4731, %4719
  %4734 = fmul fast float %4731, %53
  %4735 = fmul fast float %4729, %4729
  %4736 = fsub fast float 1.000000e+00, %4735
  %4737 = fmul fast float %4726, 0x40005F8BE0000000
  %4738 = fsub fast float 0x400C5BF8A0000000, %4737
  %4739 = fdiv fast float %4727, %4738
  %4740 = fmul fast float %4739, 0x3FEE31C3C0000000
  %4741 = fmul fast float %4740, %4736
  %4742 = fmul fast float %4726, 0x3FDACB7480000000
  %4743 = fadd fast float %4742, 0xBFD7347680000000
  %4744 = fmul fast float %4743, %4739
  %4745 = fmul fast float %4744, %4736
  br label %4746

; <label>:4746                                    ; preds = %4717, %4650
  %4747 = phi float [ %4732, %4717 ], [ 0.000000e+00, %4650 ]
  %4748 = phi float [ %4733, %4717 ], [ 0.000000e+00, %4650 ]
  %4749 = phi float [ %4734, %4717 ], [ 0.000000e+00, %4650 ]
  %4750 = phi float [ %4741, %4717 ], [ 0.000000e+00, %4650 ]
  %4751 = phi float [ %4745, %4717 ], [ 0.000000e+00, %4650 ]
  %4752 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4748, float %4749, float %4663, float %4664, float %4665)  ; Dot3(ax,ay,az,bx,by,bz)
  %4753 = fmul fast float %4752, %4752
  %4754 = fmul fast float %4753, 0x3FEE471020000000
  %4755 = fadd fast float %4754, 0xBFD42F6020000000
  %4756 = fmul fast float %4712, 0x3FD20DD760000000
  %4757 = fmul fast float %4755, %4751
  %4758 = fmul fast float %4750, 0x3FDF454380000000
  %4759 = fmul fast float %4758, %4752
  %4760 = fadd fast float %4759, %4756
  %4761 = fadd fast float %4760, %4757
  %4762 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4748, float %4749, float %4691, float %4692, float %4693)  ; Dot3(ax,ay,az,bx,by,bz)
  %4763 = fmul fast float %4762, 0x3FDF454380000000
  %4764 = fmul fast float %4762, %4762
  %4765 = fmul fast float %4764, 0x3FEE471020000000
  %4766 = fadd fast float %4765, 0xBFD42F6020000000
  %4767 = call float @dx.op.dot3.f32(i32 55, float %4712, float %4750, float %4751, float 0x3FD20DD760000000, float %4763, float %4766)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %47)  ; FMax(a,b)
  %4769 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4770 = fcmp fast oeq float %4769, 0.000000e+00
  %4771 = fcmp fast oeq float %4768, 0.000000e+00
  %4772 = or i1 %4771, %4770
  br i1 %4772, label %4802, label %4773

; <label>:4773                                    ; preds = %4746
  %4774 = fsub fast float -0.000000e+00, %50
  %4775 = fsub fast float -0.000000e+00, %48
  %4776 = call float @dx.op.unary.f32(i32 24, float %4769)  ; Sqrt(value)
  %4777 = fdiv fast float %4776, %4768
  %4778 = fcmp fast ogt float %4777, 0x3FFB6F8900000000
  %4779 = select i1 %4778, float 0x3FFB6F8900000000, float %4777
  %4780 = fmul fast float %4779, 0x3FE8A23460000000
  %4781 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4782 = call float @dx.op.binary.f32(i32 35, float %4779, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4783 = fmul fast float %4781, %4768
  %4784 = fmul fast float %4782, 0x3FF279A740000000
  %4785 = fadd fast float %4784, -1.000000e+00
  %4786 = call float @dx.op.dot3.f32(i32 55, float %4774, float %4775, float %49, float %4774, float %4775, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = call float @dx.op.unary.f32(i32 25, float %4786)  ; Rsqrt(value)
  %4788 = fmul fast float %4787, %4774
  %4789 = fmul fast float %4787, %4775
  %4790 = fmul fast float %4787, %49
  %4791 = fmul fast float %4785, %4785
  %4792 = fsub fast float 1.000000e+00, %4791
  %4793 = fmul fast float %4782, 0x40005F8BE0000000
  %4794 = fsub fast float 0x400C5BF8A0000000, %4793
  %4795 = fdiv fast float %4783, %4794
  %4796 = fmul fast float %4795, 0x3FEE31C3C0000000
  %4797 = fmul fast float %4796, %4792
  %4798 = fmul fast float %4782, 0x3FDACB7480000000
  %4799 = fadd fast float %4798, 0xBFD7347680000000
  %4800 = fmul fast float %4799, %4795
  %4801 = fmul fast float %4800, %4792
  br label %4802

; <label>:4802                                    ; preds = %4773, %4746
  %4803 = phi float [ %4788, %4773 ], [ 0.000000e+00, %4746 ]
  %4804 = phi float [ %4789, %4773 ], [ 0.000000e+00, %4746 ]
  %4805 = phi float [ %4790, %4773 ], [ 0.000000e+00, %4746 ]
  %4806 = phi float [ %4797, %4773 ], [ 0.000000e+00, %4746 ]
  %4807 = phi float [ %4801, %4773 ], [ 0.000000e+00, %4746 ]
  %4808 = call float @dx.op.dot3.f32(i32 55, float %4803, float %4804, float %4805, float %4663, float %4664, float %4665)  ; Dot3(ax,ay,az,bx,by,bz)
  %4809 = fmul fast float %4808, %4808
  %4810 = fmul fast float %4809, 0x3FEE471020000000
  %4811 = fadd fast float %4810, 0xBFD42F6020000000
  %4812 = fmul fast float %4768, 0x3FD20DD760000000
  %4813 = fmul fast float %4811, %4807
  %4814 = fmul fast float %4806, 0x3FDF454380000000
  %4815 = fmul fast float %4814, %4808
  %4816 = fadd fast float %4815, %4812
  %4817 = fadd fast float %4816, %4813
  %4818 = call float @dx.op.dot3.f32(i32 55, float %4803, float %4804, float %4805, float %4691, float %4692, float %4693)  ; Dot3(ax,ay,az,bx,by,bz)
  %4819 = fmul fast float %4818, 0x3FDF454380000000
  %4820 = fmul fast float %4818, %4818
  %4821 = fmul fast float %4820, 0x3FEE471020000000
  %4822 = fadd fast float %4821, 0xBFD42F6020000000
  %4823 = call float @dx.op.dot3.f32(i32 55, float %4768, float %4806, float %4807, float 0x3FD20DD760000000, float %4819, float %4822)  ; Dot3(ax,ay,az,bx,by,bz)
  %4824 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %43)  ; FMax(a,b)
  %4825 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4826 = fcmp fast oeq float %4825, 0.000000e+00
  %4827 = fcmp fast oeq float %4824, 0.000000e+00
  %4828 = or i1 %4827, %4826
  br i1 %4828, label %4858, label %4829

; <label>:4829                                    ; preds = %4802
  %4830 = fsub fast float -0.000000e+00, %46
  %4831 = fsub fast float -0.000000e+00, %44
  %4832 = call float @dx.op.unary.f32(i32 24, float %4825)  ; Sqrt(value)
  %4833 = fdiv fast float %4832, %4824
  %4834 = fcmp fast ogt float %4833, 0x3FFB6F8900000000
  %4835 = select i1 %4834, float 0x3FFB6F8900000000, float %4833
  %4836 = fmul fast float %4835, 0x3FE8A23460000000
  %4837 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  %4838 = call float @dx.op.binary.f32(i32 35, float %4835, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4839 = fmul fast float %4837, %4824
  %4840 = fmul fast float %4838, 0x3FF279A740000000
  %4841 = fadd fast float %4840, -1.000000e+00
  %4842 = call float @dx.op.dot3.f32(i32 55, float %4830, float %4831, float %45, float %4830, float %4831, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = call float @dx.op.unary.f32(i32 25, float %4842)  ; Rsqrt(value)
  %4844 = fmul fast float %4843, %4830
  %4845 = fmul fast float %4843, %4831
  %4846 = fmul fast float %4843, %45
  %4847 = fmul fast float %4841, %4841
  %4848 = fsub fast float 1.000000e+00, %4847
  %4849 = fmul fast float %4838, 0x40005F8BE0000000
  %4850 = fsub fast float 0x400C5BF8A0000000, %4849
  %4851 = fdiv fast float %4839, %4850
  %4852 = fmul fast float %4851, 0x3FEE31C3C0000000
  %4853 = fmul fast float %4852, %4848
  %4854 = fmul fast float %4838, 0x3FDACB7480000000
  %4855 = fadd fast float %4854, 0xBFD7347680000000
  %4856 = fmul fast float %4855, %4851
  %4857 = fmul fast float %4856, %4848
  br label %4858

; <label>:4858                                    ; preds = %4829, %4802
  %4859 = phi float [ %4844, %4829 ], [ 0.000000e+00, %4802 ]
  %4860 = phi float [ %4845, %4829 ], [ 0.000000e+00, %4802 ]
  %4861 = phi float [ %4846, %4829 ], [ 0.000000e+00, %4802 ]
  %4862 = phi float [ %4853, %4829 ], [ 0.000000e+00, %4802 ]
  %4863 = phi float [ %4857, %4829 ], [ 0.000000e+00, %4802 ]
  %4864 = call float @dx.op.dot3.f32(i32 55, float %4859, float %4860, float %4861, float %4663, float %4664, float %4665)  ; Dot3(ax,ay,az,bx,by,bz)
  %4865 = fmul fast float %4864, %4864
  %4866 = fmul fast float %4865, 0x3FEE471020000000
  %4867 = fadd fast float %4866, 0xBFD42F6020000000
  %4868 = fmul fast float %4824, 0x3FD20DD760000000
  %4869 = fmul fast float %4867, %4863
  %4870 = fmul fast float %4862, 0x3FDF454380000000
  %4871 = fmul fast float %4870, %4864
  %4872 = fadd fast float %4871, %4868
  %4873 = fadd fast float %4872, %4869
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4859, float %4860, float %4861, float %4691, float %4692, float %4693)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = fmul fast float %4874, 0x3FDF454380000000
  %4876 = fmul fast float %4874, %4874
  %4877 = fmul fast float %4876, 0x3FEE471020000000
  %4878 = fadd fast float %4877, 0xBFD42F6020000000
  %4879 = call float @dx.op.dot3.f32(i32 55, float %4824, float %4862, float %4863, float 0x3FD20DD760000000, float %4875, float %4878)  ; Dot3(ax,ay,az,bx,by,bz)
  %4880 = call float @dx.op.binary.f32(i32 35, float %4761, float 0.000000e+00)  ; FMax(a,b)
  %4881 = call float @dx.op.binary.f32(i32 35, float %4817, float 0.000000e+00)  ; FMax(a,b)
  %4882 = call float @dx.op.binary.f32(i32 35, float %4873, float 0.000000e+00)  ; FMax(a,b)
  %4883 = call float @dx.op.binary.f32(i32 35, float %4767, float 0.000000e+00)  ; FMax(a,b)
  %4884 = call float @dx.op.binary.f32(i32 35, float %4823, float 0.000000e+00)  ; FMax(a,b)
  %4885 = call float @dx.op.binary.f32(i32 35, float %4879, float 0.000000e+00)  ; FMax(a,b)
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 0
  %4888 = call float @dx.op.binary.f32(i32 36, float %4660, float %4887)  ; FMin(a,b)
  %4889 = fmul fast float %4888, %4695
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = bitcast float %4890 to i32
  %4892 = sub nsw i32 2129859010, %4891
  %4893 = bitcast i32 %4892 to float
  %4894 = call float @dx.op.binary.f32(i32 36, float %4661, float %4887)  ; FMin(a,b)
  %4895 = fmul fast float %4894, %4695
  %4896 = fsub fast float 1.000000e+00, %4895
  %4897 = bitcast float %4896 to i32
  %4898 = sub nsw i32 2129859010, %4897
  %4899 = bitcast i32 %4898 to float
  %4900 = call float @dx.op.binary.f32(i32 36, float %4662, float %4887)  ; FMin(a,b)
  %4901 = fmul fast float %4900, %4695
  %4902 = fsub fast float 1.000000e+00, %4901
  %4903 = bitcast float %4902 to i32
  %4904 = sub nsw i32 2129859010, %4903
  %4905 = bitcast i32 %4904 to float
  %4906 = fmul fast float %4880, %4694
  %4907 = fmul fast float %4906, %4893
  %4908 = fmul fast float %4881, %4694
  %4909 = fmul fast float %4908, %4899
  %4910 = fmul fast float %4882, %4694
  %4911 = fmul fast float %4910, %4905
  %4912 = call float @dx.op.binary.f32(i32 36, float %4657, float %4887)  ; FMin(a,b)
  %4913 = fmul fast float %4912, %4695
  %4914 = fsub fast float 1.000000e+00, %4913
  %4915 = bitcast float %4914 to i32
  %4916 = sub nsw i32 2129859010, %4915
  %4917 = bitcast i32 %4916 to float
  %4918 = call float @dx.op.binary.f32(i32 36, float %4658, float %4887)  ; FMin(a,b)
  %4919 = fmul fast float %4918, %4695
  %4920 = fsub fast float 1.000000e+00, %4919
  %4921 = bitcast float %4920 to i32
  %4922 = sub nsw i32 2129859010, %4921
  %4923 = bitcast i32 %4922 to float
  %4924 = call float @dx.op.binary.f32(i32 36, float %4683, float %4887)  ; FMin(a,b)
  %4925 = fmul fast float %4924, %4695
  %4926 = fsub fast float 1.000000e+00, %4925
  %4927 = bitcast float %4926 to i32
  %4928 = sub nsw i32 2129859010, %4927
  %4929 = bitcast i32 %4928 to float
  %4930 = fmul fast float %4883, %4694
  %4931 = fmul fast float %4930, %4917
  %4932 = fmul fast float %4884, %4694
  %4933 = fmul fast float %4932, %4923
  %4934 = fmul fast float %4885, %4694
  %4935 = fmul fast float %4934, %4929
  %4936 = call float @dx.op.dot3.f32(i32 55, float %4907, float %4909, float %4911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4937 = select i1 %174, float 0.000000e+00, float %4907
  %4938 = select i1 %174, float %4936, float %4909
  %4939 = select i1 %174, float 0.000000e+00, float %4911
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4931, float %4933, float %4935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = select i1 %174, float 0.000000e+00, float %4931
  %4942 = select i1 %174, float %4940, float %4933
  %4943 = select i1 %174, float 0.000000e+00, float %4935
  %4944 = fmul fast float %4685, 9.843750e-01
  %4945 = fmul fast float %4666, 9.843750e-01
  %4946 = fadd fast float %4944, 7.812500e-03
  %4947 = fadd fast float %4945, 7.812500e-03
  %4948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %4946, float %4947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4949 = extractvalue %dx.types.ResRet.f32 %4948, 2
  %4950 = extractvalue %dx.types.ResRet.f32 %4948, 3
  %4951 = fmul fast float %4949, %4657
  %4952 = fmul fast float %4949, %4658
  %4953 = fmul fast float %4949, %4683
  %4954 = fadd fast float %4951, %4950
  %4955 = fadd fast float %4952, %4950
  %4956 = fadd fast float %4953, %4950
  %4957 = fcmp fast ogt float %4346, 0.000000e+00
  br i1 %4957, label %4958, label %4984

; <label>:4958                                    ; preds = %4858
  %4959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4346, float %4685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4960 = extractvalue %dx.types.ResRet.f32 %4959, 0
  %4961 = extractvalue %dx.types.ResRet.f32 %4959, 1
  %4962 = extractvalue %dx.types.ResRet.f32 %4959, 2
  %4963 = fadd fast float %4960, -5.000000e-01
  %4964 = fadd fast float %4961, -5.000000e-01
  %4965 = fadd fast float %4962, -5.000000e-01
  %4966 = fsub fast float 1.000000e+00, %4657
  %4967 = fsub fast float 1.000000e+00, %4658
  %4968 = fsub fast float 1.000000e+00, %4683
  %4969 = fmul fast float %4657, 4.000000e+00
  %4970 = fmul fast float %4969, %4966
  %4971 = fmul fast float %4970, %4963
  %4972 = fmul fast float %4658, 4.000000e+00
  %4973 = fmul fast float %4972, %4967
  %4974 = fmul fast float %4973, %4964
  %4975 = fmul fast float %4683, 4.000000e+00
  %4976 = fmul fast float %4975, %4968
  %4977 = fmul fast float %4976, %4965
  %4978 = fadd fast float %4971, %4954
  %4979 = fadd fast float %4974, %4955
  %4980 = fadd fast float %4977, %4956
  %4981 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  br label %4984

; <label>:4984                                    ; preds = %4958, %4858
  %4985 = phi float [ %4981, %4958 ], [ %4954, %4858 ]
  %4986 = phi float [ %4982, %4958 ], [ %4955, %4858 ]
  %4987 = phi float [ %4983, %4958 ], [ %4956, %4858 ]
  %4988 = call float @dx.op.binary.f32(i32 35, float %4986, float %4987)  ; FMax(a,b)
  %4989 = call float @dx.op.binary.f32(i32 35, float %4985, float %4988)  ; FMax(a,b)
  %4990 = fsub fast float 1.000000e+00, %4989
  %4991 = fmul fast float %4989, %4666
  %4992 = fadd fast float %4991, %4666
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 0
  %4995 = extractvalue %dx.types.CBufRet.f32 %4993, 1
  %4996 = extractvalue %dx.types.CBufRet.f32 %4993, 2
  %4997 = extractvalue %dx.types.CBufRet.f32 %4993, 3
  %4998 = fmul fast float %4992, %4994
  %4999 = fadd fast float %4998, %4995
  %5000 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5001 = fmul fast float %4996, %4992
  %5002 = fadd fast float %5001, %4997
  %5003 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5004 = fsub fast float 1.000000e+00, %4706
  %5005 = fadd fast float %5004, %5003
  %5006 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5007 = fcmp fast olt float %5006, 1.000000e+00
  br i1 %5007, label %5008, label %5826

; <label>:5008                                    ; preds = %4984
  %5009 = fcmp fast olt float %5000, 1.000000e+00
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = fcmp fast ogt float %5011, 0.000000e+00
  %5013 = or i1 %5009, %5012
  %5014 = or i1 %5009, %5012
  %5015 = xor i1 %5014, true
  %5016 = zext i1 %5015 to i32
  br i1 %5013, label %5017, label %5260

; <label>:5017                                    ; preds = %5008
  %5018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5019 = extractvalue %dx.types.CBufRet.f32 %5018, 0
  %5020 = extractvalue %dx.types.CBufRet.f32 %5018, 1
  %5021 = extractvalue %dx.types.CBufRet.f32 %5018, 2
  %5022 = extractvalue %dx.types.CBufRet.f32 %5018, 3
  %5023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5024 = extractvalue %dx.types.CBufRet.f32 %5023, 0
  %5025 = extractvalue %dx.types.CBufRet.f32 %5023, 1
  %5026 = extractvalue %dx.types.CBufRet.f32 %5023, 2
  %5027 = extractvalue %dx.types.CBufRet.f32 %5023, 3
  %5028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5029 = extractvalue %dx.types.CBufRet.f32 %5028, 0
  %5030 = extractvalue %dx.types.CBufRet.f32 %5028, 1
  %5031 = extractvalue %dx.types.CBufRet.f32 %5028, 2
  %5032 = extractvalue %dx.types.CBufRet.f32 %5028, 3
  %5033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5034 = extractvalue %dx.types.CBufRet.f32 %5033, 0
  %5035 = extractvalue %dx.types.CBufRet.f32 %5033, 1
  %5036 = extractvalue %dx.types.CBufRet.f32 %5033, 2
  %5037 = extractvalue %dx.types.CBufRet.f32 %5033, 3
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 0
  %5040 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5041 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5042 = extractvalue %dx.types.CBufRet.f32 %5038, 3
  %5043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.f32 %5043, 0
  %5045 = extractvalue %dx.types.CBufRet.f32 %5043, 1
  %5046 = extractvalue %dx.types.CBufRet.f32 %5043, 2
  %5047 = extractvalue %dx.types.CBufRet.f32 %5043, 3
  %5048 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5045, float %5046, float %4691, float %4692, float %4693)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %4665, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5050 = call float @dx.op.unary.f32(i32 6, float %5049)  ; FAbs(value)
  %5051 = fmul fast float %5050, 8.000000e+00
  %5052 = fadd fast float %5051, -6.000000e+00
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fmul fast float %5048, 8.000000e+00
  %5055 = fmul fast float %5054, %5011
  %5056 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5057 = fcmp fast ogt float %5056, 0.000000e+00
  br i1 %5057, label %5058, label %5235, !dx.controlflow.hints !72

; <label>:5058                                    ; preds = %5017
  %5059 = extractvalue %dx.types.CBufRet.f32 %5010, 1
  %5060 = extractvalue %dx.types.CBufRet.f32 %5010, 2
  %5061 = fsub fast float %5059, %5060
  %5062 = fmul fast float %5061, %4666
  %5063 = fadd fast float %5062, %5060
  %5064 = fmul fast float %187, 2.000000e+00
  %5065 = fmul fast float %188, 2.000000e+00
  %5066 = fadd fast float %5064, -1.000000e+00
  %5067 = fadd fast float %5065, -1.000000e+00
  %5068 = fmul fast float %5063, %5066
  %5069 = fmul fast float %5063, %5067
  %5070 = fadd fast float %5068, %74
  %5071 = fadd fast float %5069, %75
  %5072 = fmul fast float %5070, %4669
  %5073 = fmul fast float %5071, %4670
  %5074 = fadd fast float %4666, 0xBFE3333340000000
  %5075 = fmul fast float %5074, 0x4004000020000000
  %5076 = fsub fast float 1.000000e+00, %5075
  %5077 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5078 = fmul fast float %5077, 3.000000e+00
  %5079 = fadd fast float %5078, %187
  %5080 = call float @dx.op.unary.f32(i32 27, float %5079)  ; Round_ni(value)
  %5081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %29, float %5072, float %5073, float %5080, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5082 = extractvalue %dx.types.ResRet.f32 %5081, 0
  %5083 = fcmp fast une float %5082, 0xFFF0000000000000
  %5084 = fcmp fast une float %5082, 0x7FF0000000000000
  %5085 = and i1 %5083, %5084
  %5086 = fcmp fast olt float %5082, 0.000000e+00
  %5087 = call float @dx.op.unary.f32(i32 6, float %5082)  ; FAbs(value)
  %5088 = fsub fast float 1.000000e+00, %5087
  %5089 = select i1 %5085, float 1.000000e+00, float 0.000000e+00
  %5090 = fmul fast float %5089, %5056
  %5091 = fcmp fast ogt float %5090, 0.000000e+00
  br i1 %5091, label %5092, label %5235, !dx.controlflow.hints !73

; <label>:5092                                    ; preds = %5058
  %5093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.f32 %5093, 0
  %5095 = extractvalue %dx.types.CBufRet.f32 %5093, 1
  %5096 = extractvalue %dx.types.CBufRet.f32 %5093, 2
  %5097 = select i1 %5086, float 0.000000e+00, float %5094
  %5098 = select i1 %5086, float 0.000000e+00, float %5095
  %5099 = select i1 %5086, float 0.000000e+00, float %5096
  %5100 = select i1 %5086, float %5019, float %5034
  %5101 = select i1 %5086, float %5024, float %5039
  %5102 = select i1 %5086, float %5029, float %5044
  %5103 = select i1 %5086, float %5020, float %5035
  %5104 = select i1 %5086, float %5025, float %5040
  %5105 = select i1 %5086, float %5030, float %5045
  %5106 = select i1 %5086, float %5021, float %5036
  %5107 = select i1 %5086, float %5026, float %5041
  %5108 = select i1 %5086, float %5031, float %5046
  %5109 = select i1 %5086, float %5022, float %5037
  %5110 = select i1 %5086, float %5027, float %5042
  %5111 = select i1 %5086, float %5032, float %5047
  %5112 = fadd fast float %5097, %133
  %5113 = fadd fast float %5098, %134
  %5114 = fadd fast float %5099, %135
  %5115 = fmul fast float %5112, %5100
  %5116 = call float @dx.op.tertiary.f32(i32 46, float %5113, float %5103, float %5115)  ; FMad(a,b,c)
  %5117 = call float @dx.op.tertiary.f32(i32 46, float %5114, float %5106, float %5116)  ; FMad(a,b,c)
  %5118 = fadd fast float %5117, %5109
  %5119 = fmul fast float %5112, %5101
  %5120 = call float @dx.op.tertiary.f32(i32 46, float %5113, float %5104, float %5119)  ; FMad(a,b,c)
  %5121 = call float @dx.op.tertiary.f32(i32 46, float %5114, float %5107, float %5120)  ; FMad(a,b,c)
  %5122 = fadd fast float %5121, %5110
  %5123 = fmul fast float %5112, %5102
  %5124 = call float @dx.op.tertiary.f32(i32 46, float %5113, float %5105, float %5123)  ; FMad(a,b,c)
  %5125 = call float @dx.op.tertiary.f32(i32 46, float %5114, float %5108, float %5124)  ; FMad(a,b,c)
  %5126 = fadd fast float %5125, %5111
  %5127 = fdiv fast float 1.000000e+00, %5126
  %5128 = fmul fast float %5127, %5118
  %5129 = fmul fast float %5127, %5122
  %5130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.f32 %5130, 0
  %5132 = extractvalue %dx.types.CBufRet.f32 %5130, 1
  %5133 = fmul fast float %5128, %5131
  %5134 = fmul fast float %5129, %5132
  %5135 = extractvalue %dx.types.CBufRet.f32 %5130, 2
  %5136 = extractvalue %dx.types.CBufRet.f32 %5130, 3
  %5137 = fadd fast float %5133, %5135
  %5138 = fadd fast float %5134, %5136
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 3
  %5141 = fmul fast float %5140, %4691
  %5142 = fmul fast float %5140, %4692
  %5143 = fmul fast float %5140, %4693
  %5144 = fadd fast float %5141, %5112
  %5145 = fadd fast float %5142, %5113
  %5146 = fadd fast float %5143, %5114
  %5147 = fmul fast float %5144, %5100
  %5148 = call float @dx.op.tertiary.f32(i32 46, float %5145, float %5103, float %5147)  ; FMad(a,b,c)
  %5149 = call float @dx.op.tertiary.f32(i32 46, float %5146, float %5106, float %5148)  ; FMad(a,b,c)
  %5150 = fadd fast float %5149, %5109
  %5151 = fmul fast float %5144, %5101
  %5152 = call float @dx.op.tertiary.f32(i32 46, float %5145, float %5104, float %5151)  ; FMad(a,b,c)
  %5153 = call float @dx.op.tertiary.f32(i32 46, float %5146, float %5107, float %5152)  ; FMad(a,b,c)
  %5154 = fadd fast float %5153, %5110
  %5155 = fmul fast float %5144, %5102
  %5156 = call float @dx.op.tertiary.f32(i32 46, float %5145, float %5105, float %5155)  ; FMad(a,b,c)
  %5157 = call float @dx.op.tertiary.f32(i32 46, float %5146, float %5108, float %5156)  ; FMad(a,b,c)
  %5158 = fadd fast float %5157, %5111
  %5159 = fdiv fast float 1.000000e+00, %5158
  %5160 = fmul fast float %5159, %5150
  %5161 = fmul fast float %5159, %5154
  %5162 = fmul fast float %5137, 2.000000e+00
  %5163 = fadd fast float %5162, -1.000000e+00
  %5164 = call float @dx.op.unary.f32(i32 6, float %5163)  ; FAbs(value)
  %5165 = fmul fast float %5164, 5.000000e+00
  %5166 = fadd fast float %5165, -4.000000e+00
  %5167 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5168 = fmul fast float %5167, %5053
  %5169 = fsub fast float %5128, %5160
  %5170 = fmul fast float %5131, %5169
  %5171 = fmul fast float %5168, %5170
  %5172 = fsub fast float %5160, %5128
  %5173 = fmul fast float %5131, %5172
  %5174 = fadd fast float %5173, %5171
  %5175 = fsub fast float %5161, %5129
  %5176 = fmul fast float %5132, %5175
  %5177 = fmul fast float %5174, %5088
  %5178 = fmul fast float %5176, %5088
  %5179 = fadd fast float %5177, %5137
  %5180 = fadd fast float %5178, %5138
  %5181 = fsub fast float %5159, %5127
  %5182 = fmul fast float %5181, %5088
  %5183 = fadd fast float %5182, %5127
  %5184 = fdiv fast float 1.000000e+00, %5183
  %5185 = fadd fast float %4666, -1.000000e+00
  %5186 = fsub fast float %5184, %5126
  %5187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.f32 %5187, 2
  %5189 = fmul fast float %5188, %5184
  %5190 = fdiv fast float 1.600000e+02, %5189
  %5191 = fmul fast float %5185, %5185
  %5192 = fmul fast float %5191, 0xBFB5B17960000000
  %5193 = fmul fast float %5192, %5186
  %5194 = fmul fast float %5193, %5190
  %5195 = call float @dx.op.unary.f32(i32 21, float %5194)  ; Exp(value)
  %5196 = fmul fast float %5195, 0x3FF04B2960000000
  %5197 = fsub fast float 0x3FF04B2960000000, %5196
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = fmul fast float %5198, 4.000000e+00
  %5200 = fadd fast float %187, -5.000000e-01
  %5201 = fadd fast float %188, -5.000000e-01
  %5202 = fmul fast float %5198, 0x3FBEB851E0000000
  %5203 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5204 = fmul fast float %5203, %5200
  %5205 = fmul fast float %5203, %5201
  %5206 = fadd fast float %5179, %5204
  %5207 = fadd fast float %5180, %5205
  %5208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %5206, float %5207, float undef, float undef, i32 0, i32 0, i32 undef, float %5199)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5209 = extractvalue %dx.types.ResRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.ResRet.f32 %5208, 1
  %5211 = extractvalue %dx.types.ResRet.f32 %5208, 2
  %5212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5213 = extractvalue %dx.types.CBufRet.f32 %5212, 2
  %5214 = fmul fast float %5213, %5209
  %5215 = fmul fast float %5213, %5210
  %5216 = fmul fast float %5213, %5211
  %5217 = select i1 %174, float 0.000000e+00, float %5215
  %5218 = select i1 %174, float 0.000000e+00, float %5216
  %5219 = fmul fast float %5206, 2.000000e+00
  %5220 = fmul fast float %5207, 2.000000e+00
  %5221 = fadd fast float %5219, -1.000000e+00
  %5222 = fadd fast float %5220, -1.000000e+00
  %5223 = fmul fast float %5221, %5221
  %5224 = fsub fast float 1.000000e+00, %5223
  %5225 = call float @dx.op.unary.f32(i32 7, float %5224)  ; Saturate(value)
  %5226 = fsub fast float 1.000000e+00, %5225
  %5227 = fmul fast float %5226, %5053
  %5228 = fadd fast float %5227, %5225
  %5229 = fmul fast float %5222, %5222
  %5230 = fsub fast float 1.000000e+00, %5229
  %5231 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5232 = fmul fast float %5228, %5231
  %5233 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  %5234 = fmul fast float %5233, %5090
  br label %5235

; <label>:5235                                    ; preds = %5092, %5058, %5017
  %5236 = phi float [ %5214, %5092 ], [ 0.000000e+00, %5058 ], [ 0.000000e+00, %5017 ]
  %5237 = phi float [ %5217, %5092 ], [ 0.000000e+00, %5058 ], [ 0.000000e+00, %5017 ]
  %5238 = phi float [ %5218, %5092 ], [ 0.000000e+00, %5058 ], [ 0.000000e+00, %5017 ]
  %5239 = phi float [ %5234, %5092 ], [ 0.000000e+00, %5058 ], [ 0.000000e+00, %5017 ]
  %5240 = fcmp fast olt float %5239, 1.000000e+00
  %5241 = or i1 %5240, %5015
  %5242 = zext i1 %5241 to i32
  %5243 = fmul fast float %5239, %5000
  %5244 = fsub fast float %5239, %5243
  %5245 = fsub fast float 1.000000e+00, %5006
  %5246 = fmul fast float %5244, %5245
  %5247 = fadd fast float %5246, %5006
  %5248 = fsub fast float %5247, %5244
  %5249 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5250 = fmul fast float %5249, %4941
  %5251 = fmul fast float %5249, %4942
  %5252 = fmul fast float %5249, %4943
  %5253 = fsub fast float -0.000000e+00, %5247
  %5254 = fmul fast float %5244, %5236
  %5255 = fmul fast float %5244, %5237
  %5256 = fmul fast float %5244, %5238
  %5257 = fadd fast float %5254, %5250
  %5258 = fadd fast float %5255, %5251
  %5259 = fadd fast float %5256, %5252
  br label %5260

; <label>:5260                                    ; preds = %5235, %5008
  %5261 = phi float [ %5006, %5008 ], [ %5253, %5235 ]
  %5262 = phi float [ %4941, %5008 ], [ %5257, %5235 ]
  %5263 = phi float [ %4942, %5008 ], [ %5258, %5235 ]
  %5264 = phi float [ %4943, %5008 ], [ %5259, %5235 ]
  %5265 = phi i32 [ %5016, %5008 ], [ %5242, %5235 ]
  %5266 = icmp eq i32 %5265, 0
  br i1 %5266, label %5826, label %5267

; <label>:5267                                    ; preds = %5260
  %5268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.f32 %5268, 2
  %5270 = extractvalue %dx.types.CBufRet.f32 %5268, 3
  %5271 = fmul fast float %5269, %74
  %5272 = fmul fast float %5270, %75
  %5273 = fptoui float %5271 to i32
  %5274 = fptoui float %5272 to i32
  %5275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5276 = extractvalue %dx.types.CBufRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.CBufRet.f32 %5275, 2
  %5278 = extractvalue %dx.types.CBufRet.f32 %5275, 3
  %5279 = fadd fast float %69, -4.000000e+00
  %5280 = call float @dx.op.binary.f32(i32 35, float %5279, float 0.000000e+00)  ; FMax(a,b)
  %5281 = fadd fast float %5280, %5276
  %5282 = fmul fast float %5281, %5277
  %5283 = call float @dx.op.unary.f32(i32 23, float %5282)  ; Log(value)
  %5284 = fmul fast float %5283, %5278
  %5285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5286 = extractvalue %dx.types.CBufRet.f32 %5285, 2
  %5287 = fmul fast float %5284, %5286
  %5288 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  %5289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.i32 %5289, 1
  %5291 = add i32 %5290, -1
  %5292 = uitofp i32 %5290 to float
  %5293 = fmul fast float %5292, %5288
  %5294 = fptoui float %5293 to i32
  %5295 = call i32 @dx.op.binary.i32(i32 40, i32 %5294, i32 %5291)  ; UMin(a,b)
  %5296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.i32 %5296, 2
  %5298 = extractvalue %dx.types.CBufRet.i32 %5296, 3
  %5299 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5274, i32 %5297, i32 %5273)  ; UMad(a,b,c)
  %5300 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5295, i32 %5298, i32 %5299)  ; UMad(a,b,c)
  %5301 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %5302 = fptoui float %5301 to i32
  %5303 = lshr i32 %5302, 5
  %5304 = call i32 @dx.op.binary.i32(i32 40, i32 %5303, i32 8191)  ; UMin(a,b)
  %5305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.i32 %5305, 2
  %5307 = add nsw i32 %5306, -1
  %5308 = call i32 @dx.op.binary.i32(i32 37, i32 %5307, i32 0)  ; IMax(a,b)
  %5309 = shl i32 %5304, 2
  %5310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %5309, i32 undef)  ; BufferLoad(srv,index,wot)
  %5311 = extractvalue %dx.types.ResRet.i32 %5310, 0
  %5312 = lshr i32 %5311, 16
  %5313 = and i32 %5311, 65535
  %5314 = lshr i32 %5311, 21
  %5315 = lshr i32 %5313, 5
  %5316 = call i32 @dx.op.binary.i32(i32 40, i32 %5315, i32 %5308)  ; UMin(a,b)
  %5317 = icmp ugt i32 %5314, %5316
  br i1 %5317, label %5698, label %5318

; <label>:5318                                    ; preds = %5267
  br label %5319

; <label>:5319                                    ; preds = %5687, %5318
  %5320 = phi float [ %5688, %5687 ], [ 0.000000e+00, %5318 ]
  %5321 = phi float [ %5689, %5687 ], [ 0.000000e+00, %5318 ]
  %5322 = phi float [ %5690, %5687 ], [ 0.000000e+00, %5318 ]
  %5323 = phi float [ %5691, %5687 ], [ 1.000000e+00, %5318 ]
  %5324 = phi i32 [ %5695, %5687 ], [ %5314, %5318 ]
  %5325 = phi float [ %5692, %5687 ], [ 0.000000e+00, %5318 ]
  %5326 = phi float [ %5693, %5687 ], [ 0.000000e+00, %5318 ]
  %5327 = phi float [ %5694, %5687 ], [ 0.000000e+00, %5318 ]
  %5328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.i32 %5328, 2
  %5330 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5300, i32 %5329, i32 %5324)  ; UMad(a,b,c)
  %5331 = shl i32 %5330, 2
  %5332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %5331, i32 undef)  ; BufferLoad(srv,index,wot)
  %5333 = extractvalue %dx.types.ResRet.i32 %5332, 0
  %5334 = shl i32 %5324, 5
  %5335 = sub nsw i32 %5312, %5334
  %5336 = call i32 @dx.op.binary.i32(i32 37, i32 %5335, i32 0)  ; IMax(a,b)
  %5337 = call i32 @dx.op.binary.i32(i32 38, i32 %5336, i32 31)  ; IMin(a,b)
  %5338 = sub nsw i32 1, %5312
  %5339 = add nsw i32 %5338, %5313
  %5340 = call i32 @dx.op.binary.i32(i32 37, i32 %5339, i32 0)  ; IMax(a,b)
  %5341 = call i32 @dx.op.binary.i32(i32 38, i32 %5340, i32 32)  ; IMin(a,b)
  %5342 = and i32 %5341, 31
  %5343 = shl i32 -1, %5342
  %5344 = xor i32 %5343, -1
  %5345 = and i32 %5337, 31
  %5346 = shl i32 %5344, %5345
  %5347 = icmp eq i32 %5341, 32
  %5348 = select i1 %5347, i32 -1, i32 %5346
  %5349 = and i32 %5348, %5333
  %5350 = icmp eq i32 %5349, 0
  br i1 %5350, label %5687, label %5351

; <label>:5351                                    ; preds = %5319
  br label %5352

; <label>:5352                                    ; preds = %5461, %5351
  %5353 = phi float [ %5462, %5461 ], [ %5320, %5351 ]
  %5354 = phi float [ %5463, %5461 ], [ %5321, %5351 ]
  %5355 = phi float [ %5464, %5461 ], [ %5322, %5351 ]
  %5356 = phi float [ %5465, %5461 ], [ %5323, %5351 ]
  %5357 = phi i32 [ %5365, %5461 ], [ %5349, %5351 ]
  %5358 = phi float [ %5466, %5461 ], [ %5325, %5351 ]
  %5359 = phi float [ %5467, %5461 ], [ %5326, %5351 ]
  %5360 = phi float [ %5468, %5461 ], [ %5327, %5351 ]
  %5361 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5357)  ; FirstbitLo(value)
  %5362 = add i32 %5361, %5334
  %5363 = and i32 %5361, 31
  %5364 = shl i32 1, %5363
  %5365 = xor i32 %5364, %5357
  %5366 = mul i32 %5362, 72
  %5367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5366, i32 undef)  ; BufferLoad(srv,index,wot)
  %5368 = extractvalue %dx.types.ResRet.f32 %5367, 0
  %5369 = extractvalue %dx.types.ResRet.f32 %5367, 1
  %5370 = extractvalue %dx.types.ResRet.f32 %5367, 2
  %5371 = add i32 %5366, 12
  %5372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %5371, i32 undef)  ; BufferLoad(srv,index,wot)
  %5373 = extractvalue %dx.types.ResRet.i32 %5372, 0
  %5374 = add i32 %5366, 16
  %5375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5374, i32 undef)  ; BufferLoad(srv,index,wot)
  %5376 = extractvalue %dx.types.ResRet.f32 %5375, 0
  %5377 = extractvalue %dx.types.ResRet.f32 %5375, 1
  %5378 = extractvalue %dx.types.ResRet.f32 %5375, 2
  %5379 = add i32 %5366, 28
  %5380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5379, i32 undef)  ; BufferLoad(srv,index,wot)
  %5381 = extractvalue %dx.types.ResRet.f32 %5380, 0
  %5382 = add i32 %5366, 32
  %5383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5382, i32 undef)  ; BufferLoad(srv,index,wot)
  %5384 = extractvalue %dx.types.ResRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.ResRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.ResRet.f32 %5383, 2
  %5387 = extractvalue %dx.types.ResRet.f32 %5383, 3
  %5388 = add i32 %5366, 48
  %5389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5388, i32 undef)  ; BufferLoad(srv,index,wot)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.ResRet.f32 %5389, 1
  %5392 = add i32 %5366, 56
  %5393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5392, i32 undef)  ; BufferLoad(srv,index,wot)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = extractvalue %dx.types.ResRet.f32 %5393, 1
  %5396 = add i32 %5366, 64
  %5397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5396, i32 undef)  ; BufferLoad(srv,index,wot)
  %5398 = extractvalue %dx.types.ResRet.f32 %5397, 0
  %5399 = extractvalue %dx.types.ResRet.f32 %5397, 1
  %5400 = mul i32 %5362, 60
  %5401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5400, i32 undef)  ; BufferLoad(srv,index,wot)
  %5402 = extractvalue %dx.types.ResRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.ResRet.f32 %5401, 1
  %5404 = extractvalue %dx.types.ResRet.f32 %5401, 2
  %5405 = add i32 %5400, 12
  %5406 = add i32 %5400, 48
  %5407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.ResRet.f32 %5407, 1
  %5410 = extractvalue %dx.types.ResRet.f32 %5407, 2
  %5411 = and i32 %5373, 32767
  %5412 = bitcast float %5368 to i32
  %5413 = icmp eq i32 %5412, -1
  %5414 = bitcast float %5369 to i32
  %5415 = and i32 %5373, 32768
  %5416 = icmp ne i32 %5415, 0
  %5417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.CBufRet.f32 %5417, 1
  %5420 = extractvalue %dx.types.CBufRet.f32 %5417, 2
  %5421 = fsub fast float %5402, %5418
  %5422 = fsub fast float %5403, %5419
  %5423 = fsub fast float %5404, %5420
  %5424 = fsub fast float %133, %5421
  %5425 = fsub fast float %134, %5422
  %5426 = fsub fast float %135, %5423
  %5427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5405, i32 undef)  ; BufferLoad(srv,index,wot)
  %5428 = extractvalue %dx.types.ResRet.f32 %5427, 0
  %5429 = extractvalue %dx.types.ResRet.f32 %5427, 1
  %5430 = extractvalue %dx.types.ResRet.f32 %5427, 2
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %5428, float %5429, float %5430)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = add i32 %5400, 24
  %5433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5432, i32 undef)  ; BufferLoad(srv,index,wot)
  %5434 = extractvalue %dx.types.ResRet.f32 %5433, 0
  %5435 = extractvalue %dx.types.ResRet.f32 %5433, 1
  %5436 = extractvalue %dx.types.ResRet.f32 %5433, 2
  %5437 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = add i32 %5400, 36
  %5439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5438, i32 undef)  ; BufferLoad(srv,index,wot)
  %5440 = extractvalue %dx.types.ResRet.f32 %5439, 0
  %5441 = extractvalue %dx.types.ResRet.f32 %5439, 1
  %5442 = extractvalue %dx.types.ResRet.f32 %5439, 2
  %5443 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %5440, float %5441, float %5442)  ; Dot3(ax,ay,az,bx,by,bz)
  %5444 = call float @dx.op.unary.f32(i32 6, float %5431)  ; FAbs(value)
  %5445 = call float @dx.op.unary.f32(i32 6, float %5437)  ; FAbs(value)
  %5446 = call float @dx.op.unary.f32(i32 6, float %5443)  ; FAbs(value)
  %5447 = fsub fast float %5408, %5444
  %5448 = fsub fast float %5409, %5445
  %5449 = fsub fast float %5410, %5446
  %5450 = fmul fast float %5447, %5376
  %5451 = fmul fast float %5448, %5377
  %5452 = fmul fast float %5449, %5378
  %5453 = call float @dx.op.binary.f32(i32 36, float %5451, float %5452)  ; FMin(a,b)
  %5454 = call float @dx.op.binary.f32(i32 36, float %5450, float %5453)  ; FMin(a,b)
  %5455 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5456 = call float @dx.op.binary.f32(i32 36, float %5356, float %5455)  ; FMin(a,b)
  %5457 = uitofp i1 %5416 to float
  %5458 = fsub fast float 1.000000e+00, %5457
  %5459 = fmul fast float %5456, %5458
  %5460 = fcmp fast ogt float %5459, 0.000000e+00
  br i1 %5460, label %5470, label %5461

; <label>:5461                                    ; preds = %5612, %5352
  %5462 = phi float [ %5676, %5612 ], [ %5353, %5352 ]
  %5463 = phi float [ %5677, %5612 ], [ %5354, %5352 ]
  %5464 = phi float [ %5678, %5612 ], [ %5355, %5352 ]
  %5465 = phi float [ %5685, %5612 ], [ %5356, %5352 ]
  %5466 = phi float [ %5682, %5612 ], [ %5358, %5352 ]
  %5467 = phi float [ %5683, %5612 ], [ %5359, %5352 ]
  %5468 = phi float [ %5684, %5612 ], [ %5360, %5352 ]
  %5469 = icmp eq i32 %5357, %5364
  br i1 %5469, label %5686, label %5352

; <label>:5470                                    ; preds = %5352
  br i1 %5413, label %5528, label %5471

; <label>:5471                                    ; preds = %5470
  %5472 = fsub fast float -0.000000e+00, %5428
  %5473 = fsub fast float -0.000000e+00, %5429
  %5474 = fsub fast float -0.000000e+00, %5430
  %5475 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = fsub fast float -0.000000e+00, %5475
  %5477 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = fadd fast float %5477, %5391
  %5479 = fadd fast float %5390, %5477
  %5480 = fsub fast float -0.000000e+00, %5479
  %5481 = fcmp ogt float %5475, -0.000000e+00
  %5482 = select i1 %5481, float %5480, float %5478
  %5483 = call float @dx.op.unary.f32(i32 6, float %5476)  ; FAbs(value)
  %5484 = fdiv fast float 1.000000e+00, %5483
  %5485 = fmul fast float %5482, %5484
  %5486 = call float @dx.op.binary.f32(i32 35, float %5485, float 0.000000e+00)  ; FMax(a,b)
  %5487 = fsub fast float -0.000000e+00, %5434
  %5488 = fsub fast float -0.000000e+00, %5435
  %5489 = fsub fast float -0.000000e+00, %5436
  %5490 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %5487, float %5488, float %5489)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = fsub fast float -0.000000e+00, %5490
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %5487, float %5488, float %5489)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fadd fast float %5492, %5395
  %5494 = fadd fast float %5394, %5492
  %5495 = fsub fast float -0.000000e+00, %5494
  %5496 = fcmp ogt float %5490, -0.000000e+00
  %5497 = select i1 %5496, float %5495, float %5493
  %5498 = call float @dx.op.unary.f32(i32 6, float %5491)  ; FAbs(value)
  %5499 = fdiv fast float 1.000000e+00, %5498
  %5500 = fmul fast float %5497, %5499
  %5501 = call float @dx.op.binary.f32(i32 35, float %5500, float 0.000000e+00)  ; FMax(a,b)
  %5502 = fsub fast float -0.000000e+00, %5440
  %5503 = fsub fast float -0.000000e+00, %5441
  %5504 = fsub fast float -0.000000e+00, %5442
  %5505 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %5502, float %5503, float %5504)  ; Dot3(ax,ay,az,bx,by,bz)
  %5506 = fsub fast float -0.000000e+00, %5505
  %5507 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %5502, float %5503, float %5504)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = fadd fast float %5507, %5399
  %5509 = fadd fast float %5398, %5507
  %5510 = fsub fast float -0.000000e+00, %5509
  %5511 = fcmp ogt float %5505, -0.000000e+00
  %5512 = select i1 %5511, float %5510, float %5508
  %5513 = call float @dx.op.unary.f32(i32 6, float %5506)  ; FAbs(value)
  %5514 = fdiv fast float 1.000000e+00, %5513
  %5515 = fmul fast float %5512, %5514
  %5516 = call float @dx.op.binary.f32(i32 35, float %5515, float 0.000000e+00)  ; FMax(a,b)
  %5517 = call float @dx.op.binary.f32(i32 36, float %5501, float %5516)  ; FMin(a,b)
  %5518 = call float @dx.op.binary.f32(i32 36, float %5486, float %5517)  ; FMin(a,b)
  %5519 = fmul fast float %5518, %4691
  %5520 = fmul fast float %5518, %4692
  %5521 = fmul fast float %5518, %4693
  %5522 = fadd fast float %5519, %133
  %5523 = fadd fast float %5520, %134
  %5524 = fadd fast float %5521, %135
  %5525 = fsub fast float %5522, %5368
  %5526 = fsub fast float %5523, %5369
  %5527 = fsub fast float %5524, %5370
  br label %5535

; <label>:5528                                    ; preds = %5470
  %5529 = fmul fast float %4691, 8.096000e+03
  %5530 = fmul fast float %4692, 8.096000e+03
  %5531 = fmul fast float %4693, 8.096000e+03
  %5532 = fadd fast float %5529, %133
  %5533 = fadd fast float %5530, %134
  %5534 = fadd fast float %5531, %135
  br label %5535

; <label>:5535                                    ; preds = %5528, %5471
  %5536 = phi float [ %4691, %5528 ], [ %5525, %5471 ]
  %5537 = phi float [ %4692, %5528 ], [ %5526, %5471 ]
  %5538 = phi float [ %4693, %5528 ], [ %5527, %5471 ]
  %5539 = phi float [ %5532, %5528 ], [ %5522, %5471 ]
  %5540 = phi float [ %5533, %5528 ], [ %5523, %5471 ]
  %5541 = phi float [ %5534, %5528 ], [ %5524, %5471 ]
  %5542 = fcmp fast olt float %5387, 1.000000e+00
  br i1 %5542, label %5543, label %5574, !dx.controlflow.hints !74

; <label>:5543                                    ; preds = %5535
  %5544 = fmul fast float %5538, %5385
  %5545 = fmul fast float %5537, %5386
  %5546 = fsub fast float %5544, %5545
  %5547 = fmul fast float %5536, %5386
  %5548 = fmul fast float %5538, %5384
  %5549 = fsub fast float %5547, %5548
  %5550 = fmul fast float %5537, %5384
  %5551 = fmul fast float %5536, %5385
  %5552 = fsub fast float %5550, %5551
  %5553 = fmul fast float %5546, 2.000000e+00
  %5554 = fmul fast float %5549, 2.000000e+00
  %5555 = fmul fast float %5552, 2.000000e+00
  %5556 = fmul fast float %5553, %5387
  %5557 = fmul fast float %5554, %5387
  %5558 = fmul fast float %5555, %5387
  %5559 = fmul fast float %5555, %5385
  %5560 = fmul fast float %5554, %5386
  %5561 = fmul fast float %5553, %5386
  %5562 = fmul fast float %5555, %5384
  %5563 = fmul fast float %5554, %5384
  %5564 = fmul fast float %5553, %5385
  %5565 = fadd fast float %5559, %5536
  %5566 = fadd fast float %5565, %5556
  %5567 = fsub fast float %5566, %5560
  %5568 = fsub fast float %5537, %5562
  %5569 = fadd fast float %5568, %5557
  %5570 = fadd fast float %5569, %5561
  %5571 = fadd fast float %5558, %5538
  %5572 = fsub fast float %5571, %5564
  %5573 = fadd fast float %5572, %5563
  br label %5574

; <label>:5574                                    ; preds = %5543, %5535
  %5575 = phi float [ %5567, %5543 ], [ %5536, %5535 ]
  %5576 = phi float [ %5570, %5543 ], [ %5537, %5535 ]
  %5577 = phi float [ %5573, %5543 ], [ %5538, %5535 ]
  br i1 %5413, label %5609, label %5578

; <label>:5578                                    ; preds = %5574
  %5579 = fmul fast float %4666, 0x400187C840000000
  %5580 = fadd fast float %5579, 0xC00EFC2120000000
  %5581 = fmul fast float %5580, %4666
  %5582 = fadd fast float %5581, 0x3FE5D16340000000
  %5583 = fmul fast float %5582, %4666
  %5584 = fadd fast float %5583, 1.000000e+00
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = fsub fast float %5539, %133
  %5587 = fsub fast float %5540, %134
  %5588 = fsub fast float %5541, %135
  %5589 = fsub fast float %5539, %5368
  %5590 = fsub fast float %5540, %5369
  %5591 = fsub fast float %5541, %5370
  %5592 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5587, float %5588, float %5586, float %5587, float %5588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float %5589, float %5590, float %5591)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = fadd fast float %5593, 0x3EE4F8B580000000
  %5595 = fdiv fast float %5592, %5594
  %5596 = bitcast float %5595 to i32
  %5597 = ashr i32 %5596, 1
  %5598 = add nsw i32 %5597, 532487669
  %5599 = bitcast i32 %5598 to float
  %5600 = fmul fast float %5599, %5585
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = fmul fast float %5601, 0x4009981AE0000000
  %5603 = fsub fast float 0x40111BBD80000000, %5602
  %5604 = fmul fast float %5603, %5601
  %5605 = fadd fast float %5604, 0xC0009F6020000000
  %5606 = fmul fast float %5605, %5601
  %5607 = fadd fast float %5606, 1.000000e+00
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  br label %5612

; <label>:5609                                    ; preds = %5574
  %5610 = icmp ne i32 %5414, -1
  %5611 = zext i1 %5610 to i32
  br label %5612

; <label>:5612                                    ; preds = %5609, %5578
  %5613 = phi float [ %4666, %5609 ], [ %5608, %5578 ]
  %5614 = phi i32 [ %5611, %5609 ], [ 0, %5578 ]
  %5615 = fmul float %5613, 5.000000e+00
  %5616 = fsub float 5.000000e+00, %5615
  %5617 = icmp ne i32 %5614, 0
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 3
  %5620 = fadd fast float %5619, %5616
  %5621 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5620)  ; FMax(a,b)
  %5622 = call float @dx.op.unary.f32(i32 6, float %5575)  ; FAbs(value)
  %5623 = call float @dx.op.unary.f32(i32 6, float %5576)  ; FAbs(value)
  %5624 = fadd fast float %5623, %5622
  %5625 = call float @dx.op.unary.f32(i32 6, float %5577)  ; FAbs(value)
  %5626 = fadd fast float %5624, %5625
  %5627 = fcmp fast oeq float %5626, 0.000000e+00
  %5628 = fdiv fast float 1.000000e+00, %5626
  %5629 = select i1 %5627, float 1.000000e+00, float %5628
  %5630 = fmul fast float %5629, %5575
  %5631 = fmul fast float %5629, %5576
  %5632 = call float @dx.op.unary.f32(i32 6, float %5631)  ; FAbs(value)
  %5633 = call float @dx.op.unary.f32(i32 6, float %5630)  ; FAbs(value)
  %5634 = fsub fast float 1.000000e+00, %5632
  %5635 = fsub fast float 1.000000e+00, %5633
  %5636 = fcmp fast oge float %5630, 0.000000e+00
  %5637 = fcmp fast oge float %5631, 0.000000e+00
  %5638 = select i1 %5636, float 1.000000e+00, float -1.000000e+00
  %5639 = select i1 %5637, float 1.000000e+00, float -1.000000e+00
  %5640 = fcmp fast ole float %5577, 0.000000e+00
  %5641 = fmul fast float %5638, %5634
  %5642 = fmul fast float %5639, %5635
  %5643 = select i1 %5640, float %5641, float %5630
  %5644 = select i1 %5640, float %5642, float %5631
  %5645 = fmul fast float %5643, 5.000000e-01
  %5646 = fmul fast float %5644, 5.000000e-01
  %5647 = fadd fast float %5645, 5.000000e-01
  %5648 = fadd fast float %5646, 5.000000e-01
  %5649 = uitofp i32 %5411 to float
  %5650 = call float @dx.op.binary.f32(i32 36, float %5621, float 3.000000e+00)  ; FMin(a,b)
  %5651 = fadd fast float %5650, 2.000000e+00
  %5652 = call float @dx.op.unary.f32(i32 21, float %5651)  ; Exp(value)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5618, 1
  %5654 = fmul fast float %5653, %5652
  %5655 = fmul fast float %5654, 2.000000e+00
  %5656 = fsub fast float 1.000000e+00, %5655
  %5657 = fmul fast float %5647, %5656
  %5658 = fmul fast float %5648, %5656
  %5659 = fadd fast float %5657, %5654
  %5660 = fadd fast float %5658, %5654
  %5661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %5659, float %5660, float %5649, float undef, i32 0, i32 0, i32 undef, float %5621)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5662 = extractvalue %dx.types.ResRet.f32 %5661, 0
  %5663 = extractvalue %dx.types.ResRet.f32 %5661, 1
  %5664 = extractvalue %dx.types.ResRet.f32 %5661, 2
  %5665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5665, 3
  %5667 = fmul fast float %5666, %5381
  %5668 = call float @dx.op.binary.f32(i32 36, float %4711, float %5667)  ; FMin(a,b)
  %5669 = select i1 %5617, float %5668, float %5667
  %5670 = fmul fast float %5662, %5459
  %5671 = fmul fast float %5670, %5669
  %5672 = fmul fast float %5663, %5459
  %5673 = fmul fast float %5672, %5669
  %5674 = fmul fast float %5664, %5459
  %5675 = fmul fast float %5674, %5669
  %5676 = fadd fast float %5671, %5353
  %5677 = fadd fast float %5673, %5354
  %5678 = fadd fast float %5675, %5355
  %5679 = fmul fast float %5539, %5459
  %5680 = fmul fast float %5540, %5459
  %5681 = fmul fast float %5541, %5459
  %5682 = fadd fast float %5679, %5358
  %5683 = fadd fast float %5680, %5359
  %5684 = fadd fast float %5681, %5360
  %5685 = fsub fast float %5356, %5459
  br label %5461

; <label>:5686                                    ; preds = %5461
  br label %5687

; <label>:5687                                    ; preds = %5686, %5319
  %5688 = phi float [ %5320, %5319 ], [ %5462, %5686 ]
  %5689 = phi float [ %5321, %5319 ], [ %5463, %5686 ]
  %5690 = phi float [ %5322, %5319 ], [ %5464, %5686 ]
  %5691 = phi float [ %5323, %5319 ], [ %5465, %5686 ]
  %5692 = phi float [ %5325, %5319 ], [ %5466, %5686 ]
  %5693 = phi float [ %5326, %5319 ], [ %5467, %5686 ]
  %5694 = phi float [ %5327, %5319 ], [ %5468, %5686 ]
  %5695 = add i32 %5324, 1
  %5696 = icmp ugt i32 %5695, %5316
  br i1 %5696, label %5697, label %5319, !llvm.loop !75

; <label>:5697                                    ; preds = %5687
  br label %5698

; <label>:5698                                    ; preds = %5697, %5267
  %5699 = phi float [ 0.000000e+00, %5267 ], [ %5688, %5697 ]
  %5700 = phi float [ 0.000000e+00, %5267 ], [ %5689, %5697 ]
  %5701 = phi float [ 0.000000e+00, %5267 ], [ %5690, %5697 ]
  %5702 = phi float [ 0.000000e+00, %5267 ], [ %5692, %5697 ]
  %5703 = phi float [ 0.000000e+00, %5267 ], [ %5693, %5697 ]
  %5704 = phi float [ 0.000000e+00, %5267 ], [ %5694, %5697 ]
  %5705 = call float @dx.op.dot3.f32(i32 55, float %5699, float %5700, float %5701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5706 = select i1 %174, float 0.000000e+00, float %5699
  %5707 = select i1 %174, float %5705, float %5700
  %5708 = select i1 %174, float 0.000000e+00, float %5701
  %5709 = fcmp fast olt float %5261, 0.000000e+00
  %5710 = call float @dx.op.unary.f32(i32 6, float %5261)  ; FAbs(value)
  %5711 = fmul fast float %5710, %5262
  %5712 = fmul fast float %5710, %5263
  %5713 = fmul fast float %5710, %5264
  %5714 = select i1 %5709, float %5262, float %5711
  %5715 = select i1 %5709, float %5263, float %5712
  %5716 = select i1 %5709, float %5264, float %5713
  %5717 = fsub fast float 1.000000e+00, %5710
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5719 = fmul fast float %5718, %5706
  %5720 = fmul fast float %5718, %5707
  %5721 = fmul fast float %5718, %5708
  %5722 = fadd fast float %5714, %5719
  %5723 = fadd fast float %5715, %5720
  %5724 = fadd fast float %5716, %5721
  %5725 = fcmp fast une float %5011, 0.000000e+00
  br i1 %5725, label %5826, label %5726

; <label>:5726                                    ; preds = %5698
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 0
  %5729 = extractvalue %dx.types.CBufRet.f32 %5727, 1
  %5730 = extractvalue %dx.types.CBufRet.f32 %5727, 2
  %5731 = extractvalue %dx.types.CBufRet.f32 %5727, 3
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5734 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5735 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5736 = extractvalue %dx.types.CBufRet.f32 %5732, 3
  %5737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5738 = extractvalue %dx.types.CBufRet.f32 %5737, 0
  %5739 = extractvalue %dx.types.CBufRet.f32 %5737, 1
  %5740 = extractvalue %dx.types.CBufRet.f32 %5737, 2
  %5741 = extractvalue %dx.types.CBufRet.f32 %5737, 3
  %5742 = call float @dx.op.dot3.f32(i32 55, float %5738, float %5739, float %5740, float %4691, float %4692, float %4693)  ; Dot3(ax,ay,az,bx,by,bz)
  %5743 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5703, float %5704, float %5738, float %5739, float %5740)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %5738, float %5739, float %5740)  ; Dot3(ax,ay,az,bx,by,bz)
  %5745 = fadd fast float %4666, -1.000000e+00
  %5746 = fsub fast float %5743, %5744
  %5747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5748 = extractvalue %dx.types.CBufRet.f32 %5747, 2
  %5749 = fmul fast float %5748, %5743
  %5750 = fdiv fast float 1.600000e+02, %5749
  %5751 = fmul fast float %5745, %5745
  %5752 = fmul fast float %5751, 0xBFB5B17960000000
  %5753 = fmul fast float %5752, %5746
  %5754 = fmul fast float %5753, %5750
  %5755 = call float @dx.op.unary.f32(i32 21, float %5754)  ; Exp(value)
  %5756 = fmul fast float %5755, 0x3FF04B2960000000
  %5757 = fsub fast float 0x3FF04B2960000000, %5756
  %5758 = call float @dx.op.unary.f32(i32 7, float %5757)  ; Saturate(value)
  %5759 = fmul fast float %5758, 4.000000e+00
  %5760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5760, 0
  %5762 = extractvalue %dx.types.CBufRet.f32 %5760, 1
  %5763 = extractvalue %dx.types.CBufRet.f32 %5760, 2
  %5764 = fadd fast float %5761, %5702
  %5765 = fadd fast float %5762, %5703
  %5766 = fadd fast float %5763, %5704
  %5767 = fmul fast float %5764, %5728
  %5768 = call float @dx.op.tertiary.f32(i32 46, float %5765, float %5729, float %5767)  ; FMad(a,b,c)
  %5769 = call float @dx.op.tertiary.f32(i32 46, float %5766, float %5730, float %5768)  ; FMad(a,b,c)
  %5770 = fadd fast float %5769, %5731
  %5771 = fmul fast float %5764, %5733
  %5772 = call float @dx.op.tertiary.f32(i32 46, float %5765, float %5734, float %5771)  ; FMad(a,b,c)
  %5773 = call float @dx.op.tertiary.f32(i32 46, float %5766, float %5735, float %5772)  ; FMad(a,b,c)
  %5774 = fadd fast float %5773, %5736
  %5775 = fmul fast float %5764, %5738
  %5776 = call float @dx.op.tertiary.f32(i32 46, float %5765, float %5739, float %5775)  ; FMad(a,b,c)
  %5777 = call float @dx.op.tertiary.f32(i32 46, float %5766, float %5740, float %5776)  ; FMad(a,b,c)
  %5778 = fadd fast float %5777, %5741
  %5779 = fdiv fast float %5770, %5778
  %5780 = fdiv fast float %5774, %5778
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 0
  %5783 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5784 = fmul fast float %5782, %5779
  %5785 = fmul fast float %5783, %5780
  %5786 = extractvalue %dx.types.CBufRet.f32 %5781, 2
  %5787 = extractvalue %dx.types.CBufRet.f32 %5781, 3
  %5788 = fadd fast float %5784, %5786
  %5789 = fadd fast float %5785, %5787
  %5790 = fmul fast float %5742, 8.000000e+00
  %5791 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5792 = fmul fast float %5788, 2.000000e+00
  %5793 = fmul fast float %5789, 2.000000e+00
  %5794 = fadd fast float %5792, -1.000000e+00
  %5795 = fadd fast float %5793, -1.000000e+00
  %5796 = fmul fast float %5794, %5794
  %5797 = fsub fast float 1.000000e+00, %5796
  %5798 = call float @dx.op.unary.f32(i32 7, float %5797)  ; Saturate(value)
  %5799 = fmul fast float %5795, %5795
  %5800 = fsub fast float 1.000000e+00, %5799
  %5801 = call float @dx.op.unary.f32(i32 7, float %5800)  ; Saturate(value)
  %5802 = fmul fast float %5011, %5798
  %5803 = fmul fast float %5802, %5801
  %5804 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  %5805 = fmul fast float %5804, %5791
  %5806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %5788, float %5789, float undef, float undef, i32 0, i32 0, i32 undef, float %5759)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5807 = extractvalue %dx.types.ResRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.ResRet.f32 %5806, 1
  %5809 = extractvalue %dx.types.ResRet.f32 %5806, 2
  %5810 = select i1 %174, float 0.000000e+00, float %5808
  %5811 = select i1 %174, float 0.000000e+00, float %5809
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 2
  %5814 = fmul fast float %5813, %5807
  %5815 = fmul fast float %5810, %5813
  %5816 = fmul fast float %5811, %5813
  %5817 = fsub fast float %5814, %5706
  %5818 = fsub fast float %5815, %5707
  %5819 = fsub fast float %5816, %5708
  %5820 = fmul fast float %5817, %5805
  %5821 = fmul fast float %5818, %5805
  %5822 = fmul fast float %5819, %5805
  %5823 = fadd fast float %5820, %5706
  %5824 = fadd fast float %5821, %5707
  %5825 = fadd fast float %5822, %5708
  br label %5826

; <label>:5826                                    ; preds = %5726, %5698, %5260, %4984
  %5827 = phi float [ %5262, %5260 ], [ %5722, %5698 ], [ %4941, %4984 ], [ %5823, %5726 ]
  %5828 = phi float [ %5263, %5260 ], [ %5723, %5698 ], [ %4942, %4984 ], [ %5824, %5726 ]
  %5829 = phi float [ %5264, %5260 ], [ %5724, %5698 ], [ %4943, %4984 ], [ %5825, %5726 ]
  %5830 = fmul fast float %4990, %4937
  %5831 = fmul fast float %4990, %4938
  %5832 = fmul fast float %4990, %4939
  %5833 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4661, float %4662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5834 = fcmp fast ogt float %5833, 0x3E7FF19E20000000
  %5835 = fdiv fast float 1.000000e+00, %5833
  %5836 = select i1 %5834, float %5835, float 0.000000e+00
  %5837 = fmul fast float %5836, %4660
  %5838 = fmul fast float %5836, %4661
  %5839 = fmul fast float %5836, %4662
  %5840 = fadd fast float %5837, -1.000000e+00
  %5841 = fadd fast float %5838, -1.000000e+00
  %5842 = fadd fast float %5839, -1.000000e+00
  %5843 = fmul fast float %5840, 5.000000e-01
  %5844 = fmul fast float %5841, 5.000000e-01
  %5845 = fmul fast float %5842, 5.000000e-01
  %5846 = fadd fast float %5843, 1.000000e+00
  %5847 = fadd fast float %5844, 1.000000e+00
  %5848 = fadd fast float %5845, 1.000000e+00
  %5849 = fmul fast float %5827, %4985
  %5850 = fmul fast float %5828, %4986
  %5851 = fmul fast float %5829, %4987
  %5852 = fsub fast float 1.000000e+00, %4685
  %5853 = bitcast float %5852 to i32
  %5854 = sitofp i32 %5853 to float
  %5855 = fmul fast float %5854, 5.000000e+00
  %5856 = fadd fast float %5855, 0xC1EFBF8940000000
  %5857 = fptosi float %5856 to i32
  %5858 = bitcast i32 %5857 to float
  %5859 = fmul fast float %5858, %4347
  %5860 = fmul fast float %4937, %5859
  %5861 = fmul fast float %5860, %4990
  %5862 = fmul fast float %5861, %5846
  %5863 = fmul fast float %4938, %5859
  %5864 = fmul fast float %5863, %4990
  %5865 = fmul fast float %5864, %5847
  %5866 = fmul fast float %4939, %5859
  %5867 = fmul fast float %5866, %4990
  %5868 = fmul fast float %5867, %5848
  %5869 = fmul fast float %5830, %4343
  %5870 = fmul fast float %5831, %4343
  %5871 = fmul fast float %5832, %4343
  %5872 = fadd fast float %5849, %4339
  %5873 = fadd fast float %5872, %5862
  %5874 = fmul fast float %5873, %4343
  %5875 = fadd fast float %5850, %4340
  %5876 = fadd fast float %5875, %5865
  %5877 = fmul fast float %5876, %4343
  %5878 = fadd fast float %5851, %4341
  %5879 = fadd fast float %5878, %5868
  %5880 = fmul fast float %5879, %4343
  %5881 = bitcast i32 %4709 to float
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 3
  %5884 = fcmp fast oeq float %5883, 0.000000e+00
  br i1 %5884, label %6103, label %5885

; <label>:5885                                    ; preds = %5826
  %5886 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5887 = extractvalue %dx.types.CBufRet.f32 %5882, 1
  %5888 = extractvalue %dx.types.CBufRet.f32 %5882, 2
  %5889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5889, 0
  %5891 = extractvalue %dx.types.CBufRet.f32 %5889, 1
  %5892 = extractvalue %dx.types.CBufRet.f32 %5889, 2
  %5893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.CBufRet.f32 %5893, 1
  %5896 = call float @dx.op.dot3.f32(i32 55, float %5890, float %5891, float %5892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5897 = select i1 %174, float %5894, float %5890
  %5898 = select i1 %174, float %5896, float %5891
  %5899 = select i1 %174, float %5895, float %5892
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5902 = fcmp fast une float %5901, 0.000000e+00
  br i1 %5902, label %5903, label %5920

; <label>:5903                                    ; preds = %5885
  %5904 = fptoui float %74 to i32
  %5905 = fptoui float %75 to i32
  %5906 = lshr i32 %5904, 4
  %5907 = lshr i32 %5905, 4
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 0
  %5910 = fptoui float %5909 to i32
  %5911 = add i32 %5910, 15
  %5912 = lshr i32 %5911, 4
  %5913 = mul i32 %5912, %5907
  %5914 = add i32 %5913, %5906
  %5915 = shl i32 %5914, 3
  %5916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5915, i32 undef)  ; BufferLoad(srv,index,wot)
  %5917 = extractvalue %dx.types.ResRet.i32 %5916, 0
  %5918 = and i32 %5917, -268435456
  %5919 = icmp eq i32 %5918, -1342177280
  br i1 %5919, label %5925, label %5920

; <label>:5920                                    ; preds = %5903, %5885
  %5921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %29, float %4671, float %4672, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5922 = extractvalue %dx.types.ResRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.ResRet.f32 %5921, 1
  %5924 = extractvalue %dx.types.ResRet.f32 %5921, 2
  br label %5925

; <label>:5925                                    ; preds = %5920, %5903
  %5926 = phi float [ %5922, %5920 ], [ 0.000000e+00, %5903 ]
  %5927 = phi float [ %5923, %5920 ], [ 0.000000e+00, %5903 ]
  %5928 = phi float [ %5924, %5920 ], [ 0.000000e+00, %5903 ]
  %5929 = call float @dx.op.binary.f32(i32 36, float %5927, float %5928)  ; FMin(a,b)
  %5930 = call float @dx.op.binary.f32(i32 36, float %5926, float %5929)  ; FMin(a,b)
  %5931 = fcmp fast ogt float %5930, 0.000000e+00
  br i1 %5931, label %5932, label %6103, !dx.controlflow.hints !77

; <label>:5932                                    ; preds = %5925
  %5933 = fmul fast float %5926, %5897
  %5934 = fmul fast float %5927, %5898
  %5935 = fmul fast float %5928, %5899
  %5936 = fsub fast float %5886, %4656
  %5937 = fsub fast float %5887, %4655
  %5938 = fsub fast float %5888, %4654
  %5939 = call float @dx.op.dot3.f32(i32 55, float %5936, float %5937, float %5938, float %5936, float %5937, float %5938)  ; Dot3(ax,ay,az,bx,by,bz)
  %5940 = call float @dx.op.unary.f32(i32 25, float %5939)  ; Rsqrt(value)
  %5941 = fmul fast float %5940, %5936
  %5942 = fmul fast float %5940, %5937
  %5943 = fmul fast float %5940, %5938
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5886, float %5887, float %5888, float %4663, float %4664, float %4665)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = call float @dx.op.dot3.f32(i32 55, float %4653, float %4652, float %4651, float %5941, float %5942, float %5943)  ; Dot3(ax,ay,az,bx,by,bz)
  %5946 = call float @dx.op.unary.f32(i32 7, float %5944)  ; Saturate(value)
  %5947 = fmul fast float %5946, %5946
  %5948 = fmul fast float %5947, %5881
  %5949 = call float @dx.op.unary.f32(i32 7, float %5948)  ; Saturate(value)
  %5950 = fmul fast float %5949, %5946
  %5951 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %4665, float %5941, float %5942, float %5943)  ; Dot3(ax,ay,az,bx,by,bz)
  %5952 = fmul fast float %5951, %5951
  %5953 = call float @dx.op.unary.f32(i32 6, float %5944)  ; FAbs(value)
  %5954 = fsub fast float 1.000000e+00, %4703
  %5955 = fmul fast float %4685, %4685
  %5956 = fmul fast float %5955, %5954
  %5957 = fadd fast float %5956, %4703
  %5958 = bitcast float %5957 to i32
  %5959 = ashr i32 %5958, 1
  %5960 = add nsw i32 %5959, 532487669
  %5961 = bitcast i32 %5960 to float
  %5962 = fadd fast float %5961, %4685
  %5963 = fmul fast float %4703, %5952
  %5964 = fsub fast float 1.000000e+00, %5952
  %5965 = fadd fast float %5964, %5963
  %5966 = fmul fast float %5953, %5953
  %5967 = fmul fast float %5966, %5954
  %5968 = fadd fast float %5967, %4703
  %5969 = bitcast float %5968 to i32
  %5970 = ashr i32 %5969, 1
  %5971 = add nsw i32 %5970, 532487669
  %5972 = bitcast i32 %5971 to float
  %5973 = fadd fast float %5972, %5953
  %5974 = fmul fast float %5965, %5965
  %5975 = fmul fast float %5974, %5962
  %5976 = fmul fast float %5975, %5973
  %5977 = fdiv fast float 0x3FF0A00000000000, %5976
  %5978 = fmul fast float %5977, %4703
  %5979 = call float @dx.op.unary.f32(i32 6, float %5945)  ; FAbs(value)
  %5980 = fsub fast float 1.000000e+00, %5979
  %5981 = bitcast float %5980 to i32
  %5982 = sitofp i32 %5981 to float
  %5983 = fmul fast float %5982, 5.000000e+00
  %5984 = fadd fast float %5983, 0xC1EFBF8940000000
  %5985 = fptosi float %5984 to i32
  %5986 = bitcast i32 %5985 to float
  %5987 = fsub fast float 1.000000e+00, %4657
  %5988 = fsub fast float 1.000000e+00, %4658
  %5989 = fsub fast float 1.000000e+00, %4683
  %5990 = fmul fast float %5986, %5987
  %5991 = fmul fast float %5986, %5988
  %5992 = fmul fast float %5986, %5989
  %5993 = fadd fast float %5990, %4657
  %5994 = fadd fast float %5991, %4658
  %5995 = fadd fast float %5992, %4683
  br i1 %4957, label %5996, label %6019

; <label>:5996                                    ; preds = %5932
  %5997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4346, float %5979, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5998 = extractvalue %dx.types.ResRet.f32 %5997, 0
  %5999 = extractvalue %dx.types.ResRet.f32 %5997, 1
  %6000 = extractvalue %dx.types.ResRet.f32 %5997, 2
  %6001 = fadd fast float %5998, -5.000000e-01
  %6002 = fadd fast float %5999, -5.000000e-01
  %6003 = fadd fast float %6000, -5.000000e-01
  %6004 = fmul fast float %4657, 4.000000e+00
  %6005 = fmul fast float %6004, %5987
  %6006 = fmul fast float %6005, %6001
  %6007 = fmul fast float %4658, 4.000000e+00
  %6008 = fmul fast float %6007, %5988
  %6009 = fmul fast float %6008, %6002
  %6010 = fmul fast float %4683, 4.000000e+00
  %6011 = fmul fast float %6010, %5989
  %6012 = fmul fast float %6011, %6003
  %6013 = fadd fast float %6006, %5993
  %6014 = fadd fast float %6009, %5994
  %6015 = fadd fast float %6012, %5995
  %6016 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  %6017 = call float @dx.op.unary.f32(i32 7, float %6014)  ; Saturate(value)
  %6018 = call float @dx.op.unary.f32(i32 7, float %6015)  ; Saturate(value)
  br label %6019

; <label>:6019                                    ; preds = %5996, %5932
  %6020 = phi float [ %6016, %5996 ], [ %5993, %5932 ]
  %6021 = phi float [ %6017, %5996 ], [ %5994, %5932 ]
  %6022 = phi float [ %6018, %5996 ], [ %5995, %5932 ]
  %6023 = fmul fast float %5944, 9.843750e-01
  %6024 = fadd fast float %6023, 7.812500e-03
  %6025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6024, float %4947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6026 = extractvalue %dx.types.ResRet.f32 %6025, 2
  %6027 = extractvalue %dx.types.ResRet.f32 %6025, 3
  %6028 = fmul fast float %6026, %4657
  %6029 = fmul fast float %6026, %4658
  %6030 = fmul fast float %6026, %4683
  %6031 = fadd fast float %6028, %6027
  %6032 = fadd fast float %6029, %6027
  %6033 = fadd fast float %6030, %6027
  br i1 %4957, label %6034, label %6057

; <label>:6034                                    ; preds = %6019
  %6035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4346, float %5944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6036 = extractvalue %dx.types.ResRet.f32 %6035, 0
  %6037 = extractvalue %dx.types.ResRet.f32 %6035, 1
  %6038 = extractvalue %dx.types.ResRet.f32 %6035, 2
  %6039 = fadd fast float %6036, -5.000000e-01
  %6040 = fadd fast float %6037, -5.000000e-01
  %6041 = fadd fast float %6038, -5.000000e-01
  %6042 = fmul fast float %4657, 4.000000e+00
  %6043 = fmul fast float %6042, %5987
  %6044 = fmul fast float %6043, %6039
  %6045 = fmul fast float %4658, 4.000000e+00
  %6046 = fmul fast float %6045, %5988
  %6047 = fmul fast float %6046, %6040
  %6048 = fmul fast float %4683, 4.000000e+00
  %6049 = fmul fast float %6048, %5989
  %6050 = fmul fast float %6049, %6041
  %6051 = fadd fast float %6044, %6031
  %6052 = fadd fast float %6047, %6032
  %6053 = fadd fast float %6050, %6033
  %6054 = call float @dx.op.unary.f32(i32 7, float %6051)  ; Saturate(value)
  %6055 = call float @dx.op.unary.f32(i32 7, float %6052)  ; Saturate(value)
  %6056 = call float @dx.op.unary.f32(i32 7, float %6053)  ; Saturate(value)
  br label %6057

; <label>:6057                                    ; preds = %6034, %6019
  %6058 = phi float [ %6054, %6034 ], [ %6031, %6019 ]
  %6059 = phi float [ %6055, %6034 ], [ %6032, %6019 ]
  %6060 = phi float [ %6056, %6034 ], [ %6033, %6019 ]
  %6061 = call float @dx.op.binary.f32(i32 35, float %6059, float %6060)  ; FMax(a,b)
  %6062 = call float @dx.op.binary.f32(i32 35, float %6058, float %6061)  ; FMax(a,b)
  %6063 = fsub fast float 1.000000e+00, %6062
  %6064 = fmul fast float %6020, %5978
  %6065 = fmul fast float %6021, %5978
  %6066 = fmul fast float %6022, %5978
  %6067 = fsub fast float 1.000000e+00, %5945
  %6068 = bitcast float %6067 to i32
  %6069 = sitofp i32 %6068 to float
  %6070 = fmul fast float %6069, 5.000000e+00
  %6071 = fadd fast float %6070, 0xC1EFBF8940000000
  %6072 = fptosi float %6071 to i32
  %6073 = bitcast i32 %6072 to float
  %6074 = fmul fast float %6073, %4347
  %6075 = fmul fast float %6063, %6074
  %6076 = fmul fast float %6075, %5846
  %6077 = fmul fast float %6075, %5847
  %6078 = fmul fast float %6075, %5848
  %6079 = fadd fast float %6076, %6064
  %6080 = fadd fast float %6077, %6065
  %6081 = fadd fast float %6078, %6066
  %6082 = fmul fast float %5950, %5933
  %6083 = fmul fast float %6082, %6063
  %6084 = fmul fast float %5950, %5934
  %6085 = fmul fast float %6084, %6063
  %6086 = fmul fast float %5950, %5935
  %6087 = fmul fast float %6086, %6063
  %6088 = fmul fast float %6082, %6079
  %6089 = fmul fast float %6084, %6080
  %6090 = fmul fast float %6086, %6081
  %6091 = fadd fast float %6083, %5830
  %6092 = fmul fast float %6091, %4343
  %6093 = fadd fast float %6085, %5831
  %6094 = fmul fast float %6093, %4343
  %6095 = fadd fast float %6087, %5832
  %6096 = fmul fast float %6095, %4343
  %6097 = fadd fast float %6088, %5873
  %6098 = fmul fast float %6097, %4343
  %6099 = fadd fast float %6089, %5876
  %6100 = fmul fast float %6099, %4343
  %6101 = fadd fast float %6090, %5879
  %6102 = fmul fast float %6101, %4343
  br label %6103

; <label>:6103                                    ; preds = %6057, %5925, %5826
  %6104 = phi float [ %5874, %5826 ], [ %5874, %5925 ], [ %6098, %6057 ]
  %6105 = phi float [ %5877, %5826 ], [ %5877, %5925 ], [ %6100, %6057 ]
  %6106 = phi float [ %5880, %5826 ], [ %5880, %5925 ], [ %6102, %6057 ]
  %6107 = phi float [ %5869, %5826 ], [ %5869, %5925 ], [ %6092, %6057 ]
  %6108 = phi float [ %5870, %5826 ], [ %5870, %5925 ], [ %6094, %6057 ]
  %6109 = phi float [ %5871, %5826 ], [ %5871, %5925 ], [ %6096, %6057 ]
  %6110 = call float @dx.op.unary.f32(i32 24, float %4660)  ; Sqrt(value)
  %6111 = call float @dx.op.unary.f32(i32 24, float %4661)  ; Sqrt(value)
  %6112 = call float @dx.op.unary.f32(i32 24, float %4662)  ; Sqrt(value)
  %6113 = fmul fast float %6110, %6107
  %6114 = fmul fast float %6111, %6108
  %6115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.f32 %6115, 0
  br i1 %174, label %6117, label %6140

; <label>:6117                                    ; preds = %6103
  %6118 = fadd fast float %6109, %4349
  %6119 = fmul fast float %6118, %4350
  %6120 = fsub fast float 1.000000e+00, %4350
  %6121 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.f32 %6122, 3
  %6124 = fmul fast float %6123, %6121
  %6125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.f32 %6125, 0
  %6127 = fmul fast float %6126, %5852
  %6128 = extractvalue %dx.types.CBufRet.f32 %6125, 2
  %6129 = fmul fast float %6128, %4681
  %6130 = fadd fast float %6114, %6113
  %6131 = fmul fast float %6116, %6130
  %6132 = extractvalue %dx.types.CBufRet.f32 %6122, 1
  %6133 = fadd fast float %6124, %6119
  %6134 = fsub fast float %6133, %6127
  %6135 = fadd fast float %6134, %6129
  %6136 = fsub fast float %6135, %6132
  %6137 = extractvalue %dx.types.CBufRet.f32 %6122, 2
  %6138 = fmul fast float %6136, %6137
  %6139 = call float @dx.op.unary.f32(i32 7, float %6138)  ; Saturate(value)
  br label %6156

; <label>:6140                                    ; preds = %6103
  %6141 = fmul fast float %6112, %6109
  %6142 = fmul fast float %6116, %6113
  %6143 = fmul fast float %6116, %6114
  %6144 = fmul fast float %6141, %6116
  %6145 = add i32 %34, 356
  %6146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %6145, i32 undef)  ; BufferLoad(srv,index,wot)
  %6147 = extractvalue %dx.types.ResRet.i32 %6146, 0
  %6148 = and i32 %6147, 32
  %6149 = icmp eq i32 %6148, 0
  br i1 %6149, label %6156, label %6150

; <label>:6150                                    ; preds = %6140
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 0
  %6153 = fmul fast float %6152, 0x3FE99999A0000000
  %6154 = fadd fast float %6152, %6142
  %6155 = fadd fast float %6153, %6144
  br label %6156

; <label>:6156                                    ; preds = %6150, %6140, %6117
  %6157 = phi float [ %6131, %6117 ], [ %6154, %6150 ], [ %6142, %6140 ]
  %6158 = phi float [ %6139, %6117 ], [ %6143, %6150 ], [ %6143, %6140 ]
  %6159 = phi float [ 1.000000e+00, %6117 ], [ %6155, %6150 ], [ %6144, %6140 ]
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 0
  %6162 = fmul fast float %6161, %6105
  %6163 = fmul fast float %6161, %6106
  %6164 = fadd fast float %6105, %6104
  %6165 = select i1 %174, float %6164, float %6104
  %6166 = fmul float %6165, %6161
  %6167 = select i1 %174, float 0.000000e+00, float %6162
  %6168 = select i1 %174, float 0.000000e+00, float %6163
  %6169 = fmul fast float %6157, %6110
  %6170 = fmul fast float %6158, %6111
  %6171 = fmul fast float %6159, %6112
  %6172 = fadd fast float %6166, %6169
  %6173 = fadd fast float %6167, %6170
  %6174 = fadd fast float %6168, %6171
  %6175 = select i1 %174, float %6158, float %6173
  %6176 = select i1 %174, float %6159, float %6174
  %6177 = call float @dx.op.binary.f32(i32 36, float %6172, float 3.225500e+04)  ; FMin(a,b)
  %6178 = call float @dx.op.binary.f32(i32 36, float %6175, float 3.225500e+04)  ; FMin(a,b)
  %6179 = call float @dx.op.binary.f32(i32 36, float %6176, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6177)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6178)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6179)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!44}
!dx.entryPoints = !{!45}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !35, !38}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!30 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!31 = !{i32 24, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!34 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!35 = !{!36, !37}
!36 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!37 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!38 = !{!39, !40, !41, !42, !43}
!39 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!40 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!41 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!42 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!43 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!44 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
!45 = !{void ()* @ps_main, !"ps_main", !46, !4, !71}
!46 = !{!47, !69, null}
!47 = !{!48, !51, !53, !55, !57, !59, !60, !61, !62, !63, !64, !66, !68}
!48 = !{i32 0, !"SV_Position", i8 9, i8 3, !49, i8 4, i32 1, i8 4, i32 0, i8 0, !50}
!49 = !{i32 0}
!50 = !{i32 3, i32 11}
!51 = !{i32 1, !"COLOR", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 1, i8 0, !52}
!52 = !{i32 3, i32 14}
!53 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 2, i8 0, !54}
!54 = !{i32 3, i32 3}
!55 = !{i32 3, !"NORMAL", i8 9, i8 0, !49, i8 2, i32 1, i8 3, i32 3, i8 0, !56}
!56 = !{i32 3, i32 7}
!57 = !{i32 4, !"TANGENT", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 4, i8 0, !58}
!58 = !{i32 3, i32 15}
!59 = !{i32 5, !"SH_RED", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, !58}
!60 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 6, i8 0, !58}
!61 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 7, i8 0, !58}
!62 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !49, i8 2, i32 1, i8 2, i32 8, i8 0, !54}
!63 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 9, i8 0, !58}
!64 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !49, i8 1, i32 1, i8 4, i32 10, i8 0, !65}
!65 = !{i32 3, i32 13}
!66 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !49, i8 1, i32 1, i8 1, i32 11, i8 0, !67}
!67 = !{i32 3, i32 1}
!68 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !49, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!69 = !{!70}
!70 = !{i32 0, !"SV_Target", i8 9, i8 16, !49, i8 0, i32 1, i8 4, i32 0, i8 0, !58}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

