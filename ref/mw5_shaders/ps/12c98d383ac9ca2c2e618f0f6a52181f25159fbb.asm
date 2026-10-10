;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float       
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           5     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 69c74a768788745373e1b2bae753f41b
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
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
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
;   [128 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture    byte         r/o      T4     t16,space1     1
;                                   texture    byte         r/o      T5     t17,space1     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture     f32          2d      T7     t37,space2     1
;                                   texture     f32          2d      T8             t0     1
;                                   texture     f32          2d      T9     t58,space2     1
;                                   texture     f32          2d     T10     t57,space2     1
;                                   texture    byte         r/o     T11     t69,space1     1
;                                   texture     u32          2d     T12     t56,space2     1
;                                   texture     f32          2d     T13     t34,space2     1
;                                   texture     f32          2d     T14      t2,space2     1
;                                   texture     f32          2d     T15      t3,space2     1
;                                   texture     f32          2d     T16      t4,space2     1
;                                   textureunorm_f32     2darray     T17     t80,space2     1
;                                   texture    byte         r/o     T18     t67,space1     1
;                                   texture     f32          2d     T19      t7,space2     1
;                                   texture     f32          2d     T20      t6,space2     1
;                                   texture     f32          2d     T21      t5,space2     1
;                                   texture     f32          2d     T22     t38,space2     1
;                                   texture     f32          1d     T23     t30,space2     1
;                                   texture     f32          3d     T24     t44,space2     1
;                                   texture     f32          3d     T25     t45,space2     1
;                                   texture     f32     2darray     T26     t47,space2     1
;                                   textureunorm_f32     2darray     T27     t85,space2     1
;                                   texture     f32          2d     T28     t83,space2     1
;                                   texture     f32          2d     T29     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 21, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = alloca [4 x i32], align 4
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = alloca [12 x float], align 4
  %53 = alloca [12 x float], align 4
  %54 = alloca [4 x float], align 4
  %55 = alloca [4 x float], align 4
  %56 = alloca [4 x float], align 4
  %57 = alloca [3 x float], align 4
  %58 = alloca [3 x float], align 4
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = fmul fast float %62, %48
  %64 = fmul fast float %62, %49
  %65 = fmul fast float %44, %41
  %66 = fmul fast float %45, %40
  %67 = fsub fast float %65, %66
  %68 = fmul fast float %45, %39
  %69 = fmul fast float %43, %41
  %70 = fsub fast float %68, %69
  %71 = fmul fast float %43, %40
  %72 = fmul fast float %44, %39
  %73 = fsub fast float %71, %72
  %74 = fmul fast float %67, %42
  %75 = fmul fast float %70, %42
  %76 = fmul fast float %73, %42
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 3
  %80 = fmul fast float %78, 2.000000e+00
  %81 = fmul fast float %80, %63
  %82 = fmul fast float %79, 2.000000e+00
  %83 = fmul fast float %82, %64
  %84 = fsub fast float 1.000000e+00, %81
  %85 = fsub fast float 1.000000e+00, %83
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = fmul fast float %84, %87
  %91 = fmul fast float %84, %88
  %92 = fmul fast float %84, %89
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %97 = fmul fast float %85, %94
  %98 = fmul fast float %85, %95
  %99 = fmul fast float %85, %96
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fadd fast float %97, %101
  %105 = fadd fast float %104, %90
  %106 = fadd fast float %98, %102
  %107 = fadd fast float %106, %91
  %108 = fadd fast float %99, %103
  %109 = fadd fast float %108, %92
  %110 = fmul fast float %105, %51
  %111 = fmul fast float %107, %51
  %112 = fmul fast float %109, %51
  %113 = fmul fast float %63, 5.000000e-01
  %114 = fmul fast float %64, 5.000000e-01
  %115 = fptosi float %113 to i32
  %116 = fptosi float %114 to i32
  %117 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %115, i32 %116, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = lshr i32 %118, 18
  %120 = uitofp i32 %119 to float
  %121 = fmul fast float %120, 0x3F4C00EBA0000000
  %122 = call float @dx.op.unary.f32(i32 21, float %121)  ; Exp(value)
  %123 = fadd fast float %122, -1.000000e+00
  %124 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %125 = extractvalue %dx.types.Dimensions %124, 0
  %126 = sitofp i32 %125 to float
  %127 = extractvalue %dx.types.Dimensions %124, 1
  %128 = sitofp i32 %127 to float
  %129 = fcmp fast oge float %113, %126
  %130 = fcmp fast oge float %114, %128
  %131 = or i1 %129, %130
  %132 = select i1 %131, float 0x4197782600000000, float %123
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = fmul fast float %134, %63
  %137 = fmul fast float %135, %64
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = and i32 %139, 114688
  %141 = icmp ne i32 %140, 0
  %142 = select i1 %141, float %136, float 0.000000e+00
  %143 = select i1 %141, float %137, float 0.000000e+00
  %144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %33, float %142, float %143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = fmul fast float %145, 2.550000e+02
  %147 = fptoui float %146 to i32
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.i32 %149, 3
  %151 = and i32 %150, 3
  %152 = icmp ne i32 %151, 0
  %153 = and i32 %150, 4
  %154 = icmp ne i32 %153, 0
  %155 = and i1 %152, %154
  br i1 %155, label %156, label %167

; <label>:156                                     ; preds = %0
  %157 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %158 = fmul fast float %157, %64
  %159 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %160 = fmul fast float %159, %63
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %32, float %160, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = fsub fast float 1.000000e+00, %162
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = fcmp fast olt float %163, %165
  br label %170

; <label>:167                                     ; preds = %0
  %168 = icmp eq i32 %153, 0
  %169 = and i1 %152, %168
  br label %170

; <label>:170                                     ; preds = %167, %156
  %171 = phi i1 [ %166, %156 ], [ %169, %167 ]
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %174 = fmul fast float %173, 0x3FE3C6EF40000000
  %175 = frem fast float %63, 2.560000e+02
  %176 = frem fast float %64, 2.560000e+02
  %177 = fptoui float %175 to i32
  %178 = fptoui float %176 to i32
  %179 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %177, i32 %178, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fadd fast float %180, %174
  %182 = call float @dx.op.unary.f32(i32 22, float %181)  ; Frc(value)
  %183 = add i32 %38, 60
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %195 = add i32 %38, 72
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %209 = add i32 %38, 36
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %211, 65535
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %211, 16
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = add i32 %38, 96
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 65535
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %218, 16
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = fmul fast float %220, 0x3F50624DE0000000
  %224 = fmul fast float %222, 0x3F50624DE0000000
  %225 = add i32 %38, 108
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, 2
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %238, label %230

; <label>:230                                     ; preds = %170
  %231 = add i32 %38, 148
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = add i32 %233, 0
  %235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %235, %dx.types.Handle %60, float %46, float %47, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 3
  br label %238

; <label>:238                                     ; preds = %230, %170
  %239 = phi float [ 1.000000e+00, %170 ], [ %237, %230 ]
  %240 = add i32 %38, 24
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = add i32 %38, 28
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = or i32 %245, %242
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %774, label %248

; <label>:248                                     ; preds = %238
  %249 = add i32 %38, 92
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = lshr i32 %251, 16
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = fmul fast float %253, 0x3F50624DE0000000
  %255 = add i32 %38, 40
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = lshr i32 %257, 16
  %259 = and i32 %258, 255
  %260 = lshr i32 %257, 24
  %261 = add i32 %38, 100
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %38, 32
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = lshr i32 %270, 22
  %272 = shl nuw nsw i32 %271, 5
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = shl i32 %270, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %270, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %282 = fmul fast float %281, 1.000000e+03
  %283 = fmul fast float %223, %282
  %284 = call float @dx.op.unary.f32(i32 22, float %283)  ; Frc(value)
  %285 = fadd fast float %284, %213
  %286 = fmul fast float %224, %282
  %287 = call float @dx.op.unary.f32(i32 22, float %286)  ; Frc(value)
  %288 = fadd fast float %287, %215
  %289 = fmul fast float %254, %282
  %290 = call float @dx.op.unary.f32(i32 22, float %289)  ; Frc(value)
  %291 = fmul fast float %290, 0x401921FB60000000
  %292 = fadd fast float %291, %273
  %293 = call float @dx.op.unary.f32(i32 13, float %292)  ; Sin(value)
  %294 = call float @dx.op.unary.f32(i32 12, float %292)  ; Cos(value)
  %295 = fsub fast float -0.000000e+00, %293
  %296 = fadd fast float %46, -5.000000e-01
  %297 = fadd fast float %47, -5.000000e-01
  %298 = fmul fast float %265, %296
  %299 = fmul fast float %267, %297
  %300 = fadd fast float %298, 5.000000e-01
  %301 = fadd fast float %299, 5.000000e-01
  %302 = fmul fast float %276, %300
  %303 = fmul fast float %279, %301
  %304 = fmul fast float %294, %302
  %305 = call float @dx.op.tertiary.f32(i32 46, float %295, float %303, float %304)  ; FMad(a,b,c)
  %306 = fmul fast float %293, %302
  %307 = call float @dx.op.tertiary.f32(i32 46, float %294, float %303, float %306)  ; FMad(a,b,c)
  %308 = fadd fast float %285, %305
  %309 = fadd fast float %288, %307
  %310 = icmp ugt i32 %259, 1
  %311 = icmp ugt i32 %257, 33554431
  %312 = or i1 %311, %310
  br i1 %312, label %313, label %338

; <label>:313                                     ; preds = %248
  %314 = add i32 %38, 84
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = lshr i32 %316, 16
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = fmul fast float %281, %318
  %320 = call float @dx.op.unary.f32(i32 22, float %319)  ; Frc(value)
  %321 = mul nuw nsw i32 %259, %260
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %320, %322
  %324 = call float @dx.op.unary.f32(i32 27, float %323)  ; Round_ni(value)
  %325 = fptoui float %324 to i32
  %326 = urem i32 %325, %259
  %327 = udiv i32 %325, %260
  %328 = call float @dx.op.unary.f32(i32 22, float %308)  ; Frc(value)
  %329 = call float @dx.op.unary.f32(i32 22, float %309)  ; Frc(value)
  %330 = uitofp i32 %326 to float
  %331 = uitofp i32 %327 to float
  %332 = fadd fast float %328, %330
  %333 = fadd fast float %329, %331
  %334 = uitofp i32 %259 to float
  %335 = uitofp i32 %260 to float
  %336 = fdiv fast float %332, %334
  %337 = fdiv fast float %333, %335
  br label %338

; <label>:338                                     ; preds = %313, %248
  %339 = phi float [ %336, %313 ], [ %308, %248 ]
  %340 = phi float [ %337, %313 ], [ %309, %248 ]
  %341 = and i32 %242, 256
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %389, label %343

; <label>:343                                     ; preds = %338
  %344 = add i32 %38, 136
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = add i32 %346, 0
  %348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %349 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %348, %dx.types.Handle %60, float %339, float %340, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = add i32 %38, 52
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = shl i32 %353, 4
  %355 = and i32 %354, 32752
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %353, 7
  %358 = and i32 %357, 32752
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = fsub fast float 1.000000e+00, %239
  %361 = call float @dx.op.binary.f32(i32 35, float %360, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %362 = bitcast float %239 to i32
  %363 = sitofp i32 %362 to float
  %364 = fadd fast float %363, 0xC1CFBF8940000000
  %365 = fmul fast float %359, %364
  %366 = fadd fast float %365, 0x41CFBF8940000000
  %367 = fptosi float %366 to i32
  %368 = bitcast i32 %367 to float
  %369 = bitcast float %361 to i32
  %370 = sitofp i32 %369 to float
  %371 = fadd fast float %370, 0xC1CFBF8940000000
  %372 = fmul fast float %371, %359
  %373 = fadd fast float %372, 0x41CFBF8940000000
  %374 = fptosi float %373 to i32
  %375 = bitcast i32 %374 to float
  %376 = fmul fast float %368, %356
  %377 = fmul fast float %375, %356
  %378 = fsub fast float %361, %376
  %379 = fadd fast float %377, %361
  %380 = call float @dx.op.unary.f32(i32 7, float %378)  ; Saturate(value)
  %381 = call float @dx.op.unary.f32(i32 7, float %379)  ; Saturate(value)
  %382 = fsub fast float %350, %380
  %383 = fsub fast float %381, %380
  %384 = bitcast float %383 to i32
  %385 = sub nsw i32 2129859010, %384
  %386 = bitcast i32 %385 to float
  %387 = fmul fast float %386, %382
  %388 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  br label %389

; <label>:389                                     ; preds = %343, %338
  %390 = phi float [ %388, %343 ], [ %239, %338 ]
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 128
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %411, label %395

; <label>:395                                     ; preds = %389
  %396 = add i32 %38, 132
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = add i32 %398, 0
  %400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %399, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %401 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %400, %dx.types.Handle %60, float %339, float %340, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 524288
  %406 = icmp ne i32 %405, 0
  %407 = fcmp fast ogt float %402, 0x3FE0101020000000
  %408 = select i1 %407, float 1.000000e+00, float 0.000000e+00
  %409 = select i1 %406, float %408, float %402
  %410 = fmul fast float %409, %390
  br label %411

; <label>:411                                     ; preds = %395, %389
  %412 = phi float [ %410, %395 ], [ %390, %389 ]
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 16
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %615, label %417

; <label>:417                                     ; preds = %411
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = add i32 %38, 120
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = add i32 %422, 0
  %424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %425 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %424, %dx.types.Handle %59, float %339, float %340, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = extractvalue %dx.types.ResRet.f32 %425, 2
  %429 = extractvalue %dx.types.ResRet.f32 %425, 3
  %430 = and i32 %419, 255
  %431 = uitofp i32 %430 to float
  %432 = lshr i32 %419, 8
  %433 = and i32 %432, 255
  %434 = uitofp i32 %433 to float
  %435 = fmul fast float %429, %431
  %436 = fadd fast float %435, %434
  %437 = fmul fast float %436, 0x3F70101000000000
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 512
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %450, label %442

; <label>:442                                     ; preds = %417
  %443 = add i32 %38, 140
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = add i32 %445, 0
  %447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %447, %dx.types.Handle %60, float %339, float %340, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  br label %450

; <label>:450                                     ; preds = %442, %417
  %451 = phi float [ %449, %442 ], [ 1.000000e+00, %417 ]
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 33554432
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %562, label %456

; <label>:456                                     ; preds = %450
  %457 = add i32 %38, 80
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 65535
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = lshr i32 %459, 16
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = add i32 %38, 84
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 65535
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = lshr i32 %470, 24
  %472 = uitofp i32 %471 to float
  %473 = fmul fast float %472, 0x3F70101020000000
  %474 = and i32 %470, 255
  %475 = uitofp i32 %474 to float
  %476 = fmul fast float %475, 0x3F70101020000000
  %477 = lshr i32 %470, 8
  %478 = and i32 %477, 255
  %479 = uitofp i32 %478 to float
  %480 = fmul fast float %479, 0x3F70101020000000
  %481 = lshr i32 %470, 16
  %482 = and i32 %481, 255
  %483 = uitofp i32 %482 to float
  %484 = fmul fast float %483, 0x3F70101020000000
  %485 = add i32 %38, 76
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = lshr i32 %487, 24
  %489 = uitofp i32 %488 to float
  %490 = fmul fast float %489, 0x3F70101020000000
  %491 = and i32 %487, 255
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = lshr i32 %487, 8
  %495 = and i32 %494, 255
  %496 = uitofp i32 %495 to float
  %497 = fmul fast float %496, 0x3F70101020000000
  %498 = lshr i32 %487, 16
  %499 = and i32 %498, 255
  %500 = uitofp i32 %499 to float
  %501 = fmul fast float %500, 0x3F70101020000000
  %502 = bitcast float %426 to i32
  %503 = ashr i32 %502, 1
  %504 = sub nsw i32 1597463174, %503
  %505 = bitcast i32 %504 to float
  %506 = fmul fast float %426, 5.000000e-01
  %507 = fmul fast float %505, %505
  %508 = fmul fast float %507, %506
  %509 = fsub fast float 1.500000e+00, %508
  %510 = fmul fast float %505, %426
  %511 = fmul fast float %510, %509
  %512 = bitcast float %427 to i32
  %513 = ashr i32 %512, 1
  %514 = sub nsw i32 1597463174, %513
  %515 = bitcast i32 %514 to float
  %516 = fmul fast float %427, 5.000000e-01
  %517 = fmul fast float %515, %515
  %518 = fmul fast float %517, %516
  %519 = fsub fast float 1.500000e+00, %518
  %520 = fmul fast float %515, %427
  %521 = fmul fast float %520, %519
  %522 = bitcast float %428 to i32
  %523 = ashr i32 %522, 1
  %524 = sub nsw i32 1597463174, %523
  %525 = bitcast i32 %524 to float
  %526 = fmul fast float %428, 5.000000e-01
  %527 = fmul fast float %525, %525
  %528 = fmul fast float %527, %526
  %529 = fsub fast float 1.500000e+00, %528
  %530 = fmul fast float %525, %428
  %531 = fmul fast float %530, %529
  %532 = fsub fast float %511, %493
  %533 = fsub fast float %521, %497
  %534 = fsub fast float %531, %501
  %535 = fmul fast float %532, %461
  %536 = fmul fast float %533, %463
  %537 = fmul fast float %534, %468
  %538 = fadd fast float %535, %476
  %539 = fadd fast float %536, %480
  %540 = fadd fast float %537, %484
  %541 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  %542 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %543 = call float @dx.op.unary.f32(i32 7, float %540)  ; Saturate(value)
  %544 = fmul fast float %541, %541
  %545 = fmul fast float %542, %542
  %546 = fmul fast float %543, %543
  %547 = fsub fast float %544, %426
  %548 = fsub fast float %545, %427
  %549 = fsub fast float %546, %428
  %550 = fmul fast float %547, %451
  %551 = fmul fast float %548, %451
  %552 = fmul fast float %549, %451
  %553 = fadd fast float %550, %426
  %554 = fadd fast float %551, %427
  %555 = fadd fast float %552, %428
  %556 = fadd fast float %473, %437
  %557 = fsub fast float %556, %490
  %558 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %559 = fsub fast float %558, %437
  %560 = fmul fast float %559, %451
  %561 = fadd fast float %560, %437
  br label %615

; <label>:562                                     ; preds = %450
  %563 = and i32 %453, 134217728
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %599, label %565

; <label>:565                                     ; preds = %562
  %566 = call float @dx.op.unary.f32(i32 24, float %200)  ; Sqrt(value)
  %567 = call float @dx.op.unary.f32(i32 24, float %204)  ; Sqrt(value)
  %568 = call float @dx.op.unary.f32(i32 24, float %208)  ; Sqrt(value)
  %569 = fadd fast float %566, -5.000000e-01
  %570 = fadd fast float %567, -5.000000e-01
  %571 = fadd fast float %568, -5.000000e-01
  %572 = fmul fast float %569, %451
  %573 = fmul fast float %570, %451
  %574 = fmul fast float %571, %451
  %575 = fadd fast float %572, 5.000000e-01
  %576 = fadd fast float %573, 5.000000e-01
  %577 = fadd fast float %574, 5.000000e-01
  %578 = call float @dx.op.unary.f32(i32 24, float %426)  ; Sqrt(value)
  %579 = call float @dx.op.unary.f32(i32 24, float %427)  ; Sqrt(value)
  %580 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %581 = fmul fast float %575, 2.000000e+00
  %582 = fsub fast float 1.000000e+00, %581
  %583 = fmul fast float %582, %578
  %584 = fadd fast float %583, %581
  %585 = fmul fast float %584, %578
  %586 = fmul fast float %576, 2.000000e+00
  %587 = fsub fast float 1.000000e+00, %586
  %588 = fmul fast float %587, %579
  %589 = fadd fast float %588, %586
  %590 = fmul fast float %589, %579
  %591 = fmul fast float %577, 2.000000e+00
  %592 = fsub fast float 1.000000e+00, %591
  %593 = fmul fast float %592, %580
  %594 = fadd fast float %593, %591
  %595 = fmul fast float %594, %580
  %596 = fmul fast float %585, %585
  %597 = fmul fast float %590, %590
  %598 = fmul fast float %595, %595
  br label %615

; <label>:599                                     ; preds = %562
  %600 = fmul fast float %200, %200
  %601 = fmul fast float %204, %204
  %602 = fmul fast float %208, %208
  %603 = fadd fast float %600, -1.000000e+00
  %604 = fadd fast float %601, -1.000000e+00
  %605 = fadd fast float %602, -1.000000e+00
  %606 = fmul fast float %451, %603
  %607 = fmul fast float %451, %604
  %608 = fmul fast float %451, %605
  %609 = fadd fast float %606, 1.000000e+00
  %610 = fadd fast float %607, 1.000000e+00
  %611 = fadd fast float %608, 1.000000e+00
  %612 = fmul fast float %609, %426
  %613 = fmul fast float %610, %427
  %614 = fmul fast float %611, %428
  br label %615

; <label>:615                                     ; preds = %599, %565, %456, %411
  %616 = phi float [ %561, %456 ], [ %437, %565 ], [ %437, %599 ], [ 0x3FA23C0BE0000000, %411 ]
  %617 = phi float [ %553, %456 ], [ %596, %565 ], [ %612, %599 ], [ 1.000000e+00, %411 ]
  %618 = phi float [ %554, %456 ], [ %597, %565 ], [ %613, %599 ], [ 1.000000e+00, %411 ]
  %619 = phi float [ %555, %456 ], [ %598, %565 ], [ %614, %599 ], [ 1.000000e+00, %411 ]
  %620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.i32 %620, 1
  %622 = and i32 %621, 1
  %623 = icmp ne i32 %622, 0
  %624 = add i32 %38, 116
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = and i32 %626, 32
  %628 = icmp ne i32 %627, 0
  %629 = and i1 %623, %628
  %630 = select i1 %629, float 1.000000e+00, float %617
  %631 = select i1 %629, float 0x3FD3333340000000, float %618
  %632 = select i1 %629, float 0x3FD3333340000000, float %619
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 32
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %709, label %637

; <label>:637                                     ; preds = %615
  %638 = add i32 %38, 44
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = add i32 %38, 124
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = add i32 %643, 0
  %645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %645, %dx.types.Handle %59, float %339, float %340, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = extractvalue %dx.types.ResRet.f32 %646, 1
  %649 = extractvalue %dx.types.ResRet.f32 %646, 2
  %650 = extractvalue %dx.types.ResRet.f32 %646, 3
  %651 = and i32 %640, 255
  %652 = uitofp i32 %651 to float
  %653 = lshr i32 %640, 8
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = lshr i32 %640, 16
  %657 = and i32 %656, 255
  %658 = uitofp i32 %657 to float
  %659 = fmul fast float %658, 0x3F70101000000000
  %660 = fmul fast float %647, %652
  %661 = fadd fast float %660, %655
  %662 = fmul fast float %661, 0x3F70101000000000
  %663 = fadd fast float %648, -5.000000e-01
  %664 = fadd fast float %650, -5.000000e-01
  %665 = fmul fast float %663, %659
  %666 = fmul fast float %664, %659
  %667 = fadd fast float %665, 5.000000e-01
  %668 = fadd fast float %666, 5.000000e-01
  %669 = fmul fast float %667, 2.000000e+00
  %670 = fadd fast float %669, -1.000000e+00
  %671 = fmul fast float %668, 2.000000e+00
  %672 = fadd fast float %671, -1.000000e+00
  %673 = fadd fast float %670, %672
  %674 = fmul fast float %673, 5.000000e-01
  %675 = fsub fast float %670, %672
  %676 = fmul fast float %675, 5.000000e-01
  %677 = call float @dx.op.unary.f32(i32 6, float %674)  ; FAbs(value)
  %678 = fsub fast float 1.000000e+00, %677
  %679 = call float @dx.op.unary.f32(i32 6, float %676)  ; FAbs(value)
  %680 = fsub fast float %678, %679
  %681 = call float @dx.op.dot3.f32(i32 55, float %674, float %676, float %680, float %674, float %676, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %682 = call float @dx.op.unary.f32(i32 25, float %681)  ; Rsqrt(value)
  %683 = fmul fast float %674, %682
  %684 = fmul fast float %676, %682
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 67108864
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %705, label %689

; <label>:689                                     ; preds = %637
  %690 = add i32 %38, 88
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 65535
  %694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %693)  ; LegacyF16ToF32(value)
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = and i32 %696, 65535
  %698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %697)  ; LegacyF16ToF32(value)
  %699 = lshr i32 %692, 16
  %700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %699)  ; LegacyF16ToF32(value)
  %701 = fsub fast float %662, %700
  %702 = fmul fast float %701, %694
  %703 = fadd fast float %702, %698
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  br label %705

