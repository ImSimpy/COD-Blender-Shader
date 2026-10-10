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
; shader hash: b6cec1dc9e67a40803ce7460cb9e6e32
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
;                                   texture     u32          2d      T4     t64,space2     1
;                                   texture    byte         r/o      T5     t38,space1     1
;                                   texture    byte         r/o      T6     t39,space1     1
;                                   texture    byte         r/o      T7     t40,space1     1
;                                   texture     f32          2d      T8             t0     1
;                                   texture     u32          2d      T9             t1     1
;                                   texture     u32     2darray     T10     t11,space2     1
;                                   texture     f32     2darray     T11     t10,space2     1
;                                   texture     f32          2d     T12     t69,space2     1
;                                   texture    byte         r/o     T13     t16,space1     1
;                                   texture    byte         r/o     T14     t17,space1     1
;                                   texture     f32          2d     T15     t33,space2     1
;                                   texture     f32     2darray     T16     t16,space2     1
;                                   texture     f32          3d     T17     t15,space2     1
;                                   texture     f32          2d     T18     t13,space2     1
;                                   texture     u32          2d     T19     t17,space2     1
;                                   texture     f32          3d     T20     t18,space2     1
;                                   texture     f32          2d     T21     t58,space2     1
;                                   texture     f32          2d     T22     t59,space2     1
;                                   texture     f32          2d     T23     t60,space2     1
;                                   texture    byte         r/o     T24     t45,space1     1
;                                   texture    byte         r/o     T25     t46,space1     1
;                                   texture    byte         r/o     T26     t47,space1     1
;                                   texture    byte         r/o     T27     t48,space1     1
;                                   texture     f32          2d     T28     t57,space2     1
;                                   texture    byte         r/o     T29     t69,space1     1
;                                   texture     f32          2d     T30     t34,space2     1
;                                   texture    byte         r/o     T31     t10,space1     1
;                                   texture    byte         r/o     T32     t68,space1     1
;                                   texture     f32          2d     T33      t0,space2     1
;                                   texture    byte         r/o     T34     t11,space1     1
;                                   texture    byte         r/o     T35     t13,space1     1
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 64, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 65, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = fmul fast float %46, %43
  %48 = fmul fast float %46, %44
  %49 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %38, float %41, float %42, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = fcmp fast ogt float %50, -1.000000e+00
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = select i1 %51, float %53, float 1.000000e+00
  %55 = fadd fast float %50, 1.000000e+00
  %56 = fmul fast float %54, %55
  %57 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %47, 2.000000e+00
  %62 = fmul fast float %61, %59
  %63 = fmul fast float %48, 2.000000e+00
  %64 = fmul fast float %63, %60
  %65 = fsub fast float 1.000000e+00, %62
  %66 = fsub fast float 1.000000e+00, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fmul fast float %65, %68
  %72 = fmul fast float %65, %69
  %73 = fmul fast float %65, %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fmul fast float %66, %75
  %79 = fmul fast float %66, %76
  %80 = fmul fast float %66, %77
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fadd fast float %78, %82
  %86 = fadd fast float %85, %71
  %87 = fadd fast float %79, %83
  %88 = fadd fast float %87, %72
  %89 = fadd fast float %80, %84
  %90 = fadd fast float %89, %73
  %91 = fmul fast float %86, %57
  %92 = fmul fast float %88, %57
  %93 = fmul fast float %90, %57
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = fadd fast float %95, %91
  %98 = fadd fast float %96, %92
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = fsub fast float %97, %100
  %103 = fsub fast float %98, %101
  %104 = fptoui float %47 to i32
  %105 = fptoui float %48 to i32
  %106 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %28, i32 0, i32 %104, i32 %105, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = lshr i32 %107, 8
  %109 = and i32 %107, 255
  %110 = and i32 %108, 255
  %111 = uitofp i32 %109 to float
  %112 = uitofp i32 %110 to float
  %113 = fmul fast float %111, 0x3F80101020000000
  %114 = fmul fast float %112, 0x3F80101020000000
  %115 = fadd fast float %113, -1.000000e+00
  %116 = fadd fast float %114, -1.000000e+00
  %117 = call float @dx.op.unary.f32(i32 6, float %115)  ; FAbs(value)
  %118 = fsub fast float 1.000000e+00, %117
  %119 = call float @dx.op.unary.f32(i32 6, float %116)  ; FAbs(value)
  %120 = fsub fast float %118, %119
  %121 = fsub fast float -0.000000e+00, %120
  %122 = call float @dx.op.binary.f32(i32 35, float %121, float 0.000000e+00)  ; FMax(a,b)
  %123 = fcmp fast ogt float %115, 0.000000e+00
  %124 = fsub fast float -0.000000e+00, %122
  %125 = select i1 %123, float %124, float %122
  %126 = fadd fast float %125, %115
  %127 = fcmp fast ogt float %116, 0.000000e+00
  %128 = select i1 %127, float %124, float %122
  %129 = fadd fast float %128, %116
  %130 = call float @dx.op.dot3.f32(i32 55, float %126, float %129, float %120, float %126, float %129, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %131 = call float @dx.op.unary.f32(i32 25, float %130)  ; Rsqrt(value)
  %132 = fmul fast float %126, %131
  %133 = fmul fast float %129, %131
  %134 = fmul fast float %131, %120
  %135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.i32 %135, 0
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 126)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 130)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %146 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 131)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.i32 %147, 2
  %149 = uitofp i32 %148 to float
  %150 = fptoui float %149 to i32
  %151 = uitofp i32 %136 to float
  %152 = fptosi float %151 to i32
  %153 = fmul fast float %102, 0x3F3A027520000000
  %154 = fmul fast float %103, 0x3F3A027520000000
  %155 = add nsw i32 %152, -1
  %156 = fptosi float %154 to i32
  %157 = call i32 @dx.op.binary.i32(i32 37, i32 %156, i32 0)  ; IMax(a,b)
  %158 = call i32 @dx.op.binary.i32(i32 38, i32 %157, i32 %155)  ; IMin(a,b)
  %159 = fptosi float %153 to i32
  %160 = call i32 @dx.op.binary.i32(i32 37, i32 %159, i32 0)  ; IMax(a,b)
  %161 = call i32 @dx.op.binary.i32(i32 38, i32 %160, i32 %155)  ; IMin(a,b)
  %162 = mul nsw i32 %158, %152
  %163 = add nsw i32 %161, %162
  %164 = sdiv i32 %163, 4
  %165 = shl nsw i32 %164, 2
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = srem i32 %163, 4
  %169 = shl nsw i32 %168, 3
  %170 = and i32 %169, 24
  %171 = lshr i32 %167, %170
  %172 = and i32 %171, 255
  %173 = mul nuw nsw i32 %172, 12
  %174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = extractvalue %dx.types.ResRet.f32 %174, 1
  %177 = extractvalue %dx.types.ResRet.f32 %174, 2
  %178 = fsub fast float %102, %175
  %179 = fsub fast float %103, %176
  %180 = fdiv fast float %178, %177
  %181 = fdiv fast float %179, %177
  %182 = fmul fast float %146, 2.500000e+01
  %183 = extractvalue %dx.types.CBufRet.i32 %147, 1
  %184 = uitofp i32 %183 to float
  %185 = extractvalue %dx.types.CBufRet.i32 %135, 1
  %186 = extractvalue %dx.types.CBufRet.i32 %147, 0
  %187 = mul i32 %186, %185
  %188 = uitofp i32 %187 to float
  %189 = uitofp i32 %150 to float
  %190 = icmp eq i32 %172, 0
  %191 = shl nuw nsw i32 %172, 3
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = extractvalue %dx.types.ResRet.i32 %192, 1
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %203

; <label>:198                                     ; preds = %0
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = extractvalue %dx.types.ResRet.i32 %199, 1
  %202 = lshr i32 %201, 16
  br label %203

; <label>:203                                     ; preds = %198, %0
  %204 = phi i32 [ 0, %198 ], [ %172, %0 ]
  %205 = phi i32 [ %200, %198 ], [ %193, %0 ]
  %206 = phi i32 [ %201, %198 ], [ %194, %0 ]
  %207 = phi i32 [ %202, %198 ], [ %195, %0 ]
  %208 = and i32 %206, 65535
  %209 = lshr i32 %205, 16
  %210 = and i32 %205, 65535
  %211 = lshr i32 %207, 1
  %212 = uitofp i32 %211 to float
  %213 = icmp eq i32 %204, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %215 = bitcast float %214 to i32
  %216 = fdiv fast float %102, %146
  %217 = fdiv fast float %103, %146
  %218 = fptoui float %189 to i32
  %219 = fmul fast float %216, %182
  %220 = fmul fast float %217, %182
  %221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.i32 %221, 3
  %223 = and i32 %222, 2
  %224 = icmp ne i32 %223, 0
  %225 = select i1 %224, float 5.000000e-01, float 1.000000e+00
  %226 = call float @dx.op.unary.f32(i32 83, float %219)  ; DerivCoarseX(value)
  %227 = call float @dx.op.unary.f32(i32 83, float %220)  ; DerivCoarseX(value)
  %228 = fmul fast float %225, %226
  %229 = fmul fast float %225, %227
  %230 = call float @dx.op.unary.f32(i32 84, float %219)  ; DerivCoarseY(value)
  %231 = call float @dx.op.unary.f32(i32 84, float %220)  ; DerivCoarseY(value)
  %232 = fmul fast float %225, %230
  %233 = fmul fast float %231, %225
  %234 = call float @dx.op.dot2.f32(i32 54, float %228, float %229, float %228, float %229)  ; Dot2(ax,ay,bx,by)
  %235 = call float @dx.op.dot2.f32(i32 54, float %232, float %233, float %232, float %233)  ; Dot2(ax,ay,bx,by)
  %236 = call float @dx.op.binary.f32(i32 35, float %234, float %235)  ; FMax(a,b)
  %237 = call float @dx.op.unary.f32(i32 23, float %236)  ; Log(value)
  %238 = fmul fast float %237, 5.000000e-01
  %239 = call float @dx.op.binary.f32(i32 36, float %234, float %235)  ; FMin(a,b)
  %240 = call float @dx.op.unary.f32(i32 23, float %239)  ; Log(value)
  %241 = uitofp i32 %218 to float
  %242 = fsub fast float %237, %240
  %243 = fmul fast float %242, 5.000000e-01
  %244 = call float @dx.op.binary.f32(i32 36, float %243, float %241)  ; FMin(a,b)
  %245 = fmul fast float %244, %145
  %246 = fsub fast float %238, %245
  %247 = call float @dx.op.binary.f32(i32 35, float %246, float 0.000000e+00)  ; FMax(a,b)
  %248 = call float @dx.op.binary.f32(i32 36, float %247, float 2.400000e+01)  ; FMin(a,b)
  %249 = fadd fast float %248, %143
  %250 = call float @dx.op.unary.f32(i32 27, float %248)  ; Round_ni(value)
  %251 = fptosi float %250 to i32
  %252 = select i1 %190, i32 %215, i32 0
  %253 = sub nsw i32 %251, %252
  %254 = call i32 @dx.op.binary.i32(i32 37, i32 %253, i32 0)  ; IMax(a,b)
  %255 = call i32 @dx.op.binary.i32(i32 38, i32 %254, i32 8)  ; IMin(a,b)
  %256 = fmul fast float %180, 2.560000e+02
  %257 = fmul fast float %181, 2.560000e+02
  %258 = call float @dx.op.unary.f32(i32 27, float %256)  ; Round_ni(value)
  %259 = call float @dx.op.unary.f32(i32 27, float %257)  ; Round_ni(value)
  %260 = call float @dx.op.binary.f32(i32 35, float %258, float 0.000000e+00)  ; FMax(a,b)
  %261 = call float @dx.op.binary.f32(i32 35, float %259, float 0.000000e+00)  ; FMax(a,b)
  %262 = call float @dx.op.binary.f32(i32 36, float %260, float 2.550000e+02)  ; FMin(a,b)
  %263 = call float @dx.op.binary.f32(i32 36, float %261, float 2.550000e+02)  ; FMin(a,b)
  %264 = fptoui float %262 to i32
  %265 = fptoui float %263 to i32
  %266 = and i32 %255, 31
  %267 = lshr i32 %264, %266
  %268 = lshr i32 %265, %266
  %269 = shl i32 %255, 24
  %270 = shl nuw nsw i32 %172, 16
  %271 = or i32 %269, %270
  %272 = shl i32 %268, 8
  %273 = or i32 %271, %267
  %274 = or i32 %273, %272
  %275 = select i1 %213, float %216, float %180
  %276 = select i1 %213, float %217, float %181
  %277 = call float @dx.op.unary.f32(i32 27, float %249)  ; Round_ni(value)
  %278 = fptosi float %277 to i32
  %279 = sub nsw i32 8, %208
  %280 = select i1 %213, i32 %215, i32 %279
  %281 = sub nsw i32 %278, %280
  %282 = call i32 @dx.op.binary.i32(i32 37, i32 %281, i32 0)  ; IMax(a,b)
  %283 = call i32 @dx.op.binary.i32(i32 38, i32 %282, i32 %208)  ; IMin(a,b)
  %284 = fptoui float %212 to i32
  %285 = and i32 %283, 31
  %286 = lshr i32 %284, %285
  %287 = add i32 %286, -1
  %288 = uitofp i32 %287 to float
  %289 = uitofp i32 %286 to float
  %290 = fmul fast float %289, %275
  %291 = fmul fast float %289, %276
  %292 = call float @dx.op.unary.f32(i32 27, float %290)  ; Round_ni(value)
  %293 = call float @dx.op.unary.f32(i32 27, float %291)  ; Round_ni(value)
  %294 = call float @dx.op.binary.f32(i32 35, float %292, float 0.000000e+00)  ; FMax(a,b)
  %295 = call float @dx.op.binary.f32(i32 35, float %293, float 0.000000e+00)  ; FMax(a,b)
  %296 = call float @dx.op.binary.f32(i32 36, float %294, float %288)  ; FMin(a,b)
  %297 = call float @dx.op.binary.f32(i32 36, float %295, float %288)  ; FMin(a,b)
  %298 = fptoui float %296 to i32
  %299 = fptoui float %297 to i32
  %300 = lshr i32 %210, %285
  %301 = lshr i32 %209, %285
  %302 = add i32 %298, %300
  %303 = add i32 %299, %301
  %304 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %33, i32 %283, i32 %302, i32 %303, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = lshr i32 %305, 8
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = lshr i32 %305, 16
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fptoui float %313 to i32
  %315 = lshr i32 %305, 24
  %316 = uitofp i32 %315 to float
  %317 = fadd fast float %316, 1.000000e+00
  %318 = fptoui float %317 to i32
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, %275
  %321 = fmul fast float %319, %276
  %322 = add i32 %318, -1
  %323 = uitofp i32 %322 to float
  %324 = call float @dx.op.unary.f32(i32 27, float %320)  ; Round_ni(value)
  %325 = call float @dx.op.unary.f32(i32 27, float %321)  ; Round_ni(value)
  %326 = call float @dx.op.binary.f32(i32 35, float %324, float 0.000000e+00)  ; FMax(a,b)
  %327 = call float @dx.op.binary.f32(i32 35, float %325, float 0.000000e+00)  ; FMax(a,b)
  %328 = call float @dx.op.binary.f32(i32 36, float %326, float %323)  ; FMin(a,b)
  %329 = call float @dx.op.binary.f32(i32 36, float %327, float %323)  ; FMin(a,b)
  %330 = fsub fast float %320, %328
  %331 = fsub fast float %321, %329
  %332 = fadd fast float %184, 8.000000e+00
  %333 = fmul fast float %307, %332
  %334 = fmul fast float %310, %332
  %335 = fmul fast float %330, %184
  %336 = fmul fast float %331, %184
  %337 = fadd fast float %333, 4.500000e+00
  %338 = fadd fast float %337, %335
  %339 = fadd fast float %334, 4.500000e+00
  %340 = fadd fast float %339, %336
  %341 = fdiv fast float %338, %188
  %342 = fdiv fast float %340, %188
  %343 = and i32 %314, 31
  %344 = shl i32 1, %343
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, %188
  %347 = fdiv fast float 1.000000e+00, %346
  %348 = fmul fast float %347, %228
  %349 = fmul fast float %347, %229
  %350 = fmul fast float %347, %232
  %351 = fmul fast float %347, %233
  %352 = fmul fast float %138, %47
  %353 = fmul fast float %139, %48
  %354 = fadd fast float %140, %352
  %355 = fadd fast float %141, %353
  %356 = call float @dx.op.unary.f32(i32 27, float %354)  ; Round_ni(value)
  %357 = call float @dx.op.unary.f32(i32 27, float %355)  ; Round_ni(value)
  %358 = fptosi float %356 to i32
  %359 = fptosi float %357 to i32
  %360 = mul i32 %359, 240
  %361 = add i32 %360, %358
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %361, i32 0, i32 %274, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 3
  %365 = fmul fast float %363, %47
  %366 = fmul fast float %364, %48
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 114688
  %370 = icmp ne i32 %369, 0
  %371 = select i1 %370, float %365, float 0.000000e+00
  %372 = select i1 %370, float %366, float 0.000000e+00
  %373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %38, float %371, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = fmul fast float %374, 2.550000e+02
  %376 = fptoui float %375 to i32
  %377 = select i1 %370, i32 %376, i32 0
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.i32 %379, 3
  %381 = and i32 %380, 3
  %382 = icmp ne i32 %381, 0
  %383 = and i32 %380, 4
  %384 = icmp ne i32 %383, 0
  %385 = and i1 %382, %384
  br i1 %385, label %386, label %397

; <label>:386                                     ; preds = %203
  %387 = extractvalue %dx.types.CBufRet.f32 %378, 3
  %388 = fmul fast float %387, %48
  %389 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %390 = fmul fast float %389, %47
  %391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %37, float %390, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = fsub fast float 1.000000e+00, %392
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %396 = fcmp fast olt float %393, %395
  br label %400

; <label>:397                                     ; preds = %203
  %398 = icmp eq i32 %383, 0
  %399 = and i1 %382, %398
  br label %400

