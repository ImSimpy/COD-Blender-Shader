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
; TRANSIENT_INDEX          0    y          5     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 6994f1c61fb39ebd5ff0d84f323e1c45
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
; TRANSIENT_INDEX          0        nointerpolation       
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
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture    byte         r/o      T6     t16,space1     1
;                                   texture    byte         r/o      T7     t17,space1     1
;                                   texture     f32          2d      T8     t69,space2     1
;                                   texture    byte         r/o      T9     t49,space1     1
;                                   texture    byte         r/o     T10     t50,space1     1
;                                   texture    byte         r/o     T11     t51,space1     1
;                                   texture    byte         r/o     T12     t52,space1     1
;                                   texture     f32          2d     T13     t37,space2     1
;                                   texture     f32          2d     T14             t0     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     u32          2d     T24     t56,space2     1
;                                   texture     f32          2d     T25     t34,space2     1
;                                   texture    byte         r/o     T26     t10,space1     1
;                                   texture    byte         r/o     T27      t1,space1     1
;                                   texture     f32          1d     T28     t32,space2     1
;                                   texture     f32     2darray     T29      t8,space2     1
;                                   texture     f32          2d     T30      t2,space2     1
;                                   texture     f32          2d     T31      t3,space2     1
;                                   texture     f32          2d     T32      t4,space2     1
;                                   textureunorm_f32     2darray     T33     t80,space2     1
;                                   texture    byte         r/o     T34     t67,space1     1
;                                   texture     f32          2d     T35      t7,space2     1
;                                   texture     f32          2d     T36      t6,space2     1
;                                   texture     f32          2d     T37      t5,space2     1
;                                   texture     f32          2d     T38     t38,space2     1
;                                   texture    byte         r/o     T39     t12,space1     1
;                                   texture    byte         r/o     T40     t13,space1     1
;                                   texture     f32          1d     T41     t30,space2     1
;                                   texture     f32          3d     T42     t44,space2     1
;                                   texture     f32          3d     T43     t45,space2     1
;                                   texture     f32     2darray     T44     t47,space2     1
;                                   textureunorm_f32     2darray     T45     t85,space2     1
;                                   texture     f32          2d     T46     t83,space2     1
;                                   texture     f32          2d     T47     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = alloca [4 x i32], align 4
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = alloca [12 x float], align 4
  %70 = alloca [12 x float], align 4
  %71 = alloca [4 x float], align 4
  %72 = alloca [4 x float], align 4
  %73 = alloca [4 x float], align 4
  %74 = alloca [3 x float], align 4
  %75 = alloca [3 x float], align 4
  %76 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %77 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = fmul fast float %79, %65
  %81 = fmul fast float %79, %66
  %82 = fmul fast float %61, %58
  %83 = fmul fast float %62, %57
  %84 = fsub fast float %82, %83
  %85 = fmul fast float %62, %56
  %86 = fmul fast float %60, %58
  %87 = fsub fast float %85, %86
  %88 = fmul fast float %60, %57
  %89 = fmul fast float %61, %56
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %84, %59
  %92 = fmul fast float %87, %59
  %93 = fmul fast float %90, %59
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %97 = fmul fast float %95, 2.000000e+00
  %98 = fmul fast float %97, %80
  %99 = fmul fast float %96, 2.000000e+00
  %100 = fmul fast float %99, %81
  %101 = fsub fast float 1.000000e+00, %98
  %102 = fsub fast float 1.000000e+00, %100
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = fmul fast float %101, %104
  %108 = fmul fast float %101, %105
  %109 = fmul fast float %101, %106
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %102, %111
  %115 = fmul fast float %102, %112
  %116 = fmul fast float %102, %113
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fadd fast float %114, %118
  %122 = fadd fast float %121, %107
  %123 = fadd fast float %115, %119
  %124 = fadd fast float %123, %108
  %125 = fadd fast float %116, %120
  %126 = fadd fast float %125, %109
  %127 = fmul fast float %122, %68
  %128 = fmul fast float %124, %68
  %129 = fmul fast float %126, %68
  %130 = fmul fast float %80, 5.000000e-01
  %131 = fmul fast float %81, 5.000000e-01
  %132 = fptosi float %130 to i32
  %133 = fptosi float %131 to i32
  %134 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %132, i32 %133, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = lshr i32 %135, 18
  %137 = uitofp i32 %136 to float
  %138 = fmul fast float %137, 0x3F4C00EBA0000000
  %139 = call float @dx.op.unary.f32(i32 21, float %138)  ; Exp(value)
  %140 = fadd fast float %139, -1.000000e+00
  %141 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %142 = extractvalue %dx.types.Dimensions %141, 0
  %143 = sitofp i32 %142 to float
  %144 = extractvalue %dx.types.Dimensions %141, 1
  %145 = sitofp i32 %144 to float
  %146 = fcmp fast oge float %130, %143
  %147 = fcmp fast oge float %131, %145
  %148 = or i1 %146, %147
  %149 = select i1 %148, float 0x4197782600000000, float %140
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %153 = fmul fast float %151, %80
  %154 = fmul fast float %152, %81
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = and i32 %156, 114688
  %158 = icmp ne i32 %157, 0
  %159 = select i1 %158, float %153, float 0.000000e+00
  %160 = select i1 %158, float %154, float 0.000000e+00
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = fmul fast float %162, 2.550000e+02
  %164 = fptoui float %163 to i32
  %165 = select i1 %158, i32 %164, i32 0
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 3
  %169 = and i32 %168, 3
  %170 = icmp ne i32 %169, 0
  %171 = and i32 %168, 4
  %172 = icmp ne i32 %171, 0
  %173 = and i1 %170, %172
  br i1 %173, label %174, label %185

; <label>:174                                     ; preds = %0
  %175 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %176 = fmul fast float %175, %81
  %177 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %178 = fmul fast float %177, %80
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %48, float %178, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fsub fast float 1.000000e+00, %180
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = fcmp fast olt float %181, %183
  br label %188

; <label>:185                                     ; preds = %0
  %186 = icmp eq i32 %171, 0
  %187 = and i1 %170, %186
  br label %188

; <label>:188                                     ; preds = %185, %174
  %189 = phi i1 [ %184, %174 ], [ %187, %185 ]
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = fmul fast float %191, 0x3FE3C6EF40000000
  %193 = frem fast float %80, 2.560000e+02
  %194 = frem fast float %81, 2.560000e+02
  %195 = fptoui float %193 to i32
  %196 = fptoui float %194 to i32
  %197 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %195, i32 %196, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = fadd fast float %198, %192
  %200 = call float @dx.op.unary.f32(i32 22, float %199)  ; Frc(value)
  %201 = add i32 %55, 60
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = shl i32 %203, 4
  %205 = and i32 %204, 32752
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = lshr i32 %203, 7
  %208 = and i32 %207, 32752
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %203, 22
  %211 = shl nuw nsw i32 %210, 5
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = add i32 %55, 72
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = lshr i32 %215, 8
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = lshr i32 %215, 16
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = add i32 %55, 36
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 65535
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %229, 16
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = add i32 %55, 96
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %236, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = fmul fast float %238, 0x3F50624DE0000000
  %242 = fmul fast float %240, 0x3F50624DE0000000
  %243 = add i32 %55, 108
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 2
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %256, label %248

; <label>:248                                     ; preds = %188
  %249 = add i32 %55, 148
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = add i32 %251, 0
  %253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %253, %dx.types.Handle %77, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 3
  br label %256

; <label>:256                                     ; preds = %248, %188
  %257 = phi float [ 1.000000e+00, %188 ], [ %255, %248 ]
  %258 = add i32 %55, 24
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = add i32 %55, 28
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = or i32 %263, %260
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %907, label %266

; <label>:266                                     ; preds = %256
  %267 = add i32 %55, 92
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = lshr i32 %269, 16
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = fmul fast float %271, 0x3F50624DE0000000
  %273 = add i32 %55, 40
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = lshr i32 %275, 16
  %277 = and i32 %276, 255
  %278 = lshr i32 %275, 24
  %279 = add i32 %55, 100
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %281, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %55, 32
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = lshr i32 %288, 22
  %290 = shl nuw nsw i32 %289, 5
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = shl i32 %288, 4
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %288, 7
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 3
  %300 = fmul fast float %299, 1.000000e+03
  %301 = fmul fast float %241, %300
  %302 = call float @dx.op.unary.f32(i32 22, float %301)  ; Frc(value)
  %303 = fadd fast float %302, %231
  %304 = fmul fast float %242, %300
  %305 = call float @dx.op.unary.f32(i32 22, float %304)  ; Frc(value)
  %306 = fadd fast float %305, %233
  %307 = fmul fast float %272, %300
  %308 = call float @dx.op.unary.f32(i32 22, float %307)  ; Frc(value)
  %309 = fmul fast float %308, 0x401921FB60000000
  %310 = fadd fast float %309, %291
  %311 = call float @dx.op.unary.f32(i32 13, float %310)  ; Sin(value)
  %312 = call float @dx.op.unary.f32(i32 12, float %310)  ; Cos(value)
  %313 = fsub fast float -0.000000e+00, %311
  %314 = fadd fast float %63, -5.000000e-01
  %315 = fadd fast float %64, -5.000000e-01
  %316 = fmul fast float %283, %314
  %317 = fmul fast float %285, %315
  %318 = fadd fast float %316, 5.000000e-01
  %319 = fadd fast float %317, 5.000000e-01
  %320 = fmul fast float %294, %318
  %321 = fmul fast float %297, %319
  %322 = fmul fast float %312, %320
  %323 = call float @dx.op.tertiary.f32(i32 46, float %313, float %321, float %322)  ; FMad(a,b,c)
  %324 = fmul fast float %311, %320
  %325 = call float @dx.op.tertiary.f32(i32 46, float %312, float %321, float %324)  ; FMad(a,b,c)
  %326 = fadd fast float %303, %323
  %327 = fadd fast float %306, %325
  %328 = icmp ugt i32 %277, 1
  %329 = icmp ugt i32 %275, 33554431
  %330 = or i1 %329, %328
  br i1 %330, label %331, label %356

; <label>:331                                     ; preds = %266
  %332 = add i32 %55, 84
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = lshr i32 %334, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = fmul fast float %299, %336
  %338 = call float @dx.op.unary.f32(i32 22, float %337)  ; Frc(value)
  %339 = mul nuw nsw i32 %277, %278
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %338, %340
  %342 = call float @dx.op.unary.f32(i32 27, float %341)  ; Round_ni(value)
  %343 = fptoui float %342 to i32
  %344 = urem i32 %343, %277
  %345 = udiv i32 %343, %278
  %346 = call float @dx.op.unary.f32(i32 22, float %326)  ; Frc(value)
  %347 = call float @dx.op.unary.f32(i32 22, float %327)  ; Frc(value)
  %348 = uitofp i32 %344 to float
  %349 = uitofp i32 %345 to float
  %350 = fadd fast float %346, %348
  %351 = fadd fast float %347, %349
  %352 = uitofp i32 %277 to float
  %353 = uitofp i32 %278 to float
  %354 = fdiv fast float %350, %352
  %355 = fdiv fast float %351, %353
  br label %356

; <label>:356                                     ; preds = %331, %266
  %357 = phi float [ %354, %331 ], [ %326, %266 ]
  %358 = phi float [ %355, %331 ], [ %327, %266 ]
  %359 = and i32 %260, 16777216
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %470, label %361

; <label>:361                                     ; preds = %356
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %365 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %366 = fadd fast float %363, %127
  %367 = fadd fast float %364, %128
  %368 = fadd fast float %365, %129
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = call float @dx.op.unary.f32(i32 7, float %370)  ; Saturate(value)
  %372 = icmp eq i32 %54, 65535
  br i1 %372, label %467, label %373

; <label>:373                                     ; preds = %361
  %374 = lshr i32 %54, 1
  %375 = shl i32 %374, 2
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %54, 1
  %379 = icmp ne i32 %378, 0
  %380 = lshr i32 %377, 16
  %381 = and i32 %377, 65535
  %382 = select i1 %379, i32 %380, i32 %381
  %383 = icmp eq i32 %382, 65535
  br i1 %383, label %463, label %384

; <label>:384                                     ; preds = %373
  %385 = mul nuw nsw i32 %382, 40
  %386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = extractvalue %dx.types.ResRet.f32 %386, 1
  %389 = extractvalue %dx.types.ResRet.f32 %386, 2
  %390 = add nuw nsw i32 %385, 12
  %391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = extractvalue %dx.types.ResRet.f32 %391, 1
  %394 = extractvalue %dx.types.ResRet.f32 %391, 2
  %395 = add nuw nsw i32 %385, 24
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  %400 = add nuw nsw i32 %385, 36
  %401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = fsub fast float %366, %387
  %404 = fsub fast float %367, %388
  %405 = fsub fast float %368, %389
  %406 = fmul fast float %402, %403
  %407 = fmul fast float %402, %404
  %408 = fmul fast float %402, %405
  %409 = call float @dx.op.unary.f32(i32 27, float %406)  ; Round_ni(value)
  %410 = call float @dx.op.unary.f32(i32 27, float %407)  ; Round_ni(value)
  %411 = call float @dx.op.unary.f32(i32 27, float %408)  ; Round_ni(value)
  %412 = fadd fast float %409, 5.000000e-01
  %413 = fadd fast float %410, 5.000000e-01
  %414 = fadd fast float %411, 5.000000e-01
  %415 = fmul fast float %412, %392
  %416 = fmul fast float %413, %393
  %417 = fmul fast float %414, %394
  %418 = shl i32 %54, 2
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = add i32 %420, 0
  %422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %423 = call float @dx.op.unary.f32(i32 22, float %415)  ; Frc(value)
  %424 = call float @dx.op.unary.f32(i32 22, float %416)  ; Frc(value)
  %425 = call float @dx.op.unary.f32(i32 22, float %417)  ; Frc(value)
  %426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %422, %dx.types.Handle %49, float %423, float %424, float %425, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = fmul fast float %427, 1.023000e+03
  %431 = fmul fast float %428, 1.023000e+03
  %432 = fmul fast float %429, 1.023000e+03
  %433 = fadd fast float %430, 5.000000e-01
  %434 = fadd fast float %431, 5.000000e-01
  %435 = fadd fast float %432, 5.000000e-01
  %436 = call float @dx.op.unary.f32(i32 27, float %433)  ; Round_ni(value)
  %437 = call float @dx.op.unary.f32(i32 27, float %434)  ; Round_ni(value)
  %438 = call float @dx.op.unary.f32(i32 27, float %435)  ; Round_ni(value)
  %439 = fsub fast float %406, %409
  %440 = fsub fast float %407, %410
  %441 = fsub fast float %408, %411
  %442 = fmul fast float %439, 7.500000e-01
  %443 = fmul fast float %440, 7.500000e-01
  %444 = fmul fast float %441, 7.500000e-01
  %445 = fadd fast float %409, 1.250000e-01
  %446 = fadd fast float %445, %442
  %447 = fadd fast float %446, %436
  %448 = fadd fast float %410, 1.250000e-01
  %449 = fadd fast float %448, %443
  %450 = fadd fast float %449, %437
  %451 = fadd fast float %411, 1.250000e-01
  %452 = fadd fast float %451, %444
  %453 = fadd fast float %452, %438
  %454 = fmul fast float %447, %397
  %455 = fmul fast float %450, %398
  %456 = fmul fast float %453, %399
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = add i32 %458, 0
  %460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %460, %dx.types.Handle %47, float %454, float %455, float %456, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  br label %463

; <label>:463                                     ; preds = %384, %373
  %464 = phi float [ %462, %384 ], [ -1.000000e+00, %373 ]
  %465 = fadd fast float %464, %371
  %466 = call float @dx.op.unary.f32(i32 7, float %465)  ; Saturate(value)
  br label %467

; <label>:467                                     ; preds = %463, %361
  %468 = phi float [ %466, %463 ], [ %371, %361 ]
  %469 = fmul fast float %468, %257
  br label %470

; <label>:470                                     ; preds = %467, %356
  %471 = phi float [ %469, %467 ], [ %257, %356 ]
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 256
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %522, label %476

; <label>:476                                     ; preds = %470
  %477 = add i32 %55, 136
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = add i32 %479, 0
  %481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %481, %dx.types.Handle %77, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %483 = extractvalue %dx.types.ResRet.f32 %482, 0
  %484 = add i32 %55, 52
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = shl i32 %486, 4
  %488 = and i32 %487, 32752
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = lshr i32 %486, 7
  %491 = and i32 %490, 32752
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = fsub fast float 1.000000e+00, %471
  %494 = call float @dx.op.binary.f32(i32 35, float %493, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %495 = bitcast float %471 to i32
  %496 = sitofp i32 %495 to float
  %497 = fadd fast float %496, 0xC1CFBF8940000000
  %498 = fmul fast float %492, %497
  %499 = fadd fast float %498, 0x41CFBF8940000000
  %500 = fptosi float %499 to i32
  %501 = bitcast i32 %500 to float
  %502 = bitcast float %494 to i32
  %503 = sitofp i32 %502 to float
  %504 = fadd fast float %503, 0xC1CFBF8940000000
  %505 = fmul fast float %504, %492
  %506 = fadd fast float %505, 0x41CFBF8940000000
  %507 = fptosi float %506 to i32
  %508 = bitcast i32 %507 to float
  %509 = fmul fast float %501, %489
  %510 = fmul fast float %508, %489
  %511 = fsub fast float %494, %509
  %512 = fadd fast float %510, %494
  %513 = call float @dx.op.unary.f32(i32 7, float %511)  ; Saturate(value)
  %514 = call float @dx.op.unary.f32(i32 7, float %512)  ; Saturate(value)
  %515 = fsub fast float %483, %513
  %516 = fsub fast float %514, %513
  %517 = bitcast float %516 to i32
  %518 = sub nsw i32 2129859010, %517
  %519 = bitcast i32 %518 to float
  %520 = fmul fast float %519, %515
  %521 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  br label %522

; <label>:522                                     ; preds = %476, %470
  %523 = phi float [ %521, %476 ], [ %471, %470 ]
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = and i32 %525, 128
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %544, label %528

; <label>:528                                     ; preds = %522
  %529 = add i32 %55, 132
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = add i32 %531, 0
  %533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %533, %dx.types.Handle %77, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 524288
  %539 = icmp ne i32 %538, 0
  %540 = fcmp fast ogt float %535, 0x3FE0101020000000
  %541 = select i1 %540, float 1.000000e+00, float 0.000000e+00
  %542 = select i1 %539, float %541, float %535
  %543 = fmul fast float %542, %523
  br label %544

; <label>:544                                     ; preds = %528, %522
  %545 = phi float [ %543, %528 ], [ %523, %522 ]
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 16
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %748, label %550

; <label>:550                                     ; preds = %544
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = add i32 %55, 120
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = add i32 %555, 0
  %557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %556, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %558 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %557, %dx.types.Handle %76, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %559 = extractvalue %dx.types.ResRet.f32 %558, 0
  %560 = extractvalue %dx.types.ResRet.f32 %558, 1
  %561 = extractvalue %dx.types.ResRet.f32 %558, 2
  %562 = extractvalue %dx.types.ResRet.f32 %558, 3
  %563 = and i32 %552, 255
  %564 = uitofp i32 %563 to float
  %565 = lshr i32 %552, 8
  %566 = and i32 %565, 255
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %562, %564
  %569 = fadd fast float %568, %567
  %570 = fmul fast float %569, 0x3F70101000000000
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 512
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %583, label %575

; <label>:575                                     ; preds = %550
  %576 = add i32 %55, 140
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = add i32 %578, 0
  %580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %581 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %580, %dx.types.Handle %77, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  br label %583

; <label>:583                                     ; preds = %575, %550
  %584 = phi float [ %582, %575 ], [ 1.000000e+00, %550 ]
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 33554432
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %695, label %589

; <label>:589                                     ; preds = %583
  %590 = add i32 %55, 80
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %592, 65535
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = lshr i32 %592, 16
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = add i32 %55, 84
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = and i32 %599, 65535
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = lshr i32 %603, 24
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = and i32 %603, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = lshr i32 %603, 8
  %611 = and i32 %610, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = lshr i32 %603, 16
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = add i32 %55, 76
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = lshr i32 %620, 24
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = and i32 %620, 255
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, 0x3F70101020000000
  %627 = lshr i32 %620, 8
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = lshr i32 %620, 16
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F70101020000000
  %635 = bitcast float %559 to i32
  %636 = ashr i32 %635, 1
  %637 = sub nsw i32 1597463174, %636
  %638 = bitcast i32 %637 to float
  %639 = fmul fast float %559, 5.000000e-01
  %640 = fmul fast float %638, %638
  %641 = fmul fast float %640, %639
  %642 = fsub fast float 1.500000e+00, %641
  %643 = fmul fast float %638, %559
  %644 = fmul fast float %643, %642
  %645 = bitcast float %560 to i32
  %646 = ashr i32 %645, 1
  %647 = sub nsw i32 1597463174, %646
  %648 = bitcast i32 %647 to float
  %649 = fmul fast float %560, 5.000000e-01
  %650 = fmul fast float %648, %648
  %651 = fmul fast float %650, %649
  %652 = fsub fast float 1.500000e+00, %651
  %653 = fmul fast float %648, %560
  %654 = fmul fast float %653, %652
  %655 = bitcast float %561 to i32
  %656 = ashr i32 %655, 1
  %657 = sub nsw i32 1597463174, %656
  %658 = bitcast i32 %657 to float
  %659 = fmul fast float %561, 5.000000e-01
  %660 = fmul fast float %658, %658
  %661 = fmul fast float %660, %659
  %662 = fsub fast float 1.500000e+00, %661
  %663 = fmul fast float %658, %561
  %664 = fmul fast float %663, %662
  %665 = fsub fast float %644, %626
  %666 = fsub fast float %654, %630
  %667 = fsub fast float %664, %634
  %668 = fmul fast float %665, %594
  %669 = fmul fast float %666, %596
  %670 = fmul fast float %667, %601
  %671 = fadd fast float %668, %609
  %672 = fadd fast float %669, %613
  %673 = fadd fast float %670, %617
  %674 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %675 = call float @dx.op.unary.f32(i32 7, float %672)  ; Saturate(value)
  %676 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %677 = fmul fast float %674, %674
  %678 = fmul fast float %675, %675
  %679 = fmul fast float %676, %676
  %680 = fsub fast float %677, %559
  %681 = fsub fast float %678, %560
  %682 = fsub fast float %679, %561
  %683 = fmul fast float %680, %584
  %684 = fmul fast float %681, %584
  %685 = fmul fast float %682, %584
  %686 = fadd fast float %683, %559
  %687 = fadd fast float %684, %560
  %688 = fadd fast float %685, %561
  %689 = fadd fast float %606, %570
  %690 = fsub fast float %689, %623
  %691 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  %692 = fsub fast float %691, %570
  %693 = fmul fast float %692, %584
  %694 = fadd fast float %693, %570
  br label %748

; <label>:695                                     ; preds = %583
  %696 = and i32 %586, 134217728
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %732, label %698

; <label>:698                                     ; preds = %695
  %699 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %700 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %701 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %702 = fadd fast float %699, -5.000000e-01
  %703 = fadd fast float %700, -5.000000e-01
  %704 = fadd fast float %701, -5.000000e-01
  %705 = fmul fast float %702, %584
  %706 = fmul fast float %703, %584
  %707 = fmul fast float %704, %584
  %708 = fadd fast float %705, 5.000000e-01
  %709 = fadd fast float %706, 5.000000e-01
  %710 = fadd fast float %707, 5.000000e-01
  %711 = call float @dx.op.unary.f32(i32 24, float %559)  ; Sqrt(value)
  %712 = call float @dx.op.unary.f32(i32 24, float %560)  ; Sqrt(value)
  %713 = call float @dx.op.unary.f32(i32 24, float %561)  ; Sqrt(value)
  %714 = fmul fast float %708, 2.000000e+00
  %715 = fsub fast float 1.000000e+00, %714
  %716 = fmul fast float %715, %711
  %717 = fadd fast float %716, %714
  %718 = fmul fast float %717, %711
  %719 = fmul fast float %709, 2.000000e+00
  %720 = fsub fast float 1.000000e+00, %719
  %721 = fmul fast float %720, %712
  %722 = fadd fast float %721, %719
  %723 = fmul fast float %722, %712
  %724 = fmul fast float %710, 2.000000e+00
  %725 = fsub fast float 1.000000e+00, %724
  %726 = fmul fast float %725, %713
  %727 = fadd fast float %726, %724
  %728 = fmul fast float %727, %713
  %729 = fmul fast float %718, %718
  %730 = fmul fast float %723, %723
  %731 = fmul fast float %728, %728
  br label %748

; <label>:732                                     ; preds = %695
  %733 = fmul fast float %218, %218
  %734 = fmul fast float %222, %222
  %735 = fmul fast float %226, %226
  %736 = fadd fast float %733, -1.000000e+00
  %737 = fadd fast float %734, -1.000000e+00
  %738 = fadd fast float %735, -1.000000e+00
  %739 = fmul fast float %584, %736
  %740 = fmul fast float %584, %737
  %741 = fmul fast float %584, %738
  %742 = fadd fast float %739, 1.000000e+00
  %743 = fadd fast float %740, 1.000000e+00
  %744 = fadd fast float %741, 1.000000e+00
  %745 = fmul fast float %742, %559
  %746 = fmul fast float %743, %560
  %747 = fmul fast float %744, %561
  br label %748

; <label>:748                                     ; preds = %732, %698, %589, %544
  %749 = phi float [ %694, %589 ], [ %570, %698 ], [ %570, %732 ], [ 0x3FA23C0BE0000000, %544 ]
  %750 = phi float [ %686, %589 ], [ %729, %698 ], [ %745, %732 ], [ 1.000000e+00, %544 ]
  %751 = phi float [ %687, %589 ], [ %730, %698 ], [ %746, %732 ], [ 1.000000e+00, %544 ]
  %752 = phi float [ %688, %589 ], [ %731, %698 ], [ %747, %732 ], [ 1.000000e+00, %544 ]
  %753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.i32 %753, 1
  %755 = and i32 %754, 1
  %756 = icmp ne i32 %755, 0
  %757 = add i32 %55, 116
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 32
  %761 = icmp ne i32 %760, 0
  %762 = and i1 %756, %761
  %763 = select i1 %762, float 1.000000e+00, float %750
  %764 = select i1 %762, float 0x3FD3333340000000, float %751
  %765 = select i1 %762, float 0x3FD3333340000000, float %752
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = and i32 %767, 32
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %842, label %770

; <label>:770                                     ; preds = %748
  %771 = add i32 %55, 44
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = add i32 %55, 124
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = add i32 %776, 0
  %778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %778, %dx.types.Handle %76, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = extractvalue %dx.types.ResRet.f32 %779, 1
  %782 = extractvalue %dx.types.ResRet.f32 %779, 2
  %783 = extractvalue %dx.types.ResRet.f32 %779, 3
  %784 = and i32 %773, 255
  %785 = uitofp i32 %784 to float
  %786 = lshr i32 %773, 8
  %787 = and i32 %786, 255
  %788 = uitofp i32 %787 to float
  %789 = lshr i32 %773, 16
  %790 = and i32 %789, 255
  %791 = uitofp i32 %790 to float
  %792 = fmul fast float %791, 0x3F70101000000000
  %793 = fmul fast float %780, %785
  %794 = fadd fast float %793, %788
  %795 = fmul fast float %794, 0x3F70101000000000
  %796 = fadd fast float %781, -5.000000e-01
  %797 = fadd fast float %783, -5.000000e-01
  %798 = fmul fast float %796, %792
  %799 = fmul fast float %797, %792
  %800 = fadd fast float %798, 5.000000e-01
  %801 = fadd fast float %799, 5.000000e-01
  %802 = fmul fast float %800, 2.000000e+00
  %803 = fadd fast float %802, -1.000000e+00
  %804 = fmul fast float %801, 2.000000e+00
  %805 = fadd fast float %804, -1.000000e+00
  %806 = fadd fast float %803, %805
  %807 = fmul fast float %806, 5.000000e-01
  %808 = fsub fast float %803, %805
  %809 = fmul fast float %808, 5.000000e-01
  %810 = call float @dx.op.unary.f32(i32 6, float %807)  ; FAbs(value)
  %811 = fsub fast float 1.000000e+00, %810
  %812 = call float @dx.op.unary.f32(i32 6, float %809)  ; FAbs(value)
  %813 = fsub fast float %811, %812
  %814 = call float @dx.op.dot3.f32(i32 55, float %807, float %809, float %813, float %807, float %809, float %813)  ; Dot3(ax,ay,az,bx,by,bz)
  %815 = call float @dx.op.unary.f32(i32 25, float %814)  ; Rsqrt(value)
  %816 = fmul fast float %807, %815
  %817 = fmul fast float %809, %815
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = and i32 %819, 67108864
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %838, label %822

; <label>:822                                     ; preds = %770
  %823 = add i32 %55, 88
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = and i32 %825, 65535
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = and i32 %829, 65535
  %831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %830)  ; LegacyF16ToF32(value)
  %832 = lshr i32 %825, 16
  %833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %832)  ; LegacyF16ToF32(value)
  %834 = fsub fast float %795, %833
  %835 = fmul fast float %834, %827
  %836 = fadd fast float %835, %831
  %837 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  br label %838

; <label>:838                                     ; preds = %822, %770
  %839 = phi float [ %837, %822 ], [ %795, %770 ]
  %840 = call float @dx.op.dot2.f32(i32 54, float %816, float %817, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %841 = call float @dx.op.dot2.f32(i32 54, float %816, float %817, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %842

; <label>:842                                     ; preds = %838, %748
  %843 = phi float [ %839, %838 ], [ 0x3FD6666660000000, %748 ]
  %844 = phi float [ %840, %838 ], [ 0.000000e+00, %748 ]
  %845 = phi float [ %841, %838 ], [ 0.000000e+00, %748 ]
  %846 = phi float [ %782, %838 ], [ 1.000000e+00, %748 ]
  %847 = add i32 %55, 64
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = lshr i32 %849, 22
  %851 = shl nuw nsw i32 %850, 5
  %852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %851)  ; LegacyF16ToF32(value)
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = and i32 %854, 64
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %890, label %857

; <label>:857                                     ; preds = %842
  %858 = add i32 %55, 128
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %858, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = add i32 %860, 0
  %862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %861, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = and i32 %864, 131072
  %866 = icmp eq i32 %865, 0
  %867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %862, %dx.types.Handle %76, float %357, float %358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = extractvalue %dx.types.ResRet.f32 %867, 1
  %870 = extractvalue %dx.types.ResRet.f32 %867, 2
  %871 = fmul fast float %868, %206
  %872 = fmul fast float %869, %209
  %873 = fmul fast float %870, %212
  br i1 %866, label %880, label %874

; <label>:874                                     ; preds = %857
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %877 = fmul fast float %876, %871
  %878 = fmul fast float %876, %872
  %879 = fmul fast float %876, %873
  br label %880

; <label>:880                                     ; preds = %874, %857
  %881 = phi float [ %877, %874 ], [ %871, %857 ]
  %882 = phi float [ %878, %874 ], [ %872, %857 ]
  %883 = phi float [ %879, %874 ], [ %873, %857 ]
  %884 = fmul fast float %881, %852
  %885 = select i1 %189, float %884, float %881
  %886 = call float @dx.op.dot3.f32(i32 55, float %885, float %882, float %883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %887 = select i1 %189, float 0.000000e+00, float %881
  %888 = select i1 %189, float %886, float %882
  %889 = select i1 %189, float 0.000000e+00, float %883
  br label %890

; <label>:890                                     ; preds = %880, %842
  %891 = phi float [ %887, %880 ], [ 0.000000e+00, %842 ]
  %892 = phi float [ %888, %880 ], [ 0.000000e+00, %842 ]
  %893 = phi float [ %889, %880 ], [ 0.000000e+00, %842 ]
  %894 = add i32 %55, 48
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = and i32 %896, 255
  %898 = uitofp i32 %897 to float
  %899 = lshr i32 %896, 8
  %900 = and i32 %899, 255
  %901 = uitofp i32 %900 to float
  %902 = call float @dx.op.dot3.f32(i32 55, float %763, float %764, float %765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = fmul fast float %901, %902
  %904 = fadd fast float %903, %898
  %905 = fmul fast float %904, 0x3F70101020000000
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  br label %907

; <label>:907                                     ; preds = %890, %256
  %908 = phi float [ 0.000000e+00, %256 ], [ %844, %890 ]
  %909 = phi float [ 0.000000e+00, %256 ], [ %845, %890 ]
  %910 = phi float [ 0.000000e+00, %256 ], [ %763, %890 ]
  %911 = phi float [ 0.000000e+00, %256 ], [ %764, %890 ]
  %912 = phi float [ 0.000000e+00, %256 ], [ %765, %890 ]
  %913 = phi float [ 0.000000e+00, %256 ], [ %891, %890 ]
  %914 = phi float [ 0.000000e+00, %256 ], [ %892, %890 ]
  %915 = phi float [ 0.000000e+00, %256 ], [ %893, %890 ]
  %916 = phi float [ 0.000000e+00, %256 ], [ %749, %890 ]
  %917 = phi float [ 0.000000e+00, %256 ], [ %545, %890 ]
  %918 = phi float [ 0.000000e+00, %256 ], [ %843, %890 ]
  %919 = phi float [ 0.000000e+00, %256 ], [ %846, %890 ]
  %920 = phi float [ 0.000000e+00, %256 ], [ %906, %890 ]
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %923 = call float @dx.op.dot2.f32(i32 54, float %908, float %909, float %908, float %909)  ; Dot2(ax,ay,bx,by)
  %924 = fmul fast float %923, 0x3FE3333340000000
  %925 = fsub fast float 1.000000e+00, %924
  %926 = call float @dx.op.dot3.f32(i32 55, float %908, float %909, float %925, float %908, float %909, float %925)  ; Dot3(ax,ay,az,bx,by,bz)
  %927 = call float @dx.op.unary.f32(i32 25, float %926)  ; Rsqrt(value)
  %928 = fmul fast float %927, %908
  %929 = fmul fast float %927, %909
  %930 = fmul fast float %925, %927
  %931 = fmul fast float %930, %60
  %932 = fmul fast float %930, %61
  %933 = fmul fast float %930, %62
  %934 = fmul fast float %928, %56
  %935 = fmul fast float %928, %57
  %936 = fmul fast float %928, %58
  %937 = fadd fast float %931, %934
  %938 = fadd fast float %932, %935
  %939 = fadd fast float %933, %936
  %940 = fmul fast float %91, %929
  %941 = fmul fast float %92, %929
  %942 = fmul fast float %93, %929
  %943 = fadd fast float %937, %940
  %944 = fadd fast float %938, %941
  %945 = fadd fast float %939, %942
  %946 = call float @dx.op.dot3.f32(i32 55, float %943, float %944, float %945, float %943, float %944, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %947 = call float @dx.op.unary.f32(i32 25, float %946)  ; Rsqrt(value)
  %948 = fmul fast float %943, %947
  %949 = fmul fast float %944, %947
  %950 = fmul fast float %945, %947
  %951 = call float @dx.op.unary.f32(i32 83, float %127)  ; DerivCoarseX(value)
  %952 = call float @dx.op.unary.f32(i32 83, float %128)  ; DerivCoarseX(value)
  %953 = call float @dx.op.unary.f32(i32 83, float %129)  ; DerivCoarseX(value)
  %954 = call float @dx.op.unary.f32(i32 84, float %127)  ; DerivCoarseY(value)
  %955 = call float @dx.op.unary.f32(i32 84, float %128)  ; DerivCoarseY(value)
  %956 = call float @dx.op.unary.f32(i32 84, float %129)  ; DerivCoarseY(value)
  %957 = fadd fast float %951, %127
  %958 = fadd fast float %952, %128
  %959 = fadd fast float %953, %129
  %960 = fadd fast float %954, %127
  %961 = fadd fast float %955, %128
  %962 = fadd fast float %956, %129
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 1
  %966 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 3
  %970 = fmul fast float %964, %80
  %971 = fmul fast float %970, %968
  %972 = fmul fast float %965, %81
  %973 = fmul fast float %972, %969
  %974 = fptoui float %971 to i32
  %975 = fptoui float %973 to i32
  %976 = fadd fast float %964, -1.000000e+00
  %977 = fadd fast float %965, -1.000000e+00
  %978 = fptoui float %976 to i32
  %979 = fptoui float %977 to i32
  %980 = call i32 @dx.op.binary.i32(i32 40, i32 %974, i32 %978)  ; UMin(a,b)
  %981 = call i32 @dx.op.binary.i32(i32 40, i32 %975, i32 %979)  ; UMin(a,b)
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 2
  %984 = extractvalue %dx.types.CBufRet.f32 %982, 3
  %985 = fmul fast float %983, %68
  %986 = fsub fast float %985, %984
  %987 = fadd fast float %966, -1.000000e+00
  %988 = call float @dx.op.binary.f32(i32 36, float %986, float %987)  ; FMin(a,b)
  %989 = fptoui float %988 to i32
  %990 = fptoui float %964 to i32
  %991 = fptoui float %965 to i32
  %992 = mul i32 %989, %991
  %993 = add i32 %992, %981
  %994 = mul i32 %993, %990
  %995 = add i32 %994, %980
  %996 = shl i32 %995, 2
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = and i32 %998, 1023
  %1000 = lshr i32 %998, 10
  %1001 = icmp eq i32 %999, 0
  br i1 %1001, label %1430, label %1002

; <label>:1002                                    ; preds = %907
  %1003 = and i32 %998, 1023
  br label %1004

; <label>:1004                                    ; preds = %1131, %1002
  %1005 = phi float [ %1132, %1131 ], [ 0.000000e+00, %1002 ]
  %1006 = phi float [ %1133, %1131 ], [ %917, %1002 ]
  %1007 = phi float [ %1134, %1131 ], [ %922, %1002 ]
  %1008 = phi float [ %1135, %1131 ], [ %920, %1002 ]
  %1009 = phi float [ %1136, %1131 ], [ 0.000000e+00, %1002 ]
  %1010 = phi float [ %1137, %1131 ], [ 0.000000e+00, %1002 ]
  %1011 = phi float [ %1138, %1131 ], [ %913, %1002 ]
  %1012 = phi float [ %1139, %1131 ], [ %914, %1002 ]
  %1013 = phi float [ %1140, %1131 ], [ %915, %1002 ]
  %1014 = phi float [ %1141, %1131 ], [ %948, %1002 ]
  %1015 = phi float [ %1142, %1131 ], [ %949, %1002 ]
  %1016 = phi float [ %1143, %1131 ], [ %950, %1002 ]
  %1017 = phi float [ %1144, %1131 ], [ %919, %1002 ]
  %1018 = phi float [ %1145, %1131 ], [ %918, %1002 ]
  %1019 = phi float [ %1146, %1131 ], [ 0.000000e+00, %1002 ]
  %1020 = phi float [ %1147, %1131 ], [ %916, %1002 ]
  %1021 = phi float [ %1148, %1131 ], [ %910, %1002 ]
  %1022 = phi float [ %1149, %1131 ], [ %911, %1002 ]
  %1023 = phi float [ %1150, %1131 ], [ %912, %1002 ]
  %1024 = phi i32 [ %1081, %1131 ], [ 0, %1002 ]
  %1025 = add nuw nsw i32 %1024, %1000
  %1026 = shl i32 %1025, 2
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = shl i32 %1028, 8
  %1030 = or i32 %1029, 48
  %1031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.ResRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.ResRet.f32 %1031, 2
  %1035 = extractvalue %dx.types.ResRet.f32 %1031, 3
  %1036 = or i32 %1029, 64
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = extractvalue %dx.types.ResRet.i32 %1037, 1
  %1040 = or i32 %1029, 80
  %1041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 2
  %1043 = extractvalue %dx.types.ResRet.f32 %1041, 3
  %1044 = or i32 %1029, 96
  %1045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = extractvalue %dx.types.ResRet.f32 %1045, 3
  %1050 = or i32 %1029, 112
  %1051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1053 = or i32 %1029, 128
  %1054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1058 = extractvalue %dx.types.ResRet.f32 %1054, 3
  %1059 = or i32 %1029, 144
  %1060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = extractvalue %dx.types.ResRet.f32 %1060, 3
  %1065 = or i32 %1029, 160
  %1066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.ResRet.f32 %1066, 1
  %1069 = extractvalue %dx.types.ResRet.f32 %1066, 2
  %1070 = extractvalue %dx.types.ResRet.f32 %1066, 3
  %1071 = or i32 %1029, 192
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = or i32 %1029, 208
  %1075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = or i32 %1029, 248
  %1078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = add nuw nsw i32 %1024, 1
  %1082 = bitcast float %1035 to i32
  %1083 = and i32 %1082, 2560
  %1084 = icmp eq i32 %1083, 0
  %1085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.ResRet.f32 %1085, 2
  %1089 = extractvalue %dx.types.ResRet.f32 %1085, 3
  %1090 = call float @dx.op.dot4.f32(i32 56, float %1086, float %1087, float %1088, float %1089, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1091 = or i32 %1029, 16
  %1092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = extractvalue %dx.types.ResRet.f32 %1092, 3
  %1097 = call float @dx.op.dot4.f32(i32 56, float %1093, float %1094, float %1095, float %1096, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1098 = or i32 %1029, 32
  %1099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.ResRet.f32 %1099, 1
  %1102 = extractvalue %dx.types.ResRet.f32 %1099, 2
  %1103 = extractvalue %dx.types.ResRet.f32 %1099, 3
  %1104 = call float @dx.op.dot4.f32(i32 56, float %1100, float %1101, float %1102, float %1103, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1105 = call float @dx.op.unary.f32(i32 27, float %1090)  ; Round_ni(value)
  %1106 = call float @dx.op.unary.f32(i32 6, float %1105)  ; FAbs(value)
  %1107 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1108 = call float @dx.op.unary.f32(i32 6, float %1107)  ; FAbs(value)
  %1109 = call float @dx.op.unary.f32(i32 6, float %1104)  ; FAbs(value)
  %1110 = call float @dx.op.unary.f32(i32 27, float %1109)  ; Round_ni(value)
  %1111 = fadd fast float %1108, %1106
  %1112 = fadd fast float %1111, %1110
  %1113 = fcmp fast oeq float %1112, 0.000000e+00
  %1114 = call float @dx.op.dot4.f32(i32 56, float %1086, float %1087, float %1088, float %1089, float %957, float %958, float %959, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1115 = call float @dx.op.dot4.f32(i32 56, float %1093, float %1094, float %1095, float %1096, float %957, float %958, float %959, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1116 = call float @dx.op.dot4.f32(i32 56, float %1086, float %1087, float %1088, float %1089, float %960, float %961, float %962, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1117 = call float @dx.op.dot4.f32(i32 56, float %1093, float %1094, float %1095, float %1096, float %960, float %961, float %962, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1118 = fsub fast float %1114, %1090
  %1119 = fsub fast float %1116, %1090
  %1120 = fsub fast float %1115, %1097
  %1121 = fsub fast float %1117, %1097
  %1122 = call float @dx.op.dot3.f32(i32 55, float %1032, float %1033, float %1034, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1125 = fadd fast float %1124, %1122
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1128 = fcmp fast ogt float %1126, %1127
  %1129 = and i1 %1113, %1128
  %1130 = and i1 %1084, %1129
  br i1 %1130, label %1152, label %1131

; <label>:1131                                    ; preds = %1416, %1233, %1152, %1004
  %1132 = phi float [ %1005, %1152 ], [ %1236, %1233 ], [ %1236, %1416 ], [ %1005, %1004 ]
  %1133 = phi float [ %1006, %1152 ], [ %1006, %1233 ], [ %1391, %1416 ], [ %1006, %1004 ]
  %1134 = phi float [ %1007, %1152 ], [ %1007, %1233 ], [ %1390, %1416 ], [ %1007, %1004 ]
  %1135 = phi float [ %1008, %1152 ], [ %1008, %1233 ], [ %1388, %1416 ], [ %1008, %1004 ]
  %1136 = phi float [ %1009, %1152 ], [ %1009, %1233 ], [ %1360, %1416 ], [ %1009, %1004 ]
  %1137 = phi float [ %1010, %1152 ], [ %1010, %1233 ], [ %1358, %1416 ], [ %1010, %1004 ]
  %1138 = phi float [ %1011, %1152 ], [ %1011, %1233 ], [ %1426, %1416 ], [ %1011, %1004 ]
  %1139 = phi float [ %1012, %1152 ], [ %1012, %1233 ], [ %1427, %1416 ], [ %1012, %1004 ]
  %1140 = phi float [ %1013, %1152 ], [ %1013, %1233 ], [ %1428, %1416 ], [ %1013, %1004 ]
  %1141 = phi float [ %1014, %1152 ], [ %1014, %1233 ], [ %1339, %1416 ], [ %1014, %1004 ]
  %1142 = phi float [ %1015, %1152 ], [ %1015, %1233 ], [ %1340, %1416 ], [ %1015, %1004 ]
  %1143 = phi float [ %1016, %1152 ], [ %1016, %1233 ], [ %1341, %1416 ], [ %1016, %1004 ]
  %1144 = phi float [ %1017, %1152 ], [ %1017, %1233 ], [ %1368, %1416 ], [ %1017, %1004 ]
  %1145 = phi float [ %1018, %1152 ], [ %1018, %1233 ], [ %1365, %1416 ], [ %1018, %1004 ]
  %1146 = phi float [ %1019, %1152 ], [ %1019, %1233 ], [ %1362, %1416 ], [ %1019, %1004 ]
  %1147 = phi float [ %1020, %1152 ], [ %1020, %1233 ], [ %1356, %1416 ], [ %1020, %1004 ]
  %1148 = phi float [ %1021, %1152 ], [ %1021, %1233 ], [ %1351, %1416 ], [ %1021, %1004 ]
  %1149 = phi float [ %1022, %1152 ], [ %1022, %1233 ], [ %1352, %1416 ], [ %1022, %1004 ]
  %1150 = phi float [ %1023, %1152 ], [ %1023, %1233 ], [ %1353, %1416 ], [ %1023, %1004 ]
  %1151 = icmp eq i32 %1081, %1003
  br i1 %1151, label %1429, label %1004

; <label>:1152                                    ; preds = %1004
  %1153 = extractvalue %dx.types.ResRet.f32 %1051, 3
  %1154 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1155 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1156 = extractvalue %dx.types.ResRet.f32 %1041, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1158 = extractvalue %dx.types.ResRet.i32 %1037, 3
  %1159 = extractvalue %dx.types.ResRet.i32 %1037, 2
  %1160 = add i32 %1158, 0
  %1161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1160, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1163 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1161, %dx.types.Handle %1162, float %1090, float %1097, float undef, float undef, i32 0, i32 0, i32 undef, float %1118, float %1120, float undef, float %1119, float %1121, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = fmul fast float %1164, %1157
  %1166 = fadd fast float %1165, %1156
  %1167 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1168 = fmul fast float %1090, %1046
  %1169 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %1097, float %1168)  ; FMad(a,b,c)
  %1170 = fadd fast float %1169, %1155
  %1171 = fmul fast float %1090, %1048
  %1172 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %1097, float %1171)  ; FMad(a,b,c)
  %1173 = fadd fast float %1172, %1154
  %1174 = fmul fast float %1118, %1046
  %1175 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %1120, float %1174)  ; FMad(a,b,c)
  %1176 = fmul fast float %1118, %1048
  %1177 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %1120, float %1176)  ; FMad(a,b,c)
  %1178 = fmul fast float %1119, %1046
  %1179 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %1121, float %1178)  ; FMad(a,b,c)
  %1180 = fmul fast float %1119, %1048
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %1121, float %1180)  ; FMad(a,b,c)
  %1182 = add i32 %1159, 0
  %1183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1182, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1184 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1183, %dx.types.Handle %1162, float %1170, float %1173, float undef, float undef, i32 0, i32 0, i32 undef, float %1175, float %1177, float undef, float %1179, float %1181, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = and i32 %1082, 1024
  %1187 = icmp ne i32 %1186, 0
  %1188 = fcmp fast ogt float %1185, 0x3FE0101020000000
  %1189 = uitofp i1 %1188 to float
  %1190 = select i1 %1187, float %1189, float %1185
  %1191 = and i32 %1082, 8192
  %1192 = icmp ne i32 %1191, 0
  %1193 = select i1 %1192, float %1153, float 1.000000e+00
  %1194 = fmul fast float %1090, 2.000000e+00
  %1195 = fadd fast float %1194, -1.000000e+00
  %1196 = call float @dx.op.unary.f32(i32 6, float %1195)  ; FAbs(value)
  %1197 = fmul fast float %1196, %1079
  %1198 = fsub fast float %1197, %1079
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1200 = fmul fast float %1097, 2.000000e+00
  %1201 = fadd fast float %1200, -1.000000e+00
  %1202 = call float @dx.op.unary.f32(i32 6, float %1201)  ; FAbs(value)
  %1203 = fmul fast float %1202, %1080
  %1204 = fsub fast float %1203, %1080
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = fmul fast float %1109, %1042
  %1207 = fsub fast float %1206, %1042
  %1208 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1209 = fmul fast float %1167, %1193
  %1210 = fmul fast float %1209, %1164
  %1211 = fmul fast float %1210, %1199
  %1212 = fmul fast float %1211, %1190
  %1213 = fmul fast float %1212, %1205
  %1214 = fmul fast float %1213, %1208
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1217 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1218 = fsub fast float %1126, %1217
  %1219 = fmul fast float %1218, %1216
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1221 = fmul fast float %1214, %1043
  %1222 = fadd fast float %1214, %1043
  %1223 = fmul fast float %1222, %1052
  %1224 = fsub fast float %1223, %1052
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = and i32 %1082, 128
  %1227 = icmp ne i32 %1226, 0
  %1228 = select i1 %1227, float %1225, float %1221
  %1229 = fmul fast float %1228, %1220
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 0
  %1232 = fcmp fast ugt float %1229, %1231
  br i1 %1232, label %1233, label %1131

; <label>:1233                                    ; preds = %1152
  %1234 = select i1 %1192, float %1229, float 0.000000e+00
  %1235 = fadd fast float %1234, %1005
  %1236 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  br i1 %1192, label %1131, label %1237

; <label>:1237                                    ; preds = %1233
  %1238 = and i32 %1082, 4
  %1239 = and i32 %1082, 8
  %1240 = add i32 %1038, 0
  %1241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1240, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1243 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1241, %dx.types.Handle %1242, float %1170, float %1173, float undef, float undef, i32 0, i32 0, i32 undef, float %1175, float %1177, float undef, float %1179, float %1181, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = extractvalue %dx.types.ResRet.f32 %1243, 1
  %1246 = extractvalue %dx.types.ResRet.f32 %1243, 2
  %1247 = extractvalue %dx.types.ResRet.f32 %1243, 3
  %1248 = bitcast float %1064 to i32
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = lshr i32 %1248, 8
  %1252 = and i32 %1251, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = fmul fast float %1247, %1250
  %1255 = fadd fast float %1254, %1253
  %1256 = fmul fast float %1255, 0x3F70101000000000
  %1257 = add i32 %1039, 0
  %1258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1257, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1259 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1258, %dx.types.Handle %1242, float %1170, float %1173, float undef, float undef, i32 0, i32 0, i32 undef, float %1175, float %1177, float undef, float %1179, float %1181, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = extractvalue %dx.types.ResRet.f32 %1259, 1
  %1262 = extractvalue %dx.types.ResRet.f32 %1259, 2
  %1263 = extractvalue %dx.types.ResRet.f32 %1259, 3
  %1264 = bitcast float %1058 to i32
  %1265 = and i32 %1264, 255
  %1266 = uitofp i32 %1265 to float
  %1267 = lshr i32 %1264, 8
  %1268 = and i32 %1267, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = lshr i32 %1264, 16
  %1271 = and i32 %1270, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1272, 0x3F70101000000000
  %1274 = fmul fast float %1260, %1266
  %1275 = fadd fast float %1274, %1269
  %1276 = fmul fast float %1275, 0x3F70101000000000
  %1277 = fadd fast float %1261, -5.000000e-01
  %1278 = fadd fast float %1263, -5.000000e-01
  %1279 = fmul fast float %1277, %1273
  %1280 = fmul fast float %1278, %1273
  %1281 = fadd fast float %1279, 5.000000e-01
  %1282 = fadd fast float %1280, 5.000000e-01
  %1283 = fmul fast float %1244, %1067
  %1284 = fmul fast float %1245, %1068
  %1285 = fmul fast float %1246, %1069
  %1286 = fmul fast float %1281, 2.000000e+00
  %1287 = fadd fast float %1286, -1.000000e+00
  %1288 = fmul fast float %1282, 2.000000e+00
  %1289 = fadd fast float %1288, -1.000000e+00
  %1290 = fadd fast float %1287, %1289
  %1291 = fmul fast float %1290, 5.000000e-01
  %1292 = fsub fast float %1287, %1289
  %1293 = fmul fast float %1292, 5.000000e-01
  %1294 = call float @dx.op.unary.f32(i32 6, float %1291)  ; FAbs(value)
  %1295 = fsub fast float 1.000000e+00, %1294
  %1296 = call float @dx.op.unary.f32(i32 6, float %1293)  ; FAbs(value)
  %1297 = fsub fast float %1295, %1296
  %1298 = call float @dx.op.dot3.f32(i32 55, float %1291, float %1293, float %1297, float %1291, float %1293, float %1297)  ; Dot3(ax,ay,az,bx,by,bz)
  %1299 = call float @dx.op.unary.f32(i32 25, float %1298)  ; Rsqrt(value)
  %1300 = fmul fast float %1291, %1299
  %1301 = fmul fast float %1293, %1299
  %1302 = fmul fast float %1299, %1297
  %1303 = fmul fast float %1302, %1032
  %1304 = fmul fast float %1302, %1033
  %1305 = fmul fast float %1302, %1034
  %1306 = fmul fast float %1300, %1055
  %1307 = fmul fast float %1300, %1056
  %1308 = fmul fast float %1300, %1057
  %1309 = fadd fast float %1306, %1303
  %1310 = fadd fast float %1307, %1304
  %1311 = fadd fast float %1308, %1305
  %1312 = fmul fast float %1301, %1061
  %1313 = fmul fast float %1301, %1062
  %1314 = fmul fast float %1301, %1063
  %1315 = fadd fast float %1309, %1312
  %1316 = fadd fast float %1310, %1313
  %1317 = fadd fast float %1311, %1314
  %1318 = call float @dx.op.dot3.f32(i32 55, float %1315, float %1316, float %1317, float %1315, float %1316, float %1317)  ; Dot3(ax,ay,az,bx,by,bz)
  %1319 = call float @dx.op.unary.f32(i32 25, float %1318)  ; Rsqrt(value)
  %1320 = fmul fast float %1315, %1319
  %1321 = fmul fast float %1316, %1319
  %1322 = fmul fast float %1317, %1319
  %1323 = icmp ne i32 %1239, 0
  %1324 = select i1 %1323, float 1.000000e+00, float 0.000000e+00
  %1325 = fmul fast float %1229, %1324
  %1326 = and i32 %1082, 1
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1328, label %1332

; <label>:1328                                    ; preds = %1237
  %1329 = fsub fast float %1320, %1014
  %1330 = fsub fast float %1321, %1015
  %1331 = fsub fast float %1322, %1016
  br label %1332

; <label>:1332                                    ; preds = %1328, %1237
  %1333 = phi float [ %1329, %1328 ], [ %1320, %1237 ]
  %1334 = phi float [ %1330, %1328 ], [ %1321, %1237 ]
  %1335 = phi float [ %1331, %1328 ], [ %1322, %1237 ]
  %1336 = fmul float %1335, %1325
  %1337 = fmul float %1334, %1325
  %1338 = fmul float %1333, %1325
  %1339 = fadd fast float %1338, %1014
  %1340 = fadd fast float %1337, %1015
  %1341 = fadd fast float %1336, %1016
  %1342 = icmp ne i32 %1238, 0
  %1343 = select i1 %1342, float 1.000000e+00, float 0.000000e+00
  %1344 = fmul fast float %1229, %1343
  %1345 = fsub fast float %1283, %1021
  %1346 = fsub fast float %1284, %1022
  %1347 = fsub fast float %1285, %1023
  %1348 = fmul fast float %1345, %1344
  %1349 = fmul fast float %1346, %1344
  %1350 = fmul fast float %1347, %1344
  %1351 = fadd fast float %1348, %1021
  %1352 = fadd fast float %1349, %1022
  %1353 = fadd fast float %1350, %1023
  %1354 = fsub fast float %1256, %1020
  %1355 = fmul fast float %1354, %1344
  %1356 = fadd fast float %1355, %1020
  %1357 = fmul fast float %1344, %1010
  %1358 = fsub fast float %1010, %1357
  %1359 = fmul fast float %1344, %1009
  %1360 = fsub fast float %1009, %1359
  %1361 = fadd fast float %1229, %1019
  %1362 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1363 = fsub fast float %1276, %1018
  %1364 = fmul fast float %1363, %1325
  %1365 = fadd fast float %1364, %1018
  %1366 = fsub fast float %1262, %1017
  %1367 = fmul fast float %1366, %1325
  %1368 = fadd fast float %1367, %1017
  %1369 = call float @dx.op.dot3.f32(i32 55, float %1283, float %1284, float %1285, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.CBufRet.f32 %1370, 1
  %1373 = fmul fast float %1372, %1369
  %1374 = fadd fast float %1373, %1371
  %1375 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1376 = bitcast float %1070 to i32
  %1377 = and i32 %1376, 65535
  %1378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1377)  ; LegacyF16ToF32(value)
  %1379 = lshr i32 %1376, 16
  %1380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1379)  ; LegacyF16ToF32(value)
  %1381 = fcmp fast oge float %1378, 0.000000e+00
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = select i1 %1381, float %1378, float %1383
  %1385 = fadd fast float %1384, %1380
  %1386 = fsub fast float %1375, %1008
  %1387 = fmul fast float %1386, %1229
  %1388 = fadd fast float %1387, %1008
  %1389 = fmul fast float %1385, %1229
  %1390 = call float @dx.op.binary.f32(i32 35, float %1007, float %1389)  ; FMax(a,b)
  %1391 = call float @dx.op.binary.f32(i32 35, float %1006, float %1229)  ; FMax(a,b)
  %1392 = and i32 %1082, 16
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1416, label %1394

; <label>:1394                                    ; preds = %1332
  %1395 = bitcast float %1076 to i32
  %1396 = add i32 %1073, 0
  %1397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1396, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1398 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1397, %dx.types.Handle %1242, float %1170, float %1173, float undef, float undef, i32 0, i32 0, i32 undef, float %1175, float %1177, float undef, float %1179, float %1181, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = and i32 %1395, 65535
  %1403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1402)  ; LegacyF16ToF32(value)
  %1404 = fmul fast float %1399, %1067
  %1405 = fmul fast float %1400, %1068
  %1406 = fmul fast float %1401, %1069
  %1407 = and i32 %1082, 16384
  %1408 = icmp ne i32 %1407, 0
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 0
  %1411 = select i1 %1408, float %1410, float 1.000000e+00
  %1412 = fmul fast float %1411, %1403
  %1413 = fmul fast float %1404, %1412
  %1414 = fmul fast float %1405, %1412
  %1415 = fmul fast float %1406, %1412
  br label %1416

; <label>:1416                                    ; preds = %1394, %1332
  %1417 = phi float [ %1413, %1394 ], [ 0.000000e+00, %1332 ]
  %1418 = phi float [ %1414, %1394 ], [ 0.000000e+00, %1332 ]
  %1419 = phi float [ %1415, %1394 ], [ 0.000000e+00, %1332 ]
  %1420 = fsub fast float %1417, %1011
  %1421 = fsub fast float %1418, %1012
  %1422 = fsub fast float %1419, %1013
  %1423 = fmul fast float %1420, %1229
  %1424 = fmul fast float %1421, %1229
  %1425 = fmul fast float %1422, %1229
  %1426 = fadd fast float %1423, %1011
  %1427 = fadd fast float %1424, %1012
  %1428 = fadd fast float %1425, %1013
  br label %1131

; <label>:1429                                    ; preds = %1131
  br label %1430

; <label>:1430                                    ; preds = %1429, %907
  %1431 = phi float [ 0.000000e+00, %907 ], [ %1132, %1429 ]
  %1432 = phi float [ %917, %907 ], [ %1133, %1429 ]
  %1433 = phi float [ %922, %907 ], [ %1134, %1429 ]
  %1434 = phi float [ %920, %907 ], [ %1135, %1429 ]
  %1435 = phi float [ 0.000000e+00, %907 ], [ %1136, %1429 ]
  %1436 = phi float [ 0.000000e+00, %907 ], [ %1137, %1429 ]
  %1437 = phi float [ %913, %907 ], [ %1138, %1429 ]
  %1438 = phi float [ %914, %907 ], [ %1139, %1429 ]
  %1439 = phi float [ %915, %907 ], [ %1140, %1429 ]
  %1440 = phi float [ %948, %907 ], [ %1141, %1429 ]
  %1441 = phi float [ %949, %907 ], [ %1142, %1429 ]
  %1442 = phi float [ %950, %907 ], [ %1143, %1429 ]
  %1443 = phi float [ %919, %907 ], [ %1144, %1429 ]
  %1444 = phi float [ %918, %907 ], [ %1145, %1429 ]
  %1445 = phi float [ 0.000000e+00, %907 ], [ %1146, %1429 ]
  %1446 = phi float [ %916, %907 ], [ %1147, %1429 ]
  %1447 = phi float [ %910, %907 ], [ %1148, %1429 ]
  %1448 = phi float [ %911, %907 ], [ %1149, %1429 ]
  %1449 = phi float [ %912, %907 ], [ %1150, %1429 ]
  %1450 = call float @dx.op.dot3.f32(i32 55, float %1440, float %1441, float %1442, float %1440, float %1441, float %1442)  ; Dot3(ax,ay,az,bx,by,bz)
  %1451 = call float @dx.op.unary.f32(i32 25, float %1450)  ; Rsqrt(value)
  %1452 = fmul fast float %1451, %1440
  %1453 = fmul fast float %1451, %1441
  %1454 = fmul fast float %1451, %1442
  %1455 = fadd fast float %1445, %917
  %1456 = call float @dx.op.unary.f32(i32 7, float %1455)  ; Saturate(value)
  %1457 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1453, float %1454, float %1452, float %1453, float %1454)  ; Dot3(ax,ay,az,bx,by,bz)
  %1458 = call float @dx.op.unary.f32(i32 25, float %1457)  ; Rsqrt(value)
  %1459 = fmul fast float %1458, %1452
  %1460 = fmul fast float %1458, %1453
  %1461 = fmul fast float %1458, %1454
  %1462 = fadd fast float %1446, 0xBFB99999A0000000
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1464 = fmul fast float %1463, 0x3FF1C71C80000000
  %1465 = call float @dx.op.binary.f32(i32 36, float %1446, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1466 = fsub fast float 1.000000e+00, %1464
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1468 = fmul fast float %1467, %1447
  %1469 = fmul fast float %1467, %1448
  %1470 = fmul fast float %1467, %1449
  %1471 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1472 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1473 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  %1474 = fmul fast float %1464, %1447
  %1475 = fmul fast float %1464, %1448
  %1476 = fmul fast float %1464, %1449
  %1477 = fadd fast float %1474, %1465
  %1478 = fadd fast float %1475, %1465
  %1479 = fadd fast float %1476, %1465
  %1480 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1481 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  %1482 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1483 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.i32 %1484, 3
  %1486 = and i32 %1485, 8
  %1487 = icmp ne i32 %1486, 0
  %1488 = call float @dx.op.binary.f32(i32 35, float %1471, float %1447)  ; FMax(a,b)
  %1489 = call float @dx.op.binary.f32(i32 35, float %1472, float %1447)  ; FMax(a,b)
  %1490 = call float @dx.op.binary.f32(i32 35, float %1473, float %1447)  ; FMax(a,b)
  %1491 = call float @dx.op.dot3.f32(i32 55, float %1471, float %1472, float %1473, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1492 = select i1 %189, float %1447, float %1471
  %1493 = select i1 %189, float %1491, float %1472
  %1494 = select i1 %189, float 1.000000e+00, float %1473
  %1495 = select i1 %1487, float %1488, float %1492
  %1496 = select i1 %1487, float %1489, float %1493
  %1497 = select i1 %1487, float %1490, float %1494
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 0
  %1500 = extractvalue %dx.types.CBufRet.f32 %1498, 1
  %1501 = extractvalue %dx.types.CBufRet.f32 %1498, 2
  %1502 = fadd fast float %1499, %127
  %1503 = fadd fast float %1500, %128
  %1504 = fadd fast float %1501, %129
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1508 = fsub fast float %1502, %1506
  %1509 = fsub fast float %1503, %1507
  %1510 = fmul fast float %1508, %1508
  %1511 = fmul fast float %1509, %1509
  %1512 = fadd fast float %1510, %1511
  %1513 = call float @dx.op.unary.f32(i32 24, float %1512)  ; Sqrt(value)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1505, 2
  %1515 = fcmp fast olt float %1513, %1514
  br i1 %1515, label %1516, label %1583

; <label>:1516                                    ; preds = %1430
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 0
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 0
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.CBufRet.f32 %1517, 1
  %1524 = extractvalue %dx.types.CBufRet.f32 %1519, 1
  %1525 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1526 = extractvalue %dx.types.CBufRet.f32 %1517, 3
  %1527 = extractvalue %dx.types.CBufRet.f32 %1519, 3
  %1528 = extractvalue %dx.types.CBufRet.f32 %1521, 3
  %1529 = fadd fast float %1526, %1502
  %1530 = fadd fast float %1527, %1503
  %1531 = fadd fast float %1528, %1504
  %1532 = fmul fast float %1529, %1518
  %1533 = call float @dx.op.tertiary.f32(i32 46, float %1530, float %1520, float %1532)  ; FMad(a,b,c)
  %1534 = call float @dx.op.tertiary.f32(i32 46, float %1531, float %1522, float %1533)  ; FMad(a,b,c)
  %1535 = fmul fast float %1529, %1523
  %1536 = call float @dx.op.tertiary.f32(i32 46, float %1530, float %1524, float %1535)  ; FMad(a,b,c)
  %1537 = call float @dx.op.tertiary.f32(i32 46, float %1531, float %1525, float %1536)  ; FMad(a,b,c)
  %1538 = fsub fast float %1534, %1526
  %1539 = fsub fast float %1537, %1527
  %1540 = fsub fast float %1538, %1506
  %1541 = fadd fast float %1540, %1514
  %1542 = fsub fast float %1539, %1507
  %1543 = fadd fast float %1542, %1514
  %1544 = extractvalue %dx.types.CBufRet.f32 %1505, 3
  %1545 = fmul fast float %1541, %1544
  %1546 = fmul fast float %1543, %1544
  %1547 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1548 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1549 = fsub fast float 1.000000e+00, %1547
  %1550 = fsub fast float 1.000000e+00, %1548
  %1551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %1549, float %1550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = fcmp fast ugt float %1552, 0.000000e+00
  br i1 %1553, label %1554, label %1857

; <label>:1554                                    ; preds = %1516
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 2
  %1557 = fmul fast float %1556, %1552
  %1558 = extractvalue %dx.types.CBufRet.f32 %1555, 3
  %1559 = fadd fast float %1558, %1557
  %1560 = extractvalue %dx.types.CBufRet.f32 %1521, 2
  %1561 = fadd fast float %1559, %1528
  %1562 = fmul fast float %1534, %1522
  %1563 = call float @dx.op.tertiary.f32(i32 46, float %1537, float %1525, float %1562)  ; FMad(a,b,c)
  %1564 = call float @dx.op.tertiary.f32(i32 46, float %1561, float %1560, float %1563)  ; FMad(a,b,c)
  %1565 = fsub fast float %1564, %1528
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 2
  %1568 = fsub fast float %1565, %1567
  %1569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %1549, float %1550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1570 = extractvalue %dx.types.ResRet.f32 %1569, 0
  %1571 = extractvalue %dx.types.ResRet.f32 %1569, 1
  %1572 = extractvalue %dx.types.ResRet.f32 %1569, 2
  %1573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %1549, float %1550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.ResRet.f32 %1573, 1
  %1576 = extractvalue %dx.types.ResRet.f32 %1573, 2
  %1577 = fadd fast float %1574, %1570
  %1578 = fmul fast float %1577, 0x3F847AE140000000
  %1579 = fadd fast float %1575, %1571
  %1580 = fmul fast float %1579, 0x3F847AE140000000
  %1581 = fadd fast float %1576, %1572
  %1582 = fmul fast float %1581, 0x3F847AE140000000
  br label %1857

; <label>:1583                                    ; preds = %1430
  %1584 = and i32 %165, 1
  %1585 = icmp eq i32 %1584, 0
  br i1 %1585, label %1857, label %1586

; <label>:1586                                    ; preds = %1583
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 0
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 0
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.CBufRet.f32 %1587, 1
  %1594 = extractvalue %dx.types.CBufRet.f32 %1589, 1
  %1595 = extractvalue %dx.types.CBufRet.f32 %1591, 1
  %1596 = extractvalue %dx.types.CBufRet.f32 %1587, 3
  %1597 = extractvalue %dx.types.CBufRet.f32 %1589, 3
  %1598 = extractvalue %dx.types.CBufRet.f32 %1591, 3
  %1599 = fadd fast float %1596, %1502
  %1600 = fadd fast float %1597, %1503
  %1601 = fadd fast float %1598, %1504
  %1602 = fmul fast float %1599, %1588
  %1603 = call float @dx.op.tertiary.f32(i32 46, float %1600, float %1590, float %1602)  ; FMad(a,b,c)
  %1604 = call float @dx.op.tertiary.f32(i32 46, float %1601, float %1592, float %1603)  ; FMad(a,b,c)
  %1605 = fmul fast float %1599, %1593
  %1606 = call float @dx.op.tertiary.f32(i32 46, float %1600, float %1594, float %1605)  ; FMad(a,b,c)
  %1607 = call float @dx.op.tertiary.f32(i32 46, float %1601, float %1595, float %1606)  ; FMad(a,b,c)
  %1608 = fsub fast float %1604, %1596
  %1609 = fsub fast float %1607, %1597
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  %1612 = extractvalue %dx.types.CBufRet.f32 %1610, 1
  %1613 = extractvalue %dx.types.CBufRet.f32 %1610, 2
  %1614 = extractvalue %dx.types.CBufRet.f32 %1610, 3
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 3
  %1617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.i32 %1617, 0
  %1619 = extractvalue %dx.types.CBufRet.i32 %1617, 1
  %1620 = udiv i32 %1619, %1618
  %1621 = fsub fast float %1608, %1611
  %1622 = fsub fast float %1609, %1612
  %1623 = call float @dx.op.binary.f32(i32 35, float %1621, float 0.000000e+00)  ; FMax(a,b)
  %1624 = call float @dx.op.binary.f32(i32 35, float %1622, float 0.000000e+00)  ; FMax(a,b)
  %1625 = call float @dx.op.binary.f32(i32 36, float %1623, float %1613)  ; FMin(a,b)
  %1626 = call float @dx.op.binary.f32(i32 36, float %1624, float %1614)  ; FMin(a,b)
  %1627 = add i32 %1618, -1
  %1628 = add i32 %1620, -1
  %1629 = fmul fast float %1625, %1616
  %1630 = fmul fast float %1626, %1616
  %1631 = fptoui float %1629 to i32
  %1632 = fptoui float %1630 to i32
  %1633 = call i32 @dx.op.binary.i32(i32 40, i32 %1631, i32 %1627)  ; UMin(a,b)
  %1634 = call i32 @dx.op.binary.i32(i32 40, i32 %1632, i32 %1628)  ; UMin(a,b)
  %1635 = mul i32 %1634, %1618
  %1636 = add i32 %1635, %1633
  %1637 = shl i32 %1636, 2
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1637, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = icmp eq i32 %1639, -1
  br i1 %1640, label %1857, label %1641

; <label>:1641                                    ; preds = %1586
  %1642 = mul i32 %1639, 148
  %1643 = add i32 %1642, 4
  %1644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.f32 %1644, 0
  %1646 = add i32 %1642, 8
  %1647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1646, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.f32 %1647, 0
  %1649 = add i32 %1642, 36
  %1650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.f32 %1650, 0
  %1652 = add i32 %1642, 60
  %1653 = add i32 %1642, 92
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = add i32 %1642, 116
  %1657 = fsub fast float %1608, %1645
  %1658 = fsub fast float %1609, %1648
  %1659 = fmul fast float %1616, %1657
  %1660 = fmul fast float %1616, %1658
  %1661 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1662 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1663 = fsub fast float 1.000000e+00, %1662
  %1664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1665 = extractvalue %dx.types.CBufRet.f32 %1664, 2
  %1666 = call float @dx.op.unary.f32(i32 83, float %1661)  ; DerivCoarseX(value)
  %1667 = call float @dx.op.unary.f32(i32 83, float %1663)  ; DerivCoarseX(value)
  %1668 = call float @dx.op.unary.f32(i32 84, float %1661)  ; DerivCoarseY(value)
  %1669 = call float @dx.op.unary.f32(i32 84, float %1663)  ; DerivCoarseY(value)
  %1670 = fmul fast float %1666, %1665
  %1671 = fmul fast float %1667, %1665
  %1672 = fmul fast float %1668, %1665
  %1673 = fmul fast float %1669, %1665
  %1674 = call float @dx.op.dot2.f32(i32 54, float %1672, float %1673, float %1672, float %1673)  ; Dot2(ax,ay,bx,by)
  %1675 = call float @dx.op.dot2.f32(i32 54, float %1670, float %1671, float %1670, float %1671)  ; Dot2(ax,ay,bx,by)
  %1676 = call float @dx.op.binary.f32(i32 35, float %1675, float %1674)  ; FMax(a,b)
  %1677 = call float @dx.op.unary.f32(i32 23, float %1676)  ; Log(value)
  %1678 = fmul fast float %1677, 5.000000e-01
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 1
  %1681 = fadd fast float %1680, %1678
  %1682 = call float @dx.op.binary.f32(i32 35, float %1681, float 0.000000e+00)  ; FMax(a,b)
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 3
  %1685 = fadd fast float %1684, %1682
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 3
  %1688 = fadd fast float %1685, %1687
  %1689 = add i32 %1655, 0
  %1690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1689, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1691 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1690, i32 0)  ; GetDimensions(handle,mipLevel)
  %1692 = extractvalue %dx.types.Dimensions %1691, 0
  %1693 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1692)  ; FirstbitLo(value)
  %1694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.i32 %1694, 1
  %1696 = sub nsw i32 %1695, %1693
  %1697 = sitofp i32 %1696 to float
  %1698 = fsub fast float %1688, %1697
  %1699 = call float @dx.op.binary.f32(i32 35, float %1698, float 0.000000e+00)  ; FMax(a,b)
  %1700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1690, %dx.types.Handle %46, float %1661, float %1663, float %1651, float undef, i32 0, i32 0, i32 undef, float %1699)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1701 = extractvalue %dx.types.ResRet.f32 %1700, 0
  %1702 = fcmp ule float %1701, 0x3FE0101020000000
  %1703 = extractvalue %dx.types.CBufRet.i32 %1694, 0
  %1704 = and i32 %1703, 128
  %1705 = icmp ne i32 %1704, 0
  %1706 = and i1 %1702, %1705
  br i1 %1706, label %1857, label %1707

; <label>:1707                                    ; preds = %1641
  %1708 = add i32 %1642, 20
  %1709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.f32 %1709, 0
  %1711 = add i32 %1642, 24
  %1712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.f32 %1712, 0
  %1714 = add i32 %1642, 40
  %1715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.f32 %1715, 0
  %1717 = add i32 %1642, 96
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 2
  %1722 = fmul fast float %1721, %1661
  %1723 = fmul fast float %1721, %1663
  %1724 = extractvalue %dx.types.CBufRet.f32 %1720, 3
  %1725 = fadd fast float %1722, %1724
  %1726 = fadd fast float %1723, %1724
  %1727 = add i32 %1719, 0
  %1728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1729 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1728, i32 0)  ; GetDimensions(handle,mipLevel)
  %1730 = extractvalue %dx.types.Dimensions %1729, 0
  %1731 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1730)  ; FirstbitLo(value)
  %1732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.i32 %1732, 1
  %1734 = sub nsw i32 %1733, %1731
  %1735 = sitofp i32 %1734 to float
  %1736 = fsub fast float %1685, %1735
  %1737 = call float @dx.op.binary.f32(i32 35, float %1736, float 0.000000e+00)  ; FMax(a,b)
  %1738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1728, %dx.types.Handle %46, float %1725, float %1726, float %1716, float undef, i32 0, i32 0, i32 undef, float %1737)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1739 = extractvalue %dx.types.ResRet.f32 %1738, 0
  %1740 = fmul fast float %1739, %1710
  %1741 = fadd fast float %1740, %1713
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.CBufRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.CBufRet.f32 %1742, 2
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 3
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 3
  %1750 = extractvalue %dx.types.CBufRet.f32 %1742, 3
  %1751 = fadd fast float %1747, %1608
  %1752 = fadd fast float %1749, %1609
  %1753 = fadd fast float %1741, %1750
  %1754 = fmul fast float %1751, %1743
  %1755 = call float @dx.op.tertiary.f32(i32 46, float %1752, float %1744, float %1754)  ; FMad(a,b,c)
  %1756 = call float @dx.op.tertiary.f32(i32 46, float %1753, float %1745, float %1755)  ; FMad(a,b,c)
  %1757 = fsub fast float %1756, %1750
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1760 = fsub fast float %1757, %1759
  %1761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.i32 %1761, 0
  %1763 = call i32 @dx.op.binary.i32(i32 40, i32 %1639, i32 %1762)  ; UMin(a,b)
  %1764 = mul i32 %1763, 36
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = add i32 %1764, 4
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 0
  %1770 = fmul fast float %1769, %1661
  %1771 = fmul fast float %1769, %1663
  %1772 = extractvalue %dx.types.CBufRet.f32 %1768, 1
  %1773 = fadd fast float %1770, %1772
  %1774 = fadd fast float %1771, %1772
  %1775 = icmp eq i32 %1766, 0
  br i1 %1775, label %1844, label %1776

; <label>:1776                                    ; preds = %1707
  br label %1777

; <label>:1777                                    ; preds = %1834, %1776
  %1778 = phi float [ %1835, %1834 ], [ 0.000000e+00, %1776 ]
  %1779 = phi float [ %1836, %1834 ], [ 0.000000e+00, %1776 ]
  %1780 = phi float [ %1837, %1834 ], [ 0.000000e+00, %1776 ]
  %1781 = phi float [ %1838, %1834 ], [ 0.000000e+00, %1776 ]
  %1782 = phi float [ %1839, %1834 ], [ 0.000000e+00, %1776 ]
  %1783 = phi float [ %1840, %1834 ], [ 0.000000e+00, %1776 ]
  %1784 = phi i32 [ %1841, %1834 ], [ 0, %1776 ]
  %1785 = shl i32 %1784, 2
  %1786 = add i32 %1652, %1785
  %1787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1786, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1789 = add i32 %1656, %1785
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = add i32 %1791, 0
  %1793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1792, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1794 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1793, i32 0)  ; GetDimensions(handle,mipLevel)
  %1795 = extractvalue %dx.types.Dimensions %1794, 0
  %1796 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1795)  ; FirstbitLo(value)
  %1797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.i32 %1797, 1
  %1799 = sub nsw i32 %1798, %1796
  %1800 = sitofp i32 %1799 to float
  %1801 = fsub fast float %1685, %1800
  %1802 = call float @dx.op.binary.f32(i32 35, float %1801, float 0.000000e+00)  ; FMax(a,b)
  %1803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1793, %dx.types.Handle %46, float %1773, float %1774, float %1788, float undef, i32 0, i32 0, i32 undef, float %1802)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1804 = extractvalue %dx.types.ResRet.f32 %1803, 0
  %1805 = fcmp fast ogt float %1804, 0.000000e+00
  br i1 %1805, label %1806, label %1834

; <label>:1806                                    ; preds = %1777
  %1807 = add i32 %1767, %1785
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = and i32 %1809, 32767
  %1811 = mul nuw nsw i32 %1810, 928
  %1812 = add nuw nsw i32 %1811, 48
  %1813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.f32 %1813, 0
  %1815 = extractvalue %dx.types.ResRet.f32 %1813, 1
  %1816 = extractvalue %dx.types.ResRet.f32 %1813, 2
  %1817 = add nuw nsw i32 %1811, 60
  %1818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.ResRet.f32 %1818, 1
  %1821 = extractvalue %dx.types.ResRet.f32 %1818, 2
  %1822 = fmul fast float %1814, %1804
  %1823 = fmul fast float %1815, %1804
  %1824 = fmul fast float %1816, %1804
  %1825 = fadd fast float %1822, %1778
  %1826 = fadd fast float %1823, %1779
  %1827 = fadd fast float %1824, %1780
  %1828 = fmul fast float %1819, %1804
  %1829 = fmul fast float %1820, %1804
  %1830 = fmul fast float %1821, %1804
  %1831 = fadd fast float %1828, %1781
  %1832 = fadd fast float %1829, %1782
  %1833 = fadd fast float %1830, %1783
  br label %1834

; <label>:1834                                    ; preds = %1806, %1777
  %1835 = phi float [ %1825, %1806 ], [ %1778, %1777 ]
  %1836 = phi float [ %1826, %1806 ], [ %1779, %1777 ]
  %1837 = phi float [ %1827, %1806 ], [ %1780, %1777 ]
  %1838 = phi float [ %1831, %1806 ], [ %1781, %1777 ]
  %1839 = phi float [ %1832, %1806 ], [ %1782, %1777 ]
  %1840 = phi float [ %1833, %1806 ], [ %1783, %1777 ]
  %1841 = add nuw i32 %1784, 1
  %1842 = icmp eq i32 %1841, %1766
  br i1 %1842, label %1843, label %1777

; <label>:1843                                    ; preds = %1834
  br label %1844

; <label>:1844                                    ; preds = %1843, %1707
  %1845 = phi float [ 0.000000e+00, %1707 ], [ %1835, %1843 ]
  %1846 = phi float [ 0.000000e+00, %1707 ], [ %1836, %1843 ]
  %1847 = phi float [ 0.000000e+00, %1707 ], [ %1837, %1843 ]
  %1848 = phi float [ 0.000000e+00, %1707 ], [ %1838, %1843 ]
  %1849 = phi float [ 0.000000e+00, %1707 ], [ %1839, %1843 ]
  %1850 = phi float [ 0.000000e+00, %1707 ], [ %1840, %1843 ]
  %1851 = fadd fast float %1848, %1845
  %1852 = fmul fast float %1851, 0x3F847AE140000000
  %1853 = fadd fast float %1849, %1846
  %1854 = fmul fast float %1853, 0x3F847AE140000000
  %1855 = fadd fast float %1850, %1847
  %1856 = fmul fast float %1855, 0x3F847AE140000000
  br label %1857

; <label>:1857                                    ; preds = %1844, %1641, %1586, %1583, %1554, %1516
  %1858 = phi float [ %1568, %1554 ], [ -1.310720e+05, %1516 ], [ %1760, %1844 ], [ -1.310720e+05, %1586 ], [ -1.310720e+05, %1641 ], [ -1.310720e+05, %1583 ]
  %1859 = phi float [ %1578, %1554 ], [ 0.000000e+00, %1516 ], [ %1852, %1844 ], [ 0.000000e+00, %1586 ], [ 0.000000e+00, %1641 ], [ 0.000000e+00, %1583 ]
  %1860 = phi float [ %1580, %1554 ], [ 0.000000e+00, %1516 ], [ %1854, %1844 ], [ 0.000000e+00, %1586 ], [ 0.000000e+00, %1641 ], [ 0.000000e+00, %1583 ]
  %1861 = phi float [ %1582, %1554 ], [ 0.000000e+00, %1516 ], [ %1856, %1844 ], [ 0.000000e+00, %1586 ], [ 0.000000e+00, %1641 ], [ 0.000000e+00, %1583 ]
  %1862 = phi i1 [ true, %1554 ], [ false, %1516 ], [ true, %1844 ], [ false, %1586 ], [ false, %1641 ], [ false, %1583 ]
  %1863 = and i32 %165, 3
  %1864 = icmp eq i32 %1863, 1
  %1865 = select i1 %1864, float 1.000000e+00, float 0.000000e+00
  %1866 = fsub fast float %1858, %129
  %1867 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  %1868 = select i1 %1862, float %1867, float 1.000000e+00
  %1869 = fmul fast float %1868, %1865
  %1870 = icmp eq i32 %1863, 3
  %1871 = select i1 %1870, float 1.000000e+00, float %1869
  %1872 = call float @dx.op.binary.f32(i32 35, float %1431, float %1871)  ; FMax(a,b)
  %1873 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  %1874 = fcmp fast une float %1873, 0.000000e+00
  %1875 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %1876 = call float @dx.op.unary.f32(i32 25, float %1875)  ; Rsqrt(value)
  br i1 %1874, label %1884, label %1877

; <label>:1877                                    ; preds = %1857
  %1878 = fmul fast float %1876, %127
  %1879 = fmul fast float %1876, %128
  %1880 = fmul fast float %1876, %129
  %1881 = fsub fast float -0.000000e+00, %1878
  %1882 = fsub fast float -0.000000e+00, %1879
  %1883 = fsub fast float -0.000000e+00, %1880
  br label %2052

; <label>:1884                                    ; preds = %1857
  %1885 = fmul fast float %127, %1876
  %1886 = fsub fast float -0.000000e+00, %1885
  %1887 = fmul fast float %128, %1876
  %1888 = fsub fast float -0.000000e+00, %1887
  %1889 = fmul fast float %129, %1876
  %1890 = fsub fast float -0.000000e+00, %1889
  %1891 = call float @dx.op.dot3.f32(i32 55, float %1886, float %1888, float %1890, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %1892 = fmul fast float %1873, 2.500000e+00
  %1893 = call float @dx.op.unary.f32(i32 7, float %1892)  ; Saturate(value)
  %1894 = fmul fast float %1873, 0x4013FFFFE0000000
  %1895 = fadd fast float %1894, 0xBFFFFFFFE0000000
  %1896 = call float @dx.op.unary.f32(i32 7, float %1895)  ; Saturate(value)
  %1897 = fmul fast float %1873, 0x4004000020000000
  %1898 = fadd fast float %1897, 0xBFF8000040000000
  %1899 = call float @dx.op.unary.f32(i32 7, float %1898)  ; Saturate(value)
  %1900 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1901 = fmul fast float %1462, 1.000000e+01
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = fmul fast float %1902, 2.000000e+00
  %1904 = fsub fast float 3.000000e+00, %1903
  %1905 = fmul fast float %1902, %1902
  %1906 = fmul fast float %1905, %1904
  %1907 = fsub fast float 1.000000e+00, %1906
  %1908 = fsub fast float 0x3FE3333340000000, %1483
  %1909 = fmul fast float %1908, 0x400AAAAAA0000000
  %1910 = call float @dx.op.unary.f32(i32 7, float %1909)  ; Saturate(value)
  %1911 = fmul fast float %1907, %1910
  %1912 = fmul fast float %1495, 0x3FEA2B8620000000
  %1913 = fmul fast float %1496, 0x3FEA2B8620000000
  %1914 = fmul fast float %1497, 0x3FEA2B8620000000
  %1915 = fadd fast float %1912, 0x3FC81DFBA0000000
  %1916 = fmul fast float %1915, %1495
  %1917 = fadd fast float %1916, 0x3F910E6020000000
  %1918 = fadd fast float %1913, 0x3FC81DFBA0000000
  %1919 = fmul fast float %1918, %1496
  %1920 = fadd fast float %1919, 0x3F910E6020000000
  %1921 = fadd fast float %1914, 0x3FC81DFBA0000000
  %1922 = fmul fast float %1921, %1497
  %1923 = fadd fast float %1922, 0x3F910E6020000000
  %1924 = call float @dx.op.unary.f32(i32 7, float %1917)  ; Saturate(value)
  %1925 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1926 = call float @dx.op.unary.f32(i32 7, float %1923)  ; Saturate(value)
  %1927 = fsub fast float %1924, %1495
  %1928 = fsub fast float %1925, %1496
  %1929 = fsub fast float %1926, %1497
  %1930 = fmul fast float %1927, %1900
  %1931 = fmul fast float %1930, %1911
  %1932 = fmul fast float %1928, %1900
  %1933 = fmul fast float %1932, %1911
  %1934 = fmul fast float %1929, %1900
  %1935 = fmul fast float %1934, %1911
  %1936 = fadd fast float %1931, %1495
  %1937 = fadd fast float %1933, %1496
  %1938 = fadd fast float %1935, %1497
  %1939 = fmul fast float %1443, %1443
  %1940 = fmul fast float %1939, %1939
  %1941 = fadd fast float %1896, 1.000000e+00
  %1942 = fsub fast float %1941, %1911
  %1943 = call float @dx.op.unary.f32(i32 7, float %1942)  ; Saturate(value)
  %1944 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1945 = call float @dx.op.unary.f32(i32 7, float %1944)  ; Saturate(value)
  %1946 = fsub fast float 1.000000e+00, %1940
  %1947 = call float @dx.op.binary.f32(i32 36, float %1943, float %1946)  ; FMin(a,b)
  %1948 = call float @dx.op.unary.f32(i32 7, float %1899)  ; Saturate(value)
  %1949 = call float @dx.op.binary.f32(i32 35, float %1947, float %1948)  ; FMax(a,b)
  %1950 = fadd fast float %1945, 0xBFE4CCCCC0000000
  %1951 = fmul fast float %1950, 0x4006DB6DA0000000
  %1952 = call float @dx.op.unary.f32(i32 7, float %1951)  ; Saturate(value)
  %1953 = fmul fast float %1952, 2.000000e+00
  %1954 = fsub fast float 3.000000e+00, %1953
  %1955 = bitcast float %1480 to i32
  %1956 = ashr i32 %1955, 1
  %1957 = add nsw i32 %1956, 532487669
  %1958 = bitcast i32 %1957 to float
  %1959 = fsub fast float 1.000000e+00, %1958
  %1960 = bitcast float %1959 to i32
  %1961 = sub nsw i32 2129859010, %1960
  %1962 = bitcast i32 %1961 to float
  %1963 = fmul fast float %1962, 2.000000e+00
  %1964 = bitcast float %1481 to i32
  %1965 = ashr i32 %1964, 1
  %1966 = add nsw i32 %1965, 532487669
  %1967 = bitcast i32 %1966 to float
  %1968 = fsub fast float 1.000000e+00, %1967
  %1969 = bitcast float %1968 to i32
  %1970 = sub nsw i32 2129859010, %1969
  %1971 = bitcast i32 %1970 to float
  %1972 = fmul fast float %1971, 2.000000e+00
  %1973 = bitcast float %1482 to i32
  %1974 = ashr i32 %1973, 1
  %1975 = add nsw i32 %1974, 532487669
  %1976 = bitcast i32 %1975 to float
  %1977 = fsub fast float 1.000000e+00, %1976
  %1978 = bitcast float %1977 to i32
  %1979 = sub nsw i32 2129859010, %1978
  %1980 = bitcast i32 %1979 to float
  %1981 = fmul fast float %1980, 2.000000e+00
  %1982 = fsub fast float 0x4002A9FBE0000000, %1963
  %1983 = fadd fast float %1963, 0x3FD54FDF00000000
  %1984 = bitcast float %1983 to i32
  %1985 = sub nsw i32 2129859010, %1984
  %1986 = bitcast i32 %1985 to float
  %1987 = fmul fast float %1986, %1982
  %1988 = fmul fast float %1987, %1987
  %1989 = fsub fast float 0x4002A9FBE0000000, %1972
  %1990 = fadd fast float %1972, 0x3FD54FDF00000000
  %1991 = bitcast float %1990 to i32
  %1992 = sub nsw i32 2129859010, %1991
  %1993 = bitcast i32 %1992 to float
  %1994 = fmul fast float %1993, %1989
  %1995 = fmul fast float %1994, %1994
  %1996 = fsub fast float 0x4002A9FBE0000000, %1981
  %1997 = fadd fast float %1981, 0x3FD54FDF00000000
  %1998 = bitcast float %1997 to i32
  %1999 = sub nsw i32 2129859010, %1998
  %2000 = bitcast i32 %1999 to float
  %2001 = fmul fast float %2000, %1996
  %2002 = fmul fast float %2001, %2001
  %2003 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1988)  ; FMax(a,b)
  %2004 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1995)  ; FMax(a,b)
  %2005 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2002)  ; FMax(a,b)
  %2006 = fsub fast float 1.000000e+00, %1891
  %2007 = fadd fast float %2006, %1907
  %2008 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2009 = fsub fast float 1.000000e+00, %1871
  %2010 = fmul fast float %1949, %2009
  %2011 = fmul fast float %1952, %1952
  %2012 = fmul fast float %2011, %2010
  %2013 = fmul fast float %2012, %1954
  %2014 = fmul fast float %2009, 0xBFE99999A0000000
  %2015 = fmul fast float %2014, %1900
  %2016 = fmul fast float %2015, %1911
  %2017 = fadd fast float %2016, 1.000000e+00
  %2018 = fadd fast float %1483, -1.000000e+00
  %2019 = fmul fast float %2017, %2018
  %2020 = fadd fast float %2019, 1.000000e+00
  %2021 = fsub fast float %2003, %1480
  %2022 = fsub fast float %2004, %1481
  %2023 = fsub fast float %2005, %1482
  %2024 = fmul fast float %2013, %2021
  %2025 = fmul fast float %2013, %2022
  %2026 = fmul fast float %2013, %2023
  %2027 = fadd fast float %2024, %1480
  %2028 = fadd fast float %2025, %1481
  %2029 = fadd fast float %2026, %1482
  %2030 = fsub fast float %60, %1459
  %2031 = fsub fast float %61, %1460
  %2032 = fsub fast float %62, %1461
  %2033 = fmul fast float %2013, %2030
  %2034 = fmul fast float %2013, %2031
  %2035 = fmul fast float %2013, %2032
  %2036 = fadd fast float %2033, %1459
  %2037 = fadd fast float %2034, %1460
  %2038 = fadd fast float %2035, %1461
  %2039 = fmul fast float %2013, %2008
  %2040 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  %2041 = fsub fast float 1.000000e+00, %2040
  %2042 = fmul fast float %2039, %2041
  %2043 = fadd fast float %2042, %2040
  %2044 = fsub fast float 1.000000e+00, %1443
  %2045 = fmul fast float %2013, %2044
  %2046 = fadd fast float %2045, %1443
  %2047 = call float @dx.op.dot3.f32(i32 55, float %2036, float %2037, float %2038, float %2036, float %2037, float %2038)  ; Dot3(ax,ay,az,bx,by,bz)
  %2048 = call float @dx.op.unary.f32(i32 25, float %2047)  ; Rsqrt(value)
  %2049 = fmul fast float %2036, %2048
  %2050 = fmul fast float %2037, %2048
  %2051 = fmul fast float %2038, %2048
  br label %2052

; <label>:2052                                    ; preds = %1884, %1877
  %2053 = phi float [ %1883, %1877 ], [ %1890, %1884 ]
  %2054 = phi float [ %1882, %1877 ], [ %1888, %1884 ]
  %2055 = phi float [ %1881, %1877 ], [ %1886, %1884 ]
  %2056 = phi float [ %1880, %1877 ], [ %1889, %1884 ]
  %2057 = phi float [ %1879, %1877 ], [ %1887, %1884 ]
  %2058 = phi float [ %1878, %1877 ], [ %1885, %1884 ]
  %2059 = phi float [ %1495, %1877 ], [ %1936, %1884 ]
  %2060 = phi float [ %1496, %1877 ], [ %1937, %1884 ]
  %2061 = phi float [ %1497, %1877 ], [ %1938, %1884 ]
  %2062 = phi float [ %1480, %1877 ], [ %2027, %1884 ]
  %2063 = phi float [ %1481, %1877 ], [ %2028, %1884 ]
  %2064 = phi float [ %1482, %1877 ], [ %2029, %1884 ]
  %2065 = phi float [ %1459, %1877 ], [ %2049, %1884 ]
  %2066 = phi float [ %1460, %1877 ], [ %2050, %1884 ]
  %2067 = phi float [ %1461, %1877 ], [ %2051, %1884 ]
  %2068 = phi float [ %1483, %1877 ], [ %2043, %1884 ]
  %2069 = phi float [ %1443, %1877 ], [ %2046, %1884 ]
  %2070 = fsub fast float -0.000000e+00, %129
  %2071 = select i1 %189, float 0.000000e+00, float %2064
  %2072 = call float @dx.op.dot3.f32(i32 55, float %2065, float %2066, float %2067, float %2055, float %2054, float %2053)  ; Dot3(ax,ay,az,bx,by,bz)
  %2073 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2074 = fsub fast float 1.000000e+00, %2069
  %2075 = bitcast float %2074 to i32
  %2076 = sub nsw i32 2129859010, %2075
  %2077 = fmul fast float %1456, %1437
  %2078 = fmul fast float %1456, %1438
  %2079 = fmul fast float %1456, %1439
  %2080 = bitcast i32 %2076 to float
  %2081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2081, 3
  %2083 = fcmp fast oeq float %2082, 0.000000e+00
  br i1 %2083, label %3648, label %2084

; <label>:2084                                    ; preds = %2052
  %2085 = extractvalue %dx.types.CBufRet.f32 %2081, 0
  %2086 = extractvalue %dx.types.CBufRet.f32 %2081, 1
  %2087 = extractvalue %dx.types.CBufRet.f32 %2081, 2
  %2088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2089 = extractvalue %dx.types.CBufRet.f32 %2088, 0
  %2090 = extractvalue %dx.types.CBufRet.f32 %2088, 1
  %2091 = extractvalue %dx.types.CBufRet.f32 %2088, 2
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.CBufRet.f32 %2092, 1
  %2095 = call float @dx.op.dot3.f32(i32 55, float %2089, float %2090, float %2091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2096 = select i1 %189, float %2093, float %2089
  %2097 = select i1 %189, float %2095, float %2090
  %2098 = select i1 %189, float %2094, float %2091
  %2099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2100 = extractvalue %dx.types.CBufRet.f32 %2099, 2
  %2101 = fmul fast float %2100, %60
  %2102 = fmul fast float %2100, %61
  %2103 = fmul fast float %2100, %62
  %2104 = fadd fast float %2101, %127
  %2105 = fadd fast float %2102, %128
  %2106 = fadd fast float %2103, %129
  %2107 = fcmp fast olt float %2082, 0.000000e+00
  br i1 %2107, label %3203, label %2108

; <label>:2108                                    ; preds = %2084
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = extractvalue %dx.types.CBufRet.f32 %2109, 1
  %2112 = extractvalue %dx.types.CBufRet.f32 %2109, 2
  %2113 = extractvalue %dx.types.CBufRet.f32 %2109, 3
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 0
  %2116 = extractvalue %dx.types.CBufRet.f32 %2114, 1
  %2117 = extractvalue %dx.types.CBufRet.f32 %2114, 2
  %2118 = extractvalue %dx.types.CBufRet.f32 %2114, 3
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 0
  %2121 = extractvalue %dx.types.CBufRet.f32 %2119, 1
  %2122 = extractvalue %dx.types.CBufRet.f32 %2119, 2
  %2123 = extractvalue %dx.types.CBufRet.f32 %2119, 3
  %2124 = fmul fast float %2110, %2104
  %2125 = call float @dx.op.tertiary.f32(i32 46, float %2105, float %2111, float %2124)  ; FMad(a,b,c)
  %2126 = call float @dx.op.tertiary.f32(i32 46, float %2106, float %2112, float %2125)  ; FMad(a,b,c)
  %2127 = fadd fast float %2126, %2113
  %2128 = fmul fast float %2115, %2104
  %2129 = call float @dx.op.tertiary.f32(i32 46, float %2105, float %2116, float %2128)  ; FMad(a,b,c)
  %2130 = call float @dx.op.tertiary.f32(i32 46, float %2106, float %2117, float %2129)  ; FMad(a,b,c)
  %2131 = fadd fast float %2130, %2118
  %2132 = fmul fast float %2120, %2104
  %2133 = call float @dx.op.tertiary.f32(i32 46, float %2105, float %2121, float %2132)  ; FMad(a,b,c)
  %2134 = call float @dx.op.tertiary.f32(i32 46, float %2106, float %2122, float %2133)  ; FMad(a,b,c)
  %2135 = fadd fast float %2134, %2123
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 0
  %2138 = extractvalue %dx.types.CBufRet.f32 %2136, 1
  %2139 = extractvalue %dx.types.CBufRet.f32 %2136, 3
  %2140 = fmul fast float %2139, %2127
  %2141 = fmul fast float %2139, %2131
  %2142 = fadd fast float %2140, %2137
  %2143 = fadd fast float %2141, %2138
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.CBufRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.CBufRet.f32 %2144, 3
  %2148 = fmul fast float %2147, %2127
  %2149 = fmul fast float %2147, %2131
  %2150 = fadd fast float %2148, %2145
  %2151 = fadd fast float %2149, %2146
  %2152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2153 = extractvalue %dx.types.CBufRet.f32 %2152, 1
  %2154 = fsub fast float %2153, %2135
  %2155 = extractvalue %dx.types.CBufRet.f32 %2152, 2
  %2156 = fmul fast float %2154, %2155
  %2157 = fsub fast float 1.000000e+00, %2156
  %2158 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2144, 2
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 2
  %2162 = fadd fast float %2161, %2159
  %2163 = fcmp fast ogt float %2162, 0.000000e+00
  br i1 %2163, label %2164, label %2188

; <label>:2164                                    ; preds = %2108
  %2165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2166 = extractvalue %dx.types.CBufRet.f32 %2165, 0
  %2167 = extractvalue %dx.types.CBufRet.f32 %2165, 1
  %2168 = fsub fast float %2150, %2166
  %2169 = fsub fast float %2151, %2167
  %2170 = fcmp fast olt float %2168, 0.000000e+00
  %2171 = fcmp fast olt float %2169, 0.000000e+00
  %2172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2173 = extractvalue %dx.types.CBufRet.f32 %2172, 0
  %2174 = extractvalue %dx.types.CBufRet.f32 %2172, 1
  %2175 = extractvalue %dx.types.CBufRet.f32 %2172, 2
  %2176 = extractvalue %dx.types.CBufRet.f32 %2172, 3
  %2177 = select i1 %2170, float %2173, float %2175
  %2178 = select i1 %2171, float %2174, float %2176
  %2179 = fmul fast float %2177, %2168
  %2180 = fmul fast float %2178, %2169
  %2181 = call float @dx.op.unary.f32(i32 6, float %2179)  ; FAbs(value)
  %2182 = call float @dx.op.unary.f32(i32 6, float %2180)  ; FAbs(value)
  %2183 = extractvalue %dx.types.CBufRet.f32 %2099, 0
  %2184 = call float @dx.op.binary.f32(i32 35, float %2181, float %2182)  ; FMax(a,b)
  %2185 = fsub fast float %2183, %2184
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2187 = fmul fast float %2186, %2158
  br label %2188

; <label>:2188                                    ; preds = %2164, %2108
  %2189 = phi float [ %2187, %2164 ], [ 0.000000e+00, %2108 ]
  %2190 = extractvalue %dx.types.CBufRet.f32 %2136, 2
  %2191 = extractvalue %dx.types.CBufRet.f32 %2160, 1
  %2192 = fadd fast float %2191, %2190
  %2193 = fcmp fast ogt float %2192, 0.000000e+00
  %2194 = extractvalue %dx.types.CBufRet.f32 %2099, 0
  br i1 %2193, label %2195, label %2218

; <label>:2195                                    ; preds = %2188
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 0
  %2198 = extractvalue %dx.types.CBufRet.f32 %2196, 1
  %2199 = fsub fast float %2142, %2197
  %2200 = fsub fast float %2143, %2198
  %2201 = fcmp fast olt float %2199, 0.000000e+00
  %2202 = fcmp fast olt float %2200, 0.000000e+00
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2205 = extractvalue %dx.types.CBufRet.f32 %2203, 1
  %2206 = extractvalue %dx.types.CBufRet.f32 %2203, 2
  %2207 = extractvalue %dx.types.CBufRet.f32 %2203, 3
  %2208 = select i1 %2201, float %2204, float %2206
  %2209 = select i1 %2202, float %2205, float %2207
  %2210 = fmul fast float %2208, %2199
  %2211 = fmul fast float %2209, %2200
  %2212 = call float @dx.op.unary.f32(i32 6, float %2210)  ; FAbs(value)
  %2213 = call float @dx.op.unary.f32(i32 6, float %2211)  ; FAbs(value)
  %2214 = call float @dx.op.binary.f32(i32 35, float %2212, float %2213)  ; FMax(a,b)
  %2215 = fsub fast float %2194, %2214
  %2216 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2217 = fmul fast float %2216, %2158
  br label %2218

; <label>:2218                                    ; preds = %2195, %2188
  %2219 = phi float [ %2217, %2195 ], [ 0.000000e+00, %2188 ]
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 1
  %2222 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 0
  %2225 = extractvalue %dx.types.CBufRet.f32 %2223, 1
  %2226 = fsub fast float %2127, %2224
  %2227 = fsub fast float %2131, %2225
  %2228 = fcmp fast olt float %2226, 0.000000e+00
  %2229 = fcmp fast olt float %2227, 0.000000e+00
  %2230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.f32 %2230, 0
  %2232 = extractvalue %dx.types.CBufRet.f32 %2230, 1
  %2233 = extractvalue %dx.types.CBufRet.f32 %2230, 2
  %2234 = extractvalue %dx.types.CBufRet.f32 %2230, 3
  %2235 = select i1 %2228, float %2231, float %2233
  %2236 = select i1 %2229, float %2232, float %2234
  %2237 = fmul fast float %2235, %2226
  %2238 = fmul fast float %2236, %2227
  %2239 = call float @dx.op.unary.f32(i32 6, float %2237)  ; FAbs(value)
  %2240 = call float @dx.op.unary.f32(i32 6, float %2238)  ; FAbs(value)
  %2241 = call float @dx.op.binary.f32(i32 35, float %2239, float %2240)  ; FMax(a,b)
  %2242 = fsub fast float %2194, %2241
  %2243 = call float @dx.op.unary.f32(i32 7, float %2242)  ; Saturate(value)
  %2244 = call float @dx.op.binary.f32(i32 36, float %2243, float %2222)  ; FMin(a,b)
  %2245 = fmul fast float %2244, %2158
  %2246 = fsub fast float %2219, %2245
  %2247 = fsub fast float %2189, %2219
  %2248 = fsub fast float %2247, %2245
  %2249 = call float @dx.op.binary.f32(i32 35, float %2219, float %2189)  ; FMax(a,b)
  %2250 = call float @dx.op.binary.f32(i32 35, float %2245, float %2249)  ; FMax(a,b)
  %2251 = fcmp fast olt float %2250, 1.000000e+00
  br i1 %2251, label %2252, label %2650, !dx.controlflow.hints !88

; <label>:2252                                    ; preds = %2218
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 0
  %2255 = fcmp fast une float %2254, 0.000000e+00
  br i1 %2255, label %2256, label %2650, !dx.controlflow.hints !89

; <label>:2256                                    ; preds = %2252
  %2257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2258 = extractvalue %dx.types.CBufRet.f32 %2257, 0
  %2259 = extractvalue %dx.types.CBufRet.f32 %2257, 1
  %2260 = extractvalue %dx.types.CBufRet.f32 %2257, 2
  %2261 = extractvalue %dx.types.CBufRet.f32 %2257, 3
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 0
  %2264 = extractvalue %dx.types.CBufRet.f32 %2262, 1
  %2265 = extractvalue %dx.types.CBufRet.f32 %2262, 2
  %2266 = extractvalue %dx.types.CBufRet.f32 %2262, 3
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 0
  %2269 = extractvalue %dx.types.CBufRet.f32 %2267, 1
  %2270 = extractvalue %dx.types.CBufRet.f32 %2267, 2
  %2271 = extractvalue %dx.types.CBufRet.f32 %2267, 3
  %2272 = fmul fast float %2258, %2104
  %2273 = call float @dx.op.tertiary.f32(i32 46, float %2105, float %2259, float %2272)  ; FMad(a,b,c)
  %2274 = call float @dx.op.tertiary.f32(i32 46, float %2106, float %2260, float %2273)  ; FMad(a,b,c)
  %2275 = fadd fast float %2274, %2261
  %2276 = fmul fast float %2263, %2104
  %2277 = call float @dx.op.tertiary.f32(i32 46, float %2105, float %2264, float %2276)  ; FMad(a,b,c)
  %2278 = call float @dx.op.tertiary.f32(i32 46, float %2106, float %2265, float %2277)  ; FMad(a,b,c)
  %2279 = fadd fast float %2278, %2266
  %2280 = fmul fast float %2268, %2104
  %2281 = call float @dx.op.tertiary.f32(i32 46, float %2105, float %2269, float %2280)  ; FMad(a,b,c)
  %2282 = call float @dx.op.tertiary.f32(i32 46, float %2106, float %2270, float %2281)  ; FMad(a,b,c)
  %2283 = fadd fast float %2282, %2271
  %2284 = fcmp fast oge float %2275, 1.000000e+00
  %2285 = fcmp fast oge float %2279, 1.000000e+00
  %2286 = or i1 %2284, %2285
  %2287 = fcmp fast olt float %2275, 0.000000e+00
  %2288 = fcmp fast olt float %2279, 0.000000e+00
  %2289 = or i1 %2287, %2288
  %2290 = or i1 %2286, %2289
  br i1 %2290, label %2650, label %2291, !dx.controlflow.hints !90

; <label>:2291                                    ; preds = %2256
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 0
  %2294 = extractvalue %dx.types.CBufRet.f32 %2292, 1
  %2295 = extractvalue %dx.types.CBufRet.f32 %2292, 2
  %2296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.i32 %2296, 2
  %2298 = uitofp i32 %2297 to float
  %2299 = extractvalue %dx.types.CBufRet.i32 %2296, 3
  %2300 = uitofp i32 %2299 to float
  %2301 = extractvalue %dx.types.CBufRet.f32 %2292, 3
  %2302 = fmul fast float %2301, 2.000000e+00
  %2303 = fsub fast float %2275, %2293
  %2304 = fsub fast float %2279, %2294
  %2305 = fmul fast float %2302, %2303
  %2306 = fmul fast float %2302, %2304
  %2307 = fdiv fast float 1.000000e+00, %2087
  %2308 = fmul fast float %2306, %2307
  %2309 = call float @dx.op.unary.f32(i32 6, float %2308)  ; FAbs(value)
  %2310 = fmul fast float %2295, %2106
  %2311 = fmul fast float %2310, %2302
  %2312 = call float @dx.op.unary.f32(i32 6, float %2311)  ; FAbs(value)
  %2313 = call float @dx.op.unary.f32(i32 6, float %2305)  ; FAbs(value)
  %2314 = call float @dx.op.binary.f32(i32 35, float %2312, float %2309)  ; FMax(a,b)
  %2315 = call float @dx.op.binary.f32(i32 35, float %2313, float %2314)  ; FMax(a,b)
  %2316 = fmul fast float %2315, 2.000000e+00
  %2317 = call float @dx.op.unary.f32(i32 23, float %2316)  ; Log(value)
  %2318 = call float @dx.op.binary.f32(i32 35, float %2317, float %2298)  ; FMax(a,b)
  %2319 = call float @dx.op.unary.f32(i32 22, float %2318)  ; Frc(value)
  %2320 = fadd fast float %2319, 0xBFEA666660000000
  %2321 = fmul fast float %2320, 8.000000e+00
  %2322 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  %2323 = call float @dx.op.unary.f32(i32 27, float %2318)  ; Round_ni(value)
  %2324 = fadd fast float %2323, %2322
  %2325 = call float @dx.op.binary.f32(i32 36, float %2324, float %2300)  ; FMin(a,b)
  %2326 = call float @dx.op.unary.f32(i32 27, float %2325)  ; Round_ni(value)
  %2327 = fsub fast float -0.000000e+00, %2326
  %2328 = call float @dx.op.unary.f32(i32 21, float %2327)  ; Exp(value)
  %2329 = fmul fast float %2328, %2302
  %2330 = fmul fast float %2329, %2275
  %2331 = fmul fast float %2329, %2279
  %2332 = fmul fast float %2330, 2.500000e-01
  %2333 = fmul fast float %2331, 2.500000e-01
  %2334 = fadd fast float %2332, 5.000000e-01
  %2335 = fadd fast float %2333, 5.000000e-01
  %2336 = fsub fast float %2300, %2298
  %2337 = fptoui float %2336 to i32
  %2338 = add i32 %2337, 320
  %2339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %2338)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.CBufRet.f32 %2339, 1
  %2342 = fcmp fast une float %2325, %2300
  %2343 = fsub fast float %2275, %2340
  %2344 = fsub fast float %2279, %2341
  %2345 = call float @dx.op.unary.f32(i32 6, float %2343)  ; FAbs(value)
  %2346 = call float @dx.op.unary.f32(i32 6, float %2344)  ; FAbs(value)
  %2347 = fmul fast float %2345, %2329
  %2348 = fmul fast float %2346, %2329
  %2349 = fcmp fast olt float %2347, 1.000000e+00
  %2350 = fcmp fast olt float %2348, 1.000000e+00
  %2351 = and i1 %2349, %2350
  %2352 = or i1 %2342, %2351
  br i1 %2352, label %2353, label %2650, !dx.controlflow.hints !91

; <label>:2353                                    ; preds = %2291
  %2354 = fmul fast float %2331, 5.000000e-01
  %2355 = fmul fast float %2330, 5.000000e-01
  %2356 = fadd fast float %2354, 5.000000e-01
  %2357 = fadd fast float %2355, 5.000000e-01
  %2358 = sitofp i32 %2297 to float
  %2359 = fsub fast float %2325, %2358
  %2360 = call float @dx.op.unary.f32(i32 27, float %2359)  ; Round_ni(value)
  %2361 = call float @dx.op.unary.f32(i32 22, float %2325)  ; Frc(value)
  %2362 = call float @dx.op.unary.f32(i32 22, float %2357)  ; Frc(value)
  %2363 = call float @dx.op.unary.f32(i32 22, float %2356)  ; Frc(value)
  %2364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %2362, float %2363, float %2360, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2365 = extractvalue %dx.types.ResRet.f32 %2364, 0
  %2366 = extractvalue %dx.types.ResRet.f32 %2364, 1
  %2367 = extractvalue %dx.types.ResRet.f32 %2364, 2
  %2368 = extractvalue %dx.types.ResRet.f32 %2364, 3
  %2369 = fcmp fast ogt float %2361, 0.000000e+00
  br i1 %2369, label %2370, label %2391, !dx.controlflow.hints !92

; <label>:2370                                    ; preds = %2353
  %2371 = fadd fast float %2360, 1.000000e+00
  %2372 = call float @dx.op.unary.f32(i32 22, float %2334)  ; Frc(value)
  %2373 = call float @dx.op.unary.f32(i32 22, float %2335)  ; Frc(value)
  %2374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %2372, float %2373, float %2371, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2375 = extractvalue %dx.types.ResRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.ResRet.f32 %2374, 1
  %2377 = extractvalue %dx.types.ResRet.f32 %2374, 2
  %2378 = extractvalue %dx.types.ResRet.f32 %2374, 3
  %2379 = fsub fast float %2375, %2365
  %2380 = fsub fast float %2376, %2366
  %2381 = fsub fast float %2377, %2367
  %2382 = fsub fast float %2378, %2368
  %2383 = fmul fast float %2379, %2361
  %2384 = fmul fast float %2380, %2361
  %2385 = fmul fast float %2381, %2361
  %2386 = fmul fast float %2382, %2361
  %2387 = fadd fast float %2383, %2365
  %2388 = fadd fast float %2384, %2366
  %2389 = fadd fast float %2385, %2367
  %2390 = fadd fast float %2386, %2368
  br label %2391

; <label>:2391                                    ; preds = %2370, %2353
  %2392 = phi float [ %2387, %2370 ], [ %2365, %2353 ]
  %2393 = phi float [ %2388, %2370 ], [ %2366, %2353 ]
  %2394 = phi float [ %2389, %2370 ], [ %2367, %2353 ]
  %2395 = phi float [ %2390, %2370 ], [ %2368, %2353 ]
  %2396 = fadd fast float %2392, -5.000000e-01
  %2397 = fadd fast float %2394, -5.000000e-01
  %2398 = fmul fast float %2396, 0xBFD5555560000000
  %2399 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2397, float %2398)  ; FMad(a,b,c)
  %2400 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2393, float 0.000000e+00)  ; FMad(a,b,c)
  %2401 = fadd fast float %2400, %2395
  %2402 = fmul fast float %2396, -7.500000e-01
  %2403 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2397, float %2402)  ; FMad(a,b,c)
  %2404 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2393, float 0.000000e+00)  ; FMad(a,b,c)
  %2405 = fadd fast float %2404, %2395
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 0
  %2408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.f32 %2408, 0
  %2410 = extractvalue %dx.types.CBufRet.f32 %2408, 1
  %2411 = extractvalue %dx.types.CBufRet.f32 %2408, 2
  %2412 = extractvalue %dx.types.CBufRet.f32 %2408, 3
  %2413 = fsub fast float %2409, %2399
  %2414 = fsub fast float %2410, %2401
  %2415 = fsub fast float %2411, %2403
  %2416 = fsub fast float %2412, %2405
  %2417 = fmul fast float %2413, %2407
  %2418 = fmul fast float %2414, %2407
  %2419 = fmul fast float %2415, %2407
  %2420 = fmul fast float %2416, %2407
  %2421 = fadd fast float %2417, %2399
  %2422 = fadd fast float %2418, %2401
  %2423 = fadd fast float %2419, %2403
  %2424 = fadd fast float %2420, %2405
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 536870911
  %2428 = uitofp i32 %2427 to float
  %2429 = fmul fast float %2428, %2275
  %2430 = fmul fast float %2428, %2279
  %2431 = fptoui float %2429 to i32
  %2432 = fptoui float %2430 to i32
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %2434, 31
  %2436 = lshr i32 %2431, %2435
  %2437 = lshr i32 %2432, %2435
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = and i32 %2439, 31
  %2441 = shl i32 1, %2440
  %2442 = call i32 @dx.op.binary.i32(i32 40, i32 %2441, i32 4)  ; UMin(a,b)
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = extractvalue %dx.types.ResRet.i32 %2443, 1
  %2446 = icmp eq i32 %2442, 0
  br i1 %2446, label %2488, label %2447

; <label>:2447                                    ; preds = %2391
  br label %2448

; <label>:2448                                    ; preds = %2476, %2447
  %2449 = phi i32 [ %2479, %2476 ], [ 0, %2447 ]
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = lshr i32 %2451, 16
  %2453 = and i32 %2452, 31
  %2454 = shl i32 %2437, %2453
  %2455 = add i32 %2454, %2436
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = and i32 %2457, 31
  %2459 = shl i32 %2455, %2458
  %2460 = add i32 %2459, %2449
  %2461 = shl i32 %2460, 2
  %2462 = add i32 %2461, 32
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2462, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = icmp slt i32 %2464, 0
  %2466 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %2449
  %2467 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %2449
  %2468 = bitcast float* %2466 to i32*
  %2469 = bitcast float* %2467 to i32*
  br i1 %2465, label %2470, label %2476

; <label>:2470                                    ; preds = %2448
  %2471 = and i32 %2464, 1073741823
  %2472 = add nuw nsw i32 %2471, 20
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = extractvalue %dx.types.ResRet.i32 %2473, 1
  br label %2476

; <label>:2476                                    ; preds = %2470, %2448
  %2477 = phi i32 [ %2474, %2470 ], [ %2444, %2448 ]
  %2478 = phi i32 [ %2475, %2470 ], [ %2445, %2448 ]
  store i32 %2477, i32* %2468, align 4
  store i32 %2478, i32* %2469, align 4
  %2479 = add nuw i32 %2449, 1
  %2480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2481 = extractvalue %dx.types.CBufRet.i32 %2480, 2
  %2482 = icmp eq i32 %2481, 0
  %2483 = icmp ugt i32 %2464, -1073741825
  %2484 = and i1 %2483, %2482
  %2485 = icmp ult i32 %2479, %2442
  %2486 = and i1 %2484, %2485
  br i1 %2486, label %2448, label %2487

; <label>:2487                                    ; preds = %2476
  br label %2488

; <label>:2488                                    ; preds = %2487, %2391
  %2489 = phi i32 [ 0, %2391 ], [ %2479, %2487 ]
  %2490 = extractvalue %dx.types.CBufRet.f32 %2253, 2
  %2491 = fptoui float %2490 to i32
  %2492 = icmp eq i32 %2491, 0
  br i1 %2492, label %2544, label %2493

; <label>:2493                                    ; preds = %2488
  br label %2494

; <label>:2494                                    ; preds = %2539, %2493
  %2495 = phi i32 [ %2540, %2539 ], [ %2489, %2493 ]
  %2496 = phi i32 [ %2541, %2539 ], [ 0, %2493 ]
  %2497 = lshr i32 %2496, 2
  %2498 = and i32 %2496, 3
  %2499 = add nuw nsw i32 %2497, 83
  %2500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %2499)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.i32 %2500, 0
  %2502 = extractvalue %dx.types.CBufRet.i32 %2500, 1
  %2503 = extractvalue %dx.types.CBufRet.i32 %2500, 2
  %2504 = extractvalue %dx.types.CBufRet.i32 %2500, 3
  %2505 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %2501, i32* %2505, align 4
  %2506 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %2502, i32* %2506, align 4
  %2507 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %2503, i32* %2507, align 4
  %2508 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %2504, i32* %2508, align 4
  %2509 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %2498
  %2510 = load i32, i32* %2509, align 4, !tbaa !93, !noalias !97
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = lshr i32 %2512, 16
  %2514 = and i32 %2513, 31
  %2515 = shl i32 %2437, %2514
  %2516 = add i32 %2515, %2436
  %2517 = shl i32 %2516, 2
  %2518 = add i32 %2517, %2510
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = icmp eq i32 %2520, 0
  br i1 %2521, label %2539, label %2522

; <label>:2522                                    ; preds = %2494
  %2523 = icmp slt i32 %2520, 0
  %2524 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %2495
  %2525 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %2495
  %2526 = bitcast float* %2524 to i32*
  %2527 = bitcast float* %2525 to i32*
  br i1 %2523, label %2528, label %2535

; <label>:2528                                    ; preds = %2522
  %2529 = and i32 %2520, 1073741823
  %2530 = add i32 %2510, 20
  %2531 = add i32 %2530, %2529
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = extractvalue %dx.types.ResRet.i32 %2532, 1
  br label %2535

; <label>:2535                                    ; preds = %2528, %2522
  %2536 = phi i32 [ %2533, %2528 ], [ %2444, %2522 ]
  %2537 = phi i32 [ %2534, %2528 ], [ %2445, %2522 ]
  store i32 %2536, i32* %2526, align 4
  store i32 %2537, i32* %2527, align 4
  %2538 = add i32 %2495, 1
  br label %2539

; <label>:2539                                    ; preds = %2535, %2494
  %2540 = phi i32 [ %2495, %2494 ], [ %2538, %2535 ]
  %2541 = add nuw i32 %2496, 1
  %2542 = icmp eq i32 %2541, %2491
  br i1 %2542, label %2543, label %2494

; <label>:2543                                    ; preds = %2539
  br label %2544

; <label>:2544                                    ; preds = %2543, %2488
  %2545 = phi i32 [ %2489, %2488 ], [ %2540, %2543 ]
  %2546 = icmp eq i32 %2545, 1
  %2547 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 0
  %2548 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 0
  br i1 %2546, label %2549, label %2552

; <label>:2549                                    ; preds = %2544
  %2550 = load float, float* %2547, align 4
  %2551 = load float, float* %2548, align 4
  br label %2579

; <label>:2552                                    ; preds = %2544
  %2553 = load float, float* %2547, align 4
  %2554 = load float, float* %2548, align 4
  %2555 = fdiv fast float 1.000000e+00, %2554
  %2556 = fsub fast float %2553, %2555
  %2557 = icmp ugt i32 %2545, 1
  br i1 %2557, label %2558, label %2574

; <label>:2558                                    ; preds = %2552
  br label %2559

; <label>:2559                                    ; preds = %2559, %2558
  %2560 = phi float [ %2569, %2559 ], [ %2556, %2558 ]
  %2561 = phi float [ %2570, %2559 ], [ %2553, %2558 ]
  %2562 = phi i32 [ %2571, %2559 ], [ 1, %2558 ]
  %2563 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %2562
  %2564 = load float, float* %2563, align 4
  %2565 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %2562
  %2566 = load float, float* %2565, align 4
  %2567 = fdiv fast float 1.000000e+00, %2566
  %2568 = fsub fast float %2564, %2567
  %2569 = call float @dx.op.binary.f32(i32 36, float %2560, float %2568)  ; FMin(a,b)
  %2570 = call float @dx.op.binary.f32(i32 35, float %2561, float %2564)  ; FMax(a,b)
  %2571 = add nuw i32 %2562, 1
  %2572 = icmp eq i32 %2571, %2545
  br i1 %2572, label %2573, label %2559

; <label>:2573                                    ; preds = %2559
  br label %2574

; <label>:2574                                    ; preds = %2573, %2552
  %2575 = phi float [ %2556, %2552 ], [ %2569, %2573 ]
  %2576 = phi float [ %2553, %2552 ], [ %2570, %2573 ]
  %2577 = fsub fast float %2576, %2575
  %2578 = fdiv fast float 1.000000e+00, %2577
  br label %2579

; <label>:2579                                    ; preds = %2574, %2549
  %2580 = phi float [ %2550, %2549 ], [ %2576, %2574 ]
  %2581 = phi float [ %2551, %2549 ], [ %2578, %2574 ]
  %2582 = fadd fast float %2283, %2580
  %2583 = fmul fast float %2582, %2581
  %2584 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  %2585 = fmul fast float %2584, 2.000000e+00
  %2586 = fsub fast float 1.000000e+00, %2585
  %2587 = fmul fast float %2421, %2421
  %2588 = fsub fast float %2422, %2587
  %2589 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2588)  ; FMax(a,b)
  %2590 = fdiv fast float 1.000000e+00, %2589
  %2591 = fmul fast float %2422, %2421
  %2592 = fsub fast float %2423, %2591
  %2593 = fsub fast float %2586, %2421
  %2594 = fmul fast float %2586, %2586
  %2595 = fsub fast float %2594, %2422
  %2596 = fmul fast float %2590, %2592
  %2597 = fmul fast float %2596, %2593
  %2598 = fsub fast float %2595, %2597
  %2599 = fmul fast float %2422, %2422
  %2600 = fsub fast float %2424, %2599
  %2601 = fmul fast float %2592, %2592
  %2602 = fmul fast float %2601, %2590
  %2603 = fsub fast float %2600, %2602
  %2604 = fdiv fast float %2598, %2603
  %2605 = fmul fast float %2604, %2592
  %2606 = fsub fast float %2593, %2605
  %2607 = fmul fast float %2606, %2590
  %2608 = fmul fast float %2607, %2421
  %2609 = fsub fast float 1.000000e+00, %2608
  %2610 = fmul fast float %2604, %2422
  %2611 = fsub fast float %2609, %2610
  %2612 = fmul fast float %2607, %2607
  %2613 = fmul fast float %2604, 4.000000e+00
  %2614 = fmul fast float %2613, %2611
  %2615 = fsub fast float %2612, %2614
  %2616 = call float @dx.op.unary.f32(i32 24, float %2615)  ; Sqrt(value)
  %2617 = fcmp fast oge float %2607, 0.000000e+00
  %2618 = fsub fast float -0.000000e+00, %2616
  %2619 = select i1 %2617, float %2618, float %2616
  %2620 = fsub fast float %2619, %2607
  %2621 = fdiv fast float %2620, %2604
  %2622 = fdiv fast float %2611, %2620
  %2623 = fmul fast float %2621, 5.000000e-01
  %2624 = fmul fast float %2622, 2.000000e+00
  %2625 = select i1 %2617, float %2623, float %2624
  %2626 = select i1 %2617, float %2624, float %2623
  %2627 = call float @dx.op.binary.f32(i32 35, float %2625, float %2626)  ; FMax(a,b)
  %2628 = call float @dx.op.binary.f32(i32 36, float %2625, float %2626)  ; FMin(a,b)
  %2629 = fcmp fast ogt float %2586, %2627
  %2630 = fsub fast float %2586, %2628
  %2631 = fsub fast float %2586, %2627
  %2632 = fsub fast float %2627, %2628
  %2633 = select i1 %2629, float %2631, float %2632
  %2634 = fmul float %2630, %2633
  %2635 = select i1 %2629, float %2628, float %2586
  %2636 = fcmp fast ogt float %2586, %2628
  %2637 = fmul fast float %2635, %2627
  %2638 = fadd fast float %2635, %2627
  %2639 = fmul fast float %2638, %2421
  %2640 = fadd fast float %2637, %2422
  %2641 = fsub fast float %2640, %2639
  %2642 = fdiv fast float %2641, %2634
  %2643 = select i1 %2636, float %2642, float 0.000000e+00
  %2644 = fsub fast float 1.000000e+00, %2643
  %2645 = select i1 %2629, float %2644, float %2643
  %2646 = call float @dx.op.unary.f32(i32 7, float %2645)  ; Saturate(value)
  %2647 = extractvalue %dx.types.CBufRet.f32 %2406, 3
  %2648 = fmul fast float %2647, %2646
  %2649 = fsub fast float 1.000000e+00, %2648
  br label %2650

; <label>:2650                                    ; preds = %2579, %2291, %2256, %2252, %2218
  %2651 = phi float [ 1.000000e+00, %2218 ], [ %2649, %2579 ], [ 1.000000e+00, %2256 ], [ 1.000000e+00, %2291 ], [ 1.000000e+00, %2252 ]
  %2652 = fcmp fast ogt float %2248, 0.000000e+00
  br i1 %2652, label %2653, label %2815, !dx.controlflow.hints !106

; <label>:2653                                    ; preds = %2650
  %2654 = fadd fast float %2161, %2135
  %2655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.f32 %2655, 2
  %2657 = extractvalue %dx.types.CBufRet.f32 %2655, 3
  %2658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2659 = extractvalue %dx.types.CBufRet.f32 %2658, 2
  %2660 = call float @dx.op.binary.f32(i32 35, float %2654, float 0.000000e+00)  ; FMax(a,b)
  %2661 = fadd fast float %2660, 0x3F10000000000000
  %2662 = fcmp fast oeq float %2659, 0.000000e+00
  br i1 %2662, label %2663, label %2730

; <label>:2663                                    ; preds = %2653
  %2664 = extractvalue %dx.types.CBufRet.f32 %2655, 1
  %2665 = extractvalue %dx.types.CBufRet.f32 %2655, 0
  %2666 = fmul fast float %2665, %2150
  %2667 = fmul fast float %2664, %2151
  %2668 = fadd fast float %2666, 5.000000e-01
  %2669 = call float @dx.op.unary.f32(i32 27, float %2668)  ; Round_ni(value)
  %2670 = fadd fast float %2667, 5.000000e-01
  %2671 = call float @dx.op.unary.f32(i32 27, float %2670)  ; Round_ni(value)
  %2672 = fsub fast float %2668, %2669
  %2673 = fsub fast float %2670, %2671
  %2674 = fadd fast float %2669, -5.000000e-01
  %2675 = fadd fast float %2671, -5.000000e-01
  %2676 = fmul fast float %2672, 2.000000e+00
  %2677 = fsub fast float 3.000000e+00, %2676
  %2678 = fadd fast float %2676, 1.000000e+00
  %2679 = fsub fast float 2.000000e+00, %2672
  %2680 = bitcast float %2677 to i32
  %2681 = sub nsw i32 2129859010, %2680
  %2682 = bitcast i32 %2681 to float
  %2683 = fmul fast float %2682, %2679
  %2684 = fadd fast float %2683, -1.000000e+00
  %2685 = bitcast float %2678 to i32
  %2686 = sub nsw i32 2129859010, %2685
  %2687 = bitcast i32 %2686 to float
  %2688 = fmul fast float %2687, %2672
  %2689 = fadd fast float %2688, 1.000000e+00
  %2690 = fmul fast float %2673, 2.000000e+00
  %2691 = fsub fast float 3.000000e+00, %2690
  %2692 = fadd fast float %2690, 1.000000e+00
  %2693 = fsub fast float 2.000000e+00, %2673
  %2694 = bitcast float %2691 to i32
  %2695 = sub nsw i32 2129859010, %2694
  %2696 = bitcast i32 %2695 to float
  %2697 = fmul fast float %2696, %2693
  %2698 = fadd fast float %2697, -1.000000e+00
  %2699 = bitcast float %2692 to i32
  %2700 = sub nsw i32 2129859010, %2699
  %2701 = bitcast i32 %2700 to float
  %2702 = fmul fast float %2701, %2673
  %2703 = fadd fast float %2702, 1.000000e+00
  %2704 = fadd fast float %2684, %2674
  %2705 = fmul fast float %2704, %2656
  %2706 = fadd fast float %2698, %2675
  %2707 = fmul fast float %2706, %2657
  %2708 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %2705, float %2707, float undef, float undef, i32 0, i32 0, i32 undef, float %2661)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2709 = extractvalue %dx.types.ResRet.f32 %2708, 0
  %2710 = fmul fast float %2709, %2677
  %2711 = fadd fast float %2689, %2674
  %2712 = fmul fast float %2711, %2656
  %2713 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %2712, float %2707, float undef, float undef, i32 0, i32 0, i32 undef, float %2661)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = fmul fast float %2714, %2678
  %2716 = fadd fast float %2703, %2675
  %2717 = fmul fast float %2716, %2657
  %2718 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %2705, float %2717, float undef, float undef, i32 0, i32 0, i32 undef, float %2661)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2719 = extractvalue %dx.types.ResRet.f32 %2718, 0
  %2720 = fmul fast float %2719, %2677
  %2721 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %2712, float %2717, float undef, float undef, i32 0, i32 0, i32 undef, float %2661)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2722 = extractvalue %dx.types.ResRet.f32 %2721, 0
  %2723 = fmul fast float %2722, %2678
  %2724 = fadd fast float %2723, %2720
  %2725 = fmul fast float %2724, %2692
  %2726 = fadd fast float %2715, %2710
  %2727 = fmul fast float %2726, %2691
  %2728 = fadd fast float %2727, %2725
  %2729 = fmul fast float %2728, 6.250000e-02
  br label %2815

; <label>:2730                                    ; preds = %2653
  %2731 = fmul fast float %200, 0x401921FB60000000
  %2732 = call float @dx.op.unary.f32(i32 13, float %2731)  ; Sin(value)
  %2733 = call float @dx.op.unary.f32(i32 12, float %2731)  ; Cos(value)
  %2734 = fsub fast float -0.000000e+00, %2732
  br label %2735

; <label>:2735                                    ; preds = %2784, %2730
  %2736 = phi float [ 0.000000e+00, %2730 ], [ %2779, %2784 ]
  %2737 = phi float [ 0.000000e+00, %2730 ], [ %2781, %2784 ]
  %2738 = phi i32 [ 0, %2730 ], [ %2785, %2784 ]
  %2739 = mul i32 %2738, 2
  %2740 = add i32 0, %2739
  %2741 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2740
  %2742 = load float, float* %2741, align 4
  %2743 = mul i32 %2738, 2
  %2744 = add i32 1, %2743
  %2745 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2744
  %2746 = load float, float* %2745, align 4
  %2747 = fmul fast float %2742, %2733
  %2748 = call float @dx.op.tertiary.f32(i32 46, float %2746, float %2734, float %2747)  ; FMad(a,b,c)
  %2749 = fmul fast float %2742, %2732
  %2750 = call float @dx.op.tertiary.f32(i32 46, float %2746, float %2733, float %2749)  ; FMad(a,b,c)
  %2751 = fmul fast float %2748, %2659
  %2752 = fmul fast float %2750, %2659
  %2753 = fadd fast float %2751, %2150
  %2754 = fadd fast float %2752, %2151
  %2755 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %49, float %2753, float %2754, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.ResRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.ResRet.f32 %2755, 2
  %2759 = extractvalue %dx.types.ResRet.f32 %2755, 3
  %2760 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 0
  store float %2756, float* %2760, align 4
  %2761 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 1
  store float %2757, float* %2761, align 4
  %2762 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 2
  store float %2758, float* %2762, align 4
  %2763 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 3
  store float %2759, float* %2763, align 4
  %2764 = fsub fast float %2756, %2661
  %2765 = fcmp fast olt float %2764, 0.000000e+00
  %2766 = select i1 %2765, float 0.000000e+00, float 1.000000e+00
  %2767 = fadd fast float %2766, %2736
  %2768 = fmul fast float %2766, %2764
  %2769 = fadd fast float %2768, %2737
  br label %2770

; <label>:2770                                    ; preds = %2770, %2735
  %2771 = phi i32 [ 1, %2735 ], [ %2782, %2770 ]
  %2772 = phi float [ %2769, %2735 ], [ %2781, %2770 ]
  %2773 = phi float [ %2767, %2735 ], [ %2779, %2770 ]
  %2774 = getelementptr [4 x float], [4 x float]* %73, i32 0, i32 %2771
  %2775 = load float, float* %2774, align 4, !tbaa !107, !noalias !97
  %2776 = fsub fast float %2775, %2661
  %2777 = fcmp fast olt float %2776, 0.000000e+00
  %2778 = select i1 %2777, float 0.000000e+00, float 1.000000e+00
  %2779 = fadd fast float %2778, %2773
  %2780 = fmul fast float %2778, %2776
  %2781 = fadd fast float %2780, %2772
  %2782 = add nuw nsw i32 %2771, 1
  %2783 = icmp eq i32 %2782, 4
  br i1 %2783, label %2784, label %2770, !llvm.loop !109

; <label>:2784                                    ; preds = %2770
  %2785 = add nuw nsw i32 %2738, 1
  %2786 = icmp eq i32 %2785, 8
  br i1 %2786, label %2787, label %2735, !llvm.loop !111

; <label>:2787                                    ; preds = %2784
  %2788 = fdiv fast float 1.000000e+00, %2779
  %2789 = fmul fast float %2788, %2781
  %2790 = fdiv fast float 1.000000e+00, %2661
  %2791 = fmul fast float %2789, %2790
  %2792 = call float @dx.op.unary.f32(i32 7, float %2791)  ; Saturate(value)
  %2793 = call float @dx.op.binary.f32(i32 35, float %2792, float 0.000000e+00)  ; FMax(a,b)
  %2794 = fmul fast float %2779, 3.125000e-02
  %2795 = call float @dx.op.unary.f32(i32 7, float %2794)  ; Saturate(value)
  %2796 = fmul fast float %2795, 2.000000e+00
  %2797 = fadd fast float %2796, -1.000000e+00
  %2798 = fcmp fast ogt float %2797, 0.000000e+00
  %2799 = fcmp fast olt float %2797, 0.000000e+00
  %2800 = zext i1 %2798 to i32
  %2801 = zext i1 %2799 to i32
  %2802 = sub nsw i32 %2800, %2801
  %2803 = sitofp i32 %2802 to float
  %2804 = fmul fast float %2803, %2797
  %2805 = fsub fast float 1.000000e+00, %2804
  %2806 = fmul fast float %2805, %2805
  %2807 = fmul fast float %2806, %2805
  %2808 = fsub fast float %2805, %2807
  %2809 = fmul fast float %2808, %2793
  %2810 = fsub fast float 1.000000e+00, %2807
  %2811 = fsub fast float %2810, %2809
  %2812 = fmul fast float %2803, 5.000000e-01
  %2813 = fmul fast float %2812, %2811
  %2814 = fsub fast float 5.000000e-01, %2813
  br label %2815

; <label>:2815                                    ; preds = %2787, %2663, %2650
  %2816 = phi float [ 1.000000e+00, %2650 ], [ %2729, %2663 ], [ %2814, %2787 ]
  %2817 = fcmp fast ogt float %2246, 0.000000e+00
  br i1 %2817, label %2818, label %2982, !dx.controlflow.hints !112

; <label>:2818                                    ; preds = %2815
  %2819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.f32 %2819, 1
  %2821 = fadd fast float %2820, %2135
  %2822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2823 = extractvalue %dx.types.CBufRet.f32 %2822, 2
  %2824 = extractvalue %dx.types.CBufRet.f32 %2822, 3
  %2825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2826 = extractvalue %dx.types.CBufRet.f32 %2825, 1
  %2827 = call float @dx.op.binary.f32(i32 35, float %2821, float 0.000000e+00)  ; FMax(a,b)
  %2828 = fadd fast float %2827, 0x3F10000000000000
  %2829 = fcmp fast oeq float %2826, 0.000000e+00
  br i1 %2829, label %2830, label %2897

; <label>:2830                                    ; preds = %2818
  %2831 = extractvalue %dx.types.CBufRet.f32 %2822, 1
  %2832 = extractvalue %dx.types.CBufRet.f32 %2822, 0
  %2833 = fmul fast float %2832, %2142
  %2834 = fmul fast float %2831, %2143
  %2835 = fadd fast float %2833, 5.000000e-01
  %2836 = call float @dx.op.unary.f32(i32 27, float %2835)  ; Round_ni(value)
  %2837 = fadd fast float %2834, 5.000000e-01
  %2838 = call float @dx.op.unary.f32(i32 27, float %2837)  ; Round_ni(value)
  %2839 = fsub fast float %2835, %2836
  %2840 = fsub fast float %2837, %2838
  %2841 = fadd fast float %2836, -5.000000e-01
  %2842 = fadd fast float %2838, -5.000000e-01
  %2843 = fmul fast float %2839, 2.000000e+00
  %2844 = fsub fast float 3.000000e+00, %2843
  %2845 = fadd fast float %2843, 1.000000e+00
  %2846 = fsub fast float 2.000000e+00, %2839
  %2847 = bitcast float %2844 to i32
  %2848 = sub nsw i32 2129859010, %2847
  %2849 = bitcast i32 %2848 to float
  %2850 = fmul fast float %2849, %2846
  %2851 = fadd fast float %2850, -1.000000e+00
  %2852 = bitcast float %2845 to i32
  %2853 = sub nsw i32 2129859010, %2852
  %2854 = bitcast i32 %2853 to float
  %2855 = fmul fast float %2854, %2839
  %2856 = fadd fast float %2855, 1.000000e+00
  %2857 = fmul fast float %2840, 2.000000e+00
  %2858 = fsub fast float 3.000000e+00, %2857
  %2859 = fadd fast float %2857, 1.000000e+00
  %2860 = fsub fast float 2.000000e+00, %2840
  %2861 = bitcast float %2858 to i32
  %2862 = sub nsw i32 2129859010, %2861
  %2863 = bitcast i32 %2862 to float
  %2864 = fmul fast float %2863, %2860
  %2865 = fadd fast float %2864, -1.000000e+00
  %2866 = bitcast float %2859 to i32
  %2867 = sub nsw i32 2129859010, %2866
  %2868 = bitcast i32 %2867 to float
  %2869 = fmul fast float %2868, %2840
  %2870 = fadd fast float %2869, 1.000000e+00
  %2871 = fadd fast float %2851, %2841
  %2872 = fmul fast float %2871, %2823
  %2873 = fadd fast float %2865, %2842
  %2874 = fmul fast float %2873, %2824
  %2875 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %2872, float %2874, float undef, float undef, i32 0, i32 0, i32 undef, float %2828)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = fmul fast float %2876, %2844
  %2878 = fadd fast float %2856, %2841
  %2879 = fmul fast float %2878, %2823
  %2880 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %2879, float %2874, float undef, float undef, i32 0, i32 0, i32 undef, float %2828)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = fmul fast float %2881, %2845
  %2883 = fadd fast float %2870, %2842
  %2884 = fmul fast float %2883, %2824
  %2885 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %2872, float %2884, float undef, float undef, i32 0, i32 0, i32 undef, float %2828)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = fmul fast float %2886, %2844
  %2888 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %2879, float %2884, float undef, float undef, i32 0, i32 0, i32 undef, float %2828)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2889 = extractvalue %dx.types.ResRet.f32 %2888, 0
  %2890 = fmul fast float %2889, %2845
  %2891 = fadd fast float %2890, %2887
  %2892 = fmul fast float %2891, %2859
  %2893 = fadd fast float %2882, %2877
  %2894 = fmul fast float %2893, %2858
  %2895 = fadd fast float %2894, %2892
  %2896 = fmul fast float %2895, 6.250000e-02
  br label %2982

; <label>:2897                                    ; preds = %2818
  %2898 = fmul fast float %200, 0x401921FB60000000
  %2899 = call float @dx.op.unary.f32(i32 13, float %2898)  ; Sin(value)
  %2900 = call float @dx.op.unary.f32(i32 12, float %2898)  ; Cos(value)
  %2901 = fsub fast float -0.000000e+00, %2899
  br label %2902

; <label>:2902                                    ; preds = %2951, %2897
  %2903 = phi float [ 0.000000e+00, %2897 ], [ %2946, %2951 ]
  %2904 = phi float [ 0.000000e+00, %2897 ], [ %2948, %2951 ]
  %2905 = phi i32 [ 0, %2897 ], [ %2952, %2951 ]
  %2906 = mul i32 %2905, 2
  %2907 = add i32 0, %2906
  %2908 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2907
  %2909 = load float, float* %2908, align 4
  %2910 = mul i32 %2905, 2
  %2911 = add i32 1, %2910
  %2912 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2911
  %2913 = load float, float* %2912, align 4
  %2914 = fmul fast float %2909, %2900
  %2915 = call float @dx.op.tertiary.f32(i32 46, float %2913, float %2901, float %2914)  ; FMad(a,b,c)
  %2916 = fmul fast float %2909, %2899
  %2917 = call float @dx.op.tertiary.f32(i32 46, float %2913, float %2900, float %2916)  ; FMad(a,b,c)
  %2918 = fmul fast float %2915, %2826
  %2919 = fmul fast float %2917, %2826
  %2920 = fadd fast float %2918, %2142
  %2921 = fadd fast float %2919, %2143
  %2922 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %49, float %2920, float %2921, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2923 = extractvalue %dx.types.ResRet.f32 %2922, 0
  %2924 = extractvalue %dx.types.ResRet.f32 %2922, 1
  %2925 = extractvalue %dx.types.ResRet.f32 %2922, 2
  %2926 = extractvalue %dx.types.ResRet.f32 %2922, 3
  %2927 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 0
  store float %2923, float* %2927, align 4
  %2928 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 1
  store float %2924, float* %2928, align 4
  %2929 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 2
  store float %2925, float* %2929, align 4
  %2930 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 3
  store float %2926, float* %2930, align 4
  %2931 = fsub fast float %2923, %2828
  %2932 = fcmp fast olt float %2931, 0.000000e+00
  %2933 = select i1 %2932, float 0.000000e+00, float 1.000000e+00
  %2934 = fadd fast float %2933, %2903
  %2935 = fmul fast float %2933, %2931
  %2936 = fadd fast float %2935, %2904
  br label %2937

; <label>:2937                                    ; preds = %2937, %2902
  %2938 = phi i32 [ 1, %2902 ], [ %2949, %2937 ]
  %2939 = phi float [ %2936, %2902 ], [ %2948, %2937 ]
  %2940 = phi float [ %2934, %2902 ], [ %2946, %2937 ]
  %2941 = getelementptr [4 x float], [4 x float]* %72, i32 0, i32 %2938
  %2942 = load float, float* %2941, align 4, !tbaa !107, !noalias !97
  %2943 = fsub fast float %2942, %2828
  %2944 = fcmp fast olt float %2943, 0.000000e+00
  %2945 = select i1 %2944, float 0.000000e+00, float 1.000000e+00
  %2946 = fadd fast float %2945, %2940
  %2947 = fmul fast float %2945, %2943
  %2948 = fadd fast float %2947, %2939
  %2949 = add nuw nsw i32 %2938, 1
  %2950 = icmp eq i32 %2949, 4
  br i1 %2950, label %2951, label %2937, !llvm.loop !109

; <label>:2951                                    ; preds = %2937
  %2952 = add nuw nsw i32 %2905, 1
  %2953 = icmp eq i32 %2952, 8
  br i1 %2953, label %2954, label %2902, !llvm.loop !111

; <label>:2954                                    ; preds = %2951
  %2955 = fdiv fast float 1.000000e+00, %2946
  %2956 = fmul fast float %2955, %2948
  %2957 = fdiv fast float 1.000000e+00, %2828
  %2958 = fmul fast float %2956, %2957
  %2959 = call float @dx.op.unary.f32(i32 7, float %2958)  ; Saturate(value)
  %2960 = call float @dx.op.binary.f32(i32 35, float %2959, float 0.000000e+00)  ; FMax(a,b)
  %2961 = fmul fast float %2946, 3.125000e-02
  %2962 = call float @dx.op.unary.f32(i32 7, float %2961)  ; Saturate(value)
  %2963 = fmul fast float %2962, 2.000000e+00
  %2964 = fadd fast float %2963, -1.000000e+00
  %2965 = fcmp fast ogt float %2964, 0.000000e+00
  %2966 = fcmp fast olt float %2964, 0.000000e+00
  %2967 = zext i1 %2965 to i32
  %2968 = zext i1 %2966 to i32
  %2969 = sub nsw i32 %2967, %2968
  %2970 = sitofp i32 %2969 to float
  %2971 = fmul fast float %2970, %2964
  %2972 = fsub fast float 1.000000e+00, %2971
  %2973 = fmul fast float %2972, %2972
  %2974 = fmul fast float %2973, %2972
  %2975 = fsub fast float %2972, %2974
  %2976 = fmul fast float %2975, %2960
  %2977 = fsub fast float 1.000000e+00, %2974
  %2978 = fsub fast float %2977, %2976
  %2979 = fmul fast float %2970, 5.000000e-01
  %2980 = fmul fast float %2979, %2978
  %2981 = fsub fast float 5.000000e-01, %2980
  br label %2982

; <label>:2982                                    ; preds = %2954, %2830, %2815
  %2983 = phi float [ 1.000000e+00, %2815 ], [ %2896, %2830 ], [ %2981, %2954 ]
  %2984 = fcmp fast ogt float %2245, 0.000000e+00
  br i1 %2984, label %2985, label %3149, !dx.controlflow.hints !113

; <label>:2985                                    ; preds = %2982
  %2986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.f32 %2986, 0
  %2988 = fadd fast float %2987, %2135
  %2989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2990 = extractvalue %dx.types.CBufRet.f32 %2989, 2
  %2991 = extractvalue %dx.types.CBufRet.f32 %2989, 3
  %2992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2993 = extractvalue %dx.types.CBufRet.f32 %2992, 0
  %2994 = call float @dx.op.binary.f32(i32 35, float %2988, float 0.000000e+00)  ; FMax(a,b)
  %2995 = fadd fast float %2994, 0x3F10000000000000
  %2996 = fcmp fast oeq float %2993, 0.000000e+00
  br i1 %2996, label %2997, label %3064

; <label>:2997                                    ; preds = %2985
  %2998 = extractvalue %dx.types.CBufRet.f32 %2989, 1
  %2999 = extractvalue %dx.types.CBufRet.f32 %2989, 0
  %3000 = fmul fast float %2999, %2127
  %3001 = fmul fast float %2998, %2131
  %3002 = fadd fast float %3000, 5.000000e-01
  %3003 = call float @dx.op.unary.f32(i32 27, float %3002)  ; Round_ni(value)
  %3004 = fadd fast float %3001, 5.000000e-01
  %3005 = call float @dx.op.unary.f32(i32 27, float %3004)  ; Round_ni(value)
  %3006 = fsub fast float %3002, %3003
  %3007 = fsub fast float %3004, %3005
  %3008 = fadd fast float %3003, -5.000000e-01
  %3009 = fadd fast float %3005, -5.000000e-01
  %3010 = fmul fast float %3006, 2.000000e+00
  %3011 = fsub fast float 3.000000e+00, %3010
  %3012 = fadd fast float %3010, 1.000000e+00
  %3013 = fsub fast float 2.000000e+00, %3006
  %3014 = bitcast float %3011 to i32
  %3015 = sub nsw i32 2129859010, %3014
  %3016 = bitcast i32 %3015 to float
  %3017 = fmul fast float %3016, %3013
  %3018 = fadd fast float %3017, -1.000000e+00
  %3019 = bitcast float %3012 to i32
  %3020 = sub nsw i32 2129859010, %3019
  %3021 = bitcast i32 %3020 to float
  %3022 = fmul fast float %3021, %3006
  %3023 = fadd fast float %3022, 1.000000e+00
  %3024 = fmul fast float %3007, 2.000000e+00
  %3025 = fsub fast float 3.000000e+00, %3024
  %3026 = fadd fast float %3024, 1.000000e+00
  %3027 = fsub fast float 2.000000e+00, %3007
  %3028 = bitcast float %3025 to i32
  %3029 = sub nsw i32 2129859010, %3028
  %3030 = bitcast i32 %3029 to float
  %3031 = fmul fast float %3030, %3027
  %3032 = fadd fast float %3031, -1.000000e+00
  %3033 = bitcast float %3026 to i32
  %3034 = sub nsw i32 2129859010, %3033
  %3035 = bitcast i32 %3034 to float
  %3036 = fmul fast float %3035, %3007
  %3037 = fadd fast float %3036, 1.000000e+00
  %3038 = fadd fast float %3018, %3008
  %3039 = fmul fast float %3038, %2990
  %3040 = fadd fast float %3032, %3009
  %3041 = fmul fast float %3040, %2991
  %3042 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %3039, float %3041, float undef, float undef, i32 0, i32 0, i32 undef, float %2995)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3043 = extractvalue %dx.types.ResRet.f32 %3042, 0
  %3044 = fmul fast float %3043, %3011
  %3045 = fadd fast float %3023, %3008
  %3046 = fmul fast float %3045, %2990
  %3047 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %3046, float %3041, float undef, float undef, i32 0, i32 0, i32 undef, float %2995)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3048 = extractvalue %dx.types.ResRet.f32 %3047, 0
  %3049 = fmul fast float %3048, %3012
  %3050 = fadd fast float %3037, %3009
  %3051 = fmul fast float %3050, %2991
  %3052 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %3039, float %3051, float undef, float undef, i32 0, i32 0, i32 undef, float %2995)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3053 = extractvalue %dx.types.ResRet.f32 %3052, 0
  %3054 = fmul fast float %3053, %3011
  %3055 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %3046, float %3051, float undef, float undef, i32 0, i32 0, i32 undef, float %2995)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3056 = extractvalue %dx.types.ResRet.f32 %3055, 0
  %3057 = fmul fast float %3056, %3012
  %3058 = fadd fast float %3057, %3054
  %3059 = fmul fast float %3058, %3026
  %3060 = fadd fast float %3049, %3044
  %3061 = fmul fast float %3060, %3025
  %3062 = fadd fast float %3061, %3059
  %3063 = fmul fast float %3062, 6.250000e-02
  br label %3149

; <label>:3064                                    ; preds = %2985
  %3065 = fmul fast float %200, 0x401921FB60000000
  %3066 = call float @dx.op.unary.f32(i32 13, float %3065)  ; Sin(value)
  %3067 = call float @dx.op.unary.f32(i32 12, float %3065)  ; Cos(value)
  %3068 = fsub fast float -0.000000e+00, %3066
  br label %3069

; <label>:3069                                    ; preds = %3118, %3064
  %3070 = phi float [ 0.000000e+00, %3064 ], [ %3113, %3118 ]
  %3071 = phi float [ 0.000000e+00, %3064 ], [ %3115, %3118 ]
  %3072 = phi i32 [ 0, %3064 ], [ %3119, %3118 ]
  %3073 = mul i32 %3072, 2
  %3074 = add i32 0, %3073
  %3075 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3074
  %3076 = load float, float* %3075, align 4
  %3077 = mul i32 %3072, 2
  %3078 = add i32 1, %3077
  %3079 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3078
  %3080 = load float, float* %3079, align 4
  %3081 = fmul fast float %3076, %3067
  %3082 = call float @dx.op.tertiary.f32(i32 46, float %3080, float %3068, float %3081)  ; FMad(a,b,c)
  %3083 = fmul fast float %3076, %3066
  %3084 = call float @dx.op.tertiary.f32(i32 46, float %3080, float %3067, float %3083)  ; FMad(a,b,c)
  %3085 = fmul fast float %3082, %2993
  %3086 = fmul fast float %3084, %2993
  %3087 = fadd fast float %3085, %2127
  %3088 = fadd fast float %3086, %2131
  %3089 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %49, float %3087, float %3088, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3090 = extractvalue %dx.types.ResRet.f32 %3089, 0
  %3091 = extractvalue %dx.types.ResRet.f32 %3089, 1
  %3092 = extractvalue %dx.types.ResRet.f32 %3089, 2
  %3093 = extractvalue %dx.types.ResRet.f32 %3089, 3
  %3094 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 0
  store float %3090, float* %3094, align 4
  %3095 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 1
  store float %3091, float* %3095, align 4
  %3096 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 2
  store float %3092, float* %3096, align 4
  %3097 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 3
  store float %3093, float* %3097, align 4
  %3098 = fsub fast float %3090, %2995
  %3099 = fcmp fast olt float %3098, 0.000000e+00
  %3100 = select i1 %3099, float 0.000000e+00, float 1.000000e+00
  %3101 = fadd fast float %3100, %3070
  %3102 = fmul fast float %3100, %3098
  %3103 = fadd fast float %3102, %3071
  br label %3104

; <label>:3104                                    ; preds = %3104, %3069
  %3105 = phi i32 [ 1, %3069 ], [ %3116, %3104 ]
  %3106 = phi float [ %3103, %3069 ], [ %3115, %3104 ]
  %3107 = phi float [ %3101, %3069 ], [ %3113, %3104 ]
  %3108 = getelementptr [4 x float], [4 x float]* %71, i32 0, i32 %3105
  %3109 = load float, float* %3108, align 4, !tbaa !107, !noalias !97
  %3110 = fsub fast float %3109, %2995
  %3111 = fcmp fast olt float %3110, 0.000000e+00
  %3112 = select i1 %3111, float 0.000000e+00, float 1.000000e+00
  %3113 = fadd fast float %3112, %3107
  %3114 = fmul fast float %3112, %3110
  %3115 = fadd fast float %3114, %3106
  %3116 = add nuw nsw i32 %3105, 1
  %3117 = icmp eq i32 %3116, 4
  br i1 %3117, label %3118, label %3104, !llvm.loop !109

; <label>:3118                                    ; preds = %3104
  %3119 = add nuw nsw i32 %3072, 1
  %3120 = icmp eq i32 %3119, 8
  br i1 %3120, label %3121, label %3069, !llvm.loop !111

; <label>:3121                                    ; preds = %3118
  %3122 = fdiv fast float 1.000000e+00, %3113
  %3123 = fmul fast float %3122, %3115
  %3124 = fdiv fast float 1.000000e+00, %2995
  %3125 = fmul fast float %3123, %3124
  %3126 = call float @dx.op.unary.f32(i32 7, float %3125)  ; Saturate(value)
  %3127 = call float @dx.op.binary.f32(i32 35, float %3126, float 0.000000e+00)  ; FMax(a,b)
  %3128 = fmul fast float %3113, 3.125000e-02
  %3129 = call float @dx.op.unary.f32(i32 7, float %3128)  ; Saturate(value)
  %3130 = fmul fast float %3129, 2.000000e+00
  %3131 = fadd fast float %3130, -1.000000e+00
  %3132 = fcmp fast ogt float %3131, 0.000000e+00
  %3133 = fcmp fast olt float %3131, 0.000000e+00
  %3134 = zext i1 %3132 to i32
  %3135 = zext i1 %3133 to i32
  %3136 = sub nsw i32 %3134, %3135
  %3137 = sitofp i32 %3136 to float
  %3138 = fmul fast float %3137, %3131
  %3139 = fsub fast float 1.000000e+00, %3138
  %3140 = fmul fast float %3139, %3139
  %3141 = fmul fast float %3140, %3139
  %3142 = fsub fast float %3139, %3141
  %3143 = fmul fast float %3142, %3127
  %3144 = fsub fast float 1.000000e+00, %3141
  %3145 = fsub fast float %3144, %3143
  %3146 = fmul fast float %3137, 5.000000e-01
  %3147 = fmul fast float %3146, %3145
  %3148 = fsub fast float 5.000000e-01, %3147
  br label %3149

; <label>:3149                                    ; preds = %3121, %2997, %2982
  %3150 = phi float [ 1.000000e+00, %2982 ], [ %3063, %2997 ], [ %3148, %3121 ]
  %3151 = fsub fast float %2816, %2651
  %3152 = fmul fast float %3151, %2189
  %3153 = fadd fast float %3152, %2651
  %3154 = fsub fast float %2983, %3153
  %3155 = fmul fast float %3154, %2219
  %3156 = fadd fast float %3155, %3153
  %3157 = fsub fast float %3150, %3156
  %3158 = fmul fast float %3157, %2245
  %3159 = fadd fast float %3158, %3156
  %3160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.f32 %3160, 2
  %3162 = fcmp fast ogt float %3161, 0.000000e+00
  br i1 %3162, label %3163, label %3203, !dx.controlflow.hints !114

; <label>:3163                                    ; preds = %3149
  %3164 = fcmp fast ugt float %3161, 0.000000e+00
  br i1 %3164, label %3165, label %3200

; <label>:3165                                    ; preds = %3163
  %3166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3167 = extractvalue %dx.types.CBufRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.CBufRet.f32 %3166, 1
  %3169 = extractvalue %dx.types.CBufRet.f32 %3166, 2
  %3170 = extractvalue %dx.types.CBufRet.f32 %3166, 3
  %3171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3172 = extractvalue %dx.types.CBufRet.f32 %3171, 0
  %3173 = extractvalue %dx.types.CBufRet.f32 %3171, 1
  %3174 = extractvalue %dx.types.CBufRet.f32 %3171, 2
  %3175 = extractvalue %dx.types.CBufRet.f32 %3171, 3
  %3176 = extractvalue %dx.types.CBufRet.f32 %3160, 0
  %3177 = extractvalue %dx.types.CBufRet.f32 %3160, 1
  %3178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3179 = extractvalue %dx.types.CBufRet.f32 %3178, 0
  %3180 = extractvalue %dx.types.CBufRet.f32 %3178, 1
  %3181 = extractvalue %dx.types.CBufRet.f32 %3178, 2
  %3182 = fadd fast float %3179, %2104
  %3183 = fadd fast float %3180, %2105
  %3184 = fadd fast float %3181, %2106
  %3185 = fmul fast float %3182, %3167
  %3186 = call float @dx.op.tertiary.f32(i32 46, float %3168, float %3183, float %3185)  ; FMad(a,b,c)
  %3187 = call float @dx.op.tertiary.f32(i32 46, float %3169, float %3184, float %3186)  ; FMad(a,b,c)
  %3188 = fadd fast float %3187, %3170
  %3189 = fmul fast float %3182, %3172
  %3190 = call float @dx.op.tertiary.f32(i32 46, float %3173, float %3183, float %3189)  ; FMad(a,b,c)
  %3191 = call float @dx.op.tertiary.f32(i32 46, float %3174, float %3184, float %3190)  ; FMad(a,b,c)
  %3192 = fadd fast float %3191, %3175
  %3193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %3188, float %3192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3194 = extractvalue %dx.types.ResRet.f32 %3193, 0
  %3195 = fmul fast float %3194, %3177
  %3196 = fadd fast float %3195, %3176
  %3197 = call float @dx.op.unary.f32(i32 7, float %3196)  ; Saturate(value)
  %3198 = fmul fast float %3197, %3161
  %3199 = fsub fast float 1.000000e+00, %3198
  br label %3200

; <label>:3200                                    ; preds = %3165, %3163
  %3201 = phi float [ %3199, %3165 ], [ 1.000000e+00, %3163 ]
  %3202 = fmul fast float %3201, %3159
  br label %3203

; <label>:3203                                    ; preds = %3200, %3149, %2084
  %3204 = phi float [ 1.000000e+00, %2084 ], [ %3202, %3200 ], [ %3159, %3149 ]
  %3205 = call float @dx.op.binary.f32(i32 36, float %3204, float %3204)  ; FMin(a,b)
  %3206 = call float @dx.op.binary.f32(i32 36, float %3204, float %3205)  ; FMin(a,b)
  %3207 = fcmp fast ogt float %3206, 0.000000e+00
  br i1 %3207, label %3208, label %3373, !dx.controlflow.hints !115

; <label>:3208                                    ; preds = %3203
  %3209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3210 = extractvalue %dx.types.CBufRet.f32 %3209, 0
  %3211 = extractvalue %dx.types.CBufRet.f32 %3209, 1
  %3212 = extractvalue %dx.types.CBufRet.f32 %3209, 2
  %3213 = extractvalue %dx.types.CBufRet.f32 %3209, 3
  %3214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3215 = extractvalue %dx.types.CBufRet.f32 %3214, 0
  %3216 = extractvalue %dx.types.CBufRet.f32 %3214, 1
  %3217 = extractvalue %dx.types.CBufRet.f32 %3214, 2
  %3218 = extractvalue %dx.types.CBufRet.f32 %3214, 3
  %3219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3220 = extractvalue %dx.types.CBufRet.f32 %3219, 0
  %3221 = extractvalue %dx.types.CBufRet.f32 %3219, 1
  %3222 = extractvalue %dx.types.CBufRet.f32 %3219, 2
  %3223 = extractvalue %dx.types.CBufRet.f32 %3219, 3
  %3224 = fmul fast float %3210, %2104
  %3225 = call float @dx.op.tertiary.f32(i32 46, float %2105, float %3211, float %3224)  ; FMad(a,b,c)
  %3226 = call float @dx.op.tertiary.f32(i32 46, float %2106, float %3212, float %3225)  ; FMad(a,b,c)
  %3227 = fadd fast float %3226, %3213
  %3228 = fmul fast float %3215, %2104
  %3229 = call float @dx.op.tertiary.f32(i32 46, float %2105, float %3216, float %3228)  ; FMad(a,b,c)
  %3230 = call float @dx.op.tertiary.f32(i32 46, float %2106, float %3217, float %3229)  ; FMad(a,b,c)
  %3231 = fadd fast float %3230, %3218
  %3232 = fmul fast float %3220, %2104
  %3233 = call float @dx.op.tertiary.f32(i32 46, float %2105, float %3221, float %3232)  ; FMad(a,b,c)
  %3234 = call float @dx.op.tertiary.f32(i32 46, float %2106, float %3222, float %3233)  ; FMad(a,b,c)
  %3235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3236 = extractvalue %dx.types.CBufRet.f32 %3235, 0
  %3237 = extractvalue %dx.types.CBufRet.f32 %3235, 1
  %3238 = extractvalue %dx.types.CBufRet.f32 %3235, 3
  %3239 = fmul fast float %3238, %3227
  %3240 = fmul fast float %3238, %3231
  %3241 = fadd fast float %3239, %3236
  %3242 = fadd fast float %3240, %3237
  %3243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3244 = extractvalue %dx.types.CBufRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.CBufRet.f32 %3243, 1
  %3246 = fsub fast float %3241, %3244
  %3247 = fsub fast float %3242, %3245
  %3248 = fcmp fast olt float %3246, 0.000000e+00
  %3249 = fcmp fast olt float %3247, 0.000000e+00
  %3250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3251 = extractvalue %dx.types.CBufRet.f32 %3250, 0
  %3252 = extractvalue %dx.types.CBufRet.f32 %3250, 1
  %3253 = extractvalue %dx.types.CBufRet.f32 %3250, 2
  %3254 = extractvalue %dx.types.CBufRet.f32 %3250, 3
  %3255 = select i1 %3248, float %3251, float %3253
  %3256 = select i1 %3249, float %3252, float %3254
  %3257 = fmul fast float %3255, %3246
  %3258 = fmul fast float %3256, %3247
  %3259 = call float @dx.op.unary.f32(i32 6, float %3257)  ; FAbs(value)
  %3260 = call float @dx.op.unary.f32(i32 6, float %3258)  ; FAbs(value)
  %3261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3262 = extractvalue %dx.types.CBufRet.f32 %3261, 0
  %3263 = call float @dx.op.binary.f32(i32 35, float %3259, float %3260)  ; FMax(a,b)
  %3264 = fsub fast float %3262, %3263
  %3265 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  %3266 = fcmp fast ogt float %3265, 0.000000e+00
  br i1 %3266, label %3267, label %3308, !dx.controlflow.hints !116

; <label>:3267                                    ; preds = %3208
  %3268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %3241, float %3242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 1
  %3270 = fcmp fast ogt float %3269, 0.000000e+00
  br i1 %3270, label %3271, label %3303

; <label>:3271                                    ; preds = %3267
  %3272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %3241, float %3242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3273 = extractvalue %dx.types.ResRet.f32 %3272, 0
  %3274 = extractvalue %dx.types.ResRet.f32 %3272, 1
  %3275 = extractvalue %dx.types.ResRet.f32 %3272, 2
  %3276 = extractvalue %dx.types.ResRet.f32 %3272, 3
  %3277 = fsub fast float 1.000000e+00, %3223
  %3278 = fsub fast float %3277, %3234
  %3279 = fmul fast float %3278, 0x400921FB60000000
  %3280 = fadd fast float %3279, 0x3FF921FB60000000
  %3281 = call float @dx.op.unary.f32(i32 13, float %3280)  ; Sin(value)
  %3282 = fadd fast float %3281, -1.000000e+00
  %3283 = fmul fast float %3282, 0x3FD45F3060000000
  %3284 = fmul fast float %3278, 0x401921FB60000000
  %3285 = fadd fast float %3284, 0x400921FB60000000
  %3286 = call float @dx.op.unary.f32(i32 13, float %3285)  ; Sin(value)
  %3287 = fadd fast float %3286, 0x3E7777A5C0000000
  %3288 = fmul fast float %3287, 0x3FC45F3060000000
  %3289 = fmul fast float %3278, 0x4022D97C80000000
  %3290 = fadd fast float %3289, 0x4012D97C80000000
  %3291 = call float @dx.op.unary.f32(i32 13, float %3290)  ; Sin(value)
  %3292 = fadd fast float %3291, 1.000000e+00
  %3293 = fmul fast float %3292, 0x3FBB2995E0000000
  %3294 = fmul fast float %3278, 0x402921FB60000000
  %3295 = fadd fast float %3294, 0x401921FB60000000
  %3296 = call float @dx.op.unary.f32(i32 13, float %3295)  ; Sin(value)
  %3297 = fadd fast float %3296, 0xBE8777A5C0000000
  %3298 = fmul fast float %3297, 0x3FB45F3060000000
  %3299 = call float @dx.op.dot4.f32(i32 56, float %3273, float %3274, float %3275, float %3276, float %3283, float %3288, float %3293, float %3298)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3300 = fmul fast float %3299, 0xBFF7154760000000
  %3301 = call float @dx.op.unary.f32(i32 21, float %3300)  ; Exp(value)
  %3302 = call float @dx.op.unary.f32(i32 7, float %3301)  ; Saturate(value)
  br label %3303

; <label>:3303                                    ; preds = %3271, %3267
  %3304 = phi float [ %3302, %3271 ], [ 1.000000e+00, %3267 ]
  %3305 = fadd fast float %3304, -1.000000e+00
  %3306 = fmul fast float %3305, %3265
  %3307 = fadd fast float %3306, 1.000000e+00
  br label %3308

; <label>:3308                                    ; preds = %3303, %3208
  %3309 = phi float [ %3307, %3303 ], [ 1.000000e+00, %3208 ]
  %3310 = fmul fast float %3309, %3204
  %3311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3312 = extractvalue %dx.types.CBufRet.f32 %3311, 0
  %3313 = extractvalue %dx.types.CBufRet.f32 %3311, 1
  %3314 = extractvalue %dx.types.CBufRet.f32 %3311, 2
  %3315 = fadd fast float %3312, %127
  %3316 = fadd fast float %3313, %128
  %3317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.f32 %3317, 1
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 0
  %3321 = extractvalue %dx.types.CBufRet.f32 %3319, 1
  %3322 = extractvalue %dx.types.CBufRet.f32 %3319, 2
  %3323 = fsub fast float -0.000000e+00, %3315
  %3324 = fsub fast float -0.000000e+00, %3316
  %3325 = fsub fast float %2070, %3314
  %3326 = fadd fast float %3325, %3318
  %3327 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3323, float %3324, float %3326)  ; Dot3(ax,ay,az,bx,by,bz)
  %3328 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3320, float %3321, float %3322)  ; Dot3(ax,ay,az,bx,by,bz)
  %3329 = fdiv fast float 1.000000e+00, %3328
  %3330 = fmul fast float %3329, %3327
  %3331 = fmul fast float %3320, %3330
  %3332 = fmul fast float %3321, %3330
  %3333 = fadd fast float %3331, %3315
  %3334 = fadd fast float %3332, %3316
  %3335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3336 = extractvalue %dx.types.CBufRet.f32 %3335, 0
  %3337 = extractvalue %dx.types.CBufRet.f32 %3335, 1
  %3338 = fsub fast float %3333, %3336
  %3339 = fsub fast float %3334, %3337
  %3340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3341 = extractvalue %dx.types.CBufRet.f32 %3340, 2
  %3342 = extractvalue %dx.types.CBufRet.f32 %3340, 3
  %3343 = fmul fast float %3338, %3341
  %3344 = fmul fast float %3339, %3342
  %3345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.i32 %3345, 3
  %3347 = icmp eq i32 %3346, 0
  br i1 %3347, label %3353, label %3348

; <label>:3348                                    ; preds = %3308
  %3349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %3343, float %3344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = extractvalue %dx.types.ResRet.f32 %3349, 1
  %3352 = extractvalue %dx.types.ResRet.f32 %3349, 2
  br label %3358

; <label>:3353                                    ; preds = %3308
  %3354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %3343, float %3344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3355 = extractvalue %dx.types.ResRet.f32 %3354, 0
  %3356 = extractvalue %dx.types.ResRet.f32 %3354, 1
  %3357 = extractvalue %dx.types.ResRet.f32 %3354, 2
  br label %3358

; <label>:3358                                    ; preds = %3353, %3348
  %3359 = phi float [ %3350, %3348 ], [ %3355, %3353 ]
  %3360 = phi float [ %3351, %3348 ], [ %3356, %3353 ]
  %3361 = phi float [ %3352, %3348 ], [ %3357, %3353 ]
  %3362 = extractvalue %dx.types.CBufRet.f32 %3317, 2
  %3363 = fmul fast float %3362, %3359
  %3364 = extractvalue %dx.types.CBufRet.f32 %3317, 0
  %3365 = fsub fast float %3330, %3364
  %3366 = fsub fast float %3365, %3363
  %3367 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3366)  ; FMax(a,b)
  %3368 = fmul fast float %3367, %3360
  %3369 = call float @dx.op.binary.f32(i32 36, float %3361, float %3368)  ; FMin(a,b)
  %3370 = fmul fast float %3369, 0xBFF7154760000000
  %3371 = call float @dx.op.unary.f32(i32 21, float %3370)  ; Exp(value)
  %3372 = fmul fast float %3310, %3371
  br label %3373

; <label>:3373                                    ; preds = %3358, %3203
  %3374 = phi float [ %3372, %3358 ], [ %3204, %3203 ]
  %3375 = call float @dx.op.binary.f32(i32 36, float %3374, float %3374)  ; FMin(a,b)
  %3376 = call float @dx.op.binary.f32(i32 36, float %3374, float %3375)  ; FMin(a,b)
  %3377 = fcmp fast ogt float %3376, 0.000000e+00
  br i1 %3377, label %3378, label %3648, !dx.controlflow.hints !117

; <label>:3378                                    ; preds = %3373
  %3379 = fmul fast float %3374, %2096
  %3380 = fmul fast float %3374, %2097
  %3381 = fmul fast float %3374, %2098
  %3382 = fsub fast float %129, %1858
  %3383 = fcmp fast ogt float %3382, 0.000000e+00
  %3384 = fmul fast float %2085, 5.120000e+02
  %3385 = fmul fast float %2086, 5.120000e+02
  %3386 = fmul fast float %2087, 5.120000e+02
  %3387 = fadd fast float %3386, %129
  %3388 = fsub fast float %1858, %3387
  %3389 = fmul fast float %3388, 2.000000e+00
  %3390 = fadd fast float %3389, %3387
  %3391 = select i1 %3383, float %3390, float %3387
  %3392 = fsub fast float %3391, %129
  %3393 = call float @dx.op.dot3.f32(i32 55, float %3384, float %3385, float %3392, float %3384, float %3385, float %3392)  ; Dot3(ax,ay,az,bx,by,bz)
  %3394 = call float @dx.op.unary.f32(i32 25, float %3393)  ; Rsqrt(value)
  %3395 = fmul fast float %3394, %3384
  %3396 = fmul fast float %3394, %3385
  %3397 = fmul fast float %3394, %3392
  %3398 = fsub fast float %1858, %129
  %3399 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3398)  ; Dot3(ax,ay,az,bx,by,bz)
  %3400 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3395, float %3396, float %3397)  ; Dot3(ax,ay,az,bx,by,bz)
  %3401 = fdiv fast float 1.000000e+00, %3400
  %3402 = fmul fast float %3401, %3399
  %3403 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3382, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3404 = fcmp fast ogt float %3403, 0.000000e+00
  %3405 = fcmp fast olt float %3403, 0.000000e+00
  %3406 = zext i1 %3404 to i32
  %3407 = zext i1 %3405 to i32
  %3408 = sub nsw i32 %3406, %3407
  %3409 = sitofp i32 %3408 to float
  %3410 = fsub fast float %3391, %1858
  %3411 = call float @dx.op.dot3.f32(i32 55, float %3384, float %3385, float %3410, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3412 = fcmp fast ogt float %3411, 0.000000e+00
  %3413 = fcmp fast olt float %3411, 0.000000e+00
  %3414 = zext i1 %3412 to i32
  %3415 = zext i1 %3413 to i32
  %3416 = sub nsw i32 %3414, %3415
  %3417 = sitofp i32 %3416 to float
  %3418 = fcmp fast une float %3409, %3417
  br i1 %3418, label %3419, label %3429

; <label>:3419                                    ; preds = %3378
  %3420 = fmul fast float %3402, %3397
  %3421 = fmul fast float %3402, %3396
  %3422 = fmul fast float %3402, %3395
  %3423 = fmul fast float %3422, %3422
  %3424 = fmul fast float %3421, %3421
  %3425 = fadd fast float %3423, %3424
  %3426 = fmul fast float %3420, %3420
  %3427 = fadd fast float %3425, %3426
  %3428 = call float @dx.op.unary.f32(i32 24, float %3427)  ; Sqrt(value)
  br label %3439

; <label>:3429                                    ; preds = %3378
  %3430 = icmp slt i32 %3408, 0
  br i1 %3430, label %3431, label %3439

; <label>:3431                                    ; preds = %3429
  %3432 = fsub fast float %129, %3391
  %3433 = fmul fast float %3384, %3384
  %3434 = fmul fast float %3385, %3385
  %3435 = fadd fast float %3433, %3434
  %3436 = fmul fast float %3432, %3432
  %3437 = fadd fast float %3435, %3436
  %3438 = call float @dx.op.unary.f32(i32 24, float %3437)  ; Sqrt(value)
  br label %3439

; <label>:3439                                    ; preds = %3431, %3429, %3419
  %3440 = phi float [ %3428, %3419 ], [ %3438, %3431 ], [ 0.000000e+00, %3429 ]
  %3441 = fsub fast float -0.000000e+00, %3440
  %3442 = select i1 %3383, float -0.000000e+00, float %3441
  %3443 = fmul fast float %1859, 0x3FF7154760000000
  %3444 = fmul fast float %3443, %3442
  %3445 = fmul fast float %1860, 0x3FF7154760000000
  %3446 = fmul fast float %3445, %3442
  %3447 = fmul fast float %1861, 0x3FF7154760000000
  %3448 = fmul fast float %3447, %3442
  %3449 = call float @dx.op.unary.f32(i32 21, float %3444)  ; Exp(value)
  %3450 = call float @dx.op.unary.f32(i32 21, float %3446)  ; Exp(value)
  %3451 = call float @dx.op.unary.f32(i32 21, float %3448)  ; Exp(value)
  %3452 = call float @dx.op.unary.f32(i32 7, float %3449)  ; Saturate(value)
  %3453 = call float @dx.op.unary.f32(i32 7, float %3450)  ; Saturate(value)
  %3454 = call float @dx.op.unary.f32(i32 7, float %3451)  ; Saturate(value)
  %3455 = fmul fast float %3379, %3452
  %3456 = fmul fast float %3380, %3453
  %3457 = fmul fast float %3381, %3454
  %3458 = fsub fast float %2085, %2058
  %3459 = fsub fast float %2086, %2057
  %3460 = fsub fast float %2087, %2056
  %3461 = call float @dx.op.dot3.f32(i32 55, float %3458, float %3459, float %3460, float %3458, float %3459, float %3460)  ; Dot3(ax,ay,az,bx,by,bz)
  %3462 = call float @dx.op.unary.f32(i32 25, float %3461)  ; Rsqrt(value)
  %3463 = fmul fast float %3462, %3458
  %3464 = fmul fast float %3462, %3459
  %3465 = fmul fast float %3462, %3460
  %3466 = call float @dx.op.dot3.f32(i32 55, float %2085, float %2086, float %2087, float %2065, float %2066, float %2067)  ; Dot3(ax,ay,az,bx,by,bz)
  %3467 = call float @dx.op.dot3.f32(i32 55, float %2055, float %2054, float %2053, float %3463, float %3464, float %3465)  ; Dot3(ax,ay,az,bx,by,bz)
  %3468 = call float @dx.op.unary.f32(i32 7, float %3466)  ; Saturate(value)
  %3469 = fmul fast float %3468, %3468
  %3470 = fmul fast float %3469, %2080
  %3471 = call float @dx.op.unary.f32(i32 7, float %3470)  ; Saturate(value)
  %3472 = fmul fast float %3471, %3468
  %3473 = call float @dx.op.dot3.f32(i32 55, float %2065, float %2066, float %2067, float %3463, float %3464, float %3465)  ; Dot3(ax,ay,az,bx,by,bz)
  %3474 = fmul fast float %3473, %3473
  %3475 = call float @dx.op.unary.f32(i32 6, float %3466)  ; FAbs(value)
  %3476 = fsub fast float 1.000000e+00, %2068
  %3477 = call float @dx.op.binary.f32(i32 35, float %3476, float 0x3F847AE140000000)  ; FMax(a,b)
  %3478 = fmul fast float %3477, %3477
  %3479 = fmul fast float %3478, %3478
  %3480 = fsub fast float 1.000000e+00, %3479
  %3481 = fmul fast float %2073, %2073
  %3482 = fmul fast float %3481, %3480
  %3483 = fadd fast float %3482, %3479
  %3484 = bitcast float %3483 to i32
  %3485 = ashr i32 %3484, 1
  %3486 = add nsw i32 %3485, 532487669
  %3487 = bitcast i32 %3486 to float
  %3488 = fadd fast float %3487, %2073
  %3489 = fmul fast float %3479, %3474
  %3490 = fsub fast float 1.000000e+00, %3474
  %3491 = fadd fast float %3490, %3489
  %3492 = fmul fast float %3475, %3475
  %3493 = fmul fast float %3492, %3480
  %3494 = fadd fast float %3493, %3479
  %3495 = bitcast float %3494 to i32
  %3496 = ashr i32 %3495, 1
  %3497 = add nsw i32 %3496, 532487669
  %3498 = bitcast i32 %3497 to float
  %3499 = fadd fast float %3498, %3475
  %3500 = fmul fast float %3491, %3491
  %3501 = fmul fast float %3500, %3488
  %3502 = fmul fast float %3501, %3499
  %3503 = fdiv fast float 0x3FF0A00000000000, %3502
  %3504 = fmul fast float %3503, %3479
  %3505 = call float @dx.op.unary.f32(i32 6, float %3467)  ; FAbs(value)
  %3506 = fsub fast float 1.000000e+00, %3505
  %3507 = bitcast float %3506 to i32
  %3508 = sitofp i32 %3507 to float
  %3509 = fmul fast float %3508, 5.000000e+00
  %3510 = fadd fast float %3509, 0xC1EFBF8940000000
  %3511 = fptosi float %3510 to i32
  %3512 = bitcast i32 %3511 to float
  %3513 = fsub fast float 1.000000e+00, %2062
  %3514 = fsub fast float 1.000000e+00, %2063
  %3515 = fsub fast float 1.000000e+00, %2071
  %3516 = fmul fast float %3512, %3513
  %3517 = fmul fast float %3512, %3514
  %3518 = fmul fast float %3512, %3515
  %3519 = fadd fast float %3516, %2062
  %3520 = fadd fast float %3517, %2063
  %3521 = fadd fast float %3518, %2071
  %3522 = fcmp fast ogt float %1436, 0.000000e+00
  br i1 %3522, label %3523, label %3546

; <label>:3523                                    ; preds = %3439
  %3524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %1436, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3525 = extractvalue %dx.types.ResRet.f32 %3524, 0
  %3526 = extractvalue %dx.types.ResRet.f32 %3524, 1
  %3527 = extractvalue %dx.types.ResRet.f32 %3524, 2
  %3528 = fadd fast float %3525, -5.000000e-01
  %3529 = fadd fast float %3526, -5.000000e-01
  %3530 = fadd fast float %3527, -5.000000e-01
  %3531 = fmul fast float %2062, 4.000000e+00
  %3532 = fmul fast float %3531, %3513
  %3533 = fmul fast float %3532, %3528
  %3534 = fmul fast float %2063, 4.000000e+00
  %3535 = fmul fast float %3534, %3514
  %3536 = fmul fast float %3535, %3529
  %3537 = fmul fast float %2071, 4.000000e+00
  %3538 = fmul fast float %3537, %3515
  %3539 = fmul fast float %3538, %3530
  %3540 = fadd fast float %3533, %3519
  %3541 = fadd fast float %3536, %3520
  %3542 = fadd fast float %3539, %3521
  %3543 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3544 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  %3545 = call float @dx.op.unary.f32(i32 7, float %3542)  ; Saturate(value)
  br label %3546

; <label>:3546                                    ; preds = %3523, %3439
  %3547 = phi float [ %3543, %3523 ], [ %3519, %3439 ]
  %3548 = phi float [ %3544, %3523 ], [ %3520, %3439 ]
  %3549 = phi float [ %3545, %3523 ], [ %3521, %3439 ]
  %3550 = fmul fast float %3466, 9.843750e-01
  %3551 = fmul fast float %2068, 9.843750e-01
  %3552 = fadd fast float %3550, 7.812500e-03
  %3553 = fadd fast float %3551, 7.812500e-03
  %3554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %3552, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3555 = extractvalue %dx.types.ResRet.f32 %3554, 2
  %3556 = extractvalue %dx.types.ResRet.f32 %3554, 3
  %3557 = fmul fast float %3555, %2062
  %3558 = fmul fast float %3555, %2063
  %3559 = fmul fast float %3555, %2071
  %3560 = fadd fast float %3557, %3556
  %3561 = fadd fast float %3558, %3556
  %3562 = fadd fast float %3559, %3556
  br i1 %3522, label %3563, label %3586

; <label>:3563                                    ; preds = %3546
  %3564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %1436, float %3466, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3565 = extractvalue %dx.types.ResRet.f32 %3564, 0
  %3566 = extractvalue %dx.types.ResRet.f32 %3564, 1
  %3567 = extractvalue %dx.types.ResRet.f32 %3564, 2
  %3568 = fadd fast float %3565, -5.000000e-01
  %3569 = fadd fast float %3566, -5.000000e-01
  %3570 = fadd fast float %3567, -5.000000e-01
  %3571 = fmul fast float %2062, 4.000000e+00
  %3572 = fmul fast float %3571, %3513
  %3573 = fmul fast float %3572, %3568
  %3574 = fmul fast float %2063, 4.000000e+00
  %3575 = fmul fast float %3574, %3514
  %3576 = fmul fast float %3575, %3569
  %3577 = fmul fast float %2071, 4.000000e+00
  %3578 = fmul fast float %3577, %3515
  %3579 = fmul fast float %3578, %3570
  %3580 = fadd fast float %3573, %3560
  %3581 = fadd fast float %3576, %3561
  %3582 = fadd fast float %3579, %3562
  %3583 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  %3584 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3585 = call float @dx.op.unary.f32(i32 7, float %3582)  ; Saturate(value)
  br label %3586

; <label>:3586                                    ; preds = %3563, %3546
  %3587 = phi float [ %3583, %3563 ], [ %3560, %3546 ]
  %3588 = phi float [ %3584, %3563 ], [ %3561, %3546 ]
  %3589 = phi float [ %3585, %3563 ], [ %3562, %3546 ]
  %3590 = call float @dx.op.binary.f32(i32 35, float %3588, float %3589)  ; FMax(a,b)
  %3591 = call float @dx.op.binary.f32(i32 35, float %3587, float %3590)  ; FMax(a,b)
  %3592 = fsub fast float 1.000000e+00, %3591
  %3593 = fmul fast float %3547, %3504
  %3594 = fmul fast float %3548, %3504
  %3595 = fmul fast float %3549, %3504
  %3596 = call float @dx.op.dot3.f32(i32 55, float %2059, float %2060, float %2061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3597 = fcmp fast ogt float %3596, 0x3E7FF19E20000000
  %3598 = fdiv fast float 1.000000e+00, %3596
  %3599 = select i1 %3597, float %3598, float 0.000000e+00
  %3600 = fmul fast float %3599, %2059
  %3601 = fmul fast float %3599, %2060
  %3602 = fmul fast float %3599, %2061
  %3603 = fadd fast float %3600, -1.000000e+00
  %3604 = fadd fast float %3601, -1.000000e+00
  %3605 = fadd fast float %3602, -1.000000e+00
  %3606 = fmul fast float %3603, 5.000000e-01
  %3607 = fmul fast float %3604, 5.000000e-01
  %3608 = fmul fast float %3605, 5.000000e-01
  %3609 = fadd fast float %3606, 1.000000e+00
  %3610 = fadd fast float %3607, 1.000000e+00
  %3611 = fadd fast float %3608, 1.000000e+00
  %3612 = fsub fast float 1.000000e+00, %3467
  %3613 = bitcast float %3612 to i32
  %3614 = sitofp i32 %3613 to float
  %3615 = fmul fast float %3614, 5.000000e+00
  %3616 = fadd fast float %3615, 0xC1EFBF8940000000
  %3617 = fptosi float %3616 to i32
  %3618 = bitcast i32 %3617 to float
  %3619 = fmul fast float %3618, %1435
  %3620 = fmul fast float %3592, %3619
  %3621 = fmul fast float %3620, %3609
  %3622 = fmul fast float %3620, %3610
  %3623 = fmul fast float %3620, %3611
  %3624 = fadd fast float %3621, %3593
  %3625 = fadd fast float %3622, %3594
  %3626 = fadd fast float %3623, %3595
  %3627 = fmul fast float %3472, %3455
  %3628 = fmul fast float %3627, %3624
  %3629 = fmul fast float %3472, %3456
  %3630 = fmul fast float %3629, %3625
  %3631 = fmul fast float %3472, %3457
  %3632 = fmul fast float %3631, %3626
  %3633 = fmul fast float %3455, %1456
  %3634 = fmul fast float %3633, %3472
  %3635 = fmul fast float %3634, %3592
  %3636 = fmul fast float %3456, %1456
  %3637 = fmul fast float %3636, %3472
  %3638 = fmul fast float %3637, %3592
  %3639 = fmul fast float %3457, %1456
  %3640 = fmul fast float %3639, %3472
  %3641 = fmul fast float %3640, %3592
  %3642 = fadd fast float %3628, %1437
  %3643 = fmul fast float %3642, %1456
  %3644 = fadd fast float %3630, %1438
  %3645 = fmul fast float %3644, %1456
  %3646 = fadd fast float %3632, %1439
  %3647 = fmul fast float %3646, %1456
  br label %3648

; <label>:3648                                    ; preds = %3586, %3373, %2052
  %3649 = phi float [ %2077, %2052 ], [ %2077, %3373 ], [ %3643, %3586 ]
  %3650 = phi float [ %2078, %2052 ], [ %2078, %3373 ], [ %3645, %3586 ]
  %3651 = phi float [ %2079, %2052 ], [ %2079, %3373 ], [ %3647, %3586 ]
  %3652 = phi float [ 0.000000e+00, %2052 ], [ 0.000000e+00, %3373 ], [ %3635, %3586 ]
  %3653 = phi float [ 0.000000e+00, %2052 ], [ 0.000000e+00, %3373 ], [ %3638, %3586 ]
  %3654 = phi float [ 0.000000e+00, %2052 ], [ 0.000000e+00, %3373 ], [ %3641, %3586 ]
  %3655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.i32 %3655, 0
  %3657 = icmp eq i32 %3656, 0
  br i1 %3657, label %4343, label %3658

; <label>:3658                                    ; preds = %3648
  %3659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3659, 2
  %3661 = extractvalue %dx.types.CBufRet.f32 %3659, 3
  %3662 = fmul fast float %3660, %80
  %3663 = fmul fast float %3661, %81
  %3664 = fptoui float %3662 to i32
  %3665 = fptoui float %3663 to i32
  %3666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3667 = extractvalue %dx.types.CBufRet.f32 %3666, 0
  %3668 = extractvalue %dx.types.CBufRet.f32 %3666, 2
  %3669 = extractvalue %dx.types.CBufRet.f32 %3666, 3
  %3670 = fadd fast float %68, -4.000000e+00
  %3671 = call float @dx.op.binary.f32(i32 35, float %3670, float 0.000000e+00)  ; FMax(a,b)
  %3672 = fadd fast float %3671, %3667
  %3673 = fmul fast float %3672, %3668
  %3674 = call float @dx.op.unary.f32(i32 23, float %3673)  ; Log(value)
  %3675 = fmul fast float %3674, %3669
  %3676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3677 = extractvalue %dx.types.CBufRet.f32 %3676, 2
  %3678 = fmul fast float %3675, %3677
  %3679 = call float @dx.op.unary.f32(i32 7, float %3678)  ; Saturate(value)
  %3680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3681 = extractvalue %dx.types.CBufRet.i32 %3680, 1
  %3682 = add i32 %3681, -1
  %3683 = uitofp i32 %3681 to float
  %3684 = fmul fast float %3683, %3679
  %3685 = fptoui float %3684 to i32
  %3686 = call i32 @dx.op.binary.i32(i32 40, i32 %3685, i32 %3682)  ; UMin(a,b)
  %3687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3688 = extractvalue %dx.types.CBufRet.i32 %3687, 2
  %3689 = extractvalue %dx.types.CBufRet.i32 %3687, 3
  %3690 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3665, i32 %3688, i32 %3664)  ; UMad(a,b,c)
  %3691 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3686, i32 %3689, i32 %3690)  ; UMad(a,b,c)
  %3692 = add nsw i32 %3656, -1
  %3693 = call i32 @dx.op.binary.i32(i32 37, i32 %3692, i32 0)  ; IMax(a,b)
  %3694 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %3695 = fptoui float %3694 to i32
  %3696 = lshr i32 %3695, 5
  %3697 = call i32 @dx.op.binary.i32(i32 40, i32 %3696, i32 8191)  ; UMin(a,b)
  %3698 = shl i32 %3697, 2
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = lshr i32 %3700, 16
  %3702 = and i32 %3700, 65535
  %3703 = lshr i32 %3700, 21
  %3704 = lshr i32 %3702, 5
  %3705 = call i32 @dx.op.binary.i32(i32 40, i32 %3704, i32 %3693)  ; UMin(a,b)
  %3706 = icmp ugt i32 %3703, %3705
  br i1 %3706, label %4343, label %3707

; <label>:3707                                    ; preds = %3658
  br label %3708

; <label>:3708                                    ; preds = %4333, %3707
  %3709 = phi i32 [ %4340, %4333 ], [ %3703, %3707 ]
  %3710 = phi float [ %4334, %4333 ], [ %3649, %3707 ]
  %3711 = phi float [ %4335, %4333 ], [ %3650, %3707 ]
  %3712 = phi float [ %4336, %4333 ], [ %3651, %3707 ]
  %3713 = phi float [ %4337, %4333 ], [ %3652, %3707 ]
  %3714 = phi float [ %4338, %4333 ], [ %3653, %3707 ]
  %3715 = phi float [ %4339, %4333 ], [ %3654, %3707 ]
  %3716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.i32 %3716, 0
  %3718 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3691, i32 %3717, i32 %3709)  ; UMad(a,b,c)
  %3719 = shl i32 %3718, 2
  %3720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.i32 %3720, 0
  %3722 = shl i32 %3709, 5
  %3723 = sub nsw i32 %3701, %3722
  %3724 = call i32 @dx.op.binary.i32(i32 37, i32 %3723, i32 0)  ; IMax(a,b)
  %3725 = call i32 @dx.op.binary.i32(i32 38, i32 %3724, i32 31)  ; IMin(a,b)
  %3726 = sub nsw i32 1, %3701
  %3727 = add nsw i32 %3726, %3702
  %3728 = call i32 @dx.op.binary.i32(i32 37, i32 %3727, i32 0)  ; IMax(a,b)
  %3729 = call i32 @dx.op.binary.i32(i32 38, i32 %3728, i32 32)  ; IMin(a,b)
  %3730 = and i32 %3729, 31
  %3731 = shl i32 -1, %3730
  %3732 = xor i32 %3731, -1
  %3733 = and i32 %3725, 31
  %3734 = shl i32 %3732, %3733
  %3735 = icmp eq i32 %3729, 32
  %3736 = select i1 %3735, i32 -1, i32 %3734
  %3737 = and i32 %3736, %3721
  %3738 = icmp eq i32 %3737, 0
  br i1 %3738, label %4333, label %3739

; <label>:3739                                    ; preds = %3708
  br label %3740

; <label>:3740                                    ; preds = %3874, %3739
  %3741 = phi i32 [ %3752, %3874 ], [ %3737, %3739 ]
  %3742 = phi float [ %3875, %3874 ], [ %3710, %3739 ]
  %3743 = phi float [ %3876, %3874 ], [ %3711, %3739 ]
  %3744 = phi float [ %3877, %3874 ], [ %3712, %3739 ]
  %3745 = phi float [ %3878, %3874 ], [ %3713, %3739 ]
  %3746 = phi float [ %3879, %3874 ], [ %3714, %3739 ]
  %3747 = phi float [ %3880, %3874 ], [ %3715, %3739 ]
  %3748 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3741)  ; FirstbitLo(value)
  %3749 = add i32 %3748, %3722
  %3750 = and i32 %3748, 31
  %3751 = shl i32 1, %3750
  %3752 = xor i32 %3751, %3741
  %3753 = mul i32 %3749, 112
  %3754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.f32 %3754, 0
  %3756 = extractvalue %dx.types.ResRet.f32 %3754, 1
  %3757 = extractvalue %dx.types.ResRet.f32 %3754, 2
  %3758 = or i32 %3753, 12
  %3759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3758, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.f32 %3759, 0
  %3761 = add i32 %3753, 16
  %3762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3761, i32 undef)  ; BufferLoad(srv,index,wot)
  %3763 = extractvalue %dx.types.ResRet.f32 %3762, 0
  %3764 = extractvalue %dx.types.ResRet.f32 %3762, 1
  %3765 = extractvalue %dx.types.ResRet.f32 %3762, 2
  %3766 = add i32 %3753, 28
  %3767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3766, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.i32 %3767, 0
  %3769 = add i32 %3753, 44
  %3770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3769, i32 undef)  ; BufferLoad(srv,index,wot)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = add i32 %3753, 48
  %3773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3772, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.ResRet.f32 %3773, 2
  %3777 = extractvalue %dx.types.ResRet.f32 %3773, 3
  %3778 = add i32 %3753, 64
  %3779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3778, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.f32 %3779, 0
  %3781 = extractvalue %dx.types.ResRet.f32 %3779, 1
  %3782 = extractvalue %dx.types.ResRet.f32 %3779, 2
  %3783 = extractvalue %dx.types.ResRet.f32 %3779, 3
  %3784 = add i32 %3753, 80
  %3785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3784, i32 undef)  ; BufferLoad(srv,index,wot)
  %3786 = extractvalue %dx.types.ResRet.f32 %3785, 1
  %3787 = extractvalue %dx.types.ResRet.f32 %3785, 2
  %3788 = add i32 %3753, 92
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = call float @dx.op.dot3.f32(i32 55, float %3755, float %3756, float %3757, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3792 = select i1 %189, float %3786, float %3755
  %3793 = select i1 %189, float %3791, float %3756
  %3794 = select i1 %189, float %3787, float %3757
  %3795 = and i32 %3790, 65535
  %3796 = uitofp i32 %3795 to float
  %3797 = lshr i32 %3790, 16
  %3798 = uitofp i32 %3797 to float
  %3799 = and i32 %3768, 65535
  %3800 = and i32 %3768, 50331648
  %3801 = icmp eq i32 %3800, 33554432
  %3802 = fsub fast float %3774, %127
  %3803 = fsub fast float %3775, %128
  %3804 = fsub fast float %3776, %129
  %3805 = call float @dx.op.dot3.f32(i32 55, float %3802, float %3803, float %3804, float %3802, float %3803, float %3804)  ; Dot3(ax,ay,az,bx,by,bz)
  %3806 = call float @dx.op.unary.f32(i32 24, float %3805)  ; Sqrt(value)
  %3807 = fdiv fast float 1.000000e+00, %3806
  %3808 = fmul fast float %3807, %3802
  %3809 = fmul fast float %3807, %3803
  %3810 = fmul fast float %3807, %3804
  %3811 = fadd fast float %3806, %3760
  %3812 = fdiv fast float 1.000000e+00, %3811
  %3813 = fmul float %3771, %3812
  %3814 = fmul float %3813, %3813
  %3815 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  br i1 %3801, label %3816, label %3837

; <label>:3816                                    ; preds = %3740
  %3817 = fmul fast float %3782, %3763
  %3818 = fmul fast float %3782, %3764
  %3819 = fmul fast float %3782, %3765
  %3820 = fadd fast float %3802, %3817
  %3821 = fadd fast float %3803, %3818
  %3822 = fadd fast float %3804, %3819
  %3823 = call float @dx.op.dot3.f32(i32 55, float %3820, float %3821, float %3822, float %3820, float %3821, float %3822)  ; Dot3(ax,ay,az,bx,by,bz)
  %3824 = call float @dx.op.unary.f32(i32 25, float %3823)  ; Rsqrt(value)
  %3825 = fmul fast float %3824, %3820
  %3826 = fmul fast float %3824, %3821
  %3827 = fmul fast float %3824, %3822
  %3828 = fsub fast float %127, %3774
  %3829 = fsub fast float %128, %3775
  %3830 = fsub fast float %129, %3776
  %3831 = fsub fast float -0.000000e+00, %3828
  %3832 = fsub fast float -0.000000e+00, %3829
  %3833 = fsub fast float -0.000000e+00, %3830
  %3834 = call float @dx.op.dot3.f32(i32 55, float %3831, float %3832, float %3833, float %3763, float %3764, float %3765)  ; Dot3(ax,ay,az,bx,by,bz)
  %3835 = fcmp fast ogt float %3834, 0.000000e+00
  %3836 = uitofp i1 %3835 to float
  br label %3837

; <label>:3837                                    ; preds = %3816, %3740
  %3838 = phi float [ %3836, %3816 ], [ 1.000000e+00, %3740 ]
  %3839 = phi float [ %3825, %3816 ], [ %3808, %3740 ]
  %3840 = phi float [ %3826, %3816 ], [ %3809, %3740 ]
  %3841 = phi float [ %3827, %3816 ], [ %3810, %3740 ]
  %3842 = call float @dx.op.dot3.f32(i32 55, float %3763, float %3764, float %3765, float %3839, float %3840, float %3841)  ; Dot3(ax,ay,az,bx,by,bz)
  %3843 = fmul fast float %3842, %3842
  %3844 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  %3845 = fsub fast float 1.000000e+00, %3844
  %3846 = fmul fast float %3845, 5.000000e-01
  %3847 = fcmp fast ogt float %3842, 0.000000e+00
  %3848 = fsub fast float 1.000000e+00, %3846
  %3849 = select i1 %3847, float %3846, float %3848
  %3850 = fmul fast float %3849, %3798
  %3851 = fadd fast float %3850, %3796
  %3852 = fmul fast float %3851, 0x3EF0001000000000
  %3853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %3852, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = fmul fast float %3842, %3780
  %3856 = fadd fast float %3855, %3781
  %3857 = call float @dx.op.unary.f32(i32 7, float %3856)  ; Saturate(value)
  %3858 = select i1 %3801, float 1.000000e+00, float %3857
  %3859 = select i1 %3801, float %3857, float 1.000000e+00
  %3860 = fmul fast float %3806, %3777
  %3861 = fsub fast float 1.000000e+00, %3860
  %3862 = fmul fast float %3861, %3783
  %3863 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3864 = fmul fast float %3863, %3859
  %3865 = fmul fast float %3864, 2.000000e+00
  %3866 = fsub fast float 3.000000e+00, %3865
  %3867 = fmul fast float %3854, %3838
  %3868 = fmul fast float %3864, %3864
  %3869 = fmul fast float %3868, %3867
  %3870 = fmul fast float %3869, %3866
  %3871 = call float @dx.op.binary.f32(i32 36, float %3870, float %3870)  ; FMin(a,b)
  %3872 = call float @dx.op.binary.f32(i32 36, float %3870, float %3871)  ; FMin(a,b)
  %3873 = fcmp fast ogt float %3872, 0.000000e+00
  br i1 %3873, label %3882, label %3874, !dx.controlflow.hints !118

; <label>:3874                                    ; preds = %4273, %4028, %3837
  %3875 = phi float [ %3742, %4028 ], [ %3742, %3837 ], [ %4329, %4273 ]
  %3876 = phi float [ %3743, %4028 ], [ %3743, %3837 ], [ %4330, %4273 ]
  %3877 = phi float [ %3744, %4028 ], [ %3744, %3837 ], [ %4331, %4273 ]
  %3878 = phi float [ %3745, %4028 ], [ %3745, %3837 ], [ %4323, %4273 ]
  %3879 = phi float [ %3746, %4028 ], [ %3746, %3837 ], [ %4324, %4273 ]
  %3880 = phi float [ %3747, %4028 ], [ %3747, %3837 ], [ %4325, %4273 ]
  %3881 = icmp eq i32 %3741, %3751
  br i1 %3881, label %4332, label %3740

; <label>:3882                                    ; preds = %3837
  %3883 = icmp eq i32 %3799, 255
  br i1 %3883, label %4028, label %3884, !dx.controlflow.hints !119

; <label>:3884                                    ; preds = %3882
  %3885 = mul nuw nsw i32 %3799, 176
  %3886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.ResRet.f32 %3886, 1
  %3889 = extractvalue %dx.types.ResRet.f32 %3886, 2
  %3890 = extractvalue %dx.types.ResRet.f32 %3886, 3
  %3891 = add nuw nsw i32 %3885, 16
  %3892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3891, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.ResRet.f32 %3892, 1
  %3895 = add nuw nsw i32 %3885, 32
  %3896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3895, i32 undef)  ; BufferLoad(srv,index,wot)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %3898 = extractvalue %dx.types.ResRet.f32 %3896, 1
  %3899 = extractvalue %dx.types.ResRet.f32 %3896, 2
  %3900 = add nuw nsw i32 %3885, 48
  %3901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.ResRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.ResRet.f32 %3901, 2
  %3905 = extractvalue %dx.types.ResRet.f32 %3901, 3
  %3906 = add nuw nsw i32 %3885, 64
  %3907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.f32 %3907, 0
  %3909 = extractvalue %dx.types.ResRet.f32 %3907, 1
  %3910 = extractvalue %dx.types.ResRet.f32 %3907, 2
  %3911 = extractvalue %dx.types.ResRet.f32 %3907, 3
  %3912 = add nuw nsw i32 %3885, 80
  %3913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %3915 = extractvalue %dx.types.ResRet.f32 %3913, 1
  %3916 = extractvalue %dx.types.ResRet.f32 %3913, 2
  %3917 = extractvalue %dx.types.ResRet.f32 %3913, 3
  %3918 = add nuw nsw i32 %3885, 96
  %3919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3918, i32 undef)  ; BufferLoad(srv,index,wot)
  %3920 = extractvalue %dx.types.ResRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.ResRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.ResRet.f32 %3919, 2
  %3923 = extractvalue %dx.types.ResRet.f32 %3919, 3
  %3924 = bitcast float %3894 to i32
  %3925 = fmul fast float %3899, %60
  %3926 = fmul fast float %3899, %61
  %3927 = fmul fast float %3899, %62
  %3928 = fadd fast float %3925, %127
  %3929 = fadd fast float %3926, %128
  %3930 = fadd fast float %3927, %129
  %3931 = fmul fast float %3928, %3902
  %3932 = call float @dx.op.tertiary.f32(i32 46, float %3929, float %3908, float %3931)  ; FMad(a,b,c)
  %3933 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3914, float %3932)  ; FMad(a,b,c)
  %3934 = fadd fast float %3933, %3920
  %3935 = fmul fast float %3928, %3903
  %3936 = call float @dx.op.tertiary.f32(i32 46, float %3929, float %3909, float %3935)  ; FMad(a,b,c)
  %3937 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3915, float %3936)  ; FMad(a,b,c)
  %3938 = fadd fast float %3937, %3921
  %3939 = fmul fast float %3928, %3904
  %3940 = call float @dx.op.tertiary.f32(i32 46, float %3929, float %3910, float %3939)  ; FMad(a,b,c)
  %3941 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3916, float %3940)  ; FMad(a,b,c)
  %3942 = fadd fast float %3941, %3922
  %3943 = fmul fast float %3928, %3905
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3929, float %3911, float %3943)  ; FMad(a,b,c)
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3917, float %3944)  ; FMad(a,b,c)
  %3946 = fadd fast float %3945, %3923
  %3947 = fdiv fast float %3934, %3946
  %3948 = fdiv fast float %3938, %3946
  %3949 = fdiv fast float %3942, %3946
  %3950 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3949)  ; FMax(a,b)
  %3951 = fmul fast float %200, 0x401921FB60000000
  %3952 = call float @dx.op.unary.f32(i32 13, float %3951)  ; Sin(value)
  %3953 = call float @dx.op.unary.f32(i32 12, float %3951)  ; Cos(value)
  %3954 = fmul fast float %3953, %3898
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3952, float %3898, float 0.000000e+00)  ; FMad(a,b,c)
  %3956 = fmul fast float %3898, %3952
  %3957 = fsub fast float -0.000000e+00, %3956
  %3958 = call float @dx.op.tertiary.f32(i32 46, float %3953, float %3898, float 0.000000e+00)  ; FMad(a,b,c)
  br label %3959

; <label>:3959                                    ; preds = %3959, %3884
  %3960 = phi float [ 0.000000e+00, %3884 ], [ %3992, %3959 ]
  %3961 = phi float [ 0.000000e+00, %3884 ], [ %3994, %3959 ]
  %3962 = phi i32 [ 0, %3884 ], [ %3995, %3959 ]
  %3963 = mul i32 %3962, 2
  %3964 = add i32 0, %3963
  %3965 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3964
  %3966 = load float, float* %3965, align 4
  %3967 = mul i32 %3962, 2
  %3968 = add i32 1, %3967
  %3969 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3968
  %3970 = load float, float* %3969, align 4
  %3971 = fmul fast float %3954, %3966
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3970, float %3957, float %3971)  ; FMad(a,b,c)
  %3973 = fmul fast float %3966, %3955
  %3974 = call float @dx.op.tertiary.f32(i32 46, float %3970, float %3958, float %3973)  ; FMad(a,b,c)
  %3975 = fadd fast float %3972, %3947
  %3976 = fadd fast float %3974, %3948
  %3977 = fmul fast float %3975, %3893
  %3978 = fmul fast float %3976, %3893
  %3979 = call float @dx.op.binary.f32(i32 35, float %3977, float %3889)  ; FMax(a,b)
  %3980 = call float @dx.op.binary.f32(i32 35, float %3978, float %3889)  ; FMax(a,b)
  %3981 = call float @dx.op.binary.f32(i32 36, float %3979, float %3890)  ; FMin(a,b)
  %3982 = call float @dx.op.binary.f32(i32 36, float %3980, float %3890)  ; FMin(a,b)
  %3983 = fadd fast float %3981, %3887
  %3984 = fadd fast float %3982, %3888
  %3985 = uitofp i32 %3924 to float
  %3986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %49, float %3983, float %3984, float %3985, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3987 = extractvalue %dx.types.ResRet.f32 %3986, 0
  %3988 = fsub fast float %3987, %3950
  %3989 = fsub fast float %3988, %3897
  %3990 = fcmp fast ogt float %3989, 0.000000e+00
  %3991 = select i1 %3990, float 1.000000e+00, float 0.000000e+00
  %3992 = fadd fast float %3991, %3960
  %3993 = select i1 %3990, float %3989, float 0.000000e+00
  %3994 = fadd fast float %3993, %3961
  %3995 = add nuw nsw i32 %3962, 1
  %3996 = icmp eq i32 %3995, 8
  br i1 %3996, label %3997, label %3959

; <label>:3997                                    ; preds = %3959
  %3998 = fdiv fast float 1.000000e+00, %3992
  %3999 = fmul fast float %3998, %3994
  %4000 = fdiv fast float 1.000000e+00, %3950
  %4001 = fmul fast float %3999, %4000
  %4002 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4003 = call float @dx.op.binary.f32(i32 35, float %4002, float 0.000000e+00)  ; FMax(a,b)
  %4004 = fmul fast float %3992, 1.250000e-01
  %4005 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4006 = fmul fast float %4005, 2.000000e+00
  %4007 = fadd fast float %4006, -1.000000e+00
  %4008 = fcmp fast ogt float %4007, 0.000000e+00
  %4009 = fcmp fast olt float %4007, 0.000000e+00
  %4010 = zext i1 %4008 to i32
  %4011 = zext i1 %4009 to i32
  %4012 = sub nsw i32 %4010, %4011
  %4013 = sitofp i32 %4012 to float
  %4014 = fmul fast float %4013, %4007
  %4015 = fsub fast float 1.000000e+00, %4014
  %4016 = fmul fast float %4015, %4015
  %4017 = fmul fast float %4016, %4015
  %4018 = fsub fast float %4015, %4017
  %4019 = fmul fast float %4018, %4003
  %4020 = fsub fast float 1.000000e+00, %4017
  %4021 = fsub fast float %4020, %4019
  %4022 = fmul fast float %4013, 5.000000e-01
  %4023 = fmul fast float %4022, %4021
  %4024 = fsub fast float -5.000000e-01, %4023
  %4025 = fmul fast float %4024, %3858
  %4026 = fadd fast float %4025, 1.000000e+00
  %4027 = fmul fast float %4026, %3870
  br label %4028

; <label>:4028                                    ; preds = %3997, %3882
  %4029 = phi float [ %4027, %3997 ], [ %3870, %3882 ]
  %4030 = call float @dx.op.binary.f32(i32 36, float %4029, float %4029)  ; FMin(a,b)
  %4031 = call float @dx.op.binary.f32(i32 36, float %4029, float %4030)  ; FMin(a,b)
  %4032 = fcmp fast ogt float %4031, 0.000000e+00
  br i1 %4032, label %4033, label %3874, !dx.controlflow.hints !120

; <label>:4033                                    ; preds = %4028
  %4034 = fmul fast float %4029, %3792
  %4035 = fmul fast float %4029, %3793
  %4036 = fmul fast float %4029, %3794
  %4037 = fsub fast float %3776, %1858
  %4038 = fcmp fast ogt float %4037, 0.000000e+00
  %4039 = fsub fast float %129, %1858
  %4040 = fcmp fast ogt float %4039, 0.000000e+00
  %4041 = xor i1 %4040, %4038
  %4042 = fsub fast float %1858, %3776
  %4043 = fmul fast float %4042, 2.000000e+00
  %4044 = fadd fast float %4043, %3776
  %4045 = select i1 %4041, float %3776, float %4044
  %4046 = fsub fast float %4045, %129
  %4047 = call float @dx.op.dot3.f32(i32 55, float %3802, float %3803, float %4046, float %3802, float %3803, float %4046)  ; Dot3(ax,ay,az,bx,by,bz)
  %4048 = call float @dx.op.unary.f32(i32 25, float %4047)  ; Rsqrt(value)
  %4049 = fmul fast float %4048, %3802
  %4050 = fmul fast float %4048, %3803
  %4051 = fmul fast float %4048, %4046
  %4052 = fsub fast float %1858, %129
  %4053 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4052)  ; Dot3(ax,ay,az,bx,by,bz)
  %4054 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4049, float %4050, float %4051)  ; Dot3(ax,ay,az,bx,by,bz)
  %4055 = fdiv fast float 1.000000e+00, %4054
  %4056 = fmul fast float %4055, %4053
  %4057 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4039, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4058 = fcmp fast ogt float %4057, 0.000000e+00
  %4059 = fcmp fast olt float %4057, 0.000000e+00
  %4060 = zext i1 %4058 to i32
  %4061 = zext i1 %4059 to i32
  %4062 = sub nsw i32 %4060, %4061
  %4063 = sitofp i32 %4062 to float
  %4064 = fsub fast float %4045, %1858
  %4065 = call float @dx.op.dot3.f32(i32 55, float %3802, float %3803, float %4064, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4066 = fcmp fast ogt float %4065, 0.000000e+00
  %4067 = fcmp fast olt float %4065, 0.000000e+00
  %4068 = zext i1 %4066 to i32
  %4069 = zext i1 %4067 to i32
  %4070 = sub nsw i32 %4068, %4069
  %4071 = sitofp i32 %4070 to float
  %4072 = fcmp fast une float %4063, %4071
  br i1 %4072, label %4073, label %4083

; <label>:4073                                    ; preds = %4033
  %4074 = fmul fast float %4056, %4051
  %4075 = fmul fast float %4056, %4050
  %4076 = fmul fast float %4056, %4049
  %4077 = fmul fast float %4076, %4076
  %4078 = fmul fast float %4075, %4075
  %4079 = fadd fast float %4077, %4078
  %4080 = fmul fast float %4074, %4074
  %4081 = fadd fast float %4079, %4080
  %4082 = call float @dx.op.unary.f32(i32 24, float %4081)  ; Sqrt(value)
  br label %4095

; <label>:4083                                    ; preds = %4033
  %4084 = icmp slt i32 %4062, 0
  br i1 %4084, label %4085, label %4095

; <label>:4085                                    ; preds = %4083
  %4086 = fsub fast float %127, %3774
  %4087 = fsub fast float %128, %3775
  %4088 = fsub fast float %129, %4045
  %4089 = fmul fast float %4086, %4086
  %4090 = fmul fast float %4087, %4087
  %4091 = fadd fast float %4089, %4090
  %4092 = fmul fast float %4088, %4088
  %4093 = fadd fast float %4091, %4092
  %4094 = call float @dx.op.unary.f32(i32 24, float %4093)  ; Sqrt(value)
  br label %4095

; <label>:4095                                    ; preds = %4085, %4083, %4073
  %4096 = phi float [ %4082, %4073 ], [ %4094, %4085 ], [ 0.000000e+00, %4083 ]
  %4097 = and i1 %4040, %4038
  %4098 = fsub fast float -0.000000e+00, %4096
  %4099 = select i1 %4097, float -0.000000e+00, float %4098
  %4100 = fmul fast float %1859, 0x3FF7154760000000
  %4101 = fmul fast float %4100, %4099
  %4102 = fmul fast float %1860, 0x3FF7154760000000
  %4103 = fmul fast float %4102, %4099
  %4104 = fmul fast float %1861, 0x3FF7154760000000
  %4105 = fmul fast float %4104, %4099
  %4106 = call float @dx.op.unary.f32(i32 21, float %4101)  ; Exp(value)
  %4107 = call float @dx.op.unary.f32(i32 21, float %4103)  ; Exp(value)
  %4108 = call float @dx.op.unary.f32(i32 21, float %4105)  ; Exp(value)
  %4109 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4110 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4111 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4112 = fmul fast float %4034, %4109
  %4113 = fmul fast float %4035, %4110
  %4114 = fmul fast float %4036, %4111
  %4115 = fsub fast float %3808, %2058
  %4116 = fsub fast float %3809, %2057
  %4117 = fsub fast float %3810, %2056
  %4118 = call float @dx.op.dot3.f32(i32 55, float %4115, float %4116, float %4117, float %4115, float %4116, float %4117)  ; Dot3(ax,ay,az,bx,by,bz)
  %4119 = call float @dx.op.unary.f32(i32 25, float %4118)  ; Rsqrt(value)
  %4120 = fmul fast float %4119, %4115
  %4121 = fmul fast float %4119, %4116
  %4122 = fmul fast float %4119, %4117
  %4123 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3809, float %3810, float %2065, float %2066, float %2067)  ; Dot3(ax,ay,az,bx,by,bz)
  %4124 = call float @dx.op.dot3.f32(i32 55, float %2055, float %2054, float %2053, float %4120, float %4121, float %4122)  ; Dot3(ax,ay,az,bx,by,bz)
  %4125 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4126 = fmul fast float %4125, %3815
  %4127 = fmul fast float %4125, %4125
  %4128 = fmul fast float %4127, %2080
  %4129 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4130 = fmul fast float %4126, %4129
  %4131 = bitcast float %3805 to i32
  %4132 = ashr i32 %4131, 1
  %4133 = sub nsw i32 1597463007, %4132
  %4134 = bitcast i32 %4133 to float
  %4135 = fmul fast float %4134, %3802
  %4136 = fmul fast float %4134, %3803
  %4137 = fmul fast float %4134, %3804
  %4138 = fsub fast float %4135, %2058
  %4139 = fsub fast float %4136, %2057
  %4140 = fsub fast float %4137, %2056
  %4141 = call float @dx.op.dot3.f32(i32 55, float %4138, float %4139, float %4140, float %4138, float %4139, float %4140)  ; Dot3(ax,ay,az,bx,by,bz)
  %4142 = call float @dx.op.unary.f32(i32 25, float %4141)  ; Rsqrt(value)
  %4143 = fmul fast float %4138, %4142
  %4144 = fmul fast float %4139, %4142
  %4145 = fmul fast float %4140, %4142
  %4146 = call float @dx.op.dot3.f32(i32 55, float %2065, float %2066, float %2067, float %4143, float %4144, float %4145)  ; Dot3(ax,ay,az,bx,by,bz)
  %4147 = fmul fast float %4146, %4146
  %4148 = call float @dx.op.unary.f32(i32 6, float %4123)  ; FAbs(value)
  %4149 = fsub fast float 1.000000e+00, %2068
  %4150 = call float @dx.op.binary.f32(i32 35, float %4149, float 0x3F847AE140000000)  ; FMax(a,b)
  %4151 = fmul fast float %4150, %4150
  %4152 = fmul fast float %4151, %4151
  %4153 = fsub fast float 1.000000e+00, %4152
  %4154 = fmul fast float %2073, %2073
  %4155 = fmul fast float %4154, %4153
  %4156 = fadd fast float %4155, %4152
  %4157 = bitcast float %4156 to i32
  %4158 = ashr i32 %4157, 1
  %4159 = add nsw i32 %4158, 532487669
  %4160 = bitcast i32 %4159 to float
  %4161 = fadd fast float %4160, %2073
  %4162 = fmul fast float %4152, %4147
  %4163 = fsub fast float 1.000000e+00, %4147
  %4164 = fadd fast float %4163, %4162
  %4165 = fmul fast float %4148, %4148
  %4166 = fmul fast float %4165, %4153
  %4167 = fadd fast float %4166, %4152
  %4168 = bitcast float %4167 to i32
  %4169 = ashr i32 %4168, 1
  %4170 = add nsw i32 %4169, 532487669
  %4171 = bitcast i32 %4170 to float
  %4172 = fadd fast float %4171, %4148
  %4173 = fmul fast float %4164, %4164
  %4174 = fmul fast float %4173, %4161
  %4175 = fmul fast float %4174, %4172
  %4176 = fdiv fast float 1.000000e+00, %4175
  %4177 = bitcast float %4152 to i32
  %4178 = sitofp i32 %4177 to float
  %4179 = fmul fast float %4178, 0x3FE7F73180000000
  %4180 = fadd fast float %4179, 0x41AFE27C40000000
  %4181 = fptosi float %4180 to i32
  %4182 = bitcast i32 %4181 to float
  %4183 = fmul fast float %3771, 0x3FD80E9D60000000
  %4184 = fmul fast float %4183, %4134
  %4185 = fadd fast float %4182, %4184
  %4186 = bitcast float %4185 to i32
  %4187 = sub nsw i32 2129859010, %4186
  %4188 = bitcast i32 %4187 to float
  %4189 = fmul fast float %4152, %4176
  %4190 = fmul fast float %4189, %4182
  %4191 = fmul fast float %4190, %4188
  %4192 = call float @dx.op.unary.f32(i32 6, float %4124)  ; FAbs(value)
  %4193 = fsub fast float 1.000000e+00, %4192
  %4194 = bitcast float %4193 to i32
  %4195 = sitofp i32 %4194 to float
  %4196 = fmul fast float %4195, 5.000000e+00
  %4197 = fadd fast float %4196, 0xC1EFBF8940000000
  %4198 = fptosi float %4197 to i32
  %4199 = bitcast i32 %4198 to float
  %4200 = fsub fast float 1.000000e+00, %2062
  %4201 = fsub fast float 1.000000e+00, %2063
  %4202 = fsub fast float 1.000000e+00, %2071
  %4203 = fmul fast float %4199, %4200
  %4204 = fmul fast float %4199, %4201
  %4205 = fmul fast float %4199, %4202
  %4206 = fadd fast float %4203, %2062
  %4207 = fadd fast float %4204, %2063
  %4208 = fadd fast float %4205, %2071
  %4209 = fcmp fast ogt float %1436, 0.000000e+00
  br i1 %4209, label %4210, label %4233

; <label>:4210                                    ; preds = %4095
  %4211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %1436, float %4192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = extractvalue %dx.types.ResRet.f32 %4211, 1
  %4214 = extractvalue %dx.types.ResRet.f32 %4211, 2
  %4215 = fadd fast float %4212, -5.000000e-01
  %4216 = fadd fast float %4213, -5.000000e-01
  %4217 = fadd fast float %4214, -5.000000e-01
  %4218 = fmul fast float %2062, 4.000000e+00
  %4219 = fmul fast float %4218, %4200
  %4220 = fmul fast float %4219, %4215
  %4221 = fmul fast float %2063, 4.000000e+00
  %4222 = fmul fast float %4221, %4201
  %4223 = fmul fast float %4222, %4216
  %4224 = fmul fast float %2071, 4.000000e+00
  %4225 = fmul fast float %4224, %4202
  %4226 = fmul fast float %4225, %4217
  %4227 = fadd fast float %4220, %4206
  %4228 = fadd fast float %4223, %4207
  %4229 = fadd fast float %4226, %4208
  %4230 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4231 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4232 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  br label %4233

; <label>:4233                                    ; preds = %4210, %4095
  %4234 = phi float [ %4230, %4210 ], [ %4206, %4095 ]
  %4235 = phi float [ %4231, %4210 ], [ %4207, %4095 ]
  %4236 = phi float [ %4232, %4210 ], [ %4208, %4095 ]
  %4237 = fmul fast float %4123, 9.843750e-01
  %4238 = fmul fast float %2068, 9.843750e-01
  %4239 = fadd fast float %4237, 7.812500e-03
  %4240 = fadd fast float %4238, 7.812500e-03
  %4241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %4239, float %4240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 2
  %4243 = extractvalue %dx.types.ResRet.f32 %4241, 3
  %4244 = fmul fast float %4242, %2062
  %4245 = fmul fast float %4242, %2063
  %4246 = fmul fast float %4242, %2071
  %4247 = fadd fast float %4244, %4243
  %4248 = fadd fast float %4245, %4243
  %4249 = fadd fast float %4246, %4243
  br i1 %4209, label %4250, label %4273

; <label>:4250                                    ; preds = %4233
  %4251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %1436, float %4123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = extractvalue %dx.types.ResRet.f32 %4251, 1
  %4254 = extractvalue %dx.types.ResRet.f32 %4251, 2
  %4255 = fadd fast float %4252, -5.000000e-01
  %4256 = fadd fast float %4253, -5.000000e-01
  %4257 = fadd fast float %4254, -5.000000e-01
  %4258 = fmul fast float %2062, 4.000000e+00
  %4259 = fmul fast float %4258, %4200
  %4260 = fmul fast float %4259, %4255
  %4261 = fmul fast float %2063, 4.000000e+00
  %4262 = fmul fast float %4261, %4201
  %4263 = fmul fast float %4262, %4256
  %4264 = fmul fast float %2071, 4.000000e+00
  %4265 = fmul fast float %4264, %4202
  %4266 = fmul fast float %4265, %4257
  %4267 = fadd fast float %4260, %4247
  %4268 = fadd fast float %4263, %4248
  %4269 = fadd fast float %4266, %4249
  %4270 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4272 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  br label %4273

; <label>:4273                                    ; preds = %4250, %4233
  %4274 = phi float [ %4270, %4250 ], [ %4247, %4233 ]
  %4275 = phi float [ %4271, %4250 ], [ %4248, %4233 ]
  %4276 = phi float [ %4272, %4250 ], [ %4249, %4233 ]
  %4277 = call float @dx.op.binary.f32(i32 35, float %4275, float %4276)  ; FMax(a,b)
  %4278 = call float @dx.op.binary.f32(i32 35, float %4274, float %4277)  ; FMax(a,b)
  %4279 = fsub fast float 1.000000e+00, %4278
  %4280 = fmul fast float %4234, %4191
  %4281 = fmul fast float %4235, %4191
  %4282 = fmul fast float %4236, %4191
  %4283 = call float @dx.op.dot3.f32(i32 55, float %2059, float %2060, float %2061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4284 = fcmp fast ogt float %4283, 0x3E7FF19E20000000
  %4285 = fdiv fast float 1.000000e+00, %4283
  %4286 = select i1 %4284, float %4285, float 0.000000e+00
  %4287 = fmul fast float %4286, %2059
  %4288 = fmul fast float %4286, %2060
  %4289 = fmul fast float %4286, %2061
  %4290 = fadd fast float %4287, -1.000000e+00
  %4291 = fadd fast float %4288, -1.000000e+00
  %4292 = fadd fast float %4289, -1.000000e+00
  %4293 = fmul fast float %4290, 5.000000e-01
  %4294 = fmul fast float %4291, 5.000000e-01
  %4295 = fmul fast float %4292, 5.000000e-01
  %4296 = fadd fast float %4293, 1.000000e+00
  %4297 = fadd fast float %4294, 1.000000e+00
  %4298 = fadd fast float %4295, 1.000000e+00
  %4299 = fsub fast float 1.000000e+00, %4124
  %4300 = bitcast float %4299 to i32
  %4301 = sitofp i32 %4300 to float
  %4302 = fmul fast float %4301, 5.000000e+00
  %4303 = fadd fast float %4302, 0xC1EFBF8940000000
  %4304 = fptosi float %4303 to i32
  %4305 = bitcast i32 %4304 to float
  %4306 = fmul fast float %4305, %1435
  %4307 = fmul fast float %4279, %4306
  %4308 = fmul fast float %4307, %4296
  %4309 = fmul fast float %4307, %4297
  %4310 = fmul fast float %4307, %4298
  %4311 = fadd fast float %4308, %4280
  %4312 = fadd fast float %4309, %4281
  %4313 = fadd fast float %4310, %4282
  %4314 = fmul fast float %4112, %1456
  %4315 = fmul fast float %4314, %4130
  %4316 = fmul fast float %4315, %4279
  %4317 = fmul fast float %4113, %1456
  %4318 = fmul fast float %4317, %4130
  %4319 = fmul fast float %4318, %4279
  %4320 = fmul fast float %4114, %1456
  %4321 = fmul fast float %4320, %4130
  %4322 = fmul fast float %4321, %4279
  %4323 = fadd fast float %4316, %3745
  %4324 = fadd fast float %4319, %3746
  %4325 = fadd fast float %4322, %3747
  %4326 = fmul fast float %4315, %4311
  %4327 = fmul fast float %4318, %4312
  %4328 = fmul fast float %4321, %4313
  %4329 = fadd fast float %4326, %3742
  %4330 = fadd fast float %4327, %3743
  %4331 = fadd fast float %4328, %3744
  br label %3874

; <label>:4332                                    ; preds = %3874
  br label %4333

; <label>:4333                                    ; preds = %4332, %3708
  %4334 = phi float [ %3710, %3708 ], [ %3875, %4332 ]
  %4335 = phi float [ %3711, %3708 ], [ %3876, %4332 ]
  %4336 = phi float [ %3712, %3708 ], [ %3877, %4332 ]
  %4337 = phi float [ %3713, %3708 ], [ %3878, %4332 ]
  %4338 = phi float [ %3714, %3708 ], [ %3879, %4332 ]
  %4339 = phi float [ %3715, %3708 ], [ %3880, %4332 ]
  %4340 = add i32 %3709, 1
  %4341 = icmp ugt i32 %4340, %3705
  br i1 %4341, label %4342, label %3708

; <label>:4342                                    ; preds = %4333
  br label %4343

; <label>:4343                                    ; preds = %4342, %3658, %3648
  %4344 = phi float [ %3649, %3648 ], [ %3649, %3658 ], [ %4334, %4342 ]
  %4345 = phi float [ %3650, %3648 ], [ %3650, %3658 ], [ %4335, %4342 ]
  %4346 = phi float [ %3651, %3648 ], [ %3651, %3658 ], [ %4336, %4342 ]
  %4347 = phi float [ %3652, %3648 ], [ %3652, %3658 ], [ %4337, %4342 ]
  %4348 = phi float [ %3653, %3648 ], [ %3653, %3658 ], [ %4338, %4342 ]
  %4349 = phi float [ %3654, %3648 ], [ %3654, %3658 ], [ %4339, %4342 ]
  %4350 = fmul fast float %1456, %1456
  %4351 = fsub fast float 1.000000e+00, %4350
  %4352 = call float @dx.op.dot3.f32(i32 55, float %4351, float %4351, float %4351, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4353 = fsub fast float 1.000000e+00, %4352
  %4354 = fsub fast float 1.000000e+00, %2073
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 0
  %4357 = fmul fast float %4356, %4354
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 3
  %4360 = fsub fast float 1.000000e+00, %1434
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = fadd fast float %4349, %1433
  %4363 = fmul fast float %4362, %1434
  %4364 = fmul fast float %4361, %4359
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 3
  %4367 = fmul fast float %4347, %2059
  %4368 = fmul fast float %4348, %2060
  %4369 = fmul fast float %4349, %2061
  %4370 = fcmp fast ogt float %68, %149
  %4371 = and i1 %4370, %1864
  %4372 = or i1 %1870, %4371
  %4373 = icmp eq i32 %1863, 2
  %4374 = fcmp fast ole float %68, %149
  %4375 = and i1 %4374, %4373
  %4376 = or i1 %4375, %4372
  br i1 %4371, label %4377, label %4636

; <label>:4377                                    ; preds = %4343
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 2
  %4380 = extractvalue %dx.types.CBufRet.f32 %4378, 3
  %4381 = fmul fast float %4379, %80
  %4382 = fmul fast float %4380, %81
  %4383 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4384 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4385 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %4383, float %4384, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4386 = extractvalue %dx.types.ResRet.f32 %4385, 0
  %4387 = extractvalue %dx.types.ResRet.f32 %4385, 1
  %4388 = extractvalue %dx.types.ResRet.f32 %4385, 2
  %4389 = extractvalue %dx.types.ResRet.f32 %4385, 3
  %4390 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %4383, float %4384, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.ResRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.ResRet.f32 %4390, 2
  %4394 = extractvalue %dx.types.ResRet.f32 %4390, 3
  %4395 = call float @dx.op.binary.f32(i32 35, float %4387, float %4388)  ; FMax(a,b)
  %4396 = call float @dx.op.binary.f32(i32 35, float %4386, float %4395)  ; FMax(a,b)
  %4397 = call float @dx.op.binary.f32(i32 35, float %4396, float %4389)  ; FMax(a,b)
  %4398 = call float @dx.op.binary.f32(i32 36, float %4392, float %4393)  ; FMin(a,b)
  %4399 = call float @dx.op.binary.f32(i32 36, float %4391, float %4398)  ; FMin(a,b)
  %4400 = call float @dx.op.binary.f32(i32 36, float %4399, float %4394)  ; FMin(a,b)
  %4401 = fmul fast float %4397, 2.550000e+02
  %4402 = fadd fast float %4401, 0x3F70101020000000
  %4403 = fptoui float %4402 to i32
  %4404 = fmul fast float %4400, 2.550000e+02
  %4405 = fadd fast float %4404, 0x3F70101020000000
  %4406 = fptoui float %4405 to i32
  %4407 = icmp ult i32 %4403, %4406
  br i1 %4407, label %4408, label %4576

; <label>:4408                                    ; preds = %4377
  %4409 = fcmp fast ogt float %67, 9.843750e-01
  %4410 = fadd fast float %68, -4.000000e+00
  %4411 = select i1 %4409, float -4.000000e+00, float %4410
  %4412 = call float @dx.op.binary.f32(i32 35, float %4411, float 0.000000e+00)  ; FMax(a,b)
  %4413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.f32 %4413, 0
  %4415 = fadd fast float %4414, %4412
  %4416 = extractvalue %dx.types.CBufRet.f32 %4413, 2
  %4417 = fmul fast float %4415, %4416
  %4418 = call float @dx.op.unary.f32(i32 23, float %4417)  ; Log(value)
  %4419 = extractvalue %dx.types.CBufRet.f32 %4413, 3
  %4420 = fmul fast float %4419, %4418
  %4421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.f32 %4421, 2
  %4423 = fmul fast float %4420, %4422
  %4424 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4425 = uitofp i32 %4403 to float
  %4426 = uitofp i32 %4406 to float
  %4427 = fadd fast float %4425, 5.000000e-01
  %4428 = fadd fast float %4426, 5.000000e-01
  %4429 = fmul fast float %4422, %4427
  %4430 = fmul fast float %4422, %4428
  %4431 = fadd fast float %4429, 0x3F0FFB4800000000
  %4432 = fadd fast float %4430, 0xBF0FFB4800000000
  %4433 = call float @dx.op.binary.f32(i32 35, float %4424, float %4431)  ; FMax(a,b)
  %4434 = call float @dx.op.binary.f32(i32 36, float %4433, float %4432)  ; FMin(a,b)
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 1
  %4437 = extractvalue %dx.types.CBufRet.f32 %4435, 2
  %4438 = extractvalue %dx.types.CBufRet.f32 %4435, 0
  %4439 = fmul fast float %4436, %4434
  %4440 = fadd fast float %4438, %4439
  %4441 = fadd fast float %4438, %4437
  %4442 = fsub fast float %4436, %4437
  %4443 = fadd fast float %4442, %4438
  %4444 = call float @dx.op.binary.f32(i32 35, float %4440, float %4441)  ; FMax(a,b)
  %4445 = call float @dx.op.binary.f32(i32 36, float %4444, float %4443)  ; FMin(a,b)
  %4446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %4383, float %4384, float %4445, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = extractvalue %dx.types.ResRet.f32 %4446, 1
  %4449 = extractvalue %dx.types.ResRet.f32 %4446, 2
  %4450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.i32 %4450, 0
  %4452 = extractvalue %dx.types.CBufRet.i32 %4450, 1
  %4453 = uitofp i32 %4451 to float
  %4454 = uitofp i32 %4452 to float
  %4455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4455, 0
  %4457 = extractvalue %dx.types.CBufRet.f32 %4455, 1
  %4458 = fmul fast float %4453, %4383
  %4459 = fmul fast float %4454, %4384
  %4460 = fadd fast float %4458, -5.000000e-01
  %4461 = fadd fast float %4459, -5.000000e-01
  %4462 = call float @dx.op.unary.f32(i32 22, float %4460)  ; Frc(value)
  %4463 = call float @dx.op.unary.f32(i32 22, float %4461)  ; Frc(value)
  %4464 = fmul fast float %4462, %4462
  %4465 = fmul fast float %4464, %4462
  %4466 = fsub fast float 3.000000e+00, %4462
  %4467 = fmul fast float %4464, %4466
  %4468 = fmul fast float %4462, 3.000000e+00
  %4469 = fmul fast float %4465, 3.000000e+00
  %4470 = fmul fast float %4464, 6.000000e+00
  %4471 = fsub fast float %4469, %4470
  %4472 = fadd fast float %4471, 4.000000e+00
  %4473 = fmul fast float %4472, 0x3FC5555560000000
  %4474 = fmul fast float %4465, -3.000000e+00
  %4475 = fadd fast float %4464, %4462
  %4476 = fmul fast float %4475, 3.000000e+00
  %4477 = fadd fast float %4474, 1.000000e+00
  %4478 = fadd fast float %4477, %4476
  %4479 = fmul fast float %4465, 0x3FC5555560000000
  %4480 = fmul fast float %4463, %4463
  %4481 = fmul fast float %4480, %4463
  %4482 = fsub fast float 3.000000e+00, %4463
  %4483 = fmul fast float %4480, %4482
  %4484 = fmul fast float %4463, 3.000000e+00
  %4485 = fmul fast float %4481, 3.000000e+00
  %4486 = fmul fast float %4480, 6.000000e+00
  %4487 = fsub fast float %4485, %4486
  %4488 = fadd fast float %4487, 4.000000e+00
  %4489 = fmul fast float %4488, 0x3FC5555560000000
  %4490 = fmul fast float %4481, -3.000000e+00
  %4491 = fadd fast float %4480, %4463
  %4492 = fmul fast float %4491, 3.000000e+00
  %4493 = fadd fast float %4490, 1.000000e+00
  %4494 = fadd fast float %4493, %4492
  %4495 = fmul fast float %4481, 0x3FC5555560000000
  %4496 = fadd fast float %4462, 1.000000e+00
  %4497 = fsub fast float 1.000000e+00, %4468
  %4498 = fadd fast float %4497, %4467
  %4499 = fadd fast float %4498, %4472
  %4500 = fmul fast float %4499, 0x3FC5555560000000
  %4501 = fdiv fast float %4473, %4500
  %4502 = fsub fast float %4496, %4501
  %4503 = fsub fast float 1.000000e+00, %4462
  %4504 = fadd fast float %4478, %4465
  %4505 = fmul fast float %4504, 0x3FC5555560000000
  %4506 = fdiv fast float %4479, %4505
  %4507 = fadd fast float %4503, %4506
  %4508 = fadd fast float %4463, 1.000000e+00
  %4509 = fsub fast float 1.000000e+00, %4484
  %4510 = fadd fast float %4509, %4483
  %4511 = fadd fast float %4510, %4488
  %4512 = fmul fast float %4511, 0x3FC5555560000000
  %4513 = fdiv fast float %4489, %4512
  %4514 = fsub fast float %4508, %4513
  %4515 = fsub fast float 1.000000e+00, %4463
  %4516 = fadd fast float %4494, %4481
  %4517 = fmul fast float %4516, 0x3FC5555560000000
  %4518 = fdiv fast float %4495, %4517
  %4519 = fadd fast float %4518, %4515
  %4520 = fmul fast float %4502, %4456
  %4521 = fsub fast float %4383, %4520
  %4522 = fmul fast float %4507, %4456
  %4523 = fadd fast float %4522, %4383
  %4524 = fmul fast float %4519, %4457
  %4525 = fadd fast float %4524, %4384
  %4526 = fmul fast float %4514, %4457
  %4527 = fsub fast float %4384, %4526
  %4528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %4521, float %4527, float %4445, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4529 = extractvalue %dx.types.ResRet.f32 %4528, 0
  %4530 = extractvalue %dx.types.ResRet.f32 %4528, 1
  %4531 = extractvalue %dx.types.ResRet.f32 %4528, 2
  %4532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %4523, float %4527, float %4445, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = extractvalue %dx.types.ResRet.f32 %4532, 1
  %4535 = extractvalue %dx.types.ResRet.f32 %4532, 2
  %4536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %4521, float %4525, float %4445, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4537 = extractvalue %dx.types.ResRet.f32 %4536, 0
  %4538 = extractvalue %dx.types.ResRet.f32 %4536, 1
  %4539 = extractvalue %dx.types.ResRet.f32 %4536, 2
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %4523, float %4525, float %4445, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = extractvalue %dx.types.ResRet.f32 %4540, 1
  %4543 = extractvalue %dx.types.ResRet.f32 %4540, 2
  %4544 = fsub fast float %4537, %4529
  %4545 = fsub fast float %4538, %4530
  %4546 = fsub fast float %4539, %4531
  %4547 = fmul fast float %4544, %4517
  %4548 = fmul fast float %4545, %4517
  %4549 = fmul fast float %4546, %4517
  %4550 = fadd fast float %4547, %4529
  %4551 = fadd fast float %4548, %4530
  %4552 = fadd fast float %4549, %4531
  %4553 = fsub fast float %4541, %4533
  %4554 = fsub fast float %4542, %4534
  %4555 = fsub fast float %4543, %4535
  %4556 = fmul fast float %4553, %4517
  %4557 = fmul fast float %4554, %4517
  %4558 = fmul fast float %4555, %4517
  %4559 = fsub fast float %4533, %4550
  %4560 = fadd fast float %4559, %4556
  %4561 = fsub fast float %4534, %4551
  %4562 = fadd fast float %4561, %4557
  %4563 = fsub fast float %4535, %4552
  %4564 = fadd fast float %4563, %4558
  %4565 = fmul fast float %4560, %4505
  %4566 = fmul fast float %4562, %4505
  %4567 = fmul fast float %4564, %4505
  %4568 = fadd fast float %4565, %4550
  %4569 = fadd fast float %4566, %4551
  %4570 = fadd fast float %4567, %4552
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 1
  %4573 = fmul fast float %4568, %4572
  %4574 = fmul fast float %4569, %4572
  %4575 = fmul fast float %4570, %4572
  br label %4576

; <label>:4576                                    ; preds = %4408, %4377
  %4577 = phi float [ %4447, %4408 ], [ 1.000000e+00, %4377 ]
  %4578 = phi float [ %4448, %4408 ], [ 1.000000e+00, %4377 ]
  %4579 = phi float [ %4449, %4408 ], [ 1.000000e+00, %4377 ]
  %4580 = phi float [ %4573, %4408 ], [ 0.000000e+00, %4377 ]
  %4581 = phi float [ %4574, %4408 ], [ 0.000000e+00, %4377 ]
  %4582 = phi float [ %4575, %4408 ], [ 0.000000e+00, %4377 ]
  %4583 = fmul fast float %4580, %4353
  %4584 = fmul fast float %4581, %4353
  %4585 = fmul fast float %4582, %4353
  %4586 = call float @dx.op.dot3.f32(i32 55, float %4577, float %4578, float %4579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4587 = call float @dx.op.dot3.f32(i32 55, float %4583, float %4584, float %4585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4588 = select i1 %189, float %4586, float %4577
  %4589 = select i1 %189, float %4586, float %4578
  %4590 = select i1 %189, float 1.000000e+00, float %4579
  %4591 = select i1 %189, float %4587, float %4583
  %4592 = select i1 %189, float 0.000000e+00, float %4584
  %4593 = select i1 %189, float 0.000000e+00, float %4585
  %4594 = fmul fast float %4588, %4367
  %4595 = fmul fast float %4589, %4368
  %4596 = fmul fast float %4590, %4369
  %4597 = fadd fast float %4594, %4591
  %4598 = fadd fast float %4595, %4592
  %4599 = fadd fast float %4593, %4596
  %4600 = fmul fast float %4588, %4344
  %4601 = fmul fast float %4589, %4345
  %4602 = fmul fast float %4590, %4346
  %4603 = fmul fast float %80, 2.000000e+00
  %4604 = fmul fast float %4603, %4379
  %4605 = fmul fast float %81, 2.000000e+00
  %4606 = fmul fast float %4605, %4380
  %4607 = fsub fast float 1.000000e+00, %4604
  %4608 = fsub fast float 1.000000e+00, %4606
  %4609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.CBufRet.f32 %4609, 1
  %4612 = extractvalue %dx.types.CBufRet.f32 %4609, 2
  %4613 = fmul fast float %4607, %4610
  %4614 = fmul fast float %4607, %4611
  %4615 = fmul fast float %4607, %4612
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.CBufRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.CBufRet.f32 %4616, 2
  %4620 = fmul fast float %4608, %4617
  %4621 = fmul fast float %4608, %4618
  %4622 = fmul fast float %4608, %4619
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.CBufRet.f32 %4623, 1
  %4626 = extractvalue %dx.types.CBufRet.f32 %4623, 2
  %4627 = fadd fast float %4620, %4624
  %4628 = fadd fast float %4627, %4613
  %4629 = fadd fast float %4621, %4625
  %4630 = fadd fast float %4629, %4614
  %4631 = fadd fast float %4622, %4626
  %4632 = fadd fast float %4631, %4615
  %4633 = fmul fast float %4628, %149
  %4634 = fmul fast float %4630, %149
  %4635 = fmul fast float %4632, %149
  br label %4636

; <label>:4636                                    ; preds = %4576, %4343
  %4637 = phi float [ %4633, %4576 ], [ %127, %4343 ]
  %4638 = phi float [ %4634, %4576 ], [ %128, %4343 ]
  %4639 = phi float [ %4635, %4576 ], [ %129, %4343 ]
  %4640 = phi float [ %149, %4576 ], [ %68, %4343 ]
  %4641 = phi float [ %4597, %4576 ], [ %4367, %4343 ]
  %4642 = phi float [ %4598, %4576 ], [ %4368, %4343 ]
  %4643 = phi float [ %4599, %4576 ], [ %4369, %4343 ]
  %4644 = phi float [ %4600, %4576 ], [ %4344, %4343 ]
  %4645 = phi float [ %4601, %4576 ], [ %4345, %4343 ]
  %4646 = phi float [ %4602, %4576 ], [ %4346, %4343 ]
  %4647 = phi float [ %4577, %4576 ], [ 1.000000e+00, %4343 ]
  br i1 %4376, label %5802, label %4648

; <label>:4648                                    ; preds = %4636
  %4649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.f32 %4649, 0
  %4651 = extractvalue %dx.types.CBufRet.f32 %4649, 1
  %4652 = extractvalue %dx.types.CBufRet.f32 %4649, 2
  %4653 = extractvalue %dx.types.CBufRet.f32 %4649, 3
  %4654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4655 = extractvalue %dx.types.CBufRet.f32 %4654, 0
  %4656 = extractvalue %dx.types.CBufRet.f32 %4654, 1
  %4657 = extractvalue %dx.types.CBufRet.f32 %4654, 2
  %4658 = extractvalue %dx.types.CBufRet.f32 %4654, 3
  %4659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4659, 0
  %4661 = extractvalue %dx.types.CBufRet.f32 %4659, 1
  %4662 = extractvalue %dx.types.CBufRet.f32 %4659, 2
  %4663 = extractvalue %dx.types.CBufRet.f32 %4659, 3
  %4664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4665 = extractvalue %dx.types.CBufRet.f32 %4664, 0
  %4666 = extractvalue %dx.types.CBufRet.f32 %4664, 1
  %4667 = extractvalue %dx.types.CBufRet.f32 %4664, 2
  %4668 = extractvalue %dx.types.CBufRet.f32 %4664, 3
  %4669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.f32 %4669, 3
  %4671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4672 = extractvalue %dx.types.CBufRet.f32 %4671, 3
  %4673 = extractvalue %dx.types.CBufRet.f32 %4671, 0
  %4674 = extractvalue %dx.types.CBufRet.f32 %4671, 1
  %4675 = extractvalue %dx.types.CBufRet.f32 %4671, 2
  %4676 = fcmp fast olt float %4675, -5.000000e-01
  %4677 = call float @dx.op.dot3.f32(i32 55, float %4637, float %4638, float %4639, float %4637, float %4638, float %4639)  ; Dot3(ax,ay,az,bx,by,bz)
  %4678 = call float @dx.op.unary.f32(i32 25, float %4677)  ; Rsqrt(value)
  %4679 = fmul fast float %4678, %4677
  %4680 = fmul fast float %4678, %4637
  %4681 = fmul fast float %4678, %4638
  %4682 = fmul fast float %4678, %4639
  %4683 = fadd fast float %4679, %4653
  %4684 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4682, float %4650, float %4651, float %4652)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.i32 %4685, 1
  %4687 = and i32 %4686, 1
  %4688 = icmp ne i32 %4687, 0
  %4689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4690 = extractvalue %dx.types.CBufRet.f32 %4689, 2
  %4691 = fcmp fast ogt float %4690, 0.000000e+00
  %4692 = and i1 %4688, %4691
  br i1 %4692, label %4693, label %5099, !dx.controlflow.hints !121

; <label>:4693                                    ; preds = %4648
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 3
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 2
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 2
  %4700 = fsub fast float %4697, %4699
  %4701 = and i32 %4686, 2
  %4702 = extractvalue %dx.types.CBufRet.i32 %4685, 0
  %4703 = call i32 @dx.op.binary.i32(i32 40, i32 %4702, i32 3)  ; UMin(a,b)
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 0
  %4706 = extractvalue %dx.types.CBufRet.f32 %4704, 1
  %4707 = extractvalue %dx.types.CBufRet.f32 %4698, 0
  %4708 = extractvalue %dx.types.CBufRet.f32 %4698, 1
  %4709 = fsub fast float %4705, %4707
  %4710 = fsub fast float %4706, %4708
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 0
  %4713 = fcmp fast ogt float %4712, 0.000000e+00
  %4714 = fsub fast float -0.000000e+00, %4709
  %4715 = fsub fast float -0.000000e+00, %4710
  %4716 = call float @dx.op.dot2.f32(i32 54, float %4680, float %4681, float %4680, float %4681)  ; Dot2(ax,ay,bx,by)
  %4717 = call float @dx.op.dot2.f32(i32 54, float %4680, float %4681, float %4714, float %4715)  ; Dot2(ax,ay,bx,by)
  %4718 = fmul fast float %4717, 2.000000e+00
  %4719 = call float @dx.op.dot2.f32(i32 54, float %4714, float %4715, float %4714, float %4715)  ; Dot2(ax,ay,bx,by)
  %4720 = fmul fast float %4712, %4712
  %4721 = fsub fast float %4719, %4720
  %4722 = fmul fast float %4718, %4718
  %4723 = fmul fast float %4716, 4.000000e+00
  %4724 = fmul fast float %4723, %4721
  %4725 = fsub fast float %4722, %4724
  %4726 = fcmp fast ogt float %4725, 0.000000e+00
  br i1 %4726, label %4727, label %4742

; <label>:4727                                    ; preds = %4693
  %4728 = fcmp fast ogt float %4718, 0.000000e+00
  %4729 = call float @dx.op.unary.f32(i32 24, float %4725)  ; Sqrt(value)
  %4730 = fsub fast float -0.000000e+00, %4729
  %4731 = select i1 %4728, float %4729, float %4730
  %4732 = fadd fast float %4731, %4718
  %4733 = fmul float %4732, -5.000000e-01
  %4734 = fdiv fast float %4733, %4716
  %4735 = call float @dx.op.binary.f32(i32 35, float %4734, float 0.000000e+00)  ; FMax(a,b)
  %4736 = call float @dx.op.binary.f32(i32 36, float %4679, float %4735)  ; FMin(a,b)
  %4737 = fdiv fast float %4721, %4733
  %4738 = call float @dx.op.binary.f32(i32 35, float %4737, float 0.000000e+00)  ; FMax(a,b)
  %4739 = call float @dx.op.binary.f32(i32 36, float %4679, float %4738)  ; FMin(a,b)
  %4740 = call float @dx.op.binary.f32(i32 36, float %4736, float %4739)  ; FMin(a,b)
  %4741 = call float @dx.op.binary.f32(i32 35, float %4736, float %4739)  ; FMax(a,b)
  br label %4742

; <label>:4742                                    ; preds = %4727, %4693
  %4743 = phi float [ %4741, %4727 ], [ -1.000000e+00, %4693 ]
  %4744 = phi float [ %4740, %4727 ], [ -1.000000e+00, %4693 ]
  %4745 = phi i1 [ true, %4727 ], [ false, %4693 ]
  %4746 = and i1 %4713, %4745
  br i1 %4746, label %4747, label %4749

; <label>:4747                                    ; preds = %4742
  %4748 = fcmp fast oeq float %4744, %4743
  br i1 %4748, label %5052, label %4750

; <label>:4749                                    ; preds = %4742
  br i1 %4713, label %5052, label %4750

; <label>:4750                                    ; preds = %4749, %4747
  %4751 = phi float [ %4679, %4749 ], [ %4743, %4747 ]
  %4752 = phi float [ 0.000000e+00, %4749 ], [ %4744, %4747 ]
  %4753 = icmp ne i32 %4701, 0
  %4754 = fmul fast float %4751, %4682
  %4755 = fadd fast float %4754, %4695
  %4756 = fmul fast float %4755, %4751
  %4757 = select i1 %4753, float 0.000000e+00, float %4756
  %4758 = fcmp fast oeq float %4682, 0.000000e+00
  %4759 = fdiv fast float %4700, %4682
  %4760 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4759)  ; FMax(a,b)
  %4761 = select i1 %4758, float %4751, float %4760
  %4762 = call float @dx.op.binary.f32(i32 36, float %4751, float %4761)  ; FMin(a,b)
  %4763 = fcmp fast ogt float %4682, 0.000000e+00
  %4764 = fcmp fast olt float %4700, 0.000000e+00
  br i1 %4763, label %4765, label %4822

; <label>:4765                                    ; preds = %4750
  %4766 = icmp eq i32 %4701, 0
  br i1 %4764, label %4767, label %4811

; <label>:4767                                    ; preds = %4765
  %4768 = select i1 %4766, float %4751, float 0.000000e+00
  %4769 = fsub fast float -0.000000e+00, %4768
  %4770 = call float @dx.op.unary.f32(i32 6, float %4769)  ; FAbs(value)
  %4771 = fmul fast float %4768, %4682
  %4772 = fadd fast float %4771, %4695
  %4773 = fmul fast float %4770, %4772
  %4774 = fsub fast float %4757, %4773
  %4775 = fsub fast float %4751, %4770
  %4776 = select i1 %4766, float %4775, float 0.000000e+00
  %4777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4778 = extractvalue %dx.types.CBufRet.f32 %4777, 0
  %4779 = extractvalue %dx.types.CBufRet.f32 %4777, 1
  %4780 = extractvalue %dx.types.CBufRet.f32 %4777, 2
  %4781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.f32 %4781, 0
  %4783 = extractvalue %dx.types.CBufRet.f32 %4781, 1
  %4784 = extractvalue %dx.types.CBufRet.f32 %4781, 2
  %4785 = extractvalue %dx.types.CBufRet.f32 %4781, 3
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 3
  %4788 = call float @dx.op.binary.f32(i32 36, float %4774, float %4787)  ; FMin(a,b)
  %4789 = fmul fast float %4785, %4776
  %4790 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4791 = fsub fast float %4782, %4778
  %4792 = fsub fast float %4783, %4779
  %4793 = fsub fast float %4784, %4780
  %4794 = fmul fast float %4790, %4791
  %4795 = fmul fast float %4790, %4792
  %4796 = fmul fast float %4790, %4793
  %4797 = fadd fast float %4794, %4778
  %4798 = fadd fast float %4795, %4779
  %4799 = fadd fast float %4796, %4780
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 0
  %4802 = extractvalue %dx.types.CBufRet.f32 %4800, 1
  %4803 = fadd fast float %4802, %4801
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = extractvalue %dx.types.CBufRet.f32 %4800, 2
  %4806 = extractvalue %dx.types.CBufRet.f32 %4800, 3
  %4807 = fadd fast float %4806, %4805
  %4808 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4809 = fmul fast float %4804, %4788
  %4810 = fmul fast float %4809, %4808
  br label %5052

; <label>:4811                                    ; preds = %4765
  br i1 %4766, label %4812, label %4833

; <label>:4812                                    ; preds = %4811
  %4813 = call float @dx.op.binary.f32(i32 36, float %4762, float %4752)  ; FMin(a,b)
  %4814 = fsub fast float %4762, %4813
  %4815 = fsub fast float %4814, %4751
  %4816 = call float @dx.op.unary.f32(i32 6, float %4815)  ; FAbs(value)
  %4817 = fadd fast float %4814, %4751
  %4818 = fmul fast float %4817, %4682
  %4819 = fadd fast float %4818, %4695
  %4820 = fmul fast float %4819, %4816
  %4821 = fsub fast float %4757, %4820
  br label %4833

; <label>:4822                                    ; preds = %4750
  br i1 %4764, label %4823, label %4833

; <label>:4823                                    ; preds = %4822
  %4824 = call float @dx.op.binary.f32(i32 35, float %4752, float %4762)  ; FMax(a,b)
  %4825 = icmp eq i32 %4701, 0
  %4826 = select i1 %4825, float %4762, float 0.000000e+00
  %4827 = fsub fast float -0.000000e+00, %4826
  %4828 = call float @dx.op.unary.f32(i32 6, float %4827)  ; FAbs(value)
  %4829 = fmul fast float %4826, %4682
  %4830 = fadd fast float %4829, %4695
  %4831 = fmul fast float %4828, %4830
  %4832 = fsub fast float %4757, %4831
  br label %4833

; <label>:4833                                    ; preds = %4823, %4822, %4812, %4811
  %4834 = phi float [ %4752, %4811 ], [ %4752, %4812 ], [ %4824, %4823 ], [ %4752, %4822 ]
  %4835 = phi float [ 0.000000e+00, %4811 ], [ %4816, %4812 ], [ %4828, %4823 ], [ 0.000000e+00, %4822 ]
  %4836 = phi float [ %4757, %4811 ], [ %4821, %4812 ], [ %4832, %4823 ], [ %4757, %4822 ]
  %4837 = phi float [ %4762, %4811 ], [ %4762, %4812 ], [ %4751, %4823 ], [ %4751, %4822 ]
  %4838 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 0
  store float -1.000000e+00, float* %4838, align 4, !tbaa !107, !noalias !122
  %4839 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 1
  store float -1.000000e+00, float* %4839, align 4, !tbaa !107, !noalias !122
  %4840 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 2
  store float -1.000000e+00, float* %4840, align 4, !tbaa !107, !noalias !122
  %4841 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 0
  store float -1.000000e+00, float* %4841, align 4, !tbaa !107, !noalias !122
  %4842 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 1
  store float -1.000000e+00, float* %4842, align 4, !tbaa !107, !noalias !122
  %4843 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 2
  store float -1.000000e+00, float* %4843, align 4, !tbaa !107, !noalias !122
  %4844 = icmp sgt i32 %4703, 0
  br i1 %4844, label %4845, label %4906

; <label>:4845                                    ; preds = %4833
  br label %4846

; <label>:4846                                    ; preds = %4895, %4845
  %4847 = phi i32 [ %4896, %4895 ], [ 0, %4845 ]
  %4848 = phi i32 [ %4897, %4895 ], [ 0, %4845 ]
  %4849 = add nuw i32 %4848, 171
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %4849)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 0
  %4852 = extractvalue %dx.types.CBufRet.f32 %4850, 1
  %4853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4854 = extractvalue %dx.types.CBufRet.f32 %4853, 0
  %4855 = extractvalue %dx.types.CBufRet.f32 %4853, 1
  %4856 = fsub fast float %4851, %4854
  %4857 = fsub fast float %4852, %4855
  %4858 = extractvalue %dx.types.CBufRet.f32 %4850, 2
  %4859 = fsub fast float -0.000000e+00, %4856
  %4860 = fsub fast float -0.000000e+00, %4857
  %4861 = call float @dx.op.dot2.f32(i32 54, float %4680, float %4681, float %4859, float %4860)  ; Dot2(ax,ay,bx,by)
  %4862 = fmul fast float %4861, 2.000000e+00
  %4863 = call float @dx.op.dot2.f32(i32 54, float %4859, float %4860, float %4859, float %4860)  ; Dot2(ax,ay,bx,by)
  %4864 = fmul fast float %4858, %4858
  %4865 = fsub fast float %4863, %4864
  %4866 = fmul fast float %4862, %4862
  %4867 = fmul fast float %4723, %4865
  %4868 = fsub fast float %4866, %4867
  %4869 = fcmp fast ogt float %4868, 0.000000e+00
  br i1 %4869, label %4870, label %4885

; <label>:4870                                    ; preds = %4846
  %4871 = fcmp fast ogt float %4862, 0.000000e+00
  %4872 = call float @dx.op.unary.f32(i32 24, float %4868)  ; Sqrt(value)
  %4873 = fsub fast float -0.000000e+00, %4872
  %4874 = select i1 %4871, float %4872, float %4873
  %4875 = fadd fast float %4874, %4862
  %4876 = fmul float %4875, -5.000000e-01
  %4877 = fdiv fast float %4876, %4716
  %4878 = call float @dx.op.binary.f32(i32 35, float %4877, float 0.000000e+00)  ; FMax(a,b)
  %4879 = call float @dx.op.binary.f32(i32 36, float %4751, float %4878)  ; FMin(a,b)
  %4880 = fdiv fast float %4865, %4876
  %4881 = call float @dx.op.binary.f32(i32 35, float %4880, float 0.000000e+00)  ; FMax(a,b)
  %4882 = call float @dx.op.binary.f32(i32 36, float %4751, float %4881)  ; FMin(a,b)
  %4883 = call float @dx.op.binary.f32(i32 36, float %4879, float %4882)  ; FMin(a,b)
  %4884 = call float @dx.op.binary.f32(i32 35, float %4879, float %4882)  ; FMax(a,b)
  br label %4885

; <label>:4885                                    ; preds = %4870, %4846
  %4886 = phi float [ %4884, %4870 ], [ -1.000000e+00, %4846 ]
  %4887 = phi float [ %4883, %4870 ], [ -1.000000e+00, %4846 ]
  %4888 = phi i1 [ true, %4870 ], [ false, %4846 ]
  br i1 %4888, label %4889, label %4895

; <label>:4889                                    ; preds = %4885
  %4890 = call float @dx.op.binary.f32(i32 35, float %4834, float %4887)  ; FMax(a,b)
  %4891 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %4848
  store float %4890, float* %4891, align 4, !tbaa !107, !noalias !122
  %4892 = call float @dx.op.binary.f32(i32 35, float %4834, float %4886)  ; FMax(a,b)
  %4893 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 %4848
  store float %4892, float* %4893, align 4, !tbaa !107, !noalias !122
  %4894 = add nsw i32 %4847, 1
  br label %4895

; <label>:4895                                    ; preds = %4889, %4885
  %4896 = phi i32 [ %4894, %4889 ], [ %4847, %4885 ]
  %4897 = add nuw nsw i32 %4848, 1
  %4898 = icmp eq i32 %4897, %4703
  br i1 %4898, label %4899, label %4846

; <label>:4899                                    ; preds = %4895
  %4900 = load float, float* %4840, align 4, !tbaa !107, !alias.scope !138, !noalias !141
  %4901 = load float, float* %4839, align 4, !tbaa !107, !alias.scope !144, !noalias !145
  %4902 = load float, float* %4838, align 4, !tbaa !107, !alias.scope !146, !noalias !147
  %4903 = load float, float* %4843, align 4, !tbaa !107, !alias.scope !148, !noalias !151
  %4904 = load float, float* %4842, align 4, !tbaa !107, !alias.scope !154, !noalias !155
  %4905 = load float, float* %4841, align 4, !tbaa !107, !alias.scope !156, !noalias !157
  br label %4906

; <label>:4906                                    ; preds = %4899, %4833
  %4907 = phi float [ -1.000000e+00, %4833 ], [ %4905, %4899 ]
  %4908 = phi float [ -1.000000e+00, %4833 ], [ %4904, %4899 ]
  %4909 = phi float [ -1.000000e+00, %4833 ], [ %4903, %4899 ]
  %4910 = phi float [ -1.000000e+00, %4833 ], [ %4902, %4899 ]
  %4911 = phi float [ -1.000000e+00, %4833 ], [ %4901, %4899 ]
  %4912 = phi float [ -1.000000e+00, %4833 ], [ %4900, %4899 ]
  %4913 = phi i32 [ 0, %4833 ], [ %4896, %4899 ]
  %4914 = call float @dx.op.binary.f32(i32 36, float %4911, float %4912)  ; FMin(a,b)
  %4915 = call float @dx.op.binary.f32(i32 36, float %4910, float %4914)  ; FMin(a,b)
  %4916 = call float @dx.op.binary.f32(i32 35, float %4910, float %4911)  ; FMax(a,b)
  %4917 = call float @dx.op.binary.f32(i32 36, float %4916, float %4912)  ; FMin(a,b)
  %4918 = call float @dx.op.binary.f32(i32 36, float %4910, float %4911)  ; FMin(a,b)
  %4919 = call float @dx.op.binary.f32(i32 35, float %4918, float %4917)  ; FMax(a,b)
  %4920 = call float @dx.op.binary.f32(i32 35, float %4911, float %4912)  ; FMax(a,b)
  %4921 = call float @dx.op.binary.f32(i32 35, float %4910, float %4920)  ; FMax(a,b)
  store float %4915, float* %4838, align 4, !tbaa !107, !alias.scope !146, !noalias !147
  store float %4919, float* %4839, align 4, !tbaa !107, !alias.scope !144, !noalias !145
  store float %4921, float* %4840, align 4, !tbaa !107, !alias.scope !138, !noalias !141
  %4922 = call float @dx.op.binary.f32(i32 36, float %4908, float %4909)  ; FMin(a,b)
  %4923 = call float @dx.op.binary.f32(i32 36, float %4907, float %4922)  ; FMin(a,b)
  %4924 = call float @dx.op.binary.f32(i32 35, float %4907, float %4908)  ; FMax(a,b)
  %4925 = call float @dx.op.binary.f32(i32 36, float %4924, float %4909)  ; FMin(a,b)
  %4926 = call float @dx.op.binary.f32(i32 36, float %4907, float %4908)  ; FMin(a,b)
  %4927 = call float @dx.op.binary.f32(i32 35, float %4926, float %4925)  ; FMax(a,b)
  %4928 = call float @dx.op.binary.f32(i32 35, float %4908, float %4909)  ; FMax(a,b)
  %4929 = call float @dx.op.binary.f32(i32 35, float %4907, float %4928)  ; FMax(a,b)
  store float %4923, float* %4841, align 4, !tbaa !107, !alias.scope !156, !noalias !157
  store float %4927, float* %4842, align 4, !tbaa !107, !alias.scope !154, !noalias !155
  store float %4929, float* %4843, align 4, !tbaa !107, !alias.scope !148, !noalias !151
  %4930 = sub nsw i32 3, %4913
  %4931 = icmp sgt i32 %4930, 2
  br i1 %4931, label %4932, label %4970

; <label>:4932                                    ; preds = %4906
  %4933 = icmp eq i32 %4701, 0
  %4934 = fsub fast float %4751, %4835
  %4935 = select i1 %4933, float %4934, float %4835
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 0
  %4938 = extractvalue %dx.types.CBufRet.f32 %4936, 1
  %4939 = extractvalue %dx.types.CBufRet.f32 %4936, 2
  %4940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4940, 0
  %4942 = extractvalue %dx.types.CBufRet.f32 %4940, 1
  %4943 = extractvalue %dx.types.CBufRet.f32 %4940, 2
  %4944 = extractvalue %dx.types.CBufRet.f32 %4940, 3
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 3
  %4947 = call float @dx.op.binary.f32(i32 36, float %4836, float %4946)  ; FMin(a,b)
  %4948 = fmul fast float %4944, %4935
  %4949 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4950 = fsub fast float %4941, %4937
  %4951 = fsub fast float %4942, %4938
  %4952 = fsub fast float %4943, %4939
  %4953 = fmul fast float %4949, %4950
  %4954 = fmul fast float %4949, %4951
  %4955 = fmul fast float %4949, %4952
  %4956 = fadd fast float %4953, %4937
  %4957 = fadd fast float %4954, %4938
  %4958 = fadd fast float %4955, %4939
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = extractvalue %dx.types.CBufRet.f32 %4959, 1
  %4962 = fadd fast float %4961, %4960
  %4963 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4959, 2
  %4965 = extractvalue %dx.types.CBufRet.f32 %4959, 3
  %4966 = fadd fast float %4965, %4964
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = fmul fast float %4963, %4947
  %4969 = fmul fast float %4968, %4967
  br label %5052

; <label>:4970                                    ; preds = %4906
  %4971 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %4930
  %4972 = load float, float* %4971, align 4, !tbaa !107, !noalias !122
  %4973 = fcmp fast olt float %4972, %4837
  %4974 = icmp sgt i32 %4913, 0
  %4975 = and i1 %4974, %4973
  br i1 %4975, label %4976, label %5013

; <label>:4976                                    ; preds = %4970
  br label %4977

; <label>:4977                                    ; preds = %5006, %4976
  %4978 = phi float [ %5007, %5006 ], [ %4835, %4976 ]
  %4979 = phi float [ %5008, %5006 ], [ %4836, %4976 ]
  %4980 = phi float [ %4988, %5006 ], [ %4972, %4976 ]
  %4981 = phi i32 [ %4985, %5006 ], [ %4930, %4976 ]
  %4982 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 %4981
  %4983 = load float, float* %4982, align 4, !tbaa !107, !noalias !122
  %4984 = icmp slt i32 %4981, 2
  %4985 = add nsw i32 %4981, 1
  %4986 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %4985
  %4987 = load float, float* %4986, align 4, !tbaa !107, !noalias !122
  %4988 = select i1 %4984, float %4987, float %4751
  %4989 = call float @dx.op.binary.f32(i32 36, float %4988, float %4983)  ; FMin(a,b)
  %4990 = call float @dx.op.binary.f32(i32 36, float %4837, float %4989)  ; FMin(a,b)
  %4991 = icmp eq i32 %4701, 0
  %4992 = fadd fast float %4990, %4980
  %4993 = fmul fast float %4992, %4682
  %4994 = fadd fast float %4993, %4695
  br i1 %4991, label %5000, label %4995

; <label>:4995                                    ; preds = %4977
  %4996 = fsub fast float %4990, %4980
  %4997 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4996)  ; FMax(a,b)
  %4998 = fmul fast float %4997, %4994
  %4999 = fadd fast float %4998, %4979
  br label %5006

; <label>:5000                                    ; preds = %4977
  %5001 = fsub fast float %4980, %4990
  %5002 = call float @dx.op.unary.f32(i32 6, float %5001)  ; FAbs(value)
  %5003 = fadd fast float %5002, %4978
  %5004 = fmul fast float %5002, %4994
  %5005 = fsub fast float %4979, %5004
  br label %5006

; <label>:5006                                    ; preds = %5000, %4995
  %5007 = phi float [ %4997, %4995 ], [ %5003, %5000 ]
  %5008 = phi float [ %4999, %4995 ], [ %5005, %5000 ]
  %5009 = fcmp fast olt float %4988, %4837
  %5010 = icmp slt i32 %4985, 3
  %5011 = and i1 %5010, %5009
  br i1 %5011, label %4977, label %5012

; <label>:5012                                    ; preds = %5006
  br label %5013

; <label>:5013                                    ; preds = %5012, %4970
  %5014 = phi float [ %4835, %4970 ], [ %5007, %5012 ]
  %5015 = phi float [ %4836, %4970 ], [ %5008, %5012 ]
  %5016 = fsub fast float %4751, %5014
  %5017 = select i1 %4753, float %5014, float %5016
  %5018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5019 = extractvalue %dx.types.CBufRet.f32 %5018, 0
  %5020 = extractvalue %dx.types.CBufRet.f32 %5018, 1
  %5021 = extractvalue %dx.types.CBufRet.f32 %5018, 2
  %5022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5023 = extractvalue %dx.types.CBufRet.f32 %5022, 0
  %5024 = extractvalue %dx.types.CBufRet.f32 %5022, 1
  %5025 = extractvalue %dx.types.CBufRet.f32 %5022, 2
  %5026 = extractvalue %dx.types.CBufRet.f32 %5022, 3
  %5027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5028 = extractvalue %dx.types.CBufRet.f32 %5027, 3
  %5029 = call float @dx.op.binary.f32(i32 36, float %5015, float %5028)  ; FMin(a,b)
  %5030 = fmul fast float %5026, %5017
  %5031 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5032 = fsub fast float %5023, %5019
  %5033 = fsub fast float %5024, %5020
  %5034 = fsub fast float %5025, %5021
  %5035 = fmul fast float %5031, %5032
  %5036 = fmul fast float %5031, %5033
  %5037 = fmul fast float %5031, %5034
  %5038 = fadd fast float %5035, %5019
  %5039 = fadd fast float %5036, %5020
  %5040 = fadd fast float %5037, %5021
  %5041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5042 = extractvalue %dx.types.CBufRet.f32 %5041, 0
  %5043 = extractvalue %dx.types.CBufRet.f32 %5041, 1
  %5044 = fadd fast float %5043, %5042
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = extractvalue %dx.types.CBufRet.f32 %5041, 2
  %5047 = extractvalue %dx.types.CBufRet.f32 %5041, 3
  %5048 = fadd fast float %5047, %5046
  %5049 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5050 = fmul fast float %5045, %5029
  %5051 = fmul fast float %5050, %5049
  br label %5052

; <label>:5052                                    ; preds = %5013, %4932, %4767, %4749, %4747
  %5053 = phi float [ %4776, %4767 ], [ %4935, %4932 ], [ %5017, %5013 ], [ 0.000000e+00, %4747 ], [ 0.000000e+00, %4749 ]
  %5054 = phi float [ %4810, %4767 ], [ %4969, %4932 ], [ %5051, %5013 ], [ 0.000000e+00, %4747 ], [ 0.000000e+00, %4749 ]
  %5055 = phi float [ %4797, %4767 ], [ %4956, %4932 ], [ %5038, %5013 ], [ 0.000000e+00, %4747 ], [ 0.000000e+00, %4749 ]
  %5056 = phi float [ %4798, %4767 ], [ %4957, %4932 ], [ %5039, %5013 ], [ 0.000000e+00, %4747 ], [ 0.000000e+00, %4749 ]
  %5057 = phi float [ %4799, %4767 ], [ %4958, %4932 ], [ %5040, %5013 ], [ 0.000000e+00, %4747 ], [ 0.000000e+00, %4749 ]
  %5058 = fmul fast float %4690, %5054
  %5059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.f32 %5059, 2
  %5061 = fsub fast float %4697, %5060
  %5062 = fcmp fast olt float %5058, -2.000000e+01
  %5063 = call float @dx.op.unary.f32(i32 21, float %5058)  ; Exp(value)
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 2
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 3
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 2
  %5069 = fmul fast float %5066, %5061
  %5070 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5071 = fsub fast float 1.000000e+00, %5070
  %5072 = fmul fast float %4682, 5.000000e-01
  %5073 = fadd fast float %5072, 5.000000e-01
  %5074 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5075 = fsub fast float 1.000000e+00, %5074
  %5076 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5071)  ; FMax(a,b)
  %5077 = fdiv fast float %5075, %5076
  %5078 = fsub fast float %5061, %4639
  %5079 = call float @dx.op.unary.f32(i32 6, float %5078)  ; FAbs(value)
  %5080 = fmul fast float %5079, %5065
  %5081 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5082 = fsub fast float 1.000000e+00, %5080
  %5083 = fmul fast float %5082, %5081
  %5084 = fadd fast float %5083, %5080
  %5085 = fmul fast float %5068, %5061
  %5086 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5087 = fsub fast float 1.000000e+00, %5084
  %5088 = fmul fast float %5087, %5086
  %5089 = fadd fast float %5088, %5084
  %5090 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5091 = fadd fast float %5063, -1.000000e+00
  %5092 = select i1 %5062, float -1.000000e+00, float %5091
  %5093 = fmul fast float %5090, %5092
  %5094 = fadd fast float %5093, 1.000000e+00
  %5095 = fsub fast float -0.000000e+00, %5093
  %5096 = fmul fast float %5055, %5095
  %5097 = fmul fast float %5056, %5095
  %5098 = fmul fast float %5057, %5095
  br label %5099

; <label>:5099                                    ; preds = %5052, %4648
  %5100 = phi float [ %5053, %5052 ], [ 0.000000e+00, %4648 ]
  %5101 = phi float [ %5094, %5052 ], [ 1.000000e+00, %4648 ]
  %5102 = phi float [ %5096, %5052 ], [ 0.000000e+00, %4648 ]
  %5103 = phi float [ %5097, %5052 ], [ 0.000000e+00, %4648 ]
  %5104 = phi float [ %5098, %5052 ], [ 0.000000e+00, %4648 ]
  %5105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5106 = extractvalue %dx.types.CBufRet.f32 %5105, 1
  %5107 = fsub fast float 1.000000e+00, %5101
  %5108 = fmul fast float %5107, %4683
  %5109 = fmul fast float %5108, %5106
  %5110 = fsub fast float %4683, %5109
  br i1 %4676, label %5111, label %5140, !dx.controlflow.hints !158

; <label>:5111                                    ; preds = %5099
  %5112 = fmul fast float %4684, %4673
  %5113 = fadd fast float %5112, %4674
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = fmul fast float %4655, %5110
  %5116 = fsub fast float -0.000000e+00, %5115
  %5117 = fmul fast float %4656, %5110
  %5118 = fsub fast float -0.000000e+00, %5117
  %5119 = call float @dx.op.unary.f32(i32 21, float %5116)  ; Exp(value)
  %5120 = call float @dx.op.unary.f32(i32 21, float %5118)  ; Exp(value)
  %5121 = call float @dx.op.binary.f32(i32 35, float %4663, float %5119)  ; FMax(a,b)
  %5122 = call float @dx.op.binary.f32(i32 35, float %4663, float %5120)  ; FMax(a,b)
  %5123 = fsub fast float %5122, %5121
  %5124 = fmul fast float %5123, %5114
  %5125 = fadd fast float %5124, %5121
  %5126 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5127 = fsub fast float %4660, %4665
  %5128 = fsub fast float %4661, %4666
  %5129 = fsub fast float %4662, %4667
  %5130 = fmul fast float %5114, %5127
  %5131 = fmul fast float %5114, %5128
  %5132 = fmul fast float %5114, %5129
  %5133 = fadd fast float %5130, %4665
  %5134 = fadd fast float %5131, %4666
  %5135 = fadd fast float %5132, %4667
  %5136 = fsub fast float 1.000000e+00, %5126
  %5137 = fmul fast float %5136, %5133
  %5138 = fmul fast float %5136, %5134
  %5139 = fmul fast float %5136, %5135
  br label %5199

; <label>:5140                                    ; preds = %5099
  %5141 = fmul fast float %5110, %4672
  %5142 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5143 = fsub fast float 2.000000e+00, %5142
  %5144 = fmul fast float %5142, 9.921875e-01
  %5145 = fmul fast float %5144, %5143
  %5146 = fadd fast float %5145, 3.906250e-03
  %5147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %5146, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5148 = extractvalue %dx.types.ResRet.f32 %5147, 0
  %5149 = fsub fast float %5142, %5148
  %5150 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5149)  ; FMax(a,b)
  %5151 = fmul fast float %4658, %4639
  %5152 = call float @dx.op.unary.f32(i32 6, float %5151)  ; FAbs(value)
  %5153 = fcmp fast ogt float %5152, 0x3EB0C6F7A0000000
  br i1 %5153, label %5154, label %5160, !dx.controlflow.hints !159

; <label>:5154                                    ; preds = %5140
  %5155 = fmul fast float %5151, 0xBFF7154760000000
  %5156 = call float @dx.op.unary.f32(i32 21, float %5155)  ; Exp(value)
  %5157 = fsub fast float 1.000000e+00, %5156
  %5158 = fdiv fast float %5157, %5151
  %5159 = fmul fast float %5158, %4668
  br label %5160

; <label>:5160                                    ; preds = %5154, %5140
  %5161 = phi float [ %5159, %5154 ], [ %4668, %5140 ]
  %5162 = fadd fast float %5161, %4670
  %5163 = fmul fast float %5162, %5150
  %5164 = fmul fast float %4655, %5163
  %5165 = fsub fast float -0.000000e+00, %5164
  %5166 = fmul fast float %4656, %5163
  %5167 = fsub fast float -0.000000e+00, %5166
  %5168 = fmul fast float %4657, %5163
  %5169 = fsub fast float -0.000000e+00, %5168
  %5170 = call float @dx.op.unary.f32(i32 21, float %5165)  ; Exp(value)
  %5171 = call float @dx.op.unary.f32(i32 21, float %5167)  ; Exp(value)
  %5172 = call float @dx.op.unary.f32(i32 21, float %5169)  ; Exp(value)
  %5173 = fmul fast float %4684, %4684
  %5174 = fadd fast float %5173, 1.000000e+00
  %5175 = fmul fast float %5174, 0x3FAE8EC8A0000000
  %5176 = fmul fast float %5175, %4665
  %5177 = fmul fast float %5175, %4666
  %5178 = fmul fast float %5175, %4667
  %5179 = fmul fast float %4684, %4663
  %5180 = fsub fast float 1.000000e+00, %5179
  %5181 = fmul fast float %4663, %4663
  %5182 = fsub fast float 1.000000e+00, %5181
  %5183 = fmul fast float %5182, 0x3FB45F3060000000
  %5184 = fmul fast float %5180, %5180
  %5185 = fdiv fast float 1.000000e+00, %5184
  %5186 = fmul fast float %5183, %5185
  %5187 = fmul fast float %5186, %4660
  %5188 = fmul fast float %5186, %4661
  %5189 = fmul fast float %5186, %4662
  %5190 = fadd fast float %5187, %5176
  %5191 = fadd fast float %5188, %5177
  %5192 = fadd fast float %5189, %5178
  %5193 = fsub fast float 1.000000e+00, %5170
  %5194 = fsub fast float 1.000000e+00, %5171
  %5195 = fsub fast float 1.000000e+00, %5172
  %5196 = fmul fast float %5190, %5193
  %5197 = fmul fast float %5191, %5194
  %5198 = fmul fast float %5192, %5195
  br label %5199

; <label>:5199                                    ; preds = %5160, %5111
  %5200 = phi float [ %5137, %5111 ], [ %5196, %5160 ]
  %5201 = phi float [ %5138, %5111 ], [ %5197, %5160 ]
  %5202 = phi float [ %5139, %5111 ], [ %5198, %5160 ]
  %5203 = phi float [ %5126, %5111 ], [ %5170, %5160 ]
  %5204 = phi float [ %5126, %5111 ], [ %5171, %5160 ]
  %5205 = phi float [ %5126, %5111 ], [ %5172, %5160 ]
  br i1 %4692, label %5206, label %5404, !dx.controlflow.hints !160

; <label>:5206                                    ; preds = %5199
  %5207 = extractvalue %dx.types.CBufRet.f32 %5105, 0
  %5208 = fmul fast float %5207, %5107
  %5209 = fsub fast float %5102, %5200
  %5210 = fsub fast float %5103, %5201
  %5211 = fsub fast float %5104, %5202
  %5212 = fmul fast float %5208, %5209
  %5213 = fmul fast float %5208, %5210
  %5214 = fmul fast float %5208, %5211
  %5215 = fadd fast float %5212, %5200
  %5216 = fadd fast float %5213, %5201
  %5217 = fadd fast float %5214, %5202
  %5218 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5203)  ; FMax(a,b)
  %5219 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5204)  ; FMax(a,b)
  %5220 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5205)  ; FMax(a,b)
  %5221 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5101)  ; FMax(a,b)
  %5222 = call float @dx.op.binary.f32(i32 35, float %5100, float %5110)  ; FMax(a,b)
  %5223 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5222)  ; FMax(a,b)
  %5224 = fdiv fast float %5100, %5223
  %5225 = call float @dx.op.unary.f32(i32 7, float %5224)  ; Saturate(value)
  %5226 = fdiv fast float %5110, %5223
  %5227 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5228 = fcmp fast une float %5221, 1.000000e+00
  br i1 %5228, label %5229, label %5242, !dx.controlflow.hints !161

; <label>:5229                                    ; preds = %5206
  %5230 = call float @dx.op.unary.f32(i32 23, float %5221)  ; Log(value)
  %5231 = fmul fast float %5230, 0x3FE62E4300000000
  %5232 = fmul fast float %5102, %5231
  %5233 = fsub fast float -0.000000e+00, %5232
  %5234 = fmul fast float %5103, %5231
  %5235 = fsub fast float -0.000000e+00, %5234
  %5236 = fmul fast float %5104, %5231
  %5237 = fsub fast float -0.000000e+00, %5236
  %5238 = fsub fast float 1.000000e+00, %5221
  %5239 = fdiv fast float %5233, %5238
  %5240 = fdiv fast float %5235, %5238
  %5241 = fdiv fast float %5237, %5238
  br label %5242

; <label>:5242                                    ; preds = %5229, %5206
  %5243 = phi float [ %5239, %5229 ], [ %5102, %5206 ]
  %5244 = phi float [ %5240, %5229 ], [ %5103, %5206 ]
  %5245 = phi float [ %5241, %5229 ], [ %5104, %5206 ]
  %5246 = phi float [ %5231, %5229 ], [ 0.000000e+00, %5206 ]
  %5247 = fcmp fast une float %5218, 1.000000e+00
  br i1 %5247, label %5248, label %5255, !dx.controlflow.hints !162

; <label>:5248                                    ; preds = %5242
  %5249 = call float @dx.op.unary.f32(i32 23, float %5218)  ; Log(value)
  %5250 = fmul fast float %5249, 0x3FE62E4300000000
  %5251 = fmul fast float %5215, %5250
  %5252 = fsub fast float -0.000000e+00, %5251
  %5253 = fsub fast float 1.000000e+00, %5218
  %5254 = fdiv fast float %5252, %5253
  br label %5255

; <label>:5255                                    ; preds = %5248, %5242
  %5256 = phi float [ %5254, %5248 ], [ %5215, %5242 ]
  %5257 = phi float [ %5250, %5248 ], [ 0.000000e+00, %5242 ]
  %5258 = fcmp fast une float %5219, 1.000000e+00
  br i1 %5258, label %5259, label %5266, !dx.controlflow.hints !162

; <label>:5259                                    ; preds = %5255
  %5260 = call float @dx.op.unary.f32(i32 23, float %5219)  ; Log(value)
  %5261 = fmul fast float %5260, 0x3FE62E4300000000
  %5262 = fmul fast float %5216, %5261
  %5263 = fsub fast float -0.000000e+00, %5262
  %5264 = fsub fast float 1.000000e+00, %5219
  %5265 = fdiv fast float %5263, %5264
  br label %5266

; <label>:5266                                    ; preds = %5259, %5255
  %5267 = phi float [ %5265, %5259 ], [ %5216, %5255 ]
  %5268 = phi float [ %5261, %5259 ], [ 0.000000e+00, %5255 ]
  %5269 = fcmp fast une float %5220, 1.000000e+00
  br i1 %5269, label %5270, label %5277, !dx.controlflow.hints !162

; <label>:5270                                    ; preds = %5266
  %5271 = call float @dx.op.unary.f32(i32 23, float %5220)  ; Log(value)
  %5272 = fmul fast float %5271, 0x3FE62E4300000000
  %5273 = fmul fast float %5217, %5272
  %5274 = fsub fast float -0.000000e+00, %5273
  %5275 = fsub fast float 1.000000e+00, %5220
  %5276 = fdiv fast float %5274, %5275
  br label %5277

; <label>:5277                                    ; preds = %5270, %5266
  %5278 = phi float [ %5276, %5270 ], [ %5217, %5266 ]
  %5279 = phi float [ %5272, %5270 ], [ 0.000000e+00, %5266 ]
  %5280 = fmul fast float %5243, %5227
  %5281 = fmul fast float %5244, %5227
  %5282 = fmul fast float %5245, %5227
  %5283 = fmul fast float %5246, %5227
  %5284 = fmul fast float %5256, %5225
  %5285 = fmul fast float %5267, %5225
  %5286 = fmul fast float %5278, %5225
  %5287 = fmul fast float %5257, %5225
  %5288 = fmul fast float %5268, %5225
  %5289 = fmul fast float %5279, %5225
  %5290 = fadd fast float %5284, %5280
  %5291 = fadd fast float %5285, %5281
  %5292 = fadd fast float %5286, %5282
  %5293 = fadd fast float %5287, %5283
  %5294 = fadd fast float %5288, %5283
  %5295 = fadd fast float %5289, %5283
  %5296 = fcmp fast une float %5293, 0.000000e+00
  br i1 %5296, label %5297, label %5304, !dx.controlflow.hints !163

; <label>:5297                                    ; preds = %5277
  %5298 = fmul fast float %5293, 0x3FF7154760000000
  %5299 = call float @dx.op.unary.f32(i32 21, float %5298)  ; Exp(value)
  %5300 = fsub fast float 1.000000e+00, %5299
  %5301 = fmul fast float %5290, %5300
  %5302 = fsub fast float -0.000000e+00, %5301
  %5303 = fdiv fast float %5302, %5293
  br label %5304

; <label>:5304                                    ; preds = %5297, %5277
  %5305 = phi float [ %5299, %5297 ], [ 1.000000e+00, %5277 ]
  %5306 = phi float [ %5303, %5297 ], [ %5290, %5277 ]
  %5307 = fcmp fast une float %5294, 0.000000e+00
  br i1 %5307, label %5308, label %5315, !dx.controlflow.hints !163

; <label>:5308                                    ; preds = %5304
  %5309 = fmul fast float %5294, 0x3FF7154760000000
  %5310 = call float @dx.op.unary.f32(i32 21, float %5309)  ; Exp(value)
  %5311 = fsub fast float 1.000000e+00, %5310
  %5312 = fmul fast float %5291, %5311
  %5313 = fsub fast float -0.000000e+00, %5312
  %5314 = fdiv fast float %5313, %5294
  br label %5315

; <label>:5315                                    ; preds = %5308, %5304
  %5316 = phi float [ %5310, %5308 ], [ 1.000000e+00, %5304 ]
  %5317 = phi float [ %5314, %5308 ], [ %5291, %5304 ]
  %5318 = fcmp fast une float %5295, 0.000000e+00
  br i1 %5318, label %5319, label %5326, !dx.controlflow.hints !163

; <label>:5319                                    ; preds = %5315
  %5320 = fmul fast float %5295, 0x3FF7154760000000
  %5321 = call float @dx.op.unary.f32(i32 21, float %5320)  ; Exp(value)
  %5322 = fsub fast float 1.000000e+00, %5321
  %5323 = fmul fast float %5292, %5322
  %5324 = fsub fast float -0.000000e+00, %5323
  %5325 = fdiv fast float %5324, %5295
  br label %5326

; <label>:5326                                    ; preds = %5319, %5315
  %5327 = phi float [ %5321, %5319 ], [ 1.000000e+00, %5315 ]
  %5328 = phi float [ %5325, %5319 ], [ %5292, %5315 ]
  %5329 = fcmp fast ogt float %5225, %5227
  br i1 %5329, label %5330, label %5350

; <label>:5330                                    ; preds = %5326
  %5331 = fsub fast float 1.000000e+00, %5227
  %5332 = fmul fast float %5243, %5331
  %5333 = fmul fast float %5244, %5331
  %5334 = fmul fast float %5245, %5331
  %5335 = fmul fast float %5246, %5331
  %5336 = fcmp fast une float %5335, 0.000000e+00
  br i1 %5336, label %5337, label %5388, !dx.controlflow.hints !164

; <label>:5337                                    ; preds = %5330
  %5338 = fmul fast float %5335, 0x3FF7154760000000
  %5339 = call float @dx.op.unary.f32(i32 21, float %5338)  ; Exp(value)
  %5340 = fsub fast float 1.000000e+00, %5339
  %5341 = fmul fast float %5332, %5340
  %5342 = fsub fast float -0.000000e+00, %5341
  %5343 = fmul fast float %5333, %5340
  %5344 = fsub fast float -0.000000e+00, %5343
  %5345 = fmul fast float %5334, %5340
  %5346 = fsub fast float -0.000000e+00, %5345
  %5347 = fdiv fast float %5342, %5335
  %5348 = fdiv fast float %5344, %5335
  %5349 = fdiv fast float %5346, %5335
  br label %5388

; <label>:5350                                    ; preds = %5326
  %5351 = fsub fast float 1.000000e+00, %5225
  %5352 = fmul fast float %5256, %5351
  %5353 = fmul fast float %5267, %5351
  %5354 = fmul fast float %5278, %5351
  %5355 = fmul fast float %5257, %5351
  %5356 = fmul fast float %5268, %5351
  %5357 = fmul fast float %5279, %5351
  %5358 = fcmp fast une float %5355, 0.000000e+00
  br i1 %5358, label %5359, label %5366, !dx.controlflow.hints !163

; <label>:5359                                    ; preds = %5350
  %5360 = fmul fast float %5355, 0x3FF7154760000000
  %5361 = call float @dx.op.unary.f32(i32 21, float %5360)  ; Exp(value)
  %5362 = fsub fast float 1.000000e+00, %5361
  %5363 = fmul fast float %5352, %5362
  %5364 = fsub fast float -0.000000e+00, %5363
  %5365 = fdiv fast float %5364, %5355
  br label %5366

; <label>:5366                                    ; preds = %5359, %5350
  %5367 = phi float [ %5365, %5359 ], [ %5352, %5350 ]
  %5368 = phi float [ %5361, %5359 ], [ 1.000000e+00, %5350 ]
  %5369 = fcmp fast une float %5356, 0.000000e+00
  br i1 %5369, label %5370, label %5377, !dx.controlflow.hints !163

; <label>:5370                                    ; preds = %5366
  %5371 = fmul fast float %5356, 0x3FF7154760000000
  %5372 = call float @dx.op.unary.f32(i32 21, float %5371)  ; Exp(value)
  %5373 = fsub fast float 1.000000e+00, %5372
  %5374 = fmul fast float %5353, %5373
  %5375 = fsub fast float -0.000000e+00, %5374
  %5376 = fdiv fast float %5375, %5356
  br label %5377

; <label>:5377                                    ; preds = %5370, %5366
  %5378 = phi float [ %5376, %5370 ], [ %5353, %5366 ]
  %5379 = phi float [ %5372, %5370 ], [ 1.000000e+00, %5366 ]
  %5380 = fcmp fast une float %5357, 0.000000e+00
  br i1 %5380, label %5381, label %5388, !dx.controlflow.hints !163

; <label>:5381                                    ; preds = %5377
  %5382 = fmul fast float %5357, 0x3FF7154760000000
  %5383 = call float @dx.op.unary.f32(i32 21, float %5382)  ; Exp(value)
  %5384 = fsub fast float 1.000000e+00, %5383
  %5385 = fmul fast float %5354, %5384
  %5386 = fsub fast float -0.000000e+00, %5385
  %5387 = fdiv fast float %5386, %5357
  br label %5388

; <label>:5388                                    ; preds = %5381, %5377, %5337, %5330
  %5389 = phi float [ %5387, %5381 ], [ %5349, %5337 ], [ %5334, %5330 ], [ %5354, %5377 ]
  %5390 = phi float [ %5378, %5381 ], [ %5348, %5337 ], [ %5333, %5330 ], [ %5378, %5377 ]
  %5391 = phi float [ %5367, %5381 ], [ %5347, %5337 ], [ %5332, %5330 ], [ %5367, %5377 ]
  %5392 = phi float [ %5383, %5381 ], [ %5339, %5337 ], [ 1.000000e+00, %5330 ], [ 1.000000e+00, %5377 ]
  %5393 = phi float [ %5379, %5381 ], [ %5339, %5337 ], [ 1.000000e+00, %5330 ], [ %5379, %5377 ]
  %5394 = phi float [ %5368, %5381 ], [ %5339, %5337 ], [ 1.000000e+00, %5330 ], [ %5368, %5377 ]
  %5395 = fmul fast float %5394, %5306
  %5396 = fmul fast float %5393, %5317
  %5397 = fmul fast float %5392, %5328
  %5398 = fadd fast float %5395, %5391
  %5399 = fadd fast float %5396, %5390
  %5400 = fadd fast float %5397, %5389
  %5401 = fmul fast float %5394, %5305
  %5402 = fmul fast float %5393, %5316
  %5403 = fmul fast float %5392, %5327
  br label %5404

; <label>:5404                                    ; preds = %5388, %5199
  %5405 = phi float [ %5403, %5388 ], [ %5205, %5199 ]
  %5406 = phi float [ %5402, %5388 ], [ %5204, %5199 ]
  %5407 = phi float [ %5401, %5388 ], [ %5203, %5199 ]
  %5408 = phi float [ %5400, %5388 ], [ %5202, %5199 ]
  %5409 = phi float [ %5399, %5388 ], [ %5201, %5199 ]
  %5410 = phi float [ %5398, %5388 ], [ %5200, %5199 ]
  %5411 = fmul fast float %5410, %4353
  %5412 = fmul fast float %5409, %4353
  %5413 = fmul fast float %5408, %4353
  %5414 = fmul fast float %5407, %4647
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5407, float %5406, float %5405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = call float @dx.op.dot3.f32(i32 55, float %5411, float %5412, float %5413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = select i1 %189, float %5415, float %5407
  %5418 = select i1 %189, float %5415, float %5406
  %5419 = select i1 %189, float 1.000000e+00, float %5405
  %5420 = select i1 %189, float %5416, float %5411
  %5421 = select i1 %189, float 0.000000e+00, float %5412
  %5422 = select i1 %189, float 0.000000e+00, float %5413
  %5423 = fmul fast float %5417, %4641
  %5424 = fmul fast float %5418, %4642
  %5425 = fmul fast float %5419, %4643
  %5426 = fadd fast float %5423, %5420
  %5427 = fadd fast float %5424, %5421
  %5428 = fadd fast float %5422, %5425
  %5429 = fmul fast float %5417, %4644
  %5430 = fmul fast float %5418, %4645
  %5431 = fmul fast float %5419, %4646
  %5432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.i32 %5432, 0
  %5434 = icmp eq i32 %5433, 0
  br i1 %5434, label %5802, label %5435, !dx.controlflow.hints !165

; <label>:5435                                    ; preds = %5404
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 2
  %5438 = extractvalue %dx.types.CBufRet.f32 %5436, 3
  %5439 = fmul fast float %5437, %80
  %5440 = fmul fast float %5438, %81
  %5441 = fmul fast float %5439, 2.000000e+00
  %5442 = fmul fast float %5440, 2.000000e+00
  %5443 = fsub fast float 1.000000e+00, %5441
  %5444 = fsub fast float 1.000000e+00, %5442
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5449 = fmul fast float %5443, %5446
  %5450 = fmul fast float %5443, %5447
  %5451 = fmul fast float %5443, %5448
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5456 = fmul fast float %5444, %5453
  %5457 = fmul fast float %5444, %5454
  %5458 = fmul fast float %5444, %5455
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.CBufRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.CBufRet.f32 %5459, 2
  %5463 = fadd fast float %5456, %5460
  %5464 = fadd fast float %5463, %5449
  %5465 = fadd fast float %5457, %5461
  %5466 = fadd fast float %5465, %5450
  %5467 = fadd fast float %5458, %5462
  %5468 = fadd fast float %5467, %5451
  %5469 = fmul fast float %5464, %4640
  %5470 = fmul fast float %5466, %4640
  %5471 = fmul fast float %5468, %4640
  %5472 = fmul fast float %5469, %5469
  %5473 = fmul fast float %5470, %5470
  %5474 = fadd fast float %5472, %5473
  %5475 = fmul fast float %5471, %5471
  %5476 = fadd fast float %5474, %5475
  %5477 = call float @dx.op.unary.f32(i32 24, float %5476)  ; Sqrt(value)
  %5478 = extractvalue %dx.types.CBufRet.f32 %4365, 0
  %5479 = fsub fast float %5477, %5478
  %5480 = extractvalue %dx.types.CBufRet.f32 %4365, 2
  %5481 = fmul fast float %5479, %5480
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = fadd fast float %5482, -5.000000e-01
  %5484 = fmul fast float %5483, 2.000000e+00
  %5485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5486 = extractvalue %dx.types.CBufRet.f32 %5485, 2
  %5487 = call float @dx.op.binary.f32(i32 36, float %5486, float %5484)  ; FMin(a,b)
  %5488 = fsub fast float -0.000000e+00, %5486
  %5489 = fcmp fast ogt float %5487, %5488
  br i1 %5489, label %5490, label %5802, !dx.controlflow.hints !166

; <label>:5490                                    ; preds = %5435
  %5491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.f32 %5491, 3
  %5493 = fcmp fast ogt float %5492, 0.000000e+00
  br i1 %5493, label %5494, label %5569, !dx.controlflow.hints !167

; <label>:5494                                    ; preds = %5490
  %5495 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %5496 = extractvalue %dx.types.Dimensions %5495, 0
  %5497 = sitofp i32 %5496 to float
  %5498 = extractvalue %dx.types.Dimensions %5495, 1
  %5499 = sitofp i32 %5498 to float
  %5500 = fmul fast float %5439, %5497
  %5501 = fmul fast float %5440, %5499
  %5502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5503 = extractvalue %dx.types.CBufRet.f32 %5502, 1
  %5504 = fsub fast float -0.000000e+00, %5503
  %5505 = fptoui float %5504 to i32
  %5506 = fptoui float %5500 to i32
  %5507 = fptoui float %5501 to i32
  %5508 = and i32 %5505, 31
  %5509 = lshr i32 %5506, %5508
  %5510 = lshr i32 %5507, %5508
  %5511 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %5505, i32 %5509, i32 %5510, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5512 = extractvalue %dx.types.ResRet.f32 %5511, 0
  %5513 = fcmp fast olt float %5512, -1.000000e+00
  %5514 = fcmp fast ogt float %5512, -1.000000e+00
  %5515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5516 = extractvalue %dx.types.CBufRet.f32 %5515, 1
  %5517 = select i1 %5514, float %5516, float 1.000000e+00
  %5518 = fadd fast float %5512, 1.000000e+00
  %5519 = fmul fast float %5517, %5518
  %5520 = call float @dx.op.unary.f32(i32 6, float %5519)  ; FAbs(value)
  %5521 = extractvalue %dx.types.CBufRet.f32 %5515, 3
  %5522 = fcmp fast oge float %5520, %5521
  %5523 = select i1 %5522, float 0x4197782600000000, float %5520
  %5524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5525 = extractvalue %dx.types.CBufRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.CBufRet.f32 %5524, 1
  %5527 = extractvalue %dx.types.CBufRet.f32 %5524, 2
  %5528 = select i1 %5513, float %5525, float %5446
  %5529 = select i1 %5513, float %5526, float %5447
  %5530 = select i1 %5513, float %5527, float %5448
  %5531 = fmul fast float %5528, %5443
  %5532 = fmul fast float %5529, %5443
  %5533 = fmul fast float %5530, %5443
  %5534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.CBufRet.f32 %5534, 1
  %5537 = extractvalue %dx.types.CBufRet.f32 %5534, 2
  %5538 = select i1 %5513, float %5535, float %5453
  %5539 = select i1 %5513, float %5536, float %5454
  %5540 = select i1 %5513, float %5537, float %5455
  %5541 = fmul fast float %5538, %5444
  %5542 = fmul fast float %5539, %5444
  %5543 = fmul fast float %5540, %5444
  %5544 = fadd fast float %5541, %5531
  %5545 = fadd fast float %5542, %5532
  %5546 = fadd fast float %5543, %5533
  %5547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.CBufRet.f32 %5547, 1
  %5550 = extractvalue %dx.types.CBufRet.f32 %5547, 2
  %5551 = select i1 %5513, float %5548, float %5460
  %5552 = select i1 %5513, float %5549, float %5461
  %5553 = select i1 %5513, float %5550, float %5462
  %5554 = fadd fast float %5544, %5551
  %5555 = fadd fast float %5545, %5552
  %5556 = fadd fast float %5546, %5553
  %5557 = fmul fast float %5554, %5523
  %5558 = fmul fast float %5555, %5523
  %5559 = fmul fast float %5556, %5523
  %5560 = fmul fast float %5557, %5557
  %5561 = fmul fast float %5558, %5558
  %5562 = fadd fast float %5560, %5561
  %5563 = fmul fast float %5559, %5559
  %5564 = fadd fast float %5562, %5563
  %5565 = call float @dx.op.unary.f32(i32 24, float %5564)  ; Sqrt(value)
  %5566 = fsub fast float %5565, %5478
  %5567 = fmul fast float %5566, %5480
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  br label %5569

; <label>:5569                                    ; preds = %5494, %5490
  %5570 = phi float [ %5568, %5494 ], [ 1.000000e+00, %5490 ]
  %5571 = fmul fast float %5487, 5.000000e-01
  %5572 = fadd fast float %5571, 5.000000e-01
  %5573 = call float @dx.op.unary.f32(i32 22, float %5572)  ; Frc(value)
  %5574 = call float @dx.op.unary.f32(i32 27, float %5573)  ; Round_ni(value)
  %5575 = call float @dx.op.unary.f32(i32 22, float %5573)  ; Frc(value)
  %5576 = fmul fast float %5575, 2.000000e+00
  %5577 = fadd fast float %5576, -1.000000e+00
  %5578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %5439, float %5440, float %5574, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5579 = extractvalue %dx.types.ResRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.ResRet.f32 %5578, 1
  %5581 = extractvalue %dx.types.ResRet.f32 %5578, 2
  %5582 = extractvalue %dx.types.ResRet.f32 %5578, 3
  %5583 = fadd fast float %5579, -5.000000e-01
  %5584 = fadd fast float %5581, -5.000000e-01
  %5585 = fmul fast float %5583, 0xBFD5555560000000
  %5586 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5584, float %5585)  ; FMad(a,b,c)
  %5587 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5580, float 0.000000e+00)  ; FMad(a,b,c)
  %5588 = fadd fast float %5587, %5582
  %5589 = fmul fast float %5583, -7.500000e-01
  %5590 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5584, float %5589)  ; FMad(a,b,c)
  %5591 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5580, float 0.000000e+00)  ; FMad(a,b,c)
  %5592 = fadd fast float %5591, %5582
  %5593 = call float @dx.op.binary.f32(i32 35, float %5586, float -1.000000e+00)  ; FMax(a,b)
  %5594 = call float @dx.op.binary.f32(i32 35, float %5588, float -1.000000e+00)  ; FMax(a,b)
  %5595 = call float @dx.op.binary.f32(i32 35, float %5590, float -1.000000e+00)  ; FMax(a,b)
  %5596 = call float @dx.op.binary.f32(i32 35, float %5592, float -1.000000e+00)  ; FMax(a,b)
  %5597 = call float @dx.op.binary.f32(i32 36, float %5593, float 1.000000e+00)  ; FMin(a,b)
  %5598 = call float @dx.op.binary.f32(i32 36, float %5594, float 1.000000e+00)  ; FMin(a,b)
  %5599 = call float @dx.op.binary.f32(i32 36, float %5595, float 1.000000e+00)  ; FMin(a,b)
  %5600 = call float @dx.op.binary.f32(i32 36, float %5596, float 1.000000e+00)  ; FMin(a,b)
  %5601 = fcmp fast olt float %5597, 0x3FEFFF8020000000
  br i1 %5601, label %5602, label %5717, !dx.controlflow.hints !168

; <label>:5602                                    ; preds = %5569
  %5603 = extractvalue %dx.types.CBufRet.f32 %5485, 3
  %5604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5605 = extractvalue %dx.types.CBufRet.f32 %5604, 0
  %5606 = extractvalue %dx.types.CBufRet.f32 %5604, 1
  %5607 = extractvalue %dx.types.CBufRet.f32 %5604, 2
  %5608 = extractvalue %dx.types.CBufRet.f32 %5604, 3
  %5609 = fsub fast float %5605, %5597
  %5610 = fsub fast float %5606, %5598
  %5611 = fsub fast float %5607, %5599
  %5612 = fsub fast float %5608, %5600
  %5613 = fmul fast float %5609, %5603
  %5614 = fmul fast float %5610, %5603
  %5615 = fmul fast float %5611, %5603
  %5616 = fmul fast float %5612, %5603
  %5617 = fadd fast float %5613, %5597
  %5618 = fadd fast float %5614, %5598
  %5619 = fsub fast float -0.000000e+00, %5618
  %5620 = fadd fast float %5615, %5599
  %5621 = fadd fast float %5616, %5600
  %5622 = fmul fast float %5617, %5617
  %5623 = fsub fast float %5618, %5622
  %5624 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5623)  ; FMax(a,b)
  %5625 = fdiv fast float 1.000000e+00, %5624
  %5626 = fmul fast float %5618, %5617
  %5627 = fsub fast float %5620, %5626
  %5628 = fsub fast float %5577, %5617
  %5629 = fmul fast float %5577, %5577
  %5630 = fsub fast float %5629, %5618
  %5631 = fmul fast float %5628, %5625
  %5632 = fmul fast float %5631, %5627
  %5633 = fsub fast float %5630, %5632
  %5634 = fmul fast float %5618, %5618
  %5635 = fsub fast float %5621, %5634
  %5636 = fmul fast float %5627, %5627
  %5637 = fmul fast float %5636, %5625
  %5638 = fsub fast float %5635, %5637
  %5639 = fdiv fast float %5633, %5638
  %5640 = fmul fast float %5627, %5639
  %5641 = fsub fast float %5628, %5640
  %5642 = fmul fast float %5641, %5625
  %5643 = fmul fast float %5642, %5617
  %5644 = fsub fast float 1.000000e+00, %5643
  %5645 = fmul fast float %5618, %5639
  %5646 = fsub fast float %5644, %5645
  %5647 = fmul fast float %5642, %5642
  %5648 = fmul fast float %5639, 4.000000e+00
  %5649 = fmul fast float %5648, %5646
  %5650 = fsub fast float %5647, %5649
  %5651 = call float @dx.op.unary.f32(i32 24, float %5650)  ; Sqrt(value)
  %5652 = fcmp fast oge float %5642, 0.000000e+00
  %5653 = fsub fast float -0.000000e+00, %5651
  %5654 = select i1 %5652, float %5653, float %5651
  %5655 = fsub fast float %5654, %5642
  %5656 = fdiv fast float %5655, %5639
  %5657 = fdiv fast float %5646, %5655
  %5658 = fmul fast float %5656, 5.000000e-01
  %5659 = fmul fast float %5657, 2.000000e+00
  %5660 = select i1 %5652, float %5658, float %5659
  %5661 = select i1 %5652, float %5659, float %5658
  %5662 = call float @dx.op.binary.f32(i32 35, float %5660, float %5661)  ; FMax(a,b)
  %5663 = call float @dx.op.binary.f32(i32 36, float %5660, float %5661)  ; FMin(a,b)
  %5664 = fcmp fast ogt float %5577, %5663
  br i1 %5664, label %5665, label %5675

; <label>:5665                                    ; preds = %5602
  %5666 = fsub fast float %5577, %5663
  %5667 = fsub fast float %5662, %5663
  %5668 = fmul fast float %5666, %5667
  %5669 = fmul fast float %5662, %5577
  %5670 = fadd fast float %5662, %5577
  %5671 = fmul fast float %5670, %5617
  %5672 = fadd fast float %5669, %5618
  %5673 = fsub fast float %5672, %5671
  %5674 = fdiv fast float %5673, %5668
  br label %5675

; <label>:5675                                    ; preds = %5665, %5602
  %5676 = phi float [ %5674, %5665 ], [ 0.000000e+00, %5602 ]
  %5677 = fcmp fast ogt float %5577, %5662
  %5678 = fsub fast float %5577, %5662
  br i1 %5677, label %5679, label %5689

; <label>:5679                                    ; preds = %5675
  %5680 = fsub fast float %5662, %5663
  %5681 = fmul fast float %5680, %5678
  %5682 = fmul fast float %5663, %5577
  %5683 = fadd fast float %5663, %5577
  %5684 = fmul fast float %5683, %5617
  %5685 = fsub fast float %5619, %5682
  %5686 = fadd fast float %5685, %5684
  %5687 = fdiv fast float %5686, %5681
  %5688 = fadd fast float %5687, %5676
  br label %5689

; <label>:5689                                    ; preds = %5679, %5675
  %5690 = phi float [ %5688, %5679 ], [ %5676, %5675 ]
  %5691 = fsub fast float %5577, %5663
  %5692 = fmul fast float %5691, %5678
  %5693 = fmul fast float %5663, %5662
  %5694 = fadd fast float %5663, %5662
  %5695 = fmul fast float %5694, %5617
  %5696 = fadd fast float %5693, %5618
  %5697 = fsub fast float %5696, %5695
  %5698 = fdiv fast float %5697, %5692
  %5699 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5700 = fcmp fast oeq float %4366, 0.000000e+00
  %5701 = extractvalue %dx.types.CBufRet.f32 %5485, 0
  %5702 = fcmp fast oeq float %5701, 0.000000e+00
  %5703 = or i1 %5700, %5702
  %5704 = fmul fast float %5701, 2.000000e+00
  %5705 = fadd fast float %5486, %5487
  %5706 = fdiv fast float %5705, %5704
  %5707 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5708 = fmul fast float %5707, 2.000000e+00
  %5709 = fsub fast float 3.000000e+00, %5708
  %5710 = fmul fast float %5707, %5707
  %5711 = fmul fast float %5710, %5709
  %5712 = select i1 %5703, float 1.000000e+00, float %5711
  %5713 = fmul fast float %5698, %4366
  %5714 = fadd fast float %5699, %5713
  %5715 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5716 = fmul fast float %5712, %5715
  br label %5717

; <label>:5717                                    ; preds = %5689, %5569
  %5718 = phi float [ %5716, %5689 ], [ 0.000000e+00, %5569 ]
  %5719 = fsub fast float 1.000000e+00, %5718
  %5720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %5439, float %5440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5721 = extractvalue %dx.types.ResRet.f32 %5720, 0
  %5722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.i32 %5722, 2
  %5724 = icmp eq i32 %5723, 0
  br i1 %5724, label %5730, label %5725

; <label>:5725                                    ; preds = %5717
  %5726 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  %5727 = fadd fast float %5721, -1.000000e+00
  %5728 = fmul fast float %5726, %5727
  %5729 = fadd fast float %5728, 1.000000e+00
  br label %5730

; <label>:5730                                    ; preds = %5725, %5717
  %5731 = phi float [ %5729, %5725 ], [ %5719, %5717 ]
  br i1 %5493, label %5732, label %5750

; <label>:5732                                    ; preds = %5730
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 1
  %5735 = fsub fast float %5570, %5734
  %5736 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5737 = fsub fast float %5570, %5492
  %5738 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  %5739 = fsub fast float %5736, %5738
  %5740 = fsub fast float %5572, %5738
  %5741 = fdiv fast float %5740, %5739
  %5742 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5743 = fmul fast float %5742, 2.000000e+00
  %5744 = fsub fast float 3.000000e+00, %5743
  %5745 = fsub fast float %5721, %5731
  %5746 = fmul fast float %5742, %5742
  %5747 = fmul fast float %5746, %5745
  %5748 = fmul fast float %5747, %5744
  %5749 = fadd fast float %5748, %5731
  br label %5750

; <label>:5750                                    ; preds = %5732, %5730
  %5751 = phi float [ %5749, %5732 ], [ %5731, %5730 ]
  %5752 = call float @dx.op.binary.f32(i32 35, float %5721, float %5751)  ; FMax(a,b)
  %5753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.i32 %5753, 2
  %5755 = and i32 %5754, 1
  %5756 = icmp eq i32 %5755, 0
  %5757 = fcmp fast une float %5752, 1.000000e+00
  %5758 = and i1 %5757, %5756
  br i1 %5758, label %5759, label %5778

; <label>:5759                                    ; preds = %5750
  %5760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %5439, float %5440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5761 = extractvalue %dx.types.ResRet.f32 %5760, 0
  %5762 = extractvalue %dx.types.ResRet.f32 %5760, 1
  %5763 = extractvalue %dx.types.ResRet.f32 %5760, 2
  %5764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5765 = extractvalue %dx.types.CBufRet.f32 %5764, 1
  %5766 = fmul fast float %5765, %5761
  %5767 = fmul fast float %5765, %5762
  %5768 = fmul fast float %5765, %5763
  %5769 = fcmp fast ogt float %5721, 0x3FEFFF2E40000000
  %5770 = fsub fast float 1.000000e+00, %5752
  %5771 = fsub fast float 1.000000e+00, %5721
  %5772 = fdiv fast float %5770, %5771
  %5773 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5774 = select i1 %5769, float 0.000000e+00, float %5773
  %5775 = fmul fast float %5766, %5774
  %5776 = fmul fast float %5767, %5774
  %5777 = fmul fast float %5768, %5774
  br label %5778

; <label>:5778                                    ; preds = %5759, %5750
  %5779 = phi float [ 0.000000e+00, %5750 ], [ %5775, %5759 ]
  %5780 = phi float [ 0.000000e+00, %5750 ], [ %5776, %5759 ]
  %5781 = phi float [ 0.000000e+00, %5750 ], [ %5777, %5759 ]
  %5782 = fmul fast float %5779, %4353
  %5783 = fmul fast float %5780, %4353
  %5784 = fmul fast float %5781, %4353
  %5785 = fmul fast float %5752, %5414
  %5786 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5752, float %5752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5783, float %5784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = select i1 %189, float %5786, float %5752
  %5789 = select i1 %189, float 1.000000e+00, float %5752
  %5790 = select i1 %189, float %5787, float %5782
  %5791 = select i1 %189, float 0.000000e+00, float %5783
  %5792 = select i1 %189, float 0.000000e+00, float %5784
  %5793 = fmul fast float %5788, %5426
  %5794 = fmul fast float %5788, %5427
  %5795 = fmul fast float %5789, %5428
  %5796 = fadd fast float %5793, %5790
  %5797 = fadd fast float %5794, %5791
  %5798 = fadd fast float %5792, %5795
  %5799 = fmul fast float %5788, %5429
  %5800 = fmul fast float %5788, %5430
  %5801 = fmul fast float %5789, %5431
  br label %5802

; <label>:5802                                    ; preds = %5778, %5435, %5404, %4636
  %5803 = phi float [ %4641, %4636 ], [ %5426, %5404 ], [ %5796, %5778 ], [ %5426, %5435 ]
  %5804 = phi float [ %4642, %4636 ], [ %5427, %5404 ], [ %5797, %5778 ], [ %5427, %5435 ]
  %5805 = phi float [ %4643, %4636 ], [ %5428, %5404 ], [ %5798, %5778 ], [ %5428, %5435 ]
  %5806 = phi float [ %4644, %4636 ], [ %5429, %5404 ], [ %5799, %5778 ], [ %5429, %5435 ]
  %5807 = phi float [ %4645, %4636 ], [ %5430, %5404 ], [ %5800, %5778 ], [ %5430, %5435 ]
  %5808 = phi float [ %4646, %4636 ], [ %5431, %5404 ], [ %5801, %5778 ], [ %5431, %5435 ]
  %5809 = phi float [ %4647, %4636 ], [ %5414, %5404 ], [ %5785, %5778 ], [ %5414, %5435 ]
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 2
  %5812 = extractvalue %dx.types.CBufRet.f32 %5810, 3
  %5813 = fmul fast float %5811, %80
  %5814 = fmul fast float %5812, %81
  %5815 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5816 = call float @dx.op.unary.f32(i32 7, float %5814)  ; Saturate(value)
  %5817 = select i1 %4376, i32 2, i32 0
  %5818 = or i32 %5817, 1
  %5819 = uitofp i32 %5818 to float
  %5820 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %5815, float %5816, float %5819, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5821 = extractvalue %dx.types.ResRet.f32 %5820, 0
  %5822 = extractvalue %dx.types.ResRet.f32 %5820, 1
  %5823 = extractvalue %dx.types.ResRet.f32 %5820, 2
  %5824 = extractvalue %dx.types.ResRet.f32 %5820, 3
  %5825 = add nuw nsw i32 %5817, 2
  %5826 = uitofp i32 %5825 to float
  %5827 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %5815, float %5816, float %5826, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5828 = extractvalue %dx.types.ResRet.f32 %5827, 0
  %5829 = extractvalue %dx.types.ResRet.f32 %5827, 1
  %5830 = extractvalue %dx.types.ResRet.f32 %5827, 2
  %5831 = extractvalue %dx.types.ResRet.f32 %5827, 3
  %5832 = call float @dx.op.binary.f32(i32 35, float %5822, float %5823)  ; FMax(a,b)
  %5833 = call float @dx.op.binary.f32(i32 35, float %5821, float %5832)  ; FMax(a,b)
  %5834 = call float @dx.op.binary.f32(i32 35, float %5833, float %5824)  ; FMax(a,b)
  %5835 = call float @dx.op.binary.f32(i32 36, float %5829, float %5830)  ; FMin(a,b)
  %5836 = call float @dx.op.binary.f32(i32 36, float %5828, float %5835)  ; FMin(a,b)
  %5837 = call float @dx.op.binary.f32(i32 36, float %5836, float %5831)  ; FMin(a,b)
  %5838 = fmul fast float %5834, 2.550000e+02
  %5839 = fadd fast float %5838, 0x3F70101020000000
  %5840 = fptoui float %5839 to i32
  %5841 = fmul fast float %5837, 2.550000e+02
  %5842 = fadd fast float %5841, 0x3F70101020000000
  %5843 = fptoui float %5842 to i32
  %5844 = icmp ult i32 %5840, %5843
  br i1 %5844, label %5845, label %6014

; <label>:5845                                    ; preds = %5802
  %5846 = fcmp fast ogt float %67, 9.843750e-01
  %5847 = fadd fast float %4640, -4.000000e+00
  %5848 = select i1 %5846, float -4.000000e+00, float %5847
  %5849 = call float @dx.op.binary.f32(i32 35, float %5848, float 0.000000e+00)  ; FMax(a,b)
  %5850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5850, 0
  %5852 = fadd fast float %5851, %5849
  %5853 = extractvalue %dx.types.CBufRet.f32 %5850, 2
  %5854 = fmul fast float %5852, %5853
  %5855 = call float @dx.op.unary.f32(i32 23, float %5854)  ; Log(value)
  %5856 = extractvalue %dx.types.CBufRet.f32 %5850, 3
  %5857 = fmul fast float %5856, %5855
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5860 = fmul fast float %5857, %5859
  %5861 = call float @dx.op.unary.f32(i32 7, float %5860)  ; Saturate(value)
  %5862 = uitofp i32 %5840 to float
  %5863 = uitofp i32 %5843 to float
  %5864 = fadd fast float %5862, 5.000000e-01
  %5865 = fadd fast float %5863, 5.000000e-01
  %5866 = fmul fast float %5859, %5864
  %5867 = fmul fast float %5859, %5865
  %5868 = fadd fast float %5866, 0x3F0FFB4800000000
  %5869 = fadd fast float %5867, 0xBF0FFB4800000000
  %5870 = call float @dx.op.binary.f32(i32 35, float %5861, float %5868)  ; FMax(a,b)
  %5871 = call float @dx.op.binary.f32(i32 36, float %5870, float %5869)  ; FMin(a,b)
  %5872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5873 = extractvalue %dx.types.CBufRet.f32 %5872, 1
  %5874 = extractvalue %dx.types.CBufRet.f32 %5872, 2
  %5875 = extractvalue %dx.types.CBufRet.f32 %5872, 0
  %5876 = select i1 %4376, float %5875, float 0.000000e+00
  %5877 = fmul fast float %5873, %5871
  %5878 = fadd fast float %5876, %5877
  %5879 = fadd fast float %5876, %5874
  %5880 = fsub fast float %5873, %5874
  %5881 = fadd fast float %5880, %5876
  %5882 = call float @dx.op.binary.f32(i32 35, float %5878, float %5879)  ; FMax(a,b)
  %5883 = call float @dx.op.binary.f32(i32 36, float %5882, float %5881)  ; FMin(a,b)
  %5884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %5815, float %5816, float %5883, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5885 = extractvalue %dx.types.ResRet.f32 %5884, 0
  %5886 = extractvalue %dx.types.ResRet.f32 %5884, 1
  %5887 = extractvalue %dx.types.ResRet.f32 %5884, 2
  %5888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.i32 %5888, 0
  %5890 = extractvalue %dx.types.CBufRet.i32 %5888, 1
  %5891 = uitofp i32 %5889 to float
  %5892 = uitofp i32 %5890 to float
  %5893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.CBufRet.f32 %5893, 1
  %5896 = fmul fast float %5891, %5815
  %5897 = fmul fast float %5892, %5816
  %5898 = fadd fast float %5896, -5.000000e-01
  %5899 = fadd fast float %5897, -5.000000e-01
  %5900 = call float @dx.op.unary.f32(i32 22, float %5898)  ; Frc(value)
  %5901 = call float @dx.op.unary.f32(i32 22, float %5899)  ; Frc(value)
  %5902 = fmul fast float %5900, %5900
  %5903 = fmul fast float %5902, %5900
  %5904 = fsub fast float 3.000000e+00, %5900
  %5905 = fmul fast float %5902, %5904
  %5906 = fmul fast float %5900, 3.000000e+00
  %5907 = fmul fast float %5903, 3.000000e+00
  %5908 = fmul fast float %5902, 6.000000e+00
  %5909 = fsub fast float %5907, %5908
  %5910 = fadd fast float %5909, 4.000000e+00
  %5911 = fmul fast float %5910, 0x3FC5555560000000
  %5912 = fmul fast float %5903, -3.000000e+00
  %5913 = fadd fast float %5902, %5900
  %5914 = fmul fast float %5913, 3.000000e+00
  %5915 = fadd fast float %5912, 1.000000e+00
  %5916 = fadd fast float %5915, %5914
  %5917 = fmul fast float %5903, 0x3FC5555560000000
  %5918 = fmul fast float %5901, %5901
  %5919 = fmul fast float %5918, %5901
  %5920 = fsub fast float 3.000000e+00, %5901
  %5921 = fmul fast float %5918, %5920
  %5922 = fmul fast float %5901, 3.000000e+00
  %5923 = fmul fast float %5919, 3.000000e+00
  %5924 = fmul fast float %5918, 6.000000e+00
  %5925 = fsub fast float %5923, %5924
  %5926 = fadd fast float %5925, 4.000000e+00
  %5927 = fmul fast float %5926, 0x3FC5555560000000
  %5928 = fmul fast float %5919, -3.000000e+00
  %5929 = fadd fast float %5918, %5901
  %5930 = fmul fast float %5929, 3.000000e+00
  %5931 = fadd fast float %5928, 1.000000e+00
  %5932 = fadd fast float %5931, %5930
  %5933 = fmul fast float %5919, 0x3FC5555560000000
  %5934 = fadd fast float %5900, 1.000000e+00
  %5935 = fsub fast float 1.000000e+00, %5906
  %5936 = fadd fast float %5935, %5905
  %5937 = fadd fast float %5936, %5910
  %5938 = fmul fast float %5937, 0x3FC5555560000000
  %5939 = fdiv fast float %5911, %5938
  %5940 = fsub fast float %5934, %5939
  %5941 = fsub fast float 1.000000e+00, %5900
  %5942 = fadd fast float %5916, %5903
  %5943 = fmul fast float %5942, 0x3FC5555560000000
  %5944 = fdiv fast float %5917, %5943
  %5945 = fadd fast float %5941, %5944
  %5946 = fadd fast float %5901, 1.000000e+00
  %5947 = fsub fast float 1.000000e+00, %5922
  %5948 = fadd fast float %5947, %5921
  %5949 = fadd fast float %5948, %5926
  %5950 = fmul fast float %5949, 0x3FC5555560000000
  %5951 = fdiv fast float %5927, %5950
  %5952 = fsub fast float %5946, %5951
  %5953 = fsub fast float 1.000000e+00, %5901
  %5954 = fadd fast float %5932, %5919
  %5955 = fmul fast float %5954, 0x3FC5555560000000
  %5956 = fdiv fast float %5933, %5955
  %5957 = fadd fast float %5956, %5953
  %5958 = fmul fast float %5940, %5894
  %5959 = fsub fast float %5815, %5958
  %5960 = fmul fast float %5945, %5894
  %5961 = fadd fast float %5960, %5815
  %5962 = fmul fast float %5957, %5895
  %5963 = fadd fast float %5962, %5816
  %5964 = fmul fast float %5952, %5895
  %5965 = fsub fast float %5816, %5964
  %5966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %5959, float %5965, float %5883, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5967 = extractvalue %dx.types.ResRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.ResRet.f32 %5966, 1
  %5969 = extractvalue %dx.types.ResRet.f32 %5966, 2
  %5970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %5961, float %5965, float %5883, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5971 = extractvalue %dx.types.ResRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.ResRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.ResRet.f32 %5970, 2
  %5974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %5959, float %5963, float %5883, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5975 = extractvalue %dx.types.ResRet.f32 %5974, 0
  %5976 = extractvalue %dx.types.ResRet.f32 %5974, 1
  %5977 = extractvalue %dx.types.ResRet.f32 %5974, 2
  %5978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %5961, float %5963, float %5883, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5979 = extractvalue %dx.types.ResRet.f32 %5978, 0
  %5980 = extractvalue %dx.types.ResRet.f32 %5978, 1
  %5981 = extractvalue %dx.types.ResRet.f32 %5978, 2
  %5982 = fsub fast float %5975, %5967
  %5983 = fsub fast float %5976, %5968
  %5984 = fsub fast float %5977, %5969
  %5985 = fmul fast float %5982, %5955
  %5986 = fmul fast float %5983, %5955
  %5987 = fmul fast float %5984, %5955
  %5988 = fadd fast float %5985, %5967
  %5989 = fadd fast float %5986, %5968
  %5990 = fadd fast float %5987, %5969
  %5991 = fsub fast float %5979, %5971
  %5992 = fsub fast float %5980, %5972
  %5993 = fsub fast float %5981, %5973
  %5994 = fmul fast float %5991, %5955
  %5995 = fmul fast float %5992, %5955
  %5996 = fmul fast float %5993, %5955
  %5997 = fsub fast float %5971, %5988
  %5998 = fadd fast float %5997, %5994
  %5999 = fsub fast float %5972, %5989
  %6000 = fadd fast float %5999, %5995
  %6001 = fsub fast float %5973, %5990
  %6002 = fadd fast float %6001, %5996
  %6003 = fmul fast float %5998, %5943
  %6004 = fmul fast float %6000, %5943
  %6005 = fmul fast float %6002, %5943
  %6006 = fadd fast float %6003, %5988
  %6007 = fadd fast float %6004, %5989
  %6008 = fadd fast float %6005, %5990
  %6009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6010 = extractvalue %dx.types.CBufRet.f32 %6009, 1
  %6011 = fmul fast float %6006, %6010
  %6012 = fmul fast float %6007, %6010
  %6013 = fmul fast float %6008, %6010
  br label %6014

; <label>:6014                                    ; preds = %5845, %5802
  %6015 = phi float [ %5885, %5845 ], [ 1.000000e+00, %5802 ]
  %6016 = phi float [ %5886, %5845 ], [ 1.000000e+00, %5802 ]
  %6017 = phi float [ %5887, %5845 ], [ 1.000000e+00, %5802 ]
  %6018 = phi float [ %6011, %5845 ], [ 0.000000e+00, %5802 ]
  %6019 = phi float [ %6012, %5845 ], [ 0.000000e+00, %5802 ]
  %6020 = phi float [ %6013, %5845 ], [ 0.000000e+00, %5802 ]
  %6021 = fmul fast float %6018, %4353
  %6022 = fmul fast float %6019, %4353
  %6023 = fmul fast float %6020, %4353
  %6024 = fmul fast float %6015, %5809
  %6025 = call float @dx.op.dot3.f32(i32 55, float %6015, float %6016, float %6017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6026 = call float @dx.op.dot3.f32(i32 55, float %6021, float %6022, float %6023, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6027 = select i1 %189, float %6025, float %6015
  %6028 = select i1 %189, float %6025, float %6016
  %6029 = select i1 %189, float 1.000000e+00, float %6017
  %6030 = select i1 %189, float %6026, float %6021
  %6031 = select i1 %189, float 0.000000e+00, float %6022
  %6032 = select i1 %189, float 0.000000e+00, float %6023
  %6033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6034 = extractvalue %dx.types.CBufRet.i32 %6033, 3
  %6035 = and i32 %6034, 3
  %6036 = icmp ne i32 %6035, 0
  %6037 = and i32 %6034, 4
  %6038 = icmp ne i32 %6037, 0
  %6039 = and i1 %6036, %6038
  %6040 = and i1 %189, %6039
  br i1 %6040, label %6041, label %6047

; <label>:6041                                    ; preds = %6014
  %6042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6043 = extractvalue %dx.types.CBufRet.f32 %6042, 1
  %6044 = fadd fast float %6024, -1.000000e+00
  %6045 = fmul fast float %6043, %6044
  %6046 = fadd fast float %6045, 1.000000e+00
  br label %6047

; <label>:6047                                    ; preds = %6041, %6014
  %6048 = phi float [ %6046, %6041 ], [ %6024, %6014 ]
  %6049 = fadd fast float %5806, %5803
  %6050 = fmul fast float %6027, %6049
  %6051 = fadd fast float %6050, %6030
  %6052 = fadd fast float %5807, %5804
  %6053 = fmul fast float %6028, %6052
  %6054 = fadd fast float %6053, %6031
  %6055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.f32 %6055, 0
  br i1 %189, label %6057, label %6081

; <label>:6057                                    ; preds = %6047
  %6058 = fadd fast float %6051, %6054
  %6059 = fmul fast float %6056, %6058
  %6060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.f32 %6060, 3
  %6062 = extractvalue %dx.types.CBufRet.f32 %4358, 1
  %6063 = fsub fast float %4363, %4357
  %6064 = fadd fast float %6063, %4364
  %6065 = fsub fast float %6064, %6062
  %6066 = extractvalue %dx.types.CBufRet.f32 %4358, 2
  %6067 = fmul fast float %6065, %6066
  %6068 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  %6069 = fsub fast float %6068, %6061
  %6070 = fmul fast float %6069, %6048
  %6071 = fadd fast float %6070, %6061
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6074 = fsub fast float %6071, %6073
  %6075 = fmul fast float %6074, 1.000000e+01
  %6076 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6077 = fsub fast float %1432, %4353
  %6078 = fmul fast float %6076, %6077
  %6079 = fadd fast float %6078, %4353
  %6080 = fmul fast float %6079, %6071
  br label %6105

; <label>:6081                                    ; preds = %6047
  %6082 = fadd fast float %5808, %5805
  %6083 = fmul fast float %6029, %6082
  %6084 = fadd fast float %6083, %6032
  %6085 = fmul fast float %6056, %6051
  %6086 = fmul fast float %6056, %6054
  %6087 = fmul fast float %6056, %6084
  %6088 = call float @dx.op.binary.f32(i32 35, float %6086, float %6087)  ; FMax(a,b)
  %6089 = call float @dx.op.binary.f32(i32 35, float %6085, float %6088)  ; FMax(a,b)
  %6090 = call float @dx.op.binary.f32(i32 35, float %6089, float %4353)  ; FMax(a,b)
  %6091 = fcmp fast ugt float %6090, 0x3F10000000000000
  br i1 %6091, label %6093, label %6092

; <label>:6092                                    ; preds = %6081
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6093

; <label>:6093                                    ; preds = %6092, %6081
  %6094 = add i32 %55, 116
  %6095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %6094, i32 undef)  ; BufferLoad(srv,index,wot)
  %6096 = extractvalue %dx.types.ResRet.i32 %6095, 0
  %6097 = and i32 %6096, 32
  %6098 = icmp eq i32 %6097, 0
  br i1 %6098, label %6105, label %6099

; <label>:6099                                    ; preds = %6093
  %6100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6102 = fmul fast float %6101, 0x3FE99999A0000000
  %6103 = fadd fast float %6101, %6085
  %6104 = fadd fast float %6102, %6087
  br label %6105

; <label>:6105                                    ; preds = %6099, %6093, %6057
  %6106 = phi float [ %6059, %6057 ], [ %6103, %6099 ], [ %6085, %6093 ]
  %6107 = phi float [ %6080, %6057 ], [ %6086, %6099 ], [ %6086, %6093 ]
  %6108 = phi float [ %6079, %6057 ], [ %6104, %6099 ], [ %6087, %6093 ]
  %6109 = phi float [ %6079, %6057 ], [ %4353, %6099 ], [ %4353, %6093 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6110 = call float @dx.op.binary.f32(i32 36, float %6106, float 3.225500e+04)  ; FMin(a,b)
  %6111 = call float @dx.op.binary.f32(i32 36, float %6107, float 3.225500e+04)  ; FMin(a,b)
  %6112 = call float @dx.op.binary.f32(i32 36, float %6108, float 3.225500e+04)  ; FMin(a,b)
  %6113 = call float @dx.op.binary.f32(i32 36, float %6109, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6110)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6111)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6112)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6113)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!68}
!dx.entryPoints = !{!69}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !57, !60}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !32}
!32 = !{i32 0, i32 5}
!33 = !{i32 25, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !42}
!42 = !{i32 0, i32 14}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!51 = !{i32 42, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !42}
!55 = !{i32 46, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!57 = !{!58, !59}
!58 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !87}
!70 = !{!71, !85, null}
!71 = !{!72, !75, !77, !78, !80, !81, !83, !84}
!72 = !{i32 0, !"SV_Position", i8 9, i8 3, !73, i8 4, i32 1, i8 4, i32 0, i8 0, !74}
!73 = !{i32 0}
!74 = !{i32 3, i32 15}
!75 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 1, i8 0, !76}
!76 = !{i32 3, i32 3}
!77 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 2, i8 0, null}
!78 = !{i32 3, !"NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 3, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 4, !"TANGENT", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 4, i8 0, !74}
!81 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !73, i8 1, i32 1, i8 1, i32 5, i8 0, !82}
!82 = !{i32 3, i32 1}
!83 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !73, i8 1, i32 1, i8 1, i32 5, i8 1, !82}
!84 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!85 = !{!86}
!86 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!87 = !{i32 0, i64 16}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = !{!94, !94, i64 0}
!94 = !{!"int", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !{!98, !100, !102, !104}
!98 = distinct !{!98, !99, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!99 = distinct !{!99, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!100 = distinct !{!100, !101, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!101 = distinct !{!101, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!102 = distinct !{!102, !103, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!103 = distinct !{!103, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!104 = distinct !{!104, !105, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!105 = distinct !{!105, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = !{!108, !108, i64 0}
!108 = !{!"float", !95, i64 0}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = distinct !{!111, !110}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = !{!123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!123 = distinct !{!123, !124, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!124 = distinct !{!124, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!125 = distinct !{!125, !126, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!126 = distinct !{!126, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!127 = distinct !{!127, !126, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!128 = distinct !{!128, !129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!129 = distinct !{!129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!130 = distinct !{!130, !129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!131 = distinct !{!131, !129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!132 = distinct !{!132, !133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!137 = distinct !{!137, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"\01?sort@@YAXAIAM00@Z: %c"}
!140 = distinct !{!140, !"\01?sort@@YAXAIAM00@Z"}
!141 = !{!142, !143, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!142 = distinct !{!142, !140, !"\01?sort@@YAXAIAM00@Z: %a"}
!143 = distinct !{!143, !140, !"\01?sort@@YAXAIAM00@Z: %b"}
!144 = !{!143}
!145 = !{!142, !139, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!146 = !{!142}
!147 = !{!143, !139, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!148 = !{!149}
!149 = distinct !{!149, !150, !"\01?sort@@YAXAIAM00@Z: %c"}
!150 = distinct !{!150, !"\01?sort@@YAXAIAM00@Z"}
!151 = !{!152, !153, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!152 = distinct !{!152, !150, !"\01?sort@@YAXAIAM00@Z: %a"}
!153 = distinct !{!153, !150, !"\01?sort@@YAXAIAM00@Z: %b"}
!154 = !{!153}
!155 = !{!152, !149, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!156 = !{!152}
!157 = !{!153, !149, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 2}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}