; <label>:705                                     ; preds = %689, %637
  %706 = phi float [ %704, %689 ], [ %662, %637 ]
  %707 = call float @dx.op.dot2.f32(i32 54, float %683, float %684, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %708 = call float @dx.op.dot2.f32(i32 54, float %683, float %684, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %709

; <label>:709                                     ; preds = %705, %615
  %710 = phi float [ %706, %705 ], [ 0x3FD6666660000000, %615 ]
  %711 = phi float [ %707, %705 ], [ 0.000000e+00, %615 ]
  %712 = phi float [ %708, %705 ], [ 0.000000e+00, %615 ]
  %713 = phi float [ %649, %705 ], [ 1.000000e+00, %615 ]
  %714 = add i32 %38, 64
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = lshr i32 %716, 22
  %718 = shl nuw nsw i32 %717, 5
  %719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %718)  ; LegacyF16ToF32(value)
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = and i32 %721, 64
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %757, label %724

; <label>:724                                     ; preds = %709
  %725 = add i32 %38, 128
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = add i32 %727, 0
  %729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 131072
  %733 = icmp eq i32 %732, 0
  %734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %729, %dx.types.Handle %59, float %339, float %340, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 2
  %738 = fmul fast float %735, %188
  %739 = fmul fast float %736, %191
  %740 = fmul fast float %737, %194
  br i1 %733, label %747, label %741

; <label>:741                                     ; preds = %724
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %744 = fmul fast float %743, %738
  %745 = fmul fast float %743, %739
  %746 = fmul fast float %743, %740
  br label %747

; <label>:747                                     ; preds = %741, %724
  %748 = phi float [ %744, %741 ], [ %738, %724 ]
  %749 = phi float [ %745, %741 ], [ %739, %724 ]
  %750 = phi float [ %746, %741 ], [ %740, %724 ]
  %751 = fmul fast float %748, %719
  %752 = select i1 %171, float %751, float %748
  %753 = call float @dx.op.dot3.f32(i32 55, float %752, float %749, float %750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %754 = select i1 %171, float 0.000000e+00, float %748
  %755 = select i1 %171, float %753, float %749
  %756 = select i1 %171, float 0.000000e+00, float %750
  br label %757

; <label>:757                                     ; preds = %747, %709
  %758 = phi float [ %754, %747 ], [ 0.000000e+00, %709 ]
  %759 = phi float [ %755, %747 ], [ 0.000000e+00, %709 ]
  %760 = phi float [ %756, %747 ], [ 0.000000e+00, %709 ]
  %761 = add i32 %38, 48
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 255
  %765 = uitofp i32 %764 to float
  %766 = lshr i32 %763, 8
  %767 = and i32 %766, 255
  %768 = uitofp i32 %767 to float
  %769 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %770 = fmul fast float %768, %769
  %771 = fadd fast float %770, %765
  %772 = fmul fast float %771, 0x3F70101020000000
  %773 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  br label %774

; <label>:774                                     ; preds = %757, %238
  %775 = phi float [ 0.000000e+00, %238 ], [ %711, %757 ]
  %776 = phi float [ 0.000000e+00, %238 ], [ %712, %757 ]
  %777 = phi float [ 0.000000e+00, %238 ], [ %630, %757 ]
  %778 = phi float [ 0.000000e+00, %238 ], [ %631, %757 ]
  %779 = phi float [ 0.000000e+00, %238 ], [ %632, %757 ]
  %780 = phi float [ 0.000000e+00, %238 ], [ %758, %757 ]
  %781 = phi float [ 0.000000e+00, %238 ], [ %759, %757 ]
  %782 = phi float [ 0.000000e+00, %238 ], [ %760, %757 ]
  %783 = phi float [ 0.000000e+00, %238 ], [ %616, %757 ]
  %784 = phi float [ 0.000000e+00, %238 ], [ %412, %757 ]
  %785 = phi float [ 0.000000e+00, %238 ], [ %710, %757 ]
  %786 = phi float [ 0.000000e+00, %238 ], [ %713, %757 ]
  %787 = phi float [ 0.000000e+00, %238 ], [ %773, %757 ]
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %792 = fmul fast float %791, %780
  %793 = fmul fast float %791, %781
  %794 = fmul fast float %791, %782
  %795 = call float @dx.op.dot2.f32(i32 54, float %775, float %776, float %775, float %776)  ; Dot2(ax,ay,bx,by)
  %796 = fmul fast float %795, 0x3FE3333340000000
  %797 = fsub fast float 1.000000e+00, %796
  %798 = call float @dx.op.dot3.f32(i32 55, float %775, float %776, float %797, float %775, float %776, float %797)  ; Dot3(ax,ay,az,bx,by,bz)
  %799 = call float @dx.op.unary.f32(i32 25, float %798)  ; Rsqrt(value)
  %800 = fmul fast float %799, %775
  %801 = fmul fast float %799, %776
  %802 = fmul fast float %797, %799
  %803 = fmul fast float %802, %43
  %804 = fmul fast float %802, %44
  %805 = fmul fast float %802, %45
  %806 = fmul fast float %800, %39
  %807 = fmul fast float %800, %40
  %808 = fmul fast float %800, %41
  %809 = fadd fast float %803, %806
  %810 = fadd fast float %804, %807
  %811 = fadd fast float %805, %808
  %812 = fmul fast float %74, %801
  %813 = fmul fast float %75, %801
  %814 = fmul fast float %76, %801
  %815 = fadd fast float %809, %812
  %816 = fadd fast float %810, %813
  %817 = fadd fast float %811, %814
  %818 = call float @dx.op.dot3.f32(i32 55, float %815, float %816, float %817, float %815, float %816, float %817)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = call float @dx.op.unary.f32(i32 25, float %818)  ; Rsqrt(value)
  %820 = fmul fast float %815, %819
  %821 = fmul fast float %816, %819
  %822 = fmul fast float %817, %819
  %823 = call float @dx.op.unary.f32(i32 83, float %110)  ; DerivCoarseX(value)
  %824 = call float @dx.op.unary.f32(i32 83, float %111)  ; DerivCoarseX(value)
  %825 = call float @dx.op.unary.f32(i32 83, float %112)  ; DerivCoarseX(value)
  %826 = call float @dx.op.unary.f32(i32 84, float %110)  ; DerivCoarseY(value)
  %827 = call float @dx.op.unary.f32(i32 84, float %111)  ; DerivCoarseY(value)
  %828 = call float @dx.op.unary.f32(i32 84, float %112)  ; DerivCoarseY(value)
  %829 = fadd fast float %823, %110
  %830 = fadd fast float %824, %111
  %831 = fadd fast float %825, %112
  %832 = fadd fast float %826, %110
  %833 = fadd fast float %827, %111
  %834 = fadd fast float %828, %112
  %835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.f32 %835, 0
  %837 = extractvalue %dx.types.CBufRet.f32 %835, 1
  %838 = extractvalue %dx.types.CBufRet.f32 %835, 2
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %841 = extractvalue %dx.types.CBufRet.f32 %839, 3
  %842 = fmul fast float %836, %63
  %843 = fmul fast float %842, %840
  %844 = fmul fast float %837, %64
  %845 = fmul fast float %844, %841
  %846 = fptoui float %843 to i32
  %847 = fptoui float %845 to i32
  %848 = fadd fast float %836, -1.000000e+00
  %849 = fadd fast float %837, -1.000000e+00
  %850 = fptoui float %848 to i32
  %851 = fptoui float %849 to i32
  %852 = call i32 @dx.op.binary.i32(i32 40, i32 %846, i32 %850)  ; UMin(a,b)
  %853 = call i32 @dx.op.binary.i32(i32 40, i32 %847, i32 %851)  ; UMin(a,b)
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %856 = extractvalue %dx.types.CBufRet.f32 %854, 3
  %857 = fmul fast float %855, %51
  %858 = fsub fast float %857, %856
  %859 = fadd fast float %838, -1.000000e+00
  %860 = call float @dx.op.binary.f32(i32 36, float %858, float %859)  ; FMin(a,b)
  %861 = fptoui float %860 to i32
  %862 = fptoui float %836 to i32
  %863 = fptoui float %837 to i32
  %864 = mul i32 %861, %863
  %865 = add i32 %864, %853
  %866 = mul i32 %865, %862
  %867 = add i32 %866, %852
  %868 = shl i32 %867, 2
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %868, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 1023
  %872 = lshr i32 %870, 10
  %873 = icmp eq i32 %871, 0
  br i1 %873, label %1302, label %874

; <label>:874                                     ; preds = %774
  %875 = and i32 %870, 1023
  br label %876

; <label>:876                                     ; preds = %1003, %874
  %877 = phi float [ %1004, %1003 ], [ 0.000000e+00, %874 ]
  %878 = phi float [ %1005, %1003 ], [ %784, %874 ]
  %879 = phi float [ %1006, %1003 ], [ %789, %874 ]
  %880 = phi float [ %1007, %1003 ], [ %787, %874 ]
  %881 = phi float [ %1008, %1003 ], [ 0.000000e+00, %874 ]
  %882 = phi float [ %1009, %1003 ], [ 0.000000e+00, %874 ]
  %883 = phi float [ %1010, %1003 ], [ %792, %874 ]
  %884 = phi float [ %1011, %1003 ], [ %793, %874 ]
  %885 = phi float [ %1012, %1003 ], [ %794, %874 ]
  %886 = phi float [ %1013, %1003 ], [ %820, %874 ]
  %887 = phi float [ %1014, %1003 ], [ %821, %874 ]
  %888 = phi float [ %1015, %1003 ], [ %822, %874 ]
  %889 = phi float [ %1016, %1003 ], [ %786, %874 ]
  %890 = phi float [ %1017, %1003 ], [ %785, %874 ]
  %891 = phi float [ %1018, %1003 ], [ 0.000000e+00, %874 ]
  %892 = phi float [ %1019, %1003 ], [ %783, %874 ]
  %893 = phi float [ %1020, %1003 ], [ %777, %874 ]
  %894 = phi float [ %1021, %1003 ], [ %778, %874 ]
  %895 = phi float [ %1022, %1003 ], [ %779, %874 ]
  %896 = phi i32 [ %953, %1003 ], [ 0, %874 ]
  %897 = add nuw nsw i32 %896, %872
  %898 = shl i32 %897, 2
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = shl i32 %900, 8
  %902 = or i32 %901, 48
  %903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.f32 %903, 0
  %905 = extractvalue %dx.types.ResRet.f32 %903, 1
  %906 = extractvalue %dx.types.ResRet.f32 %903, 2
  %907 = extractvalue %dx.types.ResRet.f32 %903, 3
  %908 = or i32 %901, 64
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = extractvalue %dx.types.ResRet.i32 %909, 1
  %912 = or i32 %901, 80
  %913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 2
  %915 = extractvalue %dx.types.ResRet.f32 %913, 3
  %916 = or i32 %901, 96
  %917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = extractvalue %dx.types.ResRet.f32 %917, 1
  %920 = extractvalue %dx.types.ResRet.f32 %917, 2
  %921 = extractvalue %dx.types.ResRet.f32 %917, 3
  %922 = or i32 %901, 112
  %923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.f32 %923, 2
  %925 = or i32 %901, 128
  %926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = extractvalue %dx.types.ResRet.f32 %926, 1
  %929 = extractvalue %dx.types.ResRet.f32 %926, 2
  %930 = extractvalue %dx.types.ResRet.f32 %926, 3
  %931 = or i32 %901, 144
  %932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  %934 = extractvalue %dx.types.ResRet.f32 %932, 1
  %935 = extractvalue %dx.types.ResRet.f32 %932, 2
  %936 = extractvalue %dx.types.ResRet.f32 %932, 3
  %937 = or i32 %901, 160
  %938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = extractvalue %dx.types.ResRet.f32 %938, 2
  %942 = extractvalue %dx.types.ResRet.f32 %938, 3
  %943 = or i32 %901, 192
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = or i32 %901, 208
  %947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = or i32 %901, 248
  %950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %949, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = extractvalue %dx.types.ResRet.f32 %950, 1
  %953 = add nuw nsw i32 %896, 1
  %954 = bitcast float %907 to i32
  %955 = and i32 %954, 2560
  %956 = icmp eq i32 %955, 2048
  %957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = extractvalue %dx.types.ResRet.f32 %957, 1
  %960 = extractvalue %dx.types.ResRet.f32 %957, 2
  %961 = extractvalue %dx.types.ResRet.f32 %957, 3
  %962 = call float @dx.op.dot4.f32(i32 56, float %958, float %959, float %960, float %961, float %110, float %111, float %112, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %963 = or i32 %901, 16
  %964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = extractvalue %dx.types.ResRet.f32 %964, 1
  %967 = extractvalue %dx.types.ResRet.f32 %964, 2
  %968 = extractvalue %dx.types.ResRet.f32 %964, 3
  %969 = call float @dx.op.dot4.f32(i32 56, float %965, float %966, float %967, float %968, float %110, float %111, float %112, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %970 = or i32 %901, 32
  %971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = extractvalue %dx.types.ResRet.f32 %971, 1
  %974 = extractvalue %dx.types.ResRet.f32 %971, 2
  %975 = extractvalue %dx.types.ResRet.f32 %971, 3
  %976 = call float @dx.op.dot4.f32(i32 56, float %972, float %973, float %974, float %975, float %110, float %111, float %112, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %977 = call float @dx.op.unary.f32(i32 27, float %962)  ; Round_ni(value)
  %978 = call float @dx.op.unary.f32(i32 6, float %977)  ; FAbs(value)
  %979 = call float @dx.op.unary.f32(i32 27, float %969)  ; Round_ni(value)
  %980 = call float @dx.op.unary.f32(i32 6, float %979)  ; FAbs(value)
  %981 = call float @dx.op.unary.f32(i32 6, float %976)  ; FAbs(value)
  %982 = call float @dx.op.unary.f32(i32 27, float %981)  ; Round_ni(value)
  %983 = fadd fast float %980, %978
  %984 = fadd fast float %983, %982
  %985 = fcmp fast oeq float %984, 0.000000e+00
  %986 = call float @dx.op.dot4.f32(i32 56, float %958, float %959, float %960, float %961, float %829, float %830, float %831, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %987 = call float @dx.op.dot4.f32(i32 56, float %965, float %966, float %967, float %968, float %829, float %830, float %831, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %988 = call float @dx.op.dot4.f32(i32 56, float %958, float %959, float %960, float %961, float %832, float %833, float %834, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %989 = call float @dx.op.dot4.f32(i32 56, float %965, float %966, float %967, float %968, float %832, float %833, float %834, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %990 = fsub fast float %986, %962
  %991 = fsub fast float %988, %962
  %992 = fsub fast float %987, %969
  %993 = fsub fast float %989, %969
  %994 = call float @dx.op.dot3.f32(i32 55, float %904, float %905, float %906, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %997 = fadd fast float %996, %994
  %998 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %999 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %1000 = fcmp fast ogt float %998, %999
  %1001 = and i1 %985, %1000
  %1002 = and i1 %956, %1001
  br i1 %1002, label %1024, label %1003

; <label>:1003                                    ; preds = %1288, %1105, %1024, %876
  %1004 = phi float [ %877, %1024 ], [ %1108, %1105 ], [ %1108, %1288 ], [ %877, %876 ]
  %1005 = phi float [ %878, %1024 ], [ %878, %1105 ], [ %1263, %1288 ], [ %878, %876 ]
  %1006 = phi float [ %879, %1024 ], [ %879, %1105 ], [ %1262, %1288 ], [ %879, %876 ]
  %1007 = phi float [ %880, %1024 ], [ %880, %1105 ], [ %1260, %1288 ], [ %880, %876 ]
  %1008 = phi float [ %881, %1024 ], [ %881, %1105 ], [ %1232, %1288 ], [ %881, %876 ]
  %1009 = phi float [ %882, %1024 ], [ %882, %1105 ], [ %1230, %1288 ], [ %882, %876 ]
  %1010 = phi float [ %883, %1024 ], [ %883, %1105 ], [ %1298, %1288 ], [ %883, %876 ]
  %1011 = phi float [ %884, %1024 ], [ %884, %1105 ], [ %1299, %1288 ], [ %884, %876 ]
  %1012 = phi float [ %885, %1024 ], [ %885, %1105 ], [ %1300, %1288 ], [ %885, %876 ]
  %1013 = phi float [ %886, %1024 ], [ %886, %1105 ], [ %1211, %1288 ], [ %886, %876 ]
  %1014 = phi float [ %887, %1024 ], [ %887, %1105 ], [ %1212, %1288 ], [ %887, %876 ]
  %1015 = phi float [ %888, %1024 ], [ %888, %1105 ], [ %1213, %1288 ], [ %888, %876 ]
  %1016 = phi float [ %889, %1024 ], [ %889, %1105 ], [ %1240, %1288 ], [ %889, %876 ]
  %1017 = phi float [ %890, %1024 ], [ %890, %1105 ], [ %1237, %1288 ], [ %890, %876 ]
  %1018 = phi float [ %891, %1024 ], [ %891, %1105 ], [ %1234, %1288 ], [ %891, %876 ]
  %1019 = phi float [ %892, %1024 ], [ %892, %1105 ], [ %1228, %1288 ], [ %892, %876 ]
  %1020 = phi float [ %893, %1024 ], [ %893, %1105 ], [ %1223, %1288 ], [ %893, %876 ]
  %1021 = phi float [ %894, %1024 ], [ %894, %1105 ], [ %1224, %1288 ], [ %894, %876 ]
  %1022 = phi float [ %895, %1024 ], [ %895, %1105 ], [ %1225, %1288 ], [ %895, %876 ]
  %1023 = icmp eq i32 %953, %875
  br i1 %1023, label %1301, label %876

; <label>:1024                                    ; preds = %876
  %1025 = extractvalue %dx.types.ResRet.f32 %923, 3
  %1026 = extractvalue %dx.types.ResRet.f32 %923, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %923, 0
  %1028 = extractvalue %dx.types.ResRet.f32 %913, 1
  %1029 = extractvalue %dx.types.ResRet.f32 %913, 0
  %1030 = extractvalue %dx.types.ResRet.i32 %909, 3
  %1031 = extractvalue %dx.types.ResRet.i32 %909, 2
  %1032 = add i32 %1030, 0
  %1033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1032, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1035 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1033, %dx.types.Handle %1034, float %962, float %969, float undef, float undef, i32 0, i32 0, i32 undef, float %990, float %992, float undef, float %991, float %993, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = fmul fast float %1036, %1029
  %1038 = fadd fast float %1037, %1028
  %1039 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  %1040 = fmul fast float %962, %918
  %1041 = call float @dx.op.tertiary.f32(i32 46, float %919, float %969, float %1040)  ; FMad(a,b,c)
  %1042 = fadd fast float %1041, %1027
  %1043 = fmul fast float %962, %920
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %921, float %969, float %1043)  ; FMad(a,b,c)
  %1045 = fadd fast float %1044, %1026
  %1046 = fmul fast float %990, %918
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %919, float %992, float %1046)  ; FMad(a,b,c)
  %1048 = fmul fast float %990, %920
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %921, float %992, float %1048)  ; FMad(a,b,c)
  %1050 = fmul fast float %991, %918
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %919, float %993, float %1050)  ; FMad(a,b,c)
  %1052 = fmul fast float %991, %920
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %921, float %993, float %1052)  ; FMad(a,b,c)
  %1054 = add i32 %1031, 0
  %1055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1054, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1056 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1055, %dx.types.Handle %1034, float %1042, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float %1047, float %1049, float undef, float %1051, float %1053, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = and i32 %954, 1024
  %1059 = icmp ne i32 %1058, 0
  %1060 = fcmp fast ogt float %1057, 0x3FE0101020000000
  %1061 = uitofp i1 %1060 to float
  %1062 = select i1 %1059, float %1061, float %1057
  %1063 = and i32 %954, 8192
  %1064 = icmp ne i32 %1063, 0
  %1065 = select i1 %1064, float %1025, float 1.000000e+00
  %1066 = fmul fast float %962, 2.000000e+00
  %1067 = fadd fast float %1066, -1.000000e+00
  %1068 = call float @dx.op.unary.f32(i32 6, float %1067)  ; FAbs(value)
  %1069 = fmul fast float %1068, %951
  %1070 = fsub fast float %1069, %951
  %1071 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  %1072 = fmul fast float %969, 2.000000e+00
  %1073 = fadd fast float %1072, -1.000000e+00
  %1074 = call float @dx.op.unary.f32(i32 6, float %1073)  ; FAbs(value)
  %1075 = fmul fast float %1074, %952
  %1076 = fsub fast float %1075, %952
  %1077 = call float @dx.op.unary.f32(i32 7, float %1076)  ; Saturate(value)
  %1078 = fmul fast float %981, %914
  %1079 = fsub fast float %1078, %914
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  %1081 = fmul fast float %1039, %1065
  %1082 = fmul fast float %1081, %1036
  %1083 = fmul fast float %1082, %1071
  %1084 = fmul fast float %1083, %1062
  %1085 = fmul fast float %1084, %1077
  %1086 = fmul fast float %1085, %1080
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 1
  %1089 = extractvalue %dx.types.CBufRet.f32 %1087, 0
  %1090 = fsub fast float %998, %1089
  %1091 = fmul fast float %1090, %1088
  %1092 = call float @dx.op.unary.f32(i32 7, float %1091)  ; Saturate(value)
  %1093 = fmul fast float %1086, %915
  %1094 = fadd fast float %1086, %915
  %1095 = fmul fast float %1094, %924
  %1096 = fsub fast float %1095, %924
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1098 = and i32 %954, 128
  %1099 = icmp ne i32 %1098, 0
  %1100 = select i1 %1099, float %1097, float %1093
  %1101 = fmul fast float %1100, %1092
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 0
  %1104 = fcmp fast ugt float %1101, %1103
  br i1 %1104, label %1105, label %1003

; <label>:1105                                    ; preds = %1024
  %1106 = select i1 %1064, float %1101, float 0.000000e+00
  %1107 = fadd fast float %1106, %877
  %1108 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  br i1 %1064, label %1003, label %1109

; <label>:1109                                    ; preds = %1105
  %1110 = and i32 %954, 4
  %1111 = and i32 %954, 8
  %1112 = add i32 %910, 0
  %1113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1112, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1115 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1113, %dx.types.Handle %1114, float %1042, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float %1047, float %1049, float undef, float %1051, float %1053, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1119 = extractvalue %dx.types.ResRet.f32 %1115, 3
  %1120 = bitcast float %936 to i32
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = lshr i32 %1120, 8
  %1124 = and i32 %1123, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = fmul fast float %1119, %1122
  %1127 = fadd fast float %1126, %1125
  %1128 = fmul fast float %1127, 0x3F70101000000000
  %1129 = add i32 %911, 0
  %1130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1129, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1131 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1130, %dx.types.Handle %1114, float %1042, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float %1047, float %1049, float undef, float %1051, float %1053, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1131, 2
  %1135 = extractvalue %dx.types.ResRet.f32 %1131, 3
  %1136 = bitcast float %930 to i32
  %1137 = and i32 %1136, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = lshr i32 %1136, 8
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = lshr i32 %1136, 16
  %1143 = and i32 %1142, 255
  %1144 = uitofp i32 %1143 to float
  %1145 = fmul fast float %1144, 0x3F70101000000000
  %1146 = fmul fast float %1132, %1138
  %1147 = fadd fast float %1146, %1141
  %1148 = fmul fast float %1147, 0x3F70101000000000
  %1149 = fadd fast float %1133, -5.000000e-01
  %1150 = fadd fast float %1135, -5.000000e-01
  %1151 = fmul fast float %1149, %1145
  %1152 = fmul fast float %1150, %1145
  %1153 = fadd fast float %1151, 5.000000e-01
  %1154 = fadd fast float %1152, 5.000000e-01
  %1155 = fmul fast float %1116, %939
  %1156 = fmul fast float %1117, %940
  %1157 = fmul fast float %1118, %941
  %1158 = fmul fast float %1153, 2.000000e+00
  %1159 = fadd fast float %1158, -1.000000e+00
  %1160 = fmul fast float %1154, 2.000000e+00
  %1161 = fadd fast float %1160, -1.000000e+00
  %1162 = fadd fast float %1159, %1161
  %1163 = fmul fast float %1162, 5.000000e-01
  %1164 = fsub fast float %1159, %1161
  %1165 = fmul fast float %1164, 5.000000e-01
  %1166 = call float @dx.op.unary.f32(i32 6, float %1163)  ; FAbs(value)
  %1167 = fsub fast float 1.000000e+00, %1166
  %1168 = call float @dx.op.unary.f32(i32 6, float %1165)  ; FAbs(value)
  %1169 = fsub fast float %1167, %1168
  %1170 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1165, float %1169, float %1163, float %1165, float %1169)  ; Dot3(ax,ay,az,bx,by,bz)
  %1171 = call float @dx.op.unary.f32(i32 25, float %1170)  ; Rsqrt(value)
  %1172 = fmul fast float %1163, %1171
  %1173 = fmul fast float %1165, %1171
  %1174 = fmul fast float %1171, %1169
  %1175 = fmul fast float %1174, %904
  %1176 = fmul fast float %1174, %905
  %1177 = fmul fast float %1174, %906
  %1178 = fmul fast float %1172, %927
  %1179 = fmul fast float %1172, %928
  %1180 = fmul fast float %1172, %929
  %1181 = fadd fast float %1178, %1175
  %1182 = fadd fast float %1179, %1176
  %1183 = fadd fast float %1180, %1177
  %1184 = fmul fast float %1173, %933
  %1185 = fmul fast float %1173, %934
  %1186 = fmul fast float %1173, %935
  %1187 = fadd fast float %1181, %1184
  %1188 = fadd fast float %1182, %1185
  %1189 = fadd fast float %1183, %1186
  %1190 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float %1187, float %1188, float %1189)  ; Dot3(ax,ay,az,bx,by,bz)
  %1191 = call float @dx.op.unary.f32(i32 25, float %1190)  ; Rsqrt(value)
  %1192 = fmul fast float %1187, %1191
  %1193 = fmul fast float %1188, %1191
  %1194 = fmul fast float %1189, %1191
  %1195 = icmp ne i32 %1111, 0
  %1196 = select i1 %1195, float 1.000000e+00, float 0.000000e+00
  %1197 = fmul fast float %1101, %1196
  %1198 = and i32 %954, 1
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1200, label %1204

; <label>:1200                                    ; preds = %1109
  %1201 = fsub fast float %1192, %886
  %1202 = fsub fast float %1193, %887
  %1203 = fsub fast float %1194, %888
  br label %1204

; <label>:1204                                    ; preds = %1200, %1109
  %1205 = phi float [ %1201, %1200 ], [ %1192, %1109 ]
  %1206 = phi float [ %1202, %1200 ], [ %1193, %1109 ]
  %1207 = phi float [ %1203, %1200 ], [ %1194, %1109 ]
  %1208 = fmul float %1207, %1197
  %1209 = fmul float %1206, %1197
  %1210 = fmul float %1205, %1197
  %1211 = fadd fast float %1210, %886
  %1212 = fadd fast float %1209, %887
  %1213 = fadd fast float %1208, %888
  %1214 = icmp ne i32 %1110, 0
  %1215 = select i1 %1214, float 1.000000e+00, float 0.000000e+00
  %1216 = fmul fast float %1101, %1215
  %1217 = fsub fast float %1155, %893
  %1218 = fsub fast float %1156, %894
  %1219 = fsub fast float %1157, %895
  %1220 = fmul fast float %1217, %1216
  %1221 = fmul fast float %1218, %1216
  %1222 = fmul fast float %1219, %1216
  %1223 = fadd fast float %1220, %893
  %1224 = fadd fast float %1221, %894
  %1225 = fadd fast float %1222, %895
  %1226 = fsub fast float %1128, %892
  %1227 = fmul fast float %1226, %1216
  %1228 = fadd fast float %1227, %892
  %1229 = fmul fast float %1216, %882
  %1230 = fsub fast float %882, %1229
  %1231 = fmul fast float %1216, %881
  %1232 = fsub fast float %881, %1231
  %1233 = fadd fast float %1101, %891
  %1234 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1235 = fsub fast float %1148, %890
  %1236 = fmul fast float %1235, %1197
  %1237 = fadd fast float %1236, %890
  %1238 = fsub fast float %1134, %889
  %1239 = fmul fast float %1238, %1197
  %1240 = fadd fast float %1239, %889
  %1241 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1157, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1245 = fmul fast float %1244, %1241
  %1246 = fadd fast float %1245, %1243
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = bitcast float %942 to i32
  %1249 = and i32 %1248, 65535
  %1250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1249)  ; LegacyF16ToF32(value)
  %1251 = lshr i32 %1248, 16
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = fcmp fast oge float %1250, 0.000000e+00
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1256 = select i1 %1253, float %1250, float %1255
  %1257 = fadd fast float %1256, %1252
  %1258 = fsub fast float %1247, %880
  %1259 = fmul fast float %1258, %1101
  %1260 = fadd fast float %1259, %880
  %1261 = fmul fast float %1257, %1101
  %1262 = call float @dx.op.binary.f32(i32 35, float %879, float %1261)  ; FMax(a,b)
  %1263 = call float @dx.op.binary.f32(i32 35, float %878, float %1101)  ; FMax(a,b)
  %1264 = and i32 %954, 16
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1288, label %1266

; <label>:1266                                    ; preds = %1204
  %1267 = bitcast float %948 to i32
  %1268 = add i32 %945, 0
  %1269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1268, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1270 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1269, %dx.types.Handle %1114, float %1042, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float %1047, float %1049, float undef, float %1051, float %1053, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.ResRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.ResRet.f32 %1270, 2
  %1274 = and i32 %1267, 65535
  %1275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1274)  ; LegacyF16ToF32(value)
  %1276 = fmul fast float %1271, %939
  %1277 = fmul fast float %1272, %940
  %1278 = fmul fast float %1273, %941
  %1279 = and i32 %954, 16384
  %1280 = icmp ne i32 %1279, 0
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1283 = select i1 %1280, float %1282, float 1.000000e+00
  %1284 = fmul fast float %1283, %1275
  %1285 = fmul fast float %1276, %1284
  %1286 = fmul fast float %1277, %1284
  %1287 = fmul fast float %1278, %1284
  br label %1288

; <label>:1288                                    ; preds = %1266, %1204
  %1289 = phi float [ %1285, %1266 ], [ 0.000000e+00, %1204 ]
  %1290 = phi float [ %1286, %1266 ], [ 0.000000e+00, %1204 ]
  %1291 = phi float [ %1287, %1266 ], [ 0.000000e+00, %1204 ]
  %1292 = fsub fast float %1289, %883
  %1293 = fsub fast float %1290, %884
  %1294 = fsub fast float %1291, %885
  %1295 = fmul fast float %1292, %1101
  %1296 = fmul fast float %1293, %1101
  %1297 = fmul fast float %1294, %1101
  %1298 = fadd fast float %1295, %883
  %1299 = fadd fast float %1296, %884
  %1300 = fadd fast float %1297, %885
  br label %1003

; <label>:1301                                    ; preds = %1003
  br label %1302

; <label>:1302                                    ; preds = %1301, %774
  %1303 = phi float [ 0.000000e+00, %774 ], [ %1004, %1301 ]
  %1304 = phi float [ %784, %774 ], [ %1005, %1301 ]
  %1305 = phi float [ %789, %774 ], [ %1006, %1301 ]
  %1306 = phi float [ %787, %774 ], [ %1007, %1301 ]
  %1307 = phi float [ 0.000000e+00, %774 ], [ %1008, %1301 ]
  %1308 = phi float [ 0.000000e+00, %774 ], [ %1009, %1301 ]
  %1309 = phi float [ %792, %774 ], [ %1010, %1301 ]
  %1310 = phi float [ %793, %774 ], [ %1011, %1301 ]
  %1311 = phi float [ %794, %774 ], [ %1012, %1301 ]
  %1312 = phi float [ %820, %774 ], [ %1013, %1301 ]
  %1313 = phi float [ %821, %774 ], [ %1014, %1301 ]
  %1314 = phi float [ %822, %774 ], [ %1015, %1301 ]
  %1315 = phi float [ %786, %774 ], [ %1016, %1301 ]
  %1316 = phi float [ %785, %774 ], [ %1017, %1301 ]
  %1317 = phi float [ 0.000000e+00, %774 ], [ %1018, %1301 ]
  %1318 = phi float [ %783, %774 ], [ %1019, %1301 ]
  %1319 = phi float [ %777, %774 ], [ %1020, %1301 ]
  %1320 = phi float [ %778, %774 ], [ %1021, %1301 ]
  %1321 = phi float [ %779, %774 ], [ %1022, %1301 ]
  %1322 = call float @dx.op.dot3.f32(i32 55, float %1312, float %1313, float %1314, float %1312, float %1313, float %1314)  ; Dot3(ax,ay,az,bx,by,bz)
  %1323 = call float @dx.op.unary.f32(i32 25, float %1322)  ; Rsqrt(value)
  %1324 = fmul fast float %1323, %1312
  %1325 = fmul fast float %1323, %1313
  %1326 = fmul fast float %1323, %1314
  %1327 = fadd fast float %1317, %784
  %1328 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  %1329 = call float @dx.op.dot3.f32(i32 55, float %1324, float %1325, float %1326, float %1324, float %1325, float %1326)  ; Dot3(ax,ay,az,bx,by,bz)
  %1330 = call float @dx.op.unary.f32(i32 25, float %1329)  ; Rsqrt(value)
  %1331 = fmul fast float %1330, %1324
  %1332 = fmul fast float %1330, %1325
  %1333 = fmul fast float %1330, %1326
  %1334 = fadd fast float %1318, 0xBFB99999A0000000
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = fmul fast float %1335, 0x3FF1C71C80000000
  %1337 = call float @dx.op.binary.f32(i32 36, float %1318, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1338 = fsub fast float 1.000000e+00, %1336
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = fmul fast float %1339, %1319
  %1341 = fmul fast float %1339, %1320
  %1342 = fmul fast float %1339, %1321
  %1343 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1344 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1345 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1346 = fmul fast float %1336, %1319
  %1347 = fmul fast float %1336, %1320
  %1348 = fmul fast float %1336, %1321
  %1349 = fadd fast float %1346, %1337
  %1350 = fadd fast float %1347, %1337
  %1351 = fadd fast float %1348, %1337
  %1352 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1353 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1354 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  %1355 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.i32 %1356, 3
  %1358 = and i32 %1357, 8
  %1359 = icmp ne i32 %1358, 0
  %1360 = call float @dx.op.binary.f32(i32 35, float %1343, float %1319)  ; FMax(a,b)
  %1361 = call float @dx.op.binary.f32(i32 35, float %1344, float %1319)  ; FMax(a,b)
  %1362 = call float @dx.op.binary.f32(i32 35, float %1345, float %1319)  ; FMax(a,b)
  %1363 = call float @dx.op.dot3.f32(i32 55, float %1343, float %1344, float %1345, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1364 = select i1 %171, float %1319, float %1343
  %1365 = select i1 %171, float %1363, float %1344
  %1366 = select i1 %171, float 1.000000e+00, float %1345
  %1367 = select i1 %1359, float %1360, float %1364
  %1368 = select i1 %1359, float %1361, float %1365
  %1369 = select i1 %1359, float %1362, float %1366
  %1370 = and i32 %147, 3
  %1371 = select i1 %141, i32 %1370, i32 0
  %1372 = icmp eq i32 %1371, 1
  br i1 %1372, label %1373, label %1449

; <label>:1373                                    ; preds = %1302
  %1374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.CBufRet.f32 %1374, 1
  %1377 = fadd fast float %1375, %110
  %1378 = fadd fast float %1376, %111
  %1379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.CBufRet.f32 %1379, 1
  %1382 = fsub fast float %1377, %1380
  %1383 = fsub fast float %1378, %1381
  %1384 = fmul fast float %1382, %1382
  %1385 = fmul fast float %1383, %1383
  %1386 = fadd fast float %1384, %1385
  %1387 = call float @dx.op.unary.f32(i32 24, float %1386)  ; Sqrt(value)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1379, 2
  %1389 = fcmp fast olt float %1387, %1388
  br i1 %1389, label %1390, label %1443

; <label>:1390                                    ; preds = %1373
  %1391 = extractvalue %dx.types.CBufRet.f32 %1374, 2
  %1392 = fadd fast float %1391, %112
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1396 = extractvalue %dx.types.CBufRet.f32 %1395, 0
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.CBufRet.f32 %1393, 1
  %1400 = extractvalue %dx.types.CBufRet.f32 %1395, 1
  %1401 = extractvalue %dx.types.CBufRet.f32 %1397, 1
  %1402 = extractvalue %dx.types.CBufRet.f32 %1393, 3
  %1403 = extractvalue %dx.types.CBufRet.f32 %1395, 3
  %1404 = extractvalue %dx.types.CBufRet.f32 %1397, 3
  %1405 = fadd fast float %1402, %1377
  %1406 = fadd fast float %1403, %1378
  %1407 = fadd fast float %1392, %1404
  %1408 = fmul fast float %1405, %1394
  %1409 = call float @dx.op.tertiary.f32(i32 46, float %1406, float %1396, float %1408)  ; FMad(a,b,c)
  %1410 = call float @dx.op.tertiary.f32(i32 46, float %1407, float %1398, float %1409)  ; FMad(a,b,c)
  %1411 = fmul fast float %1405, %1399
  %1412 = call float @dx.op.tertiary.f32(i32 46, float %1406, float %1400, float %1411)  ; FMad(a,b,c)
  %1413 = call float @dx.op.tertiary.f32(i32 46, float %1407, float %1401, float %1412)  ; FMad(a,b,c)
  %1414 = fsub fast float %1410, %1402
  %1415 = fsub fast float %1413, %1403
  %1416 = fsub fast float %1414, %1380
  %1417 = fadd fast float %1416, %1388
  %1418 = fsub fast float %1415, %1381
  %1419 = fadd fast float %1418, %1388
  %1420 = extractvalue %dx.types.CBufRet.f32 %1379, 3
  %1421 = fmul fast float %1417, %1420
  %1422 = fmul fast float %1419, %1420
  %1423 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  %1424 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  %1425 = fsub fast float 1.000000e+00, %1423
  %1426 = fsub fast float 1.000000e+00, %1424
  %1427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %32, float %1425, float %1426, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = fcmp fast ugt float %1428, 0.000000e+00
  br i1 %1429, label %1430, label %1443

; <label>:1430                                    ; preds = %1390
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 2
  %1433 = fmul fast float %1432, %1428
  %1434 = extractvalue %dx.types.CBufRet.f32 %1431, 3
  %1435 = fadd fast float %1434, %1433
  %1436 = extractvalue %dx.types.CBufRet.f32 %1397, 2
  %1437 = fadd fast float %1435, %1404
  %1438 = fmul fast float %1410, %1398
  %1439 = call float @dx.op.tertiary.f32(i32 46, float %1413, float %1401, float %1438)  ; FMad(a,b,c)
  %1440 = call float @dx.op.tertiary.f32(i32 46, float %1437, float %1436, float %1439)  ; FMad(a,b,c)
  %1441 = fsub fast float %1440, %1404
  %1442 = fsub fast float %1441, %1391
  br label %1443

; <label>:1443                                    ; preds = %1430, %1390, %1373
  %1444 = phi i1 [ true, %1430 ], [ false, %1390 ], [ false, %1373 ]
  %1445 = phi float [ %1442, %1430 ], [ -1.310720e+05, %1390 ], [ -1.310720e+05, %1373 ]
  %1446 = fsub fast float %1445, %112
  %1447 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  %1448 = select i1 %1444, float %1447, float 1.000000e+00
  br label %1449

; <label>:1449                                    ; preds = %1443, %1302
  %1450 = phi float [ %1448, %1443 ], [ 0.000000e+00, %1302 ]
  %1451 = icmp eq i32 %1371, 3
  %1452 = select i1 %1451, float 1.000000e+00, float %1450
  %1453 = call float @dx.op.binary.f32(i32 35, float %1303, float %1452)  ; FMax(a,b)
  %1454 = call float @dx.op.unary.f32(i32 7, float %1453)  ; Saturate(value)
  %1455 = fcmp fast une float %1454, 0.000000e+00
  %1456 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %1457 = call float @dx.op.unary.f32(i32 25, float %1456)  ; Rsqrt(value)
  br i1 %1455, label %1465, label %1458

; <label>:1458                                    ; preds = %1449
  %1459 = fmul fast float %1457, %110
  %1460 = fmul fast float %1457, %111
  %1461 = fmul fast float %1457, %112
  %1462 = fsub fast float -0.000000e+00, %1459
  %1463 = fsub fast float -0.000000e+00, %1460
  %1464 = fsub fast float -0.000000e+00, %1461
  br label %1633

; <label>:1465                                    ; preds = %1449
  %1466 = fmul fast float %110, %1457
  %1467 = fsub fast float -0.000000e+00, %1466
  %1468 = fmul fast float %111, %1457
  %1469 = fsub fast float -0.000000e+00, %1468
  %1470 = fmul fast float %112, %1457
  %1471 = fsub fast float -0.000000e+00, %1470
  %1472 = call float @dx.op.dot3.f32(i32 55, float %1467, float %1469, float %1471, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = fmul fast float %1454, 2.500000e+00
  %1474 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  %1475 = fmul fast float %1454, 0x4013FFFFE0000000
  %1476 = fadd fast float %1475, 0xBFFFFFFFE0000000
  %1477 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1478 = fmul fast float %1454, 0x4004000020000000
  %1479 = fadd fast float %1478, 0xBFF8000040000000
  %1480 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1481 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  %1482 = fmul fast float %1334, 1.000000e+01
  %1483 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  %1484 = fmul fast float %1483, 2.000000e+00
  %1485 = fsub fast float 3.000000e+00, %1484
  %1486 = fmul fast float %1483, %1483
  %1487 = fmul fast float %1486, %1485
  %1488 = fsub fast float 1.000000e+00, %1487
  %1489 = fsub fast float 0x3FE3333340000000, %1355
  %1490 = fmul fast float %1489, 0x400AAAAAA0000000
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1492 = fmul fast float %1488, %1491
  %1493 = fmul fast float %1367, 0x3FEA2B8620000000
  %1494 = fmul fast float %1368, 0x3FEA2B8620000000
  %1495 = fmul fast float %1369, 0x3FEA2B8620000000
  %1496 = fadd fast float %1493, 0x3FC81DFBA0000000
  %1497 = fmul fast float %1496, %1367
  %1498 = fadd fast float %1497, 0x3F910E6020000000
  %1499 = fadd fast float %1494, 0x3FC81DFBA0000000
  %1500 = fmul fast float %1499, %1368
  %1501 = fadd fast float %1500, 0x3F910E6020000000
  %1502 = fadd fast float %1495, 0x3FC81DFBA0000000
  %1503 = fmul fast float %1502, %1369
  %1504 = fadd fast float %1503, 0x3F910E6020000000
  %1505 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1506 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1507 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1508 = fsub fast float %1505, %1367
  %1509 = fsub fast float %1506, %1368
  %1510 = fsub fast float %1507, %1369
  %1511 = fmul fast float %1508, %1481
  %1512 = fmul fast float %1511, %1492
  %1513 = fmul fast float %1509, %1481
  %1514 = fmul fast float %1513, %1492
  %1515 = fmul fast float %1510, %1481
  %1516 = fmul fast float %1515, %1492
  %1517 = fadd fast float %1512, %1367
  %1518 = fadd fast float %1514, %1368
  %1519 = fadd fast float %1516, %1369
  %1520 = fmul fast float %1315, %1315
  %1521 = fmul fast float %1520, %1520
  %1522 = fadd fast float %1477, 1.000000e+00
  %1523 = fsub fast float %1522, %1492
  %1524 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1525 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1526 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1527 = fsub fast float 1.000000e+00, %1521
  %1528 = call float @dx.op.binary.f32(i32 36, float %1524, float %1527)  ; FMin(a,b)
  %1529 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1530 = call float @dx.op.binary.f32(i32 35, float %1528, float %1529)  ; FMax(a,b)
  %1531 = fadd fast float %1526, 0xBFE4CCCCC0000000
  %1532 = fmul fast float %1531, 0x4006DB6DA0000000
  %1533 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  %1534 = fmul fast float %1533, 2.000000e+00
  %1535 = fsub fast float 3.000000e+00, %1534
  %1536 = bitcast float %1352 to i32
  %1537 = ashr i32 %1536, 1
  %1538 = add nsw i32 %1537, 532487669
  %1539 = bitcast i32 %1538 to float
  %1540 = fsub fast float 1.000000e+00, %1539
  %1541 = bitcast float %1540 to i32
  %1542 = sub nsw i32 2129859010, %1541
  %1543 = bitcast i32 %1542 to float
  %1544 = fmul fast float %1543, 2.000000e+00
  %1545 = bitcast float %1353 to i32
  %1546 = ashr i32 %1545, 1
  %1547 = add nsw i32 %1546, 532487669
  %1548 = bitcast i32 %1547 to float
  %1549 = fsub fast float 1.000000e+00, %1548
  %1550 = bitcast float %1549 to i32
  %1551 = sub nsw i32 2129859010, %1550
  %1552 = bitcast i32 %1551 to float
  %1553 = fmul fast float %1552, 2.000000e+00
  %1554 = bitcast float %1354 to i32
  %1555 = ashr i32 %1554, 1
  %1556 = add nsw i32 %1555, 532487669
  %1557 = bitcast i32 %1556 to float
  %1558 = fsub fast float 1.000000e+00, %1557
  %1559 = bitcast float %1558 to i32
  %1560 = sub nsw i32 2129859010, %1559
  %1561 = bitcast i32 %1560 to float
  %1562 = fmul fast float %1561, 2.000000e+00
  %1563 = fsub fast float 0x4002A9FBE0000000, %1544
  %1564 = fadd fast float %1544, 0x3FD54FDF00000000
  %1565 = bitcast float %1564 to i32
  %1566 = sub nsw i32 2129859010, %1565
  %1567 = bitcast i32 %1566 to float
  %1568 = fmul fast float %1567, %1563
  %1569 = fmul fast float %1568, %1568
  %1570 = fsub fast float 0x4002A9FBE0000000, %1553
  %1571 = fadd fast float %1553, 0x3FD54FDF00000000
  %1572 = bitcast float %1571 to i32
  %1573 = sub nsw i32 2129859010, %1572
  %1574 = bitcast i32 %1573 to float
  %1575 = fmul fast float %1574, %1570
  %1576 = fmul fast float %1575, %1575
  %1577 = fsub fast float 0x4002A9FBE0000000, %1562
  %1578 = fadd fast float %1562, 0x3FD54FDF00000000
  %1579 = bitcast float %1578 to i32
  %1580 = sub nsw i32 2129859010, %1579
  %1581 = bitcast i32 %1580 to float
  %1582 = fmul fast float %1581, %1577
  %1583 = fmul fast float %1582, %1582
  %1584 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1569)  ; FMax(a,b)
  %1585 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1576)  ; FMax(a,b)
  %1586 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1583)  ; FMax(a,b)
  %1587 = fsub fast float 1.000000e+00, %1472
  %1588 = fadd fast float %1587, %1488
  %1589 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1590 = fsub fast float 1.000000e+00, %1452
  %1591 = fmul fast float %1530, %1590
  %1592 = fmul fast float %1533, %1533
  %1593 = fmul fast float %1592, %1591
  %1594 = fmul fast float %1593, %1535
  %1595 = fmul fast float %1590, 0xBFE99999A0000000
  %1596 = fmul fast float %1595, %1481
  %1597 = fmul fast float %1596, %1492
  %1598 = fadd fast float %1597, 1.000000e+00
  %1599 = fadd fast float %1355, -1.000000e+00
  %1600 = fmul fast float %1598, %1599
  %1601 = fadd fast float %1600, 1.000000e+00
  %1602 = fsub fast float %1584, %1352
  %1603 = fsub fast float %1585, %1353
  %1604 = fsub fast float %1586, %1354
  %1605 = fmul fast float %1594, %1602
  %1606 = fmul fast float %1594, %1603
  %1607 = fmul fast float %1594, %1604
  %1608 = fadd fast float %1605, %1352
  %1609 = fadd fast float %1606, %1353
  %1610 = fadd fast float %1607, %1354
  %1611 = fsub fast float %43, %1331
  %1612 = fsub fast float %44, %1332
  %1613 = fsub fast float %45, %1333
  %1614 = fmul fast float %1594, %1611
  %1615 = fmul fast float %1594, %1612
  %1616 = fmul fast float %1594, %1613
  %1617 = fadd fast float %1614, %1331
  %1618 = fadd fast float %1615, %1332
  %1619 = fadd fast float %1616, %1333
  %1620 = fmul fast float %1594, %1589
  %1621 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1622 = fsub fast float 1.000000e+00, %1621
  %1623 = fmul fast float %1620, %1622
  %1624 = fadd fast float %1623, %1621
  %1625 = fsub fast float 1.000000e+00, %1315
  %1626 = fmul fast float %1594, %1625
  %1627 = fadd fast float %1626, %1315
  %1628 = call float @dx.op.dot3.f32(i32 55, float %1617, float %1618, float %1619, float %1617, float %1618, float %1619)  ; Dot3(ax,ay,az,bx,by,bz)
  %1629 = call float @dx.op.unary.f32(i32 25, float %1628)  ; Rsqrt(value)
  %1630 = fmul fast float %1617, %1629
  %1631 = fmul fast float %1618, %1629
  %1632 = fmul fast float %1619, %1629
  br label %1633

; <label>:1633                                    ; preds = %1465, %1458
  %1634 = phi float [ %1464, %1458 ], [ %1471, %1465 ]
  %1635 = phi float [ %1463, %1458 ], [ %1469, %1465 ]
  %1636 = phi float [ %1462, %1458 ], [ %1467, %1465 ]
  %1637 = phi float [ %1461, %1458 ], [ %1470, %1465 ]
  %1638 = phi float [ %1460, %1458 ], [ %1468, %1465 ]
  %1639 = phi float [ %1459, %1458 ], [ %1466, %1465 ]
  %1640 = phi float [ %1367, %1458 ], [ %1517, %1465 ]
  %1641 = phi float [ %1368, %1458 ], [ %1518, %1465 ]
  %1642 = phi float [ %1369, %1458 ], [ %1519, %1465 ]
  %1643 = phi float [ %1331, %1458 ], [ %1630, %1465 ]
  %1644 = phi float [ %1332, %1458 ], [ %1631, %1465 ]
  %1645 = phi float [ %1333, %1458 ], [ %1632, %1465 ]
  %1646 = phi float [ %1352, %1458 ], [ %1608, %1465 ]
  %1647 = phi float [ %1353, %1458 ], [ %1609, %1465 ]
  %1648 = phi float [ %1354, %1458 ], [ %1610, %1465 ]
  %1649 = phi float [ %1355, %1458 ], [ %1624, %1465 ]
  %1650 = phi float [ %1315, %1458 ], [ %1627, %1465 ]
  %1651 = select i1 %171, float 0.000000e+00, float %1648
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1643, float %1644, float %1645, float %1636, float %1635, float %1634)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  %1654 = fsub fast float 1.000000e+00, %1650
  %1655 = bitcast float %1654 to i32
  %1656 = sub nsw i32 2129859010, %1655
  %1657 = bitcast i32 %1656 to float
  %1658 = fmul fast float %1328, %1309
  %1659 = fmul fast float %1328, %1310
  %1660 = fmul fast float %1328, %1311
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 3
  %1663 = fcmp fast oeq float %1662, 0.000000e+00
  br i1 %1663, label %3153, label %1664

