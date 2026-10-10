;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; TEXCOORDS                0   xy          1     NONE   float   xy  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: b11541ff81d0e500aeacd23e48a5cf32
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
; TEXCOORDS                0                 linear       
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
;   [208 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          2d      T2     t65,space2     1
;                                   texture     f32          2d      T3     t66,space2     1
;                                   texture     f32          2d      T4     t67,space2     1
;                                   texture     u32          2d      T5     t64,space2     1
;                                   texture    byte         r/o      T6     t38,space1     1
;                                   texture    byte         r/o      T7     t39,space1     1
;                                   texture    byte         r/o      T8     t40,space1     1
;                                   texture     f32          2d      T9             t0     1
;                                   texture     u32          2d     T10             t1     1
;                                   texture     u32     2darray     T11     t11,space2     1
;                                   texture     f32     2darray     T12     t10,space2     1
;                                   texture     f32          2d     T13     t69,space2     1
;                                   texture    byte         r/o     T14     t16,space1     1
;                                   texture    byte         r/o     T15     t17,space1     1
;                                   texture     f32          2d     T16     t33,space2     1
;                                   texture     f32     2darray     T17     t16,space2     1
;                                   texture     f32          3d     T18     t15,space2     1
;                                   texture     f32          2d     T19     t13,space2     1
;                                   texture     u32          2d     T20     t17,space2     1
;                                   texture     f32          3d     T21     t18,space2     1
;                                   texture     f32          2d     T22     t58,space2     1
;                                   texture     f32          2d     T23     t59,space2     1
;                                   texture     f32          2d     T24     t60,space2     1
;                                   texture    byte         r/o     T25     t45,space1     1
;                                   texture    byte         r/o     T26     t46,space1     1
;                                   texture    byte         r/o     T27     t47,space1     1
;                                   texture    byte         r/o     T28     t48,space1     1
;                                   texture     f32          2d     T29     t57,space2     1
;                                   texture    byte         r/o     T30     t69,space1     1
;                                   texture     f32          2d     T31     t34,space2     1
;                                   texture    byte         r/o     T32     t10,space1     1
;                                   texture    byte         r/o     T33     t68,space1     1
;                                   texture     f32          2d     T34      t0,space2     1
;                                   texture    byte         r/o     T35     t11,space1     1
;                                   texture    byte         r/o     T36     t13,space1     1
;                                       UAV  struct         r/w      U0             u5     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5 }
;   output 1 depends on inputs: { 0, 1, 4, 5 }
;   output 2 depends on inputs: { 0, 1, 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<unsigned int, 2> >" = type { <2 x i32>, %"class.Texture2D<vector<unsigned int, 2> >::mips_type" }
%"class.Texture2D<vector<unsigned int, 2> >::mips_type" = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 64, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 65, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = fmul fast float %47, %44
  %49 = fmul fast float %47, %45
  %50 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %42, float %43, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = fcmp fast ogt float %51, -1.000000e+00
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %55 = select i1 %52, float %54, float 1.000000e+00
  %56 = fadd fast float %51, 1.000000e+00
  %57 = fmul fast float %55, %56
  %58 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %62 = fmul fast float %48, 2.000000e+00
  %63 = fmul fast float %62, %60
  %64 = fmul fast float %49, 2.000000e+00
  %65 = fmul fast float %64, %61
  %66 = fsub fast float 1.000000e+00, %63
  %67 = fsub fast float 1.000000e+00, %65
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %66, %69
  %73 = fmul fast float %66, %70
  %74 = fmul fast float %66, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fmul fast float %67, %76
  %80 = fmul fast float %67, %77
  %81 = fmul fast float %67, %78
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fadd fast float %79, %83
  %87 = fadd fast float %86, %72
  %88 = fadd fast float %80, %84
  %89 = fadd fast float %88, %73
  %90 = fadd fast float %81, %85
  %91 = fadd fast float %90, %74
  %92 = fmul fast float %87, %58
  %93 = fmul fast float %89, %58
  %94 = fmul fast float %91, %58
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 1
  %98 = fadd fast float %96, %92
  %99 = fadd fast float %97, %93
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = fsub fast float %98, %101
  %104 = fsub fast float %99, %102
  %105 = fptoui float %48 to i32
  %106 = fptoui float %49 to i32
  %107 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %28, i32 0, i32 %105, i32 %106, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = lshr i32 %108, 8
  %110 = and i32 %108, 255
  %111 = and i32 %109, 255
  %112 = uitofp i32 %110 to float
  %113 = uitofp i32 %111 to float
  %114 = fmul fast float %112, 0x3F80101020000000
  %115 = fmul fast float %113, 0x3F80101020000000
  %116 = fadd fast float %114, -1.000000e+00
  %117 = fadd fast float %115, -1.000000e+00
  %118 = call float @dx.op.unary.f32(i32 6, float %116)  ; FAbs(value)
  %119 = fsub fast float 1.000000e+00, %118
  %120 = call float @dx.op.unary.f32(i32 6, float %117)  ; FAbs(value)
  %121 = fsub fast float %119, %120
  %122 = fsub fast float -0.000000e+00, %121
  %123 = call float @dx.op.binary.f32(i32 35, float %122, float 0.000000e+00)  ; FMax(a,b)
  %124 = fcmp fast ogt float %116, 0.000000e+00
  %125 = fsub fast float -0.000000e+00, %123
  %126 = select i1 %124, float %125, float %123
  %127 = fadd fast float %126, %116
  %128 = fcmp fast ogt float %117, 0.000000e+00
  %129 = select i1 %128, float %125, float %123
  %130 = fadd fast float %129, %117
  %131 = call float @dx.op.dot3.f32(i32 55, float %127, float %130, float %121, float %127, float %130, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %132 = call float @dx.op.unary.f32(i32 25, float %131)  ; Rsqrt(value)
  %133 = fmul fast float %127, %132
  %134 = fmul fast float %130, %132
  %135 = fmul fast float %132, %121
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.i32 %136, 0
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 126)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 130)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %147 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 131)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.i32 %148, 2
  %150 = uitofp i32 %149 to float
  %151 = fptoui float %150 to i32
  %152 = uitofp i32 %137 to float
  %153 = fptosi float %152 to i32
  %154 = fmul fast float %103, 0x3F3A027520000000
  %155 = fmul fast float %104, 0x3F3A027520000000
  %156 = add nsw i32 %153, -1
  %157 = fptosi float %155 to i32
  %158 = call i32 @dx.op.binary.i32(i32 37, i32 %157, i32 0)  ; IMax(a,b)
  %159 = call i32 @dx.op.binary.i32(i32 38, i32 %158, i32 %156)  ; IMin(a,b)
  %160 = fptosi float %154 to i32
  %161 = call i32 @dx.op.binary.i32(i32 37, i32 %160, i32 0)  ; IMax(a,b)
  %162 = call i32 @dx.op.binary.i32(i32 38, i32 %161, i32 %156)  ; IMin(a,b)
  %163 = mul nsw i32 %159, %153
  %164 = add nsw i32 %162, %163
  %165 = sdiv i32 %164, 4
  %166 = shl nsw i32 %165, 2
  %167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = srem i32 %164, 4
  %170 = shl nsw i32 %169, 3
  %171 = and i32 %170, 24
  %172 = lshr i32 %168, %171
  %173 = and i32 %172, 255
  %174 = mul nuw nsw i32 %173, 12
  %175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = extractvalue %dx.types.ResRet.f32 %175, 1
  %178 = extractvalue %dx.types.ResRet.f32 %175, 2
  %179 = fsub fast float %103, %176
  %180 = fsub fast float %104, %177
  %181 = fdiv fast float %179, %178
  %182 = fdiv fast float %180, %178
  %183 = fmul fast float %147, 2.500000e+01
  %184 = extractvalue %dx.types.CBufRet.i32 %148, 1
  %185 = uitofp i32 %184 to float
  %186 = extractvalue %dx.types.CBufRet.i32 %136, 1
  %187 = extractvalue %dx.types.CBufRet.i32 %148, 0
  %188 = mul i32 %187, %186
  %189 = uitofp i32 %188 to float
  %190 = uitofp i32 %151 to float
  %191 = icmp eq i32 %173, 0
  %192 = shl nuw nsw i32 %173, 3
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = extractvalue %dx.types.ResRet.i32 %193, 1
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %204

; <label>:199                                     ; preds = %0
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = extractvalue %dx.types.ResRet.i32 %200, 1
  %203 = lshr i32 %202, 16
  br label %204

; <label>:204                                     ; preds = %199, %0
  %205 = phi i32 [ 0, %199 ], [ %173, %0 ]
  %206 = phi i32 [ %201, %199 ], [ %194, %0 ]
  %207 = phi i32 [ %202, %199 ], [ %195, %0 ]
  %208 = phi i32 [ %203, %199 ], [ %196, %0 ]
  %209 = and i32 %207, 65535
  %210 = lshr i32 %206, 16
  %211 = and i32 %206, 65535
  %212 = lshr i32 %208, 1
  %213 = uitofp i32 %212 to float
  %214 = icmp eq i32 %205, 0
  %215 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %216 = bitcast float %215 to i32
  %217 = fdiv fast float %103, %147
  %218 = fdiv fast float %104, %147
  %219 = fptoui float %190 to i32
  %220 = fmul fast float %217, %183
  %221 = fmul fast float %218, %183
  %222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.i32 %222, 3
  %224 = and i32 %223, 2
  %225 = icmp ne i32 %224, 0
  %226 = select i1 %225, float 5.000000e-01, float 1.000000e+00
  %227 = call float @dx.op.unary.f32(i32 83, float %220)  ; DerivCoarseX(value)
  %228 = call float @dx.op.unary.f32(i32 83, float %221)  ; DerivCoarseX(value)
  %229 = fmul fast float %226, %227
  %230 = fmul fast float %226, %228
  %231 = call float @dx.op.unary.f32(i32 84, float %220)  ; DerivCoarseY(value)
  %232 = call float @dx.op.unary.f32(i32 84, float %221)  ; DerivCoarseY(value)
  %233 = fmul fast float %226, %231
  %234 = fmul fast float %232, %226
  %235 = call float @dx.op.dot2.f32(i32 54, float %229, float %230, float %229, float %230)  ; Dot2(ax,ay,bx,by)
  %236 = call float @dx.op.dot2.f32(i32 54, float %233, float %234, float %233, float %234)  ; Dot2(ax,ay,bx,by)
  %237 = call float @dx.op.binary.f32(i32 35, float %235, float %236)  ; FMax(a,b)
  %238 = call float @dx.op.unary.f32(i32 23, float %237)  ; Log(value)
  %239 = fmul fast float %238, 5.000000e-01
  %240 = call float @dx.op.binary.f32(i32 36, float %235, float %236)  ; FMin(a,b)
  %241 = call float @dx.op.unary.f32(i32 23, float %240)  ; Log(value)
  %242 = uitofp i32 %219 to float
  %243 = fsub fast float %238, %241
  %244 = fmul fast float %243, 5.000000e-01
  %245 = call float @dx.op.binary.f32(i32 36, float %244, float %242)  ; FMin(a,b)
  %246 = fmul fast float %245, %146
  %247 = fsub fast float %239, %246
  %248 = call float @dx.op.binary.f32(i32 35, float %247, float 0.000000e+00)  ; FMax(a,b)
  %249 = call float @dx.op.binary.f32(i32 36, float %248, float 2.400000e+01)  ; FMin(a,b)
  %250 = fadd fast float %249, %144
  %251 = call float @dx.op.unary.f32(i32 27, float %249)  ; Round_ni(value)
  %252 = fptosi float %251 to i32
  %253 = select i1 %191, i32 %216, i32 0
  %254 = sub nsw i32 %252, %253
  %255 = call i32 @dx.op.binary.i32(i32 37, i32 %254, i32 0)  ; IMax(a,b)
  %256 = call i32 @dx.op.binary.i32(i32 38, i32 %255, i32 8)  ; IMin(a,b)
  %257 = fmul fast float %181, 2.560000e+02
  %258 = fmul fast float %182, 2.560000e+02
  %259 = call float @dx.op.unary.f32(i32 27, float %257)  ; Round_ni(value)
  %260 = call float @dx.op.unary.f32(i32 27, float %258)  ; Round_ni(value)
  %261 = call float @dx.op.binary.f32(i32 35, float %259, float 0.000000e+00)  ; FMax(a,b)
  %262 = call float @dx.op.binary.f32(i32 35, float %260, float 0.000000e+00)  ; FMax(a,b)
  %263 = call float @dx.op.binary.f32(i32 36, float %261, float 2.550000e+02)  ; FMin(a,b)
  %264 = call float @dx.op.binary.f32(i32 36, float %262, float 2.550000e+02)  ; FMin(a,b)
  %265 = fptoui float %263 to i32
  %266 = fptoui float %264 to i32
  %267 = and i32 %256, 31
  %268 = lshr i32 %265, %267
  %269 = lshr i32 %266, %267
  %270 = shl i32 %256, 24
  %271 = shl nuw nsw i32 %173, 16
  %272 = or i32 %270, %271
  %273 = shl i32 %269, 8
  %274 = or i32 %272, %268
  %275 = or i32 %274, %273
  %276 = select i1 %214, float %217, float %181
  %277 = select i1 %214, float %218, float %182
  %278 = call float @dx.op.unary.f32(i32 27, float %250)  ; Round_ni(value)
  %279 = fptosi float %278 to i32
  %280 = sub nsw i32 8, %209
  %281 = select i1 %214, i32 %216, i32 %280
  %282 = sub nsw i32 %279, %281
  %283 = call i32 @dx.op.binary.i32(i32 37, i32 %282, i32 0)  ; IMax(a,b)
  %284 = call i32 @dx.op.binary.i32(i32 38, i32 %283, i32 %209)  ; IMin(a,b)
  %285 = fptoui float %213 to i32
  %286 = and i32 %284, 31
  %287 = lshr i32 %285, %286
  %288 = add i32 %287, -1
  %289 = uitofp i32 %288 to float
  %290 = uitofp i32 %287 to float
  %291 = fmul fast float %290, %276
  %292 = fmul fast float %290, %277
  %293 = call float @dx.op.unary.f32(i32 27, float %291)  ; Round_ni(value)
  %294 = call float @dx.op.unary.f32(i32 27, float %292)  ; Round_ni(value)
  %295 = call float @dx.op.binary.f32(i32 35, float %293, float 0.000000e+00)  ; FMax(a,b)
  %296 = call float @dx.op.binary.f32(i32 35, float %294, float 0.000000e+00)  ; FMax(a,b)
  %297 = call float @dx.op.binary.f32(i32 36, float %295, float %289)  ; FMin(a,b)
  %298 = call float @dx.op.binary.f32(i32 36, float %296, float %289)  ; FMin(a,b)
  %299 = fptoui float %297 to i32
  %300 = fptoui float %298 to i32
  %301 = lshr i32 %211, %286
  %302 = lshr i32 %210, %286
  %303 = add i32 %299, %301
  %304 = add i32 %300, %302
  %305 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %33, i32 %284, i32 %303, i32 %304, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = lshr i32 %306, 8
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = lshr i32 %306, 16
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fptoui float %314 to i32
  %316 = lshr i32 %306, 24
  %317 = uitofp i32 %316 to float
  %318 = fadd fast float %317, 1.000000e+00
  %319 = fptoui float %318 to i32
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, %276
  %322 = fmul fast float %320, %277
  %323 = add i32 %319, -1
  %324 = uitofp i32 %323 to float
  %325 = call float @dx.op.unary.f32(i32 27, float %321)  ; Round_ni(value)
  %326 = call float @dx.op.unary.f32(i32 27, float %322)  ; Round_ni(value)
  %327 = call float @dx.op.binary.f32(i32 35, float %325, float 0.000000e+00)  ; FMax(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %326, float 0.000000e+00)  ; FMax(a,b)
  %329 = call float @dx.op.binary.f32(i32 36, float %327, float %324)  ; FMin(a,b)
  %330 = call float @dx.op.binary.f32(i32 36, float %328, float %324)  ; FMin(a,b)
  %331 = fsub fast float %321, %329
  %332 = fsub fast float %322, %330
  %333 = fadd fast float %185, 8.000000e+00
  %334 = fmul fast float %308, %333
  %335 = fmul fast float %311, %333
  %336 = fmul fast float %331, %185
  %337 = fmul fast float %332, %185
  %338 = fadd fast float %334, 4.500000e+00
  %339 = fadd fast float %338, %336
  %340 = fadd fast float %335, 4.500000e+00
  %341 = fadd fast float %340, %337
  %342 = fdiv fast float %339, %189
  %343 = fdiv fast float %341, %189
  %344 = and i32 %315, 31
  %345 = shl i32 1, %344
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, %189
  %348 = fdiv fast float 1.000000e+00, %347
  %349 = fmul fast float %348, %229
  %350 = fmul fast float %348, %230
  %351 = fmul fast float %348, %233
  %352 = fmul fast float %348, %234
  %353 = fmul fast float %139, %48
  %354 = fmul fast float %140, %49
  %355 = fadd fast float %141, %353
  %356 = fadd fast float %142, %354
  %357 = call float @dx.op.unary.f32(i32 27, float %355)  ; Round_ni(value)
  %358 = call float @dx.op.unary.f32(i32 27, float %356)  ; Round_ni(value)
  %359 = fptosi float %357 to i32
  %360 = fptosi float %358 to i32
  %361 = mul i32 %360, 240
  %362 = add i32 %361, %359
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %362, i32 0, i32 %275, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 3
  %366 = fmul fast float %364, %48
  %367 = fmul fast float %365, %49
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 114688
  %371 = icmp ne i32 %370, 0
  %372 = select i1 %371, float %366, float 0.000000e+00
  %373 = select i1 %371, float %367, float 0.000000e+00
  %374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %39, float %372, float %373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = fmul fast float %375, 2.550000e+02
  %377 = fptoui float %376 to i32
  %378 = select i1 %371, i32 %377, i32 0
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.i32 %380, 3
  %382 = and i32 %381, 3
  %383 = icmp ne i32 %382, 0
  %384 = and i32 %381, 4
  %385 = icmp ne i32 %384, 0
  %386 = and i1 %383, %385
  br i1 %386, label %387, label %398

; <label>:387                                     ; preds = %204
  %388 = extractvalue %dx.types.CBufRet.f32 %379, 3
  %389 = fmul fast float %388, %49
  %390 = extractvalue %dx.types.CBufRet.f32 %379, 2
  %391 = fmul fast float %390, %48
  %392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %391, float %389, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = fsub fast float 1.000000e+00, %393
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = fcmp fast olt float %394, %396
  br label %401

; <label>:398                                     ; preds = %204
  %399 = icmp eq i32 %384, 0
  %400 = and i1 %383, %399
  br label %401

; <label>:401                                     ; preds = %398, %387
  %402 = phi i1 [ %397, %387 ], [ %400, %398 ]
  %403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %404 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %36, %dx.types.Handle %403, float %342, float %343, float undef, float undef, i32 0, i32 0, i32 undef, float %349, float %350, float undef, float %351, float %352, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = extractvalue %dx.types.ResRet.f32 %404, 1
  %407 = extractvalue %dx.types.ResRet.f32 %404, 2
  %408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 131)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.i32 %408, 3
  %410 = icmp eq i32 %409, 5
  br i1 %410, label %420, label %411, !dx.controlflow.hints !69

; <label>:411                                     ; preds = %401
  %412 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %35, %dx.types.Handle %403, float %342, float %343, float undef, float undef, i32 0, i32 0, i32 undef, float %349, float %350, float undef, float %351, float %352, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %34, %dx.types.Handle %403, float %342, float %343, float undef, float undef, i32 0, i32 0, i32 undef, float %349, float %350, float undef, float %351, float %352, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  br label %420

; <label>:420                                     ; preds = %411, %401
  %421 = phi float [ %419, %411 ], [ undef, %401 ]
  %422 = phi float [ %417, %411 ], [ undef, %401 ]
  %423 = phi float [ %413, %411 ], [ 0.000000e+00, %401 ]
  %424 = phi float [ %414, %411 ], [ 5.000000e-01, %401 ]
  %425 = phi float [ %415, %411 ], [ 0.000000e+00, %401 ]
  %426 = phi float [ %418, %411 ], [ 5.000000e-01, %401 ]
  %427 = fmul fast float %424, 2.000000e+00
  %428 = fadd fast float %427, -1.000000e+00
  %429 = fmul fast float %426, 2.000000e+00
  %430 = fadd fast float %429, -1.000000e+00
  %431 = fadd fast float %430, %428
  %432 = fmul fast float %431, 5.000000e-01
  %433 = fsub fast float %428, %430
  %434 = fmul fast float %433, 5.000000e-01
  %435 = call float @dx.op.unary.f32(i32 6, float %432)  ; FAbs(value)
  %436 = fsub fast float 1.000000e+00, %435
  %437 = call float @dx.op.unary.f32(i32 6, float %434)  ; FAbs(value)
  %438 = fsub fast float %436, %437
  %439 = call float @dx.op.dot3.f32(i32 55, float %432, float %434, float %438, float %432, float %434, float %438)  ; Dot3(ax,ay,az,bx,by,bz)
  %440 = call float @dx.op.unary.f32(i32 25, float %439)  ; Rsqrt(value)
  %441 = fmul fast float %432, %440
  %442 = fmul fast float %434, %440
  %443 = fmul fast float %440, %438
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %447 = fmul fast float %446, %133
  %448 = fsub fast float 1.000000e+00, %447
  %449 = fmul fast float %134, %446
  %450 = fsub fast float -0.000000e+00, %449
  %451 = fmul fast float %135, %446
  %452 = fsub fast float -0.000000e+00, %451
  %453 = call float @dx.op.dot3.f32(i32 55, float %448, float %450, float %452, float %448, float %450, float %452)  ; Dot3(ax,ay,az,bx,by,bz)
  %454 = call float @dx.op.unary.f32(i32 25, float %453)  ; Rsqrt(value)
  %455 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %456 = fmul fast float %455, %134
  %457 = fmul fast float %133, %455
  %458 = fsub fast float -0.000000e+00, %457
  %459 = fsub fast float 1.000000e+00, %456
  %460 = fmul fast float %135, %455
  %461 = fsub fast float -0.000000e+00, %460
  %462 = call float @dx.op.dot3.f32(i32 55, float %458, float %459, float %461, float %458, float %459, float %461)  ; Dot3(ax,ay,az,bx,by,bz)
  %463 = call float @dx.op.unary.f32(i32 25, float %462)  ; Rsqrt(value)
  %464 = fmul fast float %443, %133
  %465 = fmul fast float %443, %134
  %466 = fmul fast float %443, %135
  %467 = fmul fast float %454, %441
  %468 = fmul fast float %467, %448
  %469 = fmul fast float %441, %450
  %470 = fmul fast float %469, %454
  %471 = fmul fast float %441, %452
  %472 = fmul fast float %471, %454
  %473 = fadd fast float %468, %464
  %474 = fadd fast float %470, %465
  %475 = fadd fast float %472, %466
  %476 = fmul fast float %442, %458
  %477 = fmul fast float %476, %463
  %478 = fmul fast float %463, %442
  %479 = fmul fast float %478, %459
  %480 = fmul fast float %442, %461
  %481 = fmul fast float %480, %463
  %482 = fadd fast float %473, %477
  %483 = fadd fast float %474, %479
  %484 = fadd fast float %475, %481
  %485 = call float @dx.op.dot3.f32(i32 55, float %482, float %483, float %484, float %482, float %483, float %484)  ; Dot3(ax,ay,az,bx,by,bz)
  %486 = call float @dx.op.unary.f32(i32 25, float %485)  ; Rsqrt(value)
  %487 = fmul fast float %482, %486
  %488 = fmul fast float %483, %486
  %489 = fmul fast float %484, %486
  %490 = call float @dx.op.unary.f32(i32 83, float %92)  ; DerivCoarseX(value)
  %491 = call float @dx.op.unary.f32(i32 83, float %93)  ; DerivCoarseX(value)
  %492 = call float @dx.op.unary.f32(i32 83, float %94)  ; DerivCoarseX(value)
  %493 = call float @dx.op.unary.f32(i32 84, float %92)  ; DerivCoarseY(value)
  %494 = call float @dx.op.unary.f32(i32 84, float %93)  ; DerivCoarseY(value)
  %495 = call float @dx.op.unary.f32(i32 84, float %94)  ; DerivCoarseY(value)
  %496 = fadd fast float %490, %92
  %497 = fadd fast float %491, %93
  %498 = fadd fast float %492, %94
  %499 = fadd fast float %493, %92
  %500 = fadd fast float %494, %93
  %501 = fadd fast float %495, %94
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 0
  %504 = extractvalue %dx.types.CBufRet.f32 %502, 1
  %505 = extractvalue %dx.types.CBufRet.f32 %502, 2
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %508 = extractvalue %dx.types.CBufRet.f32 %506, 3
  %509 = fmul fast float %503, %48
  %510 = fmul fast float %509, %507
  %511 = fmul fast float %504, %49
  %512 = fmul fast float %511, %508
  %513 = fptoui float %510 to i32
  %514 = fptoui float %512 to i32
  %515 = fadd fast float %503, -1.000000e+00
  %516 = fadd fast float %504, -1.000000e+00
  %517 = fptoui float %515 to i32
  %518 = fptoui float %516 to i32
  %519 = call i32 @dx.op.binary.i32(i32 40, i32 %513, i32 %517)  ; UMin(a,b)
  %520 = call i32 @dx.op.binary.i32(i32 40, i32 %514, i32 %518)  ; UMin(a,b)
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %523 = extractvalue %dx.types.CBufRet.f32 %521, 3
  %524 = fmul fast float %522, %58
  %525 = fsub fast float %524, %523
  %526 = fadd fast float %505, -1.000000e+00
  %527 = call float @dx.op.binary.f32(i32 36, float %525, float %526)  ; FMin(a,b)
  %528 = fptoui float %527 to i32
  %529 = fptoui float %503 to i32
  %530 = fptoui float %504 to i32
  %531 = mul i32 %528, %530
  %532 = add i32 %531, %520
  %533 = mul i32 %532, %529
  %534 = add i32 %533, %519
  %535 = shl i32 %534, 2
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 1023
  %539 = lshr i32 %537, 10
  %540 = icmp eq i32 %538, 0
  br i1 %540, label %970, label %541