; <label>:400                                     ; preds = %397, %386
  %401 = phi i1 [ %396, %386 ], [ %399, %397 ]
  %402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %403 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %35, %dx.types.Handle %402, float %341, float %342, float undef, float undef, i32 0, i32 0, i32 undef, float %348, float %349, float undef, float %350, float %351, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = extractvalue %dx.types.ResRet.f32 %403, 1
  %406 = extractvalue %dx.types.ResRet.f32 %403, 2
  %407 = extractvalue %dx.types.ResRet.f32 %403, 3
  %408 = call float @dx.op.dot3.f32(i32 55, float %404, float %405, float %406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %409 = fmul fast float %408, 1.875000e-01
  %410 = fadd fast float %409, 0x3FE77AE140000000
  %411 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %412 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %34, %dx.types.Handle %402, float %341, float %342, float undef, float undef, i32 0, i32 0, i32 undef, float %348, float %349, float undef, float %350, float %351, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = extractvalue %dx.types.ResRet.f32 %412, 3
  %417 = fmul fast float %414, 2.000000e+00
  %418 = fadd fast float %417, -1.000000e+00
  %419 = fmul fast float %416, 2.000000e+00
  %420 = fadd fast float %419, -1.000000e+00
  %421 = fadd fast float %418, %420
  %422 = fmul fast float %421, 5.000000e-01
  %423 = fsub fast float %418, %420
  %424 = fmul fast float %423, 5.000000e-01
  %425 = call float @dx.op.unary.f32(i32 6, float %422)  ; FAbs(value)
  %426 = fsub fast float 1.000000e+00, %425
  %427 = call float @dx.op.unary.f32(i32 6, float %424)  ; FAbs(value)
  %428 = fsub fast float %426, %427
  %429 = call float @dx.op.dot3.f32(i32 55, float %422, float %424, float %428, float %422, float %424, float %428)  ; Dot3(ax,ay,az,bx,by,bz)
  %430 = call float @dx.op.unary.f32(i32 25, float %429)  ; Rsqrt(value)
  %431 = fmul fast float %422, %430
  %432 = fmul fast float %424, %430
  %433 = fmul fast float %430, %428
  %434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.f32 %434, 0
  %436 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %437 = fmul fast float %436, %132
  %438 = fsub fast float 1.000000e+00, %437
  %439 = fmul fast float %133, %436
  %440 = fsub fast float -0.000000e+00, %439
  %441 = fmul fast float %134, %436
  %442 = fsub fast float -0.000000e+00, %441
  %443 = call float @dx.op.dot3.f32(i32 55, float %438, float %440, float %442, float %438, float %440, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %444 = call float @dx.op.unary.f32(i32 25, float %443)  ; Rsqrt(value)
  %445 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %446 = fmul fast float %445, %133
  %447 = fmul fast float %132, %445
  %448 = fsub fast float -0.000000e+00, %447
  %449 = fsub fast float 1.000000e+00, %446
  %450 = fmul fast float %134, %445
  %451 = fsub fast float -0.000000e+00, %450
  %452 = call float @dx.op.dot3.f32(i32 55, float %448, float %449, float %451, float %448, float %449, float %451)  ; Dot3(ax,ay,az,bx,by,bz)
  %453 = call float @dx.op.unary.f32(i32 25, float %452)  ; Rsqrt(value)
  %454 = fmul fast float %433, %132
  %455 = fmul fast float %433, %133
  %456 = fmul fast float %433, %134
  %457 = fmul fast float %444, %431
  %458 = fmul fast float %457, %438
  %459 = fmul fast float %431, %440
  %460 = fmul fast float %459, %444
  %461 = fmul fast float %431, %442
  %462 = fmul fast float %461, %444
  %463 = fadd fast float %458, %454
  %464 = fadd fast float %460, %455
  %465 = fadd fast float %462, %456
  %466 = fmul fast float %432, %448
  %467 = fmul fast float %466, %453
  %468 = fmul fast float %453, %432
  %469 = fmul fast float %468, %449
  %470 = fmul fast float %432, %451
  %471 = fmul fast float %470, %453
  %472 = fadd fast float %463, %467
  %473 = fadd fast float %464, %469
  %474 = fadd fast float %465, %471
  %475 = call float @dx.op.dot3.f32(i32 55, float %472, float %473, float %474, float %472, float %473, float %474)  ; Dot3(ax,ay,az,bx,by,bz)
  %476 = call float @dx.op.unary.f32(i32 25, float %475)  ; Rsqrt(value)
  %477 = fmul fast float %472, %476
  %478 = fmul fast float %473, %476
  %479 = fmul fast float %474, %476
  %480 = call float @dx.op.unary.f32(i32 83, float %91)  ; DerivCoarseX(value)
  %481 = call float @dx.op.unary.f32(i32 83, float %92)  ; DerivCoarseX(value)
  %482 = call float @dx.op.unary.f32(i32 83, float %93)  ; DerivCoarseX(value)
  %483 = call float @dx.op.unary.f32(i32 84, float %91)  ; DerivCoarseY(value)
  %484 = call float @dx.op.unary.f32(i32 84, float %92)  ; DerivCoarseY(value)
  %485 = call float @dx.op.unary.f32(i32 84, float %93)  ; DerivCoarseY(value)
  %486 = fadd fast float %480, %91
  %487 = fadd fast float %481, %92
  %488 = fadd fast float %482, %93
  %489 = fadd fast float %483, %91
  %490 = fadd fast float %484, %92
  %491 = fadd fast float %485, %93
  %492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.f32 %492, 0
  %494 = extractvalue %dx.types.CBufRet.f32 %492, 1
  %495 = extractvalue %dx.types.CBufRet.f32 %492, 2
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 2
  %498 = extractvalue %dx.types.CBufRet.f32 %496, 3
  %499 = fmul fast float %493, %47
  %500 = fmul fast float %499, %497
  %501 = fmul fast float %494, %48
  %502 = fmul fast float %501, %498
  %503 = fptoui float %500 to i32
  %504 = fptoui float %502 to i32
  %505 = fadd fast float %493, -1.000000e+00
  %506 = fadd fast float %494, -1.000000e+00
  %507 = fptoui float %505 to i32
  %508 = fptoui float %506 to i32
  %509 = call i32 @dx.op.binary.i32(i32 40, i32 %503, i32 %507)  ; UMin(a,b)
  %510 = call i32 @dx.op.binary.i32(i32 40, i32 %504, i32 %508)  ; UMin(a,b)
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %513 = extractvalue %dx.types.CBufRet.f32 %511, 3
  %514 = fmul fast float %512, %57
  %515 = fsub fast float %514, %513
  %516 = fadd fast float %495, -1.000000e+00
  %517 = call float @dx.op.binary.f32(i32 36, float %515, float %516)  ; FMin(a,b)
  %518 = fptoui float %517 to i32
  %519 = fptoui float %493 to i32
  %520 = fptoui float %494 to i32
  %521 = mul i32 %518, %520
  %522 = add i32 %521, %510
  %523 = mul i32 %522, %519
  %524 = add i32 %523, %509
  %525 = shl i32 %524, 2
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = and i32 %527, 1023
  %529 = lshr i32 %527, 10
  %530 = icmp eq i32 %528, 0
  br i1 %530, label %960, label %531

; <label>:531                                     ; preds = %400
  %532 = and i32 %527, 1023
  br label %533

; <label>:533                                     ; preds = %620, %531
  %534 = phi float [ %621, %620 ], [ 0.000000e+00, %531 ]
  %535 = phi float [ %622, %620 ], [ %435, %531 ]
  %536 = phi float [ %623, %620 ], [ %411, %531 ]
  %537 = phi float [ %624, %620 ], [ 0.000000e+00, %531 ]
  %538 = phi float [ %625, %620 ], [ 0.000000e+00, %531 ]
  %539 = phi float [ %626, %620 ], [ 0.000000e+00, %531 ]
  %540 = phi float [ %627, %620 ], [ 0.000000e+00, %531 ]
  %541 = phi float [ %628, %620 ], [ 0.000000e+00, %531 ]
  %542 = phi float [ %629, %620 ], [ %477, %531 ]
  %543 = phi float [ %630, %620 ], [ %478, %531 ]
  %544 = phi float [ %631, %620 ], [ %479, %531 ]
  %545 = phi float [ %632, %620 ], [ %415, %531 ]
  %546 = phi float [ %633, %620 ], [ %413, %531 ]
  %547 = phi float [ %634, %620 ], [ 0.000000e+00, %531 ]
  %548 = phi float [ %635, %620 ], [ %407, %531 ]
  %549 = phi float [ %636, %620 ], [ %404, %531 ]
  %550 = phi float [ %637, %620 ], [ %405, %531 ]
  %551 = phi float [ %638, %620 ], [ %406, %531 ]
  %552 = phi i32 [ %618, %620 ], [ 0, %531 ]
  %553 = add nuw nsw i32 %552, %529
  %554 = shl i32 %553, 2
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = shl i32 %556, 8
  %558 = or i32 %557, 48
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = or i32 %557, 64
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = extractvalue %dx.types.ResRet.i32 %564, 1
  %567 = extractvalue %dx.types.ResRet.i32 %564, 2
  %568 = extractvalue %dx.types.ResRet.i32 %564, 3
  %569 = or i32 %557, 80
  %570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = extractvalue %dx.types.ResRet.f32 %570, 1
  %573 = extractvalue %dx.types.ResRet.f32 %570, 2
  %574 = extractvalue %dx.types.ResRet.f32 %570, 3
  %575 = or i32 %557, 96
  %576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = extractvalue %dx.types.ResRet.f32 %576, 1
  %579 = extractvalue %dx.types.ResRet.f32 %576, 2
  %580 = extractvalue %dx.types.ResRet.f32 %576, 3
  %581 = or i32 %557, 112
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = extractvalue %dx.types.ResRet.f32 %582, 1
  %585 = extractvalue %dx.types.ResRet.f32 %582, 2
  %586 = extractvalue %dx.types.ResRet.f32 %582, 3
  %587 = or i32 %557, 128
  %588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = extractvalue %dx.types.ResRet.f32 %588, 3
  %593 = or i32 %557, 144
  %594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = extractvalue %dx.types.ResRet.f32 %594, 1
  %597 = extractvalue %dx.types.ResRet.f32 %594, 2
  %598 = extractvalue %dx.types.ResRet.f32 %594, 3
  %599 = or i32 %557, 160
  %600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = extractvalue %dx.types.ResRet.f32 %600, 3
  %605 = or i32 %557, 192
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = or i32 %557, 208
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = or i32 %557, 240
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = or i32 %557, 248
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = add nuw nsw i32 %552, 1
  %619 = icmp eq i32 %613, 0
  br i1 %619, label %620, label %640

; <label>:620                                     ; preds = %946, %765, %691, %640, %533
  %621 = phi float [ %534, %533 ], [ %534, %691 ], [ %768, %765 ], [ %768, %946 ], [ %534, %640 ]
  %622 = phi float [ %535, %533 ], [ %535, %691 ], [ %535, %765 ], [ %921, %946 ], [ %535, %640 ]
  %623 = phi float [ %536, %533 ], [ %536, %691 ], [ %536, %765 ], [ %919, %946 ], [ %536, %640 ]
  %624 = phi float [ %537, %533 ], [ %537, %691 ], [ %537, %765 ], [ %891, %946 ], [ %537, %640 ]
  %625 = phi float [ %538, %533 ], [ %538, %691 ], [ %538, %765 ], [ %889, %946 ], [ %538, %640 ]
  %626 = phi float [ %539, %533 ], [ %539, %691 ], [ %539, %765 ], [ %956, %946 ], [ %539, %640 ]
  %627 = phi float [ %540, %533 ], [ %540, %691 ], [ %540, %765 ], [ %957, %946 ], [ %540, %640 ]
  %628 = phi float [ %541, %533 ], [ %541, %691 ], [ %541, %765 ], [ %958, %946 ], [ %541, %640 ]
  %629 = phi float [ %542, %533 ], [ %542, %691 ], [ %542, %765 ], [ %870, %946 ], [ %542, %640 ]
  %630 = phi float [ %543, %533 ], [ %543, %691 ], [ %543, %765 ], [ %871, %946 ], [ %543, %640 ]
  %631 = phi float [ %544, %533 ], [ %544, %691 ], [ %544, %765 ], [ %872, %946 ], [ %544, %640 ]
  %632 = phi float [ %545, %533 ], [ %545, %691 ], [ %545, %765 ], [ %899, %946 ], [ %545, %640 ]
  %633 = phi float [ %546, %533 ], [ %546, %691 ], [ %546, %765 ], [ %896, %946 ], [ %546, %640 ]
  %634 = phi float [ %547, %533 ], [ %547, %691 ], [ %547, %765 ], [ %893, %946 ], [ %547, %640 ]
  %635 = phi float [ %548, %533 ], [ %548, %691 ], [ %548, %765 ], [ %887, %946 ], [ %548, %640 ]
  %636 = phi float [ %549, %533 ], [ %549, %691 ], [ %549, %765 ], [ %882, %946 ], [ %549, %640 ]
  %637 = phi float [ %550, %533 ], [ %550, %691 ], [ %550, %765 ], [ %883, %946 ], [ %550, %640 ]
  %638 = phi float [ %551, %533 ], [ %551, %691 ], [ %551, %765 ], [ %884, %946 ], [ %551, %640 ]
  %639 = icmp eq i32 %618, %532
  br i1 %639, label %959, label %533

; <label>:640                                     ; preds = %533
  %641 = extractvalue %dx.types.ResRet.f32 %559, 3
  %642 = bitcast float %641 to i32
  %643 = and i32 %642, 2560
  %644 = icmp eq i32 %643, 0
  %645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  %647 = extractvalue %dx.types.ResRet.f32 %645, 1
  %648 = extractvalue %dx.types.ResRet.f32 %645, 2
  %649 = extractvalue %dx.types.ResRet.f32 %645, 3
  %650 = call float @dx.op.dot4.f32(i32 56, float %646, float %647, float %648, float %649, float %91, float %92, float %93, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %651 = or i32 %557, 16
  %652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = extractvalue %dx.types.ResRet.f32 %652, 1
  %655 = extractvalue %dx.types.ResRet.f32 %652, 2
  %656 = extractvalue %dx.types.ResRet.f32 %652, 3
  %657 = call float @dx.op.dot4.f32(i32 56, float %653, float %654, float %655, float %656, float %91, float %92, float %93, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %658 = or i32 %557, 32
  %659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = extractvalue %dx.types.ResRet.f32 %659, 1
  %662 = extractvalue %dx.types.ResRet.f32 %659, 2
  %663 = extractvalue %dx.types.ResRet.f32 %659, 3
  %664 = call float @dx.op.dot4.f32(i32 56, float %660, float %661, float %662, float %663, float %91, float %92, float %93, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %665 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %666 = call float @dx.op.unary.f32(i32 6, float %665)  ; FAbs(value)
  %667 = call float @dx.op.unary.f32(i32 27, float %657)  ; Round_ni(value)
  %668 = call float @dx.op.unary.f32(i32 6, float %667)  ; FAbs(value)
  %669 = call float @dx.op.unary.f32(i32 6, float %664)  ; FAbs(value)
  %670 = call float @dx.op.unary.f32(i32 27, float %669)  ; Round_ni(value)
  %671 = fadd fast float %668, %666
  %672 = fadd fast float %671, %670
  %673 = fcmp fast oeq float %672, 0.000000e+00
  %674 = call float @dx.op.dot4.f32(i32 56, float %646, float %647, float %648, float %649, float %486, float %487, float %488, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %675 = call float @dx.op.dot4.f32(i32 56, float %653, float %654, float %655, float %656, float %486, float %487, float %488, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %676 = call float @dx.op.dot4.f32(i32 56, float %646, float %647, float %648, float %649, float %489, float %490, float %491, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %677 = call float @dx.op.dot4.f32(i32 56, float %653, float %654, float %655, float %656, float %489, float %490, float %491, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %678 = fsub fast float %674, %650
  %679 = fsub fast float %676, %650
  %680 = fsub fast float %675, %657
  %681 = fsub fast float %677, %657
  %682 = call float @dx.op.dot3.f32(i32 55, float %560, float %561, float %562, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 2
  %685 = fadd fast float %684, %682
  %686 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %687 = extractvalue %dx.types.CBufRet.f32 %683, 0
  %688 = fcmp fast ogt float %686, %687
  %689 = and i1 %673, %688
  %690 = and i1 %644, %689
  br i1 %690, label %691, label %620

; <label>:691                                     ; preds = %640
  %692 = add i32 %568, 0
  %693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %692, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %695 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %693, %dx.types.Handle %694, float %650, float %657, float undef, float undef, i32 0, i32 0, i32 undef, float %678, float %680, float undef, float %679, float %681, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = fmul fast float %696, %571
  %698 = fadd fast float %697, %572
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %700 = fmul fast float %650, %577
  %701 = call float @dx.op.tertiary.f32(i32 46, float %578, float %657, float %700)  ; FMad(a,b,c)
  %702 = fadd fast float %701, %583
  %703 = fmul fast float %650, %579
  %704 = call float @dx.op.tertiary.f32(i32 46, float %580, float %657, float %703)  ; FMad(a,b,c)
  %705 = fadd fast float %704, %584
  %706 = fmul fast float %678, %577
  %707 = call float @dx.op.tertiary.f32(i32 46, float %578, float %680, float %706)  ; FMad(a,b,c)
  %708 = fmul fast float %678, %579
  %709 = call float @dx.op.tertiary.f32(i32 46, float %580, float %680, float %708)  ; FMad(a,b,c)
  %710 = fmul fast float %679, %577
  %711 = call float @dx.op.tertiary.f32(i32 46, float %578, float %681, float %710)  ; FMad(a,b,c)
  %712 = fmul fast float %679, %579
  %713 = call float @dx.op.tertiary.f32(i32 46, float %580, float %681, float %712)  ; FMad(a,b,c)
  %714 = add i32 %567, 0
  %715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %714, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %716 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %715, %dx.types.Handle %694, float %702, float %705, float undef, float undef, i32 0, i32 0, i32 undef, float %707, float %709, float undef, float %711, float %713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = and i32 %642, 1024
  %719 = icmp ne i32 %718, 0
  %720 = fcmp fast ogt float %717, 0x3FE0101020000000
  %721 = uitofp i1 %720 to float
  %722 = select i1 %719, float %721, float %717
  %723 = and i32 %642, 8192
  %724 = icmp ne i32 %723, 0
  %725 = select i1 %724, float %586, float 1.000000e+00
  %726 = fmul fast float %650, 2.000000e+00
  %727 = fadd fast float %726, -1.000000e+00
  %728 = call float @dx.op.unary.f32(i32 6, float %727)  ; FAbs(value)
  %729 = fmul fast float %728, %616
  %730 = fsub fast float %729, %616
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %732 = fmul fast float %657, 2.000000e+00
  %733 = fadd fast float %732, -1.000000e+00
  %734 = call float @dx.op.unary.f32(i32 6, float %733)  ; FAbs(value)
  %735 = fmul fast float %734, %617
  %736 = fsub fast float %735, %617
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %738 = fmul fast float %669, %573
  %739 = fsub fast float %738, %573
  %740 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  %741 = fmul fast float %699, %725
  %742 = fmul fast float %741, %696
  %743 = fmul fast float %742, %731
  %744 = fmul fast float %743, %722
  %745 = fmul fast float %744, %737
  %746 = fmul fast float %745, %740
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %750 = fsub fast float %686, %749
  %751 = fmul fast float %750, %748
  %752 = call float @dx.op.unary.f32(i32 7, float %751)  ; Saturate(value)
  %753 = fmul fast float %746, %574
  %754 = fadd fast float %746, %574
  %755 = fmul fast float %754, %585
  %756 = fsub fast float %755, %585
  %757 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %758 = and i32 %642, 128
  %759 = icmp ne i32 %758, 0
  %760 = select i1 %759, float %757, float %753
  %761 = fmul fast float %760, %752
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 0
  %764 = fcmp fast ugt float %761, %763
  br i1 %764, label %765, label %620

; <label>:765                                     ; preds = %691
  %766 = select i1 %724, float %761, float 0.000000e+00
  %767 = fadd fast float %766, %534
  %768 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  br i1 %724, label %620, label %769

; <label>:769                                     ; preds = %765
  %770 = and i32 %642, 4
  %771 = and i32 %642, 8
  %772 = add i32 %565, 0
  %773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %772, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %774 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %773, %dx.types.Handle %402, float %702, float %705, float undef, float undef, i32 0, i32 0, i32 undef, float %707, float %709, float undef, float %711, float %713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = extractvalue %dx.types.ResRet.f32 %774, 3
  %779 = bitcast float %598 to i32
  %780 = and i32 %779, 255
  %781 = uitofp i32 %780 to float
  %782 = lshr i32 %779, 8
  %783 = and i32 %782, 255
  %784 = uitofp i32 %783 to float
  %785 = fmul fast float %778, %781
  %786 = fadd fast float %785, %784
  %787 = fmul fast float %786, 0x3F70101000000000
  %788 = add i32 %566, 0
  %789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %788, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %790 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %789, %dx.types.Handle %402, float %702, float %705, float undef, float undef, i32 0, i32 0, i32 undef, float %707, float %709, float undef, float %711, float %713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = extractvalue %dx.types.ResRet.f32 %790, 1
  %793 = extractvalue %dx.types.ResRet.f32 %790, 2
  %794 = extractvalue %dx.types.ResRet.f32 %790, 3
  %795 = bitcast float %592 to i32
  %796 = and i32 %795, 255
  %797 = uitofp i32 %796 to float
  %798 = lshr i32 %795, 8
  %799 = and i32 %798, 255
  %800 = uitofp i32 %799 to float
  %801 = lshr i32 %795, 16
  %802 = and i32 %801, 255
  %803 = uitofp i32 %802 to float
  %804 = fmul fast float %803, 0x3F70101000000000
  %805 = fmul fast float %791, %797
  %806 = fadd fast float %805, %800
  %807 = fmul fast float %806, 0x3F70101000000000
  %808 = fadd fast float %792, -5.000000e-01
  %809 = fadd fast float %794, -5.000000e-01
  %810 = fmul fast float %808, %804
  %811 = fmul fast float %809, %804
  %812 = fadd fast float %810, 5.000000e-01
  %813 = fadd fast float %811, 5.000000e-01
  %814 = fmul fast float %775, %601
  %815 = fmul fast float %776, %602
  %816 = fmul fast float %777, %603
  %817 = fmul fast float %812, 2.000000e+00
  %818 = fadd fast float %817, -1.000000e+00
  %819 = fmul fast float %813, 2.000000e+00
  %820 = fadd fast float %819, -1.000000e+00
  %821 = fadd fast float %818, %820
  %822 = fmul fast float %821, 5.000000e-01
  %823 = fsub fast float %818, %820
  %824 = fmul fast float %823, 5.000000e-01
  %825 = call float @dx.op.unary.f32(i32 6, float %822)  ; FAbs(value)
  %826 = fsub fast float 1.000000e+00, %825
  %827 = call float @dx.op.unary.f32(i32 6, float %824)  ; FAbs(value)
  %828 = fsub fast float %826, %827
  %829 = call float @dx.op.dot3.f32(i32 55, float %822, float %824, float %828, float %822, float %824, float %828)  ; Dot3(ax,ay,az,bx,by,bz)
  %830 = call float @dx.op.unary.f32(i32 25, float %829)  ; Rsqrt(value)
  %831 = fmul fast float %822, %830
  %832 = fmul fast float %824, %830
  %833 = fmul fast float %830, %828
  %834 = fmul fast float %833, %560
  %835 = fmul fast float %833, %561
  %836 = fmul fast float %833, %562
  %837 = fmul fast float %831, %589
  %838 = fmul fast float %831, %590
  %839 = fmul fast float %831, %591
  %840 = fadd fast float %837, %834
  %841 = fadd fast float %838, %835
  %842 = fadd fast float %839, %836
  %843 = fmul fast float %832, %595
  %844 = fmul fast float %832, %596
  %845 = fmul fast float %832, %597
  %846 = fadd fast float %840, %843
  %847 = fadd fast float %841, %844
  %848 = fadd fast float %842, %845
  %849 = call float @dx.op.dot3.f32(i32 55, float %846, float %847, float %848, float %846, float %847, float %848)  ; Dot3(ax,ay,az,bx,by,bz)
  %850 = call float @dx.op.unary.f32(i32 25, float %849)  ; Rsqrt(value)
  %851 = fmul fast float %846, %850
  %852 = fmul fast float %847, %850
  %853 = fmul fast float %848, %850
  %854 = icmp ne i32 %771, 0
  %855 = select i1 %854, float 1.000000e+00, float 0.000000e+00
  %856 = fmul fast float %761, %855
  %857 = and i32 %642, 1
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %859, label %863

; <label>:859                                     ; preds = %769
  %860 = fsub fast float %851, %542
  %861 = fsub fast float %852, %543
  %862 = fsub fast float %853, %544
  br label %863

; <label>:863                                     ; preds = %859, %769
  %864 = phi float [ %860, %859 ], [ %851, %769 ]
  %865 = phi float [ %861, %859 ], [ %852, %769 ]
  %866 = phi float [ %862, %859 ], [ %853, %769 ]
  %867 = fmul float %866, %856
  %868 = fmul float %865, %856
  %869 = fmul float %864, %856
  %870 = fadd fast float %869, %542
  %871 = fadd fast float %868, %543
  %872 = fadd fast float %867, %544
  %873 = icmp ne i32 %770, 0
  %874 = select i1 %873, float 1.000000e+00, float 0.000000e+00
  %875 = fmul fast float %761, %874
  %876 = fsub fast float %814, %549
  %877 = fsub fast float %815, %550
  %878 = fsub fast float %816, %551
  %879 = fmul fast float %876, %875
  %880 = fmul fast float %877, %875
  %881 = fmul fast float %878, %875
  %882 = fadd fast float %879, %549
  %883 = fadd fast float %880, %550
  %884 = fadd fast float %881, %551
  %885 = fsub fast float %787, %548
  %886 = fmul fast float %885, %875
  %887 = fadd fast float %886, %548
  %888 = fmul fast float %875, %538
  %889 = fsub fast float %538, %888
  %890 = fmul fast float %875, %537
  %891 = fsub fast float %537, %890
  %892 = fadd fast float %761, %547
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %894 = fsub fast float %807, %546
  %895 = fmul fast float %894, %856
  %896 = fadd fast float %895, %546
  %897 = fsub fast float %793, %545
  %898 = fmul fast float %897, %856
  %899 = fadd fast float %898, %545
  %900 = call float @dx.op.dot3.f32(i32 55, float %814, float %815, float %816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 0
  %903 = extractvalue %dx.types.CBufRet.f32 %901, 1
  %904 = fmul fast float %903, %900
  %905 = fadd fast float %904, %902
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = bitcast float %604 to i32
  %908 = and i32 %907, 65535
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  %910 = lshr i32 %907, 16
  %911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %910)  ; LegacyF16ToF32(value)
  %912 = fcmp fast oge float %909, 0.000000e+00
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = select i1 %912, float %909, float %914
  %916 = fadd fast float %915, %911
  %917 = fsub fast float %906, %536
  %918 = fmul fast float %917, %761
  %919 = fadd fast float %918, %536
  %920 = fmul fast float %916, %761
  %921 = call float @dx.op.binary.f32(i32 35, float %535, float %920)  ; FMax(a,b)
  %922 = and i32 %642, 16
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %946, label %924

; <label>:924                                     ; preds = %863
  %925 = bitcast float %610 to i32
  %926 = add i32 %607, 0
  %927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %926, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %928 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %927, %dx.types.Handle %402, float %702, float %705, float undef, float undef, i32 0, i32 0, i32 undef, float %707, float %709, float undef, float %711, float %713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = extractvalue %dx.types.ResRet.f32 %928, 1
  %931 = extractvalue %dx.types.ResRet.f32 %928, 2
  %932 = and i32 %925, 65535
  %933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %932)  ; LegacyF16ToF32(value)
  %934 = fmul fast float %929, %601
  %935 = fmul fast float %930, %602
  %936 = fmul fast float %931, %603
  %937 = and i32 %642, 16384
  %938 = icmp ne i32 %937, 0
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 0
  %941 = select i1 %938, float %940, float 1.000000e+00
  %942 = fmul fast float %941, %933
  %943 = fmul fast float %934, %942
  %944 = fmul fast float %935, %942
  %945 = fmul fast float %936, %942
  br label %946

; <label>:946                                     ; preds = %924, %863
  %947 = phi float [ %943, %924 ], [ 0.000000e+00, %863 ]
  %948 = phi float [ %944, %924 ], [ 0.000000e+00, %863 ]
  %949 = phi float [ %945, %924 ], [ 0.000000e+00, %863 ]
  %950 = fsub fast float %947, %539
  %951 = fsub fast float %948, %540
  %952 = fsub fast float %949, %541
  %953 = fmul fast float %950, %761
  %954 = fmul fast float %951, %761
  %955 = fmul fast float %952, %761
  %956 = fadd fast float %953, %539
  %957 = fadd fast float %954, %540
  %958 = fadd fast float %955, %541
  br label %620

; <label>:959                                     ; preds = %620
  br label %960

; <label>:960                                     ; preds = %959, %400
  %961 = phi float [ 0.000000e+00, %400 ], [ %621, %959 ]
  %962 = phi float [ %435, %400 ], [ %622, %959 ]
  %963 = phi float [ %411, %400 ], [ %623, %959 ]
  %964 = phi float [ 0.000000e+00, %400 ], [ %624, %959 ]
  %965 = phi float [ 0.000000e+00, %400 ], [ %625, %959 ]
  %966 = phi float [ 0.000000e+00, %400 ], [ %626, %959 ]
  %967 = phi float [ 0.000000e+00, %400 ], [ %627, %959 ]
  %968 = phi float [ 0.000000e+00, %400 ], [ %628, %959 ]
  %969 = phi float [ %477, %400 ], [ %629, %959 ]
  %970 = phi float [ %478, %400 ], [ %630, %959 ]
  %971 = phi float [ %479, %400 ], [ %631, %959 ]
  %972 = phi float [ %415, %400 ], [ %632, %959 ]
  %973 = phi float [ %413, %400 ], [ %633, %959 ]
  %974 = phi float [ 0.000000e+00, %400 ], [ %634, %959 ]
  %975 = phi float [ %407, %400 ], [ %635, %959 ]
  %976 = phi float [ %404, %400 ], [ %636, %959 ]
  %977 = phi float [ %405, %400 ], [ %637, %959 ]
  %978 = phi float [ %406, %400 ], [ %638, %959 ]
  %979 = call float @dx.op.dot3.f32(i32 55, float %969, float %970, float %971, float %969, float %970, float %971)  ; Dot3(ax,ay,az,bx,by,bz)
  %980 = call float @dx.op.unary.f32(i32 25, float %979)  ; Rsqrt(value)
  %981 = fmul fast float %980, %969
  %982 = fmul fast float %980, %970
  %983 = fmul fast float %980, %971
  %984 = fadd fast float %974, 1.000000e+00
  %985 = call float @dx.op.unary.f32(i32 7, float %984)  ; Saturate(value)
  %986 = call float @dx.op.dot3.f32(i32 55, float %981, float %982, float %983, float %981, float %982, float %983)  ; Dot3(ax,ay,az,bx,by,bz)
  %987 = call float @dx.op.unary.f32(i32 25, float %986)  ; Rsqrt(value)
  %988 = fmul fast float %987, %981
  %989 = fmul fast float %987, %982
  %990 = fmul fast float %987, %983
  %991 = fadd fast float %975, 0xBFB99999A0000000
  %992 = call float @dx.op.unary.f32(i32 7, float %991)  ; Saturate(value)
  %993 = fmul fast float %992, 0x3FF1C71C80000000
  %994 = call float @dx.op.binary.f32(i32 36, float %975, float 0x3FB99999A0000000)  ; FMin(a,b)
  %995 = fsub fast float 1.000000e+00, %993
  %996 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %997 = fmul fast float %996, %976
  %998 = fmul fast float %996, %977
  %999 = fmul fast float %996, %978
  %1000 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %1001 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1002 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1003 = fmul fast float %993, %976
  %1004 = fmul fast float %993, %977
  %1005 = fmul fast float %993, %978
  %1006 = fadd fast float %1003, %994
  %1007 = fadd fast float %1004, %994
  %1008 = fadd fast float %1005, %994
  %1009 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1010 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1011 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1012 = call float @dx.op.unary.f32(i32 7, float %973)  ; Saturate(value)
  %1013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.i32 %1013, 3
  %1015 = and i32 %1014, 8
  %1016 = icmp ne i32 %1015, 0
  %1017 = call float @dx.op.binary.f32(i32 35, float %1000, float %976)  ; FMax(a,b)
  %1018 = call float @dx.op.binary.f32(i32 35, float %1001, float %976)  ; FMax(a,b)
  %1019 = call float @dx.op.binary.f32(i32 35, float %1002, float %976)  ; FMax(a,b)
  %1020 = call float @dx.op.dot3.f32(i32 55, float %1000, float %1001, float %1002, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1021 = select i1 %401, float %976, float %1000
  %1022 = select i1 %401, float %1020, float %1001
  %1023 = select i1 %401, float 1.000000e+00, float %1002
  %1024 = select i1 %1016, float %1017, float %1021
  %1025 = select i1 %1016, float %1018, float %1022
  %1026 = select i1 %1016, float %1019, float %1023
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.CBufRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  %1031 = fadd fast float %1028, %91
  %1032 = fadd fast float %1029, %92
  %1033 = fadd fast float %1030, %93
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1037 = fsub fast float %1031, %1035
  %1038 = fsub fast float %1032, %1036
  %1039 = fmul fast float %1037, %1037
  %1040 = fmul fast float %1038, %1038
  %1041 = fadd fast float %1039, %1040
  %1042 = call float @dx.op.unary.f32(i32 24, float %1041)  ; Sqrt(value)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1034, 2
  %1044 = fcmp fast olt float %1042, %1043
  br i1 %1044, label %1045, label %1112

; <label>:1045                                    ; preds = %960
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 0
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 0
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.f32 %1046, 1
  %1053 = extractvalue %dx.types.CBufRet.f32 %1048, 1
  %1054 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1055 = extractvalue %dx.types.CBufRet.f32 %1046, 3
  %1056 = extractvalue %dx.types.CBufRet.f32 %1048, 3
  %1057 = extractvalue %dx.types.CBufRet.f32 %1050, 3
  %1058 = fadd fast float %1055, %1031
  %1059 = fadd fast float %1056, %1032
  %1060 = fadd fast float %1057, %1033
  %1061 = fmul fast float %1058, %1047
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %1059, float %1049, float %1061)  ; FMad(a,b,c)
  %1063 = call float @dx.op.tertiary.f32(i32 46, float %1060, float %1051, float %1062)  ; FMad(a,b,c)
  %1064 = fmul fast float %1058, %1052
  %1065 = call float @dx.op.tertiary.f32(i32 46, float %1059, float %1053, float %1064)  ; FMad(a,b,c)
  %1066 = call float @dx.op.tertiary.f32(i32 46, float %1060, float %1054, float %1065)  ; FMad(a,b,c)
  %1067 = fsub fast float %1063, %1055
  %1068 = fsub fast float %1066, %1056
  %1069 = fsub fast float %1067, %1035
  %1070 = fadd fast float %1069, %1043
  %1071 = fsub fast float %1068, %1036
  %1072 = fadd fast float %1071, %1043
  %1073 = extractvalue %dx.types.CBufRet.f32 %1034, 3
  %1074 = fmul fast float %1070, %1073
  %1075 = fmul fast float %1072, %1073
  %1076 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1077 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1078 = fsub fast float 1.000000e+00, %1076
  %1079 = fsub fast float 1.000000e+00, %1077
  %1080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %37, float %1078, float %1079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = fcmp fast ugt float %1081, 0.000000e+00
  br i1 %1082, label %1083, label %1386

; <label>:1083                                    ; preds = %1045
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1086 = fmul fast float %1085, %1081
  %1087 = extractvalue %dx.types.CBufRet.f32 %1084, 3
  %1088 = fadd fast float %1087, %1086
  %1089 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1090 = fadd fast float %1088, %1057
  %1091 = fmul fast float %1063, %1051
  %1092 = call float @dx.op.tertiary.f32(i32 46, float %1066, float %1054, float %1091)  ; FMad(a,b,c)
  %1093 = call float @dx.op.tertiary.f32(i32 46, float %1090, float %1089, float %1092)  ; FMad(a,b,c)
  %1094 = fsub fast float %1093, %1057
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 2
  %1097 = fsub fast float %1094, %1096
  %1098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %37, float %1078, float %1079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.ResRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.ResRet.f32 %1098, 2
  %1102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %37, float %1078, float %1079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1106 = fadd fast float %1103, %1099
  %1107 = fmul fast float %1106, 0x3F847AE140000000
  %1108 = fadd fast float %1104, %1100
  %1109 = fmul fast float %1108, 0x3F847AE140000000
  %1110 = fadd fast float %1105, %1101
  %1111 = fmul fast float %1110, 0x3F847AE140000000
  br label %1386

; <label>:1112                                    ; preds = %960
  %1113 = and i32 %377, 1
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1386, label %1115

; <label>:1115                                    ; preds = %1112
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1123 = extractvalue %dx.types.CBufRet.f32 %1118, 1
  %1124 = extractvalue %dx.types.CBufRet.f32 %1120, 1
  %1125 = extractvalue %dx.types.CBufRet.f32 %1116, 3
  %1126 = extractvalue %dx.types.CBufRet.f32 %1118, 3
  %1127 = extractvalue %dx.types.CBufRet.f32 %1120, 3
  %1128 = fadd fast float %1125, %1031
  %1129 = fadd fast float %1126, %1032
  %1130 = fadd fast float %1127, %1033
  %1131 = fmul fast float %1128, %1117
  %1132 = call float @dx.op.tertiary.f32(i32 46, float %1129, float %1119, float %1131)  ; FMad(a,b,c)
  %1133 = call float @dx.op.tertiary.f32(i32 46, float %1130, float %1121, float %1132)  ; FMad(a,b,c)
  %1134 = fmul fast float %1128, %1122
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %1129, float %1123, float %1134)  ; FMad(a,b,c)
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %1130, float %1124, float %1135)  ; FMad(a,b,c)
  %1137 = fsub fast float %1133, %1125
  %1138 = fsub fast float %1136, %1126
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.CBufRet.f32 %1139, 2
  %1143 = extractvalue %dx.types.CBufRet.f32 %1139, 3
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 3
  %1146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.i32 %1146, 0
  %1148 = extractvalue %dx.types.CBufRet.i32 %1146, 1
  %1149 = udiv i32 %1148, %1147
  %1150 = fsub fast float %1137, %1140
  %1151 = fsub fast float %1138, %1141
  %1152 = call float @dx.op.binary.f32(i32 35, float %1150, float 0.000000e+00)  ; FMax(a,b)
  %1153 = call float @dx.op.binary.f32(i32 35, float %1151, float 0.000000e+00)  ; FMax(a,b)
  %1154 = call float @dx.op.binary.f32(i32 36, float %1152, float %1142)  ; FMin(a,b)
  %1155 = call float @dx.op.binary.f32(i32 36, float %1153, float %1143)  ; FMin(a,b)
  %1156 = add i32 %1147, -1
  %1157 = add i32 %1149, -1
  %1158 = fmul fast float %1154, %1145
  %1159 = fmul fast float %1155, %1145
  %1160 = fptoui float %1158 to i32
  %1161 = fptoui float %1159 to i32
  %1162 = call i32 @dx.op.binary.i32(i32 40, i32 %1160, i32 %1156)  ; UMin(a,b)
  %1163 = call i32 @dx.op.binary.i32(i32 40, i32 %1161, i32 %1157)  ; UMin(a,b)
  %1164 = mul i32 %1163, %1147
  %1165 = add i32 %1164, %1162
  %1166 = shl i32 %1165, 2
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = icmp eq i32 %1168, -1
  br i1 %1169, label %1386, label %1170

; <label>:1170                                    ; preds = %1115
  %1171 = mul i32 %1168, 148
  %1172 = add i32 %1171, 4
  %1173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = add i32 %1171, 8
  %1176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = add i32 %1171, 36
  %1179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = add i32 %1171, 60
  %1182 = add i32 %1171, 92
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = add i32 %1171, 116
  %1186 = fsub fast float %1137, %1174
  %1187 = fsub fast float %1138, %1177
  %1188 = fmul fast float %1145, %1186
  %1189 = fmul fast float %1145, %1187
  %1190 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1191 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1192 = fsub fast float 1.000000e+00, %1191
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 2
  %1195 = call float @dx.op.unary.f32(i32 83, float %1190)  ; DerivCoarseX(value)
  %1196 = call float @dx.op.unary.f32(i32 83, float %1192)  ; DerivCoarseX(value)
  %1197 = call float @dx.op.unary.f32(i32 84, float %1190)  ; DerivCoarseY(value)
  %1198 = call float @dx.op.unary.f32(i32 84, float %1192)  ; DerivCoarseY(value)
  %1199 = fmul fast float %1195, %1194
  %1200 = fmul fast float %1196, %1194
  %1201 = fmul fast float %1197, %1194
  %1202 = fmul fast float %1198, %1194
  %1203 = call float @dx.op.dot2.f32(i32 54, float %1201, float %1202, float %1201, float %1202)  ; Dot2(ax,ay,bx,by)
  %1204 = call float @dx.op.dot2.f32(i32 54, float %1199, float %1200, float %1199, float %1200)  ; Dot2(ax,ay,bx,by)
  %1205 = call float @dx.op.binary.f32(i32 35, float %1204, float %1203)  ; FMax(a,b)
  %1206 = call float @dx.op.unary.f32(i32 23, float %1205)  ; Log(value)
  %1207 = fmul fast float %1206, 5.000000e-01
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1210 = fadd fast float %1209, %1207
  %1211 = call float @dx.op.binary.f32(i32 35, float %1210, float 0.000000e+00)  ; FMax(a,b)
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1214 = fadd fast float %1213, %1211
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 3
  %1217 = fadd fast float %1214, %1216
  %1218 = add i32 %1184, 0
  %1219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1218, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1220 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1219, i32 0)  ; GetDimensions(handle,mipLevel)
  %1221 = extractvalue %dx.types.Dimensions %1220, 0
  %1222 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1221)  ; FirstbitLo(value)
  %1223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.i32 %1223, 1
  %1225 = sub nsw i32 %1224, %1222
  %1226 = sitofp i32 %1225 to float
  %1227 = fsub fast float %1217, %1226
  %1228 = call float @dx.op.binary.f32(i32 35, float %1227, float 0.000000e+00)  ; FMax(a,b)
  %1229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1219, %dx.types.Handle %36, float %1190, float %1192, float %1180, float undef, i32 0, i32 0, i32 undef, float %1228)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = fcmp ule float %1230, 0x3FE0101020000000
  %1232 = extractvalue %dx.types.CBufRet.i32 %1223, 0
  %1233 = and i32 %1232, 128
  %1234 = icmp ne i32 %1233, 0
  %1235 = and i1 %1231, %1234
  br i1 %1235, label %1386, label %1236

; <label>:1236                                    ; preds = %1170
  %1237 = add i32 %1171, 20
  %1238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 0
  %1240 = add i32 %1171, 24
  %1241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = add i32 %1171, 40
  %1244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = add i32 %1171, 96
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 2
  %1251 = fmul fast float %1250, %1190
  %1252 = fmul fast float %1250, %1192
  %1253 = extractvalue %dx.types.CBufRet.f32 %1249, 3
  %1254 = fadd fast float %1251, %1253
  %1255 = fadd fast float %1252, %1253
  %1256 = add i32 %1248, 0
  %1257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1256, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1258 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1257, i32 0)  ; GetDimensions(handle,mipLevel)
  %1259 = extractvalue %dx.types.Dimensions %1258, 0
  %1260 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1259)  ; FirstbitLo(value)
  %1261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.i32 %1261, 1
  %1263 = sub nsw i32 %1262, %1260
  %1264 = sitofp i32 %1263 to float
  %1265 = fsub fast float %1214, %1264
  %1266 = call float @dx.op.binary.f32(i32 35, float %1265, float 0.000000e+00)  ; FMax(a,b)
  %1267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1257, %dx.types.Handle %36, float %1254, float %1255, float %1245, float undef, i32 0, i32 0, i32 undef, float %1266)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = fmul fast float %1268, %1239
  %1270 = fadd fast float %1269, %1242
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 3
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 3
  %1279 = extractvalue %dx.types.CBufRet.f32 %1271, 3
  %1280 = fadd fast float %1276, %1137
  %1281 = fadd fast float %1278, %1138
  %1282 = fadd fast float %1270, %1279
  %1283 = fmul fast float %1280, %1272
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1281, float %1273, float %1283)  ; FMad(a,b,c)
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1274, float %1284)  ; FMad(a,b,c)
  %1286 = fsub fast float %1285, %1279
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1289 = fsub fast float %1286, %1288
  %1290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.i32 %1290, 0
  %1292 = call i32 @dx.op.binary.i32(i32 40, i32 %1168, i32 %1291)  ; UMin(a,b)
  %1293 = mul i32 %1292, 36
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = add i32 %1293, 4
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = fmul fast float %1298, %1190
  %1300 = fmul fast float %1298, %1192
  %1301 = extractvalue %dx.types.CBufRet.f32 %1297, 1
  %1302 = fadd fast float %1299, %1301
  %1303 = fadd fast float %1300, %1301
  %1304 = icmp eq i32 %1295, 0
  br i1 %1304, label %1373, label %1305

