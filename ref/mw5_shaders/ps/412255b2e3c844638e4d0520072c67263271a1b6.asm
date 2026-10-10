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
; shader hash: 43dfab78415bcdf14165bbbcb168408f
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
  %365 = add i32 %32, 472
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
  %523 = add i32 %32, 360
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
  %546 = add i32 %32, 440
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
  %744 = add i32 %32, 376
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
  %828 = add i32 %32, 392
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
  %869 = add i32 %32, 456
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
  %936 = phi float [ 0.000000e+00, %404 ], [ %913, %912 ]
  %937 = phi float [ 0.000000e+00, %404 ], [ %914, %912 ]
  %938 = phi float [ 0.000000e+00, %404 ], [ %915, %912 ]
  %939 = phi float [ 0.000000e+00, %404 ], [ %861, %912 ]
  %940 = phi float [ 0.000000e+00, %404 ], [ %862, %912 ]
  %941 = phi float [ 0.000000e+00, %404 ], [ %863, %912 ]
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
  %1177 = add i32 %32, 428
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
  %1229 = add i32 %32, 412
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
  %1255 = add i32 %32, 364
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
  %1278 = add i32 %32, 444
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
  %1476 = add i32 %32, 380
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
  %1560 = add i32 %32, 396
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
  %1601 = add i32 %32, 460
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
  %1667 = fmul fast float %1663, %939
  %1668 = fmul fast float %1663, %940
  %1669 = fmul fast float %1663, %941
  br label %1670

; <label>:1670                                    ; preds = %1662, %1644
  %1671 = phi float [ %1664, %1662 ], [ %933, %1644 ]
  %1672 = phi float [ %1665, %1662 ], [ %934, %1644 ]
  %1673 = phi float [ %1666, %1662 ], [ %935, %1644 ]
  %1674 = phi float [ %1667, %1662 ], [ %939, %1644 ]
  %1675 = phi float [ %1668, %1662 ], [ %940, %1644 ]
  %1676 = phi float [ %1669, %1662 ], [ %941, %1644 ]
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
  %1803 = fsub fast float %1645, %936
  %1804 = fsub fast float %1646, %937
  %1805 = fsub fast float %1647, %938
  %1806 = fmul fast float %1785, %1803
  %1807 = fmul fast float %1785, %1804
  %1808 = fmul fast float %1785, %1805
  %1809 = fadd fast float %1806, %936
  %1810 = fadd fast float %1807, %937
  %1811 = fadd fast float %1808, %938
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
  %1851 = fadd fast float %1848, %936
  %1852 = fadd fast float %1849, %937
  %1853 = fadd fast float %1850, %938
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
  %1873 = fadd fast float %1870, %936
  %1874 = fadd fast float %1871, %937
  %1875 = fadd fast float %1872, %938
  br label %1876

; <label>:1876                                    ; preds = %1856, %1854, %1814, %1787, %1759, %1244, %948, %930
  %1877 = phi float [ %931, %1759 ], [ %931, %1244 ], [ %931, %930 ], [ %1859, %1856 ], [ %931, %1854 ], [ %1817, %1814 ], [ %1792, %1787 ], [ %931, %948 ]
  %1878 = phi float [ %932, %1759 ], [ %932, %1244 ], [ %932, %930 ], [ %1860, %1856 ], [ %932, %1854 ], [ %1818, %1814 ], [ %1793, %1787 ], [ %932, %948 ]
  %1879 = phi float [ %1760, %1759 ], [ %933, %1244 ], [ %933, %930 ], [ %1760, %1856 ], [ %1760, %1854 ], [ %1760, %1814 ], [ %1760, %1787 ], [ %933, %948 ]
  %1880 = phi float [ %1761, %1759 ], [ %934, %1244 ], [ %934, %930 ], [ %1761, %1856 ], [ %1761, %1854 ], [ %1761, %1814 ], [ %1761, %1787 ], [ %934, %948 ]
  %1881 = phi float [ %1762, %1759 ], [ %935, %1244 ], [ %935, %930 ], [ %1762, %1856 ], [ %1762, %1854 ], [ %1762, %1814 ], [ %1762, %1787 ], [ %935, %948 ]
  %1882 = phi float [ %936, %1759 ], [ %936, %1244 ], [ %936, %930 ], [ %1873, %1856 ], [ %936, %1854 ], [ %1851, %1814 ], [ %1809, %1787 ], [ %936, %948 ]
  %1883 = phi float [ %937, %1759 ], [ %937, %1244 ], [ %937, %930 ], [ %1874, %1856 ], [ %937, %1854 ], [ %1852, %1814 ], [ %1810, %1787 ], [ %937, %948 ]
  %1884 = phi float [ %938, %1759 ], [ %938, %1244 ], [ %938, %930 ], [ %1875, %1856 ], [ %938, %1854 ], [ %1853, %1814 ], [ %1811, %1787 ], [ %938, %948 ]
  %1885 = phi float [ %1763, %1759 ], [ %939, %1244 ], [ %939, %930 ], [ %1763, %1856 ], [ %1763, %1854 ], [ %1763, %1814 ], [ %1763, %1787 ], [ %939, %948 ]
  %1886 = phi float [ %1764, %1759 ], [ %940, %1244 ], [ %940, %930 ], [ %1764, %1856 ], [ %1764, %1854 ], [ %1764, %1814 ], [ %1764, %1787 ], [ %940, %948 ]
  %1887 = phi float [ %1765, %1759 ], [ %941, %1244 ], [ %941, %930 ], [ %1765, %1856 ], [ %1765, %1854 ], [ %1765, %1814 ], [ %1765, %1787 ], [ %941, %948 ]
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
  %2122 = add i32 %32, 432
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
  %2174 = add i32 %32, 416
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
  %2200 = add i32 %32, 368
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
  %2223 = add i32 %32, 448
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
  %2421 = add i32 %32, 384
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
  %2505 = add i32 %32, 400
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
  %2546 = add i32 %32, 464
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
  %2612 = fmul fast float %2608, %1885
  %2613 = fmul fast float %2608, %1886
  %2614 = fmul fast float %2608, %1887
  br label %2615

; <label>:2615                                    ; preds = %2607, %2589
  %2616 = phi float [ %2609, %2607 ], [ %1879, %2589 ]
  %2617 = phi float [ %2610, %2607 ], [ %1880, %2589 ]
  %2618 = phi float [ %2611, %2607 ], [ %1881, %2589 ]
  %2619 = phi float [ %2612, %2607 ], [ %1885, %2589 ]
  %2620 = phi float [ %2613, %2607 ], [ %1886, %2589 ]
  %2621 = phi float [ %2614, %2607 ], [ %1887, %2589 ]
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
  %2748 = fsub fast float %2590, %1882
  %2749 = fsub fast float %2591, %1883
  %2750 = fsub fast float %2592, %1884
  %2751 = fmul fast float %2730, %2748
  %2752 = fmul fast float %2730, %2749
  %2753 = fmul fast float %2730, %2750
  %2754 = fadd fast float %2751, %1882
  %2755 = fadd fast float %2752, %1883
  %2756 = fadd fast float %2753, %1884
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
  %2796 = fadd fast float %2793, %1882
  %2797 = fadd fast float %2794, %1883
  %2798 = fadd fast float %2795, %1884
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
  %2818 = fadd fast float %2815, %1882
  %2819 = fadd fast float %2816, %1883
  %2820 = fadd fast float %2817, %1884
  br label %2821

; <label>:2821                                    ; preds = %2801, %2799, %2759, %2732, %2704, %2189, %1893, %1876
  %2822 = phi float [ %1877, %2704 ], [ %1877, %2189 ], [ %1877, %1876 ], [ %2804, %2801 ], [ %1877, %2799 ], [ %2762, %2759 ], [ %2737, %2732 ], [ %1877, %1893 ]
  %2823 = phi float [ %1878, %2704 ], [ %1878, %2189 ], [ %1878, %1876 ], [ %2805, %2801 ], [ %1878, %2799 ], [ %2763, %2759 ], [ %2738, %2732 ], [ %1878, %1893 ]
  %2824 = phi float [ %2705, %2704 ], [ %1879, %2189 ], [ %1879, %1876 ], [ %2705, %2801 ], [ %2705, %2799 ], [ %2705, %2759 ], [ %2705, %2732 ], [ %1879, %1893 ]
  %2825 = phi float [ %2706, %2704 ], [ %1880, %2189 ], [ %1880, %1876 ], [ %2706, %2801 ], [ %2706, %2799 ], [ %2706, %2759 ], [ %2706, %2732 ], [ %1880, %1893 ]
  %2826 = phi float [ %2707, %2704 ], [ %1881, %2189 ], [ %1881, %1876 ], [ %2707, %2801 ], [ %2707, %2799 ], [ %2707, %2759 ], [ %2707, %2732 ], [ %1881, %1893 ]
  %2827 = phi float [ %1882, %2704 ], [ %1882, %2189 ], [ %1882, %1876 ], [ %2818, %2801 ], [ %1882, %2799 ], [ %2796, %2759 ], [ %2754, %2732 ], [ %1882, %1893 ]
  %2828 = phi float [ %1883, %2704 ], [ %1883, %2189 ], [ %1883, %1876 ], [ %2819, %2801 ], [ %1883, %2799 ], [ %2797, %2759 ], [ %2755, %2732 ], [ %1883, %1893 ]
  %2829 = phi float [ %1884, %2704 ], [ %1884, %2189 ], [ %1884, %1876 ], [ %2820, %2801 ], [ %1884, %2799 ], [ %2798, %2759 ], [ %2756, %2732 ], [ %1884, %1893 ]
  %2830 = phi float [ %2708, %2704 ], [ %1885, %2189 ], [ %1885, %1876 ], [ %2708, %2801 ], [ %2708, %2799 ], [ %2708, %2759 ], [ %2708, %2732 ], [ %1885, %1893 ]
  %2831 = phi float [ %2709, %2704 ], [ %1886, %2189 ], [ %1886, %1876 ], [ %2709, %2801 ], [ %2709, %2799 ], [ %2709, %2759 ], [ %2709, %2732 ], [ %1886, %1893 ]
  %2832 = phi float [ %2710, %2704 ], [ %1887, %2189 ], [ %1887, %1876 ], [ %2710, %2801 ], [ %2710, %2799 ], [ %2710, %2759 ], [ %2710, %2732 ], [ %1887, %1893 ]
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
  %3067 = add i32 %32, 436
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
  %3119 = add i32 %32, 420
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
  %3145 = add i32 %32, 372
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
  %3168 = add i32 %32, 452
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
  %3366 = add i32 %32, 388
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
  %3450 = add i32 %32, 404
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
  %3491 = add i32 %32, 468
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
  %3557 = fmul fast float %3553, %2830
  %3558 = fmul fast float %3553, %2831
  %3559 = fmul fast float %3553, %2832
  br label %3560

; <label>:3560                                    ; preds = %3552, %3534
  %3561 = phi float [ %3554, %3552 ], [ %2824, %3534 ]
  %3562 = phi float [ %3555, %3552 ], [ %2825, %3534 ]
  %3563 = phi float [ %3556, %3552 ], [ %2826, %3534 ]
  %3564 = phi float [ %3557, %3552 ], [ %2830, %3534 ]
  %3565 = phi float [ %3558, %3552 ], [ %2831, %3534 ]
  %3566 = phi float [ %3559, %3552 ], [ %2832, %3534 ]
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
  %3693 = fsub fast float %3535, %2827
  %3694 = fsub fast float %3536, %2828
  %3695 = fsub fast float %3537, %2829
  %3696 = fmul fast float %3675, %3693
  %3697 = fmul fast float %3675, %3694
  %3698 = fmul fast float %3675, %3695
  %3699 = fadd fast float %3696, %2827
  %3700 = fadd fast float %3697, %2828
  %3701 = fadd fast float %3698, %2829
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
  %3741 = fadd fast float %3738, %2827
  %3742 = fadd fast float %3739, %2828
  %3743 = fadd fast float %3740, %2829
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
  %3763 = fadd fast float %3760, %2827
  %3764 = fadd fast float %3761, %2828
  %3765 = fadd fast float %3762, %2829
  br label %3766

; <label>:3766                                    ; preds = %3746, %3744, %3704, %3677, %3649, %3134, %2838, %2821
  %3767 = phi float [ %2822, %3649 ], [ %2822, %3134 ], [ %2822, %2821 ], [ %2822, %2838 ], [ %3682, %3677 ], [ %3707, %3704 ], [ %2822, %3744 ], [ %3749, %3746 ]
  %3768 = phi float [ %2823, %3649 ], [ %2823, %3134 ], [ %2823, %2821 ], [ %2823, %2838 ], [ %3683, %3677 ], [ %3708, %3704 ], [ %2823, %3744 ], [ %3750, %3746 ]
  %3769 = phi float [ %3650, %3649 ], [ %2824, %3134 ], [ %2824, %2821 ], [ %2824, %2838 ], [ %3650, %3677 ], [ %3650, %3704 ], [ %3650, %3744 ], [ %3650, %3746 ]
  %3770 = phi float [ %3651, %3649 ], [ %2825, %3134 ], [ %2825, %2821 ], [ %2825, %2838 ], [ %3651, %3677 ], [ %3651, %3704 ], [ %3651, %3744 ], [ %3651, %3746 ]
  %3771 = phi float [ %3652, %3649 ], [ %2826, %3134 ], [ %2826, %2821 ], [ %2826, %2838 ], [ %3652, %3677 ], [ %3652, %3704 ], [ %3652, %3744 ], [ %3652, %3746 ]
  %3772 = phi float [ %2827, %3649 ], [ %2827, %3134 ], [ %2827, %2821 ], [ %2827, %2838 ], [ %3699, %3677 ], [ %3741, %3704 ], [ %2827, %3744 ], [ %3763, %3746 ]
  %3773 = phi float [ %2828, %3649 ], [ %2828, %3134 ], [ %2828, %2821 ], [ %2828, %2838 ], [ %3700, %3677 ], [ %3742, %3704 ], [ %2828, %3744 ], [ %3764, %3746 ]
  %3774 = phi float [ %2829, %3649 ], [ %2829, %3134 ], [ %2829, %2821 ], [ %2829, %2838 ], [ %3701, %3677 ], [ %3743, %3704 ], [ %2829, %3744 ], [ %3765, %3746 ]
  %3775 = phi float [ %3653, %3649 ], [ %2830, %3134 ], [ %2830, %2821 ], [ %2830, %2838 ], [ %3653, %3677 ], [ %3653, %3704 ], [ %3653, %3744 ], [ %3653, %3746 ]
  %3776 = phi float [ %3654, %3649 ], [ %2831, %3134 ], [ %2831, %2821 ], [ %2831, %2838 ], [ %3654, %3677 ], [ %3654, %3704 ], [ %3654, %3744 ], [ %3654, %3746 ]
  %3777 = phi float [ %3655, %3649 ], [ %2832, %3134 ], [ %2832, %2821 ], [ %2832, %2838 ], [ %3655, %3677 ], [ %3655, %3704 ], [ %3655, %3744 ], [ %3655, %3746 ]
  %3778 = phi float [ %3656, %3649 ], [ %2833, %3134 ], [ %2833, %2821 ], [ %2833, %2838 ], [ %3656, %3677 ], [ %3656, %3704 ], [ %3656, %3744 ], [ %3656, %3746 ]
  %3779 = phi float [ %2834, %3649 ], [ %2834, %3134 ], [ %2834, %2821 ], [ %2834, %2838 ], [ %3689, %3677 ], [ %3735, %3704 ], [ %2834, %3744 ], [ %3757, %3746 ]
  %3780 = phi float [ %2835, %3649 ], [ %2835, %3134 ], [ %2835, %2821 ], [ %2835, %2838 ], [ %3686, %3677 ], [ %3712, %3704 ], [ %2835, %3744 ], [ %3754, %3746 ]
  %3781 = phi float [ %2836, %3649 ], [ %2836, %3134 ], [ %2836, %2821 ], [ %2836, %2838 ], [ %3692, %3677 ], [ %3737, %3704 ], [ %2836, %3744 ], [ %3759, %3746 ]
  %3782 = phi float [ %3657, %3649 ], [ %2837, %3134 ], [ %2837, %2821 ], [ %2837, %2838 ], [ %3657, %3677 ], [ %3657, %3704 ], [ %3657, %3744 ], [ %3657, %3746 ]
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 0
  %3785 = call float @dx.op.dot2.f32(i32 54, float %3767, float %3768, float %3767, float %3768)  ; Dot2(ax,ay,bx,by)
  %3786 = fmul fast float %3785, 0x3FE3333340000000
  %3787 = fsub fast float 1.000000e+00, %3786
  %3788 = call float @dx.op.dot3.f32(i32 55, float %3767, float %3768, float %3787, float %3767, float %3768, float %3787)  ; Dot3(ax,ay,az,bx,by,bz)
  %3789 = call float @dx.op.unary.f32(i32 25, float %3788)  ; Rsqrt(value)
  %3790 = fmul fast float %3789, %3767
  %3791 = fmul fast float %3789, %3768
  %3792 = fmul fast float %3787, %3789
  %3793 = fmul fast float %3792, %79
  %3794 = fmul fast float %3792, %80
  %3795 = fmul fast float %3792, %81
  %3796 = fmul fast float %3790, %53
  %3797 = fmul fast float %3790, %54
  %3798 = fmul fast float %3790, %55
  %3799 = fadd fast float %3793, %3796
  %3800 = fadd fast float %3794, %3797
  %3801 = fadd fast float %3795, %3798
  %3802 = fmul fast float %91, %3791
  %3803 = fmul fast float %92, %3791
  %3804 = fmul fast float %93, %3791
  %3805 = fadd fast float %3799, %3802
  %3806 = fadd fast float %3800, %3803
  %3807 = fadd fast float %3801, %3804
  %3808 = call float @dx.op.dot3.f32(i32 55, float %3805, float %3806, float %3807, float %3805, float %3806, float %3807)  ; Dot3(ax,ay,az,bx,by,bz)
  %3809 = call float @dx.op.unary.f32(i32 25, float %3808)  ; Rsqrt(value)
  %3810 = fmul fast float %3805, %3809
  %3811 = fmul fast float %3806, %3809
  %3812 = fmul fast float %3807, %3809
  %3813 = and i32 %34, 1
  %3814 = icmp eq i32 %3813, 0
  br i1 %3814, label %3815, label %4376

; <label>:3815                                    ; preds = %3766
  %3816 = call float @dx.op.unary.f32(i32 83, float %127)  ; DerivCoarseX(value)
  %3817 = call float @dx.op.unary.f32(i32 83, float %128)  ; DerivCoarseX(value)
  %3818 = call float @dx.op.unary.f32(i32 83, float %129)  ; DerivCoarseX(value)
  %3819 = call float @dx.op.unary.f32(i32 84, float %127)  ; DerivCoarseY(value)
  %3820 = call float @dx.op.unary.f32(i32 84, float %128)  ; DerivCoarseY(value)
  %3821 = call float @dx.op.unary.f32(i32 84, float %129)  ; DerivCoarseY(value)
  %3822 = fadd fast float %3816, %127
  %3823 = fadd fast float %3817, %128
  %3824 = fadd fast float %3818, %129
  %3825 = fadd fast float %3819, %127
  %3826 = fadd fast float %3820, %128
  %3827 = fadd fast float %3821, %129
  %3828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.f32 %3828, 0
  %3830 = extractvalue %dx.types.CBufRet.f32 %3828, 1
  %3831 = extractvalue %dx.types.CBufRet.f32 %3828, 2
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 2
  %3834 = extractvalue %dx.types.CBufRet.f32 %3832, 3
  %3835 = fmul fast float %3829, %72
  %3836 = fmul fast float %3835, %3833
  %3837 = fmul fast float %3830, %73
  %3838 = fmul fast float %3837, %3834
  %3839 = fptoui float %3836 to i32
  %3840 = fptoui float %3838 to i32
  %3841 = fadd fast float %3829, -1.000000e+00
  %3842 = fadd fast float %3830, -1.000000e+00
  %3843 = fptoui float %3841 to i32
  %3844 = fptoui float %3842 to i32
  %3845 = call i32 @dx.op.binary.i32(i32 40, i32 %3839, i32 %3843)  ; UMin(a,b)
  %3846 = call i32 @dx.op.binary.i32(i32 40, i32 %3840, i32 %3844)  ; UMin(a,b)
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 2
  %3849 = extractvalue %dx.types.CBufRet.f32 %3847, 3
  %3850 = fmul fast float %3848, %67
  %3851 = fsub fast float %3850, %3849
  %3852 = fadd fast float %3831, -1.000000e+00
  %3853 = call float @dx.op.binary.f32(i32 36, float %3851, float %3852)  ; FMin(a,b)
  %3854 = fptoui float %3853 to i32
  %3855 = fptoui float %3829 to i32
  %3856 = fptoui float %3830 to i32
  %3857 = mul i32 %3854, %3856
  %3858 = add i32 %3857, %3846
  %3859 = mul i32 %3858, %3855
  %3860 = add i32 %3859, %3845
  %3861 = shl i32 %3860, 2
  %3862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.i32 %3862, 0
  %3864 = and i32 %3863, 1023
  %3865 = lshr i32 %3863, 10
  %3866 = icmp eq i32 %3864, 0
  br i1 %3866, label %4342, label %3867

; <label>:3867                                    ; preds = %3815
  %3868 = and i32 %3863, 1023
  br label %3869