; <label>:541                                     ; preds = %420
  %542 = and i32 %537, 1023
  br label %543

; <label>:543                                     ; preds = %630, %541
  %544 = phi float [ %631, %630 ], [ 0.000000e+00, %541 ]
  %545 = phi float [ %632, %630 ], [ %445, %541 ]
  %546 = phi float [ %633, %630 ], [ %421, %541 ]
  %547 = phi float [ %634, %630 ], [ 0.000000e+00, %541 ]
  %548 = phi float [ %635, %630 ], [ 0.000000e+00, %541 ]
  %549 = phi float [ %636, %630 ], [ 0.000000e+00, %541 ]
  %550 = phi float [ %637, %630 ], [ 0.000000e+00, %541 ]
  %551 = phi float [ %638, %630 ], [ 0.000000e+00, %541 ]
  %552 = phi float [ %639, %630 ], [ %487, %541 ]
  %553 = phi float [ %640, %630 ], [ %488, %541 ]
  %554 = phi float [ %641, %630 ], [ %489, %541 ]
  %555 = phi float [ %642, %630 ], [ %425, %541 ]
  %556 = phi float [ %643, %630 ], [ %423, %541 ]
  %557 = phi float [ %644, %630 ], [ 0.000000e+00, %541 ]
  %558 = phi float [ %645, %630 ], [ %422, %541 ]
  %559 = phi float [ %646, %630 ], [ %405, %541 ]
  %560 = phi float [ %647, %630 ], [ %406, %541 ]
  %561 = phi float [ %648, %630 ], [ %407, %541 ]
  %562 = phi i32 [ %628, %630 ], [ 0, %541 ]
  %563 = add nuw nsw i32 %562, %539
  %564 = shl i32 %563, 2
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = shl i32 %566, 8
  %568 = or i32 %567, 48
  %569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 0
  %571 = extractvalue %dx.types.ResRet.f32 %569, 1
  %572 = extractvalue %dx.types.ResRet.f32 %569, 2
  %573 = or i32 %567, 64
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = extractvalue %dx.types.ResRet.i32 %574, 1
  %577 = extractvalue %dx.types.ResRet.i32 %574, 2
  %578 = extractvalue %dx.types.ResRet.i32 %574, 3
  %579 = or i32 %567, 80
  %580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = extractvalue %dx.types.ResRet.f32 %580, 1
  %583 = extractvalue %dx.types.ResRet.f32 %580, 2
  %584 = extractvalue %dx.types.ResRet.f32 %580, 3
  %585 = or i32 %567, 96
  %586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = extractvalue %dx.types.ResRet.f32 %586, 1
  %589 = extractvalue %dx.types.ResRet.f32 %586, 2
  %590 = extractvalue %dx.types.ResRet.f32 %586, 3
  %591 = or i32 %567, 112
  %592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = extractvalue %dx.types.ResRet.f32 %592, 1
  %595 = extractvalue %dx.types.ResRet.f32 %592, 2
  %596 = extractvalue %dx.types.ResRet.f32 %592, 3
  %597 = or i32 %567, 128
  %598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = extractvalue %dx.types.ResRet.f32 %598, 3
  %603 = or i32 %567, 144
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = extractvalue %dx.types.ResRet.f32 %604, 3
  %609 = or i32 %567, 160
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = extractvalue %dx.types.ResRet.f32 %610, 3
  %615 = or i32 %567, 192
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = or i32 %567, 208
  %619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = or i32 %567, 240
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = or i32 %567, 248
  %625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = add nuw nsw i32 %562, 1
  %629 = icmp eq i32 %623, 0
  br i1 %629, label %630, label %650

; <label>:630                                     ; preds = %956, %775, %701, %650, %543
  %631 = phi float [ %544, %543 ], [ %544, %701 ], [ %778, %775 ], [ %778, %956 ], [ %544, %650 ]
  %632 = phi float [ %545, %543 ], [ %545, %701 ], [ %545, %775 ], [ %931, %956 ], [ %545, %650 ]
  %633 = phi float [ %546, %543 ], [ %546, %701 ], [ %546, %775 ], [ %929, %956 ], [ %546, %650 ]
  %634 = phi float [ %547, %543 ], [ %547, %701 ], [ %547, %775 ], [ %901, %956 ], [ %547, %650 ]
  %635 = phi float [ %548, %543 ], [ %548, %701 ], [ %548, %775 ], [ %899, %956 ], [ %548, %650 ]
  %636 = phi float [ %549, %543 ], [ %549, %701 ], [ %549, %775 ], [ %966, %956 ], [ %549, %650 ]
  %637 = phi float [ %550, %543 ], [ %550, %701 ], [ %550, %775 ], [ %967, %956 ], [ %550, %650 ]
  %638 = phi float [ %551, %543 ], [ %551, %701 ], [ %551, %775 ], [ %968, %956 ], [ %551, %650 ]
  %639 = phi float [ %552, %543 ], [ %552, %701 ], [ %552, %775 ], [ %880, %956 ], [ %552, %650 ]
  %640 = phi float [ %553, %543 ], [ %553, %701 ], [ %553, %775 ], [ %881, %956 ], [ %553, %650 ]
  %641 = phi float [ %554, %543 ], [ %554, %701 ], [ %554, %775 ], [ %882, %956 ], [ %554, %650 ]
  %642 = phi float [ %555, %543 ], [ %555, %701 ], [ %555, %775 ], [ %909, %956 ], [ %555, %650 ]
  %643 = phi float [ %556, %543 ], [ %556, %701 ], [ %556, %775 ], [ %906, %956 ], [ %556, %650 ]
  %644 = phi float [ %557, %543 ], [ %557, %701 ], [ %557, %775 ], [ %903, %956 ], [ %557, %650 ]
  %645 = phi float [ %558, %543 ], [ %558, %701 ], [ %558, %775 ], [ %897, %956 ], [ %558, %650 ]
  %646 = phi float [ %559, %543 ], [ %559, %701 ], [ %559, %775 ], [ %892, %956 ], [ %559, %650 ]
  %647 = phi float [ %560, %543 ], [ %560, %701 ], [ %560, %775 ], [ %893, %956 ], [ %560, %650 ]
  %648 = phi float [ %561, %543 ], [ %561, %701 ], [ %561, %775 ], [ %894, %956 ], [ %561, %650 ]
  %649 = icmp eq i32 %628, %542
  br i1 %649, label %969, label %543