; <label>:1305                                    ; preds = %1236
  br label %1306

; <label>:1306                                    ; preds = %1363, %1305
  %1307 = phi float [ %1364, %1363 ], [ 0.000000e+00, %1305 ]
  %1308 = phi float [ %1365, %1363 ], [ 0.000000e+00, %1305 ]
  %1309 = phi float [ %1366, %1363 ], [ 0.000000e+00, %1305 ]
  %1310 = phi float [ %1367, %1363 ], [ 0.000000e+00, %1305 ]
  %1311 = phi float [ %1368, %1363 ], [ 0.000000e+00, %1305 ]
  %1312 = phi float [ %1369, %1363 ], [ 0.000000e+00, %1305 ]
  %1313 = phi i32 [ %1370, %1363 ], [ 0, %1305 ]
  %1314 = shl i32 %1313, 2
  %1315 = add i32 %1181, %1314
  %1316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = add i32 %1185, %1314
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = add i32 %1320, 0
  %1322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1321, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1323 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1322, i32 0)  ; GetDimensions(handle,mipLevel)
  %1324 = extractvalue %dx.types.Dimensions %1323, 0
  %1325 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1324)  ; FirstbitLo(value)
  %1326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.i32 %1326, 1
  %1328 = sub nsw i32 %1327, %1325
  %1329 = sitofp i32 %1328 to float
  %1330 = fsub fast float %1214, %1329
  %1331 = call float @dx.op.binary.f32(i32 35, float %1330, float 0.000000e+00)  ; FMax(a,b)
  %1332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1322, %dx.types.Handle %36, float %1302, float %1303, float %1317, float undef, i32 0, i32 0, i32 undef, float %1331)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 0
  %1334 = fcmp fast ogt float %1333, 0.000000e+00
  br i1 %1334, label %1335, label %1363

; <label>:1335                                    ; preds = %1306
  %1336 = add i32 %1296, %1314
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 32767
  %1340 = mul nuw nsw i32 %1339, 928
  %1341 = add nuw nsw i32 %1340, 48
  %1342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.f32 %1342, 0
  %1344 = extractvalue %dx.types.ResRet.f32 %1342, 1
  %1345 = extractvalue %dx.types.ResRet.f32 %1342, 2
  %1346 = add nuw nsw i32 %1340, 60
  %1347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  %1349 = extractvalue %dx.types.ResRet.f32 %1347, 1
  %1350 = extractvalue %dx.types.ResRet.f32 %1347, 2
  %1351 = fmul fast float %1343, %1333
  %1352 = fmul fast float %1344, %1333
  %1353 = fmul fast float %1345, %1333
  %1354 = fadd fast float %1351, %1307
  %1355 = fadd fast float %1352, %1308
  %1356 = fadd fast float %1353, %1309
  %1357 = fmul fast float %1348, %1333
  %1358 = fmul fast float %1349, %1333
  %1359 = fmul fast float %1350, %1333
  %1360 = fadd fast float %1357, %1310
  %1361 = fadd fast float %1358, %1311
  %1362 = fadd fast float %1359, %1312
  br label %1363

; <label>:1363                                    ; preds = %1335, %1306
  %1364 = phi float [ %1354, %1335 ], [ %1307, %1306 ]
  %1365 = phi float [ %1355, %1335 ], [ %1308, %1306 ]
  %1366 = phi float [ %1356, %1335 ], [ %1309, %1306 ]
  %1367 = phi float [ %1360, %1335 ], [ %1310, %1306 ]
  %1368 = phi float [ %1361, %1335 ], [ %1311, %1306 ]
  %1369 = phi float [ %1362, %1335 ], [ %1312, %1306 ]
  %1370 = add nuw i32 %1313, 1
  %1371 = icmp eq i32 %1370, %1295
  br i1 %1371, label %1372, label %1306

; <label>:1372                                    ; preds = %1363
  br label %1373

; <label>:1373                                    ; preds = %1372, %1236
  %1374 = phi float [ 0.000000e+00, %1236 ], [ %1364, %1372 ]
  %1375 = phi float [ 0.000000e+00, %1236 ], [ %1365, %1372 ]
  %1376 = phi float [ 0.000000e+00, %1236 ], [ %1366, %1372 ]
  %1377 = phi float [ 0.000000e+00, %1236 ], [ %1367, %1372 ]
  %1378 = phi float [ 0.000000e+00, %1236 ], [ %1368, %1372 ]
  %1379 = phi float [ 0.000000e+00, %1236 ], [ %1369, %1372 ]
  %1380 = fadd fast float %1377, %1374
  %1381 = fmul fast float %1380, 0x3F847AE140000000
  %1382 = fadd fast float %1378, %1375
  %1383 = fmul fast float %1382, 0x3F847AE140000000
  %1384 = fadd fast float %1379, %1376
  %1385 = fmul fast float %1384, 0x3F847AE140000000
  br label %1386

