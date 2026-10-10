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
; shader hash: db54446158e13073b72e25078a95d0be
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
;                                   texture     f32          2d     T10     t37,space2     1
;                                   texture    byte         r/o     T11     t10,space1     1
;                                   texture    byte         r/o     T12      t1,space1     1
;                                   texture     f32          1d     T13     t32,space2     1
;                                   texture     f32          3d     T14     t82,space2     1
;                                   texture     f32     2darray     T15      t8,space2     1
;                                   texture    byte         r/o     T16     t68,space1     1
;                                   texture     f32          2d     T17      t0,space2     1
;                                   texture    byte         r/o     T18     t11,space1     1
;                                   texture    byte         r/o     T19     t13,space1     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 0
  %34 = fmul fast float %33, %29
  %35 = fmul fast float %33, %30
  %36 = call float @dx.op.dot3.f32(i32 55, float %26, float %27, float %28, float %26, float %27, float %28)  ; Dot3(ax,ay,az,bx,by,bz)
  %37 = call float @dx.op.unary.f32(i32 25, float %36)  ; Rsqrt(value)
  %38 = fmul fast float %37, %26
  %39 = fmul fast float %37, %27
  %40 = fmul fast float %37, %28
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 2
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %44 = fmul fast float %34, 2.000000e+00
  %45 = fmul fast float %44, %42
  %46 = fmul fast float %35, 2.000000e+00
  %47 = fmul fast float %46, %43
  %48 = fsub fast float 1.000000e+00, %45
  %49 = fsub fast float 1.000000e+00, %47
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %53 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %54 = fmul fast float %48, %51
  %55 = fmul fast float %48, %52
  %56 = fmul fast float %48, %53
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %60 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %61 = fmul fast float %49, %58
  %62 = fmul fast float %49, %59
  %63 = fmul fast float %49, %60
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %68 = fadd fast float %61, %65
  %69 = fadd fast float %68, %54
  %70 = fadd fast float %62, %66
  %71 = fadd fast float %70, %55
  %72 = fadd fast float %63, %67
  %73 = fadd fast float %72, %56
  %74 = fmul fast float %69, %31
  %75 = fmul fast float %71, %31
  %76 = fmul fast float %73, %31
  %77 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %78 = shl i32 %77, 16
  %79 = or i32 %78, %77
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %82 = bitcast float %81 to i32
  %83 = mul i32 %82, 928
  %84 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %83, i32 undef)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.i32 %84, 0
  %86 = or i32 %83, 24
  %87 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %86, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  %91 = extractvalue %dx.types.ResRet.f32 %87, 3
  %92 = add i32 %83, 40
  %93 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = add i32 %83, 564
  %96 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %95, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 1
  %98 = add i32 %83, 580
  %99 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %98, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 1
  %101 = add i32 %83, 852
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = add i32 %83, 860
  %105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = extractvalue %dx.types.ResRet.f32 %105, 1
  %108 = extractvalue %dx.types.ResRet.f32 %105, 2
  %109 = and i32 %85, 512
  %110 = icmp ne i32 %109, 0
  %111 = icmp ne i32 %103, 0
  %112 = and i1 %110, %111
  br i1 %112, label %113, label %180

; <label>:113                                     ; preds = %0
  %114 = extractvalue %dx.types.ResRet.f32 %99, 3
  %115 = extractvalue %dx.types.ResRet.f32 %99, 2
  %116 = extractvalue %dx.types.ResRet.f32 %99, 0
  %117 = extractvalue %dx.types.ResRet.f32 %96, 3
  %118 = extractvalue %dx.types.ResRet.f32 %96, 2
  %119 = extractvalue %dx.types.ResRet.f32 %96, 0
  %120 = add i32 %103, 0
  %121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %120, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = fadd fast float %125, %74
  %128 = fadd fast float %126, %75
  %129 = fmul fast float %127, %97
  %130 = fmul fast float %128, %97
  %131 = fmul fast float %123, %118
  %132 = fmul fast float %123, %117
  %133 = fadd fast float %129, %131
  %134 = fadd fast float %130, %132
  %135 = fmul fast float %127, %100
  %136 = fmul fast float %128, %100
  %137 = fmul fast float %123, %115
  %138 = fmul fast float %123, %114
  %139 = fadd fast float %135, %137
  %140 = fadd fast float %136, %138
  %141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %121, %dx.types.Handle %141, float %133, float %134, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = extractvalue %dx.types.ResRet.f32 %142, 1
  %145 = extractvalue %dx.types.ResRet.f32 %142, 2
  %146 = extractvalue %dx.types.ResRet.f32 %142, 3
  %147 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %121, %dx.types.Handle %141, float %139, float %140, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = extractvalue %dx.types.ResRet.f32 %147, 1
  %150 = extractvalue %dx.types.ResRet.f32 %147, 2
  %151 = extractvalue %dx.types.ResRet.f32 %147, 3
  %152 = fmul fast float %143, %106
  %153 = fadd fast float %152, %107
  %154 = call float @dx.op.unary.f32(i32 7, float %153)  ; Saturate(value)
  %155 = fadd fast float %144, %146
  %156 = fmul fast float %155, %108
  %157 = fsub fast float %156, %108
  %158 = fsub fast float %144, %146
  %159 = fmul fast float %148, %106
  %160 = fadd fast float %159, %107
  %161 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  %162 = fadd fast float %149, %151
  %163 = fmul fast float %162, %108
  %164 = fsub fast float %163, %108
  %165 = fsub fast float %149, %151
  %166 = fmul fast float %157, %119
  %167 = fmul fast float %158, %119
  %168 = fmul fast float %164, %116
  %169 = fmul fast float %165, %116
  %170 = fadd fast float %168, %166
  %171 = fadd fast float %169, %167
  %172 = fmul fast float %171, %108
  %173 = fmul fast float %145, %119
  %174 = fmul fast float %150, %116
  %175 = fmul fast float %154, %119
  %176 = fmul fast float %161, %116
  %177 = fadd fast float %176, %175
  %178 = fadd fast float %173, 1.000000e+00
  %179 = fadd fast float %178, %174
  br label %180

