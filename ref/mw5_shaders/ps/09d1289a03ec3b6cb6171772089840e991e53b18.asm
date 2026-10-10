;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; NORMAL                   0   xyz         1     NONE   float   xyz 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: cac75523b50d99dd86d455637626e5a3
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
; NORMAL                   0                 linear       
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
;   [3376 x i8] (type annotation not present)
;
; }
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
; cbuffer 
; {
;
;   [32 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   cbuffer      NA          NA     CB3            cb0     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture     f32          2d      T1     t69,space2     1
;                                   texture    byte         r/o      T2             t0     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture    byte         r/o      T4     t45,space1     1
;                                   texture     f32     2darray      T5     t16,space2     1
;                                   texture     f32          3d      T6     t15,space2     1
;                                   texture     f32          2d      T7     t13,space2     1
;                                   texture     u32          2d      T8     t17,space2     1
;                                   texture     f32          3d      T9     t18,space2     1
;                                   texture    byte         r/o     T10      t3,space1     1
;                                   texture    byte         r/o     T11      t4,space1     1
;                                   texture    byte         r/o     T12      t5,space1     1
;                                   texture    byte         r/o     T13      t6,space1     1
;                                   texture     f32          2d     T14     t37,space2     1
;                                   texture     f32          2d     T15             t1     1
;                                   texture     f32     2darray     T16     t49,space2     1
;                                   texture     f32     2darray     T17     t35,space2     1
;                                   texture    byte         r/o     T18     t10,space1     1
;                                   texture    byte         r/o     T19      t1,space1     1
;                                   texture     f32          1d     T20     t32,space2     1
;                                   texture     f32          3d     T21     t82,space2     1
;                                   texture     f32     2darray     T22      t8,space2     1
;                                   texture    byte         r/o     T23     t68,space1     1
;                                   texture     f32          2d     T24      t0,space2     1
;                                   texture    byte         r/o     T25     t11,space1     1
;                                   texture    byte         r/o     T26     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 7, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }
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
%perPrim = type { <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = fmul fast float %41, %37
  %43 = fmul fast float %41, %38
  %44 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %45 = call float @dx.op.unary.f32(i32 25, float %44)  ; Rsqrt(value)
  %46 = fmul fast float %45, %34
  %47 = fmul fast float %45, %35
  %48 = fmul fast float %45, %36
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %52 = fmul fast float %42, 2.000000e+00
  %53 = fmul fast float %52, %50
  %54 = fmul fast float %43, 2.000000e+00
  %55 = fmul fast float %54, %51
  %56 = fsub fast float 1.000000e+00, %53
  %57 = fsub fast float 1.000000e+00, %55
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fmul fast float %56, %59
  %63 = fmul fast float %56, %60
  %64 = fmul fast float %56, %61
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = fmul fast float %57, %66
  %70 = fmul fast float %57, %67
  %71 = fmul fast float %57, %68
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fadd fast float %69, %73
  %77 = fadd fast float %76, %62
  %78 = fadd fast float %70, %74
  %79 = fadd fast float %78, %63
  %80 = fadd fast float %71, %75
  %81 = fadd fast float %80, %64
  %82 = fmul fast float %77, %39
  %83 = fmul fast float %79, %39
  %84 = fmul fast float %81, %39
  %85 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %86 = shl i32 %85, 16
  %87 = or i32 %86, %85
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 3
  %90 = bitcast float %89 to i32
  %91 = mul i32 %90, 928
  %92 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %91, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.i32 %92, 0
  %94 = or i32 %91, 24
  %95 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = extractvalue %dx.types.ResRet.f32 %95, 1
  %98 = extractvalue %dx.types.ResRet.f32 %95, 2
  %99 = extractvalue %dx.types.ResRet.f32 %95, 3
  %100 = add i32 %91, 40
  %101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = add i32 %91, 564
  %104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %103, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 1
  %106 = add i32 %91, 580
  %107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %106, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 1
  %109 = add i32 %91, 852
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = add i32 %91, 860
  %113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = extractvalue %dx.types.ResRet.f32 %113, 1
  %116 = extractvalue %dx.types.ResRet.f32 %113, 2
  %117 = and i32 %93, 512
  %118 = icmp ne i32 %117, 0
  %119 = icmp ne i32 %111, 0
  %120 = and i1 %118, %119
  br i1 %120, label %121, label %188

; <label>:121                                     ; preds = %0
  %122 = extractvalue %dx.types.ResRet.f32 %107, 3
  %123 = extractvalue %dx.types.ResRet.f32 %107, 2
  %124 = extractvalue %dx.types.ResRet.f32 %107, 0
  %125 = extractvalue %dx.types.ResRet.f32 %104, 3
  %126 = extractvalue %dx.types.ResRet.f32 %104, 2
  %127 = extractvalue %dx.types.ResRet.f32 %104, 0
  %128 = add i32 %111, 0
  %129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %128, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = fadd fast float %133, %82
  %136 = fadd fast float %134, %83
  %137 = fmul fast float %135, %105
  %138 = fmul fast float %136, %105
  %139 = fmul fast float %131, %126
  %140 = fmul fast float %131, %125
  %141 = fadd fast float %137, %139
  %142 = fadd fast float %138, %140
  %143 = fmul fast float %135, %108
  %144 = fmul fast float %136, %108
  %145 = fmul fast float %131, %123
  %146 = fmul fast float %131, %122
  %147 = fadd fast float %143, %145
  %148 = fadd fast float %144, %146
  %149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %150 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %129, %dx.types.Handle %149, float %141, float %142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = extractvalue %dx.types.ResRet.f32 %150, 1
  %153 = extractvalue %dx.types.ResRet.f32 %150, 2
  %154 = extractvalue %dx.types.ResRet.f32 %150, 3
  %155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %129, %dx.types.Handle %149, float %147, float %148, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = extractvalue %dx.types.ResRet.f32 %155, 1
  %158 = extractvalue %dx.types.ResRet.f32 %155, 2
  %159 = extractvalue %dx.types.ResRet.f32 %155, 3
  %160 = fmul fast float %151, %114
  %161 = fadd fast float %160, %115
  %162 = call float @dx.op.unary.f32(i32 7, float %161)  ; Saturate(value)
  %163 = fadd fast float %152, %154
  %164 = fmul fast float %163, %116
  %165 = fsub fast float %164, %116
  %166 = fsub fast float %152, %154
  %167 = fmul fast float %156, %114
  %168 = fadd fast float %167, %115
  %169 = call float @dx.op.unary.f32(i32 7, float %168)  ; Saturate(value)
  %170 = fadd fast float %157, %159
  %171 = fmul fast float %170, %116
  %172 = fsub fast float %171, %116
  %173 = fsub fast float %157, %159
  %174 = fmul fast float %165, %127
  %175 = fmul fast float %166, %127
  %176 = fmul fast float %172, %124
  %177 = fmul fast float %173, %124
  %178 = fadd fast float %176, %174
  %179 = fadd fast float %177, %175
  %180 = fmul fast float %179, %116
  %181 = fmul fast float %153, %127
  %182 = fmul fast float %158, %124
  %183 = fmul fast float %162, %127
  %184 = fmul fast float %169, %124
  %185 = fadd fast float %184, %183
  %186 = fadd fast float %181, 1.000000e+00
  %187 = fadd fast float %186, %182
  br label %188

; <label>:188                                     ; preds = %121, %0
  %189 = phi float [ %178, %121 ], [ 0.000000e+00, %0 ]
  %190 = phi float [ %180, %121 ], [ 0.000000e+00, %0 ]
  %191 = phi float [ %187, %121 ], [ 1.000000e+00, %0 ]
  %192 = phi float [ %185, %121 ], [ %102, %0 ]
  %193 = and i32 %85, 65535
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = lshr i32 %87, 16
  %196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %195)  ; LegacyF16ToF32(value)
  %197 = fadd fast float %194, %96
  %198 = fadd fast float %196, %97
  %199 = fadd fast float %194, %98
  %200 = fadd fast float %196, %99
  %201 = call i32 @dx.op.legacyF32ToF16(i32 130, float %197)  ; LegacyF32ToF16(value)
  %202 = call i32 @dx.op.legacyF32ToF16(i32 130, float %198)  ; LegacyF32ToF16(value)
  %203 = shl i32 %202, 16
  %204 = or i32 %203, %201
  %205 = call i32 @dx.op.legacyF32ToF16(i32 130, float %199)  ; LegacyF32ToF16(value)
  %206 = call i32 @dx.op.legacyF32ToF16(i32 130, float %200)  ; LegacyF32ToF16(value)
  %207 = shl i32 %206, 16
  %208 = or i32 %207, %205
  %209 = fadd fast float %194, %191
  %210 = fadd fast float %196, %192
  %211 = call i32 @dx.op.legacyF32ToF16(i32 130, float %209)  ; LegacyF32ToF16(value)
  %212 = call i32 @dx.op.legacyF32ToF16(i32 130, float %210)  ; LegacyF32ToF16(value)
  %213 = shl i32 %212, 16
  %214 = or i32 %213, %211
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = fmul fast float %216, 0x3FE3C6EF40000000
  %218 = frem fast float %42, 2.560000e+02
  %219 = frem fast float %43, 2.560000e+02
  %220 = fptoui float %218 to i32
  %221 = fptoui float %219 to i32
  %222 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %220, i32 %221, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = extractvalue %dx.types.ResRet.f32 %222, 1
  %225 = fadd fast float %223, %217
  %226 = fadd fast float %224, %217
  %227 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %228 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %229 = fcmp fast ogt float %48, 0.000000e+00
  %230 = fcmp fast olt float %48, 0.000000e+00
  %231 = zext i1 %229 to i32
  %232 = zext i1 %230 to i32
  %233 = sub nsw i32 %231, %232
  %234 = sitofp i32 %233 to float
  %235 = fadd fast float %234, %48
  %236 = fdiv fast float -1.000000e+00, %235
  %237 = fmul fast float %46, %47
  %238 = fmul fast float %237, %236
  %239 = fmul fast float %46, %46
  %240 = fmul fast float %239, %234
  %241 = fmul fast float %240, %236
  %242 = fadd fast float %241, 1.000000e+00
  %243 = fmul fast float %238, %234
  %244 = fmul fast float %234, %46
  %245 = fmul fast float %47, %47
  %246 = fmul fast float %245, %236
  %247 = fadd fast float %246, %234
  %248 = and i32 %201, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %204, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = and i32 %205, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %208, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = and i32 %211, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %214, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = call float @dx.op.dot2.f32(i32 54, float %189, float %190, float %189, float %190)  ; Dot2(ax,ay,bx,by)
  %261 = fmul fast float %260, 0x3FE3333340000000
  %262 = fsub fast float 1.000000e+00, %261
  %263 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %262, float %189, float %190, float %262)  ; Dot3(ax,ay,az,bx,by,bz)
  %264 = call float @dx.op.unary.f32(i32 25, float %263)  ; Rsqrt(value)
  %265 = fmul fast float %264, %189
  %266 = fmul fast float %264, %190
  %267 = fmul fast float %262, %264
  %268 = fmul fast float %267, %46
  %269 = fmul fast float %267, %47
  %270 = fmul fast float %267, %48
  %271 = fmul fast float %265, %242
  %272 = fmul fast float %243, %265
  %273 = fmul fast float %244, %265
  %274 = fadd fast float %268, %271
  %275 = fadd fast float %269, %272
  %276 = fsub fast float %270, %273
  %277 = fmul fast float %266, %238
  %278 = fmul fast float %266, %247
  %279 = fmul fast float %266, %47
  %280 = fadd fast float %274, %277
  %281 = fadd fast float %275, %278
  %282 = fsub fast float %276, %279
  %283 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %284 = call float @dx.op.unary.f32(i32 25, float %283)  ; Rsqrt(value)
  %285 = fmul fast float %280, %284
  %286 = fmul fast float %281, %284
  %287 = fmul fast float %282, %284
  %288 = fadd fast float %255, 0xBFB99999A0000000
  %289 = call float @dx.op.unary.f32(i32 7, float %288)  ; Saturate(value)
  %290 = fmul fast float %289, 0x3FF1C71C80000000
  %291 = call float @dx.op.binary.f32(i32 36, float %255, float 0x3FB99999A0000000)  ; FMin(a,b)
  %292 = fsub fast float 1.000000e+00, %290
  %293 = call float @dx.op.unary.f32(i32 7, float %292)  ; Saturate(value)
  %294 = fmul fast float %293, %249
  %295 = fmul fast float %293, %251
  %296 = fmul fast float %293, %253
  %297 = call float @dx.op.unary.f32(i32 7, float %294)  ; Saturate(value)
  %298 = call float @dx.op.unary.f32(i32 7, float %295)  ; Saturate(value)
  %299 = call float @dx.op.unary.f32(i32 7, float %296)  ; Saturate(value)
  %300 = fmul fast float %290, %249
  %301 = fmul fast float %290, %251
  %302 = fmul fast float %290, %253
  %303 = fadd fast float %300, %291
  %304 = fadd fast float %301, %291
  %305 = fadd fast float %302, %291
  %306 = call float @dx.op.unary.f32(i32 7, float %303)  ; Saturate(value)
  %307 = call float @dx.op.unary.f32(i32 7, float %304)  ; Saturate(value)
  %308 = call float @dx.op.unary.f32(i32 7, float %305)  ; Saturate(value)
  %309 = fmul fast float %307, 0x401CF23780000000
  %310 = fadd fast float %309, 0x3FF32641C0000000
  %311 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = call float @dx.op.unary.f32(i32 25, float %311)  ; Rsqrt(value)
  %313 = fmul fast float %312, %82
  %314 = fmul fast float %312, %83
  %315 = fmul fast float %312, %84
  %316 = fdiv fast float 1.000000e+00, %310
  %317 = fadd fast float %316, -1.000000e+00
  %318 = fadd fast float %316, 1.000000e+00
  %319 = fdiv fast float %317, %318
  %320 = fmul fast float %319, %319
  %321 = call float @dx.op.dot3.f32(i32 55, float %313, float %314, float %315, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = call float @dx.op.binary.f32(i32 35, float %321, float -1.000000e+00)  ; FMax(a,b)
  %323 = call float @dx.op.binary.f32(i32 36, float %322, float 1.000000e+00)  ; FMin(a,b)
  %324 = fmul fast float %316, %316
  %325 = fmul fast float %323, %323
  %326 = fsub fast float 1.000000e+00, %325
  %327 = fmul fast float %324, %326
  %328 = fsub fast float 1.000000e+00, %327
  %329 = fcmp fast olt float %316, 1.000000e+00
  %330 = select i1 %329, float %325, float %328
  %331 = fcmp fast ogt float %328, 0.000000e+00
  %332 = fsub fast float 1.000000e+00, %320
  %333 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %334 = fsub fast float 1.000000e+00, %333
  %335 = call float @dx.op.unary.f32(i32 23, float %334)  ; Log(value)
  %336 = fmul fast float %335, 5.000000e+00
  %337 = call float @dx.op.unary.f32(i32 21, float %336)  ; Exp(value)
  %338 = fmul fast float %337, %332
  %339 = fadd fast float %338, %320
  %340 = select i1 %331, float %339, float 1.000000e+00
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 3
  %343 = fmul fast float %342, %259
  %344 = call float @dx.op.unary.f32(i32 7, float %343)  ; Saturate(value)
  %345 = call float @dx.op.unary.f32(i32 7, float %257)  ; Saturate(value)
  %346 = call float @dx.op.dot3.f32(i32 55, float %306, float %307, float %308, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %347 = fsub fast float 1.000000e+00, %346
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = lshr i32 %349, 8
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, %347
  %356 = fadd fast float %355, %351
  %357 = fmul fast float %356, 0x3F70101020000000
  %358 = call float @dx.op.unary.f32(i32 7, float %357)  ; Saturate(value)
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.i32 %362, 3
  %364 = and i32 %363, 3
  %365 = icmp ne i32 %364, 0
  %366 = and i32 %363, 4
  %367 = icmp ne i32 %366, 0
  %368 = and i1 %365, %367
  br i1 %368, label %369, label %380

; <label>:369                                     ; preds = %188
  %370 = extractvalue %dx.types.CBufRet.f32 %361, 3
  %371 = fmul fast float %370, %43
  %372 = extractvalue %dx.types.CBufRet.f32 %361, 2
  %373 = fmul fast float %372, %42
  %374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %28, float %373, float %371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = fsub fast float 1.000000e+00, %375
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = fcmp fast olt float %376, %378
  br label %383

; <label>:380                                     ; preds = %188
  %381 = icmp eq i32 %366, 0
  %382 = and i1 %365, %381
  br label %383

; <label>:383                                     ; preds = %380, %369
  %384 = phi i1 [ %379, %369 ], [ %382, %380 ]
  %385 = fsub fast float -0.000000e+00, %313
  %386 = fsub fast float -0.000000e+00, %314
  %387 = fsub fast float -0.000000e+00, %315
  %388 = select i1 %384, float 0.000000e+00, float %308
  %389 = call float @dx.op.dot3.f32(i32 55, float %285, float %286, float %287, float %385, float %386, float %387)  ; Dot3(ax,ay,az,bx,by,bz)
  %390 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %391 = fmul fast float %321, 2.000000e+00
  %392 = fmul fast float %391, %285
  %393 = fmul fast float %391, %286
  %394 = fmul fast float %391, %287
  %395 = fsub fast float %313, %392
  %396 = fsub fast float %314, %393
  %397 = fsub fast float %315, %394
  %398 = call float @dx.op.binary.f32(i32 36, float %345, float 1.000000e+00)  ; FMin(a,b)
  %399 = fsub fast float 1.000000e+00, %345
  %400 = bitcast float %399 to i32
  %401 = sub nsw i32 2129859010, %400
  %402 = bitcast i32 %401 to float
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %406 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %407 = fadd fast float %404, %82
  %408 = fadd fast float %405, %83
  %409 = fadd fast float %406, %84
  %410 = fmul fast float %285, 3.200000e+01
  %411 = fmul fast float %286, 3.200000e+01
  %412 = fadd fast float %407, %410
  %413 = fadd fast float %408, %411
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 0
  %416 = extractvalue %dx.types.CBufRet.f32 %414, 1
  %417 = fsub fast float %412, %415
  %418 = fsub fast float %413, %416
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %422 = fmul fast float %417, %420
  %423 = fmul fast float %418, %421
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = fmul fast float %422, %425
  %427 = extractvalue %dx.types.CBufRet.f32 %424, 1
  %428 = fadd fast float %426, %427
  %429 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %430 = fmul fast float %429, %423
  %431 = extractvalue %dx.types.CBufRet.f32 %424, 3
  %432 = fadd fast float %430, %431
  %433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %28, float %428, float %432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = extractvalue %dx.types.ResRet.f32 %433, 1
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %439 = fsub fast float %437, %438
  %440 = fmul fast float %439, %434
  %441 = fadd fast float %440, %438
  %442 = extractvalue %dx.types.CBufRet.f32 %436, 3
  %443 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %444 = fsub fast float %442, %443
  %445 = fmul fast float %444, %435
  %446 = fadd fast float %445, %443
  %447 = fsub fast float %409, %441
  %448 = fsub fast float %446, %441
  %449 = fdiv fast float %447, %448
  %450 = call float @dx.op.unary.f32(i32 7, float %449)  ; Saturate(value)
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %453 = fmul fast float %452, %450
  %454 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %455 = fadd fast float %453, %454
  %456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %428, float %432, float %455, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %463 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %464 = fmul fast float %461, %457
  %465 = fmul fast float %462, %458
  %466 = fmul fast float %463, %459
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %469 = extractvalue %dx.types.CBufRet.f32 %467, 1
  %470 = extractvalue %dx.types.CBufRet.f32 %467, 2
  %471 = fadd fast float %464, %468
  %472 = fadd fast float %465, %469
  %473 = fadd fast float %466, %470
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = fmul fast float %475, %422
  %477 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %478 = fadd fast float %476, %477
  %479 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %480 = fmul fast float %479, %423
  %481 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %482 = fadd fast float %480, %481
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %485 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %486 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %487 = extractvalue %dx.types.CBufRet.f32 %483, 3
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %490 = extractvalue %dx.types.CBufRet.f32 %488, 1
  %491 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %492 = extractvalue %dx.types.CBufRet.f32 %488, 3
  %493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %28, float %478, float %482, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  %497 = extractvalue %dx.types.ResRet.f32 %493, 3
  %498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %28, float %478, float %482, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = extractvalue %dx.types.ResRet.f32 %498, 1
  %501 = extractvalue %dx.types.ResRet.f32 %498, 2
  %502 = extractvalue %dx.types.ResRet.f32 %498, 3
  %503 = fmul fast float %494, %471
  %504 = fmul fast float %499, %471
  %505 = fmul fast float %501, %471
  %506 = fmul fast float %497, %471
  %507 = fadd fast float %503, %484
  %508 = fadd fast float %504, %485
  %509 = fadd fast float %505, %486
  %510 = fadd fast float %506, %487
  %511 = fmul fast float %495, %471
  %512 = fmul fast float %500, %471
  %513 = fadd fast float %511, %489
  %514 = fadd fast float %512, %490
  %515 = fmul fast float %496, %471
  %516 = fmul fast float %502, %471
  %517 = fadd fast float %515, %491
  %518 = fadd fast float %516, %492
  %519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %28, float %478, float %482, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = extractvalue %dx.types.ResRet.f32 %519, 3
  %524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %28, float %478, float %482, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = extractvalue %dx.types.ResRet.f32 %524, 1
  %527 = extractvalue %dx.types.ResRet.f32 %524, 2
  %528 = extractvalue %dx.types.ResRet.f32 %524, 3
  %529 = fmul fast float %520, %472
  %530 = fmul fast float %525, %472
  %531 = fmul fast float %527, %472
  %532 = fmul fast float %523, %472
  %533 = fadd fast float %507, %529
  %534 = fadd fast float %508, %530
  %535 = fadd fast float %509, %531
  %536 = fadd fast float %510, %532
  %537 = fmul fast float %521, %472
  %538 = fmul fast float %526, %472
  %539 = fadd fast float %513, %537
  %540 = fadd fast float %514, %538
  %541 = fmul fast float %522, %472
  %542 = fmul fast float %528, %472
  %543 = fadd fast float %517, %541
  %544 = fadd fast float %518, %542
  %545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %28, float %478, float %482, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = extractvalue %dx.types.ResRet.f32 %545, 2
  %549 = extractvalue %dx.types.ResRet.f32 %545, 3
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %28, float %478, float %482, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = extractvalue %dx.types.ResRet.f32 %550, 1
  %553 = extractvalue %dx.types.ResRet.f32 %550, 2
  %554 = extractvalue %dx.types.ResRet.f32 %550, 3
  %555 = fmul fast float %546, %473
  %556 = fmul fast float %551, %473
  %557 = fmul fast float %553, %473
  %558 = fmul fast float %549, %473
  %559 = fadd fast float %533, %555
  %560 = fadd fast float %534, %556
  %561 = fadd fast float %535, %557
  %562 = fadd fast float %536, %558
  %563 = fmul fast float %547, %473
  %564 = fmul fast float %552, %473
  %565 = fadd fast float %539, %563
  %566 = fadd fast float %540, %564
  %567 = fmul fast float %548, %473
  %568 = fmul fast float %554, %473
  %569 = fadd fast float %543, %567
  %570 = fadd fast float %544, %568
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = fsub fast float %407, %572
  %574 = fsub fast float %415, %407
  %575 = call float @dx.op.binary.f32(i32 35, float %574, float %573)  ; FMax(a,b)
  %576 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %577 = fsub fast float %408, %576
  %578 = fsub fast float %416, %408
  %579 = call float @dx.op.binary.f32(i32 35, float %578, float %577)  ; FMax(a,b)
  %580 = call float @dx.op.binary.f32(i32 35, float %575, float %579)  ; FMax(a,b)
  %581 = extractvalue %dx.types.CBufRet.f32 %419, 3
  %582 = fmul fast float %581, %580
  %583 = call float @dx.op.unary.f32(i32 7, float %582)  ; Saturate(value)
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %588 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %589 = fsub fast float %585, %559
  %590 = fsub fast float %586, %560
  %591 = fsub fast float %587, %561
  %592 = fsub fast float %588, %562
  %593 = fmul fast float %589, %583
  %594 = fmul fast float %590, %583
  %595 = fmul fast float %591, %583
  %596 = fmul fast float %592, %583
  %597 = fadd fast float %593, %559
  %598 = fadd fast float %594, %560
  %599 = fadd fast float %595, %561
  %600 = fadd fast float %596, %562
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 0
  %603 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %604 = fsub fast float %602, %565
  %605 = fsub fast float %603, %566
  %606 = fmul fast float %604, %583
  %607 = fmul fast float %605, %583
  %608 = fadd fast float %606, %565
  %609 = fadd fast float %607, %566
  %610 = extractvalue %dx.types.CBufRet.f32 %601, 2
  %611 = extractvalue %dx.types.CBufRet.f32 %601, 3
  %612 = fsub fast float %610, %569
  %613 = fsub fast float %611, %570
  %614 = fmul fast float %612, %583
  %615 = fmul fast float %613, %583
  %616 = fadd fast float %614, %569
  %617 = fadd fast float %615, %570
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = fmul fast float %619, %597
  %621 = fmul fast float %619, %598
  %622 = fmul fast float %619, %599
  %623 = fmul fast float %619, %600
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = fmul fast float %625, %608
  %627 = fmul fast float %625, %609
  %628 = fadd fast float %626, %620
  %629 = fadd fast float %627, %622
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  %632 = fmul fast float %631, %616
  %633 = fmul fast float %631, %617
  %634 = fadd fast float %628, %632
  %635 = fadd fast float %629, %633
  %636 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %637 = fmul fast float %636, %597
  %638 = fmul fast float %636, %598
  %639 = fmul fast float %636, %599
  %640 = fmul fast float %636, %600
  %641 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %642 = fmul fast float %641, %608
  %643 = fmul fast float %641, %609
  %644 = fadd fast float %642, %637
  %645 = fadd fast float %643, %639
  %646 = extractvalue %dx.types.CBufRet.f32 %630, 1
  %647 = fmul fast float %646, %616
  %648 = fmul fast float %646, %617
  %649 = fadd fast float %644, %647
  %650 = fadd fast float %645, %648
  %651 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %652 = fmul fast float %651, %597
  %653 = fmul fast float %651, %598
  %654 = fmul fast float %651, %599
  %655 = fmul fast float %651, %600
  %656 = extractvalue %dx.types.CBufRet.f32 %624, 2
  %657 = fmul fast float %656, %608
  %658 = fmul fast float %656, %609
  %659 = fadd fast float %657, %652
  %660 = fadd fast float %658, %654
  %661 = extractvalue %dx.types.CBufRet.f32 %630, 2
  %662 = fmul fast float %661, %616
  %663 = fmul fast float %661, %617
  %664 = fadd fast float %659, %662
  %665 = fadd fast float %660, %663
  %666 = fmul fast float %653, %653
  %667 = fmul fast float %665, %665
  %668 = fmul fast float %655, %655
  %669 = fadd fast float %668, %666
  %670 = fadd fast float %669, %667
  %671 = call float @dx.op.unary.f32(i32 24, float %670)  ; Sqrt(value)
  %672 = fcmp fast ugt float %671, 0.000000e+00
  br i1 %672, label %673, label %688

; <label>:673                                     ; preds = %383
  %674 = fsub fast float -0.000000e+00, %655
  %675 = fdiv fast float %674, %671
  %676 = fsub fast float -0.000000e+00, %653
  %677 = fdiv fast float %676, %671
  %678 = fdiv fast float %665, %671
  %679 = fmul fast float %664, 0x3FE279A760000000
  %680 = fmul fast float %677, %653
  %681 = fmul fast float %678, %665
  %682 = fmul fast float %675, %655
  %683 = fadd fast float %680, %682
  %684 = fsub fast float %683, %681
  %685 = call float @dx.op.unary.f32(i32 6, float %684)  ; FAbs(value)
  %686 = fadd fast float %685, 0x3DDB7CDFE0000000
  %687 = fdiv fast float %679, %686
  br label %688

; <label>:688                                     ; preds = %673, %383
  %689 = phi float [ %687, %673 ], [ 1.000000e+00, %383 ]
  %690 = fmul fast float %638, %638
  %691 = fmul fast float %650, %650
  %692 = fmul fast float %640, %640
  %693 = fadd fast float %692, %690
  %694 = fadd fast float %693, %691
  %695 = call float @dx.op.unary.f32(i32 24, float %694)  ; Sqrt(value)
  %696 = fcmp fast ugt float %695, 0.000000e+00
  br i1 %696, label %697, label %712

; <label>:697                                     ; preds = %688
  %698 = fsub fast float -0.000000e+00, %640
  %699 = fdiv fast float %698, %695
  %700 = fsub fast float -0.000000e+00, %638
  %701 = fdiv fast float %700, %695
  %702 = fdiv fast float %650, %695
  %703 = fmul fast float %649, 0x3FE279A760000000
  %704 = fmul fast float %701, %638
  %705 = fmul fast float %702, %650
  %706 = fmul fast float %699, %640
  %707 = fadd fast float %704, %706
  %708 = fsub fast float %707, %705
  %709 = call float @dx.op.unary.f32(i32 6, float %708)  ; FAbs(value)
  %710 = fadd fast float %709, 0x3DDB7CDFE0000000
  %711 = fdiv fast float %703, %710
  br label %712

; <label>:712                                     ; preds = %697, %688
  %713 = phi float [ %711, %697 ], [ 1.000000e+00, %688 ]
  %714 = call float @dx.op.binary.f32(i32 36, float %713, float %689)  ; FMin(a,b)
  %715 = fmul fast float %621, %621
  %716 = fmul fast float %635, %635
  %717 = fmul fast float %623, %623
  %718 = fadd fast float %717, %715
  %719 = fadd fast float %718, %716
  %720 = call float @dx.op.unary.f32(i32 24, float %719)  ; Sqrt(value)
  %721 = fcmp fast ugt float %720, 0.000000e+00
  br i1 %721, label %722, label %737

; <label>:722                                     ; preds = %712
  %723 = fsub fast float -0.000000e+00, %623
  %724 = fdiv fast float %723, %720
  %725 = fsub fast float -0.000000e+00, %621
  %726 = fdiv fast float %725, %720
  %727 = fdiv fast float %635, %720
  %728 = fmul fast float %634, 0x3FE279A760000000
  %729 = fmul fast float %726, %621
  %730 = fmul fast float %727, %635
  %731 = fmul fast float %724, %623
  %732 = fadd fast float %729, %731
  %733 = fsub fast float %732, %730
  %734 = call float @dx.op.unary.f32(i32 6, float %733)  ; FAbs(value)
  %735 = fadd fast float %734, 0x3DDB7CDFE0000000
  %736 = fdiv fast float %728, %735
  br label %737

; <label>:737                                     ; preds = %722, %712
  %738 = phi float [ %736, %722 ], [ 1.000000e+00, %712 ]
  %739 = call float @dx.op.binary.f32(i32 36, float %738, float %714)  ; FMin(a,b)
  %740 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  %741 = fcmp fast olt float %740, 1.000000e+00
  br i1 %741, label %742, label %752

; <label>:742                                     ; preds = %737
  %743 = fmul fast float %740, %621
  %744 = fmul fast float %740, %635
  %745 = fmul fast float %740, %623
  %746 = fmul fast float %740, %638
  %747 = fmul fast float %740, %650
  %748 = fmul fast float %740, %640
  %749 = fmul fast float %740, %653
  %750 = fmul fast float %740, %665
  %751 = fmul fast float %740, %655
  br label %752

; <label>:752                                     ; preds = %742, %737
  %753 = phi float [ %749, %742 ], [ %653, %737 ]
  %754 = phi float [ %750, %742 ], [ %665, %737 ]
  %755 = phi float [ %751, %742 ], [ %655, %737 ]
  %756 = phi float [ %746, %742 ], [ %638, %737 ]
  %757 = phi float [ %747, %742 ], [ %650, %737 ]
  %758 = phi float [ %748, %742 ], [ %640, %737 ]
  %759 = phi float [ %743, %742 ], [ %621, %737 ]
  %760 = phi float [ %744, %742 ], [ %635, %737 ]
  %761 = phi float [ %745, %742 ], [ %623, %737 ]
  %762 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %634)  ; FMax(a,b)
  %763 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %649)  ; FMax(a,b)
  %764 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %664)  ; FMax(a,b)
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 0
  %767 = fcmp fast ogt float %766, 0.000000e+00
  %768 = fcmp fast oge float %422, 0.000000e+00
  %769 = and i1 %768, %767
  %770 = fcmp fast ole float %422, 1.000000e+00
  %771 = and i1 %770, %769
  %772 = fcmp fast oge float %423, 0.000000e+00
  %773 = and i1 %772, %771
  %774 = fcmp fast ole float %423, 1.000000e+00
  %775 = and i1 %774, %773
  br i1 %775, label %776, label %916, !dx.controlflow.hints !59