; <label>:650                                     ; preds = %543
  %651 = extractvalue %dx.types.ResRet.f32 %569, 3
  %652 = bitcast float %651 to i32
  %653 = and i32 %652, 2560
  %654 = icmp eq i32 %653, 0
  %655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = extractvalue %dx.types.ResRet.f32 %655, 1
  %658 = extractvalue %dx.types.ResRet.f32 %655, 2
  %659 = extractvalue %dx.types.ResRet.f32 %655, 3
  %660 = call float @dx.op.dot4.f32(i32 56, float %656, float %657, float %658, float %659, float %92, float %93, float %94, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %661 = or i32 %567, 16
  %662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.f32 %662, 0
  %664 = extractvalue %dx.types.ResRet.f32 %662, 1
  %665 = extractvalue %dx.types.ResRet.f32 %662, 2
  %666 = extractvalue %dx.types.ResRet.f32 %662, 3
  %667 = call float @dx.op.dot4.f32(i32 56, float %663, float %664, float %665, float %666, float %92, float %93, float %94, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %668 = or i32 %567, 32
  %669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 2
  %673 = extractvalue %dx.types.ResRet.f32 %669, 3
  %674 = call float @dx.op.dot4.f32(i32 56, float %670, float %671, float %672, float %673, float %92, float %93, float %94, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %675 = call float @dx.op.unary.f32(i32 27, float %660)  ; Round_ni(value)
  %676 = call float @dx.op.unary.f32(i32 6, float %675)  ; FAbs(value)
  %677 = call float @dx.op.unary.f32(i32 27, float %667)  ; Round_ni(value)
  %678 = call float @dx.op.unary.f32(i32 6, float %677)  ; FAbs(value)
  %679 = call float @dx.op.unary.f32(i32 6, float %674)  ; FAbs(value)
  %680 = call float @dx.op.unary.f32(i32 27, float %679)  ; Round_ni(value)
  %681 = fadd fast float %678, %676
  %682 = fadd fast float %681, %680
  %683 = fcmp fast oeq float %682, 0.000000e+00
  %684 = call float @dx.op.dot4.f32(i32 56, float %656, float %657, float %658, float %659, float %496, float %497, float %498, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %685 = call float @dx.op.dot4.f32(i32 56, float %663, float %664, float %665, float %666, float %496, float %497, float %498, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %686 = call float @dx.op.dot4.f32(i32 56, float %656, float %657, float %658, float %659, float %499, float %500, float %501, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %687 = call float @dx.op.dot4.f32(i32 56, float %663, float %664, float %665, float %666, float %499, float %500, float %501, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %688 = fsub fast float %684, %660
  %689 = fsub fast float %686, %660
  %690 = fsub fast float %685, %667
  %691 = fsub fast float %687, %667
  %692 = call float @dx.op.dot3.f32(i32 55, float %570, float %571, float %572, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %695 = fadd fast float %694, %692
  %696 = call float @dx.op.unary.f32(i32 7, float %695)  ; Saturate(value)
  %697 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %698 = fcmp fast ogt float %696, %697
  %699 = and i1 %683, %698
  %700 = and i1 %654, %699
  br i1 %700, label %701, label %630

; <label>:701                                     ; preds = %650
  %702 = add i32 %578, 0
  %703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %702, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %705 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %703, %dx.types.Handle %704, float %660, float %667, float undef, float undef, i32 0, i32 0, i32 undef, float %688, float %690, float undef, float %689, float %691, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = fmul fast float %706, %581
  %708 = fadd fast float %707, %582
  %709 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  %710 = fmul fast float %660, %587
  %711 = call float @dx.op.tertiary.f32(i32 46, float %588, float %667, float %710)  ; FMad(a,b,c)
  %712 = fadd fast float %711, %593
  %713 = fmul fast float %660, %589
  %714 = call float @dx.op.tertiary.f32(i32 46, float %590, float %667, float %713)  ; FMad(a,b,c)
  %715 = fadd fast float %714, %594
  %716 = fmul fast float %688, %587
  %717 = call float @dx.op.tertiary.f32(i32 46, float %588, float %690, float %716)  ; FMad(a,b,c)
  %718 = fmul fast float %688, %589
  %719 = call float @dx.op.tertiary.f32(i32 46, float %590, float %690, float %718)  ; FMad(a,b,c)
  %720 = fmul fast float %689, %587
  %721 = call float @dx.op.tertiary.f32(i32 46, float %588, float %691, float %720)  ; FMad(a,b,c)
  %722 = fmul fast float %689, %589
  %723 = call float @dx.op.tertiary.f32(i32 46, float %590, float %691, float %722)  ; FMad(a,b,c)
  %724 = add i32 %577, 0
  %725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %724, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %726 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %725, %dx.types.Handle %704, float %712, float %715, float undef, float undef, i32 0, i32 0, i32 undef, float %717, float %719, float undef, float %721, float %723, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  %728 = and i32 %652, 1024
  %729 = icmp ne i32 %728, 0
  %730 = fcmp fast ogt float %727, 0x3FE0101020000000
  %731 = uitofp i1 %730 to float
  %732 = select i1 %729, float %731, float %727
  %733 = and i32 %652, 8192
  %734 = icmp ne i32 %733, 0
  %735 = select i1 %734, float %596, float 1.000000e+00
  %736 = fmul fast float %660, 2.000000e+00
  %737 = fadd fast float %736, -1.000000e+00
  %738 = call float @dx.op.unary.f32(i32 6, float %737)  ; FAbs(value)
  %739 = fmul fast float %738, %626
  %740 = fsub fast float %739, %626
  %741 = call float @dx.op.unary.f32(i32 7, float %740)  ; Saturate(value)
  %742 = fmul fast float %667, 2.000000e+00
  %743 = fadd fast float %742, -1.000000e+00
  %744 = call float @dx.op.unary.f32(i32 6, float %743)  ; FAbs(value)
  %745 = fmul fast float %744, %627
  %746 = fsub fast float %745, %627
  %747 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %748 = fmul fast float %679, %583
  %749 = fsub fast float %748, %583
  %750 = call float @dx.op.unary.f32(i32 7, float %749)  ; Saturate(value)
  %751 = fmul fast float %709, %735
  %752 = fmul fast float %751, %706
  %753 = fmul fast float %752, %741
  %754 = fmul fast float %753, %732
  %755 = fmul fast float %754, %747
  %756 = fmul fast float %755, %750
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %759 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %760 = fsub fast float %696, %759
  %761 = fmul fast float %760, %758
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = fmul fast float %756, %584
  %764 = fadd fast float %756, %584
  %765 = fmul fast float %764, %595
  %766 = fsub fast float %765, %595
  %767 = call float @dx.op.unary.f32(i32 7, float %766)  ; Saturate(value)
  %768 = and i32 %652, 128
  %769 = icmp ne i32 %768, 0
  %770 = select i1 %769, float %767, float %763
  %771 = fmul fast float %770, %762
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 0
  %774 = fcmp fast ugt float %771, %773
  br i1 %774, label %775, label %630

; <label>:775                                     ; preds = %701
  %776 = select i1 %734, float %771, float 0.000000e+00
  %777 = fadd fast float %776, %544
  %778 = call float @dx.op.unary.f32(i32 7, float %777)  ; Saturate(value)
  br i1 %734, label %630, label %779

; <label>:779                                     ; preds = %775
  %780 = and i32 %652, 4
  %781 = and i32 %652, 8
  %782 = add i32 %575, 0
  %783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %782, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %784 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %783, %dx.types.Handle %403, float %712, float %715, float undef, float undef, i32 0, i32 0, i32 undef, float %717, float %719, float undef, float %721, float %723, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %785 = extractvalue %dx.types.ResRet.f32 %784, 0
  %786 = extractvalue %dx.types.ResRet.f32 %784, 1
  %787 = extractvalue %dx.types.ResRet.f32 %784, 2
  %788 = extractvalue %dx.types.ResRet.f32 %784, 3
  %789 = bitcast float %608 to i32
  %790 = and i32 %789, 255
  %791 = uitofp i32 %790 to float
  %792 = lshr i32 %789, 8
  %793 = and i32 %792, 255
  %794 = uitofp i32 %793 to float
  %795 = fmul fast float %788, %791
  %796 = fadd fast float %795, %794
  %797 = fmul fast float %796, 0x3F70101000000000
  %798 = add i32 %576, 0
  %799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %798, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %800 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %799, %dx.types.Handle %403, float %712, float %715, float undef, float undef, i32 0, i32 0, i32 undef, float %717, float %719, float undef, float %721, float %723, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = extractvalue %dx.types.ResRet.f32 %800, 1
  %803 = extractvalue %dx.types.ResRet.f32 %800, 2
  %804 = extractvalue %dx.types.ResRet.f32 %800, 3
  %805 = bitcast float %602 to i32
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = lshr i32 %805, 8
  %809 = and i32 %808, 255
  %810 = uitofp i32 %809 to float
  %811 = lshr i32 %805, 16
  %812 = and i32 %811, 255
  %813 = uitofp i32 %812 to float
  %814 = fmul fast float %813, 0x3F70101000000000
  %815 = fmul fast float %801, %807
  %816 = fadd fast float %815, %810
  %817 = fmul fast float %816, 0x3F70101000000000
  %818 = fadd fast float %802, -5.000000e-01
  %819 = fadd fast float %804, -5.000000e-01
  %820 = fmul fast float %818, %814
  %821 = fmul fast float %819, %814
  %822 = fadd fast float %820, 5.000000e-01
  %823 = fadd fast float %821, 5.000000e-01
  %824 = fmul fast float %785, %611
  %825 = fmul fast float %786, %612
  %826 = fmul fast float %787, %613
  %827 = fmul fast float %822, 2.000000e+00
  %828 = fadd fast float %827, -1.000000e+00
  %829 = fmul fast float %823, 2.000000e+00
  %830 = fadd fast float %829, -1.000000e+00
  %831 = fadd fast float %828, %830
  %832 = fmul fast float %831, 5.000000e-01
  %833 = fsub fast float %828, %830
  %834 = fmul fast float %833, 5.000000e-01
  %835 = call float @dx.op.unary.f32(i32 6, float %832)  ; FAbs(value)
  %836 = fsub fast float 1.000000e+00, %835
  %837 = call float @dx.op.unary.f32(i32 6, float %834)  ; FAbs(value)
  %838 = fsub fast float %836, %837
  %839 = call float @dx.op.dot3.f32(i32 55, float %832, float %834, float %838, float %832, float %834, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %840 = call float @dx.op.unary.f32(i32 25, float %839)  ; Rsqrt(value)
  %841 = fmul fast float %832, %840
  %842 = fmul fast float %834, %840
  %843 = fmul fast float %840, %838
  %844 = fmul fast float %843, %570
  %845 = fmul fast float %843, %571
  %846 = fmul fast float %843, %572
  %847 = fmul fast float %841, %599
  %848 = fmul fast float %841, %600
  %849 = fmul fast float %841, %601
  %850 = fadd fast float %847, %844
  %851 = fadd fast float %848, %845
  %852 = fadd fast float %849, %846
  %853 = fmul fast float %842, %605
  %854 = fmul fast float %842, %606
  %855 = fmul fast float %842, %607
  %856 = fadd fast float %850, %853
  %857 = fadd fast float %851, %854
  %858 = fadd fast float %852, %855
  %859 = call float @dx.op.dot3.f32(i32 55, float %856, float %857, float %858, float %856, float %857, float %858)  ; Dot3(ax,ay,az,bx,by,bz)
  %860 = call float @dx.op.unary.f32(i32 25, float %859)  ; Rsqrt(value)
  %861 = fmul fast float %856, %860
  %862 = fmul fast float %857, %860
  %863 = fmul fast float %858, %860
  %864 = icmp ne i32 %781, 0
  %865 = select i1 %864, float 1.000000e+00, float 0.000000e+00
  %866 = fmul fast float %771, %865
  %867 = and i32 %652, 1
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %873

; <label>:869                                     ; preds = %779
  %870 = fsub fast float %861, %552
  %871 = fsub fast float %862, %553
  %872 = fsub fast float %863, %554
  br label %873

; <label>:873                                     ; preds = %869, %779
  %874 = phi float [ %870, %869 ], [ %861, %779 ]
  %875 = phi float [ %871, %869 ], [ %862, %779 ]
  %876 = phi float [ %872, %869 ], [ %863, %779 ]
  %877 = fmul float %876, %866
  %878 = fmul float %875, %866
  %879 = fmul float %874, %866
  %880 = fadd fast float %879, %552
  %881 = fadd fast float %878, %553
  %882 = fadd fast float %877, %554
  %883 = icmp ne i32 %780, 0
  %884 = select i1 %883, float 1.000000e+00, float 0.000000e+00
  %885 = fmul fast float %771, %884
  %886 = fsub fast float %824, %559
  %887 = fsub fast float %825, %560
  %888 = fsub fast float %826, %561
  %889 = fmul fast float %886, %885
  %890 = fmul fast float %887, %885
  %891 = fmul fast float %888, %885
  %892 = fadd fast float %889, %559
  %893 = fadd fast float %890, %560
  %894 = fadd fast float %891, %561
  %895 = fsub fast float %797, %558
  %896 = fmul fast float %895, %885
  %897 = fadd fast float %896, %558
  %898 = fmul fast float %885, %548
  %899 = fsub fast float %548, %898
  %900 = fmul fast float %885, %547
  %901 = fsub fast float %547, %900
  %902 = fadd fast float %771, %557
  %903 = call float @dx.op.unary.f32(i32 7, float %902)  ; Saturate(value)
  %904 = fsub fast float %817, %556
  %905 = fmul fast float %904, %866
  %906 = fadd fast float %905, %556
  %907 = fsub fast float %803, %555
  %908 = fmul fast float %907, %866
  %909 = fadd fast float %908, %555
  %910 = call float @dx.op.dot3.f32(i32 55, float %824, float %825, float %826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %914 = fmul fast float %913, %910
  %915 = fadd fast float %914, %912
  %916 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %917 = bitcast float %614 to i32
  %918 = and i32 %917, 65535
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = lshr i32 %917, 16
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = fcmp fast oge float %919, 0.000000e+00
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = select i1 %922, float %919, float %924
  %926 = fadd fast float %925, %921
  %927 = fsub fast float %916, %546
  %928 = fmul fast float %927, %771
  %929 = fadd fast float %928, %546
  %930 = fmul fast float %926, %771
  %931 = call float @dx.op.binary.f32(i32 35, float %545, float %930)  ; FMax(a,b)
  %932 = and i32 %652, 16
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %956, label %934

; <label>:934                                     ; preds = %873
  %935 = bitcast float %620 to i32
  %936 = add i32 %617, 0
  %937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %936, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %938 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %937, %dx.types.Handle %403, float %712, float %715, float undef, float undef, i32 0, i32 0, i32 undef, float %717, float %719, float undef, float %721, float %723, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = extractvalue %dx.types.ResRet.f32 %938, 2
  %942 = and i32 %935, 65535
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = fmul fast float %939, %611
  %945 = fmul fast float %940, %612
  %946 = fmul fast float %941, %613
  %947 = and i32 %652, 16384
  %948 = icmp ne i32 %947, 0
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = select i1 %948, float %950, float 1.000000e+00
  %952 = fmul fast float %951, %943
  %953 = fmul fast float %944, %952
  %954 = fmul fast float %945, %952
  %955 = fmul fast float %946, %952
  br label %956

; <label>:956                                     ; preds = %934, %873
  %957 = phi float [ %953, %934 ], [ 0.000000e+00, %873 ]
  %958 = phi float [ %954, %934 ], [ 0.000000e+00, %873 ]
  %959 = phi float [ %955, %934 ], [ 0.000000e+00, %873 ]
  %960 = fsub fast float %957, %549
  %961 = fsub fast float %958, %550
  %962 = fsub fast float %959, %551
  %963 = fmul fast float %960, %771
  %964 = fmul fast float %961, %771
  %965 = fmul fast float %962, %771
  %966 = fadd fast float %963, %549
  %967 = fadd fast float %964, %550
  %968 = fadd fast float %965, %551
  br label %630

; <label>:969                                     ; preds = %630
  br label %970

; <label>:970                                     ; preds = %969, %420
  %971 = phi float [ 0.000000e+00, %420 ], [ %631, %969 ]
  %972 = phi float [ %445, %420 ], [ %632, %969 ]
  %973 = phi float [ %421, %420 ], [ %633, %969 ]
  %974 = phi float [ 0.000000e+00, %420 ], [ %634, %969 ]
  %975 = phi float [ 0.000000e+00, %420 ], [ %635, %969 ]
  %976 = phi float [ 0.000000e+00, %420 ], [ %636, %969 ]
  %977 = phi float [ 0.000000e+00, %420 ], [ %637, %969 ]
  %978 = phi float [ 0.000000e+00, %420 ], [ %638, %969 ]
  %979 = phi float [ %487, %420 ], [ %639, %969 ]
  %980 = phi float [ %488, %420 ], [ %640, %969 ]
  %981 = phi float [ %489, %420 ], [ %641, %969 ]
  %982 = phi float [ %425, %420 ], [ %642, %969 ]
  %983 = phi float [ %423, %420 ], [ %643, %969 ]
  %984 = phi float [ 0.000000e+00, %420 ], [ %644, %969 ]
  %985 = phi float [ %422, %420 ], [ %645, %969 ]
  %986 = phi float [ %405, %420 ], [ %646, %969 ]
  %987 = phi float [ %406, %420 ], [ %647, %969 ]
  %988 = phi float [ %407, %420 ], [ %648, %969 ]
  %989 = call float @dx.op.dot3.f32(i32 55, float %979, float %980, float %981, float %979, float %980, float %981)  ; Dot3(ax,ay,az,bx,by,bz)
  %990 = call float @dx.op.unary.f32(i32 25, float %989)  ; Rsqrt(value)
  %991 = fmul fast float %990, %979
  %992 = fmul fast float %990, %980
  %993 = fmul fast float %990, %981
  %994 = fadd fast float %984, 1.000000e+00
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %996 = call float @dx.op.dot3.f32(i32 55, float %991, float %992, float %993, float %991, float %992, float %993)  ; Dot3(ax,ay,az,bx,by,bz)
  %997 = call float @dx.op.unary.f32(i32 25, float %996)  ; Rsqrt(value)
  %998 = fmul fast float %997, %991
  %999 = fmul fast float %997, %992
  %1000 = fmul fast float %997, %993
  %1001 = fadd fast float %985, 0xBFB99999A0000000
  %1002 = call float @dx.op.unary.f32(i32 7, float %1001)  ; Saturate(value)
  %1003 = fmul fast float %1002, 0x3FF1C71C80000000
  %1004 = call float @dx.op.binary.f32(i32 36, float %985, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1005 = fsub fast float 1.000000e+00, %1003
  %1006 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  %1007 = fmul fast float %1006, %986
  %1008 = fmul fast float %1006, %987
  %1009 = fmul fast float %1006, %988
  %1010 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1011 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1012 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  %1013 = fmul fast float %1003, %986
  %1014 = fmul fast float %1003, %987
  %1015 = fmul fast float %1003, %988
  %1016 = fadd fast float %1013, %1004
  %1017 = fadd fast float %1014, %1004
  %1018 = fadd fast float %1015, %1004
  %1019 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1020 = call float @dx.op.unary.f32(i32 7, float %1017)  ; Saturate(value)
  %1021 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1022 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  %1023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.i32 %1023, 3
  %1025 = and i32 %1024, 8
  %1026 = icmp ne i32 %1025, 0
  %1027 = call float @dx.op.binary.f32(i32 35, float %1010, float %986)  ; FMax(a,b)
  %1028 = call float @dx.op.binary.f32(i32 35, float %1011, float %986)  ; FMax(a,b)
  %1029 = call float @dx.op.binary.f32(i32 35, float %1012, float %986)  ; FMax(a,b)
  %1030 = call float @dx.op.dot3.f32(i32 55, float %1010, float %1011, float %1012, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = select i1 %402, float %986, float %1010
  %1032 = select i1 %402, float %1030, float %1011
  %1033 = select i1 %402, float 1.000000e+00, float %1012
  %1034 = select i1 %1026, float %1027, float %1031
  %1035 = select i1 %1026, float %1028, float %1032
  %1036 = select i1 %1026, float %1029, float %1033
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.CBufRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1041 = fadd fast float %1038, %92
  %1042 = fadd fast float %1039, %93
  %1043 = fadd fast float %1040, %94
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.CBufRet.f32 %1044, 1
  %1047 = fsub fast float %1041, %1045
  %1048 = fsub fast float %1042, %1046
  %1049 = fmul fast float %1047, %1047
  %1050 = fmul fast float %1048, %1048
  %1051 = fadd fast float %1049, %1050
  %1052 = call float @dx.op.unary.f32(i32 24, float %1051)  ; Sqrt(value)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1044, 2
  %1054 = fcmp fast olt float %1052, %1053
  br i1 %1054, label %1055, label %1122

; <label>:1055                                    ; preds = %970
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.CBufRet.f32 %1056, 1
  %1063 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1064 = extractvalue %dx.types.CBufRet.f32 %1060, 1
  %1065 = extractvalue %dx.types.CBufRet.f32 %1056, 3
  %1066 = extractvalue %dx.types.CBufRet.f32 %1058, 3
  %1067 = extractvalue %dx.types.CBufRet.f32 %1060, 3
  %1068 = fadd fast float %1065, %1041
  %1069 = fadd fast float %1066, %1042
  %1070 = fadd fast float %1067, %1043
  %1071 = fmul fast float %1068, %1057
  %1072 = call float @dx.op.tertiary.f32(i32 46, float %1069, float %1059, float %1071)  ; FMad(a,b,c)
  %1073 = call float @dx.op.tertiary.f32(i32 46, float %1070, float %1061, float %1072)  ; FMad(a,b,c)
  %1074 = fmul fast float %1068, %1062
  %1075 = call float @dx.op.tertiary.f32(i32 46, float %1069, float %1063, float %1074)  ; FMad(a,b,c)
  %1076 = call float @dx.op.tertiary.f32(i32 46, float %1070, float %1064, float %1075)  ; FMad(a,b,c)
  %1077 = fsub fast float %1073, %1065
  %1078 = fsub fast float %1076, %1066
  %1079 = fsub fast float %1077, %1045
  %1080 = fadd fast float %1079, %1053
  %1081 = fsub fast float %1078, %1046
  %1082 = fadd fast float %1081, %1053
  %1083 = extractvalue %dx.types.CBufRet.f32 %1044, 3
  %1084 = fmul fast float %1080, %1083
  %1085 = fmul fast float %1082, %1083
  %1086 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1087 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  %1088 = fsub fast float 1.000000e+00, %1086
  %1089 = fsub fast float 1.000000e+00, %1087
  %1090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %38, float %1088, float %1089, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = fcmp fast ugt float %1091, 0.000000e+00
  br i1 %1092, label %1093, label %1396

; <label>:1093                                    ; preds = %1055
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 2
  %1096 = fmul fast float %1095, %1091
  %1097 = extractvalue %dx.types.CBufRet.f32 %1094, 3
  %1098 = fadd fast float %1097, %1096
  %1099 = extractvalue %dx.types.CBufRet.f32 %1060, 2
  %1100 = fadd fast float %1098, %1067
  %1101 = fmul fast float %1073, %1061
  %1102 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %1064, float %1101)  ; FMad(a,b,c)
  %1103 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %1099, float %1102)  ; FMad(a,b,c)
  %1104 = fsub fast float %1103, %1067
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 2
  %1107 = fsub fast float %1104, %1106
  %1108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %38, float %1088, float %1089, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %38, float %1088, float %1089, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.f32 %1112, 2
  %1116 = fadd fast float %1113, %1109
  %1117 = fmul fast float %1116, 0x3F847AE140000000
  %1118 = fadd fast float %1114, %1110
  %1119 = fmul fast float %1118, 0x3F847AE140000000
  %1120 = fadd fast float %1115, %1111
  %1121 = fmul fast float %1120, 0x3F847AE140000000
  br label %1396

; <label>:1122                                    ; preds = %970
  %1123 = and i32 %378, 1
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1396, label %1125

; <label>:1125                                    ; preds = %1122
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1133 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1134 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1135 = extractvalue %dx.types.CBufRet.f32 %1126, 3
  %1136 = extractvalue %dx.types.CBufRet.f32 %1128, 3
  %1137 = extractvalue %dx.types.CBufRet.f32 %1130, 3
  %1138 = fadd fast float %1135, %1041
  %1139 = fadd fast float %1136, %1042
  %1140 = fadd fast float %1137, %1043
  %1141 = fmul fast float %1138, %1127
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1139, float %1129, float %1141)  ; FMad(a,b,c)
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1140, float %1131, float %1142)  ; FMad(a,b,c)
  %1144 = fmul fast float %1138, %1132
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1139, float %1133, float %1144)  ; FMad(a,b,c)
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1140, float %1134, float %1145)  ; FMad(a,b,c)
  %1147 = fsub fast float %1143, %1135
  %1148 = fsub fast float %1146, %1136
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.CBufRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.CBufRet.f32 %1149, 2
  %1153 = extractvalue %dx.types.CBufRet.f32 %1149, 3
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 3
  %1156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.i32 %1156, 0
  %1158 = extractvalue %dx.types.CBufRet.i32 %1156, 1
  %1159 = udiv i32 %1158, %1157
  %1160 = fsub fast float %1147, %1150
  %1161 = fsub fast float %1148, %1151
  %1162 = call float @dx.op.binary.f32(i32 35, float %1160, float 0.000000e+00)  ; FMax(a,b)
  %1163 = call float @dx.op.binary.f32(i32 35, float %1161, float 0.000000e+00)  ; FMax(a,b)
  %1164 = call float @dx.op.binary.f32(i32 36, float %1162, float %1152)  ; FMin(a,b)
  %1165 = call float @dx.op.binary.f32(i32 36, float %1163, float %1153)  ; FMin(a,b)
  %1166 = add i32 %1157, -1
  %1167 = add i32 %1159, -1
  %1168 = fmul fast float %1164, %1155
  %1169 = fmul fast float %1165, %1155
  %1170 = fptoui float %1168 to i32
  %1171 = fptoui float %1169 to i32
  %1172 = call i32 @dx.op.binary.i32(i32 40, i32 %1170, i32 %1166)  ; UMin(a,b)
  %1173 = call i32 @dx.op.binary.i32(i32 40, i32 %1171, i32 %1167)  ; UMin(a,b)
  %1174 = mul i32 %1173, %1157
  %1175 = add i32 %1174, %1172
  %1176 = shl i32 %1175, 2
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = icmp eq i32 %1178, -1
  br i1 %1179, label %1396, label %1180

; <label>:1180                                    ; preds = %1125
  %1181 = mul i32 %1178, 148
  %1182 = add i32 %1181, 4
  %1183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = add i32 %1181, 8
  %1186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = add i32 %1181, 36
  %1189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = add i32 %1181, 60
  %1192 = add i32 %1181, 92
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = add i32 %1181, 116
  %1196 = fsub fast float %1147, %1184
  %1197 = fsub fast float %1148, %1187
  %1198 = fmul fast float %1155, %1196
  %1199 = fmul fast float %1155, %1197
  %1200 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1201 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1202 = fsub fast float 1.000000e+00, %1201
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 2
  %1205 = call float @dx.op.unary.f32(i32 83, float %1200)  ; DerivCoarseX(value)
  %1206 = call float @dx.op.unary.f32(i32 83, float %1202)  ; DerivCoarseX(value)
  %1207 = call float @dx.op.unary.f32(i32 84, float %1200)  ; DerivCoarseY(value)
  %1208 = call float @dx.op.unary.f32(i32 84, float %1202)  ; DerivCoarseY(value)
  %1209 = fmul fast float %1205, %1204
  %1210 = fmul fast float %1206, %1204
  %1211 = fmul fast float %1207, %1204
  %1212 = fmul fast float %1208, %1204
  %1213 = call float @dx.op.dot2.f32(i32 54, float %1211, float %1212, float %1211, float %1212)  ; Dot2(ax,ay,bx,by)
  %1214 = call float @dx.op.dot2.f32(i32 54, float %1209, float %1210, float %1209, float %1210)  ; Dot2(ax,ay,bx,by)
  %1215 = call float @dx.op.binary.f32(i32 35, float %1214, float %1213)  ; FMax(a,b)
  %1216 = call float @dx.op.unary.f32(i32 23, float %1215)  ; Log(value)
  %1217 = fmul fast float %1216, 5.000000e-01
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 1
  %1220 = fadd fast float %1219, %1217
  %1221 = call float @dx.op.binary.f32(i32 35, float %1220, float 0.000000e+00)  ; FMax(a,b)
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 3
  %1224 = fadd fast float %1223, %1221
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 3
  %1227 = fadd fast float %1224, %1226
  %1228 = add i32 %1194, 0
  %1229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1228, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1230 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1229, i32 0)  ; GetDimensions(handle,mipLevel)
  %1231 = extractvalue %dx.types.Dimensions %1230, 0
  %1232 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1231)  ; FirstbitLo(value)
  %1233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.i32 %1233, 1
  %1235 = sub nsw i32 %1234, %1232
  %1236 = sitofp i32 %1235 to float
  %1237 = fsub fast float %1227, %1236
  %1238 = call float @dx.op.binary.f32(i32 35, float %1237, float 0.000000e+00)  ; FMax(a,b)
  %1239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1229, %dx.types.Handle %37, float %1200, float %1202, float %1190, float undef, i32 0, i32 0, i32 undef, float %1238)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = fcmp ule float %1240, 0x3FE0101020000000
  %1242 = extractvalue %dx.types.CBufRet.i32 %1233, 0
  %1243 = and i32 %1242, 128
  %1244 = icmp ne i32 %1243, 0
  %1245 = and i1 %1241, %1244
  br i1 %1245, label %1396, label %1246

; <label>:1246                                    ; preds = %1180
  %1247 = add i32 %1181, 20
  %1248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = add i32 %1181, 24
  %1251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = add i32 %1181, 40
  %1254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = add i32 %1181, 96
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 2
  %1261 = fmul fast float %1260, %1200
  %1262 = fmul fast float %1260, %1202
  %1263 = extractvalue %dx.types.CBufRet.f32 %1259, 3
  %1264 = fadd fast float %1261, %1263
  %1265 = fadd fast float %1262, %1263
  %1266 = add i32 %1258, 0
  %1267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1266, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1268 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1267, i32 0)  ; GetDimensions(handle,mipLevel)
  %1269 = extractvalue %dx.types.Dimensions %1268, 0
  %1270 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1269)  ; FirstbitLo(value)
  %1271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.i32 %1271, 1
  %1273 = sub nsw i32 %1272, %1270
  %1274 = sitofp i32 %1273 to float
  %1275 = fsub fast float %1224, %1274
  %1276 = call float @dx.op.binary.f32(i32 35, float %1275, float 0.000000e+00)  ; FMax(a,b)
  %1277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1267, %dx.types.Handle %37, float %1264, float %1265, float %1255, float undef, i32 0, i32 0, i32 undef, float %1276)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = fmul fast float %1278, %1249
  %1280 = fadd fast float %1279, %1252
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.CBufRet.f32 %1281, 1
  %1284 = extractvalue %dx.types.CBufRet.f32 %1281, 2
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 3
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 3
  %1289 = extractvalue %dx.types.CBufRet.f32 %1281, 3
  %1290 = fadd fast float %1286, %1147
  %1291 = fadd fast float %1288, %1148
  %1292 = fadd fast float %1280, %1289
  %1293 = fmul fast float %1290, %1282
  %1294 = call float @dx.op.tertiary.f32(i32 46, float %1291, float %1283, float %1293)  ; FMad(a,b,c)
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1292, float %1284, float %1294)  ; FMad(a,b,c)
  %1296 = fsub fast float %1295, %1289
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1299 = fsub fast float %1296, %1298
  %1300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.i32 %1300, 0
  %1302 = call i32 @dx.op.binary.i32(i32 40, i32 %1178, i32 %1301)  ; UMin(a,b)
  %1303 = mul i32 %1302, 36
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = add i32 %1303, 4
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 0
  %1309 = fmul fast float %1308, %1200
  %1310 = fmul fast float %1308, %1202
  %1311 = extractvalue %dx.types.CBufRet.f32 %1307, 1
  %1312 = fadd fast float %1309, %1311
  %1313 = fadd fast float %1310, %1311
  %1314 = icmp eq i32 %1305, 0
  br i1 %1314, label %1383, label %1315

; <label>:1315                                    ; preds = %1246
  br label %1316

; <label>:1316                                    ; preds = %1373, %1315
  %1317 = phi float [ %1374, %1373 ], [ 0.000000e+00, %1315 ]
  %1318 = phi float [ %1375, %1373 ], [ 0.000000e+00, %1315 ]
  %1319 = phi float [ %1376, %1373 ], [ 0.000000e+00, %1315 ]
  %1320 = phi float [ %1377, %1373 ], [ 0.000000e+00, %1315 ]
  %1321 = phi float [ %1378, %1373 ], [ 0.000000e+00, %1315 ]
  %1322 = phi float [ %1379, %1373 ], [ 0.000000e+00, %1315 ]
  %1323 = phi i32 [ %1380, %1373 ], [ 0, %1315 ]
  %1324 = shl i32 %1323, 2
  %1325 = add i32 %1191, %1324
  %1326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  %1328 = add i32 %1195, %1324
  %1329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1330 = extractvalue %dx.types.ResRet.i32 %1329, 0
  %1331 = add i32 %1330, 0
  %1332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1331, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1333 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1332, i32 0)  ; GetDimensions(handle,mipLevel)
  %1334 = extractvalue %dx.types.Dimensions %1333, 0
  %1335 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1334)  ; FirstbitLo(value)
  %1336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.i32 %1336, 1
  %1338 = sub nsw i32 %1337, %1335
  %1339 = sitofp i32 %1338 to float
  %1340 = fsub fast float %1224, %1339
  %1341 = call float @dx.op.binary.f32(i32 35, float %1340, float 0.000000e+00)  ; FMax(a,b)
  %1342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1332, %dx.types.Handle %37, float %1312, float %1313, float %1327, float undef, i32 0, i32 0, i32 undef, float %1341)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1343 = extractvalue %dx.types.ResRet.f32 %1342, 0
  %1344 = fcmp fast ogt float %1343, 0.000000e+00
  br i1 %1344, label %1345, label %1373

; <label>:1345                                    ; preds = %1316
  %1346 = add i32 %1306, %1324
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 32767
  %1350 = mul nuw nsw i32 %1349, 928
  %1351 = add nuw nsw i32 %1350, 48
  %1352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1351, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.ResRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.ResRet.f32 %1352, 2
  %1356 = add nuw nsw i32 %1350, 60
  %1357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.ResRet.f32 %1357, 1
  %1360 = extractvalue %dx.types.ResRet.f32 %1357, 2
  %1361 = fmul fast float %1353, %1343
  %1362 = fmul fast float %1354, %1343
  %1363 = fmul fast float %1355, %1343
  %1364 = fadd fast float %1361, %1317
  %1365 = fadd fast float %1362, %1318
  %1366 = fadd fast float %1363, %1319
  %1367 = fmul fast float %1358, %1343
  %1368 = fmul fast float %1359, %1343
  %1369 = fmul fast float %1360, %1343
  %1370 = fadd fast float %1367, %1320
  %1371 = fadd fast float %1368, %1321
  %1372 = fadd fast float %1369, %1322
  br label %1373

; <label>:1373                                    ; preds = %1345, %1316
  %1374 = phi float [ %1364, %1345 ], [ %1317, %1316 ]
  %1375 = phi float [ %1365, %1345 ], [ %1318, %1316 ]
  %1376 = phi float [ %1366, %1345 ], [ %1319, %1316 ]
  %1377 = phi float [ %1370, %1345 ], [ %1320, %1316 ]
  %1378 = phi float [ %1371, %1345 ], [ %1321, %1316 ]
  %1379 = phi float [ %1372, %1345 ], [ %1322, %1316 ]
  %1380 = add nuw i32 %1323, 1
  %1381 = icmp eq i32 %1380, %1305
  br i1 %1381, label %1382, label %1316

; <label>:1382                                    ; preds = %1373
  br label %1383

; <label>:1383                                    ; preds = %1382, %1246
  %1384 = phi float [ 0.000000e+00, %1246 ], [ %1374, %1382 ]
  %1385 = phi float [ 0.000000e+00, %1246 ], [ %1375, %1382 ]
  %1386 = phi float [ 0.000000e+00, %1246 ], [ %1376, %1382 ]
  %1387 = phi float [ 0.000000e+00, %1246 ], [ %1377, %1382 ]
  %1388 = phi float [ 0.000000e+00, %1246 ], [ %1378, %1382 ]
  %1389 = phi float [ 0.000000e+00, %1246 ], [ %1379, %1382 ]
  %1390 = fadd fast float %1387, %1384
  %1391 = fmul fast float %1390, 0x3F847AE140000000
  %1392 = fadd fast float %1388, %1385
  %1393 = fmul fast float %1392, 0x3F847AE140000000
  %1394 = fadd fast float %1389, %1386
  %1395 = fmul fast float %1394, 0x3F847AE140000000
  br label %1396