; <label>:180                                     ; preds = %113, %0
  %181 = phi float [ %170, %113 ], [ 0.000000e+00, %0 ]
  %182 = phi float [ %172, %113 ], [ 0.000000e+00, %0 ]
  %183 = phi float [ %179, %113 ], [ 1.000000e+00, %0 ]
  %184 = phi float [ %177, %113 ], [ %94, %0 ]
  %185 = and i32 %77, 65535
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = lshr i32 %79, 16
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = fadd fast float %186, %88
  %190 = fadd fast float %188, %89
  %191 = fadd fast float %186, %90
  %192 = fadd fast float %188, %91
  %193 = call i32 @dx.op.legacyF32ToF16(i32 130, float %189)  ; LegacyF32ToF16(value)
  %194 = call i32 @dx.op.legacyF32ToF16(i32 130, float %190)  ; LegacyF32ToF16(value)
  %195 = shl i32 %194, 16
  %196 = or i32 %195, %193
  %197 = call i32 @dx.op.legacyF32ToF16(i32 130, float %191)  ; LegacyF32ToF16(value)
  %198 = call i32 @dx.op.legacyF32ToF16(i32 130, float %192)  ; LegacyF32ToF16(value)
  %199 = shl i32 %198, 16
  %200 = or i32 %199, %197
  %201 = fadd fast float %186, %183
  %202 = fadd fast float %188, %184
  %203 = call i32 @dx.op.legacyF32ToF16(i32 130, float %201)  ; LegacyF32ToF16(value)
  %204 = call i32 @dx.op.legacyF32ToF16(i32 130, float %202)  ; LegacyF32ToF16(value)
  %205 = shl i32 %204, 16
  %206 = or i32 %205, %203
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fmul fast float %208, 0x3FE3C6EF40000000
  %210 = frem fast float %34, 2.560000e+02
  %211 = frem fast float %35, 2.560000e+02
  %212 = fptoui float %210 to i32
  %213 = fptoui float %211 to i32
  %214 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %212, i32 %213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = fadd fast float %215, %209
  %217 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %218 = fcmp fast ogt float %40, 0.000000e+00
  %219 = fcmp fast olt float %40, 0.000000e+00
  %220 = zext i1 %218 to i32
  %221 = zext i1 %219 to i32
  %222 = sub nsw i32 %220, %221
  %223 = sitofp i32 %222 to float
  %224 = fadd fast float %223, %40
  %225 = fdiv fast float -1.000000e+00, %224
  %226 = fmul fast float %38, %39
  %227 = fmul fast float %226, %225
  %228 = fmul fast float %38, %38
  %229 = fmul fast float %228, %223
  %230 = fmul fast float %229, %225
  %231 = fadd fast float %230, 1.000000e+00
  %232 = fmul fast float %227, %223
  %233 = fmul fast float %223, %38
  %234 = fmul fast float %39, %39
  %235 = fmul fast float %234, %225
  %236 = fadd fast float %235, %223
  %237 = and i32 %193, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %196, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = and i32 %197, 65535
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %200, 16
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = and i32 %203, 65535
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %206, 16
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = call float @dx.op.dot2.f32(i32 54, float %181, float %182, float %181, float %182)  ; Dot2(ax,ay,bx,by)
  %250 = fmul fast float %249, 0x3FE3333340000000
  %251 = fsub fast float 1.000000e+00, %250
  %252 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %251, float %181, float %182, float %251)  ; Dot3(ax,ay,az,bx,by,bz)
  %253 = call float @dx.op.unary.f32(i32 25, float %252)  ; Rsqrt(value)
  %254 = fmul fast float %253, %181
  %255 = fmul fast float %253, %182
  %256 = fmul fast float %251, %253
  %257 = fmul fast float %256, %38
  %258 = fmul fast float %256, %39
  %259 = fmul fast float %256, %40
  %260 = fmul fast float %254, %231
  %261 = fmul fast float %232, %254
  %262 = fmul fast float %233, %254
  %263 = fadd fast float %257, %260
  %264 = fadd fast float %258, %261
  %265 = fsub fast float %259, %262
  %266 = fmul fast float %255, %227
  %267 = fmul fast float %255, %236
  %268 = fmul fast float %255, %39
  %269 = fadd fast float %263, %266
  %270 = fadd fast float %264, %267
  %271 = fsub fast float %265, %268
  %272 = call float @dx.op.dot3.f32(i32 55, float %269, float %270, float %271, float %269, float %270, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  %273 = call float @dx.op.unary.f32(i32 25, float %272)  ; Rsqrt(value)
  %274 = fmul fast float %269, %273
  %275 = fmul fast float %270, %273
  %276 = fmul fast float %271, %273
  %277 = fadd fast float %244, 0xBFB99999A0000000
  %278 = call float @dx.op.unary.f32(i32 7, float %277)  ; Saturate(value)
  %279 = fmul fast float %278, 0x3FF1C71C80000000
  %280 = call float @dx.op.binary.f32(i32 36, float %244, float 0x3FB99999A0000000)  ; FMin(a,b)
  %281 = fsub fast float 1.000000e+00, %279
  %282 = call float @dx.op.unary.f32(i32 7, float %281)  ; Saturate(value)
  %283 = fmul fast float %282, %238
  %284 = fmul fast float %282, %240
  %285 = fmul fast float %282, %242
  %286 = call float @dx.op.unary.f32(i32 7, float %283)  ; Saturate(value)
  %287 = call float @dx.op.unary.f32(i32 7, float %284)  ; Saturate(value)
  %288 = call float @dx.op.unary.f32(i32 7, float %285)  ; Saturate(value)
  %289 = fmul fast float %279, %238
  %290 = fmul fast float %279, %240
  %291 = fmul fast float %279, %242
  %292 = fadd fast float %289, %280
  %293 = fadd fast float %290, %280
  %294 = fadd fast float %291, %280
  %295 = call float @dx.op.unary.f32(i32 7, float %292)  ; Saturate(value)
  %296 = call float @dx.op.unary.f32(i32 7, float %293)  ; Saturate(value)
  %297 = call float @dx.op.unary.f32(i32 7, float %294)  ; Saturate(value)
  %298 = fmul fast float %296, 0x401CF23780000000
  %299 = fadd fast float %298, 0x3FF32641C0000000
  %300 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %301 = call float @dx.op.unary.f32(i32 25, float %300)  ; Rsqrt(value)
  %302 = fmul fast float %301, %74
  %303 = fmul fast float %301, %75
  %304 = fmul fast float %301, %76
  %305 = fdiv fast float 1.000000e+00, %299
  %306 = fadd fast float %305, -1.000000e+00
  %307 = fadd fast float %305, 1.000000e+00
  %308 = fdiv fast float %306, %307
  %309 = fmul fast float %308, %308
  %310 = call float @dx.op.dot3.f32(i32 55, float %302, float %303, float %304, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = call float @dx.op.binary.f32(i32 35, float %310, float -1.000000e+00)  ; FMax(a,b)
  %312 = call float @dx.op.binary.f32(i32 36, float %311, float 1.000000e+00)  ; FMin(a,b)
  %313 = fmul fast float %305, %305
  %314 = fmul fast float %312, %312
  %315 = fsub fast float 1.000000e+00, %314
  %316 = fmul fast float %313, %315
  %317 = fsub fast float 1.000000e+00, %316
  %318 = fcmp fast olt float %305, 1.000000e+00
  %319 = select i1 %318, float %314, float %317
  %320 = fcmp fast ogt float %317, 0.000000e+00
  %321 = fsub fast float 1.000000e+00, %309
  %322 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %323 = fsub fast float 1.000000e+00, %322
  %324 = call float @dx.op.unary.f32(i32 23, float %323)  ; Log(value)
  %325 = fmul fast float %324, 5.000000e+00
  %326 = call float @dx.op.unary.f32(i32 21, float %325)  ; Exp(value)
  %327 = fmul fast float %326, %321
  %328 = fadd fast float %327, %309
  %329 = select i1 %320, float %328, float 1.000000e+00
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 3
  %332 = fmul fast float %331, %248
  %333 = call float @dx.op.unary.f32(i32 7, float %332)  ; Saturate(value)
  %334 = call float @dx.op.unary.f32(i32 7, float %246)  ; Saturate(value)
  %335 = call float @dx.op.dot3.f32(i32 55, float %295, float %296, float %297, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = fsub fast float 1.000000e+00, %335
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = lshr i32 %338, 8
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, %336
  %345 = fadd fast float %344, %340
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = call float @dx.op.unary.f32(i32 7, float %346)  ; Saturate(value)
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.i32 %351, 3
  %353 = and i32 %352, 3
  %354 = icmp ne i32 %353, 0
  %355 = and i32 %352, 4
  %356 = icmp ne i32 %355, 0
  %357 = and i1 %354, %356
  br i1 %357, label %358, label %369

; <label>:358                                     ; preds = %180
  %359 = extractvalue %dx.types.CBufRet.f32 %350, 3
  %360 = fmul fast float %359, %35
  %361 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %362 = fmul fast float %361, %34
  %363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %20, float %362, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = fsub fast float 1.000000e+00, %364
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %368 = fcmp fast olt float %365, %367
  br label %372

; <label>:369                                     ; preds = %180
  %370 = icmp eq i32 %355, 0
  %371 = and i1 %354, %370
  br label %372

; <label>:372                                     ; preds = %369, %358
  %373 = phi i1 [ %368, %358 ], [ %371, %369 ]
  %374 = fsub fast float -0.000000e+00, %302
  %375 = fsub fast float -0.000000e+00, %303
  %376 = fsub fast float -0.000000e+00, %304
  %377 = select i1 %373, float 0.000000e+00, float %297
  %378 = call float @dx.op.dot3.f32(i32 55, float %274, float %275, float %276, float %374, float %375, float %376)  ; Dot3(ax,ay,az,bx,by,bz)
  %379 = call float @dx.op.unary.f32(i32 7, float %378)  ; Saturate(value)
  %380 = call float @dx.op.binary.f32(i32 36, float %334, float 1.000000e+00)  ; FMin(a,b)
  %381 = fsub fast float 1.000000e+00, %334
  %382 = bitcast float %381 to i32
  %383 = sub nsw i32 2129859010, %382
  %384 = bitcast i32 %383 to float
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %387 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %388 = extractvalue %dx.types.CBufRet.f32 %385, 2
  %389 = fadd fast float %386, %74
  %390 = fadd fast float %387, %75
  %391 = fadd fast float %388, %76
  %392 = fmul fast float %274, 3.200000e+01
  %393 = fmul fast float %275, 3.200000e+01
  %394 = fadd fast float %389, %392
  %395 = fadd fast float %390, %393
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %398 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %399 = fsub fast float %394, %397
  %400 = fsub fast float %395, %398
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %403 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %404 = fmul fast float %399, %402
  %405 = fmul fast float %400, %403
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %408 = fmul fast float %404, %407
  %409 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %410 = fadd fast float %408, %409
  %411 = extractvalue %dx.types.CBufRet.f32 %406, 2
  %412 = fmul fast float %411, %405
  %413 = extractvalue %dx.types.CBufRet.f32 %406, 3
  %414 = fadd fast float %412, %413
  %415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %20, float %410, float %414, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 1
  %420 = extractvalue %dx.types.CBufRet.f32 %418, 0
  %421 = fsub fast float %419, %420
  %422 = fmul fast float %421, %416
  %423 = fadd fast float %422, %420
  %424 = extractvalue %dx.types.CBufRet.f32 %418, 3
  %425 = extractvalue %dx.types.CBufRet.f32 %418, 2
  %426 = fsub fast float %424, %425
  %427 = fmul fast float %426, %417
  %428 = fadd fast float %427, %425
  %429 = fsub fast float %391, %423
  %430 = fsub fast float %428, %423
  %431 = fdiv fast float %429, %430
  %432 = call float @dx.op.unary.f32(i32 7, float %431)  ; Saturate(value)
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %435 = fmul fast float %434, %432
  %436 = extractvalue %dx.types.CBufRet.f32 %433, 1
  %437 = fadd fast float %435, %436
  %438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %410, float %414, float %437, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %444 = extractvalue %dx.types.CBufRet.f32 %442, 1
  %445 = extractvalue %dx.types.CBufRet.f32 %442, 2
  %446 = fmul fast float %443, %439
  %447 = fmul fast float %444, %440
  %448 = fmul fast float %445, %441
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %452 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %453 = fadd fast float %446, %450
  %454 = fadd fast float %447, %451
  %455 = fadd fast float %448, %452
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %458 = fmul fast float %457, %404
  %459 = extractvalue %dx.types.CBufRet.f32 %456, 1
  %460 = fadd fast float %458, %459
  %461 = extractvalue %dx.types.CBufRet.f32 %456, 2
  %462 = fmul fast float %461, %405
  %463 = extractvalue %dx.types.CBufRet.f32 %456, 3
  %464 = fadd fast float %462, %463
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 0
  %467 = extractvalue %dx.types.CBufRet.f32 %465, 1
  %468 = extractvalue %dx.types.CBufRet.f32 %465, 2
  %469 = extractvalue %dx.types.CBufRet.f32 %465, 3
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %472 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %473 = extractvalue %dx.types.CBufRet.f32 %470, 2
  %474 = extractvalue %dx.types.CBufRet.f32 %470, 3
  %475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %460, float %464, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = extractvalue %dx.types.ResRet.f32 %475, 2
  %479 = extractvalue %dx.types.ResRet.f32 %475, 3
  %480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %460, float %464, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = extractvalue %dx.types.ResRet.f32 %480, 1
  %483 = extractvalue %dx.types.ResRet.f32 %480, 2
  %484 = extractvalue %dx.types.ResRet.f32 %480, 3
  %485 = fmul fast float %476, %453
  %486 = fmul fast float %481, %453
  %487 = fmul fast float %483, %453
  %488 = fmul fast float %479, %453
  %489 = fadd fast float %485, %466
  %490 = fadd fast float %486, %467
  %491 = fadd fast float %487, %468
  %492 = fadd fast float %488, %469
  %493 = fmul fast float %477, %453
  %494 = fmul fast float %482, %453
  %495 = fadd fast float %493, %471
  %496 = fadd fast float %494, %472
  %497 = fmul fast float %478, %453
  %498 = fmul fast float %484, %453
  %499 = fadd fast float %497, %473
  %500 = fadd fast float %498, %474
  %501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %460, float %464, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = extractvalue %dx.types.ResRet.f32 %501, 3
  %506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %460, float %464, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = extractvalue %dx.types.ResRet.f32 %506, 3
  %511 = fmul fast float %502, %454
  %512 = fmul fast float %507, %454
  %513 = fmul fast float %509, %454
  %514 = fmul fast float %505, %454
  %515 = fadd fast float %489, %511
  %516 = fadd fast float %490, %512
  %517 = fadd fast float %491, %513
  %518 = fadd fast float %492, %514
  %519 = fmul fast float %503, %454
  %520 = fmul fast float %508, %454
  %521 = fadd fast float %495, %519
  %522 = fadd fast float %496, %520
  %523 = fmul fast float %504, %454
  %524 = fmul fast float %510, %454
  %525 = fadd fast float %499, %523
  %526 = fadd fast float %500, %524
  %527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %460, float %464, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = extractvalue %dx.types.ResRet.f32 %527, 3
  %532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %460, float %464, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = extractvalue %dx.types.ResRet.f32 %532, 2
  %536 = extractvalue %dx.types.ResRet.f32 %532, 3
  %537 = fmul fast float %528, %455
  %538 = fmul fast float %533, %455
  %539 = fmul fast float %535, %455
  %540 = fmul fast float %531, %455
  %541 = fadd fast float %515, %537
  %542 = fadd fast float %516, %538
  %543 = fadd fast float %517, %539
  %544 = fadd fast float %518, %540
  %545 = fmul fast float %529, %455
  %546 = fmul fast float %534, %455
  %547 = fadd fast float %521, %545
  %548 = fadd fast float %522, %546
  %549 = fmul fast float %530, %455
  %550 = fmul fast float %536, %455
  %551 = fadd fast float %525, %549
  %552 = fadd fast float %526, %550
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = fsub fast float %389, %554
  %556 = fsub fast float %397, %389
  %557 = call float @dx.op.binary.f32(i32 35, float %556, float %555)  ; FMax(a,b)
  %558 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %559 = fsub fast float %390, %558
  %560 = fsub fast float %398, %390
  %561 = call float @dx.op.binary.f32(i32 35, float %560, float %559)  ; FMax(a,b)
  %562 = call float @dx.op.binary.f32(i32 35, float %557, float %561)  ; FMax(a,b)
  %563 = extractvalue %dx.types.CBufRet.f32 %401, 3
  %564 = fmul fast float %563, %562
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %569 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %570 = extractvalue %dx.types.CBufRet.f32 %566, 3
  %571 = fsub fast float %567, %541
  %572 = fsub fast float %568, %542
  %573 = fsub fast float %569, %543
  %574 = fsub fast float %570, %544
  %575 = fmul fast float %571, %565
  %576 = fmul fast float %572, %565
  %577 = fmul fast float %573, %565
  %578 = fmul fast float %574, %565
  %579 = fadd fast float %575, %541
  %580 = fadd fast float %576, %542
  %581 = fadd fast float %577, %543
  %582 = fadd fast float %578, %544
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %586 = fsub fast float %584, %547
  %587 = fsub fast float %585, %548
  %588 = fmul fast float %586, %565
  %589 = fmul fast float %587, %565
  %590 = fadd fast float %588, %547
  %591 = fadd fast float %589, %548
  %592 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %593 = extractvalue %dx.types.CBufRet.f32 %583, 3
  %594 = fsub fast float %592, %551
  %595 = fsub fast float %593, %552
  %596 = fmul fast float %594, %565
  %597 = fmul fast float %595, %565
  %598 = fadd fast float %596, %551
  %599 = fadd fast float %597, %552
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = fmul fast float %601, %579
  %603 = fmul fast float %601, %580
  %604 = fmul fast float %601, %581
  %605 = fmul fast float %601, %582
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = fmul fast float %607, %590
  %609 = fmul fast float %607, %591
  %610 = fadd fast float %608, %602
  %611 = fadd fast float %609, %604
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 0
  %614 = fmul fast float %613, %598
  %615 = fmul fast float %613, %599
  %616 = fadd fast float %610, %614
  %617 = fadd fast float %611, %615
  %618 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %619 = fmul fast float %618, %579
  %620 = fmul fast float %618, %580
  %621 = fmul fast float %618, %581
  %622 = fmul fast float %618, %582
  %623 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %624 = fmul fast float %623, %590
  %625 = fmul fast float %623, %591
  %626 = fadd fast float %624, %619
  %627 = fadd fast float %625, %621
  %628 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %629 = fmul fast float %628, %598
  %630 = fmul fast float %628, %599
  %631 = fadd fast float %626, %629
  %632 = fadd fast float %627, %630
  %633 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %634 = fmul fast float %633, %579
  %635 = fmul fast float %633, %580
  %636 = fmul fast float %633, %581
  %637 = fmul fast float %633, %582
  %638 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %639 = fmul fast float %638, %590
  %640 = fmul fast float %638, %591
  %641 = fadd fast float %639, %634
  %642 = fadd fast float %640, %636
  %643 = extractvalue %dx.types.CBufRet.f32 %612, 2
  %644 = fmul fast float %643, %598
  %645 = fmul fast float %643, %599
  %646 = fadd fast float %641, %644
  %647 = fadd fast float %642, %645
  %648 = fmul fast float %635, %635
  %649 = fmul fast float %647, %647
  %650 = fmul fast float %637, %637
  %651 = fadd fast float %650, %648
  %652 = fadd fast float %651, %649
  %653 = call float @dx.op.unary.f32(i32 24, float %652)  ; Sqrt(value)
  %654 = fcmp fast ugt float %653, 0.000000e+00
  br i1 %654, label %655, label %670

; <label>:655                                     ; preds = %372
  %656 = fsub fast float -0.000000e+00, %637
  %657 = fdiv fast float %656, %653
  %658 = fsub fast float -0.000000e+00, %635
  %659 = fdiv fast float %658, %653
  %660 = fdiv fast float %647, %653
  %661 = fmul fast float %646, 0x3FE279A760000000
  %662 = fmul fast float %659, %635
  %663 = fmul fast float %660, %647
  %664 = fmul fast float %657, %637
  %665 = fadd fast float %662, %664
  %666 = fsub fast float %665, %663
  %667 = call float @dx.op.unary.f32(i32 6, float %666)  ; FAbs(value)
  %668 = fadd fast float %667, 0x3DDB7CDFE0000000
  %669 = fdiv fast float %661, %668
  br label %670

; <label>:670                                     ; preds = %655, %372
  %671 = phi float [ %669, %655 ], [ 1.000000e+00, %372 ]
  %672 = fmul fast float %620, %620
  %673 = fmul fast float %632, %632
  %674 = fmul fast float %622, %622
  %675 = fadd fast float %674, %672
  %676 = fadd fast float %675, %673
  %677 = call float @dx.op.unary.f32(i32 24, float %676)  ; Sqrt(value)
  %678 = fcmp fast ugt float %677, 0.000000e+00
  br i1 %678, label %679, label %694

; <label>:679                                     ; preds = %670
  %680 = fsub fast float -0.000000e+00, %622
  %681 = fdiv fast float %680, %677
  %682 = fsub fast float -0.000000e+00, %620
  %683 = fdiv fast float %682, %677
  %684 = fdiv fast float %632, %677
  %685 = fmul fast float %631, 0x3FE279A760000000
  %686 = fmul fast float %683, %620
  %687 = fmul fast float %684, %632
  %688 = fmul fast float %681, %622
  %689 = fadd fast float %686, %688
  %690 = fsub fast float %689, %687
  %691 = call float @dx.op.unary.f32(i32 6, float %690)  ; FAbs(value)
  %692 = fadd fast float %691, 0x3DDB7CDFE0000000
  %693 = fdiv fast float %685, %692
  br label %694

; <label>:694                                     ; preds = %679, %670
  %695 = phi float [ %693, %679 ], [ 1.000000e+00, %670 ]
  %696 = call float @dx.op.binary.f32(i32 36, float %695, float %671)  ; FMin(a,b)
  %697 = fmul fast float %603, %603
  %698 = fmul fast float %617, %617
  %699 = fmul fast float %605, %605
  %700 = fadd fast float %699, %697
  %701 = fadd fast float %700, %698
  %702 = call float @dx.op.unary.f32(i32 24, float %701)  ; Sqrt(value)
  %703 = fcmp fast ugt float %702, 0.000000e+00
  br i1 %703, label %704, label %719

; <label>:704                                     ; preds = %694
  %705 = fsub fast float -0.000000e+00, %605
  %706 = fdiv fast float %705, %702
  %707 = fsub fast float -0.000000e+00, %603
  %708 = fdiv fast float %707, %702
  %709 = fdiv fast float %617, %702
  %710 = fmul fast float %616, 0x3FE279A760000000
  %711 = fmul fast float %708, %603
  %712 = fmul fast float %709, %617
  %713 = fmul fast float %706, %605
  %714 = fadd fast float %711, %713
  %715 = fsub fast float %714, %712
  %716 = call float @dx.op.unary.f32(i32 6, float %715)  ; FAbs(value)
  %717 = fadd fast float %716, 0x3DDB7CDFE0000000
  %718 = fdiv fast float %710, %717
  br label %719

; <label>:719                                     ; preds = %704, %694
  %720 = phi float [ %718, %704 ], [ 1.000000e+00, %694 ]
  %721 = call float @dx.op.binary.f32(i32 36, float %720, float %696)  ; FMin(a,b)
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %723 = fcmp fast olt float %722, 1.000000e+00
  br i1 %723, label %724, label %734

; <label>:724                                     ; preds = %719
  %725 = fmul fast float %722, %603
  %726 = fmul fast float %722, %617
  %727 = fmul fast float %722, %605
  %728 = fmul fast float %722, %620
  %729 = fmul fast float %722, %632
  %730 = fmul fast float %722, %622
  %731 = fmul fast float %722, %635
  %732 = fmul fast float %722, %647
  %733 = fmul fast float %722, %637
  br label %734

; <label>:734                                     ; preds = %724, %719
  %735 = phi float [ %731, %724 ], [ %635, %719 ]
  %736 = phi float [ %732, %724 ], [ %647, %719 ]
  %737 = phi float [ %733, %724 ], [ %637, %719 ]
  %738 = phi float [ %728, %724 ], [ %620, %719 ]
  %739 = phi float [ %729, %724 ], [ %632, %719 ]
  %740 = phi float [ %730, %724 ], [ %622, %719 ]
  %741 = phi float [ %725, %724 ], [ %603, %719 ]
  %742 = phi float [ %726, %724 ], [ %617, %719 ]
  %743 = phi float [ %727, %724 ], [ %605, %719 ]
  %744 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %616)  ; FMax(a,b)
  %745 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %631)  ; FMax(a,b)
  %746 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %646)  ; FMax(a,b)
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %749 = fcmp fast ogt float %748, 0.000000e+00
  %750 = fcmp fast oge float %404, 0.000000e+00
  %751 = and i1 %750, %749
  %752 = fcmp fast ole float %404, 1.000000e+00
  %753 = and i1 %752, %751
  %754 = fcmp fast oge float %405, 0.000000e+00
  %755 = and i1 %754, %753
  %756 = fcmp fast ole float %405, 1.000000e+00
  %757 = and i1 %756, %755
  br i1 %757, label %758, label %898, !dx.controlflow.hints !51