; <label>:776                                     ; preds = %752
  %777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.f32 %777, 2
  %779 = extractvalue %dx.types.CBufRet.f32 %777, 3
  %780 = fmul fast float %778, %422
  %781 = fmul fast float %779, %423
  %782 = call float @dx.op.unary.f32(i32 27, float %780)  ; Round_ni(value)
  %783 = call float @dx.op.unary.f32(i32 27, float %781)  ; Round_ni(value)
  %784 = fptosi float %782 to i32
  %785 = fptosi float %783 to i32
  %786 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %784, i32 %785, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 65535
  %789 = lshr i32 %787, 16
  %790 = icmp eq i32 %788, 65535
  br i1 %790, label %827, label %791

; <label>:791                                     ; preds = %776
  %792 = extractvalue %dx.types.CBufRet.f32 %765, 1
  %793 = extractvalue %dx.types.CBufRet.f32 %777, 0
  %794 = extractvalue %dx.types.CBufRet.f32 %777, 1
  %795 = fmul fast float %793, %422
  %796 = fmul fast float %794, %423
  %797 = fmul fast float %795, 1.250000e-01
  %798 = fmul fast float %796, 1.250000e-01
  %799 = call float @dx.op.unary.f32(i32 27, float %797)  ; Round_ni(value)
  %800 = call float @dx.op.unary.f32(i32 27, float %798)  ; Round_ni(value)
  %801 = fmul fast float %799, 8.000000e+00
  %802 = fmul fast float %800, 8.000000e+00
  %803 = and i32 %787, 255
  %804 = lshr i32 %787, 8
  %805 = and i32 %804, 255
  %806 = mul nuw nsw i32 %803, 9
  %807 = uitofp i32 %806 to float
  %808 = mul nuw nsw i32 %805, 9
  %809 = uitofp i32 %808 to float
  %810 = fadd fast float %807, 5.000000e-01
  %811 = fadd fast float %810, %795
  %812 = fsub fast float %811, %801
  %813 = fadd fast float %809, 5.000000e-01
  %814 = fadd fast float %813, %796
  %815 = fsub fast float %814, %802
  %816 = fdiv fast float %812, %766
  %817 = fdiv fast float %815, %792
  %818 = fmul fast float %450, 4.375000e-01
  %819 = fadd fast float %818, 3.125000e-02
  %820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %28, float %816, float %817, float %819, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  %824 = fadd fast float %821, %762
  %825 = fadd fast float %822, %763
  %826 = fadd fast float %823, %764
  br label %827

; <label>:827                                     ; preds = %791, %776
  %828 = phi float [ %826, %791 ], [ %764, %776 ]
  %829 = phi float [ %825, %791 ], [ %763, %776 ]
  %830 = phi float [ %824, %791 ], [ %762, %776 ]
  %831 = icmp eq i32 %789, 65535
  br i1 %831, label %916, label %832

; <label>:832                                     ; preds = %827
  %833 = extractvalue %dx.types.CBufRet.f32 %765, 1
  %834 = extractvalue %dx.types.CBufRet.f32 %777, 0
  %835 = extractvalue %dx.types.CBufRet.f32 %777, 1
  %836 = fmul fast float %834, %422
  %837 = fmul fast float %835, %423
  %838 = fmul fast float %836, 1.250000e-01
  %839 = fmul fast float %837, 1.250000e-01
  %840 = call float @dx.op.unary.f32(i32 27, float %838)  ; Round_ni(value)
  %841 = call float @dx.op.unary.f32(i32 27, float %839)  ; Round_ni(value)
  %842 = fmul fast float %840, 8.000000e+00
  %843 = fmul fast float %841, 8.000000e+00
  %844 = fsub fast float %836, %842
  %845 = fsub fast float %837, %843
  %846 = fadd fast float %844, 5.000000e-01
  %847 = fadd fast float %845, 5.000000e-01
  %848 = and i32 %789, 255
  %849 = lshr i32 %787, 24
  %850 = mul nuw nsw i32 %848, 9
  %851 = uitofp i32 %850 to float
  %852 = mul nuw nsw i32 %849, 9
  %853 = uitofp i32 %852 to float
  %854 = fadd fast float %846, %851
  %855 = fadd fast float %847, %853
  %856 = fdiv fast float %854, %766
  %857 = fdiv fast float %855, %833
  %858 = fmul fast float %450, 4.375000e-01
  %859 = fadd fast float %858, 3.125000e-02
  %860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %28, float %856, float %857, float %859, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = extractvalue %dx.types.ResRet.f32 %860, 1
  %863 = extractvalue %dx.types.ResRet.f32 %860, 2
  %864 = fadd fast float %858, 5.312500e-01
  %865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %28, float %856, float %857, float %864, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %866 = extractvalue %dx.types.ResRet.f32 %865, 0
  %867 = extractvalue %dx.types.ResRet.f32 %865, 1
  %868 = extractvalue %dx.types.ResRet.f32 %865, 2
  %869 = fmul fast float %866, 2.000000e+00
  %870 = fmul fast float %867, 2.000000e+00
  %871 = fmul fast float %868, 2.000000e+00
  %872 = fadd fast float %869, -1.000000e+00
  %873 = fadd fast float %870, -1.000000e+00
  %874 = fadd fast float %871, -1.000000e+00
  %875 = fmul fast float %872, %872
  %876 = fmul fast float %873, %873
  %877 = fadd fast float %875, %876
  %878 = fmul fast float %874, %874
  %879 = fadd fast float %877, %878
  %880 = call float @dx.op.unary.f32(i32 24, float %879)  ; Sqrt(value)
  %881 = fcmp fast ogt float %880, 0.000000e+00
  br i1 %881, label %882, label %886

