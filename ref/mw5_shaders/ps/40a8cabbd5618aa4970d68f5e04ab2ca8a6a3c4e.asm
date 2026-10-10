;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; POS                      0   xyz         1     NONE   float   xyz 
; TEXCOORDS                0   xyzw        2     NONE   float     zw
; TEXCOORDS                6   xy          3     NONE   float   xy  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 434dc5db738e7b8ab9869876c8db60eb
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
; POS                      0                 linear       
; TEXCOORDS                0                 linear       
; TEXCOORDS                6                 linear       
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
;                                   texture     u32          2d      T8             t0     1
;                                   texture     u32     2darray      T9     t11,space2     1
;                                   texture     f32     2darray     T10     t10,space2     1
;                                   texture     f32          2d     T11     t69,space2     1
;                                   texture    byte         r/o     T12     t16,space1     1
;                                   texture    byte         r/o     T13     t17,space1     1
;                                   texture     f32          2d     T14     t33,space2     1
;                                   texture     f32     2darray     T15     t16,space2     1
;                                   texture     f32          3d     T16     t15,space2     1
;                                   texture     f32          2d     T17     t14,space2     1
;                                   texture     f32          2d     T18     t13,space2     1
;                                   texture     u32          2d     T19     t17,space2     1
;                                   texture     f32          3d     T20     t18,space2     1
;                                   texture     f32          2d     T21             t1     1
;                                   texture     f32          2d     T22             t2     1
;                                   texture     f32          2d     T23             t3     1
;                                   texture     f32          2d     T24     t58,space2     1
;                                   texture     f32          2d     T25     t59,space2     1
;                                   texture     f32          2d     T26     t60,space2     1
;                                   texture    byte         r/o     T27     t45,space1     1
;                                   texture    byte         r/o     T28     t46,space1     1
;                                   texture    byte         r/o     T29     t47,space1     1
;                                   texture    byte         r/o     T30     t48,space1     1
;                                   texture     f32          2d     T31     t57,space2     1
;                                   texture    byte         r/o     T32     t69,space1     1
;                                   texture     f32          2d     T33     t34,space2     1
;                                   texture    byte         r/o     T34     t10,space1     1
;                                   texture    byte         r/o     T35     t68,space1     1
;                                   texture     f32          2d     T36      t0,space2     1
;                                   texture    byte         r/o     T37     t11,space1     1
;                                   texture    byte         r/o     T38     t13,space1     1
;                                       UAV  struct         r/w      U0             u5     1
;
;
; ViewId state:
;
; Number of inputs: 14, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6, 10, 11, 12, 13 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 10, 11, 12, 13 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 10, 11, 12, 13 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 64, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 65, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = fmul fast float %55, %51
  %57 = fmul fast float %55, %52
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %59, 2.000000e+00
  %62 = fmul fast float %61, %56
  %63 = fmul fast float %60, 2.000000e+00
  %64 = fmul fast float %63, %57
  %65 = fsub fast float 1.000000e+00, %62
  %66 = fsub fast float 1.000000e+00, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fmul fast float %65, %68
  %72 = fmul fast float %65, %69
  %73 = fmul fast float %65, %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fmul fast float %66, %75
  %79 = fmul fast float %66, %76
  %80 = fmul fast float %66, %77
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fadd fast float %78, %82
  %86 = fadd fast float %85, %71
  %87 = fadd fast float %79, %83
  %88 = fadd fast float %87, %72
  %89 = fadd fast float %80, %84
  %90 = fadd fast float %89, %73
  %91 = fmul fast float %86, %53
  %92 = fmul fast float %88, %53
  %93 = fmul fast float %90, %53
  %94 = fptoui float %56 to i32
  %95 = fptoui float %57 to i32
  %96 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %32, i32 0, i32 %94, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %97 = extractvalue %dx.types.ResRet.i32 %96, 0
  %98 = lshr i32 %97, 8
  %99 = and i32 %97, 255
  %100 = and i32 %98, 255
  %101 = uitofp i32 %99 to float
  %102 = uitofp i32 %100 to float
  %103 = fmul fast float %101, 0x3F80101020000000
  %104 = fmul fast float %102, 0x3F80101020000000
  %105 = fadd fast float %103, -1.000000e+00
  %106 = fadd fast float %104, -1.000000e+00
  %107 = call float @dx.op.unary.f32(i32 6, float %105)  ; FAbs(value)
  %108 = fsub fast float 1.000000e+00, %107
  %109 = call float @dx.op.unary.f32(i32 6, float %106)  ; FAbs(value)
  %110 = fsub fast float %108, %109
  %111 = fsub fast float -0.000000e+00, %110
  %112 = call float @dx.op.binary.f32(i32 35, float %111, float 0.000000e+00)  ; FMax(a,b)
  %113 = fcmp fast ogt float %105, 0.000000e+00
  %114 = fsub fast float -0.000000e+00, %112
  %115 = select i1 %113, float %114, float %112
  %116 = fadd fast float %115, %105
  %117 = fcmp fast ogt float %106, 0.000000e+00
  %118 = select i1 %117, float %114, float %112
  %119 = fadd fast float %118, %106
  %120 = call float @dx.op.dot3.f32(i32 55, float %116, float %119, float %110, float %116, float %119, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %121 = call float @dx.op.unary.f32(i32 25, float %120)  ; Rsqrt(value)
  %122 = fmul fast float %116, %121
  %123 = fmul fast float %119, %121
  %124 = fmul fast float %121, %110
  %125 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %126 = fmul fast float %122, %125
  %127 = fsub fast float 1.000000e+00, %126
  %128 = fmul fast float %125, %123
  %129 = fsub fast float -0.000000e+00, %128
  %130 = fmul fast float %125, %124
  %131 = fsub fast float -0.000000e+00, %130
  %132 = call float @dx.op.dot3.f32(i32 55, float %127, float %129, float %131, float %127, float %129, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %133 = call float @dx.op.unary.f32(i32 25, float %132)  ; Rsqrt(value)
  %134 = fmul fast float %127, %133
  %135 = fmul fast float %133, %129
  %136 = fmul fast float %133, %131
  %137 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %138 = fmul fast float %123, %137
  %139 = fmul fast float %137, %122
  %140 = fsub fast float -0.000000e+00, %139
  %141 = fsub fast float -1.000000e+00, %138
  %142 = fmul fast float %124, %137
  %143 = fsub fast float -0.000000e+00, %142
  %144 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %143, float %140, float %141, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %145 = call float @dx.op.unary.f32(i32 25, float %144)  ; Rsqrt(value)
  %146 = fmul fast float %145, %140
  %147 = fmul fast float %141, %145
  %148 = fmul fast float %145, %143
  %149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.i32 %149, 0
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 126)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = extractvalue %dx.types.CBufRet.f32 %151, 3
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 130)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 3
  %162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 131)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.i32 %162, 2
  %164 = uitofp i32 %163 to float
  %165 = fptoui float %164 to i32
  %166 = uitofp i32 %150 to float
  %167 = fptosi float %166 to i32
  %168 = fmul fast float %44, 0x3F3A027520000000
  %169 = fmul fast float %45, 0x3F3A027520000000
  %170 = add nsw i32 %167, -1
  %171 = fptosi float %169 to i32
  %172 = call i32 @dx.op.binary.i32(i32 37, i32 %171, i32 0)  ; IMax(a,b)
  %173 = call i32 @dx.op.binary.i32(i32 38, i32 %172, i32 %170)  ; IMin(a,b)
  %174 = fptosi float %168 to i32
  %175 = call i32 @dx.op.binary.i32(i32 37, i32 %174, i32 0)  ; IMax(a,b)
  %176 = call i32 @dx.op.binary.i32(i32 38, i32 %175, i32 %170)  ; IMin(a,b)
  %177 = mul nsw i32 %173, %167
  %178 = add nsw i32 %176, %177
  %179 = sdiv i32 %178, 4
  %180 = shl nsw i32 %179, 2
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = srem i32 %178, 4
  %184 = shl nsw i32 %183, 3
  %185 = and i32 %184, 24
  %186 = lshr i32 %182, %185
  %187 = and i32 %186, 255
  %188 = mul nuw nsw i32 %187, 12
  %189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = extractvalue %dx.types.ResRet.f32 %189, 1
  %192 = extractvalue %dx.types.ResRet.f32 %189, 2
  %193 = fsub fast float %44, %190
  %194 = fsub fast float %45, %191
  %195 = fdiv fast float %193, %192
  %196 = fdiv fast float %194, %192
  %197 = fmul fast float %161, 2.500000e+01
  %198 = extractvalue %dx.types.CBufRet.i32 %162, 1
  %199 = uitofp i32 %198 to float
  %200 = extractvalue %dx.types.CBufRet.i32 %149, 1
  %201 = extractvalue %dx.types.CBufRet.i32 %162, 0
  %202 = mul i32 %201, %200
  %203 = uitofp i32 %202 to float
  %204 = uitofp i32 %165 to float
  %205 = icmp eq i32 %187, 0
  %206 = shl nuw nsw i32 %187, 3
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = extractvalue %dx.types.ResRet.i32 %207, 1
  %210 = lshr i32 %209, 16
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %218

; <label>:213                                     ; preds = %0
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = extractvalue %dx.types.ResRet.i32 %214, 1
  %217 = lshr i32 %216, 16
  br label %218

; <label>:218                                     ; preds = %213, %0
  %219 = phi i32 [ 0, %213 ], [ %187, %0 ]
  %220 = phi i32 [ %215, %213 ], [ %208, %0 ]
  %221 = phi i32 [ %216, %213 ], [ %209, %0 ]
  %222 = phi i32 [ %217, %213 ], [ %210, %0 ]
  %223 = and i32 %221, 65535
  %224 = lshr i32 %220, 16
  %225 = and i32 %220, 65535
  %226 = lshr i32 %222, 1
  %227 = uitofp i32 %226 to float
  %228 = icmp eq i32 %219, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %230 = bitcast float %229 to i32
  %231 = fdiv fast float %44, %161
  %232 = fdiv fast float %45, %161
  %233 = fptoui float %204 to i32
  %234 = fmul fast float %231, %197
  %235 = fmul fast float %232, %197
  %236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.i32 %236, 3
  %238 = and i32 %237, 2
  %239 = icmp ne i32 %238, 0
  %240 = select i1 %239, float 5.000000e-01, float 1.000000e+00
  %241 = call float @dx.op.unary.f32(i32 83, float %234)  ; DerivCoarseX(value)
  %242 = call float @dx.op.unary.f32(i32 83, float %235)  ; DerivCoarseX(value)
  %243 = fmul fast float %240, %241
  %244 = fmul fast float %240, %242
  %245 = call float @dx.op.unary.f32(i32 84, float %234)  ; DerivCoarseY(value)
  %246 = call float @dx.op.unary.f32(i32 84, float %235)  ; DerivCoarseY(value)
  %247 = fmul fast float %240, %245
  %248 = fmul fast float %246, %240
  %249 = call float @dx.op.dot2.f32(i32 54, float %243, float %244, float %243, float %244)  ; Dot2(ax,ay,bx,by)
  %250 = call float @dx.op.dot2.f32(i32 54, float %247, float %248, float %247, float %248)  ; Dot2(ax,ay,bx,by)
  %251 = call float @dx.op.binary.f32(i32 35, float %249, float %250)  ; FMax(a,b)
  %252 = call float @dx.op.unary.f32(i32 23, float %251)  ; Log(value)
  %253 = fmul fast float %252, 5.000000e-01
  %254 = call float @dx.op.binary.f32(i32 36, float %249, float %250)  ; FMin(a,b)
  %255 = call float @dx.op.unary.f32(i32 23, float %254)  ; Log(value)
  %256 = uitofp i32 %233 to float
  %257 = fsub fast float %252, %255
  %258 = fmul fast float %257, 5.000000e-01
  %259 = call float @dx.op.binary.f32(i32 36, float %258, float %256)  ; FMin(a,b)
  %260 = fmul fast float %259, %159
  %261 = fsub fast float %253, %260
  %262 = call float @dx.op.binary.f32(i32 35, float %261, float 0.000000e+00)  ; FMax(a,b)
  %263 = call float @dx.op.binary.f32(i32 36, float %262, float 2.400000e+01)  ; FMin(a,b)
  %264 = fadd fast float %263, %157
  %265 = call float @dx.op.unary.f32(i32 27, float %263)  ; Round_ni(value)
  %266 = fptosi float %265 to i32
  %267 = select i1 %205, i32 %230, i32 0
  %268 = sub nsw i32 %266, %267
  %269 = call i32 @dx.op.binary.i32(i32 37, i32 %268, i32 0)  ; IMax(a,b)
  %270 = call i32 @dx.op.binary.i32(i32 38, i32 %269, i32 8)  ; IMin(a,b)
  %271 = fmul fast float %195, 2.560000e+02
  %272 = fmul fast float %196, 2.560000e+02
  %273 = call float @dx.op.unary.f32(i32 27, float %271)  ; Round_ni(value)
  %274 = call float @dx.op.unary.f32(i32 27, float %272)  ; Round_ni(value)
  %275 = call float @dx.op.binary.f32(i32 35, float %273, float 0.000000e+00)  ; FMax(a,b)
  %276 = call float @dx.op.binary.f32(i32 35, float %274, float 0.000000e+00)  ; FMax(a,b)
  %277 = call float @dx.op.binary.f32(i32 36, float %275, float 2.550000e+02)  ; FMin(a,b)
  %278 = call float @dx.op.binary.f32(i32 36, float %276, float 2.550000e+02)  ; FMin(a,b)
  %279 = fptoui float %277 to i32
  %280 = fptoui float %278 to i32
  %281 = and i32 %270, 31
  %282 = lshr i32 %279, %281
  %283 = lshr i32 %280, %281
  %284 = shl i32 %270, 24
  %285 = shl nuw nsw i32 %187, 16
  %286 = or i32 %284, %285
  %287 = shl i32 %283, 8
  %288 = or i32 %286, %282
  %289 = or i32 %288, %287
  %290 = select i1 %228, float %231, float %195
  %291 = select i1 %228, float %232, float %196
  %292 = call float @dx.op.unary.f32(i32 27, float %264)  ; Round_ni(value)
  %293 = fptosi float %292 to i32
  %294 = sub nsw i32 8, %223
  %295 = select i1 %228, i32 %230, i32 %294
  %296 = sub nsw i32 %293, %295
  %297 = call i32 @dx.op.binary.i32(i32 37, i32 %296, i32 0)  ; IMax(a,b)
  %298 = call i32 @dx.op.binary.i32(i32 38, i32 %297, i32 %223)  ; IMin(a,b)
  %299 = fptoui float %227 to i32
  %300 = and i32 %298, 31
  %301 = lshr i32 %299, %300
  %302 = add i32 %301, -1
  %303 = uitofp i32 %302 to float
  %304 = uitofp i32 %301 to float
  %305 = fmul fast float %304, %290
  %306 = fmul fast float %304, %291
  %307 = call float @dx.op.unary.f32(i32 27, float %305)  ; Round_ni(value)
  %308 = call float @dx.op.unary.f32(i32 27, float %306)  ; Round_ni(value)
  %309 = call float @dx.op.binary.f32(i32 35, float %307, float 0.000000e+00)  ; FMax(a,b)
  %310 = call float @dx.op.binary.f32(i32 35, float %308, float 0.000000e+00)  ; FMax(a,b)
  %311 = call float @dx.op.binary.f32(i32 36, float %309, float %303)  ; FMin(a,b)
  %312 = call float @dx.op.binary.f32(i32 36, float %310, float %303)  ; FMin(a,b)
  %313 = fptoui float %311 to i32
  %314 = fptoui float %312 to i32
  %315 = lshr i32 %225, %300
  %316 = lshr i32 %224, %300
  %317 = add i32 %313, %315
  %318 = add i32 %314, %316
  %319 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %36, i32 %298, i32 %317, i32 %318, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = lshr i32 %320, 8
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = lshr i32 %320, 16
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fptoui float %328 to i32
  %330 = lshr i32 %320, 24
  %331 = uitofp i32 %330 to float
  %332 = fadd fast float %331, 1.000000e+00
  %333 = fptoui float %332 to i32
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, %290
  %336 = fmul fast float %334, %291
  %337 = add i32 %333, -1
  %338 = uitofp i32 %337 to float
  %339 = call float @dx.op.unary.f32(i32 27, float %335)  ; Round_ni(value)
  %340 = call float @dx.op.unary.f32(i32 27, float %336)  ; Round_ni(value)
  %341 = call float @dx.op.binary.f32(i32 35, float %339, float 0.000000e+00)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %340, float 0.000000e+00)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 36, float %341, float %338)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %342, float %338)  ; FMin(a,b)
  %345 = fsub fast float %335, %343
  %346 = fsub fast float %336, %344
  %347 = fadd fast float %199, 8.000000e+00
  %348 = fmul fast float %322, %347
  %349 = fmul fast float %325, %347
  %350 = fmul fast float %345, %199
  %351 = fmul fast float %346, %199
  %352 = fadd fast float %348, 4.500000e+00
  %353 = fadd fast float %352, %350
  %354 = fadd fast float %349, 4.500000e+00
  %355 = fadd fast float %354, %351
  %356 = fdiv fast float %353, %203
  %357 = fdiv fast float %355, %203
  %358 = and i32 %329, 31
  %359 = shl i32 1, %358
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, %203
  %362 = fdiv fast float 1.000000e+00, %361
  %363 = fmul fast float %362, %243
  %364 = fmul fast float %362, %244
  %365 = fmul fast float %362, %247
  %366 = fmul fast float %362, %248
  %367 = fmul fast float %152, %56
  %368 = fmul fast float %153, %57
  %369 = fadd fast float %154, %367
  %370 = fadd fast float %155, %368
  %371 = call float @dx.op.unary.f32(i32 27, float %369)  ; Round_ni(value)
  %372 = call float @dx.op.unary.f32(i32 27, float %370)  ; Round_ni(value)
  %373 = fptosi float %371 to i32
  %374 = fptosi float %372 to i32
  %375 = mul i32 %374, 240
  %376 = add i32 %375, %373
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %376, i32 0, i32 %289, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %379 = extractvalue %dx.types.CBufRet.f32 %377, 3
  %380 = fmul fast float %378, %56
  %381 = fmul fast float %379, %57
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 114688
  %385 = icmp ne i32 %384, 0
  %386 = select i1 %385, float %380, float 0.000000e+00
  %387 = select i1 %385, float %381, float 0.000000e+00
  %388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %41, float %386, float %387, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = fmul fast float %389, 2.550000e+02
  %391 = fptoui float %390 to i32
  %392 = select i1 %385, i32 %391, i32 0
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.i32 %394, 3
  %396 = and i32 %395, 3
  %397 = icmp ne i32 %396, 0
  %398 = and i32 %395, 4
  %399 = icmp ne i32 %398, 0
  %400 = and i1 %397, %399
  br i1 %400, label %401, label %412

; <label>:401                                     ; preds = %218
  %402 = extractvalue %dx.types.CBufRet.f32 %393, 3
  %403 = fmul fast float %402, %57
  %404 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %405 = fmul fast float %404, %56
  %406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %405, float %403, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = fsub fast float 1.000000e+00, %407
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %411 = fcmp fast olt float %408, %410
  br label %415

; <label>:412                                     ; preds = %218
  %413 = icmp eq i32 %398, 0
  %414 = and i1 %397, %413
  br label %415