; <label>:1664                                    ; preds = %1633
  %1665 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1666 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1667 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1669 = extractvalue %dx.types.CBufRet.f32 %1668, 0
  %1670 = extractvalue %dx.types.CBufRet.f32 %1668, 1
  %1671 = extractvalue %dx.types.CBufRet.f32 %1668, 2
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  %1674 = extractvalue %dx.types.CBufRet.f32 %1672, 1
  %1675 = call float @dx.op.dot3.f32(i32 55, float %1669, float %1670, float %1671, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1676 = select i1 %171, float %1673, float %1669
  %1677 = select i1 %171, float %1675, float %1670
  %1678 = select i1 %171, float %1674, float %1671
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 2
  %1681 = fmul fast float %1680, %43
  %1682 = fmul fast float %1680, %44
  %1683 = fmul fast float %1680, %45
  %1684 = fadd fast float %1681, %110
  %1685 = fadd fast float %1682, %111
  %1686 = fadd fast float %1683, %112
  %1687 = fcmp fast olt float %1662, 0.000000e+00
  br i1 %1687, label %2783, label %1688

; <label>:1688                                    ; preds = %1664
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 0
  %1691 = extractvalue %dx.types.CBufRet.f32 %1689, 1
  %1692 = extractvalue %dx.types.CBufRet.f32 %1689, 2
  %1693 = extractvalue %dx.types.CBufRet.f32 %1689, 3
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1697 = extractvalue %dx.types.CBufRet.f32 %1694, 2
  %1698 = extractvalue %dx.types.CBufRet.f32 %1694, 3
  %1699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1700 = extractvalue %dx.types.CBufRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.CBufRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.CBufRet.f32 %1699, 2
  %1703 = extractvalue %dx.types.CBufRet.f32 %1699, 3
  %1704 = fmul fast float %1690, %1684
  %1705 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %1691, float %1704)  ; FMad(a,b,c)
  %1706 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %1692, float %1705)  ; FMad(a,b,c)
  %1707 = fadd fast float %1706, %1693
  %1708 = fmul fast float %1695, %1684
  %1709 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %1696, float %1708)  ; FMad(a,b,c)
  %1710 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %1697, float %1709)  ; FMad(a,b,c)
  %1711 = fadd fast float %1710, %1698
  %1712 = fmul fast float %1700, %1684
  %1713 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %1701, float %1712)  ; FMad(a,b,c)
  %1714 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %1702, float %1713)  ; FMad(a,b,c)
  %1715 = fadd fast float %1714, %1703
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 0
  %1718 = extractvalue %dx.types.CBufRet.f32 %1716, 1
  %1719 = extractvalue %dx.types.CBufRet.f32 %1716, 3
  %1720 = fmul fast float %1719, %1707
  %1721 = fmul fast float %1719, %1711
  %1722 = fadd fast float %1720, %1717
  %1723 = fadd fast float %1721, %1718
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.CBufRet.f32 %1724, 3
  %1728 = fmul fast float %1727, %1707
  %1729 = fmul fast float %1727, %1711
  %1730 = fadd fast float %1728, %1725
  %1731 = fadd fast float %1729, %1726
  %1732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.f32 %1732, 1
  %1734 = fsub fast float %1733, %1715
  %1735 = extractvalue %dx.types.CBufRet.f32 %1732, 2
  %1736 = fmul fast float %1734, %1735
  %1737 = fsub fast float 1.000000e+00, %1736
  %1738 = call float @dx.op.unary.f32(i32 7, float %1737)  ; Saturate(value)
  %1739 = extractvalue %dx.types.CBufRet.f32 %1724, 2
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 2
  %1742 = fadd fast float %1741, %1739
  %1743 = fcmp fast ogt float %1742, 0.000000e+00
  br i1 %1743, label %1744, label %1768

; <label>:1744                                    ; preds = %1688
  %1745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.f32 %1745, 0
  %1747 = extractvalue %dx.types.CBufRet.f32 %1745, 1
  %1748 = fsub fast float %1730, %1746
  %1749 = fsub fast float %1731, %1747
  %1750 = fcmp fast olt float %1748, 0.000000e+00
  %1751 = fcmp fast olt float %1749, 0.000000e+00
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 0
  %1754 = extractvalue %dx.types.CBufRet.f32 %1752, 1
  %1755 = extractvalue %dx.types.CBufRet.f32 %1752, 2
  %1756 = extractvalue %dx.types.CBufRet.f32 %1752, 3
  %1757 = select i1 %1750, float %1753, float %1755
  %1758 = select i1 %1751, float %1754, float %1756
  %1759 = fmul fast float %1757, %1748
  %1760 = fmul fast float %1758, %1749
  %1761 = call float @dx.op.unary.f32(i32 6, float %1759)  ; FAbs(value)
  %1762 = call float @dx.op.unary.f32(i32 6, float %1760)  ; FAbs(value)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1764 = call float @dx.op.binary.f32(i32 35, float %1761, float %1762)  ; FMax(a,b)
  %1765 = fsub fast float %1763, %1764
  %1766 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1767 = fmul fast float %1766, %1738
  br label %1768

; <label>:1768                                    ; preds = %1744, %1688
  %1769 = phi float [ %1767, %1744 ], [ 0.000000e+00, %1688 ]
  %1770 = extractvalue %dx.types.CBufRet.f32 %1716, 2
  %1771 = extractvalue %dx.types.CBufRet.f32 %1740, 1
  %1772 = fadd fast float %1771, %1770
  %1773 = fcmp fast ogt float %1772, 0.000000e+00
  %1774 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  br i1 %1773, label %1775, label %1798

; <label>:1775                                    ; preds = %1768
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.CBufRet.f32 %1776, 1
  %1779 = fsub fast float %1722, %1777
  %1780 = fsub fast float %1723, %1778
  %1781 = fcmp fast olt float %1779, 0.000000e+00
  %1782 = fcmp fast olt float %1780, 0.000000e+00
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 0
  %1785 = extractvalue %dx.types.CBufRet.f32 %1783, 1
  %1786 = extractvalue %dx.types.CBufRet.f32 %1783, 2
  %1787 = extractvalue %dx.types.CBufRet.f32 %1783, 3
  %1788 = select i1 %1781, float %1784, float %1786
  %1789 = select i1 %1782, float %1785, float %1787
  %1790 = fmul fast float %1788, %1779
  %1791 = fmul fast float %1789, %1780
  %1792 = call float @dx.op.unary.f32(i32 6, float %1790)  ; FAbs(value)
  %1793 = call float @dx.op.unary.f32(i32 6, float %1791)  ; FAbs(value)
  %1794 = call float @dx.op.binary.f32(i32 35, float %1792, float %1793)  ; FMax(a,b)
  %1795 = fsub fast float %1774, %1794
  %1796 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  %1797 = fmul fast float %1796, %1738
  br label %1798

; <label>:1798                                    ; preds = %1775, %1768
  %1799 = phi float [ %1797, %1775 ], [ 0.000000e+00, %1768 ]
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 1
  %1802 = call float @dx.op.unary.f32(i32 7, float %1801)  ; Saturate(value)
  %1803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1803, 0
  %1805 = extractvalue %dx.types.CBufRet.f32 %1803, 1
  %1806 = fsub fast float %1707, %1804
  %1807 = fsub fast float %1711, %1805
  %1808 = fcmp fast olt float %1806, 0.000000e+00
  %1809 = fcmp fast olt float %1807, 0.000000e+00
  %1810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1811 = extractvalue %dx.types.CBufRet.f32 %1810, 0
  %1812 = extractvalue %dx.types.CBufRet.f32 %1810, 1
  %1813 = extractvalue %dx.types.CBufRet.f32 %1810, 2
  %1814 = extractvalue %dx.types.CBufRet.f32 %1810, 3
  %1815 = select i1 %1808, float %1811, float %1813
  %1816 = select i1 %1809, float %1812, float %1814
  %1817 = fmul fast float %1815, %1806
  %1818 = fmul fast float %1816, %1807
  %1819 = call float @dx.op.unary.f32(i32 6, float %1817)  ; FAbs(value)
  %1820 = call float @dx.op.unary.f32(i32 6, float %1818)  ; FAbs(value)
  %1821 = call float @dx.op.binary.f32(i32 35, float %1819, float %1820)  ; FMax(a,b)
  %1822 = fsub fast float %1774, %1821
  %1823 = call float @dx.op.unary.f32(i32 7, float %1822)  ; Saturate(value)
  %1824 = call float @dx.op.binary.f32(i32 36, float %1823, float %1802)  ; FMin(a,b)
  %1825 = fmul fast float %1824, %1738
  %1826 = fsub fast float %1799, %1825
  %1827 = fsub fast float %1769, %1799
  %1828 = fsub fast float %1827, %1825
  %1829 = call float @dx.op.binary.f32(i32 35, float %1799, float %1769)  ; FMax(a,b)
  %1830 = call float @dx.op.binary.f32(i32 35, float %1825, float %1829)  ; FMax(a,b)
  %1831 = fcmp fast olt float %1830, 1.000000e+00
  br i1 %1831, label %1832, label %2230, !dx.controlflow.hints !69

; <label>:1832                                    ; preds = %1798
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 0
  %1835 = fcmp fast une float %1834, 0.000000e+00
  br i1 %1835, label %1836, label %2230, !dx.controlflow.hints !70

; <label>:1836                                    ; preds = %1832
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1840 = extractvalue %dx.types.CBufRet.f32 %1837, 2
  %1841 = extractvalue %dx.types.CBufRet.f32 %1837, 3
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 0
  %1844 = extractvalue %dx.types.CBufRet.f32 %1842, 1
  %1845 = extractvalue %dx.types.CBufRet.f32 %1842, 2
  %1846 = extractvalue %dx.types.CBufRet.f32 %1842, 3
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.CBufRet.f32 %1847, 1
  %1850 = extractvalue %dx.types.CBufRet.f32 %1847, 2
  %1851 = extractvalue %dx.types.CBufRet.f32 %1847, 3
  %1852 = fmul fast float %1838, %1684
  %1853 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %1839, float %1852)  ; FMad(a,b,c)
  %1854 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %1840, float %1853)  ; FMad(a,b,c)
  %1855 = fadd fast float %1854, %1841
  %1856 = fmul fast float %1843, %1684
  %1857 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %1844, float %1856)  ; FMad(a,b,c)
  %1858 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %1845, float %1857)  ; FMad(a,b,c)
  %1859 = fadd fast float %1858, %1846
  %1860 = fmul fast float %1848, %1684
  %1861 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %1849, float %1860)  ; FMad(a,b,c)
  %1862 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %1850, float %1861)  ; FMad(a,b,c)
  %1863 = fadd fast float %1862, %1851
  %1864 = fcmp fast oge float %1855, 1.000000e+00
  %1865 = fcmp fast oge float %1859, 1.000000e+00
  %1866 = or i1 %1864, %1865
  %1867 = fcmp fast olt float %1855, 0.000000e+00
  %1868 = fcmp fast olt float %1859, 0.000000e+00
  %1869 = or i1 %1867, %1868
  %1870 = or i1 %1866, %1869
  br i1 %1870, label %2230, label %1871, !dx.controlflow.hints !71

; <label>:1871                                    ; preds = %1836
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.CBufRet.f32 %1872, 1
  %1875 = extractvalue %dx.types.CBufRet.f32 %1872, 2
  %1876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.i32 %1876, 2
  %1878 = uitofp i32 %1877 to float
  %1879 = extractvalue %dx.types.CBufRet.i32 %1876, 3
  %1880 = uitofp i32 %1879 to float
  %1881 = extractvalue %dx.types.CBufRet.f32 %1872, 3
  %1882 = fmul fast float %1881, 2.000000e+00
  %1883 = fsub fast float %1855, %1873
  %1884 = fsub fast float %1859, %1874
  %1885 = fmul fast float %1882, %1883
  %1886 = fmul fast float %1882, %1884
  %1887 = fdiv fast float 1.000000e+00, %1667
  %1888 = fmul fast float %1886, %1887
  %1889 = call float @dx.op.unary.f32(i32 6, float %1888)  ; FAbs(value)
  %1890 = fmul fast float %1875, %1686
  %1891 = fmul fast float %1890, %1882
  %1892 = call float @dx.op.unary.f32(i32 6, float %1891)  ; FAbs(value)
  %1893 = call float @dx.op.unary.f32(i32 6, float %1885)  ; FAbs(value)
  %1894 = call float @dx.op.binary.f32(i32 35, float %1892, float %1889)  ; FMax(a,b)
  %1895 = call float @dx.op.binary.f32(i32 35, float %1893, float %1894)  ; FMax(a,b)
  %1896 = fmul fast float %1895, 2.000000e+00
  %1897 = call float @dx.op.unary.f32(i32 23, float %1896)  ; Log(value)
  %1898 = call float @dx.op.binary.f32(i32 35, float %1897, float %1878)  ; FMax(a,b)
  %1899 = call float @dx.op.unary.f32(i32 22, float %1898)  ; Frc(value)
  %1900 = fadd fast float %1899, 0xBFEA666660000000
  %1901 = fmul fast float %1900, 8.000000e+00
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = call float @dx.op.unary.f32(i32 27, float %1898)  ; Round_ni(value)
  %1904 = fadd fast float %1903, %1902
  %1905 = call float @dx.op.binary.f32(i32 36, float %1904, float %1880)  ; FMin(a,b)
  %1906 = call float @dx.op.unary.f32(i32 27, float %1905)  ; Round_ni(value)
  %1907 = fsub fast float -0.000000e+00, %1906
  %1908 = call float @dx.op.unary.f32(i32 21, float %1907)  ; Exp(value)
  %1909 = fmul fast float %1908, %1882
  %1910 = fmul fast float %1909, %1855
  %1911 = fmul fast float %1909, %1859
  %1912 = fmul fast float %1910, 2.500000e-01
  %1913 = fmul fast float %1911, 2.500000e-01
  %1914 = fadd fast float %1912, 5.000000e-01
  %1915 = fadd fast float %1913, 5.000000e-01
  %1916 = fsub fast float %1880, %1878
  %1917 = fptoui float %1916 to i32
  %1918 = add i32 %1917, 320
  %1919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 %1918)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = extractvalue %dx.types.CBufRet.f32 %1919, 0
  %1921 = extractvalue %dx.types.CBufRet.f32 %1919, 1
  %1922 = fcmp fast une float %1905, %1880
  %1923 = fsub fast float %1855, %1920
  %1924 = fsub fast float %1859, %1921
  %1925 = call float @dx.op.unary.f32(i32 6, float %1923)  ; FAbs(value)
  %1926 = call float @dx.op.unary.f32(i32 6, float %1924)  ; FAbs(value)
  %1927 = fmul fast float %1925, %1909
  %1928 = fmul fast float %1926, %1909
  %1929 = fcmp fast olt float %1927, 1.000000e+00
  %1930 = fcmp fast olt float %1928, 1.000000e+00
  %1931 = and i1 %1929, %1930
  %1932 = or i1 %1922, %1931
  br i1 %1932, label %1933, label %2230, !dx.controlflow.hints !72

; <label>:1933                                    ; preds = %1871
  %1934 = fmul fast float %1911, 5.000000e-01
  %1935 = fmul fast float %1910, 5.000000e-01
  %1936 = fadd fast float %1934, 5.000000e-01
  %1937 = fadd fast float %1935, 5.000000e-01
  %1938 = sitofp i32 %1877 to float
  %1939 = fsub fast float %1905, %1938
  %1940 = call float @dx.op.unary.f32(i32 27, float %1939)  ; Round_ni(value)
  %1941 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1942 = call float @dx.op.unary.f32(i32 22, float %1937)  ; Frc(value)
  %1943 = call float @dx.op.unary.f32(i32 22, float %1936)  ; Frc(value)
  %1944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %31, float %1942, float %1943, float %1940, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.ResRet.f32 %1944, 1
  %1947 = extractvalue %dx.types.ResRet.f32 %1944, 2
  %1948 = extractvalue %dx.types.ResRet.f32 %1944, 3
  %1949 = fcmp fast ogt float %1941, 0.000000e+00
  br i1 %1949, label %1950, label %1971, !dx.controlflow.hints !73

; <label>:1950                                    ; preds = %1933
  %1951 = fadd fast float %1940, 1.000000e+00
  %1952 = call float @dx.op.unary.f32(i32 22, float %1914)  ; Frc(value)
  %1953 = call float @dx.op.unary.f32(i32 22, float %1915)  ; Frc(value)
  %1954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %31, float %1952, float %1953, float %1951, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1955 = extractvalue %dx.types.ResRet.f32 %1954, 0
  %1956 = extractvalue %dx.types.ResRet.f32 %1954, 1
  %1957 = extractvalue %dx.types.ResRet.f32 %1954, 2
  %1958 = extractvalue %dx.types.ResRet.f32 %1954, 3
  %1959 = fsub fast float %1955, %1945
  %1960 = fsub fast float %1956, %1946
  %1961 = fsub fast float %1957, %1947
  %1962 = fsub fast float %1958, %1948
  %1963 = fmul fast float %1959, %1941
  %1964 = fmul fast float %1960, %1941
  %1965 = fmul fast float %1961, %1941
  %1966 = fmul fast float %1962, %1941
  %1967 = fadd fast float %1963, %1945
  %1968 = fadd fast float %1964, %1946
  %1969 = fadd fast float %1965, %1947
  %1970 = fadd fast float %1966, %1948
  br label %1971

; <label>:1971                                    ; preds = %1950, %1933
  %1972 = phi float [ %1967, %1950 ], [ %1945, %1933 ]
  %1973 = phi float [ %1968, %1950 ], [ %1946, %1933 ]
  %1974 = phi float [ %1969, %1950 ], [ %1947, %1933 ]
  %1975 = phi float [ %1970, %1950 ], [ %1948, %1933 ]
  %1976 = fadd fast float %1972, -5.000000e-01
  %1977 = fadd fast float %1974, -5.000000e-01
  %1978 = fmul fast float %1976, 0xBFD5555560000000
  %1979 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1977, float %1978)  ; FMad(a,b,c)
  %1980 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1973, float 0.000000e+00)  ; FMad(a,b,c)
  %1981 = fadd fast float %1980, %1975
  %1982 = fmul fast float %1976, -7.500000e-01
  %1983 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1977, float %1982)  ; FMad(a,b,c)
  %1984 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1973, float 0.000000e+00)  ; FMad(a,b,c)
  %1985 = fadd fast float %1984, %1975
  %1986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %1987 = extractvalue %dx.types.CBufRet.f32 %1986, 0
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.CBufRet.f32 %1988, 2
  %1992 = extractvalue %dx.types.CBufRet.f32 %1988, 3
  %1993 = fsub fast float %1989, %1979
  %1994 = fsub fast float %1990, %1981
  %1995 = fsub fast float %1991, %1983
  %1996 = fsub fast float %1992, %1985
  %1997 = fmul fast float %1993, %1987
  %1998 = fmul fast float %1994, %1987
  %1999 = fmul fast float %1995, %1987
  %2000 = fmul fast float %1996, %1987
  %2001 = fadd fast float %1997, %1979
  %2002 = fadd fast float %1998, %1981
  %2003 = fadd fast float %1999, %1983
  %2004 = fadd fast float %2000, %1985
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = and i32 %2006, 536870911
  %2008 = uitofp i32 %2007 to float
  %2009 = fmul fast float %2008, %1855
  %2010 = fmul fast float %2008, %1859
  %2011 = fptoui float %2009 to i32
  %2012 = fptoui float %2010 to i32
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = and i32 %2014, 31
  %2016 = lshr i32 %2011, %2015
  %2017 = lshr i32 %2012, %2015
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 31
  %2021 = shl i32 1, %2020
  %2022 = call i32 @dx.op.binary.i32(i32 40, i32 %2021, i32 4)  ; UMin(a,b)
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = extractvalue %dx.types.ResRet.i32 %2023, 1
  %2026 = icmp eq i32 %2022, 0
  br i1 %2026, label %2068, label %2027

; <label>:2027                                    ; preds = %1971
  br label %2028

; <label>:2028                                    ; preds = %2056, %2027
  %2029 = phi i32 [ %2059, %2056 ], [ 0, %2027 ]
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = lshr i32 %2031, 16
  %2033 = and i32 %2032, 31
  %2034 = shl i32 %2017, %2033
  %2035 = add i32 %2034, %2016
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %2037, 31
  %2039 = shl i32 %2035, %2038
  %2040 = add i32 %2039, %2029
  %2041 = shl i32 %2040, 2
  %2042 = add i32 %2041, 32
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = icmp slt i32 %2044, 0
  %2046 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2029
  %2047 = getelementptr [12 x float], [12 x float]* %53, i32 0, i32 %2029
  %2048 = bitcast float* %2046 to i32*
  %2049 = bitcast float* %2047 to i32*
  br i1 %2045, label %2050, label %2056

; <label>:2050                                    ; preds = %2028
  %2051 = and i32 %2044, 1073741823
  %2052 = add nuw nsw i32 %2051, 20
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = extractvalue %dx.types.ResRet.i32 %2053, 1
  br label %2056

; <label>:2056                                    ; preds = %2050, %2028
  %2057 = phi i32 [ %2054, %2050 ], [ %2024, %2028 ]
  %2058 = phi i32 [ %2055, %2050 ], [ %2025, %2028 ]
  store i32 %2057, i32* %2048, align 4
  store i32 %2058, i32* %2049, align 4
  %2059 = add nuw i32 %2029, 1
  %2060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2061 = extractvalue %dx.types.CBufRet.i32 %2060, 2
  %2062 = icmp eq i32 %2061, 0
  %2063 = icmp ugt i32 %2044, -1073741825
  %2064 = and i1 %2063, %2062
  %2065 = icmp ult i32 %2059, %2022
  %2066 = and i1 %2064, %2065
  br i1 %2066, label %2028, label %2067

; <label>:2067                                    ; preds = %2056
  br label %2068

; <label>:2068                                    ; preds = %2067, %1971
  %2069 = phi i32 [ 0, %1971 ], [ %2059, %2067 ]
  %2070 = extractvalue %dx.types.CBufRet.f32 %1833, 2
  %2071 = fptoui float %2070 to i32
  %2072 = icmp eq i32 %2071, 0
  br i1 %2072, label %2124, label %2073

; <label>:2073                                    ; preds = %2068
  br label %2074

; <label>:2074                                    ; preds = %2119, %2073
  %2075 = phi i32 [ %2120, %2119 ], [ %2069, %2073 ]
  %2076 = phi i32 [ %2121, %2119 ], [ 0, %2073 ]
  %2077 = lshr i32 %2076, 2
  %2078 = and i32 %2076, 3
  %2079 = add nuw nsw i32 %2077, 83
  %2080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 %2079)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.i32 %2080, 0
  %2082 = extractvalue %dx.types.CBufRet.i32 %2080, 1
  %2083 = extractvalue %dx.types.CBufRet.i32 %2080, 2
  %2084 = extractvalue %dx.types.CBufRet.i32 %2080, 3
  %2085 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 0
  store i32 %2081, i32* %2085, align 4
  %2086 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 1
  store i32 %2082, i32* %2086, align 4
  %2087 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 2
  store i32 %2083, i32* %2087, align 4
  %2088 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 3
  store i32 %2084, i32* %2088, align 4
  %2089 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 %2078
  %2090 = load i32, i32* %2089, align 4, !tbaa !74, !noalias !78
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = lshr i32 %2092, 16
  %2094 = and i32 %2093, 31
  %2095 = shl i32 %2017, %2094
  %2096 = add i32 %2095, %2016
  %2097 = shl i32 %2096, 2
  %2098 = add i32 %2097, %2090
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = icmp eq i32 %2100, 0
  br i1 %2101, label %2119, label %2102

; <label>:2102                                    ; preds = %2074
  %2103 = icmp slt i32 %2100, 0
  %2104 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2075
  %2105 = getelementptr [12 x float], [12 x float]* %53, i32 0, i32 %2075
  %2106 = bitcast float* %2104 to i32*
  %2107 = bitcast float* %2105 to i32*
  br i1 %2103, label %2108, label %2115

; <label>:2108                                    ; preds = %2102
  %2109 = and i32 %2100, 1073741823
  %2110 = add i32 %2090, 20
  %2111 = add i32 %2110, %2109
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = extractvalue %dx.types.ResRet.i32 %2112, 1
  br label %2115

; <label>:2115                                    ; preds = %2108, %2102
  %2116 = phi i32 [ %2113, %2108 ], [ %2024, %2102 ]
  %2117 = phi i32 [ %2114, %2108 ], [ %2025, %2102 ]
  store i32 %2116, i32* %2106, align 4
  store i32 %2117, i32* %2107, align 4
  %2118 = add i32 %2075, 1
  br label %2119

; <label>:2119                                    ; preds = %2115, %2074
  %2120 = phi i32 [ %2075, %2074 ], [ %2118, %2115 ]
  %2121 = add nuw i32 %2076, 1
  %2122 = icmp eq i32 %2121, %2071
  br i1 %2122, label %2123, label %2074

; <label>:2123                                    ; preds = %2119
  br label %2124

; <label>:2124                                    ; preds = %2123, %2068
  %2125 = phi i32 [ %2069, %2068 ], [ %2120, %2123 ]
  %2126 = icmp eq i32 %2125, 1
  %2127 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 0
  %2128 = getelementptr [12 x float], [12 x float]* %53, i32 0, i32 0
  br i1 %2126, label %2129, label %2132

; <label>:2129                                    ; preds = %2124
  %2130 = load float, float* %2127, align 4
  %2131 = load float, float* %2128, align 4
  br label %2159

; <label>:2132                                    ; preds = %2124
  %2133 = load float, float* %2127, align 4
  %2134 = load float, float* %2128, align 4
  %2135 = fdiv fast float 1.000000e+00, %2134
  %2136 = fsub fast float %2133, %2135
  %2137 = icmp ugt i32 %2125, 1
  br i1 %2137, label %2138, label %2154

; <label>:2138                                    ; preds = %2132
  br label %2139

; <label>:2139                                    ; preds = %2139, %2138
  %2140 = phi float [ %2149, %2139 ], [ %2136, %2138 ]
  %2141 = phi float [ %2150, %2139 ], [ %2133, %2138 ]
  %2142 = phi i32 [ %2151, %2139 ], [ 1, %2138 ]
  %2143 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2142
  %2144 = load float, float* %2143, align 4
  %2145 = getelementptr [12 x float], [12 x float]* %53, i32 0, i32 %2142
  %2146 = load float, float* %2145, align 4
  %2147 = fdiv fast float 1.000000e+00, %2146
  %2148 = fsub fast float %2144, %2147
  %2149 = call float @dx.op.binary.f32(i32 36, float %2140, float %2148)  ; FMin(a,b)
  %2150 = call float @dx.op.binary.f32(i32 35, float %2141, float %2144)  ; FMax(a,b)
  %2151 = add nuw i32 %2142, 1
  %2152 = icmp eq i32 %2151, %2125
  br i1 %2152, label %2153, label %2139

; <label>:2153                                    ; preds = %2139
  br label %2154

; <label>:2154                                    ; preds = %2153, %2132
  %2155 = phi float [ %2136, %2132 ], [ %2149, %2153 ]
  %2156 = phi float [ %2133, %2132 ], [ %2150, %2153 ]
  %2157 = fsub fast float %2156, %2155
  %2158 = fdiv fast float 1.000000e+00, %2157
  br label %2159