; <label>:758                                     ; preds = %734
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %761 = extractvalue %dx.types.CBufRet.f32 %759, 3
  %762 = fmul fast float %760, %404
  %763 = fmul fast float %761, %405
  %764 = call float @dx.op.unary.f32(i32 27, float %762)  ; Round_ni(value)
  %765 = call float @dx.op.unary.f32(i32 27, float %763)  ; Round_ni(value)
  %766 = fptosi float %764 to i32
  %767 = fptosi float %765 to i32
  %768 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %766, i32 %767, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 65535
  %771 = lshr i32 %769, 16
  %772 = icmp eq i32 %770, 65535
  br i1 %772, label %809, label %773

; <label>:773                                     ; preds = %758
  %774 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %775 = extractvalue %dx.types.CBufRet.f32 %759, 0
  %776 = extractvalue %dx.types.CBufRet.f32 %759, 1
  %777 = fmul fast float %775, %404
  %778 = fmul fast float %776, %405
  %779 = fmul fast float %777, 1.250000e-01
  %780 = fmul fast float %778, 1.250000e-01
  %781 = call float @dx.op.unary.f32(i32 27, float %779)  ; Round_ni(value)
  %782 = call float @dx.op.unary.f32(i32 27, float %780)  ; Round_ni(value)
  %783 = fmul fast float %781, 8.000000e+00
  %784 = fmul fast float %782, 8.000000e+00
  %785 = and i32 %769, 255
  %786 = lshr i32 %769, 8
  %787 = and i32 %786, 255
  %788 = mul nuw nsw i32 %785, 9
  %789 = uitofp i32 %788 to float
  %790 = mul nuw nsw i32 %787, 9
  %791 = uitofp i32 %790 to float
  %792 = fadd fast float %789, 5.000000e-01
  %793 = fadd fast float %792, %777
  %794 = fsub fast float %793, %783
  %795 = fadd fast float %791, 5.000000e-01
  %796 = fadd fast float %795, %778
  %797 = fsub fast float %796, %784
  %798 = fdiv fast float %794, %748
  %799 = fdiv fast float %797, %774
  %800 = fmul fast float %432, 4.375000e-01
  %801 = fadd fast float %800, 3.125000e-02
  %802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %798, float %799, float %801, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 0
  %804 = extractvalue %dx.types.ResRet.f32 %802, 1
  %805 = extractvalue %dx.types.ResRet.f32 %802, 2
  %806 = fadd fast float %803, %744
  %807 = fadd fast float %804, %745
  %808 = fadd fast float %805, %746
  br label %809

; <label>:809                                     ; preds = %773, %758
  %810 = phi float [ %808, %773 ], [ %746, %758 ]
  %811 = phi float [ %807, %773 ], [ %745, %758 ]
  %812 = phi float [ %806, %773 ], [ %744, %758 ]
  %813 = icmp eq i32 %771, 65535
  br i1 %813, label %898, label %814

; <label>:814                                     ; preds = %809
  %815 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %816 = extractvalue %dx.types.CBufRet.f32 %759, 0
  %817 = extractvalue %dx.types.CBufRet.f32 %759, 1
  %818 = fmul fast float %816, %404
  %819 = fmul fast float %817, %405
  %820 = fmul fast float %818, 1.250000e-01
  %821 = fmul fast float %819, 1.250000e-01
  %822 = call float @dx.op.unary.f32(i32 27, float %820)  ; Round_ni(value)
  %823 = call float @dx.op.unary.f32(i32 27, float %821)  ; Round_ni(value)
  %824 = fmul fast float %822, 8.000000e+00
  %825 = fmul fast float %823, 8.000000e+00
  %826 = fsub fast float %818, %824
  %827 = fsub fast float %819, %825
  %828 = fadd fast float %826, 5.000000e-01
  %829 = fadd fast float %827, 5.000000e-01
  %830 = and i32 %771, 255
  %831 = lshr i32 %769, 24
  %832 = mul nuw nsw i32 %830, 9
  %833 = uitofp i32 %832 to float
  %834 = mul nuw nsw i32 %831, 9
  %835 = uitofp i32 %834 to float
  %836 = fadd fast float %828, %833
  %837 = fadd fast float %829, %835
  %838 = fdiv fast float %836, %748
  %839 = fdiv fast float %837, %815
  %840 = fmul fast float %432, 4.375000e-01
  %841 = fadd fast float %840, 3.125000e-02
  %842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %838, float %839, float %841, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = fadd fast float %840, 5.312500e-01
  %847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %838, float %839, float %846, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %848 = extractvalue %dx.types.ResRet.f32 %847, 0
  %849 = extractvalue %dx.types.ResRet.f32 %847, 1
  %850 = extractvalue %dx.types.ResRet.f32 %847, 2
  %851 = fmul fast float %848, 2.000000e+00
  %852 = fmul fast float %849, 2.000000e+00
  %853 = fmul fast float %850, 2.000000e+00
  %854 = fadd fast float %851, -1.000000e+00
  %855 = fadd fast float %852, -1.000000e+00
  %856 = fadd fast float %853, -1.000000e+00
  %857 = fmul fast float %854, %854
  %858 = fmul fast float %855, %855
  %859 = fadd fast float %857, %858
  %860 = fmul fast float %856, %856
  %861 = fadd fast float %859, %860
  %862 = call float @dx.op.unary.f32(i32 24, float %861)  ; Sqrt(value)
  %863 = fcmp fast ogt float %862, 0.000000e+00
  br i1 %863, label %864, label %868

; <label>:864                                     ; preds = %814
  %865 = fdiv fast float %854, %862
  %866 = fdiv fast float %855, %862
  %867 = fdiv fast float %856, %862
  br label %868

; <label>:868                                     ; preds = %864, %814
  %869 = phi float [ %865, %864 ], [ 0.000000e+00, %814 ]
  %870 = phi float [ %866, %864 ], [ 0.000000e+00, %814 ]
  %871 = phi float [ %867, %864 ], [ 0.000000e+00, %814 ]
  %872 = fmul fast float %74, %74
  %873 = fmul fast float %75, %75
  %874 = fadd fast float %872, %873
  %875 = call float @dx.op.unary.f32(i32 24, float %874)  ; Sqrt(value)
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 0
  %878 = extractvalue %dx.types.CBufRet.f32 %876, 1
  %879 = fsub fast float %875, %877
  %880 = fdiv fast float %879, %878
  %881 = call float @dx.op.unary.f32(i32 7, float %880)  ; Saturate(value)
  %882 = fmul fast float %881, 2.000000e+00
  %883 = fsub fast float 3.000000e+00, %882
  %884 = fmul fast float %881, %881
  %885 = fmul fast float %884, %883
  %886 = call float @dx.op.dot3.f32(i32 55, float %869, float %870, float %871, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %887 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %886)  ; FMax(a,b)
  %888 = fmul fast float %887, 0x400C5BF8A0000000
  %889 = fmul fast float %885, %843
  %890 = fmul fast float %889, %888
  %891 = fadd fast float %890, %812
  %892 = fmul fast float %885, %844
  %893 = fmul fast float %892, %888
  %894 = fadd fast float %893, %811
  %895 = fmul fast float %885, %845
  %896 = fmul fast float %895, %888
  %897 = fadd fast float %896, %810
  br label %898

; <label>:898                                     ; preds = %868, %809, %734
  %899 = phi float [ %897, %868 ], [ %810, %809 ], [ %746, %734 ]
  %900 = phi float [ %894, %868 ], [ %811, %809 ], [ %745, %734 ]
  %901 = phi float [ %891, %868 ], [ %812, %809 ], [ %744, %734 ]
  %902 = fcmp fast ogt float %391, %428
  %903 = and i1 %750, %902
  %904 = and i1 %752, %903
  %905 = and i1 %754, %904
  %906 = and i1 %756, %905
  br i1 %906, label %907, label %964, !dx.controlflow.hints !52

; <label>:907                                     ; preds = %898
  %908 = fmul fast float %430, 0x3FC24924A0000000
  %909 = fsub fast float %391, %428
  %910 = fdiv fast float %909, %908
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 0
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %916 = extractvalue %dx.types.CBufRet.f32 %914, 1
  %917 = extractvalue %dx.types.CBufRet.f32 %914, 2
  %918 = fsub fast float %913, %901
  %919 = fsub fast float %915, %741
  %920 = fsub fast float %916, %742
  %921 = fsub fast float %917, %743
  %922 = fmul fast float %918, %911
  %923 = fmul fast float %919, %911
  %924 = fmul fast float %920, %911
  %925 = fmul fast float %921, %911
  %926 = fadd fast float %922, %901
  %927 = fadd fast float %923, %741
  %928 = fadd fast float %924, %742
  %929 = fadd fast float %925, %743
  %930 = extractvalue %dx.types.CBufRet.f32 %912, 1
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %933 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %934 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %935 = fsub fast float %930, %900
  %936 = fsub fast float %932, %738
  %937 = fsub fast float %933, %739
  %938 = fsub fast float %934, %740
  %939 = fmul fast float %935, %911
  %940 = fmul fast float %936, %911
  %941 = fmul fast float %937, %911
  %942 = fmul fast float %938, %911
  %943 = fadd fast float %939, %900
  %944 = fadd fast float %940, %738
  %945 = fadd fast float %941, %739
  %946 = fadd fast float %942, %740
  %947 = extractvalue %dx.types.CBufRet.f32 %912, 2
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %951 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %952 = fsub fast float %947, %899
  %953 = fsub fast float %949, %735
  %954 = fsub fast float %950, %736
  %955 = fsub fast float %951, %737
  %956 = fmul fast float %952, %911
  %957 = fmul fast float %953, %911
  %958 = fmul fast float %954, %911
  %959 = fmul fast float %955, %911
  %960 = fadd fast float %956, %899
  %961 = fadd fast float %957, %735
  %962 = fadd fast float %958, %736
  %963 = fadd fast float %959, %737
  br label %964