; <label>:415                                     ; preds = %412, %401
  %416 = phi i1 [ %411, %401 ], [ %414, %412 ]
  %417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %418 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %38, %dx.types.Handle %417, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float %363, float %364, float undef, float %365, float %366, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = extractvalue %dx.types.ResRet.f32 %418, 3
  %423 = call float @dx.op.dot3.f32(i32 55, float %419, float %420, float %421, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %424 = fmul fast float %423, 1.875000e-01
  %425 = fadd fast float %424, 0x3FE77AE140000000
  %426 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %427 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %37, %dx.types.Handle %417, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float %363, float %364, float undef, float %365, float %366, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = extractvalue %dx.types.ResRet.f32 %427, 2
  %431 = extractvalue %dx.types.ResRet.f32 %427, 3
  %432 = fmul fast float %429, 2.000000e+00
  %433 = fadd fast float %432, -1.000000e+00
  %434 = fmul fast float %431, 2.000000e+00
  %435 = fadd fast float %434, -1.000000e+00
  %436 = fadd fast float %433, %435
  %437 = fmul fast float %436, 5.000000e-01
  %438 = fsub fast float %433, %435
  %439 = fmul fast float %438, 5.000000e-01
  %440 = call float @dx.op.unary.f32(i32 6, float %437)  ; FAbs(value)
  %441 = fsub fast float 1.000000e+00, %440
  %442 = call float @dx.op.unary.f32(i32 6, float %439)  ; FAbs(value)
  %443 = fsub fast float %441, %442
  %444 = call float @dx.op.dot3.f32(i32 55, float %437, float %439, float %443, float %437, float %439, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %445 = call float @dx.op.unary.f32(i32 25, float %444)  ; Rsqrt(value)
  %446 = fmul fast float %437, %445
  %447 = fmul fast float %439, %445
  %448 = fmul fast float %445, %443
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %452 = fmul fast float %451, %123
  %453 = fmul fast float %122, %451
  %454 = fsub fast float -0.000000e+00, %453
  %455 = fsub fast float 1.000000e+00, %452
  %456 = fmul fast float %124, %451
  %457 = fsub fast float -0.000000e+00, %456
  %458 = call float @dx.op.dot3.f32(i32 55, float %454, float %455, float %457, float %454, float %455, float %457)  ; Dot3(ax,ay,az,bx,by,bz)
  %459 = call float @dx.op.unary.f32(i32 25, float %458)  ; Rsqrt(value)
  %460 = fmul fast float %448, %122
  %461 = fmul fast float %448, %123
  %462 = fmul fast float %448, %124
  %463 = fmul fast float %133, %446
  %464 = fmul fast float %463, %127
  %465 = fmul fast float %446, %129
  %466 = fmul fast float %465, %133
  %467 = fmul fast float %446, %131
  %468 = fmul fast float %467, %133
  %469 = fadd fast float %464, %460
  %470 = fadd fast float %466, %461
  %471 = fadd fast float %468, %462
  %472 = fmul fast float %447, %454
  %473 = fmul fast float %472, %459
  %474 = fmul fast float %459, %447
  %475 = fmul fast float %474, %455
  %476 = fmul fast float %447, %457
  %477 = fmul fast float %476, %459
  %478 = fadd fast float %469, %473
  %479 = fadd fast float %470, %475
  %480 = fadd fast float %471, %477
  %481 = call float @dx.op.dot3.f32(i32 55, float %478, float %479, float %480, float %478, float %479, float %480)  ; Dot3(ax,ay,az,bx,by,bz)
  %482 = call float @dx.op.unary.f32(i32 25, float %481)  ; Rsqrt(value)
  %483 = fmul fast float %478, %482
  %484 = fmul fast float %479, %482
  %485 = fmul fast float %480, %482
  %486 = call float @dx.op.unary.f32(i32 83, float %48)  ; DerivCoarseX(value)
  %487 = call float @dx.op.unary.f32(i32 83, float %49)  ; DerivCoarseX(value)
  %488 = call float @dx.op.unary.f32(i32 83, float %50)  ; DerivCoarseX(value)
  %489 = call float @dx.op.unary.f32(i32 84, float %48)  ; DerivCoarseY(value)
  %490 = call float @dx.op.unary.f32(i32 84, float %49)  ; DerivCoarseY(value)
  %491 = call float @dx.op.unary.f32(i32 84, float %50)  ; DerivCoarseY(value)
  %492 = fadd fast float %486, %48
  %493 = fadd fast float %487, %49
  %494 = fadd fast float %488, %50
  %495 = fadd fast float %489, %48
  %496 = fadd fast float %490, %49
  %497 = fadd fast float %491, %50
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 0
  %500 = extractvalue %dx.types.CBufRet.f32 %498, 1
  %501 = extractvalue %dx.types.CBufRet.f32 %498, 2
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 2
  %504 = extractvalue %dx.types.CBufRet.f32 %502, 3
  %505 = fmul fast float %499, %56
  %506 = fmul fast float %505, %503
  %507 = fmul fast float %500, %57
  %508 = fmul fast float %507, %504
  %509 = fptoui float %506 to i32
  %510 = fptoui float %508 to i32
  %511 = fadd fast float %499, -1.000000e+00
  %512 = fadd fast float %500, -1.000000e+00
  %513 = fptoui float %511 to i32
  %514 = fptoui float %512 to i32
  %515 = call i32 @dx.op.binary.i32(i32 40, i32 %509, i32 %513)  ; UMin(a,b)
  %516 = call i32 @dx.op.binary.i32(i32 40, i32 %510, i32 %514)  ; UMin(a,b)
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %519 = extractvalue %dx.types.CBufRet.f32 %517, 3
  %520 = fmul fast float %518, %53
  %521 = fsub fast float %520, %519
  %522 = fadd fast float %501, -1.000000e+00
  %523 = call float @dx.op.binary.f32(i32 36, float %521, float %522)  ; FMin(a,b)
  %524 = fptoui float %523 to i32
  %525 = fptoui float %499 to i32
  %526 = fptoui float %500 to i32
  %527 = mul i32 %524, %526
  %528 = add i32 %527, %516
  %529 = mul i32 %528, %525
  %530 = add i32 %529, %515
  %531 = shl i32 %530, 2
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 1023
  %535 = lshr i32 %533, 10
  %536 = icmp eq i32 %534, 0
  br i1 %536, label %966, label %537

; <label>:537                                     ; preds = %415
  %538 = and i32 %533, 1023
  br label %539

; <label>:539                                     ; preds = %626, %537
  %540 = phi float [ %627, %626 ], [ 0.000000e+00, %537 ]
  %541 = phi float [ %628, %626 ], [ %450, %537 ]
  %542 = phi float [ %629, %626 ], [ %426, %537 ]
  %543 = phi float [ %630, %626 ], [ 0.000000e+00, %537 ]
  %544 = phi float [ %631, %626 ], [ 0.000000e+00, %537 ]
  %545 = phi float [ %632, %626 ], [ 0.000000e+00, %537 ]
  %546 = phi float [ %633, %626 ], [ 0.000000e+00, %537 ]
  %547 = phi float [ %634, %626 ], [ 0.000000e+00, %537 ]
  %548 = phi float [ %635, %626 ], [ %483, %537 ]
  %549 = phi float [ %636, %626 ], [ %484, %537 ]
  %550 = phi float [ %637, %626 ], [ %485, %537 ]
  %551 = phi float [ %638, %626 ], [ %430, %537 ]
  %552 = phi float [ %639, %626 ], [ %428, %537 ]
  %553 = phi float [ %640, %626 ], [ 0.000000e+00, %537 ]
  %554 = phi float [ %641, %626 ], [ %422, %537 ]
  %555 = phi float [ %642, %626 ], [ %419, %537 ]
  %556 = phi float [ %643, %626 ], [ %420, %537 ]
  %557 = phi float [ %644, %626 ], [ %421, %537 ]
  %558 = phi i32 [ %624, %626 ], [ 0, %537 ]
  %559 = add nuw nsw i32 %558, %535
  %560 = shl i32 %559, 2
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = shl i32 %562, 8
  %564 = or i32 %563, 48
  %565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = or i32 %563, 64
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = extractvalue %dx.types.ResRet.i32 %570, 1
  %573 = extractvalue %dx.types.ResRet.i32 %570, 2
  %574 = extractvalue %dx.types.ResRet.i32 %570, 3
  %575 = or i32 %563, 80
  %576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = extractvalue %dx.types.ResRet.f32 %576, 1
  %579 = extractvalue %dx.types.ResRet.f32 %576, 2
  %580 = extractvalue %dx.types.ResRet.f32 %576, 3
  %581 = or i32 %563, 96
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = extractvalue %dx.types.ResRet.f32 %582, 1
  %585 = extractvalue %dx.types.ResRet.f32 %582, 2
  %586 = extractvalue %dx.types.ResRet.f32 %582, 3
  %587 = or i32 %563, 112
  %588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = extractvalue %dx.types.ResRet.f32 %588, 3
  %593 = or i32 %563, 128
  %594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = extractvalue %dx.types.ResRet.f32 %594, 1
  %597 = extractvalue %dx.types.ResRet.f32 %594, 2
  %598 = extractvalue %dx.types.ResRet.f32 %594, 3
  %599 = or i32 %563, 144
  %600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = extractvalue %dx.types.ResRet.f32 %600, 3
  %605 = or i32 %563, 160
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = extractvalue %dx.types.ResRet.f32 %606, 3
  %611 = or i32 %563, 192
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = or i32 %563, 208
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = or i32 %563, 240
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = or i32 %563, 248
  %621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = extractvalue %dx.types.ResRet.f32 %621, 1
  %624 = add nuw nsw i32 %558, 1
  %625 = icmp eq i32 %619, 0
  br i1 %625, label %626, label %646

; <label>:626                                     ; preds = %952, %771, %697, %646, %539
  %627 = phi float [ %540, %539 ], [ %540, %697 ], [ %774, %771 ], [ %774, %952 ], [ %540, %646 ]
  %628 = phi float [ %541, %539 ], [ %541, %697 ], [ %541, %771 ], [ %927, %952 ], [ %541, %646 ]
  %629 = phi float [ %542, %539 ], [ %542, %697 ], [ %542, %771 ], [ %925, %952 ], [ %542, %646 ]
  %630 = phi float [ %543, %539 ], [ %543, %697 ], [ %543, %771 ], [ %897, %952 ], [ %543, %646 ]
  %631 = phi float [ %544, %539 ], [ %544, %697 ], [ %544, %771 ], [ %895, %952 ], [ %544, %646 ]
  %632 = phi float [ %545, %539 ], [ %545, %697 ], [ %545, %771 ], [ %962, %952 ], [ %545, %646 ]
  %633 = phi float [ %546, %539 ], [ %546, %697 ], [ %546, %771 ], [ %963, %952 ], [ %546, %646 ]
  %634 = phi float [ %547, %539 ], [ %547, %697 ], [ %547, %771 ], [ %964, %952 ], [ %547, %646 ]
  %635 = phi float [ %548, %539 ], [ %548, %697 ], [ %548, %771 ], [ %876, %952 ], [ %548, %646 ]
  %636 = phi float [ %549, %539 ], [ %549, %697 ], [ %549, %771 ], [ %877, %952 ], [ %549, %646 ]
  %637 = phi float [ %550, %539 ], [ %550, %697 ], [ %550, %771 ], [ %878, %952 ], [ %550, %646 ]
  %638 = phi float [ %551, %539 ], [ %551, %697 ], [ %551, %771 ], [ %905, %952 ], [ %551, %646 ]
  %639 = phi float [ %552, %539 ], [ %552, %697 ], [ %552, %771 ], [ %902, %952 ], [ %552, %646 ]
  %640 = phi float [ %553, %539 ], [ %553, %697 ], [ %553, %771 ], [ %899, %952 ], [ %553, %646 ]
  %641 = phi float [ %554, %539 ], [ %554, %697 ], [ %554, %771 ], [ %893, %952 ], [ %554, %646 ]
  %642 = phi float [ %555, %539 ], [ %555, %697 ], [ %555, %771 ], [ %888, %952 ], [ %555, %646 ]
  %643 = phi float [ %556, %539 ], [ %556, %697 ], [ %556, %771 ], [ %889, %952 ], [ %556, %646 ]
  %644 = phi float [ %557, %539 ], [ %557, %697 ], [ %557, %771 ], [ %890, %952 ], [ %557, %646 ]
  %645 = icmp eq i32 %624, %538
  br i1 %645, label %965, label %539

; <label>:646                                     ; preds = %539
  %647 = extractvalue %dx.types.ResRet.f32 %565, 3
  %648 = bitcast float %647 to i32
  %649 = and i32 %648, 2560
  %650 = icmp eq i32 %649, 0
  %651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = extractvalue %dx.types.ResRet.f32 %651, 1
  %654 = extractvalue %dx.types.ResRet.f32 %651, 2
  %655 = extractvalue %dx.types.ResRet.f32 %651, 3
  %656 = call float @dx.op.dot4.f32(i32 56, float %652, float %653, float %654, float %655, float %48, float %49, float %50, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %657 = or i32 %563, 16
  %658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = extractvalue %dx.types.ResRet.f32 %658, 1
  %661 = extractvalue %dx.types.ResRet.f32 %658, 2
  %662 = extractvalue %dx.types.ResRet.f32 %658, 3
  %663 = call float @dx.op.dot4.f32(i32 56, float %659, float %660, float %661, float %662, float %48, float %49, float %50, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %664 = or i32 %563, 32
  %665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = extractvalue %dx.types.ResRet.f32 %665, 1
  %668 = extractvalue %dx.types.ResRet.f32 %665, 2
  %669 = extractvalue %dx.types.ResRet.f32 %665, 3
  %670 = call float @dx.op.dot4.f32(i32 56, float %666, float %667, float %668, float %669, float %48, float %49, float %50, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %671 = call float @dx.op.unary.f32(i32 27, float %656)  ; Round_ni(value)
  %672 = call float @dx.op.unary.f32(i32 6, float %671)  ; FAbs(value)
  %673 = call float @dx.op.unary.f32(i32 27, float %663)  ; Round_ni(value)
  %674 = call float @dx.op.unary.f32(i32 6, float %673)  ; FAbs(value)
  %675 = call float @dx.op.unary.f32(i32 6, float %670)  ; FAbs(value)
  %676 = call float @dx.op.unary.f32(i32 27, float %675)  ; Round_ni(value)
  %677 = fadd fast float %674, %672
  %678 = fadd fast float %677, %676
  %679 = fcmp fast oeq float %678, 0.000000e+00
  %680 = call float @dx.op.dot4.f32(i32 56, float %652, float %653, float %654, float %655, float %492, float %493, float %494, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %681 = call float @dx.op.dot4.f32(i32 56, float %659, float %660, float %661, float %662, float %492, float %493, float %494, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %682 = call float @dx.op.dot4.f32(i32 56, float %652, float %653, float %654, float %655, float %495, float %496, float %497, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %683 = call float @dx.op.dot4.f32(i32 56, float %659, float %660, float %661, float %662, float %495, float %496, float %497, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %684 = fsub fast float %680, %656
  %685 = fsub fast float %682, %656
  %686 = fsub fast float %681, %663
  %687 = fsub fast float %683, %663
  %688 = call float @dx.op.dot3.f32(i32 55, float %566, float %567, float %568, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %691 = fadd fast float %690, %688
  %692 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %693 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %694 = fcmp fast ogt float %692, %693
  %695 = and i1 %679, %694
  %696 = and i1 %650, %695
  br i1 %696, label %697, label %626

; <label>:697                                     ; preds = %646
  %698 = add i32 %574, 0
  %699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %698, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %701 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %699, %dx.types.Handle %700, float %656, float %663, float undef, float undef, i32 0, i32 0, i32 undef, float %684, float %686, float undef, float %685, float %687, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = fmul fast float %702, %577
  %704 = fadd fast float %703, %578
  %705 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  %706 = fmul fast float %656, %583
  %707 = call float @dx.op.tertiary.f32(i32 46, float %584, float %663, float %706)  ; FMad(a,b,c)
  %708 = fadd fast float %707, %589
  %709 = fmul fast float %656, %585
  %710 = call float @dx.op.tertiary.f32(i32 46, float %586, float %663, float %709)  ; FMad(a,b,c)
  %711 = fadd fast float %710, %590
  %712 = fmul fast float %684, %583
  %713 = call float @dx.op.tertiary.f32(i32 46, float %584, float %686, float %712)  ; FMad(a,b,c)
  %714 = fmul fast float %684, %585
  %715 = call float @dx.op.tertiary.f32(i32 46, float %586, float %686, float %714)  ; FMad(a,b,c)
  %716 = fmul fast float %685, %583
  %717 = call float @dx.op.tertiary.f32(i32 46, float %584, float %687, float %716)  ; FMad(a,b,c)
  %718 = fmul fast float %685, %585
  %719 = call float @dx.op.tertiary.f32(i32 46, float %586, float %687, float %718)  ; FMad(a,b,c)
  %720 = add i32 %573, 0
  %721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %720, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %722 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %721, %dx.types.Handle %700, float %708, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float %713, float %715, float undef, float %717, float %719, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = and i32 %648, 1024
  %725 = icmp ne i32 %724, 0
  %726 = fcmp fast ogt float %723, 0x3FE0101020000000
  %727 = uitofp i1 %726 to float
  %728 = select i1 %725, float %727, float %723
  %729 = and i32 %648, 8192
  %730 = icmp ne i32 %729, 0
  %731 = select i1 %730, float %592, float 1.000000e+00
  %732 = fmul fast float %656, 2.000000e+00
  %733 = fadd fast float %732, -1.000000e+00
  %734 = call float @dx.op.unary.f32(i32 6, float %733)  ; FAbs(value)
  %735 = fmul fast float %734, %622
  %736 = fsub fast float %735, %622
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %738 = fmul fast float %663, 2.000000e+00
  %739 = fadd fast float %738, -1.000000e+00
  %740 = call float @dx.op.unary.f32(i32 6, float %739)  ; FAbs(value)
  %741 = fmul fast float %740, %623
  %742 = fsub fast float %741, %623
  %743 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  %744 = fmul fast float %675, %579
  %745 = fsub fast float %744, %579
  %746 = call float @dx.op.unary.f32(i32 7, float %745)  ; Saturate(value)
  %747 = fmul fast float %705, %731
  %748 = fmul fast float %747, %702
  %749 = fmul fast float %748, %737
  %750 = fmul fast float %749, %728
  %751 = fmul fast float %750, %743
  %752 = fmul fast float %751, %746
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 1
  %755 = extractvalue %dx.types.CBufRet.f32 %753, 0
  %756 = fsub fast float %692, %755
  %757 = fmul fast float %756, %754
  %758 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %759 = fmul fast float %752, %580
  %760 = fadd fast float %752, %580
  %761 = fmul fast float %760, %591
  %762 = fsub fast float %761, %591
  %763 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %764 = and i32 %648, 128
  %765 = icmp ne i32 %764, 0
  %766 = select i1 %765, float %763, float %759
  %767 = fmul fast float %766, %758
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %770 = fcmp fast ugt float %767, %769
  br i1 %770, label %771, label %626

; <label>:771                                     ; preds = %697
  %772 = select i1 %730, float %767, float 0.000000e+00
  %773 = fadd fast float %772, %540
  %774 = call float @dx.op.unary.f32(i32 7, float %773)  ; Saturate(value)
  br i1 %730, label %626, label %775

; <label>:775                                     ; preds = %771
  %776 = and i32 %648, 4
  %777 = and i32 %648, 8
  %778 = add i32 %571, 0
  %779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %778, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %780 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %779, %dx.types.Handle %417, float %708, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float %713, float %715, float undef, float %717, float %719, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = extractvalue %dx.types.ResRet.f32 %780, 1
  %783 = extractvalue %dx.types.ResRet.f32 %780, 2
  %784 = extractvalue %dx.types.ResRet.f32 %780, 3
  %785 = bitcast float %604 to i32
  %786 = and i32 %785, 255
  %787 = uitofp i32 %786 to float
  %788 = lshr i32 %785, 8
  %789 = and i32 %788, 255
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %784, %787
  %792 = fadd fast float %791, %790
  %793 = fmul fast float %792, 0x3F70101000000000
  %794 = add i32 %572, 0
  %795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %794, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %796 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %795, %dx.types.Handle %417, float %708, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float %713, float %715, float undef, float %717, float %719, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  %799 = extractvalue %dx.types.ResRet.f32 %796, 2
  %800 = extractvalue %dx.types.ResRet.f32 %796, 3
  %801 = bitcast float %598 to i32
  %802 = and i32 %801, 255
  %803 = uitofp i32 %802 to float
  %804 = lshr i32 %801, 8
  %805 = and i32 %804, 255
  %806 = uitofp i32 %805 to float
  %807 = lshr i32 %801, 16
  %808 = and i32 %807, 255
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %809, 0x3F70101000000000
  %811 = fmul fast float %797, %803
  %812 = fadd fast float %811, %806
  %813 = fmul fast float %812, 0x3F70101000000000
  %814 = fadd fast float %798, -5.000000e-01
  %815 = fadd fast float %800, -5.000000e-01
  %816 = fmul fast float %814, %810
  %817 = fmul fast float %815, %810
  %818 = fadd fast float %816, 5.000000e-01
  %819 = fadd fast float %817, 5.000000e-01
  %820 = fmul fast float %781, %607
  %821 = fmul fast float %782, %608
  %822 = fmul fast float %783, %609
  %823 = fmul fast float %818, 2.000000e+00
  %824 = fadd fast float %823, -1.000000e+00
  %825 = fmul fast float %819, 2.000000e+00
  %826 = fadd fast float %825, -1.000000e+00
  %827 = fadd fast float %824, %826
  %828 = fmul fast float %827, 5.000000e-01
  %829 = fsub fast float %824, %826
  %830 = fmul fast float %829, 5.000000e-01
  %831 = call float @dx.op.unary.f32(i32 6, float %828)  ; FAbs(value)
  %832 = fsub fast float 1.000000e+00, %831
  %833 = call float @dx.op.unary.f32(i32 6, float %830)  ; FAbs(value)
  %834 = fsub fast float %832, %833
  %835 = call float @dx.op.dot3.f32(i32 55, float %828, float %830, float %834, float %828, float %830, float %834)  ; Dot3(ax,ay,az,bx,by,bz)
  %836 = call float @dx.op.unary.f32(i32 25, float %835)  ; Rsqrt(value)
  %837 = fmul fast float %828, %836
  %838 = fmul fast float %830, %836
  %839 = fmul fast float %836, %834
  %840 = fmul fast float %839, %566
  %841 = fmul fast float %839, %567
  %842 = fmul fast float %839, %568
  %843 = fmul fast float %837, %595
  %844 = fmul fast float %837, %596
  %845 = fmul fast float %837, %597
  %846 = fadd fast float %843, %840
  %847 = fadd fast float %844, %841
  %848 = fadd fast float %845, %842
  %849 = fmul fast float %838, %601
  %850 = fmul fast float %838, %602
  %851 = fmul fast float %838, %603
  %852 = fadd fast float %846, %849
  %853 = fadd fast float %847, %850
  %854 = fadd fast float %848, %851
  %855 = call float @dx.op.dot3.f32(i32 55, float %852, float %853, float %854, float %852, float %853, float %854)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = call float @dx.op.unary.f32(i32 25, float %855)  ; Rsqrt(value)
  %857 = fmul fast float %852, %856
  %858 = fmul fast float %853, %856
  %859 = fmul fast float %854, %856
  %860 = icmp ne i32 %777, 0
  %861 = select i1 %860, float 1.000000e+00, float 0.000000e+00
  %862 = fmul fast float %767, %861
  %863 = and i32 %648, 1
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %865, label %869

; <label>:865                                     ; preds = %775
  %866 = fsub fast float %857, %548
  %867 = fsub fast float %858, %549
  %868 = fsub fast float %859, %550
  br label %869

; <label>:869                                     ; preds = %865, %775
  %870 = phi float [ %866, %865 ], [ %857, %775 ]
  %871 = phi float [ %867, %865 ], [ %858, %775 ]
  %872 = phi float [ %868, %865 ], [ %859, %775 ]
  %873 = fmul float %872, %862
  %874 = fmul float %871, %862
  %875 = fmul float %870, %862
  %876 = fadd fast float %875, %548
  %877 = fadd fast float %874, %549
  %878 = fadd fast float %873, %550
  %879 = icmp ne i32 %776, 0
  %880 = select i1 %879, float 1.000000e+00, float 0.000000e+00
  %881 = fmul fast float %767, %880
  %882 = fsub fast float %820, %555
  %883 = fsub fast float %821, %556
  %884 = fsub fast float %822, %557
  %885 = fmul fast float %882, %881
  %886 = fmul fast float %883, %881
  %887 = fmul fast float %884, %881
  %888 = fadd fast float %885, %555
  %889 = fadd fast float %886, %556
  %890 = fadd fast float %887, %557
  %891 = fsub fast float %793, %554
  %892 = fmul fast float %891, %881
  %893 = fadd fast float %892, %554
  %894 = fmul fast float %881, %544
  %895 = fsub fast float %544, %894
  %896 = fmul fast float %881, %543
  %897 = fsub fast float %543, %896
  %898 = fadd fast float %767, %553
  %899 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %900 = fsub fast float %813, %552
  %901 = fmul fast float %900, %862
  %902 = fadd fast float %901, %552
  %903 = fsub fast float %799, %551
  %904 = fmul fast float %903, %862
  %905 = fadd fast float %904, %551
  %906 = call float @dx.op.dot3.f32(i32 55, float %820, float %821, float %822, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = extractvalue %dx.types.CBufRet.f32 %907, 1
  %910 = fmul fast float %909, %906
  %911 = fadd fast float %910, %908
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = bitcast float %610 to i32
  %914 = and i32 %913, 65535
  %915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %914)  ; LegacyF16ToF32(value)
  %916 = lshr i32 %913, 16
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = fcmp fast oge float %915, 0.000000e+00
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %921 = select i1 %918, float %915, float %920
  %922 = fadd fast float %921, %917
  %923 = fsub fast float %912, %542
  %924 = fmul fast float %923, %767
  %925 = fadd fast float %924, %542
  %926 = fmul fast float %922, %767
  %927 = call float @dx.op.binary.f32(i32 35, float %541, float %926)  ; FMax(a,b)
  %928 = and i32 %648, 16
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %952, label %930

; <label>:930                                     ; preds = %869
  %931 = bitcast float %616 to i32
  %932 = add i32 %613, 0
  %933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %932, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %934 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %933, %dx.types.Handle %417, float %708, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float %713, float %715, float undef, float %717, float %719, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 0
  %936 = extractvalue %dx.types.ResRet.f32 %934, 1
  %937 = extractvalue %dx.types.ResRet.f32 %934, 2
  %938 = and i32 %931, 65535
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = fmul fast float %935, %607
  %941 = fmul fast float %936, %608
  %942 = fmul fast float %937, %609
  %943 = and i32 %648, 16384
  %944 = icmp ne i32 %943, 0
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %947 = select i1 %944, float %946, float 1.000000e+00
  %948 = fmul fast float %947, %939
  %949 = fmul fast float %940, %948
  %950 = fmul fast float %941, %948
  %951 = fmul fast float %942, %948
  br label %952

; <label>:952                                     ; preds = %930, %869
  %953 = phi float [ %949, %930 ], [ 0.000000e+00, %869 ]
  %954 = phi float [ %950, %930 ], [ 0.000000e+00, %869 ]
  %955 = phi float [ %951, %930 ], [ 0.000000e+00, %869 ]
  %956 = fsub fast float %953, %545
  %957 = fsub fast float %954, %546
  %958 = fsub fast float %955, %547
  %959 = fmul fast float %956, %767
  %960 = fmul fast float %957, %767
  %961 = fmul fast float %958, %767
  %962 = fadd fast float %959, %545
  %963 = fadd fast float %960, %546
  %964 = fadd fast float %961, %547
  br label %626

; <label>:965                                     ; preds = %626
  br label %966

; <label>:966                                     ; preds = %965, %415
  %967 = phi float [ 0.000000e+00, %415 ], [ %627, %965 ]
  %968 = phi float [ %450, %415 ], [ %628, %965 ]
  %969 = phi float [ %426, %415 ], [ %629, %965 ]
  %970 = phi float [ 0.000000e+00, %415 ], [ %630, %965 ]
  %971 = phi float [ 0.000000e+00, %415 ], [ %631, %965 ]
  %972 = phi float [ 0.000000e+00, %415 ], [ %632, %965 ]
  %973 = phi float [ 0.000000e+00, %415 ], [ %633, %965 ]
  %974 = phi float [ 0.000000e+00, %415 ], [ %634, %965 ]
  %975 = phi float [ %483, %415 ], [ %635, %965 ]
  %976 = phi float [ %484, %415 ], [ %636, %965 ]
  %977 = phi float [ %485, %415 ], [ %637, %965 ]
  %978 = phi float [ %430, %415 ], [ %638, %965 ]
  %979 = phi float [ %428, %415 ], [ %639, %965 ]
  %980 = phi float [ 0.000000e+00, %415 ], [ %640, %965 ]
  %981 = phi float [ %422, %415 ], [ %641, %965 ]
  %982 = phi float [ %419, %415 ], [ %642, %965 ]
  %983 = phi float [ %420, %415 ], [ %643, %965 ]
  %984 = phi float [ %421, %415 ], [ %644, %965 ]
  %985 = call float @dx.op.dot3.f32(i32 55, float %975, float %976, float %977, float %975, float %976, float %977)  ; Dot3(ax,ay,az,bx,by,bz)
  %986 = call float @dx.op.unary.f32(i32 25, float %985)  ; Rsqrt(value)
  %987 = fmul fast float %986, %975
  %988 = fmul fast float %986, %976
  %989 = fmul fast float %986, %977
  %990 = fadd fast float %980, 1.000000e+00
  %991 = call float @dx.op.unary.f32(i32 7, float %990)  ; Saturate(value)
  %992 = call float @dx.op.dot3.f32(i32 55, float %987, float %988, float %989, float %987, float %988, float %989)  ; Dot3(ax,ay,az,bx,by,bz)
  %993 = call float @dx.op.unary.f32(i32 25, float %992)  ; Rsqrt(value)
  %994 = fmul fast float %993, %987
  %995 = fmul fast float %993, %988
  %996 = fmul fast float %993, %989
  %997 = fadd fast float %981, 0xBFB99999A0000000
  %998 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %999 = fmul fast float %998, 0x3FF1C71C80000000
  %1000 = call float @dx.op.binary.f32(i32 36, float %981, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1001 = fsub fast float 1.000000e+00, %999
  %1002 = call float @dx.op.unary.f32(i32 7, float %1001)  ; Saturate(value)
  %1003 = fmul fast float %1002, %982
  %1004 = fmul fast float %1002, %983
  %1005 = fmul fast float %1002, %984
  %1006 = call float @dx.op.unary.f32(i32 7, float %1003)  ; Saturate(value)
  %1007 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1008 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  %1009 = fmul fast float %999, %982
  %1010 = fmul fast float %999, %983
  %1011 = fmul fast float %999, %984
  %1012 = fadd fast float %1009, %1000
  %1013 = fadd fast float %1010, %1000
  %1014 = fadd fast float %1011, %1000
  %1015 = call float @dx.op.unary.f32(i32 7, float %1012)  ; Saturate(value)
  %1016 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1017 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  %1018 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %1019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.i32 %1019, 3
  %1021 = and i32 %1020, 8
  %1022 = icmp ne i32 %1021, 0
  %1023 = call float @dx.op.binary.f32(i32 35, float %1006, float %982)  ; FMax(a,b)
  %1024 = call float @dx.op.binary.f32(i32 35, float %1007, float %982)  ; FMax(a,b)
  %1025 = call float @dx.op.binary.f32(i32 35, float %1008, float %982)  ; FMax(a,b)
  %1026 = call float @dx.op.dot3.f32(i32 55, float %1006, float %1007, float %1008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = select i1 %416, float %982, float %1006
  %1028 = select i1 %416, float %1026, float %1007
  %1029 = select i1 %416, float 1.000000e+00, float %1008
  %1030 = select i1 %1022, float %1023, float %1027
  %1031 = select i1 %1022, float %1024, float %1028
  %1032 = select i1 %1022, float %1025, float %1029
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.CBufRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1037 = fadd fast float %1034, %91
  %1038 = fadd fast float %1035, %92
  %1039 = fadd fast float %1036, %93
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.CBufRet.f32 %1040, 1
  %1043 = fsub fast float %1037, %1041
  %1044 = fsub fast float %1038, %1042
  %1045 = fmul fast float %1043, %1043
  %1046 = fmul fast float %1044, %1044
  %1047 = fadd fast float %1045, %1046
  %1048 = call float @dx.op.unary.f32(i32 24, float %1047)  ; Sqrt(value)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1040, 2
  %1050 = fcmp fast olt float %1048, %1049
  br i1 %1050, label %1051, label %1118

; <label>:1051                                    ; preds = %966
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1059 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1060 = extractvalue %dx.types.CBufRet.f32 %1056, 1
  %1061 = extractvalue %dx.types.CBufRet.f32 %1052, 3
  %1062 = extractvalue %dx.types.CBufRet.f32 %1054, 3
  %1063 = extractvalue %dx.types.CBufRet.f32 %1056, 3
  %1064 = fadd fast float %1061, %1037
  %1065 = fadd fast float %1062, %1038
  %1066 = fadd fast float %1063, %1039
  %1067 = fmul fast float %1064, %1053
  %1068 = call float @dx.op.tertiary.f32(i32 46, float %1065, float %1055, float %1067)  ; FMad(a,b,c)
  %1069 = call float @dx.op.tertiary.f32(i32 46, float %1066, float %1057, float %1068)  ; FMad(a,b,c)
  %1070 = fmul fast float %1064, %1058
  %1071 = call float @dx.op.tertiary.f32(i32 46, float %1065, float %1059, float %1070)  ; FMad(a,b,c)
  %1072 = call float @dx.op.tertiary.f32(i32 46, float %1066, float %1060, float %1071)  ; FMad(a,b,c)
  %1073 = fsub fast float %1069, %1061
  %1074 = fsub fast float %1072, %1062
  %1075 = fsub fast float %1073, %1041
  %1076 = fadd fast float %1075, %1049
  %1077 = fsub fast float %1074, %1042
  %1078 = fadd fast float %1077, %1049
  %1079 = extractvalue %dx.types.CBufRet.f32 %1040, 3
  %1080 = fmul fast float %1076, %1079
  %1081 = fmul fast float %1078, %1079
  %1082 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  %1083 = call float @dx.op.unary.f32(i32 7, float %1081)  ; Saturate(value)
  %1084 = fsub fast float 1.000000e+00, %1082
  %1085 = fsub fast float 1.000000e+00, %1083
  %1086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %40, float %1084, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = fcmp fast ugt float %1087, 0.000000e+00
  br i1 %1088, label %1089, label %1392

; <label>:1089                                    ; preds = %1051
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 2
  %1092 = fmul fast float %1091, %1087
  %1093 = extractvalue %dx.types.CBufRet.f32 %1090, 3
  %1094 = fadd fast float %1093, %1092
  %1095 = extractvalue %dx.types.CBufRet.f32 %1056, 2
  %1096 = fadd fast float %1094, %1063
  %1097 = fmul fast float %1069, %1057
  %1098 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %1060, float %1097)  ; FMad(a,b,c)
  %1099 = call float @dx.op.tertiary.f32(i32 46, float %1096, float %1095, float %1098)  ; FMad(a,b,c)
  %1100 = fsub fast float %1099, %1063
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 2
  %1103 = fsub fast float %1100, %1102
  %1104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %40, float %1084, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %40, float %1084, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = fadd fast float %1109, %1105
  %1113 = fmul fast float %1112, 0x3F847AE140000000
  %1114 = fadd fast float %1110, %1106
  %1115 = fmul fast float %1114, 0x3F847AE140000000
  %1116 = fadd fast float %1111, %1107
  %1117 = fmul fast float %1116, 0x3F847AE140000000
  br label %1392

; <label>:1118                                    ; preds = %966
  %1119 = and i32 %392, 1
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1392, label %1121

; <label>:1121                                    ; preds = %1118
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.CBufRet.f32 %1122, 1
  %1129 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1130 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1131 = extractvalue %dx.types.CBufRet.f32 %1122, 3
  %1132 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1133 = extractvalue %dx.types.CBufRet.f32 %1126, 3
  %1134 = fadd fast float %1131, %1037
  %1135 = fadd fast float %1132, %1038
  %1136 = fadd fast float %1133, %1039
  %1137 = fmul fast float %1134, %1123
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %1135, float %1125, float %1137)  ; FMad(a,b,c)
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %1127, float %1138)  ; FMad(a,b,c)
  %1140 = fmul fast float %1134, %1128
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %1135, float %1129, float %1140)  ; FMad(a,b,c)
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %1130, float %1141)  ; FMad(a,b,c)
  %1143 = fsub fast float %1139, %1131
  %1144 = fsub fast float %1142, %1132
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 0
  %1147 = extractvalue %dx.types.CBufRet.f32 %1145, 1
  %1148 = extractvalue %dx.types.CBufRet.f32 %1145, 2
  %1149 = extractvalue %dx.types.CBufRet.f32 %1145, 3
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 3
  %1152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.i32 %1152, 0
  %1154 = extractvalue %dx.types.CBufRet.i32 %1152, 1
  %1155 = udiv i32 %1154, %1153
  %1156 = fsub fast float %1143, %1146
  %1157 = fsub fast float %1144, %1147
  %1158 = call float @dx.op.binary.f32(i32 35, float %1156, float 0.000000e+00)  ; FMax(a,b)
  %1159 = call float @dx.op.binary.f32(i32 35, float %1157, float 0.000000e+00)  ; FMax(a,b)
  %1160 = call float @dx.op.binary.f32(i32 36, float %1158, float %1148)  ; FMin(a,b)
  %1161 = call float @dx.op.binary.f32(i32 36, float %1159, float %1149)  ; FMin(a,b)
  %1162 = add i32 %1153, -1
  %1163 = add i32 %1155, -1
  %1164 = fmul fast float %1160, %1151
  %1165 = fmul fast float %1161, %1151
  %1166 = fptoui float %1164 to i32
  %1167 = fptoui float %1165 to i32
  %1168 = call i32 @dx.op.binary.i32(i32 40, i32 %1166, i32 %1162)  ; UMin(a,b)
  %1169 = call i32 @dx.op.binary.i32(i32 40, i32 %1167, i32 %1163)  ; UMin(a,b)
  %1170 = mul i32 %1169, %1153
  %1171 = add i32 %1170, %1168
  %1172 = shl i32 %1171, 2
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = icmp eq i32 %1174, -1
  br i1 %1175, label %1392, label %1176

; <label>:1176                                    ; preds = %1121
  %1177 = mul i32 %1174, 148
  %1178 = add i32 %1177, 4
  %1179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = add i32 %1177, 8
  %1182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = add i32 %1177, 36
  %1185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.f32 %1185, 0
  %1187 = add i32 %1177, 60
  %1188 = add i32 %1177, 92
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = add i32 %1177, 116
  %1192 = fsub fast float %1143, %1180
  %1193 = fsub fast float %1144, %1183
  %1194 = fmul fast float %1151, %1192
  %1195 = fmul fast float %1151, %1193
  %1196 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1197 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1198 = fsub fast float 1.000000e+00, %1197
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1201 = call float @dx.op.unary.f32(i32 83, float %1196)  ; DerivCoarseX(value)
  %1202 = call float @dx.op.unary.f32(i32 83, float %1198)  ; DerivCoarseX(value)
  %1203 = call float @dx.op.unary.f32(i32 84, float %1196)  ; DerivCoarseY(value)
  %1204 = call float @dx.op.unary.f32(i32 84, float %1198)  ; DerivCoarseY(value)
  %1205 = fmul fast float %1201, %1200
  %1206 = fmul fast float %1202, %1200
  %1207 = fmul fast float %1203, %1200
  %1208 = fmul fast float %1204, %1200
  %1209 = call float @dx.op.dot2.f32(i32 54, float %1207, float %1208, float %1207, float %1208)  ; Dot2(ax,ay,bx,by)
  %1210 = call float @dx.op.dot2.f32(i32 54, float %1205, float %1206, float %1205, float %1206)  ; Dot2(ax,ay,bx,by)
  %1211 = call float @dx.op.binary.f32(i32 35, float %1210, float %1209)  ; FMax(a,b)
  %1212 = call float @dx.op.unary.f32(i32 23, float %1211)  ; Log(value)
  %1213 = fmul fast float %1212, 5.000000e-01
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 1
  %1216 = fadd fast float %1215, %1213
  %1217 = call float @dx.op.binary.f32(i32 35, float %1216, float 0.000000e+00)  ; FMax(a,b)
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 3
  %1220 = fadd fast float %1219, %1217
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 3
  %1223 = fadd fast float %1220, %1222
  %1224 = add i32 %1190, 0
  %1225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1224, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1226 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1225, i32 0)  ; GetDimensions(handle,mipLevel)
  %1227 = extractvalue %dx.types.Dimensions %1226, 0
  %1228 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1227)  ; FirstbitLo(value)
  %1229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.i32 %1229, 1
  %1231 = sub nsw i32 %1230, %1228
  %1232 = sitofp i32 %1231 to float
  %1233 = fsub fast float %1223, %1232
  %1234 = call float @dx.op.binary.f32(i32 35, float %1233, float 0.000000e+00)  ; FMax(a,b)
  %1235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1225, %dx.types.Handle %39, float %1196, float %1198, float %1186, float undef, i32 0, i32 0, i32 undef, float %1234)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = fcmp ule float %1236, 0x3FE0101020000000
  %1238 = extractvalue %dx.types.CBufRet.i32 %1229, 0
  %1239 = and i32 %1238, 128
  %1240 = icmp ne i32 %1239, 0
  %1241 = and i1 %1237, %1240
  br i1 %1241, label %1392, label %1242

; <label>:1242                                    ; preds = %1176
  %1243 = add i32 %1177, 20
  %1244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = add i32 %1177, 24
  %1247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = add i32 %1177, 40
  %1250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = add i32 %1177, 96
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1257 = fmul fast float %1256, %1196
  %1258 = fmul fast float %1256, %1198
  %1259 = extractvalue %dx.types.CBufRet.f32 %1255, 3
  %1260 = fadd fast float %1257, %1259
  %1261 = fadd fast float %1258, %1259
  %1262 = add i32 %1254, 0
  %1263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1262, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1264 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1263, i32 0)  ; GetDimensions(handle,mipLevel)
  %1265 = extractvalue %dx.types.Dimensions %1264, 0
  %1266 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1265)  ; FirstbitLo(value)
  %1267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.i32 %1267, 1
  %1269 = sub nsw i32 %1268, %1266
  %1270 = sitofp i32 %1269 to float
  %1271 = fsub fast float %1220, %1270
  %1272 = call float @dx.op.binary.f32(i32 35, float %1271, float 0.000000e+00)  ; FMax(a,b)
  %1273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1263, %dx.types.Handle %39, float %1260, float %1261, float %1251, float undef, i32 0, i32 0, i32 undef, float %1272)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  %1275 = fmul fast float %1274, %1245
  %1276 = fadd fast float %1275, %1248
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.CBufRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.CBufRet.f32 %1277, 2
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 3
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 3
  %1285 = extractvalue %dx.types.CBufRet.f32 %1277, 3
  %1286 = fadd fast float %1282, %1143
  %1287 = fadd fast float %1284, %1144
  %1288 = fadd fast float %1276, %1285
  %1289 = fmul fast float %1286, %1278
  %1290 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %1279, float %1289)  ; FMad(a,b,c)
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %1288, float %1280, float %1290)  ; FMad(a,b,c)
  %1292 = fsub fast float %1291, %1285
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1295 = fsub fast float %1292, %1294
  %1296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.i32 %1296, 0
  %1298 = call i32 @dx.op.binary.i32(i32 40, i32 %1174, i32 %1297)  ; UMin(a,b)
  %1299 = mul i32 %1298, 36
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = add i32 %1299, 4
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 0
  %1305 = fmul fast float %1304, %1196
  %1306 = fmul fast float %1304, %1198
  %1307 = extractvalue %dx.types.CBufRet.f32 %1303, 1
  %1308 = fadd fast float %1305, %1307
  %1309 = fadd fast float %1306, %1307
  %1310 = icmp eq i32 %1301, 0
  br i1 %1310, label %1379, label %1311