; <label>:882                                     ; preds = %832
  %883 = fdiv fast float %872, %880
  %884 = fdiv fast float %873, %880
  %885 = fdiv fast float %874, %880
  br label %886

; <label>:886                                     ; preds = %882, %832
  %887 = phi float [ %883, %882 ], [ 0.000000e+00, %832 ]
  %888 = phi float [ %884, %882 ], [ 0.000000e+00, %832 ]
  %889 = phi float [ %885, %882 ], [ 0.000000e+00, %832 ]
  %890 = fmul fast float %82, %82
  %891 = fmul fast float %83, %83
  %892 = fadd fast float %890, %891
  %893 = call float @dx.op.unary.f32(i32 24, float %892)  ; Sqrt(value)
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = fsub fast float %893, %895
  %898 = fdiv fast float %897, %896
  %899 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %900 = fmul fast float %899, 2.000000e+00
  %901 = fsub fast float 3.000000e+00, %900
  %902 = fmul fast float %899, %899
  %903 = fmul fast float %902, %901
  %904 = call float @dx.op.dot3.f32(i32 55, float %887, float %888, float %889, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %904)  ; FMax(a,b)
  %906 = fmul fast float %905, 0x400C5BF8A0000000
  %907 = fmul fast float %903, %861
  %908 = fmul fast float %907, %906
  %909 = fadd fast float %908, %830
  %910 = fmul fast float %903, %862
  %911 = fmul fast float %910, %906
  %912 = fadd fast float %911, %829
  %913 = fmul fast float %903, %863
  %914 = fmul fast float %913, %906
  %915 = fadd fast float %914, %828
  br label %916

; <label>:916                                     ; preds = %886, %827, %752
  %917 = phi float [ %915, %886 ], [ %828, %827 ], [ %764, %752 ]
  %918 = phi float [ %912, %886 ], [ %829, %827 ], [ %763, %752 ]
  %919 = phi float [ %909, %886 ], [ %830, %827 ], [ %762, %752 ]
  %920 = fcmp fast ogt float %409, %446
  %921 = and i1 %768, %920
  %922 = and i1 %770, %921
  %923 = and i1 %772, %922
  %924 = and i1 %774, %923
  br i1 %924, label %925, label %982, !dx.controlflow.hints !60

; <label>:925                                     ; preds = %916
  %926 = fmul fast float %448, 0x3FC24924A0000000
  %927 = fsub fast float %409, %446
  %928 = fdiv fast float %927, %926
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 0
  %934 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %935 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %936 = fsub fast float %931, %919
  %937 = fsub fast float %933, %759
  %938 = fsub fast float %934, %760
  %939 = fsub fast float %935, %761
  %940 = fmul fast float %936, %929
  %941 = fmul fast float %937, %929
  %942 = fmul fast float %938, %929
  %943 = fmul fast float %939, %929
  %944 = fadd fast float %940, %919
  %945 = fadd fast float %941, %759
  %946 = fadd fast float %942, %760
  %947 = fadd fast float %943, %761
  %948 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %952 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %953 = fsub fast float %948, %918
  %954 = fsub fast float %950, %756
  %955 = fsub fast float %951, %757
  %956 = fsub fast float %952, %758
  %957 = fmul fast float %953, %929
  %958 = fmul fast float %954, %929
  %959 = fmul fast float %955, %929
  %960 = fmul fast float %956, %929
  %961 = fadd fast float %957, %918
  %962 = fadd fast float %958, %756
  %963 = fadd fast float %959, %757
  %964 = fadd fast float %960, %758
  %965 = extractvalue %dx.types.CBufRet.f32 %930, 2
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %969 = extractvalue %dx.types.CBufRet.f32 %966, 2
  %970 = fsub fast float %965, %917
  %971 = fsub fast float %967, %753
  %972 = fsub fast float %968, %754
  %973 = fsub fast float %969, %755
  %974 = fmul fast float %970, %929
  %975 = fmul fast float %971, %929
  %976 = fmul fast float %972, %929
  %977 = fmul fast float %973, %929
  %978 = fadd fast float %974, %917
  %979 = fadd fast float %975, %753
  %980 = fadd fast float %976, %754
  %981 = fadd fast float %977, %755
  br label %982

; <label>:982                                     ; preds = %925, %916
  %983 = phi float [ %978, %925 ], [ %917, %916 ]
  %984 = phi float [ %979, %925 ], [ %753, %916 ]
  %985 = phi float [ %980, %925 ], [ %754, %916 ]
  %986 = phi float [ %981, %925 ], [ %755, %916 ]
  %987 = phi float [ %961, %925 ], [ %918, %916 ]
  %988 = phi float [ %962, %925 ], [ %756, %916 ]
  %989 = phi float [ %963, %925 ], [ %757, %916 ]
  %990 = phi float [ %964, %925 ], [ %758, %916 ]
  %991 = phi float [ %944, %925 ], [ %919, %916 ]
  %992 = phi float [ %945, %925 ], [ %759, %916 ]
  %993 = phi float [ %946, %925 ], [ %760, %916 ]
  %994 = phi float [ %947, %925 ], [ %761, %916 ]
  %995 = extractvalue %dx.types.CBufRet.f32 %571, 3
  %996 = fmul fast float %995, %991
  %997 = fmul fast float %995, %987
  %998 = fmul fast float %995, %983
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 3
  %1001 = fmul fast float %996, %1000
  %1002 = fmul fast float %997, %1000
  %1003 = fmul fast float %998, %1000
  %1004 = call float @dx.op.dot3.f32(i32 55, float %1001, float %1002, float %1003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1005 = fmul fast float %1004, 0x3FD20DD760000000
  %1006 = fmul fast float %992, 1.500000e+00
  %1007 = fmul fast float %1006, %995
  %1008 = fmul fast float %1007, %1000
  %1009 = fmul fast float %993, 1.500000e+00
  %1010 = fmul fast float %1009, %995
  %1011 = fmul fast float %1010, %1000
  %1012 = fmul fast float %994, 1.500000e+00
  %1013 = fmul fast float %1012, %995
  %1014 = fmul fast float %1013, %1000
  %1015 = fmul fast float %988, 1.500000e+00
  %1016 = fmul fast float %1015, %995
  %1017 = fmul fast float %1016, %1000
  %1018 = fmul fast float %989, 1.500000e+00
  %1019 = fmul fast float %1018, %995
  %1020 = fmul fast float %1019, %1000
  %1021 = fmul fast float %990, 1.500000e+00
  %1022 = fmul fast float %1021, %995
  %1023 = fmul fast float %1022, %1000
  %1024 = fmul fast float %984, 1.500000e+00
  %1025 = fmul fast float %1024, %995
  %1026 = fmul fast float %1025, %1000
  %1027 = fmul fast float %985, 1.500000e+00
  %1028 = fmul fast float %1027, %995
  %1029 = fmul fast float %1028, %1000
  %1030 = fmul fast float %986, 1.500000e+00
  %1031 = fmul fast float %1030, %995
  %1032 = fmul fast float %1031, %1000
  %1033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1001)  ; FMax(a,b)
  %1034 = call float @dx.op.dot3.f32(i32 55, float %1008, float %1011, float %1014, float %1008, float %1011, float %1014)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = fcmp fast oeq float %1034, 0.000000e+00
  %1036 = fcmp fast oeq float %1033, 0.000000e+00
  %1037 = or i1 %1036, %1035
  br i1 %1037, label %1068, label %1038