; <label>:964                                     ; preds = %907, %898
  %965 = phi float [ %960, %907 ], [ %899, %898 ]
  %966 = phi float [ %961, %907 ], [ %735, %898 ]
  %967 = phi float [ %962, %907 ], [ %736, %898 ]
  %968 = phi float [ %963, %907 ], [ %737, %898 ]
  %969 = phi float [ %943, %907 ], [ %900, %898 ]
  %970 = phi float [ %944, %907 ], [ %738, %898 ]
  %971 = phi float [ %945, %907 ], [ %739, %898 ]
  %972 = phi float [ %946, %907 ], [ %740, %898 ]
  %973 = phi float [ %926, %907 ], [ %901, %898 ]
  %974 = phi float [ %927, %907 ], [ %741, %898 ]
  %975 = phi float [ %928, %907 ], [ %742, %898 ]
  %976 = phi float [ %929, %907 ], [ %743, %898 ]
  %977 = extractvalue %dx.types.CBufRet.f32 %553, 3
  %978 = fmul fast float %977, %973
  %979 = fmul fast float %977, %969
  %980 = fmul fast float %977, %965
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 3
  %983 = fmul fast float %978, %982
  %984 = fmul fast float %979, %982
  %985 = fmul fast float %980, %982
  %986 = fmul fast float %974, 1.500000e+00
  %987 = fmul fast float %986, %977
  %988 = fmul fast float %987, %982
  %989 = fmul fast float %975, 1.500000e+00
  %990 = fmul fast float %989, %977
  %991 = fmul fast float %990, %982
  %992 = fmul fast float %976, 1.500000e+00
  %993 = fmul fast float %992, %977
  %994 = fmul fast float %993, %982
  %995 = fmul fast float %970, 1.500000e+00
  %996 = fmul fast float %995, %977
  %997 = fmul fast float %996, %982
  %998 = fmul fast float %971, 1.500000e+00
  %999 = fmul fast float %998, %977
  %1000 = fmul fast float %999, %982
  %1001 = fmul fast float %972, 1.500000e+00
  %1002 = fmul fast float %1001, %977
  %1003 = fmul fast float %1002, %982
  %1004 = fmul fast float %966, 1.500000e+00
  %1005 = fmul fast float %1004, %977
  %1006 = fmul fast float %1005, %982
  %1007 = fmul fast float %967, 1.500000e+00
  %1008 = fmul fast float %1007, %977
  %1009 = fmul fast float %1008, %982
  %1010 = fmul fast float %968, 1.500000e+00
  %1011 = fmul fast float %1010, %977
  %1012 = fmul fast float %1011, %982
  %1013 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %983)  ; FMax(a,b)
  %1014 = call float @dx.op.dot3.f32(i32 55, float %988, float %991, float %994, float %988, float %991, float %994)  ; Dot3(ax,ay,az,bx,by,bz)
  %1015 = fcmp fast oeq float %1014, 0.000000e+00
  %1016 = fcmp fast oeq float %1013, 0.000000e+00
  %1017 = or i1 %1016, %1015
  br i1 %1017, label %1048, label %1018