; <label>:1311                                    ; preds = %1242
  br label %1312

; <label>:1312                                    ; preds = %1369, %1311
  %1313 = phi float [ %1370, %1369 ], [ 0.000000e+00, %1311 ]
  %1314 = phi float [ %1371, %1369 ], [ 0.000000e+00, %1311 ]
  %1315 = phi float [ %1372, %1369 ], [ 0.000000e+00, %1311 ]
  %1316 = phi float [ %1373, %1369 ], [ 0.000000e+00, %1311 ]
  %1317 = phi float [ %1374, %1369 ], [ 0.000000e+00, %1311 ]
  %1318 = phi float [ %1375, %1369 ], [ 0.000000e+00, %1311 ]
  %1319 = phi i32 [ %1376, %1369 ], [ 0, %1311 ]
  %1320 = shl i32 %1319, 2
  %1321 = add i32 %1187, %1320
  %1322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.f32 %1322, 0
  %1324 = add i32 %1191, %1320
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = add i32 %1326, 0
  %1328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1327, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1329 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1328, i32 0)  ; GetDimensions(handle,mipLevel)
  %1330 = extractvalue %dx.types.Dimensions %1329, 0
  %1331 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1330)  ; FirstbitLo(value)
  %1332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.i32 %1332, 1
  %1334 = sub nsw i32 %1333, %1331
  %1335 = sitofp i32 %1334 to float
  %1336 = fsub fast float %1220, %1335
  %1337 = call float @dx.op.binary.f32(i32 35, float %1336, float 0.000000e+00)  ; FMax(a,b)
  %1338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1328, %dx.types.Handle %39, float %1308, float %1309, float %1323, float undef, i32 0, i32 0, i32 undef, float %1337)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  %1340 = fcmp fast ogt float %1339, 0.000000e+00
  br i1 %1340, label %1341, label %1369

; <label>:1341                                    ; preds = %1312
  %1342 = add i32 %1302, %1320
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = and i32 %1344, 32767
  %1346 = mul nuw nsw i32 %1345, 928
  %1347 = add nuw nsw i32 %1346, 48
  %1348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.f32 %1348, 0
  %1350 = extractvalue %dx.types.ResRet.f32 %1348, 1
  %1351 = extractvalue %dx.types.ResRet.f32 %1348, 2
  %1352 = add nuw nsw i32 %1346, 60
  %1353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = extractvalue %dx.types.ResRet.f32 %1353, 1
  %1356 = extractvalue %dx.types.ResRet.f32 %1353, 2
  %1357 = fmul fast float %1349, %1339
  %1358 = fmul fast float %1350, %1339
  %1359 = fmul fast float %1351, %1339
  %1360 = fadd fast float %1357, %1313
  %1361 = fadd fast float %1358, %1314
  %1362 = fadd fast float %1359, %1315
  %1363 = fmul fast float %1354, %1339
  %1364 = fmul fast float %1355, %1339
  %1365 = fmul fast float %1356, %1339
  %1366 = fadd fast float %1363, %1316
  %1367 = fadd fast float %1364, %1317
  %1368 = fadd fast float %1365, %1318
  br label %1369

; <label>:1369                                    ; preds = %1341, %1312
  %1370 = phi float [ %1360, %1341 ], [ %1313, %1312 ]
  %1371 = phi float [ %1361, %1341 ], [ %1314, %1312 ]
  %1372 = phi float [ %1362, %1341 ], [ %1315, %1312 ]
  %1373 = phi float [ %1366, %1341 ], [ %1316, %1312 ]
  %1374 = phi float [ %1367, %1341 ], [ %1317, %1312 ]
  %1375 = phi float [ %1368, %1341 ], [ %1318, %1312 ]
  %1376 = add nuw i32 %1319, 1
  %1377 = icmp eq i32 %1376, %1301
  br i1 %1377, label %1378, label %1312

; <label>:1378                                    ; preds = %1369
  br label %1379

; <label>:1379                                    ; preds = %1378, %1242
  %1380 = phi float [ 0.000000e+00, %1242 ], [ %1370, %1378 ]
  %1381 = phi float [ 0.000000e+00, %1242 ], [ %1371, %1378 ]
  %1382 = phi float [ 0.000000e+00, %1242 ], [ %1372, %1378 ]
  %1383 = phi float [ 0.000000e+00, %1242 ], [ %1373, %1378 ]
  %1384 = phi float [ 0.000000e+00, %1242 ], [ %1374, %1378 ]
  %1385 = phi float [ 0.000000e+00, %1242 ], [ %1375, %1378 ]
  %1386 = fadd fast float %1383, %1380
  %1387 = fmul fast float %1386, 0x3F847AE140000000
  %1388 = fadd fast float %1384, %1381
  %1389 = fmul fast float %1388, 0x3F847AE140000000
  %1390 = fadd fast float %1385, %1382
  %1391 = fmul fast float %1390, 0x3F847AE140000000
  br label %1392

; <label>:1392                                    ; preds = %1379, %1176, %1121, %1118, %1089, %1051
  %1393 = phi float [ %1103, %1089 ], [ -1.310720e+05, %1051 ], [ %1295, %1379 ], [ -1.310720e+05, %1121 ], [ -1.310720e+05, %1176 ], [ -1.310720e+05, %1118 ]
  %1394 = phi float [ %1113, %1089 ], [ 0.000000e+00, %1051 ], [ %1387, %1379 ], [ 0.000000e+00, %1121 ], [ 0.000000e+00, %1176 ], [ 0.000000e+00, %1118 ]
  %1395 = phi float [ %1115, %1089 ], [ 0.000000e+00, %1051 ], [ %1389, %1379 ], [ 0.000000e+00, %1121 ], [ 0.000000e+00, %1176 ], [ 0.000000e+00, %1118 ]
  %1396 = phi float [ %1117, %1089 ], [ 0.000000e+00, %1051 ], [ %1391, %1379 ], [ 0.000000e+00, %1121 ], [ 0.000000e+00, %1176 ], [ 0.000000e+00, %1118 ]
  %1397 = phi i1 [ true, %1089 ], [ false, %1051 ], [ true, %1379 ], [ false, %1121 ], [ false, %1176 ], [ false, %1118 ]
  %1398 = and i32 %392, 3
  %1399 = icmp eq i32 %1398, 1
  %1400 = select i1 %1399, float 1.000000e+00, float 0.000000e+00
  %1401 = fsub fast float %1393, %93
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1403 = select i1 %1397, float %1402, float 1.000000e+00
  %1404 = fmul fast float %1403, %1400
  %1405 = icmp eq i32 %1398, 3
  %1406 = select i1 %1405, float 1.000000e+00, float %1404
  %1407 = call float @dx.op.binary.f32(i32 35, float %967, float %1406)  ; FMax(a,b)
  %1408 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  %1409 = fcmp fast une float %1408, 0.000000e+00
  %1410 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %1411 = call float @dx.op.unary.f32(i32 25, float %1410)  ; Rsqrt(value)
  br i1 %1409, label %1419, label %1412

; <label>:1412                                    ; preds = %1392
  %1413 = fmul fast float %1411, %91
  %1414 = fmul fast float %1411, %92
  %1415 = fmul fast float %1411, %93
  %1416 = fsub fast float -0.000000e+00, %1413
  %1417 = fsub fast float -0.000000e+00, %1414
  %1418 = fsub fast float -0.000000e+00, %1415
  br label %1587

; <label>:1419                                    ; preds = %1392
  %1420 = fmul fast float %91, %1411
  %1421 = fsub fast float -0.000000e+00, %1420
  %1422 = fmul fast float %92, %1411
  %1423 = fsub fast float -0.000000e+00, %1422
  %1424 = fmul fast float %93, %1411
  %1425 = fsub fast float -0.000000e+00, %1424
  %1426 = call float @dx.op.dot3.f32(i32 55, float %1421, float %1423, float %1425, float %483, float %484, float %485)  ; Dot3(ax,ay,az,bx,by,bz)
  %1427 = fmul fast float %1408, 2.500000e+00
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1429 = fmul fast float %1408, 0x4013FFFFE0000000
  %1430 = fadd fast float %1429, 0xBFFFFFFFE0000000
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1432 = fmul fast float %1408, 0x4004000020000000
  %1433 = fadd fast float %1432, 0xBFF8000040000000
  %1434 = call float @dx.op.unary.f32(i32 7, float %1433)  ; Saturate(value)
  %1435 = call float @dx.op.unary.f32(i32 7, float %1428)  ; Saturate(value)
  %1436 = fmul fast float %997, 1.000000e+01
  %1437 = call float @dx.op.unary.f32(i32 7, float %1436)  ; Saturate(value)
  %1438 = fmul fast float %1437, 2.000000e+00
  %1439 = fsub fast float 3.000000e+00, %1438
  %1440 = fmul fast float %1437, %1437
  %1441 = fmul fast float %1440, %1439
  %1442 = fsub fast float 1.000000e+00, %1441
  %1443 = fsub fast float 0x3FE3333340000000, %1018
  %1444 = fmul fast float %1443, 0x400AAAAAA0000000
  %1445 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1446 = fmul fast float %1442, %1445
  %1447 = fmul fast float %1030, 0x3FEA2B8620000000
  %1448 = fmul fast float %1031, 0x3FEA2B8620000000
  %1449 = fmul fast float %1032, 0x3FEA2B8620000000
  %1450 = fadd fast float %1447, 0x3FC81DFBA0000000
  %1451 = fmul fast float %1450, %1030
  %1452 = fadd fast float %1451, 0x3F910E6020000000
  %1453 = fadd fast float %1448, 0x3FC81DFBA0000000
  %1454 = fmul fast float %1453, %1031
  %1455 = fadd fast float %1454, 0x3F910E6020000000
  %1456 = fadd fast float %1449, 0x3FC81DFBA0000000
  %1457 = fmul fast float %1456, %1032
  %1458 = fadd fast float %1457, 0x3F910E6020000000
  %1459 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1460 = call float @dx.op.unary.f32(i32 7, float %1455)  ; Saturate(value)
  %1461 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1462 = fsub fast float %1459, %1030
  %1463 = fsub fast float %1460, %1031
  %1464 = fsub fast float %1461, %1032
  %1465 = fmul fast float %1462, %1435
  %1466 = fmul fast float %1465, %1446
  %1467 = fmul fast float %1463, %1435
  %1468 = fmul fast float %1467, %1446
  %1469 = fmul fast float %1464, %1435
  %1470 = fmul fast float %1469, %1446
  %1471 = fadd fast float %1466, %1030
  %1472 = fadd fast float %1468, %1031
  %1473 = fadd fast float %1470, %1032
  %1474 = fmul fast float %978, %978
  %1475 = fmul fast float %1474, %1474
  %1476 = fadd fast float %1431, 1.000000e+00
  %1477 = fsub fast float %1476, %1446
  %1478 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1479 = call float @dx.op.dot3.f32(i32 55, float %483, float %484, float %485, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1480 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1481 = fsub fast float 1.000000e+00, %1475
  %1482 = call float @dx.op.binary.f32(i32 36, float %1478, float %1481)  ; FMin(a,b)
  %1483 = call float @dx.op.unary.f32(i32 7, float %1434)  ; Saturate(value)
  %1484 = call float @dx.op.binary.f32(i32 35, float %1482, float %1483)  ; FMax(a,b)
  %1485 = fadd fast float %1480, 0xBFE4CCCCC0000000
  %1486 = fmul fast float %1485, 0x4006DB6DA0000000
  %1487 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  %1488 = fmul fast float %1487, 2.000000e+00
  %1489 = fsub fast float 3.000000e+00, %1488
  %1490 = bitcast float %1015 to i32
  %1491 = ashr i32 %1490, 1
  %1492 = add nsw i32 %1491, 532487669
  %1493 = bitcast i32 %1492 to float
  %1494 = fsub fast float 1.000000e+00, %1493
  %1495 = bitcast float %1494 to i32
  %1496 = sub nsw i32 2129859010, %1495
  %1497 = bitcast i32 %1496 to float
  %1498 = fmul fast float %1497, 2.000000e+00
  %1499 = bitcast float %1016 to i32
  %1500 = ashr i32 %1499, 1
  %1501 = add nsw i32 %1500, 532487669
  %1502 = bitcast i32 %1501 to float
  %1503 = fsub fast float 1.000000e+00, %1502
  %1504 = bitcast float %1503 to i32
  %1505 = sub nsw i32 2129859010, %1504
  %1506 = bitcast i32 %1505 to float
  %1507 = fmul fast float %1506, 2.000000e+00
  %1508 = bitcast float %1017 to i32
  %1509 = ashr i32 %1508, 1
  %1510 = add nsw i32 %1509, 532487669
  %1511 = bitcast i32 %1510 to float
  %1512 = fsub fast float 1.000000e+00, %1511
  %1513 = bitcast float %1512 to i32
  %1514 = sub nsw i32 2129859010, %1513
  %1515 = bitcast i32 %1514 to float
  %1516 = fmul fast float %1515, 2.000000e+00
  %1517 = fsub fast float 0x4002A9FBE0000000, %1498
  %1518 = fadd fast float %1498, 0x3FD54FDF00000000
  %1519 = bitcast float %1518 to i32
  %1520 = sub nsw i32 2129859010, %1519
  %1521 = bitcast i32 %1520 to float
  %1522 = fmul fast float %1521, %1517
  %1523 = fmul fast float %1522, %1522
  %1524 = fsub fast float 0x4002A9FBE0000000, %1507
  %1525 = fadd fast float %1507, 0x3FD54FDF00000000
  %1526 = bitcast float %1525 to i32
  %1527 = sub nsw i32 2129859010, %1526
  %1528 = bitcast i32 %1527 to float
  %1529 = fmul fast float %1528, %1524
  %1530 = fmul fast float %1529, %1529
  %1531 = fsub fast float 0x4002A9FBE0000000, %1516
  %1532 = fadd fast float %1516, 0x3FD54FDF00000000
  %1533 = bitcast float %1532 to i32
  %1534 = sub nsw i32 2129859010, %1533
  %1535 = bitcast i32 %1534 to float
  %1536 = fmul fast float %1535, %1531
  %1537 = fmul fast float %1536, %1536
  %1538 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1523)  ; FMax(a,b)
  %1539 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1530)  ; FMax(a,b)
  %1540 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1537)  ; FMax(a,b)
  %1541 = fsub fast float 1.000000e+00, %1426
  %1542 = fadd fast float %1541, %1442
  %1543 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1544 = fsub fast float 1.000000e+00, %1406
  %1545 = fmul fast float %1484, %1544
  %1546 = fmul fast float %1487, %1487
  %1547 = fmul fast float %1546, %1545
  %1548 = fmul fast float %1547, %1489
  %1549 = fmul fast float %1544, 0xBFE99999A0000000
  %1550 = fmul fast float %1549, %1435
  %1551 = fmul fast float %1550, %1446
  %1552 = fadd fast float %1551, 1.000000e+00
  %1553 = fadd fast float %1018, -1.000000e+00
  %1554 = fmul fast float %1552, %1553
  %1555 = fadd fast float %1554, 1.000000e+00
  %1556 = fsub fast float %1538, %1015
  %1557 = fsub fast float %1539, %1016
  %1558 = fsub fast float %1540, %1017
  %1559 = fmul fast float %1548, %1556
  %1560 = fmul fast float %1548, %1557
  %1561 = fmul fast float %1548, %1558
  %1562 = fadd fast float %1559, %1015
  %1563 = fadd fast float %1560, %1016
  %1564 = fadd fast float %1561, %1017
  %1565 = fsub fast float %483, %994
  %1566 = fsub fast float %484, %995
  %1567 = fsub fast float %485, %996
  %1568 = fmul fast float %1548, %1565
  %1569 = fmul fast float %1548, %1566
  %1570 = fmul fast float %1548, %1567
  %1571 = fadd fast float %1568, %994
  %1572 = fadd fast float %1569, %995
  %1573 = fadd fast float %1570, %996
  %1574 = fmul fast float %1548, %1543
  %1575 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1576 = fsub fast float 1.000000e+00, %1575
  %1577 = fmul fast float %1574, %1576
  %1578 = fadd fast float %1577, %1575
  %1579 = fsub fast float 1.000000e+00, %978
  %1580 = fmul fast float %1548, %1579
  %1581 = fadd fast float %1580, %978
  %1582 = call float @dx.op.dot3.f32(i32 55, float %1571, float %1572, float %1573, float %1571, float %1572, float %1573)  ; Dot3(ax,ay,az,bx,by,bz)
  %1583 = call float @dx.op.unary.f32(i32 25, float %1582)  ; Rsqrt(value)
  %1584 = fmul fast float %1571, %1583
  %1585 = fmul fast float %1572, %1583
  %1586 = fmul fast float %1573, %1583
  br label %1587