; <label>:1386                                    ; preds = %1373, %1170, %1115, %1112, %1083, %1045
  %1387 = phi float [ %1097, %1083 ], [ -1.310720e+05, %1045 ], [ %1289, %1373 ], [ -1.310720e+05, %1115 ], [ -1.310720e+05, %1170 ], [ -1.310720e+05, %1112 ]
  %1388 = phi float [ %1107, %1083 ], [ 0.000000e+00, %1045 ], [ %1381, %1373 ], [ 0.000000e+00, %1115 ], [ 0.000000e+00, %1170 ], [ 0.000000e+00, %1112 ]
  %1389 = phi float [ %1109, %1083 ], [ 0.000000e+00, %1045 ], [ %1383, %1373 ], [ 0.000000e+00, %1115 ], [ 0.000000e+00, %1170 ], [ 0.000000e+00, %1112 ]
  %1390 = phi float [ %1111, %1083 ], [ 0.000000e+00, %1045 ], [ %1385, %1373 ], [ 0.000000e+00, %1115 ], [ 0.000000e+00, %1170 ], [ 0.000000e+00, %1112 ]
  %1391 = phi i1 [ true, %1083 ], [ false, %1045 ], [ true, %1373 ], [ false, %1115 ], [ false, %1170 ], [ false, %1112 ]
  %1392 = and i32 %377, 3
  %1393 = icmp eq i32 %1392, 1
  %1394 = select i1 %1393, float 1.000000e+00, float 0.000000e+00
  %1395 = fsub fast float %1387, %93
  %1396 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1397 = select i1 %1391, float %1396, float 1.000000e+00
  %1398 = fmul fast float %1397, %1394
  %1399 = icmp eq i32 %1392, 3
  %1400 = select i1 %1399, float 1.000000e+00, float %1398
  %1401 = call float @dx.op.binary.f32(i32 35, float %961, float %1400)  ; FMax(a,b)
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1403 = fcmp fast une float %1402, 0.000000e+00
  %1404 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %1405 = call float @dx.op.unary.f32(i32 25, float %1404)  ; Rsqrt(value)
  br i1 %1403, label %1413, label %1406

; <label>:1406                                    ; preds = %1386
  %1407 = fmul fast float %1405, %91
  %1408 = fmul fast float %1405, %92
  %1409 = fmul fast float %1405, %93
  %1410 = fsub fast float -0.000000e+00, %1407
  %1411 = fsub fast float -0.000000e+00, %1408
  %1412 = fsub fast float -0.000000e+00, %1409
  br label %1581

; <label>:1413                                    ; preds = %1386
  %1414 = fmul fast float %91, %1405
  %1415 = fsub fast float -0.000000e+00, %1414
  %1416 = fmul fast float %92, %1405
  %1417 = fsub fast float -0.000000e+00, %1416
  %1418 = fmul fast float %93, %1405
  %1419 = fsub fast float -0.000000e+00, %1418
  %1420 = call float @dx.op.dot3.f32(i32 55, float %1415, float %1417, float %1419, float %477, float %478, float %479)  ; Dot3(ax,ay,az,bx,by,bz)
  %1421 = fmul fast float %1402, 2.500000e+00
  %1422 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  %1423 = fmul fast float %1402, 0x4013FFFFE0000000
  %1424 = fadd fast float %1423, 0xBFFFFFFFE0000000
  %1425 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1426 = fmul fast float %1402, 0x4004000020000000
  %1427 = fadd fast float %1426, 0xBFF8000040000000
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1429 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  %1430 = fmul fast float %991, 1.000000e+01
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1432 = fmul fast float %1431, 2.000000e+00
  %1433 = fsub fast float 3.000000e+00, %1432
  %1434 = fmul fast float %1431, %1431
  %1435 = fmul fast float %1434, %1433
  %1436 = fsub fast float 1.000000e+00, %1435
  %1437 = fsub fast float 0x3FE3333340000000, %1012
  %1438 = fmul fast float %1437, 0x400AAAAAA0000000
  %1439 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1440 = fmul fast float %1436, %1439
  %1441 = fmul fast float %1024, 0x3FEA2B8620000000
  %1442 = fmul fast float %1025, 0x3FEA2B8620000000
  %1443 = fmul fast float %1026, 0x3FEA2B8620000000
  %1444 = fadd fast float %1441, 0x3FC81DFBA0000000
  %1445 = fmul fast float %1444, %1024
  %1446 = fadd fast float %1445, 0x3F910E6020000000
  %1447 = fadd fast float %1442, 0x3FC81DFBA0000000
  %1448 = fmul fast float %1447, %1025
  %1449 = fadd fast float %1448, 0x3F910E6020000000
  %1450 = fadd fast float %1443, 0x3FC81DFBA0000000
  %1451 = fmul fast float %1450, %1026
  %1452 = fadd fast float %1451, 0x3F910E6020000000
  %1453 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  %1454 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1455 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1456 = fsub fast float %1453, %1024
  %1457 = fsub fast float %1454, %1025
  %1458 = fsub fast float %1455, %1026
  %1459 = fmul fast float %1456, %1429
  %1460 = fmul fast float %1459, %1440
  %1461 = fmul fast float %1457, %1429
  %1462 = fmul fast float %1461, %1440
  %1463 = fmul fast float %1458, %1429
  %1464 = fmul fast float %1463, %1440
  %1465 = fadd fast float %1460, %1024
  %1466 = fadd fast float %1462, %1025
  %1467 = fadd fast float %1464, %1026
  %1468 = fmul fast float %972, %972
  %1469 = fmul fast float %1468, %1468
  %1470 = fadd fast float %1425, 1.000000e+00
  %1471 = fsub fast float %1470, %1440
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  %1473 = call float @dx.op.dot3.f32(i32 55, float %477, float %478, float %479, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1474 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  %1475 = fsub fast float 1.000000e+00, %1469
  %1476 = call float @dx.op.binary.f32(i32 36, float %1472, float %1475)  ; FMin(a,b)
  %1477 = call float @dx.op.unary.f32(i32 7, float %1428)  ; Saturate(value)
  %1478 = call float @dx.op.binary.f32(i32 35, float %1476, float %1477)  ; FMax(a,b)
  %1479 = fadd fast float %1474, 0xBFE4CCCCC0000000
  %1480 = fmul fast float %1479, 0x4006DB6DA0000000
  %1481 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1482 = fmul fast float %1481, 2.000000e+00
  %1483 = fsub fast float 3.000000e+00, %1482
  %1484 = bitcast float %1009 to i32
  %1485 = ashr i32 %1484, 1
  %1486 = add nsw i32 %1485, 532487669
  %1487 = bitcast i32 %1486 to float
  %1488 = fsub fast float 1.000000e+00, %1487
  %1489 = bitcast float %1488 to i32
  %1490 = sub nsw i32 2129859010, %1489
  %1491 = bitcast i32 %1490 to float
  %1492 = fmul fast float %1491, 2.000000e+00
  %1493 = bitcast float %1010 to i32
  %1494 = ashr i32 %1493, 1
  %1495 = add nsw i32 %1494, 532487669
  %1496 = bitcast i32 %1495 to float
  %1497 = fsub fast float 1.000000e+00, %1496
  %1498 = bitcast float %1497 to i32
  %1499 = sub nsw i32 2129859010, %1498
  %1500 = bitcast i32 %1499 to float
  %1501 = fmul fast float %1500, 2.000000e+00
  %1502 = bitcast float %1011 to i32
  %1503 = ashr i32 %1502, 1
  %1504 = add nsw i32 %1503, 532487669
  %1505 = bitcast i32 %1504 to float
  %1506 = fsub fast float 1.000000e+00, %1505
  %1507 = bitcast float %1506 to i32
  %1508 = sub nsw i32 2129859010, %1507
  %1509 = bitcast i32 %1508 to float
  %1510 = fmul fast float %1509, 2.000000e+00
  %1511 = fsub fast float 0x4002A9FBE0000000, %1492
  %1512 = fadd fast float %1492, 0x3FD54FDF00000000
  %1513 = bitcast float %1512 to i32
  %1514 = sub nsw i32 2129859010, %1513
  %1515 = bitcast i32 %1514 to float
  %1516 = fmul fast float %1515, %1511
  %1517 = fmul fast float %1516, %1516
  %1518 = fsub fast float 0x4002A9FBE0000000, %1501
  %1519 = fadd fast float %1501, 0x3FD54FDF00000000
  %1520 = bitcast float %1519 to i32
  %1521 = sub nsw i32 2129859010, %1520
  %1522 = bitcast i32 %1521 to float
  %1523 = fmul fast float %1522, %1518
  %1524 = fmul fast float %1523, %1523
  %1525 = fsub fast float 0x4002A9FBE0000000, %1510
  %1526 = fadd fast float %1510, 0x3FD54FDF00000000
  %1527 = bitcast float %1526 to i32
  %1528 = sub nsw i32 2129859010, %1527
  %1529 = bitcast i32 %1528 to float
  %1530 = fmul fast float %1529, %1525
  %1531 = fmul fast float %1530, %1530
  %1532 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1517)  ; FMax(a,b)
  %1533 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1524)  ; FMax(a,b)
  %1534 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1531)  ; FMax(a,b)
  %1535 = fsub fast float 1.000000e+00, %1420
  %1536 = fadd fast float %1535, %1436
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1538 = fsub fast float 1.000000e+00, %1400
  %1539 = fmul fast float %1478, %1538
  %1540 = fmul fast float %1481, %1481
  %1541 = fmul fast float %1540, %1539
  %1542 = fmul fast float %1541, %1483
  %1543 = fmul fast float %1538, 0xBFE99999A0000000
  %1544 = fmul fast float %1543, %1429
  %1545 = fmul fast float %1544, %1440
  %1546 = fadd fast float %1545, 1.000000e+00
  %1547 = fadd fast float %1012, -1.000000e+00
  %1548 = fmul fast float %1546, %1547
  %1549 = fadd fast float %1548, 1.000000e+00
  %1550 = fsub fast float %1532, %1009
  %1551 = fsub fast float %1533, %1010
  %1552 = fsub fast float %1534, %1011
  %1553 = fmul fast float %1542, %1550
  %1554 = fmul fast float %1542, %1551
  %1555 = fmul fast float %1542, %1552
  %1556 = fadd fast float %1553, %1009
  %1557 = fadd fast float %1554, %1010
  %1558 = fadd fast float %1555, %1011
  %1559 = fsub fast float %477, %988
  %1560 = fsub fast float %478, %989
  %1561 = fsub fast float %479, %990
  %1562 = fmul fast float %1542, %1559
  %1563 = fmul fast float %1542, %1560
  %1564 = fmul fast float %1542, %1561
  %1565 = fadd fast float %1562, %988
  %1566 = fadd fast float %1563, %989
  %1567 = fadd fast float %1564, %990
  %1568 = fmul fast float %1542, %1537
  %1569 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  %1570 = fsub fast float 1.000000e+00, %1569
  %1571 = fmul fast float %1568, %1570
  %1572 = fadd fast float %1571, %1569
  %1573 = fsub fast float 1.000000e+00, %972
  %1574 = fmul fast float %1542, %1573
  %1575 = fadd fast float %1574, %972
  %1576 = call float @dx.op.dot3.f32(i32 55, float %1565, float %1566, float %1567, float %1565, float %1566, float %1567)  ; Dot3(ax,ay,az,bx,by,bz)
  %1577 = call float @dx.op.unary.f32(i32 25, float %1576)  ; Rsqrt(value)
  %1578 = fmul fast float %1565, %1577
  %1579 = fmul fast float %1566, %1577
  %1580 = fmul fast float %1567, %1577
  br label %1581

; <label>:1581                                    ; preds = %1413, %1406
  %1582 = phi float [ %1412, %1406 ], [ %1419, %1413 ]
  %1583 = phi float [ %1411, %1406 ], [ %1417, %1413 ]
  %1584 = phi float [ %1410, %1406 ], [ %1415, %1413 ]
  %1585 = phi float [ %1409, %1406 ], [ %1418, %1413 ]
  %1586 = phi float [ %1408, %1406 ], [ %1416, %1413 ]
  %1587 = phi float [ %1407, %1406 ], [ %1414, %1413 ]
  %1588 = phi float [ %1009, %1406 ], [ %1556, %1413 ]
  %1589 = phi float [ %1010, %1406 ], [ %1557, %1413 ]
  %1590 = phi float [ %1011, %1406 ], [ %1558, %1413 ]
  %1591 = phi float [ %1024, %1406 ], [ %1465, %1413 ]
  %1592 = phi float [ %1025, %1406 ], [ %1466, %1413 ]
  %1593 = phi float [ %1026, %1406 ], [ %1467, %1413 ]
  %1594 = phi float [ %988, %1406 ], [ %1578, %1413 ]
  %1595 = phi float [ %989, %1406 ], [ %1579, %1413 ]
  %1596 = phi float [ %990, %1406 ], [ %1580, %1413 ]
  %1597 = phi float [ %1012, %1406 ], [ %1572, %1413 ]
  %1598 = phi float [ %972, %1406 ], [ %1575, %1413 ]
  %1599 = select i1 %401, float 0.000000e+00, float %1590
  %1600 = call float @dx.op.dot3.f32(i32 55, float %1594, float %1595, float %1596, float %1584, float %1583, float %1582)  ; Dot3(ax,ay,az,bx,by,bz)
  %1601 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  %1602 = call float @dx.op.dot3.f32(i32 55, float %1587, float %1586, float %1585, float %1594, float %1595, float %1596)  ; Dot3(ax,ay,az,bx,by,bz)
  %1603 = fmul fast float %1602, 2.000000e+00
  %1604 = fmul fast float %1603, %1594
  %1605 = fmul fast float %1603, %1595
  %1606 = fmul fast float %1603, %1596
  %1607 = fsub fast float %1587, %1604
  %1608 = fsub fast float %1586, %1605
  %1609 = fsub fast float %1585, %1606
  %1610 = call float @dx.op.binary.f32(i32 36, float %1598, float 1.000000e+00)  ; FMin(a,b)
  %1611 = fsub fast float 1.000000e+00, %1598
  %1612 = bitcast float %1611 to i32
  %1613 = sub nsw i32 2129859010, %1612
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.CBufRet.f32 %1614, 1
  %1617 = extractvalue %dx.types.CBufRet.f32 %1614, 2
  %1618 = fadd fast float %1615, %91
  %1619 = fadd fast float %1616, %92
  %1620 = fadd fast float %1617, %93
  %1621 = fmul fast float %1594, 3.200000e+01
  %1622 = fmul fast float %1595, 3.200000e+01
  %1623 = fadd fast float %1618, %1621
  %1624 = fadd fast float %1619, %1622
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1627 = extractvalue %dx.types.CBufRet.f32 %1625, 1
  %1628 = fsub fast float %1623, %1626
  %1629 = fsub fast float %1624, %1627
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1633 = fmul fast float %1628, %1631
  %1634 = fmul fast float %1629, %1632
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = fmul fast float %1633, %1636
  %1638 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1639 = fadd fast float %1637, %1638
  %1640 = extractvalue %dx.types.CBufRet.f32 %1635, 2
  %1641 = fmul fast float %1640, %1634
  %1642 = extractvalue %dx.types.CBufRet.f32 %1635, 3
  %1643 = fadd fast float %1641, %1642
  %1644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %37, float %1639, float %1643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1645 = extractvalue %dx.types.ResRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.ResRet.f32 %1644, 1
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 1
  %1649 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1650 = fsub fast float %1648, %1649
  %1651 = fmul fast float %1650, %1645
  %1652 = fadd fast float %1651, %1649
  %1653 = extractvalue %dx.types.CBufRet.f32 %1647, 3
  %1654 = extractvalue %dx.types.CBufRet.f32 %1647, 2
  %1655 = fsub fast float %1653, %1654
  %1656 = fmul fast float %1655, %1646
  %1657 = fadd fast float %1656, %1654
  %1658 = fsub fast float %1620, %1652
  %1659 = fsub fast float %1657, %1652
  %1660 = fdiv fast float %1658, %1659
  %1661 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1662, 0
  %1664 = fmul fast float %1663, %1661
  %1665 = extractvalue %dx.types.CBufRet.f32 %1662, 1
  %1666 = fadd fast float %1664, %1665
  %1667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %1639, float %1643, float %1666, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1668 = extractvalue %dx.types.ResRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.ResRet.f32 %1667, 1
  %1670 = extractvalue %dx.types.ResRet.f32 %1667, 2
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 0
  %1673 = extractvalue %dx.types.CBufRet.f32 %1671, 1
  %1674 = extractvalue %dx.types.CBufRet.f32 %1671, 2
  %1675 = fmul fast float %1672, %1668
  %1676 = fmul fast float %1673, %1669
  %1677 = fmul fast float %1674, %1670
  %1678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1679 = extractvalue %dx.types.CBufRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.CBufRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.CBufRet.f32 %1678, 2
  %1682 = fadd fast float %1675, %1679
  %1683 = fadd fast float %1676, %1680
  %1684 = fadd fast float %1677, %1681
  %1685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1685, 0
  %1687 = fmul fast float %1686, %1633
  %1688 = extractvalue %dx.types.CBufRet.f32 %1685, 1
  %1689 = fadd fast float %1687, %1688
  %1690 = extractvalue %dx.types.CBufRet.f32 %1685, 2
  %1691 = fmul fast float %1690, %1634
  %1692 = extractvalue %dx.types.CBufRet.f32 %1685, 3
  %1693 = fadd fast float %1691, %1692
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1697 = extractvalue %dx.types.CBufRet.f32 %1694, 2
  %1698 = extractvalue %dx.types.CBufRet.f32 %1694, 3
  %1699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1700 = extractvalue %dx.types.CBufRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.CBufRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.CBufRet.f32 %1699, 2
  %1703 = extractvalue %dx.types.CBufRet.f32 %1699, 3
  %1704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %37, float %1689, float %1693, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1705 = extractvalue %dx.types.ResRet.f32 %1704, 0
  %1706 = extractvalue %dx.types.ResRet.f32 %1704, 1
  %1707 = extractvalue %dx.types.ResRet.f32 %1704, 2
  %1708 = extractvalue %dx.types.ResRet.f32 %1704, 3
  %1709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %37, float %1689, float %1693, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1710 = extractvalue %dx.types.ResRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.ResRet.f32 %1709, 1
  %1712 = extractvalue %dx.types.ResRet.f32 %1709, 2
  %1713 = extractvalue %dx.types.ResRet.f32 %1709, 3
  %1714 = fmul fast float %1705, %1682
  %1715 = fmul fast float %1710, %1682
  %1716 = fmul fast float %1712, %1682
  %1717 = fmul fast float %1708, %1682
  %1718 = fadd fast float %1714, %1695
  %1719 = fadd fast float %1715, %1696
  %1720 = fadd fast float %1716, %1697
  %1721 = fadd fast float %1717, %1698
  %1722 = fmul fast float %1706, %1682
  %1723 = fmul fast float %1711, %1682
  %1724 = fadd fast float %1722, %1700
  %1725 = fadd fast float %1723, %1701
  %1726 = fmul fast float %1707, %1682
  %1727 = fmul fast float %1713, %1682
  %1728 = fadd fast float %1726, %1702
  %1729 = fadd fast float %1727, %1703
  %1730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %37, float %1689, float %1693, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1731 = extractvalue %dx.types.ResRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.ResRet.f32 %1730, 1
  %1733 = extractvalue %dx.types.ResRet.f32 %1730, 2
  %1734 = extractvalue %dx.types.ResRet.f32 %1730, 3
  %1735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %37, float %1689, float %1693, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1736 = extractvalue %dx.types.ResRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.ResRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.ResRet.f32 %1735, 2
  %1739 = extractvalue %dx.types.ResRet.f32 %1735, 3
  %1740 = fmul fast float %1731, %1683
  %1741 = fmul fast float %1736, %1683
  %1742 = fmul fast float %1738, %1683
  %1743 = fmul fast float %1734, %1683
  %1744 = fadd fast float %1718, %1740
  %1745 = fadd fast float %1719, %1741
  %1746 = fadd fast float %1720, %1742
  %1747 = fadd fast float %1721, %1743
  %1748 = fmul fast float %1732, %1683
  %1749 = fmul fast float %1737, %1683
  %1750 = fadd fast float %1724, %1748
  %1751 = fadd fast float %1725, %1749
  %1752 = fmul fast float %1733, %1683
  %1753 = fmul fast float %1739, %1683
  %1754 = fadd fast float %1728, %1752
  %1755 = fadd fast float %1729, %1753
  %1756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %37, float %1689, float %1693, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1757 = extractvalue %dx.types.ResRet.f32 %1756, 0
  %1758 = extractvalue %dx.types.ResRet.f32 %1756, 1
  %1759 = extractvalue %dx.types.ResRet.f32 %1756, 2
  %1760 = extractvalue %dx.types.ResRet.f32 %1756, 3
  %1761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %37, float %1689, float %1693, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 0
  %1763 = extractvalue %dx.types.ResRet.f32 %1761, 1
  %1764 = extractvalue %dx.types.ResRet.f32 %1761, 2
  %1765 = extractvalue %dx.types.ResRet.f32 %1761, 3
  %1766 = fmul fast float %1757, %1684
  %1767 = fmul fast float %1762, %1684
  %1768 = fmul fast float %1764, %1684
  %1769 = fmul fast float %1760, %1684
  %1770 = fadd fast float %1744, %1766
  %1771 = fadd fast float %1745, %1767
  %1772 = fadd fast float %1746, %1768
  %1773 = fadd fast float %1747, %1769
  %1774 = fmul fast float %1758, %1684
  %1775 = fmul fast float %1763, %1684
  %1776 = fadd fast float %1750, %1774
  %1777 = fadd fast float %1751, %1775
  %1778 = fmul fast float %1759, %1684
  %1779 = fmul fast float %1765, %1684
  %1780 = fadd fast float %1754, %1778
  %1781 = fadd fast float %1755, %1779
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = fsub fast float %1618, %1783
  %1785 = fsub fast float %1626, %1618
  %1786 = call float @dx.op.binary.f32(i32 35, float %1785, float %1784)  ; FMax(a,b)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %1788 = fsub fast float %1619, %1787
  %1789 = fsub fast float %1627, %1619
  %1790 = call float @dx.op.binary.f32(i32 35, float %1789, float %1788)  ; FMax(a,b)
  %1791 = call float @dx.op.binary.f32(i32 35, float %1786, float %1790)  ; FMax(a,b)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1630, 3
  %1793 = fmul fast float %1792, %1791
  %1794 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 0
  %1797 = extractvalue %dx.types.CBufRet.f32 %1795, 1
  %1798 = extractvalue %dx.types.CBufRet.f32 %1795, 2
  %1799 = extractvalue %dx.types.CBufRet.f32 %1795, 3
  %1800 = fsub fast float %1796, %1770
  %1801 = fsub fast float %1797, %1771
  %1802 = fsub fast float %1798, %1772
  %1803 = fsub fast float %1799, %1773
  %1804 = fmul fast float %1800, %1794
  %1805 = fmul fast float %1801, %1794
  %1806 = fmul fast float %1802, %1794
  %1807 = fmul fast float %1803, %1794
  %1808 = fadd fast float %1804, %1770
  %1809 = fadd fast float %1805, %1771
  %1810 = fadd fast float %1806, %1772
  %1811 = fadd fast float %1807, %1773
  %1812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1812, 0
  %1814 = extractvalue %dx.types.CBufRet.f32 %1812, 1
  %1815 = fsub fast float %1813, %1776
  %1816 = fsub fast float %1814, %1777
  %1817 = fmul fast float %1815, %1794
  %1818 = fmul fast float %1816, %1794
  %1819 = fadd fast float %1817, %1776
  %1820 = fadd fast float %1818, %1777
  %1821 = extractvalue %dx.types.CBufRet.f32 %1812, 2
  %1822 = extractvalue %dx.types.CBufRet.f32 %1812, 3
  %1823 = fsub fast float %1821, %1780
  %1824 = fsub fast float %1822, %1781
  %1825 = fmul fast float %1823, %1794
  %1826 = fmul fast float %1824, %1794
  %1827 = fadd fast float %1825, %1780
  %1828 = fadd fast float %1826, %1781
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1829, 0
  %1831 = fmul fast float %1830, %1808
  %1832 = fmul fast float %1830, %1809
  %1833 = fmul fast float %1830, %1810
  %1834 = fmul fast float %1830, %1811
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 0
  %1837 = fmul fast float %1836, %1819
  %1838 = fmul fast float %1836, %1820
  %1839 = fadd fast float %1837, %1831
  %1840 = fadd fast float %1838, %1833
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 0
  %1843 = fmul fast float %1842, %1827
  %1844 = fmul fast float %1842, %1828
  %1845 = fadd fast float %1839, %1843
  %1846 = fadd fast float %1840, %1844
  %1847 = extractvalue %dx.types.CBufRet.f32 %1829, 1
  %1848 = fmul fast float %1847, %1808
  %1849 = fmul fast float %1847, %1809
  %1850 = fmul fast float %1847, %1810
  %1851 = fmul fast float %1847, %1811
  %1852 = extractvalue %dx.types.CBufRet.f32 %1835, 1
  %1853 = fmul fast float %1852, %1819
  %1854 = fmul fast float %1852, %1820
  %1855 = fadd fast float %1853, %1848
  %1856 = fadd fast float %1854, %1850
  %1857 = extractvalue %dx.types.CBufRet.f32 %1841, 1
  %1858 = fmul fast float %1857, %1827
  %1859 = fmul fast float %1857, %1828
  %1860 = fadd fast float %1855, %1858
  %1861 = fadd fast float %1856, %1859
  %1862 = extractvalue %dx.types.CBufRet.f32 %1829, 2
  %1863 = fmul fast float %1862, %1808
  %1864 = fmul fast float %1862, %1809
  %1865 = fmul fast float %1862, %1810
  %1866 = fmul fast float %1862, %1811
  %1867 = extractvalue %dx.types.CBufRet.f32 %1835, 2
  %1868 = fmul fast float %1867, %1819
  %1869 = fmul fast float %1867, %1820
  %1870 = fadd fast float %1868, %1863
  %1871 = fadd fast float %1869, %1865
  %1872 = extractvalue %dx.types.CBufRet.f32 %1841, 2
  %1873 = fmul fast float %1872, %1827
  %1874 = fmul fast float %1872, %1828
  %1875 = fadd fast float %1870, %1873
  %1876 = fadd fast float %1871, %1874
  %1877 = fmul fast float %1864, %1864
  %1878 = fmul fast float %1876, %1876
  %1879 = fmul fast float %1866, %1866
  %1880 = fadd fast float %1879, %1877
  %1881 = fadd fast float %1880, %1878
  %1882 = call float @dx.op.unary.f32(i32 24, float %1881)  ; Sqrt(value)
  %1883 = fcmp fast ugt float %1882, 0.000000e+00
  br i1 %1883, label %1884, label %1899