; <label>:1018                                    ; preds = %964
  %1019 = fsub fast float -0.000000e+00, %994
  %1020 = fsub fast float -0.000000e+00, %988
  %1021 = call float @dx.op.unary.f32(i32 24, float %1014)  ; Sqrt(value)
  %1022 = fdiv fast float %1021, %1013
  %1023 = fcmp fast ogt float %1022, 0x3FFB6F8900000000
  %1024 = select i1 %1023, float 0x3FFB6F8900000000, float %1022
  %1025 = fmul fast float %1024, 0x3FE8A23460000000
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1027 = call float @dx.op.binary.f32(i32 35, float %1024, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1028 = fmul fast float %1026, %1013
  %1029 = fmul fast float %1027, 0x3FF279A740000000
  %1030 = fadd fast float %1029, -1.000000e+00
  %1031 = call float @dx.op.dot3.f32(i32 55, float %1019, float %1020, float %991, float %1019, float %1020, float %991)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = call float @dx.op.unary.f32(i32 25, float %1031)  ; Rsqrt(value)
  %1033 = fmul fast float %1032, %1019
  %1034 = fmul fast float %1032, %1020
  %1035 = fmul fast float %1032, %991
  %1036 = fmul fast float %1030, %1030
  %1037 = fsub fast float 1.000000e+00, %1036
  %1038 = fmul fast float %1027, 0x40005F8BE0000000
  %1039 = fsub fast float 0x400C5BF8A0000000, %1038
  %1040 = fdiv fast float %1028, %1039
  %1041 = fmul fast float %1040, 0x3FEE31C3C0000000
  %1042 = fmul fast float %1041, %1037
  %1043 = fmul fast float %1027, 0x3FDACB7480000000
  %1044 = fadd fast float %1043, 0xBFD7347680000000
  %1045 = fmul fast float %1044, %1040
  %1046 = fmul fast float %1045, %1037
  %1047 = fmul float %1042, 0x3FDF454380000000
  br label %1048

; <label>:1048                                    ; preds = %1018, %964
  %1049 = phi float [ %1033, %1018 ], [ 0.000000e+00, %964 ]
  %1050 = phi float [ %1034, %1018 ], [ 0.000000e+00, %964 ]
  %1051 = phi float [ %1035, %1018 ], [ 0.000000e+00, %964 ]
  %1052 = phi float [ %1047, %1018 ], [ 0.000000e+00, %964 ]
  %1053 = phi float [ %1046, %1018 ], [ 0.000000e+00, %964 ]
  %1054 = call float @dx.op.dot3.f32(i32 55, float %1049, float %1050, float %1051, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %1055 = fmul fast float %1054, %1054
  %1056 = fmul fast float %1055, 0x3FEE471020000000
  %1057 = fadd fast float %1056, 0xBFD42F6020000000
  %1058 = fmul fast float %1013, 0x3FD20DD760000000
  %1059 = fmul fast float %1057, %1053
  %1060 = fmul fast float %1052, %1054
  %1061 = fadd fast float %1060, %1058
  %1062 = fadd fast float %1061, %1059
  %1063 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %984)  ; FMax(a,b)
  %1064 = call float @dx.op.dot3.f32(i32 55, float %997, float %1000, float %1003, float %997, float %1000, float %1003)  ; Dot3(ax,ay,az,bx,by,bz)
  %1065 = fcmp fast oeq float %1064, 0.000000e+00
  %1066 = fcmp fast oeq float %1063, 0.000000e+00
  %1067 = or i1 %1066, %1065
  br i1 %1067, label %1098, label %1068

; <label>:1068                                    ; preds = %1048
  %1069 = fsub fast float -0.000000e+00, %1003
  %1070 = fsub fast float -0.000000e+00, %997
  %1071 = call float @dx.op.unary.f32(i32 24, float %1064)  ; Sqrt(value)
  %1072 = fdiv fast float %1071, %1063
  %1073 = fcmp fast ogt float %1072, 0x3FFB6F8900000000
  %1074 = select i1 %1073, float 0x3FFB6F8900000000, float %1072
  %1075 = fmul fast float %1074, 0x3FE8A23460000000
  %1076 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1077 = call float @dx.op.binary.f32(i32 35, float %1074, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1078 = fmul fast float %1076, %1063
  %1079 = fmul fast float %1077, 0x3FF279A740000000
  %1080 = fadd fast float %1079, -1.000000e+00
  %1081 = call float @dx.op.dot3.f32(i32 55, float %1069, float %1070, float %1000, float %1069, float %1070, float %1000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1082 = call float @dx.op.unary.f32(i32 25, float %1081)  ; Rsqrt(value)
  %1083 = fmul fast float %1082, %1069
  %1084 = fmul fast float %1082, %1070
  %1085 = fmul fast float %1082, %1000
  %1086 = fmul fast float %1080, %1080
  %1087 = fsub fast float 1.000000e+00, %1086
  %1088 = fmul fast float %1077, 0x40005F8BE0000000
  %1089 = fsub fast float 0x400C5BF8A0000000, %1088
  %1090 = fdiv fast float %1078, %1089
  %1091 = fmul fast float %1090, 0x3FEE31C3C0000000
  %1092 = fmul fast float %1091, %1087
  %1093 = fmul fast float %1077, 0x3FDACB7480000000
  %1094 = fadd fast float %1093, 0xBFD7347680000000
  %1095 = fmul fast float %1094, %1090
  %1096 = fmul fast float %1095, %1087
  %1097 = fmul float %1092, 0x3FDF454380000000
  br label %1098

; <label>:1098                                    ; preds = %1068, %1048
  %1099 = phi float [ %1083, %1068 ], [ 0.000000e+00, %1048 ]
  %1100 = phi float [ %1084, %1068 ], [ 0.000000e+00, %1048 ]
  %1101 = phi float [ %1085, %1068 ], [ 0.000000e+00, %1048 ]
  %1102 = phi float [ %1097, %1068 ], [ 0.000000e+00, %1048 ]
  %1103 = phi float [ %1096, %1068 ], [ 0.000000e+00, %1048 ]
  %1104 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1100, float %1101, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %1105 = fmul fast float %1104, %1104
  %1106 = fmul fast float %1105, 0x3FEE471020000000
  %1107 = fadd fast float %1106, 0xBFD42F6020000000
  %1108 = fmul fast float %1063, 0x3FD20DD760000000
  %1109 = fmul fast float %1107, %1103
  %1110 = fmul fast float %1102, %1104
  %1111 = fadd fast float %1110, %1108
  %1112 = fadd fast float %1111, %1109
  %1113 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %985)  ; FMax(a,b)
  %1114 = call float @dx.op.dot3.f32(i32 55, float %1006, float %1009, float %1012, float %1006, float %1009, float %1012)  ; Dot3(ax,ay,az,bx,by,bz)
  %1115 = fcmp fast oeq float %1114, 0.000000e+00
  %1116 = fcmp fast oeq float %1113, 0.000000e+00
  %1117 = or i1 %1116, %1115
  br i1 %1117, label %1148, label %1118

; <label>:1118                                    ; preds = %1098
  %1119 = fsub fast float -0.000000e+00, %1012
  %1120 = fsub fast float -0.000000e+00, %1006
  %1121 = call float @dx.op.unary.f32(i32 24, float %1114)  ; Sqrt(value)
  %1122 = fdiv fast float %1121, %1113
  %1123 = fcmp fast ogt float %1122, 0x3FFB6F8900000000
  %1124 = select i1 %1123, float 0x3FFB6F8900000000, float %1122
  %1125 = fmul fast float %1124, 0x3FE8A23460000000
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1127 = call float @dx.op.binary.f32(i32 35, float %1124, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1128 = fmul fast float %1126, %1113
  %1129 = fmul fast float %1127, 0x3FF279A740000000
  %1130 = fadd fast float %1129, -1.000000e+00
  %1131 = call float @dx.op.dot3.f32(i32 55, float %1119, float %1120, float %1009, float %1119, float %1120, float %1009)  ; Dot3(ax,ay,az,bx,by,bz)
  %1132 = call float @dx.op.unary.f32(i32 25, float %1131)  ; Rsqrt(value)
  %1133 = fmul fast float %1132, %1119
  %1134 = fmul fast float %1132, %1120
  %1135 = fmul fast float %1132, %1009
  %1136 = fmul fast float %1130, %1130
  %1137 = fsub fast float 1.000000e+00, %1136
  %1138 = fmul fast float %1127, 0x40005F8BE0000000
  %1139 = fsub fast float 0x400C5BF8A0000000, %1138
  %1140 = fdiv fast float %1128, %1139
  %1141 = fmul fast float %1140, 0x3FEE31C3C0000000
  %1142 = fmul fast float %1141, %1137
  %1143 = fmul fast float %1127, 0x3FDACB7480000000
  %1144 = fadd fast float %1143, 0xBFD7347680000000
  %1145 = fmul fast float %1144, %1140
  %1146 = fmul fast float %1145, %1137
  %1147 = fmul float %1142, 0x3FDF454380000000
  br label %1148

; <label>:1148                                    ; preds = %1118, %1098
  %1149 = phi float [ %1133, %1118 ], [ 0.000000e+00, %1098 ]
  %1150 = phi float [ %1134, %1118 ], [ 0.000000e+00, %1098 ]
  %1151 = phi float [ %1135, %1118 ], [ 0.000000e+00, %1098 ]
  %1152 = phi float [ %1147, %1118 ], [ 0.000000e+00, %1098 ]
  %1153 = phi float [ %1146, %1118 ], [ 0.000000e+00, %1098 ]
  %1154 = call float @dx.op.dot3.f32(i32 55, float %1149, float %1150, float %1151, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %1155 = fmul fast float %1154, %1154
  %1156 = fmul fast float %1155, 0x3FEE471020000000
  %1157 = fadd fast float %1156, 0xBFD42F6020000000
  %1158 = fmul fast float %1113, 0x3FD20DD760000000
  %1159 = fmul fast float %1157, %1153
  %1160 = fmul fast float %1152, %1154
  %1161 = fadd fast float %1160, %1158
  %1162 = fadd fast float %1161, %1159
  %1163 = call float @dx.op.binary.f32(i32 35, float %1062, float 0.000000e+00)  ; FMax(a,b)
  %1164 = call float @dx.op.binary.f32(i32 35, float %1112, float 0.000000e+00)  ; FMax(a,b)
  %1165 = call float @dx.op.binary.f32(i32 35, float %1162, float 0.000000e+00)  ; FMax(a,b)
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 0
  %1168 = call float @dx.op.binary.f32(i32 36, float %286, float %1167)  ; FMin(a,b)
  %1169 = fsub fast float 1.000000e+00, %380
  %1170 = fmul fast float %1168, %1169
  %1171 = fsub fast float 1.000000e+00, %1170
  %1172 = bitcast float %1171 to i32
  %1173 = sub nsw i32 2129859010, %1172
  %1174 = bitcast i32 %1173 to float
  %1175 = call float @dx.op.binary.f32(i32 36, float %287, float %1167)  ; FMin(a,b)
  %1176 = fmul fast float %1175, %1169
  %1177 = fsub fast float 1.000000e+00, %1176
  %1178 = bitcast float %1177 to i32
  %1179 = sub nsw i32 2129859010, %1178
  %1180 = bitcast i32 %1179 to float
  %1181 = call float @dx.op.binary.f32(i32 36, float %288, float %1167)  ; FMin(a,b)
  %1182 = fmul fast float %1181, %1169
  %1183 = fsub fast float 1.000000e+00, %1182
  %1184 = bitcast float %1183 to i32
  %1185 = sub nsw i32 2129859010, %1184
  %1186 = bitcast i32 %1185 to float
  %1187 = fmul fast float %1163, %380
  %1188 = fmul fast float %1187, %1174
  %1189 = fmul fast float %1164, %380
  %1190 = fmul fast float %1189, %1180
  %1191 = fmul fast float %1165, %380
  %1192 = fmul fast float %1191, %1186
  %1193 = call float @dx.op.dot3.f32(i32 55, float %1188, float %1190, float %1192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1194 = select i1 %373, float 0.000000e+00, float %1188
  %1195 = select i1 %373, float %1193, float %1190
  %1196 = select i1 %373, float 0.000000e+00, float %1192
  %1197 = fsub fast float 1.000000e+00, %295
  %1198 = fsub fast float 1.000000e+00, %296
  %1199 = fsub fast float 1.000000e+00, %377
  %1200 = fmul fast float %329, %1197
  %1201 = fmul fast float %329, %1198
  %1202 = fmul fast float %1199, %329
  %1203 = fadd fast float %1200, %295
  %1204 = fadd fast float %1201, %296
  %1205 = fadd fast float %1202, %377
  %1206 = call float @dx.op.binary.f32(i32 35, float %1204, float %1205)  ; FMax(a,b)
  %1207 = call float @dx.op.binary.f32(i32 35, float %1203, float %1206)  ; FMax(a,b)
  %1208 = fsub fast float 1.000000e+00, %1207
  %1209 = fmul fast float %1194, %1208
  %1210 = fmul fast float %1195, %1208
  %1211 = fmul fast float %1196, %1208
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1214 = fcmp fast oeq float %1213, 0.000000e+00
  br i1 %1214, label %1363, label %1215

; <label>:1215                                    ; preds = %1148
  %1216 = extractvalue %dx.types.CBufRet.f32 %1212, 0
  %1217 = extractvalue %dx.types.CBufRet.f32 %1212, 1
  %1218 = extractvalue %dx.types.CBufRet.f32 %1212, 2
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1226 = call float @dx.op.dot3.f32(i32 55, float %1220, float %1221, float %1222, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1227 = select i1 %373, float %1224, float %1220
  %1228 = select i1 %373, float %1226, float %1221
  %1229 = select i1 %373, float %1225, float %1222
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 1
  %1232 = fcmp fast une float %1231, 0.000000e+00
  br i1 %1232, label %1233, label %1250

; <label>:1233                                    ; preds = %1215
  %1234 = fptoui float %34 to i32
  %1235 = fptoui float %35 to i32
  %1236 = lshr i32 %1234, 4
  %1237 = lshr i32 %1235, 4
  %1238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.f32 %1238, 0
  %1240 = fptoui float %1239 to i32
  %1241 = add i32 %1240, 15
  %1242 = lshr i32 %1241, 4
  %1243 = mul i32 %1242, %1237
  %1244 = add i32 %1243, %1236
  %1245 = shl i32 %1244, 3
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = and i32 %1247, -268435456
  %1249 = icmp eq i32 %1248, -1342177280
  br i1 %1249, label %1260, label %1250

; <label>:1250                                    ; preds = %1233, %1215
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 3
  %1254 = fmul fast float %1252, %34
  %1255 = fmul fast float %1253, %35
  %1256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %21, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  br label %1260

; <label>:1260                                    ; preds = %1250, %1233
  %1261 = phi float [ %1257, %1250 ], [ 0.000000e+00, %1233 ]
  %1262 = phi float [ %1258, %1250 ], [ 0.000000e+00, %1233 ]
  %1263 = phi float [ %1259, %1250 ], [ 0.000000e+00, %1233 ]
  %1264 = call float @dx.op.binary.f32(i32 36, float %1262, float %1263)  ; FMin(a,b)
  %1265 = call float @dx.op.binary.f32(i32 36, float %1261, float %1264)  ; FMin(a,b)
  %1266 = fcmp fast ogt float %1265, 0.000000e+00
  br i1 %1266, label %1267, label %1363, !dx.controlflow.hints !53

; <label>:1267                                    ; preds = %1260
  %1268 = fmul fast float %1261, %1227
  %1269 = fmul fast float %1262, %1228
  %1270 = fmul fast float %1263, %1229
  %1271 = fsub fast float %1216, %302
  %1272 = fsub fast float %1217, %303
  %1273 = fsub fast float %1218, %304
  %1274 = call float @dx.op.dot3.f32(i32 55, float %1271, float %1272, float %1273, float %1271, float %1272, float %1273)  ; Dot3(ax,ay,az,bx,by,bz)
  %1275 = call float @dx.op.unary.f32(i32 25, float %1274)  ; Rsqrt(value)
  %1276 = fmul fast float %1275, %1271
  %1277 = fmul fast float %1275, %1272
  %1278 = fmul fast float %1275, %1273
  %1279 = call float @dx.op.dot3.f32(i32 55, float %1216, float %1217, float %1218, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %1280 = call float @dx.op.dot3.f32(i32 55, float %374, float %375, float %376, float %1276, float %1277, float %1278)  ; Dot3(ax,ay,az,bx,by,bz)
  %1281 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1282 = fmul fast float %1281, %1281
  %1283 = fmul fast float %1282, %384
  %1284 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1285 = fmul fast float %1284, %1281
  %1286 = call float @dx.op.dot3.f32(i32 55, float %274, float %275, float %276, float %1276, float %1277, float %1278)  ; Dot3(ax,ay,az,bx,by,bz)
  %1287 = fmul fast float %1286, %1286
  %1288 = call float @dx.op.unary.f32(i32 6, float %1279)  ; FAbs(value)
  %1289 = fsub fast float 1.000000e+00, %333
  %1290 = call float @dx.op.binary.f32(i32 35, float %1289, float 0x3F847AE140000000)  ; FMax(a,b)
  %1291 = fmul fast float %1290, %1290
  %1292 = fmul fast float %1291, %1291
  %1293 = fsub fast float 1.000000e+00, %1292
  %1294 = fmul fast float %379, %379
  %1295 = fmul fast float %1294, %1293
  %1296 = fadd fast float %1295, %1292
  %1297 = bitcast float %1296 to i32
  %1298 = ashr i32 %1297, 1
  %1299 = add nsw i32 %1298, 532487669
  %1300 = bitcast i32 %1299 to float
  %1301 = fadd fast float %1300, %379
  %1302 = fmul fast float %1292, %1287
  %1303 = fsub fast float 1.000000e+00, %1287
  %1304 = fadd fast float %1303, %1302
  %1305 = fmul fast float %1288, %1288
  %1306 = fmul fast float %1305, %1293
  %1307 = fadd fast float %1306, %1292
  %1308 = bitcast float %1307 to i32
  %1309 = ashr i32 %1308, 1
  %1310 = add nsw i32 %1309, 532487669
  %1311 = bitcast i32 %1310 to float
  %1312 = fadd fast float %1311, %1288
  %1313 = fmul fast float %1304, %1304
  %1314 = fmul fast float %1313, %1301
  %1315 = fmul fast float %1314, %1312
  %1316 = fdiv fast float 0x3FF0A00000000000, %1315
  %1317 = fmul fast float %1316, %1292
  %1318 = call float @dx.op.unary.f32(i32 6, float %1280)  ; FAbs(value)
  %1319 = fsub fast float 1.000000e+00, %1318
  %1320 = bitcast float %1319 to i32
  %1321 = sitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 5.000000e+00
  %1323 = fadd fast float %1322, 0xC1EFBF8940000000
  %1324 = fptosi float %1323 to i32
  %1325 = bitcast i32 %1324 to float
  %1326 = fmul fast float %1325, %1197
  %1327 = fmul fast float %1325, %1198
  %1328 = fmul fast float %1325, %1199
  %1329 = fadd fast float %1326, %295
  %1330 = fadd fast float %1327, %296
  %1331 = fadd fast float %1328, %377
  %1332 = fmul fast float %1279, 9.843750e-01
  %1333 = fmul fast float %333, 9.843750e-01
  %1334 = fadd fast float %1332, 7.812500e-03
  %1335 = fadd fast float %1333, 7.812500e-03
  %1336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %1334, float %1335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 2
  %1338 = extractvalue %dx.types.ResRet.f32 %1336, 3
  %1339 = fmul fast float %1337, %295
  %1340 = fmul fast float %1337, %296
  %1341 = fmul fast float %1337, %377
  %1342 = fadd fast float %1339, %1338
  %1343 = fadd fast float %1340, %1338
  %1344 = fadd fast float %1341, %1338
  %1345 = call float @dx.op.binary.f32(i32 35, float %1343, float %1344)  ; FMax(a,b)
  %1346 = call float @dx.op.binary.f32(i32 35, float %1342, float %1345)  ; FMax(a,b)
  %1347 = fsub fast float 1.000000e+00, %1346
  %1348 = fmul fast float %1285, %1268
  %1349 = fmul fast float %1348, %1347
  %1350 = fmul fast float %1285, %1269
  %1351 = fmul fast float %1350, %1347
  %1352 = fmul fast float %1285, %1270
  %1353 = fmul fast float %1352, %1347
  %1354 = fadd fast float %1349, %1209
  %1355 = fadd fast float %1351, %1210
  %1356 = fadd fast float %1353, %1211
  %1357 = fmul fast float %1348, %1317
  %1358 = fmul fast float %1357, %1329
  %1359 = fmul fast float %1350, %1317
  %1360 = fmul fast float %1359, %1330
  %1361 = fmul fast float %1352, %1317
  %1362 = fmul fast float %1361, %1331
  br label %1363

; <label>:1363                                    ; preds = %1267, %1260, %1148
  %1364 = phi float [ %1261, %1267 ], [ 0.000000e+00, %1148 ], [ 0.000000e+00, %1260 ]
  %1365 = phi float [ %1358, %1267 ], [ 0.000000e+00, %1148 ], [ 0.000000e+00, %1260 ]
  %1366 = phi float [ %1360, %1267 ], [ 0.000000e+00, %1148 ], [ 0.000000e+00, %1260 ]
  %1367 = phi float [ %1362, %1267 ], [ 0.000000e+00, %1148 ], [ 0.000000e+00, %1260 ]
  %1368 = phi float [ %1354, %1267 ], [ %1209, %1148 ], [ %1209, %1260 ]
  %1369 = phi float [ %1355, %1267 ], [ %1210, %1148 ], [ %1210, %1260 ]
  %1370 = phi float [ %1356, %1267 ], [ %1211, %1148 ], [ %1211, %1260 ]
  %1371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.i32 %1371, 0
  %1373 = icmp eq i32 %1372, 0
  br i1 %1373, label %1856, label %1374

; <label>:1374                                    ; preds = %1363
  %1375 = fptoui float %34 to i32
  %1376 = fptoui float %35 to i32
  %1377 = lshr i32 %1375, 4
  %1378 = lshr i32 %1376, 4
  %1379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.i32 %1379, 0
  %1381 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1378, i32 %1380, i32 %1377)  ; UMad(a,b,c)
  %1382 = add nsw i32 %1372, -1
  %1383 = call i32 @dx.op.binary.i32(i32 37, i32 %1382, i32 0)  ; IMax(a,b)
  %1384 = call float @dx.op.binary.f32(i32 35, float %31, float 0.000000e+00)  ; FMax(a,b)
  %1385 = fptoui float %1384 to i32
  %1386 = lshr i32 %1385, 5
  %1387 = call i32 @dx.op.binary.i32(i32 40, i32 %1386, i32 8191)  ; UMin(a,b)
  %1388 = shl i32 %1387, 2
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = lshr i32 %1390, 16
  %1392 = and i32 %1390, 65535
  %1393 = lshr i32 %1390, 21
  %1394 = lshr i32 %1392, 5
  %1395 = call i32 @dx.op.binary.i32(i32 40, i32 %1394, i32 %1383)  ; UMin(a,b)
  %1396 = icmp ugt i32 %1393, %1395
  br i1 %1396, label %1856, label %1397

; <label>:1397                                    ; preds = %1374
  br label %1398

; <label>:1398                                    ; preds = %1846, %1397
  %1399 = phi i32 [ %1853, %1846 ], [ %1393, %1397 ]
  %1400 = phi float [ %1847, %1846 ], [ %1365, %1397 ]
  %1401 = phi float [ %1848, %1846 ], [ %1366, %1397 ]
  %1402 = phi float [ %1849, %1846 ], [ %1367, %1397 ]
  %1403 = phi float [ %1850, %1846 ], [ %1368, %1397 ]
  %1404 = phi float [ %1851, %1846 ], [ %1369, %1397 ]
  %1405 = phi float [ %1852, %1846 ], [ %1370, %1397 ]
  %1406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.i32 %1406, 0
  %1408 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1381, i32 %1407, i32 %1399)  ; UMad(a,b,c)
  %1409 = shl i32 %1408, 2
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = shl i32 %1399, 5
  %1413 = sub nsw i32 %1391, %1412
  %1414 = call i32 @dx.op.binary.i32(i32 37, i32 %1413, i32 0)  ; IMax(a,b)
  %1415 = call i32 @dx.op.binary.i32(i32 38, i32 %1414, i32 31)  ; IMin(a,b)
  %1416 = sub nsw i32 1, %1391
  %1417 = add nsw i32 %1416, %1392
  %1418 = call i32 @dx.op.binary.i32(i32 37, i32 %1417, i32 0)  ; IMax(a,b)
  %1419 = call i32 @dx.op.binary.i32(i32 38, i32 %1418, i32 32)  ; IMin(a,b)
  %1420 = and i32 %1419, 31
  %1421 = shl i32 -1, %1420
  %1422 = xor i32 %1421, -1
  %1423 = and i32 %1415, 31
  %1424 = shl i32 %1422, %1423
  %1425 = icmp eq i32 %1419, 32
  %1426 = select i1 %1425, i32 -1, i32 %1424
  %1427 = and i32 %1426, %1411
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1846, label %1429

; <label>:1429                                    ; preds = %1398
  br label %1430

; <label>:1430                                    ; preds = %1564, %1429
  %1431 = phi i32 [ %1442, %1564 ], [ %1427, %1429 ]
  %1432 = phi float [ %1565, %1564 ], [ %1400, %1429 ]
  %1433 = phi float [ %1566, %1564 ], [ %1401, %1429 ]
  %1434 = phi float [ %1567, %1564 ], [ %1402, %1429 ]
  %1435 = phi float [ %1568, %1564 ], [ %1403, %1429 ]
  %1436 = phi float [ %1569, %1564 ], [ %1404, %1429 ]
  %1437 = phi float [ %1570, %1564 ], [ %1405, %1429 ]
  %1438 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1431)  ; FirstbitLo(value)
  %1439 = add i32 %1438, %1412
  %1440 = and i32 %1438, 31
  %1441 = shl i32 1, %1440
  %1442 = xor i32 %1441, %1431
  %1443 = mul i32 %1439, 112
  %1444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.ResRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.ResRet.f32 %1444, 2
  %1448 = or i32 %1443, 12
  %1449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.f32 %1449, 0
  %1451 = add i32 %1443, 16
  %1452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.ResRet.f32 %1452, 1
  %1455 = extractvalue %dx.types.ResRet.f32 %1452, 2
  %1456 = add i32 %1443, 28
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = add i32 %1443, 44
  %1460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = add i32 %1443, 48
  %1463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.ResRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.ResRet.f32 %1463, 2
  %1467 = extractvalue %dx.types.ResRet.f32 %1463, 3
  %1468 = add i32 %1443, 64
  %1469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.ResRet.f32 %1469, 3
  %1474 = add i32 %1443, 80
  %1475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 1
  %1477 = extractvalue %dx.types.ResRet.f32 %1475, 2
  %1478 = add i32 %1443, 92
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = call float @dx.op.dot3.f32(i32 55, float %1445, float %1446, float %1447, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1482 = select i1 %373, float %1476, float %1445
  %1483 = select i1 %373, float %1481, float %1446
  %1484 = select i1 %373, float %1477, float %1447
  %1485 = and i32 %1480, 65535
  %1486 = uitofp i32 %1485 to float
  %1487 = lshr i32 %1480, 16
  %1488 = uitofp i32 %1487 to float
  %1489 = and i32 %1458, 65535
  %1490 = and i32 %1458, 50331648
  %1491 = icmp eq i32 %1490, 33554432
  %1492 = fsub fast float %1464, %74
  %1493 = fsub fast float %1465, %75
  %1494 = fsub fast float %1466, %76
  %1495 = call float @dx.op.dot3.f32(i32 55, float %1492, float %1493, float %1494, float %1492, float %1493, float %1494)  ; Dot3(ax,ay,az,bx,by,bz)
  %1496 = call float @dx.op.unary.f32(i32 24, float %1495)  ; Sqrt(value)
  %1497 = fdiv fast float 1.000000e+00, %1496
  %1498 = fmul fast float %1497, %1492
  %1499 = fmul fast float %1497, %1493
  %1500 = fmul fast float %1497, %1494
  %1501 = fadd fast float %1496, %1450
  %1502 = fdiv fast float 1.000000e+00, %1501
  %1503 = fmul float %1461, %1502
  %1504 = fmul float %1503, %1503
  %1505 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  br i1 %1491, label %1506, label %1527

; <label>:1506                                    ; preds = %1430
  %1507 = fmul fast float %1472, %1453
  %1508 = fmul fast float %1472, %1454
  %1509 = fmul fast float %1472, %1455
  %1510 = fadd fast float %1492, %1507
  %1511 = fadd fast float %1493, %1508
  %1512 = fadd fast float %1494, %1509
  %1513 = call float @dx.op.dot3.f32(i32 55, float %1510, float %1511, float %1512, float %1510, float %1511, float %1512)  ; Dot3(ax,ay,az,bx,by,bz)
  %1514 = call float @dx.op.unary.f32(i32 25, float %1513)  ; Rsqrt(value)
  %1515 = fmul fast float %1514, %1510
  %1516 = fmul fast float %1514, %1511
  %1517 = fmul fast float %1514, %1512
  %1518 = fsub fast float %74, %1464
  %1519 = fsub fast float %75, %1465
  %1520 = fsub fast float %76, %1466
  %1521 = fsub fast float -0.000000e+00, %1518
  %1522 = fsub fast float -0.000000e+00, %1519
  %1523 = fsub fast float -0.000000e+00, %1520
  %1524 = call float @dx.op.dot3.f32(i32 55, float %1521, float %1522, float %1523, float %1453, float %1454, float %1455)  ; Dot3(ax,ay,az,bx,by,bz)
  %1525 = fcmp fast ogt float %1524, 0.000000e+00
  %1526 = uitofp i1 %1525 to float
  br label %1527

; <label>:1527                                    ; preds = %1506, %1430
  %1528 = phi float [ %1526, %1506 ], [ 1.000000e+00, %1430 ]
  %1529 = phi float [ %1515, %1506 ], [ %1498, %1430 ]
  %1530 = phi float [ %1516, %1506 ], [ %1499, %1430 ]
  %1531 = phi float [ %1517, %1506 ], [ %1500, %1430 ]
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1453, float %1454, float %1455, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = fmul fast float %1532, %1532
  %1534 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1535 = fsub fast float 1.000000e+00, %1534
  %1536 = fmul fast float %1535, 5.000000e-01
  %1537 = fcmp fast ogt float %1532, 0.000000e+00
  %1538 = fsub fast float 1.000000e+00, %1536
  %1539 = select i1 %1537, float %1536, float %1538
  %1540 = fmul fast float %1539, %1488
  %1541 = fadd fast float %1540, %1486
  %1542 = fmul fast float %1541, 0x3EF0001000000000
  %1543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %20, float %1542, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1544 = extractvalue %dx.types.ResRet.f32 %1543, 0
  %1545 = fmul fast float %1532, %1470
  %1546 = fadd fast float %1545, %1471
  %1547 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1548 = select i1 %1491, float 1.000000e+00, float %1547
  %1549 = select i1 %1491, float %1547, float 1.000000e+00
  %1550 = fmul fast float %1496, %1467
  %1551 = fsub fast float 1.000000e+00, %1550
  %1552 = fmul fast float %1551, %1473
  %1553 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1554 = fmul fast float %1553, %1549
  %1555 = fmul fast float %1554, 2.000000e+00
  %1556 = fsub fast float 3.000000e+00, %1555
  %1557 = fmul fast float %1544, %1528
  %1558 = fmul fast float %1554, %1554
  %1559 = fmul fast float %1558, %1557
  %1560 = fmul fast float %1559, %1556
  %1561 = call float @dx.op.binary.f32(i32 36, float %1560, float %1560)  ; FMin(a,b)
  %1562 = call float @dx.op.binary.f32(i32 36, float %1560, float %1561)  ; FMin(a,b)
  %1563 = fcmp fast ogt float %1562, 0.000000e+00
  br i1 %1563, label %1572, label %1564, !dx.controlflow.hints !54

; <label>:1564                                    ; preds = %1716, %1711, %1527
  %1565 = phi float [ %1432, %1711 ], [ %1432, %1527 ], [ %1842, %1716 ]
  %1566 = phi float [ %1433, %1711 ], [ %1433, %1527 ], [ %1843, %1716 ]
  %1567 = phi float [ %1434, %1711 ], [ %1434, %1527 ], [ %1844, %1716 ]
  %1568 = phi float [ %1435, %1711 ], [ %1435, %1527 ], [ %1833, %1716 ]
  %1569 = phi float [ %1436, %1711 ], [ %1436, %1527 ], [ %1834, %1716 ]
  %1570 = phi float [ %1437, %1711 ], [ %1437, %1527 ], [ %1835, %1716 ]
  %1571 = icmp eq i32 %1431, %1441
  br i1 %1571, label %1845, label %1430

; <label>:1572                                    ; preds = %1527
  %1573 = icmp eq i32 %1489, 255
  br i1 %1573, label %1711, label %1574, !dx.controlflow.hints !55

; <label>:1574                                    ; preds = %1572
  %1575 = mul nuw nsw i32 %1489, 176
  %1576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.f32 %1576, 0
  %1578 = extractvalue %dx.types.ResRet.f32 %1576, 1
  %1579 = extractvalue %dx.types.ResRet.f32 %1576, 2
  %1580 = extractvalue %dx.types.ResRet.f32 %1576, 3
  %1581 = add nuw nsw i32 %1575, 16
  %1582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1581, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.ResRet.f32 %1582, 1
  %1585 = add nuw nsw i32 %1575, 32
  %1586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.f32 %1586, 0
  %1588 = extractvalue %dx.types.ResRet.f32 %1586, 1
  %1589 = add nuw nsw i32 %1575, 48
  %1590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.ResRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.ResRet.f32 %1590, 2
  %1594 = extractvalue %dx.types.ResRet.f32 %1590, 3
  %1595 = add nuw nsw i32 %1575, 64
  %1596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.ResRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.ResRet.f32 %1596, 2
  %1600 = extractvalue %dx.types.ResRet.f32 %1596, 3
  %1601 = add nuw nsw i32 %1575, 80
  %1602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.ResRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.ResRet.f32 %1602, 2
  %1606 = extractvalue %dx.types.ResRet.f32 %1602, 3
  %1607 = add nuw nsw i32 %1575, 96
  %1608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.f32 %1608, 0
  %1610 = extractvalue %dx.types.ResRet.f32 %1608, 1
  %1611 = extractvalue %dx.types.ResRet.f32 %1608, 2
  %1612 = extractvalue %dx.types.ResRet.f32 %1608, 3
  %1613 = bitcast float %1584 to i32
  %1614 = fmul fast float %1591, %74
  %1615 = call float @dx.op.tertiary.f32(i32 46, float %75, float %1597, float %1614)  ; FMad(a,b,c)
  %1616 = call float @dx.op.tertiary.f32(i32 46, float %76, float %1603, float %1615)  ; FMad(a,b,c)
  %1617 = fadd fast float %1616, %1609
  %1618 = fmul fast float %1592, %74
  %1619 = call float @dx.op.tertiary.f32(i32 46, float %75, float %1598, float %1618)  ; FMad(a,b,c)
  %1620 = call float @dx.op.tertiary.f32(i32 46, float %76, float %1604, float %1619)  ; FMad(a,b,c)
  %1621 = fadd fast float %1620, %1610
  %1622 = fmul fast float %1593, %74
  %1623 = call float @dx.op.tertiary.f32(i32 46, float %75, float %1599, float %1622)  ; FMad(a,b,c)
  %1624 = call float @dx.op.tertiary.f32(i32 46, float %76, float %1605, float %1623)  ; FMad(a,b,c)
  %1625 = fadd fast float %1624, %1611
  %1626 = fmul fast float %1594, %74
  %1627 = call float @dx.op.tertiary.f32(i32 46, float %75, float %1600, float %1626)  ; FMad(a,b,c)
  %1628 = call float @dx.op.tertiary.f32(i32 46, float %76, float %1606, float %1627)  ; FMad(a,b,c)
  %1629 = fadd fast float %1628, %1612
  %1630 = fdiv fast float %1617, %1629
  %1631 = fdiv fast float %1621, %1629
  %1632 = fdiv fast float %1625, %1629
  %1633 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1632)  ; FMax(a,b)
  %1634 = fmul fast float %217, 0x401921FB60000000
  %1635 = call float @dx.op.unary.f32(i32 13, float %1634)  ; Sin(value)
  %1636 = call float @dx.op.unary.f32(i32 12, float %1634)  ; Cos(value)
  %1637 = fmul fast float %1636, %1588
  %1638 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1588, float 0.000000e+00)  ; FMad(a,b,c)
  %1639 = fmul fast float %1588, %1635
  %1640 = fsub fast float -0.000000e+00, %1639
  %1641 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1588, float 0.000000e+00)  ; FMad(a,b,c)
  br label %1642

; <label>:1642                                    ; preds = %1642, %1574
  %1643 = phi float [ 0.000000e+00, %1574 ], [ %1675, %1642 ]
  %1644 = phi float [ 0.000000e+00, %1574 ], [ %1677, %1642 ]
  %1645 = phi i32 [ 0, %1574 ], [ %1678, %1642 ]
  %1646 = mul i32 %1645, 2
  %1647 = add i32 0, %1646
  %1648 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1647
  %1649 = load float, float* %1648, align 4
  %1650 = mul i32 %1645, 2
  %1651 = add i32 1, %1650
  %1652 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1651
  %1653 = load float, float* %1652, align 4
  %1654 = fmul fast float %1637, %1649
  %1655 = call float @dx.op.tertiary.f32(i32 46, float %1653, float %1640, float %1654)  ; FMad(a,b,c)
  %1656 = fmul fast float %1649, %1638
  %1657 = call float @dx.op.tertiary.f32(i32 46, float %1653, float %1641, float %1656)  ; FMad(a,b,c)
  %1658 = fadd fast float %1655, %1630
  %1659 = fadd fast float %1657, %1631
  %1660 = fmul fast float %1658, %1583
  %1661 = fmul fast float %1659, %1583
  %1662 = call float @dx.op.binary.f32(i32 35, float %1660, float %1579)  ; FMax(a,b)
  %1663 = call float @dx.op.binary.f32(i32 35, float %1661, float %1579)  ; FMax(a,b)
  %1664 = call float @dx.op.binary.f32(i32 36, float %1662, float %1580)  ; FMin(a,b)
  %1665 = call float @dx.op.binary.f32(i32 36, float %1663, float %1580)  ; FMin(a,b)
  %1666 = fadd fast float %1664, %1577
  %1667 = fadd fast float %1665, %1578
  %1668 = uitofp i32 %1613 to float
  %1669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %21, float %1666, float %1667, float %1668, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1670 = extractvalue %dx.types.ResRet.f32 %1669, 0
  %1671 = fsub fast float %1670, %1633
  %1672 = fsub fast float %1671, %1587
  %1673 = fcmp fast ogt float %1672, 0.000000e+00
  %1674 = select i1 %1673, float 1.000000e+00, float 0.000000e+00
  %1675 = fadd fast float %1674, %1643
  %1676 = select i1 %1673, float %1672, float 0.000000e+00
  %1677 = fadd fast float %1676, %1644
  %1678 = add nuw nsw i32 %1645, 1
  %1679 = icmp eq i32 %1678, 8
  br i1 %1679, label %1680, label %1642

; <label>:1680                                    ; preds = %1642
  %1681 = fdiv fast float 1.000000e+00, %1675
  %1682 = fmul fast float %1681, %1677
  %1683 = fdiv fast float 1.000000e+00, %1633
  %1684 = fmul fast float %1682, %1683
  %1685 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1686 = call float @dx.op.binary.f32(i32 35, float %1685, float 0.000000e+00)  ; FMax(a,b)
  %1687 = fmul fast float %1675, 1.250000e-01
  %1688 = call float @dx.op.unary.f32(i32 7, float %1687)  ; Saturate(value)
  %1689 = fmul fast float %1688, 2.000000e+00
  %1690 = fadd fast float %1689, -1.000000e+00
  %1691 = fcmp fast ogt float %1690, 0.000000e+00
  %1692 = fcmp fast olt float %1690, 0.000000e+00
  %1693 = zext i1 %1691 to i32
  %1694 = zext i1 %1692 to i32
  %1695 = sub nsw i32 %1693, %1694
  %1696 = sitofp i32 %1695 to float
  %1697 = fmul fast float %1696, %1690
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = fmul fast float %1698, %1698
  %1700 = fmul fast float %1699, %1698
  %1701 = fsub fast float %1698, %1700
  %1702 = fmul fast float %1701, %1686
  %1703 = fsub fast float 1.000000e+00, %1700
  %1704 = fsub fast float %1703, %1702
  %1705 = fmul fast float %1696, 5.000000e-01
  %1706 = fmul fast float %1705, %1704
  %1707 = fsub fast float -5.000000e-01, %1706
  %1708 = fmul fast float %1707, %1548
  %1709 = fadd fast float %1708, 1.000000e+00
  %1710 = fmul fast float %1709, %1560
  br label %1711

; <label>:1711                                    ; preds = %1680, %1572
  %1712 = phi float [ %1710, %1680 ], [ %1560, %1572 ]
  %1713 = call float @dx.op.binary.f32(i32 36, float %1712, float %1712)  ; FMin(a,b)
  %1714 = call float @dx.op.binary.f32(i32 36, float %1712, float %1713)  ; FMin(a,b)
  %1715 = fcmp fast ogt float %1714, 0.000000e+00
  br i1 %1715, label %1716, label %1564, !dx.controlflow.hints !56

; <label>:1716                                    ; preds = %1711
  %1717 = fmul fast float %1712, %1482
  %1718 = fmul fast float %1712, %1483
  %1719 = fmul fast float %1712, %1484
  %1720 = fsub fast float %1498, %302
  %1721 = fsub fast float %1499, %303
  %1722 = fsub fast float %1500, %304
  %1723 = call float @dx.op.dot3.f32(i32 55, float %1720, float %1721, float %1722, float %1720, float %1721, float %1722)  ; Dot3(ax,ay,az,bx,by,bz)
  %1724 = call float @dx.op.unary.f32(i32 25, float %1723)  ; Rsqrt(value)
  %1725 = fmul fast float %1724, %1720
  %1726 = fmul fast float %1724, %1721
  %1727 = fmul fast float %1724, %1722
  %1728 = call float @dx.op.dot3.f32(i32 55, float %1498, float %1499, float %1500, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %1729 = call float @dx.op.dot3.f32(i32 55, float %374, float %375, float %376, float %1725, float %1726, float %1727)  ; Dot3(ax,ay,az,bx,by,bz)
  %1730 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1731 = fmul fast float %1730, %1505
  %1732 = fmul fast float %1730, %1730
  %1733 = fmul fast float %1732, %384
  %1734 = call float @dx.op.unary.f32(i32 7, float %1733)  ; Saturate(value)
  %1735 = fmul fast float %1731, %1734
  %1736 = bitcast float %1495 to i32
  %1737 = ashr i32 %1736, 1
  %1738 = sub nsw i32 1597463007, %1737
  %1739 = bitcast i32 %1738 to float
  %1740 = fmul fast float %1739, %1492
  %1741 = fmul fast float %1739, %1493
  %1742 = fmul fast float %1739, %1494
  %1743 = fsub fast float %1740, %302
  %1744 = fsub fast float %1741, %303
  %1745 = fsub fast float %1742, %304
  %1746 = call float @dx.op.dot3.f32(i32 55, float %1743, float %1744, float %1745, float %1743, float %1744, float %1745)  ; Dot3(ax,ay,az,bx,by,bz)
  %1747 = call float @dx.op.unary.f32(i32 25, float %1746)  ; Rsqrt(value)
  %1748 = fmul fast float %1743, %1747
  %1749 = fmul fast float %1744, %1747
  %1750 = fmul fast float %1745, %1747
  %1751 = call float @dx.op.dot3.f32(i32 55, float %274, float %275, float %276, float %1748, float %1749, float %1750)  ; Dot3(ax,ay,az,bx,by,bz)
  %1752 = fmul fast float %1751, %1751
  %1753 = call float @dx.op.unary.f32(i32 6, float %1728)  ; FAbs(value)
  %1754 = fsub fast float 1.000000e+00, %333
  %1755 = call float @dx.op.binary.f32(i32 35, float %1754, float 0x3F847AE140000000)  ; FMax(a,b)
  %1756 = fmul fast float %1755, %1755
  %1757 = fmul fast float %1756, %1756
  %1758 = fsub fast float 1.000000e+00, %1757
  %1759 = fmul fast float %379, %379
  %1760 = fmul fast float %1759, %1758
  %1761 = fadd fast float %1760, %1757
  %1762 = bitcast float %1761 to i32
  %1763 = ashr i32 %1762, 1
  %1764 = add nsw i32 %1763, 532487669
  %1765 = bitcast i32 %1764 to float
  %1766 = fadd fast float %1765, %379
  %1767 = fmul fast float %1757, %1752
  %1768 = fsub fast float 1.000000e+00, %1752
  %1769 = fadd fast float %1768, %1767
  %1770 = fmul fast float %1753, %1753
  %1771 = fmul fast float %1770, %1758
  %1772 = fadd fast float %1771, %1757
  %1773 = bitcast float %1772 to i32
  %1774 = ashr i32 %1773, 1
  %1775 = add nsw i32 %1774, 532487669
  %1776 = bitcast i32 %1775 to float
  %1777 = fadd fast float %1776, %1753
  %1778 = fmul fast float %1769, %1769
  %1779 = fmul fast float %1778, %1766
  %1780 = fmul fast float %1779, %1777
  %1781 = fdiv fast float 1.000000e+00, %1780
  %1782 = bitcast float %1757 to i32
  %1783 = sitofp i32 %1782 to float
  %1784 = fmul fast float %1783, 0x3FE7F73180000000
  %1785 = fadd fast float %1784, 0x41AFE27C40000000
  %1786 = fptosi float %1785 to i32
  %1787 = bitcast i32 %1786 to float
  %1788 = fmul fast float %1461, 0x3FD80E9D60000000
  %1789 = fmul fast float %1788, %1739
  %1790 = fadd fast float %1787, %1789
  %1791 = bitcast float %1790 to i32
  %1792 = sub nsw i32 2129859010, %1791
  %1793 = bitcast i32 %1792 to float
  %1794 = fmul fast float %1757, %1781
  %1795 = fmul fast float %1794, %1787
  %1796 = fmul fast float %1795, %1793
  %1797 = call float @dx.op.unary.f32(i32 6, float %1729)  ; FAbs(value)
  %1798 = fsub fast float 1.000000e+00, %1797
  %1799 = bitcast float %1798 to i32
  %1800 = sitofp i32 %1799 to float
  %1801 = fmul fast float %1800, 5.000000e+00
  %1802 = fadd fast float %1801, 0xC1EFBF8940000000
  %1803 = fptosi float %1802 to i32
  %1804 = bitcast i32 %1803 to float
  %1805 = fmul fast float %1804, %1197
  %1806 = fmul fast float %1804, %1198
  %1807 = fmul fast float %1804, %1199
  %1808 = fadd fast float %1805, %295
  %1809 = fadd fast float %1806, %296
  %1810 = fadd fast float %1807, %377
  %1811 = fmul fast float %1728, 9.843750e-01
  %1812 = fmul fast float %333, 9.843750e-01
  %1813 = fadd fast float %1811, 7.812500e-03
  %1814 = fadd fast float %1812, 7.812500e-03
  %1815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %1813, float %1814, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1816 = extractvalue %dx.types.ResRet.f32 %1815, 2
  %1817 = extractvalue %dx.types.ResRet.f32 %1815, 3
  %1818 = fmul fast float %1816, %295
  %1819 = fmul fast float %1816, %296
  %1820 = fmul fast float %1816, %377
  %1821 = fadd fast float %1818, %1817
  %1822 = fadd fast float %1819, %1817
  %1823 = fadd fast float %1820, %1817
  %1824 = call float @dx.op.binary.f32(i32 35, float %1822, float %1823)  ; FMax(a,b)
  %1825 = call float @dx.op.binary.f32(i32 35, float %1821, float %1824)  ; FMax(a,b)
  %1826 = fsub fast float 1.000000e+00, %1825
  %1827 = fmul fast float %1735, %1717
  %1828 = fmul fast float %1827, %1826
  %1829 = fmul fast float %1735, %1718
  %1830 = fmul fast float %1829, %1826
  %1831 = fmul fast float %1735, %1719
  %1832 = fmul fast float %1831, %1826
  %1833 = fadd fast float %1828, %1435
  %1834 = fadd fast float %1830, %1436
  %1835 = fadd fast float %1832, %1437
  %1836 = fmul fast float %1827, %1808
  %1837 = fmul fast float %1836, %1796
  %1838 = fmul fast float %1829, %1809
  %1839 = fmul fast float %1838, %1796
  %1840 = fmul fast float %1831, %1810
  %1841 = fmul fast float %1840, %1796
  %1842 = fadd fast float %1837, %1432
  %1843 = fadd fast float %1839, %1433
  %1844 = fadd fast float %1841, %1434
  br label %1564

; <label>:1845                                    ; preds = %1564
  br label %1846

; <label>:1846                                    ; preds = %1845, %1398
  %1847 = phi float [ %1400, %1398 ], [ %1565, %1845 ]
  %1848 = phi float [ %1401, %1398 ], [ %1566, %1845 ]
  %1849 = phi float [ %1402, %1398 ], [ %1567, %1845 ]
  %1850 = phi float [ %1403, %1398 ], [ %1568, %1845 ]
  %1851 = phi float [ %1404, %1398 ], [ %1569, %1845 ]
  %1852 = phi float [ %1405, %1398 ], [ %1570, %1845 ]
  %1853 = add i32 %1399, 1
  %1854 = icmp ugt i32 %1853, %1395
  br i1 %1854, label %1855, label %1398

; <label>:1855                                    ; preds = %1846
  br label %1856

; <label>:1856                                    ; preds = %1855, %1374, %1363
  %1857 = phi float [ %1365, %1363 ], [ %1365, %1374 ], [ %1847, %1855 ]
  %1858 = phi float [ %1366, %1363 ], [ %1366, %1374 ], [ %1848, %1855 ]
  %1859 = phi float [ %1367, %1363 ], [ %1367, %1374 ], [ %1849, %1855 ]
  %1860 = phi float [ %1368, %1363 ], [ %1368, %1374 ], [ %1850, %1855 ]
  %1861 = phi float [ %1369, %1363 ], [ %1369, %1374 ], [ %1851, %1855 ]
  %1862 = phi float [ %1370, %1363 ], [ %1370, %1374 ], [ %1852, %1855 ]
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 3
  %1865 = bitcast float %1864 to i32
  %1866 = mul i32 %1865, 928
  %1867 = add i32 %1866, 44
  %1868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.f32 %1868, 0
  %1870 = add i32 %1866, 48
  %1871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.ResRet.f32 %1871, 2
  %1875 = add i32 %1866, 60
  %1876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = fmul fast float %1872, 0x3F847AE140000000
  %1881 = fmul fast float %1873, 0x3F847AE140000000
  %1882 = fmul fast float %1874, 0x3F847AE140000000
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 0
  %1885 = extractvalue %dx.types.CBufRet.f32 %1883, 1
  %1886 = extractvalue %dx.types.CBufRet.f32 %1883, 2
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.CBufRet.f32 %1887, 1
  %1890 = call float @dx.op.dot3.f32(i32 55, float %1884, float %1885, float %1886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1891 = select i1 %373, float %1888, float %1884
  %1892 = select i1 %373, float %1890, float %1885
  %1893 = select i1 %373, float %1889, float %1886
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %1897 = extractvalue %dx.types.CBufRet.f32 %1894, 2
  %1898 = fadd fast float %1877, %1872
  %1899 = fmul fast float %1898, 0x3F847AE140000000
  %1900 = fadd fast float %1878, %1873
  %1901 = fmul fast float %1900, 0x3F847AE140000000
  %1902 = fadd fast float %1879, %1874
  %1903 = fmul fast float %1902, 0x3F847AE140000000
  %1904 = call float @dx.op.dot3.f32(i32 55, float %1895, float %1896, float %1897, float %302, float %303, float %304)  ; Dot3(ax,ay,az,bx,by,bz)
  %1905 = fcmp fast ogt float %1869, 0.000000e+00
  %1906 = select i1 %1905, float 1.000000e+00, float -1.000000e+00
  %1907 = fmul fast float %1906, 5.000000e-01
  %1908 = fmul fast float %1907, %1904
  %1909 = fmul fast float %1906, %1869
  %1910 = fadd fast float %1908, 4.921875e-01
  %1911 = fadd fast float %1909, -3.125000e-02
  %1912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %20, float %1910, float 0x3FB25F3060000000, float %1911, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 0
  %1914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.f32 %1914, 0
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  %1918 = fmul fast float %1917, %1915
  %1919 = extractvalue %dx.types.CBufRet.f32 %1916, 1
  %1920 = fadd fast float %1918, %1919
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 0
  %1923 = fmul fast float %1922, %1364
  %1924 = extractvalue %dx.types.CBufRet.f32 %1921, 1
  %1925 = fadd fast float %1923, %1924
  %1926 = call float @dx.op.unary.f32(i32 7, float %1925)  ; Saturate(value)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1914, 3
  %1928 = extractvalue %dx.types.CBufRet.f32 %1916, 2
  %1929 = fmul fast float %1928, %1927
  %1930 = extractvalue %dx.types.CBufRet.f32 %1916, 3
  %1931 = fadd fast float %1929, %1930
  %1932 = fmul fast float %1913, 0x400921FB60000000
  %1933 = fmul fast float %1932, %1920
  %1934 = fmul fast float %1933, %1926
  %1935 = call float @dx.op.binary.f32(i32 35, float %1899, float 0x3F10000000000000)  ; FMax(a,b)
  %1936 = call float @dx.op.binary.f32(i32 35, float %1901, float 0x3F10000000000000)  ; FMax(a,b)
  %1937 = call float @dx.op.binary.f32(i32 35, float %1903, float 0x3F10000000000000)  ; FMax(a,b)
  %1938 = fdiv fast float 1.000000e+00, %1935
  %1939 = fdiv fast float 1.000000e+00, %1936
  %1940 = fdiv fast float 1.000000e+00, %1937
  %1941 = fmul fast float %1898, 0xBF8D8BE060000000
  %1942 = fmul fast float %1900, 0xBF8D8BE060000000
  %1943 = fmul fast float %1902, 0xBF8D8BE060000000
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 3
  %1946 = call float @dx.op.dot3.f32(i32 55, float %1938, float %1939, float %1940, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1947 = fmul fast float %1945, %1946
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 3
  %1950 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1949)  ; Dot3(ax,ay,az,bx,by,bz)
  %1951 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %374, float %375, float %376)  ; Dot3(ax,ay,az,bx,by,bz)
  %1952 = fdiv fast float 1.000000e+00, %1951
  %1953 = fmul fast float %1952, %1950
  %1954 = fcmp ogt float %304, -0.000000e+00
  %1955 = select i1 %1954, float %1949, float %1953
  %1956 = call float @dx.op.binary.f32(i32 36, float %1955, float %1947)  ; FMin(a,b)
  %1957 = extractvalue %dx.types.CBufRet.f32 %1948, 0
  %1958 = fmul fast float %1957, %1956
  %1959 = fmul fast float %1958, %1941
  %1960 = fmul fast float %1958, %1942
  %1961 = fmul fast float %1958, %1943
  %1962 = call float @dx.op.unary.f32(i32 21, float %1959)  ; Exp(value)
  %1963 = call float @dx.op.unary.f32(i32 21, float %1960)  ; Exp(value)
  %1964 = call float @dx.op.unary.f32(i32 21, float %1961)  ; Exp(value)
  %1965 = fmul fast float %1934, %1891
  %1966 = fmul fast float %1965, %1962
  %1967 = fmul fast float %1934, %1892
  %1968 = fmul fast float %1967, %1963
  %1969 = fmul fast float %1934, %1893
  %1970 = fmul fast float %1969, %1964
  %1971 = extractvalue %dx.types.CBufRet.f32 %1948, 1
  %1972 = fmul fast float %1971, %1956
  %1973 = fmul fast float %1972, %1941
  %1974 = fmul fast float %1972, %1942
  %1975 = fmul fast float %1972, %1943
  %1976 = call float @dx.op.unary.f32(i32 21, float %1973)  ; Exp(value)
  %1977 = call float @dx.op.unary.f32(i32 21, float %1974)  ; Exp(value)
  %1978 = call float @dx.op.unary.f32(i32 21, float %1975)  ; Exp(value)
  %1979 = fmul fast float %1931, %1194
  %1980 = fmul fast float %1979, %1976
  %1981 = fmul fast float %1931, %1195
  %1982 = fmul fast float %1981, %1977
  %1983 = fmul fast float %1931, %1196
  %1984 = fmul fast float %1983, %1978
  %1985 = fadd fast float %1980, %1966
  %1986 = fmul fast float %1880, %1985
  %1987 = fadd fast float %1982, %1968
  %1988 = fmul fast float %1881, %1987
  %1989 = fadd fast float %1984, %1970
  %1990 = fmul fast float %1882, %1989
  %1991 = fmul fast float %1955, %1941
  %1992 = fmul fast float %1955, %1942
  %1993 = fmul fast float %1955, %1943
  %1994 = call float @dx.op.unary.f32(i32 21, float %1991)  ; Exp(value)
  %1995 = call float @dx.op.unary.f32(i32 21, float %1992)  ; Exp(value)
  %1996 = call float @dx.op.unary.f32(i32 21, float %1993)  ; Exp(value)
  %1997 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1998 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1999 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %2000 = fmul fast float %1997, %1986
  %2001 = fmul fast float %1998, %1988
  %2002 = fmul fast float %1999, %1990
  %2003 = fsub fast float %1986, %2000
  %2004 = fsub fast float %1988, %2001
  %2005 = fsub fast float %1990, %2002
  %2006 = fmul fast float %1938, %1208
  %2007 = fmul fast float %2006, %2003
  %2008 = fmul fast float %1939, %1208
  %2009 = fmul fast float %2008, %2004
  %2010 = fmul fast float %1940, %1208
  %2011 = fmul fast float %2010, %2005
  %2012 = fadd fast float %2007, %1857
  %2013 = fadd fast float %2009, %1858
  %2014 = fadd fast float %2011, %1859
  %2015 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2016 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %2017 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %2018 = fmul fast float %2015, %1860
  %2019 = fmul fast float %2016, %1861
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 0
  br i1 %373, label %2022, label %2048

; <label>:2022                                    ; preds = %1856
  %2023 = fadd fast float %1862, %349
  %2024 = fmul fast float %2023, %347
  %2025 = fsub fast float 1.000000e+00, %347
  %2026 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2027 = fmul fast float %276, 2.000000e+00
  %2028 = fmul fast float %2027, %310
  %2029 = fsub fast float %304, %2028
  %2030 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  %2031 = fsub fast float 1.000000e+00, %2030
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 3
  %2034 = fmul fast float %2031, %2026
  %2035 = fmul fast float %2034, %2033
  %2036 = fadd fast float %2035, %2024
  %2037 = fsub fast float 1.000000e+00, %379
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 0
  %2040 = fmul fast float %2039, %2037
  %2041 = fsub fast float %2036, %2040
  %2042 = fadd fast float %2019, %2018
  %2043 = extractvalue %dx.types.CBufRet.f32 %2032, 1
  %2044 = fsub fast float %2041, %2043
  %2045 = extractvalue %dx.types.CBufRet.f32 %2032, 2
  %2046 = fmul fast float %2044, %2045
  %2047 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  br label %2052

; <label>:2048                                    ; preds = %1856
  %2049 = fmul fast float %2017, %1862
  %2050 = fmul fast float %2021, %2019
  %2051 = fmul fast float %2049, %2021
  br label %2052

; <label>:2052                                    ; preds = %2048, %2022
  %2053 = phi float [ %2042, %2022 ], [ %2018, %2048 ]
  %2054 = phi float [ %2047, %2022 ], [ %2050, %2048 ]
  %2055 = phi float [ 1.000000e+00, %2022 ], [ %2051, %2048 ]
  %2056 = fmul float %2021, %2053
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 0
  %2059 = fmul fast float %2058, %2013
  %2060 = fmul fast float %2058, %2014
  %2061 = fadd fast float %2013, %2012
  %2062 = select i1 %373, float %2061, float %2012
  %2063 = fmul float %2062, %2058
  %2064 = select i1 %373, float 0.000000e+00, float %2059
  %2065 = select i1 %373, float 0.000000e+00, float %2060
  %2066 = fadd fast float %217, 0x3FE3C6EF40000000
  %2067 = call float @dx.op.unary.f32(i32 22, float %2066)  ; Frc(value)
  %2068 = call float @dx.op.unary.f32(i32 23, float %2056)  ; Log(value)
  %2069 = fadd fast float %2068, -7.000000e+00
  %2070 = call float @dx.op.unary.f32(i32 21, float %2069)  ; Exp(value)
  %2071 = fmul fast float %2067, 2.000000e+00
  %2072 = fadd fast float %2071, -1.000000e+00
  %2073 = fmul fast float %2070, %2072
  %2074 = fcmp fast ogt float %2056, 0.000000e+00
  %2075 = select i1 %2074, float %2073, float 0.000000e+00
  %2076 = fadd fast float %2075, %2056
  %2077 = fadd fast float %217, 0x3FF3C6EF40000000
  %2078 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2079 = call float @dx.op.unary.f32(i32 23, float %2054)  ; Log(value)
  %2080 = fadd fast float %2079, -7.000000e+00
  %2081 = call float @dx.op.unary.f32(i32 21, float %2080)  ; Exp(value)
  %2082 = fmul fast float %2078, 2.000000e+00
  %2083 = fadd fast float %2082, -1.000000e+00
  %2084 = fmul fast float %2081, %2083
  %2085 = fcmp fast ogt float %2054, 0.000000e+00
  %2086 = select i1 %2085, float %2084, float 0.000000e+00
  %2087 = fadd fast float %2086, %2054
  %2088 = fadd fast float %217, 0x3FFDAA66E0000000
  %2089 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2090 = call float @dx.op.unary.f32(i32 23, float %2055)  ; Log(value)
  %2091 = fadd fast float %2090, -6.000000e+00
  %2092 = call float @dx.op.unary.f32(i32 21, float %2091)  ; Exp(value)
  %2093 = fmul fast float %2089, 2.000000e+00
  %2094 = fadd fast float %2093, -1.000000e+00
  %2095 = fmul fast float %2092, %2094
  %2096 = fcmp fast ogt float %2055, 0.000000e+00
  %2097 = select i1 %2096, float %2095, float 0.000000e+00
  %2098 = fadd fast float %2097, %2055
  %2099 = fmul fast float %2076, %2015
  %2100 = fmul fast float %2087, %2016
  %2101 = fmul fast float %2098, %2017
  %2102 = fadd fast float %2099, %2063
  %2103 = fadd fast float %2100, %2064
  %2104 = fadd fast float %2101, %2065
  %2105 = select i1 %373, float %2087, float %2103
  %2106 = select i1 %373, float %2098, float %2104
  %2107 = call float @dx.op.binary.f32(i32 36, float %2102, float 3.225500e+04)  ; FMin(a,b)
  %2108 = call float @dx.op.binary.f32(i32 36, float %2105, float 3.225500e+04)  ; FMin(a,b)
  %2109 = call float @dx.op.binary.f32(i32 36, float %2106, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2107)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2108)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2109)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!37}
!dx.entryPoints = !{!38}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !28, !33}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
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
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!22 = !{i32 14, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!23 = !{i32 15, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!30 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!31 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!32 = !{i32 3, %perPrim* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!33 = !{!34, !35, !36}
!34 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!35 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!36 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!37 = !{[9 x i32] [i32 7, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7]}
!38 = !{void ()* @ps_main, !"ps_main", !39, !4, !50}
!39 = !{!40, !47, null}
!40 = !{!41, !44, !46}
!41 = !{i32 0, !"SV_Position", i8 9, i8 3, !42, i8 4, i32 1, i8 4, i32 0, i8 0, !43}
!42 = !{i32 0}
!43 = !{i32 3, i32 11}
!44 = !{i32 1, !"NORMAL", i8 9, i8 0, !42, i8 2, i32 1, i8 3, i32 1, i8 0, !45}
!45 = !{i32 3, i32 7}
!46 = !{i32 2, !"SV_SampleIndex", i8 5, i8 12, !42, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!47 = !{!48}
!48 = !{i32 0, !"SV_Target", i8 9, i8 16, !42, i8 0, i32 1, i8 4, i32 0, i8 0, !49}
!49 = !{i32 3, i32 15}
!50 = !{i32 0, i64 24}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}

