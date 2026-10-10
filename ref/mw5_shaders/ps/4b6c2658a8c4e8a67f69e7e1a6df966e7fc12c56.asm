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
; shader hash: 9e1a99dcc3c36539a8d59fd1eac7d116
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
  br i1 %410, label %423, label %411, !dx.controlflow.hints !69

; <label>:411                                     ; preds = %401
  %412 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %35, %dx.types.Handle %403, float %342, float %343, float undef, float undef, i32 0, i32 0, i32 undef, float %349, float %350, float undef, float %351, float %352, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %34, %dx.types.Handle %403, float %342, float %343, float undef, float undef, i32 0, i32 0, i32 undef, float %349, float %350, float undef, float %351, float %352, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = call float @dx.op.dot3.f32(i32 55, float %405, float %406, float %407, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %420 = fmul fast float %419, 1.875000e-01
  %421 = fadd fast float %420, 0x3FE77AE140000000
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  br label %423

; <label>:423                                     ; preds = %411, %401
  %424 = phi float [ %422, %411 ], [ undef, %401 ]
  %425 = phi float [ %417, %411 ], [ undef, %401 ]
  %426 = phi float [ %413, %411 ], [ 0.000000e+00, %401 ]
  %427 = phi float [ %414, %411 ], [ 5.000000e-01, %401 ]
  %428 = phi float [ %415, %411 ], [ 0.000000e+00, %401 ]
  %429 = phi float [ %418, %411 ], [ 5.000000e-01, %401 ]
  %430 = fmul fast float %427, 2.000000e+00
  %431 = fadd fast float %430, -1.000000e+00
  %432 = fmul fast float %429, 2.000000e+00
  %433 = fadd fast float %432, -1.000000e+00
  %434 = fadd fast float %433, %431
  %435 = fmul fast float %434, 5.000000e-01
  %436 = fsub fast float %431, %433
  %437 = fmul fast float %436, 5.000000e-01
  %438 = call float @dx.op.unary.f32(i32 6, float %435)  ; FAbs(value)
  %439 = fsub fast float 1.000000e+00, %438
  %440 = call float @dx.op.unary.f32(i32 6, float %437)  ; FAbs(value)
  %441 = fsub fast float %439, %440
  %442 = call float @dx.op.dot3.f32(i32 55, float %435, float %437, float %441, float %435, float %437, float %441)  ; Dot3(ax,ay,az,bx,by,bz)
  %443 = call float @dx.op.unary.f32(i32 25, float %442)  ; Rsqrt(value)
  %444 = fmul fast float %435, %443
  %445 = fmul fast float %437, %443
  %446 = fmul fast float %443, %441
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 0
  %449 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %450 = fmul fast float %449, %133
  %451 = fsub fast float 1.000000e+00, %450
  %452 = fmul fast float %134, %449
  %453 = fsub fast float -0.000000e+00, %452
  %454 = fmul fast float %135, %449
  %455 = fsub fast float -0.000000e+00, %454
  %456 = call float @dx.op.dot3.f32(i32 55, float %451, float %453, float %455, float %451, float %453, float %455)  ; Dot3(ax,ay,az,bx,by,bz)
  %457 = call float @dx.op.unary.f32(i32 25, float %456)  ; Rsqrt(value)
  %458 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %459 = fmul fast float %458, %134
  %460 = fmul fast float %133, %458
  %461 = fsub fast float -0.000000e+00, %460
  %462 = fsub fast float 1.000000e+00, %459
  %463 = fmul fast float %135, %458
  %464 = fsub fast float -0.000000e+00, %463
  %465 = call float @dx.op.dot3.f32(i32 55, float %461, float %462, float %464, float %461, float %462, float %464)  ; Dot3(ax,ay,az,bx,by,bz)
  %466 = call float @dx.op.unary.f32(i32 25, float %465)  ; Rsqrt(value)
  %467 = fmul fast float %446, %133
  %468 = fmul fast float %446, %134
  %469 = fmul fast float %446, %135
  %470 = fmul fast float %457, %444
  %471 = fmul fast float %470, %451
  %472 = fmul fast float %444, %453
  %473 = fmul fast float %472, %457
  %474 = fmul fast float %444, %455
  %475 = fmul fast float %474, %457
  %476 = fadd fast float %471, %467
  %477 = fadd fast float %473, %468
  %478 = fadd fast float %475, %469
  %479 = fmul fast float %445, %461
  %480 = fmul fast float %479, %466
  %481 = fmul fast float %466, %445
  %482 = fmul fast float %481, %462
  %483 = fmul fast float %445, %464
  %484 = fmul fast float %483, %466
  %485 = fadd fast float %476, %480
  %486 = fadd fast float %477, %482
  %487 = fadd fast float %478, %484
  %488 = call float @dx.op.dot3.f32(i32 55, float %485, float %486, float %487, float %485, float %486, float %487)  ; Dot3(ax,ay,az,bx,by,bz)
  %489 = call float @dx.op.unary.f32(i32 25, float %488)  ; Rsqrt(value)
  %490 = fmul fast float %485, %489
  %491 = fmul fast float %486, %489
  %492 = fmul fast float %487, %489
  %493 = call float @dx.op.unary.f32(i32 83, float %92)  ; DerivCoarseX(value)
  %494 = call float @dx.op.unary.f32(i32 83, float %93)  ; DerivCoarseX(value)
  %495 = call float @dx.op.unary.f32(i32 83, float %94)  ; DerivCoarseX(value)
  %496 = call float @dx.op.unary.f32(i32 84, float %92)  ; DerivCoarseY(value)
  %497 = call float @dx.op.unary.f32(i32 84, float %93)  ; DerivCoarseY(value)
  %498 = call float @dx.op.unary.f32(i32 84, float %94)  ; DerivCoarseY(value)
  %499 = fadd fast float %493, %92
  %500 = fadd fast float %494, %93
  %501 = fadd fast float %495, %94
  %502 = fadd fast float %496, %92
  %503 = fadd fast float %497, %93
  %504 = fadd fast float %498, %94
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 0
  %507 = extractvalue %dx.types.CBufRet.f32 %505, 1
  %508 = extractvalue %dx.types.CBufRet.f32 %505, 2
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 2
  %511 = extractvalue %dx.types.CBufRet.f32 %509, 3
  %512 = fmul fast float %506, %48
  %513 = fmul fast float %512, %510
  %514 = fmul fast float %507, %49
  %515 = fmul fast float %514, %511
  %516 = fptoui float %513 to i32
  %517 = fptoui float %515 to i32
  %518 = fadd fast float %506, -1.000000e+00
  %519 = fadd fast float %507, -1.000000e+00
  %520 = fptoui float %518 to i32
  %521 = fptoui float %519 to i32
  %522 = call i32 @dx.op.binary.i32(i32 40, i32 %516, i32 %520)  ; UMin(a,b)
  %523 = call i32 @dx.op.binary.i32(i32 40, i32 %517, i32 %521)  ; UMin(a,b)
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %526 = extractvalue %dx.types.CBufRet.f32 %524, 3
  %527 = fmul fast float %525, %58
  %528 = fsub fast float %527, %526
  %529 = fadd fast float %508, -1.000000e+00
  %530 = call float @dx.op.binary.f32(i32 36, float %528, float %529)  ; FMin(a,b)
  %531 = fptoui float %530 to i32
  %532 = fptoui float %506 to i32
  %533 = fptoui float %507 to i32
  %534 = mul i32 %531, %533
  %535 = add i32 %534, %523
  %536 = mul i32 %535, %532
  %537 = add i32 %536, %522
  %538 = shl i32 %537, 2
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = and i32 %540, 1023
  %542 = lshr i32 %540, 10
  %543 = icmp eq i32 %541, 0
  br i1 %543, label %973, label %544

; <label>:544                                     ; preds = %423
  %545 = and i32 %540, 1023
  br label %546

; <label>:546                                     ; preds = %633, %544
  %547 = phi float [ %634, %633 ], [ 0.000000e+00, %544 ]
  %548 = phi float [ %635, %633 ], [ %448, %544 ]
  %549 = phi float [ %636, %633 ], [ %424, %544 ]
  %550 = phi float [ %637, %633 ], [ 0.000000e+00, %544 ]
  %551 = phi float [ %638, %633 ], [ 0.000000e+00, %544 ]
  %552 = phi float [ %639, %633 ], [ 0.000000e+00, %544 ]
  %553 = phi float [ %640, %633 ], [ 0.000000e+00, %544 ]
  %554 = phi float [ %641, %633 ], [ 0.000000e+00, %544 ]
  %555 = phi float [ %642, %633 ], [ %490, %544 ]
  %556 = phi float [ %643, %633 ], [ %491, %544 ]
  %557 = phi float [ %644, %633 ], [ %492, %544 ]
  %558 = phi float [ %645, %633 ], [ %428, %544 ]
  %559 = phi float [ %646, %633 ], [ %426, %544 ]
  %560 = phi float [ %647, %633 ], [ 0.000000e+00, %544 ]
  %561 = phi float [ %648, %633 ], [ %425, %544 ]
  %562 = phi float [ %649, %633 ], [ %405, %544 ]
  %563 = phi float [ %650, %633 ], [ %406, %544 ]
  %564 = phi float [ %651, %633 ], [ %407, %544 ]
  %565 = phi i32 [ %631, %633 ], [ 0, %544 ]
  %566 = add nuw nsw i32 %565, %542
  %567 = shl i32 %566, 2
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = shl i32 %569, 8
  %571 = or i32 %570, 48
  %572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = extractvalue %dx.types.ResRet.f32 %572, 1
  %575 = extractvalue %dx.types.ResRet.f32 %572, 2
  %576 = or i32 %570, 64
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = extractvalue %dx.types.ResRet.i32 %577, 1
  %580 = extractvalue %dx.types.ResRet.i32 %577, 2
  %581 = extractvalue %dx.types.ResRet.i32 %577, 3
  %582 = or i32 %570, 80
  %583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = extractvalue %dx.types.ResRet.f32 %583, 3
  %588 = or i32 %570, 96
  %589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = extractvalue %dx.types.ResRet.f32 %589, 2
  %593 = extractvalue %dx.types.ResRet.f32 %589, 3
  %594 = or i32 %570, 112
  %595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = extractvalue %dx.types.ResRet.f32 %595, 3
  %600 = or i32 %570, 128
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  %605 = extractvalue %dx.types.ResRet.f32 %601, 3
  %606 = or i32 %570, 144
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = extractvalue %dx.types.ResRet.f32 %607, 3
  %612 = or i32 %570, 160
  %613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = extractvalue %dx.types.ResRet.f32 %613, 3
  %618 = or i32 %570, 192
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = or i32 %570, 208
  %622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = or i32 %570, 240
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = or i32 %570, 248
  %628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = add nuw nsw i32 %565, 1
  %632 = icmp eq i32 %626, 0
  br i1 %632, label %633, label %653

; <label>:633                                     ; preds = %959, %778, %704, %653, %546
  %634 = phi float [ %547, %546 ], [ %547, %704 ], [ %781, %778 ], [ %781, %959 ], [ %547, %653 ]
  %635 = phi float [ %548, %546 ], [ %548, %704 ], [ %548, %778 ], [ %934, %959 ], [ %548, %653 ]
  %636 = phi float [ %549, %546 ], [ %549, %704 ], [ %549, %778 ], [ %932, %959 ], [ %549, %653 ]
  %637 = phi float [ %550, %546 ], [ %550, %704 ], [ %550, %778 ], [ %904, %959 ], [ %550, %653 ]
  %638 = phi float [ %551, %546 ], [ %551, %704 ], [ %551, %778 ], [ %902, %959 ], [ %551, %653 ]
  %639 = phi float [ %552, %546 ], [ %552, %704 ], [ %552, %778 ], [ %969, %959 ], [ %552, %653 ]
  %640 = phi float [ %553, %546 ], [ %553, %704 ], [ %553, %778 ], [ %970, %959 ], [ %553, %653 ]
  %641 = phi float [ %554, %546 ], [ %554, %704 ], [ %554, %778 ], [ %971, %959 ], [ %554, %653 ]
  %642 = phi float [ %555, %546 ], [ %555, %704 ], [ %555, %778 ], [ %883, %959 ], [ %555, %653 ]
  %643 = phi float [ %556, %546 ], [ %556, %704 ], [ %556, %778 ], [ %884, %959 ], [ %556, %653 ]
  %644 = phi float [ %557, %546 ], [ %557, %704 ], [ %557, %778 ], [ %885, %959 ], [ %557, %653 ]
  %645 = phi float [ %558, %546 ], [ %558, %704 ], [ %558, %778 ], [ %912, %959 ], [ %558, %653 ]
  %646 = phi float [ %559, %546 ], [ %559, %704 ], [ %559, %778 ], [ %909, %959 ], [ %559, %653 ]
  %647 = phi float [ %560, %546 ], [ %560, %704 ], [ %560, %778 ], [ %906, %959 ], [ %560, %653 ]
  %648 = phi float [ %561, %546 ], [ %561, %704 ], [ %561, %778 ], [ %900, %959 ], [ %561, %653 ]
  %649 = phi float [ %562, %546 ], [ %562, %704 ], [ %562, %778 ], [ %895, %959 ], [ %562, %653 ]
  %650 = phi float [ %563, %546 ], [ %563, %704 ], [ %563, %778 ], [ %896, %959 ], [ %563, %653 ]
  %651 = phi float [ %564, %546 ], [ %564, %704 ], [ %564, %778 ], [ %897, %959 ], [ %564, %653 ]
  %652 = icmp eq i32 %631, %545
  br i1 %652, label %972, label %546

; <label>:653                                     ; preds = %546
  %654 = extractvalue %dx.types.ResRet.f32 %572, 3
  %655 = bitcast float %654 to i32
  %656 = and i32 %655, 2560
  %657 = icmp eq i32 %656, 0
  %658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = extractvalue %dx.types.ResRet.f32 %658, 1
  %661 = extractvalue %dx.types.ResRet.f32 %658, 2
  %662 = extractvalue %dx.types.ResRet.f32 %658, 3
  %663 = call float @dx.op.dot4.f32(i32 56, float %659, float %660, float %661, float %662, float %92, float %93, float %94, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %664 = or i32 %570, 16
  %665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = extractvalue %dx.types.ResRet.f32 %665, 1
  %668 = extractvalue %dx.types.ResRet.f32 %665, 2
  %669 = extractvalue %dx.types.ResRet.f32 %665, 3
  %670 = call float @dx.op.dot4.f32(i32 56, float %666, float %667, float %668, float %669, float %92, float %93, float %94, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %671 = or i32 %570, 32
  %672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = extractvalue %dx.types.ResRet.f32 %672, 1
  %675 = extractvalue %dx.types.ResRet.f32 %672, 2
  %676 = extractvalue %dx.types.ResRet.f32 %672, 3
  %677 = call float @dx.op.dot4.f32(i32 56, float %673, float %674, float %675, float %676, float %92, float %93, float %94, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %678 = call float @dx.op.unary.f32(i32 27, float %663)  ; Round_ni(value)
  %679 = call float @dx.op.unary.f32(i32 6, float %678)  ; FAbs(value)
  %680 = call float @dx.op.unary.f32(i32 27, float %670)  ; Round_ni(value)
  %681 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %682 = call float @dx.op.unary.f32(i32 6, float %677)  ; FAbs(value)
  %683 = call float @dx.op.unary.f32(i32 27, float %682)  ; Round_ni(value)
  %684 = fadd fast float %681, %679
  %685 = fadd fast float %684, %683
  %686 = fcmp fast oeq float %685, 0.000000e+00
  %687 = call float @dx.op.dot4.f32(i32 56, float %659, float %660, float %661, float %662, float %499, float %500, float %501, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %688 = call float @dx.op.dot4.f32(i32 56, float %666, float %667, float %668, float %669, float %499, float %500, float %501, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %689 = call float @dx.op.dot4.f32(i32 56, float %659, float %660, float %661, float %662, float %502, float %503, float %504, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %690 = call float @dx.op.dot4.f32(i32 56, float %666, float %667, float %668, float %669, float %502, float %503, float %504, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %691 = fsub fast float %687, %663
  %692 = fsub fast float %689, %663
  %693 = fsub fast float %688, %670
  %694 = fsub fast float %690, %670
  %695 = call float @dx.op.dot3.f32(i32 55, float %573, float %574, float %575, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %698 = fadd fast float %697, %695
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %700 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %701 = fcmp fast ogt float %699, %700
  %702 = and i1 %686, %701
  %703 = and i1 %657, %702
  br i1 %703, label %704, label %633

; <label>:704                                     ; preds = %653
  %705 = add i32 %581, 0
  %706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %705, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %706, %dx.types.Handle %707, float %663, float %670, float undef, float undef, i32 0, i32 0, i32 undef, float %691, float %693, float undef, float %692, float %694, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = fmul fast float %709, %584
  %711 = fadd fast float %710, %585
  %712 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %713 = fmul fast float %663, %590
  %714 = call float @dx.op.tertiary.f32(i32 46, float %591, float %670, float %713)  ; FMad(a,b,c)
  %715 = fadd fast float %714, %596
  %716 = fmul fast float %663, %592
  %717 = call float @dx.op.tertiary.f32(i32 46, float %593, float %670, float %716)  ; FMad(a,b,c)
  %718 = fadd fast float %717, %597
  %719 = fmul fast float %691, %590
  %720 = call float @dx.op.tertiary.f32(i32 46, float %591, float %693, float %719)  ; FMad(a,b,c)
  %721 = fmul fast float %691, %592
  %722 = call float @dx.op.tertiary.f32(i32 46, float %593, float %693, float %721)  ; FMad(a,b,c)
  %723 = fmul fast float %692, %590
  %724 = call float @dx.op.tertiary.f32(i32 46, float %591, float %694, float %723)  ; FMad(a,b,c)
  %725 = fmul fast float %692, %592
  %726 = call float @dx.op.tertiary.f32(i32 46, float %593, float %694, float %725)  ; FMad(a,b,c)
  %727 = add i32 %580, 0
  %728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %729 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %728, %dx.types.Handle %707, float %715, float %718, float undef, float undef, i32 0, i32 0, i32 undef, float %720, float %722, float undef, float %724, float %726, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %730 = extractvalue %dx.types.ResRet.f32 %729, 0
  %731 = and i32 %655, 1024
  %732 = icmp ne i32 %731, 0
  %733 = fcmp fast ogt float %730, 0x3FE0101020000000
  %734 = uitofp i1 %733 to float
  %735 = select i1 %732, float %734, float %730
  %736 = and i32 %655, 8192
  %737 = icmp ne i32 %736, 0
  %738 = select i1 %737, float %599, float 1.000000e+00
  %739 = fmul fast float %663, 2.000000e+00
  %740 = fadd fast float %739, -1.000000e+00
  %741 = call float @dx.op.unary.f32(i32 6, float %740)  ; FAbs(value)
  %742 = fmul fast float %741, %629
  %743 = fsub fast float %742, %629
  %744 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %745 = fmul fast float %670, 2.000000e+00
  %746 = fadd fast float %745, -1.000000e+00
  %747 = call float @dx.op.unary.f32(i32 6, float %746)  ; FAbs(value)
  %748 = fmul fast float %747, %630
  %749 = fsub fast float %748, %630
  %750 = call float @dx.op.unary.f32(i32 7, float %749)  ; Saturate(value)
  %751 = fmul fast float %682, %586
  %752 = fsub fast float %751, %586
  %753 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  %754 = fmul fast float %712, %738
  %755 = fmul fast float %754, %709
  %756 = fmul fast float %755, %744
  %757 = fmul fast float %756, %735
  %758 = fmul fast float %757, %750
  %759 = fmul fast float %758, %753
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 1
  %762 = extractvalue %dx.types.CBufRet.f32 %760, 0
  %763 = fsub fast float %699, %762
  %764 = fmul fast float %763, %761
  %765 = call float @dx.op.unary.f32(i32 7, float %764)  ; Saturate(value)
  %766 = fmul fast float %759, %587
  %767 = fadd fast float %759, %587
  %768 = fmul fast float %767, %598
  %769 = fsub fast float %768, %598
  %770 = call float @dx.op.unary.f32(i32 7, float %769)  ; Saturate(value)
  %771 = and i32 %655, 128
  %772 = icmp ne i32 %771, 0
  %773 = select i1 %772, float %770, float %766
  %774 = fmul fast float %773, %765
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 0
  %777 = fcmp fast ugt float %774, %776
  br i1 %777, label %778, label %633

; <label>:778                                     ; preds = %704
  %779 = select i1 %737, float %774, float 0.000000e+00
  %780 = fadd fast float %779, %547
  %781 = call float @dx.op.unary.f32(i32 7, float %780)  ; Saturate(value)
  br i1 %737, label %633, label %782

; <label>:782                                     ; preds = %778
  %783 = and i32 %655, 4
  %784 = and i32 %655, 8
  %785 = add i32 %578, 0
  %786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %785, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %787 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %786, %dx.types.Handle %403, float %715, float %718, float undef, float undef, i32 0, i32 0, i32 undef, float %720, float %722, float undef, float %724, float %726, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 0
  %789 = extractvalue %dx.types.ResRet.f32 %787, 1
  %790 = extractvalue %dx.types.ResRet.f32 %787, 2
  %791 = extractvalue %dx.types.ResRet.f32 %787, 3
  %792 = bitcast float %611 to i32
  %793 = and i32 %792, 255
  %794 = uitofp i32 %793 to float
  %795 = lshr i32 %792, 8
  %796 = and i32 %795, 255
  %797 = uitofp i32 %796 to float
  %798 = fmul fast float %791, %794
  %799 = fadd fast float %798, %797
  %800 = fmul fast float %799, 0x3F70101000000000
  %801 = add i32 %579, 0
  %802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %801, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %803 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %802, %dx.types.Handle %403, float %715, float %718, float undef, float undef, i32 0, i32 0, i32 undef, float %720, float %722, float undef, float %724, float %726, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %804 = extractvalue %dx.types.ResRet.f32 %803, 0
  %805 = extractvalue %dx.types.ResRet.f32 %803, 1
  %806 = extractvalue %dx.types.ResRet.f32 %803, 2
  %807 = extractvalue %dx.types.ResRet.f32 %803, 3
  %808 = bitcast float %605 to i32
  %809 = and i32 %808, 255
  %810 = uitofp i32 %809 to float
  %811 = lshr i32 %808, 8
  %812 = and i32 %811, 255
  %813 = uitofp i32 %812 to float
  %814 = lshr i32 %808, 16
  %815 = and i32 %814, 255
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F70101000000000
  %818 = fmul fast float %804, %810
  %819 = fadd fast float %818, %813
  %820 = fmul fast float %819, 0x3F70101000000000
  %821 = fadd fast float %805, -5.000000e-01
  %822 = fadd fast float %807, -5.000000e-01
  %823 = fmul fast float %821, %817
  %824 = fmul fast float %822, %817
  %825 = fadd fast float %823, 5.000000e-01
  %826 = fadd fast float %824, 5.000000e-01
  %827 = fmul fast float %788, %614
  %828 = fmul fast float %789, %615
  %829 = fmul fast float %790, %616
  %830 = fmul fast float %825, 2.000000e+00
  %831 = fadd fast float %830, -1.000000e+00
  %832 = fmul fast float %826, 2.000000e+00
  %833 = fadd fast float %832, -1.000000e+00
  %834 = fadd fast float %831, %833
  %835 = fmul fast float %834, 5.000000e-01
  %836 = fsub fast float %831, %833
  %837 = fmul fast float %836, 5.000000e-01
  %838 = call float @dx.op.unary.f32(i32 6, float %835)  ; FAbs(value)
  %839 = fsub fast float 1.000000e+00, %838
  %840 = call float @dx.op.unary.f32(i32 6, float %837)  ; FAbs(value)
  %841 = fsub fast float %839, %840
  %842 = call float @dx.op.dot3.f32(i32 55, float %835, float %837, float %841, float %835, float %837, float %841)  ; Dot3(ax,ay,az,bx,by,bz)
  %843 = call float @dx.op.unary.f32(i32 25, float %842)  ; Rsqrt(value)
  %844 = fmul fast float %835, %843
  %845 = fmul fast float %837, %843
  %846 = fmul fast float %843, %841
  %847 = fmul fast float %846, %573
  %848 = fmul fast float %846, %574
  %849 = fmul fast float %846, %575
  %850 = fmul fast float %844, %602
  %851 = fmul fast float %844, %603
  %852 = fmul fast float %844, %604
  %853 = fadd fast float %850, %847
  %854 = fadd fast float %851, %848
  %855 = fadd fast float %852, %849
  %856 = fmul fast float %845, %608
  %857 = fmul fast float %845, %609
  %858 = fmul fast float %845, %610
  %859 = fadd fast float %853, %856
  %860 = fadd fast float %854, %857
  %861 = fadd fast float %855, %858
  %862 = call float @dx.op.dot3.f32(i32 55, float %859, float %860, float %861, float %859, float %860, float %861)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = call float @dx.op.unary.f32(i32 25, float %862)  ; Rsqrt(value)
  %864 = fmul fast float %859, %863
  %865 = fmul fast float %860, %863
  %866 = fmul fast float %861, %863
  %867 = icmp ne i32 %784, 0
  %868 = select i1 %867, float 1.000000e+00, float 0.000000e+00
  %869 = fmul fast float %774, %868
  %870 = and i32 %655, 1
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %876

; <label>:872                                     ; preds = %782
  %873 = fsub fast float %864, %555
  %874 = fsub fast float %865, %556
  %875 = fsub fast float %866, %557
  br label %876

; <label>:876                                     ; preds = %872, %782
  %877 = phi float [ %873, %872 ], [ %864, %782 ]
  %878 = phi float [ %874, %872 ], [ %865, %782 ]
  %879 = phi float [ %875, %872 ], [ %866, %782 ]
  %880 = fmul float %879, %869
  %881 = fmul float %878, %869
  %882 = fmul float %877, %869
  %883 = fadd fast float %882, %555
  %884 = fadd fast float %881, %556
  %885 = fadd fast float %880, %557
  %886 = icmp ne i32 %783, 0
  %887 = select i1 %886, float 1.000000e+00, float 0.000000e+00
  %888 = fmul fast float %774, %887
  %889 = fsub fast float %827, %562
  %890 = fsub fast float %828, %563
  %891 = fsub fast float %829, %564
  %892 = fmul fast float %889, %888
  %893 = fmul fast float %890, %888
  %894 = fmul fast float %891, %888
  %895 = fadd fast float %892, %562
  %896 = fadd fast float %893, %563
  %897 = fadd fast float %894, %564
  %898 = fsub fast float %800, %561
  %899 = fmul fast float %898, %888
  %900 = fadd fast float %899, %561
  %901 = fmul fast float %888, %551
  %902 = fsub fast float %551, %901
  %903 = fmul fast float %888, %550
  %904 = fsub fast float %550, %903
  %905 = fadd fast float %774, %560
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = fsub fast float %820, %559
  %908 = fmul fast float %907, %869
  %909 = fadd fast float %908, %559
  %910 = fsub fast float %806, %558
  %911 = fmul fast float %910, %869
  %912 = fadd fast float %911, %558
  %913 = call float @dx.op.dot3.f32(i32 55, float %827, float %828, float %829, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %916 = extractvalue %dx.types.CBufRet.f32 %914, 1
  %917 = fmul fast float %916, %913
  %918 = fadd fast float %917, %915
  %919 = call float @dx.op.unary.f32(i32 7, float %918)  ; Saturate(value)
  %920 = bitcast float %617 to i32
  %921 = and i32 %920, 65535
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = lshr i32 %920, 16
  %924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %923)  ; LegacyF16ToF32(value)
  %925 = fcmp fast oge float %922, 0.000000e+00
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = select i1 %925, float %922, float %927
  %929 = fadd fast float %928, %924
  %930 = fsub fast float %919, %549
  %931 = fmul fast float %930, %774
  %932 = fadd fast float %931, %549
  %933 = fmul fast float %929, %774
  %934 = call float @dx.op.binary.f32(i32 35, float %548, float %933)  ; FMax(a,b)
  %935 = and i32 %655, 16
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %959, label %937

; <label>:937                                     ; preds = %876
  %938 = bitcast float %623 to i32
  %939 = add i32 %620, 0
  %940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %939, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %941 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %940, %dx.types.Handle %403, float %715, float %718, float undef, float undef, i32 0, i32 0, i32 undef, float %720, float %722, float undef, float %724, float %726, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %942 = extractvalue %dx.types.ResRet.f32 %941, 0
  %943 = extractvalue %dx.types.ResRet.f32 %941, 1
  %944 = extractvalue %dx.types.ResRet.f32 %941, 2
  %945 = and i32 %938, 65535
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = fmul fast float %942, %614
  %948 = fmul fast float %943, %615
  %949 = fmul fast float %944, %616
  %950 = and i32 %655, 16384
  %951 = icmp ne i32 %950, 0
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 0
  %954 = select i1 %951, float %953, float 1.000000e+00
  %955 = fmul fast float %954, %946
  %956 = fmul fast float %947, %955
  %957 = fmul fast float %948, %955
  %958 = fmul fast float %949, %955
  br label %959

; <label>:959                                     ; preds = %937, %876
  %960 = phi float [ %956, %937 ], [ 0.000000e+00, %876 ]
  %961 = phi float [ %957, %937 ], [ 0.000000e+00, %876 ]
  %962 = phi float [ %958, %937 ], [ 0.000000e+00, %876 ]
  %963 = fsub fast float %960, %552
  %964 = fsub fast float %961, %553
  %965 = fsub fast float %962, %554
  %966 = fmul fast float %963, %774
  %967 = fmul fast float %964, %774
  %968 = fmul fast float %965, %774
  %969 = fadd fast float %966, %552
  %970 = fadd fast float %967, %553
  %971 = fadd fast float %968, %554
  br label %633

; <label>:972                                     ; preds = %633
  br label %973

; <label>:973                                     ; preds = %972, %423
  %974 = phi float [ 0.000000e+00, %423 ], [ %634, %972 ]
  %975 = phi float [ %448, %423 ], [ %635, %972 ]
  %976 = phi float [ %424, %423 ], [ %636, %972 ]
  %977 = phi float [ 0.000000e+00, %423 ], [ %637, %972 ]
  %978 = phi float [ 0.000000e+00, %423 ], [ %638, %972 ]
  %979 = phi float [ 0.000000e+00, %423 ], [ %639, %972 ]
  %980 = phi float [ 0.000000e+00, %423 ], [ %640, %972 ]
  %981 = phi float [ 0.000000e+00, %423 ], [ %641, %972 ]
  %982 = phi float [ %490, %423 ], [ %642, %972 ]
  %983 = phi float [ %491, %423 ], [ %643, %972 ]
  %984 = phi float [ %492, %423 ], [ %644, %972 ]
  %985 = phi float [ %428, %423 ], [ %645, %972 ]
  %986 = phi float [ %426, %423 ], [ %646, %972 ]
  %987 = phi float [ 0.000000e+00, %423 ], [ %647, %972 ]
  %988 = phi float [ %425, %423 ], [ %648, %972 ]
  %989 = phi float [ %405, %423 ], [ %649, %972 ]
  %990 = phi float [ %406, %423 ], [ %650, %972 ]
  %991 = phi float [ %407, %423 ], [ %651, %972 ]
  %992 = call float @dx.op.dot3.f32(i32 55, float %982, float %983, float %984, float %982, float %983, float %984)  ; Dot3(ax,ay,az,bx,by,bz)
  %993 = call float @dx.op.unary.f32(i32 25, float %992)  ; Rsqrt(value)
  %994 = fmul fast float %993, %982
  %995 = fmul fast float %993, %983
  %996 = fmul fast float %993, %984
  %997 = fadd fast float %987, 1.000000e+00
  %998 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %999 = call float @dx.op.dot3.f32(i32 55, float %994, float %995, float %996, float %994, float %995, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %1000 = call float @dx.op.unary.f32(i32 25, float %999)  ; Rsqrt(value)
  %1001 = fmul fast float %1000, %994
  %1002 = fmul fast float %1000, %995
  %1003 = fmul fast float %1000, %996
  %1004 = fadd fast float %988, 0xBFB99999A0000000
  %1005 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1006 = fmul fast float %1005, 0x3FF1C71C80000000
  %1007 = call float @dx.op.binary.f32(i32 36, float %988, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1008 = fsub fast float 1.000000e+00, %1006
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1010 = fmul fast float %1009, %989
  %1011 = fmul fast float %1009, %990
  %1012 = fmul fast float %1009, %991
  %1013 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1014 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  %1015 = call float @dx.op.unary.f32(i32 7, float %1012)  ; Saturate(value)
  %1016 = fmul fast float %1006, %989
  %1017 = fmul fast float %1006, %990
  %1018 = fmul fast float %1006, %991
  %1019 = fadd fast float %1016, %1007
  %1020 = fadd fast float %1017, %1007
  %1021 = fadd fast float %1018, %1007
  %1022 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1023 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  %1024 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1025 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  %1026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.i32 %1026, 3
  %1028 = and i32 %1027, 8
  %1029 = icmp ne i32 %1028, 0
  %1030 = call float @dx.op.binary.f32(i32 35, float %1013, float %989)  ; FMax(a,b)
  %1031 = call float @dx.op.binary.f32(i32 35, float %1014, float %989)  ; FMax(a,b)
  %1032 = call float @dx.op.binary.f32(i32 35, float %1015, float %989)  ; FMax(a,b)
  %1033 = call float @dx.op.dot3.f32(i32 55, float %1013, float %1014, float %1015, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = select i1 %402, float %989, float %1013
  %1035 = select i1 %402, float %1033, float %1014
  %1036 = select i1 %402, float 1.000000e+00, float %1015
  %1037 = select i1 %1029, float %1030, float %1034
  %1038 = select i1 %1029, float %1031, float %1035
  %1039 = select i1 %1029, float %1032, float %1036
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.CBufRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.CBufRet.f32 %1040, 2
  %1044 = fadd fast float %1041, %92
  %1045 = fadd fast float %1042, %93
  %1046 = fadd fast float %1043, %94
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.CBufRet.f32 %1047, 1
  %1050 = fsub fast float %1044, %1048
  %1051 = fsub fast float %1045, %1049
  %1052 = fmul fast float %1050, %1050
  %1053 = fmul fast float %1051, %1051
  %1054 = fadd fast float %1052, %1053
  %1055 = call float @dx.op.unary.f32(i32 24, float %1054)  ; Sqrt(value)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1047, 2
  %1057 = fcmp fast olt float %1055, %1056
  br i1 %1057, label %1058, label %1125

; <label>:1058                                    ; preds = %973
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 0
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1066 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1067 = extractvalue %dx.types.CBufRet.f32 %1063, 1
  %1068 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1069 = extractvalue %dx.types.CBufRet.f32 %1061, 3
  %1070 = extractvalue %dx.types.CBufRet.f32 %1063, 3
  %1071 = fadd fast float %1068, %1044
  %1072 = fadd fast float %1069, %1045
  %1073 = fadd fast float %1070, %1046
  %1074 = fmul fast float %1071, %1060
  %1075 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %1062, float %1074)  ; FMad(a,b,c)
  %1076 = call float @dx.op.tertiary.f32(i32 46, float %1073, float %1064, float %1075)  ; FMad(a,b,c)
  %1077 = fmul fast float %1071, %1065
  %1078 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %1066, float %1077)  ; FMad(a,b,c)
  %1079 = call float @dx.op.tertiary.f32(i32 46, float %1073, float %1067, float %1078)  ; FMad(a,b,c)
  %1080 = fsub fast float %1076, %1068
  %1081 = fsub fast float %1079, %1069
  %1082 = fsub fast float %1080, %1048
  %1083 = fadd fast float %1082, %1056
  %1084 = fsub fast float %1081, %1049
  %1085 = fadd fast float %1084, %1056
  %1086 = extractvalue %dx.types.CBufRet.f32 %1047, 3
  %1087 = fmul fast float %1083, %1086
  %1088 = fmul fast float %1085, %1086
  %1089 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1090 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  %1091 = fsub fast float 1.000000e+00, %1089
  %1092 = fsub fast float 1.000000e+00, %1090
  %1093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %38, float %1091, float %1092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = fcmp fast ugt float %1094, 0.000000e+00
  br i1 %1095, label %1096, label %1399

; <label>:1096                                    ; preds = %1058
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 2
  %1099 = fmul fast float %1098, %1094
  %1100 = extractvalue %dx.types.CBufRet.f32 %1097, 3
  %1101 = fadd fast float %1100, %1099
  %1102 = extractvalue %dx.types.CBufRet.f32 %1063, 2
  %1103 = fadd fast float %1101, %1070
  %1104 = fmul fast float %1076, %1064
  %1105 = call float @dx.op.tertiary.f32(i32 46, float %1079, float %1067, float %1104)  ; FMad(a,b,c)
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %1103, float %1102, float %1105)  ; FMad(a,b,c)
  %1107 = fsub fast float %1106, %1070
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 2
  %1110 = fsub fast float %1107, %1109
  %1111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %38, float %1091, float %1092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.ResRet.f32 %1111, 2
  %1115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %38, float %1091, float %1092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1119 = fadd fast float %1116, %1112
  %1120 = fmul fast float %1119, 0x3F847AE140000000
  %1121 = fadd fast float %1117, %1113
  %1122 = fmul fast float %1121, 0x3F847AE140000000
  %1123 = fadd fast float %1118, %1114
  %1124 = fmul fast float %1123, 0x3F847AE140000000
  br label %1399

; <label>:1125                                    ; preds = %973
  %1126 = and i32 %378, 1
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1399, label %1128

; <label>:1128                                    ; preds = %1125
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 0
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.CBufRet.f32 %1129, 1
  %1136 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1137 = extractvalue %dx.types.CBufRet.f32 %1133, 1
  %1138 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  %1139 = extractvalue %dx.types.CBufRet.f32 %1131, 3
  %1140 = extractvalue %dx.types.CBufRet.f32 %1133, 3
  %1141 = fadd fast float %1138, %1044
  %1142 = fadd fast float %1139, %1045
  %1143 = fadd fast float %1140, %1046
  %1144 = fmul fast float %1141, %1130
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1142, float %1132, float %1144)  ; FMad(a,b,c)
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1143, float %1134, float %1145)  ; FMad(a,b,c)
  %1147 = fmul fast float %1141, %1135
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1142, float %1136, float %1147)  ; FMad(a,b,c)
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1143, float %1137, float %1148)  ; FMad(a,b,c)
  %1150 = fsub fast float %1146, %1138
  %1151 = fsub fast float %1149, %1139
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.CBufRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.CBufRet.f32 %1152, 2
  %1156 = extractvalue %dx.types.CBufRet.f32 %1152, 3
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 3
  %1159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.i32 %1159, 0
  %1161 = extractvalue %dx.types.CBufRet.i32 %1159, 1
  %1162 = udiv i32 %1161, %1160
  %1163 = fsub fast float %1150, %1153
  %1164 = fsub fast float %1151, %1154
  %1165 = call float @dx.op.binary.f32(i32 35, float %1163, float 0.000000e+00)  ; FMax(a,b)
  %1166 = call float @dx.op.binary.f32(i32 35, float %1164, float 0.000000e+00)  ; FMax(a,b)
  %1167 = call float @dx.op.binary.f32(i32 36, float %1165, float %1155)  ; FMin(a,b)
  %1168 = call float @dx.op.binary.f32(i32 36, float %1166, float %1156)  ; FMin(a,b)
  %1169 = add i32 %1160, -1
  %1170 = add i32 %1162, -1
  %1171 = fmul fast float %1167, %1158
  %1172 = fmul fast float %1168, %1158
  %1173 = fptoui float %1171 to i32
  %1174 = fptoui float %1172 to i32
  %1175 = call i32 @dx.op.binary.i32(i32 40, i32 %1173, i32 %1169)  ; UMin(a,b)
  %1176 = call i32 @dx.op.binary.i32(i32 40, i32 %1174, i32 %1170)  ; UMin(a,b)
  %1177 = mul i32 %1176, %1160
  %1178 = add i32 %1177, %1175
  %1179 = shl i32 %1178, 2
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = icmp eq i32 %1181, -1
  br i1 %1182, label %1399, label %1183

; <label>:1183                                    ; preds = %1128
  %1184 = mul i32 %1181, 148
  %1185 = add i32 %1184, 4
  %1186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = add i32 %1184, 8
  %1189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = add i32 %1184, 36
  %1192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = add i32 %1184, 60
  %1195 = add i32 %1184, 92
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = add i32 %1184, 116
  %1199 = fsub fast float %1150, %1187
  %1200 = fsub fast float %1151, %1190
  %1201 = fmul fast float %1158, %1199
  %1202 = fmul fast float %1158, %1200
  %1203 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1204 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1205 = fsub fast float 1.000000e+00, %1204
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 2
  %1208 = call float @dx.op.unary.f32(i32 83, float %1203)  ; DerivCoarseX(value)
  %1209 = call float @dx.op.unary.f32(i32 83, float %1205)  ; DerivCoarseX(value)
  %1210 = call float @dx.op.unary.f32(i32 84, float %1203)  ; DerivCoarseY(value)
  %1211 = call float @dx.op.unary.f32(i32 84, float %1205)  ; DerivCoarseY(value)
  %1212 = fmul fast float %1208, %1207
  %1213 = fmul fast float %1209, %1207
  %1214 = fmul fast float %1210, %1207
  %1215 = fmul fast float %1211, %1207
  %1216 = call float @dx.op.dot2.f32(i32 54, float %1214, float %1215, float %1214, float %1215)  ; Dot2(ax,ay,bx,by)
  %1217 = call float @dx.op.dot2.f32(i32 54, float %1212, float %1213, float %1212, float %1213)  ; Dot2(ax,ay,bx,by)
  %1218 = call float @dx.op.binary.f32(i32 35, float %1217, float %1216)  ; FMax(a,b)
  %1219 = call float @dx.op.unary.f32(i32 23, float %1218)  ; Log(value)
  %1220 = fmul fast float %1219, 5.000000e-01
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1223 = fadd fast float %1222, %1220
  %1224 = call float @dx.op.binary.f32(i32 35, float %1223, float 0.000000e+00)  ; FMax(a,b)
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 3
  %1227 = fadd fast float %1226, %1224
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 3
  %1230 = fadd fast float %1227, %1229
  %1231 = add i32 %1197, 0
  %1232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1231, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1233 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1232, i32 0)  ; GetDimensions(handle,mipLevel)
  %1234 = extractvalue %dx.types.Dimensions %1233, 0
  %1235 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1234)  ; FirstbitLo(value)
  %1236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.i32 %1236, 1
  %1238 = sub nsw i32 %1237, %1235
  %1239 = sitofp i32 %1238 to float
  %1240 = fsub fast float %1230, %1239
  %1241 = call float @dx.op.binary.f32(i32 35, float %1240, float 0.000000e+00)  ; FMax(a,b)
  %1242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1232, %dx.types.Handle %37, float %1203, float %1205, float %1193, float undef, i32 0, i32 0, i32 undef, float %1241)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = fcmp ule float %1243, 0x3FE0101020000000
  %1245 = extractvalue %dx.types.CBufRet.i32 %1236, 0
  %1246 = and i32 %1245, 128
  %1247 = icmp ne i32 %1246, 0
  %1248 = and i1 %1244, %1247
  br i1 %1248, label %1399, label %1249

; <label>:1249                                    ; preds = %1183
  %1250 = add i32 %1184, 20
  %1251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = add i32 %1184, 24
  %1254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = add i32 %1184, 40
  %1257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 0
  %1259 = add i32 %1184, 96
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 2
  %1264 = fmul fast float %1263, %1203
  %1265 = fmul fast float %1263, %1205
  %1266 = extractvalue %dx.types.CBufRet.f32 %1262, 3
  %1267 = fadd fast float %1264, %1266
  %1268 = fadd fast float %1265, %1266
  %1269 = add i32 %1261, 0
  %1270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1269, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1271 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1270, i32 0)  ; GetDimensions(handle,mipLevel)
  %1272 = extractvalue %dx.types.Dimensions %1271, 0
  %1273 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1272)  ; FirstbitLo(value)
  %1274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.i32 %1274, 1
  %1276 = sub nsw i32 %1275, %1273
  %1277 = sitofp i32 %1276 to float
  %1278 = fsub fast float %1227, %1277
  %1279 = call float @dx.op.binary.f32(i32 35, float %1278, float 0.000000e+00)  ; FMax(a,b)
  %1280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1270, %dx.types.Handle %37, float %1267, float %1268, float %1258, float undef, i32 0, i32 0, i32 undef, float %1279)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = fmul fast float %1281, %1252
  %1283 = fadd fast float %1282, %1255
  %1284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.CBufRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.CBufRet.f32 %1284, 2
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 3
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 3
  %1292 = extractvalue %dx.types.CBufRet.f32 %1284, 3
  %1293 = fadd fast float %1289, %1150
  %1294 = fadd fast float %1291, %1151
  %1295 = fadd fast float %1283, %1292
  %1296 = fmul fast float %1293, %1285
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %1294, float %1286, float %1296)  ; FMad(a,b,c)
  %1298 = call float @dx.op.tertiary.f32(i32 46, float %1295, float %1287, float %1297)  ; FMad(a,b,c)
  %1299 = fsub fast float %1298, %1292
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 2
  %1302 = fsub fast float %1299, %1301
  %1303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.i32 %1303, 0
  %1305 = call i32 @dx.op.binary.i32(i32 40, i32 %1181, i32 %1304)  ; UMin(a,b)
  %1306 = mul i32 %1305, 36
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = add i32 %1306, 4
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 0
  %1312 = fmul fast float %1311, %1203
  %1313 = fmul fast float %1311, %1205
  %1314 = extractvalue %dx.types.CBufRet.f32 %1310, 1
  %1315 = fadd fast float %1312, %1314
  %1316 = fadd fast float %1313, %1314
  %1317 = icmp eq i32 %1308, 0
  br i1 %1317, label %1386, label %1318