; <label>:3869                                    ; preds = %3998, %3867
  %3870 = phi i32 [ %3948, %3998 ], [ 0, %3867 ]
  %3871 = phi float [ %3999, %3998 ], [ 0.000000e+00, %3867 ]
  %3872 = phi float [ %4000, %3998 ], [ %3784, %3867 ]
  %3873 = phi float [ %4001, %3998 ], [ %3782, %3867 ]
  %3874 = phi float [ %4002, %3998 ], [ 0.000000e+00, %3867 ]
  %3875 = phi float [ %4003, %3998 ], [ 0.000000e+00, %3867 ]
  %3876 = phi float [ %4004, %3998 ], [ %3772, %3867 ]
  %3877 = phi float [ %4005, %3998 ], [ %3773, %3867 ]
  %3878 = phi float [ %4006, %3998 ], [ %3774, %3867 ]
  %3879 = phi float [ %4007, %3998 ], [ %3775, %3867 ]
  %3880 = phi float [ %4008, %3998 ], [ %3776, %3867 ]
  %3881 = phi float [ %4009, %3998 ], [ %3777, %3867 ]
  %3882 = phi float [ %4010, %3998 ], [ %3810, %3867 ]
  %3883 = phi float [ %4011, %3998 ], [ %3811, %3867 ]
  %3884 = phi float [ %4012, %3998 ], [ %3812, %3867 ]
  %3885 = phi float [ %4013, %3998 ], [ %3780, %3867 ]
  %3886 = phi float [ %4014, %3998 ], [ %3779, %3867 ]
  %3887 = phi float [ %4015, %3998 ], [ 0.000000e+00, %3867 ]
  %3888 = phi float [ %4016, %3998 ], [ %3778, %3867 ]
  %3889 = phi float [ %4017, %3998 ], [ %3769, %3867 ]
  %3890 = phi float [ %4018, %3998 ], [ %3770, %3867 ]
  %3891 = phi float [ %4019, %3998 ], [ %3771, %3867 ]
  %3892 = add nuw nsw i32 %3870, %3865
  %3893 = shl i32 %3892, 2
  %3894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.i32 %3894, 0
  %3896 = shl i32 %3895, 8
  %3897 = or i32 %3896, 48
  %3898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.f32 %3898, 0
  %3900 = extractvalue %dx.types.ResRet.f32 %3898, 1
  %3901 = extractvalue %dx.types.ResRet.f32 %3898, 2
  %3902 = extractvalue %dx.types.ResRet.f32 %3898, 3
  %3903 = or i32 %3896, 64
  %3904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3905 = extractvalue %dx.types.ResRet.i32 %3904, 0
  %3906 = extractvalue %dx.types.ResRet.i32 %3904, 1
  %3907 = or i32 %3896, 80
  %3908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3910 = extractvalue %dx.types.ResRet.f32 %3908, 3
  %3911 = or i32 %3896, 96
  %3912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.ResRet.f32 %3912, 1
  %3915 = extractvalue %dx.types.ResRet.f32 %3912, 2
  %3916 = extractvalue %dx.types.ResRet.f32 %3912, 3
  %3917 = or i32 %3896, 112
  %3918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 2
  %3920 = or i32 %3896, 128
  %3921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %3924 = extractvalue %dx.types.ResRet.f32 %3921, 2
  %3925 = extractvalue %dx.types.ResRet.f32 %3921, 3
  %3926 = or i32 %3896, 144
  %3927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3931 = extractvalue %dx.types.ResRet.f32 %3927, 3
  %3932 = or i32 %3896, 160
  %3933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = extractvalue %dx.types.ResRet.f32 %3933, 2
  %3937 = extractvalue %dx.types.ResRet.f32 %3933, 3
  %3938 = or i32 %3896, 192
  %3939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3938, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.i32 %3939, 0
  %3941 = or i32 %3896, 208
  %3942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = or i32 %3896, 248
  %3945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.ResRet.f32 %3945, 1
  %3948 = add nuw nsw i32 %3870, 1
  %3949 = bitcast float %3902 to i32
  %3950 = and i32 %3949, 512
  %3951 = icmp eq i32 %3950, 0
  %3952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3953 = extractvalue %dx.types.ResRet.f32 %3952, 0
  %3954 = extractvalue %dx.types.ResRet.f32 %3952, 1
  %3955 = extractvalue %dx.types.ResRet.f32 %3952, 2
  %3956 = extractvalue %dx.types.ResRet.f32 %3952, 3
  %3957 = call float @dx.op.dot4.f32(i32 56, float %3953, float %3954, float %3955, float %3956, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3958 = or i32 %3896, 16
  %3959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.ResRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.ResRet.f32 %3959, 2
  %3963 = extractvalue %dx.types.ResRet.f32 %3959, 3
  %3964 = call float @dx.op.dot4.f32(i32 56, float %3960, float %3961, float %3962, float %3963, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3965 = or i32 %3896, 32
  %3966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3967 = extractvalue %dx.types.ResRet.f32 %3966, 0
  %3968 = extractvalue %dx.types.ResRet.f32 %3966, 1
  %3969 = extractvalue %dx.types.ResRet.f32 %3966, 2
  %3970 = extractvalue %dx.types.ResRet.f32 %3966, 3
  %3971 = call float @dx.op.dot4.f32(i32 56, float %3967, float %3968, float %3969, float %3970, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3972 = call float @dx.op.unary.f32(i32 27, float %3957)  ; Round_ni(value)
  %3973 = call float @dx.op.unary.f32(i32 6, float %3972)  ; FAbs(value)
  %3974 = call float @dx.op.unary.f32(i32 27, float %3964)  ; Round_ni(value)
  %3975 = call float @dx.op.unary.f32(i32 6, float %3974)  ; FAbs(value)
  %3976 = call float @dx.op.unary.f32(i32 6, float %3971)  ; FAbs(value)
  %3977 = call float @dx.op.unary.f32(i32 27, float %3976)  ; Round_ni(value)
  %3978 = fadd fast float %3975, %3973
  %3979 = fadd fast float %3978, %3977
  %3980 = fcmp fast oeq float %3979, 0.000000e+00
  %3981 = call float @dx.op.dot4.f32(i32 56, float %3953, float %3954, float %3955, float %3956, float %3822, float %3823, float %3824, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3982 = call float @dx.op.dot4.f32(i32 56, float %3960, float %3961, float %3962, float %3963, float %3822, float %3823, float %3824, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3983 = call float @dx.op.dot4.f32(i32 56, float %3953, float %3954, float %3955, float %3956, float %3825, float %3826, float %3827, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3984 = call float @dx.op.dot4.f32(i32 56, float %3960, float %3961, float %3962, float %3963, float %3825, float %3826, float %3827, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3985 = fsub fast float %3981, %3957
  %3986 = fsub fast float %3983, %3957
  %3987 = fsub fast float %3982, %3964
  %3988 = fsub fast float %3984, %3964
  %3989 = call float @dx.op.dot3.f32(i32 55, float %3899, float %3900, float %3901, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %3990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.f32 %3990, 2
  %3992 = fadd fast float %3991, %3989
  %3993 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3990, 0
  %3995 = fcmp fast ogt float %3993, %3994
  %3996 = and i1 %3980, %3995
  %3997 = and i1 %3951, %3996
  br i1 %3997, label %4021, label %3998

; <label>:3998                                    ; preds = %4328, %4102, %4021, %3869
  %3999 = phi float [ %3871, %4021 ], [ %4105, %4102 ], [ %4105, %4328 ], [ %3871, %3869 ]
  %4000 = phi float [ %3872, %4021 ], [ %3872, %4102 ], [ %4304, %4328 ], [ %3872, %3869 ]
  %4001 = phi float [ %3873, %4021 ], [ %3873, %4102 ], [ %4302, %4328 ], [ %3873, %3869 ]
  %4002 = phi float [ %3874, %4021 ], [ %3874, %4102 ], [ %4229, %4328 ], [ %3874, %3869 ]
  %4003 = phi float [ %3875, %4021 ], [ %3875, %4102 ], [ %4227, %4328 ], [ %3875, %3869 ]
  %4004 = phi float [ %3876, %4021 ], [ %3876, %4102 ], [ %4272, %4328 ], [ %3876, %3869 ]
  %4005 = phi float [ %3877, %4021 ], [ %3877, %4102 ], [ %4273, %4328 ], [ %3877, %3869 ]
  %4006 = phi float [ %3878, %4021 ], [ %3878, %4102 ], [ %4274, %4328 ], [ %3878, %3869 ]
  %4007 = phi float [ %3879, %4021 ], [ %3879, %4102 ], [ %4338, %4328 ], [ %3879, %3869 ]
  %4008 = phi float [ %3880, %4021 ], [ %3880, %4102 ], [ %4339, %4328 ], [ %3880, %3869 ]
  %4009 = phi float [ %3881, %4021 ], [ %3881, %4102 ], [ %4340, %4328 ], [ %3881, %3869 ]
  %4010 = phi float [ %3882, %4021 ], [ %3882, %4102 ], [ %4208, %4328 ], [ %3882, %3869 ]
  %4011 = phi float [ %3883, %4021 ], [ %3883, %4102 ], [ %4209, %4328 ], [ %3883, %3869 ]
  %4012 = phi float [ %3884, %4021 ], [ %3884, %4102 ], [ %4210, %4328 ], [ %3884, %3869 ]
  %4013 = phi float [ %3885, %4021 ], [ %3885, %4102 ], [ %4282, %4328 ], [ %3885, %3869 ]
  %4014 = phi float [ %3886, %4021 ], [ %3886, %4102 ], [ %4279, %4328 ], [ %3886, %3869 ]
  %4015 = phi float [ %3887, %4021 ], [ %3887, %4102 ], [ %4276, %4328 ], [ %3887, %3869 ]
  %4016 = phi float [ %3888, %4021 ], [ %3888, %4102 ], [ %4225, %4328 ], [ %3888, %3869 ]
  %4017 = phi float [ %3889, %4021 ], [ %3889, %4102 ], [ %4220, %4328 ], [ %3889, %3869 ]
  %4018 = phi float [ %3890, %4021 ], [ %3890, %4102 ], [ %4221, %4328 ], [ %3890, %3869 ]
  %4019 = phi float [ %3891, %4021 ], [ %3891, %4102 ], [ %4222, %4328 ], [ %3891, %3869 ]
  %4020 = icmp eq i32 %3948, %3868
  br i1 %4020, label %4341, label %3869

; <label>:4021                                    ; preds = %3869
  %4022 = extractvalue %dx.types.ResRet.f32 %3918, 3
  %4023 = extractvalue %dx.types.ResRet.f32 %3918, 1
  %4024 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %4025 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %4026 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %4027 = extractvalue %dx.types.ResRet.i32 %3904, 3
  %4028 = extractvalue %dx.types.ResRet.i32 %3904, 2
  %4029 = add i32 %4027, 0
  %4030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4029, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4032 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4030, %dx.types.Handle %4031, float %3957, float %3964, float undef, float undef, i32 0, i32 0, i32 undef, float %3985, float %3987, float undef, float %3986, float %3988, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4033 = extractvalue %dx.types.ResRet.f32 %4032, 0
  %4034 = fmul fast float %4033, %4026
  %4035 = fadd fast float %4034, %4025
  %4036 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4037 = fmul fast float %3957, %3913
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %3914, float %3964, float %4037)  ; FMad(a,b,c)
  %4039 = fadd fast float %4038, %4024
  %4040 = fmul fast float %3957, %3915
  %4041 = call float @dx.op.tertiary.f32(i32 46, float %3916, float %3964, float %4040)  ; FMad(a,b,c)
  %4042 = fadd fast float %4041, %4023
  %4043 = fmul fast float %3985, %3913
  %4044 = call float @dx.op.tertiary.f32(i32 46, float %3914, float %3987, float %4043)  ; FMad(a,b,c)
  %4045 = fmul fast float %3985, %3915
  %4046 = call float @dx.op.tertiary.f32(i32 46, float %3916, float %3987, float %4045)  ; FMad(a,b,c)
  %4047 = fmul fast float %3986, %3913
  %4048 = call float @dx.op.tertiary.f32(i32 46, float %3914, float %3988, float %4047)  ; FMad(a,b,c)
  %4049 = fmul fast float %3986, %3915
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %3916, float %3988, float %4049)  ; FMad(a,b,c)
  %4051 = add i32 %4028, 0
  %4052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4051, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4053 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4052, %dx.types.Handle %4031, float %4039, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float %4044, float %4046, float undef, float %4048, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = and i32 %3949, 1024
  %4056 = icmp ne i32 %4055, 0
  %4057 = fcmp fast ogt float %4054, 0x3FE0101020000000
  %4058 = uitofp i1 %4057 to float
  %4059 = select i1 %4056, float %4058, float %4054
  %4060 = and i32 %3949, 8192
  %4061 = icmp ne i32 %4060, 0
  %4062 = select i1 %4061, float %4022, float 1.000000e+00
  %4063 = fmul fast float %3957, 2.000000e+00
  %4064 = fadd fast float %4063, -1.000000e+00
  %4065 = call float @dx.op.unary.f32(i32 6, float %4064)  ; FAbs(value)
  %4066 = fmul fast float %4065, %3946
  %4067 = fsub fast float %4066, %3946
  %4068 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4069 = fmul fast float %3964, 2.000000e+00
  %4070 = fadd fast float %4069, -1.000000e+00
  %4071 = call float @dx.op.unary.f32(i32 6, float %4070)  ; FAbs(value)
  %4072 = fmul fast float %4071, %3947
  %4073 = fsub fast float %4072, %3947
  %4074 = call float @dx.op.unary.f32(i32 7, float %4073)  ; Saturate(value)
  %4075 = fmul fast float %3976, %3909
  %4076 = fsub fast float %4075, %3909
  %4077 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4078 = fmul fast float %4036, %4062
  %4079 = fmul fast float %4078, %4033
  %4080 = fmul fast float %4079, %4068
  %4081 = fmul fast float %4080, %4059
  %4082 = fmul fast float %4081, %4074
  %4083 = fmul fast float %4082, %4077
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 1
  %4086 = extractvalue %dx.types.CBufRet.f32 %4084, 0
  %4087 = fsub fast float %3993, %4086
  %4088 = fmul fast float %4087, %4085
  %4089 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4090 = fmul fast float %4083, %3910
  %4091 = fadd fast float %4083, %3910
  %4092 = fmul fast float %4091, %3919
  %4093 = fsub fast float %4092, %3919
  %4094 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4095 = and i32 %3949, 128
  %4096 = icmp ne i32 %4095, 0
  %4097 = select i1 %4096, float %4094, float %4090
  %4098 = fmul fast float %4097, %4089
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 0
  %4101 = fcmp fast ugt float %4098, %4100
  br i1 %4101, label %4102, label %3998

; <label>:4102                                    ; preds = %4021
  %4103 = select i1 %4061, float %4098, float 0.000000e+00
  %4104 = fadd fast float %4103, %3871
  %4105 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  br i1 %4061, label %3998, label %4106

; <label>:4106                                    ; preds = %4102
  %4107 = and i32 %3949, 4
  %4108 = and i32 %3949, 8
  %4109 = add i32 %3905, 0
  %4110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4109, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4110, %dx.types.Handle %4111, float %4039, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float %4044, float %4046, float undef, float %4048, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = extractvalue %dx.types.ResRet.f32 %4112, 1
  %4115 = extractvalue %dx.types.ResRet.f32 %4112, 2
  %4116 = extractvalue %dx.types.ResRet.f32 %4112, 3
  %4117 = bitcast float %3931 to i32
  %4118 = and i32 %4117, 255
  %4119 = uitofp i32 %4118 to float
  %4120 = lshr i32 %4117, 8
  %4121 = and i32 %4120, 255
  %4122 = uitofp i32 %4121 to float
  %4123 = fmul fast float %4116, %4119
  %4124 = fadd fast float %4123, %4122
  %4125 = fmul fast float %4124, 0x3F70101000000000
  %4126 = add i32 %3906, 0
  %4127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4126, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4128 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4127, %dx.types.Handle %4111, float %4039, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float %4044, float %4046, float undef, float %4048, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4129 = extractvalue %dx.types.ResRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.ResRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.ResRet.f32 %4128, 2
  %4132 = extractvalue %dx.types.ResRet.f32 %4128, 3
  %4133 = bitcast float %3925 to i32
  %4134 = and i32 %4133, 255
  %4135 = uitofp i32 %4134 to float
  %4136 = lshr i32 %4133, 8
  %4137 = and i32 %4136, 255
  %4138 = uitofp i32 %4137 to float
  %4139 = lshr i32 %4133, 16
  %4140 = and i32 %4139, 255
  %4141 = uitofp i32 %4140 to float
  %4142 = fmul fast float %4141, 0x3F70101000000000
  %4143 = fmul fast float %4129, %4135
  %4144 = fadd fast float %4143, %4138
  %4145 = fmul fast float %4144, 0x3F70101000000000
  %4146 = fadd fast float %4130, -5.000000e-01
  %4147 = fadd fast float %4132, -5.000000e-01
  %4148 = fmul fast float %4146, %4142
  %4149 = fmul fast float %4147, %4142
  %4150 = fadd fast float %4148, 5.000000e-01
  %4151 = fadd fast float %4149, 5.000000e-01
  %4152 = fmul fast float %4113, %3934
  %4153 = fmul fast float %4114, %3935
  %4154 = fmul fast float %4115, %3936
  %4155 = fmul fast float %4150, 2.000000e+00
  %4156 = fadd fast float %4155, -1.000000e+00
  %4157 = fmul fast float %4151, 2.000000e+00
  %4158 = fadd fast float %4157, -1.000000e+00
  %4159 = fadd fast float %4156, %4158
  %4160 = fmul fast float %4159, 5.000000e-01
  %4161 = fsub fast float %4156, %4158
  %4162 = fmul fast float %4161, 5.000000e-01
  %4163 = call float @dx.op.unary.f32(i32 6, float %4160)  ; FAbs(value)
  %4164 = fsub fast float 1.000000e+00, %4163
  %4165 = call float @dx.op.unary.f32(i32 6, float %4162)  ; FAbs(value)
  %4166 = fsub fast float %4164, %4165
  %4167 = call float @dx.op.dot3.f32(i32 55, float %4160, float %4162, float %4166, float %4160, float %4162, float %4166)  ; Dot3(ax,ay,az,bx,by,bz)
  %4168 = call float @dx.op.unary.f32(i32 25, float %4167)  ; Rsqrt(value)
  %4169 = fmul fast float %4160, %4168
  %4170 = fmul fast float %4162, %4168
  %4171 = fmul fast float %4168, %4166
  %4172 = fmul fast float %4171, %3899
  %4173 = fmul fast float %4171, %3900
  %4174 = fmul fast float %4171, %3901
  %4175 = fmul fast float %4169, %3922
  %4176 = fmul fast float %4169, %3923
  %4177 = fmul fast float %4169, %3924
  %4178 = fadd fast float %4175, %4172
  %4179 = fadd fast float %4176, %4173
  %4180 = fadd fast float %4177, %4174
  %4181 = fmul fast float %4170, %3928
  %4182 = fmul fast float %4170, %3929
  %4183 = fmul fast float %4170, %3930
  %4184 = fadd fast float %4178, %4181
  %4185 = fadd fast float %4179, %4182
  %4186 = fadd fast float %4180, %4183
  %4187 = call float @dx.op.dot3.f32(i32 55, float %4184, float %4185, float %4186, float %4184, float %4185, float %4186)  ; Dot3(ax,ay,az,bx,by,bz)
  %4188 = call float @dx.op.unary.f32(i32 25, float %4187)  ; Rsqrt(value)
  %4189 = fmul fast float %4184, %4188
  %4190 = fmul fast float %4185, %4188
  %4191 = fmul fast float %4186, %4188
  %4192 = icmp ne i32 %4108, 0
  %4193 = select i1 %4192, float 1.000000e+00, float 0.000000e+00
  %4194 = fmul fast float %4098, %4193
  %4195 = and i32 %3949, 1
  %4196 = icmp eq i32 %4195, 0
  br i1 %4196, label %4197, label %4201

; <label>:4197                                    ; preds = %4106
  %4198 = fsub fast float %4189, %3882
  %4199 = fsub fast float %4190, %3883
  %4200 = fsub fast float %4191, %3884
  br label %4201

; <label>:4201                                    ; preds = %4197, %4106
  %4202 = phi float [ %4198, %4197 ], [ %4189, %4106 ]
  %4203 = phi float [ %4199, %4197 ], [ %4190, %4106 ]
  %4204 = phi float [ %4200, %4197 ], [ %4191, %4106 ]
  %4205 = fmul float %4204, %4194
  %4206 = fmul float %4203, %4194
  %4207 = fmul float %4202, %4194
  %4208 = fadd fast float %4207, %3882
  %4209 = fadd fast float %4206, %3883
  %4210 = fadd fast float %4205, %3884
  %4211 = icmp ne i32 %4107, 0
  %4212 = select i1 %4211, float 1.000000e+00, float 0.000000e+00
  %4213 = fmul fast float %4098, %4212
  %4214 = fsub fast float %4152, %3889
  %4215 = fsub fast float %4153, %3890
  %4216 = fsub fast float %4154, %3891
  %4217 = fmul fast float %4214, %4213
  %4218 = fmul fast float %4215, %4213
  %4219 = fmul fast float %4216, %4213
  %4220 = fadd fast float %4217, %3889
  %4221 = fadd fast float %4218, %3890
  %4222 = fadd fast float %4219, %3891
  %4223 = fsub fast float %4125, %3888
  %4224 = fmul fast float %4223, %4213
  %4225 = fadd fast float %4224, %3888
  %4226 = fmul fast float %4213, %3875
  %4227 = fsub fast float %3875, %4226
  %4228 = fmul fast float %4213, %3874
  %4229 = fsub fast float %3874, %4228
  %4230 = bitcast float %3943 to i32
  %4231 = lshr i32 %4230, 16
  %4232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4231)  ; LegacyF16ToF32(value)
  %4233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.i32 %4233, 0
  %4235 = and i32 %4234, 1
  %4236 = icmp eq i32 %4235, 0
  br i1 %4236, label %4237, label %4262

; <label>:4237                                    ; preds = %4201
  %4238 = fadd fast float %4125, 0xBFB99999A0000000
  %4239 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4240 = fmul fast float %4239, 0x3FF1C71C80000000
  %4241 = fsub fast float 1.000000e+00, %4240
  %4242 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4243 = fmul fast float %4242, %4152
  %4244 = fmul fast float %4242, %4153
  %4245 = fmul fast float %4242, %4154
  %4246 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4247 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4248 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4249 = call float @dx.op.binary.f32(i32 35, float %4247, float %4248)  ; FMax(a,b)
  %4250 = call float @dx.op.binary.f32(i32 35, float %4246, float %4249)  ; FMax(a,b)
  %4251 = fcmp fast ogt float %4250, 0.000000e+00
  %4252 = bitcast float %4250 to i32
  %4253 = sub nsw i32 2129859010, %4252
  %4254 = bitcast i32 %4253 to float
  %4255 = select i1 %4251, float %4254, float 0.000000e+00
  %4256 = fmul fast float %4246, %4232
  %4257 = fmul fast float %4247, %4232
  %4258 = fmul fast float %4248, %4232
  %4259 = fmul fast float %4256, %4255
  %4260 = fmul fast float %4257, %4255
  %4261 = fmul fast float %4258, %4255
  br label %4262

; <label>:4262                                    ; preds = %4237, %4201
  %4263 = phi float [ %4232, %4201 ], [ %4259, %4237 ]
  %4264 = phi float [ %4232, %4201 ], [ %4260, %4237 ]
  %4265 = phi float [ %4232, %4201 ], [ %4261, %4237 ]
  %4266 = fsub fast float %4263, %3876
  %4267 = fsub fast float %4264, %3877
  %4268 = fsub fast float %4265, %3878
  %4269 = fmul fast float %4266, %4213
  %4270 = fmul fast float %4267, %4213
  %4271 = fmul fast float %4268, %4213
  %4272 = fadd fast float %4269, %3876
  %4273 = fadd fast float %4270, %3877
  %4274 = fadd fast float %4271, %3878
  %4275 = fadd fast float %4098, %3887
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = fsub fast float %4145, %3886
  %4278 = fmul fast float %4277, %4194
  %4279 = fadd fast float %4278, %3886
  %4280 = fsub fast float %4131, %3885
  %4281 = fmul fast float %4280, %4194
  %4282 = fadd fast float %4281, %3885
  %4283 = call float @dx.op.dot3.f32(i32 55, float %4152, float %4153, float %4154, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.CBufRet.f32 %4284, 1
  %4287 = fmul fast float %4286, %4283
  %4288 = fadd fast float %4287, %4285
  %4289 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4290 = bitcast float %3937 to i32
  %4291 = and i32 %4290, 65535
  %4292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4291)  ; LegacyF16ToF32(value)
  %4293 = lshr i32 %4290, 16
  %4294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4293)  ; LegacyF16ToF32(value)
  %4295 = fcmp fast oge float %4292, 0.000000e+00
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 0
  %4298 = select i1 %4295, float %4292, float %4297
  %4299 = fadd fast float %4298, %4294
  %4300 = fsub fast float %4289, %3873
  %4301 = fmul fast float %4300, %4098
  %4302 = fadd fast float %4301, %3873
  %4303 = fmul fast float %4299, %4098
  %4304 = call float @dx.op.binary.f32(i32 35, float %3872, float %4303)  ; FMax(a,b)
  %4305 = and i32 %3949, 16
  %4306 = icmp eq i32 %4305, 0
  br i1 %4306, label %4328, label %4307

; <label>:4307                                    ; preds = %4262
  %4308 = add i32 %3940, 0
  %4309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4308, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4310 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4309, %dx.types.Handle %4111, float %4039, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float %4044, float %4046, float undef, float %4048, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4311 = extractvalue %dx.types.ResRet.f32 %4310, 0
  %4312 = extractvalue %dx.types.ResRet.f32 %4310, 1
  %4313 = extractvalue %dx.types.ResRet.f32 %4310, 2
  %4314 = and i32 %4230, 65535
  %4315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4314)  ; LegacyF16ToF32(value)
  %4316 = fmul fast float %4311, %3934
  %4317 = fmul fast float %4312, %3935
  %4318 = fmul fast float %4313, %3936
  %4319 = and i32 %3949, 16384
  %4320 = icmp ne i32 %4319, 0
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 0
  %4323 = select i1 %4320, float %4322, float 1.000000e+00
  %4324 = fmul fast float %4323, %4315
  %4325 = fmul fast float %4316, %4324
  %4326 = fmul fast float %4317, %4324
  %4327 = fmul fast float %4318, %4324
  br label %4328

; <label>:4328                                    ; preds = %4307, %4262
  %4329 = phi float [ %4325, %4307 ], [ 0.000000e+00, %4262 ]
  %4330 = phi float [ %4326, %4307 ], [ 0.000000e+00, %4262 ]
  %4331 = phi float [ %4327, %4307 ], [ 0.000000e+00, %4262 ]
  %4332 = fsub fast float %4329, %3879
  %4333 = fsub fast float %4330, %3880
  %4334 = fsub fast float %4331, %3881
  %4335 = fmul fast float %4332, %4098
  %4336 = fmul fast float %4333, %4098
  %4337 = fmul fast float %4334, %4098
  %4338 = fadd fast float %4335, %3879
  %4339 = fadd fast float %4336, %3880
  %4340 = fadd fast float %4337, %3881
  br label %3998

; <label>:4341                                    ; preds = %3998
  br label %4342

; <label>:4342                                    ; preds = %4341, %3815
  %4343 = phi float [ 0.000000e+00, %3815 ], [ %3999, %4341 ]
  %4344 = phi float [ %3784, %3815 ], [ %4000, %4341 ]
  %4345 = phi float [ %3782, %3815 ], [ %4001, %4341 ]
  %4346 = phi float [ 0.000000e+00, %3815 ], [ %4002, %4341 ]
  %4347 = phi float [ 0.000000e+00, %3815 ], [ %4003, %4341 ]
  %4348 = phi float [ %3772, %3815 ], [ %4004, %4341 ]
  %4349 = phi float [ %3773, %3815 ], [ %4005, %4341 ]
  %4350 = phi float [ %3774, %3815 ], [ %4006, %4341 ]
  %4351 = phi float [ %3775, %3815 ], [ %4007, %4341 ]
  %4352 = phi float [ %3776, %3815 ], [ %4008, %4341 ]
  %4353 = phi float [ %3777, %3815 ], [ %4009, %4341 ]
  %4354 = phi float [ %3810, %3815 ], [ %4010, %4341 ]
  %4355 = phi float [ %3811, %3815 ], [ %4011, %4341 ]
  %4356 = phi float [ %3812, %3815 ], [ %4012, %4341 ]
  %4357 = phi float [ %3780, %3815 ], [ %4013, %4341 ]
  %4358 = phi float [ %3779, %3815 ], [ %4014, %4341 ]
  %4359 = phi float [ 0.000000e+00, %3815 ], [ %4015, %4341 ]
  %4360 = phi float [ %3778, %3815 ], [ %4016, %4341 ]
  %4361 = phi float [ %3769, %3815 ], [ %4017, %4341 ]
  %4362 = phi float [ %3770, %3815 ], [ %4018, %4341 ]
  %4363 = phi float [ %3771, %3815 ], [ %4019, %4341 ]
  %4364 = call float @dx.op.dot3.f32(i32 55, float %4354, float %4355, float %4356, float %4354, float %4355, float %4356)  ; Dot3(ax,ay,az,bx,by,bz)
  %4365 = call float @dx.op.unary.f32(i32 25, float %4364)  ; Rsqrt(value)
  %4366 = fmul fast float %4365, %4354
  %4367 = fmul fast float %4365, %4355
  %4368 = fmul fast float %4365, %4356
  %4369 = fadd fast float %4359, %943
  %4370 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4371 = call float @dx.op.dot3.f32(i32 55, float %4366, float %4367, float %4368, float %4366, float %4367, float %4368)  ; Dot3(ax,ay,az,bx,by,bz)
  %4372 = call float @dx.op.unary.f32(i32 25, float %4371)  ; Rsqrt(value)
  %4373 = fmul fast float %4372, %4366
  %4374 = fmul fast float %4372, %4367
  %4375 = fmul fast float %4372, %4368
  br label %4376

; <label>:4376                                    ; preds = %4342, %3766
  %4377 = phi float [ %4373, %4342 ], [ %3810, %3766 ]
  %4378 = phi float [ %4374, %4342 ], [ %3811, %3766 ]
  %4379 = phi float [ %4375, %4342 ], [ %3812, %3766 ]
  %4380 = phi float [ %4361, %4342 ], [ %3769, %3766 ]
  %4381 = phi float [ %4362, %4342 ], [ %3770, %3766 ]
  %4382 = phi float [ %4363, %4342 ], [ %3771, %3766 ]
  %4383 = phi float [ %4351, %4342 ], [ %3775, %3766 ]
  %4384 = phi float [ %4352, %4342 ], [ %3776, %3766 ]
  %4385 = phi float [ %4353, %4342 ], [ %3777, %3766 ]
  %4386 = phi float [ %4348, %4342 ], [ %3772, %3766 ]
  %4387 = phi float [ %4349, %4342 ], [ %3773, %3766 ]
  %4388 = phi float [ %4350, %4342 ], [ %3774, %3766 ]
  %4389 = phi float [ %4360, %4342 ], [ %3778, %3766 ]
  %4390 = phi float [ %4370, %4342 ], [ %943, %3766 ]
  %4391 = phi float [ %4358, %4342 ], [ %3779, %3766 ]
  %4392 = phi float [ %4357, %4342 ], [ %3780, %3766 ]
  %4393 = phi float [ %4347, %4342 ], [ 0.000000e+00, %3766 ]
  %4394 = phi float [ %4346, %4342 ], [ 0.000000e+00, %3766 ]
  %4395 = phi float [ %4343, %4342 ], [ 0.000000e+00, %3766 ]
  %4396 = phi float [ %4344, %4342 ], [ %3784, %3766 ]
  %4397 = phi float [ %4345, %4342 ], [ %3782, %3766 ]
  %4398 = fadd fast float %4389, 0xBFB99999A0000000
  %4399 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4400 = fmul fast float %4399, 0x3FF1C71C80000000
  %4401 = call float @dx.op.binary.f32(i32 36, float %4389, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4402 = fsub fast float 1.000000e+00, %4400
  %4403 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4404 = fmul fast float %4403, %4380
  %4405 = fmul fast float %4403, %4381
  %4406 = fmul fast float %4403, %4382
  %4407 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4408 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4409 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4410 = fmul fast float %4400, %4380
  %4411 = fmul fast float %4400, %4381
  %4412 = fmul fast float %4400, %4382
  %4413 = fadd fast float %4410, %4401
  %4414 = fadd fast float %4411, %4401
  %4415 = fadd fast float %4412, %4401
  %4416 = call float @dx.op.unary.f32(i32 7, float %4413)  ; Saturate(value)
  %4417 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4418 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4419 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4421 = extractvalue %dx.types.ResRet.i32 %4420, 0
  %4422 = and i32 %4421, 1
  %4423 = icmp eq i32 %4422, 0
  br i1 %4423, label %4438, label %4424

; <label>:4424                                    ; preds = %4376
  %4425 = call float @dx.op.binary.f32(i32 35, float %4408, float %4409)  ; FMax(a,b)
  %4426 = call float @dx.op.binary.f32(i32 35, float %4407, float %4425)  ; FMax(a,b)
  %4427 = fcmp fast ogt float %4426, 0.000000e+00
  %4428 = bitcast float %4426 to i32
  %4429 = sub nsw i32 2129859010, %4428
  %4430 = bitcast i32 %4429 to float
  %4431 = select i1 %4427, float %4430, float 0.000000e+00
  %4432 = fmul fast float %4407, %4386
  %4433 = fmul fast float %4408, %4387
  %4434 = fmul fast float %4409, %4388
  %4435 = fmul fast float %4432, %4431
  %4436 = fmul fast float %4433, %4431
  %4437 = fmul fast float %4434, %4431
  br label %4438

; <label>:4438                                    ; preds = %4424, %4376
  %4439 = phi float [ %4435, %4424 ], [ %4386, %4376 ]
  %4440 = phi float [ %4436, %4424 ], [ %4387, %4376 ]
  %4441 = phi float [ %4437, %4424 ], [ %4388, %4376 ]
  %4442 = fadd fast float %4407, 0xBFD51EB860000000
  %4443 = fadd fast float %4408, 0xBFD51EB860000000
  %4444 = fadd fast float %4409, 0xBFD51EB860000000
  %4445 = fmul fast float %4442, %4442
  %4446 = fmul fast float %4443, %4443
  %4447 = fmul fast float %4444, %4444
  %4448 = fmul fast float %4445, %4445
  %4449 = fmul fast float %4448, 1.000000e+02
  %4450 = fmul fast float %4446, %4446
  %4451 = fmul fast float %4450, 1.000000e+02
  %4452 = fmul fast float %4447, %4447
  %4453 = fmul fast float %4452, 1.000000e+02
  %4454 = fadd fast float %4449, 3.500000e+00
  %4455 = fadd fast float %4451, 3.500000e+00
  %4456 = fadd fast float %4453, 3.500000e+00
  %4457 = call float @dx.op.binary.f32(i32 35, float %4439, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4458 = call float @dx.op.binary.f32(i32 35, float %4440, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4459 = call float @dx.op.binary.f32(i32 35, float %4441, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4460 = fdiv fast float %4454, %4457
  %4461 = fdiv fast float %4455, %4458
  %4462 = fdiv fast float %4456, %4459
  %4463 = fmul fast float %3781, 0xBFF7154760000000
  %4464 = fmul fast float %4463, %4460
  %4465 = call float @dx.op.unary.f32(i32 21, float %4464)  ; Exp(value)
  %4466 = fmul fast float %4465, 2.500000e-01
  %4467 = fmul fast float %3781, 0xBFDEC709E0000000
  %4468 = fmul fast float %4467, %4460
  %4469 = call float @dx.op.unary.f32(i32 21, float %4468)  ; Exp(value)
  %4470 = fmul fast float %4469, 7.500000e-01
  %4471 = fmul fast float %4463, %4461
  %4472 = call float @dx.op.unary.f32(i32 21, float %4471)  ; Exp(value)
  %4473 = fmul fast float %4472, 2.500000e-01
  %4474 = fmul fast float %4467, %4461
  %4475 = call float @dx.op.unary.f32(i32 21, float %4474)  ; Exp(value)
  %4476 = fmul fast float %4475, 7.500000e-01
  %4477 = fmul fast float %4463, %4462
  %4478 = call float @dx.op.unary.f32(i32 21, float %4477)  ; Exp(value)
  %4479 = fmul fast float %4478, 2.500000e-01
  %4480 = fmul fast float %4467, %4462
  %4481 = call float @dx.op.unary.f32(i32 21, float %4480)  ; Exp(value)
  %4482 = fmul fast float %4481, 7.500000e-01
  %4483 = fadd fast float %4466, %4470
  %4484 = fadd fast float %4473, %4476
  %4485 = fadd fast float %4479, %4482
  %4486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.i32 %4486, 3
  %4488 = and i32 %4487, 8
  %4489 = icmp ne i32 %4488, 0
  %4490 = call float @dx.op.binary.f32(i32 35, float %4407, float %4380)  ; FMax(a,b)
  %4491 = call float @dx.op.binary.f32(i32 35, float %4408, float %4380)  ; FMax(a,b)
  %4492 = call float @dx.op.binary.f32(i32 35, float %4409, float %4380)  ; FMax(a,b)
  %4493 = call float @dx.op.dot3.f32(i32 55, float %4407, float %4408, float %4409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4494 = select i1 %168, float %4380, float %4407
  %4495 = select i1 %168, float %4493, float %4408
  %4496 = select i1 %168, float 1.000000e+00, float %4409
  %4497 = select i1 %4489, float %4490, float %4494
  %4498 = select i1 %4489, float %4491, float %4495
  %4499 = select i1 %4489, float %4492, float %4496
  %4500 = and i32 %144, 3
  %4501 = select i1 %138, i32 %4500, i32 0
  %4502 = icmp eq i32 %4501, 1
  br i1 %4502, label %4503, label %4579

; <label>:4503                                    ; preds = %4438
  %4504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4505 = extractvalue %dx.types.CBufRet.f32 %4504, 0
  %4506 = extractvalue %dx.types.CBufRet.f32 %4504, 1
  %4507 = fadd fast float %4505, %127
  %4508 = fadd fast float %4506, %128
  %4509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.CBufRet.f32 %4509, 1
  %4512 = fsub fast float %4507, %4510
  %4513 = fsub fast float %4508, %4511
  %4514 = fmul fast float %4512, %4512
  %4515 = fmul fast float %4513, %4513
  %4516 = fadd fast float %4514, %4515
  %4517 = call float @dx.op.unary.f32(i32 24, float %4516)  ; Sqrt(value)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4509, 2
  %4519 = fcmp fast olt float %4517, %4518
  br i1 %4519, label %4520, label %4573

; <label>:4520                                    ; preds = %4503
  %4521 = extractvalue %dx.types.CBufRet.f32 %4504, 2
  %4522 = fadd fast float %4521, %129
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 0
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 0
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 0
  %4529 = extractvalue %dx.types.CBufRet.f32 %4523, 1
  %4530 = extractvalue %dx.types.CBufRet.f32 %4525, 1
  %4531 = extractvalue %dx.types.CBufRet.f32 %4527, 1
  %4532 = extractvalue %dx.types.CBufRet.f32 %4523, 3
  %4533 = extractvalue %dx.types.CBufRet.f32 %4525, 3
  %4534 = extractvalue %dx.types.CBufRet.f32 %4527, 3
  %4535 = fadd fast float %4532, %4507
  %4536 = fadd fast float %4533, %4508
  %4537 = fadd fast float %4522, %4534
  %4538 = fmul fast float %4535, %4524
  %4539 = call float @dx.op.tertiary.f32(i32 46, float %4536, float %4526, float %4538)  ; FMad(a,b,c)
  %4540 = call float @dx.op.tertiary.f32(i32 46, float %4537, float %4528, float %4539)  ; FMad(a,b,c)
  %4541 = fmul fast float %4535, %4529
  %4542 = call float @dx.op.tertiary.f32(i32 46, float %4536, float %4530, float %4541)  ; FMad(a,b,c)
  %4543 = call float @dx.op.tertiary.f32(i32 46, float %4537, float %4531, float %4542)  ; FMad(a,b,c)
  %4544 = fsub fast float %4540, %4532
  %4545 = fsub fast float %4543, %4533
  %4546 = fsub fast float %4544, %4510
  %4547 = fadd fast float %4546, %4518
  %4548 = fsub fast float %4545, %4511
  %4549 = fadd fast float %4548, %4518
  %4550 = extractvalue %dx.types.CBufRet.f32 %4509, 3
  %4551 = fmul fast float %4547, %4550
  %4552 = fmul fast float %4549, %4550
  %4553 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4554 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4555 = fsub fast float 1.000000e+00, %4553
  %4556 = fsub fast float 1.000000e+00, %4554
  %4557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %28, float %4555, float %4556, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = fcmp fast ugt float %4558, 0.000000e+00
  br i1 %4559, label %4560, label %4573

; <label>:4560                                    ; preds = %4520
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 2
  %4563 = fmul fast float %4562, %4558
  %4564 = extractvalue %dx.types.CBufRet.f32 %4561, 3
  %4565 = fadd fast float %4564, %4563
  %4566 = extractvalue %dx.types.CBufRet.f32 %4527, 2
  %4567 = fadd fast float %4565, %4534
  %4568 = fmul fast float %4540, %4528
  %4569 = call float @dx.op.tertiary.f32(i32 46, float %4543, float %4531, float %4568)  ; FMad(a,b,c)
  %4570 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4566, float %4569)  ; FMad(a,b,c)
  %4571 = fsub fast float %4570, %4534
  %4572 = fsub fast float %4571, %4521
  br label %4573

; <label>:4573                                    ; preds = %4560, %4520, %4503
  %4574 = phi i1 [ true, %4560 ], [ false, %4520 ], [ false, %4503 ]
  %4575 = phi float [ %4572, %4560 ], [ -1.310720e+05, %4520 ], [ -1.310720e+05, %4503 ]
  %4576 = fsub fast float %4575, %129
  %4577 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4578 = select i1 %4574, float %4577, float 1.000000e+00
  br label %4579

; <label>:4579                                    ; preds = %4573, %4438
  %4580 = phi float [ %4578, %4573 ], [ 0.000000e+00, %4438 ]
  %4581 = icmp eq i32 %4501, 3
  %4582 = select i1 %4581, float 1.000000e+00, float %4580
  %4583 = call float @dx.op.binary.f32(i32 35, float %4395, float %4582)  ; FMax(a,b)
  %4584 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4585 = fcmp fast une float %4584, 0.000000e+00
  %4586 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %4587 = call float @dx.op.unary.f32(i32 25, float %4586)  ; Rsqrt(value)
  br i1 %4585, label %4595, label %4588

; <label>:4588                                    ; preds = %4579
  %4589 = fmul fast float %4587, %127
  %4590 = fmul fast float %4587, %128
  %4591 = fmul fast float %4587, %129
  %4592 = fsub fast float -0.000000e+00, %4589
  %4593 = fsub fast float -0.000000e+00, %4590
  %4594 = fsub fast float -0.000000e+00, %4591
  br label %4763

; <label>:4595                                    ; preds = %4579
  %4596 = fmul fast float %127, %4587
  %4597 = fsub fast float -0.000000e+00, %4596
  %4598 = fmul fast float %128, %4587
  %4599 = fsub fast float -0.000000e+00, %4598
  %4600 = fmul fast float %129, %4587
  %4601 = fsub fast float -0.000000e+00, %4600
  %4602 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4599, float %4601, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4603 = fmul fast float %4584, 2.500000e+00
  %4604 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4605 = fmul fast float %4584, 0x4013FFFFE0000000
  %4606 = fadd fast float %4605, 0xBFFFFFFFE0000000
  %4607 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4608 = fmul fast float %4584, 0x4004000020000000
  %4609 = fadd fast float %4608, 0xBFF8000040000000
  %4610 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4611 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4612 = fmul fast float %4398, 1.000000e+01
  %4613 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4614 = fmul fast float %4613, 2.000000e+00
  %4615 = fsub fast float 3.000000e+00, %4614
  %4616 = fmul fast float %4613, %4613
  %4617 = fmul fast float %4616, %4615
  %4618 = fsub fast float 1.000000e+00, %4617
  %4619 = fsub fast float 0x3FE3333340000000, %4419
  %4620 = fmul fast float %4619, 0x400AAAAAA0000000
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = fmul fast float %4618, %4621
  %4623 = fmul fast float %4497, 0x3FEA2B8620000000
  %4624 = fmul fast float %4498, 0x3FEA2B8620000000
  %4625 = fmul fast float %4499, 0x3FEA2B8620000000
  %4626 = fadd fast float %4623, 0x3FC81DFBA0000000
  %4627 = fmul fast float %4626, %4497
  %4628 = fadd fast float %4627, 0x3F910E6020000000
  %4629 = fadd fast float %4624, 0x3FC81DFBA0000000
  %4630 = fmul fast float %4629, %4498
  %4631 = fadd fast float %4630, 0x3F910E6020000000
  %4632 = fadd fast float %4625, 0x3FC81DFBA0000000
  %4633 = fmul fast float %4632, %4499
  %4634 = fadd fast float %4633, 0x3F910E6020000000
  %4635 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4636 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4638 = fsub fast float %4635, %4497
  %4639 = fsub fast float %4636, %4498
  %4640 = fsub fast float %4637, %4499
  %4641 = fmul fast float %4638, %4611
  %4642 = fmul fast float %4641, %4622
  %4643 = fmul fast float %4639, %4611
  %4644 = fmul fast float %4643, %4622
  %4645 = fmul fast float %4640, %4611
  %4646 = fmul fast float %4645, %4622
  %4647 = fadd fast float %4642, %4497
  %4648 = fadd fast float %4644, %4498
  %4649 = fadd fast float %4646, %4499
  %4650 = fmul fast float %4392, %4392
  %4651 = fmul fast float %4650, %4650
  %4652 = fadd fast float %4607, 1.000000e+00
  %4653 = fsub fast float %4652, %4622
  %4654 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4655 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4656 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4657 = fsub fast float 1.000000e+00, %4651
  %4658 = call float @dx.op.binary.f32(i32 36, float %4654, float %4657)  ; FMin(a,b)
  %4659 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4660 = call float @dx.op.binary.f32(i32 35, float %4658, float %4659)  ; FMax(a,b)
  %4661 = fadd fast float %4656, 0xBFE4CCCCC0000000
  %4662 = fmul fast float %4661, 0x4006DB6DA0000000
  %4663 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4664 = fmul fast float %4663, 2.000000e+00
  %4665 = fsub fast float 3.000000e+00, %4664
  %4666 = bitcast float %4416 to i32
  %4667 = ashr i32 %4666, 1
  %4668 = add nsw i32 %4667, 532487669
  %4669 = bitcast i32 %4668 to float
  %4670 = fsub fast float 1.000000e+00, %4669
  %4671 = bitcast float %4670 to i32
  %4672 = sub nsw i32 2129859010, %4671
  %4673 = bitcast i32 %4672 to float
  %4674 = fmul fast float %4673, 2.000000e+00
  %4675 = bitcast float %4417 to i32
  %4676 = ashr i32 %4675, 1
  %4677 = add nsw i32 %4676, 532487669
  %4678 = bitcast i32 %4677 to float
  %4679 = fsub fast float 1.000000e+00, %4678
  %4680 = bitcast float %4679 to i32
  %4681 = sub nsw i32 2129859010, %4680
  %4682 = bitcast i32 %4681 to float
  %4683 = fmul fast float %4682, 2.000000e+00
  %4684 = bitcast float %4418 to i32
  %4685 = ashr i32 %4684, 1
  %4686 = add nsw i32 %4685, 532487669
  %4687 = bitcast i32 %4686 to float
  %4688 = fsub fast float 1.000000e+00, %4687
  %4689 = bitcast float %4688 to i32
  %4690 = sub nsw i32 2129859010, %4689
  %4691 = bitcast i32 %4690 to float
  %4692 = fmul fast float %4691, 2.000000e+00
  %4693 = fsub fast float 0x4002A9FBE0000000, %4674
  %4694 = fadd fast float %4674, 0x3FD54FDF00000000
  %4695 = bitcast float %4694 to i32
  %4696 = sub nsw i32 2129859010, %4695
  %4697 = bitcast i32 %4696 to float
  %4698 = fmul fast float %4697, %4693
  %4699 = fmul fast float %4698, %4698
  %4700 = fsub fast float 0x4002A9FBE0000000, %4683
  %4701 = fadd fast float %4683, 0x3FD54FDF00000000
  %4702 = bitcast float %4701 to i32
  %4703 = sub nsw i32 2129859010, %4702
  %4704 = bitcast i32 %4703 to float
  %4705 = fmul fast float %4704, %4700
  %4706 = fmul fast float %4705, %4705
  %4707 = fsub fast float 0x4002A9FBE0000000, %4692
  %4708 = fadd fast float %4692, 0x3FD54FDF00000000
  %4709 = bitcast float %4708 to i32
  %4710 = sub nsw i32 2129859010, %4709
  %4711 = bitcast i32 %4710 to float
  %4712 = fmul fast float %4711, %4707
  %4713 = fmul fast float %4712, %4712
  %4714 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4699)  ; FMax(a,b)
  %4715 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4706)  ; FMax(a,b)
  %4716 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4713)  ; FMax(a,b)
  %4717 = fsub fast float 1.000000e+00, %4602
  %4718 = fadd fast float %4717, %4618
  %4719 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4720 = fsub fast float 1.000000e+00, %4582
  %4721 = fmul fast float %4660, %4720
  %4722 = fmul fast float %4663, %4663
  %4723 = fmul fast float %4722, %4721
  %4724 = fmul fast float %4723, %4665
  %4725 = fmul fast float %4720, 0xBFE99999A0000000
  %4726 = fmul fast float %4725, %4611
  %4727 = fmul fast float %4726, %4622
  %4728 = fadd fast float %4727, 1.000000e+00
  %4729 = fadd fast float %4419, -1.000000e+00
  %4730 = fmul fast float %4728, %4729
  %4731 = fadd fast float %4730, 1.000000e+00
  %4732 = fsub fast float %4714, %4416
  %4733 = fsub fast float %4715, %4417
  %4734 = fsub fast float %4716, %4418
  %4735 = fmul fast float %4724, %4732
  %4736 = fmul fast float %4724, %4733
  %4737 = fmul fast float %4724, %4734
  %4738 = fadd fast float %4735, %4416
  %4739 = fadd fast float %4736, %4417
  %4740 = fadd fast float %4737, %4418
  %4741 = fsub fast float %79, %4377
  %4742 = fsub fast float %80, %4378
  %4743 = fsub fast float %81, %4379
  %4744 = fmul fast float %4724, %4741
  %4745 = fmul fast float %4724, %4742
  %4746 = fmul fast float %4724, %4743
  %4747 = fadd fast float %4744, %4377
  %4748 = fadd fast float %4745, %4378
  %4749 = fadd fast float %4746, %4379
  %4750 = fmul fast float %4724, %4719
  %4751 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4752 = fsub fast float 1.000000e+00, %4751
  %4753 = fmul fast float %4750, %4752
  %4754 = fadd fast float %4753, %4751
  %4755 = fsub fast float 1.000000e+00, %4392
  %4756 = fmul fast float %4724, %4755
  %4757 = fadd fast float %4756, %4392
  %4758 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4748, float %4749, float %4747, float %4748, float %4749)  ; Dot3(ax,ay,az,bx,by,bz)
  %4759 = call float @dx.op.unary.f32(i32 25, float %4758)  ; Rsqrt(value)
  %4760 = fmul fast float %4747, %4759
  %4761 = fmul fast float %4748, %4759
  %4762 = fmul fast float %4749, %4759
  br label %4763

; <label>:4763                                    ; preds = %4595, %4588
  %4764 = phi float [ %4594, %4588 ], [ %4601, %4595 ]
  %4765 = phi float [ %4593, %4588 ], [ %4599, %4595 ]
  %4766 = phi float [ %4592, %4588 ], [ %4597, %4595 ]
  %4767 = phi float [ %4591, %4588 ], [ %4600, %4595 ]
  %4768 = phi float [ %4590, %4588 ], [ %4598, %4595 ]
  %4769 = phi float [ %4589, %4588 ], [ %4596, %4595 ]
  %4770 = phi float [ %4416, %4588 ], [ %4738, %4595 ]
  %4771 = phi float [ %4417, %4588 ], [ %4739, %4595 ]
  %4772 = phi float [ %4418, %4588 ], [ %4740, %4595 ]
  %4773 = phi float [ %4377, %4588 ], [ %4760, %4595 ]
  %4774 = phi float [ %4378, %4588 ], [ %4761, %4595 ]
  %4775 = phi float [ %4379, %4588 ], [ %4762, %4595 ]
  %4776 = phi float [ %4497, %4588 ], [ %4647, %4595 ]
  %4777 = phi float [ %4498, %4588 ], [ %4648, %4595 ]
  %4778 = phi float [ %4499, %4588 ], [ %4649, %4595 ]
  %4779 = phi float [ %4419, %4588 ], [ %4754, %4595 ]
  %4780 = phi float [ %4392, %4588 ], [ %4757, %4595 ]
  %4781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.f32 %4781, 2
  %4783 = extractvalue %dx.types.CBufRet.f32 %4781, 3
  %4784 = fmul fast float %4782, %72
  %4785 = fmul fast float %4783, %73
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 0
  %4788 = extractvalue %dx.types.CBufRet.f32 %4786, 1
  %4789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %28, float %4784, float %4785, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4790 = extractvalue %dx.types.ResRet.f32 %4789, 0
  %4791 = fmul fast float %4790, %4788
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = fadd fast float %4792, -1.000000e+00
  %4794 = fmul fast float %4793, %4787
  %4795 = fadd fast float %4794, 1.000000e+00
  %4796 = select i1 %168, float 0.000000e+00, float %4772
  %4797 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4774, float %4775, float %4766, float %4765, float %4764)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4769, float %4768, float %4767, float %4773, float %4774, float %4775)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = fmul fast float %4799, 2.000000e+00
  %4801 = fmul fast float %4800, %4773
  %4802 = fmul fast float %4800, %4774
  %4803 = fmul fast float %4800, %4775
  %4804 = fsub fast float %4769, %4801
  %4805 = fsub fast float %4768, %4802
  %4806 = fsub fast float %4767, %4803
  %4807 = call float @dx.op.binary.f32(i32 36, float %4780, float %4795)  ; FMin(a,b)
  %4808 = fsub fast float 1.000000e+00, %4807
  %4809 = bitcast float %4808 to i32
  %4810 = ashr i32 %4809, 1
  %4811 = add nsw i32 %4810, 532487669
  %4812 = bitcast i32 %4811 to float
  %4813 = fsub fast float 1.000000e+00, %4779
  %4814 = call float @dx.op.binary.f32(i32 35, float %4813, float 0x3F847AE140000000)  ; FMax(a,b)
  %4815 = fmul fast float %4814, %4814
  %4816 = fmul fast float %4815, %4815
  %4817 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %4812, float %4816, float %4817, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = fsub fast float 1.000000e+00, %4780
  %4821 = bitcast float %4820 to i32
  %4822 = sub nsw i32 2129859010, %4821
  %4823 = bitcast i32 %4822 to float
  %4824 = call float @dx.op.dot3.f32(i32 55, float %49, float %45, float %41, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4825 = fmul fast float %4824, 0x3FD20DD760000000
  %4826 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %49)  ; FMax(a,b)
  %4827 = call float @dx.op.dot3.f32(i32 55, float %50, float %51, float %52, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %4828 = fcmp fast oeq float %4827, 0.000000e+00
  %4829 = fcmp fast oeq float %4826, 0.000000e+00
  %4830 = or i1 %4829, %4828
  br i1 %4830, label %4860, label %4831

; <label>:4831                                    ; preds = %4763
  %4832 = fsub fast float -0.000000e+00, %52
  %4833 = fsub fast float -0.000000e+00, %50
  %4834 = call float @dx.op.unary.f32(i32 24, float %4827)  ; Sqrt(value)
  %4835 = fdiv fast float %4834, %4826
  %4836 = fcmp fast ogt float %4835, 0x3FFB6F8900000000
  %4837 = select i1 %4836, float 0x3FFB6F8900000000, float %4835
  %4838 = fmul fast float %4837, 0x3FE8A23460000000
  %4839 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4840 = call float @dx.op.binary.f32(i32 35, float %4837, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4841 = fmul fast float %4839, %4826
  %4842 = fmul fast float %4840, 0x3FF279A740000000
  %4843 = fadd fast float %4842, -1.000000e+00
  %4844 = call float @dx.op.dot3.f32(i32 55, float %4832, float %4833, float %51, float %4832, float %4833, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4845 = call float @dx.op.unary.f32(i32 25, float %4844)  ; Rsqrt(value)
  %4846 = fmul fast float %4845, %4832
  %4847 = fmul fast float %4845, %4833
  %4848 = fmul fast float %4845, %51
  %4849 = fmul fast float %4843, %4843
  %4850 = fsub fast float 1.000000e+00, %4849
  %4851 = fmul fast float %4840, 0x40005F8BE0000000
  %4852 = fsub fast float 0x400C5BF8A0000000, %4851
  %4853 = fdiv fast float %4841, %4852
  %4854 = fmul fast float %4853, 0x3FEE31C3C0000000
  %4855 = fmul fast float %4854, %4850
  %4856 = fmul fast float %4840, 0x3FDACB7480000000
  %4857 = fadd fast float %4856, 0xBFD7347680000000
  %4858 = fmul fast float %4857, %4853
  %4859 = fmul fast float %4858, %4850
  br label %4860

; <label>:4860                                    ; preds = %4831, %4763
  %4861 = phi float [ %4846, %4831 ], [ 0.000000e+00, %4763 ]
  %4862 = phi float [ %4847, %4831 ], [ 0.000000e+00, %4763 ]
  %4863 = phi float [ %4848, %4831 ], [ 0.000000e+00, %4763 ]
  %4864 = phi float [ %4855, %4831 ], [ 0.000000e+00, %4763 ]
  %4865 = phi float [ %4859, %4831 ], [ 0.000000e+00, %4763 ]
  %4866 = call float @dx.op.dot3.f32(i32 55, float %4861, float %4862, float %4863, float %4773, float %4774, float %4775)  ; Dot3(ax,ay,az,bx,by,bz)
  %4867 = fmul fast float %4866, 0x3FDF454380000000
  %4868 = fmul fast float %4866, %4866
  %4869 = fmul fast float %4868, 0x3FEE471020000000
  %4870 = fadd fast float %4869, 0xBFD42F6020000000
  %4871 = fmul fast float %4826, 0x3FD20DD760000000
  %4872 = fmul fast float %4870, %4865
  %4873 = fadd fast float %4872, %4871
  %4874 = fmul fast float %4867, %4864
  %4875 = fadd fast float %4873, %4874
  %4876 = fsub fast float %4873, %4874
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4861, float %4862, float %4863, float %4804, float %4805, float %4806)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = fmul fast float %4877, 0x3FDF454380000000
  %4879 = fmul fast float %4877, %4877
  %4880 = fmul fast float %4879, 0x3FEE471020000000
  %4881 = fadd fast float %4880, 0xBFD42F6020000000
  %4882 = call float @dx.op.dot3.f32(i32 55, float %4826, float %4864, float %4865, float 0x3FD20DD760000000, float %4878, float %4881)  ; Dot3(ax,ay,az,bx,by,bz)
  %4883 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %45)  ; FMax(a,b)
  %4884 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = fcmp fast oeq float %4884, 0.000000e+00
  %4886 = fcmp fast oeq float %4883, 0.000000e+00
  %4887 = or i1 %4886, %4885
  br i1 %4887, label %4917, label %4888

; <label>:4888                                    ; preds = %4860
  %4889 = fsub fast float -0.000000e+00, %48
  %4890 = fsub fast float -0.000000e+00, %46
  %4891 = call float @dx.op.unary.f32(i32 24, float %4884)  ; Sqrt(value)
  %4892 = fdiv fast float %4891, %4883
  %4893 = fcmp fast ogt float %4892, 0x3FFB6F8900000000
  %4894 = select i1 %4893, float 0x3FFB6F8900000000, float %4892
  %4895 = fmul fast float %4894, 0x3FE8A23460000000
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = call float @dx.op.binary.f32(i32 35, float %4894, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4898 = fmul fast float %4896, %4883
  %4899 = fmul fast float %4897, 0x3FF279A740000000
  %4900 = fadd fast float %4899, -1.000000e+00
  %4901 = call float @dx.op.dot3.f32(i32 55, float %4889, float %4890, float %47, float %4889, float %4890, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4902 = call float @dx.op.unary.f32(i32 25, float %4901)  ; Rsqrt(value)
  %4903 = fmul fast float %4902, %4889
  %4904 = fmul fast float %4902, %4890
  %4905 = fmul fast float %4902, %47
  %4906 = fmul fast float %4900, %4900
  %4907 = fsub fast float 1.000000e+00, %4906
  %4908 = fmul fast float %4897, 0x40005F8BE0000000
  %4909 = fsub fast float 0x400C5BF8A0000000, %4908
  %4910 = fdiv fast float %4898, %4909
  %4911 = fmul fast float %4910, 0x3FEE31C3C0000000
  %4912 = fmul fast float %4911, %4907
  %4913 = fmul fast float %4897, 0x3FDACB7480000000
  %4914 = fadd fast float %4913, 0xBFD7347680000000
  %4915 = fmul fast float %4914, %4910
  %4916 = fmul fast float %4915, %4907
  br label %4917

; <label>:4917                                    ; preds = %4888, %4860
  %4918 = phi float [ %4903, %4888 ], [ 0.000000e+00, %4860 ]
  %4919 = phi float [ %4904, %4888 ], [ 0.000000e+00, %4860 ]
  %4920 = phi float [ %4905, %4888 ], [ 0.000000e+00, %4860 ]
  %4921 = phi float [ %4912, %4888 ], [ 0.000000e+00, %4860 ]
  %4922 = phi float [ %4916, %4888 ], [ 0.000000e+00, %4860 ]
  %4923 = call float @dx.op.dot3.f32(i32 55, float %4918, float %4919, float %4920, float %4773, float %4774, float %4775)  ; Dot3(ax,ay,az,bx,by,bz)
  %4924 = fmul fast float %4923, 0x3FDF454380000000
  %4925 = fmul fast float %4923, %4923
  %4926 = fmul fast float %4925, 0x3FEE471020000000
  %4927 = fadd fast float %4926, 0xBFD42F6020000000
  %4928 = fmul fast float %4883, 0x3FD20DD760000000
  %4929 = fmul fast float %4927, %4922
  %4930 = fadd fast float %4929, %4928
  %4931 = fmul fast float %4924, %4921
  %4932 = fadd fast float %4930, %4931
  %4933 = fsub fast float %4930, %4931
  %4934 = call float @dx.op.dot3.f32(i32 55, float %4918, float %4919, float %4920, float %4804, float %4805, float %4806)  ; Dot3(ax,ay,az,bx,by,bz)
  %4935 = fmul fast float %4934, 0x3FDF454380000000
  %4936 = fmul fast float %4934, %4934
  %4937 = fmul fast float %4936, 0x3FEE471020000000
  %4938 = fadd fast float %4937, 0xBFD42F6020000000
  %4939 = call float @dx.op.dot3.f32(i32 55, float %4883, float %4921, float %4922, float 0x3FD20DD760000000, float %4935, float %4938)  ; Dot3(ax,ay,az,bx,by,bz)
  %4940 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %41)  ; FMax(a,b)
  %4941 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %4942 = fcmp fast oeq float %4941, 0.000000e+00
  %4943 = fcmp fast oeq float %4940, 0.000000e+00
  %4944 = or i1 %4943, %4942
  br i1 %4944, label %4974, label %4945

; <label>:4945                                    ; preds = %4917
  %4946 = fsub fast float -0.000000e+00, %44
  %4947 = fsub fast float -0.000000e+00, %42
  %4948 = call float @dx.op.unary.f32(i32 24, float %4941)  ; Sqrt(value)
  %4949 = fdiv fast float %4948, %4940
  %4950 = fcmp fast ogt float %4949, 0x3FFB6F8900000000
  %4951 = select i1 %4950, float 0x3FFB6F8900000000, float %4949
  %4952 = fmul fast float %4951, 0x3FE8A23460000000
  %4953 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4954 = call float @dx.op.binary.f32(i32 35, float %4951, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4955 = fmul fast float %4953, %4940
  %4956 = fmul fast float %4954, 0x3FF279A740000000
  %4957 = fadd fast float %4956, -1.000000e+00
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4946, float %4947, float %43, float %4946, float %4947, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = call float @dx.op.unary.f32(i32 25, float %4958)  ; Rsqrt(value)
  %4960 = fmul fast float %4959, %4946
  %4961 = fmul fast float %4959, %4947
  %4962 = fmul fast float %4959, %43
  %4963 = fmul fast float %4957, %4957
  %4964 = fsub fast float 1.000000e+00, %4963
  %4965 = fmul fast float %4954, 0x40005F8BE0000000
  %4966 = fsub fast float 0x400C5BF8A0000000, %4965
  %4967 = fdiv fast float %4955, %4966
  %4968 = fmul fast float %4967, 0x3FEE31C3C0000000
  %4969 = fmul fast float %4968, %4964
  %4970 = fmul fast float %4954, 0x3FDACB7480000000
  %4971 = fadd fast float %4970, 0xBFD7347680000000
  %4972 = fmul fast float %4971, %4967
  %4973 = fmul fast float %4972, %4964
  br label %4974

; <label>:4974                                    ; preds = %4945, %4917
  %4975 = phi float [ %4960, %4945 ], [ 0.000000e+00, %4917 ]
  %4976 = phi float [ %4961, %4945 ], [ 0.000000e+00, %4917 ]
  %4977 = phi float [ %4962, %4945 ], [ 0.000000e+00, %4917 ]
  %4978 = phi float [ %4969, %4945 ], [ 0.000000e+00, %4917 ]
  %4979 = phi float [ %4973, %4945 ], [ 0.000000e+00, %4917 ]
  %4980 = call float @dx.op.dot3.f32(i32 55, float %4975, float %4976, float %4977, float %4773, float %4774, float %4775)  ; Dot3(ax,ay,az,bx,by,bz)
  %4981 = fmul fast float %4980, 0x3FDF454380000000
  %4982 = fmul fast float %4980, %4980
  %4983 = fmul fast float %4982, 0x3FEE471020000000
  %4984 = fadd fast float %4983, 0xBFD42F6020000000
  %4985 = fmul fast float %4940, 0x3FD20DD760000000
  %4986 = fmul fast float %4984, %4979
  %4987 = fadd fast float %4986, %4985
  %4988 = fmul fast float %4981, %4978
  %4989 = fadd fast float %4987, %4988
  %4990 = fsub fast float %4987, %4988
  %4991 = call float @dx.op.dot3.f32(i32 55, float %4975, float %4976, float %4977, float %4804, float %4805, float %4806)  ; Dot3(ax,ay,az,bx,by,bz)
  %4992 = fmul fast float %4991, 0x3FDF454380000000
  %4993 = fmul fast float %4991, %4991
  %4994 = fmul fast float %4993, 0x3FEE471020000000
  %4995 = fadd fast float %4994, 0xBFD42F6020000000
  %4996 = call float @dx.op.dot3.f32(i32 55, float %4940, float %4978, float %4979, float 0x3FD20DD760000000, float %4992, float %4995)  ; Dot3(ax,ay,az,bx,by,bz)
  %4997 = call float @dx.op.binary.f32(i32 35, float %4875, float 0.000000e+00)  ; FMax(a,b)
  %4998 = call float @dx.op.binary.f32(i32 35, float %4932, float 0.000000e+00)  ; FMax(a,b)
  %4999 = call float @dx.op.binary.f32(i32 35, float %4989, float 0.000000e+00)  ; FMax(a,b)
  %5000 = call float @dx.op.binary.f32(i32 35, float %4876, float 0.000000e+00)  ; FMax(a,b)
  %5001 = call float @dx.op.binary.f32(i32 35, float %4933, float 0.000000e+00)  ; FMax(a,b)
  %5002 = call float @dx.op.binary.f32(i32 35, float %4990, float 0.000000e+00)  ; FMax(a,b)
  %5003 = call float @dx.op.binary.f32(i32 35, float %4882, float 0.000000e+00)  ; FMax(a,b)
  %5004 = call float @dx.op.binary.f32(i32 35, float %4939, float 0.000000e+00)  ; FMax(a,b)
  %5005 = call float @dx.op.binary.f32(i32 35, float %4996, float 0.000000e+00)  ; FMax(a,b)
  %5006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.f32 %5006, 0
  %5008 = call float @dx.op.binary.f32(i32 36, float %4776, float %5007)  ; FMin(a,b)
  %5009 = fmul fast float %5008, %4808
  %5010 = fsub fast float 1.000000e+00, %5009
  %5011 = bitcast float %5010 to i32
  %5012 = sub nsw i32 2129859010, %5011
  %5013 = bitcast i32 %5012 to float
  %5014 = call float @dx.op.binary.f32(i32 36, float %4777, float %5007)  ; FMin(a,b)
  %5015 = fmul fast float %5014, %4808
  %5016 = fsub fast float 1.000000e+00, %5015
  %5017 = bitcast float %5016 to i32
  %5018 = sub nsw i32 2129859010, %5017
  %5019 = bitcast i32 %5018 to float
  %5020 = call float @dx.op.binary.f32(i32 36, float %4778, float %5007)  ; FMin(a,b)
  %5021 = fmul fast float %5020, %4808
  %5022 = fsub fast float 1.000000e+00, %5021
  %5023 = bitcast float %5022 to i32
  %5024 = sub nsw i32 2129859010, %5023
  %5025 = bitcast i32 %5024 to float
  %5026 = fmul fast float %4997, %4807
  %5027 = fmul fast float %5026, %5013
  %5028 = fmul fast float %4998, %4807
  %5029 = fmul fast float %5028, %5019
  %5030 = fmul fast float %4999, %4807
  %5031 = fmul fast float %5030, %5025
  %5032 = call float @dx.op.binary.f32(i32 36, float %4770, float %5007)  ; FMin(a,b)
  %5033 = fmul fast float %5032, %4808
  %5034 = fsub fast float 1.000000e+00, %5033
  %5035 = bitcast float %5034 to i32
  %5036 = sub nsw i32 2129859010, %5035
  %5037 = bitcast i32 %5036 to float
  %5038 = call float @dx.op.binary.f32(i32 36, float %4771, float %5007)  ; FMin(a,b)
  %5039 = fmul fast float %5038, %4808
  %5040 = fsub fast float 1.000000e+00, %5039
  %5041 = bitcast float %5040 to i32
  %5042 = sub nsw i32 2129859010, %5041
  %5043 = bitcast i32 %5042 to float
  %5044 = call float @dx.op.binary.f32(i32 36, float %4796, float %5007)  ; FMin(a,b)
  %5045 = fmul fast float %5044, %4808
  %5046 = fsub fast float 1.000000e+00, %5045
  %5047 = bitcast float %5046 to i32
  %5048 = sub nsw i32 2129859010, %5047
  %5049 = bitcast i32 %5048 to float
  %5050 = fmul fast float %5003, %4807
  %5051 = fmul fast float %5050, %5037
  %5052 = fmul fast float %5004, %4807
  %5053 = fmul fast float %5052, %5043
  %5054 = fmul fast float %5005, %4807
  %5055 = fmul fast float %5054, %5049
  %5056 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5029, float %5031, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = select i1 %168, float 0.000000e+00, float %5027
  %5058 = select i1 %168, float %5056, float %5029
  %5059 = select i1 %168, float 0.000000e+00, float %5031
  %5060 = call float @dx.op.dot3.f32(i32 55, float %5000, float %5001, float %5002, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5061 = select i1 %168, float 0.000000e+00, float %5000
  %5062 = select i1 %168, float %5060, float %5001
  %5063 = select i1 %168, float 0.000000e+00, float %5002
  %5064 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5053, float %5055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = select i1 %168, float 0.000000e+00, float %5051
  %5066 = select i1 %168, float %5064, float %5053
  %5067 = select i1 %168, float 0.000000e+00, float %5055
  %5068 = fmul fast float %4798, 9.843750e-01
  %5069 = fmul fast float %4779, 9.843750e-01
  %5070 = fadd fast float %5068, 7.812500e-03
  %5071 = fadd fast float %5069, 7.812500e-03
  %5072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5070, float %5071, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5073 = extractvalue %dx.types.ResRet.f32 %5072, 2
  %5074 = extractvalue %dx.types.ResRet.f32 %5072, 3
  %5075 = fmul fast float %5073, %4770
  %5076 = fmul fast float %5073, %4771
  %5077 = fmul fast float %5073, %4796
  %5078 = fadd fast float %5075, %5074
  %5079 = fadd fast float %5076, %5074
  %5080 = fadd fast float %5077, %5074
  %5081 = fcmp fast ogt float %4393, 0.000000e+00
  br i1 %5081, label %5082, label %5108

; <label>:5082                                    ; preds = %4974
  %5083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4393, float %4798, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5084 = extractvalue %dx.types.ResRet.f32 %5083, 0
  %5085 = extractvalue %dx.types.ResRet.f32 %5083, 1
  %5086 = extractvalue %dx.types.ResRet.f32 %5083, 2
  %5087 = fadd fast float %5084, -5.000000e-01
  %5088 = fadd fast float %5085, -5.000000e-01
  %5089 = fadd fast float %5086, -5.000000e-01
  %5090 = fsub fast float 1.000000e+00, %4770
  %5091 = fsub fast float 1.000000e+00, %4771
  %5092 = fsub fast float 1.000000e+00, %4796
  %5093 = fmul fast float %4770, 4.000000e+00
  %5094 = fmul fast float %5093, %5090
  %5095 = fmul fast float %5094, %5087
  %5096 = fmul fast float %4771, 4.000000e+00
  %5097 = fmul fast float %5096, %5091
  %5098 = fmul fast float %5097, %5088
  %5099 = fmul fast float %4796, 4.000000e+00
  %5100 = fmul fast float %5099, %5092
  %5101 = fmul fast float %5100, %5089
  %5102 = fadd fast float %5095, %5078
  %5103 = fadd fast float %5098, %5079
  %5104 = fadd fast float %5101, %5080
  %5105 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5107 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  br label %5108

; <label>:5108                                    ; preds = %5082, %4974
  %5109 = phi float [ %5105, %5082 ], [ %5078, %4974 ]
  %5110 = phi float [ %5106, %5082 ], [ %5079, %4974 ]
  %5111 = phi float [ %5107, %5082 ], [ %5080, %4974 ]
  %5112 = call float @dx.op.binary.f32(i32 35, float %5110, float %5111)  ; FMax(a,b)
  %5113 = call float @dx.op.binary.f32(i32 35, float %5109, float %5112)  ; FMax(a,b)
  %5114 = fsub fast float 1.000000e+00, %5113
  %5115 = fmul fast float %5113, %4779
  %5116 = fadd fast float %5115, %4779
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 0
  %5119 = extractvalue %dx.types.CBufRet.f32 %5117, 1
  %5120 = extractvalue %dx.types.CBufRet.f32 %5117, 2
  %5121 = extractvalue %dx.types.CBufRet.f32 %5117, 3
  %5122 = fmul fast float %5116, %5118
  %5123 = fadd fast float %5122, %5119
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5125 = fmul fast float %5120, %5116
  %5126 = fadd fast float %5125, %5121
  %5127 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5128 = fsub fast float 1.000000e+00, %4819
  %5129 = fadd fast float %5128, %5127
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fcmp fast olt float %5130, 1.000000e+00
  br i1 %5131, label %5132, label %5950

; <label>:5132                                    ; preds = %5108
  %5133 = fcmp fast olt float %5124, 1.000000e+00
  %5134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.f32 %5134, 0
  %5136 = fcmp fast ogt float %5135, 0.000000e+00
  %5137 = or i1 %5133, %5136
  %5138 = or i1 %5133, %5136
  %5139 = xor i1 %5138, true
  %5140 = zext i1 %5139 to i32
  br i1 %5137, label %5141, label %5384

; <label>:5141                                    ; preds = %5132
  %5142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.f32 %5142, 0
  %5144 = extractvalue %dx.types.CBufRet.f32 %5142, 1
  %5145 = extractvalue %dx.types.CBufRet.f32 %5142, 2
  %5146 = extractvalue %dx.types.CBufRet.f32 %5142, 3
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 0
  %5149 = extractvalue %dx.types.CBufRet.f32 %5147, 1
  %5150 = extractvalue %dx.types.CBufRet.f32 %5147, 2
  %5151 = extractvalue %dx.types.CBufRet.f32 %5147, 3
  %5152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5152, 0
  %5154 = extractvalue %dx.types.CBufRet.f32 %5152, 1
  %5155 = extractvalue %dx.types.CBufRet.f32 %5152, 2
  %5156 = extractvalue %dx.types.CBufRet.f32 %5152, 3
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 0
  %5159 = extractvalue %dx.types.CBufRet.f32 %5157, 1
  %5160 = extractvalue %dx.types.CBufRet.f32 %5157, 2
  %5161 = extractvalue %dx.types.CBufRet.f32 %5157, 3
  %5162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.f32 %5162, 0
  %5164 = extractvalue %dx.types.CBufRet.f32 %5162, 1
  %5165 = extractvalue %dx.types.CBufRet.f32 %5162, 2
  %5166 = extractvalue %dx.types.CBufRet.f32 %5162, 3
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = extractvalue %dx.types.CBufRet.f32 %5167, 1
  %5170 = extractvalue %dx.types.CBufRet.f32 %5167, 2
  %5171 = extractvalue %dx.types.CBufRet.f32 %5167, 3
  %5172 = call float @dx.op.dot3.f32(i32 55, float %5168, float %5169, float %5170, float %4804, float %4805, float %4806)  ; Dot3(ax,ay,az,bx,by,bz)
  %5173 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4774, float %4775, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = call float @dx.op.unary.f32(i32 6, float %5173)  ; FAbs(value)
  %5175 = fmul fast float %5174, 8.000000e+00
  %5176 = fadd fast float %5175, -6.000000e+00
  %5177 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5178 = fmul fast float %5172, 8.000000e+00
  %5179 = fmul fast float %5178, %5135
  %5180 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5181 = fcmp fast ogt float %5180, 0.000000e+00
  br i1 %5181, label %5182, label %5359, !dx.controlflow.hints !70

; <label>:5182                                    ; preds = %5141
  %5183 = extractvalue %dx.types.CBufRet.f32 %5134, 1
  %5184 = extractvalue %dx.types.CBufRet.f32 %5134, 2
  %5185 = fsub fast float %5183, %5184
  %5186 = fmul fast float %5185, %4779
  %5187 = fadd fast float %5186, %5184
  %5188 = fmul fast float %181, 2.000000e+00
  %5189 = fmul fast float %182, 2.000000e+00
  %5190 = fadd fast float %5188, -1.000000e+00
  %5191 = fadd fast float %5189, -1.000000e+00
  %5192 = fmul fast float %5187, %5190
  %5193 = fmul fast float %5187, %5191
  %5194 = fadd fast float %5192, %72
  %5195 = fadd fast float %5193, %73
  %5196 = fmul fast float %5194, %4782
  %5197 = fmul fast float %5195, %4783
  %5198 = fadd fast float %4779, 0xBFE3333340000000
  %5199 = fmul fast float %5198, 0x4004000020000000
  %5200 = fsub fast float 1.000000e+00, %5199
  %5201 = call float @dx.op.unary.f32(i32 7, float %5200)  ; Saturate(value)
  %5202 = fmul fast float %5201, 3.000000e+00
  %5203 = fadd fast float %5202, %181
  %5204 = call float @dx.op.unary.f32(i32 27, float %5203)  ; Round_ni(value)
  %5205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %29, float %5196, float %5197, float %5204, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5206 = extractvalue %dx.types.ResRet.f32 %5205, 0
  %5207 = fcmp fast une float %5206, 0xFFF0000000000000
  %5208 = fcmp fast une float %5206, 0x7FF0000000000000
  %5209 = and i1 %5207, %5208
  %5210 = fcmp fast olt float %5206, 0.000000e+00
  %5211 = call float @dx.op.unary.f32(i32 6, float %5206)  ; FAbs(value)
  %5212 = fsub fast float 1.000000e+00, %5211
  %5213 = select i1 %5209, float 1.000000e+00, float 0.000000e+00
  %5214 = fmul fast float %5213, %5180
  %5215 = fcmp fast ogt float %5214, 0.000000e+00
  br i1 %5215, label %5216, label %5359, !dx.controlflow.hints !71

; <label>:5216                                    ; preds = %5182
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 0
  %5219 = extractvalue %dx.types.CBufRet.f32 %5217, 1
  %5220 = extractvalue %dx.types.CBufRet.f32 %5217, 2
  %5221 = select i1 %5210, float 0.000000e+00, float %5218
  %5222 = select i1 %5210, float 0.000000e+00, float %5219
  %5223 = select i1 %5210, float 0.000000e+00, float %5220
  %5224 = select i1 %5210, float %5143, float %5158
  %5225 = select i1 %5210, float %5148, float %5163
  %5226 = select i1 %5210, float %5153, float %5168
  %5227 = select i1 %5210, float %5144, float %5159
  %5228 = select i1 %5210, float %5149, float %5164
  %5229 = select i1 %5210, float %5154, float %5169
  %5230 = select i1 %5210, float %5145, float %5160
  %5231 = select i1 %5210, float %5150, float %5165
  %5232 = select i1 %5210, float %5155, float %5170
  %5233 = select i1 %5210, float %5146, float %5161
  %5234 = select i1 %5210, float %5151, float %5166
  %5235 = select i1 %5210, float %5156, float %5171
  %5236 = fadd fast float %5221, %127
  %5237 = fadd fast float %5222, %128
  %5238 = fadd fast float %5223, %129
  %5239 = fmul fast float %5236, %5224
  %5240 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5227, float %5239)  ; FMad(a,b,c)
  %5241 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5230, float %5240)  ; FMad(a,b,c)
  %5242 = fadd fast float %5241, %5233
  %5243 = fmul fast float %5236, %5225
  %5244 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5228, float %5243)  ; FMad(a,b,c)
  %5245 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5231, float %5244)  ; FMad(a,b,c)
  %5246 = fadd fast float %5245, %5234
  %5247 = fmul fast float %5236, %5226
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5229, float %5247)  ; FMad(a,b,c)
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5232, float %5248)  ; FMad(a,b,c)
  %5250 = fadd fast float %5249, %5235
  %5251 = fdiv fast float 1.000000e+00, %5250
  %5252 = fmul fast float %5251, %5242
  %5253 = fmul fast float %5251, %5246
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.CBufRet.f32 %5254, 1
  %5257 = fmul fast float %5252, %5255
  %5258 = fmul fast float %5253, %5256
  %5259 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5260 = extractvalue %dx.types.CBufRet.f32 %5254, 3
  %5261 = fadd fast float %5257, %5259
  %5262 = fadd fast float %5258, %5260
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 3
  %5265 = fmul fast float %5264, %4804
  %5266 = fmul fast float %5264, %4805
  %5267 = fmul fast float %5264, %4806
  %5268 = fadd fast float %5265, %5236
  %5269 = fadd fast float %5266, %5237
  %5270 = fadd fast float %5267, %5238
  %5271 = fmul fast float %5268, %5224
  %5272 = call float @dx.op.tertiary.f32(i32 46, float %5269, float %5227, float %5271)  ; FMad(a,b,c)
  %5273 = call float @dx.op.tertiary.f32(i32 46, float %5270, float %5230, float %5272)  ; FMad(a,b,c)
  %5274 = fadd fast float %5273, %5233
  %5275 = fmul fast float %5268, %5225
  %5276 = call float @dx.op.tertiary.f32(i32 46, float %5269, float %5228, float %5275)  ; FMad(a,b,c)
  %5277 = call float @dx.op.tertiary.f32(i32 46, float %5270, float %5231, float %5276)  ; FMad(a,b,c)
  %5278 = fadd fast float %5277, %5234
  %5279 = fmul fast float %5268, %5226
  %5280 = call float @dx.op.tertiary.f32(i32 46, float %5269, float %5229, float %5279)  ; FMad(a,b,c)
  %5281 = call float @dx.op.tertiary.f32(i32 46, float %5270, float %5232, float %5280)  ; FMad(a,b,c)
  %5282 = fadd fast float %5281, %5235
  %5283 = fdiv fast float 1.000000e+00, %5282
  %5284 = fmul fast float %5283, %5274
  %5285 = fmul fast float %5283, %5278
  %5286 = fmul fast float %5261, 2.000000e+00
  %5287 = fadd fast float %5286, -1.000000e+00
  %5288 = call float @dx.op.unary.f32(i32 6, float %5287)  ; FAbs(value)
  %5289 = fmul fast float %5288, 5.000000e+00
  %5290 = fadd fast float %5289, -4.000000e+00
  %5291 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5292 = fmul fast float %5291, %5177
  %5293 = fsub fast float %5252, %5284
  %5294 = fmul fast float %5255, %5293
  %5295 = fmul fast float %5292, %5294
  %5296 = fsub fast float %5284, %5252
  %5297 = fmul fast float %5255, %5296
  %5298 = fadd fast float %5297, %5295
  %5299 = fsub fast float %5285, %5253
  %5300 = fmul fast float %5256, %5299
  %5301 = fmul fast float %5298, %5212
  %5302 = fmul fast float %5300, %5212
  %5303 = fadd fast float %5301, %5261
  %5304 = fadd fast float %5302, %5262
  %5305 = fsub fast float %5283, %5251
  %5306 = fmul fast float %5305, %5212
  %5307 = fadd fast float %5306, %5251
  %5308 = fdiv fast float 1.000000e+00, %5307
  %5309 = fadd fast float %4779, -1.000000e+00
  %5310 = fsub fast float %5308, %5250
  %5311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5311, 2
  %5313 = fmul fast float %5312, %5308
  %5314 = fdiv fast float 1.600000e+02, %5313
  %5315 = fmul fast float %5309, %5309
  %5316 = fmul fast float %5315, 0xBFB5B17960000000
  %5317 = fmul fast float %5316, %5310
  %5318 = fmul fast float %5317, %5314
  %5319 = call float @dx.op.unary.f32(i32 21, float %5318)  ; Exp(value)
  %5320 = fmul fast float %5319, 0x3FF04B2960000000
  %5321 = fsub fast float 0x3FF04B2960000000, %5320
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = fmul fast float %5322, 4.000000e+00
  %5324 = fadd fast float %181, -5.000000e-01
  %5325 = fadd fast float %182, -5.000000e-01
  %5326 = fmul fast float %5322, 0x3FBEB851E0000000
  %5327 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5328 = fmul fast float %5327, %5324
  %5329 = fmul fast float %5327, %5325
  %5330 = fadd fast float %5303, %5328
  %5331 = fadd fast float %5304, %5329
  %5332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %5330, float %5331, float undef, float undef, i32 0, i32 0, i32 undef, float %5323)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5333 = extractvalue %dx.types.ResRet.f32 %5332, 0
  %5334 = extractvalue %dx.types.ResRet.f32 %5332, 1
  %5335 = extractvalue %dx.types.ResRet.f32 %5332, 2
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 2
  %5338 = fmul fast float %5337, %5333
  %5339 = fmul fast float %5337, %5334
  %5340 = fmul fast float %5337, %5335
  %5341 = select i1 %168, float 0.000000e+00, float %5339
  %5342 = select i1 %168, float 0.000000e+00, float %5340
  %5343 = fmul fast float %5330, 2.000000e+00
  %5344 = fmul fast float %5331, 2.000000e+00
  %5345 = fadd fast float %5343, -1.000000e+00
  %5346 = fadd fast float %5344, -1.000000e+00
  %5347 = fmul fast float %5345, %5345
  %5348 = fsub fast float 1.000000e+00, %5347
  %5349 = call float @dx.op.unary.f32(i32 7, float %5348)  ; Saturate(value)
  %5350 = fsub fast float 1.000000e+00, %5349
  %5351 = fmul fast float %5350, %5177
  %5352 = fadd fast float %5351, %5349
  %5353 = fmul fast float %5346, %5346
  %5354 = fsub fast float 1.000000e+00, %5353
  %5355 = call float @dx.op.unary.f32(i32 7, float %5354)  ; Saturate(value)
  %5356 = fmul fast float %5352, %5355
  %5357 = call float @dx.op.unary.f32(i32 7, float %5356)  ; Saturate(value)
  %5358 = fmul fast float %5357, %5214
  br label %5359