; <label>:1587                                    ; preds = %1419, %1412
  %1588 = phi float [ %1418, %1412 ], [ %1425, %1419 ]
  %1589 = phi float [ %1417, %1412 ], [ %1423, %1419 ]
  %1590 = phi float [ %1416, %1412 ], [ %1421, %1419 ]
  %1591 = phi float [ %1415, %1412 ], [ %1424, %1419 ]
  %1592 = phi float [ %1414, %1412 ], [ %1422, %1419 ]
  %1593 = phi float [ %1413, %1412 ], [ %1420, %1419 ]
  %1594 = phi float [ %1030, %1412 ], [ %1471, %1419 ]
  %1595 = phi float [ %1031, %1412 ], [ %1472, %1419 ]
  %1596 = phi float [ %1032, %1412 ], [ %1473, %1419 ]
  %1597 = phi float [ %1015, %1412 ], [ %1562, %1419 ]
  %1598 = phi float [ %1016, %1412 ], [ %1563, %1419 ]
  %1599 = phi float [ %1017, %1412 ], [ %1564, %1419 ]
  %1600 = phi float [ %994, %1412 ], [ %1584, %1419 ]
  %1601 = phi float [ %995, %1412 ], [ %1585, %1419 ]
  %1602 = phi float [ %996, %1412 ], [ %1586, %1419 ]
  %1603 = phi float [ %1018, %1412 ], [ %1578, %1419 ]
  %1604 = phi float [ %978, %1412 ], [ %1581, %1419 ]
  %1605 = select i1 %416, float 0.000000e+00, float %1599
  %1606 = call float @dx.op.dot3.f32(i32 55, float %1600, float %1601, float %1602, float %1590, float %1589, float %1588)  ; Dot3(ax,ay,az,bx,by,bz)
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1608 = call float @dx.op.dot3.f32(i32 55, float %1593, float %1592, float %1591, float %1600, float %1601, float %1602)  ; Dot3(ax,ay,az,bx,by,bz)
  %1609 = fmul fast float %1608, 2.000000e+00
  %1610 = fmul fast float %1609, %1600
  %1611 = fmul fast float %1609, %1601
  %1612 = fmul fast float %1609, %1602
  %1613 = fsub fast float %1593, %1610
  %1614 = fsub fast float %1592, %1611
  %1615 = fsub fast float %1591, %1612
  %1616 = call float @dx.op.binary.f32(i32 36, float %1604, float 1.000000e+00)  ; FMin(a,b)
  %1617 = fsub fast float 1.000000e+00, %1604
  %1618 = bitcast float %1617 to i32
  %1619 = sub nsw i32 2129859010, %1618
  %1620 = bitcast i32 %1619 to float
  %1621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1622 = extractvalue %dx.types.CBufRet.f32 %1621, 0
  %1623 = extractvalue %dx.types.CBufRet.f32 %1621, 1
  %1624 = fadd fast float %1622, %91
  %1625 = fadd fast float %1623, %92
  %1626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.i32 %1626, 0
  %1628 = icmp eq i32 %1627, 1
  br i1 %1628, label %1629, label %1664

; <label>:1629                                    ; preds = %1587
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1633 = fsub fast float %1624, %1631
  %1634 = fsub fast float %1625, %1632
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = fmul fast float %1633, %1636
  %1639 = fmul fast float %1634, %1637
  %1640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %40, float %1638, float %1639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1641 = extractvalue %dx.types.ResRet.f32 %1640, 0
  %1642 = fcmp fast ogt float %1641, 0.000000e+00
  %1643 = extractvalue %dx.types.CBufRet.i32 %1626, 3
  %1644 = icmp ne i32 %1643, 0
  %1645 = and i1 %1642, %1644
  br i1 %1645, label %1646, label %1664, !dx.controlflow.hints !77

; <label>:1646                                    ; preds = %1629
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.CBufRet.f32 %1647, 1
  %1650 = fsub fast float %1624, %1648
  %1651 = fsub fast float %1625, %1649
  %1652 = fmul fast float %1650, %1650
  %1653 = fmul fast float %1651, %1651
  %1654 = fadd fast float %1652, %1653
  %1655 = uitofp i32 %1643 to float
  %1656 = fmul fast float %1655, %1655
  %1657 = fcmp fast ogt float %1654, %1656
  br i1 %1657, label %1664, label %1658

; <label>:1658                                    ; preds = %1646
  %1659 = call float @dx.op.unary.f32(i32 24, float %1654)  ; Sqrt(value)
  %1660 = fsub fast float %1655, %1659
  %1661 = fmul fast float %1660, 0x3F75555560000000
  %1662 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  %1663 = call float @dx.op.binary.f32(i32 36, float %1662, float %1641)  ; FMin(a,b)
  br label %1664

; <label>:1664                                    ; preds = %1658, %1646, %1629, %1587
  %1665 = phi float [ 1.000000e+00, %1587 ], [ %1663, %1658 ], [ %1641, %1629 ], [ 0.000000e+00, %1646 ]
  %1666 = fcmp fast ogt float %1665, 0.000000e+00
  br i1 %1666, label %1667, label %1763, !dx.controlflow.hints !78

; <label>:1667                                    ; preds = %1664
  %1668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %40, float %46, float %47, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1669 = extractvalue %dx.types.ResRet.f32 %1668, 0
  %1670 = extractvalue %dx.types.ResRet.f32 %1668, 1
  %1671 = extractvalue %dx.types.ResRet.f32 %1668, 2
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 3
  %1674 = fmul fast float %1673, %1669
  %1675 = fmul fast float %1673, %1670
  %1676 = fmul fast float %1673, %1671
  %1677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %46, float %47, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1678 = extractvalue %dx.types.ResRet.f32 %1677, 0
  %1679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %40, float %46, float %47, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1680 = extractvalue %dx.types.ResRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.ResRet.f32 %1679, 1
  %1682 = fmul fast float %1680, 2.000000e+00
  %1683 = fmul fast float %1681, 2.000000e+00
  %1684 = fadd fast float %1682, -1.000000e+00
  %1685 = fadd fast float %1683, -1.000000e+00
  %1686 = fadd fast float %1684, %1685
  %1687 = fmul fast float %1686, 5.000000e-01
  %1688 = fsub fast float %1684, %1685
  %1689 = fmul fast float %1688, 5.000000e-01
  %1690 = call float @dx.op.unary.f32(i32 6, float %1687)  ; FAbs(value)
  %1691 = fsub fast float 1.000000e+00, %1690
  %1692 = call float @dx.op.unary.f32(i32 6, float %1689)  ; FAbs(value)
  %1693 = fsub fast float %1691, %1692
  %1694 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1693)  ; FMax(a,b)
  %1695 = call float @dx.op.dot3.f32(i32 55, float %1687, float %1689, float %1694, float %1687, float %1689, float %1694)  ; Dot3(ax,ay,az,bx,by,bz)
  %1696 = bitcast float %1695 to i32
  %1697 = ashr i32 %1696, 1
  %1698 = sub nsw i32 1597250115, %1697
  %1699 = bitcast i32 %1698 to float
  %1700 = fmul fast float %1699, %1687
  %1701 = fmul fast float %1699, %1689
  %1702 = fmul fast float %1699, %1694
  %1703 = fsub fast float 1.000000e+00, %1678
  %1704 = fdiv fast float %1703, %1702
  %1705 = fmul fast float %1702, %122
  %1706 = fmul fast float %1702, %123
  %1707 = fmul fast float %1702, %124
  %1708 = fmul fast float %134, %1700
  %1709 = fmul fast float %135, %1700
  %1710 = fmul fast float %136, %1700
  %1711 = fadd fast float %1705, %1708
  %1712 = fadd fast float %1706, %1709
  %1713 = fadd fast float %1707, %1710
  %1714 = fmul fast float %146, %1701
  %1715 = fmul fast float %147, %1701
  %1716 = fmul fast float %148, %1701
  %1717 = fadd fast float %1711, %1714
  %1718 = fadd fast float %1712, %1715
  %1719 = fadd fast float %1713, %1716
  %1720 = call float @dx.op.dot3.f32(i32 55, float %1717, float %1718, float %1719, float %1717, float %1718, float %1719)  ; Dot3(ax,ay,az,bx,by,bz)
  %1721 = call float @dx.op.unary.f32(i32 25, float %1720)  ; Rsqrt(value)
  %1722 = fmul fast float %1717, %1721
  %1723 = fmul fast float %1718, %1721
  %1724 = fmul fast float %1719, %1721
  %1725 = call float @dx.op.dot3.f32(i32 55, float %1600, float %1601, float %1602, float %1600, float %1601, float %1602)  ; Dot3(ax,ay,az,bx,by,bz)
  %1726 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  %1727 = fmul fast float %1726, 5.000000e-01
  %1728 = fadd fast float %1727, 5.000000e-01
  %1729 = fmul fast float %1728, %1678
  %1730 = call float @dx.op.dot3.f32(i32 55, float %1600, float %1601, float %1602, float %1722, float %1723, float %1724)  ; Dot3(ax,ay,az,bx,by,bz)
  %1731 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  %1732 = fmul fast float %1731, %1704
  %1733 = fadd fast float %1729, %1732
  %1734 = fsub fast float 5.000000e-01, %1727
  %1735 = fmul fast float %1734, %1594
  %1736 = fmul fast float %1734, %1595
  %1737 = fmul fast float %1734, %1596
  %1738 = fadd fast float %1733, %1735
  %1739 = fmul fast float %1738, %1674
  %1740 = fadd fast float %1733, %1736
  %1741 = fmul fast float %1740, %1675
  %1742 = fadd fast float %1733, %1737
  %1743 = fmul fast float %1742, %1676
  %1744 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float %1600, float %1601, float %1602)  ; Dot3(ax,ay,az,bx,by,bz)
  %1745 = call float @dx.op.unary.f32(i32 7, float %1744)  ; Saturate(value)
  %1746 = fmul fast float %1745, 5.000000e-01
  %1747 = fadd fast float %1746, 5.000000e-01
  %1748 = fmul fast float %1747, %1678
  %1749 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float %1722, float %1723, float %1724)  ; Dot3(ax,ay,az,bx,by,bz)
  %1750 = call float @dx.op.unary.f32(i32 7, float %1749)  ; Saturate(value)
  %1751 = fmul fast float %1750, %1704
  %1752 = fadd fast float %1748, %1751
  %1753 = fsub fast float 5.000000e-01, %1746
  %1754 = fmul fast float %1753, %1594
  %1755 = fmul fast float %1753, %1595
  %1756 = fmul fast float %1753, %1596
  %1757 = fadd fast float %1752, %1754
  %1758 = fmul fast float %1757, %1674
  %1759 = fadd fast float %1752, %1755
  %1760 = fmul fast float %1759, %1675
  %1761 = fadd fast float %1752, %1756
  %1762 = fmul fast float %1761, %1676
  br label %1763

; <label>:1763                                    ; preds = %1667, %1664
  %1764 = phi float [ %1758, %1667 ], [ 0.000000e+00, %1664 ]
  %1765 = phi float [ %1760, %1667 ], [ 0.000000e+00, %1664 ]
  %1766 = phi float [ %1762, %1667 ], [ 0.000000e+00, %1664 ]
  %1767 = phi float [ %1739, %1667 ], [ 0.000000e+00, %1664 ]
  %1768 = phi float [ %1741, %1667 ], [ 0.000000e+00, %1664 ]
  %1769 = phi float [ %1743, %1667 ], [ 0.000000e+00, %1664 ]
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 0
  %1772 = fcmp fast ogt float %1771, 0.000000e+00
  %1773 = and i1 %1666, %1772
  br i1 %1773, label %1774, label %1978, !dx.controlflow.hints !79

; <label>:1774                                    ; preds = %1763
  %1775 = extractvalue %dx.types.CBufRet.f32 %1621, 2
  %1776 = fadd fast float %1775, %93
  %1777 = fmul fast float %1600, 3.200000e+01
  %1778 = fmul fast float %1601, 3.200000e+01
  %1779 = fadd fast float %1624, %1777
  %1780 = fadd fast float %1625, %1778
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.CBufRet.f32 %1781, 1
  %1784 = fsub fast float %1779, %1782
  %1785 = fsub fast float %1780, %1783
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %1788 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %1789 = fmul fast float %1784, %1787
  %1790 = fmul fast float %1785, %1788
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.CBufRet.f32 %1791, 1
  %1794 = fsub fast float %1624, %1792
  %1795 = fsub fast float %1625, %1793
  %1796 = fmul fast float %1794, %1794
  %1797 = fmul fast float %1795, %1795
  %1798 = fadd fast float %1796, %1797
  %1799 = call float @dx.op.unary.f32(i32 24, float %1798)  ; Sqrt(value)
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 0
  %1802 = extractvalue %dx.types.CBufRet.f32 %1800, 1
  %1803 = fsub fast float %1799, %1801
  %1804 = fdiv fast float %1803, %1802
  %1805 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  %1806 = fmul fast float %1805, 2.000000e+00
  %1807 = fsub fast float 3.000000e+00, %1806
  %1808 = fmul fast float %1805, %1805
  %1809 = fmul fast float %1808, %1807
  %1810 = fcmp fast oge float %1789, 0.000000e+00
  %1811 = fcmp fast ole float %1789, 1.000000e+00
  %1812 = and i1 %1811, %1810
  %1813 = fcmp fast oge float %1790, 0.000000e+00
  %1814 = and i1 %1813, %1812
  %1815 = fcmp fast ole float %1790, 1.000000e+00
  %1816 = and i1 %1815, %1814
  %1817 = fcmp fast ogt float %1809, 0.000000e+00
  %1818 = and i1 %1817, %1816
  br i1 %1818, label %1819, label %1942, !dx.controlflow.hints !80

; <label>:1819                                    ; preds = %1774
  %1820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1821 = extractvalue %dx.types.CBufRet.f32 %1820, 2
  %1822 = extractvalue %dx.types.CBufRet.f32 %1820, 3
  %1823 = fmul fast float %1821, %1789
  %1824 = fmul fast float %1822, %1790
  %1825 = call float @dx.op.unary.f32(i32 27, float %1823)  ; Round_ni(value)
  %1826 = call float @dx.op.unary.f32(i32 27, float %1824)  ; Round_ni(value)
  %1827 = fptosi float %1825 to i32
  %1828 = fptosi float %1826 to i32
  %1829 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %1827, i32 %1828, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = lshr i32 %1830, 16
  %1832 = icmp eq i32 %1831, 65535
  br i1 %1832, label %1942, label %1833

; <label>:1833                                    ; preds = %1819
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 0
  %1836 = fmul fast float %1835, %1789
  %1837 = extractvalue %dx.types.CBufRet.f32 %1834, 1
  %1838 = fadd fast float %1836, %1837
  %1839 = extractvalue %dx.types.CBufRet.f32 %1834, 2
  %1840 = fmul fast float %1839, %1790
  %1841 = extractvalue %dx.types.CBufRet.f32 %1834, 3
  %1842 = fadd fast float %1840, %1841
  %1843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %40, float %1838, float %1842, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.ResRet.f32 %1843, 1
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 1
  %1848 = extractvalue %dx.types.CBufRet.f32 %1846, 0
  %1849 = fsub fast float %1847, %1848
  %1850 = fmul fast float %1849, %1844
  %1851 = fadd fast float %1850, %1848
  %1852 = extractvalue %dx.types.CBufRet.f32 %1846, 3
  %1853 = extractvalue %dx.types.CBufRet.f32 %1846, 2
  %1854 = fsub fast float %1852, %1853
  %1855 = fmul fast float %1854, %1845
  %1856 = fadd fast float %1855, %1853
  %1857 = fsub fast float %1776, %1851
  %1858 = fsub fast float %1856, %1851
  %1859 = fdiv fast float %1857, %1858
  %1860 = call float @dx.op.unary.f32(i32 7, float %1859)  ; Saturate(value)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1770, 1
  %1862 = extractvalue %dx.types.CBufRet.f32 %1820, 0
  %1863 = extractvalue %dx.types.CBufRet.f32 %1820, 1
  %1864 = fmul fast float %1862, %1789
  %1865 = fmul fast float %1863, %1790
  %1866 = fmul fast float %1864, 1.250000e-01
  %1867 = fmul fast float %1865, 1.250000e-01
  %1868 = call float @dx.op.unary.f32(i32 27, float %1866)  ; Round_ni(value)
  %1869 = call float @dx.op.unary.f32(i32 27, float %1867)  ; Round_ni(value)
  %1870 = fmul fast float %1868, 8.000000e+00
  %1871 = fmul fast float %1869, 8.000000e+00
  %1872 = fsub fast float %1864, %1870
  %1873 = fsub fast float %1865, %1871
  %1874 = fadd fast float %1872, 5.000000e-01
  %1875 = fadd fast float %1873, 5.000000e-01
  %1876 = and i32 %1831, 255
  %1877 = lshr i32 %1830, 24
  %1878 = mul nuw nsw i32 %1876, 9
  %1879 = uitofp i32 %1878 to float
  %1880 = mul nuw nsw i32 %1877, 9
  %1881 = uitofp i32 %1880 to float
  %1882 = fadd fast float %1874, %1879
  %1883 = fadd fast float %1875, %1881
  %1884 = fdiv fast float %1882, %1771
  %1885 = fdiv fast float %1883, %1861
  %1886 = fmul fast float %1860, 4.375000e-01
  %1887 = fadd fast float %1886, 3.125000e-02
  %1888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1884, float %1885, float %1887, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1889 = extractvalue %dx.types.ResRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.ResRet.f32 %1888, 1
  %1891 = extractvalue %dx.types.ResRet.f32 %1888, 2
  %1892 = fadd fast float %1886, 5.312500e-01
  %1893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1884, float %1885, float %1892, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1894 = extractvalue %dx.types.ResRet.f32 %1893, 0
  %1895 = extractvalue %dx.types.ResRet.f32 %1893, 1
  %1896 = extractvalue %dx.types.ResRet.f32 %1893, 2
  %1897 = fmul fast float %1894, 2.000000e+00
  %1898 = fmul fast float %1895, 2.000000e+00
  %1899 = fmul fast float %1896, 2.000000e+00
  %1900 = fadd fast float %1897, -1.000000e+00
  %1901 = fadd fast float %1898, -1.000000e+00
  %1902 = fadd fast float %1899, -1.000000e+00
  %1903 = fmul fast float %1900, %1900
  %1904 = fmul fast float %1901, %1901
  %1905 = fadd fast float %1903, %1904
  %1906 = fmul fast float %1902, %1902
  %1907 = fadd fast float %1905, %1906
  %1908 = call float @dx.op.unary.f32(i32 24, float %1907)  ; Sqrt(value)
  %1909 = fcmp fast ogt float %1908, 0.000000e+00
  br i1 %1909, label %1910, label %1914

; <label>:1910                                    ; preds = %1833
  %1911 = fdiv fast float %1900, %1908
  %1912 = fdiv fast float %1901, %1908
  %1913 = fdiv fast float %1902, %1908
  br label %1914

; <label>:1914                                    ; preds = %1910, %1833
  %1915 = phi float [ %1911, %1910 ], [ 0.000000e+00, %1833 ]
  %1916 = phi float [ %1912, %1910 ], [ 0.000000e+00, %1833 ]
  %1917 = phi float [ %1913, %1910 ], [ 0.000000e+00, %1833 ]
  %1918 = call float @dx.op.dot3.f32(i32 55, float %1915, float %1916, float %1917, float %1600, float %1601, float %1602)  ; Dot3(ax,ay,az,bx,by,bz)
  %1919 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1918)  ; FMax(a,b)
  %1920 = fmul fast float %1919, 0x400C5BF8A0000000
  %1921 = fmul fast float %1889, %1809
  %1922 = fmul fast float %1921, %1920
  %1923 = fmul fast float %1890, %1809
  %1924 = fmul fast float %1923, %1920
  %1925 = fmul fast float %1891, %1809
  %1926 = fmul fast float %1925, %1920
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 3
  %1929 = fmul fast float %1922, %1928
  %1930 = fmul fast float %1924, %1928
  %1931 = fmul fast float %1926, %1928
  %1932 = fcmp fast ogt float %1776, %1856
  br i1 %1932, label %1933, label %1942

; <label>:1933                                    ; preds = %1914
  %1934 = fmul fast float %1858, 0x3FC24924A0000000
  %1935 = fsub fast float %1776, %1856
  %1936 = fdiv fast float %1935, %1934
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fsub fast float 1.000000e+00, %1937
  %1939 = fmul fast float %1938, %1929
  %1940 = fmul fast float %1938, %1930
  %1941 = fmul fast float %1938, %1931
  br label %1942

; <label>:1942                                    ; preds = %1933, %1914, %1819, %1774
  %1943 = phi float [ %1941, %1933 ], [ %1931, %1914 ], [ 0.000000e+00, %1819 ], [ 0.000000e+00, %1774 ]
  %1944 = phi float [ %1940, %1933 ], [ %1930, %1914 ], [ 0.000000e+00, %1819 ], [ 0.000000e+00, %1774 ]
  %1945 = phi float [ %1939, %1933 ], [ %1929, %1914 ], [ 0.000000e+00, %1819 ], [ 0.000000e+00, %1774 ]
  %1946 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1945)  ; FMax(a,b)
  %1947 = fmul fast float %1946, 0x3FD20DD760000000
  %1948 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1613, float %1614, float %1615)  ; Dot3(ax,ay,az,bx,by,bz)
  %1949 = fmul fast float %1948, 0x3FDF454380000000
  %1950 = fmul fast float %1948, %1948
  %1951 = fmul fast float %1950, 0x3FEE471020000000
  %1952 = fadd fast float %1951, 0xBFD42F6020000000
  %1953 = call float @dx.op.dot3.f32(i32 55, float %1946, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1949, float %1952)  ; Dot3(ax,ay,az,bx,by,bz)
  %1954 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1944)  ; FMax(a,b)
  %1955 = fmul fast float %1954, 0x3FD20DD760000000
  %1956 = call float @dx.op.dot3.f32(i32 55, float %1954, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1949, float %1952)  ; Dot3(ax,ay,az,bx,by,bz)
  %1957 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1943)  ; FMax(a,b)
  %1958 = fmul fast float %1957, 0x3FD20DD760000000
  %1959 = call float @dx.op.dot3.f32(i32 55, float %1957, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1949, float %1952)  ; Dot3(ax,ay,az,bx,by,bz)
  %1960 = call float @dx.op.binary.f32(i32 35, float %1947, float 0.000000e+00)  ; FMax(a,b)
  %1961 = call float @dx.op.binary.f32(i32 35, float %1955, float 0.000000e+00)  ; FMax(a,b)
  %1962 = call float @dx.op.binary.f32(i32 35, float %1958, float 0.000000e+00)  ; FMax(a,b)
  %1963 = call float @dx.op.binary.f32(i32 35, float %1953, float 0.000000e+00)  ; FMax(a,b)
  %1964 = call float @dx.op.binary.f32(i32 35, float %1956, float 0.000000e+00)  ; FMax(a,b)
  %1965 = call float @dx.op.binary.f32(i32 35, float %1959, float 0.000000e+00)  ; FMax(a,b)
  %1966 = fmul fast float %1960, %1665
  %1967 = fmul fast float %1961, %1665
  %1968 = fmul fast float %1962, %1665
  %1969 = fadd fast float %1966, %1767
  %1970 = fadd fast float %1967, %1768
  %1971 = fadd fast float %1968, %1769
  %1972 = fmul fast float %1963, %1665
  %1973 = fmul fast float %1964, %1665
  %1974 = fmul fast float %1965, %1665
  %1975 = fadd fast float %1972, %1764
  %1976 = fadd fast float %1973, %1765
  %1977 = fadd fast float %1974, %1766
  br label %1978

; <label>:1978                                    ; preds = %1942, %1763
  %1979 = phi float [ %1975, %1942 ], [ %1764, %1763 ]
  %1980 = phi float [ %1976, %1942 ], [ %1765, %1763 ]
  %1981 = phi float [ %1977, %1942 ], [ %1766, %1763 ]
  %1982 = phi float [ %1969, %1942 ], [ %1767, %1763 ]
  %1983 = phi float [ %1970, %1942 ], [ %1768, %1763 ]
  %1984 = phi float [ %1971, %1942 ], [ %1769, %1763 ]
  %1985 = fcmp fast olt float %1665, 1.000000e+00
  br i1 %1985, label %1986, label %2804, !dx.controlflow.hints !81