; <label>:1318                                    ; preds = %1249
  br label %1319

; <label>:1319                                    ; preds = %1376, %1318
  %1320 = phi float [ %1377, %1376 ], [ 0.000000e+00, %1318 ]
  %1321 = phi float [ %1378, %1376 ], [ 0.000000e+00, %1318 ]
  %1322 = phi float [ %1379, %1376 ], [ 0.000000e+00, %1318 ]
  %1323 = phi float [ %1380, %1376 ], [ 0.000000e+00, %1318 ]
  %1324 = phi float [ %1381, %1376 ], [ 0.000000e+00, %1318 ]
  %1325 = phi float [ %1382, %1376 ], [ 0.000000e+00, %1318 ]
  %1326 = phi i32 [ %1383, %1376 ], [ 0, %1318 ]
  %1327 = shl i32 %1326, 2
  %1328 = add i32 %1194, %1327
  %1329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1330 = extractvalue %dx.types.ResRet.f32 %1329, 0
  %1331 = add i32 %1198, %1327
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = add i32 %1333, 0
  %1335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1334, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1336 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1335, i32 0)  ; GetDimensions(handle,mipLevel)
  %1337 = extractvalue %dx.types.Dimensions %1336, 0
  %1338 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1337)  ; FirstbitLo(value)
  %1339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.i32 %1339, 1
  %1341 = sub nsw i32 %1340, %1338
  %1342 = sitofp i32 %1341 to float
  %1343 = fsub fast float %1227, %1342
  %1344 = call float @dx.op.binary.f32(i32 35, float %1343, float 0.000000e+00)  ; FMax(a,b)
  %1345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1335, %dx.types.Handle %37, float %1315, float %1316, float %1330, float undef, i32 0, i32 0, i32 undef, float %1344)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1346 = extractvalue %dx.types.ResRet.f32 %1345, 0
  %1347 = fcmp fast ogt float %1346, 0.000000e+00
  br i1 %1347, label %1348, label %1376