; <label>:5359                                    ; preds = %5216, %5182, %5141
  %5360 = phi float [ %5338, %5216 ], [ 0.000000e+00, %5182 ], [ 0.000000e+00, %5141 ]
  %5361 = phi float [ %5341, %5216 ], [ 0.000000e+00, %5182 ], [ 0.000000e+00, %5141 ]
  %5362 = phi float [ %5342, %5216 ], [ 0.000000e+00, %5182 ], [ 0.000000e+00, %5141 ]
  %5363 = phi float [ %5358, %5216 ], [ 0.000000e+00, %5182 ], [ 0.000000e+00, %5141 ]
  %5364 = fcmp fast olt float %5363, 1.000000e+00
  %5365 = or i1 %5364, %5139
  %5366 = zext i1 %5365 to i32
  %5367 = fmul fast float %5363, %5124
  %5368 = fsub fast float %5363, %5367
  %5369 = fsub fast float 1.000000e+00, %5130
  %5370 = fmul fast float %5368, %5369
  %5371 = fadd fast float %5370, %5130
  %5372 = fsub fast float %5371, %5368
  %5373 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5374 = fmul fast float %5373, %5065
  %5375 = fmul fast float %5373, %5066
  %5376 = fmul fast float %5373, %5067
  %5377 = fsub fast float -0.000000e+00, %5371
  %5378 = fmul fast float %5368, %5360
  %5379 = fmul fast float %5368, %5361
  %5380 = fmul fast float %5368, %5362
  %5381 = fadd fast float %5378, %5374
  %5382 = fadd fast float %5379, %5375
  %5383 = fadd fast float %5380, %5376
  br label %5384