; <label>:1038                                    ; preds = %982
  %1039 = fsub fast float -0.000000e+00, %1014
  %1040 = fsub fast float -0.000000e+00, %1008
  %1041 = call float @dx.op.unary.f32(i32 24, float %1034)  ; Sqrt(value)
  %1042 = fdiv fast float %1041, %1033
  %1043 = fcmp fast ogt float %1042, 0x3FFB6F8900000000
  %1044 = select i1 %1043, float 0x3FFB6F8900000000, float %1042
  %1045 = fmul fast float %1044, 0x3FE8A23460000000
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  %1047 = call float @dx.op.binary.f32(i32 35, float %1044, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1048 = fmul fast float %1046, %1033
  %1049 = fmul fast float %1047, 0x3FF279A740000000
  %1050 = fadd fast float %1049, -1.000000e+00
  %1051 = call float @dx.op.dot3.f32(i32 55, float %1039, float %1040, float %1011, float %1039, float %1040, float %1011)  ; Dot3(ax,ay,az,bx,by,bz)
  %1052 = call float @dx.op.unary.f32(i32 25, float %1051)  ; Rsqrt(value)
  %1053 = fmul fast float %1052, %1039
  %1054 = fmul fast float %1052, %1040
  %1055 = fmul fast float %1052, %1011
  %1056 = fmul fast float %1050, %1050
  %1057 = fsub fast float 1.000000e+00, %1056
  %1058 = fmul fast float %1047, 0x40005F8BE0000000
  %1059 = fsub fast float 0x400C5BF8A0000000, %1058
  %1060 = fdiv fast float %1048, %1059
  %1061 = fmul fast float %1060, 0x3FEE31C3C0000000
  %1062 = fmul fast float %1061, %1057
  %1063 = fmul fast float %1047, 0x3FDACB7480000000
  %1064 = fadd fast float %1063, 0xBFD7347680000000
  %1065 = fmul fast float %1064, %1060
  %1066 = fmul fast float %1065, %1057
  %1067 = fmul float %1062, 0x3FDF454380000000
  br label %1068

; <label>:1068                                    ; preds = %1038, %982
  %1069 = phi float [ %1053, %1038 ], [ 0.000000e+00, %982 ]
  %1070 = phi float [ %1054, %1038 ], [ 0.000000e+00, %982 ]
  %1071 = phi float [ %1055, %1038 ], [ 0.000000e+00, %982 ]
  %1072 = phi float [ %1067, %1038 ], [ 0.000000e+00, %982 ]
  %1073 = phi float [ %1066, %1038 ], [ 0.000000e+00, %982 ]
  %1074 = call float @dx.op.dot3.f32(i32 55, float %1069, float %1070, float %1071, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %1075 = fmul fast float %1074, %1074
  %1076 = fmul fast float %1075, 0x3FEE471020000000
  %1077 = fadd fast float %1076, 0xBFD42F6020000000
  %1078 = fmul fast float %1033, 0x3FD20DD760000000
  %1079 = fmul fast float %1077, %1073
  %1080 = fmul fast float %1072, %1074
  %1081 = fadd fast float %1080, %1078
  %1082 = fadd fast float %1081, %1079
  %1083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1002)  ; FMax(a,b)
  %1084 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1020, float %1023, float %1017, float %1020, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1085 = fcmp fast oeq float %1084, 0.000000e+00
  %1086 = fcmp fast oeq float %1083, 0.000000e+00
  %1087 = or i1 %1086, %1085
  br i1 %1087, label %1118, label %1088

; <label>:1088                                    ; preds = %1068
  %1089 = fsub fast float -0.000000e+00, %1023
  %1090 = fsub fast float -0.000000e+00, %1017
  %1091 = call float @dx.op.unary.f32(i32 24, float %1084)  ; Sqrt(value)
  %1092 = fdiv fast float %1091, %1083
  %1093 = fcmp fast ogt float %1092, 0x3FFB6F8900000000
  %1094 = select i1 %1093, float 0x3FFB6F8900000000, float %1092
  %1095 = fmul fast float %1094, 0x3FE8A23460000000
  %1096 = call float @dx.op.unary.f32(i32 7, float %1095)  ; Saturate(value)
  %1097 = call float @dx.op.binary.f32(i32 35, float %1094, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1098 = fmul fast float %1096, %1083
  %1099 = fmul fast float %1097, 0x3FF279A740000000
  %1100 = fadd fast float %1099, -1.000000e+00
  %1101 = call float @dx.op.dot3.f32(i32 55, float %1089, float %1090, float %1020, float %1089, float %1090, float %1020)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = call float @dx.op.unary.f32(i32 25, float %1101)  ; Rsqrt(value)
  %1103 = fmul fast float %1102, %1089
  %1104 = fmul fast float %1102, %1090
  %1105 = fmul fast float %1102, %1020
  %1106 = fmul fast float %1100, %1100
  %1107 = fsub fast float 1.000000e+00, %1106
  %1108 = fmul fast float %1097, 0x40005F8BE0000000
  %1109 = fsub fast float 0x400C5BF8A0000000, %1108
  %1110 = fdiv fast float %1098, %1109
  %1111 = fmul fast float %1110, 0x3FEE31C3C0000000
  %1112 = fmul fast float %1111, %1107
  %1113 = fmul fast float %1097, 0x3FDACB7480000000
  %1114 = fadd fast float %1113, 0xBFD7347680000000
  %1115 = fmul fast float %1114, %1110
  %1116 = fmul fast float %1115, %1107
  %1117 = fmul float %1112, 0x3FDF454380000000
  br label %1118

; <label>:1118                                    ; preds = %1088, %1068
  %1119 = phi float [ %1103, %1088 ], [ 0.000000e+00, %1068 ]
  %1120 = phi float [ %1104, %1088 ], [ 0.000000e+00, %1068 ]
  %1121 = phi float [ %1105, %1088 ], [ 0.000000e+00, %1068 ]
  %1122 = phi float [ %1117, %1088 ], [ 0.000000e+00, %1068 ]
  %1123 = phi float [ %1116, %1088 ], [ 0.000000e+00, %1068 ]
  %1124 = call float @dx.op.dot3.f32(i32 55, float %1119, float %1120, float %1121, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = fmul fast float %1124, %1124
  %1126 = fmul fast float %1125, 0x3FEE471020000000
  %1127 = fadd fast float %1126, 0xBFD42F6020000000
  %1128 = fmul fast float %1083, 0x3FD20DD760000000
  %1129 = fmul fast float %1127, %1123
  %1130 = fmul fast float %1122, %1124
  %1131 = fadd fast float %1130, %1128
  %1132 = fadd fast float %1131, %1129
  %1133 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1003)  ; FMax(a,b)
  %1134 = call float @dx.op.dot3.f32(i32 55, float %1026, float %1029, float %1032, float %1026, float %1029, float %1032)  ; Dot3(ax,ay,az,bx,by,bz)
  %1135 = fcmp fast oeq float %1134, 0.000000e+00
  %1136 = fcmp fast oeq float %1133, 0.000000e+00
  %1137 = or i1 %1136, %1135
  br i1 %1137, label %1168, label %1138

; <label>:1138                                    ; preds = %1118
  %1139 = fsub fast float -0.000000e+00, %1032
  %1140 = fsub fast float -0.000000e+00, %1026
  %1141 = call float @dx.op.unary.f32(i32 24, float %1134)  ; Sqrt(value)
  %1142 = fdiv fast float %1141, %1133
  %1143 = fcmp fast ogt float %1142, 0x3FFB6F8900000000
  %1144 = select i1 %1143, float 0x3FFB6F8900000000, float %1142
  %1145 = fmul fast float %1144, 0x3FE8A23460000000
  %1146 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1147 = call float @dx.op.binary.f32(i32 35, float %1144, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1148 = fmul fast float %1146, %1133
  %1149 = fmul fast float %1147, 0x3FF279A740000000
  %1150 = fadd fast float %1149, -1.000000e+00
  %1151 = call float @dx.op.dot3.f32(i32 55, float %1139, float %1140, float %1029, float %1139, float %1140, float %1029)  ; Dot3(ax,ay,az,bx,by,bz)
  %1152 = call float @dx.op.unary.f32(i32 25, float %1151)  ; Rsqrt(value)
  %1153 = fmul fast float %1152, %1139
  %1154 = fmul fast float %1152, %1140
  %1155 = fmul fast float %1152, %1029
  %1156 = fmul fast float %1150, %1150
  %1157 = fsub fast float 1.000000e+00, %1156
  %1158 = fmul fast float %1147, 0x40005F8BE0000000
  %1159 = fsub fast float 0x400C5BF8A0000000, %1158
  %1160 = fdiv fast float %1148, %1159
  %1161 = fmul fast float %1160, 0x3FEE31C3C0000000
  %1162 = fmul fast float %1161, %1157
  %1163 = fmul fast float %1147, 0x3FDACB7480000000
  %1164 = fadd fast float %1163, 0xBFD7347680000000
  %1165 = fmul fast float %1164, %1160
  %1166 = fmul fast float %1165, %1157
  %1167 = fmul float %1162, 0x3FDF454380000000
  br label %1168

; <label>:1168                                    ; preds = %1138, %1118
  %1169 = phi float [ %1153, %1138 ], [ 0.000000e+00, %1118 ]
  %1170 = phi float [ %1154, %1138 ], [ 0.000000e+00, %1118 ]
  %1171 = phi float [ %1155, %1138 ], [ 0.000000e+00, %1118 ]
  %1172 = phi float [ %1167, %1138 ], [ 0.000000e+00, %1118 ]
  %1173 = phi float [ %1166, %1138 ], [ 0.000000e+00, %1118 ]
  %1174 = call float @dx.op.dot3.f32(i32 55, float %1169, float %1170, float %1171, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %1175 = fmul fast float %1174, %1174
  %1176 = fmul fast float %1175, 0x3FEE471020000000
  %1177 = fadd fast float %1176, 0xBFD42F6020000000
  %1178 = fmul fast float %1133, 0x3FD20DD760000000
  %1179 = fmul fast float %1177, %1173
  %1180 = fmul fast float %1172, %1174
  %1181 = fadd fast float %1180, %1178
  %1182 = fadd fast float %1181, %1179
  %1183 = call float @dx.op.binary.f32(i32 35, float %1082, float 0.000000e+00)  ; FMax(a,b)
  %1184 = call float @dx.op.binary.f32(i32 35, float %1132, float 0.000000e+00)  ; FMax(a,b)
  %1185 = call float @dx.op.binary.f32(i32 35, float %1182, float 0.000000e+00)  ; FMax(a,b)
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 0
  %1188 = call float @dx.op.binary.f32(i32 36, float %297, float %1187)  ; FMin(a,b)
  %1189 = fsub fast float 1.000000e+00, %398
  %1190 = fmul fast float %1188, %1189
  %1191 = fsub fast float 1.000000e+00, %1190
  %1192 = bitcast float %1191 to i32
  %1193 = sub nsw i32 2129859010, %1192
  %1194 = bitcast i32 %1193 to float
  %1195 = call float @dx.op.binary.f32(i32 36, float %298, float %1187)  ; FMin(a,b)
  %1196 = fmul fast float %1195, %1189
  %1197 = fsub fast float 1.000000e+00, %1196
  %1198 = bitcast float %1197 to i32
  %1199 = sub nsw i32 2129859010, %1198
  %1200 = bitcast i32 %1199 to float
  %1201 = call float @dx.op.binary.f32(i32 36, float %299, float %1187)  ; FMin(a,b)
  %1202 = fmul fast float %1201, %1189
  %1203 = fsub fast float 1.000000e+00, %1202
  %1204 = bitcast float %1203 to i32
  %1205 = sub nsw i32 2129859010, %1204
  %1206 = bitcast i32 %1205 to float
  %1207 = fmul fast float %1183, %398
  %1208 = fmul fast float %1207, %1194
  %1209 = fmul fast float %1184, %398
  %1210 = fmul fast float %1209, %1200
  %1211 = fmul fast float %1185, %398
  %1212 = fmul fast float %1211, %1206
  %1213 = call float @dx.op.dot3.f32(i32 55, float %1208, float %1210, float %1212, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1214 = select i1 %384, float 0.000000e+00, float %1208
  %1215 = select i1 %384, float %1213, float %1210
  %1216 = select i1 %384, float 0.000000e+00, float %1212
  %1217 = fsub fast float 1.000000e+00, %306
  %1218 = fsub fast float 1.000000e+00, %307
  %1219 = fsub fast float 1.000000e+00, %388
  %1220 = fmul fast float %340, %1217
  %1221 = fmul fast float %340, %1218
  %1222 = fmul fast float %1219, %340
  %1223 = fadd fast float %1220, %306
  %1224 = fadd fast float %1221, %307
  %1225 = fadd fast float %1222, %388
  %1226 = call float @dx.op.binary.f32(i32 35, float %1224, float %1225)  ; FMax(a,b)
  %1227 = call float @dx.op.binary.f32(i32 35, float %1223, float %1226)  ; FMax(a,b)
  %1228 = fsub fast float 1.000000e+00, %1227
  %1229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.i32 %1229, 0
  %1231 = and i32 %1230, 524288
  %1232 = icmp ne i32 %1231, 0
  %1233 = select i1 %1232, float 0.000000e+00, float 1.000000e+00
  %1234 = xor i1 %1232, true
  %1235 = zext i1 %1234 to i32
  br i1 %1232, label %1236, label %1455

; <label>:1236                                    ; preds = %1168
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.CBufRet.f32 %1237, 2
  %1241 = extractvalue %dx.types.CBufRet.f32 %1237, 3
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.CBufRet.f32 %1242, 2
  %1246 = extractvalue %dx.types.CBufRet.f32 %1242, 3
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.CBufRet.f32 %1247, 2
  %1251 = extractvalue %dx.types.CBufRet.f32 %1247, 3
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1255 = extractvalue %dx.types.CBufRet.f32 %1252, 2
  %1256 = extractvalue %dx.types.CBufRet.f32 %1252, 3
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1260 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1261 = extractvalue %dx.types.CBufRet.f32 %1257, 3
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.CBufRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.CBufRet.f32 %1262, 2
  %1266 = extractvalue %dx.types.CBufRet.f32 %1262, 3
  %1267 = call float @dx.op.dot3.f32(i32 55, float %1263, float %1264, float %1265, float %395, float %396, float %397)  ; Dot3(ax,ay,az,bx,by,bz)
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1270 = fmul fast float %1267, 8.000000e+00
  %1271 = fmul fast float %1270, %1269
  %1272 = call float @dx.op.unary.f32(i32 7, float %1271)  ; Saturate(value)
  %1273 = fcmp fast ogt float %1272, 0.000000e+00
  br i1 %1273, label %1274, label %1442, !dx.controlflow.hints !61

; <label>:1274                                    ; preds = %1236
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 1
  %1277 = fmul fast float %227, 2.000000e+00
  %1278 = fmul fast float %228, 2.000000e+00
  %1279 = fadd fast float %1277, -1.000000e+00
  %1280 = fadd fast float %1278, -1.000000e+00
  %1281 = fmul fast float %1276, %1279
  %1282 = fmul fast float %1276, %1280
  %1283 = fadd fast float %1281, %42
  %1284 = fadd fast float %1282, %43
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1287 = extractvalue %dx.types.CBufRet.f32 %1285, 3
  %1288 = fmul fast float %1283, %1286
  %1289 = fmul fast float %1284, %1287
  %1290 = fadd fast float %344, 0xBFE3333340000000
  %1291 = fmul fast float %1290, 0x4004000020000000
  %1292 = fsub fast float 1.000000e+00, %1291
  %1293 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1294 = fmul fast float %1293, 3.000000e+00
  %1295 = fadd fast float %1294, %227
  %1296 = call float @dx.op.unary.f32(i32 27, float %1295)  ; Round_ni(value)
  %1297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %29, float %1288, float %1289, float %1296, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = fcmp fast une float %1298, 0xFFF0000000000000
  %1300 = fcmp fast une float %1298, 0x7FF0000000000000
  %1301 = and i1 %1299, %1300
  %1302 = fcmp fast olt float %1298, 0.000000e+00
  %1303 = call float @dx.op.unary.f32(i32 6, float %1298)  ; FAbs(value)
  %1304 = fsub fast float 1.000000e+00, %1303
  %1305 = select i1 %1301, float 1.000000e+00, float 0.000000e+00
  %1306 = fmul fast float %1305, %1272
  %1307 = fcmp fast ogt float %1306, 0.000000e+00
  br i1 %1307, label %1308, label %1442, !dx.controlflow.hints !62

; <label>:1308                                    ; preds = %1274
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.CBufRet.f32 %1309, 1
  %1312 = extractvalue %dx.types.CBufRet.f32 %1309, 2
  %1313 = select i1 %1302, float 0.000000e+00, float %1310
  %1314 = select i1 %1302, float 0.000000e+00, float %1311
  %1315 = select i1 %1302, float 0.000000e+00, float %1312
  %1316 = select i1 %1302, float %1238, float %1253
  %1317 = select i1 %1302, float %1243, float %1258
  %1318 = select i1 %1302, float %1248, float %1263
  %1319 = select i1 %1302, float %1239, float %1254
  %1320 = select i1 %1302, float %1244, float %1259
  %1321 = select i1 %1302, float %1249, float %1264
  %1322 = select i1 %1302, float %1240, float %1255
  %1323 = select i1 %1302, float %1245, float %1260
  %1324 = select i1 %1302, float %1250, float %1265
  %1325 = select i1 %1302, float %1241, float %1256
  %1326 = select i1 %1302, float %1246, float %1261
  %1327 = select i1 %1302, float %1251, float %1266
  %1328 = fadd fast float %1313, %82
  %1329 = fadd fast float %1314, %83
  %1330 = fadd fast float %1315, %84
  %1331 = fmul fast float %1328, %1316
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1329, float %1319, float %1331)  ; FMad(a,b,c)
  %1333 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1322, float %1332)  ; FMad(a,b,c)
  %1334 = fadd fast float %1333, %1325
  %1335 = fmul fast float %1328, %1317
  %1336 = call float @dx.op.tertiary.f32(i32 46, float %1329, float %1320, float %1335)  ; FMad(a,b,c)
  %1337 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1323, float %1336)  ; FMad(a,b,c)
  %1338 = fadd fast float %1337, %1326
  %1339 = fmul fast float %1328, %1318
  %1340 = call float @dx.op.tertiary.f32(i32 46, float %1329, float %1321, float %1339)  ; FMad(a,b,c)
  %1341 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1324, float %1340)  ; FMad(a,b,c)
  %1342 = fadd fast float %1341, %1327
  %1343 = fdiv fast float 1.000000e+00, %1342
  %1344 = fmul fast float %1343, %1334
  %1345 = fmul fast float %1343, %1338
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 0
  %1348 = extractvalue %dx.types.CBufRet.f32 %1346, 1
  %1349 = fmul fast float %1344, %1347
  %1350 = fmul fast float %1345, %1348
  %1351 = extractvalue %dx.types.CBufRet.f32 %1346, 2
  %1352 = extractvalue %dx.types.CBufRet.f32 %1346, 3
  %1353 = fadd fast float %1349, %1351
  %1354 = fadd fast float %1350, %1352
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 3
  %1357 = fmul fast float %1356, %395
  %1358 = fmul fast float %1356, %396
  %1359 = fmul fast float %1356, %397
  %1360 = fadd fast float %1357, %1328
  %1361 = fadd fast float %1358, %1329
  %1362 = fadd fast float %1359, %1330
  %1363 = fmul fast float %1360, %1316
  %1364 = call float @dx.op.tertiary.f32(i32 46, float %1361, float %1319, float %1363)  ; FMad(a,b,c)
  %1365 = call float @dx.op.tertiary.f32(i32 46, float %1362, float %1322, float %1364)  ; FMad(a,b,c)
  %1366 = fadd fast float %1365, %1325
  %1367 = fmul fast float %1360, %1317
  %1368 = call float @dx.op.tertiary.f32(i32 46, float %1361, float %1320, float %1367)  ; FMad(a,b,c)
  %1369 = call float @dx.op.tertiary.f32(i32 46, float %1362, float %1323, float %1368)  ; FMad(a,b,c)
  %1370 = fadd fast float %1369, %1326
  %1371 = fmul fast float %1360, %1318
  %1372 = call float @dx.op.tertiary.f32(i32 46, float %1361, float %1321, float %1371)  ; FMad(a,b,c)
  %1373 = call float @dx.op.tertiary.f32(i32 46, float %1362, float %1324, float %1372)  ; FMad(a,b,c)
  %1374 = fadd fast float %1373, %1327
  %1375 = fdiv fast float 1.000000e+00, %1374
  %1376 = fmul fast float %1375, %1366
  %1377 = fmul fast float %1375, %1370
  %1378 = fmul fast float %1353, 2.000000e+00
  %1379 = fadd fast float %1378, -1.000000e+00
  %1380 = call float @dx.op.unary.f32(i32 6, float %1379)  ; FAbs(value)
  %1381 = fmul fast float %1380, 5.000000e+00
  %1382 = fadd fast float %1381, -4.000000e+00
  %1383 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1384 = fsub fast float %1344, %1376
  %1385 = fmul fast float %1347, %1384
  %1386 = fmul fast float %1385, %1383
  %1387 = fsub fast float %1376, %1344
  %1388 = fmul fast float %1347, %1387
  %1389 = fadd fast float %1388, %1386
  %1390 = fsub fast float %1377, %1345
  %1391 = fmul fast float %1348, %1390
  %1392 = fmul fast float %1389, %1304
  %1393 = fmul fast float %1391, %1304
  %1394 = fadd fast float %1392, %1353
  %1395 = fadd fast float %1393, %1354
  %1396 = fsub fast float %1375, %1343
  %1397 = fmul fast float %1396, %1304
  %1398 = fadd fast float %1397, %1343
  %1399 = fdiv fast float 1.000000e+00, %1398
  %1400 = extractvalue %dx.types.CBufRet.f32 %1268, 3
  %1401 = fadd fast float %344, -1.000000e+00
  %1402 = fsub fast float %1399, %1342
  %1403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %1404 = extractvalue %dx.types.CBufRet.f32 %1403, 2
  %1405 = fmul fast float %1404, %1399
  %1406 = fdiv fast float 1.600000e+02, %1405
  %1407 = fmul fast float %1401, %1401
  %1408 = fmul fast float %1407, 0xBFB5B17960000000
  %1409 = fmul fast float %1408, %1402
  %1410 = fmul fast float %1409, %1406
  %1411 = call float @dx.op.unary.f32(i32 21, float %1410)  ; Exp(value)
  %1412 = fmul fast float %1411, 0x3FF04B2960000000
  %1413 = fsub fast float 0x3FF04B2960000000, %1412
  %1414 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1415 = fmul fast float %1414, 4.000000e+00
  %1416 = fadd fast float %1415, %1400
  %1417 = fadd fast float %227, -5.000000e-01
  %1418 = fadd fast float %228, -5.000000e-01
  %1419 = fmul fast float %1416, 0x3F9EB851E0000000
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1421 = fmul fast float %1420, %1417
  %1422 = fmul fast float %1420, %1418
  %1423 = fadd fast float %1394, %1421
  %1424 = fadd fast float %1395, %1422
  %1425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %27, float %1423, float %1424, float undef, float undef, i32 0, i32 0, i32 undef, float %1416)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1426 = extractvalue %dx.types.ResRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.ResRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.ResRet.f32 %1425, 2
  %1429 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1430 = fmul fast float %1429, %1426
  %1431 = fmul fast float %1429, %1427
  %1432 = fmul fast float %1429, %1428
  %1433 = select i1 %384, float 0.000000e+00, float %1431
  %1434 = select i1 %384, float 0.000000e+00, float %1432
  %1435 = fmul fast float %1424, 2.000000e+00
  %1436 = fadd fast float %1435, -1.000000e+00
  %1437 = fmul fast float %1436, %1436
  %1438 = fsub fast float 1.000000e+00, %1437
  %1439 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1441 = fmul fast float %1440, %1306
  br label %1442

; <label>:1442                                    ; preds = %1308, %1274, %1236
  %1443 = phi float [ %1430, %1308 ], [ 0.000000e+00, %1274 ], [ 0.000000e+00, %1236 ]
  %1444 = phi float [ %1433, %1308 ], [ 0.000000e+00, %1274 ], [ 0.000000e+00, %1236 ]
  %1445 = phi float [ %1434, %1308 ], [ 0.000000e+00, %1274 ], [ 0.000000e+00, %1236 ]
  %1446 = phi float [ %1441, %1308 ], [ 0.000000e+00, %1274 ], [ 0.000000e+00, %1236 ]
  %1447 = fcmp fast olt float %1446, 1.000000e+00
  %1448 = or i1 %1447, %1234
  %1449 = zext i1 %1448 to i32
  %1450 = fmul fast float %1446, %1233
  %1451 = fsub fast float %1446, %1450
  %1452 = fmul fast float %1451, %1443
  %1453 = fmul fast float %1451, %1444
  %1454 = fmul fast float %1451, %1445
  br label %1455

; <label>:1455                                    ; preds = %1442, %1168
  %1456 = phi float [ 0.000000e+00, %1168 ], [ %1451, %1442 ]
  %1457 = phi float [ 0.000000e+00, %1168 ], [ %1452, %1442 ]
  %1458 = phi float [ 0.000000e+00, %1168 ], [ %1453, %1442 ]
  %1459 = phi float [ 0.000000e+00, %1168 ], [ %1454, %1442 ]
  %1460 = phi i32 [ %1235, %1168 ], [ %1449, %1442 ]
  %1461 = icmp eq i32 %1460, 0
  br i1 %1461, label %1899, label %1462

; <label>:1462                                    ; preds = %1455
  %1463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1463, 2
  %1465 = extractvalue %dx.types.CBufRet.f32 %1463, 3
  %1466 = fmul fast float %1464, %42
  %1467 = fmul fast float %1465, %43
  %1468 = fptoui float %1466 to i32
  %1469 = fptoui float %1467 to i32
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1473 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  %1474 = fadd fast float %39, -4.000000e+00
  %1475 = call float @dx.op.binary.f32(i32 35, float %1474, float 0.000000e+00)  ; FMax(a,b)
  %1476 = fadd fast float %1475, %1471
  %1477 = fmul fast float %1476, %1472
  %1478 = call float @dx.op.unary.f32(i32 23, float %1477)  ; Log(value)
  %1479 = fmul fast float %1478, %1473
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 2
  %1482 = fmul fast float %1479, %1481
  %1483 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  %1484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.i32 %1484, 1
  %1486 = add i32 %1485, -1
  %1487 = uitofp i32 %1485 to float
  %1488 = fmul fast float %1487, %1483
  %1489 = fptoui float %1488 to i32
  %1490 = call i32 @dx.op.binary.i32(i32 40, i32 %1489, i32 %1486)  ; UMin(a,b)
  %1491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.i32 %1491, 2
  %1493 = extractvalue %dx.types.CBufRet.i32 %1491, 3
  %1494 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1469, i32 %1492, i32 %1468)  ; UMad(a,b,c)
  %1495 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1490, i32 %1493, i32 %1494)  ; UMad(a,b,c)
  %1496 = call float @dx.op.binary.f32(i32 35, float %39, float 0.000000e+00)  ; FMax(a,b)
  %1497 = fptoui float %1496 to i32
  %1498 = lshr i32 %1497, 5
  %1499 = call i32 @dx.op.binary.i32(i32 40, i32 %1498, i32 8191)  ; UMin(a,b)
  %1500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.i32 %1500, 2
  %1502 = add nsw i32 %1501, -1
  %1503 = call i32 @dx.op.binary.i32(i32 37, i32 %1502, i32 0)  ; IMax(a,b)
  %1504 = shl i32 %1499, 2
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = lshr i32 %1506, 16
  %1508 = and i32 %1506, 65535
  %1509 = lshr i32 %1506, 21
  %1510 = lshr i32 %1508, 5
  %1511 = call i32 @dx.op.binary.i32(i32 40, i32 %1510, i32 %1503)  ; UMin(a,b)
  %1512 = icmp ugt i32 %1509, %1511
  br i1 %1512, label %1875, label %1513

; <label>:1513                                    ; preds = %1462
  br label %1514

; <label>:1514                                    ; preds = %1867, %1513
  %1515 = phi float [ %1868, %1867 ], [ 0.000000e+00, %1513 ]
  %1516 = phi float [ %1869, %1867 ], [ 0.000000e+00, %1513 ]
  %1517 = phi float [ %1870, %1867 ], [ 0.000000e+00, %1513 ]
  %1518 = phi float [ %1871, %1867 ], [ 1.000000e+00, %1513 ]
  %1519 = phi i32 [ %1872, %1867 ], [ %1509, %1513 ]
  %1520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.i32 %1520, 2
  %1522 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1495, i32 %1521, i32 %1519)  ; UMad(a,b,c)
  %1523 = shl i32 %1522, 2
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = shl i32 %1519, 5
  %1527 = sub nsw i32 %1507, %1526
  %1528 = call i32 @dx.op.binary.i32(i32 37, i32 %1527, i32 0)  ; IMax(a,b)
  %1529 = call i32 @dx.op.binary.i32(i32 38, i32 %1528, i32 31)  ; IMin(a,b)
  %1530 = sub nsw i32 1, %1507
  %1531 = add nsw i32 %1530, %1508
  %1532 = call i32 @dx.op.binary.i32(i32 37, i32 %1531, i32 0)  ; IMax(a,b)
  %1533 = call i32 @dx.op.binary.i32(i32 38, i32 %1532, i32 32)  ; IMin(a,b)
  %1534 = and i32 %1533, 31
  %1535 = shl i32 -1, %1534
  %1536 = xor i32 %1535, -1
  %1537 = and i32 %1529, 31
  %1538 = shl i32 %1536, %1537
  %1539 = icmp eq i32 %1533, 32
  %1540 = select i1 %1539, i32 -1, i32 %1538
  %1541 = and i32 %1540, %1525
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1867, label %1543

; <label>:1543                                    ; preds = %1514
  br label %1544