; <label>:1348                                    ; preds = %1319
  %1349 = add i32 %1309, %1327
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %1351, 32767
  %1353 = mul nuw nsw i32 %1352, 928
  %1354 = add nuw nsw i32 %1353, 48
  %1355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = extractvalue %dx.types.ResRet.f32 %1355, 1
  %1358 = extractvalue %dx.types.ResRet.f32 %1355, 2
  %1359 = add nuw nsw i32 %1353, 60
  %1360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.ResRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.ResRet.f32 %1360, 2
  %1364 = fmul fast float %1356, %1346
  %1365 = fmul fast float %1357, %1346
  %1366 = fmul fast float %1358, %1346
  %1367 = fadd fast float %1364, %1320
  %1368 = fadd fast float %1365, %1321
  %1369 = fadd fast float %1366, %1322
  %1370 = fmul fast float %1361, %1346
  %1371 = fmul fast float %1362, %1346
  %1372 = fmul fast float %1363, %1346
  %1373 = fadd fast float %1370, %1323
  %1374 = fadd fast float %1371, %1324
  %1375 = fadd fast float %1372, %1325
  br label %1376

; <label>:1376                                    ; preds = %1348, %1319
  %1377 = phi float [ %1367, %1348 ], [ %1320, %1319 ]
  %1378 = phi float [ %1368, %1348 ], [ %1321, %1319 ]
  %1379 = phi float [ %1369, %1348 ], [ %1322, %1319 ]
  %1380 = phi float [ %1373, %1348 ], [ %1323, %1319 ]
  %1381 = phi float [ %1374, %1348 ], [ %1324, %1319 ]
  %1382 = phi float [ %1375, %1348 ], [ %1325, %1319 ]
  %1383 = add nuw i32 %1326, 1
  %1384 = icmp eq i32 %1383, %1308
  br i1 %1384, label %1385, label %1319

; <label>:1385                                    ; preds = %1376
  br label %1386

; <label>:1386                                    ; preds = %1385, %1249
  %1387 = phi float [ 0.000000e+00, %1249 ], [ %1377, %1385 ]
  %1388 = phi float [ 0.000000e+00, %1249 ], [ %1378, %1385 ]
  %1389 = phi float [ 0.000000e+00, %1249 ], [ %1379, %1385 ]
  %1390 = phi float [ 0.000000e+00, %1249 ], [ %1380, %1385 ]
  %1391 = phi float [ 0.000000e+00, %1249 ], [ %1381, %1385 ]
  %1392 = phi float [ 0.000000e+00, %1249 ], [ %1382, %1385 ]
  %1393 = fadd fast float %1390, %1387
  %1394 = fmul fast float %1393, 0x3F847AE140000000
  %1395 = fadd fast float %1391, %1388
  %1396 = fmul fast float %1395, 0x3F847AE140000000
  %1397 = fadd fast float %1392, %1389
  %1398 = fmul fast float %1397, 0x3F847AE140000000
  br label %1399

; <label>:1399                                    ; preds = %1386, %1183, %1128, %1125, %1096, %1058
  %1400 = phi float [ %1110, %1096 ], [ -1.310720e+05, %1058 ], [ %1302, %1386 ], [ -1.310720e+05, %1128 ], [ -1.310720e+05, %1183 ], [ -1.310720e+05, %1125 ]
  %1401 = phi float [ %1120, %1096 ], [ 0.000000e+00, %1058 ], [ %1394, %1386 ], [ 0.000000e+00, %1128 ], [ 0.000000e+00, %1183 ], [ 0.000000e+00, %1125 ]
  %1402 = phi float [ %1122, %1096 ], [ 0.000000e+00, %1058 ], [ %1396, %1386 ], [ 0.000000e+00, %1128 ], [ 0.000000e+00, %1183 ], [ 0.000000e+00, %1125 ]
  %1403 = phi float [ %1124, %1096 ], [ 0.000000e+00, %1058 ], [ %1398, %1386 ], [ 0.000000e+00, %1128 ], [ 0.000000e+00, %1183 ], [ 0.000000e+00, %1125 ]
  %1404 = phi i1 [ true, %1096 ], [ false, %1058 ], [ true, %1386 ], [ false, %1128 ], [ false, %1183 ], [ false, %1125 ]
  %1405 = and i32 %378, 3
  %1406 = icmp eq i32 %1405, 1
  %1407 = select i1 %1406, float 1.000000e+00, float 0.000000e+00
  %1408 = fsub fast float %1400, %94
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1410 = select i1 %1404, float %1409, float 1.000000e+00
  %1411 = fmul fast float %1410, %1407
  %1412 = icmp eq i32 %1405, 3
  %1413 = select i1 %1412, float 1.000000e+00, float %1411
  %1414 = call float @dx.op.binary.f32(i32 35, float %974, float %1413)  ; FMax(a,b)
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1416 = fcmp fast une float %1415, 0.000000e+00
  %1417 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %1418 = call float @dx.op.unary.f32(i32 25, float %1417)  ; Rsqrt(value)
  br i1 %1416, label %1426, label %1419

; <label>:1419                                    ; preds = %1399
  %1420 = fmul fast float %1418, %92
  %1421 = fmul fast float %1418, %93
  %1422 = fmul fast float %1418, %94
  %1423 = fsub fast float -0.000000e+00, %1420
  %1424 = fsub fast float -0.000000e+00, %1421
  %1425 = fsub fast float -0.000000e+00, %1422
  br label %1594

; <label>:1426                                    ; preds = %1399
  %1427 = fmul fast float %92, %1418
  %1428 = fsub fast float -0.000000e+00, %1427
  %1429 = fmul fast float %93, %1418
  %1430 = fsub fast float -0.000000e+00, %1429
  %1431 = fmul fast float %94, %1418
  %1432 = fsub fast float -0.000000e+00, %1431
  %1433 = call float @dx.op.dot3.f32(i32 55, float %1428, float %1430, float %1432, float %490, float %491, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %1434 = fmul fast float %1415, 2.500000e+00
  %1435 = call float @dx.op.unary.f32(i32 7, float %1434)  ; Saturate(value)
  %1436 = fmul fast float %1415, 0x4013FFFFE0000000
  %1437 = fadd fast float %1436, 0xBFFFFFFFE0000000
  %1438 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1439 = fmul fast float %1415, 0x4004000020000000
  %1440 = fadd fast float %1439, 0xBFF8000040000000
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  %1443 = fmul fast float %1004, 1.000000e+01
  %1444 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1445 = fmul fast float %1444, 2.000000e+00
  %1446 = fsub fast float 3.000000e+00, %1445
  %1447 = fmul fast float %1444, %1444
  %1448 = fmul fast float %1447, %1446
  %1449 = fsub fast float 1.000000e+00, %1448
  %1450 = fsub fast float 0x3FE3333340000000, %1025
  %1451 = fmul fast float %1450, 0x400AAAAAA0000000
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1453 = fmul fast float %1449, %1452
  %1454 = fmul fast float %1037, 0x3FEA2B8620000000
  %1455 = fmul fast float %1038, 0x3FEA2B8620000000
  %1456 = fmul fast float %1039, 0x3FEA2B8620000000
  %1457 = fadd fast float %1454, 0x3FC81DFBA0000000
  %1458 = fmul fast float %1457, %1037
  %1459 = fadd fast float %1458, 0x3F910E6020000000
  %1460 = fadd fast float %1455, 0x3FC81DFBA0000000
  %1461 = fmul fast float %1460, %1038
  %1462 = fadd fast float %1461, 0x3F910E6020000000
  %1463 = fadd fast float %1456, 0x3FC81DFBA0000000
  %1464 = fmul fast float %1463, %1039
  %1465 = fadd fast float %1464, 0x3F910E6020000000
  %1466 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1467 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1468 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  %1469 = fsub fast float %1466, %1037
  %1470 = fsub fast float %1467, %1038
  %1471 = fsub fast float %1468, %1039
  %1472 = fmul fast float %1469, %1442
  %1473 = fmul fast float %1472, %1453
  %1474 = fmul fast float %1470, %1442
  %1475 = fmul fast float %1474, %1453
  %1476 = fmul fast float %1471, %1442
  %1477 = fmul fast float %1476, %1453
  %1478 = fadd fast float %1473, %1037
  %1479 = fadd fast float %1475, %1038
  %1480 = fadd fast float %1477, %1039
  %1481 = fmul fast float %985, %985
  %1482 = fmul fast float %1481, %1481
  %1483 = fadd fast float %1438, 1.000000e+00
  %1484 = fsub fast float %1483, %1453
  %1485 = call float @dx.op.unary.f32(i32 7, float %1484)  ; Saturate(value)
  %1486 = call float @dx.op.dot3.f32(i32 55, float %490, float %491, float %492, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1487 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  %1488 = fsub fast float 1.000000e+00, %1482
  %1489 = call float @dx.op.binary.f32(i32 36, float %1485, float %1488)  ; FMin(a,b)
  %1490 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  %1491 = call float @dx.op.binary.f32(i32 35, float %1489, float %1490)  ; FMax(a,b)
  %1492 = fadd fast float %1487, 0xBFE4CCCCC0000000
  %1493 = fmul fast float %1492, 0x4006DB6DA0000000
  %1494 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  %1495 = fmul fast float %1494, 2.000000e+00
  %1496 = fsub fast float 3.000000e+00, %1495
  %1497 = bitcast float %1022 to i32
  %1498 = ashr i32 %1497, 1
  %1499 = add nsw i32 %1498, 532487669
  %1500 = bitcast i32 %1499 to float
  %1501 = fsub fast float 1.000000e+00, %1500
  %1502 = bitcast float %1501 to i32
  %1503 = sub nsw i32 2129859010, %1502
  %1504 = bitcast i32 %1503 to float
  %1505 = fmul fast float %1504, 2.000000e+00
  %1506 = bitcast float %1023 to i32
  %1507 = ashr i32 %1506, 1
  %1508 = add nsw i32 %1507, 532487669
  %1509 = bitcast i32 %1508 to float
  %1510 = fsub fast float 1.000000e+00, %1509
  %1511 = bitcast float %1510 to i32
  %1512 = sub nsw i32 2129859010, %1511
  %1513 = bitcast i32 %1512 to float
  %1514 = fmul fast float %1513, 2.000000e+00
  %1515 = bitcast float %1024 to i32
  %1516 = ashr i32 %1515, 1
  %1517 = add nsw i32 %1516, 532487669
  %1518 = bitcast i32 %1517 to float
  %1519 = fsub fast float 1.000000e+00, %1518
  %1520 = bitcast float %1519 to i32
  %1521 = sub nsw i32 2129859010, %1520
  %1522 = bitcast i32 %1521 to float
  %1523 = fmul fast float %1522, 2.000000e+00
  %1524 = fsub fast float 0x4002A9FBE0000000, %1505
  %1525 = fadd fast float %1505, 0x3FD54FDF00000000
  %1526 = bitcast float %1525 to i32
  %1527 = sub nsw i32 2129859010, %1526
  %1528 = bitcast i32 %1527 to float
  %1529 = fmul fast float %1528, %1524
  %1530 = fmul fast float %1529, %1529
  %1531 = fsub fast float 0x4002A9FBE0000000, %1514
  %1532 = fadd fast float %1514, 0x3FD54FDF00000000
  %1533 = bitcast float %1532 to i32
  %1534 = sub nsw i32 2129859010, %1533
  %1535 = bitcast i32 %1534 to float
  %1536 = fmul fast float %1535, %1531
  %1537 = fmul fast float %1536, %1536
  %1538 = fsub fast float 0x4002A9FBE0000000, %1523
  %1539 = fadd fast float %1523, 0x3FD54FDF00000000
  %1540 = bitcast float %1539 to i32
  %1541 = sub nsw i32 2129859010, %1540
  %1542 = bitcast i32 %1541 to float
  %1543 = fmul fast float %1542, %1538
  %1544 = fmul fast float %1543, %1543
  %1545 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1530)  ; FMax(a,b)
  %1546 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1537)  ; FMax(a,b)
  %1547 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1544)  ; FMax(a,b)
  %1548 = fsub fast float 1.000000e+00, %1433
  %1549 = fadd fast float %1548, %1449
  %1550 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  %1551 = fsub fast float 1.000000e+00, %1413
  %1552 = fmul fast float %1491, %1551
  %1553 = fmul fast float %1494, %1494
  %1554 = fmul fast float %1553, %1552
  %1555 = fmul fast float %1554, %1496
  %1556 = fmul fast float %1551, 0xBFE99999A0000000
  %1557 = fmul fast float %1556, %1442
  %1558 = fmul fast float %1557, %1453
  %1559 = fadd fast float %1558, 1.000000e+00
  %1560 = fadd fast float %1025, -1.000000e+00
  %1561 = fmul fast float %1559, %1560
  %1562 = fadd fast float %1561, 1.000000e+00
  %1563 = fsub fast float %1545, %1022
  %1564 = fsub fast float %1546, %1023
  %1565 = fsub fast float %1547, %1024
  %1566 = fmul fast float %1555, %1563
  %1567 = fmul fast float %1555, %1564
  %1568 = fmul fast float %1555, %1565
  %1569 = fadd fast float %1566, %1022
  %1570 = fadd fast float %1567, %1023
  %1571 = fadd fast float %1568, %1024
  %1572 = fsub fast float %490, %1001
  %1573 = fsub fast float %491, %1002
  %1574 = fsub fast float %492, %1003
  %1575 = fmul fast float %1555, %1572
  %1576 = fmul fast float %1555, %1573
  %1577 = fmul fast float %1555, %1574
  %1578 = fadd fast float %1575, %1001
  %1579 = fadd fast float %1576, %1002
  %1580 = fadd fast float %1577, %1003
  %1581 = fmul fast float %1555, %1550
  %1582 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  %1583 = fsub fast float 1.000000e+00, %1582
  %1584 = fmul fast float %1581, %1583
  %1585 = fadd fast float %1584, %1582
  %1586 = fsub fast float 1.000000e+00, %985
  %1587 = fmul fast float %1555, %1586
  %1588 = fadd fast float %1587, %985
  %1589 = call float @dx.op.dot3.f32(i32 55, float %1578, float %1579, float %1580, float %1578, float %1579, float %1580)  ; Dot3(ax,ay,az,bx,by,bz)
  %1590 = call float @dx.op.unary.f32(i32 25, float %1589)  ; Rsqrt(value)
  %1591 = fmul fast float %1578, %1590
  %1592 = fmul fast float %1579, %1590
  %1593 = fmul fast float %1580, %1590
  br label %1594