; <label>:5384                                    ; preds = %5359, %5132
  %5385 = phi float [ %5130, %5132 ], [ %5377, %5359 ]
  %5386 = phi float [ %5065, %5132 ], [ %5381, %5359 ]
  %5387 = phi float [ %5066, %5132 ], [ %5382, %5359 ]
  %5388 = phi float [ %5067, %5132 ], [ %5383, %5359 ]
  %5389 = phi i32 [ %5140, %5132 ], [ %5366, %5359 ]
  %5390 = icmp eq i32 %5389, 0
  br i1 %5390, label %5950, label %5391

; <label>:5391                                    ; preds = %5384
  %5392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5393 = extractvalue %dx.types.CBufRet.f32 %5392, 2
  %5394 = extractvalue %dx.types.CBufRet.f32 %5392, 3
  %5395 = fmul fast float %5393, %72
  %5396 = fmul fast float %5394, %73
  %5397 = fptoui float %5395 to i32
  %5398 = fptoui float %5396 to i32
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 0
  %5401 = extractvalue %dx.types.CBufRet.f32 %5399, 2
  %5402 = extractvalue %dx.types.CBufRet.f32 %5399, 3
  %5403 = fadd fast float %67, -4.000000e+00
  %5404 = call float @dx.op.binary.f32(i32 35, float %5403, float 0.000000e+00)  ; FMax(a,b)
  %5405 = fadd fast float %5404, %5400
  %5406 = fmul fast float %5405, %5401
  %5407 = call float @dx.op.unary.f32(i32 23, float %5406)  ; Log(value)
  %5408 = fmul fast float %5407, %5402
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5411 = fmul fast float %5408, %5410
  %5412 = call float @dx.op.unary.f32(i32 7, float %5411)  ; Saturate(value)
  %5413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5414 = extractvalue %dx.types.CBufRet.i32 %5413, 1
  %5415 = add i32 %5414, -1
  %5416 = uitofp i32 %5414 to float
  %5417 = fmul fast float %5416, %5412
  %5418 = fptoui float %5417 to i32
  %5419 = call i32 @dx.op.binary.i32(i32 40, i32 %5418, i32 %5415)  ; UMin(a,b)
  %5420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.i32 %5420, 2
  %5422 = extractvalue %dx.types.CBufRet.i32 %5420, 3
  %5423 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5398, i32 %5421, i32 %5397)  ; UMad(a,b,c)
  %5424 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5419, i32 %5422, i32 %5423)  ; UMad(a,b,c)
  %5425 = call float @dx.op.binary.f32(i32 35, float %67, float 0.000000e+00)  ; FMax(a,b)
  %5426 = fptoui float %5425 to i32
  %5427 = lshr i32 %5426, 5
  %5428 = call i32 @dx.op.binary.i32(i32 40, i32 %5427, i32 8191)  ; UMin(a,b)
  %5429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5430 = extractvalue %dx.types.CBufRet.i32 %5429, 2
  %5431 = add nsw i32 %5430, -1
  %5432 = call i32 @dx.op.binary.i32(i32 37, i32 %5431, i32 0)  ; IMax(a,b)
  %5433 = shl i32 %5428, 2
  %5434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %5433, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.i32 %5434, 0
  %5436 = lshr i32 %5435, 16
  %5437 = and i32 %5435, 65535
  %5438 = lshr i32 %5435, 21
  %5439 = lshr i32 %5437, 5
  %5440 = call i32 @dx.op.binary.i32(i32 40, i32 %5439, i32 %5432)  ; UMin(a,b)
  %5441 = icmp ugt i32 %5438, %5440
  br i1 %5441, label %5822, label %5442