; <label>:1884                                    ; preds = %1581
  %1885 = fsub fast float -0.000000e+00, %1866
  %1886 = fdiv fast float %1885, %1882
  %1887 = fsub fast float -0.000000e+00, %1864
  %1888 = fdiv fast float %1887, %1882
  %1889 = fdiv fast float %1876, %1882
  %1890 = fmul fast float %1875, 0x3FE279A760000000
  %1891 = fmul fast float %1888, %1864
  %1892 = fmul fast float %1889, %1876
  %1893 = fmul fast float %1886, %1866
  %1894 = fadd fast float %1891, %1893
  %1895 = fsub fast float %1894, %1892
  %1896 = call float @dx.op.unary.f32(i32 6, float %1895)  ; FAbs(value)
  %1897 = fadd fast float %1896, 0x3DDB7CDFE0000000
  %1898 = fdiv fast float %1890, %1897
  br label %1899

; <label>:1899                                    ; preds = %1884, %1581
  %1900 = phi float [ %1898, %1884 ], [ 1.000000e+00, %1581 ]
  %1901 = fmul fast float %1849, %1849
  %1902 = fmul fast float %1861, %1861
  %1903 = fmul fast float %1851, %1851
  %1904 = fadd fast float %1903, %1901
  %1905 = fadd fast float %1904, %1902
  %1906 = call float @dx.op.unary.f32(i32 24, float %1905)  ; Sqrt(value)
  %1907 = fcmp fast ugt float %1906, 0.000000e+00
  br i1 %1907, label %1908, label %1923

; <label>:1908                                    ; preds = %1899
  %1909 = fsub fast float -0.000000e+00, %1851
  %1910 = fdiv fast float %1909, %1906
  %1911 = fsub fast float -0.000000e+00, %1849
  %1912 = fdiv fast float %1911, %1906
  %1913 = fdiv fast float %1861, %1906
  %1914 = fmul fast float %1860, 0x3FE279A760000000
  %1915 = fmul fast float %1912, %1849
  %1916 = fmul fast float %1913, %1861
  %1917 = fmul fast float %1910, %1851
  %1918 = fadd fast float %1915, %1917
  %1919 = fsub fast float %1918, %1916
  %1920 = call float @dx.op.unary.f32(i32 6, float %1919)  ; FAbs(value)
  %1921 = fadd fast float %1920, 0x3DDB7CDFE0000000
  %1922 = fdiv fast float %1914, %1921
  br label %1923

; <label>:1923                                    ; preds = %1908, %1899
  %1924 = phi float [ %1922, %1908 ], [ 1.000000e+00, %1899 ]
  %1925 = call float @dx.op.binary.f32(i32 36, float %1924, float %1900)  ; FMin(a,b)
  %1926 = fmul fast float %1832, %1832
  %1927 = fmul fast float %1846, %1846
  %1928 = fmul fast float %1834, %1834
  %1929 = fadd fast float %1928, %1926
  %1930 = fadd fast float %1929, %1927
  %1931 = call float @dx.op.unary.f32(i32 24, float %1930)  ; Sqrt(value)
  %1932 = fcmp fast ugt float %1931, 0.000000e+00
  br i1 %1932, label %1933, label %1948

; <label>:1933                                    ; preds = %1923
  %1934 = fsub fast float -0.000000e+00, %1834
  %1935 = fdiv fast float %1934, %1931
  %1936 = fsub fast float -0.000000e+00, %1832
  %1937 = fdiv fast float %1936, %1931
  %1938 = fdiv fast float %1846, %1931
  %1939 = fmul fast float %1845, 0x3FE279A760000000
  %1940 = fmul fast float %1937, %1832
  %1941 = fmul fast float %1938, %1846
  %1942 = fmul fast float %1935, %1834
  %1943 = fadd fast float %1940, %1942
  %1944 = fsub fast float %1943, %1941
  %1945 = call float @dx.op.unary.f32(i32 6, float %1944)  ; FAbs(value)
  %1946 = fadd fast float %1945, 0x3DDB7CDFE0000000
  %1947 = fdiv fast float %1939, %1946
  br label %1948

; <label>:1948                                    ; preds = %1933, %1923
  %1949 = phi float [ %1947, %1933 ], [ 1.000000e+00, %1923 ]
  %1950 = call float @dx.op.binary.f32(i32 36, float %1949, float %1925)  ; FMin(a,b)
  %1951 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %1952 = fcmp fast olt float %1951, 1.000000e+00
  br i1 %1952, label %1953, label %1963

; <label>:1953                                    ; preds = %1948
  %1954 = fmul fast float %1951, %1832
  %1955 = fmul fast float %1951, %1846
  %1956 = fmul fast float %1951, %1834
  %1957 = fmul fast float %1951, %1849
  %1958 = fmul fast float %1951, %1861
  %1959 = fmul fast float %1951, %1851
  %1960 = fmul fast float %1951, %1864
  %1961 = fmul fast float %1951, %1876
  %1962 = fmul fast float %1951, %1866
  br label %1963

; <label>:1963                                    ; preds = %1953, %1948
  %1964 = phi float [ %1960, %1953 ], [ %1864, %1948 ]
  %1965 = phi float [ %1961, %1953 ], [ %1876, %1948 ]
  %1966 = phi float [ %1962, %1953 ], [ %1866, %1948 ]
  %1967 = phi float [ %1957, %1953 ], [ %1849, %1948 ]
  %1968 = phi float [ %1958, %1953 ], [ %1861, %1948 ]
  %1969 = phi float [ %1959, %1953 ], [ %1851, %1948 ]
  %1970 = phi float [ %1954, %1953 ], [ %1832, %1948 ]
  %1971 = phi float [ %1955, %1953 ], [ %1846, %1948 ]
  %1972 = phi float [ %1956, %1953 ], [ %1834, %1948 ]
  %1973 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1845)  ; FMax(a,b)
  %1974 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1860)  ; FMax(a,b)
  %1975 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1875)  ; FMax(a,b)
  %1976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1976, 0
  %1978 = fcmp fast ogt float %1977, 0.000000e+00
  %1979 = fcmp fast oge float %1633, 0.000000e+00
  %1980 = and i1 %1979, %1978
  %1981 = fcmp fast ole float %1633, 1.000000e+00
  %1982 = and i1 %1981, %1980
  %1983 = fcmp fast oge float %1634, 0.000000e+00
  %1984 = and i1 %1983, %1982
  %1985 = fcmp fast ole float %1634, 1.000000e+00
  %1986 = and i1 %1985, %1984
  br i1 %1986, label %1987, label %2127, !dx.controlflow.hints !68

; <label>:1987                                    ; preds = %1963
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 2
  %1990 = extractvalue %dx.types.CBufRet.f32 %1988, 3
  %1991 = fmul fast float %1989, %1633
  %1992 = fmul fast float %1990, %1634
  %1993 = call float @dx.op.unary.f32(i32 27, float %1991)  ; Round_ni(value)
  %1994 = call float @dx.op.unary.f32(i32 27, float %1992)  ; Round_ni(value)
  %1995 = fptosi float %1993 to i32
  %1996 = fptosi float %1994 to i32
  %1997 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %1995, i32 %1996, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = and i32 %1998, 65535
  %2000 = lshr i32 %1998, 16
  %2001 = icmp eq i32 %1999, 65535
  br i1 %2001, label %2038, label %2002

; <label>:2002                                    ; preds = %1987
  %2003 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %2004 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %2005 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %2006 = fmul fast float %2004, %1633
  %2007 = fmul fast float %2005, %1634
  %2008 = fmul fast float %2006, 1.250000e-01
  %2009 = fmul fast float %2007, 1.250000e-01
  %2010 = call float @dx.op.unary.f32(i32 27, float %2008)  ; Round_ni(value)
  %2011 = call float @dx.op.unary.f32(i32 27, float %2009)  ; Round_ni(value)
  %2012 = fmul fast float %2010, 8.000000e+00
  %2013 = fmul fast float %2011, 8.000000e+00
  %2014 = and i32 %1998, 255
  %2015 = lshr i32 %1998, 8
  %2016 = and i32 %2015, 255
  %2017 = mul nuw nsw i32 %2014, 9
  %2018 = uitofp i32 %2017 to float
  %2019 = mul nuw nsw i32 %2016, 9
  %2020 = uitofp i32 %2019 to float
  %2021 = fadd fast float %2018, 5.000000e-01
  %2022 = fadd fast float %2021, %2006
  %2023 = fsub fast float %2022, %2012
  %2024 = fadd fast float %2020, 5.000000e-01
  %2025 = fadd fast float %2024, %2007
  %2026 = fsub fast float %2025, %2013
  %2027 = fdiv fast float %2023, %1977
  %2028 = fdiv fast float %2026, %2003
  %2029 = fmul fast float %1661, 4.375000e-01
  %2030 = fadd fast float %2029, 3.125000e-02
  %2031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %37, float %2027, float %2028, float %2030, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2032 = extractvalue %dx.types.ResRet.f32 %2031, 0
  %2033 = extractvalue %dx.types.ResRet.f32 %2031, 1
  %2034 = extractvalue %dx.types.ResRet.f32 %2031, 2
  %2035 = fadd fast float %2032, %1973
  %2036 = fadd fast float %2033, %1974
  %2037 = fadd fast float %2034, %1975
  br label %2038

; <label>:2038                                    ; preds = %2002, %1987
  %2039 = phi float [ %2037, %2002 ], [ %1975, %1987 ]
  %2040 = phi float [ %2036, %2002 ], [ %1974, %1987 ]
  %2041 = phi float [ %2035, %2002 ], [ %1973, %1987 ]
  %2042 = icmp eq i32 %2000, 65535
  br i1 %2042, label %2127, label %2043

; <label>:2043                                    ; preds = %2038
  %2044 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %2045 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %2046 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %2047 = fmul fast float %2045, %1633
  %2048 = fmul fast float %2046, %1634
  %2049 = fmul fast float %2047, 1.250000e-01
  %2050 = fmul fast float %2048, 1.250000e-01
  %2051 = call float @dx.op.unary.f32(i32 27, float %2049)  ; Round_ni(value)
  %2052 = call float @dx.op.unary.f32(i32 27, float %2050)  ; Round_ni(value)
  %2053 = fmul fast float %2051, 8.000000e+00
  %2054 = fmul fast float %2052, 8.000000e+00
  %2055 = fsub fast float %2047, %2053
  %2056 = fsub fast float %2048, %2054
  %2057 = fadd fast float %2055, 5.000000e-01
  %2058 = fadd fast float %2056, 5.000000e-01
  %2059 = and i32 %2000, 255
  %2060 = lshr i32 %1998, 24
  %2061 = mul nuw nsw i32 %2059, 9
  %2062 = uitofp i32 %2061 to float
  %2063 = mul nuw nsw i32 %2060, 9
  %2064 = uitofp i32 %2063 to float
  %2065 = fadd fast float %2057, %2062
  %2066 = fadd fast float %2058, %2064
  %2067 = fdiv fast float %2065, %1977
  %2068 = fdiv fast float %2066, %2044
  %2069 = fmul fast float %1661, 4.375000e-01
  %2070 = fadd fast float %2069, 3.125000e-02
  %2071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %37, float %2067, float %2068, float %2070, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2072 = extractvalue %dx.types.ResRet.f32 %2071, 0
  %2073 = extractvalue %dx.types.ResRet.f32 %2071, 1
  %2074 = extractvalue %dx.types.ResRet.f32 %2071, 2
  %2075 = fadd fast float %2069, 5.312500e-01
  %2076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %37, float %2067, float %2068, float %2075, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = extractvalue %dx.types.ResRet.f32 %2076, 1
  %2079 = extractvalue %dx.types.ResRet.f32 %2076, 2
  %2080 = fmul fast float %2077, 2.000000e+00
  %2081 = fmul fast float %2078, 2.000000e+00
  %2082 = fmul fast float %2079, 2.000000e+00
  %2083 = fadd fast float %2080, -1.000000e+00
  %2084 = fadd fast float %2081, -1.000000e+00
  %2085 = fadd fast float %2082, -1.000000e+00
  %2086 = fmul fast float %2083, %2083
  %2087 = fmul fast float %2084, %2084
  %2088 = fadd fast float %2086, %2087
  %2089 = fmul fast float %2085, %2085
  %2090 = fadd fast float %2088, %2089
  %2091 = call float @dx.op.unary.f32(i32 24, float %2090)  ; Sqrt(value)
  %2092 = fcmp fast ogt float %2091, 0.000000e+00
  br i1 %2092, label %2093, label %2097

; <label>:2093                                    ; preds = %2043
  %2094 = fdiv fast float %2083, %2091
  %2095 = fdiv fast float %2084, %2091
  %2096 = fdiv fast float %2085, %2091
  br label %2097

; <label>:2097                                    ; preds = %2093, %2043
  %2098 = phi float [ %2094, %2093 ], [ 0.000000e+00, %2043 ]
  %2099 = phi float [ %2095, %2093 ], [ 0.000000e+00, %2043 ]
  %2100 = phi float [ %2096, %2093 ], [ 0.000000e+00, %2043 ]
  %2101 = fmul fast float %91, %91
  %2102 = fmul fast float %92, %92
  %2103 = fadd fast float %2101, %2102
  %2104 = call float @dx.op.unary.f32(i32 24, float %2103)  ; Sqrt(value)
  %2105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2106 = extractvalue %dx.types.CBufRet.f32 %2105, 0
  %2107 = extractvalue %dx.types.CBufRet.f32 %2105, 1
  %2108 = fsub fast float %2104, %2106
  %2109 = fdiv fast float %2108, %2107
  %2110 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2111 = fmul fast float %2110, 2.000000e+00
  %2112 = fsub fast float 3.000000e+00, %2111
  %2113 = fmul fast float %2110, %2110
  %2114 = fmul fast float %2113, %2112
  %2115 = call float @dx.op.dot3.f32(i32 55, float %2098, float %2099, float %2100, float %1594, float %1595, float %1596)  ; Dot3(ax,ay,az,bx,by,bz)
  %2116 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2115)  ; FMax(a,b)
  %2117 = fmul fast float %2116, 0x400C5BF8A0000000
  %2118 = fmul fast float %2114, %2072
  %2119 = fmul fast float %2118, %2117
  %2120 = fadd fast float %2119, %2041
  %2121 = fmul fast float %2114, %2073
  %2122 = fmul fast float %2121, %2117
  %2123 = fadd fast float %2122, %2040
  %2124 = fmul fast float %2114, %2074
  %2125 = fmul fast float %2124, %2117
  %2126 = fadd fast float %2125, %2039
  br label %2127

; <label>:2127                                    ; preds = %2097, %2038, %1963
  %2128 = phi float [ %2126, %2097 ], [ %2039, %2038 ], [ %1975, %1963 ]
  %2129 = phi float [ %2123, %2097 ], [ %2040, %2038 ], [ %1974, %1963 ]
  %2130 = phi float [ %2120, %2097 ], [ %2041, %2038 ], [ %1973, %1963 ]
  %2131 = fcmp fast ogt float %1620, %1657
  %2132 = and i1 %1979, %2131
  %2133 = and i1 %1981, %2132
  %2134 = and i1 %1983, %2133
  %2135 = and i1 %1985, %2134
  br i1 %2135, label %2136, label %2193, !dx.controlflow.hints !69

; <label>:2136                                    ; preds = %2127
  %2137 = fmul fast float %1659, 0x3FC24924A0000000
  %2138 = fsub fast float %1620, %1657
  %2139 = fdiv fast float %2138, %2137
  %2140 = call float @dx.op.unary.f32(i32 7, float %2139)  ; Saturate(value)
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.f32 %2143, 0
  %2145 = extractvalue %dx.types.CBufRet.f32 %2143, 1
  %2146 = extractvalue %dx.types.CBufRet.f32 %2143, 2
  %2147 = fsub fast float %2142, %2130
  %2148 = fsub fast float %2144, %1970
  %2149 = fsub fast float %2145, %1971
  %2150 = fsub fast float %2146, %1972
  %2151 = fmul fast float %2147, %2140
  %2152 = fmul fast float %2148, %2140
  %2153 = fmul fast float %2149, %2140
  %2154 = fmul fast float %2150, %2140
  %2155 = fadd fast float %2151, %2130
  %2156 = fadd fast float %2152, %1970
  %2157 = fadd fast float %2153, %1971
  %2158 = fadd fast float %2154, %1972
  %2159 = extractvalue %dx.types.CBufRet.f32 %2141, 1
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.CBufRet.f32 %2160, 1
  %2163 = extractvalue %dx.types.CBufRet.f32 %2160, 2
  %2164 = fsub fast float %2159, %2129
  %2165 = fsub fast float %2161, %1967
  %2166 = fsub fast float %2162, %1968
  %2167 = fsub fast float %2163, %1969
  %2168 = fmul fast float %2164, %2140
  %2169 = fmul fast float %2165, %2140
  %2170 = fmul fast float %2166, %2140
  %2171 = fmul fast float %2167, %2140
  %2172 = fadd fast float %2168, %2129
  %2173 = fadd fast float %2169, %1967
  %2174 = fadd fast float %2170, %1968
  %2175 = fadd fast float %2171, %1969
  %2176 = extractvalue %dx.types.CBufRet.f32 %2141, 2
  %2177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2178 = extractvalue %dx.types.CBufRet.f32 %2177, 0
  %2179 = extractvalue %dx.types.CBufRet.f32 %2177, 1
  %2180 = extractvalue %dx.types.CBufRet.f32 %2177, 2
  %2181 = fsub fast float %2176, %2128
  %2182 = fsub fast float %2178, %1964
  %2183 = fsub fast float %2179, %1965
  %2184 = fsub fast float %2180, %1966
  %2185 = fmul fast float %2181, %2140
  %2186 = fmul fast float %2182, %2140
  %2187 = fmul fast float %2183, %2140
  %2188 = fmul fast float %2184, %2140
  %2189 = fadd fast float %2185, %2128
  %2190 = fadd fast float %2186, %1964
  %2191 = fadd fast float %2187, %1965
  %2192 = fadd fast float %2188, %1966
  br label %2193

; <label>:2193                                    ; preds = %2136, %2127
  %2194 = phi float [ %2189, %2136 ], [ %2128, %2127 ]
  %2195 = phi float [ %2190, %2136 ], [ %1964, %2127 ]
  %2196 = phi float [ %2191, %2136 ], [ %1965, %2127 ]
  %2197 = phi float [ %2192, %2136 ], [ %1966, %2127 ]
  %2198 = phi float [ %2172, %2136 ], [ %2129, %2127 ]
  %2199 = phi float [ %2173, %2136 ], [ %1967, %2127 ]
  %2200 = phi float [ %2174, %2136 ], [ %1968, %2127 ]
  %2201 = phi float [ %2175, %2136 ], [ %1969, %2127 ]
  %2202 = phi float [ %2155, %2136 ], [ %2130, %2127 ]
  %2203 = phi float [ %2156, %2136 ], [ %1970, %2127 ]
  %2204 = phi float [ %2157, %2136 ], [ %1971, %2127 ]
  %2205 = phi float [ %2158, %2136 ], [ %1972, %2127 ]
  %2206 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %2207 = fmul fast float %2206, %2202
  %2208 = fmul fast float %2206, %2198
  %2209 = fmul fast float %2206, %2194
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 3
  %2212 = fmul fast float %2207, %2211
  %2213 = fmul fast float %2208, %2211
  %2214 = fmul fast float %2209, %2211
  %2215 = fmul fast float %2203, 1.500000e+00
  %2216 = fmul fast float %2215, %2206
  %2217 = fmul fast float %2216, %2211
  %2218 = fmul fast float %2204, 1.500000e+00
  %2219 = fmul fast float %2218, %2206
  %2220 = fmul fast float %2219, %2211
  %2221 = fmul fast float %2205, 1.500000e+00
  %2222 = fmul fast float %2221, %2206
  %2223 = fmul fast float %2222, %2211
  %2224 = fmul fast float %2199, 1.500000e+00
  %2225 = fmul fast float %2224, %2206
  %2226 = fmul fast float %2225, %2211
  %2227 = fmul fast float %2200, 1.500000e+00
  %2228 = fmul fast float %2227, %2206
  %2229 = fmul fast float %2228, %2211
  %2230 = fmul fast float %2201, 1.500000e+00
  %2231 = fmul fast float %2230, %2206
  %2232 = fmul fast float %2231, %2211
  %2233 = fmul fast float %2195, 1.500000e+00
  %2234 = fmul fast float %2233, %2206
  %2235 = fmul fast float %2234, %2211
  %2236 = fmul fast float %2196, 1.500000e+00
  %2237 = fmul fast float %2236, %2206
  %2238 = fmul fast float %2237, %2211
  %2239 = fmul fast float %2197, 1.500000e+00
  %2240 = fmul fast float %2239, %2206
  %2241 = fmul fast float %2240, %2211
  %2242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2212)  ; FMax(a,b)
  %2243 = call float @dx.op.dot3.f32(i32 55, float %2217, float %2220, float %2223, float %2217, float %2220, float %2223)  ; Dot3(ax,ay,az,bx,by,bz)
  %2244 = fcmp fast oeq float %2243, 0.000000e+00
  %2245 = fcmp fast oeq float %2242, 0.000000e+00
  %2246 = or i1 %2245, %2244
  br i1 %2246, label %2276, label %2247