; <label>:1594                                    ; preds = %1426, %1419
  %1595 = phi float [ %1425, %1419 ], [ %1432, %1426 ]
  %1596 = phi float [ %1424, %1419 ], [ %1430, %1426 ]
  %1597 = phi float [ %1423, %1419 ], [ %1428, %1426 ]
  %1598 = phi float [ %1422, %1419 ], [ %1431, %1426 ]
  %1599 = phi float [ %1421, %1419 ], [ %1429, %1426 ]
  %1600 = phi float [ %1420, %1419 ], [ %1427, %1426 ]
  %1601 = phi float [ %1037, %1419 ], [ %1478, %1426 ]
  %1602 = phi float [ %1038, %1419 ], [ %1479, %1426 ]
  %1603 = phi float [ %1039, %1419 ], [ %1480, %1426 ]
  %1604 = phi float [ %1022, %1419 ], [ %1569, %1426 ]
  %1605 = phi float [ %1023, %1419 ], [ %1570, %1426 ]
  %1606 = phi float [ %1024, %1419 ], [ %1571, %1426 ]
  %1607 = phi float [ %1001, %1419 ], [ %1591, %1426 ]
  %1608 = phi float [ %1002, %1419 ], [ %1592, %1426 ]
  %1609 = phi float [ %1003, %1419 ], [ %1593, %1426 ]
  %1610 = phi float [ %1025, %1419 ], [ %1585, %1426 ]
  %1611 = phi float [ %985, %1419 ], [ %1588, %1426 ]
  %1612 = select i1 %402, float 0.000000e+00, float %1606
  %1613 = call float @dx.op.dot3.f32(i32 55, float %1607, float %1608, float %1609, float %1597, float %1596, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %1614 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  %1615 = call float @dx.op.dot3.f32(i32 55, float %1600, float %1599, float %1598, float %1607, float %1608, float %1609)  ; Dot3(ax,ay,az,bx,by,bz)
  %1616 = fmul fast float %1615, 2.000000e+00
  %1617 = fmul fast float %1616, %1607
  %1618 = fmul fast float %1616, %1608
  %1619 = fmul fast float %1616, %1609
  %1620 = fsub fast float %1600, %1617
  %1621 = fsub fast float %1599, %1618
  %1622 = fsub fast float %1598, %1619
  %1623 = call float @dx.op.binary.f32(i32 36, float %1611, float 1.000000e+00)  ; FMin(a,b)
  %1624 = fsub fast float 1.000000e+00, %1611
  %1625 = bitcast float %1624 to i32
  %1626 = sub nsw i32 2129859010, %1625
  %1627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1627, 0
  %1629 = extractvalue %dx.types.CBufRet.f32 %1627, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1627, 2
  %1631 = fadd fast float %1628, %92
  %1632 = fadd fast float %1629, %93
  %1633 = fadd fast float %1630, %94
  %1634 = fmul fast float %1607, 3.200000e+01
  %1635 = fmul fast float %1608, 3.200000e+01
  %1636 = fadd fast float %1631, %1634
  %1637 = fadd fast float %1632, %1635
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1641 = fsub fast float %1636, %1639
  %1642 = fsub fast float %1637, %1640
  %1643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.f32 %1643, 0
  %1645 = extractvalue %dx.types.CBufRet.f32 %1643, 1
  %1646 = fmul fast float %1641, %1644
  %1647 = fmul fast float %1642, %1645
  %1648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1649 = extractvalue %dx.types.CBufRet.f32 %1648, 0
  %1650 = fmul fast float %1646, %1649
  %1651 = extractvalue %dx.types.CBufRet.f32 %1648, 1
  %1652 = fadd fast float %1650, %1651
  %1653 = extractvalue %dx.types.CBufRet.f32 %1648, 2
  %1654 = fmul fast float %1653, %1647
  %1655 = extractvalue %dx.types.CBufRet.f32 %1648, 3
  %1656 = fadd fast float %1654, %1655
  %1657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %1652, float %1656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1658 = extractvalue %dx.types.ResRet.f32 %1657, 0
  %1659 = extractvalue %dx.types.ResRet.f32 %1657, 1
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 1
  %1662 = extractvalue %dx.types.CBufRet.f32 %1660, 0
  %1663 = fsub fast float %1661, %1662
  %1664 = fmul fast float %1663, %1658
  %1665 = fadd fast float %1664, %1662
  %1666 = extractvalue %dx.types.CBufRet.f32 %1660, 3
  %1667 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1668 = fsub fast float %1666, %1667
  %1669 = fmul fast float %1668, %1659
  %1670 = fadd fast float %1669, %1667
  %1671 = fsub fast float %1633, %1665
  %1672 = fsub fast float %1670, %1665
  %1673 = fdiv fast float %1671, %1672
  %1674 = call float @dx.op.unary.f32(i32 7, float %1673)  ; Saturate(value)
  %1675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.f32 %1675, 0
  %1677 = fmul fast float %1676, %1674
  %1678 = extractvalue %dx.types.CBufRet.f32 %1675, 1
  %1679 = fadd fast float %1677, %1678
  %1680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %38, float %1652, float %1656, float %1679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1681 = extractvalue %dx.types.ResRet.f32 %1680, 0
  %1682 = extractvalue %dx.types.ResRet.f32 %1680, 1
  %1683 = extractvalue %dx.types.ResRet.f32 %1680, 2
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 0
  %1686 = extractvalue %dx.types.CBufRet.f32 %1684, 1
  %1687 = extractvalue %dx.types.CBufRet.f32 %1684, 2
  %1688 = fmul fast float %1685, %1681
  %1689 = fmul fast float %1686, %1682
  %1690 = fmul fast float %1687, %1683
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 0
  %1693 = extractvalue %dx.types.CBufRet.f32 %1691, 1
  %1694 = extractvalue %dx.types.CBufRet.f32 %1691, 2
  %1695 = fadd fast float %1688, %1692
  %1696 = fadd fast float %1689, %1693
  %1697 = fadd fast float %1690, %1694
  %1698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.f32 %1698, 0
  %1700 = fmul fast float %1699, %1646
  %1701 = extractvalue %dx.types.CBufRet.f32 %1698, 1
  %1702 = fadd fast float %1700, %1701
  %1703 = extractvalue %dx.types.CBufRet.f32 %1698, 2
  %1704 = fmul fast float %1703, %1647
  %1705 = extractvalue %dx.types.CBufRet.f32 %1698, 3
  %1706 = fadd fast float %1704, %1705
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.CBufRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.CBufRet.f32 %1707, 2
  %1711 = extractvalue %dx.types.CBufRet.f32 %1707, 3
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.CBufRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.CBufRet.f32 %1712, 2
  %1716 = extractvalue %dx.types.CBufRet.f32 %1712, 3
  %1717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1702, float %1706, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.ResRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.ResRet.f32 %1717, 2
  %1721 = extractvalue %dx.types.ResRet.f32 %1717, 3
  %1722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1702, float %1706, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.ResRet.f32 %1722, 2
  %1726 = extractvalue %dx.types.ResRet.f32 %1722, 3
  %1727 = fmul fast float %1718, %1695
  %1728 = fmul fast float %1723, %1695
  %1729 = fmul fast float %1725, %1695
  %1730 = fmul fast float %1721, %1695
  %1731 = fadd fast float %1727, %1708
  %1732 = fadd fast float %1728, %1709
  %1733 = fadd fast float %1729, %1710
  %1734 = fadd fast float %1730, %1711
  %1735 = fmul fast float %1719, %1695
  %1736 = fmul fast float %1724, %1695
  %1737 = fadd fast float %1735, %1713
  %1738 = fadd fast float %1736, %1714
  %1739 = fmul fast float %1720, %1695
  %1740 = fmul fast float %1726, %1695
  %1741 = fadd fast float %1739, %1715
  %1742 = fadd fast float %1740, %1716
  %1743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1702, float %1706, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1744 = extractvalue %dx.types.ResRet.f32 %1743, 0
  %1745 = extractvalue %dx.types.ResRet.f32 %1743, 1
  %1746 = extractvalue %dx.types.ResRet.f32 %1743, 2
  %1747 = extractvalue %dx.types.ResRet.f32 %1743, 3
  %1748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1702, float %1706, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.ResRet.f32 %1748, 1
  %1751 = extractvalue %dx.types.ResRet.f32 %1748, 2
  %1752 = extractvalue %dx.types.ResRet.f32 %1748, 3
  %1753 = fmul fast float %1744, %1696
  %1754 = fmul fast float %1749, %1696
  %1755 = fmul fast float %1751, %1696
  %1756 = fmul fast float %1747, %1696
  %1757 = fadd fast float %1731, %1753
  %1758 = fadd fast float %1732, %1754
  %1759 = fadd fast float %1733, %1755
  %1760 = fadd fast float %1734, %1756
  %1761 = fmul fast float %1745, %1696
  %1762 = fmul fast float %1750, %1696
  %1763 = fadd fast float %1737, %1761
  %1764 = fadd fast float %1738, %1762
  %1765 = fmul fast float %1746, %1696
  %1766 = fmul fast float %1752, %1696
  %1767 = fadd fast float %1741, %1765
  %1768 = fadd fast float %1742, %1766
  %1769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1702, float %1706, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1770 = extractvalue %dx.types.ResRet.f32 %1769, 0
  %1771 = extractvalue %dx.types.ResRet.f32 %1769, 1
  %1772 = extractvalue %dx.types.ResRet.f32 %1769, 2
  %1773 = extractvalue %dx.types.ResRet.f32 %1769, 3
  %1774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %1702, float %1706, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1775 = extractvalue %dx.types.ResRet.f32 %1774, 0
  %1776 = extractvalue %dx.types.ResRet.f32 %1774, 1
  %1777 = extractvalue %dx.types.ResRet.f32 %1774, 2
  %1778 = extractvalue %dx.types.ResRet.f32 %1774, 3
  %1779 = fmul fast float %1770, %1697
  %1780 = fmul fast float %1775, %1697
  %1781 = fmul fast float %1777, %1697
  %1782 = fmul fast float %1773, %1697
  %1783 = fadd fast float %1757, %1779
  %1784 = fadd fast float %1758, %1780
  %1785 = fadd fast float %1759, %1781
  %1786 = fadd fast float %1760, %1782
  %1787 = fmul fast float %1771, %1697
  %1788 = fmul fast float %1776, %1697
  %1789 = fadd fast float %1763, %1787
  %1790 = fadd fast float %1764, %1788
  %1791 = fmul fast float %1772, %1697
  %1792 = fmul fast float %1778, %1697
  %1793 = fadd fast float %1767, %1791
  %1794 = fadd fast float %1768, %1792
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 0
  %1797 = fsub fast float %1631, %1796
  %1798 = fsub fast float %1639, %1631
  %1799 = call float @dx.op.binary.f32(i32 35, float %1798, float %1797)  ; FMax(a,b)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1795, 1
  %1801 = fsub fast float %1632, %1800
  %1802 = fsub fast float %1640, %1632
  %1803 = call float @dx.op.binary.f32(i32 35, float %1802, float %1801)  ; FMax(a,b)
  %1804 = call float @dx.op.binary.f32(i32 35, float %1799, float %1803)  ; FMax(a,b)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1643, 3
  %1806 = fmul fast float %1805, %1804
  %1807 = call float @dx.op.unary.f32(i32 7, float %1806)  ; Saturate(value)
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 0
  %1810 = extractvalue %dx.types.CBufRet.f32 %1808, 1
  %1811 = extractvalue %dx.types.CBufRet.f32 %1808, 2
  %1812 = extractvalue %dx.types.CBufRet.f32 %1808, 3
  %1813 = fsub fast float %1809, %1783
  %1814 = fsub fast float %1810, %1784
  %1815 = fsub fast float %1811, %1785
  %1816 = fsub fast float %1812, %1786
  %1817 = fmul fast float %1813, %1807
  %1818 = fmul fast float %1814, %1807
  %1819 = fmul fast float %1815, %1807
  %1820 = fmul fast float %1816, %1807
  %1821 = fadd fast float %1817, %1783
  %1822 = fadd fast float %1818, %1784
  %1823 = fadd fast float %1819, %1785
  %1824 = fadd fast float %1820, %1786
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 0
  %1827 = extractvalue %dx.types.CBufRet.f32 %1825, 1
  %1828 = fsub fast float %1826, %1789
  %1829 = fsub fast float %1827, %1790
  %1830 = fmul fast float %1828, %1807
  %1831 = fmul fast float %1829, %1807
  %1832 = fadd fast float %1830, %1789
  %1833 = fadd fast float %1831, %1790
  %1834 = extractvalue %dx.types.CBufRet.f32 %1825, 2
  %1835 = extractvalue %dx.types.CBufRet.f32 %1825, 3
  %1836 = fsub fast float %1834, %1793
  %1837 = fsub fast float %1835, %1794
  %1838 = fmul fast float %1836, %1807
  %1839 = fmul fast float %1837, %1807
  %1840 = fadd fast float %1838, %1793
  %1841 = fadd fast float %1839, %1794
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 0
  %1844 = fmul fast float %1843, %1821
  %1845 = fmul fast float %1843, %1822
  %1846 = fmul fast float %1843, %1823
  %1847 = fmul fast float %1843, %1824
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 0
  %1850 = fmul fast float %1849, %1832
  %1851 = fmul fast float %1849, %1833
  %1852 = fadd fast float %1850, %1844
  %1853 = fadd fast float %1851, %1846
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 0
  %1856 = fmul fast float %1855, %1840
  %1857 = fmul fast float %1855, %1841
  %1858 = fadd fast float %1852, %1856
  %1859 = fadd fast float %1853, %1857
  %1860 = extractvalue %dx.types.CBufRet.f32 %1842, 1
  %1861 = fmul fast float %1860, %1821
  %1862 = fmul fast float %1860, %1822
  %1863 = fmul fast float %1860, %1823
  %1864 = fmul fast float %1860, %1824
  %1865 = extractvalue %dx.types.CBufRet.f32 %1848, 1
  %1866 = fmul fast float %1865, %1832
  %1867 = fmul fast float %1865, %1833
  %1868 = fadd fast float %1866, %1861
  %1869 = fadd fast float %1867, %1863
  %1870 = extractvalue %dx.types.CBufRet.f32 %1854, 1
  %1871 = fmul fast float %1870, %1840
  %1872 = fmul fast float %1870, %1841
  %1873 = fadd fast float %1868, %1871
  %1874 = fadd fast float %1869, %1872
  %1875 = extractvalue %dx.types.CBufRet.f32 %1842, 2
  %1876 = fmul fast float %1875, %1821
  %1877 = fmul fast float %1875, %1822
  %1878 = fmul fast float %1875, %1823
  %1879 = fmul fast float %1875, %1824
  %1880 = extractvalue %dx.types.CBufRet.f32 %1848, 2
  %1881 = fmul fast float %1880, %1832
  %1882 = fmul fast float %1880, %1833
  %1883 = fadd fast float %1881, %1876
  %1884 = fadd fast float %1882, %1878
  %1885 = extractvalue %dx.types.CBufRet.f32 %1854, 2
  %1886 = fmul fast float %1885, %1840
  %1887 = fmul fast float %1885, %1841
  %1888 = fadd fast float %1883, %1886
  %1889 = fadd fast float %1884, %1887
  %1890 = fmul fast float %1877, %1877
  %1891 = fmul fast float %1889, %1889
  %1892 = fmul fast float %1879, %1879
  %1893 = fadd fast float %1892, %1890
  %1894 = fadd fast float %1893, %1891
  %1895 = call float @dx.op.unary.f32(i32 24, float %1894)  ; Sqrt(value)
  %1896 = fcmp fast ugt float %1895, 0.000000e+00
  br i1 %1896, label %1897, label %1912

; <label>:1897                                    ; preds = %1594
  %1898 = fsub fast float -0.000000e+00, %1879
  %1899 = fdiv fast float %1898, %1895
  %1900 = fsub fast float -0.000000e+00, %1877
  %1901 = fdiv fast float %1900, %1895
  %1902 = fdiv fast float %1889, %1895
  %1903 = fmul fast float %1888, 0x3FE279A760000000
  %1904 = fmul fast float %1901, %1877
  %1905 = fmul fast float %1902, %1889
  %1906 = fmul fast float %1899, %1879
  %1907 = fadd fast float %1904, %1906
  %1908 = fsub fast float %1907, %1905
  %1909 = call float @dx.op.unary.f32(i32 6, float %1908)  ; FAbs(value)
  %1910 = fadd fast float %1909, 0x3DDB7CDFE0000000
  %1911 = fdiv fast float %1903, %1910
  br label %1912

; <label>:1912                                    ; preds = %1897, %1594
  %1913 = phi float [ %1911, %1897 ], [ 1.000000e+00, %1594 ]
  %1914 = fmul fast float %1862, %1862
  %1915 = fmul fast float %1874, %1874
  %1916 = fmul fast float %1864, %1864
  %1917 = fadd fast float %1916, %1914
  %1918 = fadd fast float %1917, %1915
  %1919 = call float @dx.op.unary.f32(i32 24, float %1918)  ; Sqrt(value)
  %1920 = fcmp fast ugt float %1919, 0.000000e+00
  br i1 %1920, label %1921, label %1936

; <label>:1921                                    ; preds = %1912
  %1922 = fsub fast float -0.000000e+00, %1864
  %1923 = fdiv fast float %1922, %1919
  %1924 = fsub fast float -0.000000e+00, %1862
  %1925 = fdiv fast float %1924, %1919
  %1926 = fdiv fast float %1874, %1919
  %1927 = fmul fast float %1873, 0x3FE279A760000000
  %1928 = fmul fast float %1925, %1862
  %1929 = fmul fast float %1926, %1874
  %1930 = fmul fast float %1923, %1864
  %1931 = fadd fast float %1928, %1930
  %1932 = fsub fast float %1931, %1929
  %1933 = call float @dx.op.unary.f32(i32 6, float %1932)  ; FAbs(value)
  %1934 = fadd fast float %1933, 0x3DDB7CDFE0000000
  %1935 = fdiv fast float %1927, %1934
  br label %1936

; <label>:1936                                    ; preds = %1921, %1912
  %1937 = phi float [ %1935, %1921 ], [ 1.000000e+00, %1912 ]
  %1938 = call float @dx.op.binary.f32(i32 36, float %1937, float %1913)  ; FMin(a,b)
  %1939 = fmul fast float %1845, %1845
  %1940 = fmul fast float %1859, %1859
  %1941 = fmul fast float %1847, %1847
  %1942 = fadd fast float %1941, %1939
  %1943 = fadd fast float %1942, %1940
  %1944 = call float @dx.op.unary.f32(i32 24, float %1943)  ; Sqrt(value)
  %1945 = fcmp fast ugt float %1944, 0.000000e+00
  br i1 %1945, label %1946, label %1961

; <label>:1946                                    ; preds = %1936
  %1947 = fsub fast float -0.000000e+00, %1847
  %1948 = fdiv fast float %1947, %1944
  %1949 = fsub fast float -0.000000e+00, %1845
  %1950 = fdiv fast float %1949, %1944
  %1951 = fdiv fast float %1859, %1944
  %1952 = fmul fast float %1858, 0x3FE279A760000000
  %1953 = fmul fast float %1950, %1845
  %1954 = fmul fast float %1951, %1859
  %1955 = fmul fast float %1948, %1847
  %1956 = fadd fast float %1953, %1955
  %1957 = fsub fast float %1956, %1954
  %1958 = call float @dx.op.unary.f32(i32 6, float %1957)  ; FAbs(value)
  %1959 = fadd fast float %1958, 0x3DDB7CDFE0000000
  %1960 = fdiv fast float %1952, %1959
  br label %1961

; <label>:1961                                    ; preds = %1946, %1936
  %1962 = phi float [ %1960, %1946 ], [ 1.000000e+00, %1936 ]
  %1963 = call float @dx.op.binary.f32(i32 36, float %1962, float %1938)  ; FMin(a,b)
  %1964 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  %1965 = fcmp fast olt float %1964, 1.000000e+00
  br i1 %1965, label %1966, label %1976

; <label>:1966                                    ; preds = %1961
  %1967 = fmul fast float %1964, %1845
  %1968 = fmul fast float %1964, %1859
  %1969 = fmul fast float %1964, %1847
  %1970 = fmul fast float %1964, %1862
  %1971 = fmul fast float %1964, %1874
  %1972 = fmul fast float %1964, %1864
  %1973 = fmul fast float %1964, %1877
  %1974 = fmul fast float %1964, %1889
  %1975 = fmul fast float %1964, %1879
  br label %1976

; <label>:1976                                    ; preds = %1966, %1961
  %1977 = phi float [ %1973, %1966 ], [ %1877, %1961 ]
  %1978 = phi float [ %1974, %1966 ], [ %1889, %1961 ]
  %1979 = phi float [ %1975, %1966 ], [ %1879, %1961 ]
  %1980 = phi float [ %1970, %1966 ], [ %1862, %1961 ]
  %1981 = phi float [ %1971, %1966 ], [ %1874, %1961 ]
  %1982 = phi float [ %1972, %1966 ], [ %1864, %1961 ]
  %1983 = phi float [ %1967, %1966 ], [ %1845, %1961 ]
  %1984 = phi float [ %1968, %1966 ], [ %1859, %1961 ]
  %1985 = phi float [ %1969, %1966 ], [ %1847, %1961 ]
  %1986 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1858)  ; FMax(a,b)
  %1987 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1873)  ; FMax(a,b)
  %1988 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1888)  ; FMax(a,b)
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 0
  %1991 = fcmp fast ogt float %1990, 0.000000e+00
  %1992 = fcmp fast oge float %1646, 0.000000e+00
  %1993 = and i1 %1992, %1991
  %1994 = fcmp fast ole float %1646, 1.000000e+00
  %1995 = and i1 %1994, %1993
  %1996 = fcmp fast oge float %1647, 0.000000e+00
  %1997 = and i1 %1996, %1995
  %1998 = fcmp fast ole float %1647, 1.000000e+00
  %1999 = and i1 %1998, %1997
  br i1 %1999, label %2000, label %2140, !dx.controlflow.hints !70