; <label>:5442                                    ; preds = %5391
  br label %5443

; <label>:5443                                    ; preds = %5811, %5442
  %5444 = phi float [ %5812, %5811 ], [ 0.000000e+00, %5442 ]
  %5445 = phi float [ %5813, %5811 ], [ 0.000000e+00, %5442 ]
  %5446 = phi float [ %5814, %5811 ], [ 0.000000e+00, %5442 ]
  %5447 = phi float [ %5815, %5811 ], [ 1.000000e+00, %5442 ]
  %5448 = phi i32 [ %5819, %5811 ], [ %5438, %5442 ]
  %5449 = phi float [ %5816, %5811 ], [ 0.000000e+00, %5442 ]
  %5450 = phi float [ %5817, %5811 ], [ 0.000000e+00, %5442 ]
  %5451 = phi float [ %5818, %5811 ], [ 0.000000e+00, %5442 ]
  %5452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.i32 %5452, 2
  %5454 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5424, i32 %5453, i32 %5448)  ; UMad(a,b,c)
  %5455 = shl i32 %5454, 2
  %5456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %5455, i32 undef)  ; BufferLoad(srv,index,wot)
  %5457 = extractvalue %dx.types.ResRet.i32 %5456, 0
  %5458 = shl i32 %5448, 5
  %5459 = sub nsw i32 %5436, %5458
  %5460 = call i32 @dx.op.binary.i32(i32 37, i32 %5459, i32 0)  ; IMax(a,b)
  %5461 = call i32 @dx.op.binary.i32(i32 38, i32 %5460, i32 31)  ; IMin(a,b)
  %5462 = sub nsw i32 1, %5436
  %5463 = add nsw i32 %5462, %5437
  %5464 = call i32 @dx.op.binary.i32(i32 37, i32 %5463, i32 0)  ; IMax(a,b)
  %5465 = call i32 @dx.op.binary.i32(i32 38, i32 %5464, i32 32)  ; IMin(a,b)
  %5466 = and i32 %5465, 31
  %5467 = shl i32 -1, %5466
  %5468 = xor i32 %5467, -1
  %5469 = and i32 %5461, 31
  %5470 = shl i32 %5468, %5469
  %5471 = icmp eq i32 %5465, 32
  %5472 = select i1 %5471, i32 -1, i32 %5470
  %5473 = and i32 %5472, %5457
  %5474 = icmp eq i32 %5473, 0
  br i1 %5474, label %5811, label %5475