; <label>:2159                                    ; preds = %2154, %2129
  %2160 = phi float [ %2130, %2129 ], [ %2156, %2154 ]
  %2161 = phi float [ %2131, %2129 ], [ %2158, %2154 ]
  %2162 = fadd fast float %1863, %2160
  %2163 = fmul fast float %2162, %2161
  %2164 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2165 = fmul fast float %2164, 2.000000e+00
  %2166 = fsub fast float 1.000000e+00, %2165
  %2167 = fmul fast float %2001, %2001
  %2168 = fsub fast float %2002, %2167
  %2169 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2168)  ; FMax(a,b)
  %2170 = fdiv fast float 1.000000e+00, %2169
  %2171 = fmul fast float %2002, %2001
  %2172 = fsub fast float %2003, %2171
  %2173 = fsub fast float %2166, %2001
  %2174 = fmul fast float %2166, %2166
  %2175 = fsub fast float %2174, %2002
  %2176 = fmul fast float %2170, %2172
  %2177 = fmul fast float %2176, %2173
  %2178 = fsub fast float %2175, %2177
  %2179 = fmul fast float %2002, %2002
  %2180 = fsub fast float %2004, %2179
  %2181 = fmul fast float %2172, %2172
  %2182 = fmul fast float %2181, %2170
  %2183 = fsub fast float %2180, %2182
  %2184 = fdiv fast float %2178, %2183
  %2185 = fmul fast float %2184, %2172
  %2186 = fsub fast float %2173, %2185
  %2187 = fmul fast float %2186, %2170
  %2188 = fmul fast float %2187, %2001
  %2189 = fsub fast float 1.000000e+00, %2188
  %2190 = fmul fast float %2184, %2002
  %2191 = fsub fast float %2189, %2190
  %2192 = fmul fast float %2187, %2187
  %2193 = fmul fast float %2184, 4.000000e+00
  %2194 = fmul fast float %2193, %2191
  %2195 = fsub fast float %2192, %2194
  %2196 = call float @dx.op.unary.f32(i32 24, float %2195)  ; Sqrt(value)
  %2197 = fcmp fast oge float %2187, 0.000000e+00
  %2198 = fsub fast float -0.000000e+00, %2196
  %2199 = select i1 %2197, float %2198, float %2196
  %2200 = fsub fast float %2199, %2187
  %2201 = fdiv fast float %2200, %2184
  %2202 = fdiv fast float %2191, %2200
  %2203 = fmul fast float %2201, 5.000000e-01
  %2204 = fmul fast float %2202, 2.000000e+00
  %2205 = select i1 %2197, float %2203, float %2204
  %2206 = select i1 %2197, float %2204, float %2203
  %2207 = call float @dx.op.binary.f32(i32 35, float %2205, float %2206)  ; FMax(a,b)
  %2208 = call float @dx.op.binary.f32(i32 36, float %2205, float %2206)  ; FMin(a,b)
  %2209 = fcmp fast ogt float %2166, %2207
  %2210 = fsub fast float %2166, %2208
  %2211 = fsub fast float %2166, %2207
  %2212 = fsub fast float %2207, %2208
  %2213 = select i1 %2209, float %2211, float %2212
  %2214 = fmul float %2210, %2213
  %2215 = select i1 %2209, float %2208, float %2166
  %2216 = fcmp fast ogt float %2166, %2208
  %2217 = fmul fast float %2215, %2207
  %2218 = fadd fast float %2215, %2207
  %2219 = fmul fast float %2218, %2001
  %2220 = fadd fast float %2217, %2002
  %2221 = fsub fast float %2220, %2219
  %2222 = fdiv fast float %2221, %2214
  %2223 = select i1 %2216, float %2222, float 0.000000e+00
  %2224 = fsub fast float 1.000000e+00, %2223
  %2225 = select i1 %2209, float %2224, float %2223
  %2226 = call float @dx.op.unary.f32(i32 7, float %2225)  ; Saturate(value)
  %2227 = extractvalue %dx.types.CBufRet.f32 %1986, 3
  %2228 = fmul fast float %2227, %2226
  %2229 = fsub fast float 1.000000e+00, %2228
  br label %2230

; <label>:2230                                    ; preds = %2159, %1871, %1836, %1832, %1798
  %2231 = phi float [ 1.000000e+00, %1798 ], [ %2229, %2159 ], [ 1.000000e+00, %1836 ], [ 1.000000e+00, %1871 ], [ 1.000000e+00, %1832 ]
  %2232 = fcmp fast ogt float %1828, 0.000000e+00
  br i1 %2232, label %2233, label %2395, !dx.controlflow.hints !87

; <label>:2233                                    ; preds = %2230
  %2234 = fadd fast float %1741, %1715
  %2235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2236 = extractvalue %dx.types.CBufRet.f32 %2235, 2
  %2237 = extractvalue %dx.types.CBufRet.f32 %2235, 3
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 2
  %2240 = call float @dx.op.binary.f32(i32 35, float %2234, float 0.000000e+00)  ; FMax(a,b)
  %2241 = fadd fast float %2240, 0x3F10000000000000
  %2242 = fcmp fast oeq float %2239, 0.000000e+00
  br i1 %2242, label %2243, label %2310

; <label>:2243                                    ; preds = %2233
  %2244 = extractvalue %dx.types.CBufRet.f32 %2235, 1
  %2245 = extractvalue %dx.types.CBufRet.f32 %2235, 0
  %2246 = fmul fast float %2245, %1730
  %2247 = fmul fast float %2244, %1731
  %2248 = fadd fast float %2246, 5.000000e-01
  %2249 = call float @dx.op.unary.f32(i32 27, float %2248)  ; Round_ni(value)
  %2250 = fadd fast float %2247, 5.000000e-01
  %2251 = call float @dx.op.unary.f32(i32 27, float %2250)  ; Round_ni(value)
  %2252 = fsub fast float %2248, %2249
  %2253 = fsub fast float %2250, %2251
  %2254 = fadd fast float %2249, -5.000000e-01
  %2255 = fadd fast float %2251, -5.000000e-01
  %2256 = fmul fast float %2252, 2.000000e+00
  %2257 = fsub fast float 3.000000e+00, %2256
  %2258 = fadd fast float %2256, 1.000000e+00
  %2259 = fsub fast float 2.000000e+00, %2252
  %2260 = bitcast float %2257 to i32
  %2261 = sub nsw i32 2129859010, %2260
  %2262 = bitcast i32 %2261 to float
  %2263 = fmul fast float %2262, %2259
  %2264 = fadd fast float %2263, -1.000000e+00
  %2265 = bitcast float %2258 to i32
  %2266 = sub nsw i32 2129859010, %2265
  %2267 = bitcast i32 %2266 to float
  %2268 = fmul fast float %2267, %2252
  %2269 = fadd fast float %2268, 1.000000e+00
  %2270 = fmul fast float %2253, 2.000000e+00
  %2271 = fsub fast float 3.000000e+00, %2270
  %2272 = fadd fast float %2270, 1.000000e+00
  %2273 = fsub fast float 2.000000e+00, %2253
  %2274 = bitcast float %2271 to i32
  %2275 = sub nsw i32 2129859010, %2274
  %2276 = bitcast i32 %2275 to float
  %2277 = fmul fast float %2276, %2273
  %2278 = fadd fast float %2277, -1.000000e+00
  %2279 = bitcast float %2272 to i32
  %2280 = sub nsw i32 2129859010, %2279
  %2281 = bitcast i32 %2280 to float
  %2282 = fmul fast float %2281, %2253
  %2283 = fadd fast float %2282, 1.000000e+00
  %2284 = fadd fast float %2264, %2254
  %2285 = fmul fast float %2284, %2236
  %2286 = fadd fast float %2278, %2255
  %2287 = fmul fast float %2286, %2237
  %2288 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %34, float %2285, float %2287, float undef, float undef, i32 0, i32 0, i32 undef, float %2241)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2289 = extractvalue %dx.types.ResRet.f32 %2288, 0
  %2290 = fmul fast float %2289, %2257
  %2291 = fadd fast float %2269, %2254
  %2292 = fmul fast float %2291, %2236
  %2293 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %34, float %2292, float %2287, float undef, float undef, i32 0, i32 0, i32 undef, float %2241)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2294 = extractvalue %dx.types.ResRet.f32 %2293, 0
  %2295 = fmul fast float %2294, %2258
  %2296 = fadd fast float %2283, %2255
  %2297 = fmul fast float %2296, %2237
  %2298 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %34, float %2285, float %2297, float undef, float undef, i32 0, i32 0, i32 undef, float %2241)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2299 = extractvalue %dx.types.ResRet.f32 %2298, 0
  %2300 = fmul fast float %2299, %2257
  %2301 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %34, float %2292, float %2297, float undef, float undef, i32 0, i32 0, i32 undef, float %2241)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2302 = extractvalue %dx.types.ResRet.f32 %2301, 0
  %2303 = fmul fast float %2302, %2258
  %2304 = fadd fast float %2303, %2300
  %2305 = fmul fast float %2304, %2272
  %2306 = fadd fast float %2295, %2290
  %2307 = fmul fast float %2306, %2271
  %2308 = fadd fast float %2307, %2305
  %2309 = fmul fast float %2308, 6.250000e-02
  br label %2395

; <label>:2310                                    ; preds = %2233
  %2311 = fmul fast float %182, 0x401921FB60000000
  %2312 = call float @dx.op.unary.f32(i32 13, float %2311)  ; Sin(value)
  %2313 = call float @dx.op.unary.f32(i32 12, float %2311)  ; Cos(value)
  %2314 = fsub fast float -0.000000e+00, %2312
  br label %2315

; <label>:2315                                    ; preds = %2364, %2310
  %2316 = phi float [ 0.000000e+00, %2310 ], [ %2359, %2364 ]
  %2317 = phi float [ 0.000000e+00, %2310 ], [ %2361, %2364 ]
  %2318 = phi i32 [ 0, %2310 ], [ %2365, %2364 ]
  %2319 = mul i32 %2318, 2
  %2320 = add i32 0, %2319
  %2321 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2320
  %2322 = load float, float* %2321, align 4
  %2323 = mul i32 %2318, 2
  %2324 = add i32 1, %2323
  %2325 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2324
  %2326 = load float, float* %2325, align 4
  %2327 = fmul fast float %2322, %2313
  %2328 = call float @dx.op.tertiary.f32(i32 46, float %2326, float %2314, float %2327)  ; FMad(a,b,c)
  %2329 = fmul fast float %2322, %2312
  %2330 = call float @dx.op.tertiary.f32(i32 46, float %2326, float %2313, float %2329)  ; FMad(a,b,c)
  %2331 = fmul fast float %2328, %2239
  %2332 = fmul fast float %2330, %2239
  %2333 = fadd fast float %2331, %1730
  %2334 = fadd fast float %2332, %1731
  %2335 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %33, float %2333, float %2334, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2336 = extractvalue %dx.types.ResRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.ResRet.f32 %2335, 1
  %2338 = extractvalue %dx.types.ResRet.f32 %2335, 2
  %2339 = extractvalue %dx.types.ResRet.f32 %2335, 3
  %2340 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 0
  store float %2336, float* %2340, align 4
  %2341 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 1
  store float %2337, float* %2341, align 4
  %2342 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 2
  store float %2338, float* %2342, align 4
  %2343 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 3
  store float %2339, float* %2343, align 4
  %2344 = fsub fast float %2336, %2241
  %2345 = fcmp fast olt float %2344, 0.000000e+00
  %2346 = select i1 %2345, float 0.000000e+00, float 1.000000e+00
  %2347 = fadd fast float %2346, %2316
  %2348 = fmul fast float %2346, %2344
  %2349 = fadd fast float %2348, %2317
  br label %2350

; <label>:2350                                    ; preds = %2350, %2315
  %2351 = phi i32 [ 1, %2315 ], [ %2362, %2350 ]
  %2352 = phi float [ %2349, %2315 ], [ %2361, %2350 ]
  %2353 = phi float [ %2347, %2315 ], [ %2359, %2350 ]
  %2354 = getelementptr [4 x float], [4 x float]* %56, i32 0, i32 %2351
  %2355 = load float, float* %2354, align 4, !tbaa !88, !noalias !78
  %2356 = fsub fast float %2355, %2241
  %2357 = fcmp fast olt float %2356, 0.000000e+00
  %2358 = select i1 %2357, float 0.000000e+00, float 1.000000e+00
  %2359 = fadd fast float %2358, %2353
  %2360 = fmul fast float %2358, %2356
  %2361 = fadd fast float %2360, %2352
  %2362 = add nuw nsw i32 %2351, 1
  %2363 = icmp eq i32 %2362, 4
  br i1 %2363, label %2364, label %2350, !llvm.loop !90

; <label>:2364                                    ; preds = %2350
  %2365 = add nuw nsw i32 %2318, 1
  %2366 = icmp eq i32 %2365, 8
  br i1 %2366, label %2367, label %2315, !llvm.loop !92

; <label>:2367                                    ; preds = %2364
  %2368 = fdiv fast float 1.000000e+00, %2359
  %2369 = fmul fast float %2368, %2361
  %2370 = fdiv fast float 1.000000e+00, %2241
  %2371 = fmul fast float %2369, %2370
  %2372 = call float @dx.op.unary.f32(i32 7, float %2371)  ; Saturate(value)
  %2373 = call float @dx.op.binary.f32(i32 35, float %2372, float 0.000000e+00)  ; FMax(a,b)
  %2374 = fmul fast float %2359, 3.125000e-02
  %2375 = call float @dx.op.unary.f32(i32 7, float %2374)  ; Saturate(value)
  %2376 = fmul fast float %2375, 2.000000e+00
  %2377 = fadd fast float %2376, -1.000000e+00
  %2378 = fcmp fast ogt float %2377, 0.000000e+00
  %2379 = fcmp fast olt float %2377, 0.000000e+00
  %2380 = zext i1 %2378 to i32
  %2381 = zext i1 %2379 to i32
  %2382 = sub nsw i32 %2380, %2381
  %2383 = sitofp i32 %2382 to float
  %2384 = fmul fast float %2383, %2377
  %2385 = fsub fast float 1.000000e+00, %2384
  %2386 = fmul fast float %2385, %2385
  %2387 = fmul fast float %2386, %2385
  %2388 = fsub fast float %2385, %2387
  %2389 = fmul fast float %2388, %2373
  %2390 = fsub fast float 1.000000e+00, %2387
  %2391 = fsub fast float %2390, %2389
  %2392 = fmul fast float %2383, 5.000000e-01
  %2393 = fmul fast float %2392, %2391
  %2394 = fsub fast float 5.000000e-01, %2393
  br label %2395

; <label>:2395                                    ; preds = %2367, %2243, %2230
  %2396 = phi float [ 1.000000e+00, %2230 ], [ %2309, %2243 ], [ %2394, %2367 ]
  %2397 = fcmp fast ogt float %1826, 0.000000e+00
  br i1 %2397, label %2398, label %2562, !dx.controlflow.hints !93

; <label>:2398                                    ; preds = %2395
  %2399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2400 = extractvalue %dx.types.CBufRet.f32 %2399, 1
  %2401 = fadd fast float %2400, %1715
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 2
  %2404 = extractvalue %dx.types.CBufRet.f32 %2402, 3
  %2405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2406 = extractvalue %dx.types.CBufRet.f32 %2405, 1
  %2407 = call float @dx.op.binary.f32(i32 35, float %2401, float 0.000000e+00)  ; FMax(a,b)
  %2408 = fadd fast float %2407, 0x3F10000000000000
  %2409 = fcmp fast oeq float %2406, 0.000000e+00
  br i1 %2409, label %2410, label %2477

; <label>:2410                                    ; preds = %2398
  %2411 = extractvalue %dx.types.CBufRet.f32 %2402, 1
  %2412 = extractvalue %dx.types.CBufRet.f32 %2402, 0
  %2413 = fmul fast float %2412, %1722
  %2414 = fmul fast float %2411, %1723
  %2415 = fadd fast float %2413, 5.000000e-01
  %2416 = call float @dx.op.unary.f32(i32 27, float %2415)  ; Round_ni(value)
  %2417 = fadd fast float %2414, 5.000000e-01
  %2418 = call float @dx.op.unary.f32(i32 27, float %2417)  ; Round_ni(value)
  %2419 = fsub fast float %2415, %2416
  %2420 = fsub fast float %2417, %2418
  %2421 = fadd fast float %2416, -5.000000e-01
  %2422 = fadd fast float %2418, -5.000000e-01
  %2423 = fmul fast float %2419, 2.000000e+00
  %2424 = fsub fast float 3.000000e+00, %2423
  %2425 = fadd fast float %2423, 1.000000e+00
  %2426 = fsub fast float 2.000000e+00, %2419
  %2427 = bitcast float %2424 to i32
  %2428 = sub nsw i32 2129859010, %2427
  %2429 = bitcast i32 %2428 to float
  %2430 = fmul fast float %2429, %2426
  %2431 = fadd fast float %2430, -1.000000e+00
  %2432 = bitcast float %2425 to i32
  %2433 = sub nsw i32 2129859010, %2432
  %2434 = bitcast i32 %2433 to float
  %2435 = fmul fast float %2434, %2419
  %2436 = fadd fast float %2435, 1.000000e+00
  %2437 = fmul fast float %2420, 2.000000e+00
  %2438 = fsub fast float 3.000000e+00, %2437
  %2439 = fadd fast float %2437, 1.000000e+00
  %2440 = fsub fast float 2.000000e+00, %2420
  %2441 = bitcast float %2438 to i32
  %2442 = sub nsw i32 2129859010, %2441
  %2443 = bitcast i32 %2442 to float
  %2444 = fmul fast float %2443, %2440
  %2445 = fadd fast float %2444, -1.000000e+00
  %2446 = bitcast float %2439 to i32
  %2447 = sub nsw i32 2129859010, %2446
  %2448 = bitcast i32 %2447 to float
  %2449 = fmul fast float %2448, %2420
  %2450 = fadd fast float %2449, 1.000000e+00
  %2451 = fadd fast float %2431, %2421
  %2452 = fmul fast float %2451, %2403
  %2453 = fadd fast float %2445, %2422
  %2454 = fmul fast float %2453, %2404
  %2455 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %34, float %2452, float %2454, float undef, float undef, i32 0, i32 0, i32 undef, float %2408)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = fmul fast float %2456, %2424
  %2458 = fadd fast float %2436, %2421
  %2459 = fmul fast float %2458, %2403
  %2460 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %34, float %2459, float %2454, float undef, float undef, i32 0, i32 0, i32 undef, float %2408)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = fmul fast float %2461, %2425
  %2463 = fadd fast float %2450, %2422
  %2464 = fmul fast float %2463, %2404
  %2465 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %34, float %2452, float %2464, float undef, float undef, i32 0, i32 0, i32 undef, float %2408)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2466 = extractvalue %dx.types.ResRet.f32 %2465, 0
  %2467 = fmul fast float %2466, %2424
  %2468 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %34, float %2459, float %2464, float undef, float undef, i32 0, i32 0, i32 undef, float %2408)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2469 = extractvalue %dx.types.ResRet.f32 %2468, 0
  %2470 = fmul fast float %2469, %2425
  %2471 = fadd fast float %2470, %2467
  %2472 = fmul fast float %2471, %2439
  %2473 = fadd fast float %2462, %2457
  %2474 = fmul fast float %2473, %2438
  %2475 = fadd fast float %2474, %2472
  %2476 = fmul fast float %2475, 6.250000e-02
  br label %2562

; <label>:2477                                    ; preds = %2398
  %2478 = fmul fast float %182, 0x401921FB60000000
  %2479 = call float @dx.op.unary.f32(i32 13, float %2478)  ; Sin(value)
  %2480 = call float @dx.op.unary.f32(i32 12, float %2478)  ; Cos(value)
  %2481 = fsub fast float -0.000000e+00, %2479
  br label %2482

; <label>:2482                                    ; preds = %2531, %2477
  %2483 = phi float [ 0.000000e+00, %2477 ], [ %2526, %2531 ]
  %2484 = phi float [ 0.000000e+00, %2477 ], [ %2528, %2531 ]
  %2485 = phi i32 [ 0, %2477 ], [ %2532, %2531 ]
  %2486 = mul i32 %2485, 2
  %2487 = add i32 0, %2486
  %2488 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2487
  %2489 = load float, float* %2488, align 4
  %2490 = mul i32 %2485, 2
  %2491 = add i32 1, %2490
  %2492 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2491
  %2493 = load float, float* %2492, align 4
  %2494 = fmul fast float %2489, %2480
  %2495 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %2481, float %2494)  ; FMad(a,b,c)
  %2496 = fmul fast float %2489, %2479
  %2497 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %2480, float %2496)  ; FMad(a,b,c)
  %2498 = fmul fast float %2495, %2406
  %2499 = fmul fast float %2497, %2406
  %2500 = fadd fast float %2498, %1722
  %2501 = fadd fast float %2499, %1723
  %2502 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %33, float %2500, float %2501, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2503 = extractvalue %dx.types.ResRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.ResRet.f32 %2502, 1
  %2505 = extractvalue %dx.types.ResRet.f32 %2502, 2
  %2506 = extractvalue %dx.types.ResRet.f32 %2502, 3
  %2507 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 0
  store float %2503, float* %2507, align 4
  %2508 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 1
  store float %2504, float* %2508, align 4
  %2509 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 2
  store float %2505, float* %2509, align 4
  %2510 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 3
  store float %2506, float* %2510, align 4
  %2511 = fsub fast float %2503, %2408
  %2512 = fcmp fast olt float %2511, 0.000000e+00
  %2513 = select i1 %2512, float 0.000000e+00, float 1.000000e+00
  %2514 = fadd fast float %2513, %2483
  %2515 = fmul fast float %2513, %2511
  %2516 = fadd fast float %2515, %2484
  br label %2517

; <label>:2517                                    ; preds = %2517, %2482
  %2518 = phi i32 [ 1, %2482 ], [ %2529, %2517 ]
  %2519 = phi float [ %2516, %2482 ], [ %2528, %2517 ]
  %2520 = phi float [ %2514, %2482 ], [ %2526, %2517 ]
  %2521 = getelementptr [4 x float], [4 x float]* %55, i32 0, i32 %2518
  %2522 = load float, float* %2521, align 4, !tbaa !88, !noalias !78
  %2523 = fsub fast float %2522, %2408
  %2524 = fcmp fast olt float %2523, 0.000000e+00
  %2525 = select i1 %2524, float 0.000000e+00, float 1.000000e+00
  %2526 = fadd fast float %2525, %2520
  %2527 = fmul fast float %2525, %2523
  %2528 = fadd fast float %2527, %2519
  %2529 = add nuw nsw i32 %2518, 1
  %2530 = icmp eq i32 %2529, 4
  br i1 %2530, label %2531, label %2517, !llvm.loop !90

; <label>:2531                                    ; preds = %2517
  %2532 = add nuw nsw i32 %2485, 1
  %2533 = icmp eq i32 %2532, 8
  br i1 %2533, label %2534, label %2482, !llvm.loop !92

; <label>:2534                                    ; preds = %2531
  %2535 = fdiv fast float 1.000000e+00, %2526
  %2536 = fmul fast float %2535, %2528
  %2537 = fdiv fast float 1.000000e+00, %2408
  %2538 = fmul fast float %2536, %2537
  %2539 = call float @dx.op.unary.f32(i32 7, float %2538)  ; Saturate(value)
  %2540 = call float @dx.op.binary.f32(i32 35, float %2539, float 0.000000e+00)  ; FMax(a,b)
  %2541 = fmul fast float %2526, 3.125000e-02
  %2542 = call float @dx.op.unary.f32(i32 7, float %2541)  ; Saturate(value)
  %2543 = fmul fast float %2542, 2.000000e+00
  %2544 = fadd fast float %2543, -1.000000e+00
  %2545 = fcmp fast ogt float %2544, 0.000000e+00
  %2546 = fcmp fast olt float %2544, 0.000000e+00
  %2547 = zext i1 %2545 to i32
  %2548 = zext i1 %2546 to i32
  %2549 = sub nsw i32 %2547, %2548
  %2550 = sitofp i32 %2549 to float
  %2551 = fmul fast float %2550, %2544
  %2552 = fsub fast float 1.000000e+00, %2551
  %2553 = fmul fast float %2552, %2552
  %2554 = fmul fast float %2553, %2552
  %2555 = fsub fast float %2552, %2554
  %2556 = fmul fast float %2555, %2540
  %2557 = fsub fast float 1.000000e+00, %2554
  %2558 = fsub fast float %2557, %2556
  %2559 = fmul fast float %2550, 5.000000e-01
  %2560 = fmul fast float %2559, %2558
  %2561 = fsub fast float 5.000000e-01, %2560
  br label %2562

; <label>:2562                                    ; preds = %2534, %2410, %2395
  %2563 = phi float [ 1.000000e+00, %2395 ], [ %2476, %2410 ], [ %2561, %2534 ]
  %2564 = fcmp fast ogt float %1825, 0.000000e+00
  br i1 %2564, label %2565, label %2729, !dx.controlflow.hints !94

; <label>:2565                                    ; preds = %2562
  %2566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2567 = extractvalue %dx.types.CBufRet.f32 %2566, 0
  %2568 = fadd fast float %2567, %1715
  %2569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.f32 %2569, 2
  %2571 = extractvalue %dx.types.CBufRet.f32 %2569, 3
  %2572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2573 = extractvalue %dx.types.CBufRet.f32 %2572, 0
  %2574 = call float @dx.op.binary.f32(i32 35, float %2568, float 0.000000e+00)  ; FMax(a,b)
  %2575 = fadd fast float %2574, 0x3F10000000000000
  %2576 = fcmp fast oeq float %2573, 0.000000e+00
  br i1 %2576, label %2577, label %2644

; <label>:2577                                    ; preds = %2565
  %2578 = extractvalue %dx.types.CBufRet.f32 %2569, 1
  %2579 = extractvalue %dx.types.CBufRet.f32 %2569, 0
  %2580 = fmul fast float %2579, %1707
  %2581 = fmul fast float %2578, %1711
  %2582 = fadd fast float %2580, 5.000000e-01
  %2583 = call float @dx.op.unary.f32(i32 27, float %2582)  ; Round_ni(value)
  %2584 = fadd fast float %2581, 5.000000e-01
  %2585 = call float @dx.op.unary.f32(i32 27, float %2584)  ; Round_ni(value)
  %2586 = fsub fast float %2582, %2583
  %2587 = fsub fast float %2584, %2585
  %2588 = fadd fast float %2583, -5.000000e-01
  %2589 = fadd fast float %2585, -5.000000e-01
  %2590 = fmul fast float %2586, 2.000000e+00
  %2591 = fsub fast float 3.000000e+00, %2590
  %2592 = fadd fast float %2590, 1.000000e+00
  %2593 = fsub fast float 2.000000e+00, %2586
  %2594 = bitcast float %2591 to i32
  %2595 = sub nsw i32 2129859010, %2594
  %2596 = bitcast i32 %2595 to float
  %2597 = fmul fast float %2596, %2593
  %2598 = fadd fast float %2597, -1.000000e+00
  %2599 = bitcast float %2592 to i32
  %2600 = sub nsw i32 2129859010, %2599
  %2601 = bitcast i32 %2600 to float
  %2602 = fmul fast float %2601, %2586
  %2603 = fadd fast float %2602, 1.000000e+00
  %2604 = fmul fast float %2587, 2.000000e+00
  %2605 = fsub fast float 3.000000e+00, %2604
  %2606 = fadd fast float %2604, 1.000000e+00
  %2607 = fsub fast float 2.000000e+00, %2587
  %2608 = bitcast float %2605 to i32
  %2609 = sub nsw i32 2129859010, %2608
  %2610 = bitcast i32 %2609 to float
  %2611 = fmul fast float %2610, %2607
  %2612 = fadd fast float %2611, -1.000000e+00
  %2613 = bitcast float %2606 to i32
  %2614 = sub nsw i32 2129859010, %2613
  %2615 = bitcast i32 %2614 to float
  %2616 = fmul fast float %2615, %2587
  %2617 = fadd fast float %2616, 1.000000e+00
  %2618 = fadd fast float %2598, %2588
  %2619 = fmul fast float %2618, %2570
  %2620 = fadd fast float %2612, %2589
  %2621 = fmul fast float %2620, %2571
  %2622 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %34, float %2619, float %2621, float undef, float undef, i32 0, i32 0, i32 undef, float %2575)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2623 = extractvalue %dx.types.ResRet.f32 %2622, 0
  %2624 = fmul fast float %2623, %2591
  %2625 = fadd fast float %2603, %2588
  %2626 = fmul fast float %2625, %2570
  %2627 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %34, float %2626, float %2621, float undef, float undef, i32 0, i32 0, i32 undef, float %2575)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2628 = extractvalue %dx.types.ResRet.f32 %2627, 0
  %2629 = fmul fast float %2628, %2592
  %2630 = fadd fast float %2617, %2589
  %2631 = fmul fast float %2630, %2571
  %2632 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %34, float %2619, float %2631, float undef, float undef, i32 0, i32 0, i32 undef, float %2575)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2633 = extractvalue %dx.types.ResRet.f32 %2632, 0
  %2634 = fmul fast float %2633, %2591
  %2635 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %34, float %2626, float %2631, float undef, float undef, i32 0, i32 0, i32 undef, float %2575)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2636 = extractvalue %dx.types.ResRet.f32 %2635, 0
  %2637 = fmul fast float %2636, %2592
  %2638 = fadd fast float %2637, %2634
  %2639 = fmul fast float %2638, %2606
  %2640 = fadd fast float %2629, %2624
  %2641 = fmul fast float %2640, %2605
  %2642 = fadd fast float %2641, %2639
  %2643 = fmul fast float %2642, 6.250000e-02
  br label %2729

; <label>:2644                                    ; preds = %2565
  %2645 = fmul fast float %182, 0x401921FB60000000
  %2646 = call float @dx.op.unary.f32(i32 13, float %2645)  ; Sin(value)
  %2647 = call float @dx.op.unary.f32(i32 12, float %2645)  ; Cos(value)
  %2648 = fsub fast float -0.000000e+00, %2646
  br label %2649

; <label>:2649                                    ; preds = %2698, %2644
  %2650 = phi float [ 0.000000e+00, %2644 ], [ %2693, %2698 ]
  %2651 = phi float [ 0.000000e+00, %2644 ], [ %2695, %2698 ]
  %2652 = phi i32 [ 0, %2644 ], [ %2699, %2698 ]
  %2653 = mul i32 %2652, 2
  %2654 = add i32 0, %2653
  %2655 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2654
  %2656 = load float, float* %2655, align 4
  %2657 = mul i32 %2652, 2
  %2658 = add i32 1, %2657
  %2659 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2658
  %2660 = load float, float* %2659, align 4
  %2661 = fmul fast float %2656, %2647
  %2662 = call float @dx.op.tertiary.f32(i32 46, float %2660, float %2648, float %2661)  ; FMad(a,b,c)
  %2663 = fmul fast float %2656, %2646
  %2664 = call float @dx.op.tertiary.f32(i32 46, float %2660, float %2647, float %2663)  ; FMad(a,b,c)
  %2665 = fmul fast float %2662, %2573
  %2666 = fmul fast float %2664, %2573
  %2667 = fadd fast float %2665, %1707
  %2668 = fadd fast float %2666, %1711
  %2669 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %33, float %2667, float %2668, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2670 = extractvalue %dx.types.ResRet.f32 %2669, 0
  %2671 = extractvalue %dx.types.ResRet.f32 %2669, 1
  %2672 = extractvalue %dx.types.ResRet.f32 %2669, 2
  %2673 = extractvalue %dx.types.ResRet.f32 %2669, 3
  %2674 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 0
  store float %2670, float* %2674, align 4
  %2675 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 1
  store float %2671, float* %2675, align 4
  %2676 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 2
  store float %2672, float* %2676, align 4
  %2677 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 3
  store float %2673, float* %2677, align 4
  %2678 = fsub fast float %2670, %2575
  %2679 = fcmp fast olt float %2678, 0.000000e+00
  %2680 = select i1 %2679, float 0.000000e+00, float 1.000000e+00
  %2681 = fadd fast float %2680, %2650
  %2682 = fmul fast float %2680, %2678
  %2683 = fadd fast float %2682, %2651
  br label %2684

; <label>:2684                                    ; preds = %2684, %2649
  %2685 = phi i32 [ 1, %2649 ], [ %2696, %2684 ]
  %2686 = phi float [ %2683, %2649 ], [ %2695, %2684 ]
  %2687 = phi float [ %2681, %2649 ], [ %2693, %2684 ]
  %2688 = getelementptr [4 x float], [4 x float]* %54, i32 0, i32 %2685
  %2689 = load float, float* %2688, align 4, !tbaa !88, !noalias !78
  %2690 = fsub fast float %2689, %2575
  %2691 = fcmp fast olt float %2690, 0.000000e+00
  %2692 = select i1 %2691, float 0.000000e+00, float 1.000000e+00
  %2693 = fadd fast float %2692, %2687
  %2694 = fmul fast float %2692, %2690
  %2695 = fadd fast float %2694, %2686
  %2696 = add nuw nsw i32 %2685, 1
  %2697 = icmp eq i32 %2696, 4
  br i1 %2697, label %2698, label %2684, !llvm.loop !90

; <label>:2698                                    ; preds = %2684
  %2699 = add nuw nsw i32 %2652, 1
  %2700 = icmp eq i32 %2699, 8
  br i1 %2700, label %2701, label %2649, !llvm.loop !92

; <label>:2701                                    ; preds = %2698
  %2702 = fdiv fast float 1.000000e+00, %2693
  %2703 = fmul fast float %2702, %2695
  %2704 = fdiv fast float 1.000000e+00, %2575
  %2705 = fmul fast float %2703, %2704
  %2706 = call float @dx.op.unary.f32(i32 7, float %2705)  ; Saturate(value)
  %2707 = call float @dx.op.binary.f32(i32 35, float %2706, float 0.000000e+00)  ; FMax(a,b)
  %2708 = fmul fast float %2693, 3.125000e-02
  %2709 = call float @dx.op.unary.f32(i32 7, float %2708)  ; Saturate(value)
  %2710 = fmul fast float %2709, 2.000000e+00
  %2711 = fadd fast float %2710, -1.000000e+00
  %2712 = fcmp fast ogt float %2711, 0.000000e+00
  %2713 = fcmp fast olt float %2711, 0.000000e+00
  %2714 = zext i1 %2712 to i32
  %2715 = zext i1 %2713 to i32
  %2716 = sub nsw i32 %2714, %2715
  %2717 = sitofp i32 %2716 to float
  %2718 = fmul fast float %2717, %2711
  %2719 = fsub fast float 1.000000e+00, %2718
  %2720 = fmul fast float %2719, %2719
  %2721 = fmul fast float %2720, %2719
  %2722 = fsub fast float %2719, %2721
  %2723 = fmul fast float %2722, %2707
  %2724 = fsub fast float 1.000000e+00, %2721
  %2725 = fsub fast float %2724, %2723
  %2726 = fmul fast float %2717, 5.000000e-01
  %2727 = fmul fast float %2726, %2725
  %2728 = fsub fast float 5.000000e-01, %2727
  br label %2729

; <label>:2729                                    ; preds = %2701, %2577, %2562
  %2730 = phi float [ 1.000000e+00, %2562 ], [ %2643, %2577 ], [ %2728, %2701 ]
  %2731 = fsub fast float %2396, %2231
  %2732 = fmul fast float %2731, %1769
  %2733 = fadd fast float %2732, %2231
  %2734 = fsub fast float %2563, %2733
  %2735 = fmul fast float %2734, %1799
  %2736 = fadd fast float %2735, %2733
  %2737 = fsub fast float %2730, %2736
  %2738 = fmul fast float %2737, %1825
  %2739 = fadd fast float %2738, %2736
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 2
  %2742 = fcmp fast ogt float %2741, 0.000000e+00
  br i1 %2742, label %2743, label %2783, !dx.controlflow.hints !95