; <label>:2000                                    ; preds = %1976
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 2
  %2003 = extractvalue %dx.types.CBufRet.f32 %2001, 3
  %2004 = fmul fast float %2002, %1646
  %2005 = fmul fast float %2003, %1647
  %2006 = call float @dx.op.unary.f32(i32 27, float %2004)  ; Round_ni(value)
  %2007 = call float @dx.op.unary.f32(i32 27, float %2005)  ; Round_ni(value)
  %2008 = fptosi float %2006 to i32
  %2009 = fptosi float %2007 to i32
  %2010 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %2008, i32 %2009, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = and i32 %2011, 65535
  %2013 = lshr i32 %2011, 16
  %2014 = icmp eq i32 %2012, 65535
  br i1 %2014, label %2051, label %2015

; <label>:2015                                    ; preds = %2000
  %2016 = extractvalue %dx.types.CBufRet.f32 %1989, 1
  %2017 = extractvalue %dx.types.CBufRet.f32 %2001, 0
  %2018 = extractvalue %dx.types.CBufRet.f32 %2001, 1
  %2019 = fmul fast float %2017, %1646
  %2020 = fmul fast float %2018, %1647
  %2021 = fmul fast float %2019, 1.250000e-01
  %2022 = fmul fast float %2020, 1.250000e-01
  %2023 = call float @dx.op.unary.f32(i32 27, float %2021)  ; Round_ni(value)
  %2024 = call float @dx.op.unary.f32(i32 27, float %2022)  ; Round_ni(value)
  %2025 = fmul fast float %2023, 8.000000e+00
  %2026 = fmul fast float %2024, 8.000000e+00
  %2027 = and i32 %2011, 255
  %2028 = lshr i32 %2011, 8
  %2029 = and i32 %2028, 255
  %2030 = mul nuw nsw i32 %2027, 9
  %2031 = uitofp i32 %2030 to float
  %2032 = mul nuw nsw i32 %2029, 9
  %2033 = uitofp i32 %2032 to float
  %2034 = fadd fast float %2031, 5.000000e-01
  %2035 = fadd fast float %2034, %2019
  %2036 = fsub fast float %2035, %2025
  %2037 = fadd fast float %2033, 5.000000e-01
  %2038 = fadd fast float %2037, %2020
  %2039 = fsub fast float %2038, %2026
  %2040 = fdiv fast float %2036, %1990
  %2041 = fdiv fast float %2039, %2016
  %2042 = fmul fast float %1674, 4.375000e-01
  %2043 = fadd fast float %2042, 3.125000e-02
  %2044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %2040, float %2041, float %2043, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2045 = extractvalue %dx.types.ResRet.f32 %2044, 0
  %2046 = extractvalue %dx.types.ResRet.f32 %2044, 1
  %2047 = extractvalue %dx.types.ResRet.f32 %2044, 2
  %2048 = fadd fast float %2045, %1986
  %2049 = fadd fast float %2046, %1987
  %2050 = fadd fast float %2047, %1988
  br label %2051

; <label>:2051                                    ; preds = %2015, %2000
  %2052 = phi float [ %2050, %2015 ], [ %1988, %2000 ]
  %2053 = phi float [ %2049, %2015 ], [ %1987, %2000 ]
  %2054 = phi float [ %2048, %2015 ], [ %1986, %2000 ]
  %2055 = icmp eq i32 %2013, 65535
  br i1 %2055, label %2140, label %2056

; <label>:2056                                    ; preds = %2051
  %2057 = extractvalue %dx.types.CBufRet.f32 %1989, 1
  %2058 = extractvalue %dx.types.CBufRet.f32 %2001, 0
  %2059 = extractvalue %dx.types.CBufRet.f32 %2001, 1
  %2060 = fmul fast float %2058, %1646
  %2061 = fmul fast float %2059, %1647
  %2062 = fmul fast float %2060, 1.250000e-01
  %2063 = fmul fast float %2061, 1.250000e-01
  %2064 = call float @dx.op.unary.f32(i32 27, float %2062)  ; Round_ni(value)
  %2065 = call float @dx.op.unary.f32(i32 27, float %2063)  ; Round_ni(value)
  %2066 = fmul fast float %2064, 8.000000e+00
  %2067 = fmul fast float %2065, 8.000000e+00
  %2068 = fsub fast float %2060, %2066
  %2069 = fsub fast float %2061, %2067
  %2070 = fadd fast float %2068, 5.000000e-01
  %2071 = fadd fast float %2069, 5.000000e-01
  %2072 = and i32 %2013, 255
  %2073 = lshr i32 %2011, 24
  %2074 = mul nuw nsw i32 %2072, 9
  %2075 = uitofp i32 %2074 to float
  %2076 = mul nuw nsw i32 %2073, 9
  %2077 = uitofp i32 %2076 to float
  %2078 = fadd fast float %2070, %2075
  %2079 = fadd fast float %2071, %2077
  %2080 = fdiv fast float %2078, %1990
  %2081 = fdiv fast float %2079, %2057
  %2082 = fmul fast float %1674, 4.375000e-01
  %2083 = fadd fast float %2082, 3.125000e-02
  %2084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %2080, float %2081, float %2083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.ResRet.f32 %2084, 1
  %2087 = extractvalue %dx.types.ResRet.f32 %2084, 2
  %2088 = fadd fast float %2082, 5.312500e-01
  %2089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %2080, float %2081, float %2088, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 0
  %2091 = extractvalue %dx.types.ResRet.f32 %2089, 1
  %2092 = extractvalue %dx.types.ResRet.f32 %2089, 2
  %2093 = fmul fast float %2090, 2.000000e+00
  %2094 = fmul fast float %2091, 2.000000e+00
  %2095 = fmul fast float %2092, 2.000000e+00
  %2096 = fadd fast float %2093, -1.000000e+00
  %2097 = fadd fast float %2094, -1.000000e+00
  %2098 = fadd fast float %2095, -1.000000e+00
  %2099 = fmul fast float %2096, %2096
  %2100 = fmul fast float %2097, %2097
  %2101 = fadd fast float %2099, %2100
  %2102 = fmul fast float %2098, %2098
  %2103 = fadd fast float %2101, %2102
  %2104 = call float @dx.op.unary.f32(i32 24, float %2103)  ; Sqrt(value)
  %2105 = fcmp fast ogt float %2104, 0.000000e+00
  br i1 %2105, label %2106, label %2110

; <label>:2106                                    ; preds = %2056
  %2107 = fdiv fast float %2096, %2104
  %2108 = fdiv fast float %2097, %2104
  %2109 = fdiv fast float %2098, %2104
  br label %2110

; <label>:2110                                    ; preds = %2106, %2056
  %2111 = phi float [ %2107, %2106 ], [ 0.000000e+00, %2056 ]
  %2112 = phi float [ %2108, %2106 ], [ 0.000000e+00, %2056 ]
  %2113 = phi float [ %2109, %2106 ], [ 0.000000e+00, %2056 ]
  %2114 = fmul fast float %92, %92
  %2115 = fmul fast float %93, %93
  %2116 = fadd fast float %2114, %2115
  %2117 = call float @dx.op.unary.f32(i32 24, float %2116)  ; Sqrt(value)
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.CBufRet.f32 %2118, 1
  %2121 = fsub fast float %2117, %2119
  %2122 = fdiv fast float %2121, %2120
  %2123 = call float @dx.op.unary.f32(i32 7, float %2122)  ; Saturate(value)
  %2124 = fmul fast float %2123, 2.000000e+00
  %2125 = fsub fast float 3.000000e+00, %2124
  %2126 = fmul fast float %2123, %2123
  %2127 = fmul fast float %2126, %2125
  %2128 = call float @dx.op.dot3.f32(i32 55, float %2111, float %2112, float %2113, float %1607, float %1608, float %1609)  ; Dot3(ax,ay,az,bx,by,bz)
  %2129 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2128)  ; FMax(a,b)
  %2130 = fmul fast float %2129, 0x400C5BF8A0000000
  %2131 = fmul fast float %2127, %2085
  %2132 = fmul fast float %2131, %2130
  %2133 = fadd fast float %2132, %2054
  %2134 = fmul fast float %2127, %2086
  %2135 = fmul fast float %2134, %2130
  %2136 = fadd fast float %2135, %2053
  %2137 = fmul fast float %2127, %2087
  %2138 = fmul fast float %2137, %2130
  %2139 = fadd fast float %2138, %2052
  br label %2140

; <label>:2140                                    ; preds = %2110, %2051, %1976
  %2141 = phi float [ %2139, %2110 ], [ %2052, %2051 ], [ %1988, %1976 ]
  %2142 = phi float [ %2136, %2110 ], [ %2053, %2051 ], [ %1987, %1976 ]
  %2143 = phi float [ %2133, %2110 ], [ %2054, %2051 ], [ %1986, %1976 ]
  %2144 = fcmp fast ogt float %1633, %1670
  %2145 = and i1 %1992, %2144
  %2146 = and i1 %1994, %2145
  %2147 = and i1 %1996, %2146
  %2148 = and i1 %1998, %2147
  br i1 %2148, label %2149, label %2206, !dx.controlflow.hints !71

; <label>:2149                                    ; preds = %2140
  %2150 = fmul fast float %1672, 0x3FC24924A0000000
  %2151 = fsub fast float %1633, %1670
  %2152 = fdiv fast float %2151, %2150
  %2153 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 0
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 0
  %2158 = extractvalue %dx.types.CBufRet.f32 %2156, 1
  %2159 = extractvalue %dx.types.CBufRet.f32 %2156, 2
  %2160 = fsub fast float %2155, %2143
  %2161 = fsub fast float %2157, %1983
  %2162 = fsub fast float %2158, %1984
  %2163 = fsub fast float %2159, %1985
  %2164 = fmul fast float %2160, %2153
  %2165 = fmul fast float %2161, %2153
  %2166 = fmul fast float %2162, %2153
  %2167 = fmul fast float %2163, %2153
  %2168 = fadd fast float %2164, %2143
  %2169 = fadd fast float %2165, %1983
  %2170 = fadd fast float %2166, %1984
  %2171 = fadd fast float %2167, %1985
  %2172 = extractvalue %dx.types.CBufRet.f32 %2154, 1
  %2173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2174 = extractvalue %dx.types.CBufRet.f32 %2173, 0
  %2175 = extractvalue %dx.types.CBufRet.f32 %2173, 1
  %2176 = extractvalue %dx.types.CBufRet.f32 %2173, 2
  %2177 = fsub fast float %2172, %2142
  %2178 = fsub fast float %2174, %1980
  %2179 = fsub fast float %2175, %1981
  %2180 = fsub fast float %2176, %1982
  %2181 = fmul fast float %2177, %2153
  %2182 = fmul fast float %2178, %2153
  %2183 = fmul fast float %2179, %2153
  %2184 = fmul fast float %2180, %2153
  %2185 = fadd fast float %2181, %2142
  %2186 = fadd fast float %2182, %1980
  %2187 = fadd fast float %2183, %1981
  %2188 = fadd fast float %2184, %1982
  %2189 = extractvalue %dx.types.CBufRet.f32 %2154, 2
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 0
  %2192 = extractvalue %dx.types.CBufRet.f32 %2190, 1
  %2193 = extractvalue %dx.types.CBufRet.f32 %2190, 2
  %2194 = fsub fast float %2189, %2141
  %2195 = fsub fast float %2191, %1977
  %2196 = fsub fast float %2192, %1978
  %2197 = fsub fast float %2193, %1979
  %2198 = fmul fast float %2194, %2153
  %2199 = fmul fast float %2195, %2153
  %2200 = fmul fast float %2196, %2153
  %2201 = fmul fast float %2197, %2153
  %2202 = fadd fast float %2198, %2141
  %2203 = fadd fast float %2199, %1977
  %2204 = fadd fast float %2200, %1978
  %2205 = fadd fast float %2201, %1979
  br label %2206

; <label>:2206                                    ; preds = %2149, %2140
  %2207 = phi float [ %2202, %2149 ], [ %2141, %2140 ]
  %2208 = phi float [ %2203, %2149 ], [ %1977, %2140 ]
  %2209 = phi float [ %2204, %2149 ], [ %1978, %2140 ]
  %2210 = phi float [ %2205, %2149 ], [ %1979, %2140 ]
  %2211 = phi float [ %2185, %2149 ], [ %2142, %2140 ]
  %2212 = phi float [ %2186, %2149 ], [ %1980, %2140 ]
  %2213 = phi float [ %2187, %2149 ], [ %1981, %2140 ]
  %2214 = phi float [ %2188, %2149 ], [ %1982, %2140 ]
  %2215 = phi float [ %2168, %2149 ], [ %2143, %2140 ]
  %2216 = phi float [ %2169, %2149 ], [ %1983, %2140 ]
  %2217 = phi float [ %2170, %2149 ], [ %1984, %2140 ]
  %2218 = phi float [ %2171, %2149 ], [ %1985, %2140 ]
  %2219 = extractvalue %dx.types.CBufRet.f32 %1795, 3
  %2220 = fmul fast float %2219, %2215
  %2221 = fmul fast float %2219, %2211
  %2222 = fmul fast float %2219, %2207
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 3
  %2225 = fmul fast float %2220, %2224
  %2226 = fmul fast float %2221, %2224
  %2227 = fmul fast float %2222, %2224
  %2228 = fmul fast float %2216, 1.500000e+00
  %2229 = fmul fast float %2228, %2219
  %2230 = fmul fast float %2229, %2224
  %2231 = fmul fast float %2217, 1.500000e+00
  %2232 = fmul fast float %2231, %2219
  %2233 = fmul fast float %2232, %2224
  %2234 = fmul fast float %2218, 1.500000e+00
  %2235 = fmul fast float %2234, %2219
  %2236 = fmul fast float %2235, %2224
  %2237 = fmul fast float %2212, 1.500000e+00
  %2238 = fmul fast float %2237, %2219
  %2239 = fmul fast float %2238, %2224
  %2240 = fmul fast float %2213, 1.500000e+00
  %2241 = fmul fast float %2240, %2219
  %2242 = fmul fast float %2241, %2224
  %2243 = fmul fast float %2214, 1.500000e+00
  %2244 = fmul fast float %2243, %2219
  %2245 = fmul fast float %2244, %2224
  %2246 = fmul fast float %2208, 1.500000e+00
  %2247 = fmul fast float %2246, %2219
  %2248 = fmul fast float %2247, %2224
  %2249 = fmul fast float %2209, 1.500000e+00
  %2250 = fmul fast float %2249, %2219
  %2251 = fmul fast float %2250, %2224
  %2252 = fmul fast float %2210, 1.500000e+00
  %2253 = fmul fast float %2252, %2219
  %2254 = fmul fast float %2253, %2224
  %2255 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2225)  ; FMax(a,b)
  %2256 = call float @dx.op.dot3.f32(i32 55, float %2230, float %2233, float %2236, float %2230, float %2233, float %2236)  ; Dot3(ax,ay,az,bx,by,bz)
  %2257 = fcmp fast oeq float %2256, 0.000000e+00
  %2258 = fcmp fast oeq float %2255, 0.000000e+00
  %2259 = or i1 %2258, %2257
  br i1 %2259, label %2289, label %2260

; <label>:2260                                    ; preds = %2206
  %2261 = fsub fast float -0.000000e+00, %2236
  %2262 = fsub fast float -0.000000e+00, %2230
  %2263 = call float @dx.op.unary.f32(i32 24, float %2256)  ; Sqrt(value)
  %2264 = fdiv fast float %2263, %2255
  %2265 = fcmp fast ogt float %2264, 0x3FFB6F8900000000
  %2266 = select i1 %2265, float 0x3FFB6F8900000000, float %2264
  %2267 = fmul fast float %2266, 0x3FE8A23460000000
  %2268 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2269 = call float @dx.op.binary.f32(i32 35, float %2266, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2270 = fmul fast float %2268, %2255
  %2271 = fmul fast float %2269, 0x3FF279A740000000
  %2272 = fadd fast float %2271, -1.000000e+00
  %2273 = call float @dx.op.dot3.f32(i32 55, float %2261, float %2262, float %2233, float %2261, float %2262, float %2233)  ; Dot3(ax,ay,az,bx,by,bz)
  %2274 = call float @dx.op.unary.f32(i32 25, float %2273)  ; Rsqrt(value)
  %2275 = fmul fast float %2274, %2261
  %2276 = fmul fast float %2274, %2262
  %2277 = fmul fast float %2274, %2233
  %2278 = fmul fast float %2272, %2272
  %2279 = fsub fast float 1.000000e+00, %2278
  %2280 = fmul fast float %2269, 0x40005F8BE0000000
  %2281 = fsub fast float 0x400C5BF8A0000000, %2280
  %2282 = fdiv fast float %2270, %2281
  %2283 = fmul fast float %2282, 0x3FEE31C3C0000000
  %2284 = fmul fast float %2283, %2279
  %2285 = fmul fast float %2269, 0x3FDACB7480000000
  %2286 = fadd fast float %2285, 0xBFD7347680000000
  %2287 = fmul fast float %2286, %2282
  %2288 = fmul fast float %2287, %2279
  br label %2289

; <label>:2289                                    ; preds = %2260, %2206
  %2290 = phi float [ %2275, %2260 ], [ 0.000000e+00, %2206 ]
  %2291 = phi float [ %2276, %2260 ], [ 0.000000e+00, %2206 ]
  %2292 = phi float [ %2277, %2260 ], [ 0.000000e+00, %2206 ]
  %2293 = phi float [ %2284, %2260 ], [ 0.000000e+00, %2206 ]
  %2294 = phi float [ %2288, %2260 ], [ 0.000000e+00, %2206 ]
  %2295 = call float @dx.op.dot3.f32(i32 55, float %2290, float %2291, float %2292, float %1607, float %1608, float %1609)  ; Dot3(ax,ay,az,bx,by,bz)
  %2296 = fmul fast float %2295, %2295
  %2297 = fmul fast float %2296, 0x3FEE471020000000
  %2298 = fadd fast float %2297, 0xBFD42F6020000000
  %2299 = fmul fast float %2255, 0x3FD20DD760000000
  %2300 = fmul fast float %2298, %2294
  %2301 = fmul fast float %2293, 0x3FDF454380000000
  %2302 = fmul fast float %2301, %2295
  %2303 = fadd fast float %2302, %2299
  %2304 = fadd fast float %2303, %2300
  %2305 = call float @dx.op.dot3.f32(i32 55, float %2290, float %2291, float %2292, float %1620, float %1621, float %1622)  ; Dot3(ax,ay,az,bx,by,bz)
  %2306 = fmul fast float %2305, 0x3FDF454380000000
  %2307 = fmul fast float %2305, %2305
  %2308 = fmul fast float %2307, 0x3FEE471020000000
  %2309 = fadd fast float %2308, 0xBFD42F6020000000
  %2310 = call float @dx.op.dot3.f32(i32 55, float %2255, float %2293, float %2294, float 0x3FD20DD760000000, float %2306, float %2309)  ; Dot3(ax,ay,az,bx,by,bz)
  %2311 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2226)  ; FMax(a,b)
  %2312 = call float @dx.op.dot3.f32(i32 55, float %2239, float %2242, float %2245, float %2239, float %2242, float %2245)  ; Dot3(ax,ay,az,bx,by,bz)
  %2313 = fcmp fast oeq float %2312, 0.000000e+00
  %2314 = fcmp fast oeq float %2311, 0.000000e+00
  %2315 = or i1 %2314, %2313
  br i1 %2315, label %2345, label %2316