; <label>:5475                                    ; preds = %5443
  br label %5476

; <label>:5476                                    ; preds = %5585, %5475
  %5477 = phi float [ %5586, %5585 ], [ %5444, %5475 ]
  %5478 = phi float [ %5587, %5585 ], [ %5445, %5475 ]
  %5479 = phi float [ %5588, %5585 ], [ %5446, %5475 ]
  %5480 = phi float [ %5589, %5585 ], [ %5447, %5475 ]
  %5481 = phi i32 [ %5489, %5585 ], [ %5473, %5475 ]
  %5482 = phi float [ %5590, %5585 ], [ %5449, %5475 ]
  %5483 = phi float [ %5591, %5585 ], [ %5450, %5475 ]
  %5484 = phi float [ %5592, %5585 ], [ %5451, %5475 ]
  %5485 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5481)  ; FirstbitLo(value)
  %5486 = add i32 %5485, %5458
  %5487 = and i32 %5485, 31
  %5488 = shl i32 1, %5487
  %5489 = xor i32 %5488, %5481
  %5490 = mul i32 %5486, 72
  %5491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5490, i32 undef)  ; BufferLoad(srv,index,wot)
  %5492 = extractvalue %dx.types.ResRet.f32 %5491, 0
  %5493 = extractvalue %dx.types.ResRet.f32 %5491, 1
  %5494 = extractvalue %dx.types.ResRet.f32 %5491, 2
  %5495 = add i32 %5490, 12
  %5496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %5495, i32 undef)  ; BufferLoad(srv,index,wot)
  %5497 = extractvalue %dx.types.ResRet.i32 %5496, 0
  %5498 = add i32 %5490, 16
  %5499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5498, i32 undef)  ; BufferLoad(srv,index,wot)
  %5500 = extractvalue %dx.types.ResRet.f32 %5499, 0
  %5501 = extractvalue %dx.types.ResRet.f32 %5499, 1
  %5502 = extractvalue %dx.types.ResRet.f32 %5499, 2
  %5503 = add i32 %5490, 28
  %5504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5503, i32 undef)  ; BufferLoad(srv,index,wot)
  %5505 = extractvalue %dx.types.ResRet.f32 %5504, 0
  %5506 = add i32 %5490, 32
  %5507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5506, i32 undef)  ; BufferLoad(srv,index,wot)
  %5508 = extractvalue %dx.types.ResRet.f32 %5507, 0
  %5509 = extractvalue %dx.types.ResRet.f32 %5507, 1
  %5510 = extractvalue %dx.types.ResRet.f32 %5507, 2
  %5511 = extractvalue %dx.types.ResRet.f32 %5507, 3
  %5512 = add i32 %5490, 48
  %5513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5512, i32 undef)  ; BufferLoad(srv,index,wot)
  %5514 = extractvalue %dx.types.ResRet.f32 %5513, 0
  %5515 = extractvalue %dx.types.ResRet.f32 %5513, 1
  %5516 = add i32 %5490, 56
  %5517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5516, i32 undef)  ; BufferLoad(srv,index,wot)
  %5518 = extractvalue %dx.types.ResRet.f32 %5517, 0
  %5519 = extractvalue %dx.types.ResRet.f32 %5517, 1
  %5520 = add i32 %5490, 64
  %5521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5520, i32 undef)  ; BufferLoad(srv,index,wot)
  %5522 = extractvalue %dx.types.ResRet.f32 %5521, 0
  %5523 = extractvalue %dx.types.ResRet.f32 %5521, 1
  %5524 = mul i32 %5486, 60
  %5525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5524, i32 undef)  ; BufferLoad(srv,index,wot)
  %5526 = extractvalue %dx.types.ResRet.f32 %5525, 0
  %5527 = extractvalue %dx.types.ResRet.f32 %5525, 1
  %5528 = extractvalue %dx.types.ResRet.f32 %5525, 2
  %5529 = add i32 %5524, 12
  %5530 = add i32 %5524, 48
  %5531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5530, i32 undef)  ; BufferLoad(srv,index,wot)
  %5532 = extractvalue %dx.types.ResRet.f32 %5531, 0
  %5533 = extractvalue %dx.types.ResRet.f32 %5531, 1
  %5534 = extractvalue %dx.types.ResRet.f32 %5531, 2
  %5535 = and i32 %5497, 32767
  %5536 = bitcast float %5492 to i32
  %5537 = icmp eq i32 %5536, -1
  %5538 = bitcast float %5493 to i32
  %5539 = and i32 %5497, 32768
  %5540 = icmp ne i32 %5539, 0
  %5541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5542 = extractvalue %dx.types.CBufRet.f32 %5541, 0
  %5543 = extractvalue %dx.types.CBufRet.f32 %5541, 1
  %5544 = extractvalue %dx.types.CBufRet.f32 %5541, 2
  %5545 = fsub fast float %5526, %5542
  %5546 = fsub fast float %5527, %5543
  %5547 = fsub fast float %5528, %5544
  %5548 = fsub fast float %127, %5545
  %5549 = fsub fast float %128, %5546
  %5550 = fsub fast float %129, %5547
  %5551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5529, i32 undef)  ; BufferLoad(srv,index,wot)
  %5552 = extractvalue %dx.types.ResRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.ResRet.f32 %5551, 1
  %5554 = extractvalue %dx.types.ResRet.f32 %5551, 2
  %5555 = call float @dx.op.dot3.f32(i32 55, float %5548, float %5549, float %5550, float %5552, float %5553, float %5554)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = add i32 %5524, 24
  %5557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5556, i32 undef)  ; BufferLoad(srv,index,wot)
  %5558 = extractvalue %dx.types.ResRet.f32 %5557, 0
  %5559 = extractvalue %dx.types.ResRet.f32 %5557, 1
  %5560 = extractvalue %dx.types.ResRet.f32 %5557, 2
  %5561 = call float @dx.op.dot3.f32(i32 55, float %5548, float %5549, float %5550, float %5558, float %5559, float %5560)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = add i32 %5524, 36
  %5563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5562, i32 undef)  ; BufferLoad(srv,index,wot)
  %5564 = extractvalue %dx.types.ResRet.f32 %5563, 0
  %5565 = extractvalue %dx.types.ResRet.f32 %5563, 1
  %5566 = extractvalue %dx.types.ResRet.f32 %5563, 2
  %5567 = call float @dx.op.dot3.f32(i32 55, float %5548, float %5549, float %5550, float %5564, float %5565, float %5566)  ; Dot3(ax,ay,az,bx,by,bz)
  %5568 = call float @dx.op.unary.f32(i32 6, float %5555)  ; FAbs(value)
  %5569 = call float @dx.op.unary.f32(i32 6, float %5561)  ; FAbs(value)
  %5570 = call float @dx.op.unary.f32(i32 6, float %5567)  ; FAbs(value)
  %5571 = fsub fast float %5532, %5568
  %5572 = fsub fast float %5533, %5569
  %5573 = fsub fast float %5534, %5570
  %5574 = fmul fast float %5571, %5500
  %5575 = fmul fast float %5572, %5501
  %5576 = fmul fast float %5573, %5502
  %5577 = call float @dx.op.binary.f32(i32 36, float %5575, float %5576)  ; FMin(a,b)
  %5578 = call float @dx.op.binary.f32(i32 36, float %5574, float %5577)  ; FMin(a,b)
  %5579 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5580 = call float @dx.op.binary.f32(i32 36, float %5480, float %5579)  ; FMin(a,b)
  %5581 = uitofp i1 %5540 to float
  %5582 = fsub fast float 1.000000e+00, %5581
  %5583 = fmul fast float %5580, %5582
  %5584 = fcmp fast ogt float %5583, 0.000000e+00
  br i1 %5584, label %5594, label %5585

; <label>:5585                                    ; preds = %5736, %5476
  %5586 = phi float [ %5800, %5736 ], [ %5477, %5476 ]
  %5587 = phi float [ %5801, %5736 ], [ %5478, %5476 ]
  %5588 = phi float [ %5802, %5736 ], [ %5479, %5476 ]
  %5589 = phi float [ %5809, %5736 ], [ %5480, %5476 ]
  %5590 = phi float [ %5806, %5736 ], [ %5482, %5476 ]
  %5591 = phi float [ %5807, %5736 ], [ %5483, %5476 ]
  %5592 = phi float [ %5808, %5736 ], [ %5484, %5476 ]
  %5593 = icmp eq i32 %5481, %5488
  br i1 %5593, label %5810, label %5476

; <label>:5594                                    ; preds = %5476
  br i1 %5537, label %5652, label %5595