; <label>:1396                                    ; preds = %1383, %1180, %1125, %1122, %1093, %1055
  %1397 = phi float [ %1107, %1093 ], [ -1.310720e+05, %1055 ], [ %1299, %1383 ], [ -1.310720e+05, %1125 ], [ -1.310720e+05, %1180 ], [ -1.310720e+05, %1122 ]
  %1398 = phi float [ %1117, %1093 ], [ 0.000000e+00, %1055 ], [ %1391, %1383 ], [ 0.000000e+00, %1125 ], [ 0.000000e+00, %1180 ], [ 0.000000e+00, %1122 ]
  %1399 = phi float [ %1119, %1093 ], [ 0.000000e+00, %1055 ], [ %1393, %1383 ], [ 0.000000e+00, %1125 ], [ 0.000000e+00, %1180 ], [ 0.000000e+00, %1122 ]
  %1400 = phi float [ %1121, %1093 ], [ 0.000000e+00, %1055 ], [ %1395, %1383 ], [ 0.000000e+00, %1125 ], [ 0.000000e+00, %1180 ], [ 0.000000e+00, %1122 ]
  %1401 = phi i1 [ true, %1093 ], [ false, %1055 ], [ true, %1383 ], [ false, %1125 ], [ false, %1180 ], [ false, %1122 ]
  %1402 = and i32 %378, 3
  %1403 = icmp eq i32 %1402, 1
  %1404 = select i1 %1403, float 1.000000e+00, float 0.000000e+00
  %1405 = fsub fast float %1397, %94
  %1406 = call float @dx.op.unary.f32(i32 7, float %1405)  ; Saturate(value)
  %1407 = select i1 %1401, float %1406, float 1.000000e+00
  %1408 = fmul fast float %1407, %1404
  %1409 = icmp eq i32 %1402, 3
  %1410 = select i1 %1409, float 1.000000e+00, float %1408
  %1411 = call float @dx.op.binary.f32(i32 35, float %971, float %1410)  ; FMax(a,b)
  %1412 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1413 = fcmp fast une float %1412, 0.000000e+00
  %1414 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %1415 = call float @dx.op.unary.f32(i32 25, float %1414)  ; Rsqrt(value)
  br i1 %1413, label %1423, label %1416

; <label>:1416                                    ; preds = %1396
  %1417 = fmul fast float %1415, %92
  %1418 = fmul fast float %1415, %93
  %1419 = fmul fast float %1415, %94
  %1420 = fsub fast float -0.000000e+00, %1417
  %1421 = fsub fast float -0.000000e+00, %1418
  %1422 = fsub fast float -0.000000e+00, %1419
  br label %1591

; <label>:1423                                    ; preds = %1396
  %1424 = fmul fast float %92, %1415
  %1425 = fsub fast float -0.000000e+00, %1424
  %1426 = fmul fast float %93, %1415
  %1427 = fsub fast float -0.000000e+00, %1426
  %1428 = fmul fast float %94, %1415
  %1429 = fsub fast float -0.000000e+00, %1428
  %1430 = call float @dx.op.dot3.f32(i32 55, float %1425, float %1427, float %1429, float %487, float %488, float %489)  ; Dot3(ax,ay,az,bx,by,bz)
  %1431 = fmul fast float %1412, 2.500000e+00
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = fmul fast float %1412, 0x4013FFFFE0000000
  %1434 = fadd fast float %1433, 0xBFFFFFFFE0000000
  %1435 = call float @dx.op.unary.f32(i32 7, float %1434)  ; Saturate(value)
  %1436 = fmul fast float %1412, 0x4004000020000000
  %1437 = fadd fast float %1436, 0xBFF8000040000000
  %1438 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1439 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1440 = fmul fast float %1001, 1.000000e+01
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = fmul fast float %1441, 2.000000e+00
  %1443 = fsub fast float 3.000000e+00, %1442
  %1444 = fmul fast float %1441, %1441
  %1445 = fmul fast float %1444, %1443
  %1446 = fsub fast float 1.000000e+00, %1445
  %1447 = fsub fast float 0x3FE3333340000000, %1022
  %1448 = fmul fast float %1447, 0x400AAAAAA0000000
  %1449 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1450 = fmul fast float %1446, %1449
  %1451 = fmul fast float %1034, 0x3FEA2B8620000000
  %1452 = fmul fast float %1035, 0x3FEA2B8620000000
  %1453 = fmul fast float %1036, 0x3FEA2B8620000000
  %1454 = fadd fast float %1451, 0x3FC81DFBA0000000
  %1455 = fmul fast float %1454, %1034
  %1456 = fadd fast float %1455, 0x3F910E6020000000
  %1457 = fadd fast float %1452, 0x3FC81DFBA0000000
  %1458 = fmul fast float %1457, %1035
  %1459 = fadd fast float %1458, 0x3F910E6020000000
  %1460 = fadd fast float %1453, 0x3FC81DFBA0000000
  %1461 = fmul fast float %1460, %1036
  %1462 = fadd fast float %1461, 0x3F910E6020000000
  %1463 = call float @dx.op.unary.f32(i32 7, float %1456)  ; Saturate(value)
  %1464 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1465 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1466 = fsub fast float %1463, %1034
  %1467 = fsub fast float %1464, %1035
  %1468 = fsub fast float %1465, %1036
  %1469 = fmul fast float %1466, %1439
  %1470 = fmul fast float %1469, %1450
  %1471 = fmul fast float %1467, %1439
  %1472 = fmul fast float %1471, %1450
  %1473 = fmul fast float %1468, %1439
  %1474 = fmul fast float %1473, %1450
  %1475 = fadd fast float %1470, %1034
  %1476 = fadd fast float %1472, %1035
  %1477 = fadd fast float %1474, %1036
  %1478 = fmul fast float %982, %982
  %1479 = fmul fast float %1478, %1478
  %1480 = fadd fast float %1435, 1.000000e+00
  %1481 = fsub fast float %1480, %1450
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1483 = call float @dx.op.dot3.f32(i32 55, float %487, float %488, float %489, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1484 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1485 = fsub fast float 1.000000e+00, %1479
  %1486 = call float @dx.op.binary.f32(i32 36, float %1482, float %1485)  ; FMin(a,b)
  %1487 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1488 = call float @dx.op.binary.f32(i32 35, float %1486, float %1487)  ; FMax(a,b)
  %1489 = fadd fast float %1484, 0xBFE4CCCCC0000000
  %1490 = fmul fast float %1489, 0x4006DB6DA0000000
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1492 = fmul fast float %1491, 2.000000e+00
  %1493 = fsub fast float 3.000000e+00, %1492
  %1494 = bitcast float %1019 to i32
  %1495 = ashr i32 %1494, 1
  %1496 = add nsw i32 %1495, 532487669
  %1497 = bitcast i32 %1496 to float
  %1498 = fsub fast float 1.000000e+00, %1497
  %1499 = bitcast float %1498 to i32
  %1500 = sub nsw i32 2129859010, %1499
  %1501 = bitcast i32 %1500 to float
  %1502 = fmul fast float %1501, 2.000000e+00
  %1503 = bitcast float %1020 to i32
  %1504 = ashr i32 %1503, 1
  %1505 = add nsw i32 %1504, 532487669
  %1506 = bitcast i32 %1505 to float
  %1507 = fsub fast float 1.000000e+00, %1506
  %1508 = bitcast float %1507 to i32
  %1509 = sub nsw i32 2129859010, %1508
  %1510 = bitcast i32 %1509 to float
  %1511 = fmul fast float %1510, 2.000000e+00
  %1512 = bitcast float %1021 to i32
  %1513 = ashr i32 %1512, 1
  %1514 = add nsw i32 %1513, 532487669
  %1515 = bitcast i32 %1514 to float
  %1516 = fsub fast float 1.000000e+00, %1515
  %1517 = bitcast float %1516 to i32
  %1518 = sub nsw i32 2129859010, %1517
  %1519 = bitcast i32 %1518 to float
  %1520 = fmul fast float %1519, 2.000000e+00
  %1521 = fsub fast float 0x4002A9FBE0000000, %1502
  %1522 = fadd fast float %1502, 0x3FD54FDF00000000
  %1523 = bitcast float %1522 to i32
  %1524 = sub nsw i32 2129859010, %1523
  %1525 = bitcast i32 %1524 to float
  %1526 = fmul fast float %1525, %1521
  %1527 = fmul fast float %1526, %1526
  %1528 = fsub fast float 0x4002A9FBE0000000, %1511
  %1529 = fadd fast float %1511, 0x3FD54FDF00000000
  %1530 = bitcast float %1529 to i32
  %1531 = sub nsw i32 2129859010, %1530
  %1532 = bitcast i32 %1531 to float
  %1533 = fmul fast float %1532, %1528
  %1534 = fmul fast float %1533, %1533
  %1535 = fsub fast float 0x4002A9FBE0000000, %1520
  %1536 = fadd fast float %1520, 0x3FD54FDF00000000
  %1537 = bitcast float %1536 to i32
  %1538 = sub nsw i32 2129859010, %1537
  %1539 = bitcast i32 %1538 to float
  %1540 = fmul fast float %1539, %1535
  %1541 = fmul fast float %1540, %1540
  %1542 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1527)  ; FMax(a,b)
  %1543 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1534)  ; FMax(a,b)
  %1544 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1541)  ; FMax(a,b)
  %1545 = fsub fast float 1.000000e+00, %1430
  %1546 = fadd fast float %1545, %1446
  %1547 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1548 = fsub fast float 1.000000e+00, %1410
  %1549 = fmul fast float %1488, %1548
  %1550 = fmul fast float %1491, %1491
  %1551 = fmul fast float %1550, %1549
  %1552 = fmul fast float %1551, %1493
  %1553 = fmul fast float %1548, 0xBFE99999A0000000
  %1554 = fmul fast float %1553, %1439
  %1555 = fmul fast float %1554, %1450
  %1556 = fadd fast float %1555, 1.000000e+00
  %1557 = fadd fast float %1022, -1.000000e+00
  %1558 = fmul fast float %1556, %1557
  %1559 = fadd fast float %1558, 1.000000e+00
  %1560 = fsub fast float %1542, %1019
  %1561 = fsub fast float %1543, %1020
  %1562 = fsub fast float %1544, %1021
  %1563 = fmul fast float %1552, %1560
  %1564 = fmul fast float %1552, %1561
  %1565 = fmul fast float %1552, %1562
  %1566 = fadd fast float %1563, %1019
  %1567 = fadd fast float %1564, %1020
  %1568 = fadd fast float %1565, %1021
  %1569 = fsub fast float %487, %998
  %1570 = fsub fast float %488, %999
  %1571 = fsub fast float %489, %1000
  %1572 = fmul fast float %1552, %1569
  %1573 = fmul fast float %1552, %1570
  %1574 = fmul fast float %1552, %1571
  %1575 = fadd fast float %1572, %998
  %1576 = fadd fast float %1573, %999
  %1577 = fadd fast float %1574, %1000
  %1578 = fmul fast float %1552, %1547
  %1579 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1580 = fsub fast float 1.000000e+00, %1579
  %1581 = fmul fast float %1578, %1580
  %1582 = fadd fast float %1581, %1579
  %1583 = fsub fast float 1.000000e+00, %982
  %1584 = fmul fast float %1552, %1583
  %1585 = fadd fast float %1584, %982
  %1586 = call float @dx.op.dot3.f32(i32 55, float %1575, float %1576, float %1577, float %1575, float %1576, float %1577)  ; Dot3(ax,ay,az,bx,by,bz)
  %1587 = call float @dx.op.unary.f32(i32 25, float %1586)  ; Rsqrt(value)
  %1588 = fmul fast float %1575, %1587
  %1589 = fmul fast float %1576, %1587
  %1590 = fmul fast float %1577, %1587
  br label %1591

; <label>:1591                                    ; preds = %1423, %1416
  %1592 = phi float [ %1422, %1416 ], [ %1429, %1423 ]
  %1593 = phi float [ %1421, %1416 ], [ %1427, %1423 ]
  %1594 = phi float [ %1420, %1416 ], [ %1425, %1423 ]
  %1595 = phi float [ %1419, %1416 ], [ %1428, %1423 ]
  %1596 = phi float [ %1418, %1416 ], [ %1426, %1423 ]
  %1597 = phi float [ %1417, %1416 ], [ %1424, %1423 ]
  %1598 = phi float [ %1034, %1416 ], [ %1475, %1423 ]
  %1599 = phi float [ %1035, %1416 ], [ %1476, %1423 ]
  %1600 = phi float [ %1036, %1416 ], [ %1477, %1423 ]
  %1601 = phi float [ %1019, %1416 ], [ %1566, %1423 ]
  %1602 = phi float [ %1020, %1416 ], [ %1567, %1423 ]
  %1603 = phi float [ %1021, %1416 ], [ %1568, %1423 ]
  %1604 = phi float [ %998, %1416 ], [ %1588, %1423 ]
  %1605 = phi float [ %999, %1416 ], [ %1589, %1423 ]
  %1606 = phi float [ %1000, %1416 ], [ %1590, %1423 ]
  %1607 = phi float [ %1022, %1416 ], [ %1582, %1423 ]
  %1608 = phi float [ %982, %1416 ], [ %1585, %1423 ]
  %1609 = select i1 %402, float 0.000000e+00, float %1603
  %1610 = call float @dx.op.dot3.f32(i32 55, float %1604, float %1605, float %1606, float %1594, float %1593, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %1611 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1612 = call float @dx.op.dot3.f32(i32 55, float %1597, float %1596, float %1595, float %1604, float %1605, float %1606)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = fmul fast float %1612, 2.000000e+00
  %1614 = fmul fast float %1613, %1604
  %1615 = fmul fast float %1613, %1605
  %1616 = fmul fast float %1613, %1606
  %1617 = fsub fast float %1597, %1614
  %1618 = fsub fast float %1596, %1615
  %1619 = fsub fast float %1595, %1616
  %1620 = call float @dx.op.binary.f32(i32 36, float %1608, float 1.000000e+00)  ; FMin(a,b)
  %1621 = fsub fast float 1.000000e+00, %1608
  %1622 = bitcast float %1621 to i32
  %1623 = sub nsw i32 2129859010, %1622
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1627 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1628 = fadd fast float %1625, %92
  %1629 = fadd fast float %1626, %93
  %1630 = fadd fast float %1627, %94
  %1631 = fmul fast float %1604, 3.200000e+01
  %1632 = fmul fast float %1605, 3.200000e+01
  %1633 = fadd fast float %1628, %1631
  %1634 = fadd fast float %1629, %1632
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = fsub fast float %1633, %1636
  %1639 = fsub fast float %1634, %1637
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 0
  %1642 = extractvalue %dx.types.CBufRet.f32 %1640, 1
  %1643 = fmul fast float %1638, %1641
  %1644 = fmul fast float %1639, %1642
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1647 = fmul fast float %1643, %1646
  %1648 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1649 = fadd fast float %1647, %1648
  %1650 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1651 = fmul fast float %1650, %1644
  %1652 = extractvalue %dx.types.CBufRet.f32 %1645, 3
  %1653 = fadd fast float %1651, %1652
  %1654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %1649, float %1653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1655 = extractvalue %dx.types.ResRet.f32 %1654, 0
  %1656 = extractvalue %dx.types.ResRet.f32 %1654, 1
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 1
  %1659 = extractvalue %dx.types.CBufRet.f32 %1657, 0
  %1660 = fsub fast float %1658, %1659
  %1661 = fmul fast float %1660, %1655
  %1662 = fadd fast float %1661, %1659
  %1663 = extractvalue %dx.types.CBufRet.f32 %1657, 3
  %1664 = extractvalue %dx.types.CBufRet.f32 %1657, 2
  %1665 = fsub fast float %1663, %1664
  %1666 = fmul fast float %1665, %1656
  %1667 = fadd fast float %1666, %1664
  %1668 = fsub fast float %1630, %1662
  %1669 = fsub fast float %1667, %1662
  %1670 = fdiv fast float %1668, %1669
  %1671 = call float @dx.op.unary.f32(i32 7, float %1670)  ; Saturate(value)
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  %1674 = fmul fast float %1673, %1671
  %1675 = extractvalue %dx.types.CBufRet.f32 %1672, 1
  %1676 = fadd fast float %1674, %1675
  %1677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %38, float %1649, float %1653, float %1676, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1678 = extractvalue %dx.types.ResRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.ResRet.f32 %1677, 1
  %1680 = extractvalue %dx.types.ResRet.f32 %1677, 2
  %1681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1682 = extractvalue %dx.types.CBufRet.f32 %1681, 0
  %1683 = extractvalue %dx.types.CBufRet.f32 %1681, 1
  %1684 = extractvalue %dx.types.CBufRet.f32 %1681, 2
  %1685 = fmul fast float %1682, %1678
  %1686 = fmul fast float %1683, %1679
  %1687 = fmul fast float %1684, %1680
  %1688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1689 = extractvalue %dx.types.CBufRet.f32 %1688, 0
  %1690 = extractvalue %dx.types.CBufRet.f32 %1688, 1
  %1691 = extractvalue %dx.types.CBufRet.f32 %1688, 2
  %1692 = fadd fast float %1685, %1689
  %1693 = fadd fast float %1686, %1690
  %1694 = fadd fast float %1687, %1691
  %1695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1696 = extractvalue %dx.types.CBufRet.f32 %1695, 0
  %1697 = fmul fast float %1696, %1643
  %1698 = extractvalue %dx.types.CBufRet.f32 %1695, 1
  %1699 = fadd fast float %1697, %1698
  %1700 = extractvalue %dx.types.CBufRet.f32 %1695, 2
  %1701 = fmul fast float %1700, %1644
  %1702 = extractvalue %dx.types.CBufRet.f32 %1695, 3
  %1703 = fadd fast float %1701, %1702
  %1704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = extractvalue %dx.types.CBufRet.f32 %1704, 0
  %1706 = extractvalue %dx.types.CBufRet.f32 %1704, 1
  %1707 = extractvalue %dx.types.CBufRet.f32 %1704, 2
  %1708 = extractvalue %dx.types.CBufRet.f32 %1704, 3
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1712 = extractvalue %dx.types.CBufRet.f32 %1709, 2
  %1713 = extractvalue %dx.types.CBufRet.f32 %1709, 3
  %1714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1699, float %1703, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1715 = extractvalue %dx.types.ResRet.f32 %1714, 0
  %1716 = extractvalue %dx.types.ResRet.f32 %1714, 1
  %1717 = extractvalue %dx.types.ResRet.f32 %1714, 2
  %1718 = extractvalue %dx.types.ResRet.f32 %1714, 3
  %1719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1699, float %1703, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1720 = extractvalue %dx.types.ResRet.f32 %1719, 0
  %1721 = extractvalue %dx.types.ResRet.f32 %1719, 1
  %1722 = extractvalue %dx.types.ResRet.f32 %1719, 2
  %1723 = extractvalue %dx.types.ResRet.f32 %1719, 3
  %1724 = fmul fast float %1715, %1692
  %1725 = fmul fast float %1720, %1692
  %1726 = fmul fast float %1722, %1692
  %1727 = fmul fast float %1718, %1692
  %1728 = fadd fast float %1724, %1705
  %1729 = fadd fast float %1725, %1706
  %1730 = fadd fast float %1726, %1707
  %1731 = fadd fast float %1727, %1708
  %1732 = fmul fast float %1716, %1692
  %1733 = fmul fast float %1721, %1692
  %1734 = fadd fast float %1732, %1710
  %1735 = fadd fast float %1733, %1711
  %1736 = fmul fast float %1717, %1692
  %1737 = fmul fast float %1723, %1692
  %1738 = fadd fast float %1736, %1712
  %1739 = fadd fast float %1737, %1713
  %1740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1699, float %1703, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1741 = extractvalue %dx.types.ResRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.ResRet.f32 %1740, 1
  %1743 = extractvalue %dx.types.ResRet.f32 %1740, 2
  %1744 = extractvalue %dx.types.ResRet.f32 %1740, 3
  %1745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1699, float %1703, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1746 = extractvalue %dx.types.ResRet.f32 %1745, 0
  %1747 = extractvalue %dx.types.ResRet.f32 %1745, 1
  %1748 = extractvalue %dx.types.ResRet.f32 %1745, 2
  %1749 = extractvalue %dx.types.ResRet.f32 %1745, 3
  %1750 = fmul fast float %1741, %1693
  %1751 = fmul fast float %1746, %1693
  %1752 = fmul fast float %1748, %1693
  %1753 = fmul fast float %1744, %1693
  %1754 = fadd fast float %1728, %1750
  %1755 = fadd fast float %1729, %1751
  %1756 = fadd fast float %1730, %1752
  %1757 = fadd fast float %1731, %1753
  %1758 = fmul fast float %1742, %1693
  %1759 = fmul fast float %1747, %1693
  %1760 = fadd fast float %1734, %1758
  %1761 = fadd fast float %1735, %1759
  %1762 = fmul fast float %1743, %1693
  %1763 = fmul fast float %1749, %1693
  %1764 = fadd fast float %1738, %1762
  %1765 = fadd fast float %1739, %1763
  %1766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1699, float %1703, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1767 = extractvalue %dx.types.ResRet.f32 %1766, 0
  %1768 = extractvalue %dx.types.ResRet.f32 %1766, 1
  %1769 = extractvalue %dx.types.ResRet.f32 %1766, 2
  %1770 = extractvalue %dx.types.ResRet.f32 %1766, 3
  %1771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1699, float %1703, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1772 = extractvalue %dx.types.ResRet.f32 %1771, 0
  %1773 = extractvalue %dx.types.ResRet.f32 %1771, 1
  %1774 = extractvalue %dx.types.ResRet.f32 %1771, 2
  %1775 = extractvalue %dx.types.ResRet.f32 %1771, 3
  %1776 = fmul fast float %1767, %1694
  %1777 = fmul fast float %1772, %1694
  %1778 = fmul fast float %1774, %1694
  %1779 = fmul fast float %1770, %1694
  %1780 = fadd fast float %1754, %1776
  %1781 = fadd fast float %1755, %1777
  %1782 = fadd fast float %1756, %1778
  %1783 = fadd fast float %1757, %1779
  %1784 = fmul fast float %1768, %1694
  %1785 = fmul fast float %1773, %1694
  %1786 = fadd fast float %1760, %1784
  %1787 = fadd fast float %1761, %1785
  %1788 = fmul fast float %1769, %1694
  %1789 = fmul fast float %1775, %1694
  %1790 = fadd fast float %1764, %1788
  %1791 = fadd fast float %1765, %1789
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1794 = fsub fast float %1628, %1793
  %1795 = fsub fast float %1636, %1628
  %1796 = call float @dx.op.binary.f32(i32 35, float %1795, float %1794)  ; FMax(a,b)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1798 = fsub fast float %1629, %1797
  %1799 = fsub fast float %1637, %1629
  %1800 = call float @dx.op.binary.f32(i32 35, float %1799, float %1798)  ; FMax(a,b)
  %1801 = call float @dx.op.binary.f32(i32 35, float %1796, float %1800)  ; FMax(a,b)
  %1802 = extractvalue %dx.types.CBufRet.f32 %1640, 3
  %1803 = fmul fast float %1802, %1801
  %1804 = call float @dx.op.unary.f32(i32 7, float %1803)  ; Saturate(value)
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 0
  %1807 = extractvalue %dx.types.CBufRet.f32 %1805, 1
  %1808 = extractvalue %dx.types.CBufRet.f32 %1805, 2
  %1809 = extractvalue %dx.types.CBufRet.f32 %1805, 3
  %1810 = fsub fast float %1806, %1780
  %1811 = fsub fast float %1807, %1781
  %1812 = fsub fast float %1808, %1782
  %1813 = fsub fast float %1809, %1783
  %1814 = fmul fast float %1810, %1804
  %1815 = fmul fast float %1811, %1804
  %1816 = fmul fast float %1812, %1804
  %1817 = fmul fast float %1813, %1804
  %1818 = fadd fast float %1814, %1780
  %1819 = fadd fast float %1815, %1781
  %1820 = fadd fast float %1816, %1782
  %1821 = fadd fast float %1817, %1783
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 0
  %1824 = extractvalue %dx.types.CBufRet.f32 %1822, 1
  %1825 = fsub fast float %1823, %1786
  %1826 = fsub fast float %1824, %1787
  %1827 = fmul fast float %1825, %1804
  %1828 = fmul fast float %1826, %1804
  %1829 = fadd fast float %1827, %1786
  %1830 = fadd fast float %1828, %1787
  %1831 = extractvalue %dx.types.CBufRet.f32 %1822, 2
  %1832 = extractvalue %dx.types.CBufRet.f32 %1822, 3
  %1833 = fsub fast float %1831, %1790
  %1834 = fsub fast float %1832, %1791
  %1835 = fmul fast float %1833, %1804
  %1836 = fmul fast float %1834, %1804
  %1837 = fadd fast float %1835, %1790
  %1838 = fadd fast float %1836, %1791
  %1839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1839, 0
  %1841 = fmul fast float %1840, %1818
  %1842 = fmul fast float %1840, %1819
  %1843 = fmul fast float %1840, %1820
  %1844 = fmul fast float %1840, %1821
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 0
  %1847 = fmul fast float %1846, %1829
  %1848 = fmul fast float %1846, %1830
  %1849 = fadd fast float %1847, %1841
  %1850 = fadd fast float %1848, %1843
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 0
  %1853 = fmul fast float %1852, %1837
  %1854 = fmul fast float %1852, %1838
  %1855 = fadd fast float %1849, %1853
  %1856 = fadd fast float %1850, %1854
  %1857 = extractvalue %dx.types.CBufRet.f32 %1839, 1
  %1858 = fmul fast float %1857, %1818
  %1859 = fmul fast float %1857, %1819
  %1860 = fmul fast float %1857, %1820
  %1861 = fmul fast float %1857, %1821
  %1862 = extractvalue %dx.types.CBufRet.f32 %1845, 1
  %1863 = fmul fast float %1862, %1829
  %1864 = fmul fast float %1862, %1830
  %1865 = fadd fast float %1863, %1858
  %1866 = fadd fast float %1864, %1860
  %1867 = extractvalue %dx.types.CBufRet.f32 %1851, 1
  %1868 = fmul fast float %1867, %1837
  %1869 = fmul fast float %1867, %1838
  %1870 = fadd fast float %1865, %1868
  %1871 = fadd fast float %1866, %1869
  %1872 = extractvalue %dx.types.CBufRet.f32 %1839, 2
  %1873 = fmul fast float %1872, %1818
  %1874 = fmul fast float %1872, %1819
  %1875 = fmul fast float %1872, %1820
  %1876 = fmul fast float %1872, %1821
  %1877 = extractvalue %dx.types.CBufRet.f32 %1845, 2
  %1878 = fmul fast float %1877, %1829
  %1879 = fmul fast float %1877, %1830
  %1880 = fadd fast float %1878, %1873
  %1881 = fadd fast float %1879, %1875
  %1882 = extractvalue %dx.types.CBufRet.f32 %1851, 2
  %1883 = fmul fast float %1882, %1837
  %1884 = fmul fast float %1882, %1838
  %1885 = fadd fast float %1880, %1883
  %1886 = fadd fast float %1881, %1884
  %1887 = fmul fast float %1874, %1874
  %1888 = fmul fast float %1886, %1886
  %1889 = fmul fast float %1876, %1876
  %1890 = fadd fast float %1889, %1887
  %1891 = fadd fast float %1890, %1888
  %1892 = call float @dx.op.unary.f32(i32 24, float %1891)  ; Sqrt(value)
  %1893 = fcmp fast ugt float %1892, 0.000000e+00
  br i1 %1893, label %1894, label %1909

; <label>:1894                                    ; preds = %1591
  %1895 = fsub fast float -0.000000e+00, %1876
  %1896 = fdiv fast float %1895, %1892
  %1897 = fsub fast float -0.000000e+00, %1874
  %1898 = fdiv fast float %1897, %1892
  %1899 = fdiv fast float %1886, %1892
  %1900 = fmul fast float %1885, 0x3FE279A760000000
  %1901 = fmul fast float %1898, %1874
  %1902 = fmul fast float %1899, %1886
  %1903 = fmul fast float %1896, %1876
  %1904 = fadd fast float %1901, %1903
  %1905 = fsub fast float %1904, %1902
  %1906 = call float @dx.op.unary.f32(i32 6, float %1905)  ; FAbs(value)
  %1907 = fadd fast float %1906, 0x3DDB7CDFE0000000
  %1908 = fdiv fast float %1900, %1907
  br label %1909

; <label>:1909                                    ; preds = %1894, %1591
  %1910 = phi float [ %1908, %1894 ], [ 1.000000e+00, %1591 ]
  %1911 = fmul fast float %1859, %1859
  %1912 = fmul fast float %1871, %1871
  %1913 = fmul fast float %1861, %1861
  %1914 = fadd fast float %1913, %1911
  %1915 = fadd fast float %1914, %1912
  %1916 = call float @dx.op.unary.f32(i32 24, float %1915)  ; Sqrt(value)
  %1917 = fcmp fast ugt float %1916, 0.000000e+00
  br i1 %1917, label %1918, label %1933

; <label>:1918                                    ; preds = %1909
  %1919 = fsub fast float -0.000000e+00, %1861
  %1920 = fdiv fast float %1919, %1916
  %1921 = fsub fast float -0.000000e+00, %1859
  %1922 = fdiv fast float %1921, %1916
  %1923 = fdiv fast float %1871, %1916
  %1924 = fmul fast float %1870, 0x3FE279A760000000
  %1925 = fmul fast float %1922, %1859
  %1926 = fmul fast float %1923, %1871
  %1927 = fmul fast float %1920, %1861
  %1928 = fadd fast float %1925, %1927
  %1929 = fsub fast float %1928, %1926
  %1930 = call float @dx.op.unary.f32(i32 6, float %1929)  ; FAbs(value)
  %1931 = fadd fast float %1930, 0x3DDB7CDFE0000000
  %1932 = fdiv fast float %1924, %1931
  br label %1933

; <label>:1933                                    ; preds = %1918, %1909
  %1934 = phi float [ %1932, %1918 ], [ 1.000000e+00, %1909 ]
  %1935 = call float @dx.op.binary.f32(i32 36, float %1934, float %1910)  ; FMin(a,b)
  %1936 = fmul fast float %1842, %1842
  %1937 = fmul fast float %1856, %1856
  %1938 = fmul fast float %1844, %1844
  %1939 = fadd fast float %1938, %1936
  %1940 = fadd fast float %1939, %1937
  %1941 = call float @dx.op.unary.f32(i32 24, float %1940)  ; Sqrt(value)
  %1942 = fcmp fast ugt float %1941, 0.000000e+00
  br i1 %1942, label %1943, label %1958

; <label>:1943                                    ; preds = %1933
  %1944 = fsub fast float -0.000000e+00, %1844
  %1945 = fdiv fast float %1944, %1941
  %1946 = fsub fast float -0.000000e+00, %1842
  %1947 = fdiv fast float %1946, %1941
  %1948 = fdiv fast float %1856, %1941
  %1949 = fmul fast float %1855, 0x3FE279A760000000
  %1950 = fmul fast float %1947, %1842
  %1951 = fmul fast float %1948, %1856
  %1952 = fmul fast float %1945, %1844
  %1953 = fadd fast float %1950, %1952
  %1954 = fsub fast float %1953, %1951
  %1955 = call float @dx.op.unary.f32(i32 6, float %1954)  ; FAbs(value)
  %1956 = fadd fast float %1955, 0x3DDB7CDFE0000000
  %1957 = fdiv fast float %1949, %1956
  br label %1958

; <label>:1958                                    ; preds = %1943, %1933
  %1959 = phi float [ %1957, %1943 ], [ 1.000000e+00, %1933 ]
  %1960 = call float @dx.op.binary.f32(i32 36, float %1959, float %1935)  ; FMin(a,b)
  %1961 = call float @dx.op.unary.f32(i32 7, float %1960)  ; Saturate(value)
  %1962 = fcmp fast olt float %1961, 1.000000e+00
  br i1 %1962, label %1963, label %1973

; <label>:1963                                    ; preds = %1958
  %1964 = fmul fast float %1961, %1842
  %1965 = fmul fast float %1961, %1856
  %1966 = fmul fast float %1961, %1844
  %1967 = fmul fast float %1961, %1859
  %1968 = fmul fast float %1961, %1871
  %1969 = fmul fast float %1961, %1861
  %1970 = fmul fast float %1961, %1874
  %1971 = fmul fast float %1961, %1886
  %1972 = fmul fast float %1961, %1876
  br label %1973

; <label>:1973                                    ; preds = %1963, %1958
  %1974 = phi float [ %1970, %1963 ], [ %1874, %1958 ]
  %1975 = phi float [ %1971, %1963 ], [ %1886, %1958 ]
  %1976 = phi float [ %1972, %1963 ], [ %1876, %1958 ]
  %1977 = phi float [ %1967, %1963 ], [ %1859, %1958 ]
  %1978 = phi float [ %1968, %1963 ], [ %1871, %1958 ]
  %1979 = phi float [ %1969, %1963 ], [ %1861, %1958 ]
  %1980 = phi float [ %1964, %1963 ], [ %1842, %1958 ]
  %1981 = phi float [ %1965, %1963 ], [ %1856, %1958 ]
  %1982 = phi float [ %1966, %1963 ], [ %1844, %1958 ]
  %1983 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1855)  ; FMax(a,b)
  %1984 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1870)  ; FMax(a,b)
  %1985 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1885)  ; FMax(a,b)
  %1986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1987 = extractvalue %dx.types.CBufRet.f32 %1986, 0
  %1988 = fcmp fast ogt float %1987, 0.000000e+00
  %1989 = fcmp fast oge float %1643, 0.000000e+00
  %1990 = and i1 %1989, %1988
  %1991 = fcmp fast ole float %1643, 1.000000e+00
  %1992 = and i1 %1991, %1990
  %1993 = fcmp fast oge float %1644, 0.000000e+00
  %1994 = and i1 %1993, %1992
  %1995 = fcmp fast ole float %1644, 1.000000e+00
  %1996 = and i1 %1995, %1994
  br i1 %1996, label %1997, label %2137, !dx.controlflow.hints !70