; <label>:2316                                    ; preds = %2289
  %2317 = fsub fast float -0.000000e+00, %2245
  %2318 = fsub fast float -0.000000e+00, %2239
  %2319 = call float @dx.op.unary.f32(i32 24, float %2312)  ; Sqrt(value)
  %2320 = fdiv fast float %2319, %2311
  %2321 = fcmp fast ogt float %2320, 0x3FFB6F8900000000
  %2322 = select i1 %2321, float 0x3FFB6F8900000000, float %2320
  %2323 = fmul fast float %2322, 0x3FE8A23460000000
  %2324 = call float @dx.op.unary.f32(i32 7, float %2323)  ; Saturate(value)
  %2325 = call float @dx.op.binary.f32(i32 35, float %2322, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2326 = fmul fast float %2324, %2311
  %2327 = fmul fast float %2325, 0x3FF279A740000000
  %2328 = fadd fast float %2327, -1.000000e+00
  %2329 = call float @dx.op.dot3.f32(i32 55, float %2317, float %2318, float %2242, float %2317, float %2318, float %2242)  ; Dot3(ax,ay,az,bx,by,bz)
  %2330 = call float @dx.op.unary.f32(i32 25, float %2329)  ; Rsqrt(value)
  %2331 = fmul fast float %2330, %2317
  %2332 = fmul fast float %2330, %2318
  %2333 = fmul fast float %2330, %2242
  %2334 = fmul fast float %2328, %2328
  %2335 = fsub fast float 1.000000e+00, %2334
  %2336 = fmul fast float %2325, 0x40005F8BE0000000
  %2337 = fsub fast float 0x400C5BF8A0000000, %2336
  %2338 = fdiv fast float %2326, %2337
  %2339 = fmul fast float %2338, 0x3FEE31C3C0000000
  %2340 = fmul fast float %2339, %2335
  %2341 = fmul fast float %2325, 0x3FDACB7480000000
  %2342 = fadd fast float %2341, 0xBFD7347680000000
  %2343 = fmul fast float %2342, %2338
  %2344 = fmul fast float %2343, %2335
  br label %2345

; <label>:2345                                    ; preds = %2316, %2289
  %2346 = phi float [ %2331, %2316 ], [ 0.000000e+00, %2289 ]
  %2347 = phi float [ %2332, %2316 ], [ 0.000000e+00, %2289 ]
  %2348 = phi float [ %2333, %2316 ], [ 0.000000e+00, %2289 ]
  %2349 = phi float [ %2340, %2316 ], [ 0.000000e+00, %2289 ]
  %2350 = phi float [ %2344, %2316 ], [ 0.000000e+00, %2289 ]
  %2351 = call float @dx.op.dot3.f32(i32 55, float %2346, float %2347, float %2348, float %1607, float %1608, float %1609)  ; Dot3(ax,ay,az,bx,by,bz)
  %2352 = fmul fast float %2351, %2351
  %2353 = fmul fast float %2352, 0x3FEE471020000000
  %2354 = fadd fast float %2353, 0xBFD42F6020000000
  %2355 = fmul fast float %2311, 0x3FD20DD760000000
  %2356 = fmul fast float %2354, %2350
  %2357 = fmul fast float %2349, 0x3FDF454380000000
  %2358 = fmul fast float %2357, %2351
  %2359 = fadd fast float %2358, %2355
  %2360 = fadd fast float %2359, %2356
  %2361 = call float @dx.op.dot3.f32(i32 55, float %2346, float %2347, float %2348, float %1620, float %1621, float %1622)  ; Dot3(ax,ay,az,bx,by,bz)
  %2362 = fmul fast float %2361, 0x3FDF454380000000
  %2363 = fmul fast float %2361, %2361
  %2364 = fmul fast float %2363, 0x3FEE471020000000
  %2365 = fadd fast float %2364, 0xBFD42F6020000000
  %2366 = call float @dx.op.dot3.f32(i32 55, float %2311, float %2349, float %2350, float 0x3FD20DD760000000, float %2362, float %2365)  ; Dot3(ax,ay,az,bx,by,bz)
  %2367 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2227)  ; FMax(a,b)
  %2368 = call float @dx.op.dot3.f32(i32 55, float %2248, float %2251, float %2254, float %2248, float %2251, float %2254)  ; Dot3(ax,ay,az,bx,by,bz)
  %2369 = fcmp fast oeq float %2368, 0.000000e+00
  %2370 = fcmp fast oeq float %2367, 0.000000e+00
  %2371 = or i1 %2370, %2369
  br i1 %2371, label %2401, label %2372

