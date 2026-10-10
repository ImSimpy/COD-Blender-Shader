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
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 7cca8676c9842aa0bce89988dffadb4b
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
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = fmul fast float %71, %65
  %73 = fmul fast float %71, %66
  %74 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %75 = bitcast float %74 to i32
  %76 = ashr i32 %75, 1
  %77 = sub nsw i32 1597250115, %76
  %78 = bitcast i32 %77 to float
  %79 = fmul fast float %78, %57
  %80 = fmul fast float %78, %58
  %81 = fmul fast float %78, %59
  %82 = fmul fast float %58, %55
  %83 = fmul fast float %59, %54
  %84 = fsub fast float %82, %83
  %85 = fmul fast float %59, %53
  %86 = fmul fast float %57, %55
  %87 = fsub fast float %85, %86
  %88 = fmul fast float %57, %54
  %89 = fmul fast float %58, %53
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %84, %56
  %92 = fmul fast float %87, %56
  %93 = fmul fast float %90, %56
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %97 = fmul fast float %72, 2.000000e+00
  %98 = fmul fast float %97, %95
  %99 = fmul fast float %73, 2.000000e+00
  %100 = fmul fast float %99, %96
  %101 = fsub fast float 1.000000e+00, %98
  %102 = fsub fast float 1.000000e+00, %100
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = fmul fast float %101, %104
  %108 = fmul fast float %101, %105
  %109 = fmul fast float %101, %106
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %102, %111
  %115 = fmul fast float %102, %112
  %116 = fmul fast float %102, %113
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fadd fast float %114, %118
  %122 = fadd fast float %121, %107
  %123 = fadd fast float %115, %119
  %124 = fadd fast float %123, %108
  %125 = fadd fast float %116, %120
  %126 = fadd fast float %125, %109
  %127 = fmul fast float %122, %67
  %128 = fmul fast float %124, %67
  %129 = fmul fast float %126, %67
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %133 = fmul fast float %131, %72
  %134 = fmul fast float %132, %73
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = and i32 %136, 114688
  %138 = icmp ne i32 %137, 0
  %139 = select i1 %138, float %133, float 0.000000e+00
  %140 = select i1 %138, float %134, float 0.000000e+00
  %141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %29, float %139, float %140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = fmul fast float %142, 2.550000e+02
  %144 = fptoui float %143 to i32
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.i32 %146, 3
  %148 = and i32 %147, 3
  %149 = icmp ne i32 %148, 0
  %150 = and i32 %147, 4
  %151 = icmp ne i32 %150, 0
  %152 = and i1 %149, %151
  br i1 %152, label %153, label %164

; <label>:153                                     ; preds = %0
  %154 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %155 = fmul fast float %154, %73
  %156 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %157 = fmul fast float %156, %72
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %28, float %157, float %155, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = fsub fast float 1.000000e+00, %159
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = fcmp fast olt float %160, %162
  br label %167

; <label>:164                                     ; preds = %0
  %165 = icmp eq i32 %150, 0
  %166 = and i1 %149, %165
  br label %167

; <label>:167                                     ; preds = %164, %153
  %168 = phi i1 [ %163, %153 ], [ %166, %164 ]
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %171 = fmul fast float %170, 0x3FE3C6EF40000000
  %172 = frem fast float %72, 2.560000e+02
  %173 = frem fast float %73, 2.560000e+02
  %174 = fptoui float %172 to i32
  %175 = fptoui float %173 to i32
  %176 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %174, i32 %175, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = extractvalue %dx.types.ResRet.f32 %176, 1
  %179 = fadd fast float %177, %171
  %180 = fadd fast float %178, %171
  %181 = call float @dx.op.unary.f32(i32 22, float %179)  ; Frc(value)
  %182 = call float @dx.op.unary.f32(i32 22, float %180)  ; Frc(value)
  %183 = add i32 %32, 156
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = shl i32 %185, 4
  %187 = and i32 %186, 32752
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = lshr i32 %185, 7
  %190 = and i32 %189, 32752
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = lshr i32 %185, 22
  %193 = shl nuw nsw i32 %192, 5
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = add i32 %32, 216
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = and i32 %197, 255
  %199 = uitofp i32 %198 to float
  %200 = fmul fast float %199, 0x3F70101020000000
  %201 = lshr i32 %197, 8
  %202 = and i32 %201, 255
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F70101020000000
  %205 = lshr i32 %197, 16
  %206 = and i32 %205, 255
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %207, 0x3F70101020000000
  %209 = add i32 %32, 36
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %211, 65535
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %211, 16
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = add i32 %32, 288
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 65535
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %218, 16
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = fmul fast float %220, 0x3F50624DE0000000
  %224 = fmul fast float %222, 0x3F50624DE0000000
  %225 = add i32 %32, 172
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = shl i32 %227, 4
  %229 = and i32 %228, 32752
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %227, 7
  %232 = and i32 %231, 32752
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %227, 22
  %235 = shl nuw nsw i32 %234, 5
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = add i32 %32, 232
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 255
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F70101020000000
  %243 = lshr i32 %239, 8
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %239, 16
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = add i32 %32, 52
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 65535
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %253, 16
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = add i32 %32, 304
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 65535
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %260, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = fmul fast float %262, 0x3F50624DE0000000
  %266 = fmul fast float %264, 0x3F50624DE0000000
  %267 = add i32 %32, 188
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = shl i32 %269, 4
  %271 = and i32 %270, 32752
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %269, 7
  %274 = and i32 %273, 32752
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %269, 22
  %277 = shl nuw nsw i32 %276, 5
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = add i32 %32, 248
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = lshr i32 %281, 8
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %281, 16
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = add i32 %32, 68
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 65535
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %295, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = add i32 %32, 320
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = fmul fast float %304, 0x3F50624DE0000000
  %308 = fmul fast float %306, 0x3F50624DE0000000
  %309 = add i32 %32, 204
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = shl i32 %311, 4
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %311, 7
  %316 = and i32 %315, 32752
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %311, 22
  %319 = shl nuw nsw i32 %318, 5
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = add i32 %32, 264
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = lshr i32 %323, 8
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %323, 16
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = add i32 %32, 84
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %337, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = add i32 %32, 336
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = fmul fast float %346, 0x3F50624DE0000000
  %350 = fmul fast float %348, 0x3F50624DE0000000
  %351 = add i32 %32, 348
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 32
  %355 = icmp eq i32 %354, 0
  %356 = and i32 %353, 64
  %357 = icmp eq i32 %356, 0
  %358 = and i32 %353, 128
  %359 = icmp eq i32 %358, 0
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 2
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %377, label %364

; <label>:364                                     ; preds = %167
  %365 = add i32 %32, 492
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = add i32 %367, 0
  %369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %369, %dx.types.Handle %69, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = extractvalue %dx.types.ResRet.f32 %370, 2
  %374 = fmul fast float %371, %62
  %375 = fmul fast float %372, %63
  %376 = fmul fast float %373, %64
  br label %377

; <label>:377                                     ; preds = %364, %167
  %378 = phi float [ %64, %167 ], [ %376, %364 ]
  %379 = phi float [ %63, %167 ], [ %375, %364 ]
  %380 = phi float [ %62, %167 ], [ %374, %364 ]
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 2
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %404, label %385

; <label>:385                                     ; preds = %377
  %386 = add i32 %32, 44
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 1
  %390 = icmp ne i32 %389, 0
  %391 = select i1 %390, float %380, float 1.000000e+00
  %392 = add i32 %32, 60
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 1
  %396 = icmp ne i32 %395, 0
  %397 = select i1 %396, float %379, float 1.000000e+00
  %398 = add i32 %32, 76
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 1
  %402 = icmp ne i32 %401, 0
  %403 = select i1 %402, float %378, float 1.000000e+00
  br label %404

; <label>:404                                     ; preds = %385, %377
  %405 = phi float [ %378, %377 ], [ %403, %385 ]
  %406 = phi float [ %379, %377 ], [ %397, %385 ]
  %407 = phi float [ %380, %377 ], [ %391, %385 ]
  %408 = lshr i32 %382, 20
  %409 = and i32 %408, 3
  %410 = add nuw nsw i32 %409, 1
  %411 = add i32 %32, 24
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %32, 28
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = or i32 %416, %413
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %930, label %419

; <label>:419                                     ; preds = %404
  %420 = and i32 %413, 262144
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %35, float 1.000000e+00
  %423 = select i1 %421, float %36, float 0.000000e+00
  %424 = select i1 %421, float %37, float 0.000000e+00
  %425 = select i1 %421, float %38, float 1.000000e+00
  %426 = select i1 %421, float %39, float %60
  %427 = select i1 %421, float %40, float %61
  %428 = add i32 %32, 284
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = lshr i32 %430, 16
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = fmul fast float %432, 0x3F50624DE0000000
  %434 = add i32 %32, 88
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = lshr i32 %436, 16
  %438 = and i32 %437, 255
  %439 = lshr i32 %436, 24
  %440 = add i32 %32, 292
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 65535
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %442, 16
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = add i32 %32, 32
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = lshr i32 %449, 22
  %451 = shl nuw nsw i32 %450, 5
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = shl i32 %449, 4
  %454 = and i32 %453, 32752
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = lshr i32 %449, 7
  %457 = and i32 %456, 32752
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 3
  %461 = fmul fast float %460, 1.000000e+03
  %462 = fmul fast float %223, %461
  %463 = call float @dx.op.unary.f32(i32 22, float %462)  ; Frc(value)
  %464 = fadd fast float %463, %213
  %465 = fmul fast float %224, %461
  %466 = call float @dx.op.unary.f32(i32 22, float %465)  ; Frc(value)
  %467 = fadd fast float %466, %215
  %468 = fmul fast float %433, %461
  %469 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %470 = fmul fast float %469, 0x401921FB60000000
  %471 = fadd fast float %470, %452
  %472 = call float @dx.op.unary.f32(i32 13, float %471)  ; Sin(value)
  %473 = call float @dx.op.unary.f32(i32 12, float %471)  ; Cos(value)
  %474 = fsub fast float -0.000000e+00, %472
  %475 = fadd fast float %426, -5.000000e-01
  %476 = fadd fast float %427, -5.000000e-01
  %477 = fmul fast float %444, %475
  %478 = fmul fast float %446, %476
  %479 = fadd fast float %477, 5.000000e-01
  %480 = fadd fast float %478, 5.000000e-01
  %481 = fmul fast float %455, %479
  %482 = fmul fast float %458, %480
  %483 = fmul fast float %473, %481
  %484 = call float @dx.op.tertiary.f32(i32 46, float %474, float %482, float %483)  ; FMad(a,b,c)
  %485 = fmul fast float %472, %481
  %486 = call float @dx.op.tertiary.f32(i32 46, float %473, float %482, float %485)  ; FMad(a,b,c)
  %487 = fadd fast float %464, %484
  %488 = fadd fast float %467, %486
  %489 = icmp ugt i32 %438, 1
  %490 = icmp ugt i32 %436, 33554431
  %491 = or i1 %490, %489
  br i1 %491, label %492, label %517

; <label>:492                                     ; preds = %419
  %493 = add i32 %32, 228
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = lshr i32 %495, 16
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = fmul fast float %460, %497
  %499 = call float @dx.op.unary.f32(i32 22, float %498)  ; Frc(value)
  %500 = mul nuw nsw i32 %438, %439
  %501 = uitofp i32 %500 to float
  %502 = fmul fast float %499, %501
  %503 = call float @dx.op.unary.f32(i32 27, float %502)  ; Round_ni(value)
  %504 = fptoui float %503 to i32
  %505 = urem i32 %504, %438
  %506 = udiv i32 %504, %439
  %507 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %508 = call float @dx.op.unary.f32(i32 22, float %488)  ; Frc(value)
  %509 = uitofp i32 %505 to float
  %510 = uitofp i32 %506 to float
  %511 = fadd fast float %507, %509
  %512 = fadd fast float %508, %510
  %513 = uitofp i32 %438 to float
  %514 = uitofp i32 %439 to float
  %515 = fdiv fast float %511, %513
  %516 = fdiv fast float %512, %514
  br label %517

; <label>:517                                     ; preds = %492, %419
  %518 = phi float [ %515, %492 ], [ %487, %419 ]
  %519 = phi float [ %516, %492 ], [ %488, %419 ]
  %520 = and i32 %413, 16
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %718, label %522

; <label>:522                                     ; preds = %517
  %523 = add i32 %32, 376
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = add i32 %525, 0
  %527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %528 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %527, %dx.types.Handle %68, float %518, float %519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = extractvalue %dx.types.ResRet.f32 %528, 2
  %532 = extractvalue %dx.types.ResRet.f32 %528, 3
  %533 = and i32 %436, 255
  %534 = uitofp i32 %533 to float
  %535 = lshr i32 %436, 8
  %536 = and i32 %535, 255
  %537 = uitofp i32 %536 to float
  %538 = fmul fast float %532, %534
  %539 = fadd fast float %538, %537
  %540 = fmul fast float %539, 0x3F70101000000000
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %542, 512
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %553, label %545

; <label>:545                                     ; preds = %522
  %546 = add i32 %32, 460
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = add i32 %548, 0
  %550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %551 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %550, %dx.types.Handle %69, float %518, float %519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  br label %553

; <label>:553                                     ; preds = %545, %522
  %554 = phi float [ %552, %545 ], [ 1.000000e+00, %522 ]
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 33554432
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %665, label %559

; <label>:559                                     ; preds = %553
  %560 = add i32 %32, 224
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 65535
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = lshr i32 %562, 16
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = add i32 %32, 228
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = and i32 %569, 65535
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = lshr i32 %573, 24
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = and i32 %573, 255
  %578 = uitofp i32 %577 to float
  %579 = fmul fast float %578, 0x3F70101020000000
  %580 = lshr i32 %573, 8
  %581 = and i32 %580, 255
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %582, 0x3F70101020000000
  %584 = lshr i32 %573, 16
  %585 = and i32 %584, 255
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3F70101020000000
  %588 = add i32 %32, 220
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = lshr i32 %590, 24
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = and i32 %590, 255
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %595, 0x3F70101020000000
  %597 = lshr i32 %590, 8
  %598 = and i32 %597, 255
  %599 = uitofp i32 %598 to float
  %600 = fmul fast float %599, 0x3F70101020000000
  %601 = lshr i32 %590, 16
  %602 = and i32 %601, 255
  %603 = uitofp i32 %602 to float
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = bitcast float %529 to i32
  %606 = ashr i32 %605, 1
  %607 = sub nsw i32 1597463174, %606
  %608 = bitcast i32 %607 to float
  %609 = fmul fast float %529, 5.000000e-01
  %610 = fmul fast float %608, %608
  %611 = fmul fast float %610, %609
  %612 = fsub fast float 1.500000e+00, %611
  %613 = fmul fast float %608, %529
  %614 = fmul fast float %613, %612
  %615 = bitcast float %530 to i32
  %616 = ashr i32 %615, 1
  %617 = sub nsw i32 1597463174, %616
  %618 = bitcast i32 %617 to float
  %619 = fmul fast float %530, 5.000000e-01
  %620 = fmul fast float %618, %618
  %621 = fmul fast float %620, %619
  %622 = fsub fast float 1.500000e+00, %621
  %623 = fmul fast float %618, %530
  %624 = fmul fast float %623, %622
  %625 = bitcast float %531 to i32
  %626 = ashr i32 %625, 1
  %627 = sub nsw i32 1597463174, %626
  %628 = bitcast i32 %627 to float
  %629 = fmul fast float %531, 5.000000e-01
  %630 = fmul fast float %628, %628
  %631 = fmul fast float %630, %629
  %632 = fsub fast float 1.500000e+00, %631
  %633 = fmul fast float %628, %531
  %634 = fmul fast float %633, %632
  %635 = fsub fast float %614, %596
  %636 = fsub fast float %624, %600
  %637 = fsub fast float %634, %604
  %638 = fmul fast float %635, %564
  %639 = fmul fast float %636, %566
  %640 = fmul fast float %637, %571
  %641 = fadd fast float %638, %579
  %642 = fadd fast float %639, %583
  %643 = fadd fast float %640, %587
  %644 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %645 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %646 = call float @dx.op.unary.f32(i32 7, float %643)  ; Saturate(value)
  %647 = fmul fast float %644, %644
  %648 = fmul fast float %645, %645
  %649 = fmul fast float %646, %646
  %650 = fsub fast float %647, %529
  %651 = fsub fast float %648, %530
  %652 = fsub fast float %649, %531
  %653 = fmul fast float %650, %554
  %654 = fmul fast float %651, %554
  %655 = fmul fast float %652, %554
  %656 = fadd fast float %653, %529
  %657 = fadd fast float %654, %530
  %658 = fadd fast float %655, %531
  %659 = fadd fast float %576, %540
  %660 = fsub fast float %659, %593
  %661 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %662 = fsub fast float %661, %540
  %663 = fmul fast float %662, %554
  %664 = fadd fast float %663, %540
  br label %718

; <label>:665                                     ; preds = %553
  %666 = and i32 %556, 134217728
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %702, label %668

; <label>:668                                     ; preds = %665
  %669 = call float @dx.op.unary.f32(i32 24, float %200)  ; Sqrt(value)
  %670 = call float @dx.op.unary.f32(i32 24, float %204)  ; Sqrt(value)
  %671 = call float @dx.op.unary.f32(i32 24, float %208)  ; Sqrt(value)
  %672 = fadd fast float %669, -5.000000e-01
  %673 = fadd fast float %670, -5.000000e-01
  %674 = fadd fast float %671, -5.000000e-01
  %675 = fmul fast float %672, %554
  %676 = fmul fast float %673, %554
  %677 = fmul fast float %674, %554
  %678 = fadd fast float %675, 5.000000e-01
  %679 = fadd fast float %676, 5.000000e-01
  %680 = fadd fast float %677, 5.000000e-01
  %681 = call float @dx.op.unary.f32(i32 24, float %529)  ; Sqrt(value)
  %682 = call float @dx.op.unary.f32(i32 24, float %530)  ; Sqrt(value)
  %683 = call float @dx.op.unary.f32(i32 24, float %531)  ; Sqrt(value)
  %684 = fmul fast float %678, 2.000000e+00
  %685 = fsub fast float 1.000000e+00, %684
  %686 = fmul fast float %685, %681
  %687 = fadd fast float %686, %684
  %688 = fmul fast float %687, %681
  %689 = fmul fast float %679, 2.000000e+00
  %690 = fsub fast float 1.000000e+00, %689
  %691 = fmul fast float %690, %682
  %692 = fadd fast float %691, %689
  %693 = fmul fast float %692, %682
  %694 = fmul fast float %680, 2.000000e+00
  %695 = fsub fast float 1.000000e+00, %694
  %696 = fmul fast float %695, %683
  %697 = fadd fast float %696, %694
  %698 = fmul fast float %697, %683
  %699 = fmul fast float %688, %688
  %700 = fmul fast float %693, %693
  %701 = fmul fast float %698, %698
  br label %718

; <label>:702                                     ; preds = %665
  %703 = fmul fast float %200, %200
  %704 = fmul fast float %204, %204
  %705 = fmul fast float %208, %208
  %706 = fadd fast float %703, -1.000000e+00
  %707 = fadd fast float %704, -1.000000e+00
  %708 = fadd fast float %705, -1.000000e+00
  %709 = fmul fast float %554, %706
  %710 = fmul fast float %554, %707
  %711 = fmul fast float %554, %708
  %712 = fadd fast float %709, 1.000000e+00
  %713 = fadd fast float %710, 1.000000e+00
  %714 = fadd fast float %711, 1.000000e+00
  %715 = fmul fast float %712, %529
  %716 = fmul fast float %713, %530
  %717 = fmul fast float %714, %531
  br label %718

; <label>:718                                     ; preds = %702, %668, %559, %517
  %719 = phi float [ %664, %559 ], [ %540, %668 ], [ %540, %702 ], [ 0x3FA23C0BE0000000, %517 ]
  %720 = phi float [ %656, %559 ], [ %699, %668 ], [ %715, %702 ], [ 1.000000e+00, %517 ]
  %721 = phi float [ %657, %559 ], [ %700, %668 ], [ %716, %702 ], [ 1.000000e+00, %517 ]
  %722 = phi float [ %658, %559 ], [ %701, %668 ], [ %717, %702 ], [ 1.000000e+00, %517 ]
  %723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.i32 %723, 1
  %725 = and i32 %724, 1
  %726 = icmp ne i32 %725, 0
  %727 = add i32 %32, 356
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 32
  %731 = icmp ne i32 %730, 0
  %732 = and i1 %726, %731
  %733 = select i1 %732, float 1.000000e+00, float %720
  %734 = select i1 %732, float 0x3FD3333340000000, float %721
  %735 = select i1 %732, float 0x3FD3333340000000, float %722
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 32
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %812, label %740

; <label>:740                                     ; preds = %718
  %741 = add i32 %32, 92
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = add i32 %32, 392
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = add i32 %746, 0
  %748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %749 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %748, %dx.types.Handle %68, float %518, float %519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = extractvalue %dx.types.ResRet.f32 %749, 3
  %754 = and i32 %743, 255
  %755 = uitofp i32 %754 to float
  %756 = lshr i32 %743, 8
  %757 = and i32 %756, 255
  %758 = uitofp i32 %757 to float
  %759 = lshr i32 %743, 16
  %760 = and i32 %759, 255
  %761 = uitofp i32 %760 to float
  %762 = fmul fast float %761, 0x3F70101000000000
  %763 = fmul fast float %750, %755
  %764 = fadd fast float %763, %758
  %765 = fmul fast float %764, 0x3F70101000000000
  %766 = fadd fast float %751, -5.000000e-01
  %767 = fadd fast float %753, -5.000000e-01
  %768 = fmul fast float %766, %762
  %769 = fmul fast float %767, %762
  %770 = fadd fast float %768, 5.000000e-01
  %771 = fadd fast float %769, 5.000000e-01
  %772 = fmul fast float %770, 2.000000e+00
  %773 = fadd fast float %772, -1.000000e+00
  %774 = fmul fast float %771, 2.000000e+00
  %775 = fadd fast float %774, -1.000000e+00
  %776 = fadd fast float %773, %775
  %777 = fmul fast float %776, 5.000000e-01
  %778 = fsub fast float %773, %775
  %779 = fmul fast float %778, 5.000000e-01
  %780 = call float @dx.op.unary.f32(i32 6, float %777)  ; FAbs(value)
  %781 = fsub fast float 1.000000e+00, %780
  %782 = call float @dx.op.unary.f32(i32 6, float %779)  ; FAbs(value)
  %783 = fsub fast float %781, %782
  %784 = call float @dx.op.dot3.f32(i32 55, float %777, float %779, float %783, float %777, float %779, float %783)  ; Dot3(ax,ay,az,bx,by,bz)
  %785 = call float @dx.op.unary.f32(i32 25, float %784)  ; Rsqrt(value)
  %786 = fmul fast float %777, %785
  %787 = fmul fast float %779, %785
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 67108864
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %808, label %792

; <label>:792                                     ; preds = %740
  %793 = add i32 %32, 280
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = and i32 %795, 65535
  %797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %796)  ; LegacyF16ToF32(value)
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 65535
  %801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %800)  ; LegacyF16ToF32(value)
  %802 = lshr i32 %795, 16
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = fsub fast float %765, %803
  %805 = fmul fast float %804, %797
  %806 = fadd fast float %805, %801
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  br label %808

; <label>:808                                     ; preds = %792, %740
  %809 = phi float [ %807, %792 ], [ %765, %740 ]
  %810 = call float @dx.op.dot2.f32(i32 54, float %786, float %787, float %422, float %423)  ; Dot2(ax,ay,bx,by)
  %811 = call float @dx.op.dot2.f32(i32 54, float %786, float %787, float %424, float %425)  ; Dot2(ax,ay,bx,by)
  br label %812

; <label>:812                                     ; preds = %808, %718
  %813 = phi float [ %809, %808 ], [ 0x3FD6666660000000, %718 ]
  %814 = phi float [ %810, %808 ], [ 0.000000e+00, %718 ]
  %815 = phi float [ %811, %808 ], [ 0.000000e+00, %718 ]
  %816 = phi float [ %752, %808 ], [ 1.000000e+00, %718 ]
  %817 = add i32 %32, 160
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = lshr i32 %819, 22
  %821 = shl nuw nsw i32 %820, 5
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 64
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %860, label %827

; <label>:827                                     ; preds = %812
  %828 = add i32 %32, 408
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = add i32 %830, 0
  %832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = and i32 %834, 131072
  %836 = icmp eq i32 %835, 0
  %837 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %832, %dx.types.Handle %68, float %518, float %519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = extractvalue %dx.types.ResRet.f32 %837, 1
  %840 = extractvalue %dx.types.ResRet.f32 %837, 2
  %841 = fmul fast float %838, %188
  %842 = fmul fast float %839, %191
  %843 = fmul fast float %840, %194
  br i1 %836, label %850, label %844

; <label>:844                                     ; preds = %827
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = fmul fast float %846, %841
  %848 = fmul fast float %846, %842
  %849 = fmul fast float %846, %843
  br label %850

; <label>:850                                     ; preds = %844, %827
  %851 = phi float [ %847, %844 ], [ %841, %827 ]
  %852 = phi float [ %848, %844 ], [ %842, %827 ]
  %853 = phi float [ %849, %844 ], [ %843, %827 ]
  %854 = fmul fast float %851, %822
  %855 = select i1 %168, float %854, float %851
  %856 = call float @dx.op.dot3.f32(i32 55, float %855, float %852, float %853, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %857 = select i1 %168, float 0.000000e+00, float %851
  %858 = select i1 %168, float %856, float %852
  %859 = select i1 %168, float 0.000000e+00, float %853
  br label %860

; <label>:860                                     ; preds = %850, %812
  %861 = phi float [ %857, %850 ], [ 0.000000e+00, %812 ]
  %862 = phi float [ %858, %850 ], [ 0.000000e+00, %812 ]
  %863 = phi float [ %859, %850 ], [ 0.000000e+00, %812 ]
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = and i32 %865, 10240
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %912, label %868

; <label>:868                                     ; preds = %860
  %869 = add i32 %32, 476
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = add i32 %871, 0
  %873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %872, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %874 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %873, %dx.types.Handle %69, float %518, float %519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 1
  %876 = extractvalue %dx.types.ResRet.f32 %874, 3
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = and i32 %878, 1048576
  %880 = icmp ne i32 %879, 0
  %881 = and i32 %878, 8192
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %898, label %883

; <label>:883                                     ; preds = %868
  %884 = extractvalue %dx.types.ResRet.f32 %874, 2
  %885 = select i1 %880, float %884, float %875
  %886 = extractvalue %dx.types.ResRet.f32 %874, 0
  %887 = select i1 %880, float %886, float %875
  %888 = add i32 %32, 96
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = lshr i32 %890, 16
  %892 = and i32 %891, 255
  %893 = uitofp i32 %892 to float
  %894 = fmul fast float %893, 0x3F80101020000000
  %895 = fmul fast float %894, %887
  %896 = fmul fast float %894, %875
  %897 = fmul fast float %894, %885
  br label %898

; <label>:898                                     ; preds = %883, %868
  %899 = phi float [ %895, %883 ], [ 0.000000e+00, %868 ]
  %900 = phi float [ %896, %883 ], [ 0.000000e+00, %868 ]
  %901 = phi float [ %897, %883 ], [ 0.000000e+00, %868 ]
  %902 = and i32 %878, 2048
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %912, label %904

; <label>:904                                     ; preds = %898
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = shl i32 %906, 4
  %908 = and i32 %907, 32752
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  %910 = fmul fast float %909, %876
  %911 = call float @dx.op.binary.f32(i32 35, float %910, float 0x3F70101020000000)  ; FMax(a,b)
  br label %912

; <label>:912                                     ; preds = %904, %898, %860
  %913 = phi float [ %899, %904 ], [ %899, %898 ], [ 0.000000e+00, %860 ]
  %914 = phi float [ %900, %904 ], [ %900, %898 ], [ 0.000000e+00, %860 ]
  %915 = phi float [ %901, %904 ], [ %901, %898 ], [ 0.000000e+00, %860 ]
  %916 = phi float [ %911, %904 ], [ 0x3F70101020000000, %898 ], [ 0x3F70101020000000, %860 ]
  %917 = add i32 %32, 96
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = and i32 %919, 255
  %921 = uitofp i32 %920 to float
  %922 = lshr i32 %919, 8
  %923 = and i32 %922, 255
  %924 = uitofp i32 %923 to float
  %925 = call float @dx.op.dot3.f32(i32 55, float %733, float %734, float %735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = fmul fast float %924, %925
  %927 = fadd fast float %926, %921
  %928 = fmul fast float %927, 0x3F70101020000000
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  br label %930

; <label>:930                                     ; preds = %912, %404
  %931 = phi float [ 0.000000e+00, %404 ], [ %814, %912 ]
  %932 = phi float [ 0.000000e+00, %404 ], [ %815, %912 ]
  %933 = phi float [ 0.000000e+00, %404 ], [ %733, %912 ]
  %934 = phi float [ 0.000000e+00, %404 ], [ %734, %912 ]
  %935 = phi float [ 0.000000e+00, %404 ], [ %735, %912 ]
  %936 = phi float [ 0.000000e+00, %404 ], [ %861, %912 ]
  %937 = phi float [ 0.000000e+00, %404 ], [ %862, %912 ]
  %938 = phi float [ 0.000000e+00, %404 ], [ %863, %912 ]
  %939 = phi float [ 0.000000e+00, %404 ], [ %913, %912 ]
  %940 = phi float [ 0.000000e+00, %404 ], [ %914, %912 ]
  %941 = phi float [ 0.000000e+00, %404 ], [ %915, %912 ]
  %942 = phi float [ 0.000000e+00, %404 ], [ %719, %912 ]
  %943 = phi float [ 0.000000e+00, %404 ], [ 1.000000e+00, %912 ]
  %944 = phi float [ 0.000000e+00, %404 ], [ %813, %912 ]
  %945 = phi float [ 0.000000e+00, %404 ], [ %816, %912 ]
  %946 = phi float [ 0.000000e+00, %404 ], [ %916, %912 ]
  %947 = phi float [ 0.000000e+00, %404 ], [ %929, %912 ]
  br i1 %355, label %1876, label %948

; <label>:948                                     ; preds = %930
  %949 = icmp ult i32 %410, 2
  %950 = add i32 %32, 40
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = add i32 %32, 44
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = or i32 %955, %952
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %1876, label %958

; <label>:958                                     ; preds = %948
  %959 = and i32 %952, 262144
  %960 = icmp ne i32 %959, 0
  %961 = select i1 %960, float %35, float 1.000000e+00
  %962 = select i1 %960, float %36, float 0.000000e+00
  %963 = select i1 %960, float %37, float 0.000000e+00
  %964 = select i1 %960, float %38, float 1.000000e+00
  %965 = select i1 %960, float %39, float %60
  %966 = select i1 %960, float %40, float %61
  %967 = add i32 %32, 300
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = lshr i32 %969, 16
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = fmul fast float %971, 0x3F50624DE0000000
  %973 = add i32 %32, 104
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = lshr i32 %975, 16
  %977 = and i32 %976, 255
  %978 = lshr i32 %975, 24
  %979 = add i32 %32, 308
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 65535
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = lshr i32 %981, 16
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = add i32 %32, 48
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = lshr i32 %988, 22
  %990 = shl nuw nsw i32 %989, 5
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = shl i32 %988, 4
  %993 = and i32 %992, 32752
  %994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %993)  ; LegacyF16ToF32(value)
  %995 = lshr i32 %988, 7
  %996 = and i32 %995, 32752
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 3
  %1000 = fmul fast float %999, 1.000000e+03
  %1001 = fmul fast float %265, %1000
  %1002 = call float @dx.op.unary.f32(i32 22, float %1001)  ; Frc(value)
  %1003 = fadd fast float %1002, %255
  %1004 = fmul fast float %266, %1000
  %1005 = call float @dx.op.unary.f32(i32 22, float %1004)  ; Frc(value)
  %1006 = fadd fast float %1005, %257
  %1007 = fmul fast float %972, %1000
  %1008 = call float @dx.op.unary.f32(i32 22, float %1007)  ; Frc(value)
  %1009 = fmul fast float %1008, 0x401921FB60000000
  %1010 = fadd fast float %1009, %991
  %1011 = call float @dx.op.unary.f32(i32 13, float %1010)  ; Sin(value)
  %1012 = call float @dx.op.unary.f32(i32 12, float %1010)  ; Cos(value)
  %1013 = fsub fast float -0.000000e+00, %1011
  %1014 = fadd fast float %965, -5.000000e-01
  %1015 = fadd fast float %966, -5.000000e-01
  %1016 = fmul fast float %983, %1014
  %1017 = fmul fast float %985, %1015
  %1018 = fadd fast float %1016, 5.000000e-01
  %1019 = fadd fast float %1017, 5.000000e-01
  %1020 = fmul fast float %994, %1018
  %1021 = fmul fast float %997, %1019
  %1022 = fmul fast float %1012, %1020
  %1023 = call float @dx.op.tertiary.f32(i32 46, float %1013, float %1021, float %1022)  ; FMad(a,b,c)
  %1024 = fmul fast float %1011, %1020
  %1025 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %1021, float %1024)  ; FMad(a,b,c)
  %1026 = fadd fast float %1003, %1023
  %1027 = fadd fast float %1006, %1025
  %1028 = icmp ugt i32 %977, 1
  %1029 = icmp ugt i32 %975, 33554431
  %1030 = or i1 %1029, %1028
  br i1 %1030, label %1031, label %1056

; <label>:1031                                    ; preds = %958
  %1032 = add i32 %32, 244
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = lshr i32 %1034, 16
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = fmul fast float %999, %1036
  %1038 = call float @dx.op.unary.f32(i32 22, float %1037)  ; Frc(value)
  %1039 = mul nuw nsw i32 %977, %978
  %1040 = uitofp i32 %1039 to float
  %1041 = fmul fast float %1038, %1040
  %1042 = call float @dx.op.unary.f32(i32 27, float %1041)  ; Round_ni(value)
  %1043 = fptoui float %1042 to i32
  %1044 = urem i32 %1043, %977
  %1045 = udiv i32 %1043, %978
  %1046 = call float @dx.op.unary.f32(i32 22, float %1026)  ; Frc(value)
  %1047 = call float @dx.op.unary.f32(i32 22, float %1027)  ; Frc(value)
  %1048 = uitofp i32 %1044 to float
  %1049 = uitofp i32 %1045 to float
  %1050 = fadd fast float %1046, %1048
  %1051 = fadd fast float %1047, %1049
  %1052 = uitofp i32 %977 to float
  %1053 = uitofp i32 %978 to float
  %1054 = fdiv fast float %1050, %1052
  %1055 = fdiv fast float %1051, %1053
  br label %1056

; <label>:1056                                    ; preds = %1031, %958
  %1057 = phi float [ %1054, %1031 ], [ %1026, %958 ]
  %1058 = phi float [ %1055, %1031 ], [ %1027, %958 ]
  %1059 = and i32 %952, 16777216
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1170, label %1061

; <label>:1061                                    ; preds = %1056
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.CBufRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.CBufRet.f32 %1062, 2
  %1066 = fadd fast float %1063, %127
  %1067 = fadd fast float %1064, %128
  %1068 = fadd fast float %1065, %129
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 0
  %1071 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  %1072 = icmp eq i32 %33, 65535
  br i1 %1072, label %1167, label %1073

; <label>:1073                                    ; preds = %1061
  %1074 = lshr i32 %33, 1
  %1075 = shl i32 %1074, 2
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = and i32 %33, 1
  %1079 = icmp ne i32 %1078, 0
  %1080 = lshr i32 %1077, 16
  %1081 = and i32 %1077, 65535
  %1082 = select i1 %1079, i32 %1080, i32 %1081
  %1083 = icmp eq i32 %1082, 65535
  br i1 %1083, label %1163, label %1084

; <label>:1084                                    ; preds = %1073
  %1085 = mul nuw nsw i32 %1082, 40
  %1086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = add nuw nsw i32 %1085, 12
  %1091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1095 = add nuw nsw i32 %1085, 24
  %1096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1095, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.ResRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.ResRet.f32 %1096, 2
  %1100 = add nuw nsw i32 %1085, 36
  %1101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = fsub fast float %1066, %1087
  %1104 = fsub fast float %1067, %1088
  %1105 = fsub fast float %1068, %1089
  %1106 = fmul fast float %1102, %1103
  %1107 = fmul fast float %1102, %1104
  %1108 = fmul fast float %1102, %1105
  %1109 = call float @dx.op.unary.f32(i32 27, float %1106)  ; Round_ni(value)
  %1110 = call float @dx.op.unary.f32(i32 27, float %1107)  ; Round_ni(value)
  %1111 = call float @dx.op.unary.f32(i32 27, float %1108)  ; Round_ni(value)
  %1112 = fadd fast float %1109, 5.000000e-01
  %1113 = fadd fast float %1110, 5.000000e-01
  %1114 = fadd fast float %1111, 5.000000e-01
  %1115 = fmul fast float %1112, %1092
  %1116 = fmul fast float %1113, %1093
  %1117 = fmul fast float %1114, %1094
  %1118 = shl i32 %33, 2
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = add i32 %1120, 0
  %1122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1123 = call float @dx.op.unary.f32(i32 22, float %1115)  ; Frc(value)
  %1124 = call float @dx.op.unary.f32(i32 22, float %1116)  ; Frc(value)
  %1125 = call float @dx.op.unary.f32(i32 22, float %1117)  ; Frc(value)
  %1126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1122, %dx.types.Handle %29, float %1123, float %1124, float %1125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  %1130 = fmul fast float %1127, 1.023000e+03
  %1131 = fmul fast float %1128, 1.023000e+03
  %1132 = fmul fast float %1129, 1.023000e+03
  %1133 = fadd fast float %1130, 5.000000e-01
  %1134 = fadd fast float %1131, 5.000000e-01
  %1135 = fadd fast float %1132, 5.000000e-01
  %1136 = call float @dx.op.unary.f32(i32 27, float %1133)  ; Round_ni(value)
  %1137 = call float @dx.op.unary.f32(i32 27, float %1134)  ; Round_ni(value)
  %1138 = call float @dx.op.unary.f32(i32 27, float %1135)  ; Round_ni(value)
  %1139 = fsub fast float %1106, %1109
  %1140 = fsub fast float %1107, %1110
  %1141 = fsub fast float %1108, %1111
  %1142 = fmul fast float %1139, 7.500000e-01
  %1143 = fmul fast float %1140, 7.500000e-01
  %1144 = fmul fast float %1141, 7.500000e-01
  %1145 = fadd fast float %1109, 1.250000e-01
  %1146 = fadd fast float %1145, %1142
  %1147 = fadd fast float %1146, %1136
  %1148 = fadd fast float %1110, 1.250000e-01
  %1149 = fadd fast float %1148, %1143
  %1150 = fadd fast float %1149, %1137
  %1151 = fadd fast float %1111, 1.250000e-01
  %1152 = fadd fast float %1151, %1144
  %1153 = fadd fast float %1152, %1138
  %1154 = fmul fast float %1147, %1097
  %1155 = fmul fast float %1150, %1098
  %1156 = fmul fast float %1153, %1099
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = add i32 %1158, 0
  %1160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1159, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1160, %dx.types.Handle %27, float %1154, float %1155, float %1156, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  br label %1163

; <label>:1163                                    ; preds = %1084, %1073
  %1164 = phi float [ %1162, %1084 ], [ -1.000000e+00, %1073 ]
  %1165 = fadd fast float %1164, %1071
  %1166 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  br label %1167

; <label>:1167                                    ; preds = %1163, %1061
  %1168 = phi float [ %1166, %1163 ], [ %1071, %1061 ]
  %1169 = fmul fast float %1168, %407
  br label %1170

; <label>:1170                                    ; preds = %1167, %1056
  %1171 = phi float [ %1169, %1167 ], [ %407, %1056 ]
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = and i32 %1173, 256
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %1222, label %1176

; <label>:1176                                    ; preds = %1170
  %1177 = add i32 %32, 444
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = add i32 %1179, 0
  %1181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1181, %dx.types.Handle %69, float %1057, float %1058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = add i32 %32, 116
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = shl i32 %1186, 4
  %1188 = and i32 %1187, 32752
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = lshr i32 %1186, 7
  %1191 = and i32 %1190, 32752
  %1192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1191)  ; LegacyF16ToF32(value)
  %1193 = fsub fast float 1.000000e+00, %1171
  %1194 = call float @dx.op.binary.f32(i32 35, float %1193, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1195 = bitcast float %1171 to i32
  %1196 = sitofp i32 %1195 to float
  %1197 = fadd fast float %1196, 0xC1CFBF8940000000
  %1198 = fmul fast float %1192, %1197
  %1199 = fadd fast float %1198, 0x41CFBF8940000000
  %1200 = fptosi float %1199 to i32
  %1201 = bitcast i32 %1200 to float
  %1202 = bitcast float %1194 to i32
  %1203 = sitofp i32 %1202 to float
  %1204 = fadd fast float %1203, 0xC1CFBF8940000000
  %1205 = fmul fast float %1204, %1192
  %1206 = fadd fast float %1205, 0x41CFBF8940000000
  %1207 = fptosi float %1206 to i32
  %1208 = bitcast i32 %1207 to float
  %1209 = fmul fast float %1201, %1189
  %1210 = fmul fast float %1208, %1189
  %1211 = fsub fast float %1194, %1209
  %1212 = fadd fast float %1210, %1194
  %1213 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1214 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1215 = fsub fast float %1183, %1213
  %1216 = fsub fast float %1214, %1213
  %1217 = bitcast float %1216 to i32
  %1218 = sub nsw i32 2129859010, %1217
  %1219 = bitcast i32 %1218 to float
  %1220 = fmul fast float %1219, %1215
  %1221 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  br label %1222

; <label>:1222                                    ; preds = %1176, %1170
  %1223 = phi float [ %1221, %1176 ], [ %1171, %1170 ]
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 128
  %1227 = icmp eq i32 %1226, 0
  br i1 %1227, label %1244, label %1228

; <label>:1228                                    ; preds = %1222
  %1229 = add i32 %32, 428
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = add i32 %1231, 0
  %1233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1233, %dx.types.Handle %69, float %1057, float %1058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 524288
  %1239 = icmp ne i32 %1238, 0
  %1240 = fcmp fast ogt float %1235, 0x3FE0101020000000
  %1241 = select i1 %1240, float 1.000000e+00, float 0.000000e+00
  %1242 = select i1 %1239, float %1241, float %1235
  %1243 = fmul fast float %1242, %1223
  br label %1244

; <label>:1244                                    ; preds = %1228, %1222
  %1245 = phi float [ %1243, %1228 ], [ %1223, %1222 ]
  %1246 = fcmp fast ult float %1245, 0x3F70101020000000
  br i1 %1246, label %1876, label %1247

; <label>:1247                                    ; preds = %1244
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = and i32 %1249, 16
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1450, label %1252

; <label>:1252                                    ; preds = %1247
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = add i32 %32, 380
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = add i32 %1257, 0
  %1259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1259, %dx.types.Handle %68, float %1057, float %1058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.ResRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.ResRet.f32 %1260, 2
  %1264 = extractvalue %dx.types.ResRet.f32 %1260, 3
  %1265 = and i32 %1254, 255
  %1266 = uitofp i32 %1265 to float
  %1267 = lshr i32 %1254, 8
  %1268 = and i32 %1267, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = fmul fast float %1264, %1266
  %1271 = fadd fast float %1270, %1269
  %1272 = fmul fast float %1271, 0x3F70101000000000
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 512
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1285, label %1277

; <label>:1277                                    ; preds = %1252
  %1278 = add i32 %32, 464
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = add i32 %1280, 0
  %1282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1283 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1282, %dx.types.Handle %69, float %1057, float %1058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  br label %1285

; <label>:1285                                    ; preds = %1277, %1252
  %1286 = phi float [ %1284, %1277 ], [ 1.000000e+00, %1252 ]
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 33554432
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1397, label %1291

; <label>:1291                                    ; preds = %1285
  %1292 = add i32 %32, 240
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = and i32 %1294, 65535
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = lshr i32 %1294, 16
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = add i32 %32, 244
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = and i32 %1301, 65535
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = lshr i32 %1305, 24
  %1307 = uitofp i32 %1306 to float
  %1308 = fmul fast float %1307, 0x3F70101020000000
  %1309 = and i32 %1305, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = lshr i32 %1305, 8
  %1313 = and i32 %1312, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1314, 0x3F70101020000000
  %1316 = lshr i32 %1305, 16
  %1317 = and i32 %1316, 255
  %1318 = uitofp i32 %1317 to float
  %1319 = fmul fast float %1318, 0x3F70101020000000
  %1320 = add i32 %32, 236
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = lshr i32 %1322, 24
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1324, 0x3F70101020000000
  %1326 = and i32 %1322, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F70101020000000
  %1329 = lshr i32 %1322, 8
  %1330 = and i32 %1329, 255
  %1331 = uitofp i32 %1330 to float
  %1332 = fmul fast float %1331, 0x3F70101020000000
  %1333 = lshr i32 %1322, 16
  %1334 = and i32 %1333, 255
  %1335 = uitofp i32 %1334 to float
  %1336 = fmul fast float %1335, 0x3F70101020000000
  %1337 = bitcast float %1261 to i32
  %1338 = ashr i32 %1337, 1
  %1339 = sub nsw i32 1597463174, %1338
  %1340 = bitcast i32 %1339 to float
  %1341 = fmul fast float %1261, 5.000000e-01
  %1342 = fmul fast float %1340, %1340
  %1343 = fmul fast float %1342, %1341
  %1344 = fsub fast float 1.500000e+00, %1343
  %1345 = fmul fast float %1340, %1261
  %1346 = fmul fast float %1345, %1344
  %1347 = bitcast float %1262 to i32
  %1348 = ashr i32 %1347, 1
  %1349 = sub nsw i32 1597463174, %1348
  %1350 = bitcast i32 %1349 to float
  %1351 = fmul fast float %1262, 5.000000e-01
  %1352 = fmul fast float %1350, %1350
  %1353 = fmul fast float %1352, %1351
  %1354 = fsub fast float 1.500000e+00, %1353
  %1355 = fmul fast float %1350, %1262
  %1356 = fmul fast float %1355, %1354
  %1357 = bitcast float %1263 to i32
  %1358 = ashr i32 %1357, 1
  %1359 = sub nsw i32 1597463174, %1358
  %1360 = bitcast i32 %1359 to float
  %1361 = fmul fast float %1263, 5.000000e-01
  %1362 = fmul fast float %1360, %1360
  %1363 = fmul fast float %1362, %1361
  %1364 = fsub fast float 1.500000e+00, %1363
  %1365 = fmul fast float %1360, %1263
  %1366 = fmul fast float %1365, %1364
  %1367 = fsub fast float %1346, %1328
  %1368 = fsub fast float %1356, %1332
  %1369 = fsub fast float %1366, %1336
  %1370 = fmul fast float %1367, %1296
  %1371 = fmul fast float %1368, %1298
  %1372 = fmul fast float %1369, %1303
  %1373 = fadd fast float %1370, %1311
  %1374 = fadd fast float %1371, %1315
  %1375 = fadd fast float %1372, %1319
  %1376 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1377 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1378 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1379 = fmul fast float %1376, %1376
  %1380 = fmul fast float %1377, %1377
  %1381 = fmul fast float %1378, %1378
  %1382 = fsub fast float %1379, %1261
  %1383 = fsub fast float %1380, %1262
  %1384 = fsub fast float %1381, %1263
  %1385 = fmul fast float %1382, %1286
  %1386 = fmul fast float %1383, %1286
  %1387 = fmul fast float %1384, %1286
  %1388 = fadd fast float %1385, %1261
  %1389 = fadd fast float %1386, %1262
  %1390 = fadd fast float %1387, %1263
  %1391 = fadd fast float %1308, %1272
  %1392 = fsub fast float %1391, %1325
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1394 = fsub fast float %1393, %1272
  %1395 = fmul fast float %1394, %1286
  %1396 = fadd fast float %1395, %1272
  br label %1450

; <label>:1397                                    ; preds = %1285
  %1398 = and i32 %1288, 134217728
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1434, label %1400

; <label>:1400                                    ; preds = %1397
  %1401 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %1402 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %1403 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %1404 = fadd fast float %1401, -5.000000e-01
  %1405 = fadd fast float %1402, -5.000000e-01
  %1406 = fadd fast float %1403, -5.000000e-01
  %1407 = fmul fast float %1404, %1286
  %1408 = fmul fast float %1405, %1286
  %1409 = fmul fast float %1406, %1286
  %1410 = fadd fast float %1407, 5.000000e-01
  %1411 = fadd fast float %1408, 5.000000e-01
  %1412 = fadd fast float %1409, 5.000000e-01
  %1413 = call float @dx.op.unary.f32(i32 24, float %1261)  ; Sqrt(value)
  %1414 = call float @dx.op.unary.f32(i32 24, float %1262)  ; Sqrt(value)
  %1415 = call float @dx.op.unary.f32(i32 24, float %1263)  ; Sqrt(value)
  %1416 = fmul fast float %1410, 2.000000e+00
  %1417 = fsub fast float 1.000000e+00, %1416
  %1418 = fmul fast float %1417, %1413
  %1419 = fadd fast float %1418, %1416
  %1420 = fmul fast float %1419, %1413
  %1421 = fmul fast float %1411, 2.000000e+00
  %1422 = fsub fast float 1.000000e+00, %1421
  %1423 = fmul fast float %1422, %1414
  %1424 = fadd fast float %1423, %1421
  %1425 = fmul fast float %1424, %1414
  %1426 = fmul fast float %1412, 2.000000e+00
  %1427 = fsub fast float 1.000000e+00, %1426
  %1428 = fmul fast float %1427, %1415
  %1429 = fadd fast float %1428, %1426
  %1430 = fmul fast float %1429, %1415
  %1431 = fmul fast float %1420, %1420
  %1432 = fmul fast float %1425, %1425
  %1433 = fmul fast float %1430, %1430
  br label %1450

; <label>:1434                                    ; preds = %1397
  %1435 = fmul fast float %242, %242
  %1436 = fmul fast float %246, %246
  %1437 = fmul fast float %250, %250
  %1438 = fadd fast float %1435, -1.000000e+00
  %1439 = fadd fast float %1436, -1.000000e+00
  %1440 = fadd fast float %1437, -1.000000e+00
  %1441 = fmul fast float %1286, %1438
  %1442 = fmul fast float %1286, %1439
  %1443 = fmul fast float %1286, %1440
  %1444 = fadd fast float %1441, 1.000000e+00
  %1445 = fadd fast float %1442, 1.000000e+00
  %1446 = fadd fast float %1443, 1.000000e+00
  %1447 = fmul fast float %1444, %1261
  %1448 = fmul fast float %1445, %1262
  %1449 = fmul fast float %1446, %1263
  br label %1450

; <label>:1450                                    ; preds = %1434, %1400, %1291, %1247
  %1451 = phi float [ %1396, %1291 ], [ %1272, %1400 ], [ %1272, %1434 ], [ 0x3FA23C0BE0000000, %1247 ]
  %1452 = phi float [ %1388, %1291 ], [ %1431, %1400 ], [ %1447, %1434 ], [ 1.000000e+00, %1247 ]
  %1453 = phi float [ %1389, %1291 ], [ %1432, %1400 ], [ %1448, %1434 ], [ 1.000000e+00, %1247 ]
  %1454 = phi float [ %1390, %1291 ], [ %1433, %1400 ], [ %1449, %1434 ], [ 1.000000e+00, %1247 ]
  %1455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1456 = extractvalue %dx.types.CBufRet.i32 %1455, 1
  %1457 = and i32 %1456, 1
  %1458 = icmp ne i32 %1457, 0
  %1459 = add i32 %32, 356
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = and i32 %1461, 32
  %1463 = icmp ne i32 %1462, 0
  %1464 = and i1 %1458, %1463
  %1465 = select i1 %1464, float 1.000000e+00, float %1452
  %1466 = select i1 %1464, float 0x3FD3333340000000, float %1453
  %1467 = select i1 %1464, float 0x3FD3333340000000, float %1454
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = and i32 %1469, 32
  %1471 = icmp eq i32 %1470, 0
  br i1 %1471, label %1544, label %1472

; <label>:1472                                    ; preds = %1450
  %1473 = add i32 %32, 108
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = add i32 %32, 396
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = add i32 %1478, 0
  %1480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1480, %dx.types.Handle %68, float %1057, float %1058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 0
  %1483 = extractvalue %dx.types.ResRet.f32 %1481, 1
  %1484 = extractvalue %dx.types.ResRet.f32 %1481, 2
  %1485 = extractvalue %dx.types.ResRet.f32 %1481, 3
  %1486 = and i32 %1475, 255
  %1487 = uitofp i32 %1486 to float
  %1488 = lshr i32 %1475, 8
  %1489 = and i32 %1488, 255
  %1490 = uitofp i32 %1489 to float
  %1491 = lshr i32 %1475, 16
  %1492 = and i32 %1491, 255
  %1493 = uitofp i32 %1492 to float
  %1494 = fmul fast float %1493, 0x3F70101000000000
  %1495 = fmul fast float %1482, %1487
  %1496 = fadd fast float %1495, %1490
  %1497 = fmul fast float %1496, 0x3F70101000000000
  %1498 = fadd fast float %1483, -5.000000e-01
  %1499 = fadd fast float %1485, -5.000000e-01
  %1500 = fmul fast float %1498, %1494
  %1501 = fmul fast float %1499, %1494
  %1502 = fadd fast float %1500, 5.000000e-01
  %1503 = fadd fast float %1501, 5.000000e-01
  %1504 = fmul fast float %1502, 2.000000e+00
  %1505 = fadd fast float %1504, -1.000000e+00
  %1506 = fmul fast float %1503, 2.000000e+00
  %1507 = fadd fast float %1506, -1.000000e+00
  %1508 = fadd fast float %1505, %1507
  %1509 = fmul fast float %1508, 5.000000e-01
  %1510 = fsub fast float %1505, %1507
  %1511 = fmul fast float %1510, 5.000000e-01
  %1512 = call float @dx.op.unary.f32(i32 6, float %1509)  ; FAbs(value)
  %1513 = fsub fast float 1.000000e+00, %1512
  %1514 = call float @dx.op.unary.f32(i32 6, float %1511)  ; FAbs(value)
  %1515 = fsub fast float %1513, %1514
  %1516 = call float @dx.op.dot3.f32(i32 55, float %1509, float %1511, float %1515, float %1509, float %1511, float %1515)  ; Dot3(ax,ay,az,bx,by,bz)
  %1517 = call float @dx.op.unary.f32(i32 25, float %1516)  ; Rsqrt(value)
  %1518 = fmul fast float %1509, %1517
  %1519 = fmul fast float %1511, %1517
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = and i32 %1521, 67108864
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1540, label %1524

; <label>:1524                                    ; preds = %1472
  %1525 = add i32 %32, 296
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = and i32 %1527, 65535
  %1529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1528)  ; LegacyF16ToF32(value)
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 65535
  %1533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1532)  ; LegacyF16ToF32(value)
  %1534 = lshr i32 %1527, 16
  %1535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1534)  ; LegacyF16ToF32(value)
  %1536 = fsub fast float %1497, %1535
  %1537 = fmul fast float %1536, %1529
  %1538 = fadd fast float %1537, %1533
  %1539 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  br label %1540

; <label>:1540                                    ; preds = %1524, %1472
  %1541 = phi float [ %1539, %1524 ], [ %1497, %1472 ]
  %1542 = call float @dx.op.dot2.f32(i32 54, float %1518, float %1519, float %961, float %962)  ; Dot2(ax,ay,bx,by)
  %1543 = call float @dx.op.dot2.f32(i32 54, float %1518, float %1519, float %963, float %964)  ; Dot2(ax,ay,bx,by)
  br label %1544

; <label>:1544                                    ; preds = %1540, %1450
  %1545 = phi float [ %1541, %1540 ], [ 0x3FD6666660000000, %1450 ]
  %1546 = phi float [ %1542, %1540 ], [ 0.000000e+00, %1450 ]
  %1547 = phi float [ %1543, %1540 ], [ 0.000000e+00, %1450 ]
  %1548 = phi float [ %1484, %1540 ], [ 1.000000e+00, %1450 ]
  %1549 = add i32 %32, 176
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = lshr i32 %1551, 22
  %1553 = shl nuw nsw i32 %1552, 5
  %1554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1553)  ; LegacyF16ToF32(value)
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 64
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1592, label %1559

; <label>:1559                                    ; preds = %1544
  %1560 = add i32 %32, 412
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = add i32 %1562, 0
  %1564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 131072
  %1568 = icmp eq i32 %1567, 0
  %1569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1564, %dx.types.Handle %68, float %1057, float %1058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1570 = extractvalue %dx.types.ResRet.f32 %1569, 0
  %1571 = extractvalue %dx.types.ResRet.f32 %1569, 1
  %1572 = extractvalue %dx.types.ResRet.f32 %1569, 2
  %1573 = fmul fast float %1570, %230
  %1574 = fmul fast float %1571, %233
  %1575 = fmul fast float %1572, %236
  br i1 %1568, label %1582, label %1576

; <label>:1576                                    ; preds = %1559
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 0
  %1579 = fmul fast float %1578, %1573
  %1580 = fmul fast float %1578, %1574
  %1581 = fmul fast float %1578, %1575
  br label %1582

; <label>:1582                                    ; preds = %1576, %1559
  %1583 = phi float [ %1579, %1576 ], [ %1573, %1559 ]
  %1584 = phi float [ %1580, %1576 ], [ %1574, %1559 ]
  %1585 = phi float [ %1581, %1576 ], [ %1575, %1559 ]
  %1586 = fmul fast float %1583, %1554
  %1587 = select i1 %168, float %1586, float %1583
  %1588 = call float @dx.op.dot3.f32(i32 55, float %1587, float %1584, float %1585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1589 = select i1 %168, float 0.000000e+00, float %1583
  %1590 = select i1 %168, float %1588, float %1584
  %1591 = select i1 %168, float 0.000000e+00, float %1585
  br label %1592

; <label>:1592                                    ; preds = %1582, %1544
  %1593 = phi float [ %1589, %1582 ], [ 0.000000e+00, %1544 ]
  %1594 = phi float [ %1590, %1582 ], [ 0.000000e+00, %1544 ]
  %1595 = phi float [ %1591, %1582 ], [ 0.000000e+00, %1544 ]
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = and i32 %1597, 10240
  %1599 = icmp eq i32 %1598, 0
  br i1 %1599, label %1644, label %1600

; <label>:1600                                    ; preds = %1592
  %1601 = add i32 %32, 480
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = add i32 %1603, 0
  %1605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1605, %dx.types.Handle %69, float %1057, float %1058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1607 = extractvalue %dx.types.ResRet.f32 %1606, 1
  %1608 = extractvalue %dx.types.ResRet.f32 %1606, 3
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = and i32 %1610, 1048576
  %1612 = icmp ne i32 %1611, 0
  %1613 = and i32 %1610, 8192
  %1614 = icmp eq i32 %1613, 0
  br i1 %1614, label %1630, label %1615

; <label>:1615                                    ; preds = %1600
  %1616 = extractvalue %dx.types.ResRet.f32 %1606, 2
  %1617 = select i1 %1612, float %1616, float %1607
  %1618 = extractvalue %dx.types.ResRet.f32 %1606, 0
  %1619 = select i1 %1612, float %1618, float %1607
  %1620 = add i32 %32, 112
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1620, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = lshr i32 %1622, 16
  %1624 = and i32 %1623, 255
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F80101020000000
  %1627 = fmul fast float %1626, %1619
  %1628 = fmul fast float %1626, %1607
  %1629 = fmul fast float %1626, %1617
  br label %1630

; <label>:1630                                    ; preds = %1615, %1600
  %1631 = phi float [ %1627, %1615 ], [ 0.000000e+00, %1600 ]
  %1632 = phi float [ %1628, %1615 ], [ 0.000000e+00, %1600 ]
  %1633 = phi float [ %1629, %1615 ], [ 0.000000e+00, %1600 ]
  %1634 = and i32 %1610, 2048
  %1635 = icmp eq i32 %1634, 0
  br i1 %1635, label %1644, label %1636

; <label>:1636                                    ; preds = %1630
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = shl i32 %1638, 4
  %1640 = and i32 %1639, 32752
  %1641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1640)  ; LegacyF16ToF32(value)
  %1642 = fmul fast float %1641, %1608
  %1643 = call float @dx.op.binary.f32(i32 35, float %1642, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1644

; <label>:1644                                    ; preds = %1636, %1630, %1592
  %1645 = phi float [ %1631, %1636 ], [ %1631, %1630 ], [ 0.000000e+00, %1592 ]
  %1646 = phi float [ %1632, %1636 ], [ %1632, %1630 ], [ 0.000000e+00, %1592 ]
  %1647 = phi float [ %1633, %1636 ], [ %1633, %1630 ], [ 0.000000e+00, %1592 ]
  %1648 = phi float [ %1643, %1636 ], [ 0x3F70101020000000, %1630 ], [ 0x3F70101020000000, %1592 ]
  %1649 = add i32 %32, 112
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = and i32 %1651, 255
  %1653 = uitofp i32 %1652 to float
  %1654 = lshr i32 %1651, 8
  %1655 = and i32 %1654, 255
  %1656 = uitofp i32 %1655 to float
  %1657 = call float @dx.op.dot3.f32(i32 55, float %1465, float %1466, float %1467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1658 = fmul fast float %1656, %1657
  %1659 = fadd fast float %1658, %1653
  %1660 = fmul fast float %1659, 0x3F70101020000000
  %1661 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  br i1 %949, label %1662, label %1670

; <label>:1662                                    ; preds = %1644
  %1663 = fsub fast float 1.000000e+00, %1245
  %1664 = fmul fast float %1663, %933
  %1665 = fmul fast float %1663, %934
  %1666 = fmul fast float %1663, %935
  %1667 = fmul fast float %1663, %936
  %1668 = fmul fast float %1663, %937
  %1669 = fmul fast float %1663, %938
  br label %1670

; <label>:1670                                    ; preds = %1662, %1644
  %1671 = phi float [ %1664, %1662 ], [ %933, %1644 ]
  %1672 = phi float [ %1665, %1662 ], [ %934, %1644 ]
  %1673 = phi float [ %1666, %1662 ], [ %935, %1644 ]
  %1674 = phi float [ %1667, %1662 ], [ %936, %1644 ]
  %1675 = phi float [ %1668, %1662 ], [ %937, %1644 ]
  %1676 = phi float [ %1669, %1662 ], [ %938, %1644 ]
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = and i32 %1678, 3
  %1680 = icmp eq i32 %1679, 3
  br i1 %1680, label %1759, label %1681

; <label>:1681                                    ; preds = %1670
  %1682 = and i32 %1678, 16
  %1683 = icmp ne i32 %1682, 0
  %1684 = select i1 %1683, float %1245, float 0.000000e+00
  %1685 = icmp eq i32 %1679, 0
  br i1 %1685, label %1686, label %1714

; <label>:1686                                    ; preds = %1681
  %1687 = and i32 %1678, 64
  %1688 = icmp ne i32 %1687, 0
  %1689 = select i1 %1688, float %1245, float 0.000000e+00
  %1690 = fsub fast float %1465, %1671
  %1691 = fsub fast float %1466, %1672
  %1692 = fsub fast float %1467, %1673
  %1693 = fmul fast float %1684, %1690
  %1694 = fmul fast float %1684, %1691
  %1695 = fmul fast float %1684, %1692
  %1696 = fadd fast float %1693, %1671
  %1697 = fadd fast float %1694, %1672
  %1698 = fadd fast float %1695, %1673
  %1699 = fsub fast float %1451, %942
  %1700 = fmul fast float %1684, %1699
  %1701 = fadd fast float %1700, %942
  %1702 = fsub fast float %1593, %1674
  %1703 = fsub fast float %1594, %1675
  %1704 = fsub fast float %1595, %1676
  %1705 = fmul fast float %1689, %1702
  %1706 = fmul fast float %1689, %1703
  %1707 = fmul fast float %1689, %1704
  %1708 = fadd fast float %1705, %1674
  %1709 = fadd fast float %1706, %1675
  %1710 = fadd fast float %1707, %1676
  %1711 = fsub fast float %1661, %947
  %1712 = fmul fast float %1684, %1711
  %1713 = fadd fast float %1712, %947
  br label %1759

; <label>:1714                                    ; preds = %1681
  %1715 = icmp eq i32 %1679, 1
  br i1 %1715, label %1716, label %1729

; <label>:1716                                    ; preds = %1714
  %1717 = fadd fast float %1465, -1.000000e+00
  %1718 = fadd fast float %1466, -1.000000e+00
  %1719 = fadd fast float %1467, -1.000000e+00
  %1720 = fmul fast float %1684, %1717
  %1721 = fmul fast float %1684, %1718
  %1722 = fmul fast float %1684, %1719
  %1723 = fadd fast float %1720, 1.000000e+00
  %1724 = fadd fast float %1721, 1.000000e+00
  %1725 = fadd fast float %1722, 1.000000e+00
  %1726 = fmul fast float %1723, %1671
  %1727 = fmul fast float %1724, %1672
  %1728 = fmul fast float %1725, %1673
  br label %1759

; <label>:1729                                    ; preds = %1714
  %1730 = icmp eq i32 %1679, 2
  br i1 %1730, label %1731, label %1759

; <label>:1731                                    ; preds = %1729
  %1732 = call float @dx.op.unary.f32(i32 24, float %1465)  ; Sqrt(value)
  %1733 = call float @dx.op.unary.f32(i32 24, float %1466)  ; Sqrt(value)
  %1734 = call float @dx.op.unary.f32(i32 24, float %1467)  ; Sqrt(value)
  %1735 = fadd fast float %1732, -5.000000e-01
  %1736 = fadd fast float %1733, -5.000000e-01
  %1737 = fadd fast float %1734, -5.000000e-01
  %1738 = fmul fast float %1735, %1684
  %1739 = fmul fast float %1736, %1684
  %1740 = fmul fast float %1737, %1684
  %1741 = fadd fast float %1738, 5.000000e-01
  %1742 = fadd fast float %1739, 5.000000e-01
  %1743 = fadd fast float %1740, 5.000000e-01
  %1744 = fmul fast float %1741, 2.000000e+00
  %1745 = fsub fast float 1.000000e+00, %1744
  %1746 = fmul fast float %1745, %1671
  %1747 = fadd fast float %1746, %1744
  %1748 = fmul fast float %1747, %1671
  %1749 = fmul fast float %1742, 2.000000e+00
  %1750 = fsub fast float 1.000000e+00, %1749
  %1751 = fmul fast float %1750, %1672
  %1752 = fadd fast float %1751, %1749
  %1753 = fmul fast float %1752, %1672
  %1754 = fmul fast float %1743, 2.000000e+00
  %1755 = fsub fast float 1.000000e+00, %1754
  %1756 = fmul fast float %1755, %1673
  %1757 = fadd fast float %1756, %1754
  %1758 = fmul fast float %1757, %1673
  br label %1759

; <label>:1759                                    ; preds = %1731, %1729, %1716, %1686, %1670
  %1760 = phi float [ %1671, %1670 ], [ %1748, %1731 ], [ %1671, %1729 ], [ %1726, %1716 ], [ %1696, %1686 ]
  %1761 = phi float [ %1672, %1670 ], [ %1753, %1731 ], [ %1672, %1729 ], [ %1727, %1716 ], [ %1697, %1686 ]
  %1762 = phi float [ %1673, %1670 ], [ %1758, %1731 ], [ %1673, %1729 ], [ %1728, %1716 ], [ %1698, %1686 ]
  %1763 = phi float [ %1674, %1670 ], [ %1674, %1731 ], [ %1674, %1729 ], [ %1674, %1716 ], [ %1708, %1686 ]
  %1764 = phi float [ %1675, %1670 ], [ %1675, %1731 ], [ %1675, %1729 ], [ %1675, %1716 ], [ %1709, %1686 ]
  %1765 = phi float [ %1676, %1670 ], [ %1676, %1731 ], [ %1676, %1729 ], [ %1676, %1716 ], [ %1710, %1686 ]
  %1766 = phi float [ %942, %1670 ], [ %942, %1731 ], [ %942, %1729 ], [ %942, %1716 ], [ %1701, %1686 ]
  %1767 = phi float [ %947, %1670 ], [ %947, %1731 ], [ %947, %1729 ], [ %947, %1716 ], [ %1713, %1686 ]
  %1768 = and i32 %1678, 12
  %1769 = icmp eq i32 %1768, 12
  br i1 %1769, label %1876, label %1770

; <label>:1770                                    ; preds = %1759
  %1771 = and i32 %1678, 2097184
  %1772 = icmp eq i32 %1771, 2097184
  %1773 = select i1 %1772, float %1245, float 0.000000e+00
  %1774 = and i32 %1678, 4194336
  %1775 = icmp eq i32 %1774, 4194336
  %1776 = select i1 %1775, float %1245, float 0.000000e+00
  %1777 = and i32 %1678, 8388640
  %1778 = icmp eq i32 %1777, 8388640
  %1779 = select i1 %1778, float %1245, float 0.000000e+00
  %1780 = and i32 %1678, 2048
  %1781 = icmp ne i32 %1780, 0
  %1782 = select i1 %1781, float %1245, float 0.000000e+00
  %1783 = and i32 %1678, 8192
  %1784 = icmp ne i32 %1783, 0
  %1785 = select i1 %1784, float %1245, float 0.000000e+00
  %1786 = icmp eq i32 %1768, 0
  br i1 %1786, label %1787, label %1812

; <label>:1787                                    ; preds = %1770
  %1788 = fsub fast float %1546, %931
  %1789 = fsub fast float %1547, %932
  %1790 = fmul fast float %1773, %1788
  %1791 = fmul fast float %1773, %1789
  %1792 = fadd fast float %1790, %931
  %1793 = fadd fast float %1791, %932
  %1794 = fsub fast float %1548, %945
  %1795 = fmul fast float %1776, %1794
  %1796 = fadd fast float %1795, %945
  %1797 = fsub fast float %1545, %944
  %1798 = fmul fast float %1779, %1797
  %1799 = fadd fast float %1798, %944
  %1800 = fsub fast float %1648, %946
  %1801 = fmul fast float %1782, %1800
  %1802 = fadd fast float %1801, %946
  %1803 = fsub fast float %1645, %939
  %1804 = fsub fast float %1646, %940
  %1805 = fsub fast float %1647, %941
  %1806 = fmul fast float %1785, %1803
  %1807 = fmul fast float %1785, %1804
  %1808 = fmul fast float %1785, %1805
  %1809 = fadd fast float %1806, %939
  %1810 = fadd fast float %1807, %940
  %1811 = fadd fast float %1808, %941
  br label %1876

; <label>:1812                                    ; preds = %1770
  %1813 = icmp eq i32 %1768, 4
  br i1 %1813, label %1814, label %1854

; <label>:1814                                    ; preds = %1812
  %1815 = fmul fast float %1773, %1546
  %1816 = fmul fast float %1773, %1547
  %1817 = fadd fast float %1815, %931
  %1818 = fadd fast float %1816, %932
  %1819 = call float @dx.op.binary.f32(i32 36, float %945, float %1548)  ; FMin(a,b)
  %1820 = fsub fast float %1819, %945
  %1821 = fmul fast float %1820, %1776
  %1822 = fadd fast float %1821, %945
  %1823 = fadd fast float %1545, %944
  %1824 = fmul fast float %1823, 0x3FF337FAE0000000
  %1825 = fmul fast float %944, %944
  %1826 = fmul fast float %1545, %1545
  %1827 = fadd fast float %1826, %1825
  %1828 = fmul fast float %1827, 0x3FE5152B00000000
  %1829 = fmul fast float %944, 0xBFCC1F85E0000000
  %1830 = fmul fast float %1829, %1545
  %1831 = fadd fast float %1830, 0xBFE1363700000000
  %1832 = fadd fast float %1831, %1824
  %1833 = fsub fast float %1832, %1828
  %1834 = fmul fast float %1823, 0x3FBA6F0D00000000
  %1835 = fmul fast float %1827, 0x3FD0432880000000
  %1836 = fmul fast float %944, 0xBFEF110800000000
  %1837 = fmul fast float %1836, %1545
  %1838 = fadd fast float %1837, 1.000000e+00
  %1839 = fsub fast float %1838, %1834
  %1840 = fadd fast float %1839, %1835
  %1841 = fdiv fast float %1833, %1840
  %1842 = call float @dx.op.unary.f32(i32 7, float %1841)  ; Saturate(value)
  %1843 = fsub fast float %1842, %944
  %1844 = fmul fast float %1843, %1779
  %1845 = fadd fast float %1844, %944
  %1846 = fmul fast float %1782, %1648
  %1847 = fadd fast float %1846, %946
  %1848 = fmul fast float %1785, %1645
  %1849 = fmul fast float %1785, %1646
  %1850 = fmul fast float %1785, %1647
  %1851 = fadd fast float %1848, %939
  %1852 = fadd fast float %1849, %940
  %1853 = fadd fast float %1850, %941
  br label %1876

; <label>:1854                                    ; preds = %1812
  %1855 = icmp eq i32 %1768, 8
  br i1 %1855, label %1856, label %1876

; <label>:1856                                    ; preds = %1854
  %1857 = fmul fast float %1773, %1546
  %1858 = fmul fast float %1773, %1547
  %1859 = fadd fast float %1857, %931
  %1860 = fadd fast float %1858, %932
  %1861 = call float @dx.op.binary.f32(i32 36, float %945, float %1548)  ; FMin(a,b)
  %1862 = fsub fast float %1861, %945
  %1863 = fmul fast float %1862, %1776
  %1864 = fadd fast float %1863, %945
  %1865 = fsub fast float %1545, %944
  %1866 = fmul fast float %1779, %1865
  %1867 = fadd fast float %1866, %944
  %1868 = fmul fast float %1782, %1648
  %1869 = fadd fast float %1868, %946
  %1870 = fmul fast float %1785, %1645
  %1871 = fmul fast float %1785, %1646
  %1872 = fmul fast float %1785, %1647
  %1873 = fadd fast float %1870, %939
  %1874 = fadd fast float %1871, %940
  %1875 = fadd fast float %1872, %941
  br label %1876

; <label>:1876                                    ; preds = %1856, %1854, %1814, %1787, %1759, %1244, %948, %930
  %1877 = phi float [ %931, %1759 ], [ %931, %1244 ], [ %931, %930 ], [ %1859, %1856 ], [ %931, %1854 ], [ %1817, %1814 ], [ %1792, %1787 ], [ %931, %948 ]
  %1878 = phi float [ %932, %1759 ], [ %932, %1244 ], [ %932, %930 ], [ %1860, %1856 ], [ %932, %1854 ], [ %1818, %1814 ], [ %1793, %1787 ], [ %932, %948 ]
  %1879 = phi float [ %1760, %1759 ], [ %933, %1244 ], [ %933, %930 ], [ %1760, %1856 ], [ %1760, %1854 ], [ %1760, %1814 ], [ %1760, %1787 ], [ %933, %948 ]
  %1880 = phi float [ %1761, %1759 ], [ %934, %1244 ], [ %934, %930 ], [ %1761, %1856 ], [ %1761, %1854 ], [ %1761, %1814 ], [ %1761, %1787 ], [ %934, %948 ]
  %1881 = phi float [ %1762, %1759 ], [ %935, %1244 ], [ %935, %930 ], [ %1762, %1856 ], [ %1762, %1854 ], [ %1762, %1814 ], [ %1762, %1787 ], [ %935, %948 ]
  %1882 = phi float [ %1763, %1759 ], [ %936, %1244 ], [ %936, %930 ], [ %1763, %1856 ], [ %1763, %1854 ], [ %1763, %1814 ], [ %1763, %1787 ], [ %936, %948 ]
  %1883 = phi float [ %1764, %1759 ], [ %937, %1244 ], [ %937, %930 ], [ %1764, %1856 ], [ %1764, %1854 ], [ %1764, %1814 ], [ %1764, %1787 ], [ %937, %948 ]
  %1884 = phi float [ %1765, %1759 ], [ %938, %1244 ], [ %938, %930 ], [ %1765, %1856 ], [ %1765, %1854 ], [ %1765, %1814 ], [ %1765, %1787 ], [ %938, %948 ]
  %1885 = phi float [ %939, %1759 ], [ %939, %1244 ], [ %939, %930 ], [ %1873, %1856 ], [ %939, %1854 ], [ %1851, %1814 ], [ %1809, %1787 ], [ %939, %948 ]
  %1886 = phi float [ %940, %1759 ], [ %940, %1244 ], [ %940, %930 ], [ %1874, %1856 ], [ %940, %1854 ], [ %1852, %1814 ], [ %1810, %1787 ], [ %940, %948 ]
  %1887 = phi float [ %941, %1759 ], [ %941, %1244 ], [ %941, %930 ], [ %1875, %1856 ], [ %941, %1854 ], [ %1853, %1814 ], [ %1811, %1787 ], [ %941, %948 ]
  %1888 = phi float [ %1766, %1759 ], [ %942, %1244 ], [ %942, %930 ], [ %1766, %1856 ], [ %1766, %1854 ], [ %1766, %1814 ], [ %1766, %1787 ], [ %942, %948 ]
  %1889 = phi float [ %944, %1759 ], [ %944, %1244 ], [ %944, %930 ], [ %1867, %1856 ], [ %944, %1854 ], [ %1845, %1814 ], [ %1799, %1787 ], [ %944, %948 ]
  %1890 = phi float [ %945, %1759 ], [ %945, %1244 ], [ %945, %930 ], [ %1864, %1856 ], [ %945, %1854 ], [ %1822, %1814 ], [ %1796, %1787 ], [ %945, %948 ]
  %1891 = phi float [ %946, %1759 ], [ %946, %1244 ], [ %946, %930 ], [ %1869, %1856 ], [ %946, %1854 ], [ %1847, %1814 ], [ %1802, %1787 ], [ %946, %948 ]
  %1892 = phi float [ %1767, %1759 ], [ %947, %1244 ], [ %947, %930 ], [ %1767, %1856 ], [ %1767, %1854 ], [ %1767, %1814 ], [ %1767, %1787 ], [ %947, %948 ]
  br i1 %357, label %2821, label %1893

; <label>:1893                                    ; preds = %1876
  %1894 = icmp ult i32 %410, 3
  %1895 = add i32 %32, 56
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = add i32 %32, 60
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = or i32 %1900, %1897
  %1902 = icmp eq i32 %1901, 0
  br i1 %1902, label %2821, label %1903

; <label>:1903                                    ; preds = %1893
  %1904 = and i32 %1897, 262144
  %1905 = icmp ne i32 %1904, 0
  %1906 = select i1 %1905, float %35, float 1.000000e+00
  %1907 = select i1 %1905, float %36, float 0.000000e+00
  %1908 = select i1 %1905, float %37, float 0.000000e+00
  %1909 = select i1 %1905, float %38, float 1.000000e+00
  %1910 = select i1 %1905, float %39, float %60
  %1911 = select i1 %1905, float %40, float %61
  %1912 = add i32 %32, 316
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = lshr i32 %1914, 16
  %1916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1915)  ; LegacyF16ToF32(value)
  %1917 = fmul fast float %1916, 0x3F50624DE0000000
  %1918 = add i32 %32, 120
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = lshr i32 %1920, 16
  %1922 = and i32 %1921, 255
  %1923 = lshr i32 %1920, 24
  %1924 = add i32 %32, 324
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = and i32 %1926, 65535
  %1928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1927)  ; LegacyF16ToF32(value)
  %1929 = lshr i32 %1926, 16
  %1930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1929)  ; LegacyF16ToF32(value)
  %1931 = add i32 %32, 64
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = lshr i32 %1933, 22
  %1935 = shl nuw nsw i32 %1934, 5
  %1936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1935)  ; LegacyF16ToF32(value)
  %1937 = shl i32 %1933, 4
  %1938 = and i32 %1937, 32752
  %1939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1938)  ; LegacyF16ToF32(value)
  %1940 = lshr i32 %1933, 7
  %1941 = and i32 %1940, 32752
  %1942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1941)  ; LegacyF16ToF32(value)
  %1943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1944 = extractvalue %dx.types.CBufRet.f32 %1943, 3
  %1945 = fmul fast float %1944, 1.000000e+03
  %1946 = fmul fast float %307, %1945
  %1947 = call float @dx.op.unary.f32(i32 22, float %1946)  ; Frc(value)
  %1948 = fadd fast float %1947, %297
  %1949 = fmul fast float %308, %1945
  %1950 = call float @dx.op.unary.f32(i32 22, float %1949)  ; Frc(value)
  %1951 = fadd fast float %1950, %299
  %1952 = fmul fast float %1917, %1945
  %1953 = call float @dx.op.unary.f32(i32 22, float %1952)  ; Frc(value)
  %1954 = fmul fast float %1953, 0x401921FB60000000
  %1955 = fadd fast float %1954, %1936
  %1956 = call float @dx.op.unary.f32(i32 13, float %1955)  ; Sin(value)
  %1957 = call float @dx.op.unary.f32(i32 12, float %1955)  ; Cos(value)
  %1958 = fsub fast float -0.000000e+00, %1956
  %1959 = fadd fast float %1910, -5.000000e-01
  %1960 = fadd fast float %1911, -5.000000e-01
  %1961 = fmul fast float %1928, %1959
  %1962 = fmul fast float %1930, %1960
  %1963 = fadd fast float %1961, 5.000000e-01
  %1964 = fadd fast float %1962, 5.000000e-01
  %1965 = fmul fast float %1939, %1963
  %1966 = fmul fast float %1942, %1964
  %1967 = fmul fast float %1957, %1965
  %1968 = call float @dx.op.tertiary.f32(i32 46, float %1958, float %1966, float %1967)  ; FMad(a,b,c)
  %1969 = fmul fast float %1956, %1965
  %1970 = call float @dx.op.tertiary.f32(i32 46, float %1957, float %1966, float %1969)  ; FMad(a,b,c)
  %1971 = fadd fast float %1948, %1968
  %1972 = fadd fast float %1951, %1970
  %1973 = icmp ugt i32 %1922, 1
  %1974 = icmp ugt i32 %1920, 33554431
  %1975 = or i1 %1974, %1973
  br i1 %1975, label %1976, label %2001

; <label>:1976                                    ; preds = %1903
  %1977 = add i32 %32, 260
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = lshr i32 %1979, 16
  %1981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1980)  ; LegacyF16ToF32(value)
  %1982 = fmul fast float %1944, %1981
  %1983 = call float @dx.op.unary.f32(i32 22, float %1982)  ; Frc(value)
  %1984 = mul nuw nsw i32 %1922, %1923
  %1985 = uitofp i32 %1984 to float
  %1986 = fmul fast float %1983, %1985
  %1987 = call float @dx.op.unary.f32(i32 27, float %1986)  ; Round_ni(value)
  %1988 = fptoui float %1987 to i32
  %1989 = urem i32 %1988, %1922
  %1990 = udiv i32 %1988, %1923
  %1991 = call float @dx.op.unary.f32(i32 22, float %1971)  ; Frc(value)
  %1992 = call float @dx.op.unary.f32(i32 22, float %1972)  ; Frc(value)
  %1993 = uitofp i32 %1989 to float
  %1994 = uitofp i32 %1990 to float
  %1995 = fadd fast float %1991, %1993
  %1996 = fadd fast float %1992, %1994
  %1997 = uitofp i32 %1922 to float
  %1998 = uitofp i32 %1923 to float
  %1999 = fdiv fast float %1995, %1997
  %2000 = fdiv fast float %1996, %1998
  br label %2001

; <label>:2001                                    ; preds = %1976, %1903
  %2002 = phi float [ %1999, %1976 ], [ %1971, %1903 ]
  %2003 = phi float [ %2000, %1976 ], [ %1972, %1903 ]
  %2004 = and i32 %1897, 16777216
  %2005 = icmp eq i32 %2004, 0
  br i1 %2005, label %2115, label %2006

; <label>:2006                                    ; preds = %2001
  %2007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2008 = extractvalue %dx.types.CBufRet.f32 %2007, 0
  %2009 = extractvalue %dx.types.CBufRet.f32 %2007, 1
  %2010 = extractvalue %dx.types.CBufRet.f32 %2007, 2
  %2011 = fadd fast float %2008, %127
  %2012 = fadd fast float %2009, %128
  %2013 = fadd fast float %2010, %129
  %2014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.f32 %2014, 0
  %2016 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2017 = icmp eq i32 %33, 65535
  br i1 %2017, label %2112, label %2018

; <label>:2018                                    ; preds = %2006
  %2019 = lshr i32 %33, 1
  %2020 = shl i32 %2019, 2
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = and i32 %33, 1
  %2024 = icmp ne i32 %2023, 0
  %2025 = lshr i32 %2022, 16
  %2026 = and i32 %2022, 65535
  %2027 = select i1 %2024, i32 %2025, i32 %2026
  %2028 = icmp eq i32 %2027, 65535
  br i1 %2028, label %2108, label %2029

; <label>:2029                                    ; preds = %2018
  %2030 = mul nuw nsw i32 %2027, 40
  %2031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.f32 %2031, 0
  %2033 = extractvalue %dx.types.ResRet.f32 %2031, 1
  %2034 = extractvalue %dx.types.ResRet.f32 %2031, 2
  %2035 = add nuw nsw i32 %2030, 12
  %2036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  %2038 = extractvalue %dx.types.ResRet.f32 %2036, 1
  %2039 = extractvalue %dx.types.ResRet.f32 %2036, 2
  %2040 = add nuw nsw i32 %2030, 24
  %2041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.f32 %2041, 0
  %2043 = extractvalue %dx.types.ResRet.f32 %2041, 1
  %2044 = extractvalue %dx.types.ResRet.f32 %2041, 2
  %2045 = add nuw nsw i32 %2030, 36
  %2046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  %2048 = fsub fast float %2011, %2032
  %2049 = fsub fast float %2012, %2033
  %2050 = fsub fast float %2013, %2034
  %2051 = fmul fast float %2047, %2048
  %2052 = fmul fast float %2047, %2049
  %2053 = fmul fast float %2047, %2050
  %2054 = call float @dx.op.unary.f32(i32 27, float %2051)  ; Round_ni(value)
  %2055 = call float @dx.op.unary.f32(i32 27, float %2052)  ; Round_ni(value)
  %2056 = call float @dx.op.unary.f32(i32 27, float %2053)  ; Round_ni(value)
  %2057 = fadd fast float %2054, 5.000000e-01
  %2058 = fadd fast float %2055, 5.000000e-01
  %2059 = fadd fast float %2056, 5.000000e-01
  %2060 = fmul fast float %2057, %2037
  %2061 = fmul fast float %2058, %2038
  %2062 = fmul fast float %2059, %2039
  %2063 = shl i32 %33, 2
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = add i32 %2065, 0
  %2067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2068 = call float @dx.op.unary.f32(i32 22, float %2060)  ; Frc(value)
  %2069 = call float @dx.op.unary.f32(i32 22, float %2061)  ; Frc(value)
  %2070 = call float @dx.op.unary.f32(i32 22, float %2062)  ; Frc(value)
  %2071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2067, %dx.types.Handle %29, float %2068, float %2069, float %2070, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2072 = extractvalue %dx.types.ResRet.f32 %2071, 0
  %2073 = extractvalue %dx.types.ResRet.f32 %2071, 1
  %2074 = extractvalue %dx.types.ResRet.f32 %2071, 2
  %2075 = fmul fast float %2072, 1.023000e+03
  %2076 = fmul fast float %2073, 1.023000e+03
  %2077 = fmul fast float %2074, 1.023000e+03
  %2078 = fadd fast float %2075, 5.000000e-01
  %2079 = fadd fast float %2076, 5.000000e-01
  %2080 = fadd fast float %2077, 5.000000e-01
  %2081 = call float @dx.op.unary.f32(i32 27, float %2078)  ; Round_ni(value)
  %2082 = call float @dx.op.unary.f32(i32 27, float %2079)  ; Round_ni(value)
  %2083 = call float @dx.op.unary.f32(i32 27, float %2080)  ; Round_ni(value)
  %2084 = fsub fast float %2051, %2054
  %2085 = fsub fast float %2052, %2055
  %2086 = fsub fast float %2053, %2056
  %2087 = fmul fast float %2084, 7.500000e-01
  %2088 = fmul fast float %2085, 7.500000e-01
  %2089 = fmul fast float %2086, 7.500000e-01
  %2090 = fadd fast float %2054, 1.250000e-01
  %2091 = fadd fast float %2090, %2087
  %2092 = fadd fast float %2091, %2081
  %2093 = fadd fast float %2055, 1.250000e-01
  %2094 = fadd fast float %2093, %2088
  %2095 = fadd fast float %2094, %2082
  %2096 = fadd fast float %2056, 1.250000e-01
  %2097 = fadd fast float %2096, %2089
  %2098 = fadd fast float %2097, %2083
  %2099 = fmul fast float %2092, %2042
  %2100 = fmul fast float %2095, %2043
  %2101 = fmul fast float %2098, %2044
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = add i32 %2103, 0
  %2105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2105, %dx.types.Handle %27, float %2099, float %2100, float %2101, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2107 = extractvalue %dx.types.ResRet.f32 %2106, 0
  br label %2108

; <label>:2108                                    ; preds = %2029, %2018
  %2109 = phi float [ %2107, %2029 ], [ -1.000000e+00, %2018 ]
  %2110 = fadd fast float %2109, %2016
  %2111 = call float @dx.op.unary.f32(i32 7, float %2110)  ; Saturate(value)
  br label %2112

; <label>:2112                                    ; preds = %2108, %2006
  %2113 = phi float [ %2111, %2108 ], [ %2016, %2006 ]
  %2114 = fmul fast float %2113, %406
  br label %2115

; <label>:2115                                    ; preds = %2112, %2001
  %2116 = phi float [ %2114, %2112 ], [ %406, %2001 ]
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = and i32 %2118, 256
  %2120 = icmp eq i32 %2119, 0
  br i1 %2120, label %2167, label %2121

; <label>:2121                                    ; preds = %2115
  %2122 = add i32 %32, 448
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2122, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = add i32 %2124, 0
  %2126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2126, %dx.types.Handle %69, float %2002, float %2003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2128 = extractvalue %dx.types.ResRet.f32 %2127, 0
  %2129 = add i32 %32, 132
  %2130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2129, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.i32 %2130, 0
  %2132 = shl i32 %2131, 4
  %2133 = and i32 %2132, 32752
  %2134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2133)  ; LegacyF16ToF32(value)
  %2135 = lshr i32 %2131, 7
  %2136 = and i32 %2135, 32752
  %2137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2136)  ; LegacyF16ToF32(value)
  %2138 = fsub fast float 1.000000e+00, %2116
  %2139 = call float @dx.op.binary.f32(i32 35, float %2138, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2140 = bitcast float %2116 to i32
  %2141 = sitofp i32 %2140 to float
  %2142 = fadd fast float %2141, 0xC1CFBF8940000000
  %2143 = fmul fast float %2137, %2142
  %2144 = fadd fast float %2143, 0x41CFBF8940000000
  %2145 = fptosi float %2144 to i32
  %2146 = bitcast i32 %2145 to float
  %2147 = bitcast float %2139 to i32
  %2148 = sitofp i32 %2147 to float
  %2149 = fadd fast float %2148, 0xC1CFBF8940000000
  %2150 = fmul fast float %2149, %2137
  %2151 = fadd fast float %2150, 0x41CFBF8940000000
  %2152 = fptosi float %2151 to i32
  %2153 = bitcast i32 %2152 to float
  %2154 = fmul fast float %2146, %2134
  %2155 = fmul fast float %2153, %2134
  %2156 = fsub fast float %2139, %2154
  %2157 = fadd fast float %2155, %2139
  %2158 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2159 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2160 = fsub fast float %2128, %2158
  %2161 = fsub fast float %2159, %2158
  %2162 = bitcast float %2161 to i32
  %2163 = sub nsw i32 2129859010, %2162
  %2164 = bitcast i32 %2163 to float
  %2165 = fmul fast float %2164, %2160
  %2166 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  br label %2167

; <label>:2167                                    ; preds = %2121, %2115
  %2168 = phi float [ %2166, %2121 ], [ %2116, %2115 ]
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = and i32 %2170, 128
  %2172 = icmp eq i32 %2171, 0
  br i1 %2172, label %2189, label %2173

; <label>:2173                                    ; preds = %2167
  %2174 = add i32 %32, 432
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = add i32 %2176, 0
  %2178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2178, %dx.types.Handle %69, float %2002, float %2003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2180 = extractvalue %dx.types.ResRet.f32 %2179, 0
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = and i32 %2182, 524288
  %2184 = icmp ne i32 %2183, 0
  %2185 = fcmp fast ogt float %2180, 0x3FE0101020000000
  %2186 = select i1 %2185, float 1.000000e+00, float 0.000000e+00
  %2187 = select i1 %2184, float %2186, float %2180
  %2188 = fmul fast float %2187, %2168
  br label %2189

; <label>:2189                                    ; preds = %2173, %2167
  %2190 = phi float [ %2188, %2173 ], [ %2168, %2167 ]
  %2191 = fcmp fast ult float %2190, 0x3F70101020000000
  br i1 %2191, label %2821, label %2192

; <label>:2192                                    ; preds = %2189
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = and i32 %2194, 16
  %2196 = icmp eq i32 %2195, 0
  br i1 %2196, label %2395, label %2197

; <label>:2197                                    ; preds = %2192
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = add i32 %32, 384
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = add i32 %2202, 0
  %2204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2204, %dx.types.Handle %68, float %2002, float %2003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2206 = extractvalue %dx.types.ResRet.f32 %2205, 0
  %2207 = extractvalue %dx.types.ResRet.f32 %2205, 1
  %2208 = extractvalue %dx.types.ResRet.f32 %2205, 2
  %2209 = extractvalue %dx.types.ResRet.f32 %2205, 3
  %2210 = and i32 %2199, 255
  %2211 = uitofp i32 %2210 to float
  %2212 = lshr i32 %2199, 8
  %2213 = and i32 %2212, 255
  %2214 = uitofp i32 %2213 to float
  %2215 = fmul fast float %2209, %2211
  %2216 = fadd fast float %2215, %2214
  %2217 = fmul fast float %2216, 0x3F70101000000000
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = and i32 %2219, 512
  %2221 = icmp eq i32 %2220, 0
  br i1 %2221, label %2230, label %2222

; <label>:2222                                    ; preds = %2197
  %2223 = add i32 %32, 468
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = add i32 %2225, 0
  %2227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2226, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2228 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2227, %dx.types.Handle %69, float %2002, float %2003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2229 = extractvalue %dx.types.ResRet.f32 %2228, 0
  br label %2230

; <label>:2230                                    ; preds = %2222, %2197
  %2231 = phi float [ %2229, %2222 ], [ 1.000000e+00, %2197 ]
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = and i32 %2233, 33554432
  %2235 = icmp eq i32 %2234, 0
  br i1 %2235, label %2342, label %2236

; <label>:2236                                    ; preds = %2230
  %2237 = add i32 %32, 256
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = and i32 %2239, 65535
  %2241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2240)  ; LegacyF16ToF32(value)
  %2242 = lshr i32 %2239, 16
  %2243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2242)  ; LegacyF16ToF32(value)
  %2244 = add i32 %32, 260
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 65535
  %2248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2247)  ; LegacyF16ToF32(value)
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = lshr i32 %2250, 24
  %2252 = uitofp i32 %2251 to float
  %2253 = fmul fast float %2252, 0x3F70101020000000
  %2254 = and i32 %2250, 255
  %2255 = uitofp i32 %2254 to float
  %2256 = fmul fast float %2255, 0x3F70101020000000
  %2257 = lshr i32 %2250, 8
  %2258 = and i32 %2257, 255
  %2259 = uitofp i32 %2258 to float
  %2260 = fmul fast float %2259, 0x3F70101020000000
  %2261 = lshr i32 %2250, 16
  %2262 = and i32 %2261, 255
  %2263 = uitofp i32 %2262 to float
  %2264 = fmul fast float %2263, 0x3F70101020000000
  %2265 = add i32 %32, 252
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = lshr i32 %2267, 24
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = and i32 %2267, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = fmul fast float %2272, 0x3F70101020000000
  %2274 = lshr i32 %2267, 8
  %2275 = and i32 %2274, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = fmul fast float %2276, 0x3F70101020000000
  %2278 = lshr i32 %2267, 16
  %2279 = and i32 %2278, 255
  %2280 = uitofp i32 %2279 to float
  %2281 = fmul fast float %2280, 0x3F70101020000000
  %2282 = bitcast float %2206 to i32
  %2283 = ashr i32 %2282, 1
  %2284 = sub nsw i32 1597463174, %2283
  %2285 = bitcast i32 %2284 to float
  %2286 = fmul fast float %2206, 5.000000e-01
  %2287 = fmul fast float %2285, %2285
  %2288 = fmul fast float %2287, %2286
  %2289 = fsub fast float 1.500000e+00, %2288
  %2290 = fmul fast float %2285, %2206
  %2291 = fmul fast float %2290, %2289
  %2292 = bitcast float %2207 to i32
  %2293 = ashr i32 %2292, 1
  %2294 = sub nsw i32 1597463174, %2293
  %2295 = bitcast i32 %2294 to float
  %2296 = fmul fast float %2207, 5.000000e-01
  %2297 = fmul fast float %2295, %2295
  %2298 = fmul fast float %2297, %2296
  %2299 = fsub fast float 1.500000e+00, %2298
  %2300 = fmul fast float %2295, %2207
  %2301 = fmul fast float %2300, %2299
  %2302 = bitcast float %2208 to i32
  %2303 = ashr i32 %2302, 1
  %2304 = sub nsw i32 1597463174, %2303
  %2305 = bitcast i32 %2304 to float
  %2306 = fmul fast float %2208, 5.000000e-01
  %2307 = fmul fast float %2305, %2305
  %2308 = fmul fast float %2307, %2306
  %2309 = fsub fast float 1.500000e+00, %2308
  %2310 = fmul fast float %2305, %2208
  %2311 = fmul fast float %2310, %2309
  %2312 = fsub fast float %2291, %2273
  %2313 = fsub fast float %2301, %2277
  %2314 = fsub fast float %2311, %2281
  %2315 = fmul fast float %2312, %2241
  %2316 = fmul fast float %2313, %2243
  %2317 = fmul fast float %2314, %2248
  %2318 = fadd fast float %2315, %2256
  %2319 = fadd fast float %2316, %2260
  %2320 = fadd fast float %2317, %2264
  %2321 = call float @dx.op.unary.f32(i32 7, float %2318)  ; Saturate(value)
  %2322 = call float @dx.op.unary.f32(i32 7, float %2319)  ; Saturate(value)
  %2323 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  %2324 = fmul fast float %2321, %2321
  %2325 = fmul fast float %2322, %2322
  %2326 = fmul fast float %2323, %2323
  %2327 = fsub fast float %2324, %2206
  %2328 = fsub fast float %2325, %2207
  %2329 = fsub fast float %2326, %2208
  %2330 = fmul fast float %2327, %2231
  %2331 = fmul fast float %2328, %2231
  %2332 = fmul fast float %2329, %2231
  %2333 = fadd fast float %2330, %2206
  %2334 = fadd fast float %2331, %2207
  %2335 = fadd fast float %2332, %2208
  %2336 = fadd fast float %2253, %2217
  %2337 = fsub fast float %2336, %2270
  %2338 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2339 = fsub fast float %2338, %2217
  %2340 = fmul fast float %2339, %2231
  %2341 = fadd fast float %2340, %2217
  br label %2395

; <label>:2342                                    ; preds = %2230
  %2343 = and i32 %2233, 134217728
  %2344 = icmp eq i32 %2343, 0
  br i1 %2344, label %2379, label %2345

; <label>:2345                                    ; preds = %2342
  %2346 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %2347 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %2348 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %2349 = fadd fast float %2346, -5.000000e-01
  %2350 = fadd fast float %2347, -5.000000e-01
  %2351 = fadd fast float %2348, -5.000000e-01
  %2352 = fmul fast float %2349, %2231
  %2353 = fmul fast float %2350, %2231
  %2354 = fmul fast float %2351, %2231
  %2355 = fadd fast float %2352, 5.000000e-01
  %2356 = fadd fast float %2353, 5.000000e-01
  %2357 = fadd fast float %2354, 5.000000e-01
  %2358 = call float @dx.op.unary.f32(i32 24, float %2206)  ; Sqrt(value)
  %2359 = call float @dx.op.unary.f32(i32 24, float %2207)  ; Sqrt(value)
  %2360 = call float @dx.op.unary.f32(i32 24, float %2208)  ; Sqrt(value)
  %2361 = fmul fast float %2355, 2.000000e+00
  %2362 = fsub fast float 1.000000e+00, %2361
  %2363 = fmul fast float %2362, %2358
  %2364 = fadd fast float %2363, %2361
  %2365 = fmul fast float %2364, %2358
  %2366 = fmul fast float %2356, 2.000000e+00
  %2367 = fsub fast float 1.000000e+00, %2366
  %2368 = fmul fast float %2367, %2359
  %2369 = fadd fast float %2368, %2366
  %2370 = fmul fast float %2369, %2359
  %2371 = fmul fast float %2357, 2.000000e+00
  %2372 = fsub fast float 1.000000e+00, %2371
  %2373 = fmul fast float %2372, %2360
  %2374 = fadd fast float %2373, %2371
  %2375 = fmul fast float %2374, %2360
  %2376 = fmul fast float %2365, %2365
  %2377 = fmul fast float %2370, %2370
  %2378 = fmul fast float %2375, %2375
  br label %2395

; <label>:2379                                    ; preds = %2342
  %2380 = fmul fast float %284, %284
  %2381 = fmul fast float %288, %288
  %2382 = fmul fast float %292, %292
  %2383 = fadd fast float %2380, -1.000000e+00
  %2384 = fadd fast float %2381, -1.000000e+00
  %2385 = fadd fast float %2382, -1.000000e+00
  %2386 = fmul fast float %2231, %2383
  %2387 = fmul fast float %2231, %2384
  %2388 = fmul fast float %2231, %2385
  %2389 = fadd fast float %2386, 1.000000e+00
  %2390 = fadd fast float %2387, 1.000000e+00
  %2391 = fadd fast float %2388, 1.000000e+00
  %2392 = fmul fast float %2389, %2206
  %2393 = fmul fast float %2390, %2207
  %2394 = fmul fast float %2391, %2208
  br label %2395

; <label>:2395                                    ; preds = %2379, %2345, %2236, %2192
  %2396 = phi float [ %2341, %2236 ], [ %2217, %2345 ], [ %2217, %2379 ], [ 0x3FA23C0BE0000000, %2192 ]
  %2397 = phi float [ %2333, %2236 ], [ %2376, %2345 ], [ %2392, %2379 ], [ 1.000000e+00, %2192 ]
  %2398 = phi float [ %2334, %2236 ], [ %2377, %2345 ], [ %2393, %2379 ], [ 1.000000e+00, %2192 ]
  %2399 = phi float [ %2335, %2236 ], [ %2378, %2345 ], [ %2394, %2379 ], [ 1.000000e+00, %2192 ]
  %2400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2401 = extractvalue %dx.types.CBufRet.i32 %2400, 1
  %2402 = and i32 %2401, 1
  %2403 = icmp ne i32 %2402, 0
  %2404 = add i32 %32, 356
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = and i32 %2406, 32
  %2408 = icmp ne i32 %2407, 0
  %2409 = and i1 %2403, %2408
  %2410 = select i1 %2409, float 1.000000e+00, float %2397
  %2411 = select i1 %2409, float 0x3FD3333340000000, float %2398
  %2412 = select i1 %2409, float 0x3FD3333340000000, float %2399
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = and i32 %2414, 32
  %2416 = icmp eq i32 %2415, 0
  br i1 %2416, label %2489, label %2417

; <label>:2417                                    ; preds = %2395
  %2418 = add i32 %32, 124
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = add i32 %32, 400
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2421, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = add i32 %2423, 0
  %2425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2426 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2425, %dx.types.Handle %68, float %2002, float %2003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2427 = extractvalue %dx.types.ResRet.f32 %2426, 0
  %2428 = extractvalue %dx.types.ResRet.f32 %2426, 1
  %2429 = extractvalue %dx.types.ResRet.f32 %2426, 2
  %2430 = extractvalue %dx.types.ResRet.f32 %2426, 3
  %2431 = and i32 %2420, 255
  %2432 = uitofp i32 %2431 to float
  %2433 = lshr i32 %2420, 8
  %2434 = and i32 %2433, 255
  %2435 = uitofp i32 %2434 to float
  %2436 = lshr i32 %2420, 16
  %2437 = and i32 %2436, 255
  %2438 = uitofp i32 %2437 to float
  %2439 = fmul fast float %2438, 0x3F70101000000000
  %2440 = fmul fast float %2427, %2432
  %2441 = fadd fast float %2440, %2435
  %2442 = fmul fast float %2441, 0x3F70101000000000
  %2443 = fadd fast float %2428, -5.000000e-01
  %2444 = fadd fast float %2430, -5.000000e-01
  %2445 = fmul fast float %2443, %2439
  %2446 = fmul fast float %2444, %2439
  %2447 = fadd fast float %2445, 5.000000e-01
  %2448 = fadd fast float %2446, 5.000000e-01
  %2449 = fmul fast float %2447, 2.000000e+00
  %2450 = fadd fast float %2449, -1.000000e+00
  %2451 = fmul fast float %2448, 2.000000e+00
  %2452 = fadd fast float %2451, -1.000000e+00
  %2453 = fadd fast float %2450, %2452
  %2454 = fmul fast float %2453, 5.000000e-01
  %2455 = fsub fast float %2450, %2452
  %2456 = fmul fast float %2455, 5.000000e-01
  %2457 = call float @dx.op.unary.f32(i32 6, float %2454)  ; FAbs(value)
  %2458 = fsub fast float 1.000000e+00, %2457
  %2459 = call float @dx.op.unary.f32(i32 6, float %2456)  ; FAbs(value)
  %2460 = fsub fast float %2458, %2459
  %2461 = call float @dx.op.dot3.f32(i32 55, float %2454, float %2456, float %2460, float %2454, float %2456, float %2460)  ; Dot3(ax,ay,az,bx,by,bz)
  %2462 = call float @dx.op.unary.f32(i32 25, float %2461)  ; Rsqrt(value)
  %2463 = fmul fast float %2454, %2462
  %2464 = fmul fast float %2456, %2462
  %2465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.i32 %2465, 0
  %2467 = and i32 %2466, 67108864
  %2468 = icmp eq i32 %2467, 0
  br i1 %2468, label %2485, label %2469

; <label>:2469                                    ; preds = %2417
  %2470 = add i32 %32, 312
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2470, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = and i32 %2472, 65535
  %2474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2473)  ; LegacyF16ToF32(value)
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = and i32 %2476, 65535
  %2478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2477)  ; LegacyF16ToF32(value)
  %2479 = lshr i32 %2472, 16
  %2480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2479)  ; LegacyF16ToF32(value)
  %2481 = fsub fast float %2442, %2480
  %2482 = fmul fast float %2481, %2474
  %2483 = fadd fast float %2482, %2478
  %2484 = call float @dx.op.unary.f32(i32 7, float %2483)  ; Saturate(value)
  br label %2485

; <label>:2485                                    ; preds = %2469, %2417
  %2486 = phi float [ %2484, %2469 ], [ %2442, %2417 ]
  %2487 = call float @dx.op.dot2.f32(i32 54, float %2463, float %2464, float %1906, float %1907)  ; Dot2(ax,ay,bx,by)
  %2488 = call float @dx.op.dot2.f32(i32 54, float %2463, float %2464, float %1908, float %1909)  ; Dot2(ax,ay,bx,by)
  br label %2489

; <label>:2489                                    ; preds = %2485, %2395
  %2490 = phi float [ %2486, %2485 ], [ 0x3FD6666660000000, %2395 ]
  %2491 = phi float [ %2487, %2485 ], [ 0.000000e+00, %2395 ]
  %2492 = phi float [ %2488, %2485 ], [ 0.000000e+00, %2395 ]
  %2493 = phi float [ %2429, %2485 ], [ 1.000000e+00, %2395 ]
  %2494 = add i32 %32, 192
  %2495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2494, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.i32 %2495, 0
  %2497 = lshr i32 %2496, 22
  %2498 = shl nuw nsw i32 %2497, 5
  %2499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2498)  ; LegacyF16ToF32(value)
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 64
  %2503 = icmp eq i32 %2502, 0
  br i1 %2503, label %2537, label %2504

; <label>:2504                                    ; preds = %2489
  %2505 = add i32 %32, 416
  %2506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2505, i32 undef)  ; BufferLoad(srv,index,wot)
  %2507 = extractvalue %dx.types.ResRet.i32 %2506, 0
  %2508 = add i32 %2507, 0
  %2509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 131072
  %2513 = icmp eq i32 %2512, 0
  %2514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2509, %dx.types.Handle %68, float %2002, float %2003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2515 = extractvalue %dx.types.ResRet.f32 %2514, 0
  %2516 = extractvalue %dx.types.ResRet.f32 %2514, 1
  %2517 = extractvalue %dx.types.ResRet.f32 %2514, 2
  %2518 = fmul fast float %2515, %272
  %2519 = fmul fast float %2516, %275
  %2520 = fmul fast float %2517, %278
  br i1 %2513, label %2527, label %2521

; <label>:2521                                    ; preds = %2504
  %2522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.f32 %2522, 0
  %2524 = fmul fast float %2523, %2518
  %2525 = fmul fast float %2523, %2519
  %2526 = fmul fast float %2523, %2520
  br label %2527

; <label>:2527                                    ; preds = %2521, %2504
  %2528 = phi float [ %2524, %2521 ], [ %2518, %2504 ]
  %2529 = phi float [ %2525, %2521 ], [ %2519, %2504 ]
  %2530 = phi float [ %2526, %2521 ], [ %2520, %2504 ]
  %2531 = fmul fast float %2528, %2499
  %2532 = select i1 %168, float %2531, float %2528
  %2533 = call float @dx.op.dot3.f32(i32 55, float %2532, float %2529, float %2530, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2534 = select i1 %168, float 0.000000e+00, float %2528
  %2535 = select i1 %168, float %2533, float %2529
  %2536 = select i1 %168, float 0.000000e+00, float %2530
  br label %2537

; <label>:2537                                    ; preds = %2527, %2489
  %2538 = phi float [ %2534, %2527 ], [ 0.000000e+00, %2489 ]
  %2539 = phi float [ %2535, %2527 ], [ 0.000000e+00, %2489 ]
  %2540 = phi float [ %2536, %2527 ], [ 0.000000e+00, %2489 ]
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = and i32 %2542, 10240
  %2544 = icmp eq i32 %2543, 0
  br i1 %2544, label %2589, label %2545

; <label>:2545                                    ; preds = %2537
  %2546 = add i32 %32, 484
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = add i32 %2548, 0
  %2550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2551 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2550, %dx.types.Handle %69, float %2002, float %2003, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2552 = extractvalue %dx.types.ResRet.f32 %2551, 1
  %2553 = extractvalue %dx.types.ResRet.f32 %2551, 3
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = and i32 %2555, 1048576
  %2557 = icmp ne i32 %2556, 0
  %2558 = and i32 %2555, 8192
  %2559 = icmp eq i32 %2558, 0
  br i1 %2559, label %2575, label %2560

; <label>:2560                                    ; preds = %2545
  %2561 = extractvalue %dx.types.ResRet.f32 %2551, 2
  %2562 = select i1 %2557, float %2561, float %2552
  %2563 = extractvalue %dx.types.ResRet.f32 %2551, 0
  %2564 = select i1 %2557, float %2563, float %2552
  %2565 = add i32 %32, 128
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = lshr i32 %2567, 16
  %2569 = and i32 %2568, 255
  %2570 = uitofp i32 %2569 to float
  %2571 = fmul fast float %2570, 0x3F80101020000000
  %2572 = fmul fast float %2571, %2564
  %2573 = fmul fast float %2571, %2552
  %2574 = fmul fast float %2571, %2562
  br label %2575

; <label>:2575                                    ; preds = %2560, %2545
  %2576 = phi float [ %2572, %2560 ], [ 0.000000e+00, %2545 ]
  %2577 = phi float [ %2573, %2560 ], [ 0.000000e+00, %2545 ]
  %2578 = phi float [ %2574, %2560 ], [ 0.000000e+00, %2545 ]
  %2579 = and i32 %2555, 2048
  %2580 = icmp eq i32 %2579, 0
  br i1 %2580, label %2589, label %2581

; <label>:2581                                    ; preds = %2575
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2494, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = shl i32 %2583, 4
  %2585 = and i32 %2584, 32752
  %2586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2585)  ; LegacyF16ToF32(value)
  %2587 = fmul fast float %2586, %2553
  %2588 = call float @dx.op.binary.f32(i32 35, float %2587, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2589

; <label>:2589                                    ; preds = %2581, %2575, %2537
  %2590 = phi float [ %2576, %2581 ], [ %2576, %2575 ], [ 0.000000e+00, %2537 ]
  %2591 = phi float [ %2577, %2581 ], [ %2577, %2575 ], [ 0.000000e+00, %2537 ]
  %2592 = phi float [ %2578, %2581 ], [ %2578, %2575 ], [ 0.000000e+00, %2537 ]
  %2593 = phi float [ %2588, %2581 ], [ 0x3F70101020000000, %2575 ], [ 0x3F70101020000000, %2537 ]
  %2594 = add i32 %32, 128
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 255
  %2598 = uitofp i32 %2597 to float
  %2599 = lshr i32 %2596, 8
  %2600 = and i32 %2599, 255
  %2601 = uitofp i32 %2600 to float
  %2602 = call float @dx.op.dot3.f32(i32 55, float %2410, float %2411, float %2412, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2603 = fmul fast float %2601, %2602
  %2604 = fadd fast float %2603, %2598
  %2605 = fmul fast float %2604, 0x3F70101020000000
  %2606 = call float @dx.op.unary.f32(i32 7, float %2605)  ; Saturate(value)
  br i1 %1894, label %2607, label %2615

; <label>:2607                                    ; preds = %2589
  %2608 = fsub fast float 1.000000e+00, %2190
  %2609 = fmul fast float %2608, %1879
  %2610 = fmul fast float %2608, %1880
  %2611 = fmul fast float %2608, %1881
  %2612 = fmul fast float %2608, %1882
  %2613 = fmul fast float %2608, %1883
  %2614 = fmul fast float %2608, %1884
  br label %2615

; <label>:2615                                    ; preds = %2607, %2589
  %2616 = phi float [ %2609, %2607 ], [ %1879, %2589 ]
  %2617 = phi float [ %2610, %2607 ], [ %1880, %2589 ]
  %2618 = phi float [ %2611, %2607 ], [ %1881, %2589 ]
  %2619 = phi float [ %2612, %2607 ], [ %1882, %2589 ]
  %2620 = phi float [ %2613, %2607 ], [ %1883, %2589 ]
  %2621 = phi float [ %2614, %2607 ], [ %1884, %2589 ]
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = and i32 %2623, 3
  %2625 = icmp eq i32 %2624, 3
  br i1 %2625, label %2704, label %2626

; <label>:2626                                    ; preds = %2615
  %2627 = and i32 %2623, 16
  %2628 = icmp ne i32 %2627, 0
  %2629 = select i1 %2628, float %2190, float 0.000000e+00
  %2630 = icmp eq i32 %2624, 0
  br i1 %2630, label %2631, label %2659

; <label>:2631                                    ; preds = %2626
  %2632 = and i32 %2623, 64
  %2633 = icmp ne i32 %2632, 0
  %2634 = select i1 %2633, float %2190, float 0.000000e+00
  %2635 = fsub fast float %2410, %2616
  %2636 = fsub fast float %2411, %2617
  %2637 = fsub fast float %2412, %2618
  %2638 = fmul fast float %2629, %2635
  %2639 = fmul fast float %2629, %2636
  %2640 = fmul fast float %2629, %2637
  %2641 = fadd fast float %2638, %2616
  %2642 = fadd fast float %2639, %2617
  %2643 = fadd fast float %2640, %2618
  %2644 = fsub fast float %2396, %1888
  %2645 = fmul fast float %2629, %2644
  %2646 = fadd fast float %2645, %1888
  %2647 = fsub fast float %2538, %2619
  %2648 = fsub fast float %2539, %2620
  %2649 = fsub fast float %2540, %2621
  %2650 = fmul fast float %2634, %2647
  %2651 = fmul fast float %2634, %2648
  %2652 = fmul fast float %2634, %2649
  %2653 = fadd fast float %2650, %2619
  %2654 = fadd fast float %2651, %2620
  %2655 = fadd fast float %2652, %2621
  %2656 = fsub fast float %2606, %1892
  %2657 = fmul fast float %2629, %2656
  %2658 = fadd fast float %2657, %1892
  br label %2704

; <label>:2659                                    ; preds = %2626
  %2660 = icmp eq i32 %2624, 1
  br i1 %2660, label %2661, label %2674

; <label>:2661                                    ; preds = %2659
  %2662 = fadd fast float %2410, -1.000000e+00
  %2663 = fadd fast float %2411, -1.000000e+00
  %2664 = fadd fast float %2412, -1.000000e+00
  %2665 = fmul fast float %2629, %2662
  %2666 = fmul fast float %2629, %2663
  %2667 = fmul fast float %2629, %2664
  %2668 = fadd fast float %2665, 1.000000e+00
  %2669 = fadd fast float %2666, 1.000000e+00
  %2670 = fadd fast float %2667, 1.000000e+00
  %2671 = fmul fast float %2668, %2616
  %2672 = fmul fast float %2669, %2617
  %2673 = fmul fast float %2670, %2618
  br label %2704

; <label>:2674                                    ; preds = %2659
  %2675 = icmp eq i32 %2624, 2
  br i1 %2675, label %2676, label %2704

; <label>:2676                                    ; preds = %2674
  %2677 = call float @dx.op.unary.f32(i32 24, float %2410)  ; Sqrt(value)
  %2678 = call float @dx.op.unary.f32(i32 24, float %2411)  ; Sqrt(value)
  %2679 = call float @dx.op.unary.f32(i32 24, float %2412)  ; Sqrt(value)
  %2680 = fadd fast float %2677, -5.000000e-01
  %2681 = fadd fast float %2678, -5.000000e-01
  %2682 = fadd fast float %2679, -5.000000e-01
  %2683 = fmul fast float %2680, %2629
  %2684 = fmul fast float %2681, %2629
  %2685 = fmul fast float %2682, %2629
  %2686 = fadd fast float %2683, 5.000000e-01
  %2687 = fadd fast float %2684, 5.000000e-01
  %2688 = fadd fast float %2685, 5.000000e-01
  %2689 = fmul fast float %2686, 2.000000e+00
  %2690 = fsub fast float 1.000000e+00, %2689
  %2691 = fmul fast float %2690, %2616
  %2692 = fadd fast float %2691, %2689
  %2693 = fmul fast float %2692, %2616
  %2694 = fmul fast float %2687, 2.000000e+00
  %2695 = fsub fast float 1.000000e+00, %2694
  %2696 = fmul fast float %2695, %2617
  %2697 = fadd fast float %2696, %2694
  %2698 = fmul fast float %2697, %2617
  %2699 = fmul fast float %2688, 2.000000e+00
  %2700 = fsub fast float 1.000000e+00, %2699
  %2701 = fmul fast float %2700, %2618
  %2702 = fadd fast float %2701, %2699
  %2703 = fmul fast float %2702, %2618
  br label %2704

; <label>:2704                                    ; preds = %2676, %2674, %2661, %2631, %2615
  %2705 = phi float [ %2616, %2615 ], [ %2693, %2676 ], [ %2616, %2674 ], [ %2671, %2661 ], [ %2641, %2631 ]
  %2706 = phi float [ %2617, %2615 ], [ %2698, %2676 ], [ %2617, %2674 ], [ %2672, %2661 ], [ %2642, %2631 ]
  %2707 = phi float [ %2618, %2615 ], [ %2703, %2676 ], [ %2618, %2674 ], [ %2673, %2661 ], [ %2643, %2631 ]
  %2708 = phi float [ %2619, %2615 ], [ %2619, %2676 ], [ %2619, %2674 ], [ %2619, %2661 ], [ %2653, %2631 ]
  %2709 = phi float [ %2620, %2615 ], [ %2620, %2676 ], [ %2620, %2674 ], [ %2620, %2661 ], [ %2654, %2631 ]
  %2710 = phi float [ %2621, %2615 ], [ %2621, %2676 ], [ %2621, %2674 ], [ %2621, %2661 ], [ %2655, %2631 ]
  %2711 = phi float [ %1888, %2615 ], [ %1888, %2676 ], [ %1888, %2674 ], [ %1888, %2661 ], [ %2646, %2631 ]
  %2712 = phi float [ %1892, %2615 ], [ %1892, %2676 ], [ %1892, %2674 ], [ %1892, %2661 ], [ %2658, %2631 ]
  %2713 = and i32 %2623, 12
  %2714 = icmp eq i32 %2713, 12
  br i1 %2714, label %2821, label %2715

; <label>:2715                                    ; preds = %2704
  %2716 = and i32 %2623, 2097184
  %2717 = icmp eq i32 %2716, 2097184
  %2718 = select i1 %2717, float %2190, float 0.000000e+00
  %2719 = and i32 %2623, 4194336
  %2720 = icmp eq i32 %2719, 4194336
  %2721 = select i1 %2720, float %2190, float 0.000000e+00
  %2722 = and i32 %2623, 8388640
  %2723 = icmp eq i32 %2722, 8388640
  %2724 = select i1 %2723, float %2190, float 0.000000e+00
  %2725 = and i32 %2623, 2048
  %2726 = icmp ne i32 %2725, 0
  %2727 = select i1 %2726, float %2190, float 0.000000e+00
  %2728 = and i32 %2623, 8192
  %2729 = icmp ne i32 %2728, 0
  %2730 = select i1 %2729, float %2190, float 0.000000e+00
  %2731 = icmp eq i32 %2713, 0
  br i1 %2731, label %2732, label %2757

; <label>:2732                                    ; preds = %2715
  %2733 = fsub fast float %2491, %1877
  %2734 = fsub fast float %2492, %1878
  %2735 = fmul fast float %2718, %2733
  %2736 = fmul fast float %2718, %2734
  %2737 = fadd fast float %2735, %1877
  %2738 = fadd fast float %2736, %1878
  %2739 = fsub fast float %2493, %1890
  %2740 = fmul fast float %2721, %2739
  %2741 = fadd fast float %2740, %1890
  %2742 = fsub fast float %2490, %1889
  %2743 = fmul fast float %2724, %2742
  %2744 = fadd fast float %2743, %1889
  %2745 = fsub fast float %2593, %1891
  %2746 = fmul fast float %2727, %2745
  %2747 = fadd fast float %2746, %1891
  %2748 = fsub fast float %2590, %1885
  %2749 = fsub fast float %2591, %1886
  %2750 = fsub fast float %2592, %1887
  %2751 = fmul fast float %2730, %2748
  %2752 = fmul fast float %2730, %2749
  %2753 = fmul fast float %2730, %2750
  %2754 = fadd fast float %2751, %1885
  %2755 = fadd fast float %2752, %1886
  %2756 = fadd fast float %2753, %1887
  br label %2821

; <label>:2757                                    ; preds = %2715
  %2758 = icmp eq i32 %2713, 4
  br i1 %2758, label %2759, label %2799

; <label>:2759                                    ; preds = %2757
  %2760 = fmul fast float %2718, %2491
  %2761 = fmul fast float %2718, %2492
  %2762 = fadd fast float %2760, %1877
  %2763 = fadd fast float %2761, %1878
  %2764 = call float @dx.op.binary.f32(i32 36, float %1890, float %2493)  ; FMin(a,b)
  %2765 = fsub fast float %2764, %1890
  %2766 = fmul fast float %2765, %2721
  %2767 = fadd fast float %2766, %1890
  %2768 = fadd fast float %2490, %1889
  %2769 = fmul fast float %2768, 0x3FF337FAE0000000
  %2770 = fmul fast float %1889, %1889
  %2771 = fmul fast float %2490, %2490
  %2772 = fadd fast float %2771, %2770
  %2773 = fmul fast float %2772, 0x3FE5152B00000000
  %2774 = fmul fast float %1889, 0xBFCC1F85E0000000
  %2775 = fmul fast float %2774, %2490
  %2776 = fadd fast float %2775, 0xBFE1363700000000
  %2777 = fadd fast float %2776, %2769
  %2778 = fsub fast float %2777, %2773
  %2779 = fmul fast float %2768, 0x3FBA6F0D00000000
  %2780 = fmul fast float %2772, 0x3FD0432880000000
  %2781 = fmul fast float %1889, 0xBFEF110800000000
  %2782 = fmul fast float %2781, %2490
  %2783 = fadd fast float %2782, 1.000000e+00
  %2784 = fsub fast float %2783, %2779
  %2785 = fadd fast float %2784, %2780
  %2786 = fdiv fast float %2778, %2785
  %2787 = call float @dx.op.unary.f32(i32 7, float %2786)  ; Saturate(value)
  %2788 = fsub fast float %2787, %1889
  %2789 = fmul fast float %2788, %2724
  %2790 = fadd fast float %2789, %1889
  %2791 = fmul fast float %2727, %2593
  %2792 = fadd fast float %2791, %1891
  %2793 = fmul fast float %2730, %2590
  %2794 = fmul fast float %2730, %2591
  %2795 = fmul fast float %2730, %2592
  %2796 = fadd fast float %2793, %1885
  %2797 = fadd fast float %2794, %1886
  %2798 = fadd fast float %2795, %1887
  br label %2821

; <label>:2799                                    ; preds = %2757
  %2800 = icmp eq i32 %2713, 8
  br i1 %2800, label %2801, label %2821

; <label>:2801                                    ; preds = %2799
  %2802 = fmul fast float %2718, %2491
  %2803 = fmul fast float %2718, %2492
  %2804 = fadd fast float %2802, %1877
  %2805 = fadd fast float %2803, %1878
  %2806 = call float @dx.op.binary.f32(i32 36, float %1890, float %2493)  ; FMin(a,b)
  %2807 = fsub fast float %2806, %1890
  %2808 = fmul fast float %2807, %2721
  %2809 = fadd fast float %2808, %1890
  %2810 = fsub fast float %2490, %1889
  %2811 = fmul fast float %2724, %2810
  %2812 = fadd fast float %2811, %1889
  %2813 = fmul fast float %2727, %2593
  %2814 = fadd fast float %2813, %1891
  %2815 = fmul fast float %2730, %2590
  %2816 = fmul fast float %2730, %2591
  %2817 = fmul fast float %2730, %2592
  %2818 = fadd fast float %2815, %1885
  %2819 = fadd fast float %2816, %1886
  %2820 = fadd fast float %2817, %1887
  br label %2821

; <label>:2821                                    ; preds = %2801, %2799, %2759, %2732, %2704, %2189, %1893, %1876
  %2822 = phi float [ %1877, %2704 ], [ %1877, %2189 ], [ %1877, %1876 ], [ %2804, %2801 ], [ %1877, %2799 ], [ %2762, %2759 ], [ %2737, %2732 ], [ %1877, %1893 ]
  %2823 = phi float [ %1878, %2704 ], [ %1878, %2189 ], [ %1878, %1876 ], [ %2805, %2801 ], [ %1878, %2799 ], [ %2763, %2759 ], [ %2738, %2732 ], [ %1878, %1893 ]
  %2824 = phi float [ %2705, %2704 ], [ %1879, %2189 ], [ %1879, %1876 ], [ %2705, %2801 ], [ %2705, %2799 ], [ %2705, %2759 ], [ %2705, %2732 ], [ %1879, %1893 ]
  %2825 = phi float [ %2706, %2704 ], [ %1880, %2189 ], [ %1880, %1876 ], [ %2706, %2801 ], [ %2706, %2799 ], [ %2706, %2759 ], [ %2706, %2732 ], [ %1880, %1893 ]
  %2826 = phi float [ %2707, %2704 ], [ %1881, %2189 ], [ %1881, %1876 ], [ %2707, %2801 ], [ %2707, %2799 ], [ %2707, %2759 ], [ %2707, %2732 ], [ %1881, %1893 ]
  %2827 = phi float [ %2708, %2704 ], [ %1882, %2189 ], [ %1882, %1876 ], [ %2708, %2801 ], [ %2708, %2799 ], [ %2708, %2759 ], [ %2708, %2732 ], [ %1882, %1893 ]
  %2828 = phi float [ %2709, %2704 ], [ %1883, %2189 ], [ %1883, %1876 ], [ %2709, %2801 ], [ %2709, %2799 ], [ %2709, %2759 ], [ %2709, %2732 ], [ %1883, %1893 ]
  %2829 = phi float [ %2710, %2704 ], [ %1884, %2189 ], [ %1884, %1876 ], [ %2710, %2801 ], [ %2710, %2799 ], [ %2710, %2759 ], [ %2710, %2732 ], [ %1884, %1893 ]
  %2830 = phi float [ %1885, %2704 ], [ %1885, %2189 ], [ %1885, %1876 ], [ %2818, %2801 ], [ %1885, %2799 ], [ %2796, %2759 ], [ %2754, %2732 ], [ %1885, %1893 ]
  %2831 = phi float [ %1886, %2704 ], [ %1886, %2189 ], [ %1886, %1876 ], [ %2819, %2801 ], [ %1886, %2799 ], [ %2797, %2759 ], [ %2755, %2732 ], [ %1886, %1893 ]
  %2832 = phi float [ %1887, %2704 ], [ %1887, %2189 ], [ %1887, %1876 ], [ %2820, %2801 ], [ %1887, %2799 ], [ %2798, %2759 ], [ %2756, %2732 ], [ %1887, %1893 ]
  %2833 = phi float [ %2711, %2704 ], [ %1888, %2189 ], [ %1888, %1876 ], [ %2711, %2801 ], [ %2711, %2799 ], [ %2711, %2759 ], [ %2711, %2732 ], [ %1888, %1893 ]
  %2834 = phi float [ %1889, %2704 ], [ %1889, %2189 ], [ %1889, %1876 ], [ %2812, %2801 ], [ %1889, %2799 ], [ %2790, %2759 ], [ %2744, %2732 ], [ %1889, %1893 ]
  %2835 = phi float [ %1890, %2704 ], [ %1890, %2189 ], [ %1890, %1876 ], [ %2809, %2801 ], [ %1890, %2799 ], [ %2767, %2759 ], [ %2741, %2732 ], [ %1890, %1893 ]
  %2836 = phi float [ %1891, %2704 ], [ %1891, %2189 ], [ %1891, %1876 ], [ %2814, %2801 ], [ %1891, %2799 ], [ %2792, %2759 ], [ %2747, %2732 ], [ %1891, %1893 ]
  %2837 = phi float [ %2712, %2704 ], [ %1892, %2189 ], [ %1892, %1876 ], [ %2712, %2801 ], [ %2712, %2799 ], [ %2712, %2759 ], [ %2712, %2732 ], [ %1892, %1893 ]
  br i1 %359, label %3766, label %2838

; <label>:2838                                    ; preds = %2821
  %2839 = icmp ult i32 %410, 4
  %2840 = add i32 %32, 72
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = add i32 %32, 76
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = or i32 %2845, %2842
  %2847 = icmp eq i32 %2846, 0
  br i1 %2847, label %3766, label %2848

; <label>:2848                                    ; preds = %2838
  %2849 = and i32 %2842, 262144
  %2850 = icmp ne i32 %2849, 0
  %2851 = select i1 %2850, float %35, float 1.000000e+00
  %2852 = select i1 %2850, float %36, float 0.000000e+00
  %2853 = select i1 %2850, float %37, float 0.000000e+00
  %2854 = select i1 %2850, float %38, float 1.000000e+00
  %2855 = select i1 %2850, float %39, float %60
  %2856 = select i1 %2850, float %40, float %61
  %2857 = add i32 %32, 332
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = lshr i32 %2859, 16
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = fmul fast float %2861, 0x3F50624DE0000000
  %2863 = add i32 %32, 136
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = lshr i32 %2865, 16
  %2867 = and i32 %2866, 255
  %2868 = lshr i32 %2865, 24
  %2869 = add i32 %32, 340
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = and i32 %2871, 65535
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = lshr i32 %2871, 16
  %2875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2874)  ; LegacyF16ToF32(value)
  %2876 = add i32 %32, 80
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = lshr i32 %2878, 22
  %2880 = shl nuw nsw i32 %2879, 5
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = shl i32 %2878, 4
  %2883 = and i32 %2882, 32752
  %2884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2883)  ; LegacyF16ToF32(value)
  %2885 = lshr i32 %2878, 7
  %2886 = and i32 %2885, 32752
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.f32 %2888, 3
  %2890 = fmul fast float %2889, 1.000000e+03
  %2891 = fmul fast float %349, %2890
  %2892 = call float @dx.op.unary.f32(i32 22, float %2891)  ; Frc(value)
  %2893 = fadd fast float %2892, %339
  %2894 = fmul fast float %350, %2890
  %2895 = call float @dx.op.unary.f32(i32 22, float %2894)  ; Frc(value)
  %2896 = fadd fast float %2895, %341
  %2897 = fmul fast float %2862, %2890
  %2898 = call float @dx.op.unary.f32(i32 22, float %2897)  ; Frc(value)
  %2899 = fmul fast float %2898, 0x401921FB60000000
  %2900 = fadd fast float %2899, %2881
  %2901 = call float @dx.op.unary.f32(i32 13, float %2900)  ; Sin(value)
  %2902 = call float @dx.op.unary.f32(i32 12, float %2900)  ; Cos(value)
  %2903 = fsub fast float -0.000000e+00, %2901
  %2904 = fadd fast float %2855, -5.000000e-01
  %2905 = fadd fast float %2856, -5.000000e-01
  %2906 = fmul fast float %2873, %2904
  %2907 = fmul fast float %2875, %2905
  %2908 = fadd fast float %2906, 5.000000e-01
  %2909 = fadd fast float %2907, 5.000000e-01
  %2910 = fmul fast float %2884, %2908
  %2911 = fmul fast float %2887, %2909
  %2912 = fmul fast float %2902, %2910
  %2913 = call float @dx.op.tertiary.f32(i32 46, float %2903, float %2911, float %2912)  ; FMad(a,b,c)
  %2914 = fmul fast float %2901, %2910
  %2915 = call float @dx.op.tertiary.f32(i32 46, float %2902, float %2911, float %2914)  ; FMad(a,b,c)
  %2916 = fadd fast float %2893, %2913
  %2917 = fadd fast float %2896, %2915
  %2918 = icmp ugt i32 %2867, 1
  %2919 = icmp ugt i32 %2865, 33554431
  %2920 = or i1 %2919, %2918
  br i1 %2920, label %2921, label %2946

; <label>:2921                                    ; preds = %2848
  %2922 = add i32 %32, 276
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = lshr i32 %2924, 16
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925)  ; LegacyF16ToF32(value)
  %2927 = fmul fast float %2889, %2926
  %2928 = call float @dx.op.unary.f32(i32 22, float %2927)  ; Frc(value)
  %2929 = mul nuw nsw i32 %2867, %2868
  %2930 = uitofp i32 %2929 to float
  %2931 = fmul fast float %2928, %2930
  %2932 = call float @dx.op.unary.f32(i32 27, float %2931)  ; Round_ni(value)
  %2933 = fptoui float %2932 to i32
  %2934 = urem i32 %2933, %2867
  %2935 = udiv i32 %2933, %2868
  %2936 = call float @dx.op.unary.f32(i32 22, float %2916)  ; Frc(value)
  %2937 = call float @dx.op.unary.f32(i32 22, float %2917)  ; Frc(value)
  %2938 = uitofp i32 %2934 to float
  %2939 = uitofp i32 %2935 to float
  %2940 = fadd fast float %2936, %2938
  %2941 = fadd fast float %2937, %2939
  %2942 = uitofp i32 %2867 to float
  %2943 = uitofp i32 %2868 to float
  %2944 = fdiv fast float %2940, %2942
  %2945 = fdiv fast float %2941, %2943
  br label %2946

; <label>:2946                                    ; preds = %2921, %2848
  %2947 = phi float [ %2944, %2921 ], [ %2916, %2848 ]
  %2948 = phi float [ %2945, %2921 ], [ %2917, %2848 ]
  %2949 = and i32 %2842, 16777216
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %3060, label %2951

; <label>:2951                                    ; preds = %2946
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 0
  %2954 = extractvalue %dx.types.CBufRet.f32 %2952, 1
  %2955 = extractvalue %dx.types.CBufRet.f32 %2952, 2
  %2956 = fadd fast float %2953, %127
  %2957 = fadd fast float %2954, %128
  %2958 = fadd fast float %2955, %129
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 0
  %2961 = call float @dx.op.unary.f32(i32 7, float %2960)  ; Saturate(value)
  %2962 = icmp eq i32 %33, 65535
  br i1 %2962, label %3057, label %2963

; <label>:2963                                    ; preds = %2951
  %2964 = lshr i32 %33, 1
  %2965 = shl i32 %2964, 2
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %33, 1
  %2969 = icmp ne i32 %2968, 0
  %2970 = lshr i32 %2967, 16
  %2971 = and i32 %2967, 65535
  %2972 = select i1 %2969, i32 %2970, i32 %2971
  %2973 = icmp eq i32 %2972, 65535
  br i1 %2973, label %3053, label %2974

; <label>:2974                                    ; preds = %2963
  %2975 = mul nuw nsw i32 %2972, 40
  %2976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.f32 %2976, 0
  %2978 = extractvalue %dx.types.ResRet.f32 %2976, 1
  %2979 = extractvalue %dx.types.ResRet.f32 %2976, 2
  %2980 = add nuw nsw i32 %2975, 12
  %2981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.ResRet.f32 %2981, 1
  %2984 = extractvalue %dx.types.ResRet.f32 %2981, 2
  %2985 = add nuw nsw i32 %2975, 24
  %2986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.ResRet.f32 %2986, 1
  %2989 = extractvalue %dx.types.ResRet.f32 %2986, 2
  %2990 = add nuw nsw i32 %2975, 36
  %2991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = fsub fast float %2956, %2977
  %2994 = fsub fast float %2957, %2978
  %2995 = fsub fast float %2958, %2979
  %2996 = fmul fast float %2992, %2993
  %2997 = fmul fast float %2992, %2994
  %2998 = fmul fast float %2992, %2995
  %2999 = call float @dx.op.unary.f32(i32 27, float %2996)  ; Round_ni(value)
  %3000 = call float @dx.op.unary.f32(i32 27, float %2997)  ; Round_ni(value)
  %3001 = call float @dx.op.unary.f32(i32 27, float %2998)  ; Round_ni(value)
  %3002 = fadd fast float %2999, 5.000000e-01
  %3003 = fadd fast float %3000, 5.000000e-01
  %3004 = fadd fast float %3001, 5.000000e-01
  %3005 = fmul fast float %3002, %2982
  %3006 = fmul fast float %3003, %2983
  %3007 = fmul fast float %3004, %2984
  %3008 = shl i32 %33, 2
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3008, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = add i32 %3010, 0
  %3012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3013 = call float @dx.op.unary.f32(i32 22, float %3005)  ; Frc(value)
  %3014 = call float @dx.op.unary.f32(i32 22, float %3006)  ; Frc(value)
  %3015 = call float @dx.op.unary.f32(i32 22, float %3007)  ; Frc(value)
  %3016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3012, %dx.types.Handle %29, float %3013, float %3014, float %3015, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3017 = extractvalue %dx.types.ResRet.f32 %3016, 0
  %3018 = extractvalue %dx.types.ResRet.f32 %3016, 1
  %3019 = extractvalue %dx.types.ResRet.f32 %3016, 2
  %3020 = fmul fast float %3017, 1.023000e+03
  %3021 = fmul fast float %3018, 1.023000e+03
  %3022 = fmul fast float %3019, 1.023000e+03
  %3023 = fadd fast float %3020, 5.000000e-01
  %3024 = fadd fast float %3021, 5.000000e-01
  %3025 = fadd fast float %3022, 5.000000e-01
  %3026 = call float @dx.op.unary.f32(i32 27, float %3023)  ; Round_ni(value)
  %3027 = call float @dx.op.unary.f32(i32 27, float %3024)  ; Round_ni(value)
  %3028 = call float @dx.op.unary.f32(i32 27, float %3025)  ; Round_ni(value)
  %3029 = fsub fast float %2996, %2999
  %3030 = fsub fast float %2997, %3000
  %3031 = fsub fast float %2998, %3001
  %3032 = fmul fast float %3029, 7.500000e-01
  %3033 = fmul fast float %3030, 7.500000e-01
  %3034 = fmul fast float %3031, 7.500000e-01
  %3035 = fadd fast float %2999, 1.250000e-01
  %3036 = fadd fast float %3035, %3032
  %3037 = fadd fast float %3036, %3026
  %3038 = fadd fast float %3000, 1.250000e-01
  %3039 = fadd fast float %3038, %3033
  %3040 = fadd fast float %3039, %3027
  %3041 = fadd fast float %3001, 1.250000e-01
  %3042 = fadd fast float %3041, %3034
  %3043 = fadd fast float %3042, %3028
  %3044 = fmul fast float %3037, %2987
  %3045 = fmul fast float %3040, %2988
  %3046 = fmul fast float %3043, %2989
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3008, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = add i32 %3048, 0
  %3050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3050, %dx.types.Handle %27, float %3044, float %3045, float %3046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  br label %3053

; <label>:3053                                    ; preds = %2974, %2963
  %3054 = phi float [ %3052, %2974 ], [ -1.000000e+00, %2963 ]
  %3055 = fadd fast float %3054, %2961
  %3056 = call float @dx.op.unary.f32(i32 7, float %3055)  ; Saturate(value)
  br label %3057

; <label>:3057                                    ; preds = %3053, %2951
  %3058 = phi float [ %3056, %3053 ], [ %2961, %2951 ]
  %3059 = fmul fast float %3058, %405
  br label %3060

; <label>:3060                                    ; preds = %3057, %2946
  %3061 = phi float [ %3059, %3057 ], [ %405, %2946 ]
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = and i32 %3063, 256
  %3065 = icmp eq i32 %3064, 0
  br i1 %3065, label %3112, label %3066

; <label>:3066                                    ; preds = %3060
  %3067 = add i32 %32, 452
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = add i32 %3069, 0
  %3071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3071, %dx.types.Handle %69, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3073 = extractvalue %dx.types.ResRet.f32 %3072, 0
  %3074 = add i32 %32, 148
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3074, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = shl i32 %3076, 4
  %3078 = and i32 %3077, 32752
  %3079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3078)  ; LegacyF16ToF32(value)
  %3080 = lshr i32 %3076, 7
  %3081 = and i32 %3080, 32752
  %3082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3081)  ; LegacyF16ToF32(value)
  %3083 = fsub fast float 1.000000e+00, %3061
  %3084 = call float @dx.op.binary.f32(i32 35, float %3083, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3085 = bitcast float %3061 to i32
  %3086 = sitofp i32 %3085 to float
  %3087 = fadd fast float %3086, 0xC1CFBF8940000000
  %3088 = fmul fast float %3082, %3087
  %3089 = fadd fast float %3088, 0x41CFBF8940000000
  %3090 = fptosi float %3089 to i32
  %3091 = bitcast i32 %3090 to float
  %3092 = bitcast float %3084 to i32
  %3093 = sitofp i32 %3092 to float
  %3094 = fadd fast float %3093, 0xC1CFBF8940000000
  %3095 = fmul fast float %3094, %3082
  %3096 = fadd fast float %3095, 0x41CFBF8940000000
  %3097 = fptosi float %3096 to i32
  %3098 = bitcast i32 %3097 to float
  %3099 = fmul fast float %3091, %3079
  %3100 = fmul fast float %3098, %3079
  %3101 = fsub fast float %3084, %3099
  %3102 = fadd fast float %3100, %3084
  %3103 = call float @dx.op.unary.f32(i32 7, float %3101)  ; Saturate(value)
  %3104 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  %3105 = fsub fast float %3073, %3103
  %3106 = fsub fast float %3104, %3103
  %3107 = bitcast float %3106 to i32
  %3108 = sub nsw i32 2129859010, %3107
  %3109 = bitcast i32 %3108 to float
  %3110 = fmul fast float %3109, %3105
  %3111 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  br label %3112

; <label>:3112                                    ; preds = %3066, %3060
  %3113 = phi float [ %3111, %3066 ], [ %3061, %3060 ]
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = and i32 %3115, 128
  %3117 = icmp eq i32 %3116, 0
  br i1 %3117, label %3134, label %3118

; <label>:3118                                    ; preds = %3112
  %3119 = add i32 %32, 436
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = add i32 %3121, 0
  %3123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3123, %dx.types.Handle %69, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3125 = extractvalue %dx.types.ResRet.f32 %3124, 0
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 524288
  %3129 = icmp ne i32 %3128, 0
  %3130 = fcmp fast ogt float %3125, 0x3FE0101020000000
  %3131 = select i1 %3130, float 1.000000e+00, float 0.000000e+00
  %3132 = select i1 %3129, float %3131, float %3125
  %3133 = fmul fast float %3132, %3113
  br label %3134

; <label>:3134                                    ; preds = %3118, %3112
  %3135 = phi float [ %3133, %3118 ], [ %3113, %3112 ]
  %3136 = fcmp fast ult float %3135, 0x3F70101020000000
  br i1 %3136, label %3766, label %3137

; <label>:3137                                    ; preds = %3134
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 16
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3340, label %3142

; <label>:3142                                    ; preds = %3137
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = add i32 %32, 388
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3145, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = add i32 %3147, 0
  %3149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3148, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3150 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3149, %dx.types.Handle %68, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3151 = extractvalue %dx.types.ResRet.f32 %3150, 0
  %3152 = extractvalue %dx.types.ResRet.f32 %3150, 1
  %3153 = extractvalue %dx.types.ResRet.f32 %3150, 2
  %3154 = extractvalue %dx.types.ResRet.f32 %3150, 3
  %3155 = and i32 %3144, 255
  %3156 = uitofp i32 %3155 to float
  %3157 = lshr i32 %3144, 8
  %3158 = and i32 %3157, 255
  %3159 = uitofp i32 %3158 to float
  %3160 = fmul fast float %3154, %3156
  %3161 = fadd fast float %3160, %3159
  %3162 = fmul fast float %3161, 0x3F70101000000000
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = and i32 %3164, 512
  %3166 = icmp eq i32 %3165, 0
  br i1 %3166, label %3175, label %3167

; <label>:3167                                    ; preds = %3142
  %3168 = add i32 %32, 472
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = add i32 %3170, 0
  %3172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3172, %dx.types.Handle %69, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3174 = extractvalue %dx.types.ResRet.f32 %3173, 0
  br label %3175

; <label>:3175                                    ; preds = %3167, %3142
  %3176 = phi float [ %3174, %3167 ], [ 1.000000e+00, %3142 ]
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = and i32 %3178, 33554432
  %3180 = icmp eq i32 %3179, 0
  br i1 %3180, label %3287, label %3181

; <label>:3181                                    ; preds = %3175
  %3182 = add i32 %32, 272
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = and i32 %3184, 65535
  %3186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3185)  ; LegacyF16ToF32(value)
  %3187 = lshr i32 %3184, 16
  %3188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3187)  ; LegacyF16ToF32(value)
  %3189 = add i32 %32, 276
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 65535
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = lshr i32 %3195, 24
  %3197 = uitofp i32 %3196 to float
  %3198 = fmul fast float %3197, 0x3F70101020000000
  %3199 = and i32 %3195, 255
  %3200 = uitofp i32 %3199 to float
  %3201 = fmul fast float %3200, 0x3F70101020000000
  %3202 = lshr i32 %3195, 8
  %3203 = and i32 %3202, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = fmul fast float %3204, 0x3F70101020000000
  %3206 = lshr i32 %3195, 16
  %3207 = and i32 %3206, 255
  %3208 = uitofp i32 %3207 to float
  %3209 = fmul fast float %3208, 0x3F70101020000000
  %3210 = add i32 %32, 268
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = lshr i32 %3212, 24
  %3214 = uitofp i32 %3213 to float
  %3215 = fmul fast float %3214, 0x3F70101020000000
  %3216 = and i32 %3212, 255
  %3217 = uitofp i32 %3216 to float
  %3218 = fmul fast float %3217, 0x3F70101020000000
  %3219 = lshr i32 %3212, 8
  %3220 = and i32 %3219, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3221, 0x3F70101020000000
  %3223 = lshr i32 %3212, 16
  %3224 = and i32 %3223, 255
  %3225 = uitofp i32 %3224 to float
  %3226 = fmul fast float %3225, 0x3F70101020000000
  %3227 = bitcast float %3151 to i32
  %3228 = ashr i32 %3227, 1
  %3229 = sub nsw i32 1597463174, %3228
  %3230 = bitcast i32 %3229 to float
  %3231 = fmul fast float %3151, 5.000000e-01
  %3232 = fmul fast float %3230, %3230
  %3233 = fmul fast float %3232, %3231
  %3234 = fsub fast float 1.500000e+00, %3233
  %3235 = fmul fast float %3230, %3151
  %3236 = fmul fast float %3235, %3234
  %3237 = bitcast float %3152 to i32
  %3238 = ashr i32 %3237, 1
  %3239 = sub nsw i32 1597463174, %3238
  %3240 = bitcast i32 %3239 to float
  %3241 = fmul fast float %3152, 5.000000e-01
  %3242 = fmul fast float %3240, %3240
  %3243 = fmul fast float %3242, %3241
  %3244 = fsub fast float 1.500000e+00, %3243
  %3245 = fmul fast float %3240, %3152
  %3246 = fmul fast float %3245, %3244
  %3247 = bitcast float %3153 to i32
  %3248 = ashr i32 %3247, 1
  %3249 = sub nsw i32 1597463174, %3248
  %3250 = bitcast i32 %3249 to float
  %3251 = fmul fast float %3153, 5.000000e-01
  %3252 = fmul fast float %3250, %3250
  %3253 = fmul fast float %3252, %3251
  %3254 = fsub fast float 1.500000e+00, %3253
  %3255 = fmul fast float %3250, %3153
  %3256 = fmul fast float %3255, %3254
  %3257 = fsub fast float %3236, %3218
  %3258 = fsub fast float %3246, %3222
  %3259 = fsub fast float %3256, %3226
  %3260 = fmul fast float %3257, %3186
  %3261 = fmul fast float %3258, %3188
  %3262 = fmul fast float %3259, %3193
  %3263 = fadd fast float %3260, %3201
  %3264 = fadd fast float %3261, %3205
  %3265 = fadd fast float %3262, %3209
  %3266 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3267 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  %3268 = call float @dx.op.unary.f32(i32 7, float %3265)  ; Saturate(value)
  %3269 = fmul fast float %3266, %3266
  %3270 = fmul fast float %3267, %3267
  %3271 = fmul fast float %3268, %3268
  %3272 = fsub fast float %3269, %3151
  %3273 = fsub fast float %3270, %3152
  %3274 = fsub fast float %3271, %3153
  %3275 = fmul fast float %3272, %3176
  %3276 = fmul fast float %3273, %3176
  %3277 = fmul fast float %3274, %3176
  %3278 = fadd fast float %3275, %3151
  %3279 = fadd fast float %3276, %3152
  %3280 = fadd fast float %3277, %3153
  %3281 = fadd fast float %3198, %3162
  %3282 = fsub fast float %3281, %3215
  %3283 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3284 = fsub fast float %3283, %3162
  %3285 = fmul fast float %3284, %3176
  %3286 = fadd fast float %3285, %3162
  br label %3340

; <label>:3287                                    ; preds = %3175
  %3288 = and i32 %3178, 134217728
  %3289 = icmp eq i32 %3288, 0
  br i1 %3289, label %3324, label %3290

; <label>:3290                                    ; preds = %3287
  %3291 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %3292 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %3293 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %3294 = fadd fast float %3291, -5.000000e-01
  %3295 = fadd fast float %3292, -5.000000e-01
  %3296 = fadd fast float %3293, -5.000000e-01
  %3297 = fmul fast float %3294, %3176
  %3298 = fmul fast float %3295, %3176
  %3299 = fmul fast float %3296, %3176
  %3300 = fadd fast float %3297, 5.000000e-01
  %3301 = fadd fast float %3298, 5.000000e-01
  %3302 = fadd fast float %3299, 5.000000e-01
  %3303 = call float @dx.op.unary.f32(i32 24, float %3151)  ; Sqrt(value)
  %3304 = call float @dx.op.unary.f32(i32 24, float %3152)  ; Sqrt(value)
  %3305 = call float @dx.op.unary.f32(i32 24, float %3153)  ; Sqrt(value)
  %3306 = fmul fast float %3300, 2.000000e+00
  %3307 = fsub fast float 1.000000e+00, %3306
  %3308 = fmul fast float %3307, %3303
  %3309 = fadd fast float %3308, %3306
  %3310 = fmul fast float %3309, %3303
  %3311 = fmul fast float %3301, 2.000000e+00
  %3312 = fsub fast float 1.000000e+00, %3311
  %3313 = fmul fast float %3312, %3304
  %3314 = fadd fast float %3313, %3311
  %3315 = fmul fast float %3314, %3304
  %3316 = fmul fast float %3302, 2.000000e+00
  %3317 = fsub fast float 1.000000e+00, %3316
  %3318 = fmul fast float %3317, %3305
  %3319 = fadd fast float %3318, %3316
  %3320 = fmul fast float %3319, %3305
  %3321 = fmul fast float %3310, %3310
  %3322 = fmul fast float %3315, %3315
  %3323 = fmul fast float %3320, %3320
  br label %3340

; <label>:3324                                    ; preds = %3287
  %3325 = fmul fast float %326, %326
  %3326 = fmul fast float %330, %330
  %3327 = fmul fast float %334, %334
  %3328 = fadd fast float %3325, -1.000000e+00
  %3329 = fadd fast float %3326, -1.000000e+00
  %3330 = fadd fast float %3327, -1.000000e+00
  %3331 = fmul fast float %3176, %3328
  %3332 = fmul fast float %3176, %3329
  %3333 = fmul fast float %3176, %3330
  %3334 = fadd fast float %3331, 1.000000e+00
  %3335 = fadd fast float %3332, 1.000000e+00
  %3336 = fadd fast float %3333, 1.000000e+00
  %3337 = fmul fast float %3334, %3151
  %3338 = fmul fast float %3335, %3152
  %3339 = fmul fast float %3336, %3153
  br label %3340

; <label>:3340                                    ; preds = %3324, %3290, %3181, %3137
  %3341 = phi float [ %3286, %3181 ], [ %3162, %3290 ], [ %3162, %3324 ], [ 0x3FA23C0BE0000000, %3137 ]
  %3342 = phi float [ %3278, %3181 ], [ %3321, %3290 ], [ %3337, %3324 ], [ 1.000000e+00, %3137 ]
  %3343 = phi float [ %3279, %3181 ], [ %3322, %3290 ], [ %3338, %3324 ], [ 1.000000e+00, %3137 ]
  %3344 = phi float [ %3280, %3181 ], [ %3323, %3290 ], [ %3339, %3324 ], [ 1.000000e+00, %3137 ]
  %3345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.i32 %3345, 1
  %3347 = and i32 %3346, 1
  %3348 = icmp ne i32 %3347, 0
  %3349 = add i32 %32, 356
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = and i32 %3351, 32
  %3353 = icmp ne i32 %3352, 0
  %3354 = and i1 %3348, %3353
  %3355 = select i1 %3354, float 1.000000e+00, float %3342
  %3356 = select i1 %3354, float 0x3FD3333340000000, float %3343
  %3357 = select i1 %3354, float 0x3FD3333340000000, float %3344
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 32
  %3361 = icmp eq i32 %3360, 0
  br i1 %3361, label %3434, label %3362

; <label>:3362                                    ; preds = %3340
  %3363 = add i32 %32, 140
  %3364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3365 = extractvalue %dx.types.ResRet.i32 %3364, 0
  %3366 = add i32 %32, 404
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = add i32 %3368, 0
  %3370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3371 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3370, %dx.types.Handle %68, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.ResRet.f32 %3371, 1
  %3374 = extractvalue %dx.types.ResRet.f32 %3371, 2
  %3375 = extractvalue %dx.types.ResRet.f32 %3371, 3
  %3376 = and i32 %3365, 255
  %3377 = uitofp i32 %3376 to float
  %3378 = lshr i32 %3365, 8
  %3379 = and i32 %3378, 255
  %3380 = uitofp i32 %3379 to float
  %3381 = lshr i32 %3365, 16
  %3382 = and i32 %3381, 255
  %3383 = uitofp i32 %3382 to float
  %3384 = fmul fast float %3383, 0x3F70101000000000
  %3385 = fmul fast float %3372, %3377
  %3386 = fadd fast float %3385, %3380
  %3387 = fmul fast float %3386, 0x3F70101000000000
  %3388 = fadd fast float %3373, -5.000000e-01
  %3389 = fadd fast float %3375, -5.000000e-01
  %3390 = fmul fast float %3388, %3384
  %3391 = fmul fast float %3389, %3384
  %3392 = fadd fast float %3390, 5.000000e-01
  %3393 = fadd fast float %3391, 5.000000e-01
  %3394 = fmul fast float %3392, 2.000000e+00
  %3395 = fadd fast float %3394, -1.000000e+00
  %3396 = fmul fast float %3393, 2.000000e+00
  %3397 = fadd fast float %3396, -1.000000e+00
  %3398 = fadd fast float %3395, %3397
  %3399 = fmul fast float %3398, 5.000000e-01
  %3400 = fsub fast float %3395, %3397
  %3401 = fmul fast float %3400, 5.000000e-01
  %3402 = call float @dx.op.unary.f32(i32 6, float %3399)  ; FAbs(value)
  %3403 = fsub fast float 1.000000e+00, %3402
  %3404 = call float @dx.op.unary.f32(i32 6, float %3401)  ; FAbs(value)
  %3405 = fsub fast float %3403, %3404
  %3406 = call float @dx.op.dot3.f32(i32 55, float %3399, float %3401, float %3405, float %3399, float %3401, float %3405)  ; Dot3(ax,ay,az,bx,by,bz)
  %3407 = call float @dx.op.unary.f32(i32 25, float %3406)  ; Rsqrt(value)
  %3408 = fmul fast float %3399, %3407
  %3409 = fmul fast float %3401, %3407
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = and i32 %3411, 67108864
  %3413 = icmp eq i32 %3412, 0
  br i1 %3413, label %3430, label %3414

; <label>:3414                                    ; preds = %3362
  %3415 = add i32 %32, 328
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = and i32 %3417, 65535
  %3419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3418)  ; LegacyF16ToF32(value)
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, 65535
  %3423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3422)  ; LegacyF16ToF32(value)
  %3424 = lshr i32 %3417, 16
  %3425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3424)  ; LegacyF16ToF32(value)
  %3426 = fsub fast float %3387, %3425
  %3427 = fmul fast float %3426, %3419
  %3428 = fadd fast float %3427, %3423
  %3429 = call float @dx.op.unary.f32(i32 7, float %3428)  ; Saturate(value)
  br label %3430

; <label>:3430                                    ; preds = %3414, %3362
  %3431 = phi float [ %3429, %3414 ], [ %3387, %3362 ]
  %3432 = call float @dx.op.dot2.f32(i32 54, float %3408, float %3409, float %2851, float %2852)  ; Dot2(ax,ay,bx,by)
  %3433 = call float @dx.op.dot2.f32(i32 54, float %3408, float %3409, float %2853, float %2854)  ; Dot2(ax,ay,bx,by)
  br label %3434

; <label>:3434                                    ; preds = %3430, %3340
  %3435 = phi float [ %3431, %3430 ], [ 0x3FD6666660000000, %3340 ]
  %3436 = phi float [ %3432, %3430 ], [ 0.000000e+00, %3340 ]
  %3437 = phi float [ %3433, %3430 ], [ 0.000000e+00, %3340 ]
  %3438 = phi float [ %3374, %3430 ], [ 1.000000e+00, %3340 ]
  %3439 = add i32 %32, 208
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = lshr i32 %3441, 22
  %3443 = shl nuw nsw i32 %3442, 5
  %3444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3443)  ; LegacyF16ToF32(value)
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = and i32 %3446, 64
  %3448 = icmp eq i32 %3447, 0
  br i1 %3448, label %3482, label %3449

; <label>:3449                                    ; preds = %3434
  %3450 = add i32 %32, 420
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = add i32 %3452, 0
  %3454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3453, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = and i32 %3456, 131072
  %3458 = icmp eq i32 %3457, 0
  %3459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3454, %dx.types.Handle %68, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3460 = extractvalue %dx.types.ResRet.f32 %3459, 0
  %3461 = extractvalue %dx.types.ResRet.f32 %3459, 1
  %3462 = extractvalue %dx.types.ResRet.f32 %3459, 2
  %3463 = fmul fast float %3460, %314
  %3464 = fmul fast float %3461, %317
  %3465 = fmul fast float %3462, %320
  br i1 %3458, label %3472, label %3466

; <label>:3466                                    ; preds = %3449
  %3467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.f32 %3467, 0
  %3469 = fmul fast float %3468, %3463
  %3470 = fmul fast float %3468, %3464
  %3471 = fmul fast float %3468, %3465
  br label %3472

; <label>:3472                                    ; preds = %3466, %3449
  %3473 = phi float [ %3469, %3466 ], [ %3463, %3449 ]
  %3474 = phi float [ %3470, %3466 ], [ %3464, %3449 ]
  %3475 = phi float [ %3471, %3466 ], [ %3465, %3449 ]
  %3476 = fmul fast float %3473, %3444
  %3477 = select i1 %168, float %3476, float %3473
  %3478 = call float @dx.op.dot3.f32(i32 55, float %3477, float %3474, float %3475, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3479 = select i1 %168, float 0.000000e+00, float %3473
  %3480 = select i1 %168, float %3478, float %3474
  %3481 = select i1 %168, float 0.000000e+00, float %3475
  br label %3482

; <label>:3482                                    ; preds = %3472, %3434
  %3483 = phi float [ %3479, %3472 ], [ 0.000000e+00, %3434 ]
  %3484 = phi float [ %3480, %3472 ], [ 0.000000e+00, %3434 ]
  %3485 = phi float [ %3481, %3472 ], [ 0.000000e+00, %3434 ]
  %3486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.i32 %3486, 0
  %3488 = and i32 %3487, 10240
  %3489 = icmp eq i32 %3488, 0
  br i1 %3489, label %3534, label %3490

; <label>:3490                                    ; preds = %3482
  %3491 = add i32 %32, 488
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = add i32 %3493, 0
  %3495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3495, %dx.types.Handle %69, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3497 = extractvalue %dx.types.ResRet.f32 %3496, 1
  %3498 = extractvalue %dx.types.ResRet.f32 %3496, 3
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = and i32 %3500, 1048576
  %3502 = icmp ne i32 %3501, 0
  %3503 = and i32 %3500, 8192
  %3504 = icmp eq i32 %3503, 0
  br i1 %3504, label %3520, label %3505

; <label>:3505                                    ; preds = %3490
  %3506 = extractvalue %dx.types.ResRet.f32 %3496, 2
  %3507 = select i1 %3502, float %3506, float %3497
  %3508 = extractvalue %dx.types.ResRet.f32 %3496, 0
  %3509 = select i1 %3502, float %3508, float %3497
  %3510 = add i32 %32, 144
  %3511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.i32 %3511, 0
  %3513 = lshr i32 %3512, 16
  %3514 = and i32 %3513, 255
  %3515 = uitofp i32 %3514 to float
  %3516 = fmul fast float %3515, 0x3F80101020000000
  %3517 = fmul fast float %3516, %3509
  %3518 = fmul fast float %3516, %3497
  %3519 = fmul fast float %3516, %3507
  br label %3520

; <label>:3520                                    ; preds = %3505, %3490
  %3521 = phi float [ %3517, %3505 ], [ 0.000000e+00, %3490 ]
  %3522 = phi float [ %3518, %3505 ], [ 0.000000e+00, %3490 ]
  %3523 = phi float [ %3519, %3505 ], [ 0.000000e+00, %3490 ]
  %3524 = and i32 %3500, 2048
  %3525 = icmp eq i32 %3524, 0
  br i1 %3525, label %3534, label %3526

; <label>:3526                                    ; preds = %3520
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = shl i32 %3528, 4
  %3530 = and i32 %3529, 32752
  %3531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3530)  ; LegacyF16ToF32(value)
  %3532 = fmul fast float %3531, %3498
  %3533 = call float @dx.op.binary.f32(i32 35, float %3532, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3534

; <label>:3534                                    ; preds = %3526, %3520, %3482
  %3535 = phi float [ %3521, %3526 ], [ %3521, %3520 ], [ 0.000000e+00, %3482 ]
  %3536 = phi float [ %3522, %3526 ], [ %3522, %3520 ], [ 0.000000e+00, %3482 ]
  %3537 = phi float [ %3523, %3526 ], [ %3523, %3520 ], [ 0.000000e+00, %3482 ]
  %3538 = phi float [ %3533, %3526 ], [ 0x3F70101020000000, %3520 ], [ 0x3F70101020000000, %3482 ]
  %3539 = add i32 %32, 144
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = and i32 %3541, 255
  %3543 = uitofp i32 %3542 to float
  %3544 = lshr i32 %3541, 8
  %3545 = and i32 %3544, 255
  %3546 = uitofp i32 %3545 to float
  %3547 = call float @dx.op.dot3.f32(i32 55, float %3355, float %3356, float %3357, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3548 = fmul fast float %3546, %3547
  %3549 = fadd fast float %3548, %3543
  %3550 = fmul fast float %3549, 0x3F70101020000000
  %3551 = call float @dx.op.unary.f32(i32 7, float %3550)  ; Saturate(value)
  br i1 %2839, label %3552, label %3560

; <label>:3552                                    ; preds = %3534
  %3553 = fsub fast float 1.000000e+00, %3135
  %3554 = fmul fast float %3553, %2824
  %3555 = fmul fast float %3553, %2825
  %3556 = fmul fast float %3553, %2826
  %3557 = fmul fast float %3553, %2827
  %3558 = fmul fast float %3553, %2828
  %3559 = fmul fast float %3553, %2829
  br label %3560

; <label>:3560                                    ; preds = %3552, %3534
  %3561 = phi float [ %3554, %3552 ], [ %2824, %3534 ]
  %3562 = phi float [ %3555, %3552 ], [ %2825, %3534 ]
  %3563 = phi float [ %3556, %3552 ], [ %2826, %3534 ]
  %3564 = phi float [ %3557, %3552 ], [ %2827, %3534 ]
  %3565 = phi float [ %3558, %3552 ], [ %2828, %3534 ]
  %3566 = phi float [ %3559, %3552 ], [ %2829, %3534 ]
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = and i32 %3568, 3
  %3570 = icmp eq i32 %3569, 3
  br i1 %3570, label %3649, label %3571

; <label>:3571                                    ; preds = %3560
  %3572 = and i32 %3568, 16
  %3573 = icmp ne i32 %3572, 0
  %3574 = select i1 %3573, float %3135, float 0.000000e+00
  %3575 = icmp eq i32 %3569, 0
  br i1 %3575, label %3576, label %3604

; <label>:3576                                    ; preds = %3571
  %3577 = and i32 %3568, 64
  %3578 = icmp ne i32 %3577, 0
  %3579 = select i1 %3578, float %3135, float 0.000000e+00
  %3580 = fsub fast float %3355, %3561
  %3581 = fsub fast float %3356, %3562
  %3582 = fsub fast float %3357, %3563
  %3583 = fmul fast float %3574, %3580
  %3584 = fmul fast float %3574, %3581
  %3585 = fmul fast float %3574, %3582
  %3586 = fadd fast float %3583, %3561
  %3587 = fadd fast float %3584, %3562
  %3588 = fadd fast float %3585, %3563
  %3589 = fsub fast float %3341, %2833
  %3590 = fmul fast float %3574, %3589
  %3591 = fadd fast float %3590, %2833
  %3592 = fsub fast float %3483, %3564
  %3593 = fsub fast float %3484, %3565
  %3594 = fsub fast float %3485, %3566
  %3595 = fmul fast float %3579, %3592
  %3596 = fmul fast float %3579, %3593
  %3597 = fmul fast float %3579, %3594
  %3598 = fadd fast float %3595, %3564
  %3599 = fadd fast float %3596, %3565
  %3600 = fadd fast float %3597, %3566
  %3601 = fsub fast float %3551, %2837
  %3602 = fmul fast float %3574, %3601
  %3603 = fadd fast float %3602, %2837
  br label %3649

; <label>:3604                                    ; preds = %3571
  %3605 = icmp eq i32 %3569, 1
  br i1 %3605, label %3606, label %3619

; <label>:3606                                    ; preds = %3604
  %3607 = fadd fast float %3355, -1.000000e+00
  %3608 = fadd fast float %3356, -1.000000e+00
  %3609 = fadd fast float %3357, -1.000000e+00
  %3610 = fmul fast float %3574, %3607
  %3611 = fmul fast float %3574, %3608
  %3612 = fmul fast float %3574, %3609
  %3613 = fadd fast float %3610, 1.000000e+00
  %3614 = fadd fast float %3611, 1.000000e+00
  %3615 = fadd fast float %3612, 1.000000e+00
  %3616 = fmul fast float %3613, %3561
  %3617 = fmul fast float %3614, %3562
  %3618 = fmul fast float %3615, %3563
  br label %3649

; <label>:3619                                    ; preds = %3604
  %3620 = icmp eq i32 %3569, 2
  br i1 %3620, label %3621, label %3649

; <label>:3621                                    ; preds = %3619
  %3622 = call float @dx.op.unary.f32(i32 24, float %3355)  ; Sqrt(value)
  %3623 = call float @dx.op.unary.f32(i32 24, float %3356)  ; Sqrt(value)
  %3624 = call float @dx.op.unary.f32(i32 24, float %3357)  ; Sqrt(value)
  %3625 = fadd fast float %3622, -5.000000e-01
  %3626 = fadd fast float %3623, -5.000000e-01
  %3627 = fadd fast float %3624, -5.000000e-01
  %3628 = fmul fast float %3625, %3574
  %3629 = fmul fast float %3626, %3574
  %3630 = fmul fast float %3627, %3574
  %3631 = fadd fast float %3628, 5.000000e-01
  %3632 = fadd fast float %3629, 5.000000e-01
  %3633 = fadd fast float %3630, 5.000000e-01
  %3634 = fmul fast float %3631, 2.000000e+00
  %3635 = fsub fast float 1.000000e+00, %3634
  %3636 = fmul fast float %3635, %3561
  %3637 = fadd fast float %3636, %3634
  %3638 = fmul fast float %3637, %3561
  %3639 = fmul fast float %3632, 2.000000e+00
  %3640 = fsub fast float 1.000000e+00, %3639
  %3641 = fmul fast float %3640, %3562
  %3642 = fadd fast float %3641, %3639
  %3643 = fmul fast float %3642, %3562
  %3644 = fmul fast float %3633, 2.000000e+00
  %3645 = fsub fast float 1.000000e+00, %3644
  %3646 = fmul fast float %3645, %3563
  %3647 = fadd fast float %3646, %3644
  %3648 = fmul fast float %3647, %3563
  br label %3649

; <label>:3649                                    ; preds = %3621, %3619, %3606, %3576, %3560
  %3650 = phi float [ %3561, %3560 ], [ %3638, %3621 ], [ %3561, %3619 ], [ %3616, %3606 ], [ %3586, %3576 ]
  %3651 = phi float [ %3562, %3560 ], [ %3643, %3621 ], [ %3562, %3619 ], [ %3617, %3606 ], [ %3587, %3576 ]
  %3652 = phi float [ %3563, %3560 ], [ %3648, %3621 ], [ %3563, %3619 ], [ %3618, %3606 ], [ %3588, %3576 ]
  %3653 = phi float [ %3564, %3560 ], [ %3564, %3621 ], [ %3564, %3619 ], [ %3564, %3606 ], [ %3598, %3576 ]
  %3654 = phi float [ %3565, %3560 ], [ %3565, %3621 ], [ %3565, %3619 ], [ %3565, %3606 ], [ %3599, %3576 ]
  %3655 = phi float [ %3566, %3560 ], [ %3566, %3621 ], [ %3566, %3619 ], [ %3566, %3606 ], [ %3600, %3576 ]
  %3656 = phi float [ %2833, %3560 ], [ %2833, %3621 ], [ %2833, %3619 ], [ %2833, %3606 ], [ %3591, %3576 ]
  %3657 = phi float [ %2837, %3560 ], [ %2837, %3621 ], [ %2837, %3619 ], [ %2837, %3606 ], [ %3603, %3576 ]
  %3658 = and i32 %3568, 12
  %3659 = icmp eq i32 %3658, 12
  br i1 %3659, label %3766, label %3660

; <label>:3660                                    ; preds = %3649
  %3661 = and i32 %3568, 2097184
  %3662 = icmp eq i32 %3661, 2097184
  %3663 = select i1 %3662, float %3135, float 0.000000e+00
  %3664 = and i32 %3568, 4194336
  %3665 = icmp eq i32 %3664, 4194336
  %3666 = select i1 %3665, float %3135, float 0.000000e+00
  %3667 = and i32 %3568, 8388640
  %3668 = icmp eq i32 %3667, 8388640
  %3669 = select i1 %3668, float %3135, float 0.000000e+00
  %3670 = and i32 %3568, 2048
  %3671 = icmp ne i32 %3670, 0
  %3672 = select i1 %3671, float %3135, float 0.000000e+00
  %3673 = and i32 %3568, 8192
  %3674 = icmp ne i32 %3673, 0
  %3675 = select i1 %3674, float %3135, float 0.000000e+00
  %3676 = icmp eq i32 %3658, 0
  br i1 %3676, label %3677, label %3702

; <label>:3677                                    ; preds = %3660
  %3678 = fsub fast float %3436, %2822
  %3679 = fsub fast float %3437, %2823
  %3680 = fmul fast float %3663, %3678
  %3681 = fmul fast float %3663, %3679
  %3682 = fadd fast float %3680, %2822
  %3683 = fadd fast float %3681, %2823
  %3684 = fsub fast float %3438, %2835
  %3685 = fmul fast float %3666, %3684
  %3686 = fadd fast float %3685, %2835
  %3687 = fsub fast float %3435, %2834
  %3688 = fmul fast float %3669, %3687
  %3689 = fadd fast float %3688, %2834
  %3690 = fsub fast float %3538, %2836
  %3691 = fmul fast float %3672, %3690
  %3692 = fadd fast float %3691, %2836
  %3693 = fsub fast float %3535, %2830
  %3694 = fsub fast float %3536, %2831
  %3695 = fsub fast float %3537, %2832
  %3696 = fmul fast float %3675, %3693
  %3697 = fmul fast float %3675, %3694
  %3698 = fmul fast float %3675, %3695
  %3699 = fadd fast float %3696, %2830
  %3700 = fadd fast float %3697, %2831
  %3701 = fadd fast float %3698, %2832
  br label %3766

; <label>:3702                                    ; preds = %3660
  %3703 = icmp eq i32 %3658, 4
  br i1 %3703, label %3704, label %3744

; <label>:3704                                    ; preds = %3702
  %3705 = fmul fast float %3663, %3436
  %3706 = fmul fast float %3663, %3437
  %3707 = fadd fast float %3705, %2822
  %3708 = fadd fast float %3706, %2823
  %3709 = call float @dx.op.binary.f32(i32 36, float %2835, float %3438)  ; FMin(a,b)
  %3710 = fsub fast float %3709, %2835
  %3711 = fmul fast float %3710, %3666
  %3712 = fadd fast float %3711, %2835
  %3713 = fadd fast float %3435, %2834
  %3714 = fmul fast float %3713, 0x3FF337FAE0000000
  %3715 = fmul fast float %2834, %2834
  %3716 = fmul fast float %3435, %3435
  %3717 = fadd fast float %3716, %3715
  %3718 = fmul fast float %3717, 0x3FE5152B00000000
  %3719 = fmul fast float %2834, 0xBFCC1F85E0000000
  %3720 = fmul fast float %3719, %3435
  %3721 = fadd fast float %3720, 0xBFE1363700000000
  %3722 = fadd fast float %3721, %3714
  %3723 = fsub fast float %3722, %3718
  %3724 = fmul fast float %3713, 0x3FBA6F0D00000000
  %3725 = fmul fast float %3717, 0x3FD0432880000000
  %3726 = fmul fast float %2834, 0xBFEF110800000000
  %3727 = fmul fast float %3726, %3435
  %3728 = fadd fast float %3727, 1.000000e+00
  %3729 = fsub fast float %3728, %3724
  %3730 = fadd fast float %3729, %3725
  %3731 = fdiv fast float %3723, %3730
  %3732 = call float @dx.op.unary.f32(i32 7, float %3731)  ; Saturate(value)
  %3733 = fsub fast float %3732, %2834
  %3734 = fmul fast float %3733, %3669
  %3735 = fadd fast float %3734, %2834
  %3736 = fmul fast float %3672, %3538
  %3737 = fadd fast float %3736, %2836
  %3738 = fmul fast float %3675, %3535
  %3739 = fmul fast float %3675, %3536
  %3740 = fmul fast float %3675, %3537
  %3741 = fadd fast float %3738, %2830
  %3742 = fadd fast float %3739, %2831
  %3743 = fadd fast float %3740, %2832
  br label %3766

; <label>:3744                                    ; preds = %3702
  %3745 = icmp eq i32 %3658, 8
  br i1 %3745, label %3746, label %3766

; <label>:3746                                    ; preds = %3744
  %3747 = fmul fast float %3663, %3436
  %3748 = fmul fast float %3663, %3437
  %3749 = fadd fast float %3747, %2822
  %3750 = fadd fast float %3748, %2823
  %3751 = call float @dx.op.binary.f32(i32 36, float %2835, float %3438)  ; FMin(a,b)
  %3752 = fsub fast float %3751, %2835
  %3753 = fmul fast float %3752, %3666
  %3754 = fadd fast float %3753, %2835
  %3755 = fsub fast float %3435, %2834
  %3756 = fmul fast float %3669, %3755
  %3757 = fadd fast float %3756, %2834
  %3758 = fmul fast float %3672, %3538
  %3759 = fadd fast float %3758, %2836
  %3760 = fmul fast float %3675, %3535
  %3761 = fmul fast float %3675, %3536
  %3762 = fmul fast float %3675, %3537
  %3763 = fadd fast float %3760, %2830
  %3764 = fadd fast float %3761, %2831
  %3765 = fadd fast float %3762, %2832
  br label %3766

; <label>:3766                                    ; preds = %3746, %3744, %3704, %3677, %3649, %3134, %2838, %2821
  %3767 = phi float [ %2822, %3649 ], [ %2822, %3134 ], [ %2822, %2821 ], [ %2822, %2838 ], [ %3682, %3677 ], [ %3707, %3704 ], [ %2822, %3744 ], [ %3749, %3746 ]
  %3768 = phi float [ %2823, %3649 ], [ %2823, %3134 ], [ %2823, %2821 ], [ %2823, %2838 ], [ %3683, %3677 ], [ %3708, %3704 ], [ %2823, %3744 ], [ %3750, %3746 ]
  %3769 = phi float [ %3650, %3649 ], [ %2824, %3134 ], [ %2824, %2821 ], [ %2824, %2838 ], [ %3650, %3677 ], [ %3650, %3704 ], [ %3650, %3744 ], [ %3650, %3746 ]
  %3770 = phi float [ %3651, %3649 ], [ %2825, %3134 ], [ %2825, %2821 ], [ %2825, %2838 ], [ %3651, %3677 ], [ %3651, %3704 ], [ %3651, %3744 ], [ %3651, %3746 ]
  %3771 = phi float [ %3652, %3649 ], [ %2826, %3134 ], [ %2826, %2821 ], [ %2826, %2838 ], [ %3652, %3677 ], [ %3652, %3704 ], [ %3652, %3744 ], [ %3652, %3746 ]
  %3772 = phi float [ %3653, %3649 ], [ %2827, %3134 ], [ %2827, %2821 ], [ %2827, %2838 ], [ %3653, %3677 ], [ %3653, %3704 ], [ %3653, %3744 ], [ %3653, %3746 ]
  %3773 = phi float [ %3654, %3649 ], [ %2828, %3134 ], [ %2828, %2821 ], [ %2828, %2838 ], [ %3654, %3677 ], [ %3654, %3704 ], [ %3654, %3744 ], [ %3654, %3746 ]
  %3774 = phi float [ %3655, %3649 ], [ %2829, %3134 ], [ %2829, %2821 ], [ %2829, %2838 ], [ %3655, %3677 ], [ %3655, %3704 ], [ %3655, %3744 ], [ %3655, %3746 ]
  %3775 = phi float [ %2830, %3649 ], [ %2830, %3134 ], [ %2830, %2821 ], [ %2830, %2838 ], [ %3699, %3677 ], [ %3741, %3704 ], [ %2830, %3744 ], [ %3763, %3746 ]
  %3776 = phi float [ %2831, %3649 ], [ %2831, %3134 ], [ %2831, %2821 ], [ %2831, %2838 ], [ %3700, %3677 ], [ %3742, %3704 ], [ %2831, %3744 ], [ %3764, %3746 ]
  %3777 = phi float [ %2832, %3649 ], [ %2832, %3134 ], [ %2832, %2821 ], [ %2832, %2838 ], [ %3701, %3677 ], [ %3743, %3704 ], [ %2832, %3744 ], [ %3765, %3746 ]
  %3778 = phi float [ %3656, %3649 ], [ %2833, %3134 ], [ %2833, %2821 ], [ %2833, %2838 ], [ %3656, %3677 ], [ %3656, %3704 ], [ %3656, %3744 ], [ %3656, %3746 ]
  %3779 = phi float [ %2834, %3649 ], [ %2834, %3134 ], [ %2834, %2821 ], [ %2834, %2838 ], [ %3689, %3677 ], [ %3735, %3704 ], [ %2834, %3744 ], [ %3757, %3746 ]
  %3780 = phi float [ %2835, %3649 ], [ %2835, %3134 ], [ %2835, %2821 ], [ %2835, %2838 ], [ %3686, %3677 ], [ %3712, %3704 ], [ %2835, %3744 ], [ %3754, %3746 ]
  %3781 = phi float [ %2836, %3649 ], [ %2836, %3134 ], [ %2836, %2821 ], [ %2836, %2838 ], [ %3692, %3677 ], [ %3737, %3704 ], [ %2836, %3744 ], [ %3759, %3746 ]
  %3782 = phi float [ %3657, %3649 ], [ %2837, %3134 ], [ %2837, %2821 ], [ %2837, %2838 ], [ %3657, %3677 ], [ %3657, %3704 ], [ %3657, %3744 ], [ %3657, %3746 ]
  %3783 = add i32 %32, 360
  %3784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3783, i32 undef)  ; BufferLoad(srv,index,wot)
  %3785 = extractvalue %dx.types.ResRet.i32 %3784, 0
  %3786 = extractvalue %dx.types.ResRet.i32 %3784, 1
  %3787 = bitcast i32 %3785 to float
  %3788 = bitcast i32 %3786 to float
  %3789 = fcmp fast oge float %3787, 0.000000e+00
  %3790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3791 = extractvalue %dx.types.CBufRet.f32 %3790, 0
  %3792 = select i1 %3789, float %3787, float %3791
  %3793 = add i32 %32, 456
  %3794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3795 = extractvalue %dx.types.ResRet.i32 %3794, 0
  %3796 = add i32 %3795, 0
  %3797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3796, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3798 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3797, %dx.types.Handle %69, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = fmul fast float %3799, %3788
  %3801 = fadd fast float %3800, %3792
  %3802 = call float @dx.op.dot2.f32(i32 54, float %3767, float %3768, float %3767, float %3768)  ; Dot2(ax,ay,bx,by)
  %3803 = fmul fast float %3802, 0x3FE3333340000000
  %3804 = fsub fast float 1.000000e+00, %3803
  %3805 = call float @dx.op.dot3.f32(i32 55, float %3767, float %3768, float %3804, float %3767, float %3768, float %3804)  ; Dot3(ax,ay,az,bx,by,bz)
  %3806 = call float @dx.op.unary.f32(i32 25, float %3805)  ; Rsqrt(value)
  %3807 = fmul fast float %3806, %3767
  %3808 = fmul fast float %3806, %3768
  %3809 = fmul fast float %3804, %3806
  %3810 = fmul fast float %3809, %79
  %3811 = fmul fast float %3809, %80
  %3812 = fmul fast float %3809, %81
  %3813 = fmul fast float %3807, %53
  %3814 = fmul fast float %3807, %54
  %3815 = fmul fast float %3807, %55
  %3816 = fadd fast float %3810, %3813
  %3817 = fadd fast float %3811, %3814
  %3818 = fadd fast float %3812, %3815
  %3819 = fmul fast float %91, %3808
  %3820 = fmul fast float %92, %3808
  %3821 = fmul fast float %93, %3808
  %3822 = fadd fast float %3816, %3819
  %3823 = fadd fast float %3817, %3820
  %3824 = fadd fast float %3818, %3821
  %3825 = call float @dx.op.dot3.f32(i32 55, float %3822, float %3823, float %3824, float %3822, float %3823, float %3824)  ; Dot3(ax,ay,az,bx,by,bz)
  %3826 = call float @dx.op.unary.f32(i32 25, float %3825)  ; Rsqrt(value)
  %3827 = fmul fast float %3822, %3826
  %3828 = fmul fast float %3823, %3826
  %3829 = fmul fast float %3824, %3826
  %3830 = and i32 %34, 1
  %3831 = icmp eq i32 %3830, 0
  br i1 %3831, label %3832, label %4393

; <label>:3832                                    ; preds = %3766
  %3833 = call float @dx.op.unary.f32(i32 83, float %127)  ; DerivCoarseX(value)
  %3834 = call float @dx.op.unary.f32(i32 83, float %128)  ; DerivCoarseX(value)
  %3835 = call float @dx.op.unary.f32(i32 83, float %129)  ; DerivCoarseX(value)
  %3836 = call float @dx.op.unary.f32(i32 84, float %127)  ; DerivCoarseY(value)
  %3837 = call float @dx.op.unary.f32(i32 84, float %128)  ; DerivCoarseY(value)
  %3838 = call float @dx.op.unary.f32(i32 84, float %129)  ; DerivCoarseY(value)
  %3839 = fadd fast float %3833, %127
  %3840 = fadd fast float %3834, %128
  %3841 = fadd fast float %3835, %129
  %3842 = fadd fast float %3836, %127
  %3843 = fadd fast float %3837, %128
  %3844 = fadd fast float %3838, %129
  %3845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.f32 %3845, 0
  %3847 = extractvalue %dx.types.CBufRet.f32 %3845, 1
  %3848 = extractvalue %dx.types.CBufRet.f32 %3845, 2
  %3849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3849, 2
  %3851 = extractvalue %dx.types.CBufRet.f32 %3849, 3
  %3852 = fmul fast float %3846, %72
  %3853 = fmul fast float %3852, %3850
  %3854 = fmul fast float %3847, %73
  %3855 = fmul fast float %3854, %3851
  %3856 = fptoui float %3853 to i32
  %3857 = fptoui float %3855 to i32
  %3858 = fadd fast float %3846, -1.000000e+00
  %3859 = fadd fast float %3847, -1.000000e+00
  %3860 = fptoui float %3858 to i32
  %3861 = fptoui float %3859 to i32
  %3862 = call i32 @dx.op.binary.i32(i32 40, i32 %3856, i32 %3860)  ; UMin(a,b)
  %3863 = call i32 @dx.op.binary.i32(i32 40, i32 %3857, i32 %3861)  ; UMin(a,b)
  %3864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.f32 %3864, 2
  %3866 = extractvalue %dx.types.CBufRet.f32 %3864, 3
  %3867 = fmul fast float %3865, %67
  %3868 = fsub fast float %3867, %3866
  %3869 = fadd fast float %3848, -1.000000e+00
  %3870 = call float @dx.op.binary.f32(i32 36, float %3868, float %3869)  ; FMin(a,b)
  %3871 = fptoui float %3870 to i32
  %3872 = fptoui float %3846 to i32
  %3873 = fptoui float %3847 to i32
  %3874 = mul i32 %3871, %3873
  %3875 = add i32 %3874, %3863
  %3876 = mul i32 %3875, %3872
  %3877 = add i32 %3876, %3862
  %3878 = shl i32 %3877, 2
  %3879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.i32 %3879, 0
  %3881 = and i32 %3880, 1023
  %3882 = lshr i32 %3880, 10
  %3883 = icmp eq i32 %3881, 0
  br i1 %3883, label %4359, label %3884

; <label>:3884                                    ; preds = %3832
  %3885 = and i32 %3880, 1023
  br label %3886

; <label>:3886                                    ; preds = %4015, %3884
  %3887 = phi i32 [ %3965, %4015 ], [ 0, %3884 ]
  %3888 = phi float [ %4016, %4015 ], [ 0.000000e+00, %3884 ]
  %3889 = phi float [ %4017, %4015 ], [ %3801, %3884 ]
  %3890 = phi float [ %4018, %4015 ], [ %3782, %3884 ]
  %3891 = phi float [ %4019, %4015 ], [ 0.000000e+00, %3884 ]
  %3892 = phi float [ %4020, %4015 ], [ 0.000000e+00, %3884 ]
  %3893 = phi float [ %4021, %4015 ], [ %3775, %3884 ]
  %3894 = phi float [ %4022, %4015 ], [ %3776, %3884 ]
  %3895 = phi float [ %4023, %4015 ], [ %3777, %3884 ]
  %3896 = phi float [ %4024, %4015 ], [ %3772, %3884 ]
  %3897 = phi float [ %4025, %4015 ], [ %3773, %3884 ]
  %3898 = phi float [ %4026, %4015 ], [ %3774, %3884 ]
  %3899 = phi float [ %4027, %4015 ], [ %3827, %3884 ]
  %3900 = phi float [ %4028, %4015 ], [ %3828, %3884 ]
  %3901 = phi float [ %4029, %4015 ], [ %3829, %3884 ]
  %3902 = phi float [ %4030, %4015 ], [ %3780, %3884 ]
  %3903 = phi float [ %4031, %4015 ], [ %3779, %3884 ]
  %3904 = phi float [ %4032, %4015 ], [ 0.000000e+00, %3884 ]
  %3905 = phi float [ %4033, %4015 ], [ %3778, %3884 ]
  %3906 = phi float [ %4034, %4015 ], [ %3769, %3884 ]
  %3907 = phi float [ %4035, %4015 ], [ %3770, %3884 ]
  %3908 = phi float [ %4036, %4015 ], [ %3771, %3884 ]
  %3909 = add nuw nsw i32 %3887, %3882
  %3910 = shl i32 %3909, 2
  %3911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.i32 %3911, 0
  %3913 = shl i32 %3912, 8
  %3914 = or i32 %3913, 48
  %3915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3919 = extractvalue %dx.types.ResRet.f32 %3915, 3
  %3920 = or i32 %3913, 64
  %3921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.i32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.i32 %3921, 1
  %3924 = or i32 %3913, 80
  %3925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.f32 %3925, 2
  %3927 = extractvalue %dx.types.ResRet.f32 %3925, 3
  %3928 = or i32 %3913, 96
  %3929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3928, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.ResRet.f32 %3929, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3929, 2
  %3933 = extractvalue %dx.types.ResRet.f32 %3929, 3
  %3934 = or i32 %3913, 112
  %3935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 2
  %3937 = or i32 %3913, 128
  %3938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3937, i32 undef)  ; BufferLoad(srv,index,wot)
  %3939 = extractvalue %dx.types.ResRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.ResRet.f32 %3938, 1
  %3941 = extractvalue %dx.types.ResRet.f32 %3938, 2
  %3942 = extractvalue %dx.types.ResRet.f32 %3938, 3
  %3943 = or i32 %3913, 144
  %3944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %3946 = extractvalue %dx.types.ResRet.f32 %3944, 1
  %3947 = extractvalue %dx.types.ResRet.f32 %3944, 2
  %3948 = extractvalue %dx.types.ResRet.f32 %3944, 3
  %3949 = or i32 %3913, 160
  %3950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = extractvalue %dx.types.ResRet.f32 %3950, 1
  %3953 = extractvalue %dx.types.ResRet.f32 %3950, 2
  %3954 = extractvalue %dx.types.ResRet.f32 %3950, 3
  %3955 = or i32 %3913, 192
  %3956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.i32 %3956, 0
  %3958 = or i32 %3913, 208
  %3959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = or i32 %3913, 248
  %3962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3961, i32 undef)  ; BufferLoad(srv,index,wot)
  %3963 = extractvalue %dx.types.ResRet.f32 %3962, 0
  %3964 = extractvalue %dx.types.ResRet.f32 %3962, 1
  %3965 = add nuw nsw i32 %3887, 1
  %3966 = bitcast float %3919 to i32
  %3967 = and i32 %3966, 512
  %3968 = icmp eq i32 %3967, 0
  %3969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3969, 2
  %3973 = extractvalue %dx.types.ResRet.f32 %3969, 3
  %3974 = call float @dx.op.dot4.f32(i32 56, float %3970, float %3971, float %3972, float %3973, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3975 = or i32 %3913, 16
  %3976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3975, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.f32 %3976, 0
  %3978 = extractvalue %dx.types.ResRet.f32 %3976, 1
  %3979 = extractvalue %dx.types.ResRet.f32 %3976, 2
  %3980 = extractvalue %dx.types.ResRet.f32 %3976, 3
  %3981 = call float @dx.op.dot4.f32(i32 56, float %3977, float %3978, float %3979, float %3980, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3982 = or i32 %3913, 32
  %3983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3982, i32 undef)  ; BufferLoad(srv,index,wot)
  %3984 = extractvalue %dx.types.ResRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.ResRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.ResRet.f32 %3983, 2
  %3987 = extractvalue %dx.types.ResRet.f32 %3983, 3
  %3988 = call float @dx.op.dot4.f32(i32 56, float %3984, float %3985, float %3986, float %3987, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3989 = call float @dx.op.unary.f32(i32 27, float %3974)  ; Round_ni(value)
  %3990 = call float @dx.op.unary.f32(i32 6, float %3989)  ; FAbs(value)
  %3991 = call float @dx.op.unary.f32(i32 27, float %3981)  ; Round_ni(value)
  %3992 = call float @dx.op.unary.f32(i32 6, float %3991)  ; FAbs(value)
  %3993 = call float @dx.op.unary.f32(i32 6, float %3988)  ; FAbs(value)
  %3994 = call float @dx.op.unary.f32(i32 27, float %3993)  ; Round_ni(value)
  %3995 = fadd fast float %3992, %3990
  %3996 = fadd fast float %3995, %3994
  %3997 = fcmp fast oeq float %3996, 0.000000e+00
  %3998 = call float @dx.op.dot4.f32(i32 56, float %3970, float %3971, float %3972, float %3973, float %3839, float %3840, float %3841, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3999 = call float @dx.op.dot4.f32(i32 56, float %3977, float %3978, float %3979, float %3980, float %3839, float %3840, float %3841, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4000 = call float @dx.op.dot4.f32(i32 56, float %3970, float %3971, float %3972, float %3973, float %3842, float %3843, float %3844, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4001 = call float @dx.op.dot4.f32(i32 56, float %3977, float %3978, float %3979, float %3980, float %3842, float %3843, float %3844, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4002 = fsub fast float %3998, %3974
  %4003 = fsub fast float %4000, %3974
  %4004 = fsub fast float %3999, %3981
  %4005 = fsub fast float %4001, %3981
  %4006 = call float @dx.op.dot3.f32(i32 55, float %3916, float %3917, float %3918, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 2
  %4009 = fadd fast float %4008, %4006
  %4010 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4011 = extractvalue %dx.types.CBufRet.f32 %4007, 0
  %4012 = fcmp fast ogt float %4010, %4011
  %4013 = and i1 %3997, %4012
  %4014 = and i1 %3968, %4013
  br i1 %4014, label %4038, label %4015

; <label>:4015                                    ; preds = %4345, %4119, %4038, %3886
  %4016 = phi float [ %3888, %4038 ], [ %4122, %4119 ], [ %4122, %4345 ], [ %3888, %3886 ]
  %4017 = phi float [ %3889, %4038 ], [ %3889, %4119 ], [ %4321, %4345 ], [ %3889, %3886 ]
  %4018 = phi float [ %3890, %4038 ], [ %3890, %4119 ], [ %4319, %4345 ], [ %3890, %3886 ]
  %4019 = phi float [ %3891, %4038 ], [ %3891, %4119 ], [ %4246, %4345 ], [ %3891, %3886 ]
  %4020 = phi float [ %3892, %4038 ], [ %3892, %4119 ], [ %4244, %4345 ], [ %3892, %3886 ]
  %4021 = phi float [ %3893, %4038 ], [ %3893, %4119 ], [ %4289, %4345 ], [ %3893, %3886 ]
  %4022 = phi float [ %3894, %4038 ], [ %3894, %4119 ], [ %4290, %4345 ], [ %3894, %3886 ]
  %4023 = phi float [ %3895, %4038 ], [ %3895, %4119 ], [ %4291, %4345 ], [ %3895, %3886 ]
  %4024 = phi float [ %3896, %4038 ], [ %3896, %4119 ], [ %4355, %4345 ], [ %3896, %3886 ]
  %4025 = phi float [ %3897, %4038 ], [ %3897, %4119 ], [ %4356, %4345 ], [ %3897, %3886 ]
  %4026 = phi float [ %3898, %4038 ], [ %3898, %4119 ], [ %4357, %4345 ], [ %3898, %3886 ]
  %4027 = phi float [ %3899, %4038 ], [ %3899, %4119 ], [ %4225, %4345 ], [ %3899, %3886 ]
  %4028 = phi float [ %3900, %4038 ], [ %3900, %4119 ], [ %4226, %4345 ], [ %3900, %3886 ]
  %4029 = phi float [ %3901, %4038 ], [ %3901, %4119 ], [ %4227, %4345 ], [ %3901, %3886 ]
  %4030 = phi float [ %3902, %4038 ], [ %3902, %4119 ], [ %4299, %4345 ], [ %3902, %3886 ]
  %4031 = phi float [ %3903, %4038 ], [ %3903, %4119 ], [ %4296, %4345 ], [ %3903, %3886 ]
  %4032 = phi float [ %3904, %4038 ], [ %3904, %4119 ], [ %4293, %4345 ], [ %3904, %3886 ]
  %4033 = phi float [ %3905, %4038 ], [ %3905, %4119 ], [ %4242, %4345 ], [ %3905, %3886 ]
  %4034 = phi float [ %3906, %4038 ], [ %3906, %4119 ], [ %4237, %4345 ], [ %3906, %3886 ]
  %4035 = phi float [ %3907, %4038 ], [ %3907, %4119 ], [ %4238, %4345 ], [ %3907, %3886 ]
  %4036 = phi float [ %3908, %4038 ], [ %3908, %4119 ], [ %4239, %4345 ], [ %3908, %3886 ]
  %4037 = icmp eq i32 %3965, %3885
  br i1 %4037, label %4358, label %3886

; <label>:4038                                    ; preds = %3886
  %4039 = extractvalue %dx.types.ResRet.f32 %3935, 3
  %4040 = extractvalue %dx.types.ResRet.f32 %3935, 1
  %4041 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %4042 = extractvalue %dx.types.ResRet.f32 %3925, 1
  %4043 = extractvalue %dx.types.ResRet.f32 %3925, 0
  %4044 = extractvalue %dx.types.ResRet.i32 %3921, 3
  %4045 = extractvalue %dx.types.ResRet.i32 %3921, 2
  %4046 = add i32 %4044, 0
  %4047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4046, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4049 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4047, %dx.types.Handle %4048, float %3974, float %3981, float undef, float undef, i32 0, i32 0, i32 undef, float %4002, float %4004, float undef, float %4003, float %4005, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4050 = extractvalue %dx.types.ResRet.f32 %4049, 0
  %4051 = fmul fast float %4050, %4043
  %4052 = fadd fast float %4051, %4042
  %4053 = call float @dx.op.unary.f32(i32 7, float %4052)  ; Saturate(value)
  %4054 = fmul fast float %3974, %3930
  %4055 = call float @dx.op.tertiary.f32(i32 46, float %3931, float %3981, float %4054)  ; FMad(a,b,c)
  %4056 = fadd fast float %4055, %4041
  %4057 = fmul fast float %3974, %3932
  %4058 = call float @dx.op.tertiary.f32(i32 46, float %3933, float %3981, float %4057)  ; FMad(a,b,c)
  %4059 = fadd fast float %4058, %4040
  %4060 = fmul fast float %4002, %3930
  %4061 = call float @dx.op.tertiary.f32(i32 46, float %3931, float %4004, float %4060)  ; FMad(a,b,c)
  %4062 = fmul fast float %4002, %3932
  %4063 = call float @dx.op.tertiary.f32(i32 46, float %3933, float %4004, float %4062)  ; FMad(a,b,c)
  %4064 = fmul fast float %4003, %3930
  %4065 = call float @dx.op.tertiary.f32(i32 46, float %3931, float %4005, float %4064)  ; FMad(a,b,c)
  %4066 = fmul fast float %4003, %3932
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %3933, float %4005, float %4066)  ; FMad(a,b,c)
  %4068 = add i32 %4045, 0
  %4069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4068, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4070 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4069, %dx.types.Handle %4048, float %4056, float %4059, float undef, float undef, i32 0, i32 0, i32 undef, float %4061, float %4063, float undef, float %4065, float %4067, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4071 = extractvalue %dx.types.ResRet.f32 %4070, 0
  %4072 = and i32 %3966, 1024
  %4073 = icmp ne i32 %4072, 0
  %4074 = fcmp fast ogt float %4071, 0x3FE0101020000000
  %4075 = uitofp i1 %4074 to float
  %4076 = select i1 %4073, float %4075, float %4071
  %4077 = and i32 %3966, 8192
  %4078 = icmp ne i32 %4077, 0
  %4079 = select i1 %4078, float %4039, float 1.000000e+00
  %4080 = fmul fast float %3974, 2.000000e+00
  %4081 = fadd fast float %4080, -1.000000e+00
  %4082 = call float @dx.op.unary.f32(i32 6, float %4081)  ; FAbs(value)
  %4083 = fmul fast float %4082, %3963
  %4084 = fsub fast float %4083, %3963
  %4085 = call float @dx.op.unary.f32(i32 7, float %4084)  ; Saturate(value)
  %4086 = fmul fast float %3981, 2.000000e+00
  %4087 = fadd fast float %4086, -1.000000e+00
  %4088 = call float @dx.op.unary.f32(i32 6, float %4087)  ; FAbs(value)
  %4089 = fmul fast float %4088, %3964
  %4090 = fsub fast float %4089, %3964
  %4091 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4092 = fmul fast float %3993, %3926
  %4093 = fsub fast float %4092, %3926
  %4094 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4095 = fmul fast float %4053, %4079
  %4096 = fmul fast float %4095, %4050
  %4097 = fmul fast float %4096, %4085
  %4098 = fmul fast float %4097, %4076
  %4099 = fmul fast float %4098, %4091
  %4100 = fmul fast float %4099, %4094
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 1
  %4103 = extractvalue %dx.types.CBufRet.f32 %4101, 0
  %4104 = fsub fast float %4010, %4103
  %4105 = fmul fast float %4104, %4102
  %4106 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4107 = fmul fast float %4100, %3927
  %4108 = fadd fast float %4100, %3927
  %4109 = fmul fast float %4108, %3936
  %4110 = fsub fast float %4109, %3936
  %4111 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4112 = and i32 %3966, 128
  %4113 = icmp ne i32 %4112, 0
  %4114 = select i1 %4113, float %4111, float %4107
  %4115 = fmul fast float %4114, %4106
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 0
  %4118 = fcmp fast ugt float %4115, %4117
  br i1 %4118, label %4119, label %4015

; <label>:4119                                    ; preds = %4038
  %4120 = select i1 %4078, float %4115, float 0.000000e+00
  %4121 = fadd fast float %4120, %3888
  %4122 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  br i1 %4078, label %4015, label %4123

; <label>:4123                                    ; preds = %4119
  %4124 = and i32 %3966, 4
  %4125 = and i32 %3966, 8
  %4126 = add i32 %3922, 0
  %4127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4126, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4129 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4127, %dx.types.Handle %4128, float %4056, float %4059, float undef, float undef, i32 0, i32 0, i32 undef, float %4061, float %4063, float undef, float %4065, float %4067, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4130 = extractvalue %dx.types.ResRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.ResRet.f32 %4129, 1
  %4132 = extractvalue %dx.types.ResRet.f32 %4129, 2
  %4133 = extractvalue %dx.types.ResRet.f32 %4129, 3
  %4134 = bitcast float %3948 to i32
  %4135 = and i32 %4134, 255
  %4136 = uitofp i32 %4135 to float
  %4137 = lshr i32 %4134, 8
  %4138 = and i32 %4137, 255
  %4139 = uitofp i32 %4138 to float
  %4140 = fmul fast float %4133, %4136
  %4141 = fadd fast float %4140, %4139
  %4142 = fmul fast float %4141, 0x3F70101000000000
  %4143 = add i32 %3923, 0
  %4144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4143, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4145 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4144, %dx.types.Handle %4128, float %4056, float %4059, float undef, float undef, i32 0, i32 0, i32 undef, float %4061, float %4063, float undef, float %4065, float %4067, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.ResRet.f32 %4145, 1
  %4148 = extractvalue %dx.types.ResRet.f32 %4145, 2
  %4149 = extractvalue %dx.types.ResRet.f32 %4145, 3
  %4150 = bitcast float %3942 to i32
  %4151 = and i32 %4150, 255
  %4152 = uitofp i32 %4151 to float
  %4153 = lshr i32 %4150, 8
  %4154 = and i32 %4153, 255
  %4155 = uitofp i32 %4154 to float
  %4156 = lshr i32 %4150, 16
  %4157 = and i32 %4156, 255
  %4158 = uitofp i32 %4157 to float
  %4159 = fmul fast float %4158, 0x3F70101000000000
  %4160 = fmul fast float %4146, %4152
  %4161 = fadd fast float %4160, %4155
  %4162 = fmul fast float %4161, 0x3F70101000000000
  %4163 = fadd fast float %4147, -5.000000e-01
  %4164 = fadd fast float %4149, -5.000000e-01
  %4165 = fmul fast float %4163, %4159
  %4166 = fmul fast float %4164, %4159
  %4167 = fadd fast float %4165, 5.000000e-01
  %4168 = fadd fast float %4166, 5.000000e-01
  %4169 = fmul fast float %4130, %3951
  %4170 = fmul fast float %4131, %3952
  %4171 = fmul fast float %4132, %3953
  %4172 = fmul fast float %4167, 2.000000e+00
  %4173 = fadd fast float %4172, -1.000000e+00
  %4174 = fmul fast float %4168, 2.000000e+00
  %4175 = fadd fast float %4174, -1.000000e+00
  %4176 = fadd fast float %4173, %4175
  %4177 = fmul fast float %4176, 5.000000e-01
  %4178 = fsub fast float %4173, %4175
  %4179 = fmul fast float %4178, 5.000000e-01
  %4180 = call float @dx.op.unary.f32(i32 6, float %4177)  ; FAbs(value)
  %4181 = fsub fast float 1.000000e+00, %4180
  %4182 = call float @dx.op.unary.f32(i32 6, float %4179)  ; FAbs(value)
  %4183 = fsub fast float %4181, %4182
  %4184 = call float @dx.op.dot3.f32(i32 55, float %4177, float %4179, float %4183, float %4177, float %4179, float %4183)  ; Dot3(ax,ay,az,bx,by,bz)
  %4185 = call float @dx.op.unary.f32(i32 25, float %4184)  ; Rsqrt(value)
  %4186 = fmul fast float %4177, %4185
  %4187 = fmul fast float %4179, %4185
  %4188 = fmul fast float %4185, %4183
  %4189 = fmul fast float %4188, %3916
  %4190 = fmul fast float %4188, %3917
  %4191 = fmul fast float %4188, %3918
  %4192 = fmul fast float %4186, %3939
  %4193 = fmul fast float %4186, %3940
  %4194 = fmul fast float %4186, %3941
  %4195 = fadd fast float %4192, %4189
  %4196 = fadd fast float %4193, %4190
  %4197 = fadd fast float %4194, %4191
  %4198 = fmul fast float %4187, %3945
  %4199 = fmul fast float %4187, %3946
  %4200 = fmul fast float %4187, %3947
  %4201 = fadd fast float %4195, %4198
  %4202 = fadd fast float %4196, %4199
  %4203 = fadd fast float %4197, %4200
  %4204 = call float @dx.op.dot3.f32(i32 55, float %4201, float %4202, float %4203, float %4201, float %4202, float %4203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4205 = call float @dx.op.unary.f32(i32 25, float %4204)  ; Rsqrt(value)
  %4206 = fmul fast float %4201, %4205
  %4207 = fmul fast float %4202, %4205
  %4208 = fmul fast float %4203, %4205
  %4209 = icmp ne i32 %4125, 0
  %4210 = select i1 %4209, float 1.000000e+00, float 0.000000e+00
  %4211 = fmul fast float %4115, %4210
  %4212 = and i32 %3966, 1
  %4213 = icmp eq i32 %4212, 0
  br i1 %4213, label %4214, label %4218

; <label>:4214                                    ; preds = %4123
  %4215 = fsub fast float %4206, %3899
  %4216 = fsub fast float %4207, %3900
  %4217 = fsub fast float %4208, %3901
  br label %4218

; <label>:4218                                    ; preds = %4214, %4123
  %4219 = phi float [ %4215, %4214 ], [ %4206, %4123 ]
  %4220 = phi float [ %4216, %4214 ], [ %4207, %4123 ]
  %4221 = phi float [ %4217, %4214 ], [ %4208, %4123 ]
  %4222 = fmul float %4221, %4211
  %4223 = fmul float %4220, %4211
  %4224 = fmul float %4219, %4211
  %4225 = fadd fast float %4224, %3899
  %4226 = fadd fast float %4223, %3900
  %4227 = fadd fast float %4222, %3901
  %4228 = icmp ne i32 %4124, 0
  %4229 = select i1 %4228, float 1.000000e+00, float 0.000000e+00
  %4230 = fmul fast float %4115, %4229
  %4231 = fsub fast float %4169, %3906
  %4232 = fsub fast float %4170, %3907
  %4233 = fsub fast float %4171, %3908
  %4234 = fmul fast float %4231, %4230
  %4235 = fmul fast float %4232, %4230
  %4236 = fmul fast float %4233, %4230
  %4237 = fadd fast float %4234, %3906
  %4238 = fadd fast float %4235, %3907
  %4239 = fadd fast float %4236, %3908
  %4240 = fsub fast float %4142, %3905
  %4241 = fmul fast float %4240, %4230
  %4242 = fadd fast float %4241, %3905
  %4243 = fmul fast float %4230, %3892
  %4244 = fsub fast float %3892, %4243
  %4245 = fmul fast float %4230, %3891
  %4246 = fsub fast float %3891, %4245
  %4247 = bitcast float %3960 to i32
  %4248 = lshr i32 %4247, 16
  %4249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4248)  ; LegacyF16ToF32(value)
  %4250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.i32 %4250, 0
  %4252 = and i32 %4251, 1
  %4253 = icmp eq i32 %4252, 0
  br i1 %4253, label %4254, label %4279

; <label>:4254                                    ; preds = %4218
  %4255 = fadd fast float %4142, 0xBFB99999A0000000
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = fmul fast float %4256, 0x3FF1C71C80000000
  %4258 = fsub fast float 1.000000e+00, %4257
  %4259 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4260 = fmul fast float %4259, %4169
  %4261 = fmul fast float %4259, %4170
  %4262 = fmul fast float %4259, %4171
  %4263 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4264 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4265 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4266 = call float @dx.op.binary.f32(i32 35, float %4264, float %4265)  ; FMax(a,b)
  %4267 = call float @dx.op.binary.f32(i32 35, float %4263, float %4266)  ; FMax(a,b)
  %4268 = fcmp fast ogt float %4267, 0.000000e+00
  %4269 = bitcast float %4267 to i32
  %4270 = sub nsw i32 2129859010, %4269
  %4271 = bitcast i32 %4270 to float
  %4272 = select i1 %4268, float %4271, float 0.000000e+00
  %4273 = fmul fast float %4263, %4249
  %4274 = fmul fast float %4264, %4249
  %4275 = fmul fast float %4265, %4249
  %4276 = fmul fast float %4273, %4272
  %4277 = fmul fast float %4274, %4272
  %4278 = fmul fast float %4275, %4272
  br label %4279

; <label>:4279                                    ; preds = %4254, %4218
  %4280 = phi float [ %4249, %4218 ], [ %4276, %4254 ]
  %4281 = phi float [ %4249, %4218 ], [ %4277, %4254 ]
  %4282 = phi float [ %4249, %4218 ], [ %4278, %4254 ]
  %4283 = fsub fast float %4280, %3893
  %4284 = fsub fast float %4281, %3894
  %4285 = fsub fast float %4282, %3895
  %4286 = fmul fast float %4283, %4230
  %4287 = fmul fast float %4284, %4230
  %4288 = fmul fast float %4285, %4230
  %4289 = fadd fast float %4286, %3893
  %4290 = fadd fast float %4287, %3894
  %4291 = fadd fast float %4288, %3895
  %4292 = fadd fast float %4115, %3904
  %4293 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4294 = fsub fast float %4162, %3903
  %4295 = fmul fast float %4294, %4211
  %4296 = fadd fast float %4295, %3903
  %4297 = fsub fast float %4148, %3902
  %4298 = fmul fast float %4297, %4211
  %4299 = fadd fast float %4298, %3902
  %4300 = call float @dx.op.dot3.f32(i32 55, float %4169, float %4170, float %4171, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4304 = fmul fast float %4303, %4300
  %4305 = fadd fast float %4304, %4302
  %4306 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  %4307 = bitcast float %3954 to i32
  %4308 = and i32 %4307, 65535
  %4309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4308)  ; LegacyF16ToF32(value)
  %4310 = lshr i32 %4307, 16
  %4311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4310)  ; LegacyF16ToF32(value)
  %4312 = fcmp fast oge float %4309, 0.000000e+00
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 0
  %4315 = select i1 %4312, float %4309, float %4314
  %4316 = fadd fast float %4315, %4311
  %4317 = fsub fast float %4306, %3890
  %4318 = fmul fast float %4317, %4115
  %4319 = fadd fast float %4318, %3890
  %4320 = fmul fast float %4316, %4115
  %4321 = call float @dx.op.binary.f32(i32 35, float %3889, float %4320)  ; FMax(a,b)
  %4322 = and i32 %3966, 16
  %4323 = icmp eq i32 %4322, 0
  br i1 %4323, label %4345, label %4324

; <label>:4324                                    ; preds = %4279
  %4325 = add i32 %3957, 0
  %4326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4325, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4327 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4326, %dx.types.Handle %4128, float %4056, float %4059, float undef, float undef, i32 0, i32 0, i32 undef, float %4061, float %4063, float undef, float %4065, float %4067, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4328 = extractvalue %dx.types.ResRet.f32 %4327, 0
  %4329 = extractvalue %dx.types.ResRet.f32 %4327, 1
  %4330 = extractvalue %dx.types.ResRet.f32 %4327, 2
  %4331 = and i32 %4247, 65535
  %4332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4331)  ; LegacyF16ToF32(value)
  %4333 = fmul fast float %4328, %3951
  %4334 = fmul fast float %4329, %3952
  %4335 = fmul fast float %4330, %3953
  %4336 = and i32 %3966, 16384
  %4337 = icmp ne i32 %4336, 0
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 0
  %4340 = select i1 %4337, float %4339, float 1.000000e+00
  %4341 = fmul fast float %4340, %4332
  %4342 = fmul fast float %4333, %4341
  %4343 = fmul fast float %4334, %4341
  %4344 = fmul fast float %4335, %4341
  br label %4345

; <label>:4345                                    ; preds = %4324, %4279
  %4346 = phi float [ %4342, %4324 ], [ 0.000000e+00, %4279 ]
  %4347 = phi float [ %4343, %4324 ], [ 0.000000e+00, %4279 ]
  %4348 = phi float [ %4344, %4324 ], [ 0.000000e+00, %4279 ]
  %4349 = fsub fast float %4346, %3896
  %4350 = fsub fast float %4347, %3897
  %4351 = fsub fast float %4348, %3898
  %4352 = fmul fast float %4349, %4115
  %4353 = fmul fast float %4350, %4115
  %4354 = fmul fast float %4351, %4115
  %4355 = fadd fast float %4352, %3896
  %4356 = fadd fast float %4353, %3897
  %4357 = fadd fast float %4354, %3898
  br label %4015

; <label>:4358                                    ; preds = %4015
  br label %4359

; <label>:4359                                    ; preds = %4358, %3832
  %4360 = phi float [ 0.000000e+00, %3832 ], [ %4016, %4358 ]
  %4361 = phi float [ %3801, %3832 ], [ %4017, %4358 ]
  %4362 = phi float [ %3782, %3832 ], [ %4018, %4358 ]
  %4363 = phi float [ 0.000000e+00, %3832 ], [ %4019, %4358 ]
  %4364 = phi float [ 0.000000e+00, %3832 ], [ %4020, %4358 ]
  %4365 = phi float [ %3775, %3832 ], [ %4021, %4358 ]
  %4366 = phi float [ %3776, %3832 ], [ %4022, %4358 ]
  %4367 = phi float [ %3777, %3832 ], [ %4023, %4358 ]
  %4368 = phi float [ %3772, %3832 ], [ %4024, %4358 ]
  %4369 = phi float [ %3773, %3832 ], [ %4025, %4358 ]
  %4370 = phi float [ %3774, %3832 ], [ %4026, %4358 ]
  %4371 = phi float [ %3827, %3832 ], [ %4027, %4358 ]
  %4372 = phi float [ %3828, %3832 ], [ %4028, %4358 ]
  %4373 = phi float [ %3829, %3832 ], [ %4029, %4358 ]
  %4374 = phi float [ %3780, %3832 ], [ %4030, %4358 ]
  %4375 = phi float [ %3779, %3832 ], [ %4031, %4358 ]
  %4376 = phi float [ 0.000000e+00, %3832 ], [ %4032, %4358 ]
  %4377 = phi float [ %3778, %3832 ], [ %4033, %4358 ]
  %4378 = phi float [ %3769, %3832 ], [ %4034, %4358 ]
  %4379 = phi float [ %3770, %3832 ], [ %4035, %4358 ]
  %4380 = phi float [ %3771, %3832 ], [ %4036, %4358 ]
  %4381 = call float @dx.op.dot3.f32(i32 55, float %4371, float %4372, float %4373, float %4371, float %4372, float %4373)  ; Dot3(ax,ay,az,bx,by,bz)
  %4382 = call float @dx.op.unary.f32(i32 25, float %4381)  ; Rsqrt(value)
  %4383 = fmul fast float %4382, %4371
  %4384 = fmul fast float %4382, %4372
  %4385 = fmul fast float %4382, %4373
  %4386 = fadd fast float %4376, %943
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = call float @dx.op.dot3.f32(i32 55, float %4383, float %4384, float %4385, float %4383, float %4384, float %4385)  ; Dot3(ax,ay,az,bx,by,bz)
  %4389 = call float @dx.op.unary.f32(i32 25, float %4388)  ; Rsqrt(value)
  %4390 = fmul fast float %4389, %4383
  %4391 = fmul fast float %4389, %4384
  %4392 = fmul fast float %4389, %4385
  br label %4393

; <label>:4393                                    ; preds = %4359, %3766
  %4394 = phi float [ %4390, %4359 ], [ %3827, %3766 ]
  %4395 = phi float [ %4391, %4359 ], [ %3828, %3766 ]
  %4396 = phi float [ %4392, %4359 ], [ %3829, %3766 ]
  %4397 = phi float [ %4378, %4359 ], [ %3769, %3766 ]
  %4398 = phi float [ %4379, %4359 ], [ %3770, %3766 ]
  %4399 = phi float [ %4380, %4359 ], [ %3771, %3766 ]
  %4400 = phi float [ %4368, %4359 ], [ %3772, %3766 ]
  %4401 = phi float [ %4369, %4359 ], [ %3773, %3766 ]
  %4402 = phi float [ %4370, %4359 ], [ %3774, %3766 ]
  %4403 = phi float [ %4365, %4359 ], [ %3775, %3766 ]
  %4404 = phi float [ %4366, %4359 ], [ %3776, %3766 ]
  %4405 = phi float [ %4367, %4359 ], [ %3777, %3766 ]
  %4406 = phi float [ %4377, %4359 ], [ %3778, %3766 ]
  %4407 = phi float [ %4387, %4359 ], [ %943, %3766 ]
  %4408 = phi float [ %4375, %4359 ], [ %3779, %3766 ]
  %4409 = phi float [ %4374, %4359 ], [ %3780, %3766 ]
  %4410 = phi float [ %4364, %4359 ], [ 0.000000e+00, %3766 ]
  %4411 = phi float [ %4363, %4359 ], [ 0.000000e+00, %3766 ]
  %4412 = phi float [ %4360, %4359 ], [ 0.000000e+00, %3766 ]
  %4413 = phi float [ %4361, %4359 ], [ %3801, %3766 ]
  %4414 = phi float [ %4362, %4359 ], [ %3782, %3766 ]
  %4415 = fadd fast float %4406, 0xBFB99999A0000000
  %4416 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4417 = fmul fast float %4416, 0x3FF1C71C80000000
  %4418 = call float @dx.op.binary.f32(i32 36, float %4406, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4419 = fsub fast float 1.000000e+00, %4417
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = fmul fast float %4420, %4397
  %4422 = fmul fast float %4420, %4398
  %4423 = fmul fast float %4420, %4399
  %4424 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4425 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4426 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4427 = fmul fast float %4417, %4397
  %4428 = fmul fast float %4417, %4398
  %4429 = fmul fast float %4417, %4399
  %4430 = fadd fast float %4427, %4418
  %4431 = fadd fast float %4428, %4418
  %4432 = fadd fast float %4429, %4418
  %4433 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4434 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4435 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4436 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.i32 %4437, 0
  %4439 = and i32 %4438, 1
  %4440 = icmp eq i32 %4439, 0
  br i1 %4440, label %4455, label %4441

; <label>:4441                                    ; preds = %4393
  %4442 = call float @dx.op.binary.f32(i32 35, float %4425, float %4426)  ; FMax(a,b)
  %4443 = call float @dx.op.binary.f32(i32 35, float %4424, float %4442)  ; FMax(a,b)
  %4444 = fcmp fast ogt float %4443, 0.000000e+00
  %4445 = bitcast float %4443 to i32
  %4446 = sub nsw i32 2129859010, %4445
  %4447 = bitcast i32 %4446 to float
  %4448 = select i1 %4444, float %4447, float 0.000000e+00
  %4449 = fmul fast float %4424, %4403
  %4450 = fmul fast float %4425, %4404
  %4451 = fmul fast float %4426, %4405
  %4452 = fmul fast float %4449, %4448
  %4453 = fmul fast float %4450, %4448
  %4454 = fmul fast float %4451, %4448
  br label %4455

; <label>:4455                                    ; preds = %4441, %4393
  %4456 = phi float [ %4452, %4441 ], [ %4403, %4393 ]
  %4457 = phi float [ %4453, %4441 ], [ %4404, %4393 ]
  %4458 = phi float [ %4454, %4441 ], [ %4405, %4393 ]
  %4459 = fadd fast float %4424, 0xBFD51EB860000000
  %4460 = fadd fast float %4425, 0xBFD51EB860000000
  %4461 = fadd fast float %4426, 0xBFD51EB860000000
  %4462 = fmul fast float %4459, %4459
  %4463 = fmul fast float %4460, %4460
  %4464 = fmul fast float %4461, %4461
  %4465 = fmul fast float %4462, %4462
  %4466 = fmul fast float %4465, 1.000000e+02
  %4467 = fmul fast float %4463, %4463
  %4468 = fmul fast float %4467, 1.000000e+02
  %4469 = fmul fast float %4464, %4464
  %4470 = fmul fast float %4469, 1.000000e+02
  %4471 = fadd fast float %4466, 3.500000e+00
  %4472 = fadd fast float %4468, 3.500000e+00
  %4473 = fadd fast float %4470, 3.500000e+00
  %4474 = call float @dx.op.binary.f32(i32 35, float %4456, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4475 = call float @dx.op.binary.f32(i32 35, float %4457, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4476 = call float @dx.op.binary.f32(i32 35, float %4458, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4477 = fdiv fast float %4471, %4474
  %4478 = fdiv fast float %4472, %4475
  %4479 = fdiv fast float %4473, %4476
  %4480 = fmul fast float %3781, 0xBFF7154760000000
  %4481 = fmul fast float %4480, %4477
  %4482 = call float @dx.op.unary.f32(i32 21, float %4481)  ; Exp(value)
  %4483 = fmul fast float %4482, 2.500000e-01
  %4484 = fmul fast float %3781, 0xBFDEC709E0000000
  %4485 = fmul fast float %4484, %4477
  %4486 = call float @dx.op.unary.f32(i32 21, float %4485)  ; Exp(value)
  %4487 = fmul fast float %4486, 7.500000e-01
  %4488 = fmul fast float %4480, %4478
  %4489 = call float @dx.op.unary.f32(i32 21, float %4488)  ; Exp(value)
  %4490 = fmul fast float %4489, 2.500000e-01
  %4491 = fmul fast float %4484, %4478
  %4492 = call float @dx.op.unary.f32(i32 21, float %4491)  ; Exp(value)
  %4493 = fmul fast float %4492, 7.500000e-01
  %4494 = fmul fast float %4480, %4479
  %4495 = call float @dx.op.unary.f32(i32 21, float %4494)  ; Exp(value)
  %4496 = fmul fast float %4495, 2.500000e-01
  %4497 = fmul fast float %4484, %4479
  %4498 = call float @dx.op.unary.f32(i32 21, float %4497)  ; Exp(value)
  %4499 = fmul fast float %4498, 7.500000e-01
  %4500 = fadd fast float %4483, %4487
  %4501 = fadd fast float %4490, %4493
  %4502 = fadd fast float %4496, %4499
  %4503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.i32 %4503, 3
  %4505 = and i32 %4504, 8
  %4506 = icmp ne i32 %4505, 0
  %4507 = call float @dx.op.binary.f32(i32 35, float %4424, float %4397)  ; FMax(a,b)
  %4508 = call float @dx.op.binary.f32(i32 35, float %4425, float %4397)  ; FMax(a,b)
  %4509 = call float @dx.op.binary.f32(i32 35, float %4426, float %4397)  ; FMax(a,b)
  %4510 = call float @dx.op.dot3.f32(i32 55, float %4424, float %4425, float %4426, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4511 = select i1 %168, float %4397, float %4424
  %4512 = select i1 %168, float %4510, float %4425
  %4513 = select i1 %168, float 1.000000e+00, float %4426
  %4514 = select i1 %4506, float %4507, float %4511
  %4515 = select i1 %4506, float %4508, float %4512
  %4516 = select i1 %4506, float %4509, float %4513
  %4517 = and i32 %144, 3
  %4518 = select i1 %138, i32 %4517, i32 0
  %4519 = icmp eq i32 %4518, 1
  br i1 %4519, label %4520, label %4596

; <label>:4520                                    ; preds = %4455
  %4521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4522 = extractvalue %dx.types.CBufRet.f32 %4521, 0
  %4523 = extractvalue %dx.types.CBufRet.f32 %4521, 1
  %4524 = fadd fast float %4522, %127
  %4525 = fadd fast float %4523, %128
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 0
  %4528 = extractvalue %dx.types.CBufRet.f32 %4526, 1
  %4529 = fsub fast float %4524, %4527
  %4530 = fsub fast float %4525, %4528
  %4531 = fmul fast float %4529, %4529
  %4532 = fmul fast float %4530, %4530
  %4533 = fadd fast float %4531, %4532
  %4534 = call float @dx.op.unary.f32(i32 24, float %4533)  ; Sqrt(value)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4526, 2
  %4536 = fcmp fast olt float %4534, %4535
  br i1 %4536, label %4537, label %4590

; <label>:4537                                    ; preds = %4520
  %4538 = extractvalue %dx.types.CBufRet.f32 %4521, 2
  %4539 = fadd fast float %4538, %129
  %4540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.f32 %4540, 0
  %4542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.f32 %4542, 0
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 0
  %4546 = extractvalue %dx.types.CBufRet.f32 %4540, 1
  %4547 = extractvalue %dx.types.CBufRet.f32 %4542, 1
  %4548 = extractvalue %dx.types.CBufRet.f32 %4544, 1
  %4549 = extractvalue %dx.types.CBufRet.f32 %4540, 3
  %4550 = extractvalue %dx.types.CBufRet.f32 %4542, 3
  %4551 = extractvalue %dx.types.CBufRet.f32 %4544, 3
  %4552 = fadd fast float %4549, %4524
  %4553 = fadd fast float %4550, %4525
  %4554 = fadd fast float %4539, %4551
  %4555 = fmul fast float %4552, %4541
  %4556 = call float @dx.op.tertiary.f32(i32 46, float %4553, float %4543, float %4555)  ; FMad(a,b,c)
  %4557 = call float @dx.op.tertiary.f32(i32 46, float %4554, float %4545, float %4556)  ; FMad(a,b,c)
  %4558 = fmul fast float %4552, %4546
  %4559 = call float @dx.op.tertiary.f32(i32 46, float %4553, float %4547, float %4558)  ; FMad(a,b,c)
  %4560 = call float @dx.op.tertiary.f32(i32 46, float %4554, float %4548, float %4559)  ; FMad(a,b,c)
  %4561 = fsub fast float %4557, %4549
  %4562 = fsub fast float %4560, %4550
  %4563 = fsub fast float %4561, %4527
  %4564 = fadd fast float %4563, %4535
  %4565 = fsub fast float %4562, %4528
  %4566 = fadd fast float %4565, %4535
  %4567 = extractvalue %dx.types.CBufRet.f32 %4526, 3
  %4568 = fmul fast float %4564, %4567
  %4569 = fmul fast float %4566, %4567
  %4570 = call float @dx.op.unary.f32(i32 7, float %4568)  ; Saturate(value)
  %4571 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4572 = fsub fast float 1.000000e+00, %4570
  %4573 = fsub fast float 1.000000e+00, %4571
  %4574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %28, float %4572, float %4573, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = fcmp fast ugt float %4575, 0.000000e+00
  br i1 %4576, label %4577, label %4590

; <label>:4577                                    ; preds = %4537
  %4578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.f32 %4578, 2
  %4580 = fmul fast float %4579, %4575
  %4581 = extractvalue %dx.types.CBufRet.f32 %4578, 3
  %4582 = fadd fast float %4581, %4580
  %4583 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4584 = fadd fast float %4582, %4551
  %4585 = fmul fast float %4557, %4545
  %4586 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4548, float %4585)  ; FMad(a,b,c)
  %4587 = call float @dx.op.tertiary.f32(i32 46, float %4584, float %4583, float %4586)  ; FMad(a,b,c)
  %4588 = fsub fast float %4587, %4551
  %4589 = fsub fast float %4588, %4538
  br label %4590

; <label>:4590                                    ; preds = %4577, %4537, %4520
  %4591 = phi i1 [ true, %4577 ], [ false, %4537 ], [ false, %4520 ]
  %4592 = phi float [ %4589, %4577 ], [ -1.310720e+05, %4537 ], [ -1.310720e+05, %4520 ]
  %4593 = fsub fast float %4592, %129
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4595 = select i1 %4591, float %4594, float 1.000000e+00
  br label %4596

; <label>:4596                                    ; preds = %4590, %4455
  %4597 = phi float [ %4595, %4590 ], [ 0.000000e+00, %4455 ]
  %4598 = icmp eq i32 %4518, 3
  %4599 = select i1 %4598, float 1.000000e+00, float %4597
  %4600 = call float @dx.op.binary.f32(i32 35, float %4412, float %4599)  ; FMax(a,b)
  %4601 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4602 = fcmp fast une float %4601, 0.000000e+00
  %4603 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = call float @dx.op.unary.f32(i32 25, float %4603)  ; Rsqrt(value)
  br i1 %4602, label %4612, label %4605

; <label>:4605                                    ; preds = %4596
  %4606 = fmul fast float %4604, %127
  %4607 = fmul fast float %4604, %128
  %4608 = fmul fast float %4604, %129
  %4609 = fsub fast float -0.000000e+00, %4606
  %4610 = fsub fast float -0.000000e+00, %4607
  %4611 = fsub fast float -0.000000e+00, %4608
  br label %4780

; <label>:4612                                    ; preds = %4596
  %4613 = fmul fast float %127, %4604
  %4614 = fsub fast float -0.000000e+00, %4613
  %4615 = fmul fast float %128, %4604
  %4616 = fsub fast float -0.000000e+00, %4615
  %4617 = fmul fast float %129, %4604
  %4618 = fsub fast float -0.000000e+00, %4617
  %4619 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4616, float %4618, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4620 = fmul fast float %4601, 2.500000e+00
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = fmul fast float %4601, 0x4013FFFFE0000000
  %4623 = fadd fast float %4622, 0xBFFFFFFFE0000000
  %4624 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4625 = fmul fast float %4601, 0x4004000020000000
  %4626 = fadd fast float %4625, 0xBFF8000040000000
  %4627 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4628 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4629 = fmul fast float %4415, 1.000000e+01
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = fmul fast float %4630, 2.000000e+00
  %4632 = fsub fast float 3.000000e+00, %4631
  %4633 = fmul fast float %4630, %4630
  %4634 = fmul fast float %4633, %4632
  %4635 = fsub fast float 1.000000e+00, %4634
  %4636 = fsub fast float 0x3FE3333340000000, %4436
  %4637 = fmul fast float %4636, 0x400AAAAAA0000000
  %4638 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4639 = fmul fast float %4635, %4638
  %4640 = fmul fast float %4514, 0x3FEA2B8620000000
  %4641 = fmul fast float %4515, 0x3FEA2B8620000000
  %4642 = fmul fast float %4516, 0x3FEA2B8620000000
  %4643 = fadd fast float %4640, 0x3FC81DFBA0000000
  %4644 = fmul fast float %4643, %4514
  %4645 = fadd fast float %4644, 0x3F910E6020000000
  %4646 = fadd fast float %4641, 0x3FC81DFBA0000000
  %4647 = fmul fast float %4646, %4515
  %4648 = fadd fast float %4647, 0x3F910E6020000000
  %4649 = fadd fast float %4642, 0x3FC81DFBA0000000
  %4650 = fmul fast float %4649, %4516
  %4651 = fadd fast float %4650, 0x3F910E6020000000
  %4652 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4653 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4655 = fsub fast float %4652, %4514
  %4656 = fsub fast float %4653, %4515
  %4657 = fsub fast float %4654, %4516
  %4658 = fmul fast float %4655, %4628
  %4659 = fmul fast float %4658, %4639
  %4660 = fmul fast float %4656, %4628
  %4661 = fmul fast float %4660, %4639
  %4662 = fmul fast float %4657, %4628
  %4663 = fmul fast float %4662, %4639
  %4664 = fadd fast float %4659, %4514
  %4665 = fadd fast float %4661, %4515
  %4666 = fadd fast float %4663, %4516
  %4667 = fmul fast float %4409, %4409
  %4668 = fmul fast float %4667, %4667
  %4669 = fadd fast float %4624, 1.000000e+00
  %4670 = fsub fast float %4669, %4639
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4673 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4674 = fsub fast float 1.000000e+00, %4668
  %4675 = call float @dx.op.binary.f32(i32 36, float %4671, float %4674)  ; FMin(a,b)
  %4676 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4677 = call float @dx.op.binary.f32(i32 35, float %4675, float %4676)  ; FMax(a,b)
  %4678 = fadd fast float %4673, 0xBFE4CCCCC0000000
  %4679 = fmul fast float %4678, 0x4006DB6DA0000000
  %4680 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4681 = fmul fast float %4680, 2.000000e+00
  %4682 = fsub fast float 3.000000e+00, %4681
  %4683 = bitcast float %4433 to i32
  %4684 = ashr i32 %4683, 1
  %4685 = add nsw i32 %4684, 532487669
  %4686 = bitcast i32 %4685 to float
  %4687 = fsub fast float 1.000000e+00, %4686
  %4688 = bitcast float %4687 to i32
  %4689 = sub nsw i32 2129859010, %4688
  %4690 = bitcast i32 %4689 to float
  %4691 = fmul fast float %4690, 2.000000e+00
  %4692 = bitcast float %4434 to i32
  %4693 = ashr i32 %4692, 1
  %4694 = add nsw i32 %4693, 532487669
  %4695 = bitcast i32 %4694 to float
  %4696 = fsub fast float 1.000000e+00, %4695
  %4697 = bitcast float %4696 to i32
  %4698 = sub nsw i32 2129859010, %4697
  %4699 = bitcast i32 %4698 to float
  %4700 = fmul fast float %4699, 2.000000e+00
  %4701 = bitcast float %4435 to i32
  %4702 = ashr i32 %4701, 1
  %4703 = add nsw i32 %4702, 532487669
  %4704 = bitcast i32 %4703 to float
  %4705 = fsub fast float 1.000000e+00, %4704
  %4706 = bitcast float %4705 to i32
  %4707 = sub nsw i32 2129859010, %4706
  %4708 = bitcast i32 %4707 to float
  %4709 = fmul fast float %4708, 2.000000e+00
  %4710 = fsub fast float 0x4002A9FBE0000000, %4691
  %4711 = fadd fast float %4691, 0x3FD54FDF00000000
  %4712 = bitcast float %4711 to i32
  %4713 = sub nsw i32 2129859010, %4712
  %4714 = bitcast i32 %4713 to float
  %4715 = fmul fast float %4714, %4710
  %4716 = fmul fast float %4715, %4715
  %4717 = fsub fast float 0x4002A9FBE0000000, %4700
  %4718 = fadd fast float %4700, 0x3FD54FDF00000000
  %4719 = bitcast float %4718 to i32
  %4720 = sub nsw i32 2129859010, %4719
  %4721 = bitcast i32 %4720 to float
  %4722 = fmul fast float %4721, %4717
  %4723 = fmul fast float %4722, %4722
  %4724 = fsub fast float 0x4002A9FBE0000000, %4709
  %4725 = fadd fast float %4709, 0x3FD54FDF00000000
  %4726 = bitcast float %4725 to i32
  %4727 = sub nsw i32 2129859010, %4726
  %4728 = bitcast i32 %4727 to float
  %4729 = fmul fast float %4728, %4724
  %4730 = fmul fast float %4729, %4729
  %4731 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4716)  ; FMax(a,b)
  %4732 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4723)  ; FMax(a,b)
  %4733 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4730)  ; FMax(a,b)
  %4734 = fsub fast float 1.000000e+00, %4619
  %4735 = fadd fast float %4734, %4635
  %4736 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4737 = fsub fast float 1.000000e+00, %4599
  %4738 = fmul fast float %4677, %4737
  %4739 = fmul fast float %4680, %4680
  %4740 = fmul fast float %4739, %4738
  %4741 = fmul fast float %4740, %4682
  %4742 = fmul fast float %4737, 0xBFE99999A0000000
  %4743 = fmul fast float %4742, %4628
  %4744 = fmul fast float %4743, %4639
  %4745 = fadd fast float %4744, 1.000000e+00
  %4746 = fadd fast float %4436, -1.000000e+00
  %4747 = fmul fast float %4745, %4746
  %4748 = fadd fast float %4747, 1.000000e+00
  %4749 = fsub fast float %4731, %4433
  %4750 = fsub fast float %4732, %4434
  %4751 = fsub fast float %4733, %4435
  %4752 = fmul fast float %4741, %4749
  %4753 = fmul fast float %4741, %4750
  %4754 = fmul fast float %4741, %4751
  %4755 = fadd fast float %4752, %4433
  %4756 = fadd fast float %4753, %4434
  %4757 = fadd fast float %4754, %4435
  %4758 = fsub fast float %79, %4394
  %4759 = fsub fast float %80, %4395
  %4760 = fsub fast float %81, %4396
  %4761 = fmul fast float %4741, %4758
  %4762 = fmul fast float %4741, %4759
  %4763 = fmul fast float %4741, %4760
  %4764 = fadd fast float %4761, %4394
  %4765 = fadd fast float %4762, %4395
  %4766 = fadd fast float %4763, %4396
  %4767 = fmul fast float %4741, %4736
  %4768 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4769 = fsub fast float 1.000000e+00, %4768
  %4770 = fmul fast float %4767, %4769
  %4771 = fadd fast float %4770, %4768
  %4772 = fsub fast float 1.000000e+00, %4409
  %4773 = fmul fast float %4741, %4772
  %4774 = fadd fast float %4773, %4409
  %4775 = call float @dx.op.dot3.f32(i32 55, float %4764, float %4765, float %4766, float %4764, float %4765, float %4766)  ; Dot3(ax,ay,az,bx,by,bz)
  %4776 = call float @dx.op.unary.f32(i32 25, float %4775)  ; Rsqrt(value)
  %4777 = fmul fast float %4764, %4776
  %4778 = fmul fast float %4765, %4776
  %4779 = fmul fast float %4766, %4776
  br label %4780

; <label>:4780                                    ; preds = %4612, %4605
  %4781 = phi float [ %4611, %4605 ], [ %4618, %4612 ]
  %4782 = phi float [ %4610, %4605 ], [ %4616, %4612 ]
  %4783 = phi float [ %4609, %4605 ], [ %4614, %4612 ]
  %4784 = phi float [ %4608, %4605 ], [ %4617, %4612 ]
  %4785 = phi float [ %4607, %4605 ], [ %4615, %4612 ]
  %4786 = phi float [ %4606, %4605 ], [ %4613, %4612 ]
  %4787 = phi float [ %4433, %4605 ], [ %4755, %4612 ]
  %4788 = phi float [ %4434, %4605 ], [ %4756, %4612 ]
  %4789 = phi float [ %4435, %4605 ], [ %4757, %4612 ]
  %4790 = phi float [ %4514, %4605 ], [ %4664, %4612 ]
  %4791 = phi float [ %4515, %4605 ], [ %4665, %4612 ]
  %4792 = phi float [ %4516, %4605 ], [ %4666, %4612 ]
  %4793 = phi float [ %4394, %4605 ], [ %4777, %4612 ]
  %4794 = phi float [ %4395, %4605 ], [ %4778, %4612 ]
  %4795 = phi float [ %4396, %4605 ], [ %4779, %4612 ]
  %4796 = phi float [ %4436, %4605 ], [ %4771, %4612 ]
  %4797 = phi float [ %4409, %4605 ], [ %4774, %4612 ]
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 2
  %4800 = extractvalue %dx.types.CBufRet.f32 %4798, 3
  %4801 = fmul fast float %4799, %72
  %4802 = fmul fast float %4800, %73
  %4803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4804 = extractvalue %dx.types.CBufRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.CBufRet.f32 %4803, 1
  %4806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %28, float %4801, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4807 = extractvalue %dx.types.ResRet.f32 %4806, 0
  %4808 = fmul fast float %4807, %4805
  %4809 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4810 = fadd fast float %4809, -1.000000e+00
  %4811 = fmul fast float %4810, %4804
  %4812 = fadd fast float %4811, 1.000000e+00
  %4813 = select i1 %168, float 0.000000e+00, float %4789
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4793, float %4794, float %4795, float %4783, float %4782, float %4781)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4816 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4785, float %4784, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4817 = fmul fast float %4816, 2.000000e+00
  %4818 = fmul fast float %4817, %4793
  %4819 = fmul fast float %4817, %4794
  %4820 = fmul fast float %4817, %4795
  %4821 = fsub fast float %4786, %4818
  %4822 = fsub fast float %4785, %4819
  %4823 = fsub fast float %4784, %4820
  %4824 = call float @dx.op.binary.f32(i32 36, float %4797, float %4812)  ; FMin(a,b)
  %4825 = fsub fast float 1.000000e+00, %4824
  %4826 = bitcast float %4825 to i32
  %4827 = ashr i32 %4826, 1
  %4828 = add nsw i32 %4827, 532487669
  %4829 = bitcast i32 %4828 to float
  %4830 = fsub fast float 1.000000e+00, %4796
  %4831 = call float @dx.op.binary.f32(i32 35, float %4830, float 0x3F847AE140000000)  ; FMax(a,b)
  %4832 = fmul fast float %4831, %4831
  %4833 = fmul fast float %4832, %4832
  %4834 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %4829, float %4833, float %4834, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4836 = extractvalue %dx.types.ResRet.f32 %4835, 0
  %4837 = fsub fast float 1.000000e+00, %4797
  %4838 = bitcast float %4837 to i32
  %4839 = sub nsw i32 2129859010, %4838
  %4840 = bitcast i32 %4839 to float
  %4841 = call float @dx.op.dot3.f32(i32 55, float %49, float %45, float %41, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4842 = fmul fast float %4841, 0x3FD20DD760000000
  %4843 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %49)  ; FMax(a,b)
  %4844 = call float @dx.op.dot3.f32(i32 55, float %50, float %51, float %52, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %4845 = fcmp fast oeq float %4844, 0.000000e+00
  %4846 = fcmp fast oeq float %4843, 0.000000e+00
  %4847 = or i1 %4846, %4845
  br i1 %4847, label %4877, label %4848

; <label>:4848                                    ; preds = %4780
  %4849 = fsub fast float -0.000000e+00, %52
  %4850 = fsub fast float -0.000000e+00, %50
  %4851 = call float @dx.op.unary.f32(i32 24, float %4844)  ; Sqrt(value)
  %4852 = fdiv fast float %4851, %4843
  %4853 = fcmp fast ogt float %4852, 0x3FFB6F8900000000
  %4854 = select i1 %4853, float 0x3FFB6F8900000000, float %4852
  %4855 = fmul fast float %4854, 0x3FE8A23460000000
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = call float @dx.op.binary.f32(i32 35, float %4854, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4858 = fmul fast float %4856, %4843
  %4859 = fmul fast float %4857, 0x3FF279A740000000
  %4860 = fadd fast float %4859, -1.000000e+00
  %4861 = call float @dx.op.dot3.f32(i32 55, float %4849, float %4850, float %51, float %4849, float %4850, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4862 = call float @dx.op.unary.f32(i32 25, float %4861)  ; Rsqrt(value)
  %4863 = fmul fast float %4862, %4849
  %4864 = fmul fast float %4862, %4850
  %4865 = fmul fast float %4862, %51
  %4866 = fmul fast float %4860, %4860
  %4867 = fsub fast float 1.000000e+00, %4866
  %4868 = fmul fast float %4857, 0x40005F8BE0000000
  %4869 = fsub fast float 0x400C5BF8A0000000, %4868
  %4870 = fdiv fast float %4858, %4869
  %4871 = fmul fast float %4870, 0x3FEE31C3C0000000
  %4872 = fmul fast float %4871, %4867
  %4873 = fmul fast float %4857, 0x3FDACB7480000000
  %4874 = fadd fast float %4873, 0xBFD7347680000000
  %4875 = fmul fast float %4874, %4870
  %4876 = fmul fast float %4875, %4867
  br label %4877

; <label>:4877                                    ; preds = %4848, %4780
  %4878 = phi float [ %4863, %4848 ], [ 0.000000e+00, %4780 ]
  %4879 = phi float [ %4864, %4848 ], [ 0.000000e+00, %4780 ]
  %4880 = phi float [ %4865, %4848 ], [ 0.000000e+00, %4780 ]
  %4881 = phi float [ %4872, %4848 ], [ 0.000000e+00, %4780 ]
  %4882 = phi float [ %4876, %4848 ], [ 0.000000e+00, %4780 ]
  %4883 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4879, float %4880, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4884 = fmul fast float %4883, 0x3FDF454380000000
  %4885 = fmul fast float %4883, %4883
  %4886 = fmul fast float %4885, 0x3FEE471020000000
  %4887 = fadd fast float %4886, 0xBFD42F6020000000
  %4888 = fmul fast float %4843, 0x3FD20DD760000000
  %4889 = fmul fast float %4887, %4882
  %4890 = fadd fast float %4889, %4888
  %4891 = fmul fast float %4884, %4881
  %4892 = fadd fast float %4890, %4891
  %4893 = fsub fast float %4890, %4891
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4879, float %4880, float %4821, float %4822, float %4823)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = fmul fast float %4894, 0x3FDF454380000000
  %4896 = fmul fast float %4894, %4894
  %4897 = fmul fast float %4896, 0x3FEE471020000000
  %4898 = fadd fast float %4897, 0xBFD42F6020000000
  %4899 = call float @dx.op.dot3.f32(i32 55, float %4843, float %4881, float %4882, float 0x3FD20DD760000000, float %4895, float %4898)  ; Dot3(ax,ay,az,bx,by,bz)
  %4900 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %45)  ; FMax(a,b)
  %4901 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %4902 = fcmp fast oeq float %4901, 0.000000e+00
  %4903 = fcmp fast oeq float %4900, 0.000000e+00
  %4904 = or i1 %4903, %4902
  br i1 %4904, label %4934, label %4905

; <label>:4905                                    ; preds = %4877
  %4906 = fsub fast float -0.000000e+00, %48
  %4907 = fsub fast float -0.000000e+00, %46
  %4908 = call float @dx.op.unary.f32(i32 24, float %4901)  ; Sqrt(value)
  %4909 = fdiv fast float %4908, %4900
  %4910 = fcmp fast ogt float %4909, 0x3FFB6F8900000000
  %4911 = select i1 %4910, float 0x3FFB6F8900000000, float %4909
  %4912 = fmul fast float %4911, 0x3FE8A23460000000
  %4913 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4914 = call float @dx.op.binary.f32(i32 35, float %4911, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4915 = fmul fast float %4913, %4900
  %4916 = fmul fast float %4914, 0x3FF279A740000000
  %4917 = fadd fast float %4916, -1.000000e+00
  %4918 = call float @dx.op.dot3.f32(i32 55, float %4906, float %4907, float %47, float %4906, float %4907, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4919 = call float @dx.op.unary.f32(i32 25, float %4918)  ; Rsqrt(value)
  %4920 = fmul fast float %4919, %4906
  %4921 = fmul fast float %4919, %4907
  %4922 = fmul fast float %4919, %47
  %4923 = fmul fast float %4917, %4917
  %4924 = fsub fast float 1.000000e+00, %4923
  %4925 = fmul fast float %4914, 0x40005F8BE0000000
  %4926 = fsub fast float 0x400C5BF8A0000000, %4925
  %4927 = fdiv fast float %4915, %4926
  %4928 = fmul fast float %4927, 0x3FEE31C3C0000000
  %4929 = fmul fast float %4928, %4924
  %4930 = fmul fast float %4914, 0x3FDACB7480000000
  %4931 = fadd fast float %4930, 0xBFD7347680000000
  %4932 = fmul fast float %4931, %4927
  %4933 = fmul fast float %4932, %4924
  br label %4934

; <label>:4934                                    ; preds = %4905, %4877
  %4935 = phi float [ %4920, %4905 ], [ 0.000000e+00, %4877 ]
  %4936 = phi float [ %4921, %4905 ], [ 0.000000e+00, %4877 ]
  %4937 = phi float [ %4922, %4905 ], [ 0.000000e+00, %4877 ]
  %4938 = phi float [ %4929, %4905 ], [ 0.000000e+00, %4877 ]
  %4939 = phi float [ %4933, %4905 ], [ 0.000000e+00, %4877 ]
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4935, float %4936, float %4937, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = fmul fast float %4940, 0x3FDF454380000000
  %4942 = fmul fast float %4940, %4940
  %4943 = fmul fast float %4942, 0x3FEE471020000000
  %4944 = fadd fast float %4943, 0xBFD42F6020000000
  %4945 = fmul fast float %4900, 0x3FD20DD760000000
  %4946 = fmul fast float %4944, %4939
  %4947 = fadd fast float %4946, %4945
  %4948 = fmul fast float %4941, %4938
  %4949 = fadd fast float %4947, %4948
  %4950 = fsub fast float %4947, %4948
  %4951 = call float @dx.op.dot3.f32(i32 55, float %4935, float %4936, float %4937, float %4821, float %4822, float %4823)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = fmul fast float %4951, 0x3FDF454380000000
  %4953 = fmul fast float %4951, %4951
  %4954 = fmul fast float %4953, 0x3FEE471020000000
  %4955 = fadd fast float %4954, 0xBFD42F6020000000
  %4956 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4938, float %4939, float 0x3FD20DD760000000, float %4952, float %4955)  ; Dot3(ax,ay,az,bx,by,bz)
  %4957 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %41)  ; FMax(a,b)
  %4958 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = fcmp fast oeq float %4958, 0.000000e+00
  %4960 = fcmp fast oeq float %4957, 0.000000e+00
  %4961 = or i1 %4960, %4959
  br i1 %4961, label %4991, label %4962

; <label>:4962                                    ; preds = %4934
  %4963 = fsub fast float -0.000000e+00, %44
  %4964 = fsub fast float -0.000000e+00, %42
  %4965 = call float @dx.op.unary.f32(i32 24, float %4958)  ; Sqrt(value)
  %4966 = fdiv fast float %4965, %4957
  %4967 = fcmp fast ogt float %4966, 0x3FFB6F8900000000
  %4968 = select i1 %4967, float 0x3FFB6F8900000000, float %4966
  %4969 = fmul fast float %4968, 0x3FE8A23460000000
  %4970 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4971 = call float @dx.op.binary.f32(i32 35, float %4968, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4972 = fmul fast float %4970, %4957
  %4973 = fmul fast float %4971, 0x3FF279A740000000
  %4974 = fadd fast float %4973, -1.000000e+00
  %4975 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %43, float %4963, float %4964, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %4976 = call float @dx.op.unary.f32(i32 25, float %4975)  ; Rsqrt(value)
  %4977 = fmul fast float %4976, %4963
  %4978 = fmul fast float %4976, %4964
  %4979 = fmul fast float %4976, %43
  %4980 = fmul fast float %4974, %4974
  %4981 = fsub fast float 1.000000e+00, %4980
  %4982 = fmul fast float %4971, 0x40005F8BE0000000
  %4983 = fsub fast float 0x400C5BF8A0000000, %4982
  %4984 = fdiv fast float %4972, %4983
  %4985 = fmul fast float %4984, 0x3FEE31C3C0000000
  %4986 = fmul fast float %4985, %4981
  %4987 = fmul fast float %4971, 0x3FDACB7480000000
  %4988 = fadd fast float %4987, 0xBFD7347680000000
  %4989 = fmul fast float %4988, %4984
  %4990 = fmul fast float %4989, %4981
  br label %4991

; <label>:4991                                    ; preds = %4962, %4934
  %4992 = phi float [ %4977, %4962 ], [ 0.000000e+00, %4934 ]
  %4993 = phi float [ %4978, %4962 ], [ 0.000000e+00, %4934 ]
  %4994 = phi float [ %4979, %4962 ], [ 0.000000e+00, %4934 ]
  %4995 = phi float [ %4986, %4962 ], [ 0.000000e+00, %4934 ]
  %4996 = phi float [ %4990, %4962 ], [ 0.000000e+00, %4934 ]
  %4997 = call float @dx.op.dot3.f32(i32 55, float %4992, float %4993, float %4994, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4998 = fmul fast float %4997, 0x3FDF454380000000
  %4999 = fmul fast float %4997, %4997
  %5000 = fmul fast float %4999, 0x3FEE471020000000
  %5001 = fadd fast float %5000, 0xBFD42F6020000000
  %5002 = fmul fast float %4957, 0x3FD20DD760000000
  %5003 = fmul fast float %5001, %4996
  %5004 = fadd fast float %5003, %5002
  %5005 = fmul fast float %4998, %4995
  %5006 = fadd fast float %5004, %5005
  %5007 = fsub fast float %5004, %5005
  %5008 = call float @dx.op.dot3.f32(i32 55, float %4992, float %4993, float %4994, float %4821, float %4822, float %4823)  ; Dot3(ax,ay,az,bx,by,bz)
  %5009 = fmul fast float %5008, 0x3FDF454380000000
  %5010 = fmul fast float %5008, %5008
  %5011 = fmul fast float %5010, 0x3FEE471020000000
  %5012 = fadd fast float %5011, 0xBFD42F6020000000
  %5013 = call float @dx.op.dot3.f32(i32 55, float %4957, float %4995, float %4996, float 0x3FD20DD760000000, float %5009, float %5012)  ; Dot3(ax,ay,az,bx,by,bz)
  %5014 = call float @dx.op.binary.f32(i32 35, float %4892, float 0.000000e+00)  ; FMax(a,b)
  %5015 = call float @dx.op.binary.f32(i32 35, float %4949, float 0.000000e+00)  ; FMax(a,b)
  %5016 = call float @dx.op.binary.f32(i32 35, float %5006, float 0.000000e+00)  ; FMax(a,b)
  %5017 = call float @dx.op.binary.f32(i32 35, float %4893, float 0.000000e+00)  ; FMax(a,b)
  %5018 = call float @dx.op.binary.f32(i32 35, float %4950, float 0.000000e+00)  ; FMax(a,b)
  %5019 = call float @dx.op.binary.f32(i32 35, float %5007, float 0.000000e+00)  ; FMax(a,b)
  %5020 = call float @dx.op.binary.f32(i32 35, float %4899, float 0.000000e+00)  ; FMax(a,b)
  %5021 = call float @dx.op.binary.f32(i32 35, float %4956, float 0.000000e+00)  ; FMax(a,b)
  %5022 = call float @dx.op.binary.f32(i32 35, float %5013, float 0.000000e+00)  ; FMax(a,b)
  %5023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5024 = extractvalue %dx.types.CBufRet.f32 %5023, 0
  %5025 = call float @dx.op.binary.f32(i32 36, float %4790, float %5024)  ; FMin(a,b)
  %5026 = fmul fast float %5025, %4825
  %5027 = fsub fast float 1.000000e+00, %5026
  %5028 = bitcast float %5027 to i32
  %5029 = sub nsw i32 2129859010, %5028
  %5030 = bitcast i32 %5029 to float
  %5031 = call float @dx.op.binary.f32(i32 36, float %4791, float %5024)  ; FMin(a,b)
  %5032 = fmul fast float %5031, %4825
  %5033 = fsub fast float 1.000000e+00, %5032
  %5034 = bitcast float %5033 to i32
  %5035 = sub nsw i32 2129859010, %5034
  %5036 = bitcast i32 %5035 to float
  %5037 = call float @dx.op.binary.f32(i32 36, float %4792, float %5024)  ; FMin(a,b)
  %5038 = fmul fast float %5037, %4825
  %5039 = fsub fast float 1.000000e+00, %5038
  %5040 = bitcast float %5039 to i32
  %5041 = sub nsw i32 2129859010, %5040
  %5042 = bitcast i32 %5041 to float
  %5043 = fmul fast float %5014, %4824
  %5044 = fmul fast float %5043, %5030
  %5045 = fmul fast float %5015, %4824
  %5046 = fmul fast float %5045, %5036
  %5047 = fmul fast float %5016, %4824
  %5048 = fmul fast float %5047, %5042
  %5049 = call float @dx.op.binary.f32(i32 36, float %4787, float %5024)  ; FMin(a,b)
  %5050 = fmul fast float %5049, %4825
  %5051 = fsub fast float 1.000000e+00, %5050
  %5052 = bitcast float %5051 to i32
  %5053 = sub nsw i32 2129859010, %5052
  %5054 = bitcast i32 %5053 to float
  %5055 = call float @dx.op.binary.f32(i32 36, float %4788, float %5024)  ; FMin(a,b)
  %5056 = fmul fast float %5055, %4825
  %5057 = fsub fast float 1.000000e+00, %5056
  %5058 = bitcast float %5057 to i32
  %5059 = sub nsw i32 2129859010, %5058
  %5060 = bitcast i32 %5059 to float
  %5061 = call float @dx.op.binary.f32(i32 36, float %4813, float %5024)  ; FMin(a,b)
  %5062 = fmul fast float %5061, %4825
  %5063 = fsub fast float 1.000000e+00, %5062
  %5064 = bitcast float %5063 to i32
  %5065 = sub nsw i32 2129859010, %5064
  %5066 = bitcast i32 %5065 to float
  %5067 = fmul fast float %5020, %4824
  %5068 = fmul fast float %5067, %5054
  %5069 = fmul fast float %5021, %4824
  %5070 = fmul fast float %5069, %5060
  %5071 = fmul fast float %5022, %4824
  %5072 = fmul fast float %5071, %5066
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5046, float %5048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = select i1 %168, float 0.000000e+00, float %5044
  %5075 = select i1 %168, float %5073, float %5046
  %5076 = select i1 %168, float 0.000000e+00, float %5048
  %5077 = call float @dx.op.dot3.f32(i32 55, float %5017, float %5018, float %5019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = select i1 %168, float 0.000000e+00, float %5017
  %5079 = select i1 %168, float %5077, float %5018
  %5080 = select i1 %168, float 0.000000e+00, float %5019
  %5081 = call float @dx.op.dot3.f32(i32 55, float %5068, float %5070, float %5072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5082 = select i1 %168, float 0.000000e+00, float %5068
  %5083 = select i1 %168, float %5081, float %5070
  %5084 = select i1 %168, float 0.000000e+00, float %5072
  %5085 = fmul fast float %4815, 9.843750e-01
  %5086 = fmul fast float %4796, 9.843750e-01
  %5087 = fadd fast float %5085, 7.812500e-03
  %5088 = fadd fast float %5086, 7.812500e-03
  %5089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5087, float %5088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5090 = extractvalue %dx.types.ResRet.f32 %5089, 2
  %5091 = extractvalue %dx.types.ResRet.f32 %5089, 3
  %5092 = fmul fast float %5090, %4787
  %5093 = fmul fast float %5090, %4788
  %5094 = fmul fast float %5090, %4813
  %5095 = fadd fast float %5092, %5091
  %5096 = fadd fast float %5093, %5091
  %5097 = fadd fast float %5094, %5091
  %5098 = fcmp fast ogt float %4410, 0.000000e+00
  br i1 %5098, label %5099, label %5125

; <label>:5099                                    ; preds = %4991
  %5100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4410, float %4815, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5101 = extractvalue %dx.types.ResRet.f32 %5100, 0
  %5102 = extractvalue %dx.types.ResRet.f32 %5100, 1
  %5103 = extractvalue %dx.types.ResRet.f32 %5100, 2
  %5104 = fadd fast float %5101, -5.000000e-01
  %5105 = fadd fast float %5102, -5.000000e-01
  %5106 = fadd fast float %5103, -5.000000e-01
  %5107 = fsub fast float 1.000000e+00, %4787
  %5108 = fsub fast float 1.000000e+00, %4788
  %5109 = fsub fast float 1.000000e+00, %4813
  %5110 = fmul fast float %4787, 4.000000e+00
  %5111 = fmul fast float %5110, %5107
  %5112 = fmul fast float %5111, %5104
  %5113 = fmul fast float %4788, 4.000000e+00
  %5114 = fmul fast float %5113, %5108
  %5115 = fmul fast float %5114, %5105
  %5116 = fmul fast float %4813, 4.000000e+00
  %5117 = fmul fast float %5116, %5109
  %5118 = fmul fast float %5117, %5106
  %5119 = fadd fast float %5112, %5095
  %5120 = fadd fast float %5115, %5096
  %5121 = fadd fast float %5118, %5097
  %5122 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5123 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5124 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  br label %5125

; <label>:5125                                    ; preds = %5099, %4991
  %5126 = phi float [ %5122, %5099 ], [ %5095, %4991 ]
  %5127 = phi float [ %5123, %5099 ], [ %5096, %4991 ]
  %5128 = phi float [ %5124, %5099 ], [ %5097, %4991 ]
  %5129 = call float @dx.op.binary.f32(i32 35, float %5127, float %5128)  ; FMax(a,b)
  %5130 = call float @dx.op.binary.f32(i32 35, float %5126, float %5129)  ; FMax(a,b)
  %5131 = fsub fast float 1.000000e+00, %5130
  %5132 = fmul fast float %5130, %4796
  %5133 = fadd fast float %5132, %4796
  %5134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.f32 %5134, 0
  %5136 = extractvalue %dx.types.CBufRet.f32 %5134, 1
  %5137 = extractvalue %dx.types.CBufRet.f32 %5134, 2
  %5138 = extractvalue %dx.types.CBufRet.f32 %5134, 3
  %5139 = fmul fast float %5133, %5135
  %5140 = fadd fast float %5139, %5136
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fmul fast float %5137, %5133
  %5143 = fadd fast float %5142, %5138
  %5144 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5145 = fsub fast float 1.000000e+00, %4836
  %5146 = fadd fast float %5145, %5144
  %5147 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5148 = fcmp fast olt float %5147, 1.000000e+00
  br i1 %5148, label %5149, label %5967

; <label>:5149                                    ; preds = %5125
  %5150 = fcmp fast olt float %5141, 1.000000e+00
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = fcmp fast ogt float %5152, 0.000000e+00
  %5154 = or i1 %5150, %5153
  %5155 = or i1 %5150, %5153
  %5156 = xor i1 %5155, true
  %5157 = zext i1 %5156 to i32
  br i1 %5154, label %5158, label %5401

; <label>:5158                                    ; preds = %5149
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 0
  %5161 = extractvalue %dx.types.CBufRet.f32 %5159, 1
  %5162 = extractvalue %dx.types.CBufRet.f32 %5159, 2
  %5163 = extractvalue %dx.types.CBufRet.f32 %5159, 3
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.CBufRet.f32 %5164, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5164, 2
  %5168 = extractvalue %dx.types.CBufRet.f32 %5164, 3
  %5169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5170 = extractvalue %dx.types.CBufRet.f32 %5169, 0
  %5171 = extractvalue %dx.types.CBufRet.f32 %5169, 1
  %5172 = extractvalue %dx.types.CBufRet.f32 %5169, 2
  %5173 = extractvalue %dx.types.CBufRet.f32 %5169, 3
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.CBufRet.f32 %5174, 1
  %5177 = extractvalue %dx.types.CBufRet.f32 %5174, 2
  %5178 = extractvalue %dx.types.CBufRet.f32 %5174, 3
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 0
  %5181 = extractvalue %dx.types.CBufRet.f32 %5179, 1
  %5182 = extractvalue %dx.types.CBufRet.f32 %5179, 2
  %5183 = extractvalue %dx.types.CBufRet.f32 %5179, 3
  %5184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.f32 %5184, 0
  %5186 = extractvalue %dx.types.CBufRet.f32 %5184, 1
  %5187 = extractvalue %dx.types.CBufRet.f32 %5184, 2
  %5188 = extractvalue %dx.types.CBufRet.f32 %5184, 3
  %5189 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5186, float %5187, float %4821, float %4822, float %4823)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = call float @dx.op.dot3.f32(i32 55, float %4793, float %4794, float %4795, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = call float @dx.op.unary.f32(i32 6, float %5190)  ; FAbs(value)
  %5192 = fmul fast float %5191, 8.000000e+00
  %5193 = fadd fast float %5192, -6.000000e+00
  %5194 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5195 = fmul fast float %5189, 8.000000e+00
  %5196 = fmul fast float %5195, %5152
  %5197 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5198 = fcmp fast ogt float %5197, 0.000000e+00
  br i1 %5198, label %5199, label %5376, !dx.controlflow.hints !70

; <label>:5199                                    ; preds = %5158
  %5200 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5201 = extractvalue %dx.types.CBufRet.f32 %5151, 2
  %5202 = fsub fast float %5200, %5201
  %5203 = fmul fast float %5202, %4796
  %5204 = fadd fast float %5203, %5201
  %5205 = fmul fast float %181, 2.000000e+00
  %5206 = fmul fast float %182, 2.000000e+00
  %5207 = fadd fast float %5205, -1.000000e+00
  %5208 = fadd fast float %5206, -1.000000e+00
  %5209 = fmul fast float %5204, %5207
  %5210 = fmul fast float %5204, %5208
  %5211 = fadd fast float %5209, %72
  %5212 = fadd fast float %5210, %73
  %5213 = fmul fast float %5211, %4799
  %5214 = fmul fast float %5212, %4800
  %5215 = fadd fast float %4796, 0xBFE3333340000000
  %5216 = fmul fast float %5215, 0x4004000020000000
  %5217 = fsub fast float 1.000000e+00, %5216
  %5218 = call float @dx.op.unary.f32(i32 7, float %5217)  ; Saturate(value)
  %5219 = fmul fast float %5218, 3.000000e+00
  %5220 = fadd fast float %5219, %181
  %5221 = call float @dx.op.unary.f32(i32 27, float %5220)  ; Round_ni(value)
  %5222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %29, float %5213, float %5214, float %5221, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = fcmp fast une float %5223, 0xFFF0000000000000
  %5225 = fcmp fast une float %5223, 0x7FF0000000000000
  %5226 = and i1 %5224, %5225
  %5227 = fcmp fast olt float %5223, 0.000000e+00
  %5228 = call float @dx.op.unary.f32(i32 6, float %5223)  ; FAbs(value)
  %5229 = fsub fast float 1.000000e+00, %5228
  %5230 = select i1 %5226, float 1.000000e+00, float 0.000000e+00
  %5231 = fmul fast float %5230, %5197
  %5232 = fcmp fast ogt float %5231, 0.000000e+00
  br i1 %5232, label %5233, label %5376, !dx.controlflow.hints !71

; <label>:5233                                    ; preds = %5199
  %5234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5235 = extractvalue %dx.types.CBufRet.f32 %5234, 0
  %5236 = extractvalue %dx.types.CBufRet.f32 %5234, 1
  %5237 = extractvalue %dx.types.CBufRet.f32 %5234, 2
  %5238 = select i1 %5227, float 0.000000e+00, float %5235
  %5239 = select i1 %5227, float 0.000000e+00, float %5236
  %5240 = select i1 %5227, float 0.000000e+00, float %5237
  %5241 = select i1 %5227, float %5160, float %5175
  %5242 = select i1 %5227, float %5165, float %5180
  %5243 = select i1 %5227, float %5170, float %5185
  %5244 = select i1 %5227, float %5161, float %5176
  %5245 = select i1 %5227, float %5166, float %5181
  %5246 = select i1 %5227, float %5171, float %5186
  %5247 = select i1 %5227, float %5162, float %5177
  %5248 = select i1 %5227, float %5167, float %5182
  %5249 = select i1 %5227, float %5172, float %5187
  %5250 = select i1 %5227, float %5163, float %5178
  %5251 = select i1 %5227, float %5168, float %5183
  %5252 = select i1 %5227, float %5173, float %5188
  %5253 = fadd fast float %5238, %127
  %5254 = fadd fast float %5239, %128
  %5255 = fadd fast float %5240, %129
  %5256 = fmul fast float %5253, %5241
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %5254, float %5244, float %5256)  ; FMad(a,b,c)
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %5255, float %5247, float %5257)  ; FMad(a,b,c)
  %5259 = fadd fast float %5258, %5250
  %5260 = fmul fast float %5253, %5242
  %5261 = call float @dx.op.tertiary.f32(i32 46, float %5254, float %5245, float %5260)  ; FMad(a,b,c)
  %5262 = call float @dx.op.tertiary.f32(i32 46, float %5255, float %5248, float %5261)  ; FMad(a,b,c)
  %5263 = fadd fast float %5262, %5251
  %5264 = fmul fast float %5253, %5243
  %5265 = call float @dx.op.tertiary.f32(i32 46, float %5254, float %5246, float %5264)  ; FMad(a,b,c)
  %5266 = call float @dx.op.tertiary.f32(i32 46, float %5255, float %5249, float %5265)  ; FMad(a,b,c)
  %5267 = fadd fast float %5266, %5252
  %5268 = fdiv fast float 1.000000e+00, %5267
  %5269 = fmul fast float %5268, %5259
  %5270 = fmul fast float %5268, %5263
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.CBufRet.f32 %5271, 1
  %5274 = fmul fast float %5269, %5272
  %5275 = fmul fast float %5270, %5273
  %5276 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5277 = extractvalue %dx.types.CBufRet.f32 %5271, 3
  %5278 = fadd fast float %5274, %5276
  %5279 = fadd fast float %5275, %5277
  %5280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.f32 %5280, 3
  %5282 = fmul fast float %5281, %4821
  %5283 = fmul fast float %5281, %4822
  %5284 = fmul fast float %5281, %4823
  %5285 = fadd fast float %5282, %5253
  %5286 = fadd fast float %5283, %5254
  %5287 = fadd fast float %5284, %5255
  %5288 = fmul fast float %5285, %5241
  %5289 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5244, float %5288)  ; FMad(a,b,c)
  %5290 = call float @dx.op.tertiary.f32(i32 46, float %5287, float %5247, float %5289)  ; FMad(a,b,c)
  %5291 = fadd fast float %5290, %5250
  %5292 = fmul fast float %5285, %5242
  %5293 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5245, float %5292)  ; FMad(a,b,c)
  %5294 = call float @dx.op.tertiary.f32(i32 46, float %5287, float %5248, float %5293)  ; FMad(a,b,c)
  %5295 = fadd fast float %5294, %5251
  %5296 = fmul fast float %5285, %5243
  %5297 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5246, float %5296)  ; FMad(a,b,c)
  %5298 = call float @dx.op.tertiary.f32(i32 46, float %5287, float %5249, float %5297)  ; FMad(a,b,c)
  %5299 = fadd fast float %5298, %5252
  %5300 = fdiv fast float 1.000000e+00, %5299
  %5301 = fmul fast float %5300, %5291
  %5302 = fmul fast float %5300, %5295
  %5303 = fmul fast float %5278, 2.000000e+00
  %5304 = fadd fast float %5303, -1.000000e+00
  %5305 = call float @dx.op.unary.f32(i32 6, float %5304)  ; FAbs(value)
  %5306 = fmul fast float %5305, 5.000000e+00
  %5307 = fadd fast float %5306, -4.000000e+00
  %5308 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5309 = fmul fast float %5308, %5194
  %5310 = fsub fast float %5269, %5301
  %5311 = fmul fast float %5272, %5310
  %5312 = fmul fast float %5309, %5311
  %5313 = fsub fast float %5301, %5269
  %5314 = fmul fast float %5272, %5313
  %5315 = fadd fast float %5314, %5312
  %5316 = fsub fast float %5302, %5270
  %5317 = fmul fast float %5273, %5316
  %5318 = fmul fast float %5315, %5229
  %5319 = fmul fast float %5317, %5229
  %5320 = fadd fast float %5318, %5278
  %5321 = fadd fast float %5319, %5279
  %5322 = fsub fast float %5300, %5268
  %5323 = fmul fast float %5322, %5229
  %5324 = fadd fast float %5323, %5268
  %5325 = fdiv fast float 1.000000e+00, %5324
  %5326 = fadd fast float %4796, -1.000000e+00
  %5327 = fsub fast float %5325, %5267
  %5328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.f32 %5328, 2
  %5330 = fmul fast float %5329, %5325
  %5331 = fdiv fast float 1.600000e+02, %5330
  %5332 = fmul fast float %5326, %5326
  %5333 = fmul fast float %5332, 0xBFB5B17960000000
  %5334 = fmul fast float %5333, %5327
  %5335 = fmul fast float %5334, %5331
  %5336 = call float @dx.op.unary.f32(i32 21, float %5335)  ; Exp(value)
  %5337 = fmul fast float %5336, 0x3FF04B2960000000
  %5338 = fsub fast float 0x3FF04B2960000000, %5337
  %5339 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5340 = fmul fast float %5339, 4.000000e+00
  %5341 = fadd fast float %181, -5.000000e-01
  %5342 = fadd fast float %182, -5.000000e-01
  %5343 = fmul fast float %5339, 0x3FBEB851E0000000
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fmul fast float %5344, %5341
  %5346 = fmul fast float %5344, %5342
  %5347 = fadd fast float %5320, %5345
  %5348 = fadd fast float %5321, %5346
  %5349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %5347, float %5348, float undef, float undef, i32 0, i32 0, i32 undef, float %5340)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.ResRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.ResRet.f32 %5349, 2
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 2
  %5355 = fmul fast float %5354, %5350
  %5356 = fmul fast float %5354, %5351
  %5357 = fmul fast float %5354, %5352
  %5358 = select i1 %168, float 0.000000e+00, float %5356
  %5359 = select i1 %168, float 0.000000e+00, float %5357
  %5360 = fmul fast float %5347, 2.000000e+00
  %5361 = fmul fast float %5348, 2.000000e+00
  %5362 = fadd fast float %5360, -1.000000e+00
  %5363 = fadd fast float %5361, -1.000000e+00
  %5364 = fmul fast float %5362, %5362
  %5365 = fsub fast float 1.000000e+00, %5364
  %5366 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5367 = fsub fast float 1.000000e+00, %5366
  %5368 = fmul fast float %5367, %5194
  %5369 = fadd fast float %5368, %5366
  %5370 = fmul fast float %5363, %5363
  %5371 = fsub fast float 1.000000e+00, %5370
  %5372 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  %5373 = fmul fast float %5369, %5372
  %5374 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5375 = fmul fast float %5374, %5231
  br label %5376

; <label>:5376                                    ; preds = %5233, %5199, %5158
  %5377 = phi float [ %5355, %5233 ], [ 0.000000e+00, %5199 ], [ 0.000000e+00, %5158 ]
  %5378 = phi float [ %5358, %5233 ], [ 0.000000e+00, %5199 ], [ 0.000000e+00, %5158 ]
  %5379 = phi float [ %5359, %5233 ], [ 0.000000e+00, %5199 ], [ 0.000000e+00, %5158 ]
  %5380 = phi float [ %5375, %5233 ], [ 0.000000e+00, %5199 ], [ 0.000000e+00, %5158 ]
  %5381 = fcmp fast olt float %5380, 1.000000e+00
  %5382 = or i1 %5381, %5156
  %5383 = zext i1 %5382 to i32
  %5384 = fmul fast float %5380, %5141
  %5385 = fsub fast float %5380, %5384
  %5386 = fsub fast float 1.000000e+00, %5147
  %5387 = fmul fast float %5385, %5386
  %5388 = fadd fast float %5387, %5147
  %5389 = fsub fast float %5388, %5385
  %5390 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  %5391 = fmul fast float %5390, %5082
  %5392 = fmul fast float %5390, %5083
  %5393 = fmul fast float %5390, %5084
  %5394 = fsub fast float -0.000000e+00, %5388
  %5395 = fmul fast float %5385, %5377
  %5396 = fmul fast float %5385, %5378
  %5397 = fmul fast float %5385, %5379
  %5398 = fadd fast float %5395, %5391
  %5399 = fadd fast float %5396, %5392
  %5400 = fadd fast float %5397, %5393
  br label %5401

; <label>:5401                                    ; preds = %5376, %5149
  %5402 = phi float [ %5147, %5149 ], [ %5394, %5376 ]
  %5403 = phi float [ %5082, %5149 ], [ %5398, %5376 ]
  %5404 = phi float [ %5083, %5149 ], [ %5399, %5376 ]
  %5405 = phi float [ %5084, %5149 ], [ %5400, %5376 ]
  %5406 = phi i32 [ %5157, %5149 ], [ %5383, %5376 ]
  %5407 = icmp eq i32 %5406, 0
  br i1 %5407, label %5967, label %5408

; <label>:5408                                    ; preds = %5401
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5411 = extractvalue %dx.types.CBufRet.f32 %5409, 3
  %5412 = fmul fast float %5410, %72
  %5413 = fmul fast float %5411, %73
  %5414 = fptoui float %5412 to i32
  %5415 = fptoui float %5413 to i32
  %5416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5416, 0
  %5418 = extractvalue %dx.types.CBufRet.f32 %5416, 2
  %5419 = extractvalue %dx.types.CBufRet.f32 %5416, 3
  %5420 = fadd fast float %67, -4.000000e+00
  %5421 = call float @dx.op.binary.f32(i32 35, float %5420, float 0.000000e+00)  ; FMax(a,b)
  %5422 = fadd fast float %5421, %5417
  %5423 = fmul fast float %5422, %5418
  %5424 = call float @dx.op.unary.f32(i32 23, float %5423)  ; Log(value)
  %5425 = fmul fast float %5424, %5419
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 2
  %5428 = fmul fast float %5425, %5427
  %5429 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.i32 %5430, 1
  %5432 = add i32 %5431, -1
  %5433 = uitofp i32 %5431 to float
  %5434 = fmul fast float %5433, %5429
  %5435 = fptoui float %5434 to i32
  %5436 = call i32 @dx.op.binary.i32(i32 40, i32 %5435, i32 %5432)  ; UMin(a,b)
  %5437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.i32 %5437, 2
  %5439 = extractvalue %dx.types.CBufRet.i32 %5437, 3
  %5440 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5415, i32 %5438, i32 %5414)  ; UMad(a,b,c)
  %5441 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5436, i32 %5439, i32 %5440)  ; UMad(a,b,c)
  %5442 = call float @dx.op.binary.f32(i32 35, float %67, float 0.000000e+00)  ; FMax(a,b)
  %5443 = fptoui float %5442 to i32
  %5444 = lshr i32 %5443, 5
  %5445 = call i32 @dx.op.binary.i32(i32 40, i32 %5444, i32 8191)  ; UMin(a,b)
  %5446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = extractvalue %dx.types.CBufRet.i32 %5446, 2
  %5448 = add nsw i32 %5447, -1
  %5449 = call i32 @dx.op.binary.i32(i32 37, i32 %5448, i32 0)  ; IMax(a,b)
  %5450 = shl i32 %5445, 2
  %5451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %5450, i32 undef)  ; BufferLoad(srv,index,wot)
  %5452 = extractvalue %dx.types.ResRet.i32 %5451, 0
  %5453 = lshr i32 %5452, 16
  %5454 = and i32 %5452, 65535
  %5455 = lshr i32 %5452, 21
  %5456 = lshr i32 %5454, 5
  %5457 = call i32 @dx.op.binary.i32(i32 40, i32 %5456, i32 %5449)  ; UMin(a,b)
  %5458 = icmp ugt i32 %5455, %5457
  br i1 %5458, label %5839, label %5459

; <label>:5459                                    ; preds = %5408
  br label %5460

; <label>:5460                                    ; preds = %5828, %5459
  %5461 = phi float [ %5829, %5828 ], [ 0.000000e+00, %5459 ]
  %5462 = phi float [ %5830, %5828 ], [ 0.000000e+00, %5459 ]
  %5463 = phi float [ %5831, %5828 ], [ 0.000000e+00, %5459 ]
  %5464 = phi float [ %5832, %5828 ], [ 1.000000e+00, %5459 ]
  %5465 = phi i32 [ %5836, %5828 ], [ %5455, %5459 ]
  %5466 = phi float [ %5833, %5828 ], [ 0.000000e+00, %5459 ]
  %5467 = phi float [ %5834, %5828 ], [ 0.000000e+00, %5459 ]
  %5468 = phi float [ %5835, %5828 ], [ 0.000000e+00, %5459 ]
  %5469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.i32 %5469, 2
  %5471 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5441, i32 %5470, i32 %5465)  ; UMad(a,b,c)
  %5472 = shl i32 %5471, 2
  %5473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %5472, i32 undef)  ; BufferLoad(srv,index,wot)
  %5474 = extractvalue %dx.types.ResRet.i32 %5473, 0
  %5475 = shl i32 %5465, 5
  %5476 = sub nsw i32 %5453, %5475
  %5477 = call i32 @dx.op.binary.i32(i32 37, i32 %5476, i32 0)  ; IMax(a,b)
  %5478 = call i32 @dx.op.binary.i32(i32 38, i32 %5477, i32 31)  ; IMin(a,b)
  %5479 = sub nsw i32 1, %5453
  %5480 = add nsw i32 %5479, %5454
  %5481 = call i32 @dx.op.binary.i32(i32 37, i32 %5480, i32 0)  ; IMax(a,b)
  %5482 = call i32 @dx.op.binary.i32(i32 38, i32 %5481, i32 32)  ; IMin(a,b)
  %5483 = and i32 %5482, 31
  %5484 = shl i32 -1, %5483
  %5485 = xor i32 %5484, -1
  %5486 = and i32 %5478, 31
  %5487 = shl i32 %5485, %5486
  %5488 = icmp eq i32 %5482, 32
  %5489 = select i1 %5488, i32 -1, i32 %5487
  %5490 = and i32 %5489, %5474
  %5491 = icmp eq i32 %5490, 0
  br i1 %5491, label %5828, label %5492

; <label>:5492                                    ; preds = %5460
  br label %5493

; <label>:5493                                    ; preds = %5602, %5492
  %5494 = phi float [ %5603, %5602 ], [ %5461, %5492 ]
  %5495 = phi float [ %5604, %5602 ], [ %5462, %5492 ]
  %5496 = phi float [ %5605, %5602 ], [ %5463, %5492 ]
  %5497 = phi float [ %5606, %5602 ], [ %5464, %5492 ]
  %5498 = phi i32 [ %5506, %5602 ], [ %5490, %5492 ]
  %5499 = phi float [ %5607, %5602 ], [ %5466, %5492 ]
  %5500 = phi float [ %5608, %5602 ], [ %5467, %5492 ]
  %5501 = phi float [ %5609, %5602 ], [ %5468, %5492 ]
  %5502 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5498)  ; FirstbitLo(value)
  %5503 = add i32 %5502, %5475
  %5504 = and i32 %5502, 31
  %5505 = shl i32 1, %5504
  %5506 = xor i32 %5505, %5498
  %5507 = mul i32 %5503, 72
  %5508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5507, i32 undef)  ; BufferLoad(srv,index,wot)
  %5509 = extractvalue %dx.types.ResRet.f32 %5508, 0
  %5510 = extractvalue %dx.types.ResRet.f32 %5508, 1
  %5511 = extractvalue %dx.types.ResRet.f32 %5508, 2
  %5512 = add i32 %5507, 12
  %5513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %5512, i32 undef)  ; BufferLoad(srv,index,wot)
  %5514 = extractvalue %dx.types.ResRet.i32 %5513, 0
  %5515 = add i32 %5507, 16
  %5516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5515, i32 undef)  ; BufferLoad(srv,index,wot)
  %5517 = extractvalue %dx.types.ResRet.f32 %5516, 0
  %5518 = extractvalue %dx.types.ResRet.f32 %5516, 1
  %5519 = extractvalue %dx.types.ResRet.f32 %5516, 2
  %5520 = add i32 %5507, 28
  %5521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5520, i32 undef)  ; BufferLoad(srv,index,wot)
  %5522 = extractvalue %dx.types.ResRet.f32 %5521, 0
  %5523 = add i32 %5507, 32
  %5524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5523, i32 undef)  ; BufferLoad(srv,index,wot)
  %5525 = extractvalue %dx.types.ResRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.ResRet.f32 %5524, 1
  %5527 = extractvalue %dx.types.ResRet.f32 %5524, 2
  %5528 = extractvalue %dx.types.ResRet.f32 %5524, 3
  %5529 = add i32 %5507, 48
  %5530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5529, i32 undef)  ; BufferLoad(srv,index,wot)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 1
  %5533 = add i32 %5507, 56
  %5534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5533, i32 undef)  ; BufferLoad(srv,index,wot)
  %5535 = extractvalue %dx.types.ResRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.ResRet.f32 %5534, 1
  %5537 = add i32 %5507, 64
  %5538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5537, i32 undef)  ; BufferLoad(srv,index,wot)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.ResRet.f32 %5538, 1
  %5541 = mul i32 %5503, 60
  %5542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5541, i32 undef)  ; BufferLoad(srv,index,wot)
  %5543 = extractvalue %dx.types.ResRet.f32 %5542, 0
  %5544 = extractvalue %dx.types.ResRet.f32 %5542, 1
  %5545 = extractvalue %dx.types.ResRet.f32 %5542, 2
  %5546 = add i32 %5541, 12
  %5547 = add i32 %5541, 48
  %5548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5547, i32 undef)  ; BufferLoad(srv,index,wot)
  %5549 = extractvalue %dx.types.ResRet.f32 %5548, 0
  %5550 = extractvalue %dx.types.ResRet.f32 %5548, 1
  %5551 = extractvalue %dx.types.ResRet.f32 %5548, 2
  %5552 = and i32 %5514, 32767
  %5553 = bitcast float %5509 to i32
  %5554 = icmp eq i32 %5553, -1
  %5555 = bitcast float %5510 to i32
  %5556 = and i32 %5514, 32768
  %5557 = icmp ne i32 %5556, 0
  %5558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5559 = extractvalue %dx.types.CBufRet.f32 %5558, 0
  %5560 = extractvalue %dx.types.CBufRet.f32 %5558, 1
  %5561 = extractvalue %dx.types.CBufRet.f32 %5558, 2
  %5562 = fsub fast float %5543, %5559
  %5563 = fsub fast float %5544, %5560
  %5564 = fsub fast float %5545, %5561
  %5565 = fsub fast float %127, %5562
  %5566 = fsub fast float %128, %5563
  %5567 = fsub fast float %129, %5564
  %5568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5546, i32 undef)  ; BufferLoad(srv,index,wot)
  %5569 = extractvalue %dx.types.ResRet.f32 %5568, 0
  %5570 = extractvalue %dx.types.ResRet.f32 %5568, 1
  %5571 = extractvalue %dx.types.ResRet.f32 %5568, 2
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %5569, float %5570, float %5571)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = add i32 %5541, 24
  %5574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5573, i32 undef)  ; BufferLoad(srv,index,wot)
  %5575 = extractvalue %dx.types.ResRet.f32 %5574, 0
  %5576 = extractvalue %dx.types.ResRet.f32 %5574, 1
  %5577 = extractvalue %dx.types.ResRet.f32 %5574, 2
  %5578 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %5575, float %5576, float %5577)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = add i32 %5541, 36
  %5580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5579, i32 undef)  ; BufferLoad(srv,index,wot)
  %5581 = extractvalue %dx.types.ResRet.f32 %5580, 0
  %5582 = extractvalue %dx.types.ResRet.f32 %5580, 1
  %5583 = extractvalue %dx.types.ResRet.f32 %5580, 2
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %5581, float %5582, float %5583)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = call float @dx.op.unary.f32(i32 6, float %5572)  ; FAbs(value)
  %5586 = call float @dx.op.unary.f32(i32 6, float %5578)  ; FAbs(value)
  %5587 = call float @dx.op.unary.f32(i32 6, float %5584)  ; FAbs(value)
  %5588 = fsub fast float %5549, %5585
  %5589 = fsub fast float %5550, %5586
  %5590 = fsub fast float %5551, %5587
  %5591 = fmul fast float %5588, %5517
  %5592 = fmul fast float %5589, %5518
  %5593 = fmul fast float %5590, %5519
  %5594 = call float @dx.op.binary.f32(i32 36, float %5592, float %5593)  ; FMin(a,b)
  %5595 = call float @dx.op.binary.f32(i32 36, float %5591, float %5594)  ; FMin(a,b)
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = call float @dx.op.binary.f32(i32 36, float %5497, float %5596)  ; FMin(a,b)
  %5598 = uitofp i1 %5557 to float
  %5599 = fsub fast float 1.000000e+00, %5598
  %5600 = fmul fast float %5597, %5599
  %5601 = fcmp fast ogt float %5600, 0.000000e+00
  br i1 %5601, label %5611, label %5602

; <label>:5602                                    ; preds = %5753, %5493
  %5603 = phi float [ %5817, %5753 ], [ %5494, %5493 ]
  %5604 = phi float [ %5818, %5753 ], [ %5495, %5493 ]
  %5605 = phi float [ %5819, %5753 ], [ %5496, %5493 ]
  %5606 = phi float [ %5826, %5753 ], [ %5497, %5493 ]
  %5607 = phi float [ %5823, %5753 ], [ %5499, %5493 ]
  %5608 = phi float [ %5824, %5753 ], [ %5500, %5493 ]
  %5609 = phi float [ %5825, %5753 ], [ %5501, %5493 ]
  %5610 = icmp eq i32 %5498, %5505
  br i1 %5610, label %5827, label %5493

; <label>:5611                                    ; preds = %5493
  br i1 %5554, label %5669, label %5612

; <label>:5612                                    ; preds = %5611
  %5613 = fsub fast float -0.000000e+00, %5569
  %5614 = fsub fast float -0.000000e+00, %5570
  %5615 = fsub fast float -0.000000e+00, %5571
  %5616 = call float @dx.op.dot3.f32(i32 55, float %4821, float %4822, float %4823, float %5613, float %5614, float %5615)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = fsub fast float -0.000000e+00, %5616
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %5613, float %5614, float %5615)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = fadd fast float %5618, %5532
  %5620 = fadd fast float %5531, %5618
  %5621 = fsub fast float -0.000000e+00, %5620
  %5622 = fcmp ogt float %5616, -0.000000e+00
  %5623 = select i1 %5622, float %5621, float %5619
  %5624 = call float @dx.op.unary.f32(i32 6, float %5617)  ; FAbs(value)
  %5625 = fdiv fast float 1.000000e+00, %5624
  %5626 = fmul fast float %5623, %5625
  %5627 = call float @dx.op.binary.f32(i32 35, float %5626, float 0.000000e+00)  ; FMax(a,b)
  %5628 = fsub fast float -0.000000e+00, %5575
  %5629 = fsub fast float -0.000000e+00, %5576
  %5630 = fsub fast float -0.000000e+00, %5577
  %5631 = call float @dx.op.dot3.f32(i32 55, float %4821, float %4822, float %4823, float %5628, float %5629, float %5630)  ; Dot3(ax,ay,az,bx,by,bz)
  %5632 = fsub fast float -0.000000e+00, %5631
  %5633 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %5628, float %5629, float %5630)  ; Dot3(ax,ay,az,bx,by,bz)
  %5634 = fadd fast float %5633, %5536
  %5635 = fadd fast float %5535, %5633
  %5636 = fsub fast float -0.000000e+00, %5635
  %5637 = fcmp ogt float %5631, -0.000000e+00
  %5638 = select i1 %5637, float %5636, float %5634
  %5639 = call float @dx.op.unary.f32(i32 6, float %5632)  ; FAbs(value)
  %5640 = fdiv fast float 1.000000e+00, %5639
  %5641 = fmul fast float %5638, %5640
  %5642 = call float @dx.op.binary.f32(i32 35, float %5641, float 0.000000e+00)  ; FMax(a,b)
  %5643 = fsub fast float -0.000000e+00, %5581
  %5644 = fsub fast float -0.000000e+00, %5582
  %5645 = fsub fast float -0.000000e+00, %5583
  %5646 = call float @dx.op.dot3.f32(i32 55, float %4821, float %4822, float %4823, float %5643, float %5644, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = fsub fast float -0.000000e+00, %5646
  %5648 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %5643, float %5644, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5649 = fadd fast float %5648, %5540
  %5650 = fadd fast float %5539, %5648
  %5651 = fsub fast float -0.000000e+00, %5650
  %5652 = fcmp ogt float %5646, -0.000000e+00
  %5653 = select i1 %5652, float %5651, float %5649
  %5654 = call float @dx.op.unary.f32(i32 6, float %5647)  ; FAbs(value)
  %5655 = fdiv fast float 1.000000e+00, %5654
  %5656 = fmul fast float %5653, %5655
  %5657 = call float @dx.op.binary.f32(i32 35, float %5656, float 0.000000e+00)  ; FMax(a,b)
  %5658 = call float @dx.op.binary.f32(i32 36, float %5642, float %5657)  ; FMin(a,b)
  %5659 = call float @dx.op.binary.f32(i32 36, float %5627, float %5658)  ; FMin(a,b)
  %5660 = fmul fast float %5659, %4821
  %5661 = fmul fast float %5659, %4822
  %5662 = fmul fast float %5659, %4823
  %5663 = fadd fast float %5660, %127
  %5664 = fadd fast float %5661, %128
  %5665 = fadd fast float %5662, %129
  %5666 = fsub fast float %5663, %5509
  %5667 = fsub fast float %5664, %5510
  %5668 = fsub fast float %5665, %5511
  br label %5676

; <label>:5669                                    ; preds = %5611
  %5670 = fmul fast float %4821, 8.096000e+03
  %5671 = fmul fast float %4822, 8.096000e+03
  %5672 = fmul fast float %4823, 8.096000e+03
  %5673 = fadd fast float %5670, %127
  %5674 = fadd fast float %5671, %128
  %5675 = fadd fast float %5672, %129
  br label %5676

; <label>:5676                                    ; preds = %5669, %5612
  %5677 = phi float [ %4821, %5669 ], [ %5666, %5612 ]
  %5678 = phi float [ %4822, %5669 ], [ %5667, %5612 ]
  %5679 = phi float [ %4823, %5669 ], [ %5668, %5612 ]
  %5680 = phi float [ %5673, %5669 ], [ %5663, %5612 ]
  %5681 = phi float [ %5674, %5669 ], [ %5664, %5612 ]
  %5682 = phi float [ %5675, %5669 ], [ %5665, %5612 ]
  %5683 = fcmp fast olt float %5528, 1.000000e+00
  br i1 %5683, label %5684, label %5715, !dx.controlflow.hints !72

; <label>:5684                                    ; preds = %5676
  %5685 = fmul fast float %5679, %5526
  %5686 = fmul fast float %5678, %5527
  %5687 = fsub fast float %5685, %5686
  %5688 = fmul fast float %5677, %5527
  %5689 = fmul fast float %5679, %5525
  %5690 = fsub fast float %5688, %5689
  %5691 = fmul fast float %5678, %5525
  %5692 = fmul fast float %5677, %5526
  %5693 = fsub fast float %5691, %5692
  %5694 = fmul fast float %5687, 2.000000e+00
  %5695 = fmul fast float %5690, 2.000000e+00
  %5696 = fmul fast float %5693, 2.000000e+00
  %5697 = fmul fast float %5694, %5528
  %5698 = fmul fast float %5695, %5528
  %5699 = fmul fast float %5696, %5528
  %5700 = fmul fast float %5696, %5526
  %5701 = fmul fast float %5695, %5527
  %5702 = fmul fast float %5694, %5527
  %5703 = fmul fast float %5696, %5525
  %5704 = fmul fast float %5695, %5525
  %5705 = fmul fast float %5694, %5526
  %5706 = fadd fast float %5700, %5677
  %5707 = fadd fast float %5706, %5697
  %5708 = fsub fast float %5707, %5701
  %5709 = fsub fast float %5678, %5703
  %5710 = fadd fast float %5709, %5698
  %5711 = fadd fast float %5710, %5702
  %5712 = fadd fast float %5699, %5679
  %5713 = fsub fast float %5712, %5705
  %5714 = fadd fast float %5713, %5704
  br label %5715

; <label>:5715                                    ; preds = %5684, %5676
  %5716 = phi float [ %5708, %5684 ], [ %5677, %5676 ]
  %5717 = phi float [ %5711, %5684 ], [ %5678, %5676 ]
  %5718 = phi float [ %5714, %5684 ], [ %5679, %5676 ]
  br i1 %5554, label %5750, label %5719

; <label>:5719                                    ; preds = %5715
  %5720 = fmul fast float %4796, 0x400187C840000000
  %5721 = fadd fast float %5720, 0xC00EFC2120000000
  %5722 = fmul fast float %5721, %4796
  %5723 = fadd fast float %5722, 0x3FE5D16340000000
  %5724 = fmul fast float %5723, %4796
  %5725 = fadd fast float %5724, 1.000000e+00
  %5726 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5727 = fsub fast float %5680, %127
  %5728 = fsub fast float %5681, %128
  %5729 = fsub fast float %5682, %129
  %5730 = fsub fast float %5680, %5509
  %5731 = fsub fast float %5681, %5510
  %5732 = fsub fast float %5682, %5511
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5727, float %5728, float %5729, float %5727, float %5728, float %5729)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %5732, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = fadd fast float %5734, 0x3EE4F8B580000000
  %5736 = fdiv fast float %5733, %5735
  %5737 = bitcast float %5736 to i32
  %5738 = ashr i32 %5737, 1
  %5739 = add nsw i32 %5738, 532487669
  %5740 = bitcast i32 %5739 to float
  %5741 = fmul fast float %5740, %5726
  %5742 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5743 = fmul fast float %5742, 0x4009981AE0000000
  %5744 = fsub fast float 0x40111BBD80000000, %5743
  %5745 = fmul fast float %5744, %5742
  %5746 = fadd fast float %5745, 0xC0009F6020000000
  %5747 = fmul fast float %5746, %5742
  %5748 = fadd fast float %5747, 1.000000e+00
  %5749 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  br label %5753

; <label>:5750                                    ; preds = %5715
  %5751 = icmp ne i32 %5555, -1
  %5752 = zext i1 %5751 to i32
  br label %5753

; <label>:5753                                    ; preds = %5750, %5719
  %5754 = phi float [ %4796, %5750 ], [ %5749, %5719 ]
  %5755 = phi i32 [ %5752, %5750 ], [ 0, %5719 ]
  %5756 = fmul float %5754, 5.000000e+00
  %5757 = fsub float 5.000000e+00, %5756
  %5758 = icmp ne i32 %5755, 0
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 3
  %5761 = fadd fast float %5760, %5757
  %5762 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5761)  ; FMax(a,b)
  %5763 = call float @dx.op.unary.f32(i32 6, float %5716)  ; FAbs(value)
  %5764 = call float @dx.op.unary.f32(i32 6, float %5717)  ; FAbs(value)
  %5765 = fadd fast float %5764, %5763
  %5766 = call float @dx.op.unary.f32(i32 6, float %5718)  ; FAbs(value)
  %5767 = fadd fast float %5765, %5766
  %5768 = fcmp fast oeq float %5767, 0.000000e+00
  %5769 = fdiv fast float 1.000000e+00, %5767
  %5770 = select i1 %5768, float 1.000000e+00, float %5769
  %5771 = fmul fast float %5770, %5716
  %5772 = fmul fast float %5770, %5717
  %5773 = call float @dx.op.unary.f32(i32 6, float %5772)  ; FAbs(value)
  %5774 = call float @dx.op.unary.f32(i32 6, float %5771)  ; FAbs(value)
  %5775 = fsub fast float 1.000000e+00, %5773
  %5776 = fsub fast float 1.000000e+00, %5774
  %5777 = fcmp fast oge float %5771, 0.000000e+00
  %5778 = fcmp fast oge float %5772, 0.000000e+00
  %5779 = select i1 %5777, float 1.000000e+00, float -1.000000e+00
  %5780 = select i1 %5778, float 1.000000e+00, float -1.000000e+00
  %5781 = fcmp fast ole float %5718, 0.000000e+00
  %5782 = fmul fast float %5779, %5775
  %5783 = fmul fast float %5780, %5776
  %5784 = select i1 %5781, float %5782, float %5771
  %5785 = select i1 %5781, float %5783, float %5772
  %5786 = fmul fast float %5784, 5.000000e-01
  %5787 = fmul fast float %5785, 5.000000e-01
  %5788 = fadd fast float %5786, 5.000000e-01
  %5789 = fadd fast float %5787, 5.000000e-01
  %5790 = uitofp i32 %5552 to float
  %5791 = call float @dx.op.binary.f32(i32 36, float %5762, float 3.000000e+00)  ; FMin(a,b)
  %5792 = fadd fast float %5791, 2.000000e+00
  %5793 = call float @dx.op.unary.f32(i32 21, float %5792)  ; Exp(value)
  %5794 = extractvalue %dx.types.CBufRet.f32 %5759, 1
  %5795 = fmul fast float %5794, %5793
  %5796 = fmul fast float %5795, 2.000000e+00
  %5797 = fsub fast float 1.000000e+00, %5796
  %5798 = fmul fast float %5788, %5797
  %5799 = fmul fast float %5789, %5797
  %5800 = fadd fast float %5798, %5795
  %5801 = fadd fast float %5799, %5795
  %5802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %5800, float %5801, float %5790, float undef, i32 0, i32 0, i32 undef, float %5762)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5803 = extractvalue %dx.types.ResRet.f32 %5802, 0
  %5804 = extractvalue %dx.types.ResRet.f32 %5802, 1
  %5805 = extractvalue %dx.types.ResRet.f32 %5802, 2
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 3
  %5808 = fmul fast float %5807, %5522
  %5809 = call float @dx.op.binary.f32(i32 36, float %4842, float %5808)  ; FMin(a,b)
  %5810 = select i1 %5758, float %5809, float %5808
  %5811 = fmul fast float %5803, %5600
  %5812 = fmul fast float %5811, %5810
  %5813 = fmul fast float %5804, %5600
  %5814 = fmul fast float %5813, %5810
  %5815 = fmul fast float %5805, %5600
  %5816 = fmul fast float %5815, %5810
  %5817 = fadd fast float %5812, %5494
  %5818 = fadd fast float %5814, %5495
  %5819 = fadd fast float %5816, %5496
  %5820 = fmul fast float %5680, %5600
  %5821 = fmul fast float %5681, %5600
  %5822 = fmul fast float %5682, %5600
  %5823 = fadd fast float %5820, %5499
  %5824 = fadd fast float %5821, %5500
  %5825 = fadd fast float %5822, %5501
  %5826 = fsub fast float %5497, %5600
  br label %5602

; <label>:5827                                    ; preds = %5602
  br label %5828

; <label>:5828                                    ; preds = %5827, %5460
  %5829 = phi float [ %5461, %5460 ], [ %5603, %5827 ]
  %5830 = phi float [ %5462, %5460 ], [ %5604, %5827 ]
  %5831 = phi float [ %5463, %5460 ], [ %5605, %5827 ]
  %5832 = phi float [ %5464, %5460 ], [ %5606, %5827 ]
  %5833 = phi float [ %5466, %5460 ], [ %5607, %5827 ]
  %5834 = phi float [ %5467, %5460 ], [ %5608, %5827 ]
  %5835 = phi float [ %5468, %5460 ], [ %5609, %5827 ]
  %5836 = add i32 %5465, 1
  %5837 = icmp ugt i32 %5836, %5457
  br i1 %5837, label %5838, label %5460, !llvm.loop !73

; <label>:5838                                    ; preds = %5828
  br label %5839

; <label>:5839                                    ; preds = %5838, %5408
  %5840 = phi float [ 0.000000e+00, %5408 ], [ %5829, %5838 ]
  %5841 = phi float [ 0.000000e+00, %5408 ], [ %5830, %5838 ]
  %5842 = phi float [ 0.000000e+00, %5408 ], [ %5831, %5838 ]
  %5843 = phi float [ 0.000000e+00, %5408 ], [ %5833, %5838 ]
  %5844 = phi float [ 0.000000e+00, %5408 ], [ %5834, %5838 ]
  %5845 = phi float [ 0.000000e+00, %5408 ], [ %5835, %5838 ]
  %5846 = call float @dx.op.dot3.f32(i32 55, float %5840, float %5841, float %5842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = select i1 %168, float 0.000000e+00, float %5840
  %5848 = select i1 %168, float %5846, float %5841
  %5849 = select i1 %168, float 0.000000e+00, float %5842
  %5850 = fcmp fast olt float %5402, 0.000000e+00
  %5851 = call float @dx.op.unary.f32(i32 6, float %5402)  ; FAbs(value)
  %5852 = fmul fast float %5851, %5403
  %5853 = fmul fast float %5851, %5404
  %5854 = fmul fast float %5851, %5405
  %5855 = select i1 %5850, float %5403, float %5852
  %5856 = select i1 %5850, float %5404, float %5853
  %5857 = select i1 %5850, float %5405, float %5854
  %5858 = fsub fast float 1.000000e+00, %5851
  %5859 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5860 = fmul fast float %5859, %5847
  %5861 = fmul fast float %5859, %5848
  %5862 = fmul fast float %5859, %5849
  %5863 = fadd fast float %5855, %5860
  %5864 = fadd fast float %5856, %5861
  %5865 = fadd fast float %5857, %5862
  %5866 = fcmp fast une float %5152, 0.000000e+00
  br i1 %5866, label %5967, label %5867

; <label>:5867                                    ; preds = %5839
  %5868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5869 = extractvalue %dx.types.CBufRet.f32 %5868, 0
  %5870 = extractvalue %dx.types.CBufRet.f32 %5868, 1
  %5871 = extractvalue %dx.types.CBufRet.f32 %5868, 2
  %5872 = extractvalue %dx.types.CBufRet.f32 %5868, 3
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.CBufRet.f32 %5873, 1
  %5876 = extractvalue %dx.types.CBufRet.f32 %5873, 2
  %5877 = extractvalue %dx.types.CBufRet.f32 %5873, 3
  %5878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5879 = extractvalue %dx.types.CBufRet.f32 %5878, 0
  %5880 = extractvalue %dx.types.CBufRet.f32 %5878, 1
  %5881 = extractvalue %dx.types.CBufRet.f32 %5878, 2
  %5882 = extractvalue %dx.types.CBufRet.f32 %5878, 3
  %5883 = call float @dx.op.dot3.f32(i32 55, float %5879, float %5880, float %5881, float %4821, float %4822, float %4823)  ; Dot3(ax,ay,az,bx,by,bz)
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5879, float %5880, float %5881)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float %5879, float %5880, float %5881)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = fadd fast float %4796, -1.000000e+00
  %5887 = fsub fast float %5884, %5885
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 2
  %5890 = fmul fast float %5889, %5884
  %5891 = fdiv fast float 1.600000e+02, %5890
  %5892 = fmul fast float %5886, %5886
  %5893 = fmul fast float %5892, 0xBFB5B17960000000
  %5894 = fmul fast float %5893, %5887
  %5895 = fmul fast float %5894, %5891
  %5896 = call float @dx.op.unary.f32(i32 21, float %5895)  ; Exp(value)
  %5897 = fmul fast float %5896, 0x3FF04B2960000000
  %5898 = fsub fast float 0x3FF04B2960000000, %5897
  %5899 = call float @dx.op.unary.f32(i32 7, float %5898)  ; Saturate(value)
  %5900 = fmul fast float %5899, 4.000000e+00
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5904 = extractvalue %dx.types.CBufRet.f32 %5901, 2
  %5905 = fadd fast float %5902, %5843
  %5906 = fadd fast float %5903, %5844
  %5907 = fadd fast float %5904, %5845
  %5908 = fmul fast float %5905, %5869
  %5909 = call float @dx.op.tertiary.f32(i32 46, float %5906, float %5870, float %5908)  ; FMad(a,b,c)
  %5910 = call float @dx.op.tertiary.f32(i32 46, float %5907, float %5871, float %5909)  ; FMad(a,b,c)
  %5911 = fadd fast float %5910, %5872
  %5912 = fmul fast float %5905, %5874
  %5913 = call float @dx.op.tertiary.f32(i32 46, float %5906, float %5875, float %5912)  ; FMad(a,b,c)
  %5914 = call float @dx.op.tertiary.f32(i32 46, float %5907, float %5876, float %5913)  ; FMad(a,b,c)
  %5915 = fadd fast float %5914, %5877
  %5916 = fmul fast float %5905, %5879
  %5917 = call float @dx.op.tertiary.f32(i32 46, float %5906, float %5880, float %5916)  ; FMad(a,b,c)
  %5918 = call float @dx.op.tertiary.f32(i32 46, float %5907, float %5881, float %5917)  ; FMad(a,b,c)
  %5919 = fadd fast float %5918, %5882
  %5920 = fdiv fast float %5911, %5919
  %5921 = fdiv fast float %5915, %5919
  %5922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5923 = extractvalue %dx.types.CBufRet.f32 %5922, 0
  %5924 = extractvalue %dx.types.CBufRet.f32 %5922, 1
  %5925 = fmul fast float %5923, %5920
  %5926 = fmul fast float %5924, %5921
  %5927 = extractvalue %dx.types.CBufRet.f32 %5922, 2
  %5928 = extractvalue %dx.types.CBufRet.f32 %5922, 3
  %5929 = fadd fast float %5925, %5927
  %5930 = fadd fast float %5926, %5928
  %5931 = fmul fast float %5883, 8.000000e+00
  %5932 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5933 = fmul fast float %5929, 2.000000e+00
  %5934 = fmul fast float %5930, 2.000000e+00
  %5935 = fadd fast float %5933, -1.000000e+00
  %5936 = fadd fast float %5934, -1.000000e+00
  %5937 = fmul fast float %5935, %5935
  %5938 = fsub fast float 1.000000e+00, %5937
  %5939 = call float @dx.op.unary.f32(i32 7, float %5938)  ; Saturate(value)
  %5940 = fmul fast float %5936, %5936
  %5941 = fsub fast float 1.000000e+00, %5940
  %5942 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  %5943 = fmul fast float %5152, %5939
  %5944 = fmul fast float %5943, %5942
  %5945 = call float @dx.op.unary.f32(i32 7, float %5944)  ; Saturate(value)
  %5946 = fmul fast float %5945, %5932
  %5947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %5929, float %5930, float undef, float undef, i32 0, i32 0, i32 undef, float %5900)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5948 = extractvalue %dx.types.ResRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.ResRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.ResRet.f32 %5947, 2
  %5951 = select i1 %168, float 0.000000e+00, float %5949
  %5952 = select i1 %168, float 0.000000e+00, float %5950
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 2
  %5955 = fmul fast float %5954, %5948
  %5956 = fmul fast float %5951, %5954
  %5957 = fmul fast float %5952, %5954
  %5958 = fsub fast float %5955, %5847
  %5959 = fsub fast float %5956, %5848
  %5960 = fsub fast float %5957, %5849
  %5961 = fmul fast float %5958, %5946
  %5962 = fmul fast float %5959, %5946
  %5963 = fmul fast float %5960, %5946
  %5964 = fadd fast float %5961, %5847
  %5965 = fadd fast float %5962, %5848
  %5966 = fadd fast float %5963, %5849
  br label %5967

; <label>:5967                                    ; preds = %5867, %5839, %5401, %5125
  %5968 = phi float [ %5403, %5401 ], [ %5863, %5839 ], [ %5082, %5125 ], [ %5964, %5867 ]
  %5969 = phi float [ %5404, %5401 ], [ %5864, %5839 ], [ %5083, %5125 ], [ %5965, %5867 ]
  %5970 = phi float [ %5405, %5401 ], [ %5865, %5839 ], [ %5084, %5125 ], [ %5966, %5867 ]
  %5971 = call float @dx.op.dot3.f32(i32 55, float %4790, float %4791, float %4792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5972 = fcmp fast ogt float %5971, 0x3E7FF19E20000000
  %5973 = fdiv fast float 1.000000e+00, %5971
  %5974 = select i1 %5972, float %5973, float 0.000000e+00
  %5975 = fmul fast float %5974, %4790
  %5976 = fmul fast float %5974, %4791
  %5977 = fmul fast float %5974, %4792
  %5978 = fadd fast float %5975, -1.000000e+00
  %5979 = fadd fast float %5976, -1.000000e+00
  %5980 = fadd fast float %5977, -1.000000e+00
  %5981 = fmul fast float %5978, 5.000000e-01
  %5982 = fmul fast float %5979, 5.000000e-01
  %5983 = fmul fast float %5980, 5.000000e-01
  %5984 = fadd fast float %5981, 1.000000e+00
  %5985 = fadd fast float %5982, 1.000000e+00
  %5986 = fadd fast float %5983, 1.000000e+00
  %5987 = fmul fast float %5968, %5126
  %5988 = fmul fast float %5969, %5127
  %5989 = fmul fast float %5970, %5128
  %5990 = fsub fast float 1.000000e+00, %4815
  %5991 = bitcast float %5990 to i32
  %5992 = sitofp i32 %5991 to float
  %5993 = fmul fast float %5992, 5.000000e+00
  %5994 = fadd fast float %5993, 0xC1EFBF8940000000
  %5995 = fptosi float %5994 to i32
  %5996 = bitcast i32 %5995 to float
  %5997 = fmul fast float %5996, %4411
  %5998 = fmul fast float %5074, %5997
  %5999 = fmul fast float %5998, %5131
  %6000 = fmul fast float %5999, %5984
  %6001 = fmul fast float %5075, %5997
  %6002 = fmul fast float %6001, %5131
  %6003 = fmul fast float %6002, %5985
  %6004 = fmul fast float %5076, %5997
  %6005 = fmul fast float %6004, %5131
  %6006 = fmul fast float %6005, %5986
  %6007 = fadd fast float %5987, %4400
  %6008 = fadd fast float %6007, %6000
  %6009 = fmul fast float %6008, %4407
  %6010 = fadd fast float %5988, %4401
  %6011 = fadd fast float %6010, %6003
  %6012 = fmul fast float %6011, %4407
  %6013 = fadd fast float %5989, %4402
  %6014 = fadd fast float %6013, %6006
  %6015 = fmul fast float %6014, %4407
  %6016 = fmul fast float %5131, %5076
  %6017 = fmul fast float %5131, %5075
  %6018 = fmul fast float %5131, %5074
  %6019 = fmul fast float %5131, %4502
  %6020 = fadd fast float %6019, -1.000000e+00
  %6021 = fmul fast float %6020, %4407
  %6022 = fadd fast float %6021, 1.000000e+00
  %6023 = fmul fast float %5131, %4501
  %6024 = fadd fast float %6023, -1.000000e+00
  %6025 = fmul fast float %6024, %4407
  %6026 = fadd fast float %6025, 1.000000e+00
  %6027 = fmul fast float %5131, %4500
  %6028 = fadd fast float %6027, -1.000000e+00
  %6029 = fmul fast float %6028, %4407
  %6030 = fadd fast float %6029, 1.000000e+00
  %6031 = fmul fast float %6030, %5078
  %6032 = fmul fast float %6026, %5079
  %6033 = fmul fast float %6022, %5080
  %6034 = fadd fast float %6031, %6018
  %6035 = fmul fast float %6034, %4407
  %6036 = fadd fast float %6032, %6017
  %6037 = fmul fast float %6036, %4407
  %6038 = fadd fast float %6033, %6016
  %6039 = fmul fast float %6038, %4407
  %6040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.f32 %6040, 3
  %6042 = fcmp fast oeq float %6041, 0.000000e+00
  br i1 %6042, label %6315, label %6043

; <label>:6043                                    ; preds = %5967
  %6044 = extractvalue %dx.types.CBufRet.f32 %6040, 0
  %6045 = extractvalue %dx.types.CBufRet.f32 %6040, 1
  %6046 = extractvalue %dx.types.CBufRet.f32 %6040, 2
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.CBufRet.f32 %6047, 1
  %6050 = extractvalue %dx.types.CBufRet.f32 %6047, 2
  %6051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6052 = extractvalue %dx.types.CBufRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.CBufRet.f32 %6051, 1
  %6054 = call float @dx.op.dot3.f32(i32 55, float %6048, float %6049, float %6050, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6055 = select i1 %168, float %6052, float %6048
  %6056 = select i1 %168, float %6054, float %6049
  %6057 = select i1 %168, float %6053, float %6050
  %6058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6059 = extractvalue %dx.types.CBufRet.f32 %6058, 1
  %6060 = fcmp fast une float %6059, 0.000000e+00
  br i1 %6060, label %6061, label %6078

; <label>:6061                                    ; preds = %6043
  %6062 = fptoui float %72 to i32
  %6063 = fptoui float %73 to i32
  %6064 = lshr i32 %6062, 4
  %6065 = lshr i32 %6063, 4
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 0
  %6068 = fptoui float %6067 to i32
  %6069 = add i32 %6068, 15
  %6070 = lshr i32 %6069, 4
  %6071 = mul i32 %6070, %6065
  %6072 = add i32 %6071, %6064
  %6073 = shl i32 %6072, 3
  %6074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6073, i32 undef)  ; BufferLoad(srv,index,wot)
  %6075 = extractvalue %dx.types.ResRet.i32 %6074, 0
  %6076 = and i32 %6075, -268435456
  %6077 = icmp eq i32 %6076, -1342177280
  br i1 %6077, label %6083, label %6078

; <label>:6078                                    ; preds = %6061, %6043
  %6079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %29, float %4801, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6080 = extractvalue %dx.types.ResRet.f32 %6079, 0
  %6081 = extractvalue %dx.types.ResRet.f32 %6079, 1
  %6082 = extractvalue %dx.types.ResRet.f32 %6079, 2
  br label %6083

; <label>:6083                                    ; preds = %6078, %6061
  %6084 = phi float [ %6080, %6078 ], [ 0.000000e+00, %6061 ]
  %6085 = phi float [ %6081, %6078 ], [ 0.000000e+00, %6061 ]
  %6086 = phi float [ %6082, %6078 ], [ 0.000000e+00, %6061 ]
  %6087 = call float @dx.op.binary.f32(i32 36, float %6085, float %6086)  ; FMin(a,b)
  %6088 = call float @dx.op.binary.f32(i32 36, float %6084, float %6087)  ; FMin(a,b)
  %6089 = fcmp fast ogt float %6088, 0.000000e+00
  br i1 %6089, label %6090, label %6315, !dx.controlflow.hints !75

; <label>:6090                                    ; preds = %6083
  %6091 = fmul fast float %6084, %6055
  %6092 = fmul fast float %6085, %6056
  %6093 = fmul fast float %6086, %6057
  %6094 = fsub fast float %6044, %4786
  %6095 = fsub fast float %6045, %4785
  %6096 = fsub fast float %6046, %4784
  %6097 = call float @dx.op.dot3.f32(i32 55, float %6094, float %6095, float %6096, float %6094, float %6095, float %6096)  ; Dot3(ax,ay,az,bx,by,bz)
  %6098 = call float @dx.op.unary.f32(i32 25, float %6097)  ; Rsqrt(value)
  %6099 = fmul fast float %6098, %6094
  %6100 = fmul fast float %6098, %6095
  %6101 = fmul fast float %6098, %6096
  %6102 = call float @dx.op.dot3.f32(i32 55, float %6044, float %6045, float %6046, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %6103 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4782, float %4781, float %6099, float %6100, float %6101)  ; Dot3(ax,ay,az,bx,by,bz)
  %6104 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6105 = fmul fast float %6104, %6104
  %6106 = fmul fast float %6105, %4840
  %6107 = call float @dx.op.unary.f32(i32 7, float %6106)  ; Saturate(value)
  %6108 = fmul fast float %6107, %6104
  %6109 = call float @dx.op.dot3.f32(i32 55, float %4793, float %4794, float %4795, float %6099, float %6100, float %6101)  ; Dot3(ax,ay,az,bx,by,bz)
  %6110 = fmul fast float %6109, %6109
  %6111 = call float @dx.op.unary.f32(i32 6, float %6102)  ; FAbs(value)
  %6112 = fsub fast float 1.000000e+00, %4833
  %6113 = fmul fast float %4815, %4815
  %6114 = fmul fast float %6113, %6112
  %6115 = fadd fast float %6114, %4833
  %6116 = bitcast float %6115 to i32
  %6117 = ashr i32 %6116, 1
  %6118 = add nsw i32 %6117, 532487669
  %6119 = bitcast i32 %6118 to float
  %6120 = fadd fast float %6119, %4815
  %6121 = fmul fast float %4833, %6110
  %6122 = fsub fast float 1.000000e+00, %6110
  %6123 = fadd fast float %6122, %6121
  %6124 = fmul fast float %6111, %6111
  %6125 = fmul fast float %6124, %6112
  %6126 = fadd fast float %6125, %4833
  %6127 = bitcast float %6126 to i32
  %6128 = ashr i32 %6127, 1
  %6129 = add nsw i32 %6128, 532487669
  %6130 = bitcast i32 %6129 to float
  %6131 = fadd fast float %6130, %6111
  %6132 = fmul fast float %6123, %6123
  %6133 = fmul fast float %6132, %6120
  %6134 = fmul fast float %6133, %6131
  %6135 = fdiv fast float 0x3FF0A00000000000, %6134
  %6136 = fmul fast float %6135, %4833
  %6137 = call float @dx.op.unary.f32(i32 6, float %6103)  ; FAbs(value)
  %6138 = fsub fast float 1.000000e+00, %6137
  %6139 = bitcast float %6138 to i32
  %6140 = sitofp i32 %6139 to float
  %6141 = fmul fast float %6140, 5.000000e+00
  %6142 = fadd fast float %6141, 0xC1EFBF8940000000
  %6143 = fptosi float %6142 to i32
  %6144 = bitcast i32 %6143 to float
  %6145 = fsub fast float 1.000000e+00, %4787
  %6146 = fsub fast float 1.000000e+00, %4788
  %6147 = fsub fast float 1.000000e+00, %4813
  %6148 = fmul fast float %6144, %6145
  %6149 = fmul fast float %6144, %6146
  %6150 = fmul fast float %6144, %6147
  %6151 = fadd fast float %6148, %4787
  %6152 = fadd fast float %6149, %4788
  %6153 = fadd fast float %6150, %4813
  br i1 %5098, label %6154, label %6177

; <label>:6154                                    ; preds = %6090
  %6155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4410, float %6137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6156 = extractvalue %dx.types.ResRet.f32 %6155, 0
  %6157 = extractvalue %dx.types.ResRet.f32 %6155, 1
  %6158 = extractvalue %dx.types.ResRet.f32 %6155, 2
  %6159 = fadd fast float %6156, -5.000000e-01
  %6160 = fadd fast float %6157, -5.000000e-01
  %6161 = fadd fast float %6158, -5.000000e-01
  %6162 = fmul fast float %4787, 4.000000e+00
  %6163 = fmul fast float %6162, %6145
  %6164 = fmul fast float %6163, %6159
  %6165 = fmul fast float %4788, 4.000000e+00
  %6166 = fmul fast float %6165, %6146
  %6167 = fmul fast float %6166, %6160
  %6168 = fmul fast float %4813, 4.000000e+00
  %6169 = fmul fast float %6168, %6147
  %6170 = fmul fast float %6169, %6161
  %6171 = fadd fast float %6164, %6151
  %6172 = fadd fast float %6167, %6152
  %6173 = fadd fast float %6170, %6153
  %6174 = call float @dx.op.unary.f32(i32 7, float %6171)  ; Saturate(value)
  %6175 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6176 = call float @dx.op.unary.f32(i32 7, float %6173)  ; Saturate(value)
  br label %6177

; <label>:6177                                    ; preds = %6154, %6090
  %6178 = phi float [ %6174, %6154 ], [ %6151, %6090 ]
  %6179 = phi float [ %6175, %6154 ], [ %6152, %6090 ]
  %6180 = phi float [ %6176, %6154 ], [ %6153, %6090 ]
  %6181 = fmul fast float %6102, 9.843750e-01
  %6182 = fadd fast float %6181, 7.812500e-03
  %6183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6182, float %5088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6184 = extractvalue %dx.types.ResRet.f32 %6183, 2
  %6185 = extractvalue %dx.types.ResRet.f32 %6183, 3
  %6186 = fmul fast float %6184, %4787
  %6187 = fmul fast float %6184, %4788
  %6188 = fmul fast float %6184, %4813
  %6189 = fadd fast float %6186, %6185
  %6190 = fadd fast float %6187, %6185
  %6191 = fadd fast float %6188, %6185
  br i1 %5098, label %6192, label %6215

; <label>:6192                                    ; preds = %6177
  %6193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4410, float %6102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6194 = extractvalue %dx.types.ResRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.ResRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.ResRet.f32 %6193, 2
  %6197 = fadd fast float %6194, -5.000000e-01
  %6198 = fadd fast float %6195, -5.000000e-01
  %6199 = fadd fast float %6196, -5.000000e-01
  %6200 = fmul fast float %4787, 4.000000e+00
  %6201 = fmul fast float %6200, %6145
  %6202 = fmul fast float %6201, %6197
  %6203 = fmul fast float %4788, 4.000000e+00
  %6204 = fmul fast float %6203, %6146
  %6205 = fmul fast float %6204, %6198
  %6206 = fmul fast float %4813, 4.000000e+00
  %6207 = fmul fast float %6206, %6147
  %6208 = fmul fast float %6207, %6199
  %6209 = fadd fast float %6202, %6189
  %6210 = fadd fast float %6205, %6190
  %6211 = fadd fast float %6208, %6191
  %6212 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  %6213 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6214 = call float @dx.op.unary.f32(i32 7, float %6211)  ; Saturate(value)
  br label %6215

; <label>:6215                                    ; preds = %6192, %6177
  %6216 = phi float [ %6212, %6192 ], [ %6189, %6177 ]
  %6217 = phi float [ %6213, %6192 ], [ %6190, %6177 ]
  %6218 = phi float [ %6214, %6192 ], [ %6191, %6177 ]
  %6219 = call float @dx.op.binary.f32(i32 35, float %6217, float %6218)  ; FMax(a,b)
  %6220 = call float @dx.op.binary.f32(i32 35, float %6216, float %6219)  ; FMax(a,b)
  %6221 = fsub fast float 1.000000e+00, %6220
  %6222 = fsub fast float -0.000000e+00, %4793
  %6223 = fsub fast float -0.000000e+00, %4794
  %6224 = fsub fast float -0.000000e+00, %4795
  %6225 = call float @dx.op.dot3.f32(i32 55, float %6044, float %6045, float %6046, float %6222, float %6223, float %6224)  ; Dot3(ax,ay,az,bx,by,bz)
  %6226 = call float @dx.op.unary.f32(i32 7, float %6225)  ; Saturate(value)
  %6227 = fmul fast float %6226, 9.843750e-01
  %6228 = fadd fast float %6227, 7.812500e-03
  %6229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6228, float %5088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6230 = extractvalue %dx.types.ResRet.f32 %6229, 2
  %6231 = extractvalue %dx.types.ResRet.f32 %6229, 3
  %6232 = fmul fast float %6230, %4787
  %6233 = fmul fast float %6230, %4788
  %6234 = fmul fast float %6230, %4813
  %6235 = fadd fast float %6232, %6231
  %6236 = fadd fast float %6233, %6231
  %6237 = fadd fast float %6234, %6231
  br i1 %5098, label %6238, label %6261

; <label>:6238                                    ; preds = %6215
  %6239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4410, float %6226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6240 = extractvalue %dx.types.ResRet.f32 %6239, 0
  %6241 = extractvalue %dx.types.ResRet.f32 %6239, 1
  %6242 = extractvalue %dx.types.ResRet.f32 %6239, 2
  %6243 = fadd fast float %6240, -5.000000e-01
  %6244 = fadd fast float %6241, -5.000000e-01
  %6245 = fadd fast float %6242, -5.000000e-01
  %6246 = fmul fast float %4787, 4.000000e+00
  %6247 = fmul fast float %6246, %6145
  %6248 = fmul fast float %6247, %6243
  %6249 = fmul fast float %4788, 4.000000e+00
  %6250 = fmul fast float %6249, %6146
  %6251 = fmul fast float %6250, %6244
  %6252 = fmul fast float %4813, 4.000000e+00
  %6253 = fmul fast float %6252, %6147
  %6254 = fmul fast float %6253, %6245
  %6255 = fadd fast float %6248, %6235
  %6256 = fadd fast float %6251, %6236
  %6257 = fadd fast float %6254, %6237
  %6258 = call float @dx.op.unary.f32(i32 7, float %6255)  ; Saturate(value)
  %6259 = call float @dx.op.unary.f32(i32 7, float %6256)  ; Saturate(value)
  %6260 = call float @dx.op.unary.f32(i32 7, float %6257)  ; Saturate(value)
  br label %6261

; <label>:6261                                    ; preds = %6238, %6215
  %6262 = phi float [ %6258, %6238 ], [ %6235, %6215 ]
  %6263 = phi float [ %6259, %6238 ], [ %6236, %6215 ]
  %6264 = phi float [ %6260, %6238 ], [ %6237, %6215 ]
  %6265 = call float @dx.op.binary.f32(i32 35, float %6263, float %6264)  ; FMax(a,b)
  %6266 = call float @dx.op.binary.f32(i32 35, float %6262, float %6265)  ; FMax(a,b)
  %6267 = fsub fast float 1.000000e+00, %6266
  %6268 = fmul fast float %6267, %6226
  %6269 = fmul fast float %6268, %4500
  %6270 = fmul fast float %6268, %4501
  %6271 = fmul fast float %6268, %4502
  %6272 = fmul fast float %6178, %6136
  %6273 = fmul fast float %6179, %6136
  %6274 = fmul fast float %6180, %6136
  %6275 = fsub fast float 1.000000e+00, %6103
  %6276 = bitcast float %6275 to i32
  %6277 = sitofp i32 %6276 to float
  %6278 = fmul fast float %6277, 5.000000e+00
  %6279 = fadd fast float %6278, 0xC1EFBF8940000000
  %6280 = fptosi float %6279 to i32
  %6281 = bitcast i32 %6280 to float
  %6282 = fmul fast float %6281, %4411
  %6283 = fmul fast float %6221, %6282
  %6284 = fmul fast float %6283, %5984
  %6285 = fmul fast float %6283, %5985
  %6286 = fmul fast float %6283, %5986
  %6287 = fmul fast float %6221, %6108
  %6288 = fadd fast float %6284, %6272
  %6289 = fadd fast float %6285, %6273
  %6290 = fadd fast float %6286, %6274
  %6291 = fadd fast float %6269, %6287
  %6292 = fadd fast float %6270, %6287
  %6293 = fadd fast float %6271, %6287
  %6294 = fmul fast float %6291, %6091
  %6295 = fmul fast float %6292, %6092
  %6296 = fmul fast float %6293, %6093
  %6297 = fmul fast float %6108, %6091
  %6298 = fmul fast float %6297, %6288
  %6299 = fmul fast float %6108, %6092
  %6300 = fmul fast float %6299, %6289
  %6301 = fmul fast float %6108, %6093
  %6302 = fmul fast float %6301, %6290
  %6303 = fadd fast float %6294, %6034
  %6304 = fmul fast float %6303, %4407
  %6305 = fadd fast float %6295, %6036
  %6306 = fmul fast float %6305, %4407
  %6307 = fadd fast float %6296, %6038
  %6308 = fmul fast float %6307, %4407
  %6309 = fadd fast float %6298, %6008
  %6310 = fmul fast float %6309, %4407
  %6311 = fadd fast float %6300, %6011
  %6312 = fmul fast float %6311, %4407
  %6313 = fadd fast float %6302, %6014
  %6314 = fmul fast float %6313, %4407
  br label %6315

; <label>:6315                                    ; preds = %6261, %6083, %5967
  %6316 = phi float [ %6009, %5967 ], [ %6009, %6083 ], [ %6310, %6261 ]
  %6317 = phi float [ %6012, %5967 ], [ %6012, %6083 ], [ %6312, %6261 ]
  %6318 = phi float [ %6015, %5967 ], [ %6015, %6083 ], [ %6314, %6261 ]
  %6319 = phi float [ %6035, %5967 ], [ %6035, %6083 ], [ %6304, %6261 ]
  %6320 = phi float [ %6037, %5967 ], [ %6037, %6083 ], [ %6306, %6261 ]
  %6321 = phi float [ %6039, %5967 ], [ %6039, %6083 ], [ %6308, %6261 ]
  %6322 = call float @dx.op.unary.f32(i32 24, float %4790)  ; Sqrt(value)
  %6323 = call float @dx.op.unary.f32(i32 24, float %4791)  ; Sqrt(value)
  %6324 = call float @dx.op.unary.f32(i32 24, float %4792)  ; Sqrt(value)
  %6325 = fmul fast float %6322, %6319
  %6326 = fmul fast float %6323, %6320
  %6327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6328 = extractvalue %dx.types.CBufRet.f32 %6327, 0
  br i1 %168, label %6329, label %6352

; <label>:6329                                    ; preds = %6315
  %6330 = fadd fast float %6321, %4413
  %6331 = fmul fast float %6330, %4414
  %6332 = fsub fast float 1.000000e+00, %4414
  %6333 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  %6334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6334, 3
  %6336 = fmul fast float %6335, %6333
  %6337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.f32 %6337, 0
  %6339 = fmul fast float %6338, %5990
  %6340 = extractvalue %dx.types.CBufRet.f32 %6337, 2
  %6341 = fmul fast float %6340, %4811
  %6342 = fadd fast float %6326, %6325
  %6343 = fmul fast float %6328, %6342
  %6344 = extractvalue %dx.types.CBufRet.f32 %6334, 1
  %6345 = fadd fast float %6336, %6331
  %6346 = fsub fast float %6345, %6339
  %6347 = fadd fast float %6346, %6341
  %6348 = fsub fast float %6347, %6344
  %6349 = extractvalue %dx.types.CBufRet.f32 %6334, 2
  %6350 = fmul fast float %6348, %6349
  %6351 = call float @dx.op.unary.f32(i32 7, float %6350)  ; Saturate(value)
  br label %6368

; <label>:6352                                    ; preds = %6315
  %6353 = fmul fast float %6324, %6321
  %6354 = fmul fast float %6328, %6325
  %6355 = fmul fast float %6328, %6326
  %6356 = fmul fast float %6353, %6328
  %6357 = add i32 %32, 356
  %6358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %6357, i32 undef)  ; BufferLoad(srv,index,wot)
  %6359 = extractvalue %dx.types.ResRet.i32 %6358, 0
  %6360 = and i32 %6359, 32
  %6361 = icmp eq i32 %6360, 0
  br i1 %6361, label %6368, label %6362

; <label>:6362                                    ; preds = %6352
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = fmul fast float %6364, 0x3FE99999A0000000
  %6366 = fadd fast float %6364, %6354
  %6367 = fadd fast float %6365, %6356
  br label %6368

; <label>:6368                                    ; preds = %6362, %6352, %6329
  %6369 = phi float [ %6343, %6329 ], [ %6366, %6362 ], [ %6354, %6352 ]
  %6370 = phi float [ %6351, %6329 ], [ %6355, %6362 ], [ %6355, %6352 ]
  %6371 = phi float [ 1.000000e+00, %6329 ], [ %6367, %6362 ], [ %6356, %6352 ]
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = fmul fast float %6373, %6317
  %6375 = fmul fast float %6373, %6318
  %6376 = fadd fast float %6317, %6316
  %6377 = select i1 %168, float %6376, float %6316
  %6378 = fmul float %6377, %6373
  %6379 = select i1 %168, float 0.000000e+00, float %6374
  %6380 = select i1 %168, float 0.000000e+00, float %6375
  %6381 = fmul fast float %6369, %6322
  %6382 = fmul fast float %6370, %6323
  %6383 = fmul fast float %6371, %6324
  %6384 = fadd fast float %6378, %6381
  %6385 = fadd fast float %6379, %6382
  %6386 = fadd fast float %6380, %6383
  %6387 = select i1 %168, float %6370, float %6385
  %6388 = select i1 %168, float %6371, float %6386
  %6389 = call float @dx.op.binary.f32(i32 36, float %6384, float 3.225500e+04)  ; FMin(a,b)
  %6390 = call float @dx.op.binary.f32(i32 36, float %6387, float 3.225500e+04)  ; FMin(a,b)
  %6391 = call float @dx.op.binary.f32(i32 36, float %6388, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6389)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6390)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6391)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!44 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!45 = !{void ()* @ps_main, !"ps_main", !46, !4, !69}
!46 = !{!47, !67, null}
!47 = !{!48, !51, !53, !55, !57, !59, !60, !61, !62, !63, !64, !66}
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
!66 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !49, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!67 = !{!68}
!68 = !{i32 0, !"SV_Target", i8 9, i8 16, !49, i8 0, i32 1, i8 4, i32 0, i8 0, !58}
!69 = !{i32 0, i64 24}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}