; <label>:2743                                    ; preds = %2729
  %2744 = fcmp fast ugt float %2741, 0.000000e+00
  br i1 %2744, label %2745, label %2780

; <label>:2745                                    ; preds = %2743
  %2746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2747 = extractvalue %dx.types.CBufRet.f32 %2746, 0
  %2748 = extractvalue %dx.types.CBufRet.f32 %2746, 1
  %2749 = extractvalue %dx.types.CBufRet.f32 %2746, 2
  %2750 = extractvalue %dx.types.CBufRet.f32 %2746, 3
  %2751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2752 = extractvalue %dx.types.CBufRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.CBufRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.CBufRet.f32 %2751, 2
  %2755 = extractvalue %dx.types.CBufRet.f32 %2751, 3
  %2756 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2757 = extractvalue %dx.types.CBufRet.f32 %2740, 1
  %2758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2759 = extractvalue %dx.types.CBufRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.CBufRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.CBufRet.f32 %2758, 2
  %2762 = fadd fast float %2759, %1684
  %2763 = fadd fast float %2760, %1685
  %2764 = fadd fast float %2761, %1686
  %2765 = fmul fast float %2762, %2747
  %2766 = call float @dx.op.tertiary.f32(i32 46, float %2748, float %2763, float %2765)  ; FMad(a,b,c)
  %2767 = call float @dx.op.tertiary.f32(i32 46, float %2749, float %2764, float %2766)  ; FMad(a,b,c)
  %2768 = fadd fast float %2767, %2750
  %2769 = fmul fast float %2762, %2752
  %2770 = call float @dx.op.tertiary.f32(i32 46, float %2753, float %2763, float %2769)  ; FMad(a,b,c)
  %2771 = call float @dx.op.tertiary.f32(i32 46, float %2754, float %2764, float %2770)  ; FMad(a,b,c)
  %2772 = fadd fast float %2771, %2755
  %2773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %29, float %2768, float %2772, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2774 = extractvalue %dx.types.ResRet.f32 %2773, 0
  %2775 = fmul fast float %2774, %2757
  %2776 = fadd fast float %2775, %2756
  %2777 = call float @dx.op.unary.f32(i32 7, float %2776)  ; Saturate(value)
  %2778 = fmul fast float %2777, %2741
  %2779 = fsub fast float 1.000000e+00, %2778
  br label %2780

; <label>:2780                                    ; preds = %2745, %2743
  %2781 = phi float [ %2779, %2745 ], [ 1.000000e+00, %2743 ]
  %2782 = fmul fast float %2781, %2739
  br label %2783

; <label>:2783                                    ; preds = %2780, %2729, %1664
  %2784 = phi float [ 1.000000e+00, %1664 ], [ %2782, %2780 ], [ %2739, %2729 ]
  %2785 = call float @dx.op.binary.f32(i32 36, float %2784, float %2784)  ; FMin(a,b)
  %2786 = call float @dx.op.binary.f32(i32 36, float %2784, float %2785)  ; FMin(a,b)
  %2787 = fcmp fast ogt float %2786, 0.000000e+00
  br i1 %2787, label %2788, label %2954, !dx.controlflow.hints !96

; <label>:2788                                    ; preds = %2783
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.CBufRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.CBufRet.f32 %2789, 2
  %2793 = extractvalue %dx.types.CBufRet.f32 %2789, 3
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.CBufRet.f32 %2794, 2
  %2798 = extractvalue %dx.types.CBufRet.f32 %2794, 3
  %2799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2800 = extractvalue %dx.types.CBufRet.f32 %2799, 0
  %2801 = extractvalue %dx.types.CBufRet.f32 %2799, 1
  %2802 = extractvalue %dx.types.CBufRet.f32 %2799, 2
  %2803 = extractvalue %dx.types.CBufRet.f32 %2799, 3
  %2804 = fmul fast float %2790, %1684
  %2805 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %2791, float %2804)  ; FMad(a,b,c)
  %2806 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %2792, float %2805)  ; FMad(a,b,c)
  %2807 = fadd fast float %2806, %2793
  %2808 = fmul fast float %2795, %1684
  %2809 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %2796, float %2808)  ; FMad(a,b,c)
  %2810 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %2797, float %2809)  ; FMad(a,b,c)
  %2811 = fadd fast float %2810, %2798
  %2812 = fmul fast float %2800, %1684
  %2813 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %2801, float %2812)  ; FMad(a,b,c)
  %2814 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %2802, float %2813)  ; FMad(a,b,c)
  %2815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2816 = extractvalue %dx.types.CBufRet.f32 %2815, 0
  %2817 = extractvalue %dx.types.CBufRet.f32 %2815, 1
  %2818 = extractvalue %dx.types.CBufRet.f32 %2815, 3
  %2819 = fmul fast float %2818, %2807
  %2820 = fmul fast float %2818, %2811
  %2821 = fadd fast float %2819, %2816
  %2822 = fadd fast float %2820, %2817
  %2823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2824 = extractvalue %dx.types.CBufRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.CBufRet.f32 %2823, 1
  %2826 = fsub fast float %2821, %2824
  %2827 = fsub fast float %2822, %2825
  %2828 = fcmp fast olt float %2826, 0.000000e+00
  %2829 = fcmp fast olt float %2827, 0.000000e+00
  %2830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2831 = extractvalue %dx.types.CBufRet.f32 %2830, 0
  %2832 = extractvalue %dx.types.CBufRet.f32 %2830, 1
  %2833 = extractvalue %dx.types.CBufRet.f32 %2830, 2
  %2834 = extractvalue %dx.types.CBufRet.f32 %2830, 3
  %2835 = select i1 %2828, float %2831, float %2833
  %2836 = select i1 %2829, float %2832, float %2834
  %2837 = fmul fast float %2835, %2826
  %2838 = fmul fast float %2836, %2827
  %2839 = call float @dx.op.unary.f32(i32 6, float %2837)  ; FAbs(value)
  %2840 = call float @dx.op.unary.f32(i32 6, float %2838)  ; FAbs(value)
  %2841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.f32 %2841, 0
  %2843 = call float @dx.op.binary.f32(i32 35, float %2839, float %2840)  ; FMax(a,b)
  %2844 = fsub fast float %2842, %2843
  %2845 = call float @dx.op.unary.f32(i32 7, float %2844)  ; Saturate(value)
  %2846 = fcmp fast ogt float %2845, 0.000000e+00
  br i1 %2846, label %2847, label %2888, !dx.controlflow.hints !97

; <label>:2847                                    ; preds = %2788
  %2848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %32, float %2821, float %2822, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 1
  %2850 = fcmp fast ogt float %2849, 0.000000e+00
  br i1 %2850, label %2851, label %2883

; <label>:2851                                    ; preds = %2847
  %2852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %32, float %2821, float %2822, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2853 = extractvalue %dx.types.ResRet.f32 %2852, 0
  %2854 = extractvalue %dx.types.ResRet.f32 %2852, 1
  %2855 = extractvalue %dx.types.ResRet.f32 %2852, 2
  %2856 = extractvalue %dx.types.ResRet.f32 %2852, 3
  %2857 = fsub fast float 1.000000e+00, %2803
  %2858 = fsub fast float %2857, %2814
  %2859 = fmul fast float %2858, 0x400921FB60000000
  %2860 = fadd fast float %2859, 0x3FF921FB60000000
  %2861 = call float @dx.op.unary.f32(i32 13, float %2860)  ; Sin(value)
  %2862 = fadd fast float %2861, -1.000000e+00
  %2863 = fmul fast float %2862, 0x3FD45F3060000000
  %2864 = fmul fast float %2858, 0x401921FB60000000
  %2865 = fadd fast float %2864, 0x400921FB60000000
  %2866 = call float @dx.op.unary.f32(i32 13, float %2865)  ; Sin(value)
  %2867 = fadd fast float %2866, 0x3E7777A5C0000000
  %2868 = fmul fast float %2867, 0x3FC45F3060000000
  %2869 = fmul fast float %2858, 0x4022D97C80000000
  %2870 = fadd fast float %2869, 0x4012D97C80000000
  %2871 = call float @dx.op.unary.f32(i32 13, float %2870)  ; Sin(value)
  %2872 = fadd fast float %2871, 1.000000e+00
  %2873 = fmul fast float %2872, 0x3FBB2995E0000000
  %2874 = fmul fast float %2858, 0x402921FB60000000
  %2875 = fadd fast float %2874, 0x401921FB60000000
  %2876 = call float @dx.op.unary.f32(i32 13, float %2875)  ; Sin(value)
  %2877 = fadd fast float %2876, 0xBE8777A5C0000000
  %2878 = fmul fast float %2877, 0x3FB45F3060000000
  %2879 = call float @dx.op.dot4.f32(i32 56, float %2853, float %2854, float %2855, float %2856, float %2863, float %2868, float %2873, float %2878)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2880 = fmul fast float %2879, 0xBFF7154760000000
  %2881 = call float @dx.op.unary.f32(i32 21, float %2880)  ; Exp(value)
  %2882 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  br label %2883

; <label>:2883                                    ; preds = %2851, %2847
  %2884 = phi float [ %2882, %2851 ], [ 1.000000e+00, %2847 ]
  %2885 = fadd fast float %2884, -1.000000e+00
  %2886 = fmul fast float %2885, %2845
  %2887 = fadd fast float %2886, 1.000000e+00
  br label %2888

; <label>:2888                                    ; preds = %2883, %2788
  %2889 = phi float [ %2887, %2883 ], [ 1.000000e+00, %2788 ]
  %2890 = fmul fast float %2889, %2784
  %2891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2892 = extractvalue %dx.types.CBufRet.f32 %2891, 0
  %2893 = extractvalue %dx.types.CBufRet.f32 %2891, 1
  %2894 = extractvalue %dx.types.CBufRet.f32 %2891, 2
  %2895 = fadd fast float %2892, %110
  %2896 = fadd fast float %2893, %111
  %2897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2898 = extractvalue %dx.types.CBufRet.f32 %2897, 1
  %2899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2900 = extractvalue %dx.types.CBufRet.f32 %2899, 0
  %2901 = extractvalue %dx.types.CBufRet.f32 %2899, 1
  %2902 = extractvalue %dx.types.CBufRet.f32 %2899, 2
  %2903 = fsub fast float -0.000000e+00, %2895
  %2904 = fsub fast float -0.000000e+00, %2896
  %2905 = fsub fast float -0.000000e+00, %112
  %2906 = fsub fast float %2905, %2894
  %2907 = fadd fast float %2906, %2898
  %2908 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2903, float %2904, float %2907)  ; Dot3(ax,ay,az,bx,by,bz)
  %2909 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2900, float %2901, float %2902)  ; Dot3(ax,ay,az,bx,by,bz)
  %2910 = fdiv fast float 1.000000e+00, %2909
  %2911 = fmul fast float %2910, %2908
  %2912 = fmul fast float %2900, %2911
  %2913 = fmul fast float %2901, %2911
  %2914 = fadd fast float %2912, %2895
  %2915 = fadd fast float %2913, %2896
  %2916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2917 = extractvalue %dx.types.CBufRet.f32 %2916, 0
  %2918 = extractvalue %dx.types.CBufRet.f32 %2916, 1
  %2919 = fsub fast float %2914, %2917
  %2920 = fsub fast float %2915, %2918
  %2921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2922 = extractvalue %dx.types.CBufRet.f32 %2921, 2
  %2923 = extractvalue %dx.types.CBufRet.f32 %2921, 3
  %2924 = fmul fast float %2919, %2922
  %2925 = fmul fast float %2920, %2923
  %2926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2927 = extractvalue %dx.types.CBufRet.i32 %2926, 3
  %2928 = icmp eq i32 %2927, 0
  br i1 %2928, label %2934, label %2929

; <label>:2929                                    ; preds = %2888
  %2930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2931 = extractvalue %dx.types.ResRet.f32 %2930, 0
  %2932 = extractvalue %dx.types.ResRet.f32 %2930, 1
  %2933 = extractvalue %dx.types.ResRet.f32 %2930, 2
  br label %2939

; <label>:2934                                    ; preds = %2888
  %2935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %32, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2936 = extractvalue %dx.types.ResRet.f32 %2935, 0
  %2937 = extractvalue %dx.types.ResRet.f32 %2935, 1
  %2938 = extractvalue %dx.types.ResRet.f32 %2935, 2
  br label %2939

; <label>:2939                                    ; preds = %2934, %2929
  %2940 = phi float [ %2931, %2929 ], [ %2936, %2934 ]
  %2941 = phi float [ %2932, %2929 ], [ %2937, %2934 ]
  %2942 = phi float [ %2933, %2929 ], [ %2938, %2934 ]
  %2943 = extractvalue %dx.types.CBufRet.f32 %2897, 2
  %2944 = fmul fast float %2943, %2940
  %2945 = extractvalue %dx.types.CBufRet.f32 %2897, 0
  %2946 = fsub fast float %2911, %2945
  %2947 = fsub fast float %2946, %2944
  %2948 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2947)  ; FMax(a,b)
  %2949 = fmul fast float %2948, %2941
  %2950 = call float @dx.op.binary.f32(i32 36, float %2942, float %2949)  ; FMin(a,b)
  %2951 = fmul fast float %2950, 0xBFF7154760000000
  %2952 = call float @dx.op.unary.f32(i32 21, float %2951)  ; Exp(value)
  %2953 = fmul fast float %2890, %2952
  br label %2954

; <label>:2954                                    ; preds = %2939, %2783
  %2955 = phi float [ %2953, %2939 ], [ %2784, %2783 ]
  %2956 = call float @dx.op.binary.f32(i32 36, float %2955, float %2955)  ; FMin(a,b)
  %2957 = call float @dx.op.binary.f32(i32 36, float %2955, float %2956)  ; FMin(a,b)
  %2958 = fcmp fast ogt float %2957, 0.000000e+00
  br i1 %2958, label %2959, label %3153, !dx.controlflow.hints !98

; <label>:2959                                    ; preds = %2954
  %2960 = fmul fast float %2955, %1676
  %2961 = fmul fast float %2955, %1677
  %2962 = fmul fast float %2955, %1678
  %2963 = fsub fast float %1665, %1639
  %2964 = fsub fast float %1666, %1638
  %2965 = fsub fast float %1667, %1637
  %2966 = call float @dx.op.dot3.f32(i32 55, float %2963, float %2964, float %2965, float %2963, float %2964, float %2965)  ; Dot3(ax,ay,az,bx,by,bz)
  %2967 = call float @dx.op.unary.f32(i32 25, float %2966)  ; Rsqrt(value)
  %2968 = fmul fast float %2967, %2963
  %2969 = fmul fast float %2967, %2964
  %2970 = fmul fast float %2967, %2965
  %2971 = call float @dx.op.dot3.f32(i32 55, float %1665, float %1666, float %1667, float %1643, float %1644, float %1645)  ; Dot3(ax,ay,az,bx,by,bz)
  %2972 = call float @dx.op.dot3.f32(i32 55, float %1636, float %1635, float %1634, float %2968, float %2969, float %2970)  ; Dot3(ax,ay,az,bx,by,bz)
  %2973 = call float @dx.op.unary.f32(i32 7, float %2971)  ; Saturate(value)
  %2974 = fmul fast float %2973, %2973
  %2975 = fmul fast float %2974, %1657
  %2976 = call float @dx.op.unary.f32(i32 7, float %2975)  ; Saturate(value)
  %2977 = fmul fast float %2976, %2973
  %2978 = call float @dx.op.dot3.f32(i32 55, float %1643, float %1644, float %1645, float %2968, float %2969, float %2970)  ; Dot3(ax,ay,az,bx,by,bz)
  %2979 = fmul fast float %2978, %2978
  %2980 = call float @dx.op.unary.f32(i32 6, float %2971)  ; FAbs(value)
  %2981 = fsub fast float 1.000000e+00, %1649
  %2982 = call float @dx.op.binary.f32(i32 35, float %2981, float 0x3F847AE140000000)  ; FMax(a,b)
  %2983 = fmul fast float %2982, %2982
  %2984 = fmul fast float %2983, %2983
  %2985 = fsub fast float 1.000000e+00, %2984
  %2986 = fmul fast float %1653, %1653
  %2987 = fmul fast float %2986, %2985
  %2988 = fadd fast float %2987, %2984
  %2989 = bitcast float %2988 to i32
  %2990 = ashr i32 %2989, 1
  %2991 = add nsw i32 %2990, 532487669
  %2992 = bitcast i32 %2991 to float
  %2993 = fadd fast float %2992, %1653
  %2994 = fmul fast float %2984, %2979
  %2995 = fsub fast float 1.000000e+00, %2979
  %2996 = fadd fast float %2995, %2994
  %2997 = fmul fast float %2980, %2980
  %2998 = fmul fast float %2997, %2985
  %2999 = fadd fast float %2998, %2984
  %3000 = bitcast float %2999 to i32
  %3001 = ashr i32 %3000, 1
  %3002 = add nsw i32 %3001, 532487669
  %3003 = bitcast i32 %3002 to float
  %3004 = fadd fast float %3003, %2980
  %3005 = fmul fast float %2996, %2996
  %3006 = fmul fast float %3005, %2993
  %3007 = fmul fast float %3006, %3004
  %3008 = fdiv fast float 0x3FF0A00000000000, %3007
  %3009 = fmul fast float %3008, %2984
  %3010 = call float @dx.op.unary.f32(i32 6, float %2972)  ; FAbs(value)
  %3011 = fsub fast float 1.000000e+00, %3010
  %3012 = bitcast float %3011 to i32
  %3013 = sitofp i32 %3012 to float
  %3014 = fmul fast float %3013, 5.000000e+00
  %3015 = fadd fast float %3014, 0xC1EFBF8940000000
  %3016 = fptosi float %3015 to i32
  %3017 = bitcast i32 %3016 to float
  %3018 = fsub fast float 1.000000e+00, %1646
  %3019 = fsub fast float 1.000000e+00, %1647
  %3020 = fsub fast float 1.000000e+00, %1651
  %3021 = fmul fast float %3017, %3018
  %3022 = fmul fast float %3017, %3019
  %3023 = fmul fast float %3017, %3020
  %3024 = fadd fast float %3021, %1646
  %3025 = fadd fast float %3022, %1647
  %3026 = fadd fast float %3023, %1651
  %3027 = fcmp fast ogt float %1308, 0.000000e+00
  br i1 %3027, label %3028, label %3051

; <label>:3028                                    ; preds = %2959
  %3029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %32, float %1308, float %3010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3030 = extractvalue %dx.types.ResRet.f32 %3029, 0
  %3031 = extractvalue %dx.types.ResRet.f32 %3029, 1
  %3032 = extractvalue %dx.types.ResRet.f32 %3029, 2
  %3033 = fadd fast float %3030, -5.000000e-01
  %3034 = fadd fast float %3031, -5.000000e-01
  %3035 = fadd fast float %3032, -5.000000e-01
  %3036 = fmul fast float %1646, 4.000000e+00
  %3037 = fmul fast float %3036, %3018
  %3038 = fmul fast float %3037, %3033
  %3039 = fmul fast float %1647, 4.000000e+00
  %3040 = fmul fast float %3039, %3019
  %3041 = fmul fast float %3040, %3034
  %3042 = fmul fast float %1651, 4.000000e+00
  %3043 = fmul fast float %3042, %3020
  %3044 = fmul fast float %3043, %3035
  %3045 = fadd fast float %3038, %3024
  %3046 = fadd fast float %3041, %3025
  %3047 = fadd fast float %3044, %3026
  %3048 = call float @dx.op.unary.f32(i32 7, float %3045)  ; Saturate(value)
  %3049 = call float @dx.op.unary.f32(i32 7, float %3046)  ; Saturate(value)
  %3050 = call float @dx.op.unary.f32(i32 7, float %3047)  ; Saturate(value)
  br label %3051

; <label>:3051                                    ; preds = %3028, %2959
  %3052 = phi float [ %3048, %3028 ], [ %3024, %2959 ]
  %3053 = phi float [ %3049, %3028 ], [ %3025, %2959 ]
  %3054 = phi float [ %3050, %3028 ], [ %3026, %2959 ]
  %3055 = fmul fast float %2971, 9.843750e-01
  %3056 = fmul fast float %1649, 9.843750e-01
  %3057 = fadd fast float %3055, 7.812500e-03
  %3058 = fadd fast float %3056, 7.812500e-03
  %3059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %32, float %3057, float %3058, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 2
  %3061 = extractvalue %dx.types.ResRet.f32 %3059, 3
  %3062 = fmul fast float %3060, %1646
  %3063 = fmul fast float %3060, %1647
  %3064 = fmul fast float %3060, %1651
  %3065 = fadd fast float %3062, %3061
  %3066 = fadd fast float %3063, %3061
  %3067 = fadd fast float %3064, %3061
  br i1 %3027, label %3068, label %3091

; <label>:3068                                    ; preds = %3051
  %3069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %32, float %1308, float %2971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3070 = extractvalue %dx.types.ResRet.f32 %3069, 0
  %3071 = extractvalue %dx.types.ResRet.f32 %3069, 1
  %3072 = extractvalue %dx.types.ResRet.f32 %3069, 2
  %3073 = fadd fast float %3070, -5.000000e-01
  %3074 = fadd fast float %3071, -5.000000e-01
  %3075 = fadd fast float %3072, -5.000000e-01
  %3076 = fmul fast float %1646, 4.000000e+00
  %3077 = fmul fast float %3076, %3018
  %3078 = fmul fast float %3077, %3073
  %3079 = fmul fast float %1647, 4.000000e+00
  %3080 = fmul fast float %3079, %3019
  %3081 = fmul fast float %3080, %3074
  %3082 = fmul fast float %1651, 4.000000e+00
  %3083 = fmul fast float %3082, %3020
  %3084 = fmul fast float %3083, %3075
  %3085 = fadd fast float %3078, %3065
  %3086 = fadd fast float %3081, %3066
  %3087 = fadd fast float %3084, %3067
  %3088 = call float @dx.op.unary.f32(i32 7, float %3085)  ; Saturate(value)
  %3089 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3090 = call float @dx.op.unary.f32(i32 7, float %3087)  ; Saturate(value)
  br label %3091