; <label>:1544                                    ; preds = %1650, %1543
  %1545 = phi float [ %1651, %1650 ], [ %1515, %1543 ]
  %1546 = phi float [ %1652, %1650 ], [ %1516, %1543 ]
  %1547 = phi float [ %1653, %1650 ], [ %1517, %1543 ]
  %1548 = phi float [ %1654, %1650 ], [ %1518, %1543 ]
  %1549 = phi i32 [ %1554, %1650 ], [ %1541, %1543 ]
  %1550 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1549)  ; FirstbitLo(value)
  %1551 = add i32 %1550, %1526
  %1552 = and i32 %1550, 31
  %1553 = shl i32 1, %1552
  %1554 = xor i32 %1553, %1549
  %1555 = mul i32 %1551, 72
  %1556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1555, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.ResRet.f32 %1556, 1
  %1559 = extractvalue %dx.types.ResRet.f32 %1556, 2
  %1560 = add i32 %1555, 12
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = add i32 %1555, 16
  %1564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.f32 %1564, 0
  %1566 = extractvalue %dx.types.ResRet.f32 %1564, 1
  %1567 = extractvalue %dx.types.ResRet.f32 %1564, 2
  %1568 = add i32 %1555, 28
  %1569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1568, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.f32 %1569, 0
  %1571 = add i32 %1555, 32
  %1572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.ResRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.ResRet.f32 %1572, 2
  %1576 = extractvalue %dx.types.ResRet.f32 %1572, 3
  %1577 = add i32 %1555, 48
  %1578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.f32 %1578, 0
  %1580 = extractvalue %dx.types.ResRet.f32 %1578, 1
  %1581 = add i32 %1555, 56
  %1582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1581, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.ResRet.f32 %1582, 1
  %1585 = add i32 %1555, 64
  %1586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.f32 %1586, 0
  %1588 = extractvalue %dx.types.ResRet.f32 %1586, 1
  %1589 = mul i32 %1551, 60
  %1590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.ResRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.ResRet.f32 %1590, 2
  %1594 = add i32 %1589, 12
  %1595 = add i32 %1589, 48
  %1596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.ResRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.ResRet.f32 %1596, 2
  %1600 = and i32 %1562, 32767
  %1601 = bitcast float %1557 to i32
  %1602 = icmp eq i32 %1601, -1
  %1603 = bitcast float %1558 to i32
  %1604 = and i32 %1562, 32768
  %1605 = icmp ne i32 %1604, 0
  %1606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1607 = extractvalue %dx.types.CBufRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.CBufRet.f32 %1606, 1
  %1609 = extractvalue %dx.types.CBufRet.f32 %1606, 2
  %1610 = fsub fast float %1591, %1607
  %1611 = fsub fast float %1592, %1608
  %1612 = fsub fast float %1593, %1609
  %1613 = fsub fast float %82, %1610
  %1614 = fsub fast float %83, %1611
  %1615 = fsub fast float %84, %1612
  %1616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.f32 %1616, 0
  %1618 = extractvalue %dx.types.ResRet.f32 %1616, 1
  %1619 = extractvalue %dx.types.ResRet.f32 %1616, 2
  %1620 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float %1617, float %1618, float %1619)  ; Dot3(ax,ay,az,bx,by,bz)
  %1621 = add i32 %1589, 24
  %1622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.ResRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.ResRet.f32 %1622, 2
  %1626 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float %1623, float %1624, float %1625)  ; Dot3(ax,ay,az,bx,by,bz)
  %1627 = add i32 %1589, 36
  %1628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1627, i32 undef)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.f32 %1628, 0
  %1630 = extractvalue %dx.types.ResRet.f32 %1628, 1
  %1631 = extractvalue %dx.types.ResRet.f32 %1628, 2
  %1632 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float %1629, float %1630, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1633 = call float @dx.op.unary.f32(i32 6, float %1620)  ; FAbs(value)
  %1634 = call float @dx.op.unary.f32(i32 6, float %1626)  ; FAbs(value)
  %1635 = call float @dx.op.unary.f32(i32 6, float %1632)  ; FAbs(value)
  %1636 = fsub fast float %1597, %1633
  %1637 = fsub fast float %1598, %1634
  %1638 = fsub fast float %1599, %1635
  %1639 = fmul fast float %1636, %1565
  %1640 = fmul fast float %1637, %1566
  %1641 = fmul fast float %1638, %1567
  %1642 = call float @dx.op.binary.f32(i32 36, float %1640, float %1641)  ; FMin(a,b)
  %1643 = call float @dx.op.binary.f32(i32 36, float %1639, float %1642)  ; FMin(a,b)
  %1644 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  %1645 = call float @dx.op.binary.f32(i32 36, float %1548, float %1644)  ; FMin(a,b)
  %1646 = uitofp i1 %1605 to float
  %1647 = fsub fast float 1.000000e+00, %1646
  %1648 = fmul fast float %1645, %1647
  %1649 = fcmp fast ogt float %1648, 0.000000e+00
  br i1 %1649, label %1656, label %1650

; <label>:1650                                    ; preds = %1798, %1544
  %1651 = phi float [ %1862, %1798 ], [ %1545, %1544 ]
  %1652 = phi float [ %1863, %1798 ], [ %1546, %1544 ]
  %1653 = phi float [ %1864, %1798 ], [ %1547, %1544 ]
  %1654 = phi float [ %1865, %1798 ], [ %1548, %1544 ]
  %1655 = icmp eq i32 %1549, %1553
  br i1 %1655, label %1866, label %1544

; <label>:1656                                    ; preds = %1544
  br i1 %1602, label %1714, label %1657

; <label>:1657                                    ; preds = %1656
  %1658 = fsub fast float -0.000000e+00, %1617
  %1659 = fsub fast float -0.000000e+00, %1618
  %1660 = fsub fast float -0.000000e+00, %1619
  %1661 = call float @dx.op.dot3.f32(i32 55, float %395, float %396, float %397, float %1658, float %1659, float %1660)  ; Dot3(ax,ay,az,bx,by,bz)
  %1662 = fsub fast float -0.000000e+00, %1661
  %1663 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float %1658, float %1659, float %1660)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = fadd fast float %1663, %1580
  %1665 = fadd fast float %1579, %1663
  %1666 = fsub fast float -0.000000e+00, %1665
  %1667 = fcmp ogt float %1661, -0.000000e+00
  %1668 = select i1 %1667, float %1666, float %1664
  %1669 = call float @dx.op.unary.f32(i32 6, float %1662)  ; FAbs(value)
  %1670 = fdiv fast float 1.000000e+00, %1669
  %1671 = fmul fast float %1668, %1670
  %1672 = call float @dx.op.binary.f32(i32 35, float %1671, float 0.000000e+00)  ; FMax(a,b)
  %1673 = fsub fast float -0.000000e+00, %1623
  %1674 = fsub fast float -0.000000e+00, %1624
  %1675 = fsub fast float -0.000000e+00, %1625
  %1676 = call float @dx.op.dot3.f32(i32 55, float %395, float %396, float %397, float %1673, float %1674, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1677 = fsub fast float -0.000000e+00, %1676
  %1678 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float %1673, float %1674, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1679 = fadd fast float %1678, %1584
  %1680 = fadd fast float %1583, %1678
  %1681 = fsub fast float -0.000000e+00, %1680
  %1682 = fcmp ogt float %1676, -0.000000e+00
  %1683 = select i1 %1682, float %1681, float %1679
  %1684 = call float @dx.op.unary.f32(i32 6, float %1677)  ; FAbs(value)
  %1685 = fdiv fast float 1.000000e+00, %1684
  %1686 = fmul fast float %1683, %1685
  %1687 = call float @dx.op.binary.f32(i32 35, float %1686, float 0.000000e+00)  ; FMax(a,b)
  %1688 = fsub fast float -0.000000e+00, %1629
  %1689 = fsub fast float -0.000000e+00, %1630
  %1690 = fsub fast float -0.000000e+00, %1631
  %1691 = call float @dx.op.dot3.f32(i32 55, float %395, float %396, float %397, float %1688, float %1689, float %1690)  ; Dot3(ax,ay,az,bx,by,bz)
  %1692 = fsub fast float -0.000000e+00, %1691
  %1693 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float %1688, float %1689, float %1690)  ; Dot3(ax,ay,az,bx,by,bz)
  %1694 = fadd fast float %1693, %1588
  %1695 = fadd fast float %1587, %1693
  %1696 = fsub fast float -0.000000e+00, %1695
  %1697 = fcmp ogt float %1691, -0.000000e+00
  %1698 = select i1 %1697, float %1696, float %1694
  %1699 = call float @dx.op.unary.f32(i32 6, float %1692)  ; FAbs(value)
  %1700 = fdiv fast float 1.000000e+00, %1699
  %1701 = fmul fast float %1698, %1700
  %1702 = call float @dx.op.binary.f32(i32 35, float %1701, float 0.000000e+00)  ; FMax(a,b)
  %1703 = call float @dx.op.binary.f32(i32 36, float %1687, float %1702)  ; FMin(a,b)
  %1704 = call float @dx.op.binary.f32(i32 36, float %1672, float %1703)  ; FMin(a,b)
  %1705 = fmul fast float %1704, %395
  %1706 = fmul fast float %1704, %396
  %1707 = fmul fast float %1704, %397
  %1708 = fadd fast float %1705, %82
  %1709 = fadd fast float %1706, %83
  %1710 = fadd fast float %1707, %84
  %1711 = fsub fast float %1708, %1557
  %1712 = fsub fast float %1709, %1558
  %1713 = fsub fast float %1710, %1559
  br label %1721

; <label>:1714                                    ; preds = %1656
  %1715 = fmul fast float %395, 8.096000e+03
  %1716 = fmul fast float %396, 8.096000e+03
  %1717 = fmul fast float %397, 8.096000e+03
  %1718 = fadd fast float %1715, %82
  %1719 = fadd fast float %1716, %83
  %1720 = fadd fast float %1717, %84
  br label %1721

; <label>:1721                                    ; preds = %1714, %1657
  %1722 = phi float [ %395, %1714 ], [ %1711, %1657 ]
  %1723 = phi float [ %396, %1714 ], [ %1712, %1657 ]
  %1724 = phi float [ %397, %1714 ], [ %1713, %1657 ]
  %1725 = phi float [ %1718, %1714 ], [ %1708, %1657 ]
  %1726 = phi float [ %1719, %1714 ], [ %1709, %1657 ]
  %1727 = phi float [ %1720, %1714 ], [ %1710, %1657 ]
  %1728 = fcmp fast olt float %1576, 1.000000e+00
  br i1 %1728, label %1729, label %1760, !dx.controlflow.hints !63

; <label>:1729                                    ; preds = %1721
  %1730 = fmul fast float %1724, %1574
  %1731 = fmul fast float %1723, %1575
  %1732 = fsub fast float %1730, %1731
  %1733 = fmul fast float %1722, %1575
  %1734 = fmul fast float %1724, %1573
  %1735 = fsub fast float %1733, %1734
  %1736 = fmul fast float %1723, %1573
  %1737 = fmul fast float %1722, %1574
  %1738 = fsub fast float %1736, %1737
  %1739 = fmul fast float %1732, 2.000000e+00
  %1740 = fmul fast float %1735, 2.000000e+00
  %1741 = fmul fast float %1738, 2.000000e+00
  %1742 = fmul fast float %1739, %1576
  %1743 = fmul fast float %1740, %1576
  %1744 = fmul fast float %1741, %1576
  %1745 = fmul fast float %1741, %1574
  %1746 = fmul fast float %1740, %1575
  %1747 = fmul fast float %1739, %1575
  %1748 = fmul fast float %1741, %1573
  %1749 = fmul fast float %1740, %1573
  %1750 = fmul fast float %1739, %1574
  %1751 = fadd fast float %1745, %1722
  %1752 = fadd fast float %1751, %1742
  %1753 = fsub fast float %1752, %1746
  %1754 = fsub fast float %1723, %1748
  %1755 = fadd fast float %1754, %1743
  %1756 = fadd fast float %1755, %1747
  %1757 = fadd fast float %1744, %1724
  %1758 = fsub fast float %1757, %1750
  %1759 = fadd fast float %1758, %1749
  br label %1760

; <label>:1760                                    ; preds = %1729, %1721
  %1761 = phi float [ %1753, %1729 ], [ %1722, %1721 ]
  %1762 = phi float [ %1756, %1729 ], [ %1723, %1721 ]
  %1763 = phi float [ %1759, %1729 ], [ %1724, %1721 ]
  br i1 %1602, label %1795, label %1764

; <label>:1764                                    ; preds = %1760
  %1765 = fmul fast float %344, 0x400187C840000000
  %1766 = fadd fast float %1765, 0xC00EFC2120000000
  %1767 = fmul fast float %1766, %344
  %1768 = fadd fast float %1767, 0x3FE5D16340000000
  %1769 = fmul fast float %1768, %344
  %1770 = fadd fast float %1769, 1.000000e+00
  %1771 = call float @dx.op.unary.f32(i32 7, float %1770)  ; Saturate(value)
  %1772 = fsub fast float %1725, %82
  %1773 = fsub fast float %1726, %83
  %1774 = fsub fast float %1727, %84
  %1775 = fsub fast float %1725, %1557
  %1776 = fsub fast float %1726, %1558
  %1777 = fsub fast float %1727, %1559
  %1778 = call float @dx.op.dot3.f32(i32 55, float %1772, float %1773, float %1774, float %1772, float %1773, float %1774)  ; Dot3(ax,ay,az,bx,by,bz)
  %1779 = call float @dx.op.dot3.f32(i32 55, float %1775, float %1776, float %1777, float %1775, float %1776, float %1777)  ; Dot3(ax,ay,az,bx,by,bz)
  %1780 = fadd fast float %1779, 0x3EE4F8B580000000
  %1781 = fdiv fast float %1778, %1780
  %1782 = bitcast float %1781 to i32
  %1783 = ashr i32 %1782, 1
  %1784 = add nsw i32 %1783, 532487669
  %1785 = bitcast i32 %1784 to float
  %1786 = fmul fast float %1785, %1771
  %1787 = call float @dx.op.unary.f32(i32 7, float %1786)  ; Saturate(value)
  %1788 = fmul fast float %1787, 0x4009981AE0000000
  %1789 = fsub fast float 0x40111BBD80000000, %1788
  %1790 = fmul fast float %1789, %1787
  %1791 = fadd fast float %1790, 0xC0009F6020000000
  %1792 = fmul fast float %1791, %1787
  %1793 = fadd fast float %1792, 1.000000e+00
  %1794 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  br label %1798

; <label>:1795                                    ; preds = %1760
  %1796 = icmp ne i32 %1603, -1
  %1797 = zext i1 %1796 to i32
  br label %1798

; <label>:1798                                    ; preds = %1795, %1764
  %1799 = phi float [ %344, %1795 ], [ %1794, %1764 ]
  %1800 = phi i32 [ %1797, %1795 ], [ 0, %1764 ]
  %1801 = fmul float %1799, 5.000000e+00
  %1802 = fsub float 5.000000e+00, %1801
  %1803 = icmp ne i32 %1800, 0
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 3
  %1806 = fadd fast float %1805, %1802
  %1807 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1806)  ; FMax(a,b)
  %1808 = call float @dx.op.unary.f32(i32 6, float %1761)  ; FAbs(value)
  %1809 = call float @dx.op.unary.f32(i32 6, float %1762)  ; FAbs(value)
  %1810 = fadd fast float %1809, %1808
  %1811 = call float @dx.op.unary.f32(i32 6, float %1763)  ; FAbs(value)
  %1812 = fadd fast float %1810, %1811
  %1813 = fcmp fast oeq float %1812, 0.000000e+00
  %1814 = fdiv fast float 1.000000e+00, %1812
  %1815 = select i1 %1813, float 1.000000e+00, float %1814
  %1816 = fmul fast float %1815, %1761
  %1817 = fmul fast float %1815, %1762
  %1818 = call float @dx.op.unary.f32(i32 6, float %1817)  ; FAbs(value)
  %1819 = call float @dx.op.unary.f32(i32 6, float %1816)  ; FAbs(value)
  %1820 = fsub fast float 1.000000e+00, %1818
  %1821 = fsub fast float 1.000000e+00, %1819
  %1822 = fcmp fast oge float %1816, 0.000000e+00
  %1823 = fcmp fast oge float %1817, 0.000000e+00
  %1824 = select i1 %1822, float 1.000000e+00, float -1.000000e+00
  %1825 = select i1 %1823, float 1.000000e+00, float -1.000000e+00
  %1826 = fcmp fast ole float %1763, 0.000000e+00
  %1827 = fmul fast float %1824, %1820
  %1828 = fmul fast float %1825, %1821
  %1829 = select i1 %1826, float %1827, float %1816
  %1830 = select i1 %1826, float %1828, float %1817
  %1831 = fmul fast float %1829, 5.000000e-01
  %1832 = fmul fast float %1830, 5.000000e-01
  %1833 = fadd fast float %1831, 5.000000e-01
  %1834 = fadd fast float %1832, 5.000000e-01
  %1835 = uitofp i32 %1600 to float
  %1836 = call float @dx.op.binary.f32(i32 36, float %1807, float 3.000000e+00)  ; FMin(a,b)
  %1837 = fadd fast float %1836, 2.000000e+00
  %1838 = call float @dx.op.unary.f32(i32 21, float %1837)  ; Exp(value)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1804, 1
  %1840 = fmul fast float %1839, %1838
  %1841 = fmul fast float %1840, 2.000000e+00
  %1842 = fsub fast float 1.000000e+00, %1841
  %1843 = fmul fast float %1833, %1842
  %1844 = fmul fast float %1834, %1842
  %1845 = fadd fast float %1843, %1840
  %1846 = fadd fast float %1844, %1840
  %1847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %27, float %1845, float %1846, float %1835, float undef, i32 0, i32 0, i32 undef, float %1807)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.ResRet.f32 %1847, 1
  %1850 = extractvalue %dx.types.ResRet.f32 %1847, 2
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 3
  %1853 = fmul fast float %1852, %1570
  %1854 = call float @dx.op.binary.f32(i32 36, float %1005, float %1853)  ; FMin(a,b)
  %1855 = select i1 %1803, float %1854, float %1853
  %1856 = fmul fast float %1848, %1648
  %1857 = fmul fast float %1856, %1855
  %1858 = fmul fast float %1849, %1648
  %1859 = fmul fast float %1858, %1855
  %1860 = fmul fast float %1850, %1648
  %1861 = fmul fast float %1860, %1855
  %1862 = fadd fast float %1857, %1545
  %1863 = fadd fast float %1859, %1546
  %1864 = fadd fast float %1861, %1547
  %1865 = fsub fast float %1548, %1648
  br label %1650

; <label>:1866                                    ; preds = %1650
  br label %1867

; <label>:1867                                    ; preds = %1866, %1514
  %1868 = phi float [ %1515, %1514 ], [ %1651, %1866 ]
  %1869 = phi float [ %1516, %1514 ], [ %1652, %1866 ]
  %1870 = phi float [ %1517, %1514 ], [ %1653, %1866 ]
  %1871 = phi float [ %1518, %1514 ], [ %1654, %1866 ]
  %1872 = add i32 %1519, 1
  %1873 = icmp ugt i32 %1872, %1511
  br i1 %1873, label %1874, label %1514, !llvm.loop !64

; <label>:1874                                    ; preds = %1867
  br label %1875