; <label>:1997                                    ; preds = %1973
  %1998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.f32 %1998, 2
  %2000 = extractvalue %dx.types.CBufRet.f32 %1998, 3
  %2001 = fmul fast float %1999, %1643
  %2002 = fmul fast float %2000, %1644
  %2003 = call float @dx.op.unary.f32(i32 27, float %2001)  ; Round_ni(value)
  %2004 = call float @dx.op.unary.f32(i32 27, float %2002)  ; Round_ni(value)
  %2005 = fptosi float %2003 to i32
  %2006 = fptosi float %2004 to i32
  %2007 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %2005, i32 %2006, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = and i32 %2008, 65535
  %2010 = lshr i32 %2008, 16
  %2011 = icmp eq i32 %2009, 65535
  br i1 %2011, label %2048, label %2012

; <label>:2012                                    ; preds = %1997
  %2013 = extractvalue %dx.types.CBufRet.f32 %1986, 1
  %2014 = extractvalue %dx.types.CBufRet.f32 %1998, 0
  %2015 = extractvalue %dx.types.CBufRet.f32 %1998, 1
  %2016 = fmul fast float %2014, %1643
  %2017 = fmul fast float %2015, %1644
  %2018 = fmul fast float %2016, 1.250000e-01
  %2019 = fmul fast float %2017, 1.250000e-01
  %2020 = call float @dx.op.unary.f32(i32 27, float %2018)  ; Round_ni(value)
  %2021 = call float @dx.op.unary.f32(i32 27, float %2019)  ; Round_ni(value)
  %2022 = fmul fast float %2020, 8.000000e+00
  %2023 = fmul fast float %2021, 8.000000e+00
  %2024 = and i32 %2008, 255
  %2025 = lshr i32 %2008, 8
  %2026 = and i32 %2025, 255
  %2027 = mul nuw nsw i32 %2024, 9
  %2028 = uitofp i32 %2027 to float
  %2029 = mul nuw nsw i32 %2026, 9
  %2030 = uitofp i32 %2029 to float
  %2031 = fadd fast float %2028, 5.000000e-01
  %2032 = fadd fast float %2031, %2016
  %2033 = fsub fast float %2032, %2022
  %2034 = fadd fast float %2030, 5.000000e-01
  %2035 = fadd fast float %2034, %2017
  %2036 = fsub fast float %2035, %2023
  %2037 = fdiv fast float %2033, %1987
  %2038 = fdiv fast float %2036, %2013
  %2039 = fmul fast float %1671, 4.375000e-01
  %2040 = fadd fast float %2039, 3.125000e-02
  %2041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %2037, float %2038, float %2040, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2042 = extractvalue %dx.types.ResRet.f32 %2041, 0
  %2043 = extractvalue %dx.types.ResRet.f32 %2041, 1
  %2044 = extractvalue %dx.types.ResRet.f32 %2041, 2
  %2045 = fadd fast float %2042, %1983
  %2046 = fadd fast float %2043, %1984
  %2047 = fadd fast float %2044, %1985
  br label %2048

; <label>:2048                                    ; preds = %2012, %1997
  %2049 = phi float [ %2047, %2012 ], [ %1985, %1997 ]
  %2050 = phi float [ %2046, %2012 ], [ %1984, %1997 ]
  %2051 = phi float [ %2045, %2012 ], [ %1983, %1997 ]
  %2052 = icmp eq i32 %2010, 65535
  br i1 %2052, label %2137, label %2053

; <label>:2053                                    ; preds = %2048
  %2054 = extractvalue %dx.types.CBufRet.f32 %1986, 1
  %2055 = extractvalue %dx.types.CBufRet.f32 %1998, 0
  %2056 = extractvalue %dx.types.CBufRet.f32 %1998, 1
  %2057 = fmul fast float %2055, %1643
  %2058 = fmul fast float %2056, %1644
  %2059 = fmul fast float %2057, 1.250000e-01
  %2060 = fmul fast float %2058, 1.250000e-01
  %2061 = call float @dx.op.unary.f32(i32 27, float %2059)  ; Round_ni(value)
  %2062 = call float @dx.op.unary.f32(i32 27, float %2060)  ; Round_ni(value)
  %2063 = fmul fast float %2061, 8.000000e+00
  %2064 = fmul fast float %2062, 8.000000e+00
  %2065 = fsub fast float %2057, %2063
  %2066 = fsub fast float %2058, %2064
  %2067 = fadd fast float %2065, 5.000000e-01
  %2068 = fadd fast float %2066, 5.000000e-01
  %2069 = and i32 %2010, 255
  %2070 = lshr i32 %2008, 24
  %2071 = mul nuw nsw i32 %2069, 9
  %2072 = uitofp i32 %2071 to float
  %2073 = mul nuw nsw i32 %2070, 9
  %2074 = uitofp i32 %2073 to float
  %2075 = fadd fast float %2067, %2072
  %2076 = fadd fast float %2068, %2074
  %2077 = fdiv fast float %2075, %1987
  %2078 = fdiv fast float %2076, %2054
  %2079 = fmul fast float %1671, 4.375000e-01
  %2080 = fadd fast float %2079, 3.125000e-02
  %2081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %2077, float %2078, float %2080, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2082 = extractvalue %dx.types.ResRet.f32 %2081, 0
  %2083 = extractvalue %dx.types.ResRet.f32 %2081, 1
  %2084 = extractvalue %dx.types.ResRet.f32 %2081, 2
  %2085 = fadd fast float %2079, 5.312500e-01
  %2086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %2077, float %2078, float %2085, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2087 = extractvalue %dx.types.ResRet.f32 %2086, 0
  %2088 = extractvalue %dx.types.ResRet.f32 %2086, 1
  %2089 = extractvalue %dx.types.ResRet.f32 %2086, 2
  %2090 = fmul fast float %2087, 2.000000e+00
  %2091 = fmul fast float %2088, 2.000000e+00
  %2092 = fmul fast float %2089, 2.000000e+00
  %2093 = fadd fast float %2090, -1.000000e+00
  %2094 = fadd fast float %2091, -1.000000e+00
  %2095 = fadd fast float %2092, -1.000000e+00
  %2096 = fmul fast float %2093, %2093
  %2097 = fmul fast float %2094, %2094
  %2098 = fadd fast float %2096, %2097
  %2099 = fmul fast float %2095, %2095
  %2100 = fadd fast float %2098, %2099
  %2101 = call float @dx.op.unary.f32(i32 24, float %2100)  ; Sqrt(value)
  %2102 = fcmp fast ogt float %2101, 0.000000e+00
  br i1 %2102, label %2103, label %2107

; <label>:2103                                    ; preds = %2053
  %2104 = fdiv fast float %2093, %2101
  %2105 = fdiv fast float %2094, %2101
  %2106 = fdiv fast float %2095, %2101
  br label %2107

; <label>:2107                                    ; preds = %2103, %2053
  %2108 = phi float [ %2104, %2103 ], [ 0.000000e+00, %2053 ]
  %2109 = phi float [ %2105, %2103 ], [ 0.000000e+00, %2053 ]
  %2110 = phi float [ %2106, %2103 ], [ 0.000000e+00, %2053 ]
  %2111 = fmul fast float %92, %92
  %2112 = fmul fast float %93, %93
  %2113 = fadd fast float %2111, %2112
  %2114 = call float @dx.op.unary.f32(i32 24, float %2113)  ; Sqrt(value)
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  %2117 = extractvalue %dx.types.CBufRet.f32 %2115, 1
  %2118 = fsub fast float %2114, %2116
  %2119 = fdiv fast float %2118, %2117
  %2120 = call float @dx.op.unary.f32(i32 7, float %2119)  ; Saturate(value)
  %2121 = fmul fast float %2120, 2.000000e+00
  %2122 = fsub fast float 3.000000e+00, %2121
  %2123 = fmul fast float %2120, %2120
  %2124 = fmul fast float %2123, %2122
  %2125 = call float @dx.op.dot3.f32(i32 55, float %2108, float %2109, float %2110, float %1604, float %1605, float %1606)  ; Dot3(ax,ay,az,bx,by,bz)
  %2126 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2125)  ; FMax(a,b)
  %2127 = fmul fast float %2126, 0x400C5BF8A0000000
  %2128 = fmul fast float %2124, %2082
  %2129 = fmul fast float %2128, %2127
  %2130 = fadd fast float %2129, %2051
  %2131 = fmul fast float %2124, %2083
  %2132 = fmul fast float %2131, %2127
  %2133 = fadd fast float %2132, %2050
  %2134 = fmul fast float %2124, %2084
  %2135 = fmul fast float %2134, %2127
  %2136 = fadd fast float %2135, %2049
  br label %2137

; <label>:2137                                    ; preds = %2107, %2048, %1973
  %2138 = phi float [ %2136, %2107 ], [ %2049, %2048 ], [ %1985, %1973 ]
  %2139 = phi float [ %2133, %2107 ], [ %2050, %2048 ], [ %1984, %1973 ]
  %2140 = phi float [ %2130, %2107 ], [ %2051, %2048 ], [ %1983, %1973 ]
  %2141 = fcmp fast ogt float %1630, %1667
  %2142 = and i1 %1989, %2141
  %2143 = and i1 %1991, %2142
  %2144 = and i1 %1993, %2143
  %2145 = and i1 %1995, %2144
  br i1 %2145, label %2146, label %2203, !dx.controlflow.hints !71

; <label>:2146                                    ; preds = %2137
  %2147 = fmul fast float %1669, 0x3FC24924A0000000
  %2148 = fsub fast float %1630, %1667
  %2149 = fdiv fast float %2148, %2147
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 0
  %2153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.f32 %2153, 0
  %2155 = extractvalue %dx.types.CBufRet.f32 %2153, 1
  %2156 = extractvalue %dx.types.CBufRet.f32 %2153, 2
  %2157 = fsub fast float %2152, %2140
  %2158 = fsub fast float %2154, %1980
  %2159 = fsub fast float %2155, %1981
  %2160 = fsub fast float %2156, %1982
  %2161 = fmul fast float %2157, %2150
  %2162 = fmul fast float %2158, %2150
  %2163 = fmul fast float %2159, %2150
  %2164 = fmul fast float %2160, %2150
  %2165 = fadd fast float %2161, %2140
  %2166 = fadd fast float %2162, %1980
  %2167 = fadd fast float %2163, %1981
  %2168 = fadd fast float %2164, %1982
  %2169 = extractvalue %dx.types.CBufRet.f32 %2151, 1
  %2170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.CBufRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.CBufRet.f32 %2170, 2
  %2174 = fsub fast float %2169, %2139
  %2175 = fsub fast float %2171, %1977
  %2176 = fsub fast float %2172, %1978
  %2177 = fsub fast float %2173, %1979
  %2178 = fmul fast float %2174, %2150
  %2179 = fmul fast float %2175, %2150
  %2180 = fmul fast float %2176, %2150
  %2181 = fmul fast float %2177, %2150
  %2182 = fadd fast float %2178, %2139
  %2183 = fadd fast float %2179, %1977
  %2184 = fadd fast float %2180, %1978
  %2185 = fadd fast float %2181, %1979
  %2186 = extractvalue %dx.types.CBufRet.f32 %2151, 2
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 0
  %2189 = extractvalue %dx.types.CBufRet.f32 %2187, 1
  %2190 = extractvalue %dx.types.CBufRet.f32 %2187, 2
  %2191 = fsub fast float %2186, %2138
  %2192 = fsub fast float %2188, %1974
  %2193 = fsub fast float %2189, %1975
  %2194 = fsub fast float %2190, %1976
  %2195 = fmul fast float %2191, %2150
  %2196 = fmul fast float %2192, %2150
  %2197 = fmul fast float %2193, %2150
  %2198 = fmul fast float %2194, %2150
  %2199 = fadd fast float %2195, %2138
  %2200 = fadd fast float %2196, %1974
  %2201 = fadd fast float %2197, %1975
  %2202 = fadd fast float %2198, %1976
  br label %2203