; <label>:1986                                    ; preds = %1978
  %1987 = extractvalue %dx.types.CBufRet.f32 %1621, 2
  %1988 = fadd fast float %1987, %93
  %1989 = fmul fast float %1600, 3.200000e+01
  %1990 = fmul fast float %1601, 3.200000e+01
  %1991 = fadd fast float %1624, %1989
  %1992 = fadd fast float %1625, %1990
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 0
  %1995 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %1996 = fsub fast float %1991, %1994
  %1997 = fsub fast float %1992, %1995
  %1998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.f32 %1998, 0
  %2000 = extractvalue %dx.types.CBufRet.f32 %1998, 1
  %2001 = fmul fast float %1996, %1999
  %2002 = fmul fast float %1997, %2000
  %2003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2004 = extractvalue %dx.types.CBufRet.f32 %2003, 0
  %2005 = fmul fast float %2001, %2004
  %2006 = extractvalue %dx.types.CBufRet.f32 %2003, 1
  %2007 = fadd fast float %2005, %2006
  %2008 = extractvalue %dx.types.CBufRet.f32 %2003, 2
  %2009 = fmul fast float %2008, %2002
  %2010 = extractvalue %dx.types.CBufRet.f32 %2003, 3
  %2011 = fadd fast float %2009, %2010
  %2012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %40, float %2007, float %2011, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = extractvalue %dx.types.ResRet.f32 %2012, 1
  %2015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2016 = extractvalue %dx.types.CBufRet.f32 %2015, 1
  %2017 = extractvalue %dx.types.CBufRet.f32 %2015, 0
  %2018 = fsub fast float %2016, %2017
  %2019 = fmul fast float %2018, %2013
  %2020 = fadd fast float %2019, %2017
  %2021 = extractvalue %dx.types.CBufRet.f32 %2015, 3
  %2022 = extractvalue %dx.types.CBufRet.f32 %2015, 2
  %2023 = fsub fast float %2021, %2022
  %2024 = fmul fast float %2023, %2014
  %2025 = fadd fast float %2024, %2022
  %2026 = fsub fast float %1988, %2020
  %2027 = fsub fast float %2025, %2020
  %2028 = fdiv fast float %2026, %2027
  %2029 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 0
  %2032 = fmul fast float %2031, %2029
  %2033 = extractvalue %dx.types.CBufRet.f32 %2030, 1
  %2034 = fadd fast float %2032, %2033
  %2035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %2007, float %2011, float %2034, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.ResRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.ResRet.f32 %2035, 2
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 0
  %2041 = extractvalue %dx.types.CBufRet.f32 %2039, 1
  %2042 = extractvalue %dx.types.CBufRet.f32 %2039, 2
  %2043 = fmul fast float %2040, %2036
  %2044 = fmul fast float %2041, %2037
  %2045 = fmul fast float %2042, %2038
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.CBufRet.f32 %2046, 1
  %2049 = extractvalue %dx.types.CBufRet.f32 %2046, 2
  %2050 = fadd fast float %2043, %2047
  %2051 = fadd fast float %2044, %2048
  %2052 = fadd fast float %2045, %2049
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2055 = fmul fast float %2054, %2001
  %2056 = extractvalue %dx.types.CBufRet.f32 %2053, 1
  %2057 = fadd fast float %2055, %2056
  %2058 = extractvalue %dx.types.CBufRet.f32 %2053, 2
  %2059 = fmul fast float %2058, %2002
  %2060 = extractvalue %dx.types.CBufRet.f32 %2053, 3
  %2061 = fadd fast float %2059, %2060
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2065 = extractvalue %dx.types.CBufRet.f32 %2062, 2
  %2066 = extractvalue %dx.types.CBufRet.f32 %2062, 3
  %2067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2068 = extractvalue %dx.types.CBufRet.f32 %2067, 0
  %2069 = extractvalue %dx.types.CBufRet.f32 %2067, 1
  %2070 = extractvalue %dx.types.CBufRet.f32 %2067, 2
  %2071 = extractvalue %dx.types.CBufRet.f32 %2067, 3
  %2072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %40, float %2057, float %2061, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.ResRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.ResRet.f32 %2072, 2
  %2076 = extractvalue %dx.types.ResRet.f32 %2072, 3
  %2077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %40, float %2057, float %2061, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2078 = extractvalue %dx.types.ResRet.f32 %2077, 0
  %2079 = extractvalue %dx.types.ResRet.f32 %2077, 1
  %2080 = extractvalue %dx.types.ResRet.f32 %2077, 2
  %2081 = extractvalue %dx.types.ResRet.f32 %2077, 3
  %2082 = fmul fast float %2073, %2050
  %2083 = fmul fast float %2078, %2050
  %2084 = fmul fast float %2080, %2050
  %2085 = fmul fast float %2076, %2050
  %2086 = fadd fast float %2082, %2063
  %2087 = fadd fast float %2083, %2064
  %2088 = fadd fast float %2084, %2065
  %2089 = fadd fast float %2085, %2066
  %2090 = fmul fast float %2074, %2050
  %2091 = fmul fast float %2079, %2050
  %2092 = fadd fast float %2090, %2068
  %2093 = fadd fast float %2091, %2069
  %2094 = fmul fast float %2075, %2050
  %2095 = fmul fast float %2081, %2050
  %2096 = fadd fast float %2094, %2070
  %2097 = fadd fast float %2095, %2071
  %2098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %40, float %2057, float %2061, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2099 = extractvalue %dx.types.ResRet.f32 %2098, 0
  %2100 = extractvalue %dx.types.ResRet.f32 %2098, 1
  %2101 = extractvalue %dx.types.ResRet.f32 %2098, 2
  %2102 = extractvalue %dx.types.ResRet.f32 %2098, 3
  %2103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %40, float %2057, float %2061, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2104 = extractvalue %dx.types.ResRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.ResRet.f32 %2103, 1
  %2106 = extractvalue %dx.types.ResRet.f32 %2103, 2
  %2107 = extractvalue %dx.types.ResRet.f32 %2103, 3
  %2108 = fmul fast float %2099, %2051
  %2109 = fmul fast float %2104, %2051
  %2110 = fmul fast float %2106, %2051
  %2111 = fmul fast float %2102, %2051
  %2112 = fadd fast float %2086, %2108
  %2113 = fadd fast float %2087, %2109
  %2114 = fadd fast float %2088, %2110
  %2115 = fadd fast float %2089, %2111
  %2116 = fmul fast float %2100, %2051
  %2117 = fmul fast float %2105, %2051
  %2118 = fadd fast float %2092, %2116
  %2119 = fadd fast float %2093, %2117
  %2120 = fmul fast float %2101, %2051
  %2121 = fmul fast float %2107, %2051
  %2122 = fadd fast float %2096, %2120
  %2123 = fadd fast float %2097, %2121
  %2124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %40, float %2057, float %2061, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2125 = extractvalue %dx.types.ResRet.f32 %2124, 0
  %2126 = extractvalue %dx.types.ResRet.f32 %2124, 1
  %2127 = extractvalue %dx.types.ResRet.f32 %2124, 2
  %2128 = extractvalue %dx.types.ResRet.f32 %2124, 3
  %2129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %40, float %2057, float %2061, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2130 = extractvalue %dx.types.ResRet.f32 %2129, 0
  %2131 = extractvalue %dx.types.ResRet.f32 %2129, 1
  %2132 = extractvalue %dx.types.ResRet.f32 %2129, 2
  %2133 = extractvalue %dx.types.ResRet.f32 %2129, 3
  %2134 = fmul fast float %2125, %2052
  %2135 = fmul fast float %2130, %2052
  %2136 = fmul fast float %2132, %2052
  %2137 = fmul fast float %2128, %2052
  %2138 = fadd fast float %2112, %2134
  %2139 = fadd fast float %2113, %2135
  %2140 = fadd fast float %2114, %2136
  %2141 = fadd fast float %2115, %2137
  %2142 = fmul fast float %2126, %2052
  %2143 = fmul fast float %2131, %2052
  %2144 = fadd fast float %2118, %2142
  %2145 = fadd fast float %2119, %2143
  %2146 = fmul fast float %2127, %2052
  %2147 = fmul fast float %2133, %2052
  %2148 = fadd fast float %2122, %2146
  %2149 = fadd fast float %2123, %2147
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 0
  %2152 = fsub fast float %1624, %2151
  %2153 = fsub fast float %1994, %1624
  %2154 = call float @dx.op.binary.f32(i32 35, float %2153, float %2152)  ; FMax(a,b)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2150, 1
  %2156 = fsub fast float %1625, %2155
  %2157 = fsub fast float %1995, %1625
  %2158 = call float @dx.op.binary.f32(i32 35, float %2157, float %2156)  ; FMax(a,b)
  %2159 = call float @dx.op.binary.f32(i32 35, float %2154, float %2158)  ; FMax(a,b)
  %2160 = extractvalue %dx.types.CBufRet.f32 %1998, 3
  %2161 = fmul fast float %2160, %2159
  %2162 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.f32 %2163, 0
  %2165 = extractvalue %dx.types.CBufRet.f32 %2163, 1
  %2166 = extractvalue %dx.types.CBufRet.f32 %2163, 2
  %2167 = extractvalue %dx.types.CBufRet.f32 %2163, 3
  %2168 = fsub fast float %2164, %2138
  %2169 = fsub fast float %2165, %2139
  %2170 = fsub fast float %2166, %2140
  %2171 = fsub fast float %2167, %2141
  %2172 = fmul fast float %2168, %2162
  %2173 = fmul fast float %2169, %2162
  %2174 = fmul fast float %2170, %2162
  %2175 = fmul fast float %2171, %2162
  %2176 = fadd fast float %2172, %2138
  %2177 = fadd fast float %2173, %2139
  %2178 = fadd fast float %2174, %2140
  %2179 = fadd fast float %2175, %2141
  %2180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.f32 %2180, 0
  %2182 = extractvalue %dx.types.CBufRet.f32 %2180, 1
  %2183 = fsub fast float %2181, %2144
  %2184 = fsub fast float %2182, %2145
  %2185 = fmul fast float %2183, %2162
  %2186 = fmul fast float %2184, %2162
  %2187 = fadd fast float %2185, %2144
  %2188 = fadd fast float %2186, %2145
  %2189 = extractvalue %dx.types.CBufRet.f32 %2180, 2
  %2190 = extractvalue %dx.types.CBufRet.f32 %2180, 3
  %2191 = fsub fast float %2189, %2148
  %2192 = fsub fast float %2190, %2149
  %2193 = fmul fast float %2191, %2162
  %2194 = fmul fast float %2192, %2162
  %2195 = fadd fast float %2193, %2148
  %2196 = fadd fast float %2194, %2149
  %2197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.f32 %2197, 0
  %2199 = fmul fast float %2198, %2176
  %2200 = fmul fast float %2198, %2177
  %2201 = fmul fast float %2198, %2178
  %2202 = fmul fast float %2198, %2179
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2205 = fmul fast float %2204, %2187
  %2206 = fmul fast float %2204, %2188
  %2207 = fadd fast float %2205, %2199
  %2208 = fadd fast float %2206, %2201
  %2209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2210 = extractvalue %dx.types.CBufRet.f32 %2209, 0
  %2211 = fmul fast float %2210, %2195
  %2212 = fmul fast float %2210, %2196
  %2213 = fadd fast float %2207, %2211
  %2214 = fadd fast float %2208, %2212
  %2215 = extractvalue %dx.types.CBufRet.f32 %2197, 1
  %2216 = fmul fast float %2215, %2176
  %2217 = fmul fast float %2215, %2177
  %2218 = fmul fast float %2215, %2178
  %2219 = fmul fast float %2215, %2179
  %2220 = extractvalue %dx.types.CBufRet.f32 %2203, 1
  %2221 = fmul fast float %2220, %2187
  %2222 = fmul fast float %2220, %2188
  %2223 = fadd fast float %2221, %2216
  %2224 = fadd fast float %2222, %2218
  %2225 = extractvalue %dx.types.CBufRet.f32 %2209, 1
  %2226 = fmul fast float %2225, %2195
  %2227 = fmul fast float %2225, %2196
  %2228 = fadd fast float %2223, %2226
  %2229 = fadd fast float %2224, %2227
  %2230 = extractvalue %dx.types.CBufRet.f32 %2197, 2
  %2231 = fmul fast float %2230, %2176
  %2232 = fmul fast float %2230, %2177
  %2233 = fmul fast float %2230, %2178
  %2234 = fmul fast float %2230, %2179
  %2235 = extractvalue %dx.types.CBufRet.f32 %2203, 2
  %2236 = fmul fast float %2235, %2187
  %2237 = fmul fast float %2235, %2188
  %2238 = fadd fast float %2236, %2231
  %2239 = fadd fast float %2237, %2233
  %2240 = extractvalue %dx.types.CBufRet.f32 %2209, 2
  %2241 = fmul fast float %2240, %2195
  %2242 = fmul fast float %2240, %2196
  %2243 = fadd fast float %2238, %2241
  %2244 = fadd fast float %2239, %2242
  %2245 = fmul fast float %2232, %2232
  %2246 = fmul fast float %2244, %2244
  %2247 = fmul fast float %2234, %2234
  %2248 = fadd fast float %2247, %2245
  %2249 = fadd fast float %2248, %2246
  %2250 = call float @dx.op.unary.f32(i32 24, float %2249)  ; Sqrt(value)
  %2251 = fcmp fast ugt float %2250, 0.000000e+00
  br i1 %2251, label %2252, label %2267

; <label>:2252                                    ; preds = %1986
  %2253 = fsub fast float -0.000000e+00, %2234
  %2254 = fdiv fast float %2253, %2250
  %2255 = fsub fast float -0.000000e+00, %2232
  %2256 = fdiv fast float %2255, %2250
  %2257 = fdiv fast float %2244, %2250
  %2258 = fmul fast float %2243, 0x3FE279A760000000
  %2259 = fmul fast float %2256, %2232
  %2260 = fmul fast float %2257, %2244
  %2261 = fmul fast float %2254, %2234
  %2262 = fadd fast float %2259, %2261
  %2263 = fsub fast float %2262, %2260
  %2264 = call float @dx.op.unary.f32(i32 6, float %2263)  ; FAbs(value)
  %2265 = fadd fast float %2264, 0x3DDB7CDFE0000000
  %2266 = fdiv fast float %2258, %2265
  br label %2267

; <label>:2267                                    ; preds = %2252, %1986
  %2268 = phi float [ %2266, %2252 ], [ 1.000000e+00, %1986 ]
  %2269 = fmul fast float %2217, %2217
  %2270 = fmul fast float %2229, %2229
  %2271 = fmul fast float %2219, %2219
  %2272 = fadd fast float %2271, %2269
  %2273 = fadd fast float %2272, %2270
  %2274 = call float @dx.op.unary.f32(i32 24, float %2273)  ; Sqrt(value)
  %2275 = fcmp fast ugt float %2274, 0.000000e+00
  br i1 %2275, label %2276, label %2291

; <label>:2276                                    ; preds = %2267
  %2277 = fsub fast float -0.000000e+00, %2219
  %2278 = fdiv fast float %2277, %2274
  %2279 = fsub fast float -0.000000e+00, %2217
  %2280 = fdiv fast float %2279, %2274
  %2281 = fdiv fast float %2229, %2274
  %2282 = fmul fast float %2228, 0x3FE279A760000000
  %2283 = fmul fast float %2280, %2217
  %2284 = fmul fast float %2281, %2229
  %2285 = fmul fast float %2278, %2219
  %2286 = fadd fast float %2283, %2285
  %2287 = fsub fast float %2286, %2284
  %2288 = call float @dx.op.unary.f32(i32 6, float %2287)  ; FAbs(value)
  %2289 = fadd fast float %2288, 0x3DDB7CDFE0000000
  %2290 = fdiv fast float %2282, %2289
  br label %2291

; <label>:2291                                    ; preds = %2276, %2267
  %2292 = phi float [ %2290, %2276 ], [ 1.000000e+00, %2267 ]
  %2293 = call float @dx.op.binary.f32(i32 36, float %2292, float %2268)  ; FMin(a,b)
  %2294 = fmul fast float %2200, %2200
  %2295 = fmul fast float %2214, %2214
  %2296 = fmul fast float %2202, %2202
  %2297 = fadd fast float %2296, %2294
  %2298 = fadd fast float %2297, %2295
  %2299 = call float @dx.op.unary.f32(i32 24, float %2298)  ; Sqrt(value)
  %2300 = fcmp fast ugt float %2299, 0.000000e+00
  br i1 %2300, label %2301, label %2316

; <label>:2301                                    ; preds = %2291
  %2302 = fsub fast float -0.000000e+00, %2202
  %2303 = fdiv fast float %2302, %2299
  %2304 = fsub fast float -0.000000e+00, %2200
  %2305 = fdiv fast float %2304, %2299
  %2306 = fdiv fast float %2214, %2299
  %2307 = fmul fast float %2213, 0x3FE279A760000000
  %2308 = fmul fast float %2305, %2200
  %2309 = fmul fast float %2306, %2214
  %2310 = fmul fast float %2303, %2202
  %2311 = fadd fast float %2308, %2310
  %2312 = fsub fast float %2311, %2309
  %2313 = call float @dx.op.unary.f32(i32 6, float %2312)  ; FAbs(value)
  %2314 = fadd fast float %2313, 0x3DDB7CDFE0000000
  %2315 = fdiv fast float %2307, %2314
  br label %2316

; <label>:2316                                    ; preds = %2301, %2291
  %2317 = phi float [ %2315, %2301 ], [ 1.000000e+00, %2291 ]
  %2318 = call float @dx.op.binary.f32(i32 36, float %2317, float %2293)  ; FMin(a,b)
  %2319 = call float @dx.op.unary.f32(i32 7, float %2318)  ; Saturate(value)
  %2320 = fcmp fast olt float %2319, 1.000000e+00
  br i1 %2320, label %2321, label %2331

; <label>:2321                                    ; preds = %2316
  %2322 = fmul fast float %2319, %2200
  %2323 = fmul fast float %2319, %2214
  %2324 = fmul fast float %2319, %2202
  %2325 = fmul fast float %2319, %2217
  %2326 = fmul fast float %2319, %2229
  %2327 = fmul fast float %2319, %2219
  %2328 = fmul fast float %2319, %2232
  %2329 = fmul fast float %2319, %2244
  %2330 = fmul fast float %2319, %2234
  br label %2331

; <label>:2331                                    ; preds = %2321, %2316
  %2332 = phi float [ %2328, %2321 ], [ %2232, %2316 ]
  %2333 = phi float [ %2329, %2321 ], [ %2244, %2316 ]
  %2334 = phi float [ %2330, %2321 ], [ %2234, %2316 ]
  %2335 = phi float [ %2325, %2321 ], [ %2217, %2316 ]
  %2336 = phi float [ %2326, %2321 ], [ %2229, %2316 ]
  %2337 = phi float [ %2327, %2321 ], [ %2219, %2316 ]
  %2338 = phi float [ %2322, %2321 ], [ %2200, %2316 ]
  %2339 = phi float [ %2323, %2321 ], [ %2214, %2316 ]
  %2340 = phi float [ %2324, %2321 ], [ %2202, %2316 ]
  %2341 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2213)  ; FMax(a,b)
  %2342 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2228)  ; FMax(a,b)
  %2343 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2243)  ; FMax(a,b)
  %2344 = fcmp fast oge float %2001, 0.000000e+00
  %2345 = and i1 %2344, %1772
  %2346 = fcmp fast ole float %2001, 1.000000e+00
  %2347 = and i1 %2346, %2345
  %2348 = fcmp fast oge float %2002, 0.000000e+00
  %2349 = and i1 %2348, %2347
  %2350 = fcmp fast ole float %2002, 1.000000e+00
  %2351 = and i1 %2350, %2349
  br i1 %2351, label %2352, label %2497, !dx.controlflow.hints !82

; <label>:2352                                    ; preds = %2331
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 2
  %2355 = extractvalue %dx.types.CBufRet.f32 %2353, 3
  %2356 = fmul fast float %2354, %2001
  %2357 = fmul fast float %2355, %2002
  %2358 = call float @dx.op.unary.f32(i32 27, float %2356)  ; Round_ni(value)
  %2359 = call float @dx.op.unary.f32(i32 27, float %2357)  ; Round_ni(value)
  %2360 = fptosi float %2358 to i32
  %2361 = fptosi float %2359 to i32
  %2362 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %2360, i32 %2361, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = and i32 %2363, 65535
  %2365 = lshr i32 %2363, 16
  %2366 = icmp eq i32 %2364, 65535
  br i1 %2366, label %2403, label %2367

; <label>:2367                                    ; preds = %2352
  %2368 = extractvalue %dx.types.CBufRet.f32 %1770, 1
  %2369 = extractvalue %dx.types.CBufRet.f32 %2353, 0
  %2370 = extractvalue %dx.types.CBufRet.f32 %2353, 1
  %2371 = fmul fast float %2369, %2001
  %2372 = fmul fast float %2370, %2002
  %2373 = fmul fast float %2371, 1.250000e-01
  %2374 = fmul fast float %2372, 1.250000e-01
  %2375 = call float @dx.op.unary.f32(i32 27, float %2373)  ; Round_ni(value)
  %2376 = call float @dx.op.unary.f32(i32 27, float %2374)  ; Round_ni(value)
  %2377 = fmul fast float %2375, 8.000000e+00
  %2378 = fmul fast float %2376, 8.000000e+00
  %2379 = and i32 %2363, 255
  %2380 = lshr i32 %2363, 8
  %2381 = and i32 %2380, 255
  %2382 = mul nuw nsw i32 %2379, 9
  %2383 = uitofp i32 %2382 to float
  %2384 = mul nuw nsw i32 %2381, 9
  %2385 = uitofp i32 %2384 to float
  %2386 = fadd fast float %2383, 5.000000e-01
  %2387 = fadd fast float %2386, %2371
  %2388 = fsub fast float %2387, %2377
  %2389 = fadd fast float %2385, 5.000000e-01
  %2390 = fadd fast float %2389, %2372
  %2391 = fsub fast float %2390, %2378
  %2392 = fdiv fast float %2388, %1771
  %2393 = fdiv fast float %2391, %2368
  %2394 = fmul fast float %2029, 4.375000e-01
  %2395 = fadd fast float %2394, 3.125000e-02
  %2396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %2392, float %2393, float %2395, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2397 = extractvalue %dx.types.ResRet.f32 %2396, 0
  %2398 = extractvalue %dx.types.ResRet.f32 %2396, 1
  %2399 = extractvalue %dx.types.ResRet.f32 %2396, 2
  %2400 = fadd fast float %2397, %2341
  %2401 = fadd fast float %2398, %2342
  %2402 = fadd fast float %2399, %2343
  br label %2403

; <label>:2403                                    ; preds = %2367, %2352
  %2404 = phi float [ %2402, %2367 ], [ %2343, %2352 ]
  %2405 = phi float [ %2401, %2367 ], [ %2342, %2352 ]
  %2406 = phi float [ %2400, %2367 ], [ %2341, %2352 ]
  %2407 = icmp eq i32 %2365, 65535
  br i1 %2407, label %2497, label %2408

; <label>:2408                                    ; preds = %2403
  %2409 = extractvalue %dx.types.CBufRet.f32 %1770, 1
  %2410 = extractvalue %dx.types.CBufRet.f32 %2353, 0
  %2411 = extractvalue %dx.types.CBufRet.f32 %2353, 1
  %2412 = fmul fast float %2410, %2001
  %2413 = fmul fast float %2411, %2002
  %2414 = fmul fast float %2412, 1.250000e-01
  %2415 = fmul fast float %2413, 1.250000e-01
  %2416 = call float @dx.op.unary.f32(i32 27, float %2414)  ; Round_ni(value)
  %2417 = call float @dx.op.unary.f32(i32 27, float %2415)  ; Round_ni(value)
  %2418 = fmul fast float %2416, 8.000000e+00
  %2419 = fmul fast float %2417, 8.000000e+00
  %2420 = fsub fast float %2412, %2418
  %2421 = fsub fast float %2413, %2419
  %2422 = fadd fast float %2420, 5.000000e-01
  %2423 = fadd fast float %2421, 5.000000e-01
  %2424 = and i32 %2365, 255
  %2425 = lshr i32 %2363, 24
  %2426 = mul nuw nsw i32 %2424, 9
  %2427 = uitofp i32 %2426 to float
  %2428 = mul nuw nsw i32 %2425, 9
  %2429 = uitofp i32 %2428 to float
  %2430 = fadd fast float %2422, %2427
  %2431 = fadd fast float %2423, %2429
  %2432 = fdiv fast float %2430, %1771
  %2433 = fdiv fast float %2431, %2409
  %2434 = fmul fast float %2029, 4.375000e-01
  %2435 = fadd fast float %2434, 3.125000e-02
  %2436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %2432, float %2433, float %2435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2437 = extractvalue %dx.types.ResRet.f32 %2436, 0
  %2438 = extractvalue %dx.types.ResRet.f32 %2436, 1
  %2439 = extractvalue %dx.types.ResRet.f32 %2436, 2
  %2440 = fadd fast float %2434, 5.312500e-01
  %2441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %2432, float %2433, float %2440, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2442 = extractvalue %dx.types.ResRet.f32 %2441, 0
  %2443 = extractvalue %dx.types.ResRet.f32 %2441, 1
  %2444 = extractvalue %dx.types.ResRet.f32 %2441, 2
  %2445 = fmul fast float %2442, 2.000000e+00
  %2446 = fmul fast float %2443, 2.000000e+00
  %2447 = fmul fast float %2444, 2.000000e+00
  %2448 = fadd fast float %2445, -1.000000e+00
  %2449 = fadd fast float %2446, -1.000000e+00
  %2450 = fadd fast float %2447, -1.000000e+00
  %2451 = fmul fast float %2448, %2448
  %2452 = fmul fast float %2449, %2449
  %2453 = fadd fast float %2451, %2452
  %2454 = fmul fast float %2450, %2450
  %2455 = fadd fast float %2453, %2454
  %2456 = call float @dx.op.unary.f32(i32 24, float %2455)  ; Sqrt(value)
  %2457 = fcmp fast ogt float %2456, 0.000000e+00
  br i1 %2457, label %2458, label %2462

; <label>:2458                                    ; preds = %2408
  %2459 = fdiv fast float %2448, %2456
  %2460 = fdiv fast float %2449, %2456
  %2461 = fdiv fast float %2450, %2456
  br label %2462