; <label>:2247                                    ; preds = %2193
  %2248 = fsub fast float -0.000000e+00, %2223
  %2249 = fsub fast float -0.000000e+00, %2217
  %2250 = call float @dx.op.unary.f32(i32 24, float %2243)  ; Sqrt(value)
  %2251 = fdiv fast float %2250, %2242
  %2252 = fcmp fast ogt float %2251, 0x3FFB6F8900000000
  %2253 = select i1 %2252, float 0x3FFB6F8900000000, float %2251
  %2254 = fmul fast float %2253, 0x3FE8A23460000000
  %2255 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2256 = call float @dx.op.binary.f32(i32 35, float %2253, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2257 = fmul fast float %2255, %2242
  %2258 = fmul fast float %2256, 0x3FF279A740000000
  %2259 = fadd fast float %2258, -1.000000e+00
  %2260 = call float @dx.op.dot3.f32(i32 55, float %2248, float %2249, float %2220, float %2248, float %2249, float %2220)  ; Dot3(ax,ay,az,bx,by,bz)
  %2261 = call float @dx.op.unary.f32(i32 25, float %2260)  ; Rsqrt(value)
  %2262 = fmul fast float %2261, %2248
  %2263 = fmul fast float %2261, %2249
  %2264 = fmul fast float %2261, %2220
  %2265 = fmul fast float %2259, %2259
  %2266 = fsub fast float 1.000000e+00, %2265
  %2267 = fmul fast float %2256, 0x40005F8BE0000000
  %2268 = fsub fast float 0x400C5BF8A0000000, %2267
  %2269 = fdiv fast float %2257, %2268
  %2270 = fmul fast float %2269, 0x3FEE31C3C0000000
  %2271 = fmul fast float %2270, %2266
  %2272 = fmul fast float %2256, 0x3FDACB7480000000
  %2273 = fadd fast float %2272, 0xBFD7347680000000
  %2274 = fmul fast float %2273, %2269
  %2275 = fmul fast float %2274, %2266
  br label %2276

; <label>:2276                                    ; preds = %2247, %2193
  %2277 = phi float [ %2262, %2247 ], [ 0.000000e+00, %2193 ]
  %2278 = phi float [ %2263, %2247 ], [ 0.000000e+00, %2193 ]
  %2279 = phi float [ %2264, %2247 ], [ 0.000000e+00, %2193 ]
  %2280 = phi float [ %2271, %2247 ], [ 0.000000e+00, %2193 ]
  %2281 = phi float [ %2275, %2247 ], [ 0.000000e+00, %2193 ]
  %2282 = call float @dx.op.dot3.f32(i32 55, float %2277, float %2278, float %2279, float %1594, float %1595, float %1596)  ; Dot3(ax,ay,az,bx,by,bz)
  %2283 = fmul fast float %2282, %2282
  %2284 = fmul fast float %2283, 0x3FEE471020000000
  %2285 = fadd fast float %2284, 0xBFD42F6020000000
  %2286 = fmul fast float %2242, 0x3FD20DD760000000
  %2287 = fmul fast float %2285, %2281
  %2288 = fmul fast float %2280, 0x3FDF454380000000
  %2289 = fmul fast float %2288, %2282
  %2290 = fadd fast float %2289, %2286
  %2291 = fadd fast float %2290, %2287
  %2292 = call float @dx.op.dot3.f32(i32 55, float %2277, float %2278, float %2279, float %1607, float %1608, float %1609)  ; Dot3(ax,ay,az,bx,by,bz)
  %2293 = fmul fast float %2292, 0x3FDF454380000000
  %2294 = fmul fast float %2292, %2292
  %2295 = fmul fast float %2294, 0x3FEE471020000000
  %2296 = fadd fast float %2295, 0xBFD42F6020000000
  %2297 = call float @dx.op.dot3.f32(i32 55, float %2242, float %2280, float %2281, float 0x3FD20DD760000000, float %2293, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2298 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2213)  ; FMax(a,b)
  %2299 = call float @dx.op.dot3.f32(i32 55, float %2226, float %2229, float %2232, float %2226, float %2229, float %2232)  ; Dot3(ax,ay,az,bx,by,bz)
  %2300 = fcmp fast oeq float %2299, 0.000000e+00
  %2301 = fcmp fast oeq float %2298, 0.000000e+00
  %2302 = or i1 %2301, %2300
  br i1 %2302, label %2332, label %2303

; <label>:2303                                    ; preds = %2276
  %2304 = fsub fast float -0.000000e+00, %2232
  %2305 = fsub fast float -0.000000e+00, %2226
  %2306 = call float @dx.op.unary.f32(i32 24, float %2299)  ; Sqrt(value)
  %2307 = fdiv fast float %2306, %2298
  %2308 = fcmp fast ogt float %2307, 0x3FFB6F8900000000
  %2309 = select i1 %2308, float 0x3FFB6F8900000000, float %2307
  %2310 = fmul fast float %2309, 0x3FE8A23460000000
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = call float @dx.op.binary.f32(i32 35, float %2309, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2313 = fmul fast float %2311, %2298
  %2314 = fmul fast float %2312, 0x3FF279A740000000
  %2315 = fadd fast float %2314, -1.000000e+00
  %2316 = call float @dx.op.dot3.f32(i32 55, float %2304, float %2305, float %2229, float %2304, float %2305, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2317 = call float @dx.op.unary.f32(i32 25, float %2316)  ; Rsqrt(value)
  %2318 = fmul fast float %2317, %2304
  %2319 = fmul fast float %2317, %2305
  %2320 = fmul fast float %2317, %2229
  %2321 = fmul fast float %2315, %2315
  %2322 = fsub fast float 1.000000e+00, %2321
  %2323 = fmul fast float %2312, 0x40005F8BE0000000
  %2324 = fsub fast float 0x400C5BF8A0000000, %2323
  %2325 = fdiv fast float %2313, %2324
  %2326 = fmul fast float %2325, 0x3FEE31C3C0000000
  %2327 = fmul fast float %2326, %2322
  %2328 = fmul fast float %2312, 0x3FDACB7480000000
  %2329 = fadd fast float %2328, 0xBFD7347680000000
  %2330 = fmul fast float %2329, %2325
  %2331 = fmul fast float %2330, %2322
  br label %2332

; <label>:2332                                    ; preds = %2303, %2276
  %2333 = phi float [ %2318, %2303 ], [ 0.000000e+00, %2276 ]
  %2334 = phi float [ %2319, %2303 ], [ 0.000000e+00, %2276 ]
  %2335 = phi float [ %2320, %2303 ], [ 0.000000e+00, %2276 ]
  %2336 = phi float [ %2327, %2303 ], [ 0.000000e+00, %2276 ]
  %2337 = phi float [ %2331, %2303 ], [ 0.000000e+00, %2276 ]
  %2338 = call float @dx.op.dot3.f32(i32 55, float %2333, float %2334, float %2335, float %1594, float %1595, float %1596)  ; Dot3(ax,ay,az,bx,by,bz)
  %2339 = fmul fast float %2338, %2338
  %2340 = fmul fast float %2339, 0x3FEE471020000000
  %2341 = fadd fast float %2340, 0xBFD42F6020000000
  %2342 = fmul fast float %2298, 0x3FD20DD760000000
  %2343 = fmul fast float %2341, %2337
  %2344 = fmul fast float %2336, 0x3FDF454380000000
  %2345 = fmul fast float %2344, %2338
  %2346 = fadd fast float %2345, %2342
  %2347 = fadd fast float %2346, %2343
  %2348 = call float @dx.op.dot3.f32(i32 55, float %2333, float %2334, float %2335, float %1607, float %1608, float %1609)  ; Dot3(ax,ay,az,bx,by,bz)
  %2349 = fmul fast float %2348, 0x3FDF454380000000
  %2350 = fmul fast float %2348, %2348
  %2351 = fmul fast float %2350, 0x3FEE471020000000
  %2352 = fadd fast float %2351, 0xBFD42F6020000000
  %2353 = call float @dx.op.dot3.f32(i32 55, float %2298, float %2336, float %2337, float 0x3FD20DD760000000, float %2349, float %2352)  ; Dot3(ax,ay,az,bx,by,bz)
  %2354 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2214)  ; FMax(a,b)
  %2355 = call float @dx.op.dot3.f32(i32 55, float %2235, float %2238, float %2241, float %2235, float %2238, float %2241)  ; Dot3(ax,ay,az,bx,by,bz)
  %2356 = fcmp fast oeq float %2355, 0.000000e+00
  %2357 = fcmp fast oeq float %2354, 0.000000e+00
  %2358 = or i1 %2357, %2356
  br i1 %2358, label %2388, label %2359

; <label>:2359                                    ; preds = %2332
  %2360 = fsub fast float -0.000000e+00, %2241
  %2361 = fsub fast float -0.000000e+00, %2235
  %2362 = call float @dx.op.unary.f32(i32 24, float %2355)  ; Sqrt(value)
  %2363 = fdiv fast float %2362, %2354
  %2364 = fcmp fast ogt float %2363, 0x3FFB6F8900000000
  %2365 = select i1 %2364, float 0x3FFB6F8900000000, float %2363
  %2366 = fmul fast float %2365, 0x3FE8A23460000000
  %2367 = call float @dx.op.unary.f32(i32 7, float %2366)  ; Saturate(value)
  %2368 = call float @dx.op.binary.f32(i32 35, float %2365, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2369 = fmul fast float %2367, %2354
  %2370 = fmul fast float %2368, 0x3FF279A740000000
  %2371 = fadd fast float %2370, -1.000000e+00
  %2372 = call float @dx.op.dot3.f32(i32 55, float %2360, float %2361, float %2238, float %2360, float %2361, float %2238)  ; Dot3(ax,ay,az,bx,by,bz)
  %2373 = call float @dx.op.unary.f32(i32 25, float %2372)  ; Rsqrt(value)
  %2374 = fmul fast float %2373, %2360
  %2375 = fmul fast float %2373, %2361
  %2376 = fmul fast float %2373, %2238
  %2377 = fmul fast float %2371, %2371
  %2378 = fsub fast float 1.000000e+00, %2377
  %2379 = fmul fast float %2368, 0x40005F8BE0000000
  %2380 = fsub fast float 0x400C5BF8A0000000, %2379
  %2381 = fdiv fast float %2369, %2380
  %2382 = fmul fast float %2381, 0x3FEE31C3C0000000
  %2383 = fmul fast float %2382, %2378
  %2384 = fmul fast float %2368, 0x3FDACB7480000000
  %2385 = fadd fast float %2384, 0xBFD7347680000000
  %2386 = fmul fast float %2385, %2381
  %2387 = fmul fast float %2386, %2378
  br label %2388

; <label>:2388                                    ; preds = %2359, %2332
  %2389 = phi float [ %2374, %2359 ], [ 0.000000e+00, %2332 ]
  %2390 = phi float [ %2375, %2359 ], [ 0.000000e+00, %2332 ]
  %2391 = phi float [ %2376, %2359 ], [ 0.000000e+00, %2332 ]
  %2392 = phi float [ %2383, %2359 ], [ 0.000000e+00, %2332 ]
  %2393 = phi float [ %2387, %2359 ], [ 0.000000e+00, %2332 ]
  %2394 = call float @dx.op.dot3.f32(i32 55, float %2389, float %2390, float %2391, float %1594, float %1595, float %1596)  ; Dot3(ax,ay,az,bx,by,bz)
  %2395 = fmul fast float %2394, %2394
  %2396 = fmul fast float %2395, 0x3FEE471020000000
  %2397 = fadd fast float %2396, 0xBFD42F6020000000
  %2398 = fmul fast float %2354, 0x3FD20DD760000000
  %2399 = fmul fast float %2397, %2393
  %2400 = fmul fast float %2392, 0x3FDF454380000000
  %2401 = fmul fast float %2400, %2394
  %2402 = fadd fast float %2401, %2398
  %2403 = fadd fast float %2402, %2399
  %2404 = call float @dx.op.dot3.f32(i32 55, float %2389, float %2390, float %2391, float %1607, float %1608, float %1609)  ; Dot3(ax,ay,az,bx,by,bz)
  %2405 = fmul fast float %2404, 0x3FDF454380000000
  %2406 = fmul fast float %2404, %2404
  %2407 = fmul fast float %2406, 0x3FEE471020000000
  %2408 = fadd fast float %2407, 0xBFD42F6020000000
  %2409 = call float @dx.op.dot3.f32(i32 55, float %2354, float %2392, float %2393, float 0x3FD20DD760000000, float %2405, float %2408)  ; Dot3(ax,ay,az,bx,by,bz)
  %2410 = call float @dx.op.binary.f32(i32 35, float %2291, float 0.000000e+00)  ; FMax(a,b)
  %2411 = call float @dx.op.binary.f32(i32 35, float %2347, float 0.000000e+00)  ; FMax(a,b)
  %2412 = call float @dx.op.binary.f32(i32 35, float %2403, float 0.000000e+00)  ; FMax(a,b)
  %2413 = call float @dx.op.binary.f32(i32 35, float %2297, float 0.000000e+00)  ; FMax(a,b)
  %2414 = call float @dx.op.binary.f32(i32 35, float %2353, float 0.000000e+00)  ; FMax(a,b)
  %2415 = call float @dx.op.binary.f32(i32 35, float %2409, float 0.000000e+00)  ; FMax(a,b)
  %2416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2417 = extractvalue %dx.types.CBufRet.f32 %2416, 0
  %2418 = call float @dx.op.binary.f32(i32 36, float %1591, float %2417)  ; FMin(a,b)
  %2419 = fsub fast float 1.000000e+00, %1610
  %2420 = fmul fast float %2418, %2419
  %2421 = fsub fast float 1.000000e+00, %2420
  %2422 = bitcast float %2421 to i32
  %2423 = sub nsw i32 2129859010, %2422
  %2424 = bitcast i32 %2423 to float
  %2425 = call float @dx.op.binary.f32(i32 36, float %1592, float %2417)  ; FMin(a,b)
  %2426 = fmul fast float %2425, %2419
  %2427 = fsub fast float 1.000000e+00, %2426
  %2428 = bitcast float %2427 to i32
  %2429 = sub nsw i32 2129859010, %2428
  %2430 = bitcast i32 %2429 to float
  %2431 = call float @dx.op.binary.f32(i32 36, float %1593, float %2417)  ; FMin(a,b)
  %2432 = fmul fast float %2431, %2419
  %2433 = fsub fast float 1.000000e+00, %2432
  %2434 = bitcast float %2433 to i32
  %2435 = sub nsw i32 2129859010, %2434
  %2436 = bitcast i32 %2435 to float
  %2437 = fmul fast float %2410, %1610
  %2438 = fmul fast float %2437, %2424
  %2439 = fmul fast float %2411, %1610
  %2440 = fmul fast float %2439, %2430
  %2441 = fmul fast float %2412, %1610
  %2442 = fmul fast float %2441, %2436
  %2443 = call float @dx.op.binary.f32(i32 36, float %1588, float %2417)  ; FMin(a,b)
  %2444 = fmul fast float %2443, %2419
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = bitcast float %2445 to i32
  %2447 = sub nsw i32 2129859010, %2446
  %2448 = bitcast i32 %2447 to float
  %2449 = call float @dx.op.binary.f32(i32 36, float %1589, float %2417)  ; FMin(a,b)
  %2450 = fmul fast float %2449, %2419
  %2451 = fsub fast float 1.000000e+00, %2450
  %2452 = bitcast float %2451 to i32
  %2453 = sub nsw i32 2129859010, %2452
  %2454 = bitcast i32 %2453 to float
  %2455 = call float @dx.op.binary.f32(i32 36, float %1599, float %2417)  ; FMin(a,b)
  %2456 = fmul fast float %2455, %2419
  %2457 = fsub fast float 1.000000e+00, %2456
  %2458 = bitcast float %2457 to i32
  %2459 = sub nsw i32 2129859010, %2458
  %2460 = bitcast i32 %2459 to float
  %2461 = fmul fast float %2413, %1610
  %2462 = fmul fast float %2461, %2448
  %2463 = fmul fast float %2414, %1610
  %2464 = fmul fast float %2463, %2454
  %2465 = fmul fast float %2415, %1610
  %2466 = fmul fast float %2465, %2460
  %2467 = call float @dx.op.dot3.f32(i32 55, float %2438, float %2440, float %2442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2468 = select i1 %401, float 0.000000e+00, float %2438
  %2469 = select i1 %401, float %2467, float %2440
  %2470 = select i1 %401, float 0.000000e+00, float %2442
  %2471 = call float @dx.op.dot3.f32(i32 55, float %2462, float %2464, float %2466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2472 = select i1 %401, float 0.000000e+00, float %2462
  %2473 = select i1 %401, float %2471, float %2464
  %2474 = select i1 %401, float 0.000000e+00, float %2466
  %2475 = fmul fast float %1601, 9.843750e-01
  %2476 = fmul fast float %1597, 9.843750e-01
  %2477 = fadd fast float %2475, 7.812500e-03
  %2478 = fadd fast float %2476, 7.812500e-03
  %2479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %2477, float %2478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2480 = extractvalue %dx.types.ResRet.f32 %2479, 2
  %2481 = extractvalue %dx.types.ResRet.f32 %2479, 3
  %2482 = fmul fast float %2480, %1588
  %2483 = fmul fast float %2480, %1589
  %2484 = fmul fast float %2480, %1599
  %2485 = fadd fast float %2482, %2481
  %2486 = fadd fast float %2483, %2481
  %2487 = fadd fast float %2484, %2481
  %2488 = fcmp fast ogt float %965, 0.000000e+00
  br i1 %2488, label %2489, label %2515

; <label>:2489                                    ; preds = %2388
  %2490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %37, float %965, float %1601, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.ResRet.f32 %2490, 1
  %2493 = extractvalue %dx.types.ResRet.f32 %2490, 2
  %2494 = fadd fast float %2491, -5.000000e-01
  %2495 = fadd fast float %2492, -5.000000e-01
  %2496 = fadd fast float %2493, -5.000000e-01
  %2497 = fsub fast float 1.000000e+00, %1588
  %2498 = fsub fast float 1.000000e+00, %1589
  %2499 = fsub fast float 1.000000e+00, %1599
  %2500 = fmul fast float %1588, 4.000000e+00
  %2501 = fmul fast float %2500, %2497
  %2502 = fmul fast float %2501, %2494
  %2503 = fmul fast float %1589, 4.000000e+00
  %2504 = fmul fast float %2503, %2498
  %2505 = fmul fast float %2504, %2495
  %2506 = fmul fast float %1599, 4.000000e+00
  %2507 = fmul fast float %2506, %2499
  %2508 = fmul fast float %2507, %2496
  %2509 = fadd fast float %2502, %2485
  %2510 = fadd fast float %2505, %2486
  %2511 = fadd fast float %2508, %2487
  %2512 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  %2513 = call float @dx.op.unary.f32(i32 7, float %2510)  ; Saturate(value)
  %2514 = call float @dx.op.unary.f32(i32 7, float %2511)  ; Saturate(value)
  br label %2515

; <label>:2515                                    ; preds = %2489, %2388
  %2516 = phi float [ %2512, %2489 ], [ %2485, %2388 ]
  %2517 = phi float [ %2513, %2489 ], [ %2486, %2388 ]
  %2518 = phi float [ %2514, %2489 ], [ %2487, %2388 ]
  %2519 = call float @dx.op.binary.f32(i32 35, float %2517, float %2518)  ; FMax(a,b)
  %2520 = call float @dx.op.binary.f32(i32 35, float %2516, float %2519)  ; FMax(a,b)
  %2521 = fsub fast float 1.000000e+00, %2520
  %2522 = fmul fast float %2521, %2468
  %2523 = fmul fast float %2521, %2469
  %2524 = fmul fast float %2521, %2470
  %2525 = call float @dx.op.dot3.f32(i32 55, float %1591, float %1592, float %1593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2526 = fcmp fast ogt float %2525, 0x3E7FF19E20000000
  %2527 = fdiv fast float 1.000000e+00, %2525
  %2528 = select i1 %2526, float %2527, float 0.000000e+00
  %2529 = fmul fast float %2528, %1591
  %2530 = fmul fast float %2528, %1592
  %2531 = fmul fast float %2528, %1593
  %2532 = fadd fast float %2529, -1.000000e+00
  %2533 = fadd fast float %2530, -1.000000e+00
  %2534 = fadd fast float %2531, -1.000000e+00
  %2535 = fmul fast float %2532, 5.000000e-01
  %2536 = fmul fast float %2533, 5.000000e-01
  %2537 = fmul fast float %2534, 5.000000e-01
  %2538 = fadd fast float %2535, 1.000000e+00
  %2539 = fadd fast float %2536, 1.000000e+00
  %2540 = fadd fast float %2537, 1.000000e+00
  %2541 = fmul fast float %2516, %2472
  %2542 = fmul fast float %2517, %2473
  %2543 = fmul fast float %2518, %2474
  %2544 = fsub fast float 1.000000e+00, %1601
  %2545 = bitcast float %2544 to i32
  %2546 = sitofp i32 %2545 to float
  %2547 = fmul fast float %2546, 5.000000e+00
  %2548 = fadd fast float %2547, 0xC1EFBF8940000000
  %2549 = fptosi float %2548 to i32
  %2550 = bitcast i32 %2549 to float
  %2551 = fmul fast float %2550, %964
  %2552 = fmul fast float %2468, %2551
  %2553 = fmul fast float %2552, %2521
  %2554 = fmul fast float %2553, %2538
  %2555 = fmul fast float %2469, %2551
  %2556 = fmul fast float %2555, %2521
  %2557 = fmul fast float %2556, %2539
  %2558 = fmul fast float %2470, %2551
  %2559 = fmul fast float %2558, %2521
  %2560 = fmul fast float %2559, %2540
  %2561 = fmul fast float %2522, %985
  %2562 = fmul fast float %2523, %985
  %2563 = fmul fast float %2524, %985
  %2564 = fadd fast float %2541, %966
  %2565 = fadd fast float %2564, %2554
  %2566 = fmul fast float %2565, %985
  %2567 = fadd fast float %2542, %967
  %2568 = fadd fast float %2567, %2557
  %2569 = fmul fast float %2568, %985
  %2570 = fadd fast float %2543, %968
  %2571 = fadd fast float %2570, %2560
  %2572 = fmul fast float %2571, %985
  %2573 = bitcast i32 %1613 to float
  %2574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2575 = extractvalue %dx.types.CBufRet.f32 %2574, 3
  %2576 = fcmp fast oeq float %2575, 0.000000e+00
  br i1 %2576, label %2802, label %2577

; <label>:2577                                    ; preds = %2515
  %2578 = extractvalue %dx.types.CBufRet.f32 %2574, 0
  %2579 = extractvalue %dx.types.CBufRet.f32 %2574, 1
  %2580 = extractvalue %dx.types.CBufRet.f32 %2574, 2
  %2581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2582 = extractvalue %dx.types.CBufRet.f32 %2581, 0
  %2583 = extractvalue %dx.types.CBufRet.f32 %2581, 1
  %2584 = extractvalue %dx.types.CBufRet.f32 %2581, 2
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.CBufRet.f32 %2585, 1
  %2588 = call float @dx.op.dot3.f32(i32 55, float %2582, float %2583, float %2584, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2589 = select i1 %401, float %2586, float %2582
  %2590 = select i1 %401, float %2588, float %2583
  %2591 = select i1 %401, float %2587, float %2584
  %2592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2593 = extractvalue %dx.types.CBufRet.f32 %2592, 1
  %2594 = fcmp fast une float %2593, 0.000000e+00
  br i1 %2594, label %2595, label %2610

; <label>:2595                                    ; preds = %2577
  %2596 = lshr i32 %104, 4
  %2597 = lshr i32 %105, 4
  %2598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.f32 %2598, 0
  %2600 = fptoui float %2599 to i32
  %2601 = add i32 %2600, 15
  %2602 = lshr i32 %2601, 4
  %2603 = mul i32 %2602, %2597
  %2604 = add i32 %2603, %2596
  %2605 = shl i32 %2604, 3
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, -268435456
  %2609 = icmp eq i32 %2608, -1342177280
  br i1 %2609, label %2620, label %2610

; <label>:2610                                    ; preds = %2595, %2577
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 2
  %2613 = extractvalue %dx.types.CBufRet.f32 %2611, 3
  %2614 = fmul fast float %2612, %47
  %2615 = fmul fast float %2613, %48
  %2616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %38, float %2614, float %2615, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2617 = extractvalue %dx.types.ResRet.f32 %2616, 0
  %2618 = extractvalue %dx.types.ResRet.f32 %2616, 1
  %2619 = extractvalue %dx.types.ResRet.f32 %2616, 2
  br label %2620

; <label>:2620                                    ; preds = %2610, %2595
  %2621 = phi float [ %2617, %2610 ], [ 0.000000e+00, %2595 ]
  %2622 = phi float [ %2618, %2610 ], [ 0.000000e+00, %2595 ]
  %2623 = phi float [ %2619, %2610 ], [ 0.000000e+00, %2595 ]
  %2624 = call float @dx.op.binary.f32(i32 36, float %2622, float %2623)  ; FMin(a,b)
  %2625 = call float @dx.op.binary.f32(i32 36, float %2621, float %2624)  ; FMin(a,b)
  %2626 = fcmp fast ogt float %2625, 0.000000e+00
  br i1 %2626, label %2627, label %2802, !dx.controlflow.hints !70

; <label>:2627                                    ; preds = %2620
  %2628 = fmul fast float %2621, %2589
  %2629 = fmul fast float %2622, %2590
  %2630 = fmul fast float %2623, %2591
  %2631 = fsub fast float %2578, %1587
  %2632 = fsub fast float %2579, %1586
  %2633 = fsub fast float %2580, %1585
  %2634 = call float @dx.op.dot3.f32(i32 55, float %2631, float %2632, float %2633, float %2631, float %2632, float %2633)  ; Dot3(ax,ay,az,bx,by,bz)
  %2635 = call float @dx.op.unary.f32(i32 25, float %2634)  ; Rsqrt(value)
  %2636 = fmul fast float %2635, %2631
  %2637 = fmul fast float %2635, %2632
  %2638 = fmul fast float %2635, %2633
  %2639 = call float @dx.op.dot3.f32(i32 55, float %2578, float %2579, float %2580, float %1594, float %1595, float %1596)  ; Dot3(ax,ay,az,bx,by,bz)
  %2640 = call float @dx.op.dot3.f32(i32 55, float %1584, float %1583, float %1582, float %2636, float %2637, float %2638)  ; Dot3(ax,ay,az,bx,by,bz)
  %2641 = call float @dx.op.unary.f32(i32 7, float %2639)  ; Saturate(value)
  %2642 = fmul fast float %2641, %2641
  %2643 = fmul fast float %2642, %2573
  %2644 = call float @dx.op.unary.f32(i32 7, float %2643)  ; Saturate(value)
  %2645 = fmul fast float %2644, %2641
  %2646 = call float @dx.op.dot3.f32(i32 55, float %1594, float %1595, float %1596, float %2636, float %2637, float %2638)  ; Dot3(ax,ay,az,bx,by,bz)
  %2647 = fmul fast float %2646, %2646
  %2648 = call float @dx.op.unary.f32(i32 6, float %2639)  ; FAbs(value)
  %2649 = fsub fast float 1.000000e+00, %1597
  %2650 = call float @dx.op.binary.f32(i32 35, float %2649, float 0x3F847AE140000000)  ; FMax(a,b)
  %2651 = fmul fast float %2650, %2650
  %2652 = fmul fast float %2651, %2651
  %2653 = fsub fast float 1.000000e+00, %2652
  %2654 = fmul fast float %1601, %1601
  %2655 = fmul fast float %2654, %2653
  %2656 = fadd fast float %2655, %2652
  %2657 = bitcast float %2656 to i32
  %2658 = ashr i32 %2657, 1
  %2659 = add nsw i32 %2658, 532487669
  %2660 = bitcast i32 %2659 to float
  %2661 = fadd fast float %2660, %1601
  %2662 = fmul fast float %2652, %2647
  %2663 = fsub fast float 1.000000e+00, %2647
  %2664 = fadd fast float %2663, %2662
  %2665 = fmul fast float %2648, %2648
  %2666 = fmul fast float %2665, %2653
  %2667 = fadd fast float %2666, %2652
  %2668 = bitcast float %2667 to i32
  %2669 = ashr i32 %2668, 1
  %2670 = add nsw i32 %2669, 532487669
  %2671 = bitcast i32 %2670 to float
  %2672 = fadd fast float %2671, %2648
  %2673 = fmul fast float %2664, %2664
  %2674 = fmul fast float %2673, %2661
  %2675 = fmul fast float %2674, %2672
  %2676 = fdiv fast float 0x3FF0A00000000000, %2675
  %2677 = fmul fast float %2676, %2652
  %2678 = call float @dx.op.unary.f32(i32 6, float %2640)  ; FAbs(value)
  %2679 = fsub fast float 1.000000e+00, %2678
  %2680 = bitcast float %2679 to i32
  %2681 = sitofp i32 %2680 to float
  %2682 = fmul fast float %2681, 5.000000e+00
  %2683 = fadd fast float %2682, 0xC1EFBF8940000000
  %2684 = fptosi float %2683 to i32
  %2685 = bitcast i32 %2684 to float
  %2686 = fsub fast float 1.000000e+00, %1588
  %2687 = fsub fast float 1.000000e+00, %1589
  %2688 = fsub fast float 1.000000e+00, %1599
  %2689 = fmul fast float %2685, %2686
  %2690 = fmul fast float %2685, %2687
  %2691 = fmul fast float %2685, %2688
  %2692 = fadd fast float %2689, %1588
  %2693 = fadd fast float %2690, %1589
  %2694 = fadd fast float %2691, %1599
  br i1 %2488, label %2695, label %2718

; <label>:2695                                    ; preds = %2627
  %2696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %37, float %965, float %2678, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2697 = extractvalue %dx.types.ResRet.f32 %2696, 0
  %2698 = extractvalue %dx.types.ResRet.f32 %2696, 1
  %2699 = extractvalue %dx.types.ResRet.f32 %2696, 2
  %2700 = fadd fast float %2697, -5.000000e-01
  %2701 = fadd fast float %2698, -5.000000e-01
  %2702 = fadd fast float %2699, -5.000000e-01
  %2703 = fmul fast float %1588, 4.000000e+00
  %2704 = fmul fast float %2703, %2686
  %2705 = fmul fast float %2704, %2700
  %2706 = fmul fast float %1589, 4.000000e+00
  %2707 = fmul fast float %2706, %2687
  %2708 = fmul fast float %2707, %2701
  %2709 = fmul fast float %1599, 4.000000e+00
  %2710 = fmul fast float %2709, %2688
  %2711 = fmul fast float %2710, %2702
  %2712 = fadd fast float %2705, %2692
  %2713 = fadd fast float %2708, %2693
  %2714 = fadd fast float %2711, %2694
  %2715 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2716 = call float @dx.op.unary.f32(i32 7, float %2713)  ; Saturate(value)
  %2717 = call float @dx.op.unary.f32(i32 7, float %2714)  ; Saturate(value)
  br label %2718

; <label>:2718                                    ; preds = %2695, %2627
  %2719 = phi float [ %2715, %2695 ], [ %2692, %2627 ]
  %2720 = phi float [ %2716, %2695 ], [ %2693, %2627 ]
  %2721 = phi float [ %2717, %2695 ], [ %2694, %2627 ]
  %2722 = fmul fast float %2639, 9.843750e-01
  %2723 = fadd fast float %2722, 7.812500e-03
  %2724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %2723, float %2478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 2
  %2726 = extractvalue %dx.types.ResRet.f32 %2724, 3
  %2727 = fmul fast float %2725, %1588
  %2728 = fmul fast float %2725, %1589
  %2729 = fmul fast float %2725, %1599
  %2730 = fadd fast float %2727, %2726
  %2731 = fadd fast float %2728, %2726
  %2732 = fadd fast float %2729, %2726
  br i1 %2488, label %2733, label %2756

; <label>:2733                                    ; preds = %2718
  %2734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %37, float %965, float %2639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.ResRet.f32 %2734, 1
  %2737 = extractvalue %dx.types.ResRet.f32 %2734, 2
  %2738 = fadd fast float %2735, -5.000000e-01
  %2739 = fadd fast float %2736, -5.000000e-01
  %2740 = fadd fast float %2737, -5.000000e-01
  %2741 = fmul fast float %1588, 4.000000e+00
  %2742 = fmul fast float %2741, %2686
  %2743 = fmul fast float %2742, %2738
  %2744 = fmul fast float %1589, 4.000000e+00
  %2745 = fmul fast float %2744, %2687
  %2746 = fmul fast float %2745, %2739
  %2747 = fmul fast float %1599, 4.000000e+00
  %2748 = fmul fast float %2747, %2688
  %2749 = fmul fast float %2748, %2740
  %2750 = fadd fast float %2743, %2730
  %2751 = fadd fast float %2746, %2731
  %2752 = fadd fast float %2749, %2732
  %2753 = call float @dx.op.unary.f32(i32 7, float %2750)  ; Saturate(value)
  %2754 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2755 = call float @dx.op.unary.f32(i32 7, float %2752)  ; Saturate(value)
  br label %2756

; <label>:2756                                    ; preds = %2733, %2718
  %2757 = phi float [ %2753, %2733 ], [ %2730, %2718 ]
  %2758 = phi float [ %2754, %2733 ], [ %2731, %2718 ]
  %2759 = phi float [ %2755, %2733 ], [ %2732, %2718 ]
  %2760 = call float @dx.op.binary.f32(i32 35, float %2758, float %2759)  ; FMax(a,b)
  %2761 = call float @dx.op.binary.f32(i32 35, float %2757, float %2760)  ; FMax(a,b)
  %2762 = fsub fast float 1.000000e+00, %2761
  %2763 = fmul fast float %2719, %2677
  %2764 = fmul fast float %2720, %2677
  %2765 = fmul fast float %2721, %2677
  %2766 = fsub fast float 1.000000e+00, %2640
  %2767 = bitcast float %2766 to i32
  %2768 = sitofp i32 %2767 to float
  %2769 = fmul fast float %2768, 5.000000e+00
  %2770 = fadd fast float %2769, 0xC1EFBF8940000000
  %2771 = fptosi float %2770 to i32
  %2772 = bitcast i32 %2771 to float
  %2773 = fmul fast float %2772, %964
  %2774 = fmul fast float %2762, %2773
  %2775 = fmul fast float %2774, %2538
  %2776 = fmul fast float %2774, %2539
  %2777 = fmul fast float %2774, %2540
  %2778 = fadd fast float %2775, %2763
  %2779 = fadd fast float %2776, %2764
  %2780 = fadd fast float %2777, %2765
  %2781 = fmul fast float %2645, %2628
  %2782 = fmul fast float %2781, %2762
  %2783 = fmul fast float %2645, %2629
  %2784 = fmul fast float %2783, %2762
  %2785 = fmul fast float %2645, %2630
  %2786 = fmul fast float %2785, %2762
  %2787 = fmul fast float %2781, %2778
  %2788 = fmul fast float %2783, %2779
  %2789 = fmul fast float %2785, %2780
  %2790 = fadd fast float %2782, %2522
  %2791 = fmul fast float %2790, %985
  %2792 = fadd fast float %2784, %2523
  %2793 = fmul fast float %2792, %985
  %2794 = fadd fast float %2786, %2524
  %2795 = fmul fast float %2794, %985
  %2796 = fadd fast float %2787, %2565
  %2797 = fmul fast float %2796, %985
  %2798 = fadd fast float %2788, %2568
  %2799 = fmul fast float %2798, %985
  %2800 = fadd fast float %2789, %2571
  %2801 = fmul fast float %2800, %985
  br label %2802

; <label>:2802                                    ; preds = %2756, %2620, %2515
  %2803 = phi float [ %2566, %2515 ], [ %2566, %2620 ], [ %2797, %2756 ]
  %2804 = phi float [ %2569, %2515 ], [ %2569, %2620 ], [ %2799, %2756 ]
  %2805 = phi float [ %2572, %2515 ], [ %2572, %2620 ], [ %2801, %2756 ]
  %2806 = phi float [ %2561, %2515 ], [ %2561, %2620 ], [ %2791, %2756 ]
  %2807 = phi float [ %2562, %2515 ], [ %2562, %2620 ], [ %2793, %2756 ]
  %2808 = phi float [ %2563, %2515 ], [ %2563, %2620 ], [ %2795, %2756 ]
  %2809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.i32 %2809, 0
  %2811 = icmp eq i32 %2810, 0
  br i1 %2811, label %3244, label %2812

; <label>:2812                                    ; preds = %2802
  %2813 = lshr i32 %104, 4
  %2814 = lshr i32 %105, 4
  %2815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2816 = extractvalue %dx.types.CBufRet.i32 %2815, 0
  %2817 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2814, i32 %2816, i32 %2813)  ; UMad(a,b,c)
  %2818 = add nsw i32 %2810, -1
  %2819 = call i32 @dx.op.binary.i32(i32 37, i32 %2818, i32 0)  ; IMax(a,b)
  %2820 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %2821 = fptoui float %2820 to i32
  %2822 = lshr i32 %2821, 5
  %2823 = call i32 @dx.op.binary.i32(i32 40, i32 %2822, i32 8191)  ; UMin(a,b)
  %2824 = shl i32 %2823, 2
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = lshr i32 %2826, 16
  %2828 = and i32 %2826, 65535
  %2829 = lshr i32 %2826, 21
  %2830 = lshr i32 %2828, 5
  %2831 = call i32 @dx.op.binary.i32(i32 40, i32 %2830, i32 %2819)  ; UMin(a,b)
  %2832 = icmp ugt i32 %2829, %2831
  br i1 %2832, label %3244, label %2833

; <label>:2833                                    ; preds = %2812
  br label %2834

; <label>:2834                                    ; preds = %3234, %2833
  %2835 = phi i32 [ %3241, %3234 ], [ %2829, %2833 ]
  %2836 = phi float [ %3235, %3234 ], [ %2803, %2833 ]
  %2837 = phi float [ %3236, %3234 ], [ %2804, %2833 ]
  %2838 = phi float [ %3237, %3234 ], [ %2805, %2833 ]
  %2839 = phi float [ %3238, %3234 ], [ %2806, %2833 ]
  %2840 = phi float [ %3239, %3234 ], [ %2807, %2833 ]
  %2841 = phi float [ %3240, %3234 ], [ %2808, %2833 ]
  %2842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2843 = extractvalue %dx.types.CBufRet.i32 %2842, 0
  %2844 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2817, i32 %2843, i32 %2835)  ; UMad(a,b,c)
  %2845 = shl i32 %2844, 2
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = shl i32 %2835, 5
  %2849 = sub nsw i32 %2827, %2848
  %2850 = call i32 @dx.op.binary.i32(i32 37, i32 %2849, i32 0)  ; IMax(a,b)
  %2851 = call i32 @dx.op.binary.i32(i32 38, i32 %2850, i32 31)  ; IMin(a,b)
  %2852 = sub nsw i32 1, %2827
  %2853 = add nsw i32 %2852, %2828
  %2854 = call i32 @dx.op.binary.i32(i32 37, i32 %2853, i32 0)  ; IMax(a,b)
  %2855 = call i32 @dx.op.binary.i32(i32 38, i32 %2854, i32 32)  ; IMin(a,b)
  %2856 = and i32 %2855, 31
  %2857 = shl i32 -1, %2856
  %2858 = xor i32 %2857, -1
  %2859 = and i32 %2851, 31
  %2860 = shl i32 %2858, %2859
  %2861 = icmp eq i32 %2855, 32
  %2862 = select i1 %2861, i32 -1, i32 %2860
  %2863 = and i32 %2862, %2847
  %2864 = icmp eq i32 %2863, 0
  br i1 %2864, label %3234, label %2865

; <label>:2865                                    ; preds = %2834
  br label %2866

; <label>:2866                                    ; preds = %2946, %2865
  %2867 = phi i32 [ %2878, %2946 ], [ %2863, %2865 ]
  %2868 = phi float [ %2947, %2946 ], [ %2836, %2865 ]
  %2869 = phi float [ %2948, %2946 ], [ %2837, %2865 ]
  %2870 = phi float [ %2949, %2946 ], [ %2838, %2865 ]
  %2871 = phi float [ %2950, %2946 ], [ %2839, %2865 ]
  %2872 = phi float [ %2951, %2946 ], [ %2840, %2865 ]
  %2873 = phi float [ %2952, %2946 ], [ %2841, %2865 ]
  %2874 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2867)  ; FirstbitLo(value)
  %2875 = add i32 %2874, %2848
  %2876 = and i32 %2874, 31
  %2877 = shl i32 1, %2876
  %2878 = xor i32 %2877, %2867
  %2879 = mul i32 %2875, 112
  %2880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = extractvalue %dx.types.ResRet.f32 %2880, 1
  %2883 = extractvalue %dx.types.ResRet.f32 %2880, 2
  %2884 = or i32 %2879, 12
  %2885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = add i32 %2879, 44
  %2888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.f32 %2888, 0
  %2890 = add i32 %2879, 48
  %2891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2890, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.f32 %2891, 0
  %2893 = extractvalue %dx.types.ResRet.f32 %2891, 1
  %2894 = extractvalue %dx.types.ResRet.f32 %2891, 2
  %2895 = add i32 %2879, 80
  %2896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.f32 %2896, 1
  %2898 = extractvalue %dx.types.ResRet.f32 %2896, 2
  %2899 = call float @dx.op.dot3.f32(i32 55, float %2881, float %2882, float %2883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2900 = select i1 %401, float %2897, float %2881
  %2901 = select i1 %401, float %2899, float %2882
  %2902 = select i1 %401, float %2898, float %2883
  %2903 = fsub fast float %2892, %91
  %2904 = fsub fast float %2893, %92
  %2905 = fsub fast float %2894, %93
  %2906 = call float @dx.op.dot3.f32(i32 55, float %2903, float %2904, float %2905, float %2903, float %2904, float %2905)  ; Dot3(ax,ay,az,bx,by,bz)
  %2907 = call float @dx.op.unary.f32(i32 24, float %2906)  ; Sqrt(value)
  %2908 = fdiv fast float 1.000000e+00, %2907
  %2909 = fmul fast float %2908, %2903
  %2910 = fmul fast float %2908, %2904
  %2911 = fmul fast float %2908, %2905
  %2912 = fadd fast float %2907, %2886
  %2913 = fdiv fast float 1.000000e+00, %2912
  %2914 = fmul float %2889, %2913
  %2915 = fmul float %2914, %2914
  %2916 = call float @dx.op.unary.f32(i32 7, float %2915)  ; Saturate(value)
  %2917 = and i32 %2877, %2863
  %2918 = icmp eq i32 %2917, 0
  br i1 %2918, label %2941, label %2919, !dx.controlflow.hints !71

; <label>:2919                                    ; preds = %2866
  %2920 = lshr i32 %104, 5
  %2921 = lshr i32 %105, 5
  %2922 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %2920, i32 %2921, i32 %2875, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = and i32 %2923, 3
  %2925 = icmp eq i32 %2924, 0
  %2926 = select i1 %2925, float 1.000000e+00, float 0.000000e+00
  %2927 = icmp eq i32 %2924, 3
  br i1 %2927, label %2928, label %2941

; <label>:2928                                    ; preds = %2919
  %2929 = lshr i32 %2923, 10
  %2930 = and i32 %2929, 8160
  %2931 = and i32 %105, 31
  %2932 = or i32 %2930, %2931
  %2933 = lshr i32 %2923, 1
  %2934 = and i32 %2933, 16352
  %2935 = and i32 %104, 31
  %2936 = or i32 %2934, %2935
  %2937 = lshr i32 %2923, 23
  %2938 = and i32 %2937, 255
  %2939 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %2936, i32 %2932, i32 %2938, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2940 = extractvalue %dx.types.ResRet.f32 %2939, 0
  br label %2941

; <label>:2941                                    ; preds = %2928, %2919, %2866
  %2942 = phi float [ %2940, %2928 ], [ %2926, %2919 ], [ 0.000000e+00, %2866 ]
  %2943 = call float @dx.op.binary.f32(i32 36, float %2942, float %2942)  ; FMin(a,b)
  %2944 = call float @dx.op.binary.f32(i32 36, float %2942, float %2943)  ; FMin(a,b)
  %2945 = fcmp fast ogt float %2944, 0.000000e+00
  br i1 %2945, label %2954, label %2946, !dx.controlflow.hints !72

; <label>:2946                                    ; preds = %3190, %2941
  %2947 = phi float [ %2868, %2941 ], [ %3230, %3190 ]
  %2948 = phi float [ %2869, %2941 ], [ %3231, %3190 ]
  %2949 = phi float [ %2870, %2941 ], [ %3232, %3190 ]
  %2950 = phi float [ %2871, %2941 ], [ %3224, %3190 ]
  %2951 = phi float [ %2872, %2941 ], [ %3225, %3190 ]
  %2952 = phi float [ %2873, %2941 ], [ %3226, %3190 ]
  %2953 = icmp eq i32 %2867, %2877
  br i1 %2953, label %3233, label %2866

; <label>:2954                                    ; preds = %2941
  %2955 = fmul fast float %2942, %2900
  %2956 = fmul fast float %2942, %2901
  %2957 = fmul fast float %2942, %2902
  %2958 = fsub fast float %2894, %1387
  %2959 = fcmp fast ogt float %2958, 0.000000e+00
  %2960 = fsub fast float %93, %1387
  %2961 = fcmp fast ogt float %2960, 0.000000e+00
  %2962 = xor i1 %2961, %2959
  %2963 = fsub fast float %1387, %2894
  %2964 = fmul fast float %2963, 2.000000e+00
  %2965 = fadd fast float %2964, %2894
  %2966 = select i1 %2962, float %2894, float %2965
  %2967 = fsub fast float %2966, %93
  %2968 = call float @dx.op.dot3.f32(i32 55, float %2903, float %2904, float %2967, float %2903, float %2904, float %2967)  ; Dot3(ax,ay,az,bx,by,bz)
  %2969 = call float @dx.op.unary.f32(i32 25, float %2968)  ; Rsqrt(value)
  %2970 = fmul fast float %2969, %2903
  %2971 = fmul fast float %2969, %2904
  %2972 = fmul fast float %2969, %2967
  %2973 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %2974 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2970, float %2971, float %2972)  ; Dot3(ax,ay,az,bx,by,bz)
  %2975 = fdiv fast float 1.000000e+00, %2974
  %2976 = fmul fast float %2975, %2973
  %2977 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2960, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2978 = fcmp fast ogt float %2977, 0.000000e+00
  %2979 = fcmp fast olt float %2977, 0.000000e+00
  %2980 = zext i1 %2978 to i32
  %2981 = zext i1 %2979 to i32
  %2982 = sub nsw i32 %2980, %2981
  %2983 = sitofp i32 %2982 to float
  %2984 = fsub fast float %2966, %1387
  %2985 = call float @dx.op.dot3.f32(i32 55, float %2903, float %2904, float %2984, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2986 = fcmp fast ogt float %2985, 0.000000e+00
  %2987 = fcmp fast olt float %2985, 0.000000e+00
  %2988 = zext i1 %2986 to i32
  %2989 = zext i1 %2987 to i32
  %2990 = sub nsw i32 %2988, %2989
  %2991 = sitofp i32 %2990 to float
  %2992 = fcmp fast une float %2983, %2991
  br i1 %2992, label %2993, label %3003

; <label>:2993                                    ; preds = %2954
  %2994 = fmul fast float %2976, %2972
  %2995 = fmul fast float %2976, %2971
  %2996 = fmul fast float %2976, %2970
  %2997 = fmul fast float %2996, %2996
  %2998 = fmul fast float %2995, %2995
  %2999 = fadd fast float %2997, %2998
  %3000 = fmul fast float %2994, %2994
  %3001 = fadd fast float %2999, %3000
  %3002 = call float @dx.op.unary.f32(i32 24, float %3001)  ; Sqrt(value)
  br label %3015

; <label>:3003                                    ; preds = %2954
  %3004 = icmp slt i32 %2982, 0
  br i1 %3004, label %3005, label %3015

; <label>:3005                                    ; preds = %3003
  %3006 = fsub fast float %91, %2892
  %3007 = fsub fast float %92, %2893
  %3008 = fsub fast float %93, %2966
  %3009 = fmul fast float %3006, %3006
  %3010 = fmul fast float %3007, %3007
  %3011 = fadd fast float %3009, %3010
  %3012 = fmul fast float %3008, %3008
  %3013 = fadd fast float %3011, %3012
  %3014 = call float @dx.op.unary.f32(i32 24, float %3013)  ; Sqrt(value)
  br label %3015

; <label>:3015                                    ; preds = %3005, %3003, %2993
  %3016 = phi float [ %3002, %2993 ], [ %3014, %3005 ], [ 0.000000e+00, %3003 ]
  %3017 = and i1 %2961, %2959
  %3018 = fsub fast float -0.000000e+00, %3016
  %3019 = select i1 %3017, float -0.000000e+00, float %3018
  %3020 = fmul fast float %1388, 0x3FF7154760000000
  %3021 = fmul fast float %3020, %3019
  %3022 = fmul fast float %1389, 0x3FF7154760000000
  %3023 = fmul fast float %3022, %3019
  %3024 = fmul fast float %1390, 0x3FF7154760000000
  %3025 = fmul fast float %3024, %3019
  %3026 = call float @dx.op.unary.f32(i32 21, float %3021)  ; Exp(value)
  %3027 = call float @dx.op.unary.f32(i32 21, float %3023)  ; Exp(value)
  %3028 = call float @dx.op.unary.f32(i32 21, float %3025)  ; Exp(value)
  %3029 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3030 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3031 = call float @dx.op.unary.f32(i32 7, float %3028)  ; Saturate(value)
  %3032 = fmul fast float %2955, %3029
  %3033 = fmul fast float %2956, %3030
  %3034 = fmul fast float %2957, %3031
  %3035 = fsub fast float %2909, %1587
  %3036 = fsub fast float %2910, %1586
  %3037 = fsub fast float %2911, %1585
  %3038 = call float @dx.op.dot3.f32(i32 55, float %3035, float %3036, float %3037, float %3035, float %3036, float %3037)  ; Dot3(ax,ay,az,bx,by,bz)
  %3039 = call float @dx.op.unary.f32(i32 25, float %3038)  ; Rsqrt(value)
  %3040 = fmul fast float %3039, %3035
  %3041 = fmul fast float %3039, %3036
  %3042 = fmul fast float %3039, %3037
  %3043 = call float @dx.op.dot3.f32(i32 55, float %2909, float %2910, float %2911, float %1594, float %1595, float %1596)  ; Dot3(ax,ay,az,bx,by,bz)
  %3044 = call float @dx.op.dot3.f32(i32 55, float %1584, float %1583, float %1582, float %3040, float %3041, float %3042)  ; Dot3(ax,ay,az,bx,by,bz)
  %3045 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3046 = fmul fast float %3045, %2916
  %3047 = fmul fast float %3045, %3045
  %3048 = fmul fast float %3047, %2573
  %3049 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3050 = fmul fast float %3046, %3049
  %3051 = bitcast float %2906 to i32
  %3052 = ashr i32 %3051, 1
  %3053 = sub nsw i32 1597463007, %3052
  %3054 = bitcast i32 %3053 to float
  %3055 = fmul fast float %3054, %2903
  %3056 = fmul fast float %3054, %2904
  %3057 = fmul fast float %3054, %2905
  %3058 = fsub fast float %3055, %1587
  %3059 = fsub fast float %3056, %1586
  %3060 = fsub fast float %3057, %1585
  %3061 = call float @dx.op.dot3.f32(i32 55, float %3058, float %3059, float %3060, float %3058, float %3059, float %3060)  ; Dot3(ax,ay,az,bx,by,bz)
  %3062 = call float @dx.op.unary.f32(i32 25, float %3061)  ; Rsqrt(value)
  %3063 = fmul fast float %3058, %3062
  %3064 = fmul fast float %3059, %3062
  %3065 = fmul fast float %3060, %3062
  %3066 = call float @dx.op.dot3.f32(i32 55, float %1594, float %1595, float %1596, float %3063, float %3064, float %3065)  ; Dot3(ax,ay,az,bx,by,bz)
  %3067 = fmul fast float %3066, %3066
  %3068 = call float @dx.op.unary.f32(i32 6, float %3043)  ; FAbs(value)
  %3069 = fsub fast float 1.000000e+00, %1597
  %3070 = call float @dx.op.binary.f32(i32 35, float %3069, float 0x3F847AE140000000)  ; FMax(a,b)
  %3071 = fmul fast float %3070, %3070
  %3072 = fmul fast float %3071, %3071
  %3073 = fsub fast float 1.000000e+00, %3072
  %3074 = fmul fast float %1601, %1601
  %3075 = fmul fast float %3074, %3073
  %3076 = fadd fast float %3075, %3072
  %3077 = bitcast float %3076 to i32
  %3078 = ashr i32 %3077, 1
  %3079 = add nsw i32 %3078, 532487669
  %3080 = bitcast i32 %3079 to float
  %3081 = fadd fast float %3080, %1601
  %3082 = fmul fast float %3072, %3067
  %3083 = fsub fast float 1.000000e+00, %3067
  %3084 = fadd fast float %3083, %3082
  %3085 = fmul fast float %3068, %3068
  %3086 = fmul fast float %3085, %3073
  %3087 = fadd fast float %3086, %3072
  %3088 = bitcast float %3087 to i32
  %3089 = ashr i32 %3088, 1
  %3090 = add nsw i32 %3089, 532487669
  %3091 = bitcast i32 %3090 to float
  %3092 = fadd fast float %3091, %3068
  %3093 = fmul fast float %3084, %3084
  %3094 = fmul fast float %3093, %3081
  %3095 = fmul fast float %3094, %3092
  %3096 = fdiv fast float 1.000000e+00, %3095
  %3097 = bitcast float %3072 to i32
  %3098 = sitofp i32 %3097 to float
  %3099 = fmul fast float %3098, 0x3FE7F73180000000
  %3100 = fadd fast float %3099, 0x41AFE27C40000000
  %3101 = fptosi float %3100 to i32
  %3102 = bitcast i32 %3101 to float
  %3103 = fmul fast float %2889, 0x3FD80E9D60000000
  %3104 = fmul fast float %3103, %3054
  %3105 = fadd fast float %3102, %3104
  %3106 = bitcast float %3105 to i32
  %3107 = sub nsw i32 2129859010, %3106
  %3108 = bitcast i32 %3107 to float
  %3109 = fmul fast float %3072, %3096
  %3110 = fmul fast float %3109, %3102
  %3111 = fmul fast float %3110, %3108
  %3112 = call float @dx.op.unary.f32(i32 6, float %3044)  ; FAbs(value)
  %3113 = fsub fast float 1.000000e+00, %3112
  %3114 = bitcast float %3113 to i32
  %3115 = sitofp i32 %3114 to float
  %3116 = fmul fast float %3115, 5.000000e+00
  %3117 = fadd fast float %3116, 0xC1EFBF8940000000
  %3118 = fptosi float %3117 to i32
  %3119 = bitcast i32 %3118 to float
  %3120 = fsub fast float 1.000000e+00, %1588
  %3121 = fsub fast float 1.000000e+00, %1589
  %3122 = fsub fast float 1.000000e+00, %1599
  %3123 = fmul fast float %3119, %3120
  %3124 = fmul fast float %3119, %3121
  %3125 = fmul fast float %3119, %3122
  %3126 = fadd fast float %3123, %1588
  %3127 = fadd fast float %3124, %1589
  %3128 = fadd fast float %3125, %1599
  br i1 %2488, label %3129, label %3152

; <label>:3129                                    ; preds = %3015
  %3130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %37, float %965, float %3112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3131 = extractvalue %dx.types.ResRet.f32 %3130, 0
  %3132 = extractvalue %dx.types.ResRet.f32 %3130, 1
  %3133 = extractvalue %dx.types.ResRet.f32 %3130, 2
  %3134 = fadd fast float %3131, -5.000000e-01
  %3135 = fadd fast float %3132, -5.000000e-01
  %3136 = fadd fast float %3133, -5.000000e-01
  %3137 = fmul fast float %1588, 4.000000e+00
  %3138 = fmul fast float %3137, %3120
  %3139 = fmul fast float %3138, %3134
  %3140 = fmul fast float %1589, 4.000000e+00
  %3141 = fmul fast float %3140, %3121
  %3142 = fmul fast float %3141, %3135
  %3143 = fmul fast float %1599, 4.000000e+00
  %3144 = fmul fast float %3143, %3122
  %3145 = fmul fast float %3144, %3136
  %3146 = fadd fast float %3139, %3126
  %3147 = fadd fast float %3142, %3127
  %3148 = fadd fast float %3145, %3128
  %3149 = call float @dx.op.unary.f32(i32 7, float %3146)  ; Saturate(value)
  %3150 = call float @dx.op.unary.f32(i32 7, float %3147)  ; Saturate(value)
  %3151 = call float @dx.op.unary.f32(i32 7, float %3148)  ; Saturate(value)
  br label %3152

; <label>:3152                                    ; preds = %3129, %3015
  %3153 = phi float [ %3149, %3129 ], [ %3126, %3015 ]
  %3154 = phi float [ %3150, %3129 ], [ %3127, %3015 ]
  %3155 = phi float [ %3151, %3129 ], [ %3128, %3015 ]
  %3156 = fmul fast float %3043, 9.843750e-01
  %3157 = fadd fast float %3156, 7.812500e-03
  %3158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %3157, float %2478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3159 = extractvalue %dx.types.ResRet.f32 %3158, 2
  %3160 = extractvalue %dx.types.ResRet.f32 %3158, 3
  %3161 = fmul fast float %3159, %1588
  %3162 = fmul fast float %3159, %1589
  %3163 = fmul fast float %3159, %1599
  %3164 = fadd fast float %3161, %3160
  %3165 = fadd fast float %3162, %3160
  %3166 = fadd fast float %3163, %3160
  br i1 %2488, label %3167, label %3190

; <label>:3167                                    ; preds = %3152
  %3168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %37, float %965, float %3043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3169 = extractvalue %dx.types.ResRet.f32 %3168, 0
  %3170 = extractvalue %dx.types.ResRet.f32 %3168, 1
  %3171 = extractvalue %dx.types.ResRet.f32 %3168, 2
  %3172 = fadd fast float %3169, -5.000000e-01
  %3173 = fadd fast float %3170, -5.000000e-01
  %3174 = fadd fast float %3171, -5.000000e-01
  %3175 = fmul fast float %1588, 4.000000e+00
  %3176 = fmul fast float %3175, %3120
  %3177 = fmul fast float %3176, %3172
  %3178 = fmul fast float %1589, 4.000000e+00
  %3179 = fmul fast float %3178, %3121
  %3180 = fmul fast float %3179, %3173
  %3181 = fmul fast float %1599, 4.000000e+00
  %3182 = fmul fast float %3181, %3122
  %3183 = fmul fast float %3182, %3174
  %3184 = fadd fast float %3177, %3164
  %3185 = fadd fast float %3180, %3165
  %3186 = fadd fast float %3183, %3166
  %3187 = call float @dx.op.unary.f32(i32 7, float %3184)  ; Saturate(value)
  %3188 = call float @dx.op.unary.f32(i32 7, float %3185)  ; Saturate(value)
  %3189 = call float @dx.op.unary.f32(i32 7, float %3186)  ; Saturate(value)
  br label %3190

; <label>:3190                                    ; preds = %3167, %3152
  %3191 = phi float [ %3187, %3167 ], [ %3164, %3152 ]
  %3192 = phi float [ %3188, %3167 ], [ %3165, %3152 ]
  %3193 = phi float [ %3189, %3167 ], [ %3166, %3152 ]
  %3194 = call float @dx.op.binary.f32(i32 35, float %3192, float %3193)  ; FMax(a,b)
  %3195 = call float @dx.op.binary.f32(i32 35, float %3191, float %3194)  ; FMax(a,b)
  %3196 = fsub fast float 1.000000e+00, %3195
  %3197 = fmul fast float %3153, %3111
  %3198 = fmul fast float %3154, %3111
  %3199 = fmul fast float %3155, %3111
  %3200 = fsub fast float 1.000000e+00, %3044
  %3201 = bitcast float %3200 to i32
  %3202 = sitofp i32 %3201 to float
  %3203 = fmul fast float %3202, 5.000000e+00
  %3204 = fadd fast float %3203, 0xC1EFBF8940000000
  %3205 = fptosi float %3204 to i32
  %3206 = bitcast i32 %3205 to float
  %3207 = fmul fast float %3206, %964
  %3208 = fmul fast float %3196, %3207
  %3209 = fmul fast float %3208, %2538
  %3210 = fmul fast float %3208, %2539
  %3211 = fmul fast float %3208, %2540
  %3212 = fadd fast float %3209, %3197
  %3213 = fadd fast float %3210, %3198
  %3214 = fadd fast float %3211, %3199
  %3215 = fmul fast float %3032, %985
  %3216 = fmul fast float %3215, %3050
  %3217 = fmul fast float %3216, %3196
  %3218 = fmul fast float %3033, %985
  %3219 = fmul fast float %3218, %3050
  %3220 = fmul fast float %3219, %3196
  %3221 = fmul fast float %3034, %985
  %3222 = fmul fast float %3221, %3050
  %3223 = fmul fast float %3222, %3196
  %3224 = fadd fast float %3217, %2871
  %3225 = fadd fast float %3220, %2872
  %3226 = fadd fast float %3223, %2873
  %3227 = fmul fast float %3216, %3212
  %3228 = fmul fast float %3219, %3213
  %3229 = fmul fast float %3222, %3214
  %3230 = fadd fast float %3227, %2868
  %3231 = fadd fast float %3228, %2869
  %3232 = fadd fast float %3229, %2870
  br label %2946

; <label>:3233                                    ; preds = %2946
  br label %3234

; <label>:3234                                    ; preds = %3233, %2834
  %3235 = phi float [ %2836, %2834 ], [ %2947, %3233 ]
  %3236 = phi float [ %2837, %2834 ], [ %2948, %3233 ]
  %3237 = phi float [ %2838, %2834 ], [ %2949, %3233 ]
  %3238 = phi float [ %2839, %2834 ], [ %2950, %3233 ]
  %3239 = phi float [ %2840, %2834 ], [ %2951, %3233 ]
  %3240 = phi float [ %2841, %2834 ], [ %2952, %3233 ]
  %3241 = add i32 %2835, 1
  %3242 = icmp ugt i32 %3241, %2831
  br i1 %3242, label %3243, label %2834

; <label>:3243                                    ; preds = %3234
  br label %3244

; <label>:3244                                    ; preds = %3243, %2812, %2802
  %3245 = phi float [ %2803, %2802 ], [ %2803, %2812 ], [ %3235, %3243 ]
  %3246 = phi float [ %2804, %2802 ], [ %2804, %2812 ], [ %3236, %3243 ]
  %3247 = phi float [ %2805, %2802 ], [ %2805, %2812 ], [ %3237, %3243 ]
  %3248 = phi float [ %2806, %2802 ], [ %2806, %2812 ], [ %3238, %3243 ]
  %3249 = phi float [ %2807, %2802 ], [ %2807, %2812 ], [ %3239, %3243 ]
  %3250 = phi float [ %2808, %2802 ], [ %2808, %2812 ], [ %3240, %3243 ]
  %3251 = call float @dx.op.unary.f32(i32 24, float %1591)  ; Sqrt(value)
  %3252 = call float @dx.op.unary.f32(i32 24, float %1592)  ; Sqrt(value)
  %3253 = call float @dx.op.unary.f32(i32 24, float %1593)  ; Sqrt(value)
  %3254 = fmul fast float %3251, %3248
  %3255 = fmul fast float %3252, %3249
  %3256 = extractvalue %dx.types.CBufRet.f32 %2210, 0
  br i1 %401, label %3257, label %3276

; <label>:3257                                    ; preds = %3244
  %3258 = fadd fast float %3250, %962
  %3259 = fmul fast float %3258, %963
  %3260 = fsub fast float 1.000000e+00, %963
  %3261 = call float @dx.op.unary.f32(i32 7, float %3260)  ; Saturate(value)
  %3262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3263 = extractvalue %dx.types.CBufRet.f32 %3262, 3
  %3264 = fmul fast float %3263, %3261
  %3265 = fadd fast float %3264, %3259
  %3266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3266, 0
  %3268 = fmul fast float %3267, %2544
  %3269 = fsub fast float %3265, %3268
  %3270 = fadd fast float %3255, %3254
  %3271 = extractvalue %dx.types.CBufRet.f32 %3262, 1
  %3272 = fsub fast float %3269, %3271
  %3273 = extractvalue %dx.types.CBufRet.f32 %3262, 2
  %3274 = fmul fast float %3272, %3273
  %3275 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  br label %3280

; <label>:3276                                    ; preds = %3244
  %3277 = fmul fast float %3253, %3250
  %3278 = fmul fast float %3256, %3255
  %3279 = fmul fast float %3277, %3256
  br label %3280

; <label>:3280                                    ; preds = %3276, %3257
  %3281 = phi float [ %3270, %3257 ], [ %3254, %3276 ]
  %3282 = phi float [ %3275, %3257 ], [ %3278, %3276 ]
  %3283 = phi float [ 1.000000e+00, %3257 ], [ %3279, %3276 ]
  %3284 = fmul float %3256, %3281
  %3285 = fmul fast float %3256, %3246
  %3286 = fmul fast float %3256, %3247
  %3287 = fadd fast float %3246, %3245
  %3288 = select i1 %401, float %3287, float %3245
  %3289 = fmul float %3288, %3256
  %3290 = select i1 %401, float 0.000000e+00, float %3285
  %3291 = select i1 %401, float 0.000000e+00, float %3286
  %3292 = fmul fast float %3284, %3251
  %3293 = fmul fast float %3282, %3252
  %3294 = fmul fast float %3283, %3253
  %3295 = fadd fast float %3289, %3292
  %3296 = fadd fast float %3290, %3293
  %3297 = fadd fast float %3291, %3294
  %3298 = select i1 %401, float %3282, float %3296
  %3299 = select i1 %401, float %3283, float %3297
  %3300 = call float @dx.op.binary.f32(i32 36, float %3295, float 3.225500e+04)  ; FMin(a,b)
  %3301 = call float @dx.op.binary.f32(i32 36, float %3298, float 3.225500e+04)  ; FMin(a,b)
  %3302 = call float @dx.op.binary.f32(i32 36, float %3299, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3300)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3301)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3302)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!55}
!dx.entryPoints = !{!56}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !44, !47, !50}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 65, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 66, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 64, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 5}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 38, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 39, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 40, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !12}
!18 = !{i32 10, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !12}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!25 = !{i32 17, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !12}
!28 = !{i32 20, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!44 = !{!45}
!45 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 false, i1 false, !46}
!46 = !{i32 1, i32 4}
!47 = !{!48, !49}
!48 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!49 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!50 = !{!51, !52, !53, !54}
!51 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!52 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!53 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!54 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!55 = !{[8 x i32] [i32 6, i32 4, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7]}
!56 = !{void ()* @ps_main, !"ps_main", !57, !4, !67}
!57 = !{!58, !64, null}
!58 = !{!59, !62, !63}
!59 = !{i32 0, !"SV_Position", i8 9, i8 3, !60, i8 4, i32 1, i8 4, i32 0, i8 0, !61}
!60 = !{i32 0}
!61 = !{i32 3, i32 3}
!62 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !60, i8 2, i32 1, i8 2, i32 1, i8 0, !61}
!63 = !{i32 2, !"SV_SampleIndex", i8 5, i8 12, !60, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!64 = !{!65}
!65 = !{i32 0, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 0, i8 0, !66}
!66 = !{i32 3, i32 15}
!67 = !{i32 0, i64 24}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}