; <label>:2203                                    ; preds = %2146, %2137
  %2204 = phi float [ %2199, %2146 ], [ %2138, %2137 ]
  %2205 = phi float [ %2200, %2146 ], [ %1974, %2137 ]
  %2206 = phi float [ %2201, %2146 ], [ %1975, %2137 ]
  %2207 = phi float [ %2202, %2146 ], [ %1976, %2137 ]
  %2208 = phi float [ %2182, %2146 ], [ %2139, %2137 ]
  %2209 = phi float [ %2183, %2146 ], [ %1977, %2137 ]
  %2210 = phi float [ %2184, %2146 ], [ %1978, %2137 ]
  %2211 = phi float [ %2185, %2146 ], [ %1979, %2137 ]
  %2212 = phi float [ %2165, %2146 ], [ %2140, %2137 ]
  %2213 = phi float [ %2166, %2146 ], [ %1980, %2137 ]
  %2214 = phi float [ %2167, %2146 ], [ %1981, %2137 ]
  %2215 = phi float [ %2168, %2146 ], [ %1982, %2137 ]
  %2216 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %2217 = fmul fast float %2216, %2212
  %2218 = fmul fast float %2216, %2208
  %2219 = fmul fast float %2216, %2204
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 3
  %2222 = fmul fast float %2217, %2221
  %2223 = fmul fast float %2218, %2221
  %2224 = fmul fast float %2219, %2221
  %2225 = fmul fast float %2213, 1.500000e+00
  %2226 = fmul fast float %2225, %2216
  %2227 = fmul fast float %2226, %2221
  %2228 = fmul fast float %2214, 1.500000e+00
  %2229 = fmul fast float %2228, %2216
  %2230 = fmul fast float %2229, %2221
  %2231 = fmul fast float %2215, 1.500000e+00
  %2232 = fmul fast float %2231, %2216
  %2233 = fmul fast float %2232, %2221
  %2234 = fmul fast float %2209, 1.500000e+00
  %2235 = fmul fast float %2234, %2216
  %2236 = fmul fast float %2235, %2221
  %2237 = fmul fast float %2210, 1.500000e+00
  %2238 = fmul fast float %2237, %2216
  %2239 = fmul fast float %2238, %2221
  %2240 = fmul fast float %2211, 1.500000e+00
  %2241 = fmul fast float %2240, %2216
  %2242 = fmul fast float %2241, %2221
  %2243 = fmul fast float %2205, 1.500000e+00
  %2244 = fmul fast float %2243, %2216
  %2245 = fmul fast float %2244, %2221
  %2246 = fmul fast float %2206, 1.500000e+00
  %2247 = fmul fast float %2246, %2216
  %2248 = fmul fast float %2247, %2221
  %2249 = fmul fast float %2207, 1.500000e+00
  %2250 = fmul fast float %2249, %2216
  %2251 = fmul fast float %2250, %2221
  %2252 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2222)  ; FMax(a,b)
  %2253 = call float @dx.op.dot3.f32(i32 55, float %2227, float %2230, float %2233, float %2227, float %2230, float %2233)  ; Dot3(ax,ay,az,bx,by,bz)
  %2254 = fcmp fast oeq float %2253, 0.000000e+00
  %2255 = fcmp fast oeq float %2252, 0.000000e+00
  %2256 = or i1 %2255, %2254
  br i1 %2256, label %2286, label %2257

; <label>:2257                                    ; preds = %2203
  %2258 = fsub fast float -0.000000e+00, %2233
  %2259 = fsub fast float -0.000000e+00, %2227
  %2260 = call float @dx.op.unary.f32(i32 24, float %2253)  ; Sqrt(value)
  %2261 = fdiv fast float %2260, %2252
  %2262 = fcmp fast ogt float %2261, 0x3FFB6F8900000000
  %2263 = select i1 %2262, float 0x3FFB6F8900000000, float %2261
  %2264 = fmul fast float %2263, 0x3FE8A23460000000
  %2265 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2266 = call float @dx.op.binary.f32(i32 35, float %2263, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2267 = fmul fast float %2265, %2252
  %2268 = fmul fast float %2266, 0x3FF279A740000000
  %2269 = fadd fast float %2268, -1.000000e+00
  %2270 = call float @dx.op.dot3.f32(i32 55, float %2258, float %2259, float %2230, float %2258, float %2259, float %2230)  ; Dot3(ax,ay,az,bx,by,bz)
  %2271 = call float @dx.op.unary.f32(i32 25, float %2270)  ; Rsqrt(value)
  %2272 = fmul fast float %2271, %2258
  %2273 = fmul fast float %2271, %2259
  %2274 = fmul fast float %2271, %2230
  %2275 = fmul fast float %2269, %2269
  %2276 = fsub fast float 1.000000e+00, %2275
  %2277 = fmul fast float %2266, 0x40005F8BE0000000
  %2278 = fsub fast float 0x400C5BF8A0000000, %2277
  %2279 = fdiv fast float %2267, %2278
  %2280 = fmul fast float %2279, 0x3FEE31C3C0000000
  %2281 = fmul fast float %2280, %2276
  %2282 = fmul fast float %2266, 0x3FDACB7480000000
  %2283 = fadd fast float %2282, 0xBFD7347680000000
  %2284 = fmul fast float %2283, %2279
  %2285 = fmul fast float %2284, %2276
  br label %2286

; <label>:2286                                    ; preds = %2257, %2203
  %2287 = phi float [ %2272, %2257 ], [ 0.000000e+00, %2203 ]
  %2288 = phi float [ %2273, %2257 ], [ 0.000000e+00, %2203 ]
  %2289 = phi float [ %2274, %2257 ], [ 0.000000e+00, %2203 ]
  %2290 = phi float [ %2281, %2257 ], [ 0.000000e+00, %2203 ]
  %2291 = phi float [ %2285, %2257 ], [ 0.000000e+00, %2203 ]
  %2292 = call float @dx.op.dot3.f32(i32 55, float %2287, float %2288, float %2289, float %1604, float %1605, float %1606)  ; Dot3(ax,ay,az,bx,by,bz)
  %2293 = fmul fast float %2292, %2292
  %2294 = fmul fast float %2293, 0x3FEE471020000000
  %2295 = fadd fast float %2294, 0xBFD42F6020000000
  %2296 = fmul fast float %2252, 0x3FD20DD760000000
  %2297 = fmul fast float %2295, %2291
  %2298 = fmul fast float %2290, 0x3FDF454380000000
  %2299 = fmul fast float %2298, %2292
  %2300 = fadd fast float %2299, %2296
  %2301 = fadd fast float %2300, %2297
  %2302 = call float @dx.op.dot3.f32(i32 55, float %2287, float %2288, float %2289, float %1617, float %1618, float %1619)  ; Dot3(ax,ay,az,bx,by,bz)
  %2303 = fmul fast float %2302, 0x3FDF454380000000
  %2304 = fmul fast float %2302, %2302
  %2305 = fmul fast float %2304, 0x3FEE471020000000
  %2306 = fadd fast float %2305, 0xBFD42F6020000000
  %2307 = call float @dx.op.dot3.f32(i32 55, float %2252, float %2290, float %2291, float 0x3FD20DD760000000, float %2303, float %2306)  ; Dot3(ax,ay,az,bx,by,bz)
  %2308 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2223)  ; FMax(a,b)
  %2309 = call float @dx.op.dot3.f32(i32 55, float %2236, float %2239, float %2242, float %2236, float %2239, float %2242)  ; Dot3(ax,ay,az,bx,by,bz)
  %2310 = fcmp fast oeq float %2309, 0.000000e+00
  %2311 = fcmp fast oeq float %2308, 0.000000e+00
  %2312 = or i1 %2311, %2310
  br i1 %2312, label %2342, label %2313

; <label>:2313                                    ; preds = %2286
  %2314 = fsub fast float -0.000000e+00, %2242
  %2315 = fsub fast float -0.000000e+00, %2236
  %2316 = call float @dx.op.unary.f32(i32 24, float %2309)  ; Sqrt(value)
  %2317 = fdiv fast float %2316, %2308
  %2318 = fcmp fast ogt float %2317, 0x3FFB6F8900000000
  %2319 = select i1 %2318, float 0x3FFB6F8900000000, float %2317
  %2320 = fmul fast float %2319, 0x3FE8A23460000000
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  %2322 = call float @dx.op.binary.f32(i32 35, float %2319, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2323 = fmul fast float %2321, %2308
  %2324 = fmul fast float %2322, 0x3FF279A740000000
  %2325 = fadd fast float %2324, -1.000000e+00
  %2326 = call float @dx.op.dot3.f32(i32 55, float %2314, float %2315, float %2239, float %2314, float %2315, float %2239)  ; Dot3(ax,ay,az,bx,by,bz)
  %2327 = call float @dx.op.unary.f32(i32 25, float %2326)  ; Rsqrt(value)
  %2328 = fmul fast float %2327, %2314
  %2329 = fmul fast float %2327, %2315
  %2330 = fmul fast float %2327, %2239
  %2331 = fmul fast float %2325, %2325
  %2332 = fsub fast float 1.000000e+00, %2331
  %2333 = fmul fast float %2322, 0x40005F8BE0000000
  %2334 = fsub fast float 0x400C5BF8A0000000, %2333
  %2335 = fdiv fast float %2323, %2334
  %2336 = fmul fast float %2335, 0x3FEE31C3C0000000
  %2337 = fmul fast float %2336, %2332
  %2338 = fmul fast float %2322, 0x3FDACB7480000000
  %2339 = fadd fast float %2338, 0xBFD7347680000000
  %2340 = fmul fast float %2339, %2335
  %2341 = fmul fast float %2340, %2332
  br label %2342

; <label>:2342                                    ; preds = %2313, %2286
  %2343 = phi float [ %2328, %2313 ], [ 0.000000e+00, %2286 ]
  %2344 = phi float [ %2329, %2313 ], [ 0.000000e+00, %2286 ]
  %2345 = phi float [ %2330, %2313 ], [ 0.000000e+00, %2286 ]
  %2346 = phi float [ %2337, %2313 ], [ 0.000000e+00, %2286 ]
  %2347 = phi float [ %2341, %2313 ], [ 0.000000e+00, %2286 ]
  %2348 = call float @dx.op.dot3.f32(i32 55, float %2343, float %2344, float %2345, float %1604, float %1605, float %1606)  ; Dot3(ax,ay,az,bx,by,bz)
  %2349 = fmul fast float %2348, %2348
  %2350 = fmul fast float %2349, 0x3FEE471020000000
  %2351 = fadd fast float %2350, 0xBFD42F6020000000
  %2352 = fmul fast float %2308, 0x3FD20DD760000000
  %2353 = fmul fast float %2351, %2347
  %2354 = fmul fast float %2346, 0x3FDF454380000000
  %2355 = fmul fast float %2354, %2348
  %2356 = fadd fast float %2355, %2352
  %2357 = fadd fast float %2356, %2353
  %2358 = call float @dx.op.dot3.f32(i32 55, float %2343, float %2344, float %2345, float %1617, float %1618, float %1619)  ; Dot3(ax,ay,az,bx,by,bz)
  %2359 = fmul fast float %2358, 0x3FDF454380000000
  %2360 = fmul fast float %2358, %2358
  %2361 = fmul fast float %2360, 0x3FEE471020000000
  %2362 = fadd fast float %2361, 0xBFD42F6020000000
  %2363 = call float @dx.op.dot3.f32(i32 55, float %2308, float %2346, float %2347, float 0x3FD20DD760000000, float %2359, float %2362)  ; Dot3(ax,ay,az,bx,by,bz)
  %2364 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2224)  ; FMax(a,b)
  %2365 = call float @dx.op.dot3.f32(i32 55, float %2245, float %2248, float %2251, float %2245, float %2248, float %2251)  ; Dot3(ax,ay,az,bx,by,bz)
  %2366 = fcmp fast oeq float %2365, 0.000000e+00
  %2367 = fcmp fast oeq float %2364, 0.000000e+00
  %2368 = or i1 %2367, %2366
  br i1 %2368, label %2398, label %2369

; <label>:2369                                    ; preds = %2342
  %2370 = fsub fast float -0.000000e+00, %2251
  %2371 = fsub fast float -0.000000e+00, %2245
  %2372 = call float @dx.op.unary.f32(i32 24, float %2365)  ; Sqrt(value)
  %2373 = fdiv fast float %2372, %2364
  %2374 = fcmp fast ogt float %2373, 0x3FFB6F8900000000
  %2375 = select i1 %2374, float 0x3FFB6F8900000000, float %2373
  %2376 = fmul fast float %2375, 0x3FE8A23460000000
  %2377 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2378 = call float @dx.op.binary.f32(i32 35, float %2375, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2379 = fmul fast float %2377, %2364
  %2380 = fmul fast float %2378, 0x3FF279A740000000
  %2381 = fadd fast float %2380, -1.000000e+00
  %2382 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2371, float %2248, float %2370, float %2371, float %2248)  ; Dot3(ax,ay,az,bx,by,bz)
  %2383 = call float @dx.op.unary.f32(i32 25, float %2382)  ; Rsqrt(value)
  %2384 = fmul fast float %2383, %2370
  %2385 = fmul fast float %2383, %2371
  %2386 = fmul fast float %2383, %2248
  %2387 = fmul fast float %2381, %2381
  %2388 = fsub fast float 1.000000e+00, %2387
  %2389 = fmul fast float %2378, 0x40005F8BE0000000
  %2390 = fsub fast float 0x400C5BF8A0000000, %2389
  %2391 = fdiv fast float %2379, %2390
  %2392 = fmul fast float %2391, 0x3FEE31C3C0000000
  %2393 = fmul fast float %2392, %2388
  %2394 = fmul fast float %2378, 0x3FDACB7480000000
  %2395 = fadd fast float %2394, 0xBFD7347680000000
  %2396 = fmul fast float %2395, %2391
  %2397 = fmul fast float %2396, %2388
  br label %2398