; <label>:2462                                    ; preds = %2458, %2408
  %2463 = phi float [ %2459, %2458 ], [ 0.000000e+00, %2408 ]
  %2464 = phi float [ %2460, %2458 ], [ 0.000000e+00, %2408 ]
  %2465 = phi float [ %2461, %2458 ], [ 0.000000e+00, %2408 ]
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2468 = extractvalue %dx.types.CBufRet.f32 %2466, 1
  %2469 = fsub fast float %1624, %2467
  %2470 = fsub fast float %1625, %2468
  %2471 = fmul fast float %2469, %2469
  %2472 = fmul fast float %2470, %2470
  %2473 = fadd fast float %2471, %2472
  %2474 = call float @dx.op.unary.f32(i32 24, float %2473)  ; Sqrt(value)
  %2475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.f32 %2475, 0
  %2477 = extractvalue %dx.types.CBufRet.f32 %2475, 1
  %2478 = fsub fast float %2474, %2476
  %2479 = fdiv fast float %2478, %2477
  %2480 = call float @dx.op.unary.f32(i32 7, float %2479)  ; Saturate(value)
  %2481 = fmul fast float %2480, 2.000000e+00
  %2482 = fsub fast float 3.000000e+00, %2481
  %2483 = fmul fast float %2480, %2480
  %2484 = fmul fast float %2483, %2482
  %2485 = call float @dx.op.dot3.f32(i32 55, float %2463, float %2464, float %2465, float %1600, float %1601, float %1602)  ; Dot3(ax,ay,az,bx,by,bz)
  %2486 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2485)  ; FMax(a,b)
  %2487 = fmul fast float %2486, 0x400C5BF8A0000000
  %2488 = fmul fast float %2484, %2437
  %2489 = fmul fast float %2488, %2487
  %2490 = fadd fast float %2489, %2406
  %2491 = fmul fast float %2484, %2438
  %2492 = fmul fast float %2491, %2487
  %2493 = fadd fast float %2492, %2405
  %2494 = fmul fast float %2484, %2439
  %2495 = fmul fast float %2494, %2487
  %2496 = fadd fast float %2495, %2404
  br label %2497

; <label>:2497                                    ; preds = %2462, %2403, %2331
  %2498 = phi float [ %2496, %2462 ], [ %2404, %2403 ], [ %2343, %2331 ]
  %2499 = phi float [ %2493, %2462 ], [ %2405, %2403 ], [ %2342, %2331 ]
  %2500 = phi float [ %2490, %2462 ], [ %2406, %2403 ], [ %2341, %2331 ]
  %2501 = fcmp fast ogt float %1988, %2025
  %2502 = and i1 %2344, %2501
  %2503 = and i1 %2346, %2502
  %2504 = and i1 %2348, %2503
  %2505 = and i1 %2350, %2504
  br i1 %2505, label %2506, label %2563, !dx.controlflow.hints !83

; <label>:2506                                    ; preds = %2497
  %2507 = fmul fast float %2027, 0x3FC24924A0000000
  %2508 = fsub fast float %1988, %2025
  %2509 = fdiv fast float %2508, %2507
  %2510 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  %2511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2512 = extractvalue %dx.types.CBufRet.f32 %2511, 0
  %2513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2514 = extractvalue %dx.types.CBufRet.f32 %2513, 0
  %2515 = extractvalue %dx.types.CBufRet.f32 %2513, 1
  %2516 = extractvalue %dx.types.CBufRet.f32 %2513, 2
  %2517 = fsub fast float %2512, %2500
  %2518 = fsub fast float %2514, %2338
  %2519 = fsub fast float %2515, %2339
  %2520 = fsub fast float %2516, %2340
  %2521 = fmul fast float %2517, %2510
  %2522 = fmul fast float %2518, %2510
  %2523 = fmul fast float %2519, %2510
  %2524 = fmul fast float %2520, %2510
  %2525 = fadd fast float %2521, %2500
  %2526 = fadd fast float %2522, %2338
  %2527 = fadd fast float %2523, %2339
  %2528 = fadd fast float %2524, %2340
  %2529 = extractvalue %dx.types.CBufRet.f32 %2511, 1
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.CBufRet.f32 %2530, 1
  %2533 = extractvalue %dx.types.CBufRet.f32 %2530, 2
  %2534 = fsub fast float %2529, %2499
  %2535 = fsub fast float %2531, %2335
  %2536 = fsub fast float %2532, %2336
  %2537 = fsub fast float %2533, %2337
  %2538 = fmul fast float %2534, %2510
  %2539 = fmul fast float %2535, %2510
  %2540 = fmul fast float %2536, %2510
  %2541 = fmul fast float %2537, %2510
  %2542 = fadd fast float %2538, %2499
  %2543 = fadd fast float %2539, %2335
  %2544 = fadd fast float %2540, %2336
  %2545 = fadd fast float %2541, %2337
  %2546 = extractvalue %dx.types.CBufRet.f32 %2511, 2
  %2547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2548 = extractvalue %dx.types.CBufRet.f32 %2547, 0
  %2549 = extractvalue %dx.types.CBufRet.f32 %2547, 1
  %2550 = extractvalue %dx.types.CBufRet.f32 %2547, 2
  %2551 = fsub fast float %2546, %2498
  %2552 = fsub fast float %2548, %2332
  %2553 = fsub fast float %2549, %2333
  %2554 = fsub fast float %2550, %2334
  %2555 = fmul fast float %2551, %2510
  %2556 = fmul fast float %2552, %2510
  %2557 = fmul fast float %2553, %2510
  %2558 = fmul fast float %2554, %2510
  %2559 = fadd fast float %2555, %2498
  %2560 = fadd fast float %2556, %2332
  %2561 = fadd fast float %2557, %2333
  %2562 = fadd fast float %2558, %2334
  br label %2563

; <label>:2563                                    ; preds = %2506, %2497
  %2564 = phi float [ %2559, %2506 ], [ %2498, %2497 ]
  %2565 = phi float [ %2560, %2506 ], [ %2332, %2497 ]
  %2566 = phi float [ %2561, %2506 ], [ %2333, %2497 ]
  %2567 = phi float [ %2562, %2506 ], [ %2334, %2497 ]
  %2568 = phi float [ %2542, %2506 ], [ %2499, %2497 ]
  %2569 = phi float [ %2543, %2506 ], [ %2335, %2497 ]
  %2570 = phi float [ %2544, %2506 ], [ %2336, %2497 ]
  %2571 = phi float [ %2545, %2506 ], [ %2337, %2497 ]
  %2572 = phi float [ %2525, %2506 ], [ %2500, %2497 ]
  %2573 = phi float [ %2526, %2506 ], [ %2338, %2497 ]
  %2574 = phi float [ %2527, %2506 ], [ %2339, %2497 ]
  %2575 = phi float [ %2528, %2506 ], [ %2340, %2497 ]
  %2576 = extractvalue %dx.types.CBufRet.f32 %2150, 3
  %2577 = fmul fast float %2576, %2572
  %2578 = fmul fast float %2576, %2568
  %2579 = fmul fast float %2576, %2564
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 3
  %2582 = fmul fast float %2577, %2581
  %2583 = fmul fast float %2578, %2581
  %2584 = fmul fast float %2579, %2581
  %2585 = fmul fast float %2573, 1.500000e+00
  %2586 = fmul fast float %2585, %2576
  %2587 = fmul fast float %2586, %2581
  %2588 = fmul fast float %2574, 1.500000e+00
  %2589 = fmul fast float %2588, %2576
  %2590 = fmul fast float %2589, %2581
  %2591 = fmul fast float %2575, 1.500000e+00
  %2592 = fmul fast float %2591, %2576
  %2593 = fmul fast float %2592, %2581
  %2594 = fmul fast float %2569, 1.500000e+00
  %2595 = fmul fast float %2594, %2576
  %2596 = fmul fast float %2595, %2581
  %2597 = fmul fast float %2570, 1.500000e+00
  %2598 = fmul fast float %2597, %2576
  %2599 = fmul fast float %2598, %2581
  %2600 = fmul fast float %2571, 1.500000e+00
  %2601 = fmul fast float %2600, %2576
  %2602 = fmul fast float %2601, %2581
  %2603 = fmul fast float %2565, 1.500000e+00
  %2604 = fmul fast float %2603, %2576
  %2605 = fmul fast float %2604, %2581
  %2606 = fmul fast float %2566, 1.500000e+00
  %2607 = fmul fast float %2606, %2576
  %2608 = fmul fast float %2607, %2581
  %2609 = fmul fast float %2567, 1.500000e+00
  %2610 = fmul fast float %2609, %2576
  %2611 = fmul fast float %2610, %2581
  %2612 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2582)  ; FMax(a,b)
  %2613 = call float @dx.op.dot3.f32(i32 55, float %2587, float %2590, float %2593, float %2587, float %2590, float %2593)  ; Dot3(ax,ay,az,bx,by,bz)
  %2614 = fcmp fast oeq float %2613, 0.000000e+00
  %2615 = fcmp fast oeq float %2612, 0.000000e+00
  %2616 = or i1 %2615, %2614
  br i1 %2616, label %2646, label %2617

; <label>:2617                                    ; preds = %2563
  %2618 = fsub fast float -0.000000e+00, %2593
  %2619 = fsub fast float -0.000000e+00, %2587
  %2620 = call float @dx.op.unary.f32(i32 24, float %2613)  ; Sqrt(value)
  %2621 = fdiv fast float %2620, %2612
  %2622 = fcmp fast ogt float %2621, 0x3FFB6F8900000000
  %2623 = select i1 %2622, float 0x3FFB6F8900000000, float %2621
  %2624 = fmul fast float %2623, 0x3FE8A23460000000
  %2625 = call float @dx.op.unary.f32(i32 7, float %2624)  ; Saturate(value)
  %2626 = call float @dx.op.binary.f32(i32 35, float %2623, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2627 = fmul fast float %2625, %2612
  %2628 = fmul fast float %2626, 0x3FF279A740000000
  %2629 = fadd fast float %2628, -1.000000e+00
  %2630 = call float @dx.op.dot3.f32(i32 55, float %2618, float %2619, float %2590, float %2618, float %2619, float %2590)  ; Dot3(ax,ay,az,bx,by,bz)
  %2631 = call float @dx.op.unary.f32(i32 25, float %2630)  ; Rsqrt(value)
  %2632 = fmul fast float %2631, %2618
  %2633 = fmul fast float %2631, %2619
  %2634 = fmul fast float %2631, %2590
  %2635 = fmul fast float %2629, %2629
  %2636 = fsub fast float 1.000000e+00, %2635
  %2637 = fmul fast float %2626, 0x40005F8BE0000000
  %2638 = fsub fast float 0x400C5BF8A0000000, %2637
  %2639 = fdiv fast float %2627, %2638
  %2640 = fmul fast float %2639, 0x3FEE31C3C0000000
  %2641 = fmul fast float %2640, %2636
  %2642 = fmul fast float %2626, 0x3FDACB7480000000
  %2643 = fadd fast float %2642, 0xBFD7347680000000
  %2644 = fmul fast float %2643, %2639
  %2645 = fmul fast float %2644, %2636
  br label %2646

; <label>:2646                                    ; preds = %2617, %2563
  %2647 = phi float [ %2632, %2617 ], [ 0.000000e+00, %2563 ]
  %2648 = phi float [ %2633, %2617 ], [ 0.000000e+00, %2563 ]
  %2649 = phi float [ %2634, %2617 ], [ 0.000000e+00, %2563 ]
  %2650 = phi float [ %2641, %2617 ], [ 0.000000e+00, %2563 ]
  %2651 = phi float [ %2645, %2617 ], [ 0.000000e+00, %2563 ]
  %2652 = call float @dx.op.dot3.f32(i32 55, float %2647, float %2648, float %2649, float %1600, float %1601, float %1602)  ; Dot3(ax,ay,az,bx,by,bz)
  %2653 = fmul fast float %2652, %2652
  %2654 = fmul fast float %2653, 0x3FEE471020000000
  %2655 = fadd fast float %2654, 0xBFD42F6020000000
  %2656 = fmul fast float %2612, 0x3FD20DD760000000
  %2657 = fmul fast float %2655, %2651
  %2658 = fmul fast float %2650, 0x3FDF454380000000
  %2659 = fmul fast float %2658, %2652
  %2660 = fadd fast float %2659, %2656
  %2661 = fadd fast float %2660, %2657
  %2662 = call float @dx.op.dot3.f32(i32 55, float %2647, float %2648, float %2649, float %1613, float %1614, float %1615)  ; Dot3(ax,ay,az,bx,by,bz)
  %2663 = fmul fast float %2662, 0x3FDF454380000000
  %2664 = fmul fast float %2662, %2662
  %2665 = fmul fast float %2664, 0x3FEE471020000000
  %2666 = fadd fast float %2665, 0xBFD42F6020000000
  %2667 = call float @dx.op.dot3.f32(i32 55, float %2612, float %2650, float %2651, float 0x3FD20DD760000000, float %2663, float %2666)  ; Dot3(ax,ay,az,bx,by,bz)
  %2668 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2583)  ; FMax(a,b)
  %2669 = call float @dx.op.dot3.f32(i32 55, float %2596, float %2599, float %2602, float %2596, float %2599, float %2602)  ; Dot3(ax,ay,az,bx,by,bz)
  %2670 = fcmp fast oeq float %2669, 0.000000e+00
  %2671 = fcmp fast oeq float %2668, 0.000000e+00
  %2672 = or i1 %2671, %2670
  br i1 %2672, label %2702, label %2673

; <label>:2673                                    ; preds = %2646
  %2674 = fsub fast float -0.000000e+00, %2602
  %2675 = fsub fast float -0.000000e+00, %2596
  %2676 = call float @dx.op.unary.f32(i32 24, float %2669)  ; Sqrt(value)
  %2677 = fdiv fast float %2676, %2668
  %2678 = fcmp fast ogt float %2677, 0x3FFB6F8900000000
  %2679 = select i1 %2678, float 0x3FFB6F8900000000, float %2677
  %2680 = fmul fast float %2679, 0x3FE8A23460000000
  %2681 = call float @dx.op.unary.f32(i32 7, float %2680)  ; Saturate(value)
  %2682 = call float @dx.op.binary.f32(i32 35, float %2679, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2683 = fmul fast float %2681, %2668
  %2684 = fmul fast float %2682, 0x3FF279A740000000
  %2685 = fadd fast float %2684, -1.000000e+00
  %2686 = call float @dx.op.dot3.f32(i32 55, float %2674, float %2675, float %2599, float %2674, float %2675, float %2599)  ; Dot3(ax,ay,az,bx,by,bz)
  %2687 = call float @dx.op.unary.f32(i32 25, float %2686)  ; Rsqrt(value)
  %2688 = fmul fast float %2687, %2674
  %2689 = fmul fast float %2687, %2675
  %2690 = fmul fast float %2687, %2599
  %2691 = fmul fast float %2685, %2685
  %2692 = fsub fast float 1.000000e+00, %2691
  %2693 = fmul fast float %2682, 0x40005F8BE0000000
  %2694 = fsub fast float 0x400C5BF8A0000000, %2693
  %2695 = fdiv fast float %2683, %2694
  %2696 = fmul fast float %2695, 0x3FEE31C3C0000000
  %2697 = fmul fast float %2696, %2692
  %2698 = fmul fast float %2682, 0x3FDACB7480000000
  %2699 = fadd fast float %2698, 0xBFD7347680000000
  %2700 = fmul fast float %2699, %2695
  %2701 = fmul fast float %2700, %2692
  br label %2702

; <label>:2702                                    ; preds = %2673, %2646
  %2703 = phi float [ %2688, %2673 ], [ 0.000000e+00, %2646 ]
  %2704 = phi float [ %2689, %2673 ], [ 0.000000e+00, %2646 ]
  %2705 = phi float [ %2690, %2673 ], [ 0.000000e+00, %2646 ]
  %2706 = phi float [ %2697, %2673 ], [ 0.000000e+00, %2646 ]
  %2707 = phi float [ %2701, %2673 ], [ 0.000000e+00, %2646 ]
  %2708 = call float @dx.op.dot3.f32(i32 55, float %2703, float %2704, float %2705, float %1600, float %1601, float %1602)  ; Dot3(ax,ay,az,bx,by,bz)
  %2709 = fmul fast float %2708, %2708
  %2710 = fmul fast float %2709, 0x3FEE471020000000
  %2711 = fadd fast float %2710, 0xBFD42F6020000000
  %2712 = fmul fast float %2668, 0x3FD20DD760000000
  %2713 = fmul fast float %2711, %2707
  %2714 = fmul fast float %2706, 0x3FDF454380000000
  %2715 = fmul fast float %2714, %2708
  %2716 = fadd fast float %2715, %2712
  %2717 = fadd fast float %2716, %2713
  %2718 = call float @dx.op.dot3.f32(i32 55, float %2703, float %2704, float %2705, float %1613, float %1614, float %1615)  ; Dot3(ax,ay,az,bx,by,bz)
  %2719 = fmul fast float %2718, 0x3FDF454380000000
  %2720 = fmul fast float %2718, %2718
  %2721 = fmul fast float %2720, 0x3FEE471020000000
  %2722 = fadd fast float %2721, 0xBFD42F6020000000
  %2723 = call float @dx.op.dot3.f32(i32 55, float %2668, float %2706, float %2707, float 0x3FD20DD760000000, float %2719, float %2722)  ; Dot3(ax,ay,az,bx,by,bz)
  %2724 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2584)  ; FMax(a,b)
  %2725 = call float @dx.op.dot3.f32(i32 55, float %2605, float %2608, float %2611, float %2605, float %2608, float %2611)  ; Dot3(ax,ay,az,bx,by,bz)
  %2726 = fcmp fast oeq float %2725, 0.000000e+00
  %2727 = fcmp fast oeq float %2724, 0.000000e+00
  %2728 = or i1 %2727, %2726
  br i1 %2728, label %2758, label %2729