; <label>:2372                                    ; preds = %2345
  %2373 = fsub fast float -0.000000e+00, %2254
  %2374 = fsub fast float -0.000000e+00, %2248
  %2375 = call float @dx.op.unary.f32(i32 24, float %2368)  ; Sqrt(value)
  %2376 = fdiv fast float %2375, %2367
  %2377 = fcmp fast ogt float %2376, 0x3FFB6F8900000000
  %2378 = select i1 %2377, float 0x3FFB6F8900000000, float %2376
  %2379 = fmul fast float %2378, 0x3FE8A23460000000
  %2380 = call float @dx.op.unary.f32(i32 7, float %2379)  ; Saturate(value)
  %2381 = call float @dx.op.binary.f32(i32 35, float %2378, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2382 = fmul fast float %2380, %2367
  %2383 = fmul fast float %2381, 0x3FF279A740000000
  %2384 = fadd fast float %2383, -1.000000e+00
  %2385 = call float @dx.op.dot3.f32(i32 55, float %2373, float %2374, float %2251, float %2373, float %2374, float %2251)  ; Dot3(ax,ay,az,bx,by,bz)
  %2386 = call float @dx.op.unary.f32(i32 25, float %2385)  ; Rsqrt(value)
  %2387 = fmul fast float %2386, %2373
  %2388 = fmul fast float %2386, %2374
  %2389 = fmul fast float %2386, %2251
  %2390 = fmul fast float %2384, %2384
  %2391 = fsub fast float 1.000000e+00, %2390
  %2392 = fmul fast float %2381, 0x40005F8BE0000000
  %2393 = fsub fast float 0x400C5BF8A0000000, %2392
  %2394 = fdiv fast float %2382, %2393
  %2395 = fmul fast float %2394, 0x3FEE31C3C0000000
  %2396 = fmul fast float %2395, %2391
  %2397 = fmul fast float %2381, 0x3FDACB7480000000
  %2398 = fadd fast float %2397, 0xBFD7347680000000
  %2399 = fmul fast float %2398, %2394
  %2400 = fmul fast float %2399, %2391
  br label %2401

; <label>:2401                                    ; preds = %2372, %2345
  %2402 = phi float [ %2387, %2372 ], [ 0.000000e+00, %2345 ]
  %2403 = phi float [ %2388, %2372 ], [ 0.000000e+00, %2345 ]
  %2404 = phi float [ %2389, %2372 ], [ 0.000000e+00, %2345 ]
  %2405 = phi float [ %2396, %2372 ], [ 0.000000e+00, %2345 ]
  %2406 = phi float [ %2400, %2372 ], [ 0.000000e+00, %2345 ]
  %2407 = call float @dx.op.dot3.f32(i32 55, float %2402, float %2403, float %2404, float %1607, float %1608, float %1609)  ; Dot3(ax,ay,az,bx,by,bz)
  %2408 = fmul fast float %2407, %2407
  %2409 = fmul fast float %2408, 0x3FEE471020000000
  %2410 = fadd fast float %2409, 0xBFD42F6020000000
  %2411 = fmul fast float %2367, 0x3FD20DD760000000
  %2412 = fmul fast float %2410, %2406
  %2413 = fmul fast float %2405, 0x3FDF454380000000
  %2414 = fmul fast float %2413, %2407
  %2415 = fadd fast float %2414, %2411
  %2416 = fadd fast float %2415, %2412
  %2417 = call float @dx.op.dot3.f32(i32 55, float %2402, float %2403, float %2404, float %1620, float %1621, float %1622)  ; Dot3(ax,ay,az,bx,by,bz)
  %2418 = fmul fast float %2417, 0x3FDF454380000000
  %2419 = fmul fast float %2417, %2417
  %2420 = fmul fast float %2419, 0x3FEE471020000000
  %2421 = fadd fast float %2420, 0xBFD42F6020000000
  %2422 = call float @dx.op.dot3.f32(i32 55, float %2367, float %2405, float %2406, float 0x3FD20DD760000000, float %2418, float %2421)  ; Dot3(ax,ay,az,bx,by,bz)
  %2423 = call float @dx.op.binary.f32(i32 35, float %2304, float 0.000000e+00)  ; FMax(a,b)
  %2424 = call float @dx.op.binary.f32(i32 35, float %2360, float 0.000000e+00)  ; FMax(a,b)
  %2425 = call float @dx.op.binary.f32(i32 35, float %2416, float 0.000000e+00)  ; FMax(a,b)
  %2426 = call float @dx.op.binary.f32(i32 35, float %2310, float 0.000000e+00)  ; FMax(a,b)
  %2427 = call float @dx.op.binary.f32(i32 35, float %2366, float 0.000000e+00)  ; FMax(a,b)
  %2428 = call float @dx.op.binary.f32(i32 35, float %2422, float 0.000000e+00)  ; FMax(a,b)
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 0
  %2431 = call float @dx.op.binary.f32(i32 36, float %1601, float %2430)  ; FMin(a,b)
  %2432 = fsub fast float 1.000000e+00, %1623
  %2433 = fmul fast float %2431, %2432
  %2434 = fsub fast float 1.000000e+00, %2433
  %2435 = bitcast float %2434 to i32
  %2436 = sub nsw i32 2129859010, %2435
  %2437 = bitcast i32 %2436 to float
  %2438 = call float @dx.op.binary.f32(i32 36, float %1602, float %2430)  ; FMin(a,b)
  %2439 = fmul fast float %2438, %2432
  %2440 = fsub fast float 1.000000e+00, %2439
  %2441 = bitcast float %2440 to i32
  %2442 = sub nsw i32 2129859010, %2441
  %2443 = bitcast i32 %2442 to float
  %2444 = call float @dx.op.binary.f32(i32 36, float %1603, float %2430)  ; FMin(a,b)
  %2445 = fmul fast float %2444, %2432
  %2446 = fsub fast float 1.000000e+00, %2445
  %2447 = bitcast float %2446 to i32
  %2448 = sub nsw i32 2129859010, %2447
  %2449 = bitcast i32 %2448 to float
  %2450 = fmul fast float %2423, %1623
  %2451 = fmul fast float %2450, %2437
  %2452 = fmul fast float %2424, %1623
  %2453 = fmul fast float %2452, %2443
  %2454 = fmul fast float %2425, %1623
  %2455 = fmul fast float %2454, %2449
  %2456 = call float @dx.op.binary.f32(i32 36, float %1604, float %2430)  ; FMin(a,b)
  %2457 = fmul fast float %2456, %2432
  %2458 = fsub fast float 1.000000e+00, %2457
  %2459 = bitcast float %2458 to i32
  %2460 = sub nsw i32 2129859010, %2459
  %2461 = bitcast i32 %2460 to float
  %2462 = call float @dx.op.binary.f32(i32 36, float %1605, float %2430)  ; FMin(a,b)
  %2463 = fmul fast float %2462, %2432
  %2464 = fsub fast float 1.000000e+00, %2463
  %2465 = bitcast float %2464 to i32
  %2466 = sub nsw i32 2129859010, %2465
  %2467 = bitcast i32 %2466 to float
  %2468 = call float @dx.op.binary.f32(i32 36, float %1612, float %2430)  ; FMin(a,b)
  %2469 = fmul fast float %2468, %2432
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = bitcast float %2470 to i32
  %2472 = sub nsw i32 2129859010, %2471
  %2473 = bitcast i32 %2472 to float
  %2474 = fmul fast float %2426, %1623
  %2475 = fmul fast float %2474, %2461
  %2476 = fmul fast float %2427, %1623
  %2477 = fmul fast float %2476, %2467
  %2478 = fmul fast float %2428, %1623
  %2479 = fmul fast float %2478, %2473
  %2480 = call float @dx.op.dot3.f32(i32 55, float %2451, float %2453, float %2455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2481 = select i1 %402, float 0.000000e+00, float %2451
  %2482 = select i1 %402, float %2480, float %2453
  %2483 = select i1 %402, float 0.000000e+00, float %2455
  %2484 = call float @dx.op.dot3.f32(i32 55, float %2475, float %2477, float %2479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2485 = select i1 %402, float 0.000000e+00, float %2475
  %2486 = select i1 %402, float %2484, float %2477
  %2487 = select i1 %402, float 0.000000e+00, float %2479
  %2488 = fmul fast float %1614, 9.843750e-01
  %2489 = fmul fast float %1610, 9.843750e-01
  %2490 = fadd fast float %2488, 7.812500e-03
  %2491 = fadd fast float %2489, 7.812500e-03
  %2492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %38, float %2490, float %2491, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2493 = extractvalue %dx.types.ResRet.f32 %2492, 2
  %2494 = extractvalue %dx.types.ResRet.f32 %2492, 3
  %2495 = fmul fast float %2493, %1604
  %2496 = fmul fast float %2493, %1605
  %2497 = fmul fast float %2493, %1612
  %2498 = fadd fast float %2495, %2494
  %2499 = fadd fast float %2496, %2494
  %2500 = fadd fast float %2497, %2494
  %2501 = fcmp fast ogt float %978, 0.000000e+00
  br i1 %2501, label %2502, label %2528

; <label>:2502                                    ; preds = %2401
  %2503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %978, float %1614, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2504 = extractvalue %dx.types.ResRet.f32 %2503, 0
  %2505 = extractvalue %dx.types.ResRet.f32 %2503, 1
  %2506 = extractvalue %dx.types.ResRet.f32 %2503, 2
  %2507 = fadd fast float %2504, -5.000000e-01
  %2508 = fadd fast float %2505, -5.000000e-01
  %2509 = fadd fast float %2506, -5.000000e-01
  %2510 = fsub fast float 1.000000e+00, %1604
  %2511 = fsub fast float 1.000000e+00, %1605
  %2512 = fsub fast float 1.000000e+00, %1612
  %2513 = fmul fast float %1604, 4.000000e+00
  %2514 = fmul fast float %2513, %2510
  %2515 = fmul fast float %2514, %2507
  %2516 = fmul fast float %1605, 4.000000e+00
  %2517 = fmul fast float %2516, %2511
  %2518 = fmul fast float %2517, %2508
  %2519 = fmul fast float %1612, 4.000000e+00
  %2520 = fmul fast float %2519, %2512
  %2521 = fmul fast float %2520, %2509
  %2522 = fadd fast float %2515, %2498
  %2523 = fadd fast float %2518, %2499
  %2524 = fadd fast float %2521, %2500
  %2525 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  %2526 = call float @dx.op.unary.f32(i32 7, float %2523)  ; Saturate(value)
  %2527 = call float @dx.op.unary.f32(i32 7, float %2524)  ; Saturate(value)
  br label %2528

; <label>:2528                                    ; preds = %2502, %2401
  %2529 = phi float [ %2525, %2502 ], [ %2498, %2401 ]
  %2530 = phi float [ %2526, %2502 ], [ %2499, %2401 ]
  %2531 = phi float [ %2527, %2502 ], [ %2500, %2401 ]
  %2532 = call float @dx.op.binary.f32(i32 35, float %2530, float %2531)  ; FMax(a,b)
  %2533 = call float @dx.op.binary.f32(i32 35, float %2529, float %2532)  ; FMax(a,b)
  %2534 = fsub fast float 1.000000e+00, %2533
  %2535 = fmul fast float %2534, %2481
  %2536 = fmul fast float %2534, %2482
  %2537 = fmul fast float %2534, %2483
  %2538 = call float @dx.op.dot3.f32(i32 55, float %1601, float %1602, float %1603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2539 = fcmp fast ogt float %2538, 0x3E7FF19E20000000
  %2540 = fdiv fast float 1.000000e+00, %2538
  %2541 = select i1 %2539, float %2540, float 0.000000e+00
  %2542 = fmul fast float %2541, %1601
  %2543 = fmul fast float %2541, %1602
  %2544 = fmul fast float %2541, %1603
  %2545 = fadd fast float %2542, -1.000000e+00
  %2546 = fadd fast float %2543, -1.000000e+00
  %2547 = fadd fast float %2544, -1.000000e+00
  %2548 = fmul fast float %2545, 5.000000e-01
  %2549 = fmul fast float %2546, 5.000000e-01
  %2550 = fmul fast float %2547, 5.000000e-01
  %2551 = fadd fast float %2548, 1.000000e+00
  %2552 = fadd fast float %2549, 1.000000e+00
  %2553 = fadd fast float %2550, 1.000000e+00
  %2554 = fmul fast float %2529, %2485
  %2555 = fmul fast float %2530, %2486
  %2556 = fmul fast float %2531, %2487
  %2557 = fsub fast float 1.000000e+00, %1614
  %2558 = bitcast float %2557 to i32
  %2559 = sitofp i32 %2558 to float
  %2560 = fmul fast float %2559, 5.000000e+00
  %2561 = fadd fast float %2560, 0xC1EFBF8940000000
  %2562 = fptosi float %2561 to i32
  %2563 = bitcast i32 %2562 to float
  %2564 = fmul fast float %2563, %977
  %2565 = fmul fast float %2481, %2564
  %2566 = fmul fast float %2565, %2534
  %2567 = fmul fast float %2566, %2551
  %2568 = fmul fast float %2482, %2564
  %2569 = fmul fast float %2568, %2534
  %2570 = fmul fast float %2569, %2552
  %2571 = fmul fast float %2483, %2564
  %2572 = fmul fast float %2571, %2534
  %2573 = fmul fast float %2572, %2553
  %2574 = fmul fast float %2535, %998
  %2575 = fmul fast float %2536, %998
  %2576 = fmul fast float %2537, %998
  %2577 = fadd fast float %2554, %979
  %2578 = fadd fast float %2577, %2567
  %2579 = fmul fast float %2578, %998
  %2580 = fadd fast float %2555, %980
  %2581 = fadd fast float %2580, %2570
  %2582 = fmul fast float %2581, %998
  %2583 = fadd fast float %2556, %981
  %2584 = fadd fast float %2583, %2573
  %2585 = fmul fast float %2584, %998
  %2586 = bitcast i32 %1626 to float
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 3
  %2589 = fcmp fast oeq float %2588, 0.000000e+00
  br i1 %2589, label %2815, label %2590

; <label>:2590                                    ; preds = %2528
  %2591 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2592 = extractvalue %dx.types.CBufRet.f32 %2587, 1
  %2593 = extractvalue %dx.types.CBufRet.f32 %2587, 2
  %2594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2594, 0
  %2596 = extractvalue %dx.types.CBufRet.f32 %2594, 1
  %2597 = extractvalue %dx.types.CBufRet.f32 %2594, 2
  %2598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.f32 %2598, 0
  %2600 = extractvalue %dx.types.CBufRet.f32 %2598, 1
  %2601 = call float @dx.op.dot3.f32(i32 55, float %2595, float %2596, float %2597, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2602 = select i1 %402, float %2599, float %2595
  %2603 = select i1 %402, float %2601, float %2596
  %2604 = select i1 %402, float %2600, float %2597
  %2605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2606 = extractvalue %dx.types.CBufRet.f32 %2605, 1
  %2607 = fcmp fast une float %2606, 0.000000e+00
  br i1 %2607, label %2608, label %2623

; <label>:2608                                    ; preds = %2590
  %2609 = lshr i32 %105, 4
  %2610 = lshr i32 %106, 4
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 0
  %2613 = fptoui float %2612 to i32
  %2614 = add i32 %2613, 15
  %2615 = lshr i32 %2614, 4
  %2616 = mul i32 %2615, %2610
  %2617 = add i32 %2616, %2609
  %2618 = shl i32 %2617, 3
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = and i32 %2620, -268435456
  %2622 = icmp eq i32 %2621, -1342177280
  br i1 %2622, label %2633, label %2623

; <label>:2623                                    ; preds = %2608, %2590
  %2624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2624, 2
  %2626 = extractvalue %dx.types.CBufRet.f32 %2624, 3
  %2627 = fmul fast float %2625, %48
  %2628 = fmul fast float %2626, %49
  %2629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %39, float %2627, float %2628, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2630 = extractvalue %dx.types.ResRet.f32 %2629, 0
  %2631 = extractvalue %dx.types.ResRet.f32 %2629, 1
  %2632 = extractvalue %dx.types.ResRet.f32 %2629, 2
  br label %2633

; <label>:2633                                    ; preds = %2623, %2608
  %2634 = phi float [ %2630, %2623 ], [ 0.000000e+00, %2608 ]
  %2635 = phi float [ %2631, %2623 ], [ 0.000000e+00, %2608 ]
  %2636 = phi float [ %2632, %2623 ], [ 0.000000e+00, %2608 ]
  %2637 = call float @dx.op.binary.f32(i32 36, float %2635, float %2636)  ; FMin(a,b)
  %2638 = call float @dx.op.binary.f32(i32 36, float %2634, float %2637)  ; FMin(a,b)
  %2639 = fcmp fast ogt float %2638, 0.000000e+00
  br i1 %2639, label %2640, label %2815, !dx.controlflow.hints !72

; <label>:2640                                    ; preds = %2633
  %2641 = fmul fast float %2634, %2602
  %2642 = fmul fast float %2635, %2603
  %2643 = fmul fast float %2636, %2604
  %2644 = fsub fast float %2591, %1600
  %2645 = fsub fast float %2592, %1599
  %2646 = fsub fast float %2593, %1598
  %2647 = call float @dx.op.dot3.f32(i32 55, float %2644, float %2645, float %2646, float %2644, float %2645, float %2646)  ; Dot3(ax,ay,az,bx,by,bz)
  %2648 = call float @dx.op.unary.f32(i32 25, float %2647)  ; Rsqrt(value)
  %2649 = fmul fast float %2648, %2644
  %2650 = fmul fast float %2648, %2645
  %2651 = fmul fast float %2648, %2646
  %2652 = call float @dx.op.dot3.f32(i32 55, float %2591, float %2592, float %2593, float %1607, float %1608, float %1609)  ; Dot3(ax,ay,az,bx,by,bz)
  %2653 = call float @dx.op.dot3.f32(i32 55, float %1597, float %1596, float %1595, float %2649, float %2650, float %2651)  ; Dot3(ax,ay,az,bx,by,bz)
  %2654 = call float @dx.op.unary.f32(i32 7, float %2652)  ; Saturate(value)
  %2655 = fmul fast float %2654, %2654
  %2656 = fmul fast float %2655, %2586
  %2657 = call float @dx.op.unary.f32(i32 7, float %2656)  ; Saturate(value)
  %2658 = fmul fast float %2657, %2654
  %2659 = call float @dx.op.dot3.f32(i32 55, float %1607, float %1608, float %1609, float %2649, float %2650, float %2651)  ; Dot3(ax,ay,az,bx,by,bz)
  %2660 = fmul fast float %2659, %2659
  %2661 = call float @dx.op.unary.f32(i32 6, float %2652)  ; FAbs(value)
  %2662 = fsub fast float 1.000000e+00, %1610
  %2663 = call float @dx.op.binary.f32(i32 35, float %2662, float 0x3F847AE140000000)  ; FMax(a,b)
  %2664 = fmul fast float %2663, %2663
  %2665 = fmul fast float %2664, %2664
  %2666 = fsub fast float 1.000000e+00, %2665
  %2667 = fmul fast float %1614, %1614
  %2668 = fmul fast float %2667, %2666
  %2669 = fadd fast float %2668, %2665
  %2670 = bitcast float %2669 to i32
  %2671 = ashr i32 %2670, 1
  %2672 = add nsw i32 %2671, 532487669
  %2673 = bitcast i32 %2672 to float
  %2674 = fadd fast float %2673, %1614
  %2675 = fmul fast float %2665, %2660
  %2676 = fsub fast float 1.000000e+00, %2660
  %2677 = fadd fast float %2676, %2675
  %2678 = fmul fast float %2661, %2661
  %2679 = fmul fast float %2678, %2666
  %2680 = fadd fast float %2679, %2665
  %2681 = bitcast float %2680 to i32
  %2682 = ashr i32 %2681, 1
  %2683 = add nsw i32 %2682, 532487669
  %2684 = bitcast i32 %2683 to float
  %2685 = fadd fast float %2684, %2661
  %2686 = fmul fast float %2677, %2677
  %2687 = fmul fast float %2686, %2674
  %2688 = fmul fast float %2687, %2685
  %2689 = fdiv fast float 0x3FF0A00000000000, %2688
  %2690 = fmul fast float %2689, %2665
  %2691 = call float @dx.op.unary.f32(i32 6, float %2653)  ; FAbs(value)
  %2692 = fsub fast float 1.000000e+00, %2691
  %2693 = bitcast float %2692 to i32
  %2694 = sitofp i32 %2693 to float
  %2695 = fmul fast float %2694, 5.000000e+00
  %2696 = fadd fast float %2695, 0xC1EFBF8940000000
  %2697 = fptosi float %2696 to i32
  %2698 = bitcast i32 %2697 to float
  %2699 = fsub fast float 1.000000e+00, %1604
  %2700 = fsub fast float 1.000000e+00, %1605
  %2701 = fsub fast float 1.000000e+00, %1612
  %2702 = fmul fast float %2698, %2699
  %2703 = fmul fast float %2698, %2700
  %2704 = fmul fast float %2698, %2701
  %2705 = fadd fast float %2702, %1604
  %2706 = fadd fast float %2703, %1605
  %2707 = fadd fast float %2704, %1612
  br i1 %2501, label %2708, label %2731

; <label>:2708                                    ; preds = %2640
  %2709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %978, float %2691, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2710 = extractvalue %dx.types.ResRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.ResRet.f32 %2709, 1
  %2712 = extractvalue %dx.types.ResRet.f32 %2709, 2
  %2713 = fadd fast float %2710, -5.000000e-01
  %2714 = fadd fast float %2711, -5.000000e-01
  %2715 = fadd fast float %2712, -5.000000e-01
  %2716 = fmul fast float %1604, 4.000000e+00
  %2717 = fmul fast float %2716, %2699
  %2718 = fmul fast float %2717, %2713
  %2719 = fmul fast float %1605, 4.000000e+00
  %2720 = fmul fast float %2719, %2700
  %2721 = fmul fast float %2720, %2714
  %2722 = fmul fast float %1612, 4.000000e+00
  %2723 = fmul fast float %2722, %2701
  %2724 = fmul fast float %2723, %2715
  %2725 = fadd fast float %2718, %2705
  %2726 = fadd fast float %2721, %2706
  %2727 = fadd fast float %2724, %2707
  %2728 = call float @dx.op.unary.f32(i32 7, float %2725)  ; Saturate(value)
  %2729 = call float @dx.op.unary.f32(i32 7, float %2726)  ; Saturate(value)
  %2730 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  br label %2731

; <label>:2731                                    ; preds = %2708, %2640
  %2732 = phi float [ %2728, %2708 ], [ %2705, %2640 ]
  %2733 = phi float [ %2729, %2708 ], [ %2706, %2640 ]
  %2734 = phi float [ %2730, %2708 ], [ %2707, %2640 ]
  %2735 = fmul fast float %2652, 9.843750e-01
  %2736 = fadd fast float %2735, 7.812500e-03
  %2737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %38, float %2736, float %2491, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2738 = extractvalue %dx.types.ResRet.f32 %2737, 2
  %2739 = extractvalue %dx.types.ResRet.f32 %2737, 3
  %2740 = fmul fast float %2738, %1604
  %2741 = fmul fast float %2738, %1605
  %2742 = fmul fast float %2738, %1612
  %2743 = fadd fast float %2740, %2739
  %2744 = fadd fast float %2741, %2739
  %2745 = fadd fast float %2742, %2739
  br i1 %2501, label %2746, label %2769

; <label>:2746                                    ; preds = %2731
  %2747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %978, float %2652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.ResRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.ResRet.f32 %2747, 2
  %2751 = fadd fast float %2748, -5.000000e-01
  %2752 = fadd fast float %2749, -5.000000e-01
  %2753 = fadd fast float %2750, -5.000000e-01
  %2754 = fmul fast float %1604, 4.000000e+00
  %2755 = fmul fast float %2754, %2699
  %2756 = fmul fast float %2755, %2751
  %2757 = fmul fast float %1605, 4.000000e+00
  %2758 = fmul fast float %2757, %2700
  %2759 = fmul fast float %2758, %2752
  %2760 = fmul fast float %1612, 4.000000e+00
  %2761 = fmul fast float %2760, %2701
  %2762 = fmul fast float %2761, %2753
  %2763 = fadd fast float %2756, %2743
  %2764 = fadd fast float %2759, %2744
  %2765 = fadd fast float %2762, %2745
  %2766 = call float @dx.op.unary.f32(i32 7, float %2763)  ; Saturate(value)
  %2767 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2768 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  br label %2769

; <label>:2769                                    ; preds = %2746, %2731
  %2770 = phi float [ %2766, %2746 ], [ %2743, %2731 ]
  %2771 = phi float [ %2767, %2746 ], [ %2744, %2731 ]
  %2772 = phi float [ %2768, %2746 ], [ %2745, %2731 ]
  %2773 = call float @dx.op.binary.f32(i32 35, float %2771, float %2772)  ; FMax(a,b)
  %2774 = call float @dx.op.binary.f32(i32 35, float %2770, float %2773)  ; FMax(a,b)
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = fmul fast float %2732, %2690
  %2777 = fmul fast float %2733, %2690
  %2778 = fmul fast float %2734, %2690
  %2779 = fsub fast float 1.000000e+00, %2653
  %2780 = bitcast float %2779 to i32
  %2781 = sitofp i32 %2780 to float
  %2782 = fmul fast float %2781, 5.000000e+00
  %2783 = fadd fast float %2782, 0xC1EFBF8940000000
  %2784 = fptosi float %2783 to i32
  %2785 = bitcast i32 %2784 to float
  %2786 = fmul fast float %2785, %977
  %2787 = fmul fast float %2775, %2786
  %2788 = fmul fast float %2787, %2551
  %2789 = fmul fast float %2787, %2552
  %2790 = fmul fast float %2787, %2553
  %2791 = fadd fast float %2788, %2776
  %2792 = fadd fast float %2789, %2777
  %2793 = fadd fast float %2790, %2778
  %2794 = fmul fast float %2658, %2641
  %2795 = fmul fast float %2794, %2775
  %2796 = fmul fast float %2658, %2642
  %2797 = fmul fast float %2796, %2775
  %2798 = fmul fast float %2658, %2643
  %2799 = fmul fast float %2798, %2775
  %2800 = fmul fast float %2794, %2791
  %2801 = fmul fast float %2796, %2792
  %2802 = fmul fast float %2798, %2793
  %2803 = fadd fast float %2795, %2535
  %2804 = fmul fast float %2803, %998
  %2805 = fadd fast float %2797, %2536
  %2806 = fmul fast float %2805, %998
  %2807 = fadd fast float %2799, %2537
  %2808 = fmul fast float %2807, %998
  %2809 = fadd fast float %2800, %2578
  %2810 = fmul fast float %2809, %998
  %2811 = fadd fast float %2801, %2581
  %2812 = fmul fast float %2811, %998
  %2813 = fadd fast float %2802, %2584
  %2814 = fmul fast float %2813, %998
  br label %2815

; <label>:2815                                    ; preds = %2769, %2633, %2528
  %2816 = phi float [ %2579, %2528 ], [ %2579, %2633 ], [ %2810, %2769 ]
  %2817 = phi float [ %2582, %2528 ], [ %2582, %2633 ], [ %2812, %2769 ]
  %2818 = phi float [ %2585, %2528 ], [ %2585, %2633 ], [ %2814, %2769 ]
  %2819 = phi float [ %2574, %2528 ], [ %2574, %2633 ], [ %2804, %2769 ]
  %2820 = phi float [ %2575, %2528 ], [ %2575, %2633 ], [ %2806, %2769 ]
  %2821 = phi float [ %2576, %2528 ], [ %2576, %2633 ], [ %2808, %2769 ]
  %2822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2823 = extractvalue %dx.types.CBufRet.i32 %2822, 0
  %2824 = icmp eq i32 %2823, 0
  br i1 %2824, label %3257, label %2825

; <label>:2825                                    ; preds = %2815
  %2826 = lshr i32 %105, 4
  %2827 = lshr i32 %106, 4
  %2828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.i32 %2828, 0
  %2830 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2827, i32 %2829, i32 %2826)  ; UMad(a,b,c)
  %2831 = add nsw i32 %2823, -1
  %2832 = call i32 @dx.op.binary.i32(i32 37, i32 %2831, i32 0)  ; IMax(a,b)
  %2833 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %2834 = fptoui float %2833 to i32
  %2835 = lshr i32 %2834, 5
  %2836 = call i32 @dx.op.binary.i32(i32 40, i32 %2835, i32 8191)  ; UMin(a,b)
  %2837 = shl i32 %2836, 2
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = lshr i32 %2839, 16
  %2841 = and i32 %2839, 65535
  %2842 = lshr i32 %2839, 21
  %2843 = lshr i32 %2841, 5
  %2844 = call i32 @dx.op.binary.i32(i32 40, i32 %2843, i32 %2832)  ; UMin(a,b)
  %2845 = icmp ugt i32 %2842, %2844
  br i1 %2845, label %3257, label %2846

; <label>:2846                                    ; preds = %2825
  br label %2847

; <label>:2847                                    ; preds = %3247, %2846
  %2848 = phi i32 [ %3254, %3247 ], [ %2842, %2846 ]
  %2849 = phi float [ %3248, %3247 ], [ %2816, %2846 ]
  %2850 = phi float [ %3249, %3247 ], [ %2817, %2846 ]
  %2851 = phi float [ %3250, %3247 ], [ %2818, %2846 ]
  %2852 = phi float [ %3251, %3247 ], [ %2819, %2846 ]
  %2853 = phi float [ %3252, %3247 ], [ %2820, %2846 ]
  %2854 = phi float [ %3253, %3247 ], [ %2821, %2846 ]
  %2855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.i32 %2855, 0
  %2857 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2830, i32 %2856, i32 %2848)  ; UMad(a,b,c)
  %2858 = shl i32 %2857, 2
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = shl i32 %2848, 5
  %2862 = sub nsw i32 %2840, %2861
  %2863 = call i32 @dx.op.binary.i32(i32 37, i32 %2862, i32 0)  ; IMax(a,b)
  %2864 = call i32 @dx.op.binary.i32(i32 38, i32 %2863, i32 31)  ; IMin(a,b)
  %2865 = sub nsw i32 1, %2840
  %2866 = add nsw i32 %2865, %2841
  %2867 = call i32 @dx.op.binary.i32(i32 37, i32 %2866, i32 0)  ; IMax(a,b)
  %2868 = call i32 @dx.op.binary.i32(i32 38, i32 %2867, i32 32)  ; IMin(a,b)
  %2869 = and i32 %2868, 31
  %2870 = shl i32 -1, %2869
  %2871 = xor i32 %2870, -1
  %2872 = and i32 %2864, 31
  %2873 = shl i32 %2871, %2872
  %2874 = icmp eq i32 %2868, 32
  %2875 = select i1 %2874, i32 -1, i32 %2873
  %2876 = and i32 %2875, %2860
  %2877 = icmp eq i32 %2876, 0
  br i1 %2877, label %3247, label %2878

; <label>:2878                                    ; preds = %2847
  br label %2879

; <label>:2879                                    ; preds = %2959, %2878
  %2880 = phi i32 [ %2891, %2959 ], [ %2876, %2878 ]
  %2881 = phi float [ %2960, %2959 ], [ %2849, %2878 ]
  %2882 = phi float [ %2961, %2959 ], [ %2850, %2878 ]
  %2883 = phi float [ %2962, %2959 ], [ %2851, %2878 ]
  %2884 = phi float [ %2963, %2959 ], [ %2852, %2878 ]
  %2885 = phi float [ %2964, %2959 ], [ %2853, %2878 ]
  %2886 = phi float [ %2965, %2959 ], [ %2854, %2878 ]
  %2887 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2880)  ; FirstbitLo(value)
  %2888 = add i32 %2887, %2861
  %2889 = and i32 %2887, 31
  %2890 = shl i32 1, %2889
  %2891 = xor i32 %2890, %2880
  %2892 = mul i32 %2888, 112
  %2893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2892, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.f32 %2893, 0
  %2895 = extractvalue %dx.types.ResRet.f32 %2893, 1
  %2896 = extractvalue %dx.types.ResRet.f32 %2893, 2
  %2897 = or i32 %2892, 12
  %2898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = add i32 %2892, 44
  %2901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.f32 %2901, 0
  %2903 = add i32 %2892, 48
  %2904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.ResRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.ResRet.f32 %2904, 2
  %2908 = add i32 %2892, 80
  %2909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.f32 %2909, 1
  %2911 = extractvalue %dx.types.ResRet.f32 %2909, 2
  %2912 = call float @dx.op.dot3.f32(i32 55, float %2894, float %2895, float %2896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2913 = select i1 %402, float %2910, float %2894
  %2914 = select i1 %402, float %2912, float %2895
  %2915 = select i1 %402, float %2911, float %2896
  %2916 = fsub fast float %2905, %92
  %2917 = fsub fast float %2906, %93
  %2918 = fsub fast float %2907, %94
  %2919 = call float @dx.op.dot3.f32(i32 55, float %2916, float %2917, float %2918, float %2916, float %2917, float %2918)  ; Dot3(ax,ay,az,bx,by,bz)
  %2920 = call float @dx.op.unary.f32(i32 24, float %2919)  ; Sqrt(value)
  %2921 = fdiv fast float 1.000000e+00, %2920
  %2922 = fmul fast float %2921, %2916
  %2923 = fmul fast float %2921, %2917
  %2924 = fmul fast float %2921, %2918
  %2925 = fadd fast float %2920, %2899
  %2926 = fdiv fast float 1.000000e+00, %2925
  %2927 = fmul float %2902, %2926
  %2928 = fmul float %2927, %2927
  %2929 = call float @dx.op.unary.f32(i32 7, float %2928)  ; Saturate(value)
  %2930 = and i32 %2890, %2876
  %2931 = icmp eq i32 %2930, 0
  br i1 %2931, label %2954, label %2932, !dx.controlflow.hints !73

; <label>:2932                                    ; preds = %2879
  %2933 = lshr i32 %105, 5
  %2934 = lshr i32 %106, 5
  %2935 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %2933, i32 %2934, i32 %2888, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 3
  %2938 = icmp eq i32 %2937, 0
  %2939 = select i1 %2938, float 1.000000e+00, float 0.000000e+00
  %2940 = icmp eq i32 %2937, 3
  br i1 %2940, label %2941, label %2954

; <label>:2941                                    ; preds = %2932
  %2942 = lshr i32 %2936, 10
  %2943 = and i32 %2942, 8160
  %2944 = and i32 %106, 31
  %2945 = or i32 %2943, %2944
  %2946 = lshr i32 %2936, 1
  %2947 = and i32 %2946, 16352
  %2948 = and i32 %105, 31
  %2949 = or i32 %2947, %2948
  %2950 = lshr i32 %2936, 23
  %2951 = and i32 %2950, 255
  %2952 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %2949, i32 %2945, i32 %2951, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2953 = extractvalue %dx.types.ResRet.f32 %2952, 0
  br label %2954

; <label>:2954                                    ; preds = %2941, %2932, %2879
  %2955 = phi float [ %2953, %2941 ], [ %2939, %2932 ], [ 0.000000e+00, %2879 ]
  %2956 = call float @dx.op.binary.f32(i32 36, float %2955, float %2955)  ; FMin(a,b)
  %2957 = call float @dx.op.binary.f32(i32 36, float %2955, float %2956)  ; FMin(a,b)
  %2958 = fcmp fast ogt float %2957, 0.000000e+00
  br i1 %2958, label %2967, label %2959, !dx.controlflow.hints !74

; <label>:2959                                    ; preds = %3203, %2954
  %2960 = phi float [ %2881, %2954 ], [ %3243, %3203 ]
  %2961 = phi float [ %2882, %2954 ], [ %3244, %3203 ]
  %2962 = phi float [ %2883, %2954 ], [ %3245, %3203 ]
  %2963 = phi float [ %2884, %2954 ], [ %3237, %3203 ]
  %2964 = phi float [ %2885, %2954 ], [ %3238, %3203 ]
  %2965 = phi float [ %2886, %2954 ], [ %3239, %3203 ]
  %2966 = icmp eq i32 %2880, %2890
  br i1 %2966, label %3246, label %2879

; <label>:2967                                    ; preds = %2954
  %2968 = fmul fast float %2955, %2913
  %2969 = fmul fast float %2955, %2914
  %2970 = fmul fast float %2955, %2915
  %2971 = fsub fast float %2907, %1400
  %2972 = fcmp fast ogt float %2971, 0.000000e+00
  %2973 = fsub fast float %94, %1400
  %2974 = fcmp fast ogt float %2973, 0.000000e+00
  %2975 = xor i1 %2974, %2972
  %2976 = fsub fast float %1400, %2907
  %2977 = fmul fast float %2976, 2.000000e+00
  %2978 = fadd fast float %2977, %2907
  %2979 = select i1 %2975, float %2907, float %2978
  %2980 = fsub fast float %2979, %94
  %2981 = call float @dx.op.dot3.f32(i32 55, float %2916, float %2917, float %2980, float %2916, float %2917, float %2980)  ; Dot3(ax,ay,az,bx,by,bz)
  %2982 = call float @dx.op.unary.f32(i32 25, float %2981)  ; Rsqrt(value)
  %2983 = fmul fast float %2982, %2916
  %2984 = fmul fast float %2982, %2917
  %2985 = fmul fast float %2982, %2980
  %2986 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1408)  ; Dot3(ax,ay,az,bx,by,bz)
  %2987 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2983, float %2984, float %2985)  ; Dot3(ax,ay,az,bx,by,bz)
  %2988 = fdiv fast float 1.000000e+00, %2987
  %2989 = fmul fast float %2988, %2986
  %2990 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2973, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2991 = fcmp fast ogt float %2990, 0.000000e+00
  %2992 = fcmp fast olt float %2990, 0.000000e+00
  %2993 = zext i1 %2991 to i32
  %2994 = zext i1 %2992 to i32
  %2995 = sub nsw i32 %2993, %2994
  %2996 = sitofp i32 %2995 to float
  %2997 = fsub fast float %2979, %1400
  %2998 = call float @dx.op.dot3.f32(i32 55, float %2916, float %2917, float %2997, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2999 = fcmp fast ogt float %2998, 0.000000e+00
  %3000 = fcmp fast olt float %2998, 0.000000e+00
  %3001 = zext i1 %2999 to i32
  %3002 = zext i1 %3000 to i32
  %3003 = sub nsw i32 %3001, %3002
  %3004 = sitofp i32 %3003 to float
  %3005 = fcmp fast une float %2996, %3004
  br i1 %3005, label %3006, label %3016

; <label>:3006                                    ; preds = %2967
  %3007 = fmul fast float %2989, %2985
  %3008 = fmul fast float %2989, %2984
  %3009 = fmul fast float %2989, %2983
  %3010 = fmul fast float %3009, %3009
  %3011 = fmul fast float %3008, %3008
  %3012 = fadd fast float %3010, %3011
  %3013 = fmul fast float %3007, %3007
  %3014 = fadd fast float %3012, %3013
  %3015 = call float @dx.op.unary.f32(i32 24, float %3014)  ; Sqrt(value)
  br label %3028

; <label>:3016                                    ; preds = %2967
  %3017 = icmp slt i32 %2995, 0
  br i1 %3017, label %3018, label %3028

; <label>:3018                                    ; preds = %3016
  %3019 = fsub fast float %92, %2905
  %3020 = fsub fast float %93, %2906
  %3021 = fsub fast float %94, %2979
  %3022 = fmul fast float %3019, %3019
  %3023 = fmul fast float %3020, %3020
  %3024 = fadd fast float %3022, %3023
  %3025 = fmul fast float %3021, %3021
  %3026 = fadd fast float %3024, %3025
  %3027 = call float @dx.op.unary.f32(i32 24, float %3026)  ; Sqrt(value)
  br label %3028

; <label>:3028                                    ; preds = %3018, %3016, %3006
  %3029 = phi float [ %3015, %3006 ], [ %3027, %3018 ], [ 0.000000e+00, %3016 ]
  %3030 = and i1 %2974, %2972
  %3031 = fsub fast float -0.000000e+00, %3029
  %3032 = select i1 %3030, float -0.000000e+00, float %3031
  %3033 = fmul fast float %1401, 0x3FF7154760000000
  %3034 = fmul fast float %3033, %3032
  %3035 = fmul fast float %1402, 0x3FF7154760000000
  %3036 = fmul fast float %3035, %3032
  %3037 = fmul fast float %1403, 0x3FF7154760000000
  %3038 = fmul fast float %3037, %3032
  %3039 = call float @dx.op.unary.f32(i32 21, float %3034)  ; Exp(value)
  %3040 = call float @dx.op.unary.f32(i32 21, float %3036)  ; Exp(value)
  %3041 = call float @dx.op.unary.f32(i32 21, float %3038)  ; Exp(value)
  %3042 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3043 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3044 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3045 = fmul fast float %2968, %3042
  %3046 = fmul fast float %2969, %3043
  %3047 = fmul fast float %2970, %3044
  %3048 = fsub fast float %2922, %1600
  %3049 = fsub fast float %2923, %1599
  %3050 = fsub fast float %2924, %1598
  %3051 = call float @dx.op.dot3.f32(i32 55, float %3048, float %3049, float %3050, float %3048, float %3049, float %3050)  ; Dot3(ax,ay,az,bx,by,bz)
  %3052 = call float @dx.op.unary.f32(i32 25, float %3051)  ; Rsqrt(value)
  %3053 = fmul fast float %3052, %3048
  %3054 = fmul fast float %3052, %3049
  %3055 = fmul fast float %3052, %3050
  %3056 = call float @dx.op.dot3.f32(i32 55, float %2922, float %2923, float %2924, float %1607, float %1608, float %1609)  ; Dot3(ax,ay,az,bx,by,bz)
  %3057 = call float @dx.op.dot3.f32(i32 55, float %1597, float %1596, float %1595, float %3053, float %3054, float %3055)  ; Dot3(ax,ay,az,bx,by,bz)
  %3058 = call float @dx.op.unary.f32(i32 7, float %3056)  ; Saturate(value)
  %3059 = fmul fast float %3058, %2929
  %3060 = fmul fast float %3058, %3058
  %3061 = fmul fast float %3060, %2586
  %3062 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  %3063 = fmul fast float %3059, %3062
  %3064 = bitcast float %2919 to i32
  %3065 = ashr i32 %3064, 1
  %3066 = sub nsw i32 1597463007, %3065
  %3067 = bitcast i32 %3066 to float
  %3068 = fmul fast float %3067, %2916
  %3069 = fmul fast float %3067, %2917
  %3070 = fmul fast float %3067, %2918
  %3071 = fsub fast float %3068, %1600
  %3072 = fsub fast float %3069, %1599
  %3073 = fsub fast float %3070, %1598
  %3074 = call float @dx.op.dot3.f32(i32 55, float %3071, float %3072, float %3073, float %3071, float %3072, float %3073)  ; Dot3(ax,ay,az,bx,by,bz)
  %3075 = call float @dx.op.unary.f32(i32 25, float %3074)  ; Rsqrt(value)
  %3076 = fmul fast float %3071, %3075
  %3077 = fmul fast float %3072, %3075
  %3078 = fmul fast float %3073, %3075
  %3079 = call float @dx.op.dot3.f32(i32 55, float %1607, float %1608, float %1609, float %3076, float %3077, float %3078)  ; Dot3(ax,ay,az,bx,by,bz)
  %3080 = fmul fast float %3079, %3079
  %3081 = call float @dx.op.unary.f32(i32 6, float %3056)  ; FAbs(value)
  %3082 = fsub fast float 1.000000e+00, %1610
  %3083 = call float @dx.op.binary.f32(i32 35, float %3082, float 0x3F847AE140000000)  ; FMax(a,b)
  %3084 = fmul fast float %3083, %3083
  %3085 = fmul fast float %3084, %3084
  %3086 = fsub fast float 1.000000e+00, %3085
  %3087 = fmul fast float %1614, %1614
  %3088 = fmul fast float %3087, %3086
  %3089 = fadd fast float %3088, %3085
  %3090 = bitcast float %3089 to i32
  %3091 = ashr i32 %3090, 1
  %3092 = add nsw i32 %3091, 532487669
  %3093 = bitcast i32 %3092 to float
  %3094 = fadd fast float %3093, %1614
  %3095 = fmul fast float %3085, %3080
  %3096 = fsub fast float 1.000000e+00, %3080
  %3097 = fadd fast float %3096, %3095
  %3098 = fmul fast float %3081, %3081
  %3099 = fmul fast float %3098, %3086
  %3100 = fadd fast float %3099, %3085
  %3101 = bitcast float %3100 to i32
  %3102 = ashr i32 %3101, 1
  %3103 = add nsw i32 %3102, 532487669
  %3104 = bitcast i32 %3103 to float
  %3105 = fadd fast float %3104, %3081
  %3106 = fmul fast float %3097, %3097
  %3107 = fmul fast float %3106, %3094
  %3108 = fmul fast float %3107, %3105
  %3109 = fdiv fast float 1.000000e+00, %3108
  %3110 = bitcast float %3085 to i32
  %3111 = sitofp i32 %3110 to float
  %3112 = fmul fast float %3111, 0x3FE7F73180000000
  %3113 = fadd fast float %3112, 0x41AFE27C40000000
  %3114 = fptosi float %3113 to i32
  %3115 = bitcast i32 %3114 to float
  %3116 = fmul fast float %2902, 0x3FD80E9D60000000
  %3117 = fmul fast float %3116, %3067
  %3118 = fadd fast float %3115, %3117
  %3119 = bitcast float %3118 to i32
  %3120 = sub nsw i32 2129859010, %3119
  %3121 = bitcast i32 %3120 to float
  %3122 = fmul fast float %3085, %3109
  %3123 = fmul fast float %3122, %3115
  %3124 = fmul fast float %3123, %3121
  %3125 = call float @dx.op.unary.f32(i32 6, float %3057)  ; FAbs(value)
  %3126 = fsub fast float 1.000000e+00, %3125
  %3127 = bitcast float %3126 to i32
  %3128 = sitofp i32 %3127 to float
  %3129 = fmul fast float %3128, 5.000000e+00
  %3130 = fadd fast float %3129, 0xC1EFBF8940000000
  %3131 = fptosi float %3130 to i32
  %3132 = bitcast i32 %3131 to float
  %3133 = fsub fast float 1.000000e+00, %1604
  %3134 = fsub fast float 1.000000e+00, %1605
  %3135 = fsub fast float 1.000000e+00, %1612
  %3136 = fmul fast float %3132, %3133
  %3137 = fmul fast float %3132, %3134
  %3138 = fmul fast float %3132, %3135
  %3139 = fadd fast float %3136, %1604
  %3140 = fadd fast float %3137, %1605
  %3141 = fadd fast float %3138, %1612
  br i1 %2501, label %3142, label %3165

; <label>:3142                                    ; preds = %3028
  %3143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %978, float %3125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3144 = extractvalue %dx.types.ResRet.f32 %3143, 0
  %3145 = extractvalue %dx.types.ResRet.f32 %3143, 1
  %3146 = extractvalue %dx.types.ResRet.f32 %3143, 2
  %3147 = fadd fast float %3144, -5.000000e-01
  %3148 = fadd fast float %3145, -5.000000e-01
  %3149 = fadd fast float %3146, -5.000000e-01
  %3150 = fmul fast float %1604, 4.000000e+00
  %3151 = fmul fast float %3150, %3133
  %3152 = fmul fast float %3151, %3147
  %3153 = fmul fast float %1605, 4.000000e+00
  %3154 = fmul fast float %3153, %3134
  %3155 = fmul fast float %3154, %3148
  %3156 = fmul fast float %1612, 4.000000e+00
  %3157 = fmul fast float %3156, %3135
  %3158 = fmul fast float %3157, %3149
  %3159 = fadd fast float %3152, %3139
  %3160 = fadd fast float %3155, %3140
  %3161 = fadd fast float %3158, %3141
  %3162 = call float @dx.op.unary.f32(i32 7, float %3159)  ; Saturate(value)
  %3163 = call float @dx.op.unary.f32(i32 7, float %3160)  ; Saturate(value)
  %3164 = call float @dx.op.unary.f32(i32 7, float %3161)  ; Saturate(value)
  br label %3165

; <label>:3165                                    ; preds = %3142, %3028
  %3166 = phi float [ %3162, %3142 ], [ %3139, %3028 ]
  %3167 = phi float [ %3163, %3142 ], [ %3140, %3028 ]
  %3168 = phi float [ %3164, %3142 ], [ %3141, %3028 ]
  %3169 = fmul fast float %3056, 9.843750e-01
  %3170 = fadd fast float %3169, 7.812500e-03
  %3171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %38, float %3170, float %2491, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3172 = extractvalue %dx.types.ResRet.f32 %3171, 2
  %3173 = extractvalue %dx.types.ResRet.f32 %3171, 3
  %3174 = fmul fast float %3172, %1604
  %3175 = fmul fast float %3172, %1605
  %3176 = fmul fast float %3172, %1612
  %3177 = fadd fast float %3174, %3173
  %3178 = fadd fast float %3175, %3173
  %3179 = fadd fast float %3176, %3173
  br i1 %2501, label %3180, label %3203

; <label>:3180                                    ; preds = %3165
  %3181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %978, float %3056, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3182 = extractvalue %dx.types.ResRet.f32 %3181, 0
  %3183 = extractvalue %dx.types.ResRet.f32 %3181, 1
  %3184 = extractvalue %dx.types.ResRet.f32 %3181, 2
  %3185 = fadd fast float %3182, -5.000000e-01
  %3186 = fadd fast float %3183, -5.000000e-01
  %3187 = fadd fast float %3184, -5.000000e-01
  %3188 = fmul fast float %1604, 4.000000e+00
  %3189 = fmul fast float %3188, %3133
  %3190 = fmul fast float %3189, %3185
  %3191 = fmul fast float %1605, 4.000000e+00
  %3192 = fmul fast float %3191, %3134
  %3193 = fmul fast float %3192, %3186
  %3194 = fmul fast float %1612, 4.000000e+00
  %3195 = fmul fast float %3194, %3135
  %3196 = fmul fast float %3195, %3187
  %3197 = fadd fast float %3190, %3177
  %3198 = fadd fast float %3193, %3178
  %3199 = fadd fast float %3196, %3179
  %3200 = call float @dx.op.unary.f32(i32 7, float %3197)  ; Saturate(value)
  %3201 = call float @dx.op.unary.f32(i32 7, float %3198)  ; Saturate(value)
  %3202 = call float @dx.op.unary.f32(i32 7, float %3199)  ; Saturate(value)
  br label %3203

; <label>:3203                                    ; preds = %3180, %3165
  %3204 = phi float [ %3200, %3180 ], [ %3177, %3165 ]
  %3205 = phi float [ %3201, %3180 ], [ %3178, %3165 ]
  %3206 = phi float [ %3202, %3180 ], [ %3179, %3165 ]
  %3207 = call float @dx.op.binary.f32(i32 35, float %3205, float %3206)  ; FMax(a,b)
  %3208 = call float @dx.op.binary.f32(i32 35, float %3204, float %3207)  ; FMax(a,b)
  %3209 = fsub fast float 1.000000e+00, %3208
  %3210 = fmul fast float %3166, %3124
  %3211 = fmul fast float %3167, %3124
  %3212 = fmul fast float %3168, %3124
  %3213 = fsub fast float 1.000000e+00, %3057
  %3214 = bitcast float %3213 to i32
  %3215 = sitofp i32 %3214 to float
  %3216 = fmul fast float %3215, 5.000000e+00
  %3217 = fadd fast float %3216, 0xC1EFBF8940000000
  %3218 = fptosi float %3217 to i32
  %3219 = bitcast i32 %3218 to float
  %3220 = fmul fast float %3219, %977
  %3221 = fmul fast float %3209, %3220
  %3222 = fmul fast float %3221, %2551
  %3223 = fmul fast float %3221, %2552
  %3224 = fmul fast float %3221, %2553
  %3225 = fadd fast float %3222, %3210
  %3226 = fadd fast float %3223, %3211
  %3227 = fadd fast float %3224, %3212
  %3228 = fmul fast float %3045, %998
  %3229 = fmul fast float %3228, %3063
  %3230 = fmul fast float %3229, %3209
  %3231 = fmul fast float %3046, %998
  %3232 = fmul fast float %3231, %3063
  %3233 = fmul fast float %3232, %3209
  %3234 = fmul fast float %3047, %998
  %3235 = fmul fast float %3234, %3063
  %3236 = fmul fast float %3235, %3209
  %3237 = fadd fast float %3230, %2884
  %3238 = fadd fast float %3233, %2885
  %3239 = fadd fast float %3236, %2886
  %3240 = fmul fast float %3229, %3225
  %3241 = fmul fast float %3232, %3226
  %3242 = fmul fast float %3235, %3227
  %3243 = fadd fast float %3240, %2881
  %3244 = fadd fast float %3241, %2882
  %3245 = fadd fast float %3242, %2883
  br label %2959

; <label>:3246                                    ; preds = %2959
  br label %3247

; <label>:3247                                    ; preds = %3246, %2847
  %3248 = phi float [ %2849, %2847 ], [ %2960, %3246 ]
  %3249 = phi float [ %2850, %2847 ], [ %2961, %3246 ]
  %3250 = phi float [ %2851, %2847 ], [ %2962, %3246 ]
  %3251 = phi float [ %2852, %2847 ], [ %2963, %3246 ]
  %3252 = phi float [ %2853, %2847 ], [ %2964, %3246 ]
  %3253 = phi float [ %2854, %2847 ], [ %2965, %3246 ]
  %3254 = add i32 %2848, 1
  %3255 = icmp ugt i32 %3254, %2844
  br i1 %3255, label %3256, label %2847

; <label>:3256                                    ; preds = %3247
  br label %3257

; <label>:3257                                    ; preds = %3256, %2825, %2815
  %3258 = phi float [ %2816, %2815 ], [ %2816, %2825 ], [ %3248, %3256 ]
  %3259 = phi float [ %2817, %2815 ], [ %2817, %2825 ], [ %3249, %3256 ]
  %3260 = phi float [ %2818, %2815 ], [ %2818, %2825 ], [ %3250, %3256 ]
  %3261 = phi float [ %2819, %2815 ], [ %2819, %2825 ], [ %3251, %3256 ]
  %3262 = phi float [ %2820, %2815 ], [ %2820, %2825 ], [ %3252, %3256 ]
  %3263 = phi float [ %2821, %2815 ], [ %2821, %2825 ], [ %3253, %3256 ]
  %3264 = call float @dx.op.unary.f32(i32 24, float %1601)  ; Sqrt(value)
  %3265 = call float @dx.op.unary.f32(i32 24, float %1602)  ; Sqrt(value)
  %3266 = call float @dx.op.unary.f32(i32 24, float %1603)  ; Sqrt(value)
  %3267 = fmul fast float %3264, %3261
  %3268 = fmul fast float %3265, %3262
  %3269 = extractvalue %dx.types.CBufRet.f32 %2223, 0
  br i1 %402, label %3270, label %3289

; <label>:3270                                    ; preds = %3257
  %3271 = fadd fast float %3263, %975
  %3272 = fmul fast float %3271, %976
  %3273 = fsub fast float 1.000000e+00, %976
  %3274 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  %3275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = extractvalue %dx.types.CBufRet.f32 %3275, 3
  %3277 = fmul fast float %3276, %3274
  %3278 = fadd fast float %3277, %3272
  %3279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3280 = extractvalue %dx.types.CBufRet.f32 %3279, 0
  %3281 = fmul fast float %3280, %2557
  %3282 = fsub fast float %3278, %3281
  %3283 = fadd fast float %3268, %3267
  %3284 = extractvalue %dx.types.CBufRet.f32 %3275, 1
  %3285 = fsub fast float %3282, %3284
  %3286 = extractvalue %dx.types.CBufRet.f32 %3275, 2
  %3287 = fmul fast float %3285, %3286
  %3288 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  br label %3293

; <label>:3289                                    ; preds = %3257
  %3290 = fmul fast float %3266, %3263
  %3291 = fmul fast float %3269, %3268
  %3292 = fmul fast float %3290, %3269
  br label %3293

; <label>:3293                                    ; preds = %3289, %3270
  %3294 = phi float [ %3283, %3270 ], [ %3267, %3289 ]
  %3295 = phi float [ %3288, %3270 ], [ %3291, %3289 ]
  %3296 = phi float [ 1.000000e+00, %3270 ], [ %3292, %3289 ]
  %3297 = fmul float %3269, %3294
  %3298 = fmul fast float %3269, %3259
  %3299 = fmul fast float %3269, %3260
  %3300 = fadd fast float %3259, %3258
  %3301 = select i1 %402, float %3300, float %3258
  %3302 = fmul float %3301, %3269
  %3303 = select i1 %402, float 0.000000e+00, float %3298
  %3304 = select i1 %402, float 0.000000e+00, float %3299
  %3305 = fmul fast float %3297, %3264
  %3306 = fmul fast float %3295, %3265
  %3307 = fmul fast float %3296, %3266
  %3308 = fadd fast float %3302, %3305
  %3309 = fadd fast float %3303, %3306
  %3310 = fadd fast float %3304, %3307
  %3311 = select i1 %402, float %3295, float %3309
  %3312 = select i1 %402, float %3296, float %3310
  %3313 = call float @dx.op.binary.f32(i32 36, float %3308, float 3.225500e+04)  ; FMin(a,b)
  %3314 = call float @dx.op.binary.f32(i32 36, float %3311, float 3.225500e+04)  ; FMin(a,b)
  %3315 = call float @dx.op.binary.f32(i32 36, float %3312, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3313)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3314)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3315)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