; <label>:2398                                    ; preds = %2369, %2342
  %2399 = phi float [ %2384, %2369 ], [ 0.000000e+00, %2342 ]
  %2400 = phi float [ %2385, %2369 ], [ 0.000000e+00, %2342 ]
  %2401 = phi float [ %2386, %2369 ], [ 0.000000e+00, %2342 ]
  %2402 = phi float [ %2393, %2369 ], [ 0.000000e+00, %2342 ]
  %2403 = phi float [ %2397, %2369 ], [ 0.000000e+00, %2342 ]
  %2404 = call float @dx.op.dot3.f32(i32 55, float %2399, float %2400, float %2401, float %1604, float %1605, float %1606)  ; Dot3(ax,ay,az,bx,by,bz)
  %2405 = fmul fast float %2404, %2404
  %2406 = fmul fast float %2405, 0x3FEE471020000000
  %2407 = fadd fast float %2406, 0xBFD42F6020000000
  %2408 = fmul fast float %2364, 0x3FD20DD760000000
  %2409 = fmul fast float %2407, %2403
  %2410 = fmul fast float %2402, 0x3FDF454380000000
  %2411 = fmul fast float %2410, %2404
  %2412 = fadd fast float %2411, %2408
  %2413 = fadd fast float %2412, %2409
  %2414 = call float @dx.op.dot3.f32(i32 55, float %2399, float %2400, float %2401, float %1617, float %1618, float %1619)  ; Dot3(ax,ay,az,bx,by,bz)
  %2415 = fmul fast float %2414, 0x3FDF454380000000
  %2416 = fmul fast float %2414, %2414
  %2417 = fmul fast float %2416, 0x3FEE471020000000
  %2418 = fadd fast float %2417, 0xBFD42F6020000000
  %2419 = call float @dx.op.dot3.f32(i32 55, float %2364, float %2402, float %2403, float 0x3FD20DD760000000, float %2415, float %2418)  ; Dot3(ax,ay,az,bx,by,bz)
  %2420 = call float @dx.op.binary.f32(i32 35, float %2301, float 0.000000e+00)  ; FMax(a,b)
  %2421 = call float @dx.op.binary.f32(i32 35, float %2357, float 0.000000e+00)  ; FMax(a,b)
  %2422 = call float @dx.op.binary.f32(i32 35, float %2413, float 0.000000e+00)  ; FMax(a,b)
  %2423 = call float @dx.op.binary.f32(i32 35, float %2307, float 0.000000e+00)  ; FMax(a,b)
  %2424 = call float @dx.op.binary.f32(i32 35, float %2363, float 0.000000e+00)  ; FMax(a,b)
  %2425 = call float @dx.op.binary.f32(i32 35, float %2419, float 0.000000e+00)  ; FMax(a,b)
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = call float @dx.op.binary.f32(i32 36, float %1598, float %2427)  ; FMin(a,b)
  %2429 = fsub fast float 1.000000e+00, %1620
  %2430 = fmul fast float %2428, %2429
  %2431 = fsub fast float 1.000000e+00, %2430
  %2432 = bitcast float %2431 to i32
  %2433 = sub nsw i32 2129859010, %2432
  %2434 = bitcast i32 %2433 to float
  %2435 = call float @dx.op.binary.f32(i32 36, float %1599, float %2427)  ; FMin(a,b)
  %2436 = fmul fast float %2435, %2429
  %2437 = fsub fast float 1.000000e+00, %2436
  %2438 = bitcast float %2437 to i32
  %2439 = sub nsw i32 2129859010, %2438
  %2440 = bitcast i32 %2439 to float
  %2441 = call float @dx.op.binary.f32(i32 36, float %1600, float %2427)  ; FMin(a,b)
  %2442 = fmul fast float %2441, %2429
  %2443 = fsub fast float 1.000000e+00, %2442
  %2444 = bitcast float %2443 to i32
  %2445 = sub nsw i32 2129859010, %2444
  %2446 = bitcast i32 %2445 to float
  %2447 = fmul fast float %2420, %1620
  %2448 = fmul fast float %2447, %2434
  %2449 = fmul fast float %2421, %1620
  %2450 = fmul fast float %2449, %2440
  %2451 = fmul fast float %2422, %1620
  %2452 = fmul fast float %2451, %2446
  %2453 = call float @dx.op.binary.f32(i32 36, float %1601, float %2427)  ; FMin(a,b)
  %2454 = fmul fast float %2453, %2429
  %2455 = fsub fast float 1.000000e+00, %2454
  %2456 = bitcast float %2455 to i32
  %2457 = sub nsw i32 2129859010, %2456
  %2458 = bitcast i32 %2457 to float
  %2459 = call float @dx.op.binary.f32(i32 36, float %1602, float %2427)  ; FMin(a,b)
  %2460 = fmul fast float %2459, %2429
  %2461 = fsub fast float 1.000000e+00, %2460
  %2462 = bitcast float %2461 to i32
  %2463 = sub nsw i32 2129859010, %2462
  %2464 = bitcast i32 %2463 to float
  %2465 = call float @dx.op.binary.f32(i32 36, float %1609, float %2427)  ; FMin(a,b)
  %2466 = fmul fast float %2465, %2429
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = bitcast float %2467 to i32
  %2469 = sub nsw i32 2129859010, %2468
  %2470 = bitcast i32 %2469 to float
  %2471 = fmul fast float %2423, %1620
  %2472 = fmul fast float %2471, %2458
  %2473 = fmul fast float %2424, %1620
  %2474 = fmul fast float %2473, %2464
  %2475 = fmul fast float %2425, %1620
  %2476 = fmul fast float %2475, %2470
  %2477 = call float @dx.op.dot3.f32(i32 55, float %2448, float %2450, float %2452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2478 = select i1 %402, float 0.000000e+00, float %2448
  %2479 = select i1 %402, float %2477, float %2450
  %2480 = select i1 %402, float 0.000000e+00, float %2452
  %2481 = call float @dx.op.dot3.f32(i32 55, float %2472, float %2474, float %2476, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2482 = select i1 %402, float 0.000000e+00, float %2472
  %2483 = select i1 %402, float %2481, float %2474
  %2484 = select i1 %402, float 0.000000e+00, float %2476
  %2485 = fmul fast float %1611, 9.843750e-01
  %2486 = fmul fast float %1607, 9.843750e-01
  %2487 = fadd fast float %2485, 7.812500e-03
  %2488 = fadd fast float %2486, 7.812500e-03
  %2489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %38, float %2487, float %2488, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2490 = extractvalue %dx.types.ResRet.f32 %2489, 2
  %2491 = extractvalue %dx.types.ResRet.f32 %2489, 3
  %2492 = fmul fast float %2490, %1601
  %2493 = fmul fast float %2490, %1602
  %2494 = fmul fast float %2490, %1609
  %2495 = fadd fast float %2492, %2491
  %2496 = fadd fast float %2493, %2491
  %2497 = fadd fast float %2494, %2491
  %2498 = fcmp fast ogt float %975, 0.000000e+00
  br i1 %2498, label %2499, label %2525

; <label>:2499                                    ; preds = %2398
  %2500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %975, float %1611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  %2502 = extractvalue %dx.types.ResRet.f32 %2500, 1
  %2503 = extractvalue %dx.types.ResRet.f32 %2500, 2
  %2504 = fadd fast float %2501, -5.000000e-01
  %2505 = fadd fast float %2502, -5.000000e-01
  %2506 = fadd fast float %2503, -5.000000e-01
  %2507 = fsub fast float 1.000000e+00, %1601
  %2508 = fsub fast float 1.000000e+00, %1602
  %2509 = fsub fast float 1.000000e+00, %1609
  %2510 = fmul fast float %1601, 4.000000e+00
  %2511 = fmul fast float %2510, %2507
  %2512 = fmul fast float %2511, %2504
  %2513 = fmul fast float %1602, 4.000000e+00
  %2514 = fmul fast float %2513, %2508
  %2515 = fmul fast float %2514, %2505
  %2516 = fmul fast float %1609, 4.000000e+00
  %2517 = fmul fast float %2516, %2509
  %2518 = fmul fast float %2517, %2506
  %2519 = fadd fast float %2512, %2495
  %2520 = fadd fast float %2515, %2496
  %2521 = fadd fast float %2518, %2497
  %2522 = call float @dx.op.unary.f32(i32 7, float %2519)  ; Saturate(value)
  %2523 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  %2524 = call float @dx.op.unary.f32(i32 7, float %2521)  ; Saturate(value)
  br label %2525

; <label>:2525                                    ; preds = %2499, %2398
  %2526 = phi float [ %2522, %2499 ], [ %2495, %2398 ]
  %2527 = phi float [ %2523, %2499 ], [ %2496, %2398 ]
  %2528 = phi float [ %2524, %2499 ], [ %2497, %2398 ]
  %2529 = call float @dx.op.binary.f32(i32 35, float %2527, float %2528)  ; FMax(a,b)
  %2530 = call float @dx.op.binary.f32(i32 35, float %2526, float %2529)  ; FMax(a,b)
  %2531 = fsub fast float 1.000000e+00, %2530
  %2532 = fmul fast float %2531, %2478
  %2533 = fmul fast float %2531, %2479
  %2534 = fmul fast float %2531, %2480
  %2535 = call float @dx.op.dot3.f32(i32 55, float %1598, float %1599, float %1600, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2536 = fcmp fast ogt float %2535, 0x3E7FF19E20000000
  %2537 = fdiv fast float 1.000000e+00, %2535
  %2538 = select i1 %2536, float %2537, float 0.000000e+00
  %2539 = fmul fast float %2538, %1598
  %2540 = fmul fast float %2538, %1599
  %2541 = fmul fast float %2538, %1600
  %2542 = fadd fast float %2539, -1.000000e+00
  %2543 = fadd fast float %2540, -1.000000e+00
  %2544 = fadd fast float %2541, -1.000000e+00
  %2545 = fmul fast float %2542, 5.000000e-01
  %2546 = fmul fast float %2543, 5.000000e-01
  %2547 = fmul fast float %2544, 5.000000e-01
  %2548 = fadd fast float %2545, 1.000000e+00
  %2549 = fadd fast float %2546, 1.000000e+00
  %2550 = fadd fast float %2547, 1.000000e+00
  %2551 = fmul fast float %2526, %2482
  %2552 = fmul fast float %2527, %2483
  %2553 = fmul fast float %2528, %2484
  %2554 = fsub fast float 1.000000e+00, %1611
  %2555 = bitcast float %2554 to i32
  %2556 = sitofp i32 %2555 to float
  %2557 = fmul fast float %2556, 5.000000e+00
  %2558 = fadd fast float %2557, 0xC1EFBF8940000000
  %2559 = fptosi float %2558 to i32
  %2560 = bitcast i32 %2559 to float
  %2561 = fmul fast float %2560, %974
  %2562 = fmul fast float %2478, %2561
  %2563 = fmul fast float %2562, %2531
  %2564 = fmul fast float %2563, %2548
  %2565 = fmul fast float %2479, %2561
  %2566 = fmul fast float %2565, %2531
  %2567 = fmul fast float %2566, %2549
  %2568 = fmul fast float %2480, %2561
  %2569 = fmul fast float %2568, %2531
  %2570 = fmul fast float %2569, %2550
  %2571 = fmul fast float %2532, %995
  %2572 = fmul fast float %2533, %995
  %2573 = fmul fast float %2534, %995
  %2574 = fadd fast float %2551, %976
  %2575 = fadd fast float %2574, %2564
  %2576 = fmul fast float %2575, %995
  %2577 = fadd fast float %2552, %977
  %2578 = fadd fast float %2577, %2567
  %2579 = fmul fast float %2578, %995
  %2580 = fadd fast float %2553, %978
  %2581 = fadd fast float %2580, %2570
  %2582 = fmul fast float %2581, %995
  %2583 = bitcast i32 %1623 to float
  %2584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2585 = extractvalue %dx.types.CBufRet.f32 %2584, 3
  %2586 = fcmp fast oeq float %2585, 0.000000e+00
  br i1 %2586, label %2812, label %2587

; <label>:2587                                    ; preds = %2525
  %2588 = extractvalue %dx.types.CBufRet.f32 %2584, 0
  %2589 = extractvalue %dx.types.CBufRet.f32 %2584, 1
  %2590 = extractvalue %dx.types.CBufRet.f32 %2584, 2
  %2591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2592 = extractvalue %dx.types.CBufRet.f32 %2591, 0
  %2593 = extractvalue %dx.types.CBufRet.f32 %2591, 1
  %2594 = extractvalue %dx.types.CBufRet.f32 %2591, 2
  %2595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2595, 0
  %2597 = extractvalue %dx.types.CBufRet.f32 %2595, 1
  %2598 = call float @dx.op.dot3.f32(i32 55, float %2592, float %2593, float %2594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2599 = select i1 %402, float %2596, float %2592
  %2600 = select i1 %402, float %2598, float %2593
  %2601 = select i1 %402, float %2597, float %2594
  %2602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2603 = extractvalue %dx.types.CBufRet.f32 %2602, 1
  %2604 = fcmp fast une float %2603, 0.000000e+00
  br i1 %2604, label %2605, label %2620

; <label>:2605                                    ; preds = %2587
  %2606 = lshr i32 %105, 4
  %2607 = lshr i32 %106, 4
  %2608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2609 = extractvalue %dx.types.CBufRet.f32 %2608, 0
  %2610 = fptoui float %2609 to i32
  %2611 = add i32 %2610, 15
  %2612 = lshr i32 %2611, 4
  %2613 = mul i32 %2612, %2607
  %2614 = add i32 %2613, %2606
  %2615 = shl i32 %2614, 3
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, -268435456
  %2619 = icmp eq i32 %2618, -1342177280
  br i1 %2619, label %2630, label %2620

; <label>:2620                                    ; preds = %2605, %2587
  %2621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.f32 %2621, 2
  %2623 = extractvalue %dx.types.CBufRet.f32 %2621, 3
  %2624 = fmul fast float %2622, %48
  %2625 = fmul fast float %2623, %49
  %2626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %39, float %2624, float %2625, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2627 = extractvalue %dx.types.ResRet.f32 %2626, 0
  %2628 = extractvalue %dx.types.ResRet.f32 %2626, 1
  %2629 = extractvalue %dx.types.ResRet.f32 %2626, 2
  br label %2630

; <label>:2630                                    ; preds = %2620, %2605
  %2631 = phi float [ %2627, %2620 ], [ 0.000000e+00, %2605 ]
  %2632 = phi float [ %2628, %2620 ], [ 0.000000e+00, %2605 ]
  %2633 = phi float [ %2629, %2620 ], [ 0.000000e+00, %2605 ]
  %2634 = call float @dx.op.binary.f32(i32 36, float %2632, float %2633)  ; FMin(a,b)
  %2635 = call float @dx.op.binary.f32(i32 36, float %2631, float %2634)  ; FMin(a,b)
  %2636 = fcmp fast ogt float %2635, 0.000000e+00
  br i1 %2636, label %2637, label %2812, !dx.controlflow.hints !72

; <label>:2637                                    ; preds = %2630
  %2638 = fmul fast float %2631, %2599
  %2639 = fmul fast float %2632, %2600
  %2640 = fmul fast float %2633, %2601
  %2641 = fsub fast float %2588, %1597
  %2642 = fsub fast float %2589, %1596
  %2643 = fsub fast float %2590, %1595
  %2644 = call float @dx.op.dot3.f32(i32 55, float %2641, float %2642, float %2643, float %2641, float %2642, float %2643)  ; Dot3(ax,ay,az,bx,by,bz)
  %2645 = call float @dx.op.unary.f32(i32 25, float %2644)  ; Rsqrt(value)
  %2646 = fmul fast float %2645, %2641
  %2647 = fmul fast float %2645, %2642
  %2648 = fmul fast float %2645, %2643
  %2649 = call float @dx.op.dot3.f32(i32 55, float %2588, float %2589, float %2590, float %1604, float %1605, float %1606)  ; Dot3(ax,ay,az,bx,by,bz)
  %2650 = call float @dx.op.dot3.f32(i32 55, float %1594, float %1593, float %1592, float %2646, float %2647, float %2648)  ; Dot3(ax,ay,az,bx,by,bz)
  %2651 = call float @dx.op.unary.f32(i32 7, float %2649)  ; Saturate(value)
  %2652 = fmul fast float %2651, %2651
  %2653 = fmul fast float %2652, %2583
  %2654 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  %2655 = fmul fast float %2654, %2651
  %2656 = call float @dx.op.dot3.f32(i32 55, float %1604, float %1605, float %1606, float %2646, float %2647, float %2648)  ; Dot3(ax,ay,az,bx,by,bz)
  %2657 = fmul fast float %2656, %2656
  %2658 = call float @dx.op.unary.f32(i32 6, float %2649)  ; FAbs(value)
  %2659 = fsub fast float 1.000000e+00, %1607
  %2660 = call float @dx.op.binary.f32(i32 35, float %2659, float 0x3F847AE140000000)  ; FMax(a,b)
  %2661 = fmul fast float %2660, %2660
  %2662 = fmul fast float %2661, %2661
  %2663 = fsub fast float 1.000000e+00, %2662
  %2664 = fmul fast float %1611, %1611
  %2665 = fmul fast float %2664, %2663
  %2666 = fadd fast float %2665, %2662
  %2667 = bitcast float %2666 to i32
  %2668 = ashr i32 %2667, 1
  %2669 = add nsw i32 %2668, 532487669
  %2670 = bitcast i32 %2669 to float
  %2671 = fadd fast float %2670, %1611
  %2672 = fmul fast float %2662, %2657
  %2673 = fsub fast float 1.000000e+00, %2657
  %2674 = fadd fast float %2673, %2672
  %2675 = fmul fast float %2658, %2658
  %2676 = fmul fast float %2675, %2663
  %2677 = fadd fast float %2676, %2662
  %2678 = bitcast float %2677 to i32
  %2679 = ashr i32 %2678, 1
  %2680 = add nsw i32 %2679, 532487669
  %2681 = bitcast i32 %2680 to float
  %2682 = fadd fast float %2681, %2658
  %2683 = fmul fast float %2674, %2674
  %2684 = fmul fast float %2683, %2671
  %2685 = fmul fast float %2684, %2682
  %2686 = fdiv fast float 0x3FF0A00000000000, %2685
  %2687 = fmul fast float %2686, %2662
  %2688 = call float @dx.op.unary.f32(i32 6, float %2650)  ; FAbs(value)
  %2689 = fsub fast float 1.000000e+00, %2688
  %2690 = bitcast float %2689 to i32
  %2691 = sitofp i32 %2690 to float
  %2692 = fmul fast float %2691, 5.000000e+00
  %2693 = fadd fast float %2692, 0xC1EFBF8940000000
  %2694 = fptosi float %2693 to i32
  %2695 = bitcast i32 %2694 to float
  %2696 = fsub fast float 1.000000e+00, %1601
  %2697 = fsub fast float 1.000000e+00, %1602
  %2698 = fsub fast float 1.000000e+00, %1609
  %2699 = fmul fast float %2695, %2696
  %2700 = fmul fast float %2695, %2697
  %2701 = fmul fast float %2695, %2698
  %2702 = fadd fast float %2699, %1601
  %2703 = fadd fast float %2700, %1602
  %2704 = fadd fast float %2701, %1609
  br i1 %2498, label %2705, label %2728

; <label>:2705                                    ; preds = %2637
  %2706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %975, float %2688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2707 = extractvalue %dx.types.ResRet.f32 %2706, 0
  %2708 = extractvalue %dx.types.ResRet.f32 %2706, 1
  %2709 = extractvalue %dx.types.ResRet.f32 %2706, 2
  %2710 = fadd fast float %2707, -5.000000e-01
  %2711 = fadd fast float %2708, -5.000000e-01
  %2712 = fadd fast float %2709, -5.000000e-01
  %2713 = fmul fast float %1601, 4.000000e+00
  %2714 = fmul fast float %2713, %2696
  %2715 = fmul fast float %2714, %2710
  %2716 = fmul fast float %1602, 4.000000e+00
  %2717 = fmul fast float %2716, %2697
  %2718 = fmul fast float %2717, %2711
  %2719 = fmul fast float %1609, 4.000000e+00
  %2720 = fmul fast float %2719, %2698
  %2721 = fmul fast float %2720, %2712
  %2722 = fadd fast float %2715, %2702
  %2723 = fadd fast float %2718, %2703
  %2724 = fadd fast float %2721, %2704
  %2725 = call float @dx.op.unary.f32(i32 7, float %2722)  ; Saturate(value)
  %2726 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2727 = call float @dx.op.unary.f32(i32 7, float %2724)  ; Saturate(value)
  br label %2728

; <label>:2728                                    ; preds = %2705, %2637
  %2729 = phi float [ %2725, %2705 ], [ %2702, %2637 ]
  %2730 = phi float [ %2726, %2705 ], [ %2703, %2637 ]
  %2731 = phi float [ %2727, %2705 ], [ %2704, %2637 ]
  %2732 = fmul fast float %2649, 9.843750e-01
  %2733 = fadd fast float %2732, 7.812500e-03
  %2734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %38, float %2733, float %2488, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 2
  %2736 = extractvalue %dx.types.ResRet.f32 %2734, 3
  %2737 = fmul fast float %2735, %1601
  %2738 = fmul fast float %2735, %1602
  %2739 = fmul fast float %2735, %1609
  %2740 = fadd fast float %2737, %2736
  %2741 = fadd fast float %2738, %2736
  %2742 = fadd fast float %2739, %2736
  br i1 %2498, label %2743, label %2766

; <label>:2743                                    ; preds = %2728
  %2744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %975, float %2649, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2746 = extractvalue %dx.types.ResRet.f32 %2744, 1
  %2747 = extractvalue %dx.types.ResRet.f32 %2744, 2
  %2748 = fadd fast float %2745, -5.000000e-01
  %2749 = fadd fast float %2746, -5.000000e-01
  %2750 = fadd fast float %2747, -5.000000e-01
  %2751 = fmul fast float %1601, 4.000000e+00
  %2752 = fmul fast float %2751, %2696
  %2753 = fmul fast float %2752, %2748
  %2754 = fmul fast float %1602, 4.000000e+00
  %2755 = fmul fast float %2754, %2697
  %2756 = fmul fast float %2755, %2749
  %2757 = fmul fast float %1609, 4.000000e+00
  %2758 = fmul fast float %2757, %2698
  %2759 = fmul fast float %2758, %2750
  %2760 = fadd fast float %2753, %2740
  %2761 = fadd fast float %2756, %2741
  %2762 = fadd fast float %2759, %2742
  %2763 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2764 = call float @dx.op.unary.f32(i32 7, float %2761)  ; Saturate(value)
  %2765 = call float @dx.op.unary.f32(i32 7, float %2762)  ; Saturate(value)
  br label %2766

; <label>:2766                                    ; preds = %2743, %2728
  %2767 = phi float [ %2763, %2743 ], [ %2740, %2728 ]
  %2768 = phi float [ %2764, %2743 ], [ %2741, %2728 ]
  %2769 = phi float [ %2765, %2743 ], [ %2742, %2728 ]
  %2770 = call float @dx.op.binary.f32(i32 35, float %2768, float %2769)  ; FMax(a,b)
  %2771 = call float @dx.op.binary.f32(i32 35, float %2767, float %2770)  ; FMax(a,b)
  %2772 = fsub fast float 1.000000e+00, %2771
  %2773 = fmul fast float %2729, %2687
  %2774 = fmul fast float %2730, %2687
  %2775 = fmul fast float %2731, %2687
  %2776 = fsub fast float 1.000000e+00, %2650
  %2777 = bitcast float %2776 to i32
  %2778 = sitofp i32 %2777 to float
  %2779 = fmul fast float %2778, 5.000000e+00
  %2780 = fadd fast float %2779, 0xC1EFBF8940000000
  %2781 = fptosi float %2780 to i32
  %2782 = bitcast i32 %2781 to float
  %2783 = fmul fast float %2782, %974
  %2784 = fmul fast float %2772, %2783
  %2785 = fmul fast float %2784, %2548
  %2786 = fmul fast float %2784, %2549
  %2787 = fmul fast float %2784, %2550
  %2788 = fadd fast float %2785, %2773
  %2789 = fadd fast float %2786, %2774
  %2790 = fadd fast float %2787, %2775
  %2791 = fmul fast float %2655, %2638
  %2792 = fmul fast float %2791, %2772
  %2793 = fmul fast float %2655, %2639
  %2794 = fmul fast float %2793, %2772
  %2795 = fmul fast float %2655, %2640
  %2796 = fmul fast float %2795, %2772
  %2797 = fmul fast float %2791, %2788
  %2798 = fmul fast float %2793, %2789
  %2799 = fmul fast float %2795, %2790
  %2800 = fadd fast float %2792, %2532
  %2801 = fmul fast float %2800, %995
  %2802 = fadd fast float %2794, %2533
  %2803 = fmul fast float %2802, %995
  %2804 = fadd fast float %2796, %2534
  %2805 = fmul fast float %2804, %995
  %2806 = fadd fast float %2797, %2575
  %2807 = fmul fast float %2806, %995
  %2808 = fadd fast float %2798, %2578
  %2809 = fmul fast float %2808, %995
  %2810 = fadd fast float %2799, %2581
  %2811 = fmul fast float %2810, %995
  br label %2812

; <label>:2812                                    ; preds = %2766, %2630, %2525
  %2813 = phi float [ %2576, %2525 ], [ %2576, %2630 ], [ %2807, %2766 ]
  %2814 = phi float [ %2579, %2525 ], [ %2579, %2630 ], [ %2809, %2766 ]
  %2815 = phi float [ %2582, %2525 ], [ %2582, %2630 ], [ %2811, %2766 ]
  %2816 = phi float [ %2571, %2525 ], [ %2571, %2630 ], [ %2801, %2766 ]
  %2817 = phi float [ %2572, %2525 ], [ %2572, %2630 ], [ %2803, %2766 ]
  %2818 = phi float [ %2573, %2525 ], [ %2573, %2630 ], [ %2805, %2766 ]
  %2819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.i32 %2819, 0
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %3254, label %2822

; <label>:2822                                    ; preds = %2812
  %2823 = lshr i32 %105, 4
  %2824 = lshr i32 %106, 4
  %2825 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2826 = extractvalue %dx.types.CBufRet.i32 %2825, 0
  %2827 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2824, i32 %2826, i32 %2823)  ; UMad(a,b,c)
  %2828 = add nsw i32 %2820, -1
  %2829 = call i32 @dx.op.binary.i32(i32 37, i32 %2828, i32 0)  ; IMax(a,b)
  %2830 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %2831 = fptoui float %2830 to i32
  %2832 = lshr i32 %2831, 5
  %2833 = call i32 @dx.op.binary.i32(i32 40, i32 %2832, i32 8191)  ; UMin(a,b)
  %2834 = shl i32 %2833, 2
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = lshr i32 %2836, 16
  %2838 = and i32 %2836, 65535
  %2839 = lshr i32 %2836, 21
  %2840 = lshr i32 %2838, 5
  %2841 = call i32 @dx.op.binary.i32(i32 40, i32 %2840, i32 %2829)  ; UMin(a,b)
  %2842 = icmp ugt i32 %2839, %2841
  br i1 %2842, label %3254, label %2843

; <label>:2843                                    ; preds = %2822
  br label %2844

; <label>:2844                                    ; preds = %3244, %2843
  %2845 = phi i32 [ %3251, %3244 ], [ %2839, %2843 ]
  %2846 = phi float [ %3245, %3244 ], [ %2813, %2843 ]
  %2847 = phi float [ %3246, %3244 ], [ %2814, %2843 ]
  %2848 = phi float [ %3247, %3244 ], [ %2815, %2843 ]
  %2849 = phi float [ %3248, %3244 ], [ %2816, %2843 ]
  %2850 = phi float [ %3249, %3244 ], [ %2817, %2843 ]
  %2851 = phi float [ %3250, %3244 ], [ %2818, %2843 ]
  %2852 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.i32 %2852, 0
  %2854 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2827, i32 %2853, i32 %2845)  ; UMad(a,b,c)
  %2855 = shl i32 %2854, 2
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = shl i32 %2845, 5
  %2859 = sub nsw i32 %2837, %2858
  %2860 = call i32 @dx.op.binary.i32(i32 37, i32 %2859, i32 0)  ; IMax(a,b)
  %2861 = call i32 @dx.op.binary.i32(i32 38, i32 %2860, i32 31)  ; IMin(a,b)
  %2862 = sub nsw i32 1, %2837
  %2863 = add nsw i32 %2862, %2838
  %2864 = call i32 @dx.op.binary.i32(i32 37, i32 %2863, i32 0)  ; IMax(a,b)
  %2865 = call i32 @dx.op.binary.i32(i32 38, i32 %2864, i32 32)  ; IMin(a,b)
  %2866 = and i32 %2865, 31
  %2867 = shl i32 -1, %2866
  %2868 = xor i32 %2867, -1
  %2869 = and i32 %2861, 31
  %2870 = shl i32 %2868, %2869
  %2871 = icmp eq i32 %2865, 32
  %2872 = select i1 %2871, i32 -1, i32 %2870
  %2873 = and i32 %2872, %2857
  %2874 = icmp eq i32 %2873, 0
  br i1 %2874, label %3244, label %2875

; <label>:2875                                    ; preds = %2844
  br label %2876

; <label>:2876                                    ; preds = %2956, %2875
  %2877 = phi i32 [ %2888, %2956 ], [ %2873, %2875 ]
  %2878 = phi float [ %2957, %2956 ], [ %2846, %2875 ]
  %2879 = phi float [ %2958, %2956 ], [ %2847, %2875 ]
  %2880 = phi float [ %2959, %2956 ], [ %2848, %2875 ]
  %2881 = phi float [ %2960, %2956 ], [ %2849, %2875 ]
  %2882 = phi float [ %2961, %2956 ], [ %2850, %2875 ]
  %2883 = phi float [ %2962, %2956 ], [ %2851, %2875 ]
  %2884 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2877)  ; FirstbitLo(value)
  %2885 = add i32 %2884, %2858
  %2886 = and i32 %2884, 31
  %2887 = shl i32 1, %2886
  %2888 = xor i32 %2887, %2877
  %2889 = mul i32 %2885, 112
  %2890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.ResRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.ResRet.f32 %2890, 2
  %2894 = or i32 %2889, 12
  %2895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.f32 %2895, 0
  %2897 = add i32 %2889, 44
  %2898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = add i32 %2889, 48
  %2901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.f32 %2901, 0
  %2903 = extractvalue %dx.types.ResRet.f32 %2901, 1
  %2904 = extractvalue %dx.types.ResRet.f32 %2901, 2
  %2905 = add i32 %2889, 80
  %2906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.f32 %2906, 1
  %2908 = extractvalue %dx.types.ResRet.f32 %2906, 2
  %2909 = call float @dx.op.dot3.f32(i32 55, float %2891, float %2892, float %2893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2910 = select i1 %402, float %2907, float %2891
  %2911 = select i1 %402, float %2909, float %2892
  %2912 = select i1 %402, float %2908, float %2893
  %2913 = fsub fast float %2902, %92
  %2914 = fsub fast float %2903, %93
  %2915 = fsub fast float %2904, %94
  %2916 = call float @dx.op.dot3.f32(i32 55, float %2913, float %2914, float %2915, float %2913, float %2914, float %2915)  ; Dot3(ax,ay,az,bx,by,bz)
  %2917 = call float @dx.op.unary.f32(i32 24, float %2916)  ; Sqrt(value)
  %2918 = fdiv fast float 1.000000e+00, %2917
  %2919 = fmul fast float %2918, %2913
  %2920 = fmul fast float %2918, %2914
  %2921 = fmul fast float %2918, %2915
  %2922 = fadd fast float %2917, %2896
  %2923 = fdiv fast float 1.000000e+00, %2922
  %2924 = fmul float %2899, %2923
  %2925 = fmul float %2924, %2924
  %2926 = call float @dx.op.unary.f32(i32 7, float %2925)  ; Saturate(value)
  %2927 = and i32 %2887, %2873
  %2928 = icmp eq i32 %2927, 0
  br i1 %2928, label %2951, label %2929, !dx.controlflow.hints !73

; <label>:2929                                    ; preds = %2876
  %2930 = lshr i32 %105, 5
  %2931 = lshr i32 %106, 5
  %2932 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %2930, i32 %2931, i32 %2885, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = and i32 %2933, 3
  %2935 = icmp eq i32 %2934, 0
  %2936 = select i1 %2935, float 1.000000e+00, float 0.000000e+00
  %2937 = icmp eq i32 %2934, 3
  br i1 %2937, label %2938, label %2951

; <label>:2938                                    ; preds = %2929
  %2939 = lshr i32 %2933, 10
  %2940 = and i32 %2939, 8160
  %2941 = and i32 %106, 31
  %2942 = or i32 %2940, %2941
  %2943 = lshr i32 %2933, 1
  %2944 = and i32 %2943, 16352
  %2945 = and i32 %105, 31
  %2946 = or i32 %2944, %2945
  %2947 = lshr i32 %2933, 23
  %2948 = and i32 %2947, 255
  %2949 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %2946, i32 %2942, i32 %2948, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2950 = extractvalue %dx.types.ResRet.f32 %2949, 0
  br label %2951

; <label>:2951                                    ; preds = %2938, %2929, %2876
  %2952 = phi float [ %2950, %2938 ], [ %2936, %2929 ], [ 0.000000e+00, %2876 ]
  %2953 = call float @dx.op.binary.f32(i32 36, float %2952, float %2952)  ; FMin(a,b)
  %2954 = call float @dx.op.binary.f32(i32 36, float %2952, float %2953)  ; FMin(a,b)
  %2955 = fcmp fast ogt float %2954, 0.000000e+00
  br i1 %2955, label %2964, label %2956, !dx.controlflow.hints !74

; <label>:2956                                    ; preds = %3200, %2951
  %2957 = phi float [ %2878, %2951 ], [ %3240, %3200 ]
  %2958 = phi float [ %2879, %2951 ], [ %3241, %3200 ]
  %2959 = phi float [ %2880, %2951 ], [ %3242, %3200 ]
  %2960 = phi float [ %2881, %2951 ], [ %3234, %3200 ]
  %2961 = phi float [ %2882, %2951 ], [ %3235, %3200 ]
  %2962 = phi float [ %2883, %2951 ], [ %3236, %3200 ]
  %2963 = icmp eq i32 %2877, %2887
  br i1 %2963, label %3243, label %2876

; <label>:2964                                    ; preds = %2951
  %2965 = fmul fast float %2952, %2910
  %2966 = fmul fast float %2952, %2911
  %2967 = fmul fast float %2952, %2912
  %2968 = fsub fast float %2904, %1397
  %2969 = fcmp fast ogt float %2968, 0.000000e+00
  %2970 = fsub fast float %94, %1397
  %2971 = fcmp fast ogt float %2970, 0.000000e+00
  %2972 = xor i1 %2971, %2969
  %2973 = fsub fast float %1397, %2904
  %2974 = fmul fast float %2973, 2.000000e+00
  %2975 = fadd fast float %2974, %2904
  %2976 = select i1 %2972, float %2904, float %2975
  %2977 = fsub fast float %2976, %94
  %2978 = call float @dx.op.dot3.f32(i32 55, float %2913, float %2914, float %2977, float %2913, float %2914, float %2977)  ; Dot3(ax,ay,az,bx,by,bz)
  %2979 = call float @dx.op.unary.f32(i32 25, float %2978)  ; Rsqrt(value)
  %2980 = fmul fast float %2979, %2913
  %2981 = fmul fast float %2979, %2914
  %2982 = fmul fast float %2979, %2977
  %2983 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1405)  ; Dot3(ax,ay,az,bx,by,bz)
  %2984 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2980, float %2981, float %2982)  ; Dot3(ax,ay,az,bx,by,bz)
  %2985 = fdiv fast float 1.000000e+00, %2984
  %2986 = fmul fast float %2985, %2983
  %2987 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2970, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2988 = fcmp fast ogt float %2987, 0.000000e+00
  %2989 = fcmp fast olt float %2987, 0.000000e+00
  %2990 = zext i1 %2988 to i32
  %2991 = zext i1 %2989 to i32
  %2992 = sub nsw i32 %2990, %2991
  %2993 = sitofp i32 %2992 to float
  %2994 = fsub fast float %2976, %1397
  %2995 = call float @dx.op.dot3.f32(i32 55, float %2913, float %2914, float %2994, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2996 = fcmp fast ogt float %2995, 0.000000e+00
  %2997 = fcmp fast olt float %2995, 0.000000e+00
  %2998 = zext i1 %2996 to i32
  %2999 = zext i1 %2997 to i32
  %3000 = sub nsw i32 %2998, %2999
  %3001 = sitofp i32 %3000 to float
  %3002 = fcmp fast une float %2993, %3001
  br i1 %3002, label %3003, label %3013

; <label>:3003                                    ; preds = %2964
  %3004 = fmul fast float %2986, %2982
  %3005 = fmul fast float %2986, %2981
  %3006 = fmul fast float %2986, %2980
  %3007 = fmul fast float %3006, %3006
  %3008 = fmul fast float %3005, %3005
  %3009 = fadd fast float %3007, %3008
  %3010 = fmul fast float %3004, %3004
  %3011 = fadd fast float %3009, %3010
  %3012 = call float @dx.op.unary.f32(i32 24, float %3011)  ; Sqrt(value)
  br label %3025

; <label>:3013                                    ; preds = %2964
  %3014 = icmp slt i32 %2992, 0
  br i1 %3014, label %3015, label %3025

; <label>:3015                                    ; preds = %3013
  %3016 = fsub fast float %92, %2902
  %3017 = fsub fast float %93, %2903
  %3018 = fsub fast float %94, %2976
  %3019 = fmul fast float %3016, %3016
  %3020 = fmul fast float %3017, %3017
  %3021 = fadd fast float %3019, %3020
  %3022 = fmul fast float %3018, %3018
  %3023 = fadd fast float %3021, %3022
  %3024 = call float @dx.op.unary.f32(i32 24, float %3023)  ; Sqrt(value)
  br label %3025

; <label>:3025                                    ; preds = %3015, %3013, %3003
  %3026 = phi float [ %3012, %3003 ], [ %3024, %3015 ], [ 0.000000e+00, %3013 ]
  %3027 = and i1 %2971, %2969
  %3028 = fsub fast float -0.000000e+00, %3026
  %3029 = select i1 %3027, float -0.000000e+00, float %3028
  %3030 = fmul fast float %1398, 0x3FF7154760000000
  %3031 = fmul fast float %3030, %3029
  %3032 = fmul fast float %1399, 0x3FF7154760000000
  %3033 = fmul fast float %3032, %3029
  %3034 = fmul fast float %1400, 0x3FF7154760000000
  %3035 = fmul fast float %3034, %3029
  %3036 = call float @dx.op.unary.f32(i32 21, float %3031)  ; Exp(value)
  %3037 = call float @dx.op.unary.f32(i32 21, float %3033)  ; Exp(value)
  %3038 = call float @dx.op.unary.f32(i32 21, float %3035)  ; Exp(value)
  %3039 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  %3040 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3041 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3042 = fmul fast float %2965, %3039
  %3043 = fmul fast float %2966, %3040
  %3044 = fmul fast float %2967, %3041
  %3045 = fsub fast float %2919, %1597
  %3046 = fsub fast float %2920, %1596
  %3047 = fsub fast float %2921, %1595
  %3048 = call float @dx.op.dot3.f32(i32 55, float %3045, float %3046, float %3047, float %3045, float %3046, float %3047)  ; Dot3(ax,ay,az,bx,by,bz)
  %3049 = call float @dx.op.unary.f32(i32 25, float %3048)  ; Rsqrt(value)
  %3050 = fmul fast float %3049, %3045
  %3051 = fmul fast float %3049, %3046
  %3052 = fmul fast float %3049, %3047
  %3053 = call float @dx.op.dot3.f32(i32 55, float %2919, float %2920, float %2921, float %1604, float %1605, float %1606)  ; Dot3(ax,ay,az,bx,by,bz)
  %3054 = call float @dx.op.dot3.f32(i32 55, float %1594, float %1593, float %1592, float %3050, float %3051, float %3052)  ; Dot3(ax,ay,az,bx,by,bz)
  %3055 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  %3056 = fmul fast float %3055, %2926
  %3057 = fmul fast float %3055, %3055
  %3058 = fmul fast float %3057, %2583
  %3059 = call float @dx.op.unary.f32(i32 7, float %3058)  ; Saturate(value)
  %3060 = fmul fast float %3056, %3059
  %3061 = bitcast float %2916 to i32
  %3062 = ashr i32 %3061, 1
  %3063 = sub nsw i32 1597463007, %3062
  %3064 = bitcast i32 %3063 to float
  %3065 = fmul fast float %3064, %2913
  %3066 = fmul fast float %3064, %2914
  %3067 = fmul fast float %3064, %2915
  %3068 = fsub fast float %3065, %1597
  %3069 = fsub fast float %3066, %1596
  %3070 = fsub fast float %3067, %1595
  %3071 = call float @dx.op.dot3.f32(i32 55, float %3068, float %3069, float %3070, float %3068, float %3069, float %3070)  ; Dot3(ax,ay,az,bx,by,bz)
  %3072 = call float @dx.op.unary.f32(i32 25, float %3071)  ; Rsqrt(value)
  %3073 = fmul fast float %3068, %3072
  %3074 = fmul fast float %3069, %3072
  %3075 = fmul fast float %3070, %3072
  %3076 = call float @dx.op.dot3.f32(i32 55, float %1604, float %1605, float %1606, float %3073, float %3074, float %3075)  ; Dot3(ax,ay,az,bx,by,bz)
  %3077 = fmul fast float %3076, %3076
  %3078 = call float @dx.op.unary.f32(i32 6, float %3053)  ; FAbs(value)
  %3079 = fsub fast float 1.000000e+00, %1607
  %3080 = call float @dx.op.binary.f32(i32 35, float %3079, float 0x3F847AE140000000)  ; FMax(a,b)
  %3081 = fmul fast float %3080, %3080
  %3082 = fmul fast float %3081, %3081
  %3083 = fsub fast float 1.000000e+00, %3082
  %3084 = fmul fast float %1611, %1611
  %3085 = fmul fast float %3084, %3083
  %3086 = fadd fast float %3085, %3082
  %3087 = bitcast float %3086 to i32
  %3088 = ashr i32 %3087, 1
  %3089 = add nsw i32 %3088, 532487669
  %3090 = bitcast i32 %3089 to float
  %3091 = fadd fast float %3090, %1611
  %3092 = fmul fast float %3082, %3077
  %3093 = fsub fast float 1.000000e+00, %3077
  %3094 = fadd fast float %3093, %3092
  %3095 = fmul fast float %3078, %3078
  %3096 = fmul fast float %3095, %3083
  %3097 = fadd fast float %3096, %3082
  %3098 = bitcast float %3097 to i32
  %3099 = ashr i32 %3098, 1
  %3100 = add nsw i32 %3099, 532487669
  %3101 = bitcast i32 %3100 to float
  %3102 = fadd fast float %3101, %3078
  %3103 = fmul fast float %3094, %3094
  %3104 = fmul fast float %3103, %3091
  %3105 = fmul fast float %3104, %3102
  %3106 = fdiv fast float 1.000000e+00, %3105
  %3107 = bitcast float %3082 to i32
  %3108 = sitofp i32 %3107 to float
  %3109 = fmul fast float %3108, 0x3FE7F73180000000
  %3110 = fadd fast float %3109, 0x41AFE27C40000000
  %3111 = fptosi float %3110 to i32
  %3112 = bitcast i32 %3111 to float
  %3113 = fmul fast float %2899, 0x3FD80E9D60000000
  %3114 = fmul fast float %3113, %3064
  %3115 = fadd fast float %3112, %3114
  %3116 = bitcast float %3115 to i32
  %3117 = sub nsw i32 2129859010, %3116
  %3118 = bitcast i32 %3117 to float
  %3119 = fmul fast float %3082, %3106
  %3120 = fmul fast float %3119, %3112
  %3121 = fmul fast float %3120, %3118
  %3122 = call float @dx.op.unary.f32(i32 6, float %3054)  ; FAbs(value)
  %3123 = fsub fast float 1.000000e+00, %3122
  %3124 = bitcast float %3123 to i32
  %3125 = sitofp i32 %3124 to float
  %3126 = fmul fast float %3125, 5.000000e+00
  %3127 = fadd fast float %3126, 0xC1EFBF8940000000
  %3128 = fptosi float %3127 to i32
  %3129 = bitcast i32 %3128 to float
  %3130 = fsub fast float 1.000000e+00, %1601
  %3131 = fsub fast float 1.000000e+00, %1602
  %3132 = fsub fast float 1.000000e+00, %1609
  %3133 = fmul fast float %3129, %3130
  %3134 = fmul fast float %3129, %3131
  %3135 = fmul fast float %3129, %3132
  %3136 = fadd fast float %3133, %1601
  %3137 = fadd fast float %3134, %1602
  %3138 = fadd fast float %3135, %1609
  br i1 %2498, label %3139, label %3162

; <label>:3139                                    ; preds = %3025
  %3140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %975, float %3122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3141 = extractvalue %dx.types.ResRet.f32 %3140, 0
  %3142 = extractvalue %dx.types.ResRet.f32 %3140, 1
  %3143 = extractvalue %dx.types.ResRet.f32 %3140, 2
  %3144 = fadd fast float %3141, -5.000000e-01
  %3145 = fadd fast float %3142, -5.000000e-01
  %3146 = fadd fast float %3143, -5.000000e-01
  %3147 = fmul fast float %1601, 4.000000e+00
  %3148 = fmul fast float %3147, %3130
  %3149 = fmul fast float %3148, %3144
  %3150 = fmul fast float %1602, 4.000000e+00
  %3151 = fmul fast float %3150, %3131
  %3152 = fmul fast float %3151, %3145
  %3153 = fmul fast float %1609, 4.000000e+00
  %3154 = fmul fast float %3153, %3132
  %3155 = fmul fast float %3154, %3146
  %3156 = fadd fast float %3149, %3136
  %3157 = fadd fast float %3152, %3137
  %3158 = fadd fast float %3155, %3138
  %3159 = call float @dx.op.unary.f32(i32 7, float %3156)  ; Saturate(value)
  %3160 = call float @dx.op.unary.f32(i32 7, float %3157)  ; Saturate(value)
  %3161 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  br label %3162

; <label>:3162                                    ; preds = %3139, %3025
  %3163 = phi float [ %3159, %3139 ], [ %3136, %3025 ]
  %3164 = phi float [ %3160, %3139 ], [ %3137, %3025 ]
  %3165 = phi float [ %3161, %3139 ], [ %3138, %3025 ]
  %3166 = fmul fast float %3053, 9.843750e-01
  %3167 = fadd fast float %3166, 7.812500e-03
  %3168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %38, float %3167, float %2488, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3169 = extractvalue %dx.types.ResRet.f32 %3168, 2
  %3170 = extractvalue %dx.types.ResRet.f32 %3168, 3
  %3171 = fmul fast float %3169, %1601
  %3172 = fmul fast float %3169, %1602
  %3173 = fmul fast float %3169, %1609
  %3174 = fadd fast float %3171, %3170
  %3175 = fadd fast float %3172, %3170
  %3176 = fadd fast float %3173, %3170
  br i1 %2498, label %3177, label %3200

; <label>:3177                                    ; preds = %3162
  %3178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %975, float %3053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3179 = extractvalue %dx.types.ResRet.f32 %3178, 0
  %3180 = extractvalue %dx.types.ResRet.f32 %3178, 1
  %3181 = extractvalue %dx.types.ResRet.f32 %3178, 2
  %3182 = fadd fast float %3179, -5.000000e-01
  %3183 = fadd fast float %3180, -5.000000e-01
  %3184 = fadd fast float %3181, -5.000000e-01
  %3185 = fmul fast float %1601, 4.000000e+00
  %3186 = fmul fast float %3185, %3130
  %3187 = fmul fast float %3186, %3182
  %3188 = fmul fast float %1602, 4.000000e+00
  %3189 = fmul fast float %3188, %3131
  %3190 = fmul fast float %3189, %3183
  %3191 = fmul fast float %1609, 4.000000e+00
  %3192 = fmul fast float %3191, %3132
  %3193 = fmul fast float %3192, %3184
  %3194 = fadd fast float %3187, %3174
  %3195 = fadd fast float %3190, %3175
  %3196 = fadd fast float %3193, %3176
  %3197 = call float @dx.op.unary.f32(i32 7, float %3194)  ; Saturate(value)
  %3198 = call float @dx.op.unary.f32(i32 7, float %3195)  ; Saturate(value)
  %3199 = call float @dx.op.unary.f32(i32 7, float %3196)  ; Saturate(value)
  br label %3200

; <label>:3200                                    ; preds = %3177, %3162
  %3201 = phi float [ %3197, %3177 ], [ %3174, %3162 ]
  %3202 = phi float [ %3198, %3177 ], [ %3175, %3162 ]
  %3203 = phi float [ %3199, %3177 ], [ %3176, %3162 ]
  %3204 = call float @dx.op.binary.f32(i32 35, float %3202, float %3203)  ; FMax(a,b)
  %3205 = call float @dx.op.binary.f32(i32 35, float %3201, float %3204)  ; FMax(a,b)
  %3206 = fsub fast float 1.000000e+00, %3205
  %3207 = fmul fast float %3163, %3121
  %3208 = fmul fast float %3164, %3121
  %3209 = fmul fast float %3165, %3121
  %3210 = fsub fast float 1.000000e+00, %3054
  %3211 = bitcast float %3210 to i32
  %3212 = sitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 5.000000e+00
  %3214 = fadd fast float %3213, 0xC1EFBF8940000000
  %3215 = fptosi float %3214 to i32
  %3216 = bitcast i32 %3215 to float
  %3217 = fmul fast float %3216, %974
  %3218 = fmul fast float %3206, %3217
  %3219 = fmul fast float %3218, %2548
  %3220 = fmul fast float %3218, %2549
  %3221 = fmul fast float %3218, %2550
  %3222 = fadd fast float %3219, %3207
  %3223 = fadd fast float %3220, %3208
  %3224 = fadd fast float %3221, %3209
  %3225 = fmul fast float %3042, %995
  %3226 = fmul fast float %3225, %3060
  %3227 = fmul fast float %3226, %3206
  %3228 = fmul fast float %3043, %995
  %3229 = fmul fast float %3228, %3060
  %3230 = fmul fast float %3229, %3206
  %3231 = fmul fast float %3044, %995
  %3232 = fmul fast float %3231, %3060
  %3233 = fmul fast float %3232, %3206
  %3234 = fadd fast float %3227, %2881
  %3235 = fadd fast float %3230, %2882
  %3236 = fadd fast float %3233, %2883
  %3237 = fmul fast float %3226, %3222
  %3238 = fmul fast float %3229, %3223
  %3239 = fmul fast float %3232, %3224
  %3240 = fadd fast float %3237, %2878
  %3241 = fadd fast float %3238, %2879
  %3242 = fadd fast float %3239, %2880
  br label %2956

; <label>:3243                                    ; preds = %2956
  br label %3244

; <label>:3244                                    ; preds = %3243, %2844
  %3245 = phi float [ %2846, %2844 ], [ %2957, %3243 ]
  %3246 = phi float [ %2847, %2844 ], [ %2958, %3243 ]
  %3247 = phi float [ %2848, %2844 ], [ %2959, %3243 ]
  %3248 = phi float [ %2849, %2844 ], [ %2960, %3243 ]
  %3249 = phi float [ %2850, %2844 ], [ %2961, %3243 ]
  %3250 = phi float [ %2851, %2844 ], [ %2962, %3243 ]
  %3251 = add i32 %2845, 1
  %3252 = icmp ugt i32 %3251, %2841
  br i1 %3252, label %3253, label %2844

; <label>:3253                                    ; preds = %3244
  br label %3254

; <label>:3254                                    ; preds = %3253, %2822, %2812
  %3255 = phi float [ %2813, %2812 ], [ %2813, %2822 ], [ %3245, %3253 ]
  %3256 = phi float [ %2814, %2812 ], [ %2814, %2822 ], [ %3246, %3253 ]
  %3257 = phi float [ %2815, %2812 ], [ %2815, %2822 ], [ %3247, %3253 ]
  %3258 = phi float [ %2816, %2812 ], [ %2816, %2822 ], [ %3248, %3253 ]
  %3259 = phi float [ %2817, %2812 ], [ %2817, %2822 ], [ %3249, %3253 ]
  %3260 = phi float [ %2818, %2812 ], [ %2818, %2822 ], [ %3250, %3253 ]
  %3261 = call float @dx.op.unary.f32(i32 24, float %1598)  ; Sqrt(value)
  %3262 = call float @dx.op.unary.f32(i32 24, float %1599)  ; Sqrt(value)
  %3263 = call float @dx.op.unary.f32(i32 24, float %1600)  ; Sqrt(value)
  %3264 = fmul fast float %3261, %3258
  %3265 = fmul fast float %3262, %3259
  %3266 = extractvalue %dx.types.CBufRet.f32 %2220, 0
  br i1 %402, label %3267, label %3286

; <label>:3267                                    ; preds = %3254
  %3268 = fadd fast float %3260, %972
  %3269 = fmul fast float %3268, %973
  %3270 = fsub fast float 1.000000e+00, %973
  %3271 = call float @dx.op.unary.f32(i32 7, float %3270)  ; Saturate(value)
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 3
  %3274 = fmul fast float %3273, %3271
  %3275 = fadd fast float %3274, %3269
  %3276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.f32 %3276, 0
  %3278 = fmul fast float %3277, %2554
  %3279 = fsub fast float %3275, %3278
  %3280 = fadd fast float %3265, %3264
  %3281 = extractvalue %dx.types.CBufRet.f32 %3272, 1
  %3282 = fsub fast float %3279, %3281
  %3283 = extractvalue %dx.types.CBufRet.f32 %3272, 2
  %3284 = fmul fast float %3282, %3283
  %3285 = call float @dx.op.unary.f32(i32 7, float %3284)  ; Saturate(value)
  br label %3290

; <label>:3286                                    ; preds = %3254
  %3287 = fmul fast float %3263, %3260
  %3288 = fmul fast float %3266, %3265
  %3289 = fmul fast float %3287, %3266
  br label %3290

; <label>:3290                                    ; preds = %3286, %3267
  %3291 = phi float [ %3280, %3267 ], [ %3264, %3286 ]
  %3292 = phi float [ %3285, %3267 ], [ %3288, %3286 ]
  %3293 = phi float [ 1.000000e+00, %3267 ], [ %3289, %3286 ]
  %3294 = fmul float %3266, %3291
  %3295 = fmul fast float %3266, %3256
  %3296 = fmul fast float %3266, %3257
  %3297 = fadd fast float %3256, %3255
  %3298 = select i1 %402, float %3297, float %3255
  %3299 = fmul float %3298, %3266
  %3300 = select i1 %402, float 0.000000e+00, float %3295
  %3301 = select i1 %402, float 0.000000e+00, float %3296
  %3302 = fmul fast float %3294, %3261
  %3303 = fmul fast float %3292, %3262
  %3304 = fmul fast float %3293, %3263
  %3305 = fadd fast float %3299, %3302
  %3306 = fadd fast float %3300, %3303
  %3307 = fadd fast float %3301, %3304
  %3308 = select i1 %402, float %3292, float %3306
  %3309 = select i1 %402, float %3293, float %3307
  %3310 = call float @dx.op.binary.f32(i32 36, float %3305, float 3.225500e+04)  ; FMin(a,b)
  %3311 = call float @dx.op.binary.f32(i32 36, float %3308, float 3.225500e+04)  ; FMin(a,b)
  %3312 = call float @dx.op.binary.f32(i32 36, float %3309, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3310)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3311)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3312)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!56}