; <label>:5595                                    ; preds = %5594
  %5596 = fsub fast float -0.000000e+00, %5552
  %5597 = fsub fast float -0.000000e+00, %5553
  %5598 = fsub fast float -0.000000e+00, %5554
  %5599 = call float @dx.op.dot3.f32(i32 55, float %4804, float %4805, float %4806, float %5596, float %5597, float %5598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = fsub fast float -0.000000e+00, %5599
  %5601 = call float @dx.op.dot3.f32(i32 55, float %5548, float %5549, float %5550, float %5596, float %5597, float %5598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5602 = fadd fast float %5601, %5515
  %5603 = fadd fast float %5514, %5601
  %5604 = fsub fast float -0.000000e+00, %5603
  %5605 = fcmp ogt float %5599, -0.000000e+00
  %5606 = select i1 %5605, float %5604, float %5602
  %5607 = call float @dx.op.unary.f32(i32 6, float %5600)  ; FAbs(value)
  %5608 = fdiv fast float 1.000000e+00, %5607
  %5609 = fmul fast float %5606, %5608
  %5610 = call float @dx.op.binary.f32(i32 35, float %5609, float 0.000000e+00)  ; FMax(a,b)
  %5611 = fsub fast float -0.000000e+00, %5558
  %5612 = fsub fast float -0.000000e+00, %5559
  %5613 = fsub fast float -0.000000e+00, %5560
  %5614 = call float @dx.op.dot3.f32(i32 55, float %4804, float %4805, float %4806, float %5611, float %5612, float %5613)  ; Dot3(ax,ay,az,bx,by,bz)
  %5615 = fsub fast float -0.000000e+00, %5614
  %5616 = call float @dx.op.dot3.f32(i32 55, float %5548, float %5549, float %5550, float %5611, float %5612, float %5613)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = fadd fast float %5616, %5519
  %5618 = fadd fast float %5518, %5616
  %5619 = fsub fast float -0.000000e+00, %5618
  %5620 = fcmp ogt float %5614, -0.000000e+00
  %5621 = select i1 %5620, float %5619, float %5617
  %5622 = call float @dx.op.unary.f32(i32 6, float %5615)  ; FAbs(value)
  %5623 = fdiv fast float 1.000000e+00, %5622
  %5624 = fmul fast float %5621, %5623
  %5625 = call float @dx.op.binary.f32(i32 35, float %5624, float 0.000000e+00)  ; FMax(a,b)
  %5626 = fsub fast float -0.000000e+00, %5564
  %5627 = fsub fast float -0.000000e+00, %5565
  %5628 = fsub fast float -0.000000e+00, %5566
  %5629 = call float @dx.op.dot3.f32(i32 55, float %4804, float %4805, float %4806, float %5626, float %5627, float %5628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = fsub fast float -0.000000e+00, %5629
  %5631 = call float @dx.op.dot3.f32(i32 55, float %5548, float %5549, float %5550, float %5626, float %5627, float %5628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5632 = fadd fast float %5631, %5523
  %5633 = fadd fast float %5522, %5631
  %5634 = fsub fast float -0.000000e+00, %5633
  %5635 = fcmp ogt float %5629, -0.000000e+00
  %5636 = select i1 %5635, float %5634, float %5632
  %5637 = call float @dx.op.unary.f32(i32 6, float %5630)  ; FAbs(value)
  %5638 = fdiv fast float 1.000000e+00, %5637
  %5639 = fmul fast float %5636, %5638
  %5640 = call float @dx.op.binary.f32(i32 35, float %5639, float 0.000000e+00)  ; FMax(a,b)
  %5641 = call float @dx.op.binary.f32(i32 36, float %5625, float %5640)  ; FMin(a,b)
  %5642 = call float @dx.op.binary.f32(i32 36, float %5610, float %5641)  ; FMin(a,b)
  %5643 = fmul fast float %5642, %4804
  %5644 = fmul fast float %5642, %4805
  %5645 = fmul fast float %5642, %4806
  %5646 = fadd fast float %5643, %127
  %5647 = fadd fast float %5644, %128
  %5648 = fadd fast float %5645, %129
  %5649 = fsub fast float %5646, %5492
  %5650 = fsub fast float %5647, %5493
  %5651 = fsub fast float %5648, %5494
  br label %5659

; <label>:5652                                    ; preds = %5594
  %5653 = fmul fast float %4804, 8.096000e+03
  %5654 = fmul fast float %4805, 8.096000e+03
  %5655 = fmul fast float %4806, 8.096000e+03
  %5656 = fadd fast float %5653, %127
  %5657 = fadd fast float %5654, %128
  %5658 = fadd fast float %5655, %129
  br label %5659

; <label>:5659                                    ; preds = %5652, %5595
  %5660 = phi float [ %4804, %5652 ], [ %5649, %5595 ]
  %5661 = phi float [ %4805, %5652 ], [ %5650, %5595 ]
  %5662 = phi float [ %4806, %5652 ], [ %5651, %5595 ]
  %5663 = phi float [ %5656, %5652 ], [ %5646, %5595 ]
  %5664 = phi float [ %5657, %5652 ], [ %5647, %5595 ]
  %5665 = phi float [ %5658, %5652 ], [ %5648, %5595 ]
  %5666 = fcmp fast olt float %5511, 1.000000e+00
  br i1 %5666, label %5667, label %5698, !dx.controlflow.hints !72

; <label>:5667                                    ; preds = %5659
  %5668 = fmul fast float %5662, %5509
  %5669 = fmul fast float %5661, %5510
  %5670 = fsub fast float %5668, %5669
  %5671 = fmul fast float %5660, %5510
  %5672 = fmul fast float %5662, %5508
  %5673 = fsub fast float %5671, %5672
  %5674 = fmul fast float %5661, %5508
  %5675 = fmul fast float %5660, %5509
  %5676 = fsub fast float %5674, %5675
  %5677 = fmul fast float %5670, 2.000000e+00
  %5678 = fmul fast float %5673, 2.000000e+00
  %5679 = fmul fast float %5676, 2.000000e+00
  %5680 = fmul fast float %5677, %5511
  %5681 = fmul fast float %5678, %5511
  %5682 = fmul fast float %5679, %5511
  %5683 = fmul fast float %5679, %5509
  %5684 = fmul fast float %5678, %5510
  %5685 = fmul fast float %5677, %5510
  %5686 = fmul fast float %5679, %5508
  %5687 = fmul fast float %5678, %5508
  %5688 = fmul fast float %5677, %5509
  %5689 = fadd fast float %5683, %5660
  %5690 = fadd fast float %5689, %5680
  %5691 = fsub fast float %5690, %5684
  %5692 = fsub fast float %5661, %5686
  %5693 = fadd fast float %5692, %5681
  %5694 = fadd fast float %5693, %5685
  %5695 = fadd fast float %5682, %5662
  %5696 = fsub fast float %5695, %5688
  %5697 = fadd fast float %5696, %5687
  br label %5698

; <label>:5698                                    ; preds = %5667, %5659
  %5699 = phi float [ %5691, %5667 ], [ %5660, %5659 ]
  %5700 = phi float [ %5694, %5667 ], [ %5661, %5659 ]
  %5701 = phi float [ %5697, %5667 ], [ %5662, %5659 ]
  br i1 %5537, label %5733, label %5702

; <label>:5702                                    ; preds = %5698
  %5703 = fmul fast float %4779, 0x400187C840000000
  %5704 = fadd fast float %5703, 0xC00EFC2120000000
  %5705 = fmul fast float %5704, %4779
  %5706 = fadd fast float %5705, 0x3FE5D16340000000
  %5707 = fmul fast float %5706, %4779
  %5708 = fadd fast float %5707, 1.000000e+00
  %5709 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5710 = fsub fast float %5663, %127
  %5711 = fsub fast float %5664, %128
  %5712 = fsub fast float %5665, %129
  %5713 = fsub fast float %5663, %5492
  %5714 = fsub fast float %5664, %5493
  %5715 = fsub fast float %5665, %5494
  %5716 = call float @dx.op.dot3.f32(i32 55, float %5710, float %5711, float %5712, float %5710, float %5711, float %5712)  ; Dot3(ax,ay,az,bx,by,bz)
  %5717 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5714, float %5715, float %5713, float %5714, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5718 = fadd fast float %5717, 0x3EE4F8B580000000
  %5719 = fdiv fast float %5716, %5718
  %5720 = bitcast float %5719 to i32
  %5721 = ashr i32 %5720, 1
  %5722 = add nsw i32 %5721, 532487669
  %5723 = bitcast i32 %5722 to float
  %5724 = fmul fast float %5723, %5709
  %5725 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5726 = fmul fast float %5725, 0x4009981AE0000000
  %5727 = fsub fast float 0x40111BBD80000000, %5726
  %5728 = fmul fast float %5727, %5725
  %5729 = fadd fast float %5728, 0xC0009F6020000000
  %5730 = fmul fast float %5729, %5725
  %5731 = fadd fast float %5730, 1.000000e+00
  %5732 = call float @dx.op.unary.f32(i32 7, float %5731)  ; Saturate(value)
  br label %5736

; <label>:5733                                    ; preds = %5698
  %5734 = icmp ne i32 %5538, -1
  %5735 = zext i1 %5734 to i32
  br label %5736

; <label>:5736                                    ; preds = %5733, %5702
  %5737 = phi float [ %4779, %5733 ], [ %5732, %5702 ]
  %5738 = phi i32 [ %5735, %5733 ], [ 0, %5702 ]
  %5739 = fmul float %5737, 5.000000e+00
  %5740 = fsub float 5.000000e+00, %5739
  %5741 = icmp ne i32 %5738, 0
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 3
  %5744 = fadd fast float %5743, %5740
  %5745 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5744)  ; FMax(a,b)
  %5746 = call float @dx.op.unary.f32(i32 6, float %5699)  ; FAbs(value)
  %5747 = call float @dx.op.unary.f32(i32 6, float %5700)  ; FAbs(value)
  %5748 = fadd fast float %5747, %5746
  %5749 = call float @dx.op.unary.f32(i32 6, float %5701)  ; FAbs(value)
  %5750 = fadd fast float %5748, %5749
  %5751 = fcmp fast oeq float %5750, 0.000000e+00
  %5752 = fdiv fast float 1.000000e+00, %5750
  %5753 = select i1 %5751, float 1.000000e+00, float %5752
  %5754 = fmul fast float %5753, %5699
  %5755 = fmul fast float %5753, %5700
  %5756 = call float @dx.op.unary.f32(i32 6, float %5755)  ; FAbs(value)
  %5757 = call float @dx.op.unary.f32(i32 6, float %5754)  ; FAbs(value)
  %5758 = fsub fast float 1.000000e+00, %5756
  %5759 = fsub fast float 1.000000e+00, %5757
  %5760 = fcmp fast oge float %5754, 0.000000e+00
  %5761 = fcmp fast oge float %5755, 0.000000e+00
  %5762 = select i1 %5760, float 1.000000e+00, float -1.000000e+00
  %5763 = select i1 %5761, float 1.000000e+00, float -1.000000e+00
  %5764 = fcmp fast ole float %5701, 0.000000e+00
  %5765 = fmul fast float %5762, %5758
  %5766 = fmul fast float %5763, %5759
  %5767 = select i1 %5764, float %5765, float %5754
  %5768 = select i1 %5764, float %5766, float %5755
  %5769 = fmul fast float %5767, 5.000000e-01
  %5770 = fmul fast float %5768, 5.000000e-01
  %5771 = fadd fast float %5769, 5.000000e-01
  %5772 = fadd fast float %5770, 5.000000e-01
  %5773 = uitofp i32 %5535 to float
  %5774 = call float @dx.op.binary.f32(i32 36, float %5745, float 3.000000e+00)  ; FMin(a,b)
  %5775 = fadd fast float %5774, 2.000000e+00
  %5776 = call float @dx.op.unary.f32(i32 21, float %5775)  ; Exp(value)
  %5777 = extractvalue %dx.types.CBufRet.f32 %5742, 1
  %5778 = fmul fast float %5777, %5776
  %5779 = fmul fast float %5778, 2.000000e+00
  %5780 = fsub fast float 1.000000e+00, %5779
  %5781 = fmul fast float %5771, %5780
  %5782 = fmul fast float %5772, %5780
  %5783 = fadd fast float %5781, %5778
  %5784 = fadd fast float %5782, %5778
  %5785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %5783, float %5784, float %5773, float undef, i32 0, i32 0, i32 undef, float %5745)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5786 = extractvalue %dx.types.ResRet.f32 %5785, 0
  %5787 = extractvalue %dx.types.ResRet.f32 %5785, 1
  %5788 = extractvalue %dx.types.ResRet.f32 %5785, 2
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 3
  %5791 = fmul fast float %5790, %5505
  %5792 = call float @dx.op.binary.f32(i32 36, float %4825, float %5791)  ; FMin(a,b)
  %5793 = select i1 %5741, float %5792, float %5791
  %5794 = fmul fast float %5786, %5583
  %5795 = fmul fast float %5794, %5793
  %5796 = fmul fast float %5787, %5583
  %5797 = fmul fast float %5796, %5793
  %5798 = fmul fast float %5788, %5583
  %5799 = fmul fast float %5798, %5793
  %5800 = fadd fast float %5795, %5477
  %5801 = fadd fast float %5797, %5478
  %5802 = fadd fast float %5799, %5479
  %5803 = fmul fast float %5663, %5583
  %5804 = fmul fast float %5664, %5583
  %5805 = fmul fast float %5665, %5583
  %5806 = fadd fast float %5803, %5482
  %5807 = fadd fast float %5804, %5483
  %5808 = fadd fast float %5805, %5484
  %5809 = fsub fast float %5480, %5583
  br label %5585

; <label>:5810                                    ; preds = %5585
  br label %5811

; <label>:5811                                    ; preds = %5810, %5443
  %5812 = phi float [ %5444, %5443 ], [ %5586, %5810 ]
  %5813 = phi float [ %5445, %5443 ], [ %5587, %5810 ]
  %5814 = phi float [ %5446, %5443 ], [ %5588, %5810 ]
  %5815 = phi float [ %5447, %5443 ], [ %5589, %5810 ]
  %5816 = phi float [ %5449, %5443 ], [ %5590, %5810 ]
  %5817 = phi float [ %5450, %5443 ], [ %5591, %5810 ]
  %5818 = phi float [ %5451, %5443 ], [ %5592, %5810 ]
  %5819 = add i32 %5448, 1
  %5820 = icmp ugt i32 %5819, %5440
  br i1 %5820, label %5821, label %5443, !llvm.loop !73

; <label>:5821                                    ; preds = %5811
  br label %5822

; <label>:5822                                    ; preds = %5821, %5391
  %5823 = phi float [ 0.000000e+00, %5391 ], [ %5812, %5821 ]
  %5824 = phi float [ 0.000000e+00, %5391 ], [ %5813, %5821 ]
  %5825 = phi float [ 0.000000e+00, %5391 ], [ %5814, %5821 ]
  %5826 = phi float [ 0.000000e+00, %5391 ], [ %5816, %5821 ]
  %5827 = phi float [ 0.000000e+00, %5391 ], [ %5817, %5821 ]
  %5828 = phi float [ 0.000000e+00, %5391 ], [ %5818, %5821 ]
  %5829 = call float @dx.op.dot3.f32(i32 55, float %5823, float %5824, float %5825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5830 = select i1 %168, float 0.000000e+00, float %5823
  %5831 = select i1 %168, float %5829, float %5824
  %5832 = select i1 %168, float 0.000000e+00, float %5825
  %5833 = fcmp fast olt float %5385, 0.000000e+00
  %5834 = call float @dx.op.unary.f32(i32 6, float %5385)  ; FAbs(value)
  %5835 = fmul fast float %5834, %5386
  %5836 = fmul fast float %5834, %5387
  %5837 = fmul fast float %5834, %5388
  %5838 = select i1 %5833, float %5386, float %5835
  %5839 = select i1 %5833, float %5387, float %5836
  %5840 = select i1 %5833, float %5388, float %5837
  %5841 = fsub fast float 1.000000e+00, %5834
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5843 = fmul fast float %5842, %5830
  %5844 = fmul fast float %5842, %5831
  %5845 = fmul fast float %5842, %5832
  %5846 = fadd fast float %5838, %5843
  %5847 = fadd fast float %5839, %5844
  %5848 = fadd fast float %5840, %5845
  %5849 = fcmp fast une float %5135, 0.000000e+00
  br i1 %5849, label %5950, label %5850

; <label>:5850                                    ; preds = %5822
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.CBufRet.f32 %5851, 1
  %5854 = extractvalue %dx.types.CBufRet.f32 %5851, 2
  %5855 = extractvalue %dx.types.CBufRet.f32 %5851, 3
  %5856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.f32 %5856, 0
  %5858 = extractvalue %dx.types.CBufRet.f32 %5856, 1
  %5859 = extractvalue %dx.types.CBufRet.f32 %5856, 2
  %5860 = extractvalue %dx.types.CBufRet.f32 %5856, 3
  %5861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5862 = extractvalue %dx.types.CBufRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.CBufRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.CBufRet.f32 %5861, 2
  %5865 = extractvalue %dx.types.CBufRet.f32 %5861, 3
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5862, float %5863, float %5864, float %4804, float %4805, float %4806)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5827, float %5828, float %5862, float %5863, float %5864)  ; Dot3(ax,ay,az,bx,by,bz)
  %5868 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float %5862, float %5863, float %5864)  ; Dot3(ax,ay,az,bx,by,bz)
  %5869 = fadd fast float %4779, -1.000000e+00
  %5870 = fsub fast float %5867, %5868
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5873 = fmul fast float %5872, %5867
  %5874 = fdiv fast float 1.600000e+02, %5873
  %5875 = fmul fast float %5869, %5869
  %5876 = fmul fast float %5875, 0xBFB5B17960000000
  %5877 = fmul fast float %5876, %5870
  %5878 = fmul fast float %5877, %5874
  %5879 = call float @dx.op.unary.f32(i32 21, float %5878)  ; Exp(value)
  %5880 = fmul fast float %5879, 0x3FF04B2960000000
  %5881 = fsub fast float 0x3FF04B2960000000, %5880
  %5882 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5883 = fmul fast float %5882, 4.000000e+00
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 0
  %5886 = extractvalue %dx.types.CBufRet.f32 %5884, 1
  %5887 = extractvalue %dx.types.CBufRet.f32 %5884, 2
  %5888 = fadd fast float %5885, %5826
  %5889 = fadd fast float %5886, %5827
  %5890 = fadd fast float %5887, %5828
  %5891 = fmul fast float %5888, %5852
  %5892 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %5853, float %5891)  ; FMad(a,b,c)
  %5893 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %5854, float %5892)  ; FMad(a,b,c)
  %5894 = fadd fast float %5893, %5855
  %5895 = fmul fast float %5888, %5857
  %5896 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %5858, float %5895)  ; FMad(a,b,c)
  %5897 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %5859, float %5896)  ; FMad(a,b,c)
  %5898 = fadd fast float %5897, %5860
  %5899 = fmul fast float %5888, %5862
  %5900 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %5863, float %5899)  ; FMad(a,b,c)
  %5901 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %5864, float %5900)  ; FMad(a,b,c)
  %5902 = fadd fast float %5901, %5865
  %5903 = fdiv fast float %5894, %5902
  %5904 = fdiv fast float %5898, %5902
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5908 = fmul fast float %5906, %5903
  %5909 = fmul fast float %5907, %5904
  %5910 = extractvalue %dx.types.CBufRet.f32 %5905, 2
  %5911 = extractvalue %dx.types.CBufRet.f32 %5905, 3
  %5912 = fadd fast float %5908, %5910
  %5913 = fadd fast float %5909, %5911
  %5914 = fmul fast float %5866, 8.000000e+00
  %5915 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  %5916 = fmul fast float %5912, 2.000000e+00
  %5917 = fmul fast float %5913, 2.000000e+00
  %5918 = fadd fast float %5916, -1.000000e+00
  %5919 = fadd fast float %5917, -1.000000e+00
  %5920 = fmul fast float %5918, %5918
  %5921 = fsub fast float 1.000000e+00, %5920
  %5922 = call float @dx.op.unary.f32(i32 7, float %5921)  ; Saturate(value)
  %5923 = fmul fast float %5919, %5919
  %5924 = fsub fast float 1.000000e+00, %5923
  %5925 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5926 = fmul fast float %5135, %5922
  %5927 = fmul fast float %5926, %5925
  %5928 = call float @dx.op.unary.f32(i32 7, float %5927)  ; Saturate(value)
  %5929 = fmul fast float %5928, %5915
  %5930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %5912, float %5913, float undef, float undef, i32 0, i32 0, i32 undef, float %5883)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5931 = extractvalue %dx.types.ResRet.f32 %5930, 0
  %5932 = extractvalue %dx.types.ResRet.f32 %5930, 1
  %5933 = extractvalue %dx.types.ResRet.f32 %5930, 2
  %5934 = select i1 %168, float 0.000000e+00, float %5932
  %5935 = select i1 %168, float 0.000000e+00, float %5933
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 2
  %5938 = fmul fast float %5937, %5931
  %5939 = fmul fast float %5934, %5937
  %5940 = fmul fast float %5935, %5937
  %5941 = fsub fast float %5938, %5830
  %5942 = fsub fast float %5939, %5831
  %5943 = fsub fast float %5940, %5832
  %5944 = fmul fast float %5941, %5929
  %5945 = fmul fast float %5942, %5929
  %5946 = fmul fast float %5943, %5929
  %5947 = fadd fast float %5944, %5830
  %5948 = fadd fast float %5945, %5831
  %5949 = fadd fast float %5946, %5832
  br label %5950

; <label>:5950                                    ; preds = %5850, %5822, %5384, %5108
  %5951 = phi float [ %5386, %5384 ], [ %5846, %5822 ], [ %5065, %5108 ], [ %5947, %5850 ]
  %5952 = phi float [ %5387, %5384 ], [ %5847, %5822 ], [ %5066, %5108 ], [ %5948, %5850 ]
  %5953 = phi float [ %5388, %5384 ], [ %5848, %5822 ], [ %5067, %5108 ], [ %5949, %5850 ]
  %5954 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4777, float %4778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5955 = fcmp fast ogt float %5954, 0x3E7FF19E20000000
  %5956 = fdiv fast float 1.000000e+00, %5954
  %5957 = select i1 %5955, float %5956, float 0.000000e+00
  %5958 = fmul fast float %5957, %4776
  %5959 = fmul fast float %5957, %4777
  %5960 = fmul fast float %5957, %4778
  %5961 = fadd fast float %5958, -1.000000e+00
  %5962 = fadd fast float %5959, -1.000000e+00
  %5963 = fadd fast float %5960, -1.000000e+00
  %5964 = fmul fast float %5961, 5.000000e-01
  %5965 = fmul fast float %5962, 5.000000e-01
  %5966 = fmul fast float %5963, 5.000000e-01
  %5967 = fadd fast float %5964, 1.000000e+00
  %5968 = fadd fast float %5965, 1.000000e+00
  %5969 = fadd fast float %5966, 1.000000e+00
  %5970 = fmul fast float %5951, %5109
  %5971 = fmul fast float %5952, %5110
  %5972 = fmul fast float %5953, %5111
  %5973 = fsub fast float 1.000000e+00, %4798
  %5974 = bitcast float %5973 to i32
  %5975 = sitofp i32 %5974 to float
  %5976 = fmul fast float %5975, 5.000000e+00
  %5977 = fadd fast float %5976, 0xC1EFBF8940000000
  %5978 = fptosi float %5977 to i32
  %5979 = bitcast i32 %5978 to float
  %5980 = fmul fast float %5979, %4394
  %5981 = fmul fast float %5057, %5980
  %5982 = fmul fast float %5981, %5114
  %5983 = fmul fast float %5982, %5967
  %5984 = fmul fast float %5058, %5980
  %5985 = fmul fast float %5984, %5114
  %5986 = fmul fast float %5985, %5968
  %5987 = fmul fast float %5059, %5980
  %5988 = fmul fast float %5987, %5114
  %5989 = fmul fast float %5988, %5969
  %5990 = fadd fast float %5970, %4383
  %5991 = fadd fast float %5990, %5983
  %5992 = fmul fast float %5991, %4390
  %5993 = fadd fast float %5971, %4384
  %5994 = fadd fast float %5993, %5986
  %5995 = fmul fast float %5994, %4390
  %5996 = fadd fast float %5972, %4385
  %5997 = fadd fast float %5996, %5989
  %5998 = fmul fast float %5997, %4390
  %5999 = fmul fast float %5114, %5059
  %6000 = fmul fast float %5114, %5058
  %6001 = fmul fast float %5114, %5057
  %6002 = fmul fast float %5114, %4485
  %6003 = fadd fast float %6002, -1.000000e+00
  %6004 = fmul fast float %6003, %4390
  %6005 = fadd fast float %6004, 1.000000e+00
  %6006 = fmul fast float %5114, %4484
  %6007 = fadd fast float %6006, -1.000000e+00
  %6008 = fmul fast float %6007, %4390
  %6009 = fadd fast float %6008, 1.000000e+00
  %6010 = fmul fast float %5114, %4483
  %6011 = fadd fast float %6010, -1.000000e+00
  %6012 = fmul fast float %6011, %4390
  %6013 = fadd fast float %6012, 1.000000e+00
  %6014 = fmul fast float %6013, %5061
  %6015 = fmul fast float %6009, %5062
  %6016 = fmul fast float %6005, %5063
  %6017 = fadd fast float %6014, %6001
  %6018 = fmul fast float %6017, %4390
  %6019 = fadd fast float %6015, %6000
  %6020 = fmul fast float %6019, %4390
  %6021 = fadd fast float %6016, %5999
  %6022 = fmul fast float %6021, %4390
  %6023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6024 = extractvalue %dx.types.CBufRet.f32 %6023, 3
  %6025 = fcmp fast oeq float %6024, 0.000000e+00
  br i1 %6025, label %6298, label %6026