; <label>:2729                                    ; preds = %2702
  %2730 = fsub fast float -0.000000e+00, %2611
  %2731 = fsub fast float -0.000000e+00, %2605
  %2732 = call float @dx.op.unary.f32(i32 24, float %2725)  ; Sqrt(value)
  %2733 = fdiv fast float %2732, %2724
  %2734 = fcmp fast ogt float %2733, 0x3FFB6F8900000000
  %2735 = select i1 %2734, float 0x3FFB6F8900000000, float %2733
  %2736 = fmul fast float %2735, 0x3FE8A23460000000
  %2737 = call float @dx.op.unary.f32(i32 7, float %2736)  ; Saturate(value)
  %2738 = call float @dx.op.binary.f32(i32 35, float %2735, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2739 = fmul fast float %2737, %2724
  %2740 = fmul fast float %2738, 0x3FF279A740000000
  %2741 = fadd fast float %2740, -1.000000e+00
  %2742 = call float @dx.op.dot3.f32(i32 55, float %2730, float %2731, float %2608, float %2730, float %2731, float %2608)  ; Dot3(ax,ay,az,bx,by,bz)
  %2743 = call float @dx.op.unary.f32(i32 25, float %2742)  ; Rsqrt(value)
  %2744 = fmul fast float %2743, %2730
  %2745 = fmul fast float %2743, %2731
  %2746 = fmul fast float %2743, %2608
  %2747 = fmul fast float %2741, %2741
  %2748 = fsub fast float 1.000000e+00, %2747
  %2749 = fmul fast float %2738, 0x40005F8BE0000000
  %2750 = fsub fast float 0x400C5BF8A0000000, %2749
  %2751 = fdiv fast float %2739, %2750
  %2752 = fmul fast float %2751, 0x3FEE31C3C0000000
  %2753 = fmul fast float %2752, %2748
  %2754 = fmul fast float %2738, 0x3FDACB7480000000
  %2755 = fadd fast float %2754, 0xBFD7347680000000
  %2756 = fmul fast float %2755, %2751
  %2757 = fmul fast float %2756, %2748
  br label %2758

; <label>:2758                                    ; preds = %2729, %2702
  %2759 = phi float [ %2744, %2729 ], [ 0.000000e+00, %2702 ]
  %2760 = phi float [ %2745, %2729 ], [ 0.000000e+00, %2702 ]
  %2761 = phi float [ %2746, %2729 ], [ 0.000000e+00, %2702 ]
  %2762 = phi float [ %2753, %2729 ], [ 0.000000e+00, %2702 ]
  %2763 = phi float [ %2757, %2729 ], [ 0.000000e+00, %2702 ]
  %2764 = call float @dx.op.dot3.f32(i32 55, float %2759, float %2760, float %2761, float %1600, float %1601, float %1602)  ; Dot3(ax,ay,az,bx,by,bz)
  %2765 = fmul fast float %2764, %2764
  %2766 = fmul fast float %2765, 0x3FEE471020000000
  %2767 = fadd fast float %2766, 0xBFD42F6020000000
  %2768 = fmul fast float %2724, 0x3FD20DD760000000
  %2769 = fmul fast float %2767, %2763
  %2770 = fmul fast float %2762, 0x3FDF454380000000
  %2771 = fmul fast float %2770, %2764
  %2772 = fadd fast float %2771, %2768
  %2773 = fadd fast float %2772, %2769
  %2774 = call float @dx.op.dot3.f32(i32 55, float %2759, float %2760, float %2761, float %1613, float %1614, float %1615)  ; Dot3(ax,ay,az,bx,by,bz)
  %2775 = fmul fast float %2774, 0x3FDF454380000000
  %2776 = fmul fast float %2774, %2774
  %2777 = fmul fast float %2776, 0x3FEE471020000000
  %2778 = fadd fast float %2777, 0xBFD42F6020000000
  %2779 = call float @dx.op.dot3.f32(i32 55, float %2724, float %2762, float %2763, float 0x3FD20DD760000000, float %2775, float %2778)  ; Dot3(ax,ay,az,bx,by,bz)
  %2780 = call float @dx.op.binary.f32(i32 35, float %2661, float 0.000000e+00)  ; FMax(a,b)
  %2781 = call float @dx.op.binary.f32(i32 35, float %2717, float 0.000000e+00)  ; FMax(a,b)
  %2782 = call float @dx.op.binary.f32(i32 35, float %2773, float 0.000000e+00)  ; FMax(a,b)
  %2783 = call float @dx.op.binary.f32(i32 35, float %2667, float 0.000000e+00)  ; FMax(a,b)
  %2784 = call float @dx.op.binary.f32(i32 35, float %2723, float 0.000000e+00)  ; FMax(a,b)
  %2785 = call float @dx.op.binary.f32(i32 35, float %2779, float 0.000000e+00)  ; FMax(a,b)
  %2786 = fsub fast float %1982, %2780
  %2787 = fsub fast float %1983, %2781
  %2788 = fsub fast float %1984, %2782
  %2789 = fmul fast float %2786, %1665
  %2790 = fmul fast float %2787, %1665
  %2791 = fmul fast float %2788, %1665
  %2792 = fadd fast float %2789, %2780
  %2793 = fadd fast float %2790, %2781
  %2794 = fadd fast float %2791, %2782
  %2795 = fsub fast float %1979, %2783
  %2796 = fsub fast float %1980, %2784
  %2797 = fsub fast float %1981, %2785
  %2798 = fmul fast float %2795, %1665
  %2799 = fmul fast float %2796, %1665
  %2800 = fmul fast float %2797, %1665
  %2801 = fadd fast float %2798, %2783
  %2802 = fadd fast float %2799, %2784
  %2803 = fadd fast float %2800, %2785
  br label %2804

; <label>:2804                                    ; preds = %2758, %1978
  %2805 = phi float [ %2801, %2758 ], [ %1979, %1978 ]
  %2806 = phi float [ %2802, %2758 ], [ %1980, %1978 ]
  %2807 = phi float [ %2803, %2758 ], [ %1981, %1978 ]
  %2808 = phi float [ %2792, %2758 ], [ %1982, %1978 ]
  %2809 = phi float [ %2793, %2758 ], [ %1983, %1978 ]
  %2810 = phi float [ %2794, %2758 ], [ %1984, %1978 ]
  %2811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2812 = extractvalue %dx.types.CBufRet.f32 %2811, 0
  %2813 = call float @dx.op.binary.f32(i32 36, float %1594, float %2812)  ; FMin(a,b)
  %2814 = fsub fast float 1.000000e+00, %1616
  %2815 = fmul fast float %2813, %2814
  %2816 = fsub fast float 1.000000e+00, %2815
  %2817 = bitcast float %2816 to i32
  %2818 = sub nsw i32 2129859010, %2817
  %2819 = bitcast i32 %2818 to float
  %2820 = call float @dx.op.binary.f32(i32 36, float %1595, float %2812)  ; FMin(a,b)
  %2821 = fmul fast float %2820, %2814
  %2822 = fsub fast float 1.000000e+00, %2821
  %2823 = bitcast float %2822 to i32
  %2824 = sub nsw i32 2129859010, %2823
  %2825 = bitcast i32 %2824 to float
  %2826 = call float @dx.op.binary.f32(i32 36, float %1596, float %2812)  ; FMin(a,b)
  %2827 = fmul fast float %2826, %2814
  %2828 = fsub fast float 1.000000e+00, %2827
  %2829 = bitcast float %2828 to i32
  %2830 = sub nsw i32 2129859010, %2829
  %2831 = bitcast i32 %2830 to float
  %2832 = fmul fast float %2808, %1616
  %2833 = fmul fast float %2832, %2819
  %2834 = fmul fast float %2809, %1616
  %2835 = fmul fast float %2834, %2825
  %2836 = fmul fast float %2810, %1616
  %2837 = fmul fast float %2836, %2831
  %2838 = call float @dx.op.binary.f32(i32 36, float %1597, float %2812)  ; FMin(a,b)
  %2839 = fmul fast float %2838, %2814
  %2840 = fsub fast float 1.000000e+00, %2839
  %2841 = bitcast float %2840 to i32
  %2842 = sub nsw i32 2129859010, %2841
  %2843 = bitcast i32 %2842 to float
  %2844 = call float @dx.op.binary.f32(i32 36, float %1598, float %2812)  ; FMin(a,b)
  %2845 = fmul fast float %2844, %2814
  %2846 = fsub fast float 1.000000e+00, %2845
  %2847 = bitcast float %2846 to i32
  %2848 = sub nsw i32 2129859010, %2847
  %2849 = bitcast i32 %2848 to float
  %2850 = call float @dx.op.binary.f32(i32 36, float %1605, float %2812)  ; FMin(a,b)
  %2851 = fmul fast float %2850, %2814
  %2852 = fsub fast float 1.000000e+00, %2851
  %2853 = bitcast float %2852 to i32
  %2854 = sub nsw i32 2129859010, %2853
  %2855 = bitcast i32 %2854 to float
  %2856 = fmul fast float %2805, %1616
  %2857 = fmul fast float %2856, %2843
  %2858 = fmul fast float %2806, %1616
  %2859 = fmul fast float %2858, %2849
  %2860 = fmul fast float %2807, %1616
  %2861 = fmul fast float %2860, %2855
  %2862 = call float @dx.op.dot3.f32(i32 55, float %2833, float %2835, float %2837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2863 = select i1 %416, float 0.000000e+00, float %2833
  %2864 = select i1 %416, float %2862, float %2835
  %2865 = select i1 %416, float 0.000000e+00, float %2837
  %2866 = call float @dx.op.dot3.f32(i32 55, float %2857, float %2859, float %2861, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2867 = select i1 %416, float 0.000000e+00, float %2857
  %2868 = select i1 %416, float %2866, float %2859
  %2869 = select i1 %416, float 0.000000e+00, float %2861
  %2870 = fmul fast float %1607, 9.843750e-01
  %2871 = fmul fast float %1603, 9.843750e-01
  %2872 = fadd fast float %2870, 7.812500e-03
  %2873 = fadd fast float %2871, 7.812500e-03
  %2874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %40, float %2872, float %2873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2875 = extractvalue %dx.types.ResRet.f32 %2874, 2
  %2876 = extractvalue %dx.types.ResRet.f32 %2874, 3
  %2877 = fmul fast float %2875, %1597
  %2878 = fmul fast float %2875, %1598
  %2879 = fmul fast float %2875, %1605
  %2880 = fadd fast float %2877, %2876
  %2881 = fadd fast float %2878, %2876
  %2882 = fadd fast float %2879, %2876
  %2883 = fcmp fast ogt float %971, 0.000000e+00
  br i1 %2883, label %2884, label %2910

; <label>:2884                                    ; preds = %2804
  %2885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %40, float %971, float %1607, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = extractvalue %dx.types.ResRet.f32 %2885, 1
  %2888 = extractvalue %dx.types.ResRet.f32 %2885, 2
  %2889 = fadd fast float %2886, -5.000000e-01
  %2890 = fadd fast float %2887, -5.000000e-01
  %2891 = fadd fast float %2888, -5.000000e-01
  %2892 = fsub fast float 1.000000e+00, %1597
  %2893 = fsub fast float 1.000000e+00, %1598
  %2894 = fsub fast float 1.000000e+00, %1605
  %2895 = fmul fast float %1597, 4.000000e+00
  %2896 = fmul fast float %2895, %2892
  %2897 = fmul fast float %2896, %2889
  %2898 = fmul fast float %1598, 4.000000e+00
  %2899 = fmul fast float %2898, %2893
  %2900 = fmul fast float %2899, %2890
  %2901 = fmul fast float %1605, 4.000000e+00
  %2902 = fmul fast float %2901, %2894
  %2903 = fmul fast float %2902, %2891
  %2904 = fadd fast float %2897, %2880
  %2905 = fadd fast float %2900, %2881
  %2906 = fadd fast float %2903, %2882
  %2907 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2908 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  %2909 = call float @dx.op.unary.f32(i32 7, float %2906)  ; Saturate(value)
  br label %2910

; <label>:2910                                    ; preds = %2884, %2804
  %2911 = phi float [ %2907, %2884 ], [ %2880, %2804 ]
  %2912 = phi float [ %2908, %2884 ], [ %2881, %2804 ]
  %2913 = phi float [ %2909, %2884 ], [ %2882, %2804 ]
  %2914 = call float @dx.op.binary.f32(i32 35, float %2912, float %2913)  ; FMax(a,b)
  %2915 = call float @dx.op.binary.f32(i32 35, float %2911, float %2914)  ; FMax(a,b)
  %2916 = fsub fast float 1.000000e+00, %2915
  %2917 = fmul fast float %2916, %2863
  %2918 = fmul fast float %2916, %2864
  %2919 = fmul fast float %2916, %2865
  %2920 = call float @dx.op.dot3.f32(i32 55, float %1594, float %1595, float %1596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2921 = fcmp fast ogt float %2920, 0x3E7FF19E20000000
  %2922 = fdiv fast float 1.000000e+00, %2920
  %2923 = select i1 %2921, float %2922, float 0.000000e+00
  %2924 = fmul fast float %2923, %1594
  %2925 = fmul fast float %2923, %1595
  %2926 = fmul fast float %2923, %1596
  %2927 = fadd fast float %2924, -1.000000e+00
  %2928 = fadd fast float %2925, -1.000000e+00
  %2929 = fadd fast float %2926, -1.000000e+00
  %2930 = fmul fast float %2927, 5.000000e-01
  %2931 = fmul fast float %2928, 5.000000e-01
  %2932 = fmul fast float %2929, 5.000000e-01
  %2933 = fadd fast float %2930, 1.000000e+00
  %2934 = fadd fast float %2931, 1.000000e+00
  %2935 = fadd fast float %2932, 1.000000e+00
  %2936 = fmul fast float %2911, %2867
  %2937 = fmul fast float %2912, %2868
  %2938 = fmul fast float %2913, %2869
  %2939 = fsub fast float 1.000000e+00, %1607
  %2940 = bitcast float %2939 to i32
  %2941 = sitofp i32 %2940 to float
  %2942 = fmul fast float %2941, 5.000000e+00
  %2943 = fadd fast float %2942, 0xC1EFBF8940000000
  %2944 = fptosi float %2943 to i32
  %2945 = bitcast i32 %2944 to float
  %2946 = fmul fast float %2945, %970
  %2947 = fmul fast float %2863, %2946
  %2948 = fmul fast float %2947, %2916
  %2949 = fmul fast float %2948, %2933
  %2950 = fmul fast float %2864, %2946
  %2951 = fmul fast float %2950, %2916
  %2952 = fmul fast float %2951, %2934
  %2953 = fmul fast float %2865, %2946
  %2954 = fmul fast float %2953, %2916
  %2955 = fmul fast float %2954, %2935
  %2956 = fmul fast float %2917, %991
  %2957 = fmul fast float %2918, %991
  %2958 = fmul fast float %2919, %991
  %2959 = fadd fast float %2936, %972
  %2960 = fadd fast float %2959, %2949
  %2961 = fmul fast float %2960, %991
  %2962 = fadd fast float %2937, %973
  %2963 = fadd fast float %2962, %2952
  %2964 = fmul fast float %2963, %991
  %2965 = fadd fast float %2938, %974
  %2966 = fadd fast float %2965, %2955
  %2967 = fmul fast float %2966, %991
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 3
  %2970 = fcmp fast oeq float %2969, 0.000000e+00
  br i1 %2970, label %3196, label %2971

; <label>:2971                                    ; preds = %2910
  %2972 = extractvalue %dx.types.CBufRet.f32 %2968, 0
  %2973 = extractvalue %dx.types.CBufRet.f32 %2968, 1
  %2974 = extractvalue %dx.types.CBufRet.f32 %2968, 2
  %2975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2976 = extractvalue %dx.types.CBufRet.f32 %2975, 0
  %2977 = extractvalue %dx.types.CBufRet.f32 %2975, 1
  %2978 = extractvalue %dx.types.CBufRet.f32 %2975, 2
  %2979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2980 = extractvalue %dx.types.CBufRet.f32 %2979, 0
  %2981 = extractvalue %dx.types.CBufRet.f32 %2979, 1
  %2982 = call float @dx.op.dot3.f32(i32 55, float %2976, float %2977, float %2978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2983 = select i1 %416, float %2980, float %2976
  %2984 = select i1 %416, float %2982, float %2977
  %2985 = select i1 %416, float %2981, float %2978
  %2986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.f32 %2986, 1
  %2988 = fcmp fast une float %2987, 0.000000e+00
  br i1 %2988, label %2989, label %3004

; <label>:2989                                    ; preds = %2971
  %2990 = lshr i32 %94, 4
  %2991 = lshr i32 %95, 4
  %2992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2993 = extractvalue %dx.types.CBufRet.f32 %2992, 0
  %2994 = fptoui float %2993 to i32
  %2995 = add i32 %2994, 15
  %2996 = lshr i32 %2995, 4
  %2997 = mul i32 %2996, %2991
  %2998 = add i32 %2997, %2990
  %2999 = shl i32 %2998, 3
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2999, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, -268435456
  %3003 = icmp eq i32 %3002, -1342177280
  br i1 %3003, label %3014, label %3004

; <label>:3004                                    ; preds = %2989, %2971
  %3005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3006 = extractvalue %dx.types.CBufRet.f32 %3005, 2
  %3007 = extractvalue %dx.types.CBufRet.f32 %3005, 3
  %3008 = fmul fast float %3006, %56
  %3009 = fmul fast float %3007, %57
  %3010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %41, float %3008, float %3009, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3011 = extractvalue %dx.types.ResRet.f32 %3010, 0
  %3012 = extractvalue %dx.types.ResRet.f32 %3010, 1
  %3013 = extractvalue %dx.types.ResRet.f32 %3010, 2
  br label %3014

; <label>:3014                                    ; preds = %3004, %2989
  %3015 = phi float [ %3011, %3004 ], [ 0.000000e+00, %2989 ]
  %3016 = phi float [ %3012, %3004 ], [ 0.000000e+00, %2989 ]
  %3017 = phi float [ %3013, %3004 ], [ 0.000000e+00, %2989 ]
  %3018 = call float @dx.op.binary.f32(i32 36, float %3016, float %3017)  ; FMin(a,b)
  %3019 = call float @dx.op.binary.f32(i32 36, float %3015, float %3018)  ; FMin(a,b)
  %3020 = fcmp fast ogt float %3019, 0.000000e+00
  br i1 %3020, label %3021, label %3196, !dx.controlflow.hints !84

; <label>:3021                                    ; preds = %3014
  %3022 = fmul fast float %3015, %2983
  %3023 = fmul fast float %3016, %2984
  %3024 = fmul fast float %3017, %2985
  %3025 = fsub fast float %2972, %1593
  %3026 = fsub fast float %2973, %1592
  %3027 = fsub fast float %2974, %1591
  %3028 = call float @dx.op.dot3.f32(i32 55, float %3025, float %3026, float %3027, float %3025, float %3026, float %3027)  ; Dot3(ax,ay,az,bx,by,bz)
  %3029 = call float @dx.op.unary.f32(i32 25, float %3028)  ; Rsqrt(value)
  %3030 = fmul fast float %3029, %3025
  %3031 = fmul fast float %3029, %3026
  %3032 = fmul fast float %3029, %3027
  %3033 = call float @dx.op.dot3.f32(i32 55, float %2972, float %2973, float %2974, float %1600, float %1601, float %1602)  ; Dot3(ax,ay,az,bx,by,bz)
  %3034 = call float @dx.op.dot3.f32(i32 55, float %1590, float %1589, float %1588, float %3030, float %3031, float %3032)  ; Dot3(ax,ay,az,bx,by,bz)
  %3035 = call float @dx.op.unary.f32(i32 7, float %3033)  ; Saturate(value)
  %3036 = fmul fast float %3035, %3035
  %3037 = fmul fast float %3036, %1620
  %3038 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3039 = fmul fast float %3038, %3035
  %3040 = call float @dx.op.dot3.f32(i32 55, float %1600, float %1601, float %1602, float %3030, float %3031, float %3032)  ; Dot3(ax,ay,az,bx,by,bz)
  %3041 = fmul fast float %3040, %3040
  %3042 = call float @dx.op.unary.f32(i32 6, float %3033)  ; FAbs(value)
  %3043 = fsub fast float 1.000000e+00, %1603
  %3044 = call float @dx.op.binary.f32(i32 35, float %3043, float 0x3F847AE140000000)  ; FMax(a,b)
  %3045 = fmul fast float %3044, %3044
  %3046 = fmul fast float %3045, %3045
  %3047 = fsub fast float 1.000000e+00, %3046
  %3048 = fmul fast float %1607, %1607
  %3049 = fmul fast float %3048, %3047
  %3050 = fadd fast float %3049, %3046
  %3051 = bitcast float %3050 to i32
  %3052 = ashr i32 %3051, 1
  %3053 = add nsw i32 %3052, 532487669
  %3054 = bitcast i32 %3053 to float
  %3055 = fadd fast float %3054, %1607
  %3056 = fmul fast float %3046, %3041
  %3057 = fsub fast float 1.000000e+00, %3041
  %3058 = fadd fast float %3057, %3056
  %3059 = fmul fast float %3042, %3042
  %3060 = fmul fast float %3059, %3047
  %3061 = fadd fast float %3060, %3046
  %3062 = bitcast float %3061 to i32
  %3063 = ashr i32 %3062, 1
  %3064 = add nsw i32 %3063, 532487669
  %3065 = bitcast i32 %3064 to float
  %3066 = fadd fast float %3065, %3042
  %3067 = fmul fast float %3058, %3058
  %3068 = fmul fast float %3067, %3055
  %3069 = fmul fast float %3068, %3066
  %3070 = fdiv fast float 0x3FF0A00000000000, %3069
  %3071 = fmul fast float %3070, %3046
  %3072 = call float @dx.op.unary.f32(i32 6, float %3034)  ; FAbs(value)
  %3073 = fsub fast float 1.000000e+00, %3072
  %3074 = bitcast float %3073 to i32
  %3075 = sitofp i32 %3074 to float
  %3076 = fmul fast float %3075, 5.000000e+00
  %3077 = fadd fast float %3076, 0xC1EFBF8940000000
  %3078 = fptosi float %3077 to i32
  %3079 = bitcast i32 %3078 to float
  %3080 = fsub fast float 1.000000e+00, %1597
  %3081 = fsub fast float 1.000000e+00, %1598
  %3082 = fsub fast float 1.000000e+00, %1605
  %3083 = fmul fast float %3079, %3080
  %3084 = fmul fast float %3079, %3081
  %3085 = fmul fast float %3079, %3082
  %3086 = fadd fast float %3083, %1597
  %3087 = fadd fast float %3084, %1598
  %3088 = fadd fast float %3085, %1605
  br i1 %2883, label %3089, label %3112

; <label>:3089                                    ; preds = %3021
  %3090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %40, float %971, float %3072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3091 = extractvalue %dx.types.ResRet.f32 %3090, 0
  %3092 = extractvalue %dx.types.ResRet.f32 %3090, 1
  %3093 = extractvalue %dx.types.ResRet.f32 %3090, 2
  %3094 = fadd fast float %3091, -5.000000e-01
  %3095 = fadd fast float %3092, -5.000000e-01
  %3096 = fadd fast float %3093, -5.000000e-01
  %3097 = fmul fast float %1597, 4.000000e+00
  %3098 = fmul fast float %3097, %3080
  %3099 = fmul fast float %3098, %3094
  %3100 = fmul fast float %1598, 4.000000e+00
  %3101 = fmul fast float %3100, %3081
  %3102 = fmul fast float %3101, %3095
  %3103 = fmul fast float %1605, 4.000000e+00
  %3104 = fmul fast float %3103, %3082
  %3105 = fmul fast float %3104, %3096
  %3106 = fadd fast float %3099, %3086
  %3107 = fadd fast float %3102, %3087
  %3108 = fadd fast float %3105, %3088
  %3109 = call float @dx.op.unary.f32(i32 7, float %3106)  ; Saturate(value)
  %3110 = call float @dx.op.unary.f32(i32 7, float %3107)  ; Saturate(value)
  %3111 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  br label %3112

; <label>:3112                                    ; preds = %3089, %3021
  %3113 = phi float [ %3109, %3089 ], [ %3086, %3021 ]
  %3114 = phi float [ %3110, %3089 ], [ %3087, %3021 ]
  %3115 = phi float [ %3111, %3089 ], [ %3088, %3021 ]
  %3116 = fmul fast float %3033, 9.843750e-01
  %3117 = fadd fast float %3116, 7.812500e-03
  %3118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %40, float %3117, float %2873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3119 = extractvalue %dx.types.ResRet.f32 %3118, 2
  %3120 = extractvalue %dx.types.ResRet.f32 %3118, 3
  %3121 = fmul fast float %3119, %1597
  %3122 = fmul fast float %3119, %1598
  %3123 = fmul fast float %3119, %1605
  %3124 = fadd fast float %3121, %3120
  %3125 = fadd fast float %3122, %3120
  %3126 = fadd fast float %3123, %3120
  br i1 %2883, label %3127, label %3150

; <label>:3127                                    ; preds = %3112
  %3128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %40, float %971, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3129 = extractvalue %dx.types.ResRet.f32 %3128, 0
  %3130 = extractvalue %dx.types.ResRet.f32 %3128, 1
  %3131 = extractvalue %dx.types.ResRet.f32 %3128, 2
  %3132 = fadd fast float %3129, -5.000000e-01
  %3133 = fadd fast float %3130, -5.000000e-01
  %3134 = fadd fast float %3131, -5.000000e-01
  %3135 = fmul fast float %1597, 4.000000e+00
  %3136 = fmul fast float %3135, %3080
  %3137 = fmul fast float %3136, %3132
  %3138 = fmul fast float %1598, 4.000000e+00
  %3139 = fmul fast float %3138, %3081
  %3140 = fmul fast float %3139, %3133
  %3141 = fmul fast float %1605, 4.000000e+00
  %3142 = fmul fast float %3141, %3082
  %3143 = fmul fast float %3142, %3134
  %3144 = fadd fast float %3137, %3124
  %3145 = fadd fast float %3140, %3125
  %3146 = fadd fast float %3143, %3126
  %3147 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3148 = call float @dx.op.unary.f32(i32 7, float %3145)  ; Saturate(value)
  %3149 = call float @dx.op.unary.f32(i32 7, float %3146)  ; Saturate(value)
  br label %3150

; <label>:3150                                    ; preds = %3127, %3112
  %3151 = phi float [ %3147, %3127 ], [ %3124, %3112 ]
  %3152 = phi float [ %3148, %3127 ], [ %3125, %3112 ]
  %3153 = phi float [ %3149, %3127 ], [ %3126, %3112 ]
  %3154 = call float @dx.op.binary.f32(i32 35, float %3152, float %3153)  ; FMax(a,b)
  %3155 = call float @dx.op.binary.f32(i32 35, float %3151, float %3154)  ; FMax(a,b)
  %3156 = fsub fast float 1.000000e+00, %3155
  %3157 = fmul fast float %3113, %3071
  %3158 = fmul fast float %3114, %3071
  %3159 = fmul fast float %3115, %3071
  %3160 = fsub fast float 1.000000e+00, %3034
  %3161 = bitcast float %3160 to i32
  %3162 = sitofp i32 %3161 to float
  %3163 = fmul fast float %3162, 5.000000e+00
  %3164 = fadd fast float %3163, 0xC1EFBF8940000000
  %3165 = fptosi float %3164 to i32
  %3166 = bitcast i32 %3165 to float
  %3167 = fmul fast float %3166, %970
  %3168 = fmul fast float %3156, %3167
  %3169 = fmul fast float %3168, %2933
  %3170 = fmul fast float %3168, %2934
  %3171 = fmul fast float %3168, %2935
  %3172 = fadd fast float %3169, %3157
  %3173 = fadd fast float %3170, %3158
  %3174 = fadd fast float %3171, %3159
  %3175 = fmul fast float %3039, %3022
  %3176 = fmul fast float %3175, %3156
  %3177 = fmul fast float %3039, %3023
  %3178 = fmul fast float %3177, %3156
  %3179 = fmul fast float %3039, %3024
  %3180 = fmul fast float %3179, %3156
  %3181 = fmul fast float %3175, %3172
  %3182 = fmul fast float %3177, %3173
  %3183 = fmul fast float %3179, %3174
  %3184 = fadd fast float %3176, %2917
  %3185 = fmul fast float %3184, %991
  %3186 = fadd fast float %3178, %2918
  %3187 = fmul fast float %3186, %991
  %3188 = fadd fast float %3180, %2919
  %3189 = fmul fast float %3188, %991
  %3190 = fadd fast float %3181, %2960
  %3191 = fmul fast float %3190, %991
  %3192 = fadd fast float %3182, %2963
  %3193 = fmul fast float %3192, %991
  %3194 = fadd fast float %3183, %2966
  %3195 = fmul fast float %3194, %991
  br label %3196

; <label>:3196                                    ; preds = %3150, %3014, %2910
  %3197 = phi float [ %2961, %2910 ], [ %2961, %3014 ], [ %3191, %3150 ]
  %3198 = phi float [ %2964, %2910 ], [ %2964, %3014 ], [ %3193, %3150 ]
  %3199 = phi float [ %2967, %2910 ], [ %2967, %3014 ], [ %3195, %3150 ]
  %3200 = phi float [ %2956, %2910 ], [ %2956, %3014 ], [ %3185, %3150 ]
  %3201 = phi float [ %2957, %2910 ], [ %2957, %3014 ], [ %3187, %3150 ]
  %3202 = phi float [ %2958, %2910 ], [ %2958, %3014 ], [ %3189, %3150 ]
  %3203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3204 = extractvalue %dx.types.CBufRet.i32 %3203, 0
  %3205 = icmp eq i32 %3204, 0
  br i1 %3205, label %3638, label %3206

; <label>:3206                                    ; preds = %3196
  %3207 = lshr i32 %94, 4
  %3208 = lshr i32 %95, 4
  %3209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3210 = extractvalue %dx.types.CBufRet.i32 %3209, 0
  %3211 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3208, i32 %3210, i32 %3207)  ; UMad(a,b,c)
  %3212 = add nsw i32 %3204, -1
  %3213 = call i32 @dx.op.binary.i32(i32 37, i32 %3212, i32 0)  ; IMax(a,b)
  %3214 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %3215 = fptoui float %3214 to i32
  %3216 = lshr i32 %3215, 5
  %3217 = call i32 @dx.op.binary.i32(i32 40, i32 %3216, i32 8191)  ; UMin(a,b)
  %3218 = shl i32 %3217, 2
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = lshr i32 %3220, 16
  %3222 = and i32 %3220, 65535
  %3223 = lshr i32 %3220, 21
  %3224 = lshr i32 %3222, 5
  %3225 = call i32 @dx.op.binary.i32(i32 40, i32 %3224, i32 %3213)  ; UMin(a,b)
  %3226 = icmp ugt i32 %3223, %3225
  br i1 %3226, label %3638, label %3227

; <label>:3227                                    ; preds = %3206
  br label %3228

; <label>:3228                                    ; preds = %3628, %3227
  %3229 = phi i32 [ %3635, %3628 ], [ %3223, %3227 ]
  %3230 = phi float [ %3629, %3628 ], [ %3197, %3227 ]
  %3231 = phi float [ %3630, %3628 ], [ %3198, %3227 ]
  %3232 = phi float [ %3631, %3628 ], [ %3199, %3227 ]
  %3233 = phi float [ %3632, %3628 ], [ %3200, %3227 ]
  %3234 = phi float [ %3633, %3628 ], [ %3201, %3227 ]
  %3235 = phi float [ %3634, %3628 ], [ %3202, %3227 ]
  %3236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3237 = extractvalue %dx.types.CBufRet.i32 %3236, 0
  %3238 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3211, i32 %3237, i32 %3229)  ; UMad(a,b,c)
  %3239 = shl i32 %3238, 2
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = shl i32 %3229, 5
  %3243 = sub nsw i32 %3221, %3242
  %3244 = call i32 @dx.op.binary.i32(i32 37, i32 %3243, i32 0)  ; IMax(a,b)
  %3245 = call i32 @dx.op.binary.i32(i32 38, i32 %3244, i32 31)  ; IMin(a,b)
  %3246 = sub nsw i32 1, %3221
  %3247 = add nsw i32 %3246, %3222
  %3248 = call i32 @dx.op.binary.i32(i32 37, i32 %3247, i32 0)  ; IMax(a,b)
  %3249 = call i32 @dx.op.binary.i32(i32 38, i32 %3248, i32 32)  ; IMin(a,b)
  %3250 = and i32 %3249, 31
  %3251 = shl i32 -1, %3250
  %3252 = xor i32 %3251, -1
  %3253 = and i32 %3245, 31
  %3254 = shl i32 %3252, %3253
  %3255 = icmp eq i32 %3249, 32
  %3256 = select i1 %3255, i32 -1, i32 %3254
  %3257 = and i32 %3256, %3241
  %3258 = icmp eq i32 %3257, 0
  br i1 %3258, label %3628, label %3259

; <label>:3259                                    ; preds = %3228
  br label %3260

; <label>:3260                                    ; preds = %3340, %3259
  %3261 = phi i32 [ %3272, %3340 ], [ %3257, %3259 ]
  %3262 = phi float [ %3341, %3340 ], [ %3230, %3259 ]
  %3263 = phi float [ %3342, %3340 ], [ %3231, %3259 ]
  %3264 = phi float [ %3343, %3340 ], [ %3232, %3259 ]
  %3265 = phi float [ %3344, %3340 ], [ %3233, %3259 ]
  %3266 = phi float [ %3345, %3340 ], [ %3234, %3259 ]
  %3267 = phi float [ %3346, %3340 ], [ %3235, %3259 ]
  %3268 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3261)  ; FirstbitLo(value)
  %3269 = add i32 %3268, %3242
  %3270 = and i32 %3268, 31
  %3271 = shl i32 1, %3270
  %3272 = xor i32 %3271, %3261
  %3273 = mul i32 %3269, 112
  %3274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.f32 %3274, 0
  %3276 = extractvalue %dx.types.ResRet.f32 %3274, 1
  %3277 = extractvalue %dx.types.ResRet.f32 %3274, 2
  %3278 = or i32 %3273, 12
  %3279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.f32 %3279, 0
  %3281 = add i32 %3273, 44
  %3282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 0
  %3284 = add i32 %3273, 48
  %3285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 0
  %3287 = extractvalue %dx.types.ResRet.f32 %3285, 1
  %3288 = extractvalue %dx.types.ResRet.f32 %3285, 2
  %3289 = add i32 %3273, 80
  %3290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %3289, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.f32 %3290, 1
  %3292 = extractvalue %dx.types.ResRet.f32 %3290, 2
  %3293 = call float @dx.op.dot3.f32(i32 55, float %3275, float %3276, float %3277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3294 = select i1 %416, float %3291, float %3275
  %3295 = select i1 %416, float %3293, float %3276
  %3296 = select i1 %416, float %3292, float %3277
  %3297 = fsub fast float %3286, %91
  %3298 = fsub fast float %3287, %92
  %3299 = fsub fast float %3288, %93
  %3300 = call float @dx.op.dot3.f32(i32 55, float %3297, float %3298, float %3299, float %3297, float %3298, float %3299)  ; Dot3(ax,ay,az,bx,by,bz)
  %3301 = call float @dx.op.unary.f32(i32 24, float %3300)  ; Sqrt(value)
  %3302 = fdiv fast float 1.000000e+00, %3301
  %3303 = fmul fast float %3302, %3297
  %3304 = fmul fast float %3302, %3298
  %3305 = fmul fast float %3302, %3299
  %3306 = fadd fast float %3301, %3280
  %3307 = fdiv fast float 1.000000e+00, %3306
  %3308 = fmul float %3283, %3307
  %3309 = fmul float %3308, %3308
  %3310 = call float @dx.op.unary.f32(i32 7, float %3309)  ; Saturate(value)
  %3311 = and i32 %3271, %3257
  %3312 = icmp eq i32 %3311, 0
  br i1 %3312, label %3335, label %3313, !dx.controlflow.hints !85

; <label>:3313                                    ; preds = %3260
  %3314 = lshr i32 %94, 5
  %3315 = lshr i32 %95, 5
  %3316 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %31, i32 0, i32 %3314, i32 %3315, i32 %3269, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = and i32 %3317, 3
  %3319 = icmp eq i32 %3318, 0
  %3320 = select i1 %3319, float 1.000000e+00, float 0.000000e+00
  %3321 = icmp eq i32 %3318, 3
  br i1 %3321, label %3322, label %3335

; <label>:3322                                    ; preds = %3313
  %3323 = lshr i32 %3317, 10
  %3324 = and i32 %3323, 8160
  %3325 = and i32 %95, 31
  %3326 = or i32 %3324, %3325
  %3327 = lshr i32 %3317, 1
  %3328 = and i32 %3327, 16352
  %3329 = and i32 %94, 31
  %3330 = or i32 %3328, %3329
  %3331 = lshr i32 %3317, 23
  %3332 = and i32 %3331, 255
  %3333 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %30, i32 0, i32 %3330, i32 %3326, i32 %3332, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 0
  br label %3335

; <label>:3335                                    ; preds = %3322, %3313, %3260
  %3336 = phi float [ %3334, %3322 ], [ %3320, %3313 ], [ 0.000000e+00, %3260 ]
  %3337 = call float @dx.op.binary.f32(i32 36, float %3336, float %3336)  ; FMin(a,b)
  %3338 = call float @dx.op.binary.f32(i32 36, float %3336, float %3337)  ; FMin(a,b)
  %3339 = fcmp fast ogt float %3338, 0.000000e+00
  br i1 %3339, label %3348, label %3340, !dx.controlflow.hints !86

; <label>:3340                                    ; preds = %3584, %3335
  %3341 = phi float [ %3262, %3335 ], [ %3624, %3584 ]
  %3342 = phi float [ %3263, %3335 ], [ %3625, %3584 ]
  %3343 = phi float [ %3264, %3335 ], [ %3626, %3584 ]
  %3344 = phi float [ %3265, %3335 ], [ %3618, %3584 ]
  %3345 = phi float [ %3266, %3335 ], [ %3619, %3584 ]
  %3346 = phi float [ %3267, %3335 ], [ %3620, %3584 ]
  %3347 = icmp eq i32 %3261, %3271
  br i1 %3347, label %3627, label %3260

; <label>:3348                                    ; preds = %3335
  %3349 = fmul fast float %3336, %3294
  %3350 = fmul fast float %3336, %3295
  %3351 = fmul fast float %3336, %3296
  %3352 = fsub fast float %3288, %1393
  %3353 = fcmp fast ogt float %3352, 0.000000e+00
  %3354 = fsub fast float %93, %1393
  %3355 = fcmp fast ogt float %3354, 0.000000e+00
  %3356 = xor i1 %3355, %3353
  %3357 = fsub fast float %1393, %3288
  %3358 = fmul fast float %3357, 2.000000e+00
  %3359 = fadd fast float %3358, %3288
  %3360 = select i1 %3356, float %3288, float %3359
  %3361 = fsub fast float %3360, %93
  %3362 = call float @dx.op.dot3.f32(i32 55, float %3297, float %3298, float %3361, float %3297, float %3298, float %3361)  ; Dot3(ax,ay,az,bx,by,bz)
  %3363 = call float @dx.op.unary.f32(i32 25, float %3362)  ; Rsqrt(value)
  %3364 = fmul fast float %3363, %3297
  %3365 = fmul fast float %3363, %3298
  %3366 = fmul fast float %3363, %3361
  %3367 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1401)  ; Dot3(ax,ay,az,bx,by,bz)
  %3368 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3364, float %3365, float %3366)  ; Dot3(ax,ay,az,bx,by,bz)
  %3369 = fdiv fast float 1.000000e+00, %3368
  %3370 = fmul fast float %3369, %3367
  %3371 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3354, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3372 = fcmp fast ogt float %3371, 0.000000e+00
  %3373 = fcmp fast olt float %3371, 0.000000e+00
  %3374 = zext i1 %3372 to i32
  %3375 = zext i1 %3373 to i32
  %3376 = sub nsw i32 %3374, %3375
  %3377 = sitofp i32 %3376 to float
  %3378 = fsub fast float %3360, %1393
  %3379 = call float @dx.op.dot3.f32(i32 55, float %3297, float %3298, float %3378, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3380 = fcmp fast ogt float %3379, 0.000000e+00
  %3381 = fcmp fast olt float %3379, 0.000000e+00
  %3382 = zext i1 %3380 to i32
  %3383 = zext i1 %3381 to i32
  %3384 = sub nsw i32 %3382, %3383
  %3385 = sitofp i32 %3384 to float
  %3386 = fcmp fast une float %3377, %3385
  br i1 %3386, label %3387, label %3397

; <label>:3387                                    ; preds = %3348
  %3388 = fmul fast float %3370, %3366
  %3389 = fmul fast float %3370, %3365
  %3390 = fmul fast float %3370, %3364
  %3391 = fmul fast float %3390, %3390
  %3392 = fmul fast float %3389, %3389
  %3393 = fadd fast float %3391, %3392
  %3394 = fmul fast float %3388, %3388
  %3395 = fadd fast float %3393, %3394
  %3396 = call float @dx.op.unary.f32(i32 24, float %3395)  ; Sqrt(value)
  br label %3409

; <label>:3397                                    ; preds = %3348
  %3398 = icmp slt i32 %3376, 0
  br i1 %3398, label %3399, label %3409

; <label>:3399                                    ; preds = %3397
  %3400 = fsub fast float %91, %3286
  %3401 = fsub fast float %92, %3287
  %3402 = fsub fast float %93, %3360
  %3403 = fmul fast float %3400, %3400
  %3404 = fmul fast float %3401, %3401
  %3405 = fadd fast float %3403, %3404
  %3406 = fmul fast float %3402, %3402
  %3407 = fadd fast float %3405, %3406
  %3408 = call float @dx.op.unary.f32(i32 24, float %3407)  ; Sqrt(value)
  br label %3409

; <label>:3409                                    ; preds = %3399, %3397, %3387
  %3410 = phi float [ %3396, %3387 ], [ %3408, %3399 ], [ 0.000000e+00, %3397 ]
  %3411 = and i1 %3355, %3353
  %3412 = fsub fast float -0.000000e+00, %3410
  %3413 = select i1 %3411, float -0.000000e+00, float %3412
  %3414 = fmul fast float %1394, 0x3FF7154760000000
  %3415 = fmul fast float %3414, %3413
  %3416 = fmul fast float %1395, 0x3FF7154760000000
  %3417 = fmul fast float %3416, %3413
  %3418 = fmul fast float %1396, 0x3FF7154760000000
  %3419 = fmul fast float %3418, %3413
  %3420 = call float @dx.op.unary.f32(i32 21, float %3415)  ; Exp(value)
  %3421 = call float @dx.op.unary.f32(i32 21, float %3417)  ; Exp(value)
  %3422 = call float @dx.op.unary.f32(i32 21, float %3419)  ; Exp(value)
  %3423 = call float @dx.op.unary.f32(i32 7, float %3420)  ; Saturate(value)
  %3424 = call float @dx.op.unary.f32(i32 7, float %3421)  ; Saturate(value)
  %3425 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  %3426 = fmul fast float %3349, %3423
  %3427 = fmul fast float %3350, %3424
  %3428 = fmul fast float %3351, %3425
  %3429 = fsub fast float %3303, %1593
  %3430 = fsub fast float %3304, %1592
  %3431 = fsub fast float %3305, %1591
  %3432 = call float @dx.op.dot3.f32(i32 55, float %3429, float %3430, float %3431, float %3429, float %3430, float %3431)  ; Dot3(ax,ay,az,bx,by,bz)
  %3433 = call float @dx.op.unary.f32(i32 25, float %3432)  ; Rsqrt(value)
  %3434 = fmul fast float %3433, %3429
  %3435 = fmul fast float %3433, %3430
  %3436 = fmul fast float %3433, %3431
  %3437 = call float @dx.op.dot3.f32(i32 55, float %3303, float %3304, float %3305, float %1600, float %1601, float %1602)  ; Dot3(ax,ay,az,bx,by,bz)
  %3438 = call float @dx.op.dot3.f32(i32 55, float %1590, float %1589, float %1588, float %3434, float %3435, float %3436)  ; Dot3(ax,ay,az,bx,by,bz)
  %3439 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3440 = fmul fast float %3439, %3310
  %3441 = fmul fast float %3439, %3439
  %3442 = fmul fast float %3441, %1620
  %3443 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  %3444 = fmul fast float %3440, %3443
  %3445 = bitcast float %3300 to i32
  %3446 = ashr i32 %3445, 1
  %3447 = sub nsw i32 1597463007, %3446
  %3448 = bitcast i32 %3447 to float
  %3449 = fmul fast float %3448, %3297
  %3450 = fmul fast float %3448, %3298
  %3451 = fmul fast float %3448, %3299
  %3452 = fsub fast float %3449, %1593
  %3453 = fsub fast float %3450, %1592
  %3454 = fsub fast float %3451, %1591
  %3455 = call float @dx.op.dot3.f32(i32 55, float %3452, float %3453, float %3454, float %3452, float %3453, float %3454)  ; Dot3(ax,ay,az,bx,by,bz)
  %3456 = call float @dx.op.unary.f32(i32 25, float %3455)  ; Rsqrt(value)
  %3457 = fmul fast float %3452, %3456
  %3458 = fmul fast float %3453, %3456
  %3459 = fmul fast float %3454, %3456
  %3460 = call float @dx.op.dot3.f32(i32 55, float %1600, float %1601, float %1602, float %3457, float %3458, float %3459)  ; Dot3(ax,ay,az,bx,by,bz)
  %3461 = fmul fast float %3460, %3460
  %3462 = call float @dx.op.unary.f32(i32 6, float %3437)  ; FAbs(value)
  %3463 = fsub fast float 1.000000e+00, %1603
  %3464 = call float @dx.op.binary.f32(i32 35, float %3463, float 0x3F847AE140000000)  ; FMax(a,b)
  %3465 = fmul fast float %3464, %3464
  %3466 = fmul fast float %3465, %3465
  %3467 = fsub fast float 1.000000e+00, %3466
  %3468 = fmul fast float %1607, %1607
  %3469 = fmul fast float %3468, %3467
  %3470 = fadd fast float %3469, %3466
  %3471 = bitcast float %3470 to i32
  %3472 = ashr i32 %3471, 1
  %3473 = add nsw i32 %3472, 532487669
  %3474 = bitcast i32 %3473 to float
  %3475 = fadd fast float %3474, %1607
  %3476 = fmul fast float %3466, %3461
  %3477 = fsub fast float 1.000000e+00, %3461
  %3478 = fadd fast float %3477, %3476
  %3479 = fmul fast float %3462, %3462
  %3480 = fmul fast float %3479, %3467
  %3481 = fadd fast float %3480, %3466
  %3482 = bitcast float %3481 to i32
  %3483 = ashr i32 %3482, 1
  %3484 = add nsw i32 %3483, 532487669
  %3485 = bitcast i32 %3484 to float
  %3486 = fadd fast float %3485, %3462
  %3487 = fmul fast float %3478, %3478
  %3488 = fmul fast float %3487, %3475
  %3489 = fmul fast float %3488, %3486
  %3490 = fdiv fast float 1.000000e+00, %3489
  %3491 = bitcast float %3466 to i32
  %3492 = sitofp i32 %3491 to float
  %3493 = fmul fast float %3492, 0x3FE7F73180000000
  %3494 = fadd fast float %3493, 0x41AFE27C40000000
  %3495 = fptosi float %3494 to i32
  %3496 = bitcast i32 %3495 to float
  %3497 = fmul fast float %3283, 0x3FD80E9D60000000
  %3498 = fmul fast float %3497, %3448
  %3499 = fadd fast float %3496, %3498
  %3500 = bitcast float %3499 to i32
  %3501 = sub nsw i32 2129859010, %3500
  %3502 = bitcast i32 %3501 to float
  %3503 = fmul fast float %3466, %3490
  %3504 = fmul fast float %3503, %3496
  %3505 = fmul fast float %3504, %3502
  %3506 = call float @dx.op.unary.f32(i32 6, float %3438)  ; FAbs(value)
  %3507 = fsub fast float 1.000000e+00, %3506
  %3508 = bitcast float %3507 to i32
  %3509 = sitofp i32 %3508 to float
  %3510 = fmul fast float %3509, 5.000000e+00
  %3511 = fadd fast float %3510, 0xC1EFBF8940000000
  %3512 = fptosi float %3511 to i32
  %3513 = bitcast i32 %3512 to float
  %3514 = fsub fast float 1.000000e+00, %1597
  %3515 = fsub fast float 1.000000e+00, %1598
  %3516 = fsub fast float 1.000000e+00, %1605
  %3517 = fmul fast float %3513, %3514
  %3518 = fmul fast float %3513, %3515
  %3519 = fmul fast float %3513, %3516
  %3520 = fadd fast float %3517, %1597
  %3521 = fadd fast float %3518, %1598
  %3522 = fadd fast float %3519, %1605
  br i1 %2883, label %3523, label %3546

; <label>:3523                                    ; preds = %3409
  %3524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %40, float %971, float %3506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3525 = extractvalue %dx.types.ResRet.f32 %3524, 0
  %3526 = extractvalue %dx.types.ResRet.f32 %3524, 1
  %3527 = extractvalue %dx.types.ResRet.f32 %3524, 2
  %3528 = fadd fast float %3525, -5.000000e-01
  %3529 = fadd fast float %3526, -5.000000e-01
  %3530 = fadd fast float %3527, -5.000000e-01
  %3531 = fmul fast float %1597, 4.000000e+00
  %3532 = fmul fast float %3531, %3514
  %3533 = fmul fast float %3532, %3528
  %3534 = fmul fast float %1598, 4.000000e+00
  %3535 = fmul fast float %3534, %3515
  %3536 = fmul fast float %3535, %3529
  %3537 = fmul fast float %1605, 4.000000e+00
  %3538 = fmul fast float %3537, %3516
  %3539 = fmul fast float %3538, %3530
  %3540 = fadd fast float %3533, %3520
  %3541 = fadd fast float %3536, %3521
  %3542 = fadd fast float %3539, %3522
  %3543 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3544 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  %3545 = call float @dx.op.unary.f32(i32 7, float %3542)  ; Saturate(value)
  br label %3546

; <label>:3546                                    ; preds = %3523, %3409
  %3547 = phi float [ %3543, %3523 ], [ %3520, %3409 ]
  %3548 = phi float [ %3544, %3523 ], [ %3521, %3409 ]
  %3549 = phi float [ %3545, %3523 ], [ %3522, %3409 ]
  %3550 = fmul fast float %3437, 9.843750e-01
  %3551 = fadd fast float %3550, 7.812500e-03
  %3552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %40, float %3551, float %2873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3553 = extractvalue %dx.types.ResRet.f32 %3552, 2
  %3554 = extractvalue %dx.types.ResRet.f32 %3552, 3
  %3555 = fmul fast float %3553, %1597
  %3556 = fmul fast float %3553, %1598
  %3557 = fmul fast float %3553, %1605
  %3558 = fadd fast float %3555, %3554
  %3559 = fadd fast float %3556, %3554
  %3560 = fadd fast float %3557, %3554
  br i1 %2883, label %3561, label %3584

; <label>:3561                                    ; preds = %3546
  %3562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %40, float %971, float %3437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3563 = extractvalue %dx.types.ResRet.f32 %3562, 0
  %3564 = extractvalue %dx.types.ResRet.f32 %3562, 1
  %3565 = extractvalue %dx.types.ResRet.f32 %3562, 2
  %3566 = fadd fast float %3563, -5.000000e-01
  %3567 = fadd fast float %3564, -5.000000e-01
  %3568 = fadd fast float %3565, -5.000000e-01
  %3569 = fmul fast float %1597, 4.000000e+00
  %3570 = fmul fast float %3569, %3514
  %3571 = fmul fast float %3570, %3566
  %3572 = fmul fast float %1598, 4.000000e+00
  %3573 = fmul fast float %3572, %3515
  %3574 = fmul fast float %3573, %3567
  %3575 = fmul fast float %1605, 4.000000e+00
  %3576 = fmul fast float %3575, %3516
  %3577 = fmul fast float %3576, %3568
  %3578 = fadd fast float %3571, %3558
  %3579 = fadd fast float %3574, %3559
  %3580 = fadd fast float %3577, %3560
  %3581 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3582 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3583 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  br label %3584

; <label>:3584                                    ; preds = %3561, %3546
  %3585 = phi float [ %3581, %3561 ], [ %3558, %3546 ]
  %3586 = phi float [ %3582, %3561 ], [ %3559, %3546 ]
  %3587 = phi float [ %3583, %3561 ], [ %3560, %3546 ]
  %3588 = call float @dx.op.binary.f32(i32 35, float %3586, float %3587)  ; FMax(a,b)
  %3589 = call float @dx.op.binary.f32(i32 35, float %3585, float %3588)  ; FMax(a,b)
  %3590 = fsub fast float 1.000000e+00, %3589
  %3591 = fmul fast float %3547, %3505
  %3592 = fmul fast float %3548, %3505
  %3593 = fmul fast float %3549, %3505
  %3594 = fsub fast float 1.000000e+00, %3438
  %3595 = bitcast float %3594 to i32
  %3596 = sitofp i32 %3595 to float
  %3597 = fmul fast float %3596, 5.000000e+00
  %3598 = fadd fast float %3597, 0xC1EFBF8940000000
  %3599 = fptosi float %3598 to i32
  %3600 = bitcast i32 %3599 to float
  %3601 = fmul fast float %3600, %970
  %3602 = fmul fast float %3590, %3601
  %3603 = fmul fast float %3602, %2933
  %3604 = fmul fast float %3602, %2934
  %3605 = fmul fast float %3602, %2935
  %3606 = fadd fast float %3603, %3591
  %3607 = fadd fast float %3604, %3592
  %3608 = fadd fast float %3605, %3593
  %3609 = fmul fast float %3426, %991
  %3610 = fmul fast float %3609, %3444
  %3611 = fmul fast float %3610, %3590
  %3612 = fmul fast float %3427, %991
  %3613 = fmul fast float %3612, %3444
  %3614 = fmul fast float %3613, %3590
  %3615 = fmul fast float %3428, %991
  %3616 = fmul fast float %3615, %3444
  %3617 = fmul fast float %3616, %3590
  %3618 = fadd fast float %3611, %3265
  %3619 = fadd fast float %3614, %3266
  %3620 = fadd fast float %3617, %3267
  %3621 = fmul fast float %3610, %3606
  %3622 = fmul fast float %3613, %3607
  %3623 = fmul fast float %3616, %3608
  %3624 = fadd fast float %3621, %3262
  %3625 = fadd fast float %3622, %3263
  %3626 = fadd fast float %3623, %3264
  br label %3340

; <label>:3627                                    ; preds = %3340
  br label %3628

; <label>:3628                                    ; preds = %3627, %3228
  %3629 = phi float [ %3230, %3228 ], [ %3341, %3627 ]
  %3630 = phi float [ %3231, %3228 ], [ %3342, %3627 ]
  %3631 = phi float [ %3232, %3228 ], [ %3343, %3627 ]
  %3632 = phi float [ %3233, %3228 ], [ %3344, %3627 ]
  %3633 = phi float [ %3234, %3228 ], [ %3345, %3627 ]
  %3634 = phi float [ %3235, %3228 ], [ %3346, %3627 ]
  %3635 = add i32 %3229, 1
  %3636 = icmp ugt i32 %3635, %3225
  br i1 %3636, label %3637, label %3228

; <label>:3637                                    ; preds = %3628
  br label %3638

; <label>:3638                                    ; preds = %3637, %3206, %3196
  %3639 = phi float [ %3197, %3196 ], [ %3197, %3206 ], [ %3629, %3637 ]
  %3640 = phi float [ %3198, %3196 ], [ %3198, %3206 ], [ %3630, %3637 ]
  %3641 = phi float [ %3199, %3196 ], [ %3199, %3206 ], [ %3631, %3637 ]
  %3642 = phi float [ %3200, %3196 ], [ %3200, %3206 ], [ %3632, %3637 ]
  %3643 = phi float [ %3201, %3196 ], [ %3201, %3206 ], [ %3633, %3637 ]
  %3644 = phi float [ %3202, %3196 ], [ %3202, %3206 ], [ %3634, %3637 ]
  %3645 = call float @dx.op.unary.f32(i32 24, float %1594)  ; Sqrt(value)
  %3646 = call float @dx.op.unary.f32(i32 24, float %1595)  ; Sqrt(value)
  %3647 = call float @dx.op.unary.f32(i32 24, float %1596)  ; Sqrt(value)
  %3648 = fmul fast float %3645, %3642
  %3649 = fmul fast float %3646, %3643
  %3650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3651 = extractvalue %dx.types.CBufRet.f32 %3650, 0
  br i1 %416, label %3652, label %3671

; <label>:3652                                    ; preds = %3638
  %3653 = fadd fast float %3644, %968
  %3654 = fmul fast float %3653, %969
  %3655 = fsub fast float 1.000000e+00, %969
  %3656 = call float @dx.op.unary.f32(i32 7, float %3655)  ; Saturate(value)
  %3657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3658 = extractvalue %dx.types.CBufRet.f32 %3657, 3
  %3659 = fmul fast float %3658, %3656
  %3660 = fadd fast float %3659, %3654
  %3661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3662 = extractvalue %dx.types.CBufRet.f32 %3661, 0
  %3663 = fmul fast float %3662, %2939
  %3664 = fsub fast float %3660, %3663
  %3665 = fadd fast float %3649, %3648
  %3666 = extractvalue %dx.types.CBufRet.f32 %3657, 1
  %3667 = fsub fast float %3664, %3666
  %3668 = extractvalue %dx.types.CBufRet.f32 %3657, 2
  %3669 = fmul fast float %3667, %3668
  %3670 = call float @dx.op.unary.f32(i32 7, float %3669)  ; Saturate(value)
  br label %3675

; <label>:3671                                    ; preds = %3638
  %3672 = fmul fast float %3647, %3644
  %3673 = fmul fast float %3651, %3649
  %3674 = fmul fast float %3672, %3651
  br label %3675

; <label>:3675                                    ; preds = %3671, %3652
  %3676 = phi float [ %3665, %3652 ], [ %3648, %3671 ]
  %3677 = phi float [ %3670, %3652 ], [ %3673, %3671 ]
  %3678 = phi float [ 1.000000e+00, %3652 ], [ %3674, %3671 ]
  %3679 = fmul float %3651, %3676
  %3680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3681 = extractvalue %dx.types.CBufRet.f32 %3680, 0
  %3682 = fmul fast float %3681, %3640
  %3683 = fmul fast float %3681, %3641
  %3684 = fadd fast float %3640, %3639
  %3685 = select i1 %416, float %3684, float %3639
  %3686 = fmul float %3685, %3681
  %3687 = select i1 %416, float 0.000000e+00, float %3682
  %3688 = select i1 %416, float 0.000000e+00, float %3683
  %3689 = fmul fast float %3679, %3645
  %3690 = fmul fast float %3677, %3646
  %3691 = fmul fast float %3678, %3647
  %3692 = fadd fast float %3686, %3689
  %3693 = fadd fast float %3687, %3690
  %3694 = fadd fast float %3688, %3691
  %3695 = select i1 %416, float %3677, float %3693
  %3696 = select i1 %416, float %3678, float %3694
  %3697 = call float @dx.op.binary.f32(i32 36, float %3692, float 3.225500e+04)  ; FMin(a,b)
  %3698 = call float @dx.op.binary.f32(i32 36, float %3695, float 3.225500e+04)  ; FMin(a,b)
  %3699 = call float @dx.op.binary.f32(i32 36, float %3696, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3697)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3698)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3699)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!58}
