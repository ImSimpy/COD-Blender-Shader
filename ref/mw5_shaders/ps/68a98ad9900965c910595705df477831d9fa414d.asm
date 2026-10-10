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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 5a626e9221f346b8aa808f0c36dcf089
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
; SV_Target                1                              
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
;                                       UAV     f32          2d      U0             u7     1
;
;
; ViewId state:
;
; Number of inputs: 7, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6 }
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
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = fmul fast float %42, %38
  %44 = fmul fast float %42, %39
  %45 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %46 = call float @dx.op.unary.f32(i32 25, float %45)  ; Rsqrt(value)
  %47 = fmul fast float %46, %35
  %48 = fmul fast float %46, %36
  %49 = fmul fast float %46, %37
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %53 = fmul fast float %43, 2.000000e+00
  %54 = fmul fast float %53, %51
  %55 = fmul fast float %44, 2.000000e+00
  %56 = fmul fast float %55, %52
  %57 = fsub fast float 1.000000e+00, %54
  %58 = fsub fast float 1.000000e+00, %56
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %57, %60
  %64 = fmul fast float %57, %61
  %65 = fmul fast float %57, %62
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fmul fast float %58, %67
  %71 = fmul fast float %58, %68
  %72 = fmul fast float %58, %69
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fadd fast float %70, %74
  %78 = fadd fast float %77, %63
  %79 = fadd fast float %71, %75
  %80 = fadd fast float %79, %64
  %81 = fadd fast float %72, %76
  %82 = fadd fast float %81, %65
  %83 = fmul fast float %78, %40
  %84 = fmul fast float %80, %40
  %85 = fmul fast float %82, %40
  %86 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %87 = shl i32 %86, 16
  %88 = or i32 %87, %86
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 3
  %91 = bitcast float %90 to i32
  %92 = mul i32 %91, 928
  %93 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  %95 = or i32 %92, 24
  %96 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %95, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = extractvalue %dx.types.ResRet.f32 %96, 1
  %99 = extractvalue %dx.types.ResRet.f32 %96, 2
  %100 = extractvalue %dx.types.ResRet.f32 %96, 3
  %101 = add i32 %92, 40
  %102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = add i32 %92, 564
  %105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 1
  %107 = add i32 %92, 580
  %108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %107, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 1
  %110 = add i32 %92, 852
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %110, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = add i32 %92, 860
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = extractvalue %dx.types.ResRet.f32 %114, 1
  %117 = extractvalue %dx.types.ResRet.f32 %114, 2
  %118 = and i32 %94, 512
  %119 = icmp ne i32 %118, 0
  %120 = icmp ne i32 %112, 0
  %121 = and i1 %119, %120
  br i1 %121, label %122, label %189

; <label>:122                                     ; preds = %0
  %123 = extractvalue %dx.types.ResRet.f32 %108, 3
  %124 = extractvalue %dx.types.ResRet.f32 %108, 2
  %125 = extractvalue %dx.types.ResRet.f32 %108, 0
  %126 = extractvalue %dx.types.ResRet.f32 %105, 3
  %127 = extractvalue %dx.types.ResRet.f32 %105, 2
  %128 = extractvalue %dx.types.ResRet.f32 %105, 0
  %129 = add i32 %112, 0
  %130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %129, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = fadd fast float %134, %83
  %137 = fadd fast float %135, %84
  %138 = fmul fast float %136, %106
  %139 = fmul fast float %137, %106
  %140 = fmul fast float %132, %127
  %141 = fmul fast float %132, %126
  %142 = fadd fast float %138, %140
  %143 = fadd fast float %139, %141
  %144 = fmul fast float %136, %109
  %145 = fmul fast float %137, %109
  %146 = fmul fast float %132, %124
  %147 = fmul fast float %132, %123
  %148 = fadd fast float %144, %146
  %149 = fadd fast float %145, %147
  %150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %130, %dx.types.Handle %150, float %142, float %143, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = extractvalue %dx.types.ResRet.f32 %151, 1
  %154 = extractvalue %dx.types.ResRet.f32 %151, 2
  %155 = extractvalue %dx.types.ResRet.f32 %151, 3
  %156 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %130, %dx.types.Handle %150, float %148, float %149, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = extractvalue %dx.types.ResRet.f32 %156, 1
  %159 = extractvalue %dx.types.ResRet.f32 %156, 2
  %160 = extractvalue %dx.types.ResRet.f32 %156, 3
  %161 = fmul fast float %152, %115
  %162 = fadd fast float %161, %116
  %163 = call float @dx.op.unary.f32(i32 7, float %162)  ; Saturate(value)
  %164 = fadd fast float %153, %155
  %165 = fmul fast float %164, %117
  %166 = fsub fast float %165, %117
  %167 = fsub fast float %153, %155
  %168 = fmul fast float %157, %115
  %169 = fadd fast float %168, %116
  %170 = call float @dx.op.unary.f32(i32 7, float %169)  ; Saturate(value)
  %171 = fadd fast float %158, %160
  %172 = fmul fast float %171, %117
  %173 = fsub fast float %172, %117
  %174 = fsub fast float %158, %160
  %175 = fmul fast float %166, %128
  %176 = fmul fast float %167, %128
  %177 = fmul fast float %173, %125
  %178 = fmul fast float %174, %125
  %179 = fadd fast float %177, %175
  %180 = fadd fast float %178, %176
  %181 = fmul fast float %180, %117
  %182 = fmul fast float %154, %128
  %183 = fmul fast float %159, %125
  %184 = fmul fast float %163, %128
  %185 = fmul fast float %170, %125
  %186 = fadd fast float %185, %184
  %187 = fadd fast float %182, 1.000000e+00
  %188 = fadd fast float %187, %183
  br label %189