; <label>:6026                                    ; preds = %5950
  %6027 = extractvalue %dx.types.CBufRet.f32 %6023, 0
  %6028 = extractvalue %dx.types.CBufRet.f32 %6023, 1
  %6029 = extractvalue %dx.types.CBufRet.f32 %6023, 2
  %6030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6031 = extractvalue %dx.types.CBufRet.f32 %6030, 0
  %6032 = extractvalue %dx.types.CBufRet.f32 %6030, 1
  %6033 = extractvalue %dx.types.CBufRet.f32 %6030, 2
  %6034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6035 = extractvalue %dx.types.CBufRet.f32 %6034, 0
  %6036 = extractvalue %dx.types.CBufRet.f32 %6034, 1
  %6037 = call float @dx.op.dot3.f32(i32 55, float %6031, float %6032, float %6033, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6038 = select i1 %168, float %6035, float %6031
  %6039 = select i1 %168, float %6037, float %6032
  %6040 = select i1 %168, float %6036, float %6033
  %6041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.f32 %6041, 1
  %6043 = fcmp fast une float %6042, 0.000000e+00
  br i1 %6043, label %6044, label %6061

; <label>:6044                                    ; preds = %6026
  %6045 = fptoui float %72 to i32
  %6046 = fptoui float %73 to i32
  %6047 = lshr i32 %6045, 4
  %6048 = lshr i32 %6046, 4
  %6049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6050 = extractvalue %dx.types.CBufRet.f32 %6049, 0
  %6051 = fptoui float %6050 to i32
  %6052 = add i32 %6051, 15
  %6053 = lshr i32 %6052, 4
  %6054 = mul i32 %6053, %6048
  %6055 = add i32 %6054, %6047
  %6056 = shl i32 %6055, 3
  %6057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6056, i32 undef)  ; BufferLoad(srv,index,wot)
  %6058 = extractvalue %dx.types.ResRet.i32 %6057, 0
  %6059 = and i32 %6058, -268435456
  %6060 = icmp eq i32 %6059, -1342177280
  br i1 %6060, label %6066, label %6061

; <label>:6061                                    ; preds = %6044, %6026
  %6062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %29, float %4784, float %4785, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6063 = extractvalue %dx.types.ResRet.f32 %6062, 0
  %6064 = extractvalue %dx.types.ResRet.f32 %6062, 1
  %6065 = extractvalue %dx.types.ResRet.f32 %6062, 2
  br label %6066

; <label>:6066                                    ; preds = %6061, %6044
  %6067 = phi float [ %6063, %6061 ], [ 0.000000e+00, %6044 ]
  %6068 = phi float [ %6064, %6061 ], [ 0.000000e+00, %6044 ]
  %6069 = phi float [ %6065, %6061 ], [ 0.000000e+00, %6044 ]
  %6070 = call float @dx.op.binary.f32(i32 36, float %6068, float %6069)  ; FMin(a,b)
  %6071 = call float @dx.op.binary.f32(i32 36, float %6067, float %6070)  ; FMin(a,b)
  %6072 = fcmp fast ogt float %6071, 0.000000e+00
  br i1 %6072, label %6073, label %6298, !dx.controlflow.hints !75

; <label>:6073                                    ; preds = %6066
  %6074 = fmul fast float %6067, %6038
  %6075 = fmul fast float %6068, %6039
  %6076 = fmul fast float %6069, %6040
  %6077 = fsub fast float %6027, %4769
  %6078 = fsub fast float %6028, %4768
  %6079 = fsub fast float %6029, %4767
  %6080 = call float @dx.op.dot3.f32(i32 55, float %6077, float %6078, float %6079, float %6077, float %6078, float %6079)  ; Dot3(ax,ay,az,bx,by,bz)
  %6081 = call float @dx.op.unary.f32(i32 25, float %6080)  ; Rsqrt(value)
  %6082 = fmul fast float %6081, %6077
  %6083 = fmul fast float %6081, %6078
  %6084 = fmul fast float %6081, %6079
  %6085 = call float @dx.op.dot3.f32(i32 55, float %6027, float %6028, float %6029, float %4773, float %4774, float %4775)  ; Dot3(ax,ay,az,bx,by,bz)
  %6086 = call float @dx.op.dot3.f32(i32 55, float %4766, float %4765, float %4764, float %6082, float %6083, float %6084)  ; Dot3(ax,ay,az,bx,by,bz)
  %6087 = call float @dx.op.unary.f32(i32 7, float %6085)  ; Saturate(value)
  %6088 = fmul fast float %6087, %6087
  %6089 = fmul fast float %6088, %4823
  %6090 = call float @dx.op.unary.f32(i32 7, float %6089)  ; Saturate(value)
  %6091 = fmul fast float %6090, %6087
  %6092 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4774, float %4775, float %6082, float %6083, float %6084)  ; Dot3(ax,ay,az,bx,by,bz)
  %6093 = fmul fast float %6092, %6092
  %6094 = call float @dx.op.unary.f32(i32 6, float %6085)  ; FAbs(value)
  %6095 = fsub fast float 1.000000e+00, %4816
  %6096 = fmul fast float %4798, %4798
  %6097 = fmul fast float %6096, %6095
  %6098 = fadd fast float %6097, %4816
  %6099 = bitcast float %6098 to i32
  %6100 = ashr i32 %6099, 1
  %6101 = add nsw i32 %6100, 532487669
  %6102 = bitcast i32 %6101 to float
  %6103 = fadd fast float %6102, %4798
  %6104 = fmul fast float %4816, %6093
  %6105 = fsub fast float 1.000000e+00, %6093
  %6106 = fadd fast float %6105, %6104
  %6107 = fmul fast float %6094, %6094
  %6108 = fmul fast float %6107, %6095
  %6109 = fadd fast float %6108, %4816
  %6110 = bitcast float %6109 to i32
  %6111 = ashr i32 %6110, 1
  %6112 = add nsw i32 %6111, 532487669
  %6113 = bitcast i32 %6112 to float
  %6114 = fadd fast float %6113, %6094
  %6115 = fmul fast float %6106, %6106
  %6116 = fmul fast float %6115, %6103
  %6117 = fmul fast float %6116, %6114
  %6118 = fdiv fast float 0x3FF0A00000000000, %6117
  %6119 = fmul fast float %6118, %4816
  %6120 = call float @dx.op.unary.f32(i32 6, float %6086)  ; FAbs(value)
  %6121 = fsub fast float 1.000000e+00, %6120
  %6122 = bitcast float %6121 to i32
  %6123 = sitofp i32 %6122 to float
  %6124 = fmul fast float %6123, 5.000000e+00
  %6125 = fadd fast float %6124, 0xC1EFBF8940000000
  %6126 = fptosi float %6125 to i32
  %6127 = bitcast i32 %6126 to float
  %6128 = fsub fast float 1.000000e+00, %4770
  %6129 = fsub fast float 1.000000e+00, %4771
  %6130 = fsub fast float 1.000000e+00, %4796
  %6131 = fmul fast float %6127, %6128
  %6132 = fmul fast float %6127, %6129
  %6133 = fmul fast float %6127, %6130
  %6134 = fadd fast float %6131, %4770
  %6135 = fadd fast float %6132, %4771
  %6136 = fadd fast float %6133, %4796
  br i1 %5081, label %6137, label %6160

; <label>:6137                                    ; preds = %6073
  %6138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4393, float %6120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6139 = extractvalue %dx.types.ResRet.f32 %6138, 0
  %6140 = extractvalue %dx.types.ResRet.f32 %6138, 1
  %6141 = extractvalue %dx.types.ResRet.f32 %6138, 2
  %6142 = fadd fast float %6139, -5.000000e-01
  %6143 = fadd fast float %6140, -5.000000e-01
  %6144 = fadd fast float %6141, -5.000000e-01
  %6145 = fmul fast float %4770, 4.000000e+00
  %6146 = fmul fast float %6145, %6128
  %6147 = fmul fast float %6146, %6142
  %6148 = fmul fast float %4771, 4.000000e+00
  %6149 = fmul fast float %6148, %6129
  %6150 = fmul fast float %6149, %6143
  %6151 = fmul fast float %4796, 4.000000e+00
  %6152 = fmul fast float %6151, %6130
  %6153 = fmul fast float %6152, %6144
  %6154 = fadd fast float %6147, %6134
  %6155 = fadd fast float %6150, %6135
  %6156 = fadd fast float %6153, %6136
  %6157 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6158 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  %6159 = call float @dx.op.unary.f32(i32 7, float %6156)  ; Saturate(value)
  br label %6160

; <label>:6160                                    ; preds = %6137, %6073
  %6161 = phi float [ %6157, %6137 ], [ %6134, %6073 ]
  %6162 = phi float [ %6158, %6137 ], [ %6135, %6073 ]
  %6163 = phi float [ %6159, %6137 ], [ %6136, %6073 ]
  %6164 = fmul fast float %6085, 9.843750e-01
  %6165 = fadd fast float %6164, 7.812500e-03
  %6166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6165, float %5071, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6167 = extractvalue %dx.types.ResRet.f32 %6166, 2
  %6168 = extractvalue %dx.types.ResRet.f32 %6166, 3
  %6169 = fmul fast float %6167, %4770
  %6170 = fmul fast float %6167, %4771
  %6171 = fmul fast float %6167, %4796
  %6172 = fadd fast float %6169, %6168
  %6173 = fadd fast float %6170, %6168
  %6174 = fadd fast float %6171, %6168
  br i1 %5081, label %6175, label %6198

; <label>:6175                                    ; preds = %6160
  %6176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4393, float %6085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6177 = extractvalue %dx.types.ResRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.ResRet.f32 %6176, 1
  %6179 = extractvalue %dx.types.ResRet.f32 %6176, 2
  %6180 = fadd fast float %6177, -5.000000e-01
  %6181 = fadd fast float %6178, -5.000000e-01
  %6182 = fadd fast float %6179, -5.000000e-01
  %6183 = fmul fast float %4770, 4.000000e+00
  %6184 = fmul fast float %6183, %6128
  %6185 = fmul fast float %6184, %6180
  %6186 = fmul fast float %4771, 4.000000e+00
  %6187 = fmul fast float %6186, %6129
  %6188 = fmul fast float %6187, %6181
  %6189 = fmul fast float %4796, 4.000000e+00
  %6190 = fmul fast float %6189, %6130
  %6191 = fmul fast float %6190, %6182
  %6192 = fadd fast float %6185, %6172
  %6193 = fadd fast float %6188, %6173
  %6194 = fadd fast float %6191, %6174
  %6195 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6196 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6197 = call float @dx.op.unary.f32(i32 7, float %6194)  ; Saturate(value)
  br label %6198

; <label>:6198                                    ; preds = %6175, %6160
  %6199 = phi float [ %6195, %6175 ], [ %6172, %6160 ]
  %6200 = phi float [ %6196, %6175 ], [ %6173, %6160 ]
  %6201 = phi float [ %6197, %6175 ], [ %6174, %6160 ]
  %6202 = call float @dx.op.binary.f32(i32 35, float %6200, float %6201)  ; FMax(a,b)
  %6203 = call float @dx.op.binary.f32(i32 35, float %6199, float %6202)  ; FMax(a,b)
  %6204 = fsub fast float 1.000000e+00, %6203
  %6205 = fsub fast float -0.000000e+00, %4773
  %6206 = fsub fast float -0.000000e+00, %4774
  %6207 = fsub fast float -0.000000e+00, %4775
  %6208 = call float @dx.op.dot3.f32(i32 55, float %6027, float %6028, float %6029, float %6205, float %6206, float %6207)  ; Dot3(ax,ay,az,bx,by,bz)
  %6209 = call float @dx.op.unary.f32(i32 7, float %6208)  ; Saturate(value)
  %6210 = fmul fast float %6209, 9.843750e-01
  %6211 = fadd fast float %6210, 7.812500e-03
  %6212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6211, float %5071, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6213 = extractvalue %dx.types.ResRet.f32 %6212, 2
  %6214 = extractvalue %dx.types.ResRet.f32 %6212, 3
  %6215 = fmul fast float %6213, %4770
  %6216 = fmul fast float %6213, %4771
  %6217 = fmul fast float %6213, %4796
  %6218 = fadd fast float %6215, %6214
  %6219 = fadd fast float %6216, %6214
  %6220 = fadd fast float %6217, %6214
  br i1 %5081, label %6221, label %6244

; <label>:6221                                    ; preds = %6198
  %6222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4393, float %6209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6223 = extractvalue %dx.types.ResRet.f32 %6222, 0
  %6224 = extractvalue %dx.types.ResRet.f32 %6222, 1
  %6225 = extractvalue %dx.types.ResRet.f32 %6222, 2
  %6226 = fadd fast float %6223, -5.000000e-01
  %6227 = fadd fast float %6224, -5.000000e-01
  %6228 = fadd fast float %6225, -5.000000e-01
  %6229 = fmul fast float %4770, 4.000000e+00
  %6230 = fmul fast float %6229, %6128
  %6231 = fmul fast float %6230, %6226
  %6232 = fmul fast float %4771, 4.000000e+00
  %6233 = fmul fast float %6232, %6129
  %6234 = fmul fast float %6233, %6227
  %6235 = fmul fast float %4796, 4.000000e+00
  %6236 = fmul fast float %6235, %6130
  %6237 = fmul fast float %6236, %6228
  %6238 = fadd fast float %6231, %6218
  %6239 = fadd fast float %6234, %6219
  %6240 = fadd fast float %6237, %6220
  %6241 = call float @dx.op.unary.f32(i32 7, float %6238)  ; Saturate(value)
  %6242 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  %6243 = call float @dx.op.unary.f32(i32 7, float %6240)  ; Saturate(value)
  br label %6244

; <label>:6244                                    ; preds = %6221, %6198
  %6245 = phi float [ %6241, %6221 ], [ %6218, %6198 ]
  %6246 = phi float [ %6242, %6221 ], [ %6219, %6198 ]
  %6247 = phi float [ %6243, %6221 ], [ %6220, %6198 ]
  %6248 = call float @dx.op.binary.f32(i32 35, float %6246, float %6247)  ; FMax(a,b)
  %6249 = call float @dx.op.binary.f32(i32 35, float %6245, float %6248)  ; FMax(a,b)
  %6250 = fsub fast float 1.000000e+00, %6249
  %6251 = fmul fast float %6250, %6209
  %6252 = fmul fast float %6251, %4483
  %6253 = fmul fast float %6251, %4484
  %6254 = fmul fast float %6251, %4485
  %6255 = fmul fast float %6161, %6119
  %6256 = fmul fast float %6162, %6119
  %6257 = fmul fast float %6163, %6119
  %6258 = fsub fast float 1.000000e+00, %6086
  %6259 = bitcast float %6258 to i32
  %6260 = sitofp i32 %6259 to float
  %6261 = fmul fast float %6260, 5.000000e+00
  %6262 = fadd fast float %6261, 0xC1EFBF8940000000
  %6263 = fptosi float %6262 to i32
  %6264 = bitcast i32 %6263 to float
  %6265 = fmul fast float %6264, %4394
  %6266 = fmul fast float %6204, %6265
  %6267 = fmul fast float %6266, %5967
  %6268 = fmul fast float %6266, %5968
  %6269 = fmul fast float %6266, %5969
  %6270 = fmul fast float %6204, %6091
  %6271 = fadd fast float %6267, %6255
  %6272 = fadd fast float %6268, %6256
  %6273 = fadd fast float %6269, %6257
  %6274 = fadd fast float %6252, %6270
  %6275 = fadd fast float %6253, %6270
  %6276 = fadd fast float %6254, %6270
  %6277 = fmul fast float %6274, %6074
  %6278 = fmul fast float %6275, %6075
  %6279 = fmul fast float %6276, %6076
  %6280 = fmul fast float %6091, %6074
  %6281 = fmul fast float %6280, %6271
  %6282 = fmul fast float %6091, %6075
  %6283 = fmul fast float %6282, %6272
  %6284 = fmul fast float %6091, %6076
  %6285 = fmul fast float %6284, %6273
  %6286 = fadd fast float %6277, %6017
  %6287 = fmul fast float %6286, %4390
  %6288 = fadd fast float %6278, %6019
  %6289 = fmul fast float %6288, %4390
  %6290 = fadd fast float %6279, %6021
  %6291 = fmul fast float %6290, %4390
  %6292 = fadd fast float %6281, %5991
  %6293 = fmul fast float %6292, %4390
  %6294 = fadd fast float %6283, %5994
  %6295 = fmul fast float %6294, %4390
  %6296 = fadd fast float %6285, %5997
  %6297 = fmul fast float %6296, %4390
  br label %6298

; <label>:6298                                    ; preds = %6244, %6066, %5950
  %6299 = phi float [ %5992, %5950 ], [ %5992, %6066 ], [ %6293, %6244 ]
  %6300 = phi float [ %5995, %5950 ], [ %5995, %6066 ], [ %6295, %6244 ]
  %6301 = phi float [ %5998, %5950 ], [ %5998, %6066 ], [ %6297, %6244 ]
  %6302 = phi float [ %6018, %5950 ], [ %6018, %6066 ], [ %6287, %6244 ]
  %6303 = phi float [ %6020, %5950 ], [ %6020, %6066 ], [ %6289, %6244 ]
  %6304 = phi float [ %6022, %5950 ], [ %6022, %6066 ], [ %6291, %6244 ]
  %6305 = call float @dx.op.unary.f32(i32 24, float %4776)  ; Sqrt(value)
  %6306 = call float @dx.op.unary.f32(i32 24, float %4777)  ; Sqrt(value)
  %6307 = call float @dx.op.unary.f32(i32 24, float %4778)  ; Sqrt(value)
  %6308 = fmul fast float %6305, %6302
  %6309 = fmul fast float %6306, %6303
  %6310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6311 = extractvalue %dx.types.CBufRet.f32 %6310, 0
  br i1 %168, label %6312, label %6335

; <label>:6312                                    ; preds = %6298
  %6313 = fadd fast float %6304, %4396
  %6314 = fmul fast float %6313, %4397
  %6315 = fsub fast float 1.000000e+00, %4397
  %6316 = call float @dx.op.unary.f32(i32 7, float %6315)  ; Saturate(value)
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 3
  %6319 = fmul fast float %6318, %6316
  %6320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6320, 0
  %6322 = fmul fast float %6321, %5973
  %6323 = extractvalue %dx.types.CBufRet.f32 %6320, 2
  %6324 = fmul fast float %6323, %4794
  %6325 = fadd fast float %6309, %6308
  %6326 = fmul fast float %6311, %6325
  %6327 = extractvalue %dx.types.CBufRet.f32 %6317, 1
  %6328 = fadd fast float %6319, %6314
  %6329 = fsub fast float %6328, %6322
  %6330 = fadd fast float %6329, %6324
  %6331 = fsub fast float %6330, %6327
  %6332 = extractvalue %dx.types.CBufRet.f32 %6317, 2
  %6333 = fmul fast float %6331, %6332
  %6334 = call float @dx.op.unary.f32(i32 7, float %6333)  ; Saturate(value)
  br label %6351

; <label>:6335                                    ; preds = %6298
  %6336 = fmul fast float %6307, %6304
  %6337 = fmul fast float %6311, %6308
  %6338 = fmul fast float %6311, %6309
  %6339 = fmul fast float %6336, %6311
  %6340 = add i32 %32, 356
  %6341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %6340, i32 undef)  ; BufferLoad(srv,index,wot)
  %6342 = extractvalue %dx.types.ResRet.i32 %6341, 0
  %6343 = and i32 %6342, 32
  %6344 = icmp eq i32 %6343, 0
  br i1 %6344, label %6351, label %6345

; <label>:6345                                    ; preds = %6335
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6348 = fmul fast float %6347, 0x3FE99999A0000000
  %6349 = fadd fast float %6347, %6337
  %6350 = fadd fast float %6348, %6339
  br label %6351

; <label>:6351                                    ; preds = %6345, %6335, %6312
  %6352 = phi float [ %6326, %6312 ], [ %6349, %6345 ], [ %6337, %6335 ]
  %6353 = phi float [ %6334, %6312 ], [ %6338, %6345 ], [ %6338, %6335 ]
  %6354 = phi float [ 1.000000e+00, %6312 ], [ %6350, %6345 ], [ %6339, %6335 ]
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = fmul fast float %6356, %6300
  %6358 = fmul fast float %6356, %6301
  %6359 = fadd fast float %6300, %6299
  %6360 = select i1 %168, float %6359, float %6299
  %6361 = fmul float %6360, %6356
  %6362 = select i1 %168, float 0.000000e+00, float %6357
  %6363 = select i1 %168, float 0.000000e+00, float %6358
  %6364 = fmul fast float %6352, %6305
  %6365 = fmul fast float %6353, %6306
  %6366 = fmul fast float %6354, %6307
  %6367 = fadd fast float %6361, %6364
  %6368 = fadd fast float %6362, %6365
  %6369 = fadd fast float %6363, %6366
  %6370 = select i1 %168, float %6353, float %6368
  %6371 = select i1 %168, float %6354, float %6369
  %6372 = call float @dx.op.binary.f32(i32 36, float %6367, float 3.225500e+04)  ; FMin(a,b)
  %6373 = call float @dx.op.binary.f32(i32 36, float %6370, float 3.225500e+04)  ; FMin(a,b)
  %6374 = call float @dx.op.binary.f32(i32 36, float %6371, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6372)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6373)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6374)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