!dx.entryPoints = !{!59}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !47, !50, !53}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
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
!16 = !{i32 8, %"class.Texture2D<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !12}
!17 = !{i32 9, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !12}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!24 = !{i32 16, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !12}
!28 = !{i32 20, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!47 = !{!48}
!48 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 false, i1 false, !49}
!49 = !{i32 1, i32 4}
!50 = !{!51, !52}
!51 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!52 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!53 = !{!54, !55, !56, !57}
!54 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!55 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!56 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!57 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!58 = !{[16 x i32] [i32 14, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7]}
!59 = !{void ()* @ps_main, !"ps_main", !60, !4, !76}
!60 = !{!61, !73, null}
!61 = !{!62, !65, !67, !69, !72}
!62 = !{i32 0, !"SV_Position", i8 9, i8 3, !63, i8 4, i32 1, i8 4, i32 0, i8 0, !64}
!63 = !{i32 0}
!64 = !{i32 3, i32 11}
!65 = !{i32 1, !"POS", i8 9, i8 0, !63, i8 2, i32 1, i8 3, i32 1, i8 0, !66}
!66 = !{i32 3, i32 7}
!67 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !63, i8 2, i32 1, i8 4, i32 2, i8 0, !68}
!68 = !{i32 3, i32 12}
!69 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !70, i8 2, i32 1, i8 2, i32 3, i8 0, !71}
!70 = !{i32 6}
!71 = !{i32 3, i32 3}
!72 = !{i32 4, !"SV_SampleIndex", i8 5, i8 12, !63, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!73 = !{!74}
!74 = !{i32 0, !"SV_Target", i8 9, i8 16, !63, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
!75 = !{i32 3, i32 15}
!76 = !{i32 0, i64 24}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}