; <label>:1875                                    ; preds = %1874, %1462
  %1876 = phi float [ 0.000000e+00, %1462 ], [ %1868, %1874 ]
  %1877 = phi float [ 0.000000e+00, %1462 ], [ %1869, %1874 ]
  %1878 = phi float [ 0.000000e+00, %1462 ], [ %1870, %1874 ]
  %1879 = call float @dx.op.dot3.f32(i32 55, float %1876, float %1877, float %1878, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1880 = select i1 %384, float 0.000000e+00, float %1876
  %1881 = select i1 %384, float %1879, float %1877
  %1882 = select i1 %384, float 0.000000e+00, float %1878
  %1883 = fcmp fast olt float %1456, 0.000000e+00
  %1884 = call float @dx.op.unary.f32(i32 6, float %1456)  ; FAbs(value)
  %1885 = fmul fast float %1884, %1457
  %1886 = fmul fast float %1884, %1458
  %1887 = fmul fast float %1884, %1459
  %1888 = select i1 %1883, float %1457, float %1885
  %1889 = select i1 %1883, float %1458, float %1886
  %1890 = select i1 %1883, float %1459, float %1887
  %1891 = fsub fast float 1.000000e+00, %1884
  %1892 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  %1893 = fmul fast float %1892, %1880
  %1894 = fmul fast float %1892, %1881
  %1895 = fmul fast float %1892, %1882
  %1896 = fadd fast float %1888, %1893
  %1897 = fadd fast float %1889, %1894
  %1898 = fadd fast float %1890, %1895
  br label %1899

; <label>:1899                                    ; preds = %1875, %1455
  %1900 = phi float [ %1457, %1455 ], [ %1896, %1875 ]
  %1901 = phi float [ %1458, %1455 ], [ %1897, %1875 ]
  %1902 = phi float [ %1459, %1455 ], [ %1898, %1875 ]
  %1903 = fmul fast float %1214, %1228
  %1904 = fmul fast float %1215, %1228
  %1905 = fmul fast float %1216, %1228
  %1906 = fmul fast float %1900, %1223
  %1907 = fmul fast float %1901, %1224
  %1908 = fmul fast float %1902, %1225
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 3
  %1911 = fcmp fast oeq float %1910, 0.000000e+00
  br i1 %1911, label %2063, label %1912

; <label>:1912                                    ; preds = %1899
  %1913 = extractvalue %dx.types.CBufRet.f32 %1909, 0
  %1914 = extractvalue %dx.types.CBufRet.f32 %1909, 1
  %1915 = extractvalue %dx.types.CBufRet.f32 %1909, 2
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.CBufRet.f32 %1916, 1
  %1919 = extractvalue %dx.types.CBufRet.f32 %1916, 2
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 0
  %1922 = extractvalue %dx.types.CBufRet.f32 %1920, 1
  %1923 = call float @dx.op.dot3.f32(i32 55, float %1917, float %1918, float %1919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1924 = select i1 %384, float %1921, float %1917
  %1925 = select i1 %384, float %1923, float %1918
  %1926 = select i1 %384, float %1922, float %1919
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 1
  %1929 = fcmp fast une float %1928, 0.000000e+00
  br i1 %1929, label %1930, label %1947

; <label>:1930                                    ; preds = %1912
  %1931 = fptoui float %42 to i32
  %1932 = fptoui float %43 to i32
  %1933 = lshr i32 %1931, 4
  %1934 = lshr i32 %1932, 4
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 0
  %1937 = fptoui float %1936 to i32
  %1938 = add i32 %1937, 15
  %1939 = lshr i32 %1938, 4
  %1940 = mul i32 %1939, %1934
  %1941 = add i32 %1940, %1933
  %1942 = shl i32 %1941, 3
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = and i32 %1944, -268435456
  %1946 = icmp eq i32 %1945, -1342177280
  br i1 %1946, label %1957, label %1947

; <label>:1947                                    ; preds = %1930, %1912
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 2
  %1950 = extractvalue %dx.types.CBufRet.f32 %1948, 3
  %1951 = fmul fast float %1949, %42
  %1952 = fmul fast float %1950, %43
  %1953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %1951, float %1952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1954 = extractvalue %dx.types.ResRet.f32 %1953, 0
  %1955 = extractvalue %dx.types.ResRet.f32 %1953, 1
  %1956 = extractvalue %dx.types.ResRet.f32 %1953, 2
  br label %1957

; <label>:1957                                    ; preds = %1947, %1930
  %1958 = phi float [ %1954, %1947 ], [ 0.000000e+00, %1930 ]
  %1959 = phi float [ %1955, %1947 ], [ 0.000000e+00, %1930 ]
  %1960 = phi float [ %1956, %1947 ], [ 0.000000e+00, %1930 ]
  %1961 = call float @dx.op.binary.f32(i32 36, float %1959, float %1960)  ; FMin(a,b)
  %1962 = call float @dx.op.binary.f32(i32 36, float %1958, float %1961)  ; FMin(a,b)
  %1963 = fcmp fast ogt float %1962, 0.000000e+00
  br i1 %1963, label %1964, label %2063, !dx.controlflow.hints !66

; <label>:1964                                    ; preds = %1957
  %1965 = fmul fast float %1958, %1924
  %1966 = fmul fast float %1959, %1925
  %1967 = fmul fast float %1960, %1926
  %1968 = fsub fast float %1913, %313
  %1969 = fsub fast float %1914, %314
  %1970 = fsub fast float %1915, %315
  %1971 = call float @dx.op.dot3.f32(i32 55, float %1968, float %1969, float %1970, float %1968, float %1969, float %1970)  ; Dot3(ax,ay,az,bx,by,bz)
  %1972 = call float @dx.op.unary.f32(i32 25, float %1971)  ; Rsqrt(value)
  %1973 = fmul fast float %1972, %1968
  %1974 = fmul fast float %1972, %1969
  %1975 = fmul fast float %1972, %1970
  %1976 = call float @dx.op.dot3.f32(i32 55, float %1913, float %1914, float %1915, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %1977 = call float @dx.op.dot3.f32(i32 55, float %385, float %386, float %387, float %1973, float %1974, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1978 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1979 = fmul fast float %1978, %1978
  %1980 = fmul fast float %1979, %402
  %1981 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1982 = fmul fast float %1981, %1978
  %1983 = call float @dx.op.dot3.f32(i32 55, float %285, float %286, float %287, float %1973, float %1974, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1984 = fmul fast float %1983, %1983
  %1985 = call float @dx.op.unary.f32(i32 6, float %1976)  ; FAbs(value)
  %1986 = fsub fast float 1.000000e+00, %344
  %1987 = call float @dx.op.binary.f32(i32 35, float %1986, float 0x3F847AE140000000)  ; FMax(a,b)
  %1988 = fmul fast float %1987, %1987
  %1989 = fmul fast float %1988, %1988
  %1990 = fsub fast float 1.000000e+00, %1989
  %1991 = fmul fast float %390, %390
  %1992 = fmul fast float %1991, %1990
  %1993 = fadd fast float %1992, %1989
  %1994 = bitcast float %1993 to i32
  %1995 = ashr i32 %1994, 1
  %1996 = add nsw i32 %1995, 532487669
  %1997 = bitcast i32 %1996 to float
  %1998 = fadd fast float %1997, %390
  %1999 = fmul fast float %1989, %1984
  %2000 = fsub fast float 1.000000e+00, %1984
  %2001 = fadd fast float %2000, %1999
  %2002 = fmul fast float %1985, %1985
  %2003 = fmul fast float %2002, %1990
  %2004 = fadd fast float %2003, %1989
  %2005 = bitcast float %2004 to i32
  %2006 = ashr i32 %2005, 1
  %2007 = add nsw i32 %2006, 532487669
  %2008 = bitcast i32 %2007 to float
  %2009 = fadd fast float %2008, %1985
  %2010 = fmul fast float %2001, %2001
  %2011 = fmul fast float %2010, %1998
  %2012 = fmul fast float %2011, %2009
  %2013 = fdiv fast float 0x3FF0A00000000000, %2012
  %2014 = fmul fast float %2013, %1989
  %2015 = call float @dx.op.unary.f32(i32 6, float %1977)  ; FAbs(value)
  %2016 = fsub fast float 1.000000e+00, %2015
  %2017 = bitcast float %2016 to i32
  %2018 = sitofp i32 %2017 to float
  %2019 = fmul fast float %2018, 5.000000e+00
  %2020 = fadd fast float %2019, 0xC1EFBF8940000000
  %2021 = fptosi float %2020 to i32
  %2022 = bitcast i32 %2021 to float
  %2023 = fmul fast float %2022, %1217
  %2024 = fmul fast float %2022, %1218
  %2025 = fmul fast float %2022, %1219
  %2026 = fadd fast float %2023, %306
  %2027 = fadd fast float %2024, %307
  %2028 = fadd fast float %2025, %388
  %2029 = fmul fast float %1976, 9.843750e-01
  %2030 = fmul fast float %344, 9.843750e-01
  %2031 = fadd fast float %2029, 7.812500e-03
  %2032 = fadd fast float %2030, 7.812500e-03
  %2033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %2031, float %2032, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2034 = extractvalue %dx.types.ResRet.f32 %2033, 2
  %2035 = extractvalue %dx.types.ResRet.f32 %2033, 3
  %2036 = fmul fast float %2034, %306
  %2037 = fmul fast float %2034, %307
  %2038 = fmul fast float %2034, %388
  %2039 = fadd fast float %2036, %2035
  %2040 = fadd fast float %2037, %2035
  %2041 = fadd fast float %2038, %2035
  %2042 = call float @dx.op.binary.f32(i32 35, float %2040, float %2041)  ; FMax(a,b)
  %2043 = call float @dx.op.binary.f32(i32 35, float %2039, float %2042)  ; FMax(a,b)
  %2044 = fsub fast float 1.000000e+00, %2043
  %2045 = fmul fast float %1982, %1965
  %2046 = fmul fast float %2045, %2044
  %2047 = fmul fast float %1982, %1966
  %2048 = fmul fast float %2047, %2044
  %2049 = fmul fast float %1982, %1967
  %2050 = fmul fast float %2049, %2044
  %2051 = fadd fast float %2046, %1903
  %2052 = fadd fast float %2048, %1904
  %2053 = fadd fast float %2050, %1905
  %2054 = fmul fast float %2045, %2014
  %2055 = fmul fast float %2054, %2026
  %2056 = fmul fast float %2047, %2014
  %2057 = fmul fast float %2056, %2027
  %2058 = fmul fast float %2049, %2014
  %2059 = fmul fast float %2058, %2028
  %2060 = fadd fast float %2055, %1906
  %2061 = fadd fast float %2057, %1907
  %2062 = fadd fast float %2059, %1908
  br label %2063

; <label>:2063                                    ; preds = %1964, %1957, %1899
  %2064 = phi float [ %1958, %1964 ], [ 0.000000e+00, %1899 ], [ 0.000000e+00, %1957 ]
  %2065 = phi float [ %2060, %1964 ], [ %1906, %1899 ], [ %1906, %1957 ]
  %2066 = phi float [ %2061, %1964 ], [ %1907, %1899 ], [ %1907, %1957 ]
  %2067 = phi float [ %2062, %1964 ], [ %1908, %1899 ], [ %1908, %1957 ]
  %2068 = phi float [ %2051, %1964 ], [ %1903, %1899 ], [ %1903, %1957 ]
  %2069 = phi float [ %2052, %1964 ], [ %1904, %1899 ], [ %1904, %1957 ]
  %2070 = phi float [ %2053, %1964 ], [ %1905, %1899 ], [ %1905, %1957 ]
  %2071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2072 = extractvalue %dx.types.CBufRet.i32 %2071, 0
  %2073 = icmp eq i32 %2072, 0
  br i1 %2073, label %2556, label %2074

; <label>:2074                                    ; preds = %2063
  %2075 = fptoui float %42 to i32
  %2076 = fptoui float %43 to i32
  %2077 = lshr i32 %2075, 4
  %2078 = lshr i32 %2076, 4
  %2079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.i32 %2079, 0
  %2081 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2078, i32 %2080, i32 %2077)  ; UMad(a,b,c)
  %2082 = add nsw i32 %2072, -1
  %2083 = call i32 @dx.op.binary.i32(i32 37, i32 %2082, i32 0)  ; IMax(a,b)
  %2084 = call float @dx.op.binary.f32(i32 35, float %39, float 0.000000e+00)  ; FMax(a,b)
  %2085 = fptoui float %2084 to i32
  %2086 = lshr i32 %2085, 5
  %2087 = call i32 @dx.op.binary.i32(i32 40, i32 %2086, i32 8191)  ; UMin(a,b)
  %2088 = shl i32 %2087, 2
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = lshr i32 %2090, 16
  %2092 = and i32 %2090, 65535
  %2093 = lshr i32 %2090, 21
  %2094 = lshr i32 %2092, 5
  %2095 = call i32 @dx.op.binary.i32(i32 40, i32 %2094, i32 %2083)  ; UMin(a,b)
  %2096 = icmp ugt i32 %2093, %2095
  br i1 %2096, label %2556, label %2097

; <label>:2097                                    ; preds = %2074
  br label %2098

; <label>:2098                                    ; preds = %2546, %2097
  %2099 = phi i32 [ %2553, %2546 ], [ %2093, %2097 ]
  %2100 = phi float [ %2547, %2546 ], [ %2065, %2097 ]
  %2101 = phi float [ %2548, %2546 ], [ %2066, %2097 ]
  %2102 = phi float [ %2549, %2546 ], [ %2067, %2097 ]
  %2103 = phi float [ %2550, %2546 ], [ %2068, %2097 ]
  %2104 = phi float [ %2551, %2546 ], [ %2069, %2097 ]
  %2105 = phi float [ %2552, %2546 ], [ %2070, %2097 ]
  %2106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.i32 %2106, 0
  %2108 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2081, i32 %2107, i32 %2099)  ; UMad(a,b,c)
  %2109 = shl i32 %2108, 2
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = shl i32 %2099, 5
  %2113 = sub nsw i32 %2091, %2112
  %2114 = call i32 @dx.op.binary.i32(i32 37, i32 %2113, i32 0)  ; IMax(a,b)
  %2115 = call i32 @dx.op.binary.i32(i32 38, i32 %2114, i32 31)  ; IMin(a,b)
  %2116 = sub nsw i32 1, %2091
  %2117 = add nsw i32 %2116, %2092
  %2118 = call i32 @dx.op.binary.i32(i32 37, i32 %2117, i32 0)  ; IMax(a,b)
  %2119 = call i32 @dx.op.binary.i32(i32 38, i32 %2118, i32 32)  ; IMin(a,b)
  %2120 = and i32 %2119, 31
  %2121 = shl i32 -1, %2120
  %2122 = xor i32 %2121, -1
  %2123 = and i32 %2115, 31
  %2124 = shl i32 %2122, %2123
  %2125 = icmp eq i32 %2119, 32
  %2126 = select i1 %2125, i32 -1, i32 %2124
  %2127 = and i32 %2126, %2111
  %2128 = icmp eq i32 %2127, 0
  br i1 %2128, label %2546, label %2129

; <label>:2129                                    ; preds = %2098
  br label %2130

; <label>:2130                                    ; preds = %2264, %2129
  %2131 = phi i32 [ %2142, %2264 ], [ %2127, %2129 ]
  %2132 = phi float [ %2265, %2264 ], [ %2100, %2129 ]
  %2133 = phi float [ %2266, %2264 ], [ %2101, %2129 ]
  %2134 = phi float [ %2267, %2264 ], [ %2102, %2129 ]
  %2135 = phi float [ %2268, %2264 ], [ %2103, %2129 ]
  %2136 = phi float [ %2269, %2264 ], [ %2104, %2129 ]
  %2137 = phi float [ %2270, %2264 ], [ %2105, %2129 ]
  %2138 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2131)  ; FirstbitLo(value)
  %2139 = add i32 %2138, %2112
  %2140 = and i32 %2138, 31
  %2141 = shl i32 1, %2140
  %2142 = xor i32 %2141, %2131
  %2143 = mul i32 %2139, 112
  %2144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = or i32 %2143, 12
  %2149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = add i32 %2143, 16
  %2152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2151, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.f32 %2152, 0
  %2154 = extractvalue %dx.types.ResRet.f32 %2152, 1
  %2155 = extractvalue %dx.types.ResRet.f32 %2152, 2
  %2156 = add i32 %2143, 28
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = add i32 %2143, 44
  %2160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.f32 %2160, 0
  %2162 = add i32 %2143, 48
  %2163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.f32 %2163, 0
  %2165 = extractvalue %dx.types.ResRet.f32 %2163, 1
  %2166 = extractvalue %dx.types.ResRet.f32 %2163, 2
  %2167 = extractvalue %dx.types.ResRet.f32 %2163, 3
  %2168 = add i32 %2143, 64
  %2169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.f32 %2169, 0
  %2171 = extractvalue %dx.types.ResRet.f32 %2169, 1
  %2172 = extractvalue %dx.types.ResRet.f32 %2169, 2
  %2173 = extractvalue %dx.types.ResRet.f32 %2169, 3
  %2174 = add i32 %2143, 80
  %2175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.f32 %2175, 1
  %2177 = extractvalue %dx.types.ResRet.f32 %2175, 2
  %2178 = add i32 %2143, 92
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = call float @dx.op.dot3.f32(i32 55, float %2145, float %2146, float %2147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2182 = select i1 %384, float %2176, float %2145
  %2183 = select i1 %384, float %2181, float %2146
  %2184 = select i1 %384, float %2177, float %2147
  %2185 = and i32 %2180, 65535
  %2186 = uitofp i32 %2185 to float
  %2187 = lshr i32 %2180, 16
  %2188 = uitofp i32 %2187 to float
  %2189 = and i32 %2158, 65535
  %2190 = and i32 %2158, 50331648
  %2191 = icmp eq i32 %2190, 33554432
  %2192 = fsub fast float %2164, %82
  %2193 = fsub fast float %2165, %83
  %2194 = fsub fast float %2166, %84
  %2195 = call float @dx.op.dot3.f32(i32 55, float %2192, float %2193, float %2194, float %2192, float %2193, float %2194)  ; Dot3(ax,ay,az,bx,by,bz)
  %2196 = call float @dx.op.unary.f32(i32 24, float %2195)  ; Sqrt(value)
  %2197 = fdiv fast float 1.000000e+00, %2196
  %2198 = fmul fast float %2197, %2192
  %2199 = fmul fast float %2197, %2193
  %2200 = fmul fast float %2197, %2194
  %2201 = fadd fast float %2196, %2150
  %2202 = fdiv fast float 1.000000e+00, %2201
  %2203 = fmul float %2161, %2202
  %2204 = fmul float %2203, %2203
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  br i1 %2191, label %2206, label %2227

; <label>:2206                                    ; preds = %2130
  %2207 = fmul fast float %2172, %2153
  %2208 = fmul fast float %2172, %2154
  %2209 = fmul fast float %2172, %2155
  %2210 = fadd fast float %2192, %2207
  %2211 = fadd fast float %2193, %2208
  %2212 = fadd fast float %2194, %2209
  %2213 = call float @dx.op.dot3.f32(i32 55, float %2210, float %2211, float %2212, float %2210, float %2211, float %2212)  ; Dot3(ax,ay,az,bx,by,bz)
  %2214 = call float @dx.op.unary.f32(i32 25, float %2213)  ; Rsqrt(value)
  %2215 = fmul fast float %2214, %2210
  %2216 = fmul fast float %2214, %2211
  %2217 = fmul fast float %2214, %2212
  %2218 = fsub fast float %82, %2164
  %2219 = fsub fast float %83, %2165
  %2220 = fsub fast float %84, %2166
  %2221 = fsub fast float -0.000000e+00, %2218
  %2222 = fsub fast float -0.000000e+00, %2219
  %2223 = fsub fast float -0.000000e+00, %2220
  %2224 = call float @dx.op.dot3.f32(i32 55, float %2221, float %2222, float %2223, float %2153, float %2154, float %2155)  ; Dot3(ax,ay,az,bx,by,bz)
  %2225 = fcmp fast ogt float %2224, 0.000000e+00
  %2226 = uitofp i1 %2225 to float
  br label %2227

; <label>:2227                                    ; preds = %2206, %2130
  %2228 = phi float [ %2226, %2206 ], [ 1.000000e+00, %2130 ]
  %2229 = phi float [ %2215, %2206 ], [ %2198, %2130 ]
  %2230 = phi float [ %2216, %2206 ], [ %2199, %2130 ]
  %2231 = phi float [ %2217, %2206 ], [ %2200, %2130 ]
  %2232 = call float @dx.op.dot3.f32(i32 55, float %2153, float %2154, float %2155, float %2229, float %2230, float %2231)  ; Dot3(ax,ay,az,bx,by,bz)
  %2233 = fmul fast float %2232, %2232
  %2234 = call float @dx.op.unary.f32(i32 7, float %2233)  ; Saturate(value)
  %2235 = fsub fast float 1.000000e+00, %2234
  %2236 = fmul fast float %2235, 5.000000e-01
  %2237 = fcmp fast ogt float %2232, 0.000000e+00
  %2238 = fsub fast float 1.000000e+00, %2236
  %2239 = select i1 %2237, float %2236, float %2238
  %2240 = fmul fast float %2239, %2188
  %2241 = fadd fast float %2240, %2186
  %2242 = fmul fast float %2241, 0x3EF0001000000000
  %2243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %28, float %2242, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2244 = extractvalue %dx.types.ResRet.f32 %2243, 0
  %2245 = fmul fast float %2232, %2170
  %2246 = fadd fast float %2245, %2171
  %2247 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2248 = select i1 %2191, float 1.000000e+00, float %2247
  %2249 = select i1 %2191, float %2247, float 1.000000e+00
  %2250 = fmul fast float %2196, %2167
  %2251 = fsub fast float 1.000000e+00, %2250
  %2252 = fmul fast float %2251, %2173
  %2253 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2254 = fmul fast float %2253, %2249
  %2255 = fmul fast float %2254, 2.000000e+00
  %2256 = fsub fast float 3.000000e+00, %2255
  %2257 = fmul fast float %2244, %2228
  %2258 = fmul fast float %2254, %2254
  %2259 = fmul fast float %2258, %2257
  %2260 = fmul fast float %2259, %2256
  %2261 = call float @dx.op.binary.f32(i32 36, float %2260, float %2260)  ; FMin(a,b)
  %2262 = call float @dx.op.binary.f32(i32 36, float %2260, float %2261)  ; FMin(a,b)
  %2263 = fcmp fast ogt float %2262, 0.000000e+00
  br i1 %2263, label %2272, label %2264, !dx.controlflow.hints !67

; <label>:2264                                    ; preds = %2416, %2411, %2227
  %2265 = phi float [ %2132, %2411 ], [ %2132, %2227 ], [ %2542, %2416 ]
  %2266 = phi float [ %2133, %2411 ], [ %2133, %2227 ], [ %2543, %2416 ]
  %2267 = phi float [ %2134, %2411 ], [ %2134, %2227 ], [ %2544, %2416 ]
  %2268 = phi float [ %2135, %2411 ], [ %2135, %2227 ], [ %2533, %2416 ]
  %2269 = phi float [ %2136, %2411 ], [ %2136, %2227 ], [ %2534, %2416 ]
  %2270 = phi float [ %2137, %2411 ], [ %2137, %2227 ], [ %2535, %2416 ]
  %2271 = icmp eq i32 %2131, %2141
  br i1 %2271, label %2545, label %2130

; <label>:2272                                    ; preds = %2227
  %2273 = icmp eq i32 %2189, 255
  br i1 %2273, label %2411, label %2274, !dx.controlflow.hints !68

; <label>:2274                                    ; preds = %2272
  %2275 = mul nuw nsw i32 %2189, 176
  %2276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.f32 %2276, 0
  %2278 = extractvalue %dx.types.ResRet.f32 %2276, 1
  %2279 = extractvalue %dx.types.ResRet.f32 %2276, 2
  %2280 = extractvalue %dx.types.ResRet.f32 %2276, 3
  %2281 = add nuw nsw i32 %2275, 16
  %2282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.f32 %2282, 0
  %2284 = extractvalue %dx.types.ResRet.f32 %2282, 1
  %2285 = add nuw nsw i32 %2275, 32
  %2286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.f32 %2286, 0
  %2288 = extractvalue %dx.types.ResRet.f32 %2286, 1
  %2289 = add nuw nsw i32 %2275, 48
  %2290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.f32 %2290, 0
  %2292 = extractvalue %dx.types.ResRet.f32 %2290, 1
  %2293 = extractvalue %dx.types.ResRet.f32 %2290, 2
  %2294 = extractvalue %dx.types.ResRet.f32 %2290, 3
  %2295 = add nuw nsw i32 %2275, 64
  %2296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.ResRet.f32 %2296, 1
  %2299 = extractvalue %dx.types.ResRet.f32 %2296, 2
  %2300 = extractvalue %dx.types.ResRet.f32 %2296, 3
  %2301 = add nuw nsw i32 %2275, 80
  %2302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.f32 %2302, 0
  %2304 = extractvalue %dx.types.ResRet.f32 %2302, 1
  %2305 = extractvalue %dx.types.ResRet.f32 %2302, 2
  %2306 = extractvalue %dx.types.ResRet.f32 %2302, 3
  %2307 = add nuw nsw i32 %2275, 96
  %2308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.ResRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.ResRet.f32 %2308, 2
  %2312 = extractvalue %dx.types.ResRet.f32 %2308, 3
  %2313 = bitcast float %2284 to i32
  %2314 = fmul fast float %2291, %82
  %2315 = call float @dx.op.tertiary.f32(i32 46, float %83, float %2297, float %2314)  ; FMad(a,b,c)
  %2316 = call float @dx.op.tertiary.f32(i32 46, float %84, float %2303, float %2315)  ; FMad(a,b,c)
  %2317 = fadd fast float %2316, %2309
  %2318 = fmul fast float %2292, %82
  %2319 = call float @dx.op.tertiary.f32(i32 46, float %83, float %2298, float %2318)  ; FMad(a,b,c)
  %2320 = call float @dx.op.tertiary.f32(i32 46, float %84, float %2304, float %2319)  ; FMad(a,b,c)
  %2321 = fadd fast float %2320, %2310
  %2322 = fmul fast float %2293, %82
  %2323 = call float @dx.op.tertiary.f32(i32 46, float %83, float %2299, float %2322)  ; FMad(a,b,c)
  %2324 = call float @dx.op.tertiary.f32(i32 46, float %84, float %2305, float %2323)  ; FMad(a,b,c)
  %2325 = fadd fast float %2324, %2311
  %2326 = fmul fast float %2294, %82
  %2327 = call float @dx.op.tertiary.f32(i32 46, float %83, float %2300, float %2326)  ; FMad(a,b,c)
  %2328 = call float @dx.op.tertiary.f32(i32 46, float %84, float %2306, float %2327)  ; FMad(a,b,c)
  %2329 = fadd fast float %2328, %2312
  %2330 = fdiv fast float %2317, %2329
  %2331 = fdiv fast float %2321, %2329
  %2332 = fdiv fast float %2325, %2329
  %2333 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %2332)  ; FMax(a,b)
  %2334 = fmul fast float %227, 0x401921FB60000000
  %2335 = call float @dx.op.unary.f32(i32 13, float %2334)  ; Sin(value)
  %2336 = call float @dx.op.unary.f32(i32 12, float %2334)  ; Cos(value)
  %2337 = fmul fast float %2336, %2288
  %2338 = call float @dx.op.tertiary.f32(i32 46, float %2335, float %2288, float 0.000000e+00)  ; FMad(a,b,c)
  %2339 = fmul fast float %2288, %2335
  %2340 = fsub fast float -0.000000e+00, %2339
  %2341 = call float @dx.op.tertiary.f32(i32 46, float %2336, float %2288, float 0.000000e+00)  ; FMad(a,b,c)
  br label %2342

; <label>:2342                                    ; preds = %2342, %2274
  %2343 = phi float [ 0.000000e+00, %2274 ], [ %2375, %2342 ]
  %2344 = phi float [ 0.000000e+00, %2274 ], [ %2377, %2342 ]
  %2345 = phi i32 [ 0, %2274 ], [ %2378, %2342 ]
  %2346 = mul i32 %2345, 2
  %2347 = add i32 0, %2346
  %2348 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2347
  %2349 = load float, float* %2348, align 4
  %2350 = mul i32 %2345, 2
  %2351 = add i32 1, %2350
  %2352 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2351
  %2353 = load float, float* %2352, align 4
  %2354 = fmul fast float %2337, %2349
  %2355 = call float @dx.op.tertiary.f32(i32 46, float %2353, float %2340, float %2354)  ; FMad(a,b,c)
  %2356 = fmul fast float %2349, %2338
  %2357 = call float @dx.op.tertiary.f32(i32 46, float %2353, float %2341, float %2356)  ; FMad(a,b,c)
  %2358 = fadd fast float %2355, %2330
  %2359 = fadd fast float %2357, %2331
  %2360 = fmul fast float %2358, %2283
  %2361 = fmul fast float %2359, %2283
  %2362 = call float @dx.op.binary.f32(i32 35, float %2360, float %2279)  ; FMax(a,b)
  %2363 = call float @dx.op.binary.f32(i32 35, float %2361, float %2279)  ; FMax(a,b)
  %2364 = call float @dx.op.binary.f32(i32 36, float %2362, float %2280)  ; FMin(a,b)
  %2365 = call float @dx.op.binary.f32(i32 36, float %2363, float %2280)  ; FMin(a,b)
  %2366 = fadd fast float %2364, %2277
  %2367 = fadd fast float %2365, %2278
  %2368 = uitofp i32 %2313 to float
  %2369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %2366, float %2367, float %2368, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2370 = extractvalue %dx.types.ResRet.f32 %2369, 0
  %2371 = fsub fast float %2370, %2333
  %2372 = fsub fast float %2371, %2287
  %2373 = fcmp fast ogt float %2372, 0.000000e+00
  %2374 = select i1 %2373, float 1.000000e+00, float 0.000000e+00
  %2375 = fadd fast float %2374, %2343
  %2376 = select i1 %2373, float %2372, float 0.000000e+00
  %2377 = fadd fast float %2376, %2344
  %2378 = add nuw nsw i32 %2345, 1
  %2379 = icmp eq i32 %2378, 8
  br i1 %2379, label %2380, label %2342

; <label>:2380                                    ; preds = %2342
  %2381 = fdiv fast float 1.000000e+00, %2375
  %2382 = fmul fast float %2381, %2377
  %2383 = fdiv fast float 1.000000e+00, %2333
  %2384 = fmul fast float %2382, %2383
  %2385 = call float @dx.op.unary.f32(i32 7, float %2384)  ; Saturate(value)
  %2386 = call float @dx.op.binary.f32(i32 35, float %2385, float 0.000000e+00)  ; FMax(a,b)
  %2387 = fmul fast float %2375, 1.250000e-01
  %2388 = call float @dx.op.unary.f32(i32 7, float %2387)  ; Saturate(value)
  %2389 = fmul fast float %2388, 2.000000e+00
  %2390 = fadd fast float %2389, -1.000000e+00
  %2391 = fcmp fast ogt float %2390, 0.000000e+00
  %2392 = fcmp fast olt float %2390, 0.000000e+00
  %2393 = zext i1 %2391 to i32
  %2394 = zext i1 %2392 to i32
  %2395 = sub nsw i32 %2393, %2394
  %2396 = sitofp i32 %2395 to float
  %2397 = fmul fast float %2396, %2390
  %2398 = fsub fast float 1.000000e+00, %2397
  %2399 = fmul fast float %2398, %2398
  %2400 = fmul fast float %2399, %2398
  %2401 = fsub fast float %2398, %2400
  %2402 = fmul fast float %2401, %2386
  %2403 = fsub fast float 1.000000e+00, %2400
  %2404 = fsub fast float %2403, %2402
  %2405 = fmul fast float %2396, 5.000000e-01
  %2406 = fmul fast float %2405, %2404
  %2407 = fsub fast float -5.000000e-01, %2406
  %2408 = fmul fast float %2407, %2248
  %2409 = fadd fast float %2408, 1.000000e+00
  %2410 = fmul fast float %2409, %2260
  br label %2411

; <label>:2411                                    ; preds = %2380, %2272
  %2412 = phi float [ %2410, %2380 ], [ %2260, %2272 ]
  %2413 = call float @dx.op.binary.f32(i32 36, float %2412, float %2412)  ; FMin(a,b)
  %2414 = call float @dx.op.binary.f32(i32 36, float %2412, float %2413)  ; FMin(a,b)
  %2415 = fcmp fast ogt float %2414, 0.000000e+00
  br i1 %2415, label %2416, label %2264, !dx.controlflow.hints !69

; <label>:2416                                    ; preds = %2411
  %2417 = fmul fast float %2412, %2182
  %2418 = fmul fast float %2412, %2183
  %2419 = fmul fast float %2412, %2184
  %2420 = fsub fast float %2198, %313
  %2421 = fsub fast float %2199, %314
  %2422 = fsub fast float %2200, %315
  %2423 = call float @dx.op.dot3.f32(i32 55, float %2420, float %2421, float %2422, float %2420, float %2421, float %2422)  ; Dot3(ax,ay,az,bx,by,bz)
  %2424 = call float @dx.op.unary.f32(i32 25, float %2423)  ; Rsqrt(value)
  %2425 = fmul fast float %2424, %2420
  %2426 = fmul fast float %2424, %2421
  %2427 = fmul fast float %2424, %2422
  %2428 = call float @dx.op.dot3.f32(i32 55, float %2198, float %2199, float %2200, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %2429 = call float @dx.op.dot3.f32(i32 55, float %385, float %386, float %387, float %2425, float %2426, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %2430 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2431 = fmul fast float %2430, %2205
  %2432 = fmul fast float %2430, %2430
  %2433 = fmul fast float %2432, %402
  %2434 = call float @dx.op.unary.f32(i32 7, float %2433)  ; Saturate(value)
  %2435 = fmul fast float %2431, %2434
  %2436 = bitcast float %2195 to i32
  %2437 = ashr i32 %2436, 1
  %2438 = sub nsw i32 1597463007, %2437
  %2439 = bitcast i32 %2438 to float
  %2440 = fmul fast float %2439, %2192
  %2441 = fmul fast float %2439, %2193
  %2442 = fmul fast float %2439, %2194
  %2443 = fsub fast float %2440, %313
  %2444 = fsub fast float %2441, %314
  %2445 = fsub fast float %2442, %315
  %2446 = call float @dx.op.dot3.f32(i32 55, float %2443, float %2444, float %2445, float %2443, float %2444, float %2445)  ; Dot3(ax,ay,az,bx,by,bz)
  %2447 = call float @dx.op.unary.f32(i32 25, float %2446)  ; Rsqrt(value)
  %2448 = fmul fast float %2443, %2447
  %2449 = fmul fast float %2444, %2447
  %2450 = fmul fast float %2445, %2447
  %2451 = call float @dx.op.dot3.f32(i32 55, float %285, float %286, float %287, float %2448, float %2449, float %2450)  ; Dot3(ax,ay,az,bx,by,bz)
  %2452 = fmul fast float %2451, %2451
  %2453 = call float @dx.op.unary.f32(i32 6, float %2428)  ; FAbs(value)
  %2454 = fsub fast float 1.000000e+00, %344
  %2455 = call float @dx.op.binary.f32(i32 35, float %2454, float 0x3F847AE140000000)  ; FMax(a,b)
  %2456 = fmul fast float %2455, %2455
  %2457 = fmul fast float %2456, %2456
  %2458 = fsub fast float 1.000000e+00, %2457
  %2459 = fmul fast float %390, %390
  %2460 = fmul fast float %2459, %2458
  %2461 = fadd fast float %2460, %2457
  %2462 = bitcast float %2461 to i32
  %2463 = ashr i32 %2462, 1
  %2464 = add nsw i32 %2463, 532487669
  %2465 = bitcast i32 %2464 to float
  %2466 = fadd fast float %2465, %390
  %2467 = fmul fast float %2457, %2452
  %2468 = fsub fast float 1.000000e+00, %2452
  %2469 = fadd fast float %2468, %2467
  %2470 = fmul fast float %2453, %2453
  %2471 = fmul fast float %2470, %2458
  %2472 = fadd fast float %2471, %2457
  %2473 = bitcast float %2472 to i32
  %2474 = ashr i32 %2473, 1
  %2475 = add nsw i32 %2474, 532487669
  %2476 = bitcast i32 %2475 to float
  %2477 = fadd fast float %2476, %2453
  %2478 = fmul fast float %2469, %2469
  %2479 = fmul fast float %2478, %2466
  %2480 = fmul fast float %2479, %2477
  %2481 = fdiv fast float 1.000000e+00, %2480
  %2482 = bitcast float %2457 to i32
  %2483 = sitofp i32 %2482 to float
  %2484 = fmul fast float %2483, 0x3FE7F73180000000
  %2485 = fadd fast float %2484, 0x41AFE27C40000000
  %2486 = fptosi float %2485 to i32
  %2487 = bitcast i32 %2486 to float
  %2488 = fmul fast float %2161, 0x3FD80E9D60000000
  %2489 = fmul fast float %2488, %2439
  %2490 = fadd fast float %2487, %2489
  %2491 = bitcast float %2490 to i32
  %2492 = sub nsw i32 2129859010, %2491
  %2493 = bitcast i32 %2492 to float
  %2494 = fmul fast float %2457, %2481
  %2495 = fmul fast float %2494, %2487
  %2496 = fmul fast float %2495, %2493
  %2497 = call float @dx.op.unary.f32(i32 6, float %2429)  ; FAbs(value)
  %2498 = fsub fast float 1.000000e+00, %2497
  %2499 = bitcast float %2498 to i32
  %2500 = sitofp i32 %2499 to float
  %2501 = fmul fast float %2500, 5.000000e+00
  %2502 = fadd fast float %2501, 0xC1EFBF8940000000
  %2503 = fptosi float %2502 to i32
  %2504 = bitcast i32 %2503 to float
  %2505 = fmul fast float %2504, %1217
  %2506 = fmul fast float %2504, %1218
  %2507 = fmul fast float %2504, %1219
  %2508 = fadd fast float %2505, %306
  %2509 = fadd fast float %2506, %307
  %2510 = fadd fast float %2507, %388
  %2511 = fmul fast float %2428, 9.843750e-01
  %2512 = fmul fast float %344, 9.843750e-01
  %2513 = fadd fast float %2511, 7.812500e-03
  %2514 = fadd fast float %2512, 7.812500e-03
  %2515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %2513, float %2514, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2516 = extractvalue %dx.types.ResRet.f32 %2515, 2
  %2517 = extractvalue %dx.types.ResRet.f32 %2515, 3
  %2518 = fmul fast float %2516, %306
  %2519 = fmul fast float %2516, %307
  %2520 = fmul fast float %2516, %388
  %2521 = fadd fast float %2518, %2517
  %2522 = fadd fast float %2519, %2517
  %2523 = fadd fast float %2520, %2517
  %2524 = call float @dx.op.binary.f32(i32 35, float %2522, float %2523)  ; FMax(a,b)
  %2525 = call float @dx.op.binary.f32(i32 35, float %2521, float %2524)  ; FMax(a,b)
  %2526 = fsub fast float 1.000000e+00, %2525
  %2527 = fmul fast float %2435, %2417
  %2528 = fmul fast float %2527, %2526
  %2529 = fmul fast float %2435, %2418
  %2530 = fmul fast float %2529, %2526
  %2531 = fmul fast float %2435, %2419
  %2532 = fmul fast float %2531, %2526
  %2533 = fadd fast float %2528, %2135
  %2534 = fadd fast float %2530, %2136
  %2535 = fadd fast float %2532, %2137
  %2536 = fmul fast float %2527, %2508
  %2537 = fmul fast float %2536, %2496
  %2538 = fmul fast float %2529, %2509
  %2539 = fmul fast float %2538, %2496
  %2540 = fmul fast float %2531, %2510
  %2541 = fmul fast float %2540, %2496
  %2542 = fadd fast float %2537, %2132
  %2543 = fadd fast float %2539, %2133
  %2544 = fadd fast float %2541, %2134
  br label %2264

; <label>:2545                                    ; preds = %2264
  br label %2546

; <label>:2546                                    ; preds = %2545, %2098
  %2547 = phi float [ %2100, %2098 ], [ %2265, %2545 ]
  %2548 = phi float [ %2101, %2098 ], [ %2266, %2545 ]
  %2549 = phi float [ %2102, %2098 ], [ %2267, %2545 ]
  %2550 = phi float [ %2103, %2098 ], [ %2268, %2545 ]
  %2551 = phi float [ %2104, %2098 ], [ %2269, %2545 ]
  %2552 = phi float [ %2105, %2098 ], [ %2270, %2545 ]
  %2553 = add i32 %2099, 1
  %2554 = icmp ugt i32 %2553, %2095
  br i1 %2554, label %2555, label %2098

; <label>:2555                                    ; preds = %2546
  br label %2556

; <label>:2556                                    ; preds = %2555, %2074, %2063
  %2557 = phi float [ %2065, %2063 ], [ %2065, %2074 ], [ %2547, %2555 ]
  %2558 = phi float [ %2066, %2063 ], [ %2066, %2074 ], [ %2548, %2555 ]
  %2559 = phi float [ %2067, %2063 ], [ %2067, %2074 ], [ %2549, %2555 ]
  %2560 = phi float [ %2068, %2063 ], [ %2068, %2074 ], [ %2550, %2555 ]
  %2561 = phi float [ %2069, %2063 ], [ %2069, %2074 ], [ %2551, %2555 ]
  %2562 = phi float [ %2070, %2063 ], [ %2070, %2074 ], [ %2552, %2555 ]
  %2563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2564 = extractvalue %dx.types.CBufRet.f32 %2563, 3
  %2565 = bitcast float %2564 to i32
  %2566 = mul i32 %2565, 928
  %2567 = add i32 %2566, 44
  %2568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.f32 %2568, 0
  %2570 = add i32 %2566, 48
  %2571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.f32 %2571, 0
  %2573 = extractvalue %dx.types.ResRet.f32 %2571, 1
  %2574 = extractvalue %dx.types.ResRet.f32 %2571, 2
  %2575 = add i32 %2566, 60
  %2576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.f32 %2576, 0
  %2578 = extractvalue %dx.types.ResRet.f32 %2576, 1
  %2579 = extractvalue %dx.types.ResRet.f32 %2576, 2
  %2580 = fmul fast float %2572, 0x3F847AE140000000
  %2581 = fmul fast float %2573, 0x3F847AE140000000
  %2582 = fmul fast float %2574, 0x3F847AE140000000
  %2583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.CBufRet.f32 %2583, 1
  %2586 = extractvalue %dx.types.CBufRet.f32 %2583, 2
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2589 = extractvalue %dx.types.CBufRet.f32 %2587, 1
  %2590 = call float @dx.op.dot3.f32(i32 55, float %2584, float %2585, float %2586, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2591 = select i1 %384, float %2588, float %2584
  %2592 = select i1 %384, float %2590, float %2585
  %2593 = select i1 %384, float %2589, float %2586
  %2594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2594, 0
  %2596 = extractvalue %dx.types.CBufRet.f32 %2594, 1
  %2597 = extractvalue %dx.types.CBufRet.f32 %2594, 2
  %2598 = fadd fast float %2577, %2572
  %2599 = fmul fast float %2598, 0x3F847AE140000000
  %2600 = fadd fast float %2578, %2573
  %2601 = fmul fast float %2600, 0x3F847AE140000000
  %2602 = fadd fast float %2579, %2574
  %2603 = fmul fast float %2602, 0x3F847AE140000000
  %2604 = call float @dx.op.dot3.f32(i32 55, float %2595, float %2596, float %2597, float %313, float %314, float %315)  ; Dot3(ax,ay,az,bx,by,bz)
  %2605 = fcmp fast ogt float %2569, 0.000000e+00
  %2606 = select i1 %2605, float 1.000000e+00, float -1.000000e+00
  %2607 = fmul fast float %2606, 5.000000e-01
  %2608 = fmul fast float %2607, %2604
  %2609 = fmul fast float %2606, %2569
  %2610 = fadd fast float %2608, 4.921875e-01
  %2611 = fadd fast float %2609, -3.125000e-02
  %2612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %2610, float 0x3FB25F3060000000, float %2611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2613 = extractvalue %dx.types.ResRet.f32 %2612, 0
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 0
  %2616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %2617 = extractvalue %dx.types.CBufRet.f32 %2616, 0
  %2618 = fmul fast float %2617, %2615
  %2619 = extractvalue %dx.types.CBufRet.f32 %2616, 1
  %2620 = fadd fast float %2618, %2619
  %2621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.f32 %2621, 0
  %2623 = fmul fast float %2622, %2064
  %2624 = extractvalue %dx.types.CBufRet.f32 %2621, 1
  %2625 = fadd fast float %2623, %2624
  %2626 = call float @dx.op.unary.f32(i32 7, float %2625)  ; Saturate(value)
  %2627 = extractvalue %dx.types.CBufRet.f32 %2614, 3
  %2628 = extractvalue %dx.types.CBufRet.f32 %2616, 2
  %2629 = fmul fast float %2628, %2627
  %2630 = extractvalue %dx.types.CBufRet.f32 %2616, 3
  %2631 = fadd fast float %2629, %2630
  %2632 = fmul fast float %2613, 0x400921FB60000000
  %2633 = fmul fast float %2632, %2620
  %2634 = fmul fast float %2633, %2626
  %2635 = call float @dx.op.binary.f32(i32 35, float %2599, float 0x3F10000000000000)  ; FMax(a,b)
  %2636 = call float @dx.op.binary.f32(i32 35, float %2601, float 0x3F10000000000000)  ; FMax(a,b)
  %2637 = call float @dx.op.binary.f32(i32 35, float %2603, float 0x3F10000000000000)  ; FMax(a,b)
  %2638 = fdiv fast float 1.000000e+00, %2635
  %2639 = fdiv fast float 1.000000e+00, %2636
  %2640 = fdiv fast float 1.000000e+00, %2637
  %2641 = fmul fast float %2598, 0xBF8D8BE060000000
  %2642 = fmul fast float %2600, 0xBF8D8BE060000000
  %2643 = fmul fast float %2602, 0xBF8D8BE060000000
  %2644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %2645 = extractvalue %dx.types.CBufRet.f32 %2644, 3
  %2646 = call float @dx.op.dot3.f32(i32 55, float %2638, float %2639, float %2640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2647 = fmul fast float %2645, %2646
  %2648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %2649 = extractvalue %dx.types.CBufRet.f32 %2648, 3
  %2650 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2649)  ; Dot3(ax,ay,az,bx,by,bz)
  %2651 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %385, float %386, float %387)  ; Dot3(ax,ay,az,bx,by,bz)
  %2652 = fdiv fast float 1.000000e+00, %2651
  %2653 = fmul fast float %2652, %2650
  %2654 = fcmp ogt float %315, -0.000000e+00
  %2655 = select i1 %2654, float %2649, float %2653
  %2656 = call float @dx.op.binary.f32(i32 36, float %2655, float %2647)  ; FMin(a,b)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2648, 0
  %2658 = fmul fast float %2657, %2656
  %2659 = fmul fast float %2658, %2641
  %2660 = fmul fast float %2658, %2642
  %2661 = fmul fast float %2658, %2643
  %2662 = call float @dx.op.unary.f32(i32 21, float %2659)  ; Exp(value)
  %2663 = call float @dx.op.unary.f32(i32 21, float %2660)  ; Exp(value)
  %2664 = call float @dx.op.unary.f32(i32 21, float %2661)  ; Exp(value)
  %2665 = fmul fast float %2634, %2591
  %2666 = fmul fast float %2665, %2662
  %2667 = fmul fast float %2634, %2592
  %2668 = fmul fast float %2667, %2663
  %2669 = fmul fast float %2634, %2593
  %2670 = fmul fast float %2669, %2664
  %2671 = extractvalue %dx.types.CBufRet.f32 %2648, 1
  %2672 = fmul fast float %2671, %2656
  %2673 = fmul fast float %2672, %2641
  %2674 = fmul fast float %2672, %2642
  %2675 = fmul fast float %2672, %2643
  %2676 = call float @dx.op.unary.f32(i32 21, float %2673)  ; Exp(value)
  %2677 = call float @dx.op.unary.f32(i32 21, float %2674)  ; Exp(value)
  %2678 = call float @dx.op.unary.f32(i32 21, float %2675)  ; Exp(value)
  %2679 = fmul fast float %2631, %1214
  %2680 = fmul fast float %2679, %2676
  %2681 = fmul fast float %2631, %1215
  %2682 = fmul fast float %2681, %2677
  %2683 = fmul fast float %2631, %1216
  %2684 = fmul fast float %2683, %2678
  %2685 = fadd fast float %2680, %2666
  %2686 = fmul fast float %2580, %2685
  %2687 = fadd fast float %2682, %2668
  %2688 = fmul fast float %2581, %2687
  %2689 = fadd fast float %2684, %2670
  %2690 = fmul fast float %2582, %2689
  %2691 = fmul fast float %2655, %2641
  %2692 = fmul fast float %2655, %2642
  %2693 = fmul fast float %2655, %2643
  %2694 = call float @dx.op.unary.f32(i32 21, float %2691)  ; Exp(value)
  %2695 = call float @dx.op.unary.f32(i32 21, float %2692)  ; Exp(value)
  %2696 = call float @dx.op.unary.f32(i32 21, float %2693)  ; Exp(value)
  %2697 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  %2698 = call float @dx.op.unary.f32(i32 7, float %2695)  ; Saturate(value)
  %2699 = call float @dx.op.unary.f32(i32 7, float %2696)  ; Saturate(value)
  %2700 = fmul fast float %2697, %2686
  %2701 = fmul fast float %2698, %2688
  %2702 = fmul fast float %2699, %2690
  %2703 = fsub fast float %2686, %2700
  %2704 = fsub fast float %2688, %2701
  %2705 = fsub fast float %2690, %2702
  %2706 = fmul fast float %2638, %1228
  %2707 = fmul fast float %2706, %2703
  %2708 = fmul fast float %2639, %1228
  %2709 = fmul fast float %2708, %2704
  %2710 = fmul fast float %2640, %1228
  %2711 = fmul fast float %2710, %2705
  %2712 = fadd fast float %2707, %2557
  %2713 = fadd fast float %2709, %2558
  %2714 = fadd fast float %2711, %2559
  %2715 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %2716 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %2717 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2718 = fmul fast float %2715, %2560
  %2719 = fmul fast float %2716, %2561
  %2720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2721 = extractvalue %dx.types.CBufRet.f32 %2720, 0
  br i1 %384, label %2722, label %2748

; <label>:2722                                    ; preds = %2556
  %2723 = fadd fast float %2562, %360
  %2724 = fmul fast float %2723, %358
  %2725 = fsub fast float 1.000000e+00, %358
  %2726 = call float @dx.op.unary.f32(i32 7, float %2725)  ; Saturate(value)
  %2727 = fmul fast float %287, 2.000000e+00
  %2728 = fmul fast float %2727, %321
  %2729 = fsub fast float %315, %2728
  %2730 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2731 = fsub fast float 1.000000e+00, %2730
  %2732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2732, 3
  %2734 = fmul fast float %2731, %2726
  %2735 = fmul fast float %2734, %2733
  %2736 = fadd fast float %2735, %2724
  %2737 = fsub fast float 1.000000e+00, %390
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = fmul fast float %2739, %2737
  %2741 = fsub fast float %2736, %2740
  %2742 = fadd fast float %2719, %2718
  %2743 = extractvalue %dx.types.CBufRet.f32 %2732, 1
  %2744 = fsub fast float %2741, %2743
  %2745 = extractvalue %dx.types.CBufRet.f32 %2732, 2
  %2746 = fmul fast float %2744, %2745
  %2747 = call float @dx.op.unary.f32(i32 7, float %2746)  ; Saturate(value)
  br label %2752

; <label>:2748                                    ; preds = %2556
  %2749 = fmul fast float %2717, %2562
  %2750 = fmul fast float %2721, %2719
  %2751 = fmul fast float %2749, %2721
  br label %2752

; <label>:2752                                    ; preds = %2748, %2722
  %2753 = phi float [ %2742, %2722 ], [ %2718, %2748 ]
  %2754 = phi float [ %2747, %2722 ], [ %2750, %2748 ]
  %2755 = phi float [ 1.000000e+00, %2722 ], [ %2751, %2748 ]
  %2756 = fmul float %2721, %2753
  %2757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2758 = extractvalue %dx.types.CBufRet.f32 %2757, 0
  %2759 = fmul fast float %2758, %2713
  %2760 = fmul fast float %2758, %2714
  %2761 = fadd fast float %2713, %2712
  %2762 = select i1 %384, float %2761, float %2712
  %2763 = fmul float %2762, %2758
  %2764 = select i1 %384, float 0.000000e+00, float %2759
  %2765 = select i1 %384, float 0.000000e+00, float %2760
  %2766 = fadd fast float %227, 0x3FE3C6EF40000000
  %2767 = call float @dx.op.unary.f32(i32 22, float %2766)  ; Frc(value)
  %2768 = call float @dx.op.unary.f32(i32 23, float %2756)  ; Log(value)
  %2769 = fadd fast float %2768, -7.000000e+00
  %2770 = call float @dx.op.unary.f32(i32 21, float %2769)  ; Exp(value)
  %2771 = fmul fast float %2767, 2.000000e+00
  %2772 = fadd fast float %2771, -1.000000e+00
  %2773 = fmul fast float %2770, %2772
  %2774 = fcmp fast ogt float %2756, 0.000000e+00
  %2775 = select i1 %2774, float %2773, float 0.000000e+00
  %2776 = fadd fast float %2775, %2756
  %2777 = fadd fast float %227, 0x3FF3C6EF40000000
  %2778 = call float @dx.op.unary.f32(i32 22, float %2777)  ; Frc(value)
  %2779 = call float @dx.op.unary.f32(i32 23, float %2754)  ; Log(value)
  %2780 = fadd fast float %2779, -7.000000e+00
  %2781 = call float @dx.op.unary.f32(i32 21, float %2780)  ; Exp(value)
  %2782 = fmul fast float %2778, 2.000000e+00
  %2783 = fadd fast float %2782, -1.000000e+00
  %2784 = fmul fast float %2781, %2783
  %2785 = fcmp fast ogt float %2754, 0.000000e+00
  %2786 = select i1 %2785, float %2784, float 0.000000e+00
  %2787 = fadd fast float %2786, %2754
  %2788 = fadd fast float %227, 0x3FFDAA66E0000000
  %2789 = call float @dx.op.unary.f32(i32 22, float %2788)  ; Frc(value)
  %2790 = call float @dx.op.unary.f32(i32 23, float %2755)  ; Log(value)
  %2791 = fadd fast float %2790, -6.000000e+00
  %2792 = call float @dx.op.unary.f32(i32 21, float %2791)  ; Exp(value)
  %2793 = fmul fast float %2789, 2.000000e+00
  %2794 = fadd fast float %2793, -1.000000e+00
  %2795 = fmul fast float %2792, %2794
  %2796 = fcmp fast ogt float %2755, 0.000000e+00
  %2797 = select i1 %2796, float %2795, float 0.000000e+00
  %2798 = fadd fast float %2797, %2755
  %2799 = fmul fast float %2776, %2715
  %2800 = fmul fast float %2787, %2716
  %2801 = fmul fast float %2798, %2717
  %2802 = fadd fast float %2799, %2763
  %2803 = fadd fast float %2800, %2764
  %2804 = fadd fast float %2801, %2765
  %2805 = select i1 %384, float %2787, float %2803
  %2806 = select i1 %384, float %2798, float %2804
  %2807 = call float @dx.op.binary.f32(i32 36, float %2802, float 3.225500e+04)  ; FMin(a,b)
  %2808 = call float @dx.op.binary.f32(i32 36, float %2805, float 3.225500e+04)  ; FMin(a,b)
  %2809 = call float @dx.op.binary.f32(i32 36, float %2806, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2807)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2808)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2809)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

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
!4 = !{!5, null, !35, !40}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!25 = !{i32 17, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!29 = !{i32 21, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!30 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!35 = !{!36, !37, !38, !39}
!36 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!37 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!38 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!39 = !{i32 3, %perPrim* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!40 = !{!41, !42, !43, !44}
!41 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!42 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!43 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!44 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!45 = !{[9 x i32] [i32 7, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7]}
!46 = !{void ()* @ps_main, !"ps_main", !47, !4, !58}
!47 = !{!48, !55, null}
!48 = !{!49, !52, !54}
!49 = !{i32 0, !"SV_Position", i8 9, i8 3, !50, i8 4, i32 1, i8 4, i32 0, i8 0, !51}
!50 = !{i32 0}
!51 = !{i32 3, i32 11}
!52 = !{i32 1, !"NORMAL", i8 9, i8 0, !50, i8 2, i32 1, i8 3, i32 1, i8 0, !53}
!53 = !{i32 3, i32 7}
!54 = !{i32 2, !"SV_SampleIndex", i8 5, i8 12, !50, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !50, i8 0, i32 1, i8 4, i32 0, i8 0, !57}
!57 = !{i32 3, i32 15}
!58 = !{i32 0, i64 24}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}