; <label>:189                                     ; preds = %122, %0
  %190 = phi float [ %179, %122 ], [ 0.000000e+00, %0 ]
  %191 = phi float [ %181, %122 ], [ 0.000000e+00, %0 ]
  %192 = phi float [ %188, %122 ], [ 1.000000e+00, %0 ]
  %193 = phi float [ %186, %122 ], [ %103, %0 ]
  %194 = and i32 %86, 65535
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = lshr i32 %88, 16
  %197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %196)  ; LegacyF16ToF32(value)
  %198 = fadd fast float %195, %97
  %199 = fadd fast float %197, %98
  %200 = fadd fast float %195, %99
  %201 = fadd fast float %197, %100
  %202 = call i32 @dx.op.legacyF32ToF16(i32 130, float %198)  ; LegacyF32ToF16(value)
  %203 = call i32 @dx.op.legacyF32ToF16(i32 130, float %199)  ; LegacyF32ToF16(value)
  %204 = shl i32 %203, 16
  %205 = or i32 %204, %202
  %206 = call i32 @dx.op.legacyF32ToF16(i32 130, float %200)  ; LegacyF32ToF16(value)
  %207 = call i32 @dx.op.legacyF32ToF16(i32 130, float %201)  ; LegacyF32ToF16(value)
  %208 = shl i32 %207, 16
  %209 = or i32 %208, %206
  %210 = fadd fast float %195, %192
  %211 = fadd fast float %197, %193
  %212 = call i32 @dx.op.legacyF32ToF16(i32 130, float %210)  ; LegacyF32ToF16(value)
  %213 = call i32 @dx.op.legacyF32ToF16(i32 130, float %211)  ; LegacyF32ToF16(value)
  %214 = shl i32 %213, 16
  %215 = or i32 %214, %212
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = fmul fast float %217, 0x3FE3C6EF40000000
  %219 = frem fast float %43, 2.560000e+02
  %220 = frem fast float %44, 2.560000e+02
  %221 = fptoui float %219 to i32
  %222 = fptoui float %220 to i32
  %223 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = extractvalue %dx.types.ResRet.f32 %223, 1
  %226 = fadd fast float %224, %218
  %227 = fadd fast float %225, %218
  %228 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %229 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %230 = fcmp fast ogt float %49, 0.000000e+00
  %231 = fcmp fast olt float %49, 0.000000e+00
  %232 = zext i1 %230 to i32
  %233 = zext i1 %231 to i32
  %234 = sub nsw i32 %232, %233
  %235 = sitofp i32 %234 to float
  %236 = fadd fast float %235, %49
  %237 = fdiv fast float -1.000000e+00, %236
  %238 = fmul fast float %47, %48
  %239 = fmul fast float %238, %237
  %240 = fmul fast float %47, %47
  %241 = fmul fast float %240, %235
  %242 = fmul fast float %241, %237
  %243 = fadd fast float %242, 1.000000e+00
  %244 = fmul fast float %239, %235
  %245 = fmul fast float %235, %47
  %246 = fmul fast float %48, %48
  %247 = fmul fast float %246, %237
  %248 = fadd fast float %247, %235
  %249 = and i32 %202, 65535
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %205, 16
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = and i32 %206, 65535
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %209, 16
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = and i32 %212, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %215, 16
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = call float @dx.op.dot2.f32(i32 54, float %190, float %191, float %190, float %191)  ; Dot2(ax,ay,bx,by)
  %262 = fmul fast float %261, 0x3FE3333340000000
  %263 = fsub fast float 1.000000e+00, %262
  %264 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %263, float %190, float %191, float %263)  ; Dot3(ax,ay,az,bx,by,bz)
  %265 = call float @dx.op.unary.f32(i32 25, float %264)  ; Rsqrt(value)
  %266 = fmul fast float %265, %190
  %267 = fmul fast float %265, %191
  %268 = fmul fast float %263, %265
  %269 = fmul fast float %268, %47
  %270 = fmul fast float %268, %48
  %271 = fmul fast float %268, %49
  %272 = fmul fast float %266, %243
  %273 = fmul fast float %244, %266
  %274 = fmul fast float %245, %266
  %275 = fadd fast float %269, %272
  %276 = fadd fast float %270, %273
  %277 = fsub fast float %271, %274
  %278 = fmul fast float %267, %239
  %279 = fmul fast float %267, %248
  %280 = fmul fast float %267, %48
  %281 = fadd fast float %275, %278
  %282 = fadd fast float %276, %279
  %283 = fsub fast float %277, %280
  %284 = call float @dx.op.dot3.f32(i32 55, float %281, float %282, float %283, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %285 = call float @dx.op.unary.f32(i32 25, float %284)  ; Rsqrt(value)
  %286 = fmul fast float %281, %285
  %287 = fmul fast float %282, %285
  %288 = fmul fast float %283, %285
  %289 = fadd fast float %256, 0xBFB99999A0000000
  %290 = call float @dx.op.unary.f32(i32 7, float %289)  ; Saturate(value)
  %291 = fmul fast float %290, 0x3FF1C71C80000000
  %292 = call float @dx.op.binary.f32(i32 36, float %256, float 0x3FB99999A0000000)  ; FMin(a,b)
  %293 = fsub fast float 1.000000e+00, %291
  %294 = call float @dx.op.unary.f32(i32 7, float %293)  ; Saturate(value)
  %295 = fmul fast float %294, %250
  %296 = fmul fast float %294, %252
  %297 = fmul fast float %294, %254
  %298 = call float @dx.op.unary.f32(i32 7, float %295)  ; Saturate(value)
  %299 = call float @dx.op.unary.f32(i32 7, float %296)  ; Saturate(value)
  %300 = call float @dx.op.unary.f32(i32 7, float %297)  ; Saturate(value)
  %301 = fmul fast float %291, %250
  %302 = fmul fast float %291, %252
  %303 = fmul fast float %291, %254
  %304 = fadd fast float %301, %292
  %305 = fadd fast float %302, %292
  %306 = fadd fast float %303, %292
  %307 = call float @dx.op.unary.f32(i32 7, float %304)  ; Saturate(value)
  %308 = call float @dx.op.unary.f32(i32 7, float %305)  ; Saturate(value)
  %309 = call float @dx.op.unary.f32(i32 7, float %306)  ; Saturate(value)
  %310 = fmul fast float %308, 0x401CF23780000000
  %311 = fadd fast float %310, 0x3FF32641C0000000
  %312 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = call float @dx.op.unary.f32(i32 25, float %312)  ; Rsqrt(value)
  %314 = fmul fast float %313, %83
  %315 = fmul fast float %313, %84
  %316 = fmul fast float %313, %85
  %317 = fdiv fast float 1.000000e+00, %311
  %318 = fadd fast float %317, -1.000000e+00
  %319 = fadd fast float %317, 1.000000e+00
  %320 = fdiv fast float %318, %319
  %321 = fmul fast float %320, %320
  %322 = call float @dx.op.dot3.f32(i32 55, float %314, float %315, float %316, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %323 = call float @dx.op.binary.f32(i32 35, float %322, float -1.000000e+00)  ; FMax(a,b)
  %324 = call float @dx.op.binary.f32(i32 36, float %323, float 1.000000e+00)  ; FMin(a,b)
  %325 = fmul fast float %317, %317
  %326 = fmul fast float %324, %324
  %327 = fsub fast float 1.000000e+00, %326
  %328 = fmul fast float %325, %327
  %329 = fsub fast float 1.000000e+00, %328
  %330 = fcmp fast olt float %317, 1.000000e+00
  %331 = select i1 %330, float %326, float %329
  %332 = fcmp fast ogt float %329, 0.000000e+00
  %333 = fsub fast float 1.000000e+00, %321
  %334 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %335 = fsub fast float 1.000000e+00, %334
  %336 = call float @dx.op.unary.f32(i32 23, float %335)  ; Log(value)
  %337 = fmul fast float %336, 5.000000e+00
  %338 = call float @dx.op.unary.f32(i32 21, float %337)  ; Exp(value)
  %339 = fmul fast float %338, %333
  %340 = fadd fast float %339, %321
  %341 = select i1 %332, float %340, float 1.000000e+00
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 3
  %344 = fmul fast float %343, %260
  %345 = call float @dx.op.unary.f32(i32 7, float %344)  ; Saturate(value)
  %346 = call float @dx.op.unary.f32(i32 7, float %258)  ; Saturate(value)
  %347 = call float @dx.op.dot3.f32(i32 55, float %307, float %308, float %309, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %348 = fsub fast float 1.000000e+00, %347
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = lshr i32 %350, 8
  %354 = and i32 %353, 255
  %355 = uitofp i32 %354 to float
  %356 = fmul fast float %355, %348
  %357 = fadd fast float %356, %352
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = call float @dx.op.unary.f32(i32 7, float %358)  ; Saturate(value)
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.i32 %363, 3
  %365 = and i32 %364, 3
  %366 = icmp ne i32 %365, 0
  %367 = and i32 %364, 4
  %368 = icmp ne i32 %367, 0
  %369 = and i1 %366, %368
  br i1 %369, label %370, label %381

; <label>:370                                     ; preds = %189
  %371 = extractvalue %dx.types.CBufRet.f32 %362, 3
  %372 = fmul fast float %371, %44
  %373 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %374 = fmul fast float %373, %43
  %375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %29, float %374, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %376 = extractvalue %dx.types.ResRet.f32 %375, 0
  %377 = fsub fast float 1.000000e+00, %376
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %380 = fcmp fast olt float %377, %379
  br label %384

; <label>:381                                     ; preds = %189
  %382 = icmp eq i32 %367, 0
  %383 = and i1 %366, %382
  br label %384

; <label>:384                                     ; preds = %381, %370
  %385 = phi i1 [ %380, %370 ], [ %383, %381 ]
  %386 = fsub fast float -0.000000e+00, %314
  %387 = fsub fast float -0.000000e+00, %315
  %388 = fsub fast float -0.000000e+00, %316
  %389 = select i1 %385, float 0.000000e+00, float %309
  %390 = call float @dx.op.dot3.f32(i32 55, float %286, float %287, float %288, float %386, float %387, float %388)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = call float @dx.op.unary.f32(i32 7, float %390)  ; Saturate(value)
  %392 = fmul fast float %322, 2.000000e+00
  %393 = fmul fast float %392, %286
  %394 = fmul fast float %392, %287
  %395 = fmul fast float %392, %288
  %396 = fsub fast float %314, %393
  %397 = fsub fast float %315, %394
  %398 = fsub fast float %316, %395
  %399 = call float @dx.op.binary.f32(i32 36, float %346, float 1.000000e+00)  ; FMin(a,b)
  %400 = fsub fast float 1.000000e+00, %346
  %401 = bitcast float %400 to i32
  %402 = sub nsw i32 2129859010, %401
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %406 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %407 = fadd fast float %404, %83
  %408 = fadd fast float %405, %84
  %409 = fadd fast float %406, %85
  %410 = fmul fast float %286, 3.200000e+01
  %411 = fmul fast float %287, 3.200000e+01
  %412 = fadd fast float %407, %410
  %413 = fadd fast float %408, %411
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 0
  %416 = extractvalue %dx.types.CBufRet.f32 %414, 1
  %417 = fsub fast float %412, %415
  %418 = fsub fast float %413, %416
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %422 = fmul fast float %417, %420
  %423 = fmul fast float %418, %421
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = fmul fast float %422, %425
  %427 = extractvalue %dx.types.CBufRet.f32 %424, 1
  %428 = fadd fast float %426, %427
  %429 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %430 = fmul fast float %429, %423
  %431 = extractvalue %dx.types.CBufRet.f32 %424, 3
  %432 = fadd fast float %430, %431
  %433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %428, float %432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = extractvalue %dx.types.ResRet.f32 %433, 1
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
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
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %453 = fmul fast float %452, %450
  %454 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %455 = fadd fast float %453, %454
  %456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %428, float %432, float %455, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %463 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %464 = fmul fast float %461, %457
  %465 = fmul fast float %462, %458
  %466 = fmul fast float %463, %459
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %469 = extractvalue %dx.types.CBufRet.f32 %467, 1
  %470 = extractvalue %dx.types.CBufRet.f32 %467, 2
  %471 = fadd fast float %464, %468
  %472 = fadd fast float %465, %469
  %473 = fadd fast float %466, %470
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = fmul fast float %475, %422
  %477 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %478 = fadd fast float %476, %477
  %479 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %480 = fmul fast float %479, %423
  %481 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %482 = fadd fast float %480, %481
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %485 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %486 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %487 = extractvalue %dx.types.CBufRet.f32 %483, 3
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %490 = extractvalue %dx.types.CBufRet.f32 %488, 1
  %491 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %492 = extractvalue %dx.types.CBufRet.f32 %488, 3
  %493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %29, float %478, float %482, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  %497 = extractvalue %dx.types.ResRet.f32 %493, 3
  %498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %29, float %478, float %482, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %29, float %478, float %482, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = extractvalue %dx.types.ResRet.f32 %519, 3
  %524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %29, float %478, float %482, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %29, float %478, float %482, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = extractvalue %dx.types.ResRet.f32 %545, 2
  %549 = extractvalue %dx.types.ResRet.f32 %545, 3
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %29, float %478, float %482, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
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
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
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
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
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
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = fmul fast float %619, %597
  %621 = fmul fast float %619, %598
  %622 = fmul fast float %619, %599
  %623 = fmul fast float %619, %600
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = fmul fast float %625, %608
  %627 = fmul fast float %625, %609
  %628 = fadd fast float %626, %620
  %629 = fadd fast float %627, %622
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
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

; <label>:673                                     ; preds = %384
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

; <label>:688                                     ; preds = %673, %384
  %689 = phi float [ %687, %673 ], [ 1.000000e+00, %384 ]
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
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %775, label %776, label %916, !dx.controlflow.hints !63

; <label>:776                                     ; preds = %752
  %777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.f32 %777, 2
  %779 = extractvalue %dx.types.CBufRet.f32 %777, 3
  %780 = fmul fast float %778, %422
  %781 = fmul fast float %779, %423
  %782 = call float @dx.op.unary.f32(i32 27, float %780)  ; Round_ni(value)
  %783 = call float @dx.op.unary.f32(i32 27, float %781)  ; Round_ni(value)
  %784 = fptosi float %782 to i32
  %785 = fptosi float %783 to i32
  %786 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %784, i32 %785, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %29, float %816, float %817, float %819, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %29, float %856, float %857, float %859, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = extractvalue %dx.types.ResRet.f32 %860, 1
  %863 = extractvalue %dx.types.ResRet.f32 %860, 2
  %864 = fadd fast float %858, 5.312500e-01
  %865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %29, float %856, float %857, float %864, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %890 = fmul fast float %83, %83
  %891 = fmul fast float %84, %84
  %892 = fadd fast float %890, %891
  %893 = call float @dx.op.unary.f32(i32 24, float %892)  ; Sqrt(value)
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = fsub fast float %893, %895
  %898 = fdiv fast float %897, %896
  %899 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %900 = fmul fast float %899, 2.000000e+00
  %901 = fsub fast float 3.000000e+00, %900
  %902 = fmul fast float %899, %899
  %903 = fmul fast float %902, %901
  %904 = call float @dx.op.dot3.f32(i32 55, float %887, float %888, float %889, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
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
  br i1 %924, label %925, label %982, !dx.controlflow.hints !64

; <label>:925                                     ; preds = %916
  %926 = fmul fast float %448, 0x3FC24924A0000000
  %927 = fsub fast float %409, %446
  %928 = fdiv fast float %927, %926
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
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
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
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
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
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
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1074 = call float @dx.op.dot3.f32(i32 55, float %1069, float %1070, float %1071, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %1124 = call float @dx.op.dot3.f32(i32 55, float %1119, float %1120, float %1121, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %1174 = call float @dx.op.dot3.f32(i32 55, float %1169, float %1170, float %1171, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 0
  %1188 = call float @dx.op.binary.f32(i32 36, float %298, float %1187)  ; FMin(a,b)
  %1189 = fsub fast float 1.000000e+00, %399
  %1190 = fmul fast float %1188, %1189
  %1191 = fsub fast float 1.000000e+00, %1190
  %1192 = bitcast float %1191 to i32
  %1193 = sub nsw i32 2129859010, %1192
  %1194 = bitcast i32 %1193 to float
  %1195 = call float @dx.op.binary.f32(i32 36, float %299, float %1187)  ; FMin(a,b)
  %1196 = fmul fast float %1195, %1189
  %1197 = fsub fast float 1.000000e+00, %1196
  %1198 = bitcast float %1197 to i32
  %1199 = sub nsw i32 2129859010, %1198
  %1200 = bitcast i32 %1199 to float
  %1201 = call float @dx.op.binary.f32(i32 36, float %300, float %1187)  ; FMin(a,b)
  %1202 = fmul fast float %1201, %1189
  %1203 = fsub fast float 1.000000e+00, %1202
  %1204 = bitcast float %1203 to i32
  %1205 = sub nsw i32 2129859010, %1204
  %1206 = bitcast i32 %1205 to float
  %1207 = fmul fast float %1183, %399
  %1208 = fmul fast float %1207, %1194
  %1209 = fmul fast float %1184, %399
  %1210 = fmul fast float %1209, %1200
  %1211 = fmul fast float %1185, %399
  %1212 = fmul fast float %1211, %1206
  %1213 = call float @dx.op.dot3.f32(i32 55, float %1208, float %1210, float %1212, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1214 = select i1 %385, float 0.000000e+00, float %1208
  %1215 = select i1 %385, float %1213, float %1210
  %1216 = select i1 %385, float 0.000000e+00, float %1212
  %1217 = fsub fast float 1.000000e+00, %307
  %1218 = fsub fast float 1.000000e+00, %308
  %1219 = fsub fast float 1.000000e+00, %389
  %1220 = fmul fast float %341, %1217
  %1221 = fmul fast float %341, %1218
  %1222 = fmul fast float %1219, %341
  %1223 = fadd fast float %1220, %307
  %1224 = fadd fast float %1221, %308
  %1225 = fadd fast float %1222, %389
  %1226 = call float @dx.op.binary.f32(i32 35, float %1224, float %1225)  ; FMax(a,b)
  %1227 = call float @dx.op.binary.f32(i32 35, float %1223, float %1226)  ; FMax(a,b)
  %1228 = fsub fast float 1.000000e+00, %1227
  %1229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.i32 %1229, 0
  %1231 = and i32 %1230, 524288
  %1232 = icmp ne i32 %1231, 0
  %1233 = select i1 %1232, float 0.000000e+00, float 1.000000e+00
  %1234 = xor i1 %1232, true
  %1235 = zext i1 %1234 to i32
  br i1 %1232, label %1236, label %1455

; <label>:1236                                    ; preds = %1168
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.CBufRet.f32 %1237, 2
  %1241 = extractvalue %dx.types.CBufRet.f32 %1237, 3
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.CBufRet.f32 %1242, 2
  %1246 = extractvalue %dx.types.CBufRet.f32 %1242, 3
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.CBufRet.f32 %1247, 2
  %1251 = extractvalue %dx.types.CBufRet.f32 %1247, 3
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1255 = extractvalue %dx.types.CBufRet.f32 %1252, 2
  %1256 = extractvalue %dx.types.CBufRet.f32 %1252, 3
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1260 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1261 = extractvalue %dx.types.CBufRet.f32 %1257, 3
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.CBufRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.CBufRet.f32 %1262, 2
  %1266 = extractvalue %dx.types.CBufRet.f32 %1262, 3
  %1267 = call float @dx.op.dot3.f32(i32 55, float %1263, float %1264, float %1265, float %396, float %397, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1270 = fmul fast float %1267, 8.000000e+00
  %1271 = fmul fast float %1270, %1269
  %1272 = call float @dx.op.unary.f32(i32 7, float %1271)  ; Saturate(value)
  %1273 = fcmp fast ogt float %1272, 0.000000e+00
  br i1 %1273, label %1274, label %1442, !dx.controlflow.hints !65

; <label>:1274                                    ; preds = %1236
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 1
  %1277 = fmul fast float %228, 2.000000e+00
  %1278 = fmul fast float %229, 2.000000e+00
  %1279 = fadd fast float %1277, -1.000000e+00
  %1280 = fadd fast float %1278, -1.000000e+00
  %1281 = fmul fast float %1276, %1279
  %1282 = fmul fast float %1276, %1280
  %1283 = fadd fast float %1281, %43
  %1284 = fadd fast float %1282, %44
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1287 = extractvalue %dx.types.CBufRet.f32 %1285, 3
  %1288 = fmul fast float %1283, %1286
  %1289 = fmul fast float %1284, %1287
  %1290 = fadd fast float %345, 0xBFE3333340000000
  %1291 = fmul fast float %1290, 0x4004000020000000
  %1292 = fsub fast float 1.000000e+00, %1291
  %1293 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1294 = fmul fast float %1293, 3.000000e+00
  %1295 = fadd fast float %1294, %228
  %1296 = call float @dx.op.unary.f32(i32 27, float %1295)  ; Round_ni(value)
  %1297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %30, float %1288, float %1289, float %1296, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  br i1 %1307, label %1308, label %1442, !dx.controlflow.hints !66

; <label>:1308                                    ; preds = %1274
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1328 = fadd fast float %1313, %83
  %1329 = fadd fast float %1314, %84
  %1330 = fadd fast float %1315, %85
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
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 0
  %1348 = extractvalue %dx.types.CBufRet.f32 %1346, 1
  %1349 = fmul fast float %1344, %1347
  %1350 = fmul fast float %1345, %1348
  %1351 = extractvalue %dx.types.CBufRet.f32 %1346, 2
  %1352 = extractvalue %dx.types.CBufRet.f32 %1346, 3
  %1353 = fadd fast float %1349, %1351
  %1354 = fadd fast float %1350, %1352
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 3
  %1357 = fmul fast float %1356, %396
  %1358 = fmul fast float %1356, %397
  %1359 = fmul fast float %1356, %398
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
  %1401 = fadd fast float %345, -1.000000e+00
  %1402 = fsub fast float %1399, %1342
  %1403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1417 = fadd fast float %228, -5.000000e-01
  %1418 = fadd fast float %229, -5.000000e-01
  %1419 = fmul fast float %1416, 0x3F9EB851E0000000
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1421 = fmul fast float %1420, %1417
  %1422 = fmul fast float %1420, %1418
  %1423 = fadd fast float %1394, %1421
  %1424 = fadd fast float %1395, %1422
  %1425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %1423, float %1424, float undef, float undef, i32 0, i32 0, i32 undef, float %1416)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1426 = extractvalue %dx.types.ResRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.ResRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.ResRet.f32 %1425, 2
  %1429 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1430 = fmul fast float %1429, %1426
  %1431 = fmul fast float %1429, %1427
  %1432 = fmul fast float %1429, %1428
  %1433 = select i1 %385, float 0.000000e+00, float %1431
  %1434 = select i1 %385, float 0.000000e+00, float %1432
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
  %1463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1463, 2
  %1465 = extractvalue %dx.types.CBufRet.f32 %1463, 3
  %1466 = fmul fast float %1464, %43
  %1467 = fmul fast float %1465, %44
  %1468 = fptoui float %1466 to i32
  %1469 = fptoui float %1467 to i32
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1473 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  %1474 = fadd fast float %40, -4.000000e+00
  %1475 = call float @dx.op.binary.f32(i32 35, float %1474, float 0.000000e+00)  ; FMax(a,b)
  %1476 = fadd fast float %1475, %1471
  %1477 = fmul fast float %1476, %1472
  %1478 = call float @dx.op.unary.f32(i32 23, float %1477)  ; Log(value)
  %1479 = fmul fast float %1478, %1473
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 2
  %1482 = fmul fast float %1479, %1481
  %1483 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  %1484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.i32 %1484, 1
  %1486 = add i32 %1485, -1
  %1487 = uitofp i32 %1485 to float
  %1488 = fmul fast float %1487, %1483
  %1489 = fptoui float %1488 to i32
  %1490 = call i32 @dx.op.binary.i32(i32 40, i32 %1489, i32 %1486)  ; UMin(a,b)
  %1491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.i32 %1491, 2
  %1493 = extractvalue %dx.types.CBufRet.i32 %1491, 3
  %1494 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1469, i32 %1492, i32 %1468)  ; UMad(a,b,c)
  %1495 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1490, i32 %1493, i32 %1494)  ; UMad(a,b,c)
  %1496 = call float @dx.op.binary.f32(i32 35, float %40, float 0.000000e+00)  ; FMax(a,b)
  %1497 = fptoui float %1496 to i32
  %1498 = lshr i32 %1497, 5
  %1499 = call i32 @dx.op.binary.i32(i32 40, i32 %1498, i32 8191)  ; UMin(a,b)
  %1500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.i32 %1500, 2
  %1502 = add nsw i32 %1501, -1
  %1503 = call i32 @dx.op.binary.i32(i32 37, i32 %1502, i32 0)  ; IMax(a,b)
  %1504 = shl i32 %1499, 2
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.i32 %1520, 2
  %1522 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1495, i32 %1521, i32 %1519)  ; UMad(a,b,c)
  %1523 = shl i32 %1522, 2
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1555, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.ResRet.f32 %1556, 1
  %1559 = extractvalue %dx.types.ResRet.f32 %1556, 2
  %1560 = add i32 %1555, 12
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = add i32 %1555, 16
  %1564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.f32 %1564, 0
  %1566 = extractvalue %dx.types.ResRet.f32 %1564, 1
  %1567 = extractvalue %dx.types.ResRet.f32 %1564, 2
  %1568 = add i32 %1555, 28
  %1569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1568, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.f32 %1569, 0
  %1571 = add i32 %1555, 32
  %1572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.ResRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.ResRet.f32 %1572, 2
  %1576 = extractvalue %dx.types.ResRet.f32 %1572, 3
  %1577 = add i32 %1555, 48
  %1578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.f32 %1578, 0
  %1580 = extractvalue %dx.types.ResRet.f32 %1578, 1
  %1581 = add i32 %1555, 56
  %1582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1581, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.ResRet.f32 %1582, 1
  %1585 = add i32 %1555, 64
  %1586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.f32 %1586, 0
  %1588 = extractvalue %dx.types.ResRet.f32 %1586, 1
  %1589 = mul i32 %1551, 60
  %1590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.ResRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.ResRet.f32 %1590, 2
  %1594 = add i32 %1589, 12
  %1595 = add i32 %1589, 48
  %1596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.ResRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.ResRet.f32 %1596, 2
  %1600 = and i32 %1562, 32767
  %1601 = bitcast float %1557 to i32
  %1602 = icmp eq i32 %1601, -1
  %1603 = bitcast float %1558 to i32
  %1604 = and i32 %1562, 32768
  %1605 = icmp ne i32 %1604, 0
  %1606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1607 = extractvalue %dx.types.CBufRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.CBufRet.f32 %1606, 1
  %1609 = extractvalue %dx.types.CBufRet.f32 %1606, 2
  %1610 = fsub fast float %1591, %1607
  %1611 = fsub fast float %1592, %1608
  %1612 = fsub fast float %1593, %1609
  %1613 = fsub fast float %83, %1610
  %1614 = fsub fast float %84, %1611
  %1615 = fsub fast float %85, %1612
  %1616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.f32 %1616, 0
  %1618 = extractvalue %dx.types.ResRet.f32 %1616, 1
  %1619 = extractvalue %dx.types.ResRet.f32 %1616, 2
  %1620 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float %1617, float %1618, float %1619)  ; Dot3(ax,ay,az,bx,by,bz)
  %1621 = add i32 %1589, 24
  %1622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.ResRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.ResRet.f32 %1622, 2
  %1626 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float %1623, float %1624, float %1625)  ; Dot3(ax,ay,az,bx,by,bz)
  %1627 = add i32 %1589, 36
  %1628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1627, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1661 = call float @dx.op.dot3.f32(i32 55, float %396, float %397, float %398, float %1658, float %1659, float %1660)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %1676 = call float @dx.op.dot3.f32(i32 55, float %396, float %397, float %398, float %1673, float %1674, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %1691 = call float @dx.op.dot3.f32(i32 55, float %396, float %397, float %398, float %1688, float %1689, float %1690)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %1705 = fmul fast float %1704, %396
  %1706 = fmul fast float %1704, %397
  %1707 = fmul fast float %1704, %398
  %1708 = fadd fast float %1705, %83
  %1709 = fadd fast float %1706, %84
  %1710 = fadd fast float %1707, %85
  %1711 = fsub fast float %1708, %1557
  %1712 = fsub fast float %1709, %1558
  %1713 = fsub fast float %1710, %1559
  br label %1721

; <label>:1714                                    ; preds = %1656
  %1715 = fmul fast float %396, 8.096000e+03
  %1716 = fmul fast float %397, 8.096000e+03
  %1717 = fmul fast float %398, 8.096000e+03
  %1718 = fadd fast float %1715, %83
  %1719 = fadd fast float %1716, %84
  %1720 = fadd fast float %1717, %85
  br label %1721

; <label>:1721                                    ; preds = %1714, %1657
  %1722 = phi float [ %396, %1714 ], [ %1711, %1657 ]
  %1723 = phi float [ %397, %1714 ], [ %1712, %1657 ]
  %1724 = phi float [ %398, %1714 ], [ %1713, %1657 ]
  %1725 = phi float [ %1718, %1714 ], [ %1708, %1657 ]
  %1726 = phi float [ %1719, %1714 ], [ %1709, %1657 ]
  %1727 = phi float [ %1720, %1714 ], [ %1710, %1657 ]
  %1728 = fcmp fast olt float %1576, 1.000000e+00
  br i1 %1728, label %1729, label %1760, !dx.controlflow.hints !67

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
  %1765 = fmul fast float %345, 0x400187C840000000
  %1766 = fadd fast float %1765, 0xC00EFC2120000000
  %1767 = fmul fast float %1766, %345
  %1768 = fadd fast float %1767, 0x3FE5D16340000000
  %1769 = fmul fast float %1768, %345
  %1770 = fadd fast float %1769, 1.000000e+00
  %1771 = call float @dx.op.unary.f32(i32 7, float %1770)  ; Saturate(value)
  %1772 = fsub fast float %1725, %83
  %1773 = fsub fast float %1726, %84
  %1774 = fsub fast float %1727, %85
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
  %1799 = phi float [ %345, %1795 ], [ %1794, %1764 ]
  %1800 = phi i32 [ %1797, %1795 ], [ 0, %1764 ]
  %1801 = fmul float %1799, 5.000000e+00
  %1802 = fsub float 5.000000e+00, %1801
  %1803 = icmp ne i32 %1800, 0
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %28, float %1845, float %1846, float %1835, float undef, i32 0, i32 0, i32 undef, float %1807)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.ResRet.f32 %1847, 1
  %1850 = extractvalue %dx.types.ResRet.f32 %1847, 2
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %1873, label %1874, label %1514, !llvm.loop !68

; <label>:1874                                    ; preds = %1867
  br label %1875

; <label>:1875                                    ; preds = %1874, %1462
  %1876 = phi float [ 0.000000e+00, %1462 ], [ %1868, %1874 ]
  %1877 = phi float [ 0.000000e+00, %1462 ], [ %1869, %1874 ]
  %1878 = phi float [ 0.000000e+00, %1462 ], [ %1870, %1874 ]
  %1879 = call float @dx.op.dot3.f32(i32 55, float %1876, float %1877, float %1878, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1880 = select i1 %385, float 0.000000e+00, float %1876
  %1881 = select i1 %385, float %1879, float %1877
  %1882 = select i1 %385, float 0.000000e+00, float %1878
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
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 3
  %1911 = fcmp fast oeq float %1910, 0.000000e+00
  br i1 %1911, label %2064, label %1912

; <label>:1912                                    ; preds = %1899
  %1913 = extractvalue %dx.types.CBufRet.f32 %1909, 0
  %1914 = extractvalue %dx.types.CBufRet.f32 %1909, 1
  %1915 = extractvalue %dx.types.CBufRet.f32 %1909, 2
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.CBufRet.f32 %1916, 1
  %1919 = extractvalue %dx.types.CBufRet.f32 %1916, 2
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 0
  %1922 = extractvalue %dx.types.CBufRet.f32 %1920, 1
  %1923 = call float @dx.op.dot3.f32(i32 55, float %1917, float %1918, float %1919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1924 = select i1 %385, float %1921, float %1917
  %1925 = select i1 %385, float %1923, float %1918
  %1926 = select i1 %385, float %1922, float %1919
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 1
  %1929 = fcmp fast une float %1928, 0.000000e+00
  br i1 %1929, label %1930, label %1947

; <label>:1930                                    ; preds = %1912
  %1931 = fptoui float %43 to i32
  %1932 = fptoui float %44 to i32
  %1933 = lshr i32 %1931, 4
  %1934 = lshr i32 %1932, 4
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 0
  %1937 = fptoui float %1936 to i32
  %1938 = add i32 %1937, 15
  %1939 = lshr i32 %1938, 4
  %1940 = mul i32 %1939, %1934
  %1941 = add i32 %1940, %1933
  %1942 = shl i32 %1941, 3
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = and i32 %1944, -268435456
  %1946 = icmp eq i32 %1945, -1342177280
  br i1 %1946, label %1957, label %1947

; <label>:1947                                    ; preds = %1930, %1912
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 2
  %1950 = extractvalue %dx.types.CBufRet.f32 %1948, 3
  %1951 = fmul fast float %1949, %43
  %1952 = fmul fast float %1950, %44
  %1953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %30, float %1951, float %1952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  br i1 %1963, label %1964, label %2064, !dx.controlflow.hints !70

; <label>:1964                                    ; preds = %1957
  %1965 = fmul fast float %1958, %1924
  %1966 = fmul fast float %1959, %1925
  %1967 = fmul fast float %1960, %1926
  %1968 = fsub fast float %1913, %314
  %1969 = fsub fast float %1914, %315
  %1970 = fsub fast float %1915, %316
  %1971 = call float @dx.op.dot3.f32(i32 55, float %1968, float %1969, float %1970, float %1968, float %1969, float %1970)  ; Dot3(ax,ay,az,bx,by,bz)
  %1972 = call float @dx.op.unary.f32(i32 25, float %1971)  ; Rsqrt(value)
  %1973 = fmul fast float %1972, %1968
  %1974 = fmul fast float %1972, %1969
  %1975 = fmul fast float %1972, %1970
  %1976 = call float @dx.op.dot3.f32(i32 55, float %1913, float %1914, float %1915, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %1977 = call float @dx.op.dot3.f32(i32 55, float %386, float %387, float %388, float %1973, float %1974, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1978 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1979 = bitcast i32 %402 to float
  %1980 = fmul fast float %1978, %1978
  %1981 = fmul fast float %1980, %1979
  %1982 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1983 = fmul fast float %1982, %1978
  %1984 = call float @dx.op.dot3.f32(i32 55, float %286, float %287, float %288, float %1973, float %1974, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1985 = fmul fast float %1984, %1984
  %1986 = call float @dx.op.unary.f32(i32 6, float %1976)  ; FAbs(value)
  %1987 = fsub fast float 1.000000e+00, %345
  %1988 = call float @dx.op.binary.f32(i32 35, float %1987, float 0x3F847AE140000000)  ; FMax(a,b)
  %1989 = fmul fast float %1988, %1988
  %1990 = fmul fast float %1989, %1989
  %1991 = fsub fast float 1.000000e+00, %1990
  %1992 = fmul fast float %391, %391
  %1993 = fmul fast float %1992, %1991
  %1994 = fadd fast float %1993, %1990
  %1995 = bitcast float %1994 to i32
  %1996 = ashr i32 %1995, 1
  %1997 = add nsw i32 %1996, 532487669
  %1998 = bitcast i32 %1997 to float
  %1999 = fadd fast float %1998, %391
  %2000 = fmul fast float %1990, %1985
  %2001 = fsub fast float 1.000000e+00, %1985
  %2002 = fadd fast float %2001, %2000
  %2003 = fmul fast float %1986, %1986
  %2004 = fmul fast float %2003, %1991
  %2005 = fadd fast float %2004, %1990
  %2006 = bitcast float %2005 to i32
  %2007 = ashr i32 %2006, 1
  %2008 = add nsw i32 %2007, 532487669
  %2009 = bitcast i32 %2008 to float
  %2010 = fadd fast float %2009, %1986
  %2011 = fmul fast float %2002, %2002
  %2012 = fmul fast float %2011, %1999
  %2013 = fmul fast float %2012, %2010
  %2014 = fdiv fast float 0x3FF0A00000000000, %2013
  %2015 = fmul fast float %2014, %1990
  %2016 = call float @dx.op.unary.f32(i32 6, float %1977)  ; FAbs(value)
  %2017 = fsub fast float 1.000000e+00, %2016
  %2018 = bitcast float %2017 to i32
  %2019 = sitofp i32 %2018 to float
  %2020 = fmul fast float %2019, 5.000000e+00
  %2021 = fadd fast float %2020, 0xC1EFBF8940000000
  %2022 = fptosi float %2021 to i32
  %2023 = bitcast i32 %2022 to float
  %2024 = fmul fast float %2023, %1217
  %2025 = fmul fast float %2023, %1218
  %2026 = fmul fast float %2023, %1219
  %2027 = fadd fast float %2024, %307
  %2028 = fadd fast float %2025, %308
  %2029 = fadd fast float %2026, %389
  %2030 = fmul fast float %1976, 9.843750e-01
  %2031 = fmul fast float %345, 9.843750e-01
  %2032 = fadd fast float %2030, 7.812500e-03
  %2033 = fadd fast float %2031, 7.812500e-03
  %2034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %2032, float %2033, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2035 = extractvalue %dx.types.ResRet.f32 %2034, 2
  %2036 = extractvalue %dx.types.ResRet.f32 %2034, 3
  %2037 = fmul fast float %2035, %307
  %2038 = fmul fast float %2035, %308
  %2039 = fmul fast float %2035, %389
  %2040 = fadd fast float %2037, %2036
  %2041 = fadd fast float %2038, %2036
  %2042 = fadd fast float %2039, %2036
  %2043 = call float @dx.op.binary.f32(i32 35, float %2041, float %2042)  ; FMax(a,b)
  %2044 = call float @dx.op.binary.f32(i32 35, float %2040, float %2043)  ; FMax(a,b)
  %2045 = fsub fast float 1.000000e+00, %2044
  %2046 = fmul fast float %1983, %1965
  %2047 = fmul fast float %2046, %2045
  %2048 = fmul fast float %1983, %1966
  %2049 = fmul fast float %2048, %2045
  %2050 = fmul fast float %1983, %1967
  %2051 = fmul fast float %2050, %2045
  %2052 = fadd fast float %2047, %1903
  %2053 = fadd fast float %2049, %1904
  %2054 = fadd fast float %2051, %1905
  %2055 = fmul fast float %2046, %2015
  %2056 = fmul fast float %2055, %2027
  %2057 = fmul fast float %2048, %2015
  %2058 = fmul fast float %2057, %2028
  %2059 = fmul fast float %2050, %2015
  %2060 = fmul fast float %2059, %2029
  %2061 = fadd fast float %2056, %1906
  %2062 = fadd fast float %2058, %1907
  %2063 = fadd fast float %2060, %1908
  br label %2064

; <label>:2064                                    ; preds = %1964, %1957, %1899
  %2065 = phi float [ %1958, %1964 ], [ 0.000000e+00, %1899 ], [ 0.000000e+00, %1957 ]
  %2066 = phi float [ %2061, %1964 ], [ %1906, %1899 ], [ %1906, %1957 ]
  %2067 = phi float [ %2062, %1964 ], [ %1907, %1899 ], [ %1907, %1957 ]
  %2068 = phi float [ %2063, %1964 ], [ %1908, %1899 ], [ %1908, %1957 ]
  %2069 = phi float [ %2052, %1964 ], [ %1903, %1899 ], [ %1903, %1957 ]
  %2070 = phi float [ %2053, %1964 ], [ %1904, %1899 ], [ %1904, %1957 ]
  %2071 = phi float [ %2054, %1964 ], [ %1905, %1899 ], [ %1905, %1957 ]
  %2072 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.i32 %2072, 0
  %2074 = icmp eq i32 %2073, 0
  br i1 %2074, label %2673, label %2075

; <label>:2075                                    ; preds = %2064
  %2076 = fptoui float %43 to i32
  %2077 = fptoui float %44 to i32
  %2078 = lshr i32 %2076, 4
  %2079 = lshr i32 %2077, 4
  %2080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.i32 %2080, 0
  %2082 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2079, i32 %2081, i32 %2078)  ; UMad(a,b,c)
  %2083 = add nsw i32 %2073, -1
  %2084 = call i32 @dx.op.binary.i32(i32 37, i32 %2083, i32 0)  ; IMax(a,b)
  %2085 = call float @dx.op.binary.f32(i32 35, float %40, float 0.000000e+00)  ; FMax(a,b)
  %2086 = fptoui float %2085 to i32
  %2087 = lshr i32 %2086, 5
  %2088 = call i32 @dx.op.binary.i32(i32 40, i32 %2087, i32 8191)  ; UMin(a,b)
  %2089 = shl i32 %2088, 2
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = lshr i32 %2091, 16
  %2093 = and i32 %2091, 65535
  %2094 = lshr i32 %2091, 21
  %2095 = lshr i32 %2093, 5
  %2096 = call i32 @dx.op.binary.i32(i32 40, i32 %2095, i32 %2084)  ; UMin(a,b)
  %2097 = icmp ugt i32 %2094, %2096
  br i1 %2097, label %2673, label %2098

; <label>:2098                                    ; preds = %2075
  br label %2099

; <label>:2099                                    ; preds = %2663, %2098
  %2100 = phi i32 [ %2670, %2663 ], [ %2094, %2098 ]
  %2101 = phi float [ %2664, %2663 ], [ %2066, %2098 ]
  %2102 = phi float [ %2665, %2663 ], [ %2067, %2098 ]
  %2103 = phi float [ %2666, %2663 ], [ %2068, %2098 ]
  %2104 = phi float [ %2667, %2663 ], [ %2069, %2098 ]
  %2105 = phi float [ %2668, %2663 ], [ %2070, %2098 ]
  %2106 = phi float [ %2669, %2663 ], [ %2071, %2098 ]
  %2107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2108 = extractvalue %dx.types.CBufRet.i32 %2107, 0
  %2109 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2082, i32 %2108, i32 %2100)  ; UMad(a,b,c)
  %2110 = shl i32 %2109, 2
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = shl i32 %2100, 5
  %2114 = sub nsw i32 %2092, %2113
  %2115 = call i32 @dx.op.binary.i32(i32 37, i32 %2114, i32 0)  ; IMax(a,b)
  %2116 = call i32 @dx.op.binary.i32(i32 38, i32 %2115, i32 31)  ; IMin(a,b)
  %2117 = sub nsw i32 1, %2092
  %2118 = add nsw i32 %2117, %2093
  %2119 = call i32 @dx.op.binary.i32(i32 37, i32 %2118, i32 0)  ; IMax(a,b)
  %2120 = call i32 @dx.op.binary.i32(i32 38, i32 %2119, i32 32)  ; IMin(a,b)
  %2121 = and i32 %2120, 31
  %2122 = shl i32 -1, %2121
  %2123 = xor i32 %2122, -1
  %2124 = and i32 %2116, 31
  %2125 = shl i32 %2123, %2124
  %2126 = icmp eq i32 %2120, 32
  %2127 = select i1 %2126, i32 -1, i32 %2125
  %2128 = and i32 %2127, %2112
  %2129 = icmp eq i32 %2128, 0
  br i1 %2129, label %2663, label %2130

; <label>:2130                                    ; preds = %2099
  br label %2131

; <label>:2131                                    ; preds = %2279, %2130
  %2132 = phi i32 [ %2143, %2279 ], [ %2128, %2130 ]
  %2133 = phi float [ %2280, %2279 ], [ %2101, %2130 ]
  %2134 = phi float [ %2281, %2279 ], [ %2102, %2130 ]
  %2135 = phi float [ %2282, %2279 ], [ %2103, %2130 ]
  %2136 = phi float [ %2283, %2279 ], [ %2104, %2130 ]
  %2137 = phi float [ %2284, %2279 ], [ %2105, %2130 ]
  %2138 = phi float [ %2285, %2279 ], [ %2106, %2130 ]
  %2139 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2132)  ; FirstbitLo(value)
  %2140 = add i32 %2139, %2113
  %2141 = and i32 %2139, 31
  %2142 = shl i32 1, %2141
  %2143 = xor i32 %2142, %2132
  %2144 = mul i32 %2140, 112
  %2145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.ResRet.f32 %2145, 1
  %2148 = extractvalue %dx.types.ResRet.f32 %2145, 2
  %2149 = add i32 %2144, 16
  %2150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %2149, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.f32 %2150, 0
  %2152 = extractvalue %dx.types.ResRet.f32 %2150, 1
  %2153 = extractvalue %dx.types.ResRet.f32 %2150, 2
  %2154 = add i32 %2144, 28
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = add i32 %2144, 32
  %2158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.f32 %2158, 0
  %2160 = extractvalue %dx.types.ResRet.f32 %2158, 1
  %2161 = extractvalue %dx.types.ResRet.f32 %2158, 2
  %2162 = add i32 %2144, 44
  %2163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.f32 %2163, 0
  %2165 = add i32 %2144, 48
  %2166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %2165, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.ResRet.f32 %2166, 1
  %2169 = extractvalue %dx.types.ResRet.f32 %2166, 2
  %2170 = extractvalue %dx.types.ResRet.f32 %2166, 3
  %2171 = add i32 %2144, 64
  %2172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.f32 %2172, 0
  %2174 = extractvalue %dx.types.ResRet.f32 %2172, 1
  %2175 = extractvalue %dx.types.ResRet.f32 %2172, 2
  %2176 = extractvalue %dx.types.ResRet.f32 %2172, 3
  %2177 = add i32 %2144, 80
  %2178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.f32 %2178, 1
  %2180 = extractvalue %dx.types.ResRet.f32 %2178, 2
  %2181 = add i32 %2144, 92
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = call float @dx.op.dot3.f32(i32 55, float %2146, float %2147, float %2148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2185 = select i1 %385, float %2179, float %2146
  %2186 = select i1 %385, float %2184, float %2147
  %2187 = select i1 %385, float %2180, float %2148
  %2188 = and i32 %2183, 65535
  %2189 = uitofp i32 %2188 to float
  %2190 = lshr i32 %2183, 16
  %2191 = uitofp i32 %2190 to float
  %2192 = and i32 %2156, 65535
  %2193 = and i32 %2156, 50331648
  %2194 = icmp eq i32 %2193, 33554432
  %2195 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2160, float %2161, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2196 = fsub fast float %83, %2167
  %2197 = fsub fast float %84, %2168
  %2198 = fsub fast float %85, %2169
  %2199 = call float @dx.op.dot3.f32(i32 55, float %2196, float %2197, float %2198, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2200 = fdiv fast float %2199, %2195
  %2201 = call float @dx.op.binary.f32(i32 35, float %2200, float -1.000000e+00)  ; FMax(a,b)
  %2202 = call float @dx.op.binary.f32(i32 36, float %2201, float 1.000000e+00)  ; FMin(a,b)
  %2203 = fmul fast float %2202, %2159
  %2204 = fmul fast float %2202, %2160
  %2205 = fmul fast float %2202, %2161
  %2206 = fadd fast float %2203, %2167
  %2207 = fadd fast float %2204, %2168
  %2208 = fadd fast float %2205, %2169
  %2209 = fsub fast float %2206, %83
  %2210 = fsub fast float %2207, %84
  %2211 = fsub fast float %2208, %85
  %2212 = call float @dx.op.dot3.f32(i32 55, float %2209, float %2210, float %2211, float %2209, float %2210, float %2211)  ; Dot3(ax,ay,az,bx,by,bz)
  %2213 = call float @dx.op.unary.f32(i32 24, float %2212)  ; Sqrt(value)
  %2214 = fdiv fast float 1.000000e+00, %2213
  %2215 = fmul fast float %2209, %2214
  %2216 = fmul fast float %2210, %2214
  %2217 = fmul fast float %2211, %2214
  br i1 %2194, label %2218, label %2242

; <label>:2218                                    ; preds = %2131
  %2219 = fmul fast float %2175, %2151
  %2220 = fmul fast float %2175, %2152
  %2221 = fmul fast float %2175, %2153
  %2222 = fsub fast float %2219, %83
  %2223 = fadd fast float %2222, %2206
  %2224 = fsub fast float %2220, %84
  %2225 = fadd fast float %2224, %2207
  %2226 = fsub fast float %2221, %85
  %2227 = fadd fast float %2226, %2208
  %2228 = call float @dx.op.dot3.f32(i32 55, float %2223, float %2225, float %2227, float %2223, float %2225, float %2227)  ; Dot3(ax,ay,az,bx,by,bz)
  %2229 = call float @dx.op.unary.f32(i32 25, float %2228)  ; Rsqrt(value)
  %2230 = fmul fast float %2229, %2223
  %2231 = fmul fast float %2229, %2225
  %2232 = fmul fast float %2229, %2227
  %2233 = fsub fast float %83, %2206
  %2234 = fsub fast float %84, %2207
  %2235 = fsub fast float %85, %2208
  %2236 = fsub fast float -0.000000e+00, %2233
  %2237 = fsub fast float -0.000000e+00, %2234
  %2238 = fsub fast float -0.000000e+00, %2235
  %2239 = call float @dx.op.dot3.f32(i32 55, float %2236, float %2237, float %2238, float %2151, float %2152, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2240 = fcmp fast ogt float %2239, 0.000000e+00
  %2241 = uitofp i1 %2240 to float
  br label %2242

; <label>:2242                                    ; preds = %2218, %2131
  %2243 = phi float [ %2241, %2218 ], [ 1.000000e+00, %2131 ]
  %2244 = phi float [ %2230, %2218 ], [ %2215, %2131 ]
  %2245 = phi float [ %2231, %2218 ], [ %2216, %2131 ]
  %2246 = phi float [ %2232, %2218 ], [ %2217, %2131 ]
  %2247 = call float @dx.op.dot3.f32(i32 55, float %2151, float %2152, float %2153, float %2244, float %2245, float %2246)  ; Dot3(ax,ay,az,bx,by,bz)
  %2248 = fmul fast float %2247, %2247
  %2249 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2250 = fsub fast float 1.000000e+00, %2249
  %2251 = fmul fast float %2250, 5.000000e-01
  %2252 = fcmp fast ogt float %2247, 0.000000e+00
  %2253 = fsub fast float 1.000000e+00, %2251
  %2254 = select i1 %2252, float %2251, float %2253
  %2255 = fmul fast float %2254, %2191
  %2256 = fadd fast float %2255, %2189
  %2257 = fmul fast float %2256, 0x3EF0001000000000
  %2258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %29, float %2257, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2259 = extractvalue %dx.types.ResRet.f32 %2258, 0
  %2260 = fmul fast float %2247, %2173
  %2261 = fadd fast float %2260, %2174
  %2262 = call float @dx.op.unary.f32(i32 7, float %2261)  ; Saturate(value)
  %2263 = select i1 %2194, float 1.000000e+00, float %2262
  %2264 = select i1 %2194, float %2262, float 1.000000e+00
  %2265 = fmul fast float %2213, %2170
  %2266 = fsub fast float 1.000000e+00, %2265
  %2267 = fmul fast float %2266, %2176
  %2268 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2269 = fmul fast float %2268, %2264
  %2270 = fmul fast float %2269, 2.000000e+00
  %2271 = fsub fast float 3.000000e+00, %2270
  %2272 = fmul fast float %2259, %2243
  %2273 = fmul fast float %2269, %2269
  %2274 = fmul fast float %2273, %2272
  %2275 = fmul fast float %2274, %2271
  %2276 = call float @dx.op.binary.f32(i32 36, float %2275, float %2275)  ; FMin(a,b)
  %2277 = call float @dx.op.binary.f32(i32 36, float %2275, float %2276)  ; FMin(a,b)
  %2278 = fcmp fast ogt float %2277, 0.000000e+00
  br i1 %2278, label %2287, label %2279, !dx.controlflow.hints !71

; <label>:2279                                    ; preds = %2431, %2426, %2242
  %2280 = phi float [ %2133, %2426 ], [ %2133, %2242 ], [ %2659, %2431 ]
  %2281 = phi float [ %2134, %2426 ], [ %2134, %2242 ], [ %2660, %2431 ]
  %2282 = phi float [ %2135, %2426 ], [ %2135, %2242 ], [ %2661, %2431 ]
  %2283 = phi float [ %2136, %2426 ], [ %2136, %2242 ], [ %2650, %2431 ]
  %2284 = phi float [ %2137, %2426 ], [ %2137, %2242 ], [ %2651, %2431 ]
  %2285 = phi float [ %2138, %2426 ], [ %2138, %2242 ], [ %2652, %2431 ]
  %2286 = icmp eq i32 %2132, %2142
  br i1 %2286, label %2662, label %2131

; <label>:2287                                    ; preds = %2242
  %2288 = icmp eq i32 %2192, 255
  br i1 %2288, label %2426, label %2289, !dx.controlflow.hints !72

; <label>:2289                                    ; preds = %2287
  %2290 = mul nuw nsw i32 %2192, 176
  %2291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2290, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.f32 %2291, 0
  %2293 = extractvalue %dx.types.ResRet.f32 %2291, 1
  %2294 = extractvalue %dx.types.ResRet.f32 %2291, 2
  %2295 = extractvalue %dx.types.ResRet.f32 %2291, 3
  %2296 = add nuw nsw i32 %2290, 16
  %2297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.f32 %2297, 0
  %2299 = extractvalue %dx.types.ResRet.f32 %2297, 1
  %2300 = add nuw nsw i32 %2290, 32
  %2301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.f32 %2301, 0
  %2303 = extractvalue %dx.types.ResRet.f32 %2301, 1
  %2304 = add nuw nsw i32 %2290, 48
  %2305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.ResRet.f32 %2305, 1
  %2308 = extractvalue %dx.types.ResRet.f32 %2305, 2
  %2309 = extractvalue %dx.types.ResRet.f32 %2305, 3
  %2310 = add nuw nsw i32 %2290, 64
  %2311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.ResRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.ResRet.f32 %2311, 2
  %2315 = extractvalue %dx.types.ResRet.f32 %2311, 3
  %2316 = add nuw nsw i32 %2290, 80
  %2317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.f32 %2317, 0
  %2319 = extractvalue %dx.types.ResRet.f32 %2317, 1
  %2320 = extractvalue %dx.types.ResRet.f32 %2317, 2
  %2321 = extractvalue %dx.types.ResRet.f32 %2317, 3
  %2322 = add nuw nsw i32 %2290, 96
  %2323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.f32 %2323, 0
  %2325 = extractvalue %dx.types.ResRet.f32 %2323, 1
  %2326 = extractvalue %dx.types.ResRet.f32 %2323, 2
  %2327 = extractvalue %dx.types.ResRet.f32 %2323, 3
  %2328 = bitcast float %2299 to i32
  %2329 = fmul fast float %2306, %83
  %2330 = call float @dx.op.tertiary.f32(i32 46, float %84, float %2312, float %2329)  ; FMad(a,b,c)
  %2331 = call float @dx.op.tertiary.f32(i32 46, float %85, float %2318, float %2330)  ; FMad(a,b,c)
  %2332 = fadd fast float %2331, %2324
  %2333 = fmul fast float %2307, %83
  %2334 = call float @dx.op.tertiary.f32(i32 46, float %84, float %2313, float %2333)  ; FMad(a,b,c)
  %2335 = call float @dx.op.tertiary.f32(i32 46, float %85, float %2319, float %2334)  ; FMad(a,b,c)
  %2336 = fadd fast float %2335, %2325
  %2337 = fmul fast float %2308, %83
  %2338 = call float @dx.op.tertiary.f32(i32 46, float %84, float %2314, float %2337)  ; FMad(a,b,c)
  %2339 = call float @dx.op.tertiary.f32(i32 46, float %85, float %2320, float %2338)  ; FMad(a,b,c)
  %2340 = fadd fast float %2339, %2326
  %2341 = fmul fast float %2309, %83
  %2342 = call float @dx.op.tertiary.f32(i32 46, float %84, float %2315, float %2341)  ; FMad(a,b,c)
  %2343 = call float @dx.op.tertiary.f32(i32 46, float %85, float %2321, float %2342)  ; FMad(a,b,c)
  %2344 = fadd fast float %2343, %2327
  %2345 = fdiv fast float %2332, %2344
  %2346 = fdiv fast float %2336, %2344
  %2347 = fdiv fast float %2340, %2344
  %2348 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %2347)  ; FMax(a,b)
  %2349 = fmul fast float %228, 0x401921FB60000000
  %2350 = call float @dx.op.unary.f32(i32 13, float %2349)  ; Sin(value)
  %2351 = call float @dx.op.unary.f32(i32 12, float %2349)  ; Cos(value)
  %2352 = fmul fast float %2351, %2303
  %2353 = call float @dx.op.tertiary.f32(i32 46, float %2350, float %2303, float 0.000000e+00)  ; FMad(a,b,c)
  %2354 = fmul fast float %2303, %2350
  %2355 = fsub fast float -0.000000e+00, %2354
  %2356 = call float @dx.op.tertiary.f32(i32 46, float %2351, float %2303, float 0.000000e+00)  ; FMad(a,b,c)
  br label %2357

; <label>:2357                                    ; preds = %2357, %2289
  %2358 = phi float [ 0.000000e+00, %2289 ], [ %2390, %2357 ]
  %2359 = phi float [ 0.000000e+00, %2289 ], [ %2392, %2357 ]
  %2360 = phi i32 [ 0, %2289 ], [ %2393, %2357 ]
  %2361 = mul i32 %2360, 2
  %2362 = add i32 0, %2361
  %2363 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2362
  %2364 = load float, float* %2363, align 4
  %2365 = mul i32 %2360, 2
  %2366 = add i32 1, %2365
  %2367 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2366
  %2368 = load float, float* %2367, align 4
  %2369 = fmul fast float %2352, %2364
  %2370 = call float @dx.op.tertiary.f32(i32 46, float %2368, float %2355, float %2369)  ; FMad(a,b,c)
  %2371 = fmul fast float %2364, %2353
  %2372 = call float @dx.op.tertiary.f32(i32 46, float %2368, float %2356, float %2371)  ; FMad(a,b,c)
  %2373 = fadd fast float %2370, %2345
  %2374 = fadd fast float %2372, %2346
  %2375 = fmul fast float %2373, %2298
  %2376 = fmul fast float %2374, %2298
  %2377 = call float @dx.op.binary.f32(i32 35, float %2375, float %2294)  ; FMax(a,b)
  %2378 = call float @dx.op.binary.f32(i32 35, float %2376, float %2294)  ; FMax(a,b)
  %2379 = call float @dx.op.binary.f32(i32 36, float %2377, float %2295)  ; FMin(a,b)
  %2380 = call float @dx.op.binary.f32(i32 36, float %2378, float %2295)  ; FMin(a,b)
  %2381 = fadd fast float %2379, %2292
  %2382 = fadd fast float %2380, %2293
  %2383 = uitofp i32 %2328 to float
  %2384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %2381, float %2382, float %2383, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = fsub fast float %2385, %2348
  %2387 = fsub fast float %2386, %2302
  %2388 = fcmp fast ogt float %2387, 0.000000e+00
  %2389 = select i1 %2388, float 1.000000e+00, float 0.000000e+00
  %2390 = fadd fast float %2389, %2358
  %2391 = select i1 %2388, float %2387, float 0.000000e+00
  %2392 = fadd fast float %2391, %2359
  %2393 = add nuw nsw i32 %2360, 1
  %2394 = icmp eq i32 %2393, 8
  br i1 %2394, label %2395, label %2357

; <label>:2395                                    ; preds = %2357
  %2396 = fdiv fast float 1.000000e+00, %2390
  %2397 = fmul fast float %2396, %2392
  %2398 = fdiv fast float 1.000000e+00, %2348
  %2399 = fmul fast float %2397, %2398
  %2400 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  %2401 = call float @dx.op.binary.f32(i32 35, float %2400, float 0.000000e+00)  ; FMax(a,b)
  %2402 = fmul fast float %2390, 1.250000e-01
  %2403 = call float @dx.op.unary.f32(i32 7, float %2402)  ; Saturate(value)
  %2404 = fmul fast float %2403, 2.000000e+00
  %2405 = fadd fast float %2404, -1.000000e+00
  %2406 = fcmp fast ogt float %2405, 0.000000e+00
  %2407 = fcmp fast olt float %2405, 0.000000e+00
  %2408 = zext i1 %2406 to i32
  %2409 = zext i1 %2407 to i32
  %2410 = sub nsw i32 %2408, %2409
  %2411 = sitofp i32 %2410 to float
  %2412 = fmul fast float %2411, %2405
  %2413 = fsub fast float 1.000000e+00, %2412
  %2414 = fmul fast float %2413, %2413
  %2415 = fmul fast float %2414, %2413
  %2416 = fsub fast float %2413, %2415
  %2417 = fmul fast float %2416, %2401
  %2418 = fsub fast float 1.000000e+00, %2415
  %2419 = fsub fast float %2418, %2417
  %2420 = fmul fast float %2411, 5.000000e-01
  %2421 = fmul fast float %2420, %2419
  %2422 = fsub fast float -5.000000e-01, %2421
  %2423 = fmul fast float %2422, %2263
  %2424 = fadd fast float %2423, 1.000000e+00
  %2425 = fmul fast float %2424, %2275
  br label %2426

; <label>:2426                                    ; preds = %2395, %2287
  %2427 = phi float [ %2425, %2395 ], [ %2275, %2287 ]
  %2428 = call float @dx.op.binary.f32(i32 36, float %2427, float %2427)  ; FMin(a,b)
  %2429 = call float @dx.op.binary.f32(i32 36, float %2427, float %2428)  ; FMin(a,b)
  %2430 = fcmp fast ogt float %2429, 0.000000e+00
  br i1 %2430, label %2431, label %2279, !dx.controlflow.hints !73

; <label>:2431                                    ; preds = %2426
  %2432 = fmul fast float %2427, %2185
  %2433 = fmul fast float %2427, %2186
  %2434 = fmul fast float %2427, %2187
  %2435 = fadd fast float %2215, %286
  %2436 = fadd fast float %2216, %287
  %2437 = fadd fast float %2217, %288
  %2438 = call float @dx.op.dot3.f32(i32 55, float %2215, float %2216, float %2217, float %2209, float %2210, float %2211)  ; Dot3(ax,ay,az,bx,by,bz)
  %2439 = call float @dx.op.dot3.f32(i32 55, float %2215, float %2216, float %2217, float %2435, float %2436, float %2437)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = fdiv fast float 1.000000e+00, %2439
  %2441 = fmul fast float %2440, %2438
  %2442 = fmul fast float %2441, %2435
  %2443 = fmul fast float %2441, %2436
  %2444 = fmul fast float %2441, %2437
  %2445 = fadd fast float %2196, %2442
  %2446 = fadd fast float %2197, %2443
  %2447 = fadd fast float %2198, %2444
  %2448 = call float @dx.op.dot3.f32(i32 55, float %2445, float %2446, float %2447, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2449 = fdiv fast float %2448, %2195
  %2450 = call float @dx.op.binary.f32(i32 35, float %2449, float -1.000000e+00)  ; FMax(a,b)
  %2451 = call float @dx.op.binary.f32(i32 36, float %2450, float 1.000000e+00)  ; FMin(a,b)
  %2452 = fmul fast float %2451, %2159
  %2453 = fmul fast float %2451, %2160
  %2454 = fmul fast float %2451, %2161
  %2455 = fsub fast float %2167, %83
  %2456 = fadd fast float %2455, %2452
  %2457 = fsub fast float %2168, %84
  %2458 = fadd fast float %2457, %2453
  %2459 = fsub fast float %2169, %85
  %2460 = fadd fast float %2459, %2454
  %2461 = call float @dx.op.dot3.f32(i32 55, float %2456, float %2458, float %2460, float %2456, float %2458, float %2460)  ; Dot3(ax,ay,az,bx,by,bz)
  %2462 = call float @dx.op.unary.f32(i32 25, float %2461)  ; Rsqrt(value)
  %2463 = fmul fast float %2456, %2462
  %2464 = fmul fast float %2458, %2462
  %2465 = fmul fast float %2460, %2462
  %2466 = fsub fast float %2463, %314
  %2467 = fsub fast float %2464, %315
  %2468 = fsub fast float %2465, %316
  %2469 = call float @dx.op.dot3.f32(i32 55, float %2466, float %2467, float %2468, float %2466, float %2467, float %2468)  ; Dot3(ax,ay,az,bx,by,bz)
  %2470 = call float @dx.op.unary.f32(i32 25, float %2469)  ; Rsqrt(value)
  %2471 = fmul fast float %2466, %2470
  %2472 = fmul fast float %2467, %2470
  %2473 = fmul fast float %2468, %2470
  %2474 = call float @dx.op.dot3.f32(i32 55, float %2463, float %2464, float %2465, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %2475 = call float @dx.op.dot3.f32(i32 55, float %386, float %387, float %388, float %2471, float %2472, float %2473)  ; Dot3(ax,ay,az,bx,by,bz)
  %2476 = fmul fast float %2462, %2164
  %2477 = fmul fast float %2476, %2476
  %2478 = bitcast float %2477 to i32
  %2479 = ashr i32 %2478, 1
  %2480 = sub nsw i32 1597463007, %2479
  %2481 = bitcast i32 %2480 to float
  %2482 = fmul fast float %2481, %2474
  %2483 = fmul fast float %2482, %2482
  %2484 = fsub fast float 1.000000e+00, %2483
  %2485 = fmul fast float %2474, %2477
  %2486 = call float @dx.op.unary.f32(i32 7, float %2485)  ; Saturate(value)
  %2487 = fmul fast float %2482, 5.000000e-01
  %2488 = fadd fast float %2487, 5.000000e-01
  %2489 = fmul fast float %2488, %2477
  %2490 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2491 = bitcast float %2490 to i32
  %2492 = ashr i32 %2491, 1
  %2493 = add nsw i32 %2492, 532487669
  %2494 = bitcast i32 %2493 to float
  %2495 = fmul fast float %2494, %2490
  %2496 = fcmp fast ogt float %2484, 0.000000e+00
  %2497 = select i1 %2496, float %2495, float %2486
  %2498 = bitcast i32 %402 to float
  %2499 = call float @dx.op.unary.f32(i32 7, float %2474)  ; Saturate(value)
  %2500 = fmul fast float %2499, %2499
  %2501 = fmul fast float %2500, %2498
  %2502 = call float @dx.op.unary.f32(i32 7, float %2501)  ; Saturate(value)
  %2503 = fmul fast float %2497, %2502
  %2504 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2160, float %2161, float %396, float %397, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %2505 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2160, float %2161, float %2209, float %2210, float %2211)  ; Dot3(ax,ay,az,bx,by,bz)
  %2506 = call float @dx.op.dot3.f32(i32 55, float %396, float %397, float %398, float %2209, float %2210, float %2211)  ; Dot3(ax,ay,az,bx,by,bz)
  %2507 = fmul fast float %2504, %2504
  %2508 = fsub fast float %2195, %2507
  %2509 = fmul fast float %2506, %2504
  %2510 = fsub fast float %2509, %2505
  %2511 = fdiv fast float %2510, %2508
  %2512 = call float @dx.op.binary.f32(i32 35, float %2511, float -1.500000e+00)  ; FMax(a,b)
  %2513 = call float @dx.op.binary.f32(i32 36, float %2512, float 1.500000e+00)  ; FMin(a,b)
  %2514 = fmul fast float %2513, %2513
  %2515 = fmul fast float %2514, 0x3FC2F68380000000
  %2516 = fmul fast float %2515, %2513
  %2517 = fsub fast float %2513, %2516
  %2518 = fmul fast float %2517, %2159
  %2519 = fmul fast float %2517, %2160
  %2520 = fmul fast float %2517, %2161
  %2521 = fadd fast float %2518, %2206
  %2522 = fadd fast float %2519, %2207
  %2523 = fadd fast float %2520, %2208
  %2524 = fsub fast float %2521, %83
  %2525 = fsub fast float %2522, %84
  %2526 = fsub fast float %2523, %85
  %2527 = call float @dx.op.dot3.f32(i32 55, float %2524, float %2525, float %2526, float %396, float %397, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %2528 = fmul fast float %2527, %396
  %2529 = fmul fast float %2527, %397
  %2530 = fmul fast float %2527, %398
  %2531 = fsub fast float %2528, %2524
  %2532 = fsub fast float %2529, %2525
  %2533 = fsub fast float %2530, %2526
  %2534 = call float @dx.op.dot3.f32(i32 55, float %2531, float %2532, float %2533, float %2531, float %2532, float %2533)  ; Dot3(ax,ay,az,bx,by,bz)
  %2535 = bitcast float %2534 to i32
  %2536 = ashr i32 %2535, 1
  %2537 = sub nsw i32 1597463007, %2536
  %2538 = bitcast i32 %2537 to float
  %2539 = fmul fast float %2538, %2164
  %2540 = call float @dx.op.dot3.f32(i32 55, float %2524, float %2525, float %2526, float %2524, float %2525, float %2526)  ; Dot3(ax,ay,az,bx,by,bz)
  %2541 = bitcast float %2540 to i32
  %2542 = ashr i32 %2541, 1
  %2543 = sub nsw i32 1597463007, %2542
  %2544 = bitcast i32 %2543 to float
  %2545 = fmul fast float %2539, %2539
  %2546 = fadd fast float %2545, 1.250000e-01
  %2547 = call float @dx.op.unary.f32(i32 25, float %2546)  ; Rsqrt(value)
  %2548 = fmul fast float %2539, %2547
  %2549 = fmul fast float %2531, %2548
  %2550 = fmul fast float %2532, %2548
  %2551 = fmul fast float %2533, %2548
  %2552 = fadd fast float %2524, %2549
  %2553 = fadd fast float %2525, %2550
  %2554 = fadd fast float %2526, %2551
  %2555 = call float @dx.op.dot3.f32(i32 55, float %2552, float %2553, float %2554, float %2552, float %2553, float %2554)  ; Dot3(ax,ay,az,bx,by,bz)
  %2556 = call float @dx.op.unary.f32(i32 25, float %2555)  ; Rsqrt(value)
  %2557 = fmul fast float %2552, %2556
  %2558 = fmul fast float %2553, %2556
  %2559 = fmul fast float %2554, %2556
  %2560 = fsub fast float %2557, %314
  %2561 = fsub fast float %2558, %315
  %2562 = fsub fast float %2559, %316
  %2563 = call float @dx.op.dot3.f32(i32 55, float %2560, float %2561, float %2562, float %2560, float %2561, float %2562)  ; Dot3(ax,ay,az,bx,by,bz)
  %2564 = call float @dx.op.unary.f32(i32 25, float %2563)  ; Rsqrt(value)
  %2565 = fmul fast float %2560, %2564
  %2566 = fmul fast float %2561, %2564
  %2567 = fmul fast float %2562, %2564
  %2568 = call float @dx.op.dot3.f32(i32 55, float %286, float %287, float %288, float %2565, float %2566, float %2567)  ; Dot3(ax,ay,az,bx,by,bz)
  %2569 = fmul fast float %2568, %2568
  %2570 = call float @dx.op.unary.f32(i32 6, float %2474)  ; FAbs(value)
  %2571 = fsub fast float 1.000000e+00, %345
  %2572 = call float @dx.op.binary.f32(i32 35, float %2571, float 0x3F847AE140000000)  ; FMax(a,b)
  %2573 = fmul fast float %2572, %2572
  %2574 = fmul fast float %2573, %2573
  %2575 = fsub fast float 1.000000e+00, %2574
  %2576 = fmul fast float %391, %391
  %2577 = fmul fast float %2576, %2575
  %2578 = fadd fast float %2577, %2574
  %2579 = bitcast float %2578 to i32
  %2580 = ashr i32 %2579, 1
  %2581 = add nsw i32 %2580, 532487669
  %2582 = bitcast i32 %2581 to float
  %2583 = fadd fast float %2582, %391
  %2584 = fmul fast float %2574, %2569
  %2585 = fsub fast float 1.000000e+00, %2569
  %2586 = fadd fast float %2585, %2584
  %2587 = fmul fast float %2570, %2570
  %2588 = fmul fast float %2587, %2575
  %2589 = fadd fast float %2588, %2574
  %2590 = bitcast float %2589 to i32
  %2591 = ashr i32 %2590, 1
  %2592 = add nsw i32 %2591, 532487669
  %2593 = bitcast i32 %2592 to float
  %2594 = fadd fast float %2593, %2570
  %2595 = fmul fast float %2586, %2586
  %2596 = fmul fast float %2595, %2583
  %2597 = fmul fast float %2596, %2594
  %2598 = fdiv fast float 1.000000e+00, %2597
  %2599 = bitcast float %2574 to i32
  %2600 = sitofp i32 %2599 to float
  %2601 = fmul fast float %2600, 0x3FE7F73180000000
  %2602 = fadd fast float %2601, 0x41AFE27C40000000
  %2603 = fptosi float %2602 to i32
  %2604 = bitcast i32 %2603 to float
  %2605 = fmul fast float %2164, 0x3FD80E9D60000000
  %2606 = fmul fast float %2605, %2544
  %2607 = fadd fast float %2604, %2606
  %2608 = bitcast float %2607 to i32
  %2609 = sub nsw i32 2129859010, %2608
  %2610 = bitcast i32 %2609 to float
  %2611 = fmul fast float %2574, %2598
  %2612 = fmul fast float %2611, %2604
  %2613 = fmul fast float %2612, %2610
  %2614 = call float @dx.op.unary.f32(i32 6, float %2475)  ; FAbs(value)
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = bitcast float %2615 to i32
  %2617 = sitofp i32 %2616 to float
  %2618 = fmul fast float %2617, 5.000000e+00
  %2619 = fadd fast float %2618, 0xC1EFBF8940000000
  %2620 = fptosi float %2619 to i32
  %2621 = bitcast i32 %2620 to float
  %2622 = fmul fast float %2621, %1217
  %2623 = fmul fast float %2621, %1218
  %2624 = fmul fast float %2621, %1219
  %2625 = fadd fast float %2622, %307
  %2626 = fadd fast float %2623, %308
  %2627 = fadd fast float %2624, %389
  %2628 = fmul fast float %2474, 9.843750e-01
  %2629 = fmul fast float %345, 9.843750e-01
  %2630 = fadd fast float %2628, 7.812500e-03
  %2631 = fadd fast float %2629, 7.812500e-03
  %2632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %2630, float %2631, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2633 = extractvalue %dx.types.ResRet.f32 %2632, 2
  %2634 = extractvalue %dx.types.ResRet.f32 %2632, 3
  %2635 = fmul fast float %2633, %307
  %2636 = fmul fast float %2633, %308
  %2637 = fmul fast float %2633, %389
  %2638 = fadd fast float %2635, %2634
  %2639 = fadd fast float %2636, %2634
  %2640 = fadd fast float %2637, %2634
  %2641 = call float @dx.op.binary.f32(i32 35, float %2639, float %2640)  ; FMax(a,b)
  %2642 = call float @dx.op.binary.f32(i32 35, float %2638, float %2641)  ; FMax(a,b)
  %2643 = fsub fast float 1.000000e+00, %2642
  %2644 = fmul fast float %2503, %2432
  %2645 = fmul fast float %2644, %2643
  %2646 = fmul fast float %2503, %2433
  %2647 = fmul fast float %2646, %2643
  %2648 = fmul fast float %2503, %2434
  %2649 = fmul fast float %2648, %2643
  %2650 = fadd fast float %2645, %2136
  %2651 = fadd fast float %2647, %2137
  %2652 = fadd fast float %2649, %2138
  %2653 = fmul fast float %2644, %2625
  %2654 = fmul fast float %2653, %2613
  %2655 = fmul fast float %2646, %2626
  %2656 = fmul fast float %2655, %2613
  %2657 = fmul fast float %2648, %2627
  %2658 = fmul fast float %2657, %2613
  %2659 = fadd fast float %2654, %2133
  %2660 = fadd fast float %2656, %2134
  %2661 = fadd fast float %2658, %2135
  br label %2279

; <label>:2662                                    ; preds = %2279
  br label %2663

; <label>:2663                                    ; preds = %2662, %2099
  %2664 = phi float [ %2101, %2099 ], [ %2280, %2662 ]
  %2665 = phi float [ %2102, %2099 ], [ %2281, %2662 ]
  %2666 = phi float [ %2103, %2099 ], [ %2282, %2662 ]
  %2667 = phi float [ %2104, %2099 ], [ %2283, %2662 ]
  %2668 = phi float [ %2105, %2099 ], [ %2284, %2662 ]
  %2669 = phi float [ %2106, %2099 ], [ %2285, %2662 ]
  %2670 = add i32 %2100, 1
  %2671 = icmp ugt i32 %2670, %2096
  br i1 %2671, label %2672, label %2099

; <label>:2672                                    ; preds = %2663
  br label %2673

; <label>:2673                                    ; preds = %2672, %2075, %2064
  %2674 = phi float [ %2066, %2064 ], [ %2066, %2075 ], [ %2664, %2672 ]
  %2675 = phi float [ %2067, %2064 ], [ %2067, %2075 ], [ %2665, %2672 ]
  %2676 = phi float [ %2068, %2064 ], [ %2068, %2075 ], [ %2666, %2672 ]
  %2677 = phi float [ %2069, %2064 ], [ %2069, %2075 ], [ %2667, %2672 ]
  %2678 = phi float [ %2070, %2064 ], [ %2070, %2075 ], [ %2668, %2672 ]
  %2679 = phi float [ %2071, %2064 ], [ %2071, %2075 ], [ %2669, %2672 ]
  %2680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2681 = extractvalue %dx.types.CBufRet.f32 %2680, 3
  %2682 = bitcast float %2681 to i32
  %2683 = mul i32 %2682, 928
  %2684 = add i32 %2683, 44
  %2685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.f32 %2685, 0
  %2687 = add i32 %2683, 48
  %2688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2687, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.f32 %2688, 0
  %2690 = extractvalue %dx.types.ResRet.f32 %2688, 1
  %2691 = extractvalue %dx.types.ResRet.f32 %2688, 2
  %2692 = add i32 %2683, 60
  %2693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2694 = extractvalue %dx.types.ResRet.f32 %2693, 0
  %2695 = extractvalue %dx.types.ResRet.f32 %2693, 1
  %2696 = extractvalue %dx.types.ResRet.f32 %2693, 2
  %2697 = fmul fast float %2689, 0x3F847AE140000000
  %2698 = fmul fast float %2690, 0x3F847AE140000000
  %2699 = fmul fast float %2691, 0x3F847AE140000000
  %2700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2701 = extractvalue %dx.types.CBufRet.f32 %2700, 0
  %2702 = extractvalue %dx.types.CBufRet.f32 %2700, 1
  %2703 = extractvalue %dx.types.CBufRet.f32 %2700, 2
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2707 = call float @dx.op.dot3.f32(i32 55, float %2701, float %2702, float %2703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2708 = select i1 %385, float %2705, float %2701
  %2709 = select i1 %385, float %2707, float %2702
  %2710 = select i1 %385, float %2706, float %2703
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.CBufRet.f32 %2711, 1
  %2714 = extractvalue %dx.types.CBufRet.f32 %2711, 2
  %2715 = fadd fast float %2694, %2689
  %2716 = fmul fast float %2715, 0x3F847AE140000000
  %2717 = fadd fast float %2695, %2690
  %2718 = fmul fast float %2717, 0x3F847AE140000000
  %2719 = fadd fast float %2696, %2691
  %2720 = fmul fast float %2719, 0x3F847AE140000000
  %2721 = call float @dx.op.dot3.f32(i32 55, float %2712, float %2713, float %2714, float %314, float %315, float %316)  ; Dot3(ax,ay,az,bx,by,bz)
  %2722 = fcmp fast ogt float %2686, 0.000000e+00
  %2723 = select i1 %2722, float 1.000000e+00, float -1.000000e+00
  %2724 = fmul fast float %2723, 5.000000e-01
  %2725 = fmul fast float %2724, %2721
  %2726 = fmul fast float %2723, %2686
  %2727 = fadd fast float %2725, 4.921875e-01
  %2728 = fadd fast float %2726, -3.125000e-02
  %2729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %29, float %2727, float 0x3FB25F3060000000, float %2728, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2730 = extractvalue %dx.types.ResRet.f32 %2729, 0
  %2731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2732 = extractvalue %dx.types.CBufRet.f32 %2731, 0
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2735 = fmul fast float %2734, %2732
  %2736 = extractvalue %dx.types.CBufRet.f32 %2733, 1
  %2737 = fadd fast float %2735, %2736
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = fmul fast float %2739, %2065
  %2741 = extractvalue %dx.types.CBufRet.f32 %2738, 1
  %2742 = fadd fast float %2740, %2741
  %2743 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  %2744 = extractvalue %dx.types.CBufRet.f32 %2731, 3
  %2745 = extractvalue %dx.types.CBufRet.f32 %2733, 2
  %2746 = fmul fast float %2745, %2744
  %2747 = extractvalue %dx.types.CBufRet.f32 %2733, 3
  %2748 = fadd fast float %2746, %2747
  %2749 = fmul fast float %2730, 0x400921FB60000000
  %2750 = fmul fast float %2749, %2737
  %2751 = fmul fast float %2750, %2743
  %2752 = call float @dx.op.binary.f32(i32 35, float %2716, float 0x3F10000000000000)  ; FMax(a,b)
  %2753 = call float @dx.op.binary.f32(i32 35, float %2718, float 0x3F10000000000000)  ; FMax(a,b)
  %2754 = call float @dx.op.binary.f32(i32 35, float %2720, float 0x3F10000000000000)  ; FMax(a,b)
  %2755 = fdiv fast float 1.000000e+00, %2752
  %2756 = fdiv fast float 1.000000e+00, %2753
  %2757 = fdiv fast float 1.000000e+00, %2754
  %2758 = fmul fast float %2715, 0xBF8D8BE060000000
  %2759 = fmul fast float %2717, 0xBF8D8BE060000000
  %2760 = fmul fast float %2719, 0xBF8D8BE060000000
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 3
  %2763 = call float @dx.op.dot3.f32(i32 55, float %2755, float %2756, float %2757, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2764 = fmul fast float %2762, %2763
  %2765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %2766 = extractvalue %dx.types.CBufRet.f32 %2765, 3
  %2767 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2766)  ; Dot3(ax,ay,az,bx,by,bz)
  %2768 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %386, float %387, float %388)  ; Dot3(ax,ay,az,bx,by,bz)
  %2769 = fdiv fast float 1.000000e+00, %2768
  %2770 = fmul fast float %2769, %2767
  %2771 = fcmp ogt float %316, -0.000000e+00
  %2772 = select i1 %2771, float %2766, float %2770
  %2773 = call float @dx.op.binary.f32(i32 36, float %2772, float %2764)  ; FMin(a,b)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2765, 0
  %2775 = fmul fast float %2774, %2773
  %2776 = fmul fast float %2775, %2758
  %2777 = fmul fast float %2775, %2759
  %2778 = fmul fast float %2775, %2760
  %2779 = call float @dx.op.unary.f32(i32 21, float %2776)  ; Exp(value)
  %2780 = call float @dx.op.unary.f32(i32 21, float %2777)  ; Exp(value)
  %2781 = call float @dx.op.unary.f32(i32 21, float %2778)  ; Exp(value)
  %2782 = fmul fast float %2751, %2708
  %2783 = fmul fast float %2782, %2779
  %2784 = fmul fast float %2751, %2709
  %2785 = fmul fast float %2784, %2780
  %2786 = fmul fast float %2751, %2710
  %2787 = fmul fast float %2786, %2781
  %2788 = extractvalue %dx.types.CBufRet.f32 %2765, 1
  %2789 = fmul fast float %2788, %2773
  %2790 = fmul fast float %2789, %2758
  %2791 = fmul fast float %2789, %2759
  %2792 = fmul fast float %2789, %2760
  %2793 = call float @dx.op.unary.f32(i32 21, float %2790)  ; Exp(value)
  %2794 = call float @dx.op.unary.f32(i32 21, float %2791)  ; Exp(value)
  %2795 = call float @dx.op.unary.f32(i32 21, float %2792)  ; Exp(value)
  %2796 = fmul fast float %2748, %1214
  %2797 = fmul fast float %2796, %2793
  %2798 = fmul fast float %2748, %1215
  %2799 = fmul fast float %2798, %2794
  %2800 = fmul fast float %2748, %1216
  %2801 = fmul fast float %2800, %2795
  %2802 = fadd fast float %2797, %2783
  %2803 = fmul fast float %2697, %2802
  %2804 = fadd fast float %2799, %2785
  %2805 = fmul fast float %2698, %2804
  %2806 = fadd fast float %2801, %2787
  %2807 = fmul fast float %2699, %2806
  %2808 = fmul fast float %2772, %2758
  %2809 = fmul fast float %2772, %2759
  %2810 = fmul fast float %2772, %2760
  %2811 = call float @dx.op.unary.f32(i32 21, float %2808)  ; Exp(value)
  %2812 = call float @dx.op.unary.f32(i32 21, float %2809)  ; Exp(value)
  %2813 = call float @dx.op.unary.f32(i32 21, float %2810)  ; Exp(value)
  %2814 = call float @dx.op.unary.f32(i32 7, float %2811)  ; Saturate(value)
  %2815 = call float @dx.op.unary.f32(i32 7, float %2812)  ; Saturate(value)
  %2816 = call float @dx.op.unary.f32(i32 7, float %2813)  ; Saturate(value)
  %2817 = fmul fast float %2814, %2803
  %2818 = fmul fast float %2815, %2805
  %2819 = fmul fast float %2816, %2807
  %2820 = fsub fast float %2803, %2817
  %2821 = fsub fast float %2805, %2818
  %2822 = fsub fast float %2807, %2819
  %2823 = fmul fast float %2755, %1228
  %2824 = fmul fast float %2823, %2820
  %2825 = fmul fast float %2756, %1228
  %2826 = fmul fast float %2825, %2821
  %2827 = fmul fast float %2757, %1228
  %2828 = fmul fast float %2827, %2822
  %2829 = fadd fast float %2824, %2674
  %2830 = fadd fast float %2826, %2675
  %2831 = fadd fast float %2828, %2676
  %2832 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %2833 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2834 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %2835 = fmul fast float %2832, %2677
  %2836 = fmul fast float %2833, %2678
  %2837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2838 = extractvalue %dx.types.CBufRet.f32 %2837, 0
  br i1 %385, label %2839, label %2865

; <label>:2839                                    ; preds = %2673
  %2840 = fadd fast float %2679, %361
  %2841 = fmul fast float %2840, %359
  %2842 = fsub fast float 1.000000e+00, %359
  %2843 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2844 = fmul fast float %288, 2.000000e+00
  %2845 = fmul fast float %2844, %322
  %2846 = fsub fast float %316, %2845
  %2847 = call float @dx.op.unary.f32(i32 7, float %2846)  ; Saturate(value)
  %2848 = fsub fast float 1.000000e+00, %2847
  %2849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2850 = extractvalue %dx.types.CBufRet.f32 %2849, 3
  %2851 = fmul fast float %2848, %2843
  %2852 = fmul fast float %2851, %2850
  %2853 = fadd fast float %2852, %2841
  %2854 = fsub fast float 1.000000e+00, %391
  %2855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.f32 %2855, 0
  %2857 = fmul fast float %2856, %2854
  %2858 = fsub fast float %2853, %2857
  %2859 = fadd fast float %2836, %2835
  %2860 = extractvalue %dx.types.CBufRet.f32 %2849, 1
  %2861 = fsub fast float %2858, %2860
  %2862 = extractvalue %dx.types.CBufRet.f32 %2849, 2
  %2863 = fmul fast float %2861, %2862
  %2864 = call float @dx.op.unary.f32(i32 7, float %2863)  ; Saturate(value)
  br label %2869

; <label>:2865                                    ; preds = %2673
  %2866 = fmul fast float %2834, %2679
  %2867 = fmul fast float %2838, %2836
  %2868 = fmul fast float %2866, %2838
  br label %2869

; <label>:2869                                    ; preds = %2865, %2839
  %2870 = phi float [ %2859, %2839 ], [ %2835, %2865 ]
  %2871 = phi float [ %2864, %2839 ], [ %2867, %2865 ]
  %2872 = phi float [ 1.000000e+00, %2839 ], [ %2868, %2865 ]
  %2873 = fmul float %2838, %2870
  %2874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2875 = extractvalue %dx.types.CBufRet.f32 %2874, 0
  %2876 = fmul fast float %2875, %2830
  %2877 = fmul fast float %2875, %2831
  %2878 = fadd fast float %2830, %2829
  %2879 = select i1 %385, float %2878, float %2829
  %2880 = fmul float %2879, %2875
  %2881 = select i1 %385, float 0.000000e+00, float %2876
  %2882 = select i1 %385, float 0.000000e+00, float %2877
  %2883 = fadd fast float %228, 0x3FE3C6EF40000000
  %2884 = call float @dx.op.unary.f32(i32 22, float %2883)  ; Frc(value)
  %2885 = call float @dx.op.unary.f32(i32 23, float %2873)  ; Log(value)
  %2886 = fadd fast float %2885, -7.000000e+00
  %2887 = call float @dx.op.unary.f32(i32 21, float %2886)  ; Exp(value)
  %2888 = fmul fast float %2884, 2.000000e+00
  %2889 = fadd fast float %2888, -1.000000e+00
  %2890 = fmul fast float %2887, %2889
  %2891 = fcmp fast ogt float %2873, 0.000000e+00
  %2892 = select i1 %2891, float %2890, float 0.000000e+00
  %2893 = fadd fast float %2892, %2873
  %2894 = fadd fast float %228, 0x3FF3C6EF40000000
  %2895 = call float @dx.op.unary.f32(i32 22, float %2894)  ; Frc(value)
  %2896 = call float @dx.op.unary.f32(i32 23, float %2871)  ; Log(value)
  %2897 = fadd fast float %2896, -7.000000e+00
  %2898 = call float @dx.op.unary.f32(i32 21, float %2897)  ; Exp(value)
  %2899 = fmul fast float %2895, 2.000000e+00
  %2900 = fadd fast float %2899, -1.000000e+00
  %2901 = fmul fast float %2898, %2900
  %2902 = fcmp fast ogt float %2871, 0.000000e+00
  %2903 = select i1 %2902, float %2901, float 0.000000e+00
  %2904 = fadd fast float %2903, %2871
  %2905 = fadd fast float %228, 0x3FFDAA66E0000000
  %2906 = call float @dx.op.unary.f32(i32 22, float %2905)  ; Frc(value)
  %2907 = call float @dx.op.unary.f32(i32 23, float %2872)  ; Log(value)
  %2908 = fadd fast float %2907, -6.000000e+00
  %2909 = call float @dx.op.unary.f32(i32 21, float %2908)  ; Exp(value)
  %2910 = fmul fast float %2906, 2.000000e+00
  %2911 = fadd fast float %2910, -1.000000e+00
  %2912 = fmul fast float %2909, %2911
  %2913 = fcmp fast ogt float %2872, 0.000000e+00
  %2914 = select i1 %2913, float %2912, float 0.000000e+00
  %2915 = fadd fast float %2914, %2872
  %2916 = call float @dx.op.binary.f32(i32 36, float %2893, float 3.225500e+04)  ; FMin(a,b)
  %2917 = call float @dx.op.binary.f32(i32 36, float %2904, float 3.225500e+04)  ; FMin(a,b)
  %2918 = call float @dx.op.binary.f32(i32 36, float %2915, float 3.225500e+04)  ; FMin(a,b)
  %2919 = call float @dx.op.binary.f32(i32 36, float %2880, float 3.225500e+04)  ; FMin(a,b)
  %2920 = call float @dx.op.binary.f32(i32 36, float %2881, float 3.225500e+04)  ; FMin(a,b)
  %2921 = call float @dx.op.binary.f32(i32 36, float %2882, float 3.225500e+04)  ; FMin(a,b)
  %2922 = fmul fast float %2916, %2832
  %2923 = fmul fast float %2917, %2833
  %2924 = fmul fast float %2918, %2834
  %2925 = fadd fast float %2919, %2922
  %2926 = fadd fast float %2920, %2923
  %2927 = fadd fast float %2921, %2924
  %2928 = select i1 %385, float %2917, float %2926
  %2929 = select i1 %385, float %2918, float %2927
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2925)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2928)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2929)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2916)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2917)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2918)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2930 = fptoui float %43 to i32
  %2931 = fptoui float %44 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2930, i32 %2931, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

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
!dx.viewIdState = !{!47}
!dx.entryPoints = !{!48}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !35, !37, !42}
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
!35 = !{!36}
!36 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!37 = !{!38, !39, !40, !41}
!38 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!39 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!41 = !{i32 3, %perPrim* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!42 = !{!43, !44, !45, !46}
!43 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!44 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!47 = !{[9 x i32] [i32 7, i32 8, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !62}
!49 = !{!50, !57, null}
!50 = !{!51, !54, !56}
!51 = !{i32 0, !"SV_Position", i8 9, i8 3, !52, i8 4, i32 1, i8 4, i32 0, i8 0, !53}
!52 = !{i32 0}
!53 = !{i32 3, i32 11}
!54 = !{i32 1, !"NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 1, i8 0, !55}
!55 = !{i32 3, i32 7}
!56 = !{i32 2, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58, !60}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !59}
!59 = !{i32 3, i32 15}
!60 = !{i32 1, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 1, i8 0, !59}
!61 = !{i32 1}
!62 = !{i32 0, i64 24}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