; <label>:3091                                    ; preds = %3068, %3051
  %3092 = phi float [ %3088, %3068 ], [ %3065, %3051 ]
  %3093 = phi float [ %3089, %3068 ], [ %3066, %3051 ]
  %3094 = phi float [ %3090, %3068 ], [ %3067, %3051 ]
  %3095 = call float @dx.op.binary.f32(i32 35, float %3093, float %3094)  ; FMax(a,b)
  %3096 = call float @dx.op.binary.f32(i32 35, float %3092, float %3095)  ; FMax(a,b)
  %3097 = fsub fast float 1.000000e+00, %3096
  %3098 = fmul fast float %3052, %3009
  %3099 = fmul fast float %3053, %3009
  %3100 = fmul fast float %3054, %3009
  %3101 = call float @dx.op.dot3.f32(i32 55, float %1640, float %1641, float %1642, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3102 = fcmp fast ogt float %3101, 0x3E7FF19E20000000
  %3103 = fdiv fast float 1.000000e+00, %3101
  %3104 = select i1 %3102, float %3103, float 0.000000e+00
  %3105 = fmul fast float %3104, %1640
  %3106 = fmul fast float %3104, %1641
  %3107 = fmul fast float %3104, %1642
  %3108 = fadd fast float %3105, -1.000000e+00
  %3109 = fadd fast float %3106, -1.000000e+00
  %3110 = fadd fast float %3107, -1.000000e+00
  %3111 = fmul fast float %3108, 5.000000e-01
  %3112 = fmul fast float %3109, 5.000000e-01
  %3113 = fmul fast float %3110, 5.000000e-01
  %3114 = fadd fast float %3111, 1.000000e+00
  %3115 = fadd fast float %3112, 1.000000e+00
  %3116 = fadd fast float %3113, 1.000000e+00
  %3117 = fsub fast float 1.000000e+00, %2972
  %3118 = bitcast float %3117 to i32
  %3119 = sitofp i32 %3118 to float
  %3120 = fmul fast float %3119, 5.000000e+00
  %3121 = fadd fast float %3120, 0xC1EFBF8940000000
  %3122 = fptosi float %3121 to i32
  %3123 = bitcast i32 %3122 to float
  %3124 = fmul fast float %3123, %1307
  %3125 = fmul fast float %3097, %3124
  %3126 = fmul fast float %3125, %3114
  %3127 = fmul fast float %3125, %3115
  %3128 = fmul fast float %3125, %3116
  %3129 = fadd fast float %3126, %3098
  %3130 = fadd fast float %3127, %3099
  %3131 = fadd fast float %3128, %3100
  %3132 = fmul fast float %2977, %2960
  %3133 = fmul fast float %3132, %3129
  %3134 = fmul fast float %2977, %2961
  %3135 = fmul fast float %3134, %3130
  %3136 = fmul fast float %2977, %2962
  %3137 = fmul fast float %3136, %3131
  %3138 = fmul fast float %2960, %1328
  %3139 = fmul fast float %3138, %2977
  %3140 = fmul fast float %3139, %3097
  %3141 = fmul fast float %2961, %1328
  %3142 = fmul fast float %3141, %2977
  %3143 = fmul fast float %3142, %3097
  %3144 = fmul fast float %2962, %1328
  %3145 = fmul fast float %3144, %2977
  %3146 = fmul fast float %3145, %3097
  %3147 = fadd fast float %3133, %1309
  %3148 = fmul fast float %3147, %1328
  %3149 = fadd fast float %3135, %1310
  %3150 = fmul fast float %3149, %1328
  %3151 = fadd fast float %3137, %1311
  %3152 = fmul fast float %3151, %1328
  br label %3153

; <label>:3153                                    ; preds = %3091, %2954, %1633
  %3154 = phi float [ %1658, %1633 ], [ %1658, %2954 ], [ %3148, %3091 ]
  %3155 = phi float [ %1659, %1633 ], [ %1659, %2954 ], [ %3150, %3091 ]
  %3156 = phi float [ %1660, %1633 ], [ %1660, %2954 ], [ %3152, %3091 ]
  %3157 = phi float [ 0.000000e+00, %1633 ], [ 0.000000e+00, %2954 ], [ %3140, %3091 ]
  %3158 = phi float [ 0.000000e+00, %1633 ], [ 0.000000e+00, %2954 ], [ %3143, %3091 ]
  %3159 = phi float [ 0.000000e+00, %1633 ], [ 0.000000e+00, %2954 ], [ %3146, %3091 ]
  %3160 = fmul fast float %1328, %1328
  %3161 = fsub fast float 1.000000e+00, %3160
  %3162 = call float @dx.op.dot3.f32(i32 55, float %3161, float %3161, float %3161, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3163 = fsub fast float 1.000000e+00, %3162
  %3164 = fsub fast float 1.000000e+00, %1653
  %3165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3166 = extractvalue %dx.types.CBufRet.f32 %3165, 0
  %3167 = fmul fast float %3166, %3164
  %3168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3169 = extractvalue %dx.types.CBufRet.f32 %3168, 3
  %3170 = fsub fast float 1.000000e+00, %1306
  %3171 = call float @dx.op.unary.f32(i32 7, float %3170)  ; Saturate(value)
  %3172 = fadd fast float %3159, %1305
  %3173 = fmul fast float %3172, %1306
  %3174 = fmul fast float %3171, %3169
  %3175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %3176 = extractvalue %dx.types.CBufRet.f32 %3175, 3
  %3177 = fmul fast float %3157, %1640
  %3178 = fmul fast float %3158, %1641
  %3179 = fmul fast float %3159, %1642
  %3180 = fcmp fast ogt float %51, %132
  %3181 = and i1 %3180, %1372
  %3182 = or i1 %1451, %3181
  %3183 = icmp eq i32 %1371, 2
  %3184 = fcmp fast ole float %51, %132
  %3185 = and i1 %3184, %3183
  %3186 = or i1 %3185, %3182
  br i1 %3181, label %3187, label %3446

; <label>:3187                                    ; preds = %3153
  %3188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3189 = extractvalue %dx.types.CBufRet.f32 %3188, 2
  %3190 = extractvalue %dx.types.CBufRet.f32 %3188, 3
  %3191 = fmul fast float %3189, %63
  %3192 = fmul fast float %3190, %64
  %3193 = call float @dx.op.unary.f32(i32 7, float %3191)  ; Saturate(value)
  %3194 = call float @dx.op.unary.f32(i32 7, float %3192)  ; Saturate(value)
  %3195 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %32, float %3193, float %3194, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3196 = extractvalue %dx.types.ResRet.f32 %3195, 0
  %3197 = extractvalue %dx.types.ResRet.f32 %3195, 1
  %3198 = extractvalue %dx.types.ResRet.f32 %3195, 2
  %3199 = extractvalue %dx.types.ResRet.f32 %3195, 3
  %3200 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %32, float %3193, float %3194, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3201 = extractvalue %dx.types.ResRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.ResRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.ResRet.f32 %3200, 2
  %3204 = extractvalue %dx.types.ResRet.f32 %3200, 3
  %3205 = call float @dx.op.binary.f32(i32 35, float %3197, float %3198)  ; FMax(a,b)
  %3206 = call float @dx.op.binary.f32(i32 35, float %3196, float %3205)  ; FMax(a,b)
  %3207 = call float @dx.op.binary.f32(i32 35, float %3206, float %3199)  ; FMax(a,b)
  %3208 = call float @dx.op.binary.f32(i32 36, float %3202, float %3203)  ; FMin(a,b)
  %3209 = call float @dx.op.binary.f32(i32 36, float %3201, float %3208)  ; FMin(a,b)
  %3210 = call float @dx.op.binary.f32(i32 36, float %3209, float %3204)  ; FMin(a,b)
  %3211 = fmul fast float %3207, 2.550000e+02
  %3212 = fadd fast float %3211, 0x3F70101020000000
  %3213 = fptoui float %3212 to i32
  %3214 = fmul fast float %3210, 2.550000e+02
  %3215 = fadd fast float %3214, 0x3F70101020000000
  %3216 = fptoui float %3215 to i32
  %3217 = icmp ult i32 %3213, %3216
  br i1 %3217, label %3218, label %3386

; <label>:3218                                    ; preds = %3187
  %3219 = fcmp fast ogt float %50, 9.843750e-01
  %3220 = fadd fast float %51, -4.000000e+00
  %3221 = select i1 %3219, float -4.000000e+00, float %3220
  %3222 = call float @dx.op.binary.f32(i32 35, float %3221, float 0.000000e+00)  ; FMax(a,b)
  %3223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3224 = extractvalue %dx.types.CBufRet.f32 %3223, 0
  %3225 = fadd fast float %3224, %3222
  %3226 = extractvalue %dx.types.CBufRet.f32 %3223, 2
  %3227 = fmul fast float %3225, %3226
  %3228 = call float @dx.op.unary.f32(i32 23, float %3227)  ; Log(value)
  %3229 = extractvalue %dx.types.CBufRet.f32 %3223, 3
  %3230 = fmul fast float %3229, %3228
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 2
  %3233 = fmul fast float %3230, %3232
  %3234 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  %3235 = uitofp i32 %3213 to float
  %3236 = uitofp i32 %3216 to float
  %3237 = fadd fast float %3235, 5.000000e-01
  %3238 = fadd fast float %3236, 5.000000e-01
  %3239 = fmul fast float %3232, %3237
  %3240 = fmul fast float %3232, %3238
  %3241 = fadd fast float %3239, 0x3F0FFB4800000000
  %3242 = fadd fast float %3240, 0xBF0FFB4800000000
  %3243 = call float @dx.op.binary.f32(i32 35, float %3234, float %3241)  ; FMax(a,b)
  %3244 = call float @dx.op.binary.f32(i32 36, float %3243, float %3242)  ; FMin(a,b)
  %3245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %3246 = extractvalue %dx.types.CBufRet.f32 %3245, 1
  %3247 = extractvalue %dx.types.CBufRet.f32 %3245, 2
  %3248 = extractvalue %dx.types.CBufRet.f32 %3245, 0
  %3249 = fmul fast float %3246, %3244
  %3250 = fadd fast float %3248, %3249
  %3251 = fadd fast float %3248, %3247
  %3252 = fsub fast float %3246, %3247
  %3253 = fadd fast float %3252, %3248
  %3254 = call float @dx.op.binary.f32(i32 35, float %3250, float %3251)  ; FMax(a,b)
  %3255 = call float @dx.op.binary.f32(i32 36, float %3254, float %3253)  ; FMin(a,b)
  %3256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %30, float %3193, float %3194, float %3255, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3257 = extractvalue %dx.types.ResRet.f32 %3256, 0
  %3258 = extractvalue %dx.types.ResRet.f32 %3256, 1
  %3259 = extractvalue %dx.types.ResRet.f32 %3256, 2
  %3260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.i32 %3260, 0
  %3262 = extractvalue %dx.types.CBufRet.i32 %3260, 1
  %3263 = uitofp i32 %3261 to float
  %3264 = uitofp i32 %3262 to float
  %3265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %3266 = extractvalue %dx.types.CBufRet.f32 %3265, 0
  %3267 = extractvalue %dx.types.CBufRet.f32 %3265, 1
  %3268 = fmul fast float %3263, %3193
  %3269 = fmul fast float %3264, %3194
  %3270 = fadd fast float %3268, -5.000000e-01
  %3271 = fadd fast float %3269, -5.000000e-01
  %3272 = call float @dx.op.unary.f32(i32 22, float %3270)  ; Frc(value)
  %3273 = call float @dx.op.unary.f32(i32 22, float %3271)  ; Frc(value)
  %3274 = fmul fast float %3272, %3272
  %3275 = fmul fast float %3274, %3272
  %3276 = fsub fast float 3.000000e+00, %3272
  %3277 = fmul fast float %3274, %3276
  %3278 = fmul fast float %3272, 3.000000e+00
  %3279 = fmul fast float %3275, 3.000000e+00
  %3280 = fmul fast float %3274, 6.000000e+00
  %3281 = fsub fast float %3279, %3280
  %3282 = fadd fast float %3281, 4.000000e+00
  %3283 = fmul fast float %3282, 0x3FC5555560000000
  %3284 = fmul fast float %3275, -3.000000e+00
  %3285 = fadd fast float %3274, %3272
  %3286 = fmul fast float %3285, 3.000000e+00
  %3287 = fadd fast float %3284, 1.000000e+00
  %3288 = fadd fast float %3287, %3286
  %3289 = fmul fast float %3275, 0x3FC5555560000000
  %3290 = fmul fast float %3273, %3273
  %3291 = fmul fast float %3290, %3273
  %3292 = fsub fast float 3.000000e+00, %3273
  %3293 = fmul fast float %3290, %3292
  %3294 = fmul fast float %3273, 3.000000e+00
  %3295 = fmul fast float %3291, 3.000000e+00
  %3296 = fmul fast float %3290, 6.000000e+00
  %3297 = fsub fast float %3295, %3296
  %3298 = fadd fast float %3297, 4.000000e+00
  %3299 = fmul fast float %3298, 0x3FC5555560000000
  %3300 = fmul fast float %3291, -3.000000e+00
  %3301 = fadd fast float %3290, %3273
  %3302 = fmul fast float %3301, 3.000000e+00
  %3303 = fadd fast float %3300, 1.000000e+00
  %3304 = fadd fast float %3303, %3302
  %3305 = fmul fast float %3291, 0x3FC5555560000000
  %3306 = fadd fast float %3272, 1.000000e+00
  %3307 = fsub fast float 1.000000e+00, %3278
  %3308 = fadd fast float %3307, %3277
  %3309 = fadd fast float %3308, %3282
  %3310 = fmul fast float %3309, 0x3FC5555560000000
  %3311 = fdiv fast float %3283, %3310
  %3312 = fsub fast float %3306, %3311
  %3313 = fsub fast float 1.000000e+00, %3272
  %3314 = fadd fast float %3288, %3275
  %3315 = fmul fast float %3314, 0x3FC5555560000000
  %3316 = fdiv fast float %3289, %3315
  %3317 = fadd fast float %3313, %3316
  %3318 = fadd fast float %3273, 1.000000e+00
  %3319 = fsub fast float 1.000000e+00, %3294
  %3320 = fadd fast float %3319, %3293
  %3321 = fadd fast float %3320, %3298
  %3322 = fmul fast float %3321, 0x3FC5555560000000
  %3323 = fdiv fast float %3299, %3322
  %3324 = fsub fast float %3318, %3323
  %3325 = fsub fast float 1.000000e+00, %3273
  %3326 = fadd fast float %3304, %3291
  %3327 = fmul fast float %3326, 0x3FC5555560000000
  %3328 = fdiv fast float %3305, %3327
  %3329 = fadd fast float %3328, %3325
  %3330 = fmul fast float %3312, %3266
  %3331 = fsub fast float %3193, %3330
  %3332 = fmul fast float %3317, %3266
  %3333 = fadd fast float %3332, %3193
  %3334 = fmul fast float %3329, %3267
  %3335 = fadd fast float %3334, %3194
  %3336 = fmul fast float %3324, %3267
  %3337 = fsub fast float %3194, %3336
  %3338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3331, float %3337, float %3255, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3339 = extractvalue %dx.types.ResRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.ResRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.ResRet.f32 %3338, 2
  %3342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3333, float %3337, float %3255, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3343 = extractvalue %dx.types.ResRet.f32 %3342, 0
  %3344 = extractvalue %dx.types.ResRet.f32 %3342, 1
  %3345 = extractvalue %dx.types.ResRet.f32 %3342, 2
  %3346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3331, float %3335, float %3255, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.ResRet.f32 %3346, 1
  %3349 = extractvalue %dx.types.ResRet.f32 %3346, 2
  %3350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3333, float %3335, float %3255, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3351 = extractvalue %dx.types.ResRet.f32 %3350, 0
  %3352 = extractvalue %dx.types.ResRet.f32 %3350, 1
  %3353 = extractvalue %dx.types.ResRet.f32 %3350, 2
  %3354 = fsub fast float %3347, %3339
  %3355 = fsub fast float %3348, %3340
  %3356 = fsub fast float %3349, %3341
  %3357 = fmul fast float %3354, %3327
  %3358 = fmul fast float %3355, %3327
  %3359 = fmul fast float %3356, %3327
  %3360 = fadd fast float %3357, %3339
  %3361 = fadd fast float %3358, %3340
  %3362 = fadd fast float %3359, %3341
  %3363 = fsub fast float %3351, %3343
  %3364 = fsub fast float %3352, %3344
  %3365 = fsub fast float %3353, %3345
  %3366 = fmul fast float %3363, %3327
  %3367 = fmul fast float %3364, %3327
  %3368 = fmul fast float %3365, %3327
  %3369 = fsub fast float %3343, %3360
  %3370 = fadd fast float %3369, %3366
  %3371 = fsub fast float %3344, %3361
  %3372 = fadd fast float %3371, %3367
  %3373 = fsub fast float %3345, %3362
  %3374 = fadd fast float %3373, %3368
  %3375 = fmul fast float %3370, %3315
  %3376 = fmul fast float %3372, %3315
  %3377 = fmul fast float %3374, %3315
  %3378 = fadd fast float %3375, %3360
  %3379 = fadd fast float %3376, %3361
  %3380 = fadd fast float %3377, %3362
  %3381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3382 = extractvalue %dx.types.CBufRet.f32 %3381, 1
  %3383 = fmul fast float %3378, %3382
  %3384 = fmul fast float %3379, %3382
  %3385 = fmul fast float %3380, %3382
  br label %3386

; <label>:3386                                    ; preds = %3218, %3187
  %3387 = phi float [ %3257, %3218 ], [ 1.000000e+00, %3187 ]
  %3388 = phi float [ %3258, %3218 ], [ 1.000000e+00, %3187 ]
  %3389 = phi float [ %3259, %3218 ], [ 1.000000e+00, %3187 ]
  %3390 = phi float [ %3383, %3218 ], [ 0.000000e+00, %3187 ]
  %3391 = phi float [ %3384, %3218 ], [ 0.000000e+00, %3187 ]
  %3392 = phi float [ %3385, %3218 ], [ 0.000000e+00, %3187 ]
  %3393 = fmul fast float %3390, %3163
  %3394 = fmul fast float %3391, %3163
  %3395 = fmul fast float %3392, %3163
  %3396 = call float @dx.op.dot3.f32(i32 55, float %3387, float %3388, float %3389, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3397 = call float @dx.op.dot3.f32(i32 55, float %3393, float %3394, float %3395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3398 = select i1 %171, float %3396, float %3387
  %3399 = select i1 %171, float %3396, float %3388
  %3400 = select i1 %171, float 1.000000e+00, float %3389
  %3401 = select i1 %171, float %3397, float %3393
  %3402 = select i1 %171, float 0.000000e+00, float %3394
  %3403 = select i1 %171, float 0.000000e+00, float %3395
  %3404 = fmul fast float %3398, %3177
  %3405 = fmul fast float %3399, %3178
  %3406 = fmul fast float %3400, %3179
  %3407 = fadd fast float %3404, %3401
  %3408 = fadd fast float %3405, %3402
  %3409 = fadd fast float %3403, %3406
  %3410 = fmul fast float %3398, %3154
  %3411 = fmul fast float %3399, %3155
  %3412 = fmul fast float %3400, %3156
  %3413 = fmul fast float %63, 2.000000e+00
  %3414 = fmul fast float %3413, %3189
  %3415 = fmul fast float %64, 2.000000e+00
  %3416 = fmul fast float %3415, %3190
  %3417 = fsub fast float 1.000000e+00, %3414
  %3418 = fsub fast float 1.000000e+00, %3416
  %3419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %3420 = extractvalue %dx.types.CBufRet.f32 %3419, 0
  %3421 = extractvalue %dx.types.CBufRet.f32 %3419, 1
  %3422 = extractvalue %dx.types.CBufRet.f32 %3419, 2
  %3423 = fmul fast float %3417, %3420
  %3424 = fmul fast float %3417, %3421
  %3425 = fmul fast float %3417, %3422
  %3426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %3427 = extractvalue %dx.types.CBufRet.f32 %3426, 0
  %3428 = extractvalue %dx.types.CBufRet.f32 %3426, 1
  %3429 = extractvalue %dx.types.CBufRet.f32 %3426, 2
  %3430 = fmul fast float %3418, %3427
  %3431 = fmul fast float %3418, %3428
  %3432 = fmul fast float %3418, %3429
  %3433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3434 = extractvalue %dx.types.CBufRet.f32 %3433, 0
  %3435 = extractvalue %dx.types.CBufRet.f32 %3433, 1
  %3436 = extractvalue %dx.types.CBufRet.f32 %3433, 2
  %3437 = fadd fast float %3430, %3434
  %3438 = fadd fast float %3437, %3423
  %3439 = fadd fast float %3431, %3435
  %3440 = fadd fast float %3439, %3424
  %3441 = fadd fast float %3432, %3436
  %3442 = fadd fast float %3441, %3425
  %3443 = fmul fast float %3438, %132
  %3444 = fmul fast float %3440, %132
  %3445 = fmul fast float %3442, %132
  br label %3446

; <label>:3446                                    ; preds = %3386, %3153
  %3447 = phi float [ %3443, %3386 ], [ %110, %3153 ]
  %3448 = phi float [ %3444, %3386 ], [ %111, %3153 ]
  %3449 = phi float [ %3445, %3386 ], [ %112, %3153 ]
  %3450 = phi float [ %132, %3386 ], [ %51, %3153 ]
  %3451 = phi float [ %3407, %3386 ], [ %3177, %3153 ]
  %3452 = phi float [ %3408, %3386 ], [ %3178, %3153 ]
  %3453 = phi float [ %3409, %3386 ], [ %3179, %3153 ]
  %3454 = phi float [ %3410, %3386 ], [ %3154, %3153 ]
  %3455 = phi float [ %3411, %3386 ], [ %3155, %3153 ]
  %3456 = phi float [ %3412, %3386 ], [ %3156, %3153 ]
  %3457 = phi float [ %3387, %3386 ], [ 1.000000e+00, %3153 ]
  br i1 %3186, label %4612, label %3458

; <label>:3458                                    ; preds = %3446
  %3459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3460 = extractvalue %dx.types.CBufRet.f32 %3459, 0
  %3461 = extractvalue %dx.types.CBufRet.f32 %3459, 1
  %3462 = extractvalue %dx.types.CBufRet.f32 %3459, 2
  %3463 = extractvalue %dx.types.CBufRet.f32 %3459, 3
  %3464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3465 = extractvalue %dx.types.CBufRet.f32 %3464, 0
  %3466 = extractvalue %dx.types.CBufRet.f32 %3464, 1
  %3467 = extractvalue %dx.types.CBufRet.f32 %3464, 2
  %3468 = extractvalue %dx.types.CBufRet.f32 %3464, 3
  %3469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3470 = extractvalue %dx.types.CBufRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.CBufRet.f32 %3469, 1
  %3472 = extractvalue %dx.types.CBufRet.f32 %3469, 2
  %3473 = extractvalue %dx.types.CBufRet.f32 %3469, 3
  %3474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.f32 %3474, 0
  %3476 = extractvalue %dx.types.CBufRet.f32 %3474, 1
  %3477 = extractvalue %dx.types.CBufRet.f32 %3474, 2
  %3478 = extractvalue %dx.types.CBufRet.f32 %3474, 3
  %3479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3480 = extractvalue %dx.types.CBufRet.f32 %3479, 3
  %3481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3482 = extractvalue %dx.types.CBufRet.f32 %3481, 3
  %3483 = extractvalue %dx.types.CBufRet.f32 %3481, 0
  %3484 = extractvalue %dx.types.CBufRet.f32 %3481, 1
  %3485 = extractvalue %dx.types.CBufRet.f32 %3481, 2
  %3486 = fcmp fast olt float %3485, -5.000000e-01
  %3487 = call float @dx.op.dot3.f32(i32 55, float %3447, float %3448, float %3449, float %3447, float %3448, float %3449)  ; Dot3(ax,ay,az,bx,by,bz)
  %3488 = call float @dx.op.unary.f32(i32 25, float %3487)  ; Rsqrt(value)
  %3489 = fmul fast float %3488, %3487
  %3490 = fmul fast float %3488, %3447
  %3491 = fmul fast float %3488, %3448
  %3492 = fmul fast float %3488, %3449
  %3493 = fadd fast float %3489, %3463
  %3494 = call float @dx.op.dot3.f32(i32 55, float %3490, float %3491, float %3492, float %3460, float %3461, float %3462)  ; Dot3(ax,ay,az,bx,by,bz)
  %3495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.i32 %3495, 1
  %3497 = and i32 %3496, 1
  %3498 = icmp ne i32 %3497, 0
  %3499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3500 = extractvalue %dx.types.CBufRet.f32 %3499, 2
  %3501 = fcmp fast ogt float %3500, 0.000000e+00
  %3502 = and i1 %3498, %3501
  br i1 %3502, label %3503, label %3909, !dx.controlflow.hints !99

; <label>:3503                                    ; preds = %3458
  %3504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3505 = extractvalue %dx.types.CBufRet.f32 %3504, 3
  %3506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3507 = extractvalue %dx.types.CBufRet.f32 %3506, 2
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 2
  %3510 = fsub fast float %3507, %3509
  %3511 = and i32 %3496, 2
  %3512 = extractvalue %dx.types.CBufRet.i32 %3495, 0
  %3513 = call i32 @dx.op.binary.i32(i32 40, i32 %3512, i32 3)  ; UMin(a,b)
  %3514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3515 = extractvalue %dx.types.CBufRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.CBufRet.f32 %3514, 1
  %3517 = extractvalue %dx.types.CBufRet.f32 %3508, 0
  %3518 = extractvalue %dx.types.CBufRet.f32 %3508, 1
  %3519 = fsub fast float %3515, %3517
  %3520 = fsub fast float %3516, %3518
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 0
  %3523 = fcmp fast ogt float %3522, 0.000000e+00
  %3524 = fsub fast float -0.000000e+00, %3519
  %3525 = fsub fast float -0.000000e+00, %3520
  %3526 = call float @dx.op.dot2.f32(i32 54, float %3490, float %3491, float %3490, float %3491)  ; Dot2(ax,ay,bx,by)
  %3527 = call float @dx.op.dot2.f32(i32 54, float %3490, float %3491, float %3524, float %3525)  ; Dot2(ax,ay,bx,by)
  %3528 = fmul fast float %3527, 2.000000e+00
  %3529 = call float @dx.op.dot2.f32(i32 54, float %3524, float %3525, float %3524, float %3525)  ; Dot2(ax,ay,bx,by)
  %3530 = fmul fast float %3522, %3522
  %3531 = fsub fast float %3529, %3530
  %3532 = fmul fast float %3528, %3528
  %3533 = fmul fast float %3526, 4.000000e+00
  %3534 = fmul fast float %3533, %3531
  %3535 = fsub fast float %3532, %3534
  %3536 = fcmp fast ogt float %3535, 0.000000e+00
  br i1 %3536, label %3537, label %3552

; <label>:3537                                    ; preds = %3503
  %3538 = fcmp fast ogt float %3528, 0.000000e+00
  %3539 = call float @dx.op.unary.f32(i32 24, float %3535)  ; Sqrt(value)
  %3540 = fsub fast float -0.000000e+00, %3539
  %3541 = select i1 %3538, float %3539, float %3540
  %3542 = fadd fast float %3541, %3528
  %3543 = fmul float %3542, -5.000000e-01
  %3544 = fdiv fast float %3543, %3526
  %3545 = call float @dx.op.binary.f32(i32 35, float %3544, float 0.000000e+00)  ; FMax(a,b)
  %3546 = call float @dx.op.binary.f32(i32 36, float %3489, float %3545)  ; FMin(a,b)
  %3547 = fdiv fast float %3531, %3543
  %3548 = call float @dx.op.binary.f32(i32 35, float %3547, float 0.000000e+00)  ; FMax(a,b)
  %3549 = call float @dx.op.binary.f32(i32 36, float %3489, float %3548)  ; FMin(a,b)
  %3550 = call float @dx.op.binary.f32(i32 36, float %3546, float %3549)  ; FMin(a,b)
  %3551 = call float @dx.op.binary.f32(i32 35, float %3546, float %3549)  ; FMax(a,b)
  br label %3552

; <label>:3552                                    ; preds = %3537, %3503
  %3553 = phi float [ %3551, %3537 ], [ -1.000000e+00, %3503 ]
  %3554 = phi float [ %3550, %3537 ], [ -1.000000e+00, %3503 ]
  %3555 = phi i1 [ true, %3537 ], [ false, %3503 ]
  %3556 = and i1 %3523, %3555
  br i1 %3556, label %3557, label %3559

; <label>:3557                                    ; preds = %3552
  %3558 = fcmp fast oeq float %3554, %3553
  br i1 %3558, label %3862, label %3560

; <label>:3559                                    ; preds = %3552
  br i1 %3523, label %3862, label %3560

; <label>:3560                                    ; preds = %3559, %3557
  %3561 = phi float [ %3489, %3559 ], [ %3553, %3557 ]
  %3562 = phi float [ 0.000000e+00, %3559 ], [ %3554, %3557 ]
  %3563 = icmp ne i32 %3511, 0
  %3564 = fmul fast float %3561, %3492
  %3565 = fadd fast float %3564, %3505
  %3566 = fmul fast float %3565, %3561
  %3567 = select i1 %3563, float 0.000000e+00, float %3566
  %3568 = fcmp fast oeq float %3492, 0.000000e+00
  %3569 = fdiv fast float %3510, %3492
  %3570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3569)  ; FMax(a,b)
  %3571 = select i1 %3568, float %3561, float %3570
  %3572 = call float @dx.op.binary.f32(i32 36, float %3561, float %3571)  ; FMin(a,b)
  %3573 = fcmp fast ogt float %3492, 0.000000e+00
  %3574 = fcmp fast olt float %3510, 0.000000e+00
  br i1 %3573, label %3575, label %3632

; <label>:3575                                    ; preds = %3560
  %3576 = icmp eq i32 %3511, 0
  br i1 %3574, label %3577, label %3621

; <label>:3577                                    ; preds = %3575
  %3578 = select i1 %3576, float %3561, float 0.000000e+00
  %3579 = fsub fast float -0.000000e+00, %3578
  %3580 = call float @dx.op.unary.f32(i32 6, float %3579)  ; FAbs(value)
  %3581 = fmul fast float %3578, %3492
  %3582 = fadd fast float %3581, %3505
  %3583 = fmul fast float %3580, %3582
  %3584 = fsub fast float %3567, %3583
  %3585 = fsub fast float %3561, %3580
  %3586 = select i1 %3576, float %3585, float 0.000000e+00
  %3587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3588 = extractvalue %dx.types.CBufRet.f32 %3587, 0
  %3589 = extractvalue %dx.types.CBufRet.f32 %3587, 1
  %3590 = extractvalue %dx.types.CBufRet.f32 %3587, 2
  %3591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3592 = extractvalue %dx.types.CBufRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.CBufRet.f32 %3591, 1
  %3594 = extractvalue %dx.types.CBufRet.f32 %3591, 2
  %3595 = extractvalue %dx.types.CBufRet.f32 %3591, 3
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 3
  %3598 = call float @dx.op.binary.f32(i32 36, float %3584, float %3597)  ; FMin(a,b)
  %3599 = fmul fast float %3595, %3586
  %3600 = call float @dx.op.unary.f32(i32 7, float %3599)  ; Saturate(value)
  %3601 = fsub fast float %3592, %3588
  %3602 = fsub fast float %3593, %3589
  %3603 = fsub fast float %3594, %3590
  %3604 = fmul fast float %3600, %3601
  %3605 = fmul fast float %3600, %3602
  %3606 = fmul fast float %3600, %3603
  %3607 = fadd fast float %3604, %3588
  %3608 = fadd fast float %3605, %3589
  %3609 = fadd fast float %3606, %3590
  %3610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3611 = extractvalue %dx.types.CBufRet.f32 %3610, 0
  %3612 = extractvalue %dx.types.CBufRet.f32 %3610, 1
  %3613 = fadd fast float %3612, %3611
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3615 = extractvalue %dx.types.CBufRet.f32 %3610, 2
  %3616 = extractvalue %dx.types.CBufRet.f32 %3610, 3
  %3617 = fadd fast float %3616, %3615
  %3618 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  %3619 = fmul fast float %3614, %3598
  %3620 = fmul fast float %3619, %3618
  br label %3862

; <label>:3621                                    ; preds = %3575
  br i1 %3576, label %3622, label %3643

; <label>:3622                                    ; preds = %3621
  %3623 = call float @dx.op.binary.f32(i32 36, float %3572, float %3562)  ; FMin(a,b)
  %3624 = fsub fast float %3572, %3623
  %3625 = fsub fast float %3624, %3561
  %3626 = call float @dx.op.unary.f32(i32 6, float %3625)  ; FAbs(value)
  %3627 = fadd fast float %3624, %3561
  %3628 = fmul fast float %3627, %3492
  %3629 = fadd fast float %3628, %3505
  %3630 = fmul fast float %3629, %3626
  %3631 = fsub fast float %3567, %3630
  br label %3643

; <label>:3632                                    ; preds = %3560
  br i1 %3574, label %3633, label %3643

; <label>:3633                                    ; preds = %3632
  %3634 = call float @dx.op.binary.f32(i32 35, float %3562, float %3572)  ; FMax(a,b)
  %3635 = icmp eq i32 %3511, 0
  %3636 = select i1 %3635, float %3572, float 0.000000e+00
  %3637 = fsub fast float -0.000000e+00, %3636
  %3638 = call float @dx.op.unary.f32(i32 6, float %3637)  ; FAbs(value)
  %3639 = fmul fast float %3636, %3492
  %3640 = fadd fast float %3639, %3505
  %3641 = fmul fast float %3638, %3640
  %3642 = fsub fast float %3567, %3641
  br label %3643

; <label>:3643                                    ; preds = %3633, %3632, %3622, %3621
  %3644 = phi float [ %3562, %3621 ], [ %3562, %3622 ], [ %3634, %3633 ], [ %3562, %3632 ]
  %3645 = phi float [ 0.000000e+00, %3621 ], [ %3626, %3622 ], [ %3638, %3633 ], [ 0.000000e+00, %3632 ]
  %3646 = phi float [ %3567, %3621 ], [ %3631, %3622 ], [ %3642, %3633 ], [ %3567, %3632 ]
  %3647 = phi float [ %3572, %3621 ], [ %3572, %3622 ], [ %3561, %3633 ], [ %3561, %3632 ]
  %3648 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 0
  store float -1.000000e+00, float* %3648, align 4, !tbaa !88, !noalias !100
  %3649 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 1
  store float -1.000000e+00, float* %3649, align 4, !tbaa !88, !noalias !100
  %3650 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 2
  store float -1.000000e+00, float* %3650, align 4, !tbaa !88, !noalias !100
  %3651 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 0
  store float -1.000000e+00, float* %3651, align 4, !tbaa !88, !noalias !100
  %3652 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 1
  store float -1.000000e+00, float* %3652, align 4, !tbaa !88, !noalias !100
  %3653 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 2
  store float -1.000000e+00, float* %3653, align 4, !tbaa !88, !noalias !100
  %3654 = icmp sgt i32 %3513, 0
  br i1 %3654, label %3655, label %3716

; <label>:3655                                    ; preds = %3643
  br label %3656

; <label>:3656                                    ; preds = %3705, %3655
  %3657 = phi i32 [ %3706, %3705 ], [ 0, %3655 ]
  %3658 = phi i32 [ %3707, %3705 ], [ 0, %3655 ]
  %3659 = add nuw i32 %3658, 171
  %3660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 %3659)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.CBufRet.f32 %3660, 1
  %3663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3664 = extractvalue %dx.types.CBufRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.CBufRet.f32 %3663, 1
  %3666 = fsub fast float %3661, %3664
  %3667 = fsub fast float %3662, %3665
  %3668 = extractvalue %dx.types.CBufRet.f32 %3660, 2
  %3669 = fsub fast float -0.000000e+00, %3666
  %3670 = fsub fast float -0.000000e+00, %3667
  %3671 = call float @dx.op.dot2.f32(i32 54, float %3490, float %3491, float %3669, float %3670)  ; Dot2(ax,ay,bx,by)
  %3672 = fmul fast float %3671, 2.000000e+00
  %3673 = call float @dx.op.dot2.f32(i32 54, float %3669, float %3670, float %3669, float %3670)  ; Dot2(ax,ay,bx,by)
  %3674 = fmul fast float %3668, %3668
  %3675 = fsub fast float %3673, %3674
  %3676 = fmul fast float %3672, %3672
  %3677 = fmul fast float %3533, %3675
  %3678 = fsub fast float %3676, %3677
  %3679 = fcmp fast ogt float %3678, 0.000000e+00
  br i1 %3679, label %3680, label %3695

; <label>:3680                                    ; preds = %3656
  %3681 = fcmp fast ogt float %3672, 0.000000e+00
  %3682 = call float @dx.op.unary.f32(i32 24, float %3678)  ; Sqrt(value)
  %3683 = fsub fast float -0.000000e+00, %3682
  %3684 = select i1 %3681, float %3682, float %3683
  %3685 = fadd fast float %3684, %3672
  %3686 = fmul float %3685, -5.000000e-01
  %3687 = fdiv fast float %3686, %3526
  %3688 = call float @dx.op.binary.f32(i32 35, float %3687, float 0.000000e+00)  ; FMax(a,b)
  %3689 = call float @dx.op.binary.f32(i32 36, float %3561, float %3688)  ; FMin(a,b)
  %3690 = fdiv fast float %3675, %3686
  %3691 = call float @dx.op.binary.f32(i32 35, float %3690, float 0.000000e+00)  ; FMax(a,b)
  %3692 = call float @dx.op.binary.f32(i32 36, float %3561, float %3691)  ; FMin(a,b)
  %3693 = call float @dx.op.binary.f32(i32 36, float %3689, float %3692)  ; FMin(a,b)
  %3694 = call float @dx.op.binary.f32(i32 35, float %3689, float %3692)  ; FMax(a,b)
  br label %3695

; <label>:3695                                    ; preds = %3680, %3656
  %3696 = phi float [ %3694, %3680 ], [ -1.000000e+00, %3656 ]
  %3697 = phi float [ %3693, %3680 ], [ -1.000000e+00, %3656 ]
  %3698 = phi i1 [ true, %3680 ], [ false, %3656 ]
  br i1 %3698, label %3699, label %3705

; <label>:3699                                    ; preds = %3695
  %3700 = call float @dx.op.binary.f32(i32 35, float %3644, float %3697)  ; FMax(a,b)
  %3701 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 %3658
  store float %3700, float* %3701, align 4, !tbaa !88, !noalias !100
  %3702 = call float @dx.op.binary.f32(i32 35, float %3644, float %3696)  ; FMax(a,b)
  %3703 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %3658
  store float %3702, float* %3703, align 4, !tbaa !88, !noalias !100
  %3704 = add nsw i32 %3657, 1
  br label %3705

; <label>:3705                                    ; preds = %3699, %3695
  %3706 = phi i32 [ %3704, %3699 ], [ %3657, %3695 ]
  %3707 = add nuw nsw i32 %3658, 1
  %3708 = icmp eq i32 %3707, %3513
  br i1 %3708, label %3709, label %3656

; <label>:3709                                    ; preds = %3705
  %3710 = load float, float* %3650, align 4, !tbaa !88, !alias.scope !116, !noalias !119
  %3711 = load float, float* %3649, align 4, !tbaa !88, !alias.scope !122, !noalias !123
  %3712 = load float, float* %3648, align 4, !tbaa !88, !alias.scope !124, !noalias !125
  %3713 = load float, float* %3653, align 4, !tbaa !88, !alias.scope !126, !noalias !129
  %3714 = load float, float* %3652, align 4, !tbaa !88, !alias.scope !132, !noalias !133
  %3715 = load float, float* %3651, align 4, !tbaa !88, !alias.scope !134, !noalias !135
  br label %3716

; <label>:3716                                    ; preds = %3709, %3643
  %3717 = phi float [ -1.000000e+00, %3643 ], [ %3715, %3709 ]
  %3718 = phi float [ -1.000000e+00, %3643 ], [ %3714, %3709 ]
  %3719 = phi float [ -1.000000e+00, %3643 ], [ %3713, %3709 ]
  %3720 = phi float [ -1.000000e+00, %3643 ], [ %3712, %3709 ]
  %3721 = phi float [ -1.000000e+00, %3643 ], [ %3711, %3709 ]
  %3722 = phi float [ -1.000000e+00, %3643 ], [ %3710, %3709 ]
  %3723 = phi i32 [ 0, %3643 ], [ %3706, %3709 ]
  %3724 = call float @dx.op.binary.f32(i32 36, float %3721, float %3722)  ; FMin(a,b)
  %3725 = call float @dx.op.binary.f32(i32 36, float %3720, float %3724)  ; FMin(a,b)
  %3726 = call float @dx.op.binary.f32(i32 35, float %3720, float %3721)  ; FMax(a,b)
  %3727 = call float @dx.op.binary.f32(i32 36, float %3726, float %3722)  ; FMin(a,b)
  %3728 = call float @dx.op.binary.f32(i32 36, float %3720, float %3721)  ; FMin(a,b)
  %3729 = call float @dx.op.binary.f32(i32 35, float %3728, float %3727)  ; FMax(a,b)
  %3730 = call float @dx.op.binary.f32(i32 35, float %3721, float %3722)  ; FMax(a,b)
  %3731 = call float @dx.op.binary.f32(i32 35, float %3720, float %3730)  ; FMax(a,b)
  store float %3725, float* %3648, align 4, !tbaa !88, !alias.scope !124, !noalias !125
  store float %3729, float* %3649, align 4, !tbaa !88, !alias.scope !122, !noalias !123
  store float %3731, float* %3650, align 4, !tbaa !88, !alias.scope !116, !noalias !119
  %3732 = call float @dx.op.binary.f32(i32 36, float %3718, float %3719)  ; FMin(a,b)
  %3733 = call float @dx.op.binary.f32(i32 36, float %3717, float %3732)  ; FMin(a,b)
  %3734 = call float @dx.op.binary.f32(i32 35, float %3717, float %3718)  ; FMax(a,b)
  %3735 = call float @dx.op.binary.f32(i32 36, float %3734, float %3719)  ; FMin(a,b)
  %3736 = call float @dx.op.binary.f32(i32 36, float %3717, float %3718)  ; FMin(a,b)
  %3737 = call float @dx.op.binary.f32(i32 35, float %3736, float %3735)  ; FMax(a,b)
  %3738 = call float @dx.op.binary.f32(i32 35, float %3718, float %3719)  ; FMax(a,b)
  %3739 = call float @dx.op.binary.f32(i32 35, float %3717, float %3738)  ; FMax(a,b)
  store float %3733, float* %3651, align 4, !tbaa !88, !alias.scope !134, !noalias !135
  store float %3737, float* %3652, align 4, !tbaa !88, !alias.scope !132, !noalias !133
  store float %3739, float* %3653, align 4, !tbaa !88, !alias.scope !126, !noalias !129
  %3740 = sub nsw i32 3, %3723
  %3741 = icmp sgt i32 %3740, 2
  br i1 %3741, label %3742, label %3780

; <label>:3742                                    ; preds = %3716
  %3743 = icmp eq i32 %3511, 0
  %3744 = fsub fast float %3561, %3645
  %3745 = select i1 %3743, float %3744, float %3645
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 0
  %3748 = extractvalue %dx.types.CBufRet.f32 %3746, 1
  %3749 = extractvalue %dx.types.CBufRet.f32 %3746, 2
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.CBufRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.CBufRet.f32 %3750, 2
  %3754 = extractvalue %dx.types.CBufRet.f32 %3750, 3
  %3755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3756 = extractvalue %dx.types.CBufRet.f32 %3755, 3
  %3757 = call float @dx.op.binary.f32(i32 36, float %3646, float %3756)  ; FMin(a,b)
  %3758 = fmul fast float %3754, %3745
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = fsub fast float %3751, %3747
  %3761 = fsub fast float %3752, %3748
  %3762 = fsub fast float %3753, %3749
  %3763 = fmul fast float %3759, %3760
  %3764 = fmul fast float %3759, %3761
  %3765 = fmul fast float %3759, %3762
  %3766 = fadd fast float %3763, %3747
  %3767 = fadd fast float %3764, %3748
  %3768 = fadd fast float %3765, %3749
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 0
  %3771 = extractvalue %dx.types.CBufRet.f32 %3769, 1
  %3772 = fadd fast float %3771, %3770
  %3773 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3769, 2
  %3775 = extractvalue %dx.types.CBufRet.f32 %3769, 3
  %3776 = fadd fast float %3775, %3774
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = fmul fast float %3773, %3757
  %3779 = fmul fast float %3778, %3777
  br label %3862

; <label>:3780                                    ; preds = %3716
  %3781 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 %3740
  %3782 = load float, float* %3781, align 4, !tbaa !88, !noalias !100
  %3783 = fcmp fast olt float %3782, %3647
  %3784 = icmp sgt i32 %3723, 0
  %3785 = and i1 %3784, %3783
  br i1 %3785, label %3786, label %3823

; <label>:3786                                    ; preds = %3780
  br label %3787

; <label>:3787                                    ; preds = %3816, %3786
  %3788 = phi float [ %3817, %3816 ], [ %3645, %3786 ]
  %3789 = phi float [ %3818, %3816 ], [ %3646, %3786 ]
  %3790 = phi float [ %3798, %3816 ], [ %3782, %3786 ]
  %3791 = phi i32 [ %3795, %3816 ], [ %3740, %3786 ]
  %3792 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %3791
  %3793 = load float, float* %3792, align 4, !tbaa !88, !noalias !100
  %3794 = icmp slt i32 %3791, 2
  %3795 = add nsw i32 %3791, 1
  %3796 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 %3795
  %3797 = load float, float* %3796, align 4, !tbaa !88, !noalias !100
  %3798 = select i1 %3794, float %3797, float %3561
  %3799 = call float @dx.op.binary.f32(i32 36, float %3798, float %3793)  ; FMin(a,b)
  %3800 = call float @dx.op.binary.f32(i32 36, float %3647, float %3799)  ; FMin(a,b)
  %3801 = icmp eq i32 %3511, 0
  %3802 = fadd fast float %3800, %3790
  %3803 = fmul fast float %3802, %3492
  %3804 = fadd fast float %3803, %3505
  br i1 %3801, label %3810, label %3805

; <label>:3805                                    ; preds = %3787
  %3806 = fsub fast float %3800, %3790
  %3807 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3806)  ; FMax(a,b)
  %3808 = fmul fast float %3807, %3804
  %3809 = fadd fast float %3808, %3789
  br label %3816

; <label>:3810                                    ; preds = %3787
  %3811 = fsub fast float %3790, %3800
  %3812 = call float @dx.op.unary.f32(i32 6, float %3811)  ; FAbs(value)
  %3813 = fadd fast float %3812, %3788
  %3814 = fmul fast float %3812, %3804
  %3815 = fsub fast float %3789, %3814
  br label %3816

; <label>:3816                                    ; preds = %3810, %3805
  %3817 = phi float [ %3807, %3805 ], [ %3813, %3810 ]
  %3818 = phi float [ %3809, %3805 ], [ %3815, %3810 ]
  %3819 = fcmp fast olt float %3798, %3647
  %3820 = icmp slt i32 %3795, 3
  %3821 = and i1 %3820, %3819
  br i1 %3821, label %3787, label %3822

; <label>:3822                                    ; preds = %3816
  br label %3823

; <label>:3823                                    ; preds = %3822, %3780
  %3824 = phi float [ %3645, %3780 ], [ %3817, %3822 ]
  %3825 = phi float [ %3646, %3780 ], [ %3818, %3822 ]
  %3826 = fsub fast float %3561, %3824
  %3827 = select i1 %3563, float %3824, float %3826
  %3828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.f32 %3828, 0
  %3830 = extractvalue %dx.types.CBufRet.f32 %3828, 1
  %3831 = extractvalue %dx.types.CBufRet.f32 %3828, 2
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.CBufRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.CBufRet.f32 %3832, 2
  %3836 = extractvalue %dx.types.CBufRet.f32 %3832, 3
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 3
  %3839 = call float @dx.op.binary.f32(i32 36, float %3825, float %3838)  ; FMin(a,b)
  %3840 = fmul fast float %3836, %3827
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = fsub fast float %3833, %3829
  %3843 = fsub fast float %3834, %3830
  %3844 = fsub fast float %3835, %3831
  %3845 = fmul fast float %3841, %3842
  %3846 = fmul fast float %3841, %3843
  %3847 = fmul fast float %3841, %3844
  %3848 = fadd fast float %3845, %3829
  %3849 = fadd fast float %3846, %3830
  %3850 = fadd fast float %3847, %3831
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.CBufRet.f32 %3851, 1
  %3854 = fadd fast float %3853, %3852
  %3855 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3856 = extractvalue %dx.types.CBufRet.f32 %3851, 2
  %3857 = extractvalue %dx.types.CBufRet.f32 %3851, 3
  %3858 = fadd fast float %3857, %3856
  %3859 = call float @dx.op.unary.f32(i32 7, float %3858)  ; Saturate(value)
  %3860 = fmul fast float %3855, %3839
  %3861 = fmul fast float %3860, %3859
  br label %3862

; <label>:3862                                    ; preds = %3823, %3742, %3577, %3559, %3557
  %3863 = phi float [ %3586, %3577 ], [ %3745, %3742 ], [ %3827, %3823 ], [ 0.000000e+00, %3557 ], [ 0.000000e+00, %3559 ]
  %3864 = phi float [ %3620, %3577 ], [ %3779, %3742 ], [ %3861, %3823 ], [ 0.000000e+00, %3557 ], [ 0.000000e+00, %3559 ]
  %3865 = phi float [ %3607, %3577 ], [ %3766, %3742 ], [ %3848, %3823 ], [ 0.000000e+00, %3557 ], [ 0.000000e+00, %3559 ]
  %3866 = phi float [ %3608, %3577 ], [ %3767, %3742 ], [ %3849, %3823 ], [ 0.000000e+00, %3557 ], [ 0.000000e+00, %3559 ]
  %3867 = phi float [ %3609, %3577 ], [ %3768, %3742 ], [ %3850, %3823 ], [ 0.000000e+00, %3557 ], [ 0.000000e+00, %3559 ]
  %3868 = fmul fast float %3500, %3864
  %3869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.f32 %3869, 2
  %3871 = fsub fast float %3507, %3870
  %3872 = fcmp fast olt float %3868, -2.000000e+01
  %3873 = call float @dx.op.unary.f32(i32 21, float %3868)  ; Exp(value)
  %3874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3875 = extractvalue %dx.types.CBufRet.f32 %3874, 2
  %3876 = extractvalue %dx.types.CBufRet.f32 %3874, 3
  %3877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.f32 %3877, 2
  %3879 = fmul fast float %3876, %3871
  %3880 = call float @dx.op.unary.f32(i32 7, float %3879)  ; Saturate(value)
  %3881 = fsub fast float 1.000000e+00, %3880
  %3882 = fmul fast float %3492, 5.000000e-01
  %3883 = fadd fast float %3882, 5.000000e-01
  %3884 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3885 = fsub fast float 1.000000e+00, %3884
  %3886 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3881)  ; FMax(a,b)
  %3887 = fdiv fast float %3885, %3886
  %3888 = fsub fast float %3871, %3449
  %3889 = call float @dx.op.unary.f32(i32 6, float %3888)  ; FAbs(value)
  %3890 = fmul fast float %3889, %3875
  %3891 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3892 = fsub fast float 1.000000e+00, %3890
  %3893 = fmul fast float %3892, %3891
  %3894 = fadd fast float %3893, %3890
  %3895 = fmul fast float %3878, %3871
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = fsub fast float 1.000000e+00, %3894
  %3898 = fmul fast float %3897, %3896
  %3899 = fadd fast float %3898, %3894
  %3900 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3901 = fadd fast float %3873, -1.000000e+00
  %3902 = select i1 %3872, float -1.000000e+00, float %3901
  %3903 = fmul fast float %3900, %3902
  %3904 = fadd fast float %3903, 1.000000e+00
  %3905 = fsub fast float -0.000000e+00, %3903
  %3906 = fmul fast float %3865, %3905
  %3907 = fmul fast float %3866, %3905
  %3908 = fmul fast float %3867, %3905
  br label %3909