!dx.entryPoints = !{!57}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !45, !48, !51}
!5 = !{!6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 65, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 66, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 67, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 64, i32 1, i32 2, i32 0, !13}
!13 = !{i32 0, i32 5}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 38, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 39, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 40, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !13}
!19 = !{i32 11, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !13}
!20 = !{i32 12, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!26 = !{i32 18, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !13}
!29 = !{i32 21, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!45 = !{!46}
!46 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 false, i1 false, !47}
!47 = !{i32 1, i32 4}
!48 = !{!49, !50}
!49 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!51 = !{!52, !53, !54, !55}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!56 = !{[8 x i32] [i32 6, i32 4, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7]}
!57 = !{void ()* @ps_main, !"ps_main", !58, !4, !68}
!58 = !{!59, !65, null}
!59 = !{!60, !63, !64}
!60 = !{i32 0, !"SV_Position", i8 9, i8 3, !61, i8 4, i32 1, i8 4, i32 0, i8 0, !62}
!61 = !{i32 0}
!62 = !{i32 3, i32 3}
!63 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !61, i8 2, i32 1, i8 2, i32 1, i8 0, !62}
!64 = !{i32 2, !"SV_SampleIndex", i8 5, i8 12, !61, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!65 = !{!66}
!66 = !{i32 0, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!67 = !{i32 3, i32 15}
!68 = !{i32 0, i64 24}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