; <label>:3909                                    ; preds = %3862, %3458
  %3910 = phi float [ %3863, %3862 ], [ 0.000000e+00, %3458 ]
  %3911 = phi float [ %3904, %3862 ], [ 1.000000e+00, %3458 ]
  %3912 = phi float [ %3906, %3862 ], [ 0.000000e+00, %3458 ]
  %3913 = phi float [ %3907, %3862 ], [ 0.000000e+00, %3458 ]
  %3914 = phi float [ %3908, %3862 ], [ 0.000000e+00, %3458 ]
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 1
  %3917 = fsub fast float 1.000000e+00, %3911
  %3918 = fmul fast float %3917, %3493
  %3919 = fmul fast float %3918, %3916
  %3920 = fsub fast float %3493, %3919
  br i1 %3486, label %3921, label %3950, !dx.controlflow.hints !136

; <label>:3921                                    ; preds = %3909
  %3922 = fmul fast float %3494, %3483
  %3923 = fadd fast float %3922, %3484
  %3924 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3925 = fmul fast float %3465, %3920
  %3926 = fsub fast float -0.000000e+00, %3925
  %3927 = fmul fast float %3466, %3920
  %3928 = fsub fast float -0.000000e+00, %3927
  %3929 = call float @dx.op.unary.f32(i32 21, float %3926)  ; Exp(value)
  %3930 = call float @dx.op.unary.f32(i32 21, float %3928)  ; Exp(value)
  %3931 = call float @dx.op.binary.f32(i32 35, float %3473, float %3929)  ; FMax(a,b)
  %3932 = call float @dx.op.binary.f32(i32 35, float %3473, float %3930)  ; FMax(a,b)
  %3933 = fsub fast float %3932, %3931
  %3934 = fmul fast float %3933, %3924
  %3935 = fadd fast float %3934, %3931
  %3936 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3937 = fsub fast float %3470, %3475
  %3938 = fsub fast float %3471, %3476
  %3939 = fsub fast float %3472, %3477
  %3940 = fmul fast float %3924, %3937
  %3941 = fmul fast float %3924, %3938
  %3942 = fmul fast float %3924, %3939
  %3943 = fadd fast float %3940, %3475
  %3944 = fadd fast float %3941, %3476
  %3945 = fadd fast float %3942, %3477
  %3946 = fsub fast float 1.000000e+00, %3936
  %3947 = fmul fast float %3946, %3943
  %3948 = fmul fast float %3946, %3944
  %3949 = fmul fast float %3946, %3945
  br label %4009

; <label>:3950                                    ; preds = %3909
  %3951 = fmul fast float %3920, %3482
  %3952 = call float @dx.op.unary.f32(i32 7, float %3951)  ; Saturate(value)
  %3953 = fsub fast float 2.000000e+00, %3952
  %3954 = fmul fast float %3952, 9.921875e-01
  %3955 = fmul fast float %3954, %3953
  %3956 = fadd fast float %3955, 3.906250e-03
  %3957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %32, float %3956, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3958 = extractvalue %dx.types.ResRet.f32 %3957, 0
  %3959 = fsub fast float %3952, %3958
  %3960 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3959)  ; FMax(a,b)
  %3961 = fmul fast float %3468, %3449
  %3962 = call float @dx.op.unary.f32(i32 6, float %3961)  ; FAbs(value)
  %3963 = fcmp fast ogt float %3962, 0x3EB0C6F7A0000000
  br i1 %3963, label %3964, label %3970, !dx.controlflow.hints !137

; <label>:3964                                    ; preds = %3950
  %3965 = fmul fast float %3961, 0xBFF7154760000000
  %3966 = call float @dx.op.unary.f32(i32 21, float %3965)  ; Exp(value)
  %3967 = fsub fast float 1.000000e+00, %3966
  %3968 = fdiv fast float %3967, %3961
  %3969 = fmul fast float %3968, %3478
  br label %3970

; <label>:3970                                    ; preds = %3964, %3950
  %3971 = phi float [ %3969, %3964 ], [ %3478, %3950 ]
  %3972 = fadd fast float %3971, %3480
  %3973 = fmul fast float %3972, %3960
  %3974 = fmul fast float %3465, %3973
  %3975 = fsub fast float -0.000000e+00, %3974
  %3976 = fmul fast float %3466, %3973
  %3977 = fsub fast float -0.000000e+00, %3976
  %3978 = fmul fast float %3467, %3973
  %3979 = fsub fast float -0.000000e+00, %3978
  %3980 = call float @dx.op.unary.f32(i32 21, float %3975)  ; Exp(value)
  %3981 = call float @dx.op.unary.f32(i32 21, float %3977)  ; Exp(value)
  %3982 = call float @dx.op.unary.f32(i32 21, float %3979)  ; Exp(value)
  %3983 = fmul fast float %3494, %3494
  %3984 = fadd fast float %3983, 1.000000e+00
  %3985 = fmul fast float %3984, 0x3FAE8EC8A0000000
  %3986 = fmul fast float %3985, %3475
  %3987 = fmul fast float %3985, %3476
  %3988 = fmul fast float %3985, %3477
  %3989 = fmul fast float %3494, %3473
  %3990 = fsub fast float 1.000000e+00, %3989
  %3991 = fmul fast float %3473, %3473
  %3992 = fsub fast float 1.000000e+00, %3991
  %3993 = fmul fast float %3992, 0x3FB45F3060000000
  %3994 = fmul fast float %3990, %3990
  %3995 = fdiv fast float 1.000000e+00, %3994
  %3996 = fmul fast float %3993, %3995
  %3997 = fmul fast float %3996, %3470
  %3998 = fmul fast float %3996, %3471
  %3999 = fmul fast float %3996, %3472
  %4000 = fadd fast float %3997, %3986
  %4001 = fadd fast float %3998, %3987
  %4002 = fadd fast float %3999, %3988
  %4003 = fsub fast float 1.000000e+00, %3980
  %4004 = fsub fast float 1.000000e+00, %3981
  %4005 = fsub fast float 1.000000e+00, %3982
  %4006 = fmul fast float %4000, %4003
  %4007 = fmul fast float %4001, %4004
  %4008 = fmul fast float %4002, %4005
  br label %4009

; <label>:4009                                    ; preds = %3970, %3921
  %4010 = phi float [ %3947, %3921 ], [ %4006, %3970 ]
  %4011 = phi float [ %3948, %3921 ], [ %4007, %3970 ]
  %4012 = phi float [ %3949, %3921 ], [ %4008, %3970 ]
  %4013 = phi float [ %3936, %3921 ], [ %3980, %3970 ]
  %4014 = phi float [ %3936, %3921 ], [ %3981, %3970 ]
  %4015 = phi float [ %3936, %3921 ], [ %3982, %3970 ]
  br i1 %3502, label %4016, label %4214, !dx.controlflow.hints !138

; <label>:4016                                    ; preds = %4009
  %4017 = extractvalue %dx.types.CBufRet.f32 %3915, 0
  %4018 = fmul fast float %4017, %3917
  %4019 = fsub fast float %3912, %4010
  %4020 = fsub fast float %3913, %4011
  %4021 = fsub fast float %3914, %4012
  %4022 = fmul fast float %4018, %4019
  %4023 = fmul fast float %4018, %4020
  %4024 = fmul fast float %4018, %4021
  %4025 = fadd fast float %4022, %4010
  %4026 = fadd fast float %4023, %4011
  %4027 = fadd fast float %4024, %4012
  %4028 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4013)  ; FMax(a,b)
  %4029 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4014)  ; FMax(a,b)
  %4030 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4015)  ; FMax(a,b)
  %4031 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3911)  ; FMax(a,b)
  %4032 = call float @dx.op.binary.f32(i32 35, float %3910, float %3920)  ; FMax(a,b)
  %4033 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4032)  ; FMax(a,b)
  %4034 = fdiv fast float %3910, %4033
  %4035 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4036 = fdiv fast float %3920, %4033
  %4037 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4038 = fcmp fast une float %4031, 1.000000e+00
  br i1 %4038, label %4039, label %4052, !dx.controlflow.hints !139

; <label>:4039                                    ; preds = %4016
  %4040 = call float @dx.op.unary.f32(i32 23, float %4031)  ; Log(value)
  %4041 = fmul fast float %4040, 0x3FE62E4300000000
  %4042 = fmul fast float %3912, %4041
  %4043 = fsub fast float -0.000000e+00, %4042
  %4044 = fmul fast float %3913, %4041
  %4045 = fsub fast float -0.000000e+00, %4044
  %4046 = fmul fast float %3914, %4041
  %4047 = fsub fast float -0.000000e+00, %4046
  %4048 = fsub fast float 1.000000e+00, %4031
  %4049 = fdiv fast float %4043, %4048
  %4050 = fdiv fast float %4045, %4048
  %4051 = fdiv fast float %4047, %4048
  br label %4052

; <label>:4052                                    ; preds = %4039, %4016
  %4053 = phi float [ %4049, %4039 ], [ %3912, %4016 ]
  %4054 = phi float [ %4050, %4039 ], [ %3913, %4016 ]
  %4055 = phi float [ %4051, %4039 ], [ %3914, %4016 ]
  %4056 = phi float [ %4041, %4039 ], [ 0.000000e+00, %4016 ]
  %4057 = fcmp fast une float %4028, 1.000000e+00
  br i1 %4057, label %4058, label %4065, !dx.controlflow.hints !140

; <label>:4058                                    ; preds = %4052
  %4059 = call float @dx.op.unary.f32(i32 23, float %4028)  ; Log(value)
  %4060 = fmul fast float %4059, 0x3FE62E4300000000
  %4061 = fmul fast float %4025, %4060
  %4062 = fsub fast float -0.000000e+00, %4061
  %4063 = fsub fast float 1.000000e+00, %4028
  %4064 = fdiv fast float %4062, %4063
  br label %4065

; <label>:4065                                    ; preds = %4058, %4052
  %4066 = phi float [ %4064, %4058 ], [ %4025, %4052 ]
  %4067 = phi float [ %4060, %4058 ], [ 0.000000e+00, %4052 ]
  %4068 = fcmp fast une float %4029, 1.000000e+00
  br i1 %4068, label %4069, label %4076, !dx.controlflow.hints !140

; <label>:4069                                    ; preds = %4065
  %4070 = call float @dx.op.unary.f32(i32 23, float %4029)  ; Log(value)
  %4071 = fmul fast float %4070, 0x3FE62E4300000000
  %4072 = fmul fast float %4026, %4071
  %4073 = fsub fast float -0.000000e+00, %4072
  %4074 = fsub fast float 1.000000e+00, %4029
  %4075 = fdiv fast float %4073, %4074
  br label %4076

; <label>:4076                                    ; preds = %4069, %4065
  %4077 = phi float [ %4075, %4069 ], [ %4026, %4065 ]
  %4078 = phi float [ %4071, %4069 ], [ 0.000000e+00, %4065 ]
  %4079 = fcmp fast une float %4030, 1.000000e+00
  br i1 %4079, label %4080, label %4087, !dx.controlflow.hints !140

; <label>:4080                                    ; preds = %4076
  %4081 = call float @dx.op.unary.f32(i32 23, float %4030)  ; Log(value)
  %4082 = fmul fast float %4081, 0x3FE62E4300000000
  %4083 = fmul fast float %4027, %4082
  %4084 = fsub fast float -0.000000e+00, %4083
  %4085 = fsub fast float 1.000000e+00, %4030
  %4086 = fdiv fast float %4084, %4085
  br label %4087

; <label>:4087                                    ; preds = %4080, %4076
  %4088 = phi float [ %4086, %4080 ], [ %4027, %4076 ]
  %4089 = phi float [ %4082, %4080 ], [ 0.000000e+00, %4076 ]
  %4090 = fmul fast float %4053, %4037
  %4091 = fmul fast float %4054, %4037
  %4092 = fmul fast float %4055, %4037
  %4093 = fmul fast float %4056, %4037
  %4094 = fmul fast float %4066, %4035
  %4095 = fmul fast float %4077, %4035
  %4096 = fmul fast float %4088, %4035
  %4097 = fmul fast float %4067, %4035
  %4098 = fmul fast float %4078, %4035
  %4099 = fmul fast float %4089, %4035
  %4100 = fadd fast float %4094, %4090
  %4101 = fadd fast float %4095, %4091
  %4102 = fadd fast float %4096, %4092
  %4103 = fadd fast float %4097, %4093
  %4104 = fadd fast float %4098, %4093
  %4105 = fadd fast float %4099, %4093
  %4106 = fcmp fast une float %4103, 0.000000e+00
  br i1 %4106, label %4107, label %4114, !dx.controlflow.hints !141

; <label>:4107                                    ; preds = %4087
  %4108 = fmul fast float %4103, 0x3FF7154760000000
  %4109 = call float @dx.op.unary.f32(i32 21, float %4108)  ; Exp(value)
  %4110 = fsub fast float 1.000000e+00, %4109
  %4111 = fmul fast float %4100, %4110
  %4112 = fsub fast float -0.000000e+00, %4111
  %4113 = fdiv fast float %4112, %4103
  br label %4114

; <label>:4114                                    ; preds = %4107, %4087
  %4115 = phi float [ %4109, %4107 ], [ 1.000000e+00, %4087 ]
  %4116 = phi float [ %4113, %4107 ], [ %4100, %4087 ]
  %4117 = fcmp fast une float %4104, 0.000000e+00
  br i1 %4117, label %4118, label %4125, !dx.controlflow.hints !141

; <label>:4118                                    ; preds = %4114
  %4119 = fmul fast float %4104, 0x3FF7154760000000
  %4120 = call float @dx.op.unary.f32(i32 21, float %4119)  ; Exp(value)
  %4121 = fsub fast float 1.000000e+00, %4120
  %4122 = fmul fast float %4101, %4121
  %4123 = fsub fast float -0.000000e+00, %4122
  %4124 = fdiv fast float %4123, %4104
  br label %4125

; <label>:4125                                    ; preds = %4118, %4114
  %4126 = phi float [ %4120, %4118 ], [ 1.000000e+00, %4114 ]
  %4127 = phi float [ %4124, %4118 ], [ %4101, %4114 ]
  %4128 = fcmp fast une float %4105, 0.000000e+00
  br i1 %4128, label %4129, label %4136, !dx.controlflow.hints !141

; <label>:4129                                    ; preds = %4125
  %4130 = fmul fast float %4105, 0x3FF7154760000000
  %4131 = call float @dx.op.unary.f32(i32 21, float %4130)  ; Exp(value)
  %4132 = fsub fast float 1.000000e+00, %4131
  %4133 = fmul fast float %4102, %4132
  %4134 = fsub fast float -0.000000e+00, %4133
  %4135 = fdiv fast float %4134, %4105
  br label %4136

; <label>:4136                                    ; preds = %4129, %4125
  %4137 = phi float [ %4131, %4129 ], [ 1.000000e+00, %4125 ]
  %4138 = phi float [ %4135, %4129 ], [ %4102, %4125 ]
  %4139 = fcmp fast ogt float %4035, %4037
  br i1 %4139, label %4140, label %4160

; <label>:4140                                    ; preds = %4136
  %4141 = fsub fast float 1.000000e+00, %4037
  %4142 = fmul fast float %4053, %4141
  %4143 = fmul fast float %4054, %4141
  %4144 = fmul fast float %4055, %4141
  %4145 = fmul fast float %4056, %4141
  %4146 = fcmp fast une float %4145, 0.000000e+00
  br i1 %4146, label %4147, label %4198, !dx.controlflow.hints !142

; <label>:4147                                    ; preds = %4140
  %4148 = fmul fast float %4145, 0x3FF7154760000000
  %4149 = call float @dx.op.unary.f32(i32 21, float %4148)  ; Exp(value)
  %4150 = fsub fast float 1.000000e+00, %4149
  %4151 = fmul fast float %4142, %4150
  %4152 = fsub fast float -0.000000e+00, %4151
  %4153 = fmul fast float %4143, %4150
  %4154 = fsub fast float -0.000000e+00, %4153
  %4155 = fmul fast float %4144, %4150
  %4156 = fsub fast float -0.000000e+00, %4155
  %4157 = fdiv fast float %4152, %4145
  %4158 = fdiv fast float %4154, %4145
  %4159 = fdiv fast float %4156, %4145
  br label %4198

; <label>:4160                                    ; preds = %4136
  %4161 = fsub fast float 1.000000e+00, %4035
  %4162 = fmul fast float %4066, %4161
  %4163 = fmul fast float %4077, %4161
  %4164 = fmul fast float %4088, %4161
  %4165 = fmul fast float %4067, %4161
  %4166 = fmul fast float %4078, %4161
  %4167 = fmul fast float %4089, %4161
  %4168 = fcmp fast une float %4165, 0.000000e+00
  br i1 %4168, label %4169, label %4176, !dx.controlflow.hints !141

; <label>:4169                                    ; preds = %4160
  %4170 = fmul fast float %4165, 0x3FF7154760000000
  %4171 = call float @dx.op.unary.f32(i32 21, float %4170)  ; Exp(value)
  %4172 = fsub fast float 1.000000e+00, %4171
  %4173 = fmul fast float %4162, %4172
  %4174 = fsub fast float -0.000000e+00, %4173
  %4175 = fdiv fast float %4174, %4165
  br label %4176

; <label>:4176                                    ; preds = %4169, %4160
  %4177 = phi float [ %4175, %4169 ], [ %4162, %4160 ]
  %4178 = phi float [ %4171, %4169 ], [ 1.000000e+00, %4160 ]
  %4179 = fcmp fast une float %4166, 0.000000e+00
  br i1 %4179, label %4180, label %4187, !dx.controlflow.hints !141

; <label>:4180                                    ; preds = %4176
  %4181 = fmul fast float %4166, 0x3FF7154760000000
  %4182 = call float @dx.op.unary.f32(i32 21, float %4181)  ; Exp(value)
  %4183 = fsub fast float 1.000000e+00, %4182
  %4184 = fmul fast float %4163, %4183
  %4185 = fsub fast float -0.000000e+00, %4184
  %4186 = fdiv fast float %4185, %4166
  br label %4187

; <label>:4187                                    ; preds = %4180, %4176
  %4188 = phi float [ %4186, %4180 ], [ %4163, %4176 ]
  %4189 = phi float [ %4182, %4180 ], [ 1.000000e+00, %4176 ]
  %4190 = fcmp fast une float %4167, 0.000000e+00
  br i1 %4190, label %4191, label %4198, !dx.controlflow.hints !141

; <label>:4191                                    ; preds = %4187
  %4192 = fmul fast float %4167, 0x3FF7154760000000
  %4193 = call float @dx.op.unary.f32(i32 21, float %4192)  ; Exp(value)
  %4194 = fsub fast float 1.000000e+00, %4193
  %4195 = fmul fast float %4164, %4194
  %4196 = fsub fast float -0.000000e+00, %4195
  %4197 = fdiv fast float %4196, %4167
  br label %4198

; <label>:4198                                    ; preds = %4191, %4187, %4147, %4140
  %4199 = phi float [ %4197, %4191 ], [ %4159, %4147 ], [ %4144, %4140 ], [ %4164, %4187 ]
  %4200 = phi float [ %4188, %4191 ], [ %4158, %4147 ], [ %4143, %4140 ], [ %4188, %4187 ]
  %4201 = phi float [ %4177, %4191 ], [ %4157, %4147 ], [ %4142, %4140 ], [ %4177, %4187 ]
  %4202 = phi float [ %4193, %4191 ], [ %4149, %4147 ], [ 1.000000e+00, %4140 ], [ 1.000000e+00, %4187 ]
  %4203 = phi float [ %4189, %4191 ], [ %4149, %4147 ], [ 1.000000e+00, %4140 ], [ %4189, %4187 ]
  %4204 = phi float [ %4178, %4191 ], [ %4149, %4147 ], [ 1.000000e+00, %4140 ], [ %4178, %4187 ]
  %4205 = fmul fast float %4204, %4116
  %4206 = fmul fast float %4203, %4127
  %4207 = fmul fast float %4202, %4138
  %4208 = fadd fast float %4205, %4201
  %4209 = fadd fast float %4206, %4200
  %4210 = fadd fast float %4207, %4199
  %4211 = fmul fast float %4204, %4115
  %4212 = fmul fast float %4203, %4126
  %4213 = fmul fast float %4202, %4137
  br label %4214

; <label>:4214                                    ; preds = %4198, %4009
  %4215 = phi float [ %4213, %4198 ], [ %4015, %4009 ]
  %4216 = phi float [ %4212, %4198 ], [ %4014, %4009 ]
  %4217 = phi float [ %4211, %4198 ], [ %4013, %4009 ]
  %4218 = phi float [ %4210, %4198 ], [ %4012, %4009 ]
  %4219 = phi float [ %4209, %4198 ], [ %4011, %4009 ]
  %4220 = phi float [ %4208, %4198 ], [ %4010, %4009 ]
  %4221 = fmul fast float %4220, %3163
  %4222 = fmul fast float %4219, %3163
  %4223 = fmul fast float %4218, %3163
  %4224 = fmul fast float %4217, %3457
  %4225 = call float @dx.op.dot3.f32(i32 55, float %4217, float %4216, float %4215, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4226 = call float @dx.op.dot3.f32(i32 55, float %4221, float %4222, float %4223, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4227 = select i1 %171, float %4225, float %4217
  %4228 = select i1 %171, float %4225, float %4216
  %4229 = select i1 %171, float 1.000000e+00, float %4215
  %4230 = select i1 %171, float %4226, float %4221
  %4231 = select i1 %171, float 0.000000e+00, float %4222
  %4232 = select i1 %171, float 0.000000e+00, float %4223
  %4233 = fmul fast float %4227, %3451
  %4234 = fmul fast float %4228, %3452
  %4235 = fmul fast float %4229, %3453
  %4236 = fadd fast float %4233, %4230
  %4237 = fadd fast float %4234, %4231
  %4238 = fadd fast float %4232, %4235
  %4239 = fmul fast float %4227, %3454
  %4240 = fmul fast float %4228, %3455
  %4241 = fmul fast float %4229, %3456
  %4242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.i32 %4242, 0
  %4244 = icmp eq i32 %4243, 0
  br i1 %4244, label %4612, label %4245, !dx.controlflow.hints !143

; <label>:4245                                    ; preds = %4214
  %4246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4246, 2
  %4248 = extractvalue %dx.types.CBufRet.f32 %4246, 3
  %4249 = fmul fast float %4247, %63
  %4250 = fmul fast float %4248, %64
  %4251 = fmul fast float %4249, 2.000000e+00
  %4252 = fmul fast float %4250, 2.000000e+00
  %4253 = fsub fast float 1.000000e+00, %4251
  %4254 = fsub fast float 1.000000e+00, %4252
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 0
  %4257 = extractvalue %dx.types.CBufRet.f32 %4255, 1
  %4258 = extractvalue %dx.types.CBufRet.f32 %4255, 2
  %4259 = fmul fast float %4253, %4256
  %4260 = fmul fast float %4253, %4257
  %4261 = fmul fast float %4253, %4258
  %4262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4262, 0
  %4264 = extractvalue %dx.types.CBufRet.f32 %4262, 1
  %4265 = extractvalue %dx.types.CBufRet.f32 %4262, 2
  %4266 = fmul fast float %4254, %4263
  %4267 = fmul fast float %4254, %4264
  %4268 = fmul fast float %4254, %4265
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.CBufRet.f32 %4269, 1
  %4272 = extractvalue %dx.types.CBufRet.f32 %4269, 2
  %4273 = fadd fast float %4266, %4270
  %4274 = fadd fast float %4273, %4259
  %4275 = fadd fast float %4267, %4271
  %4276 = fadd fast float %4275, %4260
  %4277 = fadd fast float %4268, %4272
  %4278 = fadd fast float %4277, %4261
  %4279 = fmul fast float %4274, %3450
  %4280 = fmul fast float %4276, %3450
  %4281 = fmul fast float %4278, %3450
  %4282 = fmul fast float %4279, %4279
  %4283 = fmul fast float %4280, %4280
  %4284 = fadd fast float %4282, %4283
  %4285 = fmul fast float %4281, %4281
  %4286 = fadd fast float %4284, %4285
  %4287 = call float @dx.op.unary.f32(i32 24, float %4286)  ; Sqrt(value)
  %4288 = extractvalue %dx.types.CBufRet.f32 %3175, 0
  %4289 = fsub fast float %4287, %4288
  %4290 = extractvalue %dx.types.CBufRet.f32 %3175, 2
  %4291 = fmul fast float %4289, %4290
  %4292 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4293 = fadd fast float %4292, -5.000000e-01
  %4294 = fmul fast float %4293, 2.000000e+00
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 2
  %4297 = call float @dx.op.binary.f32(i32 36, float %4296, float %4294)  ; FMin(a,b)
  %4298 = fsub fast float -0.000000e+00, %4296
  %4299 = fcmp fast ogt float %4297, %4298
  br i1 %4299, label %4300, label %4612, !dx.controlflow.hints !144

; <label>:4300                                    ; preds = %4245
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4303 = fcmp fast ogt float %4302, 0.000000e+00
  br i1 %4303, label %4304, label %4379, !dx.controlflow.hints !145

; <label>:4304                                    ; preds = %4300
  %4305 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %4306 = extractvalue %dx.types.Dimensions %4305, 0
  %4307 = sitofp i32 %4306 to float
  %4308 = extractvalue %dx.types.Dimensions %4305, 1
  %4309 = sitofp i32 %4308 to float
  %4310 = fmul fast float %4249, %4307
  %4311 = fmul fast float %4250, %4309
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4314 = fsub fast float -0.000000e+00, %4313
  %4315 = fptoui float %4314 to i32
  %4316 = fptoui float %4310 to i32
  %4317 = fptoui float %4311 to i32
  %4318 = and i32 %4315, 31
  %4319 = lshr i32 %4316, %4318
  %4320 = lshr i32 %4317, %4318
  %4321 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %4315, i32 %4319, i32 %4320, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = fcmp fast olt float %4322, -1.000000e+00
  %4324 = fcmp fast ogt float %4322, -1.000000e+00
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 1
  %4327 = select i1 %4324, float %4326, float 1.000000e+00
  %4328 = fadd fast float %4322, 1.000000e+00
  %4329 = fmul fast float %4327, %4328
  %4330 = call float @dx.op.unary.f32(i32 6, float %4329)  ; FAbs(value)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4325, 3
  %4332 = fcmp fast oge float %4330, %4331
  %4333 = select i1 %4332, float 0x4197782600000000, float %4330
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 0
  %4336 = extractvalue %dx.types.CBufRet.f32 %4334, 1
  %4337 = extractvalue %dx.types.CBufRet.f32 %4334, 2
  %4338 = select i1 %4323, float %4335, float %4256
  %4339 = select i1 %4323, float %4336, float %4257
  %4340 = select i1 %4323, float %4337, float %4258
  %4341 = fmul fast float %4338, %4253
  %4342 = fmul fast float %4339, %4253
  %4343 = fmul fast float %4340, %4253
  %4344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.f32 %4344, 0
  %4346 = extractvalue %dx.types.CBufRet.f32 %4344, 1
  %4347 = extractvalue %dx.types.CBufRet.f32 %4344, 2
  %4348 = select i1 %4323, float %4345, float %4263
  %4349 = select i1 %4323, float %4346, float %4264
  %4350 = select i1 %4323, float %4347, float %4265
  %4351 = fmul fast float %4348, %4254
  %4352 = fmul fast float %4349, %4254
  %4353 = fmul fast float %4350, %4254
  %4354 = fadd fast float %4351, %4341
  %4355 = fadd fast float %4352, %4342
  %4356 = fadd fast float %4353, %4343
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 0
  %4359 = extractvalue %dx.types.CBufRet.f32 %4357, 1
  %4360 = extractvalue %dx.types.CBufRet.f32 %4357, 2
  %4361 = select i1 %4323, float %4358, float %4270
  %4362 = select i1 %4323, float %4359, float %4271
  %4363 = select i1 %4323, float %4360, float %4272
  %4364 = fadd fast float %4354, %4361
  %4365 = fadd fast float %4355, %4362
  %4366 = fadd fast float %4356, %4363
  %4367 = fmul fast float %4364, %4333
  %4368 = fmul fast float %4365, %4333
  %4369 = fmul fast float %4366, %4333
  %4370 = fmul fast float %4367, %4367
  %4371 = fmul fast float %4368, %4368
  %4372 = fadd fast float %4370, %4371
  %4373 = fmul fast float %4369, %4369
  %4374 = fadd fast float %4372, %4373
  %4375 = call float @dx.op.unary.f32(i32 24, float %4374)  ; Sqrt(value)
  %4376 = fsub fast float %4375, %4288
  %4377 = fmul fast float %4376, %4290
  %4378 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  br label %4379

; <label>:4379                                    ; preds = %4304, %4300
  %4380 = phi float [ %4378, %4304 ], [ 1.000000e+00, %4300 ]
  %4381 = fmul fast float %4297, 5.000000e-01
  %4382 = fadd fast float %4381, 5.000000e-01
  %4383 = call float @dx.op.unary.f32(i32 22, float %4382)  ; Frc(value)
  %4384 = call float @dx.op.unary.f32(i32 27, float %4383)  ; Round_ni(value)
  %4385 = call float @dx.op.unary.f32(i32 22, float %4383)  ; Frc(value)
  %4386 = fmul fast float %4385, 2.000000e+00
  %4387 = fadd fast float %4386, -1.000000e+00
  %4388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %32, float %4249, float %4250, float %4384, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.ResRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.ResRet.f32 %4388, 2
  %4392 = extractvalue %dx.types.ResRet.f32 %4388, 3
  %4393 = fadd fast float %4389, -5.000000e-01
  %4394 = fadd fast float %4391, -5.000000e-01
  %4395 = fmul fast float %4393, 0xBFD5555560000000
  %4396 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4394, float %4395)  ; FMad(a,b,c)
  %4397 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4390, float 0.000000e+00)  ; FMad(a,b,c)
  %4398 = fadd fast float %4397, %4392
  %4399 = fmul fast float %4393, -7.500000e-01
  %4400 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4394, float %4399)  ; FMad(a,b,c)
  %4401 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4390, float 0.000000e+00)  ; FMad(a,b,c)
  %4402 = fadd fast float %4401, %4392
  %4403 = call float @dx.op.binary.f32(i32 35, float %4396, float -1.000000e+00)  ; FMax(a,b)
  %4404 = call float @dx.op.binary.f32(i32 35, float %4398, float -1.000000e+00)  ; FMax(a,b)
  %4405 = call float @dx.op.binary.f32(i32 35, float %4400, float -1.000000e+00)  ; FMax(a,b)
  %4406 = call float @dx.op.binary.f32(i32 35, float %4402, float -1.000000e+00)  ; FMax(a,b)
  %4407 = call float @dx.op.binary.f32(i32 36, float %4403, float 1.000000e+00)  ; FMin(a,b)
  %4408 = call float @dx.op.binary.f32(i32 36, float %4404, float 1.000000e+00)  ; FMin(a,b)
  %4409 = call float @dx.op.binary.f32(i32 36, float %4405, float 1.000000e+00)  ; FMin(a,b)
  %4410 = call float @dx.op.binary.f32(i32 36, float %4406, float 1.000000e+00)  ; FMin(a,b)
  %4411 = fcmp fast olt float %4407, 0x3FEFFF8020000000
  br i1 %4411, label %4412, label %4527, !dx.controlflow.hints !146

; <label>:4412                                    ; preds = %4379
  %4413 = extractvalue %dx.types.CBufRet.f32 %4295, 3
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.CBufRet.f32 %4414, 1
  %4417 = extractvalue %dx.types.CBufRet.f32 %4414, 2
  %4418 = extractvalue %dx.types.CBufRet.f32 %4414, 3
  %4419 = fsub fast float %4415, %4407
  %4420 = fsub fast float %4416, %4408
  %4421 = fsub fast float %4417, %4409
  %4422 = fsub fast float %4418, %4410
  %4423 = fmul fast float %4419, %4413
  %4424 = fmul fast float %4420, %4413
  %4425 = fmul fast float %4421, %4413
  %4426 = fmul fast float %4422, %4413
  %4427 = fadd fast float %4423, %4407
  %4428 = fadd fast float %4424, %4408
  %4429 = fsub fast float -0.000000e+00, %4428
  %4430 = fadd fast float %4425, %4409
  %4431 = fadd fast float %4426, %4410
  %4432 = fmul fast float %4427, %4427
  %4433 = fsub fast float %4428, %4432
  %4434 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4433)  ; FMax(a,b)
  %4435 = fdiv fast float 1.000000e+00, %4434
  %4436 = fmul fast float %4428, %4427
  %4437 = fsub fast float %4430, %4436
  %4438 = fsub fast float %4387, %4427
  %4439 = fmul fast float %4387, %4387
  %4440 = fsub fast float %4439, %4428
  %4441 = fmul fast float %4438, %4435
  %4442 = fmul fast float %4441, %4437
  %4443 = fsub fast float %4440, %4442
  %4444 = fmul fast float %4428, %4428
  %4445 = fsub fast float %4431, %4444
  %4446 = fmul fast float %4437, %4437
  %4447 = fmul fast float %4446, %4435
  %4448 = fsub fast float %4445, %4447
  %4449 = fdiv fast float %4443, %4448
  %4450 = fmul fast float %4437, %4449
  %4451 = fsub fast float %4438, %4450
  %4452 = fmul fast float %4451, %4435
  %4453 = fmul fast float %4452, %4427
  %4454 = fsub fast float 1.000000e+00, %4453
  %4455 = fmul fast float %4428, %4449
  %4456 = fsub fast float %4454, %4455
  %4457 = fmul fast float %4452, %4452
  %4458 = fmul fast float %4449, 4.000000e+00
  %4459 = fmul fast float %4458, %4456
  %4460 = fsub fast float %4457, %4459
  %4461 = call float @dx.op.unary.f32(i32 24, float %4460)  ; Sqrt(value)
  %4462 = fcmp fast oge float %4452, 0.000000e+00
  %4463 = fsub fast float -0.000000e+00, %4461
  %4464 = select i1 %4462, float %4463, float %4461
  %4465 = fsub fast float %4464, %4452
  %4466 = fdiv fast float %4465, %4449
  %4467 = fdiv fast float %4456, %4465
  %4468 = fmul fast float %4466, 5.000000e-01
  %4469 = fmul fast float %4467, 2.000000e+00
  %4470 = select i1 %4462, float %4468, float %4469
  %4471 = select i1 %4462, float %4469, float %4468
  %4472 = call float @dx.op.binary.f32(i32 35, float %4470, float %4471)  ; FMax(a,b)
  %4473 = call float @dx.op.binary.f32(i32 36, float %4470, float %4471)  ; FMin(a,b)
  %4474 = fcmp fast ogt float %4387, %4473
  br i1 %4474, label %4475, label %4485

; <label>:4475                                    ; preds = %4412
  %4476 = fsub fast float %4387, %4473
  %4477 = fsub fast float %4472, %4473
  %4478 = fmul fast float %4476, %4477
  %4479 = fmul fast float %4472, %4387
  %4480 = fadd fast float %4472, %4387
  %4481 = fmul fast float %4480, %4427
  %4482 = fadd fast float %4479, %4428
  %4483 = fsub fast float %4482, %4481
  %4484 = fdiv fast float %4483, %4478
  br label %4485

; <label>:4485                                    ; preds = %4475, %4412
  %4486 = phi float [ %4484, %4475 ], [ 0.000000e+00, %4412 ]
  %4487 = fcmp fast ogt float %4387, %4472
  %4488 = fsub fast float %4387, %4472
  br i1 %4487, label %4489, label %4499

; <label>:4489                                    ; preds = %4485
  %4490 = fsub fast float %4472, %4473
  %4491 = fmul fast float %4490, %4488
  %4492 = fmul fast float %4473, %4387
  %4493 = fadd fast float %4473, %4387
  %4494 = fmul fast float %4493, %4427
  %4495 = fsub fast float %4429, %4492
  %4496 = fadd fast float %4495, %4494
  %4497 = fdiv fast float %4496, %4491
  %4498 = fadd fast float %4497, %4486
  br label %4499

; <label>:4499                                    ; preds = %4489, %4485
  %4500 = phi float [ %4498, %4489 ], [ %4486, %4485 ]
  %4501 = fsub fast float %4387, %4473
  %4502 = fmul fast float %4501, %4488
  %4503 = fmul fast float %4473, %4472
  %4504 = fadd fast float %4473, %4472
  %4505 = fmul fast float %4504, %4427
  %4506 = fadd fast float %4503, %4428
  %4507 = fsub fast float %4506, %4505
  %4508 = fdiv fast float %4507, %4502
  %4509 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4510 = fcmp fast oeq float %3176, 0.000000e+00
  %4511 = extractvalue %dx.types.CBufRet.f32 %4295, 0
  %4512 = fcmp fast oeq float %4511, 0.000000e+00
  %4513 = or i1 %4510, %4512
  %4514 = fmul fast float %4511, 2.000000e+00
  %4515 = fadd fast float %4296, %4297
  %4516 = fdiv fast float %4515, %4514
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fmul fast float %4517, 2.000000e+00
  %4519 = fsub fast float 3.000000e+00, %4518
  %4520 = fmul fast float %4517, %4517
  %4521 = fmul fast float %4520, %4519
  %4522 = select i1 %4513, float 1.000000e+00, float %4521
  %4523 = fmul fast float %4508, %3176
  %4524 = fadd fast float %4509, %4523
  %4525 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4526 = fmul fast float %4522, %4525
  br label %4527

; <label>:4527                                    ; preds = %4499, %4379
  %4528 = phi float [ %4526, %4499 ], [ 0.000000e+00, %4379 ]
  %4529 = fsub fast float 1.000000e+00, %4528
  %4530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %32, float %4249, float %4250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4531 = extractvalue %dx.types.ResRet.f32 %4530, 0
  %4532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.i32 %4532, 2
  %4534 = icmp eq i32 %4533, 0
  br i1 %4534, label %4540, label %4535

; <label>:4535                                    ; preds = %4527
  %4536 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4537 = fadd fast float %4531, -1.000000e+00
  %4538 = fmul fast float %4536, %4537
  %4539 = fadd fast float %4538, 1.000000e+00
  br label %4540

; <label>:4540                                    ; preds = %4535, %4527
  %4541 = phi float [ %4539, %4535 ], [ %4529, %4527 ]
  br i1 %4303, label %4542, label %4560

; <label>:4542                                    ; preds = %4540
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 1
  %4545 = fsub fast float %4380, %4544
  %4546 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4547 = fsub fast float %4380, %4302
  %4548 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4549 = fsub fast float %4546, %4548
  %4550 = fsub fast float %4382, %4548
  %4551 = fdiv fast float %4550, %4549
  %4552 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4553 = fmul fast float %4552, 2.000000e+00
  %4554 = fsub fast float 3.000000e+00, %4553
  %4555 = fsub fast float %4531, %4541
  %4556 = fmul fast float %4552, %4552
  %4557 = fmul fast float %4556, %4555
  %4558 = fmul fast float %4557, %4554
  %4559 = fadd fast float %4558, %4541
  br label %4560

; <label>:4560                                    ; preds = %4542, %4540
  %4561 = phi float [ %4559, %4542 ], [ %4541, %4540 ]
  %4562 = call float @dx.op.binary.f32(i32 35, float %4531, float %4561)  ; FMax(a,b)
  %4563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.i32 %4563, 2
  %4565 = and i32 %4564, 1
  %4566 = icmp eq i32 %4565, 0
  %4567 = fcmp fast une float %4562, 1.000000e+00
  %4568 = and i1 %4567, %4566
  br i1 %4568, label %4569, label %4588

; <label>:4569                                    ; preds = %4560
  %4570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %32, float %4249, float %4250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.ResRet.f32 %4570, 1
  %4573 = extractvalue %dx.types.ResRet.f32 %4570, 2
  %4574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.f32 %4574, 1
  %4576 = fmul fast float %4575, %4571
  %4577 = fmul fast float %4575, %4572
  %4578 = fmul fast float %4575, %4573
  %4579 = fcmp fast ogt float %4531, 0x3FEFFF2E40000000
  %4580 = fsub fast float 1.000000e+00, %4562
  %4581 = fsub fast float 1.000000e+00, %4531
  %4582 = fdiv fast float %4580, %4581
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = select i1 %4579, float 0.000000e+00, float %4583
  %4585 = fmul fast float %4576, %4584
  %4586 = fmul fast float %4577, %4584
  %4587 = fmul fast float %4578, %4584
  br label %4588

; <label>:4588                                    ; preds = %4569, %4560
  %4589 = phi float [ 0.000000e+00, %4560 ], [ %4585, %4569 ]
  %4590 = phi float [ 0.000000e+00, %4560 ], [ %4586, %4569 ]
  %4591 = phi float [ 0.000000e+00, %4560 ], [ %4587, %4569 ]
  %4592 = fmul fast float %4589, %3163
  %4593 = fmul fast float %4590, %3163
  %4594 = fmul fast float %4591, %3163
  %4595 = fmul fast float %4562, %4224
  %4596 = call float @dx.op.dot3.f32(i32 55, float %4562, float %4562, float %4562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4597 = call float @dx.op.dot3.f32(i32 55, float %4592, float %4593, float %4594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4598 = select i1 %171, float %4596, float %4562
  %4599 = select i1 %171, float 1.000000e+00, float %4562
  %4600 = select i1 %171, float %4597, float %4592
  %4601 = select i1 %171, float 0.000000e+00, float %4593
  %4602 = select i1 %171, float 0.000000e+00, float %4594
  %4603 = fmul fast float %4598, %4236
  %4604 = fmul fast float %4598, %4237
  %4605 = fmul fast float %4599, %4238
  %4606 = fadd fast float %4603, %4600
  %4607 = fadd fast float %4604, %4601
  %4608 = fadd fast float %4602, %4605
  %4609 = fmul fast float %4598, %4239
  %4610 = fmul fast float %4598, %4240
  %4611 = fmul fast float %4599, %4241
  br label %4612

; <label>:4612                                    ; preds = %4588, %4245, %4214, %3446
  %4613 = phi float [ %3451, %3446 ], [ %4236, %4214 ], [ %4606, %4588 ], [ %4236, %4245 ]
  %4614 = phi float [ %3452, %3446 ], [ %4237, %4214 ], [ %4607, %4588 ], [ %4237, %4245 ]
  %4615 = phi float [ %3453, %3446 ], [ %4238, %4214 ], [ %4608, %4588 ], [ %4238, %4245 ]
  %4616 = phi float [ %3454, %3446 ], [ %4239, %4214 ], [ %4609, %4588 ], [ %4239, %4245 ]
  %4617 = phi float [ %3455, %3446 ], [ %4240, %4214 ], [ %4610, %4588 ], [ %4240, %4245 ]
  %4618 = phi float [ %3456, %3446 ], [ %4241, %4214 ], [ %4611, %4588 ], [ %4241, %4245 ]
  %4619 = phi float [ %3457, %3446 ], [ %4224, %4214 ], [ %4595, %4588 ], [ %4224, %4245 ]
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 2
  %4622 = extractvalue %dx.types.CBufRet.f32 %4620, 3
  %4623 = fmul fast float %4621, %63
  %4624 = fmul fast float %4622, %64
  %4625 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4626 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4627 = select i1 %3186, i32 2, i32 0
  %4628 = or i32 %4627, 1
  %4629 = uitofp i32 %4628 to float
  %4630 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %32, float %4625, float %4626, float %4629, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.ResRet.f32 %4630, 1
  %4633 = extractvalue %dx.types.ResRet.f32 %4630, 2
  %4634 = extractvalue %dx.types.ResRet.f32 %4630, 3
  %4635 = add nuw nsw i32 %4627, 2
  %4636 = uitofp i32 %4635 to float
  %4637 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %32, float %4625, float %4626, float %4636, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = extractvalue %dx.types.ResRet.f32 %4637, 1
  %4640 = extractvalue %dx.types.ResRet.f32 %4637, 2
  %4641 = extractvalue %dx.types.ResRet.f32 %4637, 3
  %4642 = call float @dx.op.binary.f32(i32 35, float %4632, float %4633)  ; FMax(a,b)
  %4643 = call float @dx.op.binary.f32(i32 35, float %4631, float %4642)  ; FMax(a,b)
  %4644 = call float @dx.op.binary.f32(i32 35, float %4643, float %4634)  ; FMax(a,b)
  %4645 = call float @dx.op.binary.f32(i32 36, float %4639, float %4640)  ; FMin(a,b)
  %4646 = call float @dx.op.binary.f32(i32 36, float %4638, float %4645)  ; FMin(a,b)
  %4647 = call float @dx.op.binary.f32(i32 36, float %4646, float %4641)  ; FMin(a,b)
  %4648 = fmul fast float %4644, 2.550000e+02
  %4649 = fadd fast float %4648, 0x3F70101020000000
  %4650 = fptoui float %4649 to i32
  %4651 = fmul fast float %4647, 2.550000e+02
  %4652 = fadd fast float %4651, 0x3F70101020000000
  %4653 = fptoui float %4652 to i32
  %4654 = icmp ult i32 %4650, %4653
  br i1 %4654, label %4655, label %4824

; <label>:4655                                    ; preds = %4612
  %4656 = fcmp fast ogt float %50, 9.843750e-01
  %4657 = fadd fast float %3450, -4.000000e+00
  %4658 = select i1 %4656, float -4.000000e+00, float %4657
  %4659 = call float @dx.op.binary.f32(i32 35, float %4658, float 0.000000e+00)  ; FMax(a,b)
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 0
  %4662 = fadd fast float %4661, %4659
  %4663 = extractvalue %dx.types.CBufRet.f32 %4660, 2
  %4664 = fmul fast float %4662, %4663
  %4665 = call float @dx.op.unary.f32(i32 23, float %4664)  ; Log(value)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4660, 3
  %4667 = fmul fast float %4666, %4665
  %4668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.f32 %4668, 2
  %4670 = fmul fast float %4667, %4669
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = uitofp i32 %4650 to float
  %4673 = uitofp i32 %4653 to float
  %4674 = fadd fast float %4672, 5.000000e-01
  %4675 = fadd fast float %4673, 5.000000e-01
  %4676 = fmul fast float %4669, %4674
  %4677 = fmul fast float %4669, %4675
  %4678 = fadd fast float %4676, 0x3F0FFB4800000000
  %4679 = fadd fast float %4677, 0xBF0FFB4800000000
  %4680 = call float @dx.op.binary.f32(i32 35, float %4671, float %4678)  ; FMax(a,b)
  %4681 = call float @dx.op.binary.f32(i32 36, float %4680, float %4679)  ; FMin(a,b)
  %4682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.f32 %4682, 1
  %4684 = extractvalue %dx.types.CBufRet.f32 %4682, 2
  %4685 = extractvalue %dx.types.CBufRet.f32 %4682, 0
  %4686 = select i1 %3186, float %4685, float 0.000000e+00
  %4687 = fmul fast float %4683, %4681
  %4688 = fadd fast float %4686, %4687
  %4689 = fadd fast float %4686, %4684
  %4690 = fsub fast float %4683, %4684
  %4691 = fadd fast float %4690, %4686
  %4692 = call float @dx.op.binary.f32(i32 35, float %4688, float %4689)  ; FMax(a,b)
  %4693 = call float @dx.op.binary.f32(i32 36, float %4692, float %4691)  ; FMin(a,b)
  %4694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %30, float %4625, float %4626, float %4693, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = extractvalue %dx.types.ResRet.f32 %4694, 1
  %4697 = extractvalue %dx.types.ResRet.f32 %4694, 2
  %4698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.i32 %4698, 0
  %4700 = extractvalue %dx.types.CBufRet.i32 %4698, 1
  %4701 = uitofp i32 %4699 to float
  %4702 = uitofp i32 %4700 to float
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.CBufRet.f32 %4703, 1
  %4706 = fmul fast float %4701, %4625
  %4707 = fmul fast float %4702, %4626
  %4708 = fadd fast float %4706, -5.000000e-01
  %4709 = fadd fast float %4707, -5.000000e-01
  %4710 = call float @dx.op.unary.f32(i32 22, float %4708)  ; Frc(value)
  %4711 = call float @dx.op.unary.f32(i32 22, float %4709)  ; Frc(value)
  %4712 = fmul fast float %4710, %4710
  %4713 = fmul fast float %4712, %4710
  %4714 = fsub fast float 3.000000e+00, %4710
  %4715 = fmul fast float %4712, %4714
  %4716 = fmul fast float %4710, 3.000000e+00
  %4717 = fmul fast float %4713, 3.000000e+00
  %4718 = fmul fast float %4712, 6.000000e+00
  %4719 = fsub fast float %4717, %4718
  %4720 = fadd fast float %4719, 4.000000e+00
  %4721 = fmul fast float %4720, 0x3FC5555560000000
  %4722 = fmul fast float %4713, -3.000000e+00
  %4723 = fadd fast float %4712, %4710
  %4724 = fmul fast float %4723, 3.000000e+00
  %4725 = fadd fast float %4722, 1.000000e+00
  %4726 = fadd fast float %4725, %4724
  %4727 = fmul fast float %4713, 0x3FC5555560000000
  %4728 = fmul fast float %4711, %4711
  %4729 = fmul fast float %4728, %4711
  %4730 = fsub fast float 3.000000e+00, %4711
  %4731 = fmul fast float %4728, %4730
  %4732 = fmul fast float %4711, 3.000000e+00
  %4733 = fmul fast float %4729, 3.000000e+00
  %4734 = fmul fast float %4728, 6.000000e+00
  %4735 = fsub fast float %4733, %4734
  %4736 = fadd fast float %4735, 4.000000e+00
  %4737 = fmul fast float %4736, 0x3FC5555560000000
  %4738 = fmul fast float %4729, -3.000000e+00
  %4739 = fadd fast float %4728, %4711
  %4740 = fmul fast float %4739, 3.000000e+00
  %4741 = fadd fast float %4738, 1.000000e+00
  %4742 = fadd fast float %4741, %4740
  %4743 = fmul fast float %4729, 0x3FC5555560000000
  %4744 = fadd fast float %4710, 1.000000e+00
  %4745 = fsub fast float 1.000000e+00, %4716
  %4746 = fadd fast float %4745, %4715
  %4747 = fadd fast float %4746, %4720
  %4748 = fmul fast float %4747, 0x3FC5555560000000
  %4749 = fdiv fast float %4721, %4748
  %4750 = fsub fast float %4744, %4749
  %4751 = fsub fast float 1.000000e+00, %4710
  %4752 = fadd fast float %4726, %4713
  %4753 = fmul fast float %4752, 0x3FC5555560000000
  %4754 = fdiv fast float %4727, %4753
  %4755 = fadd fast float %4751, %4754
  %4756 = fadd fast float %4711, 1.000000e+00
  %4757 = fsub fast float 1.000000e+00, %4732
  %4758 = fadd fast float %4757, %4731
  %4759 = fadd fast float %4758, %4736
  %4760 = fmul fast float %4759, 0x3FC5555560000000
  %4761 = fdiv fast float %4737, %4760
  %4762 = fsub fast float %4756, %4761
  %4763 = fsub fast float 1.000000e+00, %4711
  %4764 = fadd fast float %4742, %4729
  %4765 = fmul fast float %4764, 0x3FC5555560000000
  %4766 = fdiv fast float %4743, %4765
  %4767 = fadd fast float %4766, %4763
  %4768 = fmul fast float %4750, %4704
  %4769 = fsub fast float %4625, %4768
  %4770 = fmul fast float %4755, %4704
  %4771 = fadd fast float %4770, %4625
  %4772 = fmul fast float %4767, %4705
  %4773 = fadd fast float %4772, %4626
  %4774 = fmul fast float %4762, %4705
  %4775 = fsub fast float %4626, %4774
  %4776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %4769, float %4775, float %4693, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4777 = extractvalue %dx.types.ResRet.f32 %4776, 0
  %4778 = extractvalue %dx.types.ResRet.f32 %4776, 1
  %4779 = extractvalue %dx.types.ResRet.f32 %4776, 2
  %4780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %4771, float %4775, float %4693, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4781 = extractvalue %dx.types.ResRet.f32 %4780, 0
  %4782 = extractvalue %dx.types.ResRet.f32 %4780, 1
  %4783 = extractvalue %dx.types.ResRet.f32 %4780, 2
  %4784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %4769, float %4773, float %4693, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4785 = extractvalue %dx.types.ResRet.f32 %4784, 0
  %4786 = extractvalue %dx.types.ResRet.f32 %4784, 1
  %4787 = extractvalue %dx.types.ResRet.f32 %4784, 2
  %4788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %4771, float %4773, float %4693, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 0
  %4790 = extractvalue %dx.types.ResRet.f32 %4788, 1
  %4791 = extractvalue %dx.types.ResRet.f32 %4788, 2
  %4792 = fsub fast float %4785, %4777
  %4793 = fsub fast float %4786, %4778
  %4794 = fsub fast float %4787, %4779
  %4795 = fmul fast float %4792, %4765
  %4796 = fmul fast float %4793, %4765
  %4797 = fmul fast float %4794, %4765
  %4798 = fadd fast float %4795, %4777
  %4799 = fadd fast float %4796, %4778
  %4800 = fadd fast float %4797, %4779
  %4801 = fsub fast float %4789, %4781
  %4802 = fsub fast float %4790, %4782
  %4803 = fsub fast float %4791, %4783
  %4804 = fmul fast float %4801, %4765
  %4805 = fmul fast float %4802, %4765
  %4806 = fmul fast float %4803, %4765
  %4807 = fsub fast float %4781, %4798
  %4808 = fadd fast float %4807, %4804
  %4809 = fsub fast float %4782, %4799
  %4810 = fadd fast float %4809, %4805
  %4811 = fsub fast float %4783, %4800
  %4812 = fadd fast float %4811, %4806
  %4813 = fmul fast float %4808, %4753
  %4814 = fmul fast float %4810, %4753
  %4815 = fmul fast float %4812, %4753
  %4816 = fadd fast float %4813, %4798
  %4817 = fadd fast float %4814, %4799
  %4818 = fadd fast float %4815, %4800
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4821 = fmul fast float %4816, %4820
  %4822 = fmul fast float %4817, %4820
  %4823 = fmul fast float %4818, %4820
  br label %4824

; <label>:4824                                    ; preds = %4655, %4612
  %4825 = phi float [ %4695, %4655 ], [ 1.000000e+00, %4612 ]
  %4826 = phi float [ %4696, %4655 ], [ 1.000000e+00, %4612 ]
  %4827 = phi float [ %4697, %4655 ], [ 1.000000e+00, %4612 ]
  %4828 = phi float [ %4821, %4655 ], [ 0.000000e+00, %4612 ]
  %4829 = phi float [ %4822, %4655 ], [ 0.000000e+00, %4612 ]
  %4830 = phi float [ %4823, %4655 ], [ 0.000000e+00, %4612 ]
  %4831 = fmul fast float %4828, %3163
  %4832 = fmul fast float %4829, %3163
  %4833 = fmul fast float %4830, %3163
  %4834 = fmul fast float %4825, %4619
  %4835 = call float @dx.op.dot3.f32(i32 55, float %4825, float %4826, float %4827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4836 = call float @dx.op.dot3.f32(i32 55, float %4831, float %4832, float %4833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = select i1 %171, float %4835, float %4825
  %4838 = select i1 %171, float %4835, float %4826
  %4839 = select i1 %171, float 1.000000e+00, float %4827
  %4840 = select i1 %171, float %4836, float %4831
  %4841 = select i1 %171, float 0.000000e+00, float %4832
  %4842 = select i1 %171, float 0.000000e+00, float %4833
  %4843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4844 = extractvalue %dx.types.CBufRet.i32 %4843, 3
  %4845 = and i32 %4844, 3
  %4846 = icmp ne i32 %4845, 0
  %4847 = and i32 %4844, 4
  %4848 = icmp ne i32 %4847, 0
  %4849 = and i1 %4846, %4848
  %4850 = and i1 %171, %4849
  br i1 %4850, label %4851, label %4857

; <label>:4851                                    ; preds = %4824
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 1
  %4854 = fadd fast float %4834, -1.000000e+00
  %4855 = fmul fast float %4853, %4854
  %4856 = fadd fast float %4855, 1.000000e+00
  br label %4857

; <label>:4857                                    ; preds = %4851, %4824
  %4858 = phi float [ %4856, %4851 ], [ %4834, %4824 ]
  %4859 = fadd fast float %4616, %4613
  %4860 = fmul fast float %4837, %4859
  %4861 = fadd fast float %4860, %4840
  %4862 = fadd fast float %4617, %4614
  %4863 = fmul fast float %4838, %4862
  %4864 = fadd fast float %4863, %4841
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  br i1 %171, label %4867, label %4891

; <label>:4867                                    ; preds = %4857
  %4868 = fadd fast float %4861, %4864
  %4869 = fmul fast float %4866, %4868
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 3
  %4872 = extractvalue %dx.types.CBufRet.f32 %3168, 1
  %4873 = fsub fast float %3173, %3167
  %4874 = fadd fast float %4873, %3174
  %4875 = fsub fast float %4874, %4872
  %4876 = extractvalue %dx.types.CBufRet.f32 %3168, 2
  %4877 = fmul fast float %4875, %4876
  %4878 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4879 = fsub fast float %4878, %4871
  %4880 = fmul fast float %4879, %4858
  %4881 = fadd fast float %4880, %4871
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 0
  %4884 = fsub fast float %4881, %4883
  %4885 = fmul fast float %4884, 1.000000e+01
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = fsub fast float %1304, %3163
  %4888 = fmul fast float %4886, %4887
  %4889 = fadd fast float %4888, %3163
  %4890 = fmul fast float %4889, %4881
  br label %4915

; <label>:4891                                    ; preds = %4857
  %4892 = fadd fast float %4618, %4615
  %4893 = fmul fast float %4839, %4892
  %4894 = fadd fast float %4893, %4842
  %4895 = fmul fast float %4866, %4861
  %4896 = fmul fast float %4866, %4864
  %4897 = fmul fast float %4866, %4894
  %4898 = call float @dx.op.binary.f32(i32 35, float %4896, float %4897)  ; FMax(a,b)
  %4899 = call float @dx.op.binary.f32(i32 35, float %4895, float %4898)  ; FMax(a,b)
  %4900 = call float @dx.op.binary.f32(i32 35, float %4899, float %3163)  ; FMax(a,b)
  %4901 = fcmp fast ugt float %4900, 0x3F10000000000000
  br i1 %4901, label %4903, label %4902

; <label>:4902                                    ; preds = %4891
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4903

; <label>:4903                                    ; preds = %4902, %4891
  %4904 = add i32 %38, 116
  %4905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4904, i32 undef)  ; BufferLoad(srv,index,wot)
  %4906 = extractvalue %dx.types.ResRet.i32 %4905, 0
  %4907 = and i32 %4906, 32
  %4908 = icmp eq i32 %4907, 0
  br i1 %4908, label %4915, label %4909

; <label>:4909                                    ; preds = %4903
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 0
  %4912 = fmul fast float %4911, 0x3FE99999A0000000
  %4913 = fadd fast float %4911, %4895
  %4914 = fadd fast float %4912, %4897
  br label %4915

; <label>:4915                                    ; preds = %4909, %4903, %4867
  %4916 = phi float [ %4869, %4867 ], [ %4913, %4909 ], [ %4895, %4903 ]
  %4917 = phi float [ %4890, %4867 ], [ %4896, %4909 ], [ %4896, %4903 ]
  %4918 = phi float [ %4889, %4867 ], [ %4914, %4909 ], [ %4897, %4903 ]
  %4919 = phi float [ %4889, %4867 ], [ %3163, %4909 ], [ %3163, %4903 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %4920 = call float @dx.op.binary.f32(i32 36, float %4916, float 3.225500e+04)  ; FMin(a,b)
  %4921 = call float @dx.op.binary.f32(i32 36, float %4917, float 3.225500e+04)  ; FMin(a,b)
  %4922 = call float @dx.op.binary.f32(i32 36, float %4918, float 3.225500e+04)  ; FMin(a,b)
  %4923 = call float @dx.op.binary.f32(i32 36, float %4919, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4920)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4921)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4922)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %4923)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

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

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!50}
!dx.entryPoints = !{!51}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !39, !42}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !20}
!20 = !{i32 0, i32 5}
!21 = !{i32 13, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !26}
!26 = !{i32 0, i32 14}
!27 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!28 = !{i32 19, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!29 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!30 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!31 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!32 = !{i32 23, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!33 = !{i32 24, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!34 = !{i32 25, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!35 = !{i32 26, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!36 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !26}
!37 = !{i32 28, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!39 = !{!40, !41}
!40 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!41 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!42 = !{!43, !44, !45, !46, !47, !48, !49}
!43 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!44 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!45 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!46 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!47 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!48 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!49 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!50 = !{[23 x i32] [i32 21, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15]}
!51 = !{void ()* @ps_main, !"ps_main", !52, !4, !68}
!52 = !{!53, !66, null}
!53 = !{!54, !57, !59, !60, !62, !63, !65}
!54 = !{i32 0, !"SV_Position", i8 9, i8 3, !55, i8 4, i32 1, i8 4, i32 0, i8 0, !56}
!55 = !{i32 0}
!56 = !{i32 3, i32 15}
!57 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !55, i8 2, i32 1, i8 2, i32 1, i8 0, !58}
!58 = !{i32 3, i32 3}
!59 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !55, i8 2, i32 1, i8 3, i32 2, i8 0, null}
!60 = !{i32 3, !"NORMAL", i8 9, i8 0, !55, i8 2, i32 1, i8 3, i32 3, i8 0, !61}
!61 = !{i32 3, i32 7}
!62 = !{i32 4, !"TANGENT", i8 9, i8 0, !55, i8 2, i32 1, i8 4, i32 4, i8 0, !56}
!63 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !55, i8 1, i32 1, i8 1, i32 5, i8 0, !64}
!64 = !{i32 3, i32 1}
!65 = !{i32 6, !"SV_SampleIndex", i8 5, i8 12, !55, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!66 = !{!67}
!67 = !{i32 0, !"SV_Target", i8 9, i8 16, !55, i8 0, i32 1, i8 4, i32 0, i8 0, !56}
!68 = !{i32 0, i64 16}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = !{!75, !75, i64 0}
!75 = !{!"int", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C/C++ TBAA"}
!78 = !{!79, !81, !83, !85}
!79 = distinct !{!79, !80, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!80 = distinct !{!80, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!81 = distinct !{!81, !82, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!82 = distinct !{!82, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!83 = distinct !{!83, !84, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!84 = distinct !{!84, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!85 = distinct !{!85, !86, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!86 = distinct !{!86, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = !{!89, !89, i64 0}
!89 = !{!"float", !76, i64 0}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = !{!101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!101 = distinct !{!101, !102, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!102 = distinct !{!102, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!103 = distinct !{!103, !104, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!104 = distinct !{!104, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!105 = distinct !{!105, !104, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!106 = distinct !{!106, !107, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!107 = distinct !{!107, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!108 = distinct !{!108, !107, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!109 = distinct !{!109, !107, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!110 = distinct !{!110, !111, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!111 = distinct !{!111, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!112 = distinct !{!112, !111, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!113 = distinct !{!113, !111, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!114 = distinct !{!114, !115, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!115 = distinct !{!115, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"\01?sort@@YAXAIAM00@Z: %c"}
!118 = distinct !{!118, !"\01?sort@@YAXAIAM00@Z"}
!119 = !{!120, !121, !101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!120 = distinct !{!120, !118, !"\01?sort@@YAXAIAM00@Z: %a"}
!121 = distinct !{!121, !118, !"\01?sort@@YAXAIAM00@Z: %b"}
!122 = !{!121}
!123 = !{!120, !117, !101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!124 = !{!120}
!125 = !{!121, !117, !101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!126 = !{!127}
!127 = distinct !{!127, !128, !"\01?sort@@YAXAIAM00@Z: %c"}
!128 = distinct !{!128, !"\01?sort@@YAXAIAM00@Z"}
!129 = !{!130, !131, !101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!130 = distinct !{!130, !128, !"\01?sort@@YAXAIAM00@Z: %a"}
!131 = distinct !{!131, !128, !"\01?sort@@YAXAIAM00@Z: %b"}
!132 = !{!131}
!133 = !{!130, !127, !101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!134 = !{!130}
!135 = !{!131, !127, !101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}

