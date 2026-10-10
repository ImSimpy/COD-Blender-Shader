;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
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
; shader hash: 4c9408f3d2e53257a0b8d8519d2cf2d8
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
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32     2darray      T5     t16,space2     1
;                                   texture     f32          3d      T6     t15,space2     1
;                                   texture     f32          2d      T7     t14,space2     1
;                                   texture     f32          2d      T8     t13,space2     1
;                                   texture     u32          2d      T9     t17,space2     1
;                                   texture     f32          3d     T10     t18,space2     1
;                                   texture     f32     2darray     T11     t23,space2     1
;                                   texture     f32     2darray     T12     t24,space2     1
;                                   texture     f32     2darray     T13     t25,space2     1
;                                   texture    byte         r/o     T14     t66,space1     1
;                                   texture    byte         r/o     T15     t16,space1     1
;                                   texture    byte         r/o     T16     t17,space1     1
;                                   texture     f32          2d     T17     t69,space2     1
;                                   texture    byte         r/o     T18     t49,space1     1
;                                   texture    byte         r/o     T19     t50,space1     1
;                                   texture    byte         r/o     T20     t51,space1     1
;                                   texture    byte         r/o     T21     t52,space1     1
;                                   texture     f32          2d     T22             t0     1
;                                   texture     f32          2d     T23     t58,space2     1
;                                   texture     f32          2d     T24     t57,space2     1
;                                   texture    byte         r/o     T25     t69,space1     1
;                                   texture     u32          2d     T26     t56,space2     1
;                                   texture     f32          2d     T27     t34,space2     1
;                                   texture     f32          2d     T28      t2,space2     1
;                                   texture     f32          2d     T29      t3,space2     1
;                                   texture     f32          2d     T30      t4,space2     1
;                                   textureunorm_f32     2darray     T31     t80,space2     1
;                                   texture    byte         r/o     T32     t67,space1     1
;                                   texture     f32          2d     T33      t7,space2     1
;                                   texture     f32          2d     T34      t6,space2     1
;                                   texture     f32          2d     T35      t5,space2     1
;                                   texture     f32          2d     T36     t38,space2     1
;                                   texture     f32          1d     T37     t30,space2     1
;                                   texture     f32          3d     T38     t44,space2     1
;                                   texture     f32          3d     T39     t45,space2     1
;                                   texture     f32     2darray     T40     t47,space2     1
;                                   textureunorm_f32     2darray     T41     t85,space2     1
;                                   texture     f32          2d     T42     t83,space2     1
;                                   texture     f32          2d     T43     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = alloca [4 x i32], align 4
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = alloca [12 x float], align 4
  %70 = alloca [12 x float], align 4
  %71 = alloca [3 x float], align 4
  %72 = alloca [3 x float], align 4
  %73 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = fmul fast float %76, %65
  %78 = fmul fast float %76, %66
  %79 = fmul fast float %58, %55
  %80 = fmul fast float %59, %54
  %81 = fsub fast float %79, %80
  %82 = fmul fast float %59, %53
  %83 = fmul fast float %57, %55
  %84 = fsub fast float %82, %83
  %85 = fmul fast float %57, %54
  %86 = fmul fast float %58, %53
  %87 = fsub fast float %85, %86
  %88 = fmul fast float %81, %56
  %89 = fmul fast float %84, %56
  %90 = fmul fast float %87, %56
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 3
  %94 = fmul fast float %92, 2.000000e+00
  %95 = fmul fast float %94, %77
  %96 = fmul fast float %93, 2.000000e+00
  %97 = fmul fast float %96, %78
  %98 = fsub fast float 1.000000e+00, %95
  %99 = fsub fast float 1.000000e+00, %97
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fmul fast float %98, %101
  %105 = fmul fast float %98, %102
  %106 = fmul fast float %98, %103
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fmul fast float %99, %108
  %112 = fmul fast float %99, %109
  %113 = fmul fast float %99, %110
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = fadd fast float %111, %115
  %119 = fadd fast float %118, %104
  %120 = fadd fast float %112, %116
  %121 = fadd fast float %120, %105
  %122 = fadd fast float %113, %117
  %123 = fadd fast float %122, %106
  %124 = fmul fast float %119, %68
  %125 = fmul fast float %121, %68
  %126 = fmul fast float %123, %68
  %127 = fadd fast float %62, 5.000000e-01
  %128 = fptoui float %127 to i32
  %129 = shl i32 %128, 3
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = or i32 %129, 4
  %133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.i32 %133, 0
  %135 = and i32 %131, 8191
  %136 = lshr i32 %131, 13
  %137 = and i32 %136, 8191
  %138 = lshr i32 %131, 26
  %139 = and i32 %134, 65535
  %140 = lshr i32 %134, 16
  %141 = uitofp i32 %139 to float
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %144 = uitofp i32 %140 to float
  %145 = uitofp i32 %135 to float
  %146 = fmul fast float %143, %145
  %147 = uitofp i32 %137 to float
  %148 = fmul fast float %143, %147
  %149 = fmul fast float %143, %60
  %150 = fmul fast float %149, %141
  %151 = fmul fast float %143, %61
  %152 = fmul fast float %151, %144
  %153 = fadd fast float %150, %146
  %154 = fadd fast float %148, %152
  %155 = uitofp i32 %138 to float
  %156 = add i32 %52, 120
  %157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  %159 = extractvalue %dx.types.ResRet.i32 %157, 1
  %160 = extractvalue %dx.types.ResRet.i32 %157, 2
  %161 = extractvalue %dx.types.ResRet.i32 %157, 3
  %162 = bitcast i32 %158 to float
  %163 = bitcast i32 %159 to float
  %164 = bitcast i32 %160 to float
  %165 = bitcast i32 %161 to float
  %166 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %167 = call float @dx.op.unary.f32(i32 25, float %166)  ; Rsqrt(value)
  %168 = fmul fast float %167, %57
  %169 = fmul fast float %167, %58
  %170 = fmul fast float %167, %59
  %171 = call float @dx.op.dot3.f32(i32 55, float %124, float %125, float %126, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %172 = call float @dx.op.unary.f32(i32 25, float %171)  ; Rsqrt(value)
  %173 = fmul fast float %172, %124
  %174 = fmul fast float %172, %125
  %175 = fmul fast float %172, %126
  %176 = call float @dx.op.dot3.f32(i32 55, float %173, float %174, float %175, float %168, float %169, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %177 = fmul fast float %176, %176
  %178 = fmul fast float %177, %164
  %179 = fadd fast float %178, %165
  %180 = call float @dx.op.unary.f32(i32 7, float %179)  ; Saturate(value)
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %183 = fmul fast float %182, %171
  %184 = fsub fast float %162, %183
  %185 = fmul fast float %184, %163
  %186 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %187 = fmul fast float %186, %180
  %188 = fmul fast float %77, 5.000000e-01
  %189 = fmul fast float %78, 5.000000e-01
  %190 = fptosi float %188 to i32
  %191 = fptosi float %189 to i32
  %192 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %190, i32 %191, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = lshr i32 %193, 18
  %195 = uitofp i32 %194 to float
  %196 = fmul fast float %195, 0x3F4C00EBA0000000
  %197 = call float @dx.op.unary.f32(i32 21, float %196)  ; Exp(value)
  %198 = fadd fast float %197, -1.000000e+00
  %199 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %200 = extractvalue %dx.types.Dimensions %199, 0
  %201 = sitofp i32 %200 to float
  %202 = extractvalue %dx.types.Dimensions %199, 1
  %203 = sitofp i32 %202 to float
  %204 = fcmp fast oge float %188, %201
  %205 = fcmp fast oge float %189, %203
  %206 = or i1 %204, %205
  %207 = select i1 %206, float 0x4197782600000000, float %198
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %210 = extractvalue %dx.types.CBufRet.f32 %208, 3
  %211 = fmul fast float %209, %77
  %212 = fmul fast float %210, %78
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = and i32 %214, 114688
  %216 = icmp ne i32 %215, 0
  %217 = select i1 %216, float %211, float 0.000000e+00
  %218 = select i1 %216, float %212, float 0.000000e+00
  %219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %217, float %218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = fmul fast float %220, 2.550000e+02
  %222 = fptoui float %221 to i32
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.i32 %224, 3
  %226 = and i32 %225, 3
  %227 = icmp ne i32 %226, 0
  %228 = and i32 %225, 4
  %229 = icmp ne i32 %228, 0
  %230 = and i1 %227, %229
  br i1 %230, label %231, label %242

; <label>:231                                     ; preds = %0
  %232 = extractvalue %dx.types.CBufRet.f32 %223, 3
  %233 = fmul fast float %232, %78
  %234 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %235 = fmul fast float %234, %77
  %236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %45, float %235, float %233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fsub fast float 1.000000e+00, %237
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = fcmp fast olt float %238, %240
  br label %245

; <label>:242                                     ; preds = %0
  %243 = icmp eq i32 %228, 0
  %244 = and i1 %227, %243
  br label %245

; <label>:245                                     ; preds = %242, %231
  %246 = phi i1 [ %241, %231 ], [ %244, %242 ]
  %247 = add i32 %52, 60
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = shl i32 %249, 4
  %251 = and i32 %250, 32752
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %249, 7
  %254 = and i32 %253, 32752
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %249, 22
  %257 = shl nuw nsw i32 %256, 5
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = add i32 %52, 72
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %261, 8
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = lshr i32 %261, 16
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = add i32 %52, 36
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = add i32 %52, 96
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 65535
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %282, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = fmul fast float %284, 0x3F50624DE0000000
  %288 = fmul fast float %286, 0x3F50624DE0000000
  %289 = add i32 %52, 108
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 2
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %302, label %294

; <label>:294                                     ; preds = %245
  %295 = add i32 %52, 200
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = add i32 %297, 0
  %299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %299, %dx.types.Handle %74, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 3
  br label %302

; <label>:302                                     ; preds = %294, %245
  %303 = phi float [ 1.000000e+00, %245 ], [ %301, %294 ]
  %304 = add i32 %52, 24
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = add i32 %52, 28
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = or i32 %309, %306
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %1064, label %312

; <label>:312                                     ; preds = %302
  %313 = add i32 %52, 92
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = lshr i32 %315, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = fmul fast float %317, 0x3F50624DE0000000
  %319 = add i32 %52, 40
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = lshr i32 %321, 16
  %323 = and i32 %322, 255
  %324 = lshr i32 %321, 24
  %325 = add i32 %52, 100
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 65535
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %327, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = add i32 %52, 32
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = lshr i32 %334, 22
  %336 = shl nuw nsw i32 %335, 5
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = shl i32 %334, 4
  %339 = and i32 %338, 32752
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %334, 7
  %342 = and i32 %341, 32752
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 3
  %346 = fmul fast float %345, 1.000000e+03
  %347 = fmul fast float %287, %346
  %348 = call float @dx.op.unary.f32(i32 22, float %347)  ; Frc(value)
  %349 = fadd fast float %348, %277
  %350 = fmul fast float %288, %346
  %351 = call float @dx.op.unary.f32(i32 22, float %350)  ; Frc(value)
  %352 = fadd fast float %351, %279
  %353 = fmul fast float %318, %346
  %354 = call float @dx.op.unary.f32(i32 22, float %353)  ; Frc(value)
  %355 = fmul fast float %354, 0x401921FB60000000
  %356 = fadd fast float %355, %337
  %357 = call float @dx.op.unary.f32(i32 13, float %356)  ; Sin(value)
  %358 = call float @dx.op.unary.f32(i32 12, float %356)  ; Cos(value)
  %359 = fsub fast float -0.000000e+00, %357
  %360 = fadd fast float %63, -5.000000e-01
  %361 = fadd fast float %64, -5.000000e-01
  %362 = fmul fast float %329, %360
  %363 = fmul fast float %331, %361
  %364 = fadd fast float %362, 5.000000e-01
  %365 = fadd fast float %363, 5.000000e-01
  %366 = fmul fast float %340, %364
  %367 = fmul fast float %343, %365
  %368 = fmul fast float %358, %366
  %369 = call float @dx.op.tertiary.f32(i32 46, float %359, float %367, float %368)  ; FMad(a,b,c)
  %370 = fmul fast float %357, %366
  %371 = call float @dx.op.tertiary.f32(i32 46, float %358, float %367, float %370)  ; FMad(a,b,c)
  %372 = fadd fast float %349, %369
  %373 = fadd fast float %352, %371
  %374 = icmp ugt i32 %323, 1
  %375 = icmp ugt i32 %321, 33554431
  %376 = or i1 %375, %374
  br i1 %376, label %377, label %402

; <label>:377                                     ; preds = %312
  %378 = add i32 %52, 84
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = lshr i32 %380, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = fmul fast float %345, %382
  %384 = call float @dx.op.unary.f32(i32 22, float %383)  ; Frc(value)
  %385 = mul nuw nsw i32 %323, %324
  %386 = uitofp i32 %385 to float
  %387 = fmul fast float %384, %386
  %388 = call float @dx.op.unary.f32(i32 27, float %387)  ; Round_ni(value)
  %389 = fptoui float %388 to i32
  %390 = urem i32 %389, %323
  %391 = udiv i32 %389, %324
  %392 = call float @dx.op.unary.f32(i32 22, float %372)  ; Frc(value)
  %393 = call float @dx.op.unary.f32(i32 22, float %373)  ; Frc(value)
  %394 = uitofp i32 %390 to float
  %395 = uitofp i32 %391 to float
  %396 = fadd fast float %392, %394
  %397 = fadd fast float %393, %395
  %398 = uitofp i32 %323 to float
  %399 = uitofp i32 %324 to float
  %400 = fdiv fast float %396, %398
  %401 = fdiv fast float %397, %399
  br label %402

; <label>:402                                     ; preds = %377, %312
  %403 = phi float [ %400, %377 ], [ %372, %312 ]
  %404 = phi float [ %401, %377 ], [ %373, %312 ]
  %405 = and i32 %306, 16777216
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %516, label %407

; <label>:407                                     ; preds = %402
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %411 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %412 = fadd fast float %409, %124
  %413 = fadd fast float %410, %125
  %414 = fadd fast float %411, %126
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %417 = call float @dx.op.unary.f32(i32 7, float %416)  ; Saturate(value)
  %418 = icmp eq i32 %51, 65535
  br i1 %418, label %513, label %419

; <label>:419                                     ; preds = %407
  %420 = lshr i32 %51, 1
  %421 = shl i32 %420, 2
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %51, 1
  %425 = icmp ne i32 %424, 0
  %426 = lshr i32 %423, 16
  %427 = and i32 %423, 65535
  %428 = select i1 %425, i32 %426, i32 %427
  %429 = icmp eq i32 %428, 65535
  br i1 %429, label %509, label %430

; <label>:430                                     ; preds = %419
  %431 = mul nuw nsw i32 %428, 40
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = add nuw nsw i32 %431, 12
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = add nuw nsw i32 %431, 24
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = add nuw nsw i32 %431, 36
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = fsub fast float %412, %433
  %450 = fsub fast float %413, %434
  %451 = fsub fast float %414, %435
  %452 = fmul fast float %448, %449
  %453 = fmul fast float %448, %450
  %454 = fmul fast float %448, %451
  %455 = call float @dx.op.unary.f32(i32 27, float %452)  ; Round_ni(value)
  %456 = call float @dx.op.unary.f32(i32 27, float %453)  ; Round_ni(value)
  %457 = call float @dx.op.unary.f32(i32 27, float %454)  ; Round_ni(value)
  %458 = fadd fast float %455, 5.000000e-01
  %459 = fadd fast float %456, 5.000000e-01
  %460 = fadd fast float %457, 5.000000e-01
  %461 = fmul fast float %458, %438
  %462 = fmul fast float %459, %439
  %463 = fmul fast float %460, %440
  %464 = shl i32 %51, 2
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = add i32 %466, 0
  %468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %469 = call float @dx.op.unary.f32(i32 22, float %461)  ; Frc(value)
  %470 = call float @dx.op.unary.f32(i32 22, float %462)  ; Frc(value)
  %471 = call float @dx.op.unary.f32(i32 22, float %463)  ; Frc(value)
  %472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %468, %dx.types.Handle %46, float %469, float %470, float %471, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = fmul fast float %473, 1.023000e+03
  %477 = fmul fast float %474, 1.023000e+03
  %478 = fmul fast float %475, 1.023000e+03
  %479 = fadd fast float %476, 5.000000e-01
  %480 = fadd fast float %477, 5.000000e-01
  %481 = fadd fast float %478, 5.000000e-01
  %482 = call float @dx.op.unary.f32(i32 27, float %479)  ; Round_ni(value)
  %483 = call float @dx.op.unary.f32(i32 27, float %480)  ; Round_ni(value)
  %484 = call float @dx.op.unary.f32(i32 27, float %481)  ; Round_ni(value)
  %485 = fsub fast float %452, %455
  %486 = fsub fast float %453, %456
  %487 = fsub fast float %454, %457
  %488 = fmul fast float %485, 7.500000e-01
  %489 = fmul fast float %486, 7.500000e-01
  %490 = fmul fast float %487, 7.500000e-01
  %491 = fadd fast float %455, 1.250000e-01
  %492 = fadd fast float %491, %488
  %493 = fadd fast float %492, %482
  %494 = fadd fast float %456, 1.250000e-01
  %495 = fadd fast float %494, %489
  %496 = fadd fast float %495, %483
  %497 = fadd fast float %457, 1.250000e-01
  %498 = fadd fast float %497, %490
  %499 = fadd fast float %498, %484
  %500 = fmul fast float %493, %443
  %501 = fmul fast float %496, %444
  %502 = fmul fast float %499, %445
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = add i32 %504, 0
  %506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %506, %dx.types.Handle %44, float %500, float %501, float %502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  br label %509

; <label>:509                                     ; preds = %430, %419
  %510 = phi float [ %508, %430 ], [ -1.000000e+00, %419 ]
  %511 = fadd fast float %510, %417
  %512 = call float @dx.op.unary.f32(i32 7, float %511)  ; Saturate(value)
  br label %513

; <label>:513                                     ; preds = %509, %407
  %514 = phi float [ %512, %509 ], [ %417, %407 ]
  %515 = fmul fast float %514, %303
  br label %516

; <label>:516                                     ; preds = %513, %402
  %517 = phi float [ %515, %513 ], [ %303, %402 ]
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = and i32 %519, 256
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %568, label %522

; <label>:522                                     ; preds = %516
  %523 = add i32 %52, 184
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = add i32 %525, 0
  %527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %528 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %527, %dx.types.Handle %74, float %403, float %404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = add i32 %52, 52
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = shl i32 %532, 4
  %534 = and i32 %533, 32752
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = lshr i32 %532, 7
  %537 = and i32 %536, 32752
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = fsub fast float 1.000000e+00, %517
  %540 = call float @dx.op.binary.f32(i32 35, float %539, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %541 = bitcast float %517 to i32
  %542 = sitofp i32 %541 to float
  %543 = fadd fast float %542, 0xC1CFBF8940000000
  %544 = fmul fast float %538, %543
  %545 = fadd fast float %544, 0x41CFBF8940000000
  %546 = fptosi float %545 to i32
  %547 = bitcast i32 %546 to float
  %548 = bitcast float %540 to i32
  %549 = sitofp i32 %548 to float
  %550 = fadd fast float %549, 0xC1CFBF8940000000
  %551 = fmul fast float %550, %538
  %552 = fadd fast float %551, 0x41CFBF8940000000
  %553 = fptosi float %552 to i32
  %554 = bitcast i32 %553 to float
  %555 = fmul fast float %547, %535
  %556 = fmul fast float %554, %535
  %557 = fsub fast float %540, %555
  %558 = fadd fast float %556, %540
  %559 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %560 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %561 = fsub fast float %529, %559
  %562 = fsub fast float %560, %559
  %563 = bitcast float %562 to i32
  %564 = sub nsw i32 2129859010, %563
  %565 = bitcast i32 %564 to float
  %566 = fmul fast float %565, %561
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  br label %568

; <label>:568                                     ; preds = %522, %516
  %569 = phi float [ %567, %522 ], [ %517, %516 ]
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = and i32 %571, 128
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %590, label %574

; <label>:574                                     ; preds = %568
  %575 = add i32 %52, 180
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = add i32 %577, 0
  %579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %580 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %579, %dx.types.Handle %74, float %403, float %404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = and i32 %583, 524288
  %585 = icmp ne i32 %584, 0
  %586 = fcmp fast ogt float %581, 0x3FE0101020000000
  %587 = select i1 %586, float 1.000000e+00, float 0.000000e+00
  %588 = select i1 %585, float %587, float %581
  %589 = fmul fast float %588, %569
  br label %590

; <label>:590                                     ; preds = %574, %568
  %591 = phi float [ %589, %574 ], [ %569, %568 ]
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %593, 16
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %794, label %596

; <label>:596                                     ; preds = %590
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = add i32 %52, 168
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = add i32 %601, 0
  %603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %602, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %604 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %603, %dx.types.Handle %73, float %403, float %404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = extractvalue %dx.types.ResRet.f32 %604, 3
  %609 = and i32 %598, 255
  %610 = uitofp i32 %609 to float
  %611 = lshr i32 %598, 8
  %612 = and i32 %611, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %608, %610
  %615 = fadd fast float %614, %613
  %616 = fmul fast float %615, 0x3F70101000000000
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = and i32 %618, 512
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %629, label %621

; <label>:621                                     ; preds = %596
  %622 = add i32 %52, 188
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = add i32 %624, 0
  %626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %625, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %627 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %626, %dx.types.Handle %74, float %403, float %404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  br label %629

; <label>:629                                     ; preds = %621, %596
  %630 = phi float [ %628, %621 ], [ 1.000000e+00, %596 ]
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = and i32 %632, 33554432
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %741, label %635

; <label>:635                                     ; preds = %629
  %636 = add i32 %52, 80
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 65535
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = lshr i32 %638, 16
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = add i32 %52, 84
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %645, 65535
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = lshr i32 %649, 24
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3F70101020000000
  %653 = and i32 %649, 255
  %654 = uitofp i32 %653 to float
  %655 = fmul fast float %654, 0x3F70101020000000
  %656 = lshr i32 %649, 8
  %657 = and i32 %656, 255
  %658 = uitofp i32 %657 to float
  %659 = fmul fast float %658, 0x3F70101020000000
  %660 = lshr i32 %649, 16
  %661 = and i32 %660, 255
  %662 = uitofp i32 %661 to float
  %663 = fmul fast float %662, 0x3F70101020000000
  %664 = add i32 %52, 76
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = lshr i32 %666, 24
  %668 = uitofp i32 %667 to float
  %669 = fmul fast float %668, 0x3F70101020000000
  %670 = and i32 %666, 255
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F70101020000000
  %673 = lshr i32 %666, 8
  %674 = and i32 %673, 255
  %675 = uitofp i32 %674 to float
  %676 = fmul fast float %675, 0x3F70101020000000
  %677 = lshr i32 %666, 16
  %678 = and i32 %677, 255
  %679 = uitofp i32 %678 to float
  %680 = fmul fast float %679, 0x3F70101020000000
  %681 = bitcast float %605 to i32
  %682 = ashr i32 %681, 1
  %683 = sub nsw i32 1597463174, %682
  %684 = bitcast i32 %683 to float
  %685 = fmul fast float %605, 5.000000e-01
  %686 = fmul fast float %684, %684
  %687 = fmul fast float %686, %685
  %688 = fsub fast float 1.500000e+00, %687
  %689 = fmul fast float %684, %605
  %690 = fmul fast float %689, %688
  %691 = bitcast float %606 to i32
  %692 = ashr i32 %691, 1
  %693 = sub nsw i32 1597463174, %692
  %694 = bitcast i32 %693 to float
  %695 = fmul fast float %606, 5.000000e-01
  %696 = fmul fast float %694, %694
  %697 = fmul fast float %696, %695
  %698 = fsub fast float 1.500000e+00, %697
  %699 = fmul fast float %694, %606
  %700 = fmul fast float %699, %698
  %701 = bitcast float %607 to i32
  %702 = ashr i32 %701, 1
  %703 = sub nsw i32 1597463174, %702
  %704 = bitcast i32 %703 to float
  %705 = fmul fast float %607, 5.000000e-01
  %706 = fmul fast float %704, %704
  %707 = fmul fast float %706, %705
  %708 = fsub fast float 1.500000e+00, %707
  %709 = fmul fast float %704, %607
  %710 = fmul fast float %709, %708
  %711 = fsub fast float %690, %672
  %712 = fsub fast float %700, %676
  %713 = fsub fast float %710, %680
  %714 = fmul fast float %711, %640
  %715 = fmul fast float %712, %642
  %716 = fmul fast float %713, %647
  %717 = fadd fast float %714, %655
  %718 = fadd fast float %715, %659
  %719 = fadd fast float %716, %663
  %720 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  %721 = call float @dx.op.unary.f32(i32 7, float %718)  ; Saturate(value)
  %722 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  %723 = fmul fast float %720, %720
  %724 = fmul fast float %721, %721
  %725 = fmul fast float %722, %722
  %726 = fsub fast float %723, %605
  %727 = fsub fast float %724, %606
  %728 = fsub fast float %725, %607
  %729 = fmul fast float %726, %630
  %730 = fmul fast float %727, %630
  %731 = fmul fast float %728, %630
  %732 = fadd fast float %729, %605
  %733 = fadd fast float %730, %606
  %734 = fadd fast float %731, %607
  %735 = fadd fast float %652, %616
  %736 = fsub fast float %735, %669
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %738 = fsub fast float %737, %616
  %739 = fmul fast float %738, %630
  %740 = fadd fast float %739, %616
  br label %794

; <label>:741                                     ; preds = %629
  %742 = and i32 %632, 134217728
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %778, label %744

; <label>:744                                     ; preds = %741
  %745 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %746 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %747 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %748 = fadd fast float %745, -5.000000e-01
  %749 = fadd fast float %746, -5.000000e-01
  %750 = fadd fast float %747, -5.000000e-01
  %751 = fmul fast float %748, %630
  %752 = fmul fast float %749, %630
  %753 = fmul fast float %750, %630
  %754 = fadd fast float %751, 5.000000e-01
  %755 = fadd fast float %752, 5.000000e-01
  %756 = fadd fast float %753, 5.000000e-01
  %757 = call float @dx.op.unary.f32(i32 24, float %605)  ; Sqrt(value)
  %758 = call float @dx.op.unary.f32(i32 24, float %606)  ; Sqrt(value)
  %759 = call float @dx.op.unary.f32(i32 24, float %607)  ; Sqrt(value)
  %760 = fmul fast float %754, 2.000000e+00
  %761 = fsub fast float 1.000000e+00, %760
  %762 = fmul fast float %761, %757
  %763 = fadd fast float %762, %760
  %764 = fmul fast float %763, %757
  %765 = fmul fast float %755, 2.000000e+00
  %766 = fsub fast float 1.000000e+00, %765
  %767 = fmul fast float %766, %758
  %768 = fadd fast float %767, %765
  %769 = fmul fast float %768, %758
  %770 = fmul fast float %756, 2.000000e+00
  %771 = fsub fast float 1.000000e+00, %770
  %772 = fmul fast float %771, %759
  %773 = fadd fast float %772, %770
  %774 = fmul fast float %773, %759
  %775 = fmul fast float %764, %764
  %776 = fmul fast float %769, %769
  %777 = fmul fast float %774, %774
  br label %794

; <label>:778                                     ; preds = %741
  %779 = fmul fast float %264, %264
  %780 = fmul fast float %268, %268
  %781 = fmul fast float %272, %272
  %782 = fadd fast float %779, -1.000000e+00
  %783 = fadd fast float %780, -1.000000e+00
  %784 = fadd fast float %781, -1.000000e+00
  %785 = fmul fast float %630, %782
  %786 = fmul fast float %630, %783
  %787 = fmul fast float %630, %784
  %788 = fadd fast float %785, 1.000000e+00
  %789 = fadd fast float %786, 1.000000e+00
  %790 = fadd fast float %787, 1.000000e+00
  %791 = fmul fast float %788, %605
  %792 = fmul fast float %789, %606
  %793 = fmul fast float %790, %607
  br label %794

; <label>:794                                     ; preds = %778, %744, %635, %590
  %795 = phi float [ %740, %635 ], [ %616, %744 ], [ %616, %778 ], [ 0x3FA23C0BE0000000, %590 ]
  %796 = phi float [ %732, %635 ], [ %775, %744 ], [ %791, %778 ], [ 1.000000e+00, %590 ]
  %797 = phi float [ %733, %635 ], [ %776, %744 ], [ %792, %778 ], [ 1.000000e+00, %590 ]
  %798 = phi float [ %734, %635 ], [ %777, %744 ], [ %793, %778 ], [ 1.000000e+00, %590 ]
  %799 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.i32 %799, 1
  %801 = and i32 %800, 1
  %802 = icmp ne i32 %801, 0
  %803 = add i32 %52, 116
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 32
  %807 = icmp ne i32 %806, 0
  %808 = and i1 %802, %807
  %809 = select i1 %808, float 1.000000e+00, float %796
  %810 = select i1 %808, float 0x3FD3333340000000, float %797
  %811 = select i1 %808, float 0x3FD3333340000000, float %798
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 32
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %888, label %816

; <label>:816                                     ; preds = %794
  %817 = add i32 %52, 44
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = add i32 %52, 172
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = add i32 %822, 0
  %824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %824, %dx.types.Handle %73, float %403, float %404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = extractvalue %dx.types.ResRet.f32 %825, 1
  %828 = extractvalue %dx.types.ResRet.f32 %825, 2
  %829 = extractvalue %dx.types.ResRet.f32 %825, 3
  %830 = and i32 %819, 255
  %831 = uitofp i32 %830 to float
  %832 = lshr i32 %819, 8
  %833 = and i32 %832, 255
  %834 = uitofp i32 %833 to float
  %835 = lshr i32 %819, 16
  %836 = and i32 %835, 255
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F70101000000000
  %839 = fmul fast float %826, %831
  %840 = fadd fast float %839, %834
  %841 = fmul fast float %840, 0x3F70101000000000
  %842 = fadd fast float %827, -5.000000e-01
  %843 = fadd fast float %829, -5.000000e-01
  %844 = fmul fast float %842, %838
  %845 = fmul fast float %843, %838
  %846 = fadd fast float %844, 5.000000e-01
  %847 = fadd fast float %845, 5.000000e-01
  %848 = fmul fast float %846, 2.000000e+00
  %849 = fadd fast float %848, -1.000000e+00
  %850 = fmul fast float %847, 2.000000e+00
  %851 = fadd fast float %850, -1.000000e+00
  %852 = fadd fast float %849, %851
  %853 = fmul fast float %852, 5.000000e-01
  %854 = fsub fast float %849, %851
  %855 = fmul fast float %854, 5.000000e-01
  %856 = call float @dx.op.unary.f32(i32 6, float %853)  ; FAbs(value)
  %857 = fsub fast float 1.000000e+00, %856
  %858 = call float @dx.op.unary.f32(i32 6, float %855)  ; FAbs(value)
  %859 = fsub fast float %857, %858
  %860 = call float @dx.op.dot3.f32(i32 55, float %853, float %855, float %859, float %853, float %855, float %859)  ; Dot3(ax,ay,az,bx,by,bz)
  %861 = call float @dx.op.unary.f32(i32 25, float %860)  ; Rsqrt(value)
  %862 = fmul fast float %853, %861
  %863 = fmul fast float %855, %861
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = and i32 %865, 67108864
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %884, label %868

; <label>:868                                     ; preds = %816
  %869 = add i32 %52, 88
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = and i32 %871, 65535
  %873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %872)  ; LegacyF16ToF32(value)
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = and i32 %875, 65535
  %877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %876)  ; LegacyF16ToF32(value)
  %878 = lshr i32 %871, 16
  %879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %878)  ; LegacyF16ToF32(value)
  %880 = fsub fast float %841, %879
  %881 = fmul fast float %880, %873
  %882 = fadd fast float %881, %877
  %883 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  br label %884

; <label>:884                                     ; preds = %868, %816
  %885 = phi float [ %883, %868 ], [ %841, %816 ]
  %886 = call float @dx.op.dot2.f32(i32 54, float %862, float %863, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %887 = call float @dx.op.dot2.f32(i32 54, float %862, float %863, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %888

; <label>:888                                     ; preds = %884, %794
  %889 = phi float [ %885, %884 ], [ 0x3FD6666660000000, %794 ]
  %890 = phi float [ %886, %884 ], [ 0.000000e+00, %794 ]
  %891 = phi float [ %887, %884 ], [ 0.000000e+00, %794 ]
  %892 = phi float [ %828, %884 ], [ 1.000000e+00, %794 ]
  %893 = add i32 %52, 64
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = lshr i32 %895, 22
  %897 = shl nuw nsw i32 %896, 5
  %898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %897)  ; LegacyF16ToF32(value)
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 64
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %936, label %903

; <label>:903                                     ; preds = %888
  %904 = add i32 %52, 176
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = add i32 %906, 0
  %908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = and i32 %910, 131072
  %912 = icmp eq i32 %911, 0
  %913 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %908, %dx.types.Handle %73, float %403, float %404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  %915 = extractvalue %dx.types.ResRet.f32 %913, 1
  %916 = extractvalue %dx.types.ResRet.f32 %913, 2
  %917 = fmul fast float %914, %252
  %918 = fmul fast float %915, %255
  %919 = fmul fast float %916, %258
  br i1 %912, label %926, label %920

; <label>:920                                     ; preds = %903
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %923 = fmul fast float %922, %917
  %924 = fmul fast float %922, %918
  %925 = fmul fast float %922, %919
  br label %926

; <label>:926                                     ; preds = %920, %903
  %927 = phi float [ %923, %920 ], [ %917, %903 ]
  %928 = phi float [ %924, %920 ], [ %918, %903 ]
  %929 = phi float [ %925, %920 ], [ %919, %903 ]
  %930 = fmul fast float %927, %898
  %931 = select i1 %246, float %930, float %927
  %932 = call float @dx.op.dot3.f32(i32 55, float %931, float %928, float %929, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %933 = select i1 %246, float 0.000000e+00, float %927
  %934 = select i1 %246, float %932, float %928
  %935 = select i1 %246, float 0.000000e+00, float %929
  br label %936

; <label>:936                                     ; preds = %926, %888
  %937 = phi float [ %933, %926 ], [ 0.000000e+00, %888 ]
  %938 = phi float [ %934, %926 ], [ 0.000000e+00, %888 ]
  %939 = phi float [ %935, %926 ], [ 0.000000e+00, %888 ]
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = and i32 %941, 1024
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %974, label %944

; <label>:944                                     ; preds = %936
  %945 = add i32 %52, 56
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 255
  %949 = uitofp i32 %948 to float
  %950 = fmul fast float %949, 0x3F70101020000000
  %951 = lshr i32 %947, 8
  %952 = and i32 %951, 255
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3F70101020000000
  %955 = lshr i32 %947, 16
  %956 = and i32 %955, 255
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = fmul fast float %950, %950
  %960 = fmul fast float %954, %954
  %961 = fmul fast float %958, %958
  %962 = add i32 %52, 192
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = add i32 %964, 0
  %966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %965, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %967 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %966, %dx.types.Handle %74, float %403, float %404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %968 = extractvalue %dx.types.ResRet.f32 %967, 0
  %969 = extractvalue %dx.types.ResRet.f32 %967, 1
  %970 = extractvalue %dx.types.ResRet.f32 %967, 2
  %971 = fmul fast float %959, %968
  %972 = fmul fast float %960, %969
  %973 = fmul fast float %961, %970
  br label %974

; <label>:974                                     ; preds = %944, %936
  %975 = phi float [ %971, %944 ], [ 0.000000e+00, %936 ]
  %976 = phi float [ %972, %944 ], [ 0.000000e+00, %936 ]
  %977 = phi float [ %973, %944 ], [ 0.000000e+00, %936 ]
  %978 = fcmp fast ogt float %975, 0.000000e+00
  %979 = fcmp fast ogt float %976, 0.000000e+00
  %980 = fcmp fast ogt float %977, 0.000000e+00
  %981 = call float @dx.op.unary.f32(i32 23, float %975)  ; Log(value)
  %982 = call float @dx.op.unary.f32(i32 23, float %976)  ; Log(value)
  %983 = call float @dx.op.unary.f32(i32 23, float %977)  ; Log(value)
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = lshr i32 %985, 7
  %987 = and i32 %986, 32752
  %988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %987)  ; LegacyF16ToF32(value)
  %989 = fmul fast float %981, 0xBFE62E4300000000
  %990 = fmul fast float %989, %988
  %991 = fmul fast float %982, 0xBFE62E4300000000
  %992 = fmul fast float %991, %988
  %993 = fmul fast float %983, 0xBFE62E4300000000
  %994 = fmul fast float %993, %988
  %995 = select i1 %978, float %990, float 1.270000e+02
  %996 = select i1 %979, float %992, float 1.270000e+02
  %997 = select i1 %980, float %994, float 1.270000e+02
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = and i32 %999, 10240
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1046, label %1002

; <label>:1002                                    ; preds = %974
  %1003 = add i32 %52, 196
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = add i32 %1005, 0
  %1007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1006, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1008 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1007, %dx.types.Handle %74, float %403, float %404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 3
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = and i32 %1012, 1048576
  %1014 = icmp ne i32 %1013, 0
  %1015 = and i32 %1012, 8192
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1032, label %1017

; <label>:1017                                    ; preds = %1002
  %1018 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1019 = select i1 %1014, float %1018, float %1009
  %1020 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1021 = select i1 %1014, float %1020, float %1009
  %1022 = add i32 %52, 48
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = lshr i32 %1024, 16
  %1026 = and i32 %1025, 255
  %1027 = uitofp i32 %1026 to float
  %1028 = fmul fast float %1027, 0x3F80101020000000
  %1029 = fmul fast float %1028, %1021
  %1030 = fmul fast float %1028, %1009
  %1031 = fmul fast float %1028, %1019
  br label %1032

; <label>:1032                                    ; preds = %1017, %1002
  %1033 = phi float [ %1029, %1017 ], [ 0.000000e+00, %1002 ]
  %1034 = phi float [ %1030, %1017 ], [ 0.000000e+00, %1002 ]
  %1035 = phi float [ %1031, %1017 ], [ 0.000000e+00, %1002 ]
  %1036 = and i32 %1012, 2048
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1046, label %1038

; <label>:1038                                    ; preds = %1032
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = shl i32 %1040, 4
  %1042 = and i32 %1041, 32752
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = fmul fast float %1043, %1010
  %1045 = call float @dx.op.binary.f32(i32 35, float %1044, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1046

; <label>:1046                                    ; preds = %1038, %1032, %974
  %1047 = phi float [ %1033, %1038 ], [ %1033, %1032 ], [ 0.000000e+00, %974 ]
  %1048 = phi float [ %1034, %1038 ], [ %1034, %1032 ], [ 0.000000e+00, %974 ]
  %1049 = phi float [ %1035, %1038 ], [ %1035, %1032 ], [ 0.000000e+00, %974 ]
  %1050 = phi float [ %1045, %1038 ], [ 0x3F70101020000000, %1032 ], [ 0x3F70101020000000, %974 ]
  %1051 = add i32 %52, 48
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = and i32 %1053, 255
  %1055 = uitofp i32 %1054 to float
  %1056 = lshr i32 %1053, 8
  %1057 = and i32 %1056, 255
  %1058 = uitofp i32 %1057 to float
  %1059 = call float @dx.op.dot3.f32(i32 55, float %809, float %810, float %811, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1060 = fmul fast float %1058, %1059
  %1061 = fadd fast float %1060, %1055
  %1062 = fmul fast float %1061, 0x3F70101020000000
  %1063 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  br label %1064

; <label>:1064                                    ; preds = %1046, %302
  %1065 = phi float [ 0.000000e+00, %302 ], [ %890, %1046 ]
  %1066 = phi float [ 0.000000e+00, %302 ], [ %891, %1046 ]
  %1067 = phi float [ 0.000000e+00, %302 ], [ %937, %1046 ]
  %1068 = phi float [ 0.000000e+00, %302 ], [ %938, %1046 ]
  %1069 = phi float [ 0.000000e+00, %302 ], [ %939, %1046 ]
  %1070 = phi float [ 0.000000e+00, %302 ], [ %809, %1046 ]
  %1071 = phi float [ 0.000000e+00, %302 ], [ %810, %1046 ]
  %1072 = phi float [ 0.000000e+00, %302 ], [ %811, %1046 ]
  %1073 = phi float [ 0.000000e+00, %302 ], [ %995, %1046 ]
  %1074 = phi float [ 0.000000e+00, %302 ], [ %996, %1046 ]
  %1075 = phi float [ 0.000000e+00, %302 ], [ %997, %1046 ]
  %1076 = phi float [ 0.000000e+00, %302 ], [ %1047, %1046 ]
  %1077 = phi float [ 0.000000e+00, %302 ], [ %1048, %1046 ]
  %1078 = phi float [ 0.000000e+00, %302 ], [ %1049, %1046 ]
  %1079 = phi float [ 0.000000e+00, %302 ], [ %795, %1046 ]
  %1080 = phi float [ 0.000000e+00, %302 ], [ %591, %1046 ]
  %1081 = phi float [ 0.000000e+00, %302 ], [ %889, %1046 ]
  %1082 = phi float [ 0.000000e+00, %302 ], [ %892, %1046 ]
  %1083 = phi float [ 0.000000e+00, %302 ], [ %1050, %1046 ]
  %1084 = phi float [ 0.000000e+00, %302 ], [ %1063, %1046 ]
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1087 = call float @dx.op.dot2.f32(i32 54, float %1065, float %1066, float %1065, float %1066)  ; Dot2(ax,ay,bx,by)
  %1088 = fmul fast float %1087, 0x3FE3333340000000
  %1089 = fsub fast float 1.000000e+00, %1088
  %1090 = call float @dx.op.dot3.f32(i32 55, float %1065, float %1066, float %1089, float %1065, float %1066, float %1089)  ; Dot3(ax,ay,az,bx,by,bz)
  %1091 = call float @dx.op.unary.f32(i32 25, float %1090)  ; Rsqrt(value)
  %1092 = fmul fast float %1091, %1065
  %1093 = fmul fast float %1091, %1066
  %1094 = fmul fast float %1089, %1091
  %1095 = fmul fast float %1094, %57
  %1096 = fmul fast float %1094, %58
  %1097 = fmul fast float %1094, %59
  %1098 = fmul fast float %1092, %53
  %1099 = fmul fast float %1092, %54
  %1100 = fmul fast float %1092, %55
  %1101 = fadd fast float %1095, %1098
  %1102 = fadd fast float %1096, %1099
  %1103 = fadd fast float %1097, %1100
  %1104 = fmul fast float %1093, %88
  %1105 = fmul fast float %1093, %89
  %1106 = fmul fast float %1093, %90
  %1107 = fadd fast float %1101, %1104
  %1108 = fadd fast float %1102, %1105
  %1109 = fadd fast float %1103, %1106
  %1110 = call float @dx.op.dot3.f32(i32 55, float %1107, float %1108, float %1109, float %1107, float %1108, float %1109)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = call float @dx.op.unary.f32(i32 25, float %1110)  ; Rsqrt(value)
  %1112 = fmul fast float %1107, %1111
  %1113 = fmul fast float %1108, %1111
  %1114 = fmul fast float %1109, %1111
  %1115 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %1116 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %1117 = call float @dx.op.unary.f32(i32 83, float %126)  ; DerivCoarseX(value)
  %1118 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %1119 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %1120 = call float @dx.op.unary.f32(i32 84, float %126)  ; DerivCoarseY(value)
  %1121 = fadd fast float %1115, %124
  %1122 = fadd fast float %1116, %125
  %1123 = fadd fast float %1117, %126
  %1124 = fadd fast float %1118, %124
  %1125 = fadd fast float %1119, %125
  %1126 = fadd fast float %1120, %126
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 0
  %1129 = extractvalue %dx.types.CBufRet.f32 %1127, 1
  %1130 = extractvalue %dx.types.CBufRet.f32 %1127, 2
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1133 = extractvalue %dx.types.CBufRet.f32 %1131, 3
  %1134 = fmul fast float %1128, %77
  %1135 = fmul fast float %1134, %1132
  %1136 = fmul fast float %1129, %78
  %1137 = fmul fast float %1136, %1133
  %1138 = fptoui float %1135 to i32
  %1139 = fptoui float %1137 to i32
  %1140 = fadd fast float %1128, -1.000000e+00
  %1141 = fadd fast float %1129, -1.000000e+00
  %1142 = fptoui float %1140 to i32
  %1143 = fptoui float %1141 to i32
  %1144 = call i32 @dx.op.binary.i32(i32 40, i32 %1138, i32 %1142)  ; UMin(a,b)
  %1145 = call i32 @dx.op.binary.i32(i32 40, i32 %1139, i32 %1143)  ; UMin(a,b)
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 2
  %1148 = extractvalue %dx.types.CBufRet.f32 %1146, 3
  %1149 = fmul fast float %1147, %68
  %1150 = fsub fast float %1149, %1148
  %1151 = fadd fast float %1130, -1.000000e+00
  %1152 = call float @dx.op.binary.f32(i32 36, float %1150, float %1151)  ; FMin(a,b)
  %1153 = fptoui float %1152 to i32
  %1154 = fptoui float %1128 to i32
  %1155 = fptoui float %1129 to i32
  %1156 = mul i32 %1153, %1155
  %1157 = add i32 %1156, %1145
  %1158 = mul i32 %1157, %1154
  %1159 = add i32 %1158, %1144
  %1160 = shl i32 %1159, 2
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 1023
  %1164 = lshr i32 %1162, 10
  %1165 = icmp eq i32 %1163, 0
  br i1 %1165, label %1669, label %1166

; <label>:1166                                    ; preds = %1064
  %1167 = and i32 %1162, 1023
  br label %1168

; <label>:1168                                    ; preds = %1300, %1166
  %1169 = phi float [ %1301, %1300 ], [ 0.000000e+00, %1166 ]
  %1170 = phi float [ %1302, %1300 ], [ %1086, %1166 ]
  %1171 = phi float [ %1303, %1300 ], [ %1084, %1166 ]
  %1172 = phi float [ %1304, %1300 ], [ %1073, %1166 ]
  %1173 = phi float [ %1305, %1300 ], [ %1074, %1166 ]
  %1174 = phi float [ %1306, %1300 ], [ %1075, %1166 ]
  %1175 = phi float [ %1307, %1300 ], [ 0.000000e+00, %1166 ]
  %1176 = phi float [ %1308, %1300 ], [ 0.000000e+00, %1166 ]
  %1177 = phi float [ %1309, %1300 ], [ %1076, %1166 ]
  %1178 = phi float [ %1310, %1300 ], [ %1077, %1166 ]
  %1179 = phi float [ %1311, %1300 ], [ %1078, %1166 ]
  %1180 = phi float [ %1312, %1300 ], [ %1067, %1166 ]
  %1181 = phi float [ %1313, %1300 ], [ %1068, %1166 ]
  %1182 = phi float [ %1314, %1300 ], [ %1069, %1166 ]
  %1183 = phi float [ %1315, %1300 ], [ %1112, %1166 ]
  %1184 = phi float [ %1316, %1300 ], [ %1113, %1166 ]
  %1185 = phi float [ %1317, %1300 ], [ %1114, %1166 ]
  %1186 = phi float [ %1318, %1300 ], [ %1082, %1166 ]
  %1187 = phi float [ %1319, %1300 ], [ %1081, %1166 ]
  %1188 = phi float [ %1320, %1300 ], [ 0.000000e+00, %1166 ]
  %1189 = phi float [ %1321, %1300 ], [ %1079, %1166 ]
  %1190 = phi float [ %1322, %1300 ], [ %1070, %1166 ]
  %1191 = phi float [ %1323, %1300 ], [ %1071, %1166 ]
  %1192 = phi float [ %1324, %1300 ], [ %1072, %1166 ]
  %1193 = phi i32 [ %1250, %1300 ], [ 0, %1166 ]
  %1194 = add nuw nsw i32 %1193, %1164
  %1195 = shl i32 %1194, 2
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = shl i32 %1197, 8
  %1199 = or i32 %1198, 48
  %1200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = extractvalue %dx.types.ResRet.f32 %1200, 1
  %1203 = extractvalue %dx.types.ResRet.f32 %1200, 2
  %1204 = extractvalue %dx.types.ResRet.f32 %1200, 3
  %1205 = or i32 %1198, 64
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.i32 %1206, 1
  %1209 = or i32 %1198, 80
  %1210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 3
  %1213 = or i32 %1198, 96
  %1214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.ResRet.f32 %1214, 2
  %1218 = extractvalue %dx.types.ResRet.f32 %1214, 3
  %1219 = or i32 %1198, 112
  %1220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 2
  %1222 = or i32 %1198, 128
  %1223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.ResRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.ResRet.f32 %1223, 2
  %1227 = extractvalue %dx.types.ResRet.f32 %1223, 3
  %1228 = or i32 %1198, 144
  %1229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.ResRet.f32 %1229, 2
  %1233 = extractvalue %dx.types.ResRet.f32 %1229, 3
  %1234 = or i32 %1198, 160
  %1235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = extractvalue %dx.types.ResRet.f32 %1235, 1
  %1238 = extractvalue %dx.types.ResRet.f32 %1235, 2
  %1239 = extractvalue %dx.types.ResRet.f32 %1235, 3
  %1240 = or i32 %1198, 192
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = or i32 %1198, 208
  %1244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = or i32 %1198, 248
  %1247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = add nuw nsw i32 %1193, 1
  %1251 = bitcast float %1204 to i32
  %1252 = and i32 %1251, 2560
  %1253 = icmp eq i32 %1252, 0
  %1254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = extractvalue %dx.types.ResRet.f32 %1254, 3
  %1259 = call float @dx.op.dot4.f32(i32 56, float %1255, float %1256, float %1257, float %1258, float %124, float %125, float %126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1260 = or i32 %1198, 16
  %1261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.ResRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.ResRet.f32 %1261, 2
  %1265 = extractvalue %dx.types.ResRet.f32 %1261, 3
  %1266 = call float @dx.op.dot4.f32(i32 56, float %1262, float %1263, float %1264, float %1265, float %124, float %125, float %126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1267 = or i32 %1198, 32
  %1268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.ResRet.f32 %1268, 1
  %1271 = extractvalue %dx.types.ResRet.f32 %1268, 2
  %1272 = extractvalue %dx.types.ResRet.f32 %1268, 3
  %1273 = call float @dx.op.dot4.f32(i32 56, float %1269, float %1270, float %1271, float %1272, float %124, float %125, float %126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1274 = call float @dx.op.unary.f32(i32 27, float %1259)  ; Round_ni(value)
  %1275 = call float @dx.op.unary.f32(i32 6, float %1274)  ; FAbs(value)
  %1276 = call float @dx.op.unary.f32(i32 27, float %1266)  ; Round_ni(value)
  %1277 = call float @dx.op.unary.f32(i32 6, float %1276)  ; FAbs(value)
  %1278 = call float @dx.op.unary.f32(i32 6, float %1273)  ; FAbs(value)
  %1279 = call float @dx.op.unary.f32(i32 27, float %1278)  ; Round_ni(value)
  %1280 = fadd fast float %1277, %1275
  %1281 = fadd fast float %1280, %1279
  %1282 = fcmp fast oeq float %1281, 0.000000e+00
  %1283 = call float @dx.op.dot4.f32(i32 56, float %1255, float %1256, float %1257, float %1258, float %1121, float %1122, float %1123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1284 = call float @dx.op.dot4.f32(i32 56, float %1262, float %1263, float %1264, float %1265, float %1121, float %1122, float %1123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1285 = call float @dx.op.dot4.f32(i32 56, float %1255, float %1256, float %1257, float %1258, float %1124, float %1125, float %1126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1286 = call float @dx.op.dot4.f32(i32 56, float %1262, float %1263, float %1264, float %1265, float %1124, float %1125, float %1126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1287 = fsub fast float %1283, %1259
  %1288 = fsub fast float %1285, %1259
  %1289 = fsub fast float %1284, %1266
  %1290 = fsub fast float %1286, %1266
  %1291 = call float @dx.op.dot3.f32(i32 55, float %1201, float %1202, float %1203, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1294 = fadd fast float %1293, %1291
  %1295 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1297 = fcmp fast ogt float %1295, %1296
  %1298 = and i1 %1282, %1297
  %1299 = and i1 %1253, %1298
  br i1 %1299, label %1326, label %1300

; <label>:1300                                    ; preds = %1655, %1407, %1326, %1168
  %1301 = phi float [ %1169, %1326 ], [ %1410, %1407 ], [ %1410, %1655 ], [ %1169, %1168 ]
  %1302 = phi float [ %1170, %1326 ], [ %1170, %1407 ], [ %1631, %1655 ], [ %1170, %1168 ]
  %1303 = phi float [ %1171, %1326 ], [ %1171, %1407 ], [ %1629, %1655 ], [ %1171, %1168 ]
  %1304 = phi float [ %1172, %1326 ], [ %1172, %1407 ], [ %1607, %1655 ], [ %1172, %1168 ]
  %1305 = phi float [ %1173, %1326 ], [ %1173, %1407 ], [ %1608, %1655 ], [ %1173, %1168 ]
  %1306 = phi float [ %1174, %1326 ], [ %1174, %1407 ], [ %1609, %1655 ], [ %1174, %1168 ]
  %1307 = phi float [ %1175, %1326 ], [ %1175, %1407 ], [ %1534, %1655 ], [ %1175, %1168 ]
  %1308 = phi float [ %1176, %1326 ], [ %1176, %1407 ], [ %1532, %1655 ], [ %1176, %1168 ]
  %1309 = phi float [ %1177, %1326 ], [ %1177, %1407 ], [ %1577, %1655 ], [ %1177, %1168 ]
  %1310 = phi float [ %1178, %1326 ], [ %1178, %1407 ], [ %1578, %1655 ], [ %1178, %1168 ]
  %1311 = phi float [ %1179, %1326 ], [ %1179, %1407 ], [ %1579, %1655 ], [ %1179, %1168 ]
  %1312 = phi float [ %1180, %1326 ], [ %1180, %1407 ], [ %1665, %1655 ], [ %1180, %1168 ]
  %1313 = phi float [ %1181, %1326 ], [ %1181, %1407 ], [ %1666, %1655 ], [ %1181, %1168 ]
  %1314 = phi float [ %1182, %1326 ], [ %1182, %1407 ], [ %1667, %1655 ], [ %1182, %1168 ]
  %1315 = phi float [ %1183, %1326 ], [ %1183, %1407 ], [ %1513, %1655 ], [ %1183, %1168 ]
  %1316 = phi float [ %1184, %1326 ], [ %1184, %1407 ], [ %1514, %1655 ], [ %1184, %1168 ]
  %1317 = phi float [ %1185, %1326 ], [ %1185, %1407 ], [ %1515, %1655 ], [ %1185, %1168 ]
  %1318 = phi float [ %1186, %1326 ], [ %1186, %1407 ], [ %1587, %1655 ], [ %1186, %1168 ]
  %1319 = phi float [ %1187, %1326 ], [ %1187, %1407 ], [ %1584, %1655 ], [ %1187, %1168 ]
  %1320 = phi float [ %1188, %1326 ], [ %1188, %1407 ], [ %1581, %1655 ], [ %1188, %1168 ]
  %1321 = phi float [ %1189, %1326 ], [ %1189, %1407 ], [ %1530, %1655 ], [ %1189, %1168 ]
  %1322 = phi float [ %1190, %1326 ], [ %1190, %1407 ], [ %1525, %1655 ], [ %1190, %1168 ]
  %1323 = phi float [ %1191, %1326 ], [ %1191, %1407 ], [ %1526, %1655 ], [ %1191, %1168 ]
  %1324 = phi float [ %1192, %1326 ], [ %1192, %1407 ], [ %1527, %1655 ], [ %1192, %1168 ]
  %1325 = icmp eq i32 %1250, %1167
  br i1 %1325, label %1668, label %1168

; <label>:1326                                    ; preds = %1168
  %1327 = extractvalue %dx.types.ResRet.f32 %1220, 3
  %1328 = extractvalue %dx.types.ResRet.f32 %1220, 1
  %1329 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1330 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1331 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1332 = extractvalue %dx.types.ResRet.i32 %1206, 3
  %1333 = extractvalue %dx.types.ResRet.i32 %1206, 2
  %1334 = add i32 %1332, 0
  %1335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1334, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1337 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1335, %dx.types.Handle %1336, float %1259, float %1266, float undef, float undef, i32 0, i32 0, i32 undef, float %1287, float %1289, float undef, float %1288, float %1290, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  %1339 = fmul fast float %1338, %1331
  %1340 = fadd fast float %1339, %1330
  %1341 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1342 = fmul fast float %1259, %1215
  %1343 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %1266, float %1342)  ; FMad(a,b,c)
  %1344 = fadd fast float %1343, %1329
  %1345 = fmul fast float %1259, %1217
  %1346 = call float @dx.op.tertiary.f32(i32 46, float %1218, float %1266, float %1345)  ; FMad(a,b,c)
  %1347 = fadd fast float %1346, %1328
  %1348 = fmul fast float %1287, %1215
  %1349 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %1289, float %1348)  ; FMad(a,b,c)
  %1350 = fmul fast float %1287, %1217
  %1351 = call float @dx.op.tertiary.f32(i32 46, float %1218, float %1289, float %1350)  ; FMad(a,b,c)
  %1352 = fmul fast float %1288, %1215
  %1353 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %1290, float %1352)  ; FMad(a,b,c)
  %1354 = fmul fast float %1288, %1217
  %1355 = call float @dx.op.tertiary.f32(i32 46, float %1218, float %1290, float %1354)  ; FMad(a,b,c)
  %1356 = add i32 %1333, 0
  %1357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1356, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1357, %dx.types.Handle %1336, float %1344, float %1347, float undef, float undef, i32 0, i32 0, i32 undef, float %1349, float %1351, float undef, float %1353, float %1355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = and i32 %1251, 1024
  %1361 = icmp ne i32 %1360, 0
  %1362 = fcmp fast ogt float %1359, 0x3FE0101020000000
  %1363 = uitofp i1 %1362 to float
  %1364 = select i1 %1361, float %1363, float %1359
  %1365 = and i32 %1251, 8192
  %1366 = icmp ne i32 %1365, 0
  %1367 = select i1 %1366, float %1327, float 1.000000e+00
  %1368 = fmul fast float %1259, 2.000000e+00
  %1369 = fadd fast float %1368, -1.000000e+00
  %1370 = call float @dx.op.unary.f32(i32 6, float %1369)  ; FAbs(value)
  %1371 = fmul fast float %1370, %1248
  %1372 = fsub fast float %1371, %1248
  %1373 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1374 = fmul fast float %1266, 2.000000e+00
  %1375 = fadd fast float %1374, -1.000000e+00
  %1376 = call float @dx.op.unary.f32(i32 6, float %1375)  ; FAbs(value)
  %1377 = fmul fast float %1376, %1249
  %1378 = fsub fast float %1377, %1249
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = fmul fast float %1278, %1211
  %1381 = fsub fast float %1380, %1211
  %1382 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  %1383 = fmul fast float %1341, %1367
  %1384 = fmul fast float %1383, %1338
  %1385 = fmul fast float %1384, %1373
  %1386 = fmul fast float %1385, %1364
  %1387 = fmul fast float %1386, %1379
  %1388 = fmul fast float %1387, %1382
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1389, 1
  %1391 = extractvalue %dx.types.CBufRet.f32 %1389, 0
  %1392 = fsub fast float %1295, %1391
  %1393 = fmul fast float %1392, %1390
  %1394 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1395 = fmul fast float %1388, %1212
  %1396 = fadd fast float %1388, %1212
  %1397 = fmul fast float %1396, %1221
  %1398 = fsub fast float %1397, %1221
  %1399 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  %1400 = and i32 %1251, 128
  %1401 = icmp ne i32 %1400, 0
  %1402 = select i1 %1401, float %1399, float %1395
  %1403 = fmul fast float %1402, %1394
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1406 = fcmp fast ugt float %1403, %1405
  br i1 %1406, label %1407, label %1300

; <label>:1407                                    ; preds = %1326
  %1408 = select i1 %1366, float %1403, float 0.000000e+00
  %1409 = fadd fast float %1408, %1169
  %1410 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  br i1 %1366, label %1300, label %1411

; <label>:1411                                    ; preds = %1407
  %1412 = and i32 %1251, 4
  %1413 = and i32 %1251, 8
  %1414 = add i32 %1207, 0
  %1415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1414, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1417 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1415, %dx.types.Handle %1416, float %1344, float %1347, float undef, float undef, i32 0, i32 0, i32 undef, float %1349, float %1351, float undef, float %1353, float %1355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1418 = extractvalue %dx.types.ResRet.f32 %1417, 0
  %1419 = extractvalue %dx.types.ResRet.f32 %1417, 1
  %1420 = extractvalue %dx.types.ResRet.f32 %1417, 2
  %1421 = extractvalue %dx.types.ResRet.f32 %1417, 3
  %1422 = bitcast float %1233 to i32
  %1423 = and i32 %1422, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = lshr i32 %1422, 8
  %1426 = and i32 %1425, 255
  %1427 = uitofp i32 %1426 to float
  %1428 = fmul fast float %1421, %1424
  %1429 = fadd fast float %1428, %1427
  %1430 = fmul fast float %1429, 0x3F70101000000000
  %1431 = add i32 %1208, 0
  %1432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1431, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1433 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1432, %dx.types.Handle %1416, float %1344, float %1347, float undef, float undef, i32 0, i32 0, i32 undef, float %1349, float %1351, float undef, float %1353, float %1355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.ResRet.f32 %1433, 1
  %1436 = extractvalue %dx.types.ResRet.f32 %1433, 2
  %1437 = extractvalue %dx.types.ResRet.f32 %1433, 3
  %1438 = bitcast float %1227 to i32
  %1439 = and i32 %1438, 255
  %1440 = uitofp i32 %1439 to float
  %1441 = lshr i32 %1438, 8
  %1442 = and i32 %1441, 255
  %1443 = uitofp i32 %1442 to float
  %1444 = lshr i32 %1438, 16
  %1445 = and i32 %1444, 255
  %1446 = uitofp i32 %1445 to float
  %1447 = fmul fast float %1446, 0x3F70101000000000
  %1448 = fmul fast float %1434, %1440
  %1449 = fadd fast float %1448, %1443
  %1450 = fmul fast float %1449, 0x3F70101000000000
  %1451 = fadd fast float %1435, -5.000000e-01
  %1452 = fadd fast float %1437, -5.000000e-01
  %1453 = fmul fast float %1451, %1447
  %1454 = fmul fast float %1452, %1447
  %1455 = fadd fast float %1453, 5.000000e-01
  %1456 = fadd fast float %1454, 5.000000e-01
  %1457 = fmul fast float %1418, %1236
  %1458 = fmul fast float %1419, %1237
  %1459 = fmul fast float %1420, %1238
  %1460 = fmul fast float %1455, 2.000000e+00
  %1461 = fadd fast float %1460, -1.000000e+00
  %1462 = fmul fast float %1456, 2.000000e+00
  %1463 = fadd fast float %1462, -1.000000e+00
  %1464 = fadd fast float %1461, %1463
  %1465 = fmul fast float %1464, 5.000000e-01
  %1466 = fsub fast float %1461, %1463
  %1467 = fmul fast float %1466, 5.000000e-01
  %1468 = call float @dx.op.unary.f32(i32 6, float %1465)  ; FAbs(value)
  %1469 = fsub fast float 1.000000e+00, %1468
  %1470 = call float @dx.op.unary.f32(i32 6, float %1467)  ; FAbs(value)
  %1471 = fsub fast float %1469, %1470
  %1472 = call float @dx.op.dot3.f32(i32 55, float %1465, float %1467, float %1471, float %1465, float %1467, float %1471)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = call float @dx.op.unary.f32(i32 25, float %1472)  ; Rsqrt(value)
  %1474 = fmul fast float %1465, %1473
  %1475 = fmul fast float %1467, %1473
  %1476 = fmul fast float %1473, %1471
  %1477 = fmul fast float %1476, %1201
  %1478 = fmul fast float %1476, %1202
  %1479 = fmul fast float %1476, %1203
  %1480 = fmul fast float %1474, %1224
  %1481 = fmul fast float %1474, %1225
  %1482 = fmul fast float %1474, %1226
  %1483 = fadd fast float %1480, %1477
  %1484 = fadd fast float %1481, %1478
  %1485 = fadd fast float %1482, %1479
  %1486 = fmul fast float %1475, %1230
  %1487 = fmul fast float %1475, %1231
  %1488 = fmul fast float %1475, %1232
  %1489 = fadd fast float %1483, %1486
  %1490 = fadd fast float %1484, %1487
  %1491 = fadd fast float %1485, %1488
  %1492 = call float @dx.op.dot3.f32(i32 55, float %1489, float %1490, float %1491, float %1489, float %1490, float %1491)  ; Dot3(ax,ay,az,bx,by,bz)
  %1493 = call float @dx.op.unary.f32(i32 25, float %1492)  ; Rsqrt(value)
  %1494 = fmul fast float %1489, %1493
  %1495 = fmul fast float %1490, %1493
  %1496 = fmul fast float %1491, %1493
  %1497 = icmp ne i32 %1413, 0
  %1498 = select i1 %1497, float 1.000000e+00, float 0.000000e+00
  %1499 = fmul fast float %1403, %1498
  %1500 = and i32 %1251, 1
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1502, label %1506

; <label>:1502                                    ; preds = %1411
  %1503 = fsub fast float %1494, %1183
  %1504 = fsub fast float %1495, %1184
  %1505 = fsub fast float %1496, %1185
  br label %1506

; <label>:1506                                    ; preds = %1502, %1411
  %1507 = phi float [ %1503, %1502 ], [ %1494, %1411 ]
  %1508 = phi float [ %1504, %1502 ], [ %1495, %1411 ]
  %1509 = phi float [ %1505, %1502 ], [ %1496, %1411 ]
  %1510 = fmul float %1509, %1499
  %1511 = fmul float %1508, %1499
  %1512 = fmul float %1507, %1499
  %1513 = fadd fast float %1512, %1183
  %1514 = fadd fast float %1511, %1184
  %1515 = fadd fast float %1510, %1185
  %1516 = icmp ne i32 %1412, 0
  %1517 = select i1 %1516, float 1.000000e+00, float 0.000000e+00
  %1518 = fmul fast float %1403, %1517
  %1519 = fsub fast float %1457, %1190
  %1520 = fsub fast float %1458, %1191
  %1521 = fsub fast float %1459, %1192
  %1522 = fmul fast float %1519, %1518
  %1523 = fmul fast float %1520, %1518
  %1524 = fmul fast float %1521, %1518
  %1525 = fadd fast float %1522, %1190
  %1526 = fadd fast float %1523, %1191
  %1527 = fadd fast float %1524, %1192
  %1528 = fsub fast float %1430, %1189
  %1529 = fmul fast float %1528, %1518
  %1530 = fadd fast float %1529, %1189
  %1531 = fmul fast float %1518, %1176
  %1532 = fsub fast float %1176, %1531
  %1533 = fmul fast float %1518, %1175
  %1534 = fsub fast float %1175, %1533
  %1535 = bitcast float %1245 to i32
  %1536 = lshr i32 %1535, 16
  %1537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1536)  ; LegacyF16ToF32(value)
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 1
  %1541 = icmp eq i32 %1540, 0
  br i1 %1541, label %1542, label %1567

; <label>:1542                                    ; preds = %1506
  %1543 = fadd fast float %1430, 0xBFB99999A0000000
  %1544 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1545 = fmul fast float %1544, 0x3FF1C71C80000000
  %1546 = fsub fast float 1.000000e+00, %1545
  %1547 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1548 = fmul fast float %1547, %1457
  %1549 = fmul fast float %1547, %1458
  %1550 = fmul fast float %1547, %1459
  %1551 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1552 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  %1553 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  %1554 = call float @dx.op.binary.f32(i32 35, float %1552, float %1553)  ; FMax(a,b)
  %1555 = call float @dx.op.binary.f32(i32 35, float %1551, float %1554)  ; FMax(a,b)
  %1556 = fcmp fast ogt float %1555, 0.000000e+00
  %1557 = bitcast float %1555 to i32
  %1558 = sub nsw i32 2129859010, %1557
  %1559 = bitcast i32 %1558 to float
  %1560 = select i1 %1556, float %1559, float 0.000000e+00
  %1561 = fmul fast float %1551, %1537
  %1562 = fmul fast float %1552, %1537
  %1563 = fmul fast float %1553, %1537
  %1564 = fmul fast float %1561, %1560
  %1565 = fmul fast float %1562, %1560
  %1566 = fmul fast float %1563, %1560
  br label %1567

; <label>:1567                                    ; preds = %1542, %1506
  %1568 = phi float [ %1537, %1506 ], [ %1564, %1542 ]
  %1569 = phi float [ %1537, %1506 ], [ %1565, %1542 ]
  %1570 = phi float [ %1537, %1506 ], [ %1566, %1542 ]
  %1571 = fsub fast float %1568, %1177
  %1572 = fsub fast float %1569, %1178
  %1573 = fsub fast float %1570, %1179
  %1574 = fmul fast float %1571, %1518
  %1575 = fmul fast float %1572, %1518
  %1576 = fmul fast float %1573, %1518
  %1577 = fadd fast float %1574, %1177
  %1578 = fadd fast float %1575, %1178
  %1579 = fadd fast float %1576, %1179
  %1580 = fadd fast float %1403, %1188
  %1581 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1582 = fsub fast float %1450, %1187
  %1583 = fmul fast float %1582, %1499
  %1584 = fadd fast float %1583, %1187
  %1585 = fsub fast float %1436, %1186
  %1586 = fmul fast float %1585, %1499
  %1587 = fadd fast float %1586, %1186
  br i1 %1501, label %1596, label %1588

; <label>:1588                                    ; preds = %1567
  %1589 = and i32 %1251, 32768
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1606, label %1591

; <label>:1591                                    ; preds = %1588
  %1592 = fmul fast float %1499, 1.270000e+02
  %1593 = fadd fast float %1592, %1172
  %1594 = fadd fast float %1592, %1173
  %1595 = fadd fast float %1592, %1174
  br label %1606

; <label>:1596                                    ; preds = %1567
  %1597 = fsub fast float 1.270000e+02, %1172
  %1598 = fsub fast float 1.270000e+02, %1173
  %1599 = fsub fast float 1.270000e+02, %1174
  %1600 = fmul fast float %1499, %1597
  %1601 = fmul fast float %1499, %1598
  %1602 = fmul fast float %1499, %1599
  %1603 = fadd fast float %1600, %1172
  %1604 = fadd fast float %1601, %1173
  %1605 = fadd fast float %1602, %1174
  br label %1606

; <label>:1606                                    ; preds = %1596, %1591, %1588
  %1607 = phi float [ %1593, %1591 ], [ %1172, %1588 ], [ %1603, %1596 ]
  %1608 = phi float [ %1594, %1591 ], [ %1173, %1588 ], [ %1604, %1596 ]
  %1609 = phi float [ %1595, %1591 ], [ %1174, %1588 ], [ %1605, %1596 ]
  %1610 = call float @dx.op.dot3.f32(i32 55, float %1457, float %1458, float %1459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1612 = extractvalue %dx.types.CBufRet.f32 %1611, 0
  %1613 = extractvalue %dx.types.CBufRet.f32 %1611, 1
  %1614 = fmul fast float %1613, %1610
  %1615 = fadd fast float %1614, %1612
  %1616 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  %1617 = bitcast float %1239 to i32
  %1618 = and i32 %1617, 65535
  %1619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1618)  ; LegacyF16ToF32(value)
  %1620 = lshr i32 %1617, 16
  %1621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1620)  ; LegacyF16ToF32(value)
  %1622 = fcmp fast oge float %1619, 0.000000e+00
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 0
  %1625 = select i1 %1622, float %1619, float %1624
  %1626 = fadd fast float %1625, %1621
  %1627 = fsub fast float %1616, %1171
  %1628 = fmul fast float %1627, %1403
  %1629 = fadd fast float %1628, %1171
  %1630 = fmul fast float %1626, %1403
  %1631 = call float @dx.op.binary.f32(i32 35, float %1170, float %1630)  ; FMax(a,b)
  %1632 = and i32 %1251, 16
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1655, label %1634

; <label>:1634                                    ; preds = %1606
  %1635 = add i32 %1242, 0
  %1636 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1635, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1637 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1636, %dx.types.Handle %1416, float %1344, float %1347, float undef, float undef, i32 0, i32 0, i32 undef, float %1349, float %1351, float undef, float %1353, float %1355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1638 = extractvalue %dx.types.ResRet.f32 %1637, 0
  %1639 = extractvalue %dx.types.ResRet.f32 %1637, 1
  %1640 = extractvalue %dx.types.ResRet.f32 %1637, 2
  %1641 = and i32 %1535, 65535
  %1642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1641)  ; LegacyF16ToF32(value)
  %1643 = fmul fast float %1638, %1236
  %1644 = fmul fast float %1639, %1237
  %1645 = fmul fast float %1640, %1238
  %1646 = and i32 %1251, 16384
  %1647 = icmp ne i32 %1646, 0
  %1648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1649 = extractvalue %dx.types.CBufRet.f32 %1648, 0
  %1650 = select i1 %1647, float %1649, float 1.000000e+00
  %1651 = fmul fast float %1650, %1642
  %1652 = fmul fast float %1643, %1651
  %1653 = fmul fast float %1644, %1651
  %1654 = fmul fast float %1645, %1651
  br label %1655

; <label>:1655                                    ; preds = %1634, %1606
  %1656 = phi float [ %1652, %1634 ], [ 0.000000e+00, %1606 ]
  %1657 = phi float [ %1653, %1634 ], [ 0.000000e+00, %1606 ]
  %1658 = phi float [ %1654, %1634 ], [ 0.000000e+00, %1606 ]
  %1659 = fsub fast float %1656, %1180
  %1660 = fsub fast float %1657, %1181
  %1661 = fsub fast float %1658, %1182
  %1662 = fmul fast float %1659, %1403
  %1663 = fmul fast float %1660, %1403
  %1664 = fmul fast float %1661, %1403
  %1665 = fadd fast float %1662, %1180
  %1666 = fadd fast float %1663, %1181
  %1667 = fadd fast float %1664, %1182
  br label %1300

; <label>:1668                                    ; preds = %1300
  br label %1669

; <label>:1669                                    ; preds = %1668, %1064
  %1670 = phi float [ 0.000000e+00, %1064 ], [ %1301, %1668 ]
  %1671 = phi float [ %1086, %1064 ], [ %1302, %1668 ]
  %1672 = phi float [ %1084, %1064 ], [ %1303, %1668 ]
  %1673 = phi float [ %1073, %1064 ], [ %1304, %1668 ]
  %1674 = phi float [ %1074, %1064 ], [ %1305, %1668 ]
  %1675 = phi float [ %1075, %1064 ], [ %1306, %1668 ]
  %1676 = phi float [ 0.000000e+00, %1064 ], [ %1307, %1668 ]
  %1677 = phi float [ 0.000000e+00, %1064 ], [ %1308, %1668 ]
  %1678 = phi float [ %1076, %1064 ], [ %1309, %1668 ]
  %1679 = phi float [ %1077, %1064 ], [ %1310, %1668 ]
  %1680 = phi float [ %1078, %1064 ], [ %1311, %1668 ]
  %1681 = phi float [ %1067, %1064 ], [ %1312, %1668 ]
  %1682 = phi float [ %1068, %1064 ], [ %1313, %1668 ]
  %1683 = phi float [ %1069, %1064 ], [ %1314, %1668 ]
  %1684 = phi float [ %1112, %1064 ], [ %1315, %1668 ]
  %1685 = phi float [ %1113, %1064 ], [ %1316, %1668 ]
  %1686 = phi float [ %1114, %1064 ], [ %1317, %1668 ]
  %1687 = phi float [ %1082, %1064 ], [ %1318, %1668 ]
  %1688 = phi float [ %1081, %1064 ], [ %1319, %1668 ]
  %1689 = phi float [ 0.000000e+00, %1064 ], [ %1320, %1668 ]
  %1690 = phi float [ %1079, %1064 ], [ %1321, %1668 ]
  %1691 = phi float [ %1070, %1064 ], [ %1322, %1668 ]
  %1692 = phi float [ %1071, %1064 ], [ %1323, %1668 ]
  %1693 = phi float [ %1072, %1064 ], [ %1324, %1668 ]
  %1694 = call float @dx.op.dot3.f32(i32 55, float %1684, float %1685, float %1686, float %1684, float %1685, float %1686)  ; Dot3(ax,ay,az,bx,by,bz)
  %1695 = call float @dx.op.unary.f32(i32 25, float %1694)  ; Rsqrt(value)
  %1696 = fmul fast float %1695, %1684
  %1697 = fmul fast float %1695, %1685
  %1698 = fmul fast float %1695, %1686
  %1699 = fadd fast float %1689, %1080
  %1700 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1701 = call float @dx.op.dot3.f32(i32 55, float %1696, float %1697, float %1698, float %1696, float %1697, float %1698)  ; Dot3(ax,ay,az,bx,by,bz)
  %1702 = call float @dx.op.unary.f32(i32 25, float %1701)  ; Rsqrt(value)
  %1703 = fmul fast float %1702, %1696
  %1704 = fmul fast float %1702, %1697
  %1705 = fmul fast float %1702, %1698
  %1706 = add i32 %52, 152
  %1707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1708 = extractvalue %dx.types.ResRet.i32 %1707, 0
  %1709 = extractvalue %dx.types.ResRet.i32 %1707, 1
  %1710 = extractvalue %dx.types.ResRet.i32 %1707, 2
  %1711 = extractvalue %dx.types.ResRet.i32 %1707, 3
  %1712 = bitcast i32 %1708 to float
  %1713 = bitcast i32 %1709 to float
  %1714 = bitcast i32 %1710 to float
  %1715 = bitcast i32 %1711 to float
  %1716 = fsub fast float %1691, %1712
  %1717 = fsub fast float %1692, %1713
  %1718 = fsub fast float %1693, %1714
  %1719 = fmul fast float %1716, %187
  %1720 = fmul fast float %1717, %187
  %1721 = fmul fast float %1718, %187
  %1722 = fadd fast float %1719, %1712
  %1723 = fadd fast float %1720, %1713
  %1724 = fadd fast float %1721, %1714
  %1725 = fsub fast float %1700, %1715
  %1726 = fmul fast float %1725, %187
  %1727 = fadd fast float %1726, %1715
  %1728 = fadd fast float %1690, 0xBFB99999A0000000
  %1729 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1730 = fmul fast float %1729, 0x3FF1C71C80000000
  %1731 = call float @dx.op.binary.f32(i32 36, float %1690, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1732 = fsub fast float 1.000000e+00, %1730
  %1733 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  %1734 = fmul fast float %1722, %1733
  %1735 = fmul fast float %1723, %1733
  %1736 = fmul fast float %1724, %1733
  %1737 = call float @dx.op.unary.f32(i32 7, float %1734)  ; Saturate(value)
  %1738 = call float @dx.op.unary.f32(i32 7, float %1735)  ; Saturate(value)
  %1739 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1740 = fmul fast float %1722, %1730
  %1741 = fmul fast float %1723, %1730
  %1742 = fmul fast float %1724, %1730
  %1743 = fadd fast float %1740, %1731
  %1744 = fadd fast float %1741, %1731
  %1745 = fadd fast float %1742, %1731
  %1746 = call float @dx.op.unary.f32(i32 7, float %1743)  ; Saturate(value)
  %1747 = call float @dx.op.unary.f32(i32 7, float %1744)  ; Saturate(value)
  %1748 = call float @dx.op.unary.f32(i32 7, float %1745)  ; Saturate(value)
  %1749 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = and i32 %1751, 1
  %1753 = icmp eq i32 %1752, 0
  br i1 %1753, label %1768, label %1754

; <label>:1754                                    ; preds = %1669
  %1755 = call float @dx.op.binary.f32(i32 35, float %1738, float %1739)  ; FMax(a,b)
  %1756 = call float @dx.op.binary.f32(i32 35, float %1737, float %1755)  ; FMax(a,b)
  %1757 = fcmp fast ogt float %1756, 0.000000e+00
  %1758 = bitcast float %1756 to i32
  %1759 = sub nsw i32 2129859010, %1758
  %1760 = bitcast i32 %1759 to float
  %1761 = select i1 %1757, float %1760, float 0.000000e+00
  %1762 = fmul fast float %1737, %1678
  %1763 = fmul fast float %1738, %1679
  %1764 = fmul fast float %1739, %1680
  %1765 = fmul fast float %1762, %1761
  %1766 = fmul fast float %1763, %1761
  %1767 = fmul fast float %1764, %1761
  br label %1768

; <label>:1768                                    ; preds = %1754, %1669
  %1769 = phi float [ %1765, %1754 ], [ %1678, %1669 ]
  %1770 = phi float [ %1766, %1754 ], [ %1679, %1669 ]
  %1771 = phi float [ %1767, %1754 ], [ %1680, %1669 ]
  %1772 = call float @dx.op.binary.f32(i32 36, float %1673, float 1.270000e+02)  ; FMin(a,b)
  %1773 = call float @dx.op.binary.f32(i32 36, float %1674, float 1.270000e+02)  ; FMin(a,b)
  %1774 = call float @dx.op.binary.f32(i32 36, float %1675, float 1.270000e+02)  ; FMin(a,b)
  %1775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.i32 %1775, 3
  %1777 = and i32 %1776, 8
  %1778 = icmp ne i32 %1777, 0
  %1779 = call float @dx.op.binary.f32(i32 35, float %1737, float %1722)  ; FMax(a,b)
  %1780 = call float @dx.op.binary.f32(i32 35, float %1738, float %1722)  ; FMax(a,b)
  %1781 = call float @dx.op.binary.f32(i32 35, float %1739, float %1722)  ; FMax(a,b)
  %1782 = call float @dx.op.dot3.f32(i32 55, float %1737, float %1738, float %1739, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1783 = select i1 %246, float %1722, float %1737
  %1784 = select i1 %246, float %1782, float %1738
  %1785 = select i1 %246, float 1.000000e+00, float %1739
  %1786 = select i1 %1778, float %1779, float %1783
  %1787 = select i1 %1778, float %1780, float %1784
  %1788 = select i1 %1778, float %1781, float %1785
  %1789 = call float @dx.op.dot3.f32(i32 55, float %1769, float %1770, float %1771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1790 = select i1 %246, float %1789, float %1769
  %1791 = select i1 %246, float %1789, float %1770
  %1792 = select i1 %246, float %1789, float %1771
  %1793 = and i32 %222, 3
  %1794 = select i1 %216, i32 %1793, i32 0
  %1795 = icmp eq i32 %1794, 1
  br i1 %1795, label %1796, label %1872

; <label>:1796                                    ; preds = %1768
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 0
  %1799 = extractvalue %dx.types.CBufRet.f32 %1797, 1
  %1800 = fadd fast float %1798, %124
  %1801 = fadd fast float %1799, %125
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 0
  %1804 = extractvalue %dx.types.CBufRet.f32 %1802, 1
  %1805 = fsub fast float %1800, %1803
  %1806 = fsub fast float %1801, %1804
  %1807 = fmul fast float %1805, %1805
  %1808 = fmul fast float %1806, %1806
  %1809 = fadd fast float %1807, %1808
  %1810 = call float @dx.op.unary.f32(i32 24, float %1809)  ; Sqrt(value)
  %1811 = extractvalue %dx.types.CBufRet.f32 %1802, 2
  %1812 = fcmp fast olt float %1810, %1811
  br i1 %1812, label %1813, label %1866

; <label>:1813                                    ; preds = %1796
  %1814 = extractvalue %dx.types.CBufRet.f32 %1797, 2
  %1815 = fadd fast float %1814, %126
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1821 = extractvalue %dx.types.CBufRet.f32 %1820, 0
  %1822 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1823 = extractvalue %dx.types.CBufRet.f32 %1818, 1
  %1824 = extractvalue %dx.types.CBufRet.f32 %1820, 1
  %1825 = extractvalue %dx.types.CBufRet.f32 %1816, 3
  %1826 = extractvalue %dx.types.CBufRet.f32 %1818, 3
  %1827 = extractvalue %dx.types.CBufRet.f32 %1820, 3
  %1828 = fadd fast float %1825, %1800
  %1829 = fadd fast float %1826, %1801
  %1830 = fadd fast float %1815, %1827
  %1831 = fmul fast float %1828, %1817
  %1832 = call float @dx.op.tertiary.f32(i32 46, float %1829, float %1819, float %1831)  ; FMad(a,b,c)
  %1833 = call float @dx.op.tertiary.f32(i32 46, float %1830, float %1821, float %1832)  ; FMad(a,b,c)
  %1834 = fmul fast float %1828, %1822
  %1835 = call float @dx.op.tertiary.f32(i32 46, float %1829, float %1823, float %1834)  ; FMad(a,b,c)
  %1836 = call float @dx.op.tertiary.f32(i32 46, float %1830, float %1824, float %1835)  ; FMad(a,b,c)
  %1837 = fsub fast float %1833, %1825
  %1838 = fsub fast float %1836, %1826
  %1839 = fsub fast float %1837, %1803
  %1840 = fadd fast float %1839, %1811
  %1841 = fsub fast float %1838, %1804
  %1842 = fadd fast float %1841, %1811
  %1843 = extractvalue %dx.types.CBufRet.f32 %1802, 3
  %1844 = fmul fast float %1840, %1843
  %1845 = fmul fast float %1842, %1843
  %1846 = call float @dx.op.unary.f32(i32 7, float %1844)  ; Saturate(value)
  %1847 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  %1848 = fsub fast float 1.000000e+00, %1846
  %1849 = fsub fast float 1.000000e+00, %1847
  %1850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  %1852 = fcmp fast ugt float %1851, 0.000000e+00
  br i1 %1852, label %1853, label %1866

; <label>:1853                                    ; preds = %1813
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 2
  %1856 = fmul fast float %1855, %1851
  %1857 = extractvalue %dx.types.CBufRet.f32 %1854, 3
  %1858 = fadd fast float %1857, %1856
  %1859 = extractvalue %dx.types.CBufRet.f32 %1820, 2
  %1860 = fadd fast float %1858, %1827
  %1861 = fmul fast float %1833, %1821
  %1862 = call float @dx.op.tertiary.f32(i32 46, float %1836, float %1824, float %1861)  ; FMad(a,b,c)
  %1863 = call float @dx.op.tertiary.f32(i32 46, float %1860, float %1859, float %1862)  ; FMad(a,b,c)
  %1864 = fsub fast float %1863, %1827
  %1865 = fsub fast float %1864, %1814
  br label %1866

; <label>:1866                                    ; preds = %1853, %1813, %1796
  %1867 = phi i1 [ true, %1853 ], [ false, %1813 ], [ false, %1796 ]
  %1868 = phi float [ %1865, %1853 ], [ -1.310720e+05, %1813 ], [ -1.310720e+05, %1796 ]
  %1869 = fsub fast float %1868, %126
  %1870 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  %1871 = select i1 %1867, float %1870, float 1.000000e+00
  br label %1872

; <label>:1872                                    ; preds = %1866, %1768
  %1873 = phi float [ %1871, %1866 ], [ 0.000000e+00, %1768 ]
  %1874 = icmp eq i32 %1794, 3
  %1875 = select i1 %1874, float 1.000000e+00, float %1873
  %1876 = call float @dx.op.binary.f32(i32 35, float %1670, float %1875)  ; FMax(a,b)
  %1877 = call float @dx.op.unary.f32(i32 7, float %1876)  ; Saturate(value)
  %1878 = fcmp fast une float %1877, 0.000000e+00
  %1879 = fsub fast float -0.000000e+00, %173
  %1880 = fsub fast float -0.000000e+00, %174
  %1881 = fsub fast float -0.000000e+00, %175
  br i1 %1878, label %1882, label %2044

; <label>:1882                                    ; preds = %1872
  %1883 = call float @dx.op.dot3.f32(i32 55, float %1879, float %1880, float %1881, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %1884 = fmul fast float %1877, 2.500000e+00
  %1885 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1886 = fmul fast float %1877, 0x4013FFFFE0000000
  %1887 = fadd fast float %1886, 0xBFFFFFFFE0000000
  %1888 = call float @dx.op.unary.f32(i32 7, float %1887)  ; Saturate(value)
  %1889 = fmul fast float %1877, 0x4004000020000000
  %1890 = fadd fast float %1889, 0xBFF8000040000000
  %1891 = call float @dx.op.unary.f32(i32 7, float %1890)  ; Saturate(value)
  %1892 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1893 = fmul fast float %1728, 1.000000e+01
  %1894 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1895 = fmul fast float %1894, 2.000000e+00
  %1896 = fsub fast float 3.000000e+00, %1895
  %1897 = fmul fast float %1894, %1894
  %1898 = fmul fast float %1897, %1896
  %1899 = fsub fast float 1.000000e+00, %1898
  %1900 = fsub fast float 0x3FE3333340000000, %1749
  %1901 = fmul fast float %1900, 0x400AAAAAA0000000
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = fmul fast float %1899, %1902
  %1904 = fmul fast float %1786, 0x3FEA2B8620000000
  %1905 = fmul fast float %1787, 0x3FEA2B8620000000
  %1906 = fmul fast float %1788, 0x3FEA2B8620000000
  %1907 = fadd fast float %1904, 0x3FC81DFBA0000000
  %1908 = fmul fast float %1907, %1786
  %1909 = fadd fast float %1908, 0x3F910E6020000000
  %1910 = fadd fast float %1905, 0x3FC81DFBA0000000
  %1911 = fmul fast float %1910, %1787
  %1912 = fadd fast float %1911, 0x3F910E6020000000
  %1913 = fadd fast float %1906, 0x3FC81DFBA0000000
  %1914 = fmul fast float %1913, %1788
  %1915 = fadd fast float %1914, 0x3F910E6020000000
  %1916 = call float @dx.op.unary.f32(i32 7, float %1909)  ; Saturate(value)
  %1917 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1918 = call float @dx.op.unary.f32(i32 7, float %1915)  ; Saturate(value)
  %1919 = fsub fast float %1916, %1786
  %1920 = fsub fast float %1917, %1787
  %1921 = fsub fast float %1918, %1788
  %1922 = fmul fast float %1919, %1892
  %1923 = fmul fast float %1922, %1903
  %1924 = fmul fast float %1920, %1892
  %1925 = fmul fast float %1924, %1903
  %1926 = fmul fast float %1921, %1892
  %1927 = fmul fast float %1926, %1903
  %1928 = fadd fast float %1923, %1786
  %1929 = fadd fast float %1925, %1787
  %1930 = fadd fast float %1927, %1788
  %1931 = fmul fast float %1687, %1687
  %1932 = fmul fast float %1931, %1931
  %1933 = fadd fast float %1888, 1.000000e+00
  %1934 = fsub fast float %1933, %1903
  %1935 = call float @dx.op.unary.f32(i32 7, float %1934)  ; Saturate(value)
  %1936 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fsub fast float 1.000000e+00, %1932
  %1939 = call float @dx.op.binary.f32(i32 36, float %1935, float %1938)  ; FMin(a,b)
  %1940 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  %1941 = call float @dx.op.binary.f32(i32 35, float %1939, float %1940)  ; FMax(a,b)
  %1942 = fadd fast float %1937, 0xBFE4CCCCC0000000
  %1943 = fmul fast float %1942, 0x4006DB6DA0000000
  %1944 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  %1945 = fmul fast float %1944, 2.000000e+00
  %1946 = fsub fast float 3.000000e+00, %1945
  %1947 = bitcast float %1746 to i32
  %1948 = ashr i32 %1947, 1
  %1949 = add nsw i32 %1948, 532487669
  %1950 = bitcast i32 %1949 to float
  %1951 = fsub fast float 1.000000e+00, %1950
  %1952 = bitcast float %1951 to i32
  %1953 = sub nsw i32 2129859010, %1952
  %1954 = bitcast i32 %1953 to float
  %1955 = fmul fast float %1954, 2.000000e+00
  %1956 = bitcast float %1747 to i32
  %1957 = ashr i32 %1956, 1
  %1958 = add nsw i32 %1957, 532487669
  %1959 = bitcast i32 %1958 to float
  %1960 = fsub fast float 1.000000e+00, %1959
  %1961 = bitcast float %1960 to i32
  %1962 = sub nsw i32 2129859010, %1961
  %1963 = bitcast i32 %1962 to float
  %1964 = fmul fast float %1963, 2.000000e+00
  %1965 = bitcast float %1748 to i32
  %1966 = ashr i32 %1965, 1
  %1967 = add nsw i32 %1966, 532487669
  %1968 = bitcast i32 %1967 to float
  %1969 = fsub fast float 1.000000e+00, %1968
  %1970 = bitcast float %1969 to i32
  %1971 = sub nsw i32 2129859010, %1970
  %1972 = bitcast i32 %1971 to float
  %1973 = fmul fast float %1972, 2.000000e+00
  %1974 = fsub fast float 0x4002A9FBE0000000, %1955
  %1975 = fadd fast float %1955, 0x3FD54FDF00000000
  %1976 = bitcast float %1975 to i32
  %1977 = sub nsw i32 2129859010, %1976
  %1978 = bitcast i32 %1977 to float
  %1979 = fmul fast float %1978, %1974
  %1980 = fmul fast float %1979, %1979
  %1981 = fsub fast float 0x4002A9FBE0000000, %1964
  %1982 = fadd fast float %1964, 0x3FD54FDF00000000
  %1983 = bitcast float %1982 to i32
  %1984 = sub nsw i32 2129859010, %1983
  %1985 = bitcast i32 %1984 to float
  %1986 = fmul fast float %1985, %1981
  %1987 = fmul fast float %1986, %1986
  %1988 = fsub fast float 0x4002A9FBE0000000, %1973
  %1989 = fadd fast float %1973, 0x3FD54FDF00000000
  %1990 = bitcast float %1989 to i32
  %1991 = sub nsw i32 2129859010, %1990
  %1992 = bitcast i32 %1991 to float
  %1993 = fmul fast float %1992, %1988
  %1994 = fmul fast float %1993, %1993
  %1995 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1980)  ; FMax(a,b)
  %1996 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1987)  ; FMax(a,b)
  %1997 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1994)  ; FMax(a,b)
  %1998 = fsub fast float 1.000000e+00, %1883
  %1999 = fadd fast float %1998, %1899
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2001 = fsub fast float 1.000000e+00, %1875
  %2002 = fmul fast float %1941, %2001
  %2003 = fmul fast float %1944, %1944
  %2004 = fmul fast float %2003, %2002
  %2005 = fmul fast float %2004, %1946
  %2006 = fmul fast float %2001, 0xBFE99999A0000000
  %2007 = fmul fast float %2006, %1892
  %2008 = fmul fast float %2007, %1903
  %2009 = fadd fast float %2008, 1.000000e+00
  %2010 = fadd fast float %1749, -1.000000e+00
  %2011 = fmul fast float %2009, %2010
  %2012 = fadd fast float %2011, 1.000000e+00
  %2013 = fsub fast float %1995, %1746
  %2014 = fsub fast float %1996, %1747
  %2015 = fsub fast float %1997, %1748
  %2016 = fmul fast float %2005, %2013
  %2017 = fmul fast float %2005, %2014
  %2018 = fmul fast float %2005, %2015
  %2019 = fadd fast float %2016, %1746
  %2020 = fadd fast float %2017, %1747
  %2021 = fadd fast float %2018, %1748
  %2022 = fsub fast float %57, %1703
  %2023 = fsub fast float %58, %1704
  %2024 = fsub fast float %59, %1705
  %2025 = fmul fast float %2005, %2022
  %2026 = fmul fast float %2005, %2023
  %2027 = fmul fast float %2005, %2024
  %2028 = fadd fast float %2025, %1703
  %2029 = fadd fast float %2026, %1704
  %2030 = fadd fast float %2027, %1705
  %2031 = fmul fast float %2005, %2000
  %2032 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2033 = fsub fast float 1.000000e+00, %2032
  %2034 = fmul fast float %2031, %2033
  %2035 = fadd fast float %2034, %2032
  %2036 = fsub fast float 1.000000e+00, %1687
  %2037 = fmul fast float %2005, %2036
  %2038 = fadd fast float %2037, %1687
  %2039 = call float @dx.op.dot3.f32(i32 55, float %2028, float %2029, float %2030, float %2028, float %2029, float %2030)  ; Dot3(ax,ay,az,bx,by,bz)
  %2040 = call float @dx.op.unary.f32(i32 25, float %2039)  ; Rsqrt(value)
  %2041 = fmul fast float %2028, %2040
  %2042 = fmul fast float %2029, %2040
  %2043 = fmul fast float %2030, %2040
  br label %2044

; <label>:2044                                    ; preds = %1882, %1872
  %2045 = phi float [ %1928, %1882 ], [ %1786, %1872 ]
  %2046 = phi float [ %1929, %1882 ], [ %1787, %1872 ]
  %2047 = phi float [ %1930, %1882 ], [ %1788, %1872 ]
  %2048 = phi float [ %2019, %1882 ], [ %1746, %1872 ]
  %2049 = phi float [ %2020, %1882 ], [ %1747, %1872 ]
  %2050 = phi float [ %2021, %1882 ], [ %1748, %1872 ]
  %2051 = phi float [ %2041, %1882 ], [ %1703, %1872 ]
  %2052 = phi float [ %2042, %1882 ], [ %1704, %1872 ]
  %2053 = phi float [ %2043, %1882 ], [ %1705, %1872 ]
  %2054 = phi float [ %2035, %1882 ], [ %1749, %1872 ]
  %2055 = phi float [ %2038, %1882 ], [ %1687, %1872 ]
  %2056 = select i1 %246, float 0.000000e+00, float %2050
  %2057 = call float @dx.op.dot3.f32(i32 55, float %2051, float %2052, float %2053, float %1879, float %1880, float %1881)  ; Dot3(ax,ay,az,bx,by,bz)
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = call float @dx.op.dot3.f32(i32 55, float %173, float %174, float %175, float %2051, float %2052, float %2053)  ; Dot3(ax,ay,az,bx,by,bz)
  %2060 = fmul fast float %2059, 2.000000e+00
  %2061 = fmul fast float %2060, %2051
  %2062 = fmul fast float %2060, %2052
  %2063 = fmul fast float %2060, %2053
  %2064 = fsub fast float %173, %2061
  %2065 = fsub fast float %174, %2062
  %2066 = fsub fast float %175, %2063
  %2067 = call float @dx.op.binary.f32(i32 36, float %2055, float 1.000000e+00)  ; FMin(a,b)
  %2068 = fsub fast float 1.000000e+00, %2055
  %2069 = bitcast float %2068 to i32
  %2070 = sub nsw i32 2129859010, %2069
  %2071 = bitcast i32 %2070 to float
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.CBufRet.f32 %2072, 1
  %2075 = fadd fast float %2073, %124
  %2076 = fadd fast float %2074, %125
  %2077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.i32 %2077, 0
  %2079 = icmp eq i32 %2078, 1
  br i1 %2079, label %2080, label %2115

; <label>:2080                                    ; preds = %2044
  %2081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2081, 0
  %2083 = extractvalue %dx.types.CBufRet.f32 %2081, 1
  %2084 = fsub fast float %2075, %2082
  %2085 = fsub fast float %2076, %2083
  %2086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2087 = extractvalue %dx.types.CBufRet.f32 %2086, 0
  %2088 = extractvalue %dx.types.CBufRet.f32 %2086, 1
  %2089 = fmul fast float %2084, %2087
  %2090 = fmul fast float %2085, %2088
  %2091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2092 = extractvalue %dx.types.ResRet.f32 %2091, 0
  %2093 = fcmp fast ogt float %2092, 0.000000e+00
  %2094 = extractvalue %dx.types.CBufRet.i32 %2077, 3
  %2095 = icmp ne i32 %2094, 0
  %2096 = and i1 %2093, %2095
  br i1 %2096, label %2097, label %2115, !dx.controlflow.hints !84

; <label>:2097                                    ; preds = %2080
  %2098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2099 = extractvalue %dx.types.CBufRet.f32 %2098, 0
  %2100 = extractvalue %dx.types.CBufRet.f32 %2098, 1
  %2101 = fsub fast float %2075, %2099
  %2102 = fsub fast float %2076, %2100
  %2103 = fmul fast float %2101, %2101
  %2104 = fmul fast float %2102, %2102
  %2105 = fadd fast float %2103, %2104
  %2106 = uitofp i32 %2094 to float
  %2107 = fmul fast float %2106, %2106
  %2108 = fcmp fast ogt float %2105, %2107
  br i1 %2108, label %2115, label %2109

; <label>:2109                                    ; preds = %2097
  %2110 = call float @dx.op.unary.f32(i32 24, float %2105)  ; Sqrt(value)
  %2111 = fsub fast float %2106, %2110
  %2112 = fmul fast float %2111, 0x3F75555560000000
  %2113 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2114 = call float @dx.op.binary.f32(i32 36, float %2113, float %2092)  ; FMin(a,b)
  br label %2115

; <label>:2115                                    ; preds = %2109, %2097, %2080, %2044
  %2116 = phi float [ 1.000000e+00, %2044 ], [ %2114, %2109 ], [ %2092, %2080 ], [ 0.000000e+00, %2097 ]
  %2117 = fcmp fast ogt float %2116, 0.000000e+00
  br i1 %2117, label %2118, label %2216, !dx.controlflow.hints !85

; <label>:2118                                    ; preds = %2115
  %2119 = fadd fast float %155, 5.000000e-01
  %2120 = call float @dx.op.unary.f32(i32 27, float %2119)  ; Round_ni(value)
  %2121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %153, float %154, float %2120, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2122 = extractvalue %dx.types.ResRet.f32 %2121, 0
  %2123 = extractvalue %dx.types.ResRet.f32 %2121, 1
  %2124 = extractvalue %dx.types.ResRet.f32 %2121, 2
  %2125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2125, 3
  %2127 = fmul fast float %2126, %2122
  %2128 = fmul fast float %2126, %2123
  %2129 = fmul fast float %2126, %2124
  %2130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %153, float %154, float %2120, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  %2132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %45, float %153, float %154, float %2120, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2133 = extractvalue %dx.types.ResRet.f32 %2132, 0
  %2134 = extractvalue %dx.types.ResRet.f32 %2132, 1
  %2135 = fmul fast float %2133, 2.000000e+00
  %2136 = fmul fast float %2134, 2.000000e+00
  %2137 = fadd fast float %2135, -1.000000e+00
  %2138 = fadd fast float %2136, -1.000000e+00
  %2139 = fadd fast float %2137, %2138
  %2140 = fmul fast float %2139, 5.000000e-01
  %2141 = fsub fast float %2137, %2138
  %2142 = fmul fast float %2141, 5.000000e-01
  %2143 = call float @dx.op.unary.f32(i32 6, float %2140)  ; FAbs(value)
  %2144 = fsub fast float 1.000000e+00, %2143
  %2145 = call float @dx.op.unary.f32(i32 6, float %2142)  ; FAbs(value)
  %2146 = fsub fast float %2144, %2145
  %2147 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2146)  ; FMax(a,b)
  %2148 = call float @dx.op.dot3.f32(i32 55, float %2140, float %2142, float %2147, float %2140, float %2142, float %2147)  ; Dot3(ax,ay,az,bx,by,bz)
  %2149 = bitcast float %2148 to i32
  %2150 = ashr i32 %2149, 1
  %2151 = sub nsw i32 1597250115, %2150
  %2152 = bitcast i32 %2151 to float
  %2153 = fmul fast float %2152, %2140
  %2154 = fmul fast float %2152, %2142
  %2155 = fmul fast float %2152, %2147
  %2156 = fsub fast float 1.000000e+00, %2131
  %2157 = fdiv fast float %2156, %2155
  %2158 = fmul fast float %2155, %57
  %2159 = fmul fast float %2155, %58
  %2160 = fmul fast float %2155, %59
  %2161 = fmul fast float %2153, %53
  %2162 = fmul fast float %2153, %54
  %2163 = fmul fast float %2153, %55
  %2164 = fadd fast float %2158, %2161
  %2165 = fadd fast float %2159, %2162
  %2166 = fadd fast float %2160, %2163
  %2167 = fmul fast float %2154, %88
  %2168 = fmul fast float %2154, %89
  %2169 = fmul fast float %2154, %90
  %2170 = fadd fast float %2164, %2167
  %2171 = fadd fast float %2165, %2168
  %2172 = fadd fast float %2166, %2169
  %2173 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2172, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2174 = call float @dx.op.unary.f32(i32 25, float %2173)  ; Rsqrt(value)
  %2175 = fmul fast float %2170, %2174
  %2176 = fmul fast float %2171, %2174
  %2177 = fmul fast float %2172, %2174
  %2178 = call float @dx.op.dot3.f32(i32 55, float %2051, float %2052, float %2053, float %2051, float %2052, float %2053)  ; Dot3(ax,ay,az,bx,by,bz)
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2180 = fmul fast float %2179, 5.000000e-01
  %2181 = fadd fast float %2180, 5.000000e-01
  %2182 = fmul fast float %2181, %2131
  %2183 = call float @dx.op.dot3.f32(i32 55, float %2051, float %2052, float %2053, float %2175, float %2176, float %2177)  ; Dot3(ax,ay,az,bx,by,bz)
  %2184 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2185 = fmul fast float %2184, %2157
  %2186 = fadd fast float %2182, %2185
  %2187 = fsub fast float 5.000000e-01, %2180
  %2188 = fmul fast float %2187, %2045
  %2189 = fmul fast float %2187, %2046
  %2190 = fmul fast float %2187, %2047
  %2191 = fadd fast float %2186, %2188
  %2192 = fmul fast float %2191, %2127
  %2193 = fadd fast float %2186, %2189
  %2194 = fmul fast float %2193, %2128
  %2195 = fadd fast float %2186, %2190
  %2196 = fmul fast float %2195, %2129
  %2197 = call float @dx.op.dot3.f32(i32 55, float %2064, float %2065, float %2066, float %2051, float %2052, float %2053)  ; Dot3(ax,ay,az,bx,by,bz)
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2199 = fmul fast float %2198, 5.000000e-01
  %2200 = fadd fast float %2199, 5.000000e-01
  %2201 = fmul fast float %2200, %2131
  %2202 = call float @dx.op.dot3.f32(i32 55, float %2064, float %2065, float %2066, float %2175, float %2176, float %2177)  ; Dot3(ax,ay,az,bx,by,bz)
  %2203 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  %2204 = fmul fast float %2203, %2157
  %2205 = fadd fast float %2201, %2204
  %2206 = fsub fast float 5.000000e-01, %2199
  %2207 = fmul fast float %2206, %2045
  %2208 = fmul fast float %2206, %2046
  %2209 = fmul fast float %2206, %2047
  %2210 = fadd fast float %2205, %2207
  %2211 = fmul fast float %2210, %2127
  %2212 = fadd fast float %2205, %2208
  %2213 = fmul fast float %2212, %2128
  %2214 = fadd fast float %2205, %2209
  %2215 = fmul fast float %2214, %2129
  br label %2216

; <label>:2216                                    ; preds = %2118, %2115
  %2217 = phi float [ %2211, %2118 ], [ 0.000000e+00, %2115 ]
  %2218 = phi float [ %2213, %2118 ], [ 0.000000e+00, %2115 ]
  %2219 = phi float [ %2215, %2118 ], [ 0.000000e+00, %2115 ]
  %2220 = phi float [ %2192, %2118 ], [ 0.000000e+00, %2115 ]
  %2221 = phi float [ %2194, %2118 ], [ 0.000000e+00, %2115 ]
  %2222 = phi float [ %2196, %2118 ], [ 0.000000e+00, %2115 ]
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 0
  %2225 = fcmp fast ogt float %2224, 0.000000e+00
  %2226 = and i1 %2117, %2225
  br i1 %2226, label %2227, label %2431, !dx.controlflow.hints !86

; <label>:2227                                    ; preds = %2216
  %2228 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %2229 = fadd fast float %2228, %126
  %2230 = fmul fast float %2051, 3.200000e+01
  %2231 = fmul fast float %2052, 3.200000e+01
  %2232 = fadd fast float %2075, %2230
  %2233 = fadd fast float %2076, %2231
  %2234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2234, 0
  %2236 = extractvalue %dx.types.CBufRet.f32 %2234, 1
  %2237 = fsub fast float %2232, %2235
  %2238 = fsub fast float %2233, %2236
  %2239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.f32 %2239, 0
  %2241 = extractvalue %dx.types.CBufRet.f32 %2239, 1
  %2242 = fmul fast float %2237, %2240
  %2243 = fmul fast float %2238, %2241
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 0
  %2246 = extractvalue %dx.types.CBufRet.f32 %2244, 1
  %2247 = fsub fast float %2075, %2245
  %2248 = fsub fast float %2076, %2246
  %2249 = fmul fast float %2247, %2247
  %2250 = fmul fast float %2248, %2248
  %2251 = fadd fast float %2249, %2250
  %2252 = call float @dx.op.unary.f32(i32 24, float %2251)  ; Sqrt(value)
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 0
  %2255 = extractvalue %dx.types.CBufRet.f32 %2253, 1
  %2256 = fsub fast float %2252, %2254
  %2257 = fdiv fast float %2256, %2255
  %2258 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2259 = fmul fast float %2258, 2.000000e+00
  %2260 = fsub fast float 3.000000e+00, %2259
  %2261 = fmul fast float %2258, %2258
  %2262 = fmul fast float %2261, %2260
  %2263 = fcmp fast oge float %2242, 0.000000e+00
  %2264 = fcmp fast ole float %2242, 1.000000e+00
  %2265 = and i1 %2264, %2263
  %2266 = fcmp fast oge float %2243, 0.000000e+00
  %2267 = and i1 %2266, %2265
  %2268 = fcmp fast ole float %2243, 1.000000e+00
  %2269 = and i1 %2268, %2267
  %2270 = fcmp fast ogt float %2262, 0.000000e+00
  %2271 = and i1 %2270, %2269
  br i1 %2271, label %2272, label %2395, !dx.controlflow.hints !87

; <label>:2272                                    ; preds = %2227
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 2
  %2275 = extractvalue %dx.types.CBufRet.f32 %2273, 3
  %2276 = fmul fast float %2274, %2242
  %2277 = fmul fast float %2275, %2243
  %2278 = call float @dx.op.unary.f32(i32 27, float %2276)  ; Round_ni(value)
  %2279 = call float @dx.op.unary.f32(i32 27, float %2277)  ; Round_ni(value)
  %2280 = fptosi float %2278 to i32
  %2281 = fptosi float %2279 to i32
  %2282 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %35, i32 0, i32 %2280, i32 %2281, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = lshr i32 %2283, 16
  %2285 = icmp eq i32 %2284, 65535
  br i1 %2285, label %2395, label %2286

; <label>:2286                                    ; preds = %2272
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 0
  %2289 = fmul fast float %2288, %2242
  %2290 = extractvalue %dx.types.CBufRet.f32 %2287, 1
  %2291 = fadd fast float %2289, %2290
  %2292 = extractvalue %dx.types.CBufRet.f32 %2287, 2
  %2293 = fmul fast float %2292, %2243
  %2294 = extractvalue %dx.types.CBufRet.f32 %2287, 3
  %2295 = fadd fast float %2293, %2294
  %2296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %2291, float %2295, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2297 = extractvalue %dx.types.ResRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.ResRet.f32 %2296, 1
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2301 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2302 = fsub fast float %2300, %2301
  %2303 = fmul fast float %2302, %2297
  %2304 = fadd fast float %2303, %2301
  %2305 = extractvalue %dx.types.CBufRet.f32 %2299, 3
  %2306 = extractvalue %dx.types.CBufRet.f32 %2299, 2
  %2307 = fsub fast float %2305, %2306
  %2308 = fmul fast float %2307, %2298
  %2309 = fadd fast float %2308, %2306
  %2310 = fsub fast float %2229, %2304
  %2311 = fsub fast float %2309, %2304
  %2312 = fdiv fast float %2310, %2311
  %2313 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  %2314 = extractvalue %dx.types.CBufRet.f32 %2223, 1
  %2315 = extractvalue %dx.types.CBufRet.f32 %2273, 0
  %2316 = extractvalue %dx.types.CBufRet.f32 %2273, 1
  %2317 = fmul fast float %2315, %2242
  %2318 = fmul fast float %2316, %2243
  %2319 = fmul fast float %2317, 1.250000e-01
  %2320 = fmul fast float %2318, 1.250000e-01
  %2321 = call float @dx.op.unary.f32(i32 27, float %2319)  ; Round_ni(value)
  %2322 = call float @dx.op.unary.f32(i32 27, float %2320)  ; Round_ni(value)
  %2323 = fmul fast float %2321, 8.000000e+00
  %2324 = fmul fast float %2322, 8.000000e+00
  %2325 = fsub fast float %2317, %2323
  %2326 = fsub fast float %2318, %2324
  %2327 = fadd fast float %2325, 5.000000e-01
  %2328 = fadd fast float %2326, 5.000000e-01
  %2329 = and i32 %2284, 255
  %2330 = lshr i32 %2283, 24
  %2331 = mul nuw nsw i32 %2329, 9
  %2332 = uitofp i32 %2331 to float
  %2333 = mul nuw nsw i32 %2330, 9
  %2334 = uitofp i32 %2333 to float
  %2335 = fadd fast float %2327, %2332
  %2336 = fadd fast float %2328, %2334
  %2337 = fdiv fast float %2335, %2224
  %2338 = fdiv fast float %2336, %2314
  %2339 = fmul fast float %2313, 4.375000e-01
  %2340 = fadd fast float %2339, 3.125000e-02
  %2341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2337, float %2338, float %2340, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.ResRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.ResRet.f32 %2341, 2
  %2345 = fadd fast float %2339, 5.312500e-01
  %2346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2337, float %2338, float %2345, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2347 = extractvalue %dx.types.ResRet.f32 %2346, 0
  %2348 = extractvalue %dx.types.ResRet.f32 %2346, 1
  %2349 = extractvalue %dx.types.ResRet.f32 %2346, 2
  %2350 = fmul fast float %2347, 2.000000e+00
  %2351 = fmul fast float %2348, 2.000000e+00
  %2352 = fmul fast float %2349, 2.000000e+00
  %2353 = fadd fast float %2350, -1.000000e+00
  %2354 = fadd fast float %2351, -1.000000e+00
  %2355 = fadd fast float %2352, -1.000000e+00
  %2356 = fmul fast float %2353, %2353
  %2357 = fmul fast float %2354, %2354
  %2358 = fadd fast float %2356, %2357
  %2359 = fmul fast float %2355, %2355
  %2360 = fadd fast float %2358, %2359
  %2361 = call float @dx.op.unary.f32(i32 24, float %2360)  ; Sqrt(value)
  %2362 = fcmp fast ogt float %2361, 0.000000e+00
  br i1 %2362, label %2363, label %2367

; <label>:2363                                    ; preds = %2286
  %2364 = fdiv fast float %2353, %2361
  %2365 = fdiv fast float %2354, %2361
  %2366 = fdiv fast float %2355, %2361
  br label %2367

; <label>:2367                                    ; preds = %2363, %2286
  %2368 = phi float [ %2364, %2363 ], [ 0.000000e+00, %2286 ]
  %2369 = phi float [ %2365, %2363 ], [ 0.000000e+00, %2286 ]
  %2370 = phi float [ %2366, %2363 ], [ 0.000000e+00, %2286 ]
  %2371 = call float @dx.op.dot3.f32(i32 55, float %2368, float %2369, float %2370, float %2051, float %2052, float %2053)  ; Dot3(ax,ay,az,bx,by,bz)
  %2372 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2371)  ; FMax(a,b)
  %2373 = fmul fast float %2372, 0x400C5BF8A0000000
  %2374 = fmul fast float %2342, %2262
  %2375 = fmul fast float %2374, %2373
  %2376 = fmul fast float %2343, %2262
  %2377 = fmul fast float %2376, %2373
  %2378 = fmul fast float %2344, %2262
  %2379 = fmul fast float %2378, %2373
  %2380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.f32 %2380, 3
  %2382 = fmul fast float %2375, %2381
  %2383 = fmul fast float %2377, %2381
  %2384 = fmul fast float %2379, %2381
  %2385 = fcmp fast ogt float %2229, %2309
  br i1 %2385, label %2386, label %2395

; <label>:2386                                    ; preds = %2367
  %2387 = fmul fast float %2311, 0x3FC24924A0000000
  %2388 = fsub fast float %2229, %2309
  %2389 = fdiv fast float %2388, %2387
  %2390 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  %2391 = fsub fast float 1.000000e+00, %2390
  %2392 = fmul fast float %2391, %2382
  %2393 = fmul fast float %2391, %2383
  %2394 = fmul fast float %2391, %2384
  br label %2395

; <label>:2395                                    ; preds = %2386, %2367, %2272, %2227
  %2396 = phi float [ %2394, %2386 ], [ %2384, %2367 ], [ 0.000000e+00, %2272 ], [ 0.000000e+00, %2227 ]
  %2397 = phi float [ %2393, %2386 ], [ %2383, %2367 ], [ 0.000000e+00, %2272 ], [ 0.000000e+00, %2227 ]
  %2398 = phi float [ %2392, %2386 ], [ %2382, %2367 ], [ 0.000000e+00, %2272 ], [ 0.000000e+00, %2227 ]
  %2399 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2398)  ; FMax(a,b)
  %2400 = fmul fast float %2399, 0x3FD20DD760000000
  %2401 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2064, float %2065, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %2402 = fmul fast float %2401, 0x3FDF454380000000
  %2403 = fmul fast float %2401, %2401
  %2404 = fmul fast float %2403, 0x3FEE471020000000
  %2405 = fadd fast float %2404, 0xBFD42F6020000000
  %2406 = call float @dx.op.dot3.f32(i32 55, float %2399, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2402, float %2405)  ; Dot3(ax,ay,az,bx,by,bz)
  %2407 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2397)  ; FMax(a,b)
  %2408 = fmul fast float %2407, 0x3FD20DD760000000
  %2409 = call float @dx.op.dot3.f32(i32 55, float %2407, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2402, float %2405)  ; Dot3(ax,ay,az,bx,by,bz)
  %2410 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2396)  ; FMax(a,b)
  %2411 = fmul fast float %2410, 0x3FD20DD760000000
  %2412 = call float @dx.op.dot3.f32(i32 55, float %2410, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2402, float %2405)  ; Dot3(ax,ay,az,bx,by,bz)
  %2413 = call float @dx.op.binary.f32(i32 35, float %2400, float 0.000000e+00)  ; FMax(a,b)
  %2414 = call float @dx.op.binary.f32(i32 35, float %2408, float 0.000000e+00)  ; FMax(a,b)
  %2415 = call float @dx.op.binary.f32(i32 35, float %2411, float 0.000000e+00)  ; FMax(a,b)
  %2416 = call float @dx.op.binary.f32(i32 35, float %2406, float 0.000000e+00)  ; FMax(a,b)
  %2417 = call float @dx.op.binary.f32(i32 35, float %2409, float 0.000000e+00)  ; FMax(a,b)
  %2418 = call float @dx.op.binary.f32(i32 35, float %2412, float 0.000000e+00)  ; FMax(a,b)
  %2419 = fmul fast float %2413, %2116
  %2420 = fmul fast float %2414, %2116
  %2421 = fmul fast float %2415, %2116
  %2422 = fadd fast float %2419, %2220
  %2423 = fadd fast float %2420, %2221
  %2424 = fadd fast float %2421, %2222
  %2425 = fmul fast float %2416, %2116
  %2426 = fmul fast float %2417, %2116
  %2427 = fmul fast float %2418, %2116
  %2428 = fadd fast float %2425, %2217
  %2429 = fadd fast float %2426, %2218
  %2430 = fadd fast float %2427, %2219
  br label %2431

; <label>:2431                                    ; preds = %2395, %2216
  %2432 = phi float [ %2428, %2395 ], [ %2217, %2216 ]
  %2433 = phi float [ %2429, %2395 ], [ %2218, %2216 ]
  %2434 = phi float [ %2430, %2395 ], [ %2219, %2216 ]
  %2435 = phi float [ %2419, %2395 ], [ 0.000000e+00, %2216 ]
  %2436 = phi float [ %2420, %2395 ], [ 0.000000e+00, %2216 ]
  %2437 = phi float [ %2421, %2395 ], [ 0.000000e+00, %2216 ]
  %2438 = phi float [ %2422, %2395 ], [ %2220, %2216 ]
  %2439 = phi float [ %2423, %2395 ], [ %2221, %2216 ]
  %2440 = phi float [ %2424, %2395 ], [ %2222, %2216 ]
  %2441 = fcmp fast olt float %2116, 1.000000e+00
  br i1 %2441, label %2442, label %3275, !dx.controlflow.hints !88

; <label>:2442                                    ; preds = %2431
  %2443 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %2444 = fadd fast float %2443, %126
  %2445 = fmul fast float %2051, 3.200000e+01
  %2446 = fmul fast float %2052, 3.200000e+01
  %2447 = fadd fast float %2075, %2445
  %2448 = fadd fast float %2076, %2446
  %2449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2450 = extractvalue %dx.types.CBufRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.CBufRet.f32 %2449, 1
  %2452 = fsub fast float %2447, %2450
  %2453 = fsub fast float %2448, %2451
  %2454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2455 = extractvalue %dx.types.CBufRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.CBufRet.f32 %2454, 1
  %2457 = fmul fast float %2452, %2455
  %2458 = fmul fast float %2453, %2456
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 0
  %2461 = fmul fast float %2457, %2460
  %2462 = extractvalue %dx.types.CBufRet.f32 %2459, 1
  %2463 = fadd fast float %2461, %2462
  %2464 = extractvalue %dx.types.CBufRet.f32 %2459, 2
  %2465 = fmul fast float %2464, %2458
  %2466 = extractvalue %dx.types.CBufRet.f32 %2459, 3
  %2467 = fadd fast float %2465, %2466
  %2468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %2463, float %2467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2469 = extractvalue %dx.types.ResRet.f32 %2468, 0
  %2470 = extractvalue %dx.types.ResRet.f32 %2468, 1
  %2471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2472 = extractvalue %dx.types.CBufRet.f32 %2471, 1
  %2473 = extractvalue %dx.types.CBufRet.f32 %2471, 0
  %2474 = fsub fast float %2472, %2473
  %2475 = fmul fast float %2474, %2469
  %2476 = fadd fast float %2475, %2473
  %2477 = extractvalue %dx.types.CBufRet.f32 %2471, 3
  %2478 = extractvalue %dx.types.CBufRet.f32 %2471, 2
  %2479 = fsub fast float %2477, %2478
  %2480 = fmul fast float %2479, %2470
  %2481 = fadd fast float %2480, %2478
  %2482 = fsub fast float %2444, %2476
  %2483 = fsub fast float %2481, %2476
  %2484 = fdiv fast float %2482, %2483
  %2485 = call float @dx.op.unary.f32(i32 7, float %2484)  ; Saturate(value)
  %2486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2486, 0
  %2488 = fmul fast float %2487, %2485
  %2489 = extractvalue %dx.types.CBufRet.f32 %2486, 1
  %2490 = fadd fast float %2488, %2489
  %2491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %2463, float %2467, float %2490, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.ResRet.f32 %2491, 1
  %2494 = extractvalue %dx.types.ResRet.f32 %2491, 2
  %2495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2496 = extractvalue %dx.types.CBufRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.CBufRet.f32 %2495, 1
  %2498 = extractvalue %dx.types.CBufRet.f32 %2495, 2
  %2499 = fmul fast float %2496, %2492
  %2500 = fmul fast float %2497, %2493
  %2501 = fmul fast float %2498, %2494
  %2502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2503 = extractvalue %dx.types.CBufRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.CBufRet.f32 %2502, 1
  %2505 = extractvalue %dx.types.CBufRet.f32 %2502, 2
  %2506 = fadd fast float %2499, %2503
  %2507 = fadd fast float %2500, %2504
  %2508 = fadd fast float %2501, %2505
  %2509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2510 = extractvalue %dx.types.CBufRet.f32 %2509, 0
  %2511 = fmul fast float %2510, %2457
  %2512 = extractvalue %dx.types.CBufRet.f32 %2509, 1
  %2513 = fadd fast float %2511, %2512
  %2514 = extractvalue %dx.types.CBufRet.f32 %2509, 2
  %2515 = fmul fast float %2514, %2458
  %2516 = extractvalue %dx.types.CBufRet.f32 %2509, 3
  %2517 = fadd fast float %2515, %2516
  %2518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2519 = extractvalue %dx.types.CBufRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.CBufRet.f32 %2518, 1
  %2521 = extractvalue %dx.types.CBufRet.f32 %2518, 2
  %2522 = extractvalue %dx.types.CBufRet.f32 %2518, 3
  %2523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2524 = extractvalue %dx.types.CBufRet.f32 %2523, 0
  %2525 = extractvalue %dx.types.CBufRet.f32 %2523, 1
  %2526 = extractvalue %dx.types.CBufRet.f32 %2523, 2
  %2527 = extractvalue %dx.types.CBufRet.f32 %2523, 3
  %2528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2513, float %2517, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2529 = extractvalue %dx.types.ResRet.f32 %2528, 0
  %2530 = extractvalue %dx.types.ResRet.f32 %2528, 1
  %2531 = extractvalue %dx.types.ResRet.f32 %2528, 2
  %2532 = extractvalue %dx.types.ResRet.f32 %2528, 3
  %2533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2513, float %2517, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2534 = extractvalue %dx.types.ResRet.f32 %2533, 0
  %2535 = extractvalue %dx.types.ResRet.f32 %2533, 1
  %2536 = extractvalue %dx.types.ResRet.f32 %2533, 2
  %2537 = extractvalue %dx.types.ResRet.f32 %2533, 3
  %2538 = fmul fast float %2529, %2506
  %2539 = fmul fast float %2534, %2506
  %2540 = fmul fast float %2536, %2506
  %2541 = fmul fast float %2532, %2506
  %2542 = fadd fast float %2538, %2519
  %2543 = fadd fast float %2539, %2520
  %2544 = fadd fast float %2540, %2521
  %2545 = fadd fast float %2541, %2522
  %2546 = fmul fast float %2530, %2506
  %2547 = fmul fast float %2535, %2506
  %2548 = fadd fast float %2546, %2524
  %2549 = fadd fast float %2547, %2525
  %2550 = fmul fast float %2531, %2506
  %2551 = fmul fast float %2537, %2506
  %2552 = fadd fast float %2550, %2526
  %2553 = fadd fast float %2551, %2527
  %2554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2513, float %2517, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2555 = extractvalue %dx.types.ResRet.f32 %2554, 0
  %2556 = extractvalue %dx.types.ResRet.f32 %2554, 1
  %2557 = extractvalue %dx.types.ResRet.f32 %2554, 2
  %2558 = extractvalue %dx.types.ResRet.f32 %2554, 3
  %2559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2513, float %2517, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2560 = extractvalue %dx.types.ResRet.f32 %2559, 0
  %2561 = extractvalue %dx.types.ResRet.f32 %2559, 1
  %2562 = extractvalue %dx.types.ResRet.f32 %2559, 2
  %2563 = extractvalue %dx.types.ResRet.f32 %2559, 3
  %2564 = fmul fast float %2555, %2507
  %2565 = fmul fast float %2560, %2507
  %2566 = fmul fast float %2562, %2507
  %2567 = fmul fast float %2558, %2507
  %2568 = fadd fast float %2542, %2564
  %2569 = fadd fast float %2543, %2565
  %2570 = fadd fast float %2544, %2566
  %2571 = fadd fast float %2545, %2567
  %2572 = fmul fast float %2556, %2507
  %2573 = fmul fast float %2561, %2507
  %2574 = fadd fast float %2548, %2572
  %2575 = fadd fast float %2549, %2573
  %2576 = fmul fast float %2557, %2507
  %2577 = fmul fast float %2563, %2507
  %2578 = fadd fast float %2552, %2576
  %2579 = fadd fast float %2553, %2577
  %2580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2513, float %2517, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2581 = extractvalue %dx.types.ResRet.f32 %2580, 0
  %2582 = extractvalue %dx.types.ResRet.f32 %2580, 1
  %2583 = extractvalue %dx.types.ResRet.f32 %2580, 2
  %2584 = extractvalue %dx.types.ResRet.f32 %2580, 3
  %2585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2513, float %2517, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2586 = extractvalue %dx.types.ResRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.ResRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.ResRet.f32 %2585, 2
  %2589 = extractvalue %dx.types.ResRet.f32 %2585, 3
  %2590 = fmul fast float %2581, %2508
  %2591 = fmul fast float %2586, %2508
  %2592 = fmul fast float %2588, %2508
  %2593 = fmul fast float %2584, %2508
  %2594 = fadd fast float %2568, %2590
  %2595 = fadd fast float %2569, %2591
  %2596 = fadd fast float %2570, %2592
  %2597 = fadd fast float %2571, %2593
  %2598 = fmul fast float %2582, %2508
  %2599 = fmul fast float %2587, %2508
  %2600 = fadd fast float %2574, %2598
  %2601 = fadd fast float %2575, %2599
  %2602 = fmul fast float %2583, %2508
  %2603 = fmul fast float %2589, %2508
  %2604 = fadd fast float %2578, %2602
  %2605 = fadd fast float %2579, %2603
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 0
  %2608 = fsub fast float %2075, %2607
  %2609 = fsub fast float %2450, %2075
  %2610 = call float @dx.op.binary.f32(i32 35, float %2609, float %2608)  ; FMax(a,b)
  %2611 = extractvalue %dx.types.CBufRet.f32 %2606, 1
  %2612 = fsub fast float %2076, %2611
  %2613 = fsub fast float %2451, %2076
  %2614 = call float @dx.op.binary.f32(i32 35, float %2613, float %2612)  ; FMax(a,b)
  %2615 = call float @dx.op.binary.f32(i32 35, float %2610, float %2614)  ; FMax(a,b)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2454, 3
  %2617 = fmul fast float %2616, %2615
  %2618 = call float @dx.op.unary.f32(i32 7, float %2617)  ; Saturate(value)
  %2619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2620 = extractvalue %dx.types.CBufRet.f32 %2619, 0
  %2621 = extractvalue %dx.types.CBufRet.f32 %2619, 1
  %2622 = extractvalue %dx.types.CBufRet.f32 %2619, 2
  %2623 = extractvalue %dx.types.CBufRet.f32 %2619, 3
  %2624 = fsub fast float %2620, %2594
  %2625 = fsub fast float %2621, %2595
  %2626 = fsub fast float %2622, %2596
  %2627 = fsub fast float %2623, %2597
  %2628 = fmul fast float %2624, %2618
  %2629 = fmul fast float %2625, %2618
  %2630 = fmul fast float %2626, %2618
  %2631 = fmul fast float %2627, %2618
  %2632 = fadd fast float %2628, %2594
  %2633 = fadd fast float %2629, %2595
  %2634 = fadd fast float %2630, %2596
  %2635 = fadd fast float %2631, %2597
  %2636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2637 = extractvalue %dx.types.CBufRet.f32 %2636, 0
  %2638 = extractvalue %dx.types.CBufRet.f32 %2636, 1
  %2639 = fsub fast float %2637, %2600
  %2640 = fsub fast float %2638, %2601
  %2641 = fmul fast float %2639, %2618
  %2642 = fmul fast float %2640, %2618
  %2643 = fadd fast float %2641, %2600
  %2644 = fadd fast float %2642, %2601
  %2645 = extractvalue %dx.types.CBufRet.f32 %2636, 2
  %2646 = extractvalue %dx.types.CBufRet.f32 %2636, 3
  %2647 = fsub fast float %2645, %2604
  %2648 = fsub fast float %2646, %2605
  %2649 = fmul fast float %2647, %2618
  %2650 = fmul fast float %2648, %2618
  %2651 = fadd fast float %2649, %2604
  %2652 = fadd fast float %2650, %2605
  %2653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2654 = extractvalue %dx.types.CBufRet.f32 %2653, 0
  %2655 = fmul fast float %2654, %2632
  %2656 = fmul fast float %2654, %2633
  %2657 = fmul fast float %2654, %2634
  %2658 = fmul fast float %2654, %2635
  %2659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2660 = extractvalue %dx.types.CBufRet.f32 %2659, 0
  %2661 = fmul fast float %2660, %2643
  %2662 = fmul fast float %2660, %2644
  %2663 = fadd fast float %2661, %2655
  %2664 = fadd fast float %2662, %2657
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 0
  %2667 = fmul fast float %2666, %2651
  %2668 = fmul fast float %2666, %2652
  %2669 = fadd fast float %2663, %2667
  %2670 = fadd fast float %2664, %2668
  %2671 = extractvalue %dx.types.CBufRet.f32 %2653, 1
  %2672 = fmul fast float %2671, %2632
  %2673 = fmul fast float %2671, %2633
  %2674 = fmul fast float %2671, %2634
  %2675 = fmul fast float %2671, %2635
  %2676 = extractvalue %dx.types.CBufRet.f32 %2659, 1
  %2677 = fmul fast float %2676, %2643
  %2678 = fmul fast float %2676, %2644
  %2679 = fadd fast float %2677, %2672
  %2680 = fadd fast float %2678, %2674
  %2681 = extractvalue %dx.types.CBufRet.f32 %2665, 1
  %2682 = fmul fast float %2681, %2651
  %2683 = fmul fast float %2681, %2652
  %2684 = fadd fast float %2679, %2682
  %2685 = fadd fast float %2680, %2683
  %2686 = extractvalue %dx.types.CBufRet.f32 %2653, 2
  %2687 = fmul fast float %2686, %2632
  %2688 = fmul fast float %2686, %2633
  %2689 = fmul fast float %2686, %2634
  %2690 = fmul fast float %2686, %2635
  %2691 = extractvalue %dx.types.CBufRet.f32 %2659, 2
  %2692 = fmul fast float %2691, %2643
  %2693 = fmul fast float %2691, %2644
  %2694 = fadd fast float %2692, %2687
  %2695 = fadd fast float %2693, %2689
  %2696 = extractvalue %dx.types.CBufRet.f32 %2665, 2
  %2697 = fmul fast float %2696, %2651
  %2698 = fmul fast float %2696, %2652
  %2699 = fadd fast float %2694, %2697
  %2700 = fadd fast float %2695, %2698
  %2701 = fmul fast float %2688, %2688
  %2702 = fmul fast float %2700, %2700
  %2703 = fmul fast float %2690, %2690
  %2704 = fadd fast float %2703, %2701
  %2705 = fadd fast float %2704, %2702
  %2706 = call float @dx.op.unary.f32(i32 24, float %2705)  ; Sqrt(value)
  %2707 = fcmp fast ugt float %2706, 0.000000e+00
  br i1 %2707, label %2708, label %2723

; <label>:2708                                    ; preds = %2442
  %2709 = fsub fast float -0.000000e+00, %2690
  %2710 = fdiv fast float %2709, %2706
  %2711 = fsub fast float -0.000000e+00, %2688
  %2712 = fdiv fast float %2711, %2706
  %2713 = fdiv fast float %2700, %2706
  %2714 = fmul fast float %2699, 0x3FE279A760000000
  %2715 = fmul fast float %2712, %2688
  %2716 = fmul fast float %2713, %2700
  %2717 = fmul fast float %2710, %2690
  %2718 = fadd fast float %2715, %2717
  %2719 = fsub fast float %2718, %2716
  %2720 = call float @dx.op.unary.f32(i32 6, float %2719)  ; FAbs(value)
  %2721 = fadd fast float %2720, 0x3DDB7CDFE0000000
  %2722 = fdiv fast float %2714, %2721
  br label %2723

; <label>:2723                                    ; preds = %2708, %2442
  %2724 = phi float [ %2722, %2708 ], [ 1.000000e+00, %2442 ]
  %2725 = fmul fast float %2673, %2673
  %2726 = fmul fast float %2685, %2685
  %2727 = fmul fast float %2675, %2675
  %2728 = fadd fast float %2727, %2725
  %2729 = fadd fast float %2728, %2726
  %2730 = call float @dx.op.unary.f32(i32 24, float %2729)  ; Sqrt(value)
  %2731 = fcmp fast ugt float %2730, 0.000000e+00
  br i1 %2731, label %2732, label %2747

; <label>:2732                                    ; preds = %2723
  %2733 = fsub fast float -0.000000e+00, %2675
  %2734 = fdiv fast float %2733, %2730
  %2735 = fsub fast float -0.000000e+00, %2673
  %2736 = fdiv fast float %2735, %2730
  %2737 = fdiv fast float %2685, %2730
  %2738 = fmul fast float %2684, 0x3FE279A760000000
  %2739 = fmul fast float %2736, %2673
  %2740 = fmul fast float %2737, %2685
  %2741 = fmul fast float %2734, %2675
  %2742 = fadd fast float %2739, %2741
  %2743 = fsub fast float %2742, %2740
  %2744 = call float @dx.op.unary.f32(i32 6, float %2743)  ; FAbs(value)
  %2745 = fadd fast float %2744, 0x3DDB7CDFE0000000
  %2746 = fdiv fast float %2738, %2745
  br label %2747

; <label>:2747                                    ; preds = %2732, %2723
  %2748 = phi float [ %2746, %2732 ], [ 1.000000e+00, %2723 ]
  %2749 = call float @dx.op.binary.f32(i32 36, float %2748, float %2724)  ; FMin(a,b)
  %2750 = fmul fast float %2656, %2656
  %2751 = fmul fast float %2670, %2670
  %2752 = fmul fast float %2658, %2658
  %2753 = fadd fast float %2752, %2750
  %2754 = fadd fast float %2753, %2751
  %2755 = call float @dx.op.unary.f32(i32 24, float %2754)  ; Sqrt(value)
  %2756 = fcmp fast ugt float %2755, 0.000000e+00
  br i1 %2756, label %2757, label %2772

; <label>:2757                                    ; preds = %2747
  %2758 = fsub fast float -0.000000e+00, %2658
  %2759 = fdiv fast float %2758, %2755
  %2760 = fsub fast float -0.000000e+00, %2656
  %2761 = fdiv fast float %2760, %2755
  %2762 = fdiv fast float %2670, %2755
  %2763 = fmul fast float %2669, 0x3FE279A760000000
  %2764 = fmul fast float %2761, %2656
  %2765 = fmul fast float %2762, %2670
  %2766 = fmul fast float %2759, %2658
  %2767 = fadd fast float %2764, %2766
  %2768 = fsub fast float %2767, %2765
  %2769 = call float @dx.op.unary.f32(i32 6, float %2768)  ; FAbs(value)
  %2770 = fadd fast float %2769, 0x3DDB7CDFE0000000
  %2771 = fdiv fast float %2763, %2770
  br label %2772

; <label>:2772                                    ; preds = %2757, %2747
  %2773 = phi float [ %2771, %2757 ], [ 1.000000e+00, %2747 ]
  %2774 = call float @dx.op.binary.f32(i32 36, float %2773, float %2749)  ; FMin(a,b)
  %2775 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2776 = fcmp fast olt float %2775, 1.000000e+00
  br i1 %2776, label %2777, label %2787

; <label>:2777                                    ; preds = %2772
  %2778 = fmul fast float %2775, %2656
  %2779 = fmul fast float %2775, %2670
  %2780 = fmul fast float %2775, %2658
  %2781 = fmul fast float %2775, %2673
  %2782 = fmul fast float %2775, %2685
  %2783 = fmul fast float %2775, %2675
  %2784 = fmul fast float %2775, %2688
  %2785 = fmul fast float %2775, %2700
  %2786 = fmul fast float %2775, %2690
  br label %2787

; <label>:2787                                    ; preds = %2777, %2772
  %2788 = phi float [ %2784, %2777 ], [ %2688, %2772 ]
  %2789 = phi float [ %2785, %2777 ], [ %2700, %2772 ]
  %2790 = phi float [ %2786, %2777 ], [ %2690, %2772 ]
  %2791 = phi float [ %2781, %2777 ], [ %2673, %2772 ]
  %2792 = phi float [ %2782, %2777 ], [ %2685, %2772 ]
  %2793 = phi float [ %2783, %2777 ], [ %2675, %2772 ]
  %2794 = phi float [ %2778, %2777 ], [ %2656, %2772 ]
  %2795 = phi float [ %2779, %2777 ], [ %2670, %2772 ]
  %2796 = phi float [ %2780, %2777 ], [ %2658, %2772 ]
  %2797 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2669)  ; FMax(a,b)
  %2798 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2684)  ; FMax(a,b)
  %2799 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2699)  ; FMax(a,b)
  %2800 = fcmp fast oge float %2457, 0.000000e+00
  %2801 = and i1 %2800, %2225
  %2802 = fcmp fast ole float %2457, 1.000000e+00
  %2803 = and i1 %2802, %2801
  %2804 = fcmp fast oge float %2458, 0.000000e+00
  %2805 = and i1 %2804, %2803
  %2806 = fcmp fast ole float %2458, 1.000000e+00
  %2807 = and i1 %2806, %2805
  br i1 %2807, label %2808, label %2953, !dx.controlflow.hints !89

; <label>:2808                                    ; preds = %2787
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 2
  %2811 = extractvalue %dx.types.CBufRet.f32 %2809, 3
  %2812 = fmul fast float %2810, %2457
  %2813 = fmul fast float %2811, %2458
  %2814 = call float @dx.op.unary.f32(i32 27, float %2812)  ; Round_ni(value)
  %2815 = call float @dx.op.unary.f32(i32 27, float %2813)  ; Round_ni(value)
  %2816 = fptosi float %2814 to i32
  %2817 = fptosi float %2815 to i32
  %2818 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %35, i32 0, i32 %2816, i32 %2817, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = and i32 %2819, 65535
  %2821 = lshr i32 %2819, 16
  %2822 = icmp eq i32 %2820, 65535
  br i1 %2822, label %2859, label %2823

; <label>:2823                                    ; preds = %2808
  %2824 = extractvalue %dx.types.CBufRet.f32 %2223, 1
  %2825 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2826 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2827 = fmul fast float %2825, %2457
  %2828 = fmul fast float %2826, %2458
  %2829 = fmul fast float %2827, 1.250000e-01
  %2830 = fmul fast float %2828, 1.250000e-01
  %2831 = call float @dx.op.unary.f32(i32 27, float %2829)  ; Round_ni(value)
  %2832 = call float @dx.op.unary.f32(i32 27, float %2830)  ; Round_ni(value)
  %2833 = fmul fast float %2831, 8.000000e+00
  %2834 = fmul fast float %2832, 8.000000e+00
  %2835 = and i32 %2819, 255
  %2836 = lshr i32 %2819, 8
  %2837 = and i32 %2836, 255
  %2838 = mul nuw nsw i32 %2835, 9
  %2839 = uitofp i32 %2838 to float
  %2840 = mul nuw nsw i32 %2837, 9
  %2841 = uitofp i32 %2840 to float
  %2842 = fadd fast float %2839, 5.000000e-01
  %2843 = fadd fast float %2842, %2827
  %2844 = fsub fast float %2843, %2833
  %2845 = fadd fast float %2841, 5.000000e-01
  %2846 = fadd fast float %2845, %2828
  %2847 = fsub fast float %2846, %2834
  %2848 = fdiv fast float %2844, %2224
  %2849 = fdiv fast float %2847, %2824
  %2850 = fmul fast float %2485, 4.375000e-01
  %2851 = fadd fast float %2850, 3.125000e-02
  %2852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2848, float %2849, float %2851, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2853 = extractvalue %dx.types.ResRet.f32 %2852, 0
  %2854 = extractvalue %dx.types.ResRet.f32 %2852, 1
  %2855 = extractvalue %dx.types.ResRet.f32 %2852, 2
  %2856 = fadd fast float %2853, %2797
  %2857 = fadd fast float %2854, %2798
  %2858 = fadd fast float %2855, %2799
  br label %2859

; <label>:2859                                    ; preds = %2823, %2808
  %2860 = phi float [ %2858, %2823 ], [ %2799, %2808 ]
  %2861 = phi float [ %2857, %2823 ], [ %2798, %2808 ]
  %2862 = phi float [ %2856, %2823 ], [ %2797, %2808 ]
  %2863 = icmp eq i32 %2821, 65535
  br i1 %2863, label %2953, label %2864

; <label>:2864                                    ; preds = %2859
  %2865 = extractvalue %dx.types.CBufRet.f32 %2223, 1
  %2866 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2867 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2868 = fmul fast float %2866, %2457
  %2869 = fmul fast float %2867, %2458
  %2870 = fmul fast float %2868, 1.250000e-01
  %2871 = fmul fast float %2869, 1.250000e-01
  %2872 = call float @dx.op.unary.f32(i32 27, float %2870)  ; Round_ni(value)
  %2873 = call float @dx.op.unary.f32(i32 27, float %2871)  ; Round_ni(value)
  %2874 = fmul fast float %2872, 8.000000e+00
  %2875 = fmul fast float %2873, 8.000000e+00
  %2876 = fsub fast float %2868, %2874
  %2877 = fsub fast float %2869, %2875
  %2878 = fadd fast float %2876, 5.000000e-01
  %2879 = fadd fast float %2877, 5.000000e-01
  %2880 = and i32 %2821, 255
  %2881 = lshr i32 %2819, 24
  %2882 = mul nuw nsw i32 %2880, 9
  %2883 = uitofp i32 %2882 to float
  %2884 = mul nuw nsw i32 %2881, 9
  %2885 = uitofp i32 %2884 to float
  %2886 = fadd fast float %2878, %2883
  %2887 = fadd fast float %2879, %2885
  %2888 = fdiv fast float %2886, %2224
  %2889 = fdiv fast float %2887, %2865
  %2890 = fmul fast float %2485, 4.375000e-01
  %2891 = fadd fast float %2890, 3.125000e-02
  %2892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2888, float %2889, float %2891, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2893 = extractvalue %dx.types.ResRet.f32 %2892, 0
  %2894 = extractvalue %dx.types.ResRet.f32 %2892, 1
  %2895 = extractvalue %dx.types.ResRet.f32 %2892, 2
  %2896 = fadd fast float %2890, 5.312500e-01
  %2897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2888, float %2889, float %2896, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2898 = extractvalue %dx.types.ResRet.f32 %2897, 0
  %2899 = extractvalue %dx.types.ResRet.f32 %2897, 1
  %2900 = extractvalue %dx.types.ResRet.f32 %2897, 2
  %2901 = fmul fast float %2898, 2.000000e+00
  %2902 = fmul fast float %2899, 2.000000e+00
  %2903 = fmul fast float %2900, 2.000000e+00
  %2904 = fadd fast float %2901, -1.000000e+00
  %2905 = fadd fast float %2902, -1.000000e+00
  %2906 = fadd fast float %2903, -1.000000e+00
  %2907 = fmul fast float %2904, %2904
  %2908 = fmul fast float %2905, %2905
  %2909 = fadd fast float %2907, %2908
  %2910 = fmul fast float %2906, %2906
  %2911 = fadd fast float %2909, %2910
  %2912 = call float @dx.op.unary.f32(i32 24, float %2911)  ; Sqrt(value)
  %2913 = fcmp fast ogt float %2912, 0.000000e+00
  br i1 %2913, label %2914, label %2918

; <label>:2914                                    ; preds = %2864
  %2915 = fdiv fast float %2904, %2912
  %2916 = fdiv fast float %2905, %2912
  %2917 = fdiv fast float %2906, %2912
  br label %2918

; <label>:2918                                    ; preds = %2914, %2864
  %2919 = phi float [ %2915, %2914 ], [ 0.000000e+00, %2864 ]
  %2920 = phi float [ %2916, %2914 ], [ 0.000000e+00, %2864 ]
  %2921 = phi float [ %2917, %2914 ], [ 0.000000e+00, %2864 ]
  %2922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.f32 %2922, 0
  %2924 = extractvalue %dx.types.CBufRet.f32 %2922, 1
  %2925 = fsub fast float %2075, %2923
  %2926 = fsub fast float %2076, %2924
  %2927 = fmul fast float %2925, %2925
  %2928 = fmul fast float %2926, %2926
  %2929 = fadd fast float %2927, %2928
  %2930 = call float @dx.op.unary.f32(i32 24, float %2929)  ; Sqrt(value)
  %2931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2932 = extractvalue %dx.types.CBufRet.f32 %2931, 0
  %2933 = extractvalue %dx.types.CBufRet.f32 %2931, 1
  %2934 = fsub fast float %2930, %2932
  %2935 = fdiv fast float %2934, %2933
  %2936 = call float @dx.op.unary.f32(i32 7, float %2935)  ; Saturate(value)
  %2937 = fmul fast float %2936, 2.000000e+00
  %2938 = fsub fast float 3.000000e+00, %2937
  %2939 = fmul fast float %2936, %2936
  %2940 = fmul fast float %2939, %2938
  %2941 = call float @dx.op.dot3.f32(i32 55, float %2919, float %2920, float %2921, float %2051, float %2052, float %2053)  ; Dot3(ax,ay,az,bx,by,bz)
  %2942 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2941)  ; FMax(a,b)
  %2943 = fmul fast float %2942, 0x400C5BF8A0000000
  %2944 = fmul fast float %2940, %2893
  %2945 = fmul fast float %2944, %2943
  %2946 = fadd fast float %2945, %2862
  %2947 = fmul fast float %2940, %2894
  %2948 = fmul fast float %2947, %2943
  %2949 = fadd fast float %2948, %2861
  %2950 = fmul fast float %2940, %2895
  %2951 = fmul fast float %2950, %2943
  %2952 = fadd fast float %2951, %2860
  br label %2953

; <label>:2953                                    ; preds = %2918, %2859, %2787
  %2954 = phi float [ %2952, %2918 ], [ %2860, %2859 ], [ %2799, %2787 ]
  %2955 = phi float [ %2949, %2918 ], [ %2861, %2859 ], [ %2798, %2787 ]
  %2956 = phi float [ %2946, %2918 ], [ %2862, %2859 ], [ %2797, %2787 ]
  %2957 = fcmp fast ogt float %2444, %2481
  %2958 = and i1 %2800, %2957
  %2959 = and i1 %2802, %2958
  %2960 = and i1 %2804, %2959
  %2961 = and i1 %2806, %2960
  br i1 %2961, label %2962, label %3019, !dx.controlflow.hints !90

; <label>:2962                                    ; preds = %2953
  %2963 = fmul fast float %2483, 0x3FC24924A0000000
  %2964 = fsub fast float %2444, %2481
  %2965 = fdiv fast float %2964, %2963
  %2966 = call float @dx.op.unary.f32(i32 7, float %2965)  ; Saturate(value)
  %2967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2967, 0
  %2969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2970 = extractvalue %dx.types.CBufRet.f32 %2969, 0
  %2971 = extractvalue %dx.types.CBufRet.f32 %2969, 1
  %2972 = extractvalue %dx.types.CBufRet.f32 %2969, 2
  %2973 = fsub fast float %2968, %2956
  %2974 = fsub fast float %2970, %2794
  %2975 = fsub fast float %2971, %2795
  %2976 = fsub fast float %2972, %2796
  %2977 = fmul fast float %2973, %2966
  %2978 = fmul fast float %2974, %2966
  %2979 = fmul fast float %2975, %2966
  %2980 = fmul fast float %2976, %2966
  %2981 = fadd fast float %2977, %2956
  %2982 = fadd fast float %2978, %2794
  %2983 = fadd fast float %2979, %2795
  %2984 = fadd fast float %2980, %2796
  %2985 = extractvalue %dx.types.CBufRet.f32 %2967, 1
  %2986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.CBufRet.f32 %2986, 1
  %2989 = extractvalue %dx.types.CBufRet.f32 %2986, 2
  %2990 = fsub fast float %2985, %2955
  %2991 = fsub fast float %2987, %2791
  %2992 = fsub fast float %2988, %2792
  %2993 = fsub fast float %2989, %2793
  %2994 = fmul fast float %2990, %2966
  %2995 = fmul fast float %2991, %2966
  %2996 = fmul fast float %2992, %2966
  %2997 = fmul fast float %2993, %2966
  %2998 = fadd fast float %2994, %2955
  %2999 = fadd fast float %2995, %2791
  %3000 = fadd fast float %2996, %2792
  %3001 = fadd fast float %2997, %2793
  %3002 = extractvalue %dx.types.CBufRet.f32 %2967, 2
  %3003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3004 = extractvalue %dx.types.CBufRet.f32 %3003, 0
  %3005 = extractvalue %dx.types.CBufRet.f32 %3003, 1
  %3006 = extractvalue %dx.types.CBufRet.f32 %3003, 2
  %3007 = fsub fast float %3002, %2954
  %3008 = fsub fast float %3004, %2788
  %3009 = fsub fast float %3005, %2789
  %3010 = fsub fast float %3006, %2790
  %3011 = fmul fast float %3007, %2966
  %3012 = fmul fast float %3008, %2966
  %3013 = fmul fast float %3009, %2966
  %3014 = fmul fast float %3010, %2966
  %3015 = fadd fast float %3011, %2954
  %3016 = fadd fast float %3012, %2788
  %3017 = fadd fast float %3013, %2789
  %3018 = fadd fast float %3014, %2790
  br label %3019

; <label>:3019                                    ; preds = %2962, %2953
  %3020 = phi float [ %3015, %2962 ], [ %2954, %2953 ]
  %3021 = phi float [ %3016, %2962 ], [ %2788, %2953 ]
  %3022 = phi float [ %3017, %2962 ], [ %2789, %2953 ]
  %3023 = phi float [ %3018, %2962 ], [ %2790, %2953 ]
  %3024 = phi float [ %2998, %2962 ], [ %2955, %2953 ]
  %3025 = phi float [ %2999, %2962 ], [ %2791, %2953 ]
  %3026 = phi float [ %3000, %2962 ], [ %2792, %2953 ]
  %3027 = phi float [ %3001, %2962 ], [ %2793, %2953 ]
  %3028 = phi float [ %2981, %2962 ], [ %2956, %2953 ]
  %3029 = phi float [ %2982, %2962 ], [ %2794, %2953 ]
  %3030 = phi float [ %2983, %2962 ], [ %2795, %2953 ]
  %3031 = phi float [ %2984, %2962 ], [ %2796, %2953 ]
  %3032 = extractvalue %dx.types.CBufRet.f32 %2606, 3
  %3033 = fmul fast float %3032, %3028
  %3034 = fmul fast float %3032, %3024
  %3035 = fmul fast float %3032, %3020
  %3036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3037 = extractvalue %dx.types.CBufRet.f32 %3036, 3
  %3038 = fmul fast float %3033, %3037
  %3039 = fmul fast float %3034, %3037
  %3040 = fmul fast float %3035, %3037
  %3041 = fmul fast float %3029, 1.500000e+00
  %3042 = fmul fast float %3041, %3032
  %3043 = fmul fast float %3042, %3037
  %3044 = fmul fast float %3030, 1.500000e+00
  %3045 = fmul fast float %3044, %3032
  %3046 = fmul fast float %3045, %3037
  %3047 = fmul fast float %3031, 1.500000e+00
  %3048 = fmul fast float %3047, %3032
  %3049 = fmul fast float %3048, %3037
  %3050 = fmul fast float %3025, 1.500000e+00
  %3051 = fmul fast float %3050, %3032
  %3052 = fmul fast float %3051, %3037
  %3053 = fmul fast float %3026, 1.500000e+00
  %3054 = fmul fast float %3053, %3032
  %3055 = fmul fast float %3054, %3037
  %3056 = fmul fast float %3027, 1.500000e+00
  %3057 = fmul fast float %3056, %3032
  %3058 = fmul fast float %3057, %3037
  %3059 = fmul fast float %3021, 1.500000e+00
  %3060 = fmul fast float %3059, %3032
  %3061 = fmul fast float %3060, %3037
  %3062 = fmul fast float %3022, 1.500000e+00
  %3063 = fmul fast float %3062, %3032
  %3064 = fmul fast float %3063, %3037
  %3065 = fmul fast float %3023, 1.500000e+00
  %3066 = fmul fast float %3065, %3032
  %3067 = fmul fast float %3066, %3037
  %3068 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3038)  ; FMax(a,b)
  %3069 = call float @dx.op.dot3.f32(i32 55, float %3043, float %3046, float %3049, float %3043, float %3046, float %3049)  ; Dot3(ax,ay,az,bx,by,bz)
  %3070 = fcmp fast oeq float %3069, 0.000000e+00
  %3071 = fcmp fast oeq float %3068, 0.000000e+00
  %3072 = or i1 %3071, %3070
  br i1 %3072, label %3102, label %3073

; <label>:3073                                    ; preds = %3019
  %3074 = fsub fast float -0.000000e+00, %3049
  %3075 = fsub fast float -0.000000e+00, %3043
  %3076 = call float @dx.op.unary.f32(i32 24, float %3069)  ; Sqrt(value)
  %3077 = fdiv fast float %3076, %3068
  %3078 = fcmp fast ogt float %3077, 0x3FFB6F8900000000
  %3079 = select i1 %3078, float 0x3FFB6F8900000000, float %3077
  %3080 = fmul fast float %3079, 0x3FE8A23460000000
  %3081 = call float @dx.op.unary.f32(i32 7, float %3080)  ; Saturate(value)
  %3082 = call float @dx.op.binary.f32(i32 35, float %3079, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3083 = fmul fast float %3081, %3068
  %3084 = fmul fast float %3082, 0x3FF279A740000000
  %3085 = fadd fast float %3084, -1.000000e+00
  %3086 = call float @dx.op.dot3.f32(i32 55, float %3074, float %3075, float %3046, float %3074, float %3075, float %3046)  ; Dot3(ax,ay,az,bx,by,bz)
  %3087 = call float @dx.op.unary.f32(i32 25, float %3086)  ; Rsqrt(value)
  %3088 = fmul fast float %3087, %3074
  %3089 = fmul fast float %3087, %3075
  %3090 = fmul fast float %3087, %3046
  %3091 = fmul fast float %3085, %3085
  %3092 = fsub fast float 1.000000e+00, %3091
  %3093 = fmul fast float %3082, 0x40005F8BE0000000
  %3094 = fsub fast float 0x400C5BF8A0000000, %3093
  %3095 = fdiv fast float %3083, %3094
  %3096 = fmul fast float %3095, 0x3FEE31C3C0000000
  %3097 = fmul fast float %3096, %3092
  %3098 = fmul fast float %3082, 0x3FDACB7480000000
  %3099 = fadd fast float %3098, 0xBFD7347680000000
  %3100 = fmul fast float %3099, %3095
  %3101 = fmul fast float %3100, %3092
  br label %3102

; <label>:3102                                    ; preds = %3073, %3019
  %3103 = phi float [ %3088, %3073 ], [ 0.000000e+00, %3019 ]
  %3104 = phi float [ %3089, %3073 ], [ 0.000000e+00, %3019 ]
  %3105 = phi float [ %3090, %3073 ], [ 0.000000e+00, %3019 ]
  %3106 = phi float [ %3097, %3073 ], [ 0.000000e+00, %3019 ]
  %3107 = phi float [ %3101, %3073 ], [ 0.000000e+00, %3019 ]
  %3108 = call float @dx.op.dot3.f32(i32 55, float %3103, float %3104, float %3105, float %2051, float %2052, float %2053)  ; Dot3(ax,ay,az,bx,by,bz)
  %3109 = fmul fast float %3108, 0x3FDF454380000000
  %3110 = fmul fast float %3108, %3108
  %3111 = fmul fast float %3110, 0x3FEE471020000000
  %3112 = fadd fast float %3111, 0xBFD42F6020000000
  %3113 = fmul fast float %3068, 0x3FD20DD760000000
  %3114 = fmul fast float %3112, %3107
  %3115 = fadd fast float %3114, %3113
  %3116 = fmul fast float %3109, %3106
  %3117 = fadd fast float %3115, %3116
  %3118 = fsub fast float %3115, %3116
  %3119 = call float @dx.op.dot3.f32(i32 55, float %3103, float %3104, float %3105, float %2064, float %2065, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %3120 = fmul fast float %3119, 0x3FDF454380000000
  %3121 = fmul fast float %3119, %3119
  %3122 = fmul fast float %3121, 0x3FEE471020000000
  %3123 = fadd fast float %3122, 0xBFD42F6020000000
  %3124 = call float @dx.op.dot3.f32(i32 55, float %3068, float %3106, float %3107, float 0x3FD20DD760000000, float %3120, float %3123)  ; Dot3(ax,ay,az,bx,by,bz)
  %3125 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3039)  ; FMax(a,b)
  %3126 = call float @dx.op.dot3.f32(i32 55, float %3052, float %3055, float %3058, float %3052, float %3055, float %3058)  ; Dot3(ax,ay,az,bx,by,bz)
  %3127 = fcmp fast oeq float %3126, 0.000000e+00
  %3128 = fcmp fast oeq float %3125, 0.000000e+00
  %3129 = or i1 %3128, %3127
  br i1 %3129, label %3159, label %3130

; <label>:3130                                    ; preds = %3102
  %3131 = fsub fast float -0.000000e+00, %3058
  %3132 = fsub fast float -0.000000e+00, %3052
  %3133 = call float @dx.op.unary.f32(i32 24, float %3126)  ; Sqrt(value)
  %3134 = fdiv fast float %3133, %3125
  %3135 = fcmp fast ogt float %3134, 0x3FFB6F8900000000
  %3136 = select i1 %3135, float 0x3FFB6F8900000000, float %3134
  %3137 = fmul fast float %3136, 0x3FE8A23460000000
  %3138 = call float @dx.op.unary.f32(i32 7, float %3137)  ; Saturate(value)
  %3139 = call float @dx.op.binary.f32(i32 35, float %3136, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3140 = fmul fast float %3138, %3125
  %3141 = fmul fast float %3139, 0x3FF279A740000000
  %3142 = fadd fast float %3141, -1.000000e+00
  %3143 = call float @dx.op.dot3.f32(i32 55, float %3131, float %3132, float %3055, float %3131, float %3132, float %3055)  ; Dot3(ax,ay,az,bx,by,bz)
  %3144 = call float @dx.op.unary.f32(i32 25, float %3143)  ; Rsqrt(value)
  %3145 = fmul fast float %3144, %3131
  %3146 = fmul fast float %3144, %3132
  %3147 = fmul fast float %3144, %3055
  %3148 = fmul fast float %3142, %3142
  %3149 = fsub fast float 1.000000e+00, %3148
  %3150 = fmul fast float %3139, 0x40005F8BE0000000
  %3151 = fsub fast float 0x400C5BF8A0000000, %3150
  %3152 = fdiv fast float %3140, %3151
  %3153 = fmul fast float %3152, 0x3FEE31C3C0000000
  %3154 = fmul fast float %3153, %3149
  %3155 = fmul fast float %3139, 0x3FDACB7480000000
  %3156 = fadd fast float %3155, 0xBFD7347680000000
  %3157 = fmul fast float %3156, %3152
  %3158 = fmul fast float %3157, %3149
  br label %3159

; <label>:3159                                    ; preds = %3130, %3102
  %3160 = phi float [ %3145, %3130 ], [ 0.000000e+00, %3102 ]
  %3161 = phi float [ %3146, %3130 ], [ 0.000000e+00, %3102 ]
  %3162 = phi float [ %3147, %3130 ], [ 0.000000e+00, %3102 ]
  %3163 = phi float [ %3154, %3130 ], [ 0.000000e+00, %3102 ]
  %3164 = phi float [ %3158, %3130 ], [ 0.000000e+00, %3102 ]
  %3165 = call float @dx.op.dot3.f32(i32 55, float %3160, float %3161, float %3162, float %2051, float %2052, float %2053)  ; Dot3(ax,ay,az,bx,by,bz)
  %3166 = fmul fast float %3165, 0x3FDF454380000000
  %3167 = fmul fast float %3165, %3165
  %3168 = fmul fast float %3167, 0x3FEE471020000000
  %3169 = fadd fast float %3168, 0xBFD42F6020000000
  %3170 = fmul fast float %3125, 0x3FD20DD760000000
  %3171 = fmul fast float %3169, %3164
  %3172 = fadd fast float %3171, %3170
  %3173 = fmul fast float %3166, %3163
  %3174 = fadd fast float %3172, %3173
  %3175 = fsub fast float %3172, %3173
  %3176 = call float @dx.op.dot3.f32(i32 55, float %3160, float %3161, float %3162, float %2064, float %2065, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %3177 = fmul fast float %3176, 0x3FDF454380000000
  %3178 = fmul fast float %3176, %3176
  %3179 = fmul fast float %3178, 0x3FEE471020000000
  %3180 = fadd fast float %3179, 0xBFD42F6020000000
  %3181 = call float @dx.op.dot3.f32(i32 55, float %3125, float %3163, float %3164, float 0x3FD20DD760000000, float %3177, float %3180)  ; Dot3(ax,ay,az,bx,by,bz)
  %3182 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3040)  ; FMax(a,b)
  %3183 = call float @dx.op.dot3.f32(i32 55, float %3061, float %3064, float %3067, float %3061, float %3064, float %3067)  ; Dot3(ax,ay,az,bx,by,bz)
  %3184 = fcmp fast oeq float %3183, 0.000000e+00
  %3185 = fcmp fast oeq float %3182, 0.000000e+00
  %3186 = or i1 %3185, %3184
  br i1 %3186, label %3216, label %3187

; <label>:3187                                    ; preds = %3159
  %3188 = fsub fast float -0.000000e+00, %3067
  %3189 = fsub fast float -0.000000e+00, %3061
  %3190 = call float @dx.op.unary.f32(i32 24, float %3183)  ; Sqrt(value)
  %3191 = fdiv fast float %3190, %3182
  %3192 = fcmp fast ogt float %3191, 0x3FFB6F8900000000
  %3193 = select i1 %3192, float 0x3FFB6F8900000000, float %3191
  %3194 = fmul fast float %3193, 0x3FE8A23460000000
  %3195 = call float @dx.op.unary.f32(i32 7, float %3194)  ; Saturate(value)
  %3196 = call float @dx.op.binary.f32(i32 35, float %3193, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3197 = fmul fast float %3195, %3182
  %3198 = fmul fast float %3196, 0x3FF279A740000000
  %3199 = fadd fast float %3198, -1.000000e+00
  %3200 = call float @dx.op.dot3.f32(i32 55, float %3188, float %3189, float %3064, float %3188, float %3189, float %3064)  ; Dot3(ax,ay,az,bx,by,bz)
  %3201 = call float @dx.op.unary.f32(i32 25, float %3200)  ; Rsqrt(value)
  %3202 = fmul fast float %3201, %3188
  %3203 = fmul fast float %3201, %3189
  %3204 = fmul fast float %3201, %3064
  %3205 = fmul fast float %3199, %3199
  %3206 = fsub fast float 1.000000e+00, %3205
  %3207 = fmul fast float %3196, 0x40005F8BE0000000
  %3208 = fsub fast float 0x400C5BF8A0000000, %3207
  %3209 = fdiv fast float %3197, %3208
  %3210 = fmul fast float %3209, 0x3FEE31C3C0000000
  %3211 = fmul fast float %3210, %3206
  %3212 = fmul fast float %3196, 0x3FDACB7480000000
  %3213 = fadd fast float %3212, 0xBFD7347680000000
  %3214 = fmul fast float %3213, %3209
  %3215 = fmul fast float %3214, %3206
  br label %3216

; <label>:3216                                    ; preds = %3187, %3159
  %3217 = phi float [ %3202, %3187 ], [ 0.000000e+00, %3159 ]
  %3218 = phi float [ %3203, %3187 ], [ 0.000000e+00, %3159 ]
  %3219 = phi float [ %3204, %3187 ], [ 0.000000e+00, %3159 ]
  %3220 = phi float [ %3211, %3187 ], [ 0.000000e+00, %3159 ]
  %3221 = phi float [ %3215, %3187 ], [ 0.000000e+00, %3159 ]
  %3222 = call float @dx.op.dot3.f32(i32 55, float %3217, float %3218, float %3219, float %2051, float %2052, float %2053)  ; Dot3(ax,ay,az,bx,by,bz)
  %3223 = fmul fast float %3222, 0x3FDF454380000000
  %3224 = fmul fast float %3222, %3222
  %3225 = fmul fast float %3224, 0x3FEE471020000000
  %3226 = fadd fast float %3225, 0xBFD42F6020000000
  %3227 = fmul fast float %3182, 0x3FD20DD760000000
  %3228 = fmul fast float %3226, %3221
  %3229 = fadd fast float %3228, %3227
  %3230 = fmul fast float %3223, %3220
  %3231 = fadd fast float %3229, %3230
  %3232 = fsub fast float %3229, %3230
  %3233 = call float @dx.op.dot3.f32(i32 55, float %3217, float %3218, float %3219, float %2064, float %2065, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %3234 = fmul fast float %3233, 0x3FDF454380000000
  %3235 = fmul fast float %3233, %3233
  %3236 = fmul fast float %3235, 0x3FEE471020000000
  %3237 = fadd fast float %3236, 0xBFD42F6020000000
  %3238 = call float @dx.op.dot3.f32(i32 55, float %3182, float %3220, float %3221, float 0x3FD20DD760000000, float %3234, float %3237)  ; Dot3(ax,ay,az,bx,by,bz)
  %3239 = call float @dx.op.binary.f32(i32 35, float %3117, float 0.000000e+00)  ; FMax(a,b)
  %3240 = call float @dx.op.binary.f32(i32 35, float %3174, float 0.000000e+00)  ; FMax(a,b)
  %3241 = call float @dx.op.binary.f32(i32 35, float %3231, float 0.000000e+00)  ; FMax(a,b)
  %3242 = call float @dx.op.binary.f32(i32 35, float %3118, float 0.000000e+00)  ; FMax(a,b)
  %3243 = call float @dx.op.binary.f32(i32 35, float %3175, float 0.000000e+00)  ; FMax(a,b)
  %3244 = call float @dx.op.binary.f32(i32 35, float %3232, float 0.000000e+00)  ; FMax(a,b)
  %3245 = call float @dx.op.binary.f32(i32 35, float %3124, float 0.000000e+00)  ; FMax(a,b)
  %3246 = call float @dx.op.binary.f32(i32 35, float %3181, float 0.000000e+00)  ; FMax(a,b)
  %3247 = call float @dx.op.binary.f32(i32 35, float %3238, float 0.000000e+00)  ; FMax(a,b)
  %3248 = fsub fast float %2438, %3239
  %3249 = fsub fast float %2439, %3240
  %3250 = fsub fast float %2440, %3241
  %3251 = fmul fast float %3248, %2116
  %3252 = fmul fast float %3249, %2116
  %3253 = fmul fast float %3250, %2116
  %3254 = fadd fast float %3251, %3239
  %3255 = fadd fast float %3252, %3240
  %3256 = fadd fast float %3253, %3241
  %3257 = fsub fast float %2435, %3242
  %3258 = fsub fast float %2436, %3243
  %3259 = fsub fast float %2437, %3244
  %3260 = fmul fast float %3257, %2116
  %3261 = fmul fast float %3258, %2116
  %3262 = fmul fast float %3259, %2116
  %3263 = fadd fast float %3260, %3242
  %3264 = fadd fast float %3261, %3243
  %3265 = fadd fast float %3262, %3244
  %3266 = fsub fast float %2432, %3245
  %3267 = fsub fast float %2433, %3246
  %3268 = fsub fast float %2434, %3247
  %3269 = fmul fast float %3266, %2116
  %3270 = fmul fast float %3267, %2116
  %3271 = fmul fast float %3268, %2116
  %3272 = fadd fast float %3269, %3245
  %3273 = fadd fast float %3270, %3246
  %3274 = fadd fast float %3271, %3247
  br label %3275

; <label>:3275                                    ; preds = %3216, %2431
  %3276 = phi float [ %3272, %3216 ], [ %2432, %2431 ]
  %3277 = phi float [ %3273, %3216 ], [ %2433, %2431 ]
  %3278 = phi float [ %3274, %3216 ], [ %2434, %2431 ]
  %3279 = phi float [ %3263, %3216 ], [ %2435, %2431 ]
  %3280 = phi float [ %3264, %3216 ], [ %2436, %2431 ]
  %3281 = phi float [ %3265, %3216 ], [ %2437, %2431 ]
  %3282 = phi float [ %3254, %3216 ], [ %2438, %2431 ]
  %3283 = phi float [ %3255, %3216 ], [ %2439, %2431 ]
  %3284 = phi float [ %3256, %3216 ], [ %2440, %2431 ]
  %3285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3286 = extractvalue %dx.types.CBufRet.f32 %3285, 0
  %3287 = call float @dx.op.binary.f32(i32 36, float %2045, float %3286)  ; FMin(a,b)
  %3288 = fsub fast float 1.000000e+00, %2067
  %3289 = fmul fast float %3287, %3288
  %3290 = fsub fast float 1.000000e+00, %3289
  %3291 = bitcast float %3290 to i32
  %3292 = sub nsw i32 2129859010, %3291
  %3293 = bitcast i32 %3292 to float
  %3294 = call float @dx.op.binary.f32(i32 36, float %2046, float %3286)  ; FMin(a,b)
  %3295 = fmul fast float %3294, %3288
  %3296 = fsub fast float 1.000000e+00, %3295
  %3297 = bitcast float %3296 to i32
  %3298 = sub nsw i32 2129859010, %3297
  %3299 = bitcast i32 %3298 to float
  %3300 = call float @dx.op.binary.f32(i32 36, float %2047, float %3286)  ; FMin(a,b)
  %3301 = fmul fast float %3300, %3288
  %3302 = fsub fast float 1.000000e+00, %3301
  %3303 = bitcast float %3302 to i32
  %3304 = sub nsw i32 2129859010, %3303
  %3305 = bitcast i32 %3304 to float
  %3306 = fmul fast float %3282, %2067
  %3307 = fmul fast float %3306, %3293
  %3308 = fmul fast float %3283, %2067
  %3309 = fmul fast float %3308, %3299
  %3310 = fmul fast float %3284, %2067
  %3311 = fmul fast float %3310, %3305
  %3312 = call float @dx.op.binary.f32(i32 36, float %2048, float %3286)  ; FMin(a,b)
  %3313 = fmul fast float %3312, %3288
  %3314 = fsub fast float 1.000000e+00, %3313
  %3315 = bitcast float %3314 to i32
  %3316 = sub nsw i32 2129859010, %3315
  %3317 = bitcast i32 %3316 to float
  %3318 = call float @dx.op.binary.f32(i32 36, float %2049, float %3286)  ; FMin(a,b)
  %3319 = fmul fast float %3318, %3288
  %3320 = fsub fast float 1.000000e+00, %3319
  %3321 = bitcast float %3320 to i32
  %3322 = sub nsw i32 2129859010, %3321
  %3323 = bitcast i32 %3322 to float
  %3324 = call float @dx.op.binary.f32(i32 36, float %2056, float %3286)  ; FMin(a,b)
  %3325 = fmul fast float %3324, %3288
  %3326 = fsub fast float 1.000000e+00, %3325
  %3327 = bitcast float %3326 to i32
  %3328 = sub nsw i32 2129859010, %3327
  %3329 = bitcast i32 %3328 to float
  %3330 = fmul fast float %3276, %2067
  %3331 = fmul fast float %3330, %3317
  %3332 = fmul fast float %3277, %2067
  %3333 = fmul fast float %3332, %3323
  %3334 = fmul fast float %3278, %2067
  %3335 = fmul fast float %3334, %3329
  %3336 = call float @dx.op.dot3.f32(i32 55, float %3307, float %3309, float %3311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3337 = select i1 %246, float 0.000000e+00, float %3307
  %3338 = select i1 %246, float %3336, float %3309
  %3339 = select i1 %246, float 0.000000e+00, float %3311
  %3340 = call float @dx.op.dot3.f32(i32 55, float %3279, float %3280, float %3281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3341 = select i1 %246, float 0.000000e+00, float %3279
  %3342 = select i1 %246, float %3340, float %3280
  %3343 = select i1 %246, float 0.000000e+00, float %3281
  %3344 = call float @dx.op.dot3.f32(i32 55, float %3331, float %3333, float %3335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3345 = select i1 %246, float 0.000000e+00, float %3331
  %3346 = select i1 %246, float %3344, float %3333
  %3347 = select i1 %246, float 0.000000e+00, float %3335
  %3348 = fmul fast float %1083, %1083
  %3349 = call float @dx.op.unary.f32(i32 7, float %3348)  ; Saturate(value)
  %3350 = fmul fast float %2058, 9.843750e-01
  %3351 = fmul fast float %2054, 9.843750e-01
  %3352 = fadd fast float %3350, 7.812500e-03
  %3353 = fadd fast float %3351, 7.812500e-03
  %3354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %45, float %3352, float %3353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3355 = extractvalue %dx.types.ResRet.f32 %3354, 0
  %3356 = extractvalue %dx.types.ResRet.f32 %3354, 1
  %3357 = extractvalue %dx.types.ResRet.f32 %3354, 2
  %3358 = extractvalue %dx.types.ResRet.f32 %3354, 3
  %3359 = fsub fast float 1.000000e+00, %3349
  %3360 = fsub fast float %3357, %3355
  %3361 = fsub fast float %3358, %3356
  %3362 = fmul fast float %3360, %3359
  %3363 = fmul fast float %3361, %3359
  %3364 = fadd fast float %3362, %3355
  %3365 = fadd fast float %3363, %3356
  %3366 = fmul fast float %3364, %2048
  %3367 = fmul fast float %3364, %2049
  %3368 = fmul fast float %3364, %2056
  %3369 = fadd fast float %3366, %3365
  %3370 = fadd fast float %3367, %3365
  %3371 = fadd fast float %3368, %3365
  %3372 = fcmp fast ogt float %1677, 0.000000e+00
  br i1 %3372, label %3373, label %3399

; <label>:3373                                    ; preds = %3275
  %3374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1677, float %2058, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3375 = extractvalue %dx.types.ResRet.f32 %3374, 0
  %3376 = extractvalue %dx.types.ResRet.f32 %3374, 1
  %3377 = extractvalue %dx.types.ResRet.f32 %3374, 2
  %3378 = fadd fast float %3375, -5.000000e-01
  %3379 = fadd fast float %3376, -5.000000e-01
  %3380 = fadd fast float %3377, -5.000000e-01
  %3381 = fsub fast float 1.000000e+00, %2048
  %3382 = fsub fast float 1.000000e+00, %2049
  %3383 = fsub fast float 1.000000e+00, %2056
  %3384 = fmul fast float %2048, 4.000000e+00
  %3385 = fmul fast float %3384, %3381
  %3386 = fmul fast float %3385, %3378
  %3387 = fmul fast float %2049, 4.000000e+00
  %3388 = fmul fast float %3387, %3382
  %3389 = fmul fast float %3388, %3379
  %3390 = fmul fast float %2056, 4.000000e+00
  %3391 = fmul fast float %3390, %3383
  %3392 = fmul fast float %3391, %3380
  %3393 = fadd fast float %3386, %3369
  %3394 = fadd fast float %3389, %3370
  %3395 = fadd fast float %3392, %3371
  %3396 = call float @dx.op.unary.f32(i32 7, float %3393)  ; Saturate(value)
  %3397 = call float @dx.op.unary.f32(i32 7, float %3394)  ; Saturate(value)
  %3398 = call float @dx.op.unary.f32(i32 7, float %3395)  ; Saturate(value)
  br label %3399

; <label>:3399                                    ; preds = %3373, %3275
  %3400 = phi float [ %3396, %3373 ], [ %3369, %3275 ]
  %3401 = phi float [ %3397, %3373 ], [ %3370, %3275 ]
  %3402 = phi float [ %3398, %3373 ], [ %3371, %3275 ]
  %3403 = call float @dx.op.binary.f32(i32 35, float %3401, float %3402)  ; FMax(a,b)
  %3404 = call float @dx.op.binary.f32(i32 35, float %3400, float %3403)  ; FMax(a,b)
  %3405 = fsub fast float 1.000000e+00, %3404
  %3406 = call float @dx.op.dot3.f32(i32 55, float %2045, float %2046, float %2047, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3407 = fcmp fast ogt float %3406, 0x3E7FF19E20000000
  %3408 = fdiv fast float 1.000000e+00, %3406
  %3409 = select i1 %3407, float %3408, float 0.000000e+00
  %3410 = fmul fast float %3409, %2045
  %3411 = fmul fast float %3409, %2046
  %3412 = fmul fast float %3409, %2047
  %3413 = fadd fast float %3410, -1.000000e+00
  %3414 = fadd fast float %3411, -1.000000e+00
  %3415 = fadd fast float %3412, -1.000000e+00
  %3416 = fmul fast float %3413, 5.000000e-01
  %3417 = fmul fast float %3414, 5.000000e-01
  %3418 = fmul fast float %3415, 5.000000e-01
  %3419 = fadd fast float %3416, 1.000000e+00
  %3420 = fadd fast float %3417, 1.000000e+00
  %3421 = fadd fast float %3418, 1.000000e+00
  %3422 = call float @dx.op.binary.f32(i32 35, float %2058, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3423 = fdiv fast float %1083, %3422
  %3424 = fcmp fast olt float %1772, 1.270000e+02
  %3425 = fcmp fast olt float %1773, 1.270000e+02
  %3426 = fcmp fast olt float %1774, 1.270000e+02
  %3427 = fmul fast float %1772, 0xBFF7154760000000
  %3428 = fmul fast float %3427, %3423
  %3429 = fmul fast float %1773, 0xBFF7154760000000
  %3430 = fmul fast float %3429, %3423
  %3431 = fmul fast float %1774, 0xBFF7154760000000
  %3432 = fmul fast float %3431, %3423
  %3433 = call float @dx.op.unary.f32(i32 21, float %3428)  ; Exp(value)
  %3434 = call float @dx.op.unary.f32(i32 21, float %3430)  ; Exp(value)
  %3435 = call float @dx.op.unary.f32(i32 21, float %3432)  ; Exp(value)
  %3436 = call float @dx.op.unary.f32(i32 7, float %3433)  ; Saturate(value)
  %3437 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  %3438 = call float @dx.op.unary.f32(i32 7, float %3435)  ; Saturate(value)
  %3439 = select i1 %3424, float %3436, float 0.000000e+00
  %3440 = select i1 %3425, float %3437, float 0.000000e+00
  %3441 = select i1 %3426, float %3438, float 0.000000e+00
  %3442 = fmul fast float %3439, %3405
  %3443 = fmul fast float %3440, %3405
  %3444 = fmul fast float %3441, %3405
  %3445 = fadd fast float %3442, -1.000000e+00
  %3446 = fadd fast float %3443, -1.000000e+00
  %3447 = fadd fast float %3444, -1.000000e+00
  %3448 = fmul fast float %3445, %1727
  %3449 = fmul fast float %3446, %1727
  %3450 = fmul fast float %3447, %1727
  %3451 = fmul fast float %3400, %3345
  %3452 = fmul fast float %3401, %3346
  %3453 = fmul fast float %3402, %3347
  %3454 = fsub fast float 1.000000e+00, %2058
  %3455 = bitcast float %3454 to i32
  %3456 = sitofp i32 %3455 to float
  %3457 = fmul fast float %3456, 5.000000e+00
  %3458 = fadd fast float %3457, 0xC1EFBF8940000000
  %3459 = fptosi float %3458 to i32
  %3460 = bitcast i32 %3459 to float
  %3461 = fmul fast float %3460, %1676
  %3462 = fmul fast float %3337, %3461
  %3463 = fmul fast float %3462, %3405
  %3464 = fmul fast float %3463, %3419
  %3465 = fmul fast float %3338, %3461
  %3466 = fmul fast float %3465, %3405
  %3467 = fmul fast float %3466, %3420
  %3468 = fmul fast float %3339, %3461
  %3469 = fmul fast float %3468, %3405
  %3470 = fmul fast float %3469, %3421
  %3471 = fadd fast float %3451, %1681
  %3472 = fadd fast float %3471, %3464
  %3473 = fmul fast float %3472, %1727
  %3474 = fadd fast float %3452, %1682
  %3475 = fadd fast float %3474, %3467
  %3476 = fmul fast float %3475, %1727
  %3477 = fadd fast float %3453, %1683
  %3478 = fadd fast float %3477, %3470
  %3479 = fmul fast float %3478, %1727
  %3480 = fmul fast float %2049, 0x4012D0A400000000
  %3481 = fadd fast float %3450, 1.000000e+00
  %3482 = fadd fast float %3449, 1.000000e+00
  %3483 = fadd fast float %3448, 1.000000e+00
  %3484 = fmul fast float %3405, %3339
  %3485 = fmul fast float %3405, %3338
  %3486 = fmul fast float %3405, %3337
  %3487 = fsub fast float 1.000000e+00, %2054
  %3488 = fmul fast float %3487, %1727
  %3489 = fsub fast float 1.000000e+00, %3488
  %3490 = call float @dx.op.unary.f32(i32 7, float %3489)  ; Saturate(value)
  %3491 = fsub fast float 1.000000e+00, %3490
  %3492 = fadd fast float %3480, 0x3FDB6377A0000000
  %3493 = fmul fast float %3491, %3492
  %3494 = call float @dx.op.dot3.f32(i32 55, float %1790, float %1791, float %1792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3495 = fadd fast float %3493, %3494
  %3496 = call float @dx.op.unary.f32(i32 7, float %3495)  ; Saturate(value)
  %3497 = call float @dx.op.binary.f32(i32 35, float %3496, float 0x3F847AE140000000)  ; FMax(a,b)
  %3498 = fmul fast float %3497, %3497
  %3499 = fmul fast float %3498, %3498
  %3500 = fmul fast float %3499, 0xC00A935000000000
  %3501 = call float @dx.op.unary.f32(i32 21, float %3500)  ; Exp(value)
  %3502 = fsub fast float 1.000000e+00, %3501
  %3503 = fmul fast float %3483, %3341
  %3504 = fmul fast float %3503, %3502
  %3505 = fmul fast float %3482, %3342
  %3506 = fmul fast float %3505, %3502
  %3507 = fmul fast float %3481, %3343
  %3508 = fmul fast float %3507, %3502
  %3509 = fadd fast float %3504, %3486
  %3510 = fmul fast float %3509, %1727
  %3511 = fadd fast float %3506, %3485
  %3512 = fmul fast float %3511, %1727
  %3513 = fadd fast float %3508, %3484
  %3514 = fmul fast float %3513, %1727
  %3515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3516 = extractvalue %dx.types.CBufRet.f32 %3515, 3
  %3517 = fcmp fast oeq float %3516, 0.000000e+00
  br i1 %3517, label %4641, label %3518

; <label>:3518                                    ; preds = %3399
  %3519 = extractvalue %dx.types.CBufRet.f32 %3515, 0
  %3520 = extractvalue %dx.types.CBufRet.f32 %3515, 1
  %3521 = extractvalue %dx.types.CBufRet.f32 %3515, 2
  %3522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3523 = extractvalue %dx.types.CBufRet.f32 %3522, 0
  %3524 = extractvalue %dx.types.CBufRet.f32 %3522, 1
  %3525 = extractvalue %dx.types.CBufRet.f32 %3522, 2
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 0
  %3528 = extractvalue %dx.types.CBufRet.f32 %3526, 1
  %3529 = call float @dx.op.dot3.f32(i32 55, float %3523, float %3524, float %3525, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3530 = select i1 %246, float %3527, float %3523
  %3531 = select i1 %246, float %3529, float %3524
  %3532 = select i1 %246, float %3528, float %3525
  %3533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3534 = extractvalue %dx.types.CBufRet.f32 %3533, 2
  %3535 = fmul fast float %3534, %57
  %3536 = fmul fast float %3534, %58
  %3537 = fmul fast float %3534, %59
  %3538 = fadd fast float %3535, %124
  %3539 = fadd fast float %3536, %125
  %3540 = fadd fast float %3537, %126
  %3541 = fcmp fast olt float %3516, 0.000000e+00
  br i1 %3541, label %4163, label %3542

; <label>:3542                                    ; preds = %3518
  %3543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3544 = extractvalue %dx.types.CBufRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.CBufRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.CBufRet.f32 %3543, 2
  %3547 = extractvalue %dx.types.CBufRet.f32 %3543, 3
  %3548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.CBufRet.f32 %3548, 1
  %3551 = extractvalue %dx.types.CBufRet.f32 %3548, 2
  %3552 = extractvalue %dx.types.CBufRet.f32 %3548, 3
  %3553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3554 = extractvalue %dx.types.CBufRet.f32 %3553, 0
  %3555 = extractvalue %dx.types.CBufRet.f32 %3553, 1
  %3556 = extractvalue %dx.types.CBufRet.f32 %3553, 2
  %3557 = extractvalue %dx.types.CBufRet.f32 %3553, 3
  %3558 = fmul fast float %3544, %3538
  %3559 = call float @dx.op.tertiary.f32(i32 46, float %3539, float %3545, float %3558)  ; FMad(a,b,c)
  %3560 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %3546, float %3559)  ; FMad(a,b,c)
  %3561 = fadd fast float %3560, %3547
  %3562 = fmul fast float %3549, %3538
  %3563 = call float @dx.op.tertiary.f32(i32 46, float %3539, float %3550, float %3562)  ; FMad(a,b,c)
  %3564 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %3551, float %3563)  ; FMad(a,b,c)
  %3565 = fadd fast float %3564, %3552
  %3566 = fmul fast float %3554, %3538
  %3567 = call float @dx.op.tertiary.f32(i32 46, float %3539, float %3555, float %3566)  ; FMad(a,b,c)
  %3568 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %3556, float %3567)  ; FMad(a,b,c)
  %3569 = fadd fast float %3568, %3557
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 0
  %3572 = extractvalue %dx.types.CBufRet.f32 %3570, 1
  %3573 = extractvalue %dx.types.CBufRet.f32 %3570, 3
  %3574 = fmul fast float %3573, %3561
  %3575 = fmul fast float %3573, %3565
  %3576 = fadd fast float %3574, %3571
  %3577 = fadd fast float %3575, %3572
  %3578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3579 = extractvalue %dx.types.CBufRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.CBufRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.CBufRet.f32 %3578, 3
  %3582 = fmul fast float %3581, %3561
  %3583 = fmul fast float %3581, %3565
  %3584 = fadd fast float %3582, %3579
  %3585 = fadd fast float %3583, %3580
  %3586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3587 = extractvalue %dx.types.CBufRet.f32 %3586, 1
  %3588 = fsub fast float %3587, %3569
  %3589 = extractvalue %dx.types.CBufRet.f32 %3586, 2
  %3590 = fmul fast float %3588, %3589
  %3591 = fsub fast float 1.000000e+00, %3590
  %3592 = call float @dx.op.unary.f32(i32 7, float %3591)  ; Saturate(value)
  %3593 = extractvalue %dx.types.CBufRet.f32 %3578, 2
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 2
  %3596 = fadd fast float %3595, %3593
  %3597 = fcmp fast ogt float %3596, 0.000000e+00
  br i1 %3597, label %3598, label %3622

; <label>:3598                                    ; preds = %3542
  %3599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3600 = extractvalue %dx.types.CBufRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.CBufRet.f32 %3599, 1
  %3602 = fsub fast float %3584, %3600
  %3603 = fsub fast float %3585, %3601
  %3604 = fcmp fast olt float %3602, 0.000000e+00
  %3605 = fcmp fast olt float %3603, 0.000000e+00
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.CBufRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.CBufRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.CBufRet.f32 %3606, 3
  %3611 = select i1 %3604, float %3607, float %3609
  %3612 = select i1 %3605, float %3608, float %3610
  %3613 = fmul fast float %3611, %3602
  %3614 = fmul fast float %3612, %3603
  %3615 = call float @dx.op.unary.f32(i32 6, float %3613)  ; FAbs(value)
  %3616 = call float @dx.op.unary.f32(i32 6, float %3614)  ; FAbs(value)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3533, 0
  %3618 = call float @dx.op.binary.f32(i32 35, float %3615, float %3616)  ; FMax(a,b)
  %3619 = fsub fast float %3617, %3618
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = fmul fast float %3620, %3592
  br label %3622

; <label>:3622                                    ; preds = %3598, %3542
  %3623 = phi float [ %3621, %3598 ], [ 0.000000e+00, %3542 ]
  %3624 = extractvalue %dx.types.CBufRet.f32 %3570, 2
  %3625 = extractvalue %dx.types.CBufRet.f32 %3594, 1
  %3626 = fadd fast float %3625, %3624
  %3627 = fcmp fast ogt float %3626, 0.000000e+00
  %3628 = extractvalue %dx.types.CBufRet.f32 %3533, 0
  br i1 %3627, label %3629, label %3652

; <label>:3629                                    ; preds = %3622
  %3630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3631 = extractvalue %dx.types.CBufRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.CBufRet.f32 %3630, 1
  %3633 = fsub fast float %3576, %3631
  %3634 = fsub fast float %3577, %3632
  %3635 = fcmp fast olt float %3633, 0.000000e+00
  %3636 = fcmp fast olt float %3634, 0.000000e+00
  %3637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3638 = extractvalue %dx.types.CBufRet.f32 %3637, 0
  %3639 = extractvalue %dx.types.CBufRet.f32 %3637, 1
  %3640 = extractvalue %dx.types.CBufRet.f32 %3637, 2
  %3641 = extractvalue %dx.types.CBufRet.f32 %3637, 3
  %3642 = select i1 %3635, float %3638, float %3640
  %3643 = select i1 %3636, float %3639, float %3641
  %3644 = fmul fast float %3642, %3633
  %3645 = fmul fast float %3643, %3634
  %3646 = call float @dx.op.unary.f32(i32 6, float %3644)  ; FAbs(value)
  %3647 = call float @dx.op.unary.f32(i32 6, float %3645)  ; FAbs(value)
  %3648 = call float @dx.op.binary.f32(i32 35, float %3646, float %3647)  ; FMax(a,b)
  %3649 = fsub fast float %3628, %3648
  %3650 = call float @dx.op.unary.f32(i32 7, float %3649)  ; Saturate(value)
  %3651 = fmul fast float %3650, %3592
  br label %3652

; <label>:3652                                    ; preds = %3629, %3622
  %3653 = phi float [ %3651, %3629 ], [ 0.000000e+00, %3622 ]
  %3654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3655 = extractvalue %dx.types.CBufRet.f32 %3654, 1
  %3656 = call float @dx.op.unary.f32(i32 7, float %3655)  ; Saturate(value)
  %3657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3658 = extractvalue %dx.types.CBufRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.CBufRet.f32 %3657, 1
  %3660 = fsub fast float %3561, %3658
  %3661 = fsub fast float %3565, %3659
  %3662 = fcmp fast olt float %3660, 0.000000e+00
  %3663 = fcmp fast olt float %3661, 0.000000e+00
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 0
  %3666 = extractvalue %dx.types.CBufRet.f32 %3664, 1
  %3667 = extractvalue %dx.types.CBufRet.f32 %3664, 2
  %3668 = extractvalue %dx.types.CBufRet.f32 %3664, 3
  %3669 = select i1 %3662, float %3665, float %3667
  %3670 = select i1 %3663, float %3666, float %3668
  %3671 = fmul fast float %3669, %3660
  %3672 = fmul fast float %3670, %3661
  %3673 = call float @dx.op.unary.f32(i32 6, float %3671)  ; FAbs(value)
  %3674 = call float @dx.op.unary.f32(i32 6, float %3672)  ; FAbs(value)
  %3675 = call float @dx.op.binary.f32(i32 35, float %3673, float %3674)  ; FMax(a,b)
  %3676 = fsub fast float %3628, %3675
  %3677 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  %3678 = call float @dx.op.binary.f32(i32 36, float %3677, float %3656)  ; FMin(a,b)
  %3679 = fmul fast float %3678, %3592
  %3680 = fsub fast float %3653, %3679
  %3681 = fsub fast float %3623, %3653
  %3682 = fsub fast float %3681, %3679
  %3683 = call float @dx.op.binary.f32(i32 35, float %3653, float %3623)  ; FMax(a,b)
  %3684 = call float @dx.op.binary.f32(i32 35, float %3679, float %3683)  ; FMax(a,b)
  %3685 = fcmp fast olt float %3684, 1.000000e+00
  br i1 %3685, label %3686, label %4084, !dx.controlflow.hints !91

; <label>:3686                                    ; preds = %3652
  %3687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3688 = extractvalue %dx.types.CBufRet.f32 %3687, 0
  %3689 = fcmp fast une float %3688, 0.000000e+00
  br i1 %3689, label %3690, label %4084, !dx.controlflow.hints !92

; <label>:3690                                    ; preds = %3686
  %3691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3692 = extractvalue %dx.types.CBufRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.CBufRet.f32 %3691, 1
  %3694 = extractvalue %dx.types.CBufRet.f32 %3691, 2
  %3695 = extractvalue %dx.types.CBufRet.f32 %3691, 3
  %3696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3697 = extractvalue %dx.types.CBufRet.f32 %3696, 0
  %3698 = extractvalue %dx.types.CBufRet.f32 %3696, 1
  %3699 = extractvalue %dx.types.CBufRet.f32 %3696, 2
  %3700 = extractvalue %dx.types.CBufRet.f32 %3696, 3
  %3701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3702 = extractvalue %dx.types.CBufRet.f32 %3701, 0
  %3703 = extractvalue %dx.types.CBufRet.f32 %3701, 1
  %3704 = extractvalue %dx.types.CBufRet.f32 %3701, 2
  %3705 = extractvalue %dx.types.CBufRet.f32 %3701, 3
  %3706 = fmul fast float %3692, %3538
  %3707 = call float @dx.op.tertiary.f32(i32 46, float %3539, float %3693, float %3706)  ; FMad(a,b,c)
  %3708 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %3694, float %3707)  ; FMad(a,b,c)
  %3709 = fadd fast float %3708, %3695
  %3710 = fmul fast float %3697, %3538
  %3711 = call float @dx.op.tertiary.f32(i32 46, float %3539, float %3698, float %3710)  ; FMad(a,b,c)
  %3712 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %3699, float %3711)  ; FMad(a,b,c)
  %3713 = fadd fast float %3712, %3700
  %3714 = fmul fast float %3702, %3538
  %3715 = call float @dx.op.tertiary.f32(i32 46, float %3539, float %3703, float %3714)  ; FMad(a,b,c)
  %3716 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %3704, float %3715)  ; FMad(a,b,c)
  %3717 = fadd fast float %3716, %3705
  %3718 = fcmp fast oge float %3709, 1.000000e+00
  %3719 = fcmp fast oge float %3713, 1.000000e+00
  %3720 = or i1 %3718, %3719
  %3721 = fcmp fast olt float %3709, 0.000000e+00
  %3722 = fcmp fast olt float %3713, 0.000000e+00
  %3723 = or i1 %3721, %3722
  %3724 = or i1 %3720, %3723
  br i1 %3724, label %4084, label %3725, !dx.controlflow.hints !93

; <label>:3725                                    ; preds = %3690
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 0
  %3728 = extractvalue %dx.types.CBufRet.f32 %3726, 1
  %3729 = extractvalue %dx.types.CBufRet.f32 %3726, 2
  %3730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3731 = extractvalue %dx.types.CBufRet.i32 %3730, 2
  %3732 = uitofp i32 %3731 to float
  %3733 = extractvalue %dx.types.CBufRet.i32 %3730, 3
  %3734 = uitofp i32 %3733 to float
  %3735 = extractvalue %dx.types.CBufRet.f32 %3726, 3
  %3736 = fmul fast float %3735, 2.000000e+00
  %3737 = fsub fast float %3709, %3727
  %3738 = fsub fast float %3713, %3728
  %3739 = fmul fast float %3736, %3737
  %3740 = fmul fast float %3736, %3738
  %3741 = fdiv fast float 1.000000e+00, %3521
  %3742 = fmul fast float %3740, %3741
  %3743 = call float @dx.op.unary.f32(i32 6, float %3742)  ; FAbs(value)
  %3744 = fmul fast float %3729, %3540
  %3745 = fmul fast float %3744, %3736
  %3746 = call float @dx.op.unary.f32(i32 6, float %3745)  ; FAbs(value)
  %3747 = call float @dx.op.unary.f32(i32 6, float %3739)  ; FAbs(value)
  %3748 = call float @dx.op.binary.f32(i32 35, float %3746, float %3743)  ; FMax(a,b)
  %3749 = call float @dx.op.binary.f32(i32 35, float %3747, float %3748)  ; FMax(a,b)
  %3750 = fmul fast float %3749, 2.000000e+00
  %3751 = call float @dx.op.unary.f32(i32 23, float %3750)  ; Log(value)
  %3752 = call float @dx.op.binary.f32(i32 35, float %3751, float %3732)  ; FMax(a,b)
  %3753 = call float @dx.op.unary.f32(i32 22, float %3752)  ; Frc(value)
  %3754 = fadd fast float %3753, 0xBFEA666660000000
  %3755 = fmul fast float %3754, 8.000000e+00
  %3756 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3757 = call float @dx.op.unary.f32(i32 27, float %3752)  ; Round_ni(value)
  %3758 = fadd fast float %3757, %3756
  %3759 = call float @dx.op.binary.f32(i32 36, float %3758, float %3734)  ; FMin(a,b)
  %3760 = call float @dx.op.unary.f32(i32 27, float %3759)  ; Round_ni(value)
  %3761 = fsub fast float -0.000000e+00, %3760
  %3762 = call float @dx.op.unary.f32(i32 21, float %3761)  ; Exp(value)
  %3763 = fmul fast float %3762, %3736
  %3764 = fmul fast float %3763, %3709
  %3765 = fmul fast float %3763, %3713
  %3766 = fmul fast float %3764, 2.500000e-01
  %3767 = fmul fast float %3765, 2.500000e-01
  %3768 = fadd fast float %3766, 5.000000e-01
  %3769 = fadd fast float %3767, 5.000000e-01
  %3770 = fsub fast float %3734, %3732
  %3771 = fptoui float %3770 to i32
  %3772 = add i32 %3771, 320
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %3772)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.CBufRet.f32 %3773, 1
  %3776 = fcmp fast une float %3759, %3734
  %3777 = fsub fast float %3709, %3774
  %3778 = fsub fast float %3713, %3775
  %3779 = call float @dx.op.unary.f32(i32 6, float %3777)  ; FAbs(value)
  %3780 = call float @dx.op.unary.f32(i32 6, float %3778)  ; FAbs(value)
  %3781 = fmul fast float %3779, %3763
  %3782 = fmul fast float %3780, %3763
  %3783 = fcmp fast olt float %3781, 1.000000e+00
  %3784 = fcmp fast olt float %3782, 1.000000e+00
  %3785 = and i1 %3783, %3784
  %3786 = or i1 %3776, %3785
  br i1 %3786, label %3787, label %4084, !dx.controlflow.hints !94

; <label>:3787                                    ; preds = %3725
  %3788 = fmul fast float %3765, 5.000000e-01
  %3789 = fmul fast float %3764, 5.000000e-01
  %3790 = fadd fast float %3788, 5.000000e-01
  %3791 = fadd fast float %3789, 5.000000e-01
  %3792 = sitofp i32 %3731 to float
  %3793 = fsub fast float %3759, %3792
  %3794 = call float @dx.op.unary.f32(i32 27, float %3793)  ; Round_ni(value)
  %3795 = call float @dx.op.unary.f32(i32 22, float %3759)  ; Frc(value)
  %3796 = call float @dx.op.unary.f32(i32 22, float %3791)  ; Frc(value)
  %3797 = call float @dx.op.unary.f32(i32 22, float %3790)  ; Frc(value)
  %3798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %3796, float %3797, float %3794, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = extractvalue %dx.types.ResRet.f32 %3798, 1
  %3801 = extractvalue %dx.types.ResRet.f32 %3798, 2
  %3802 = extractvalue %dx.types.ResRet.f32 %3798, 3
  %3803 = fcmp fast ogt float %3795, 0.000000e+00
  br i1 %3803, label %3804, label %3825, !dx.controlflow.hints !95

; <label>:3804                                    ; preds = %3787
  %3805 = fadd fast float %3794, 1.000000e+00
  %3806 = call float @dx.op.unary.f32(i32 22, float %3768)  ; Frc(value)
  %3807 = call float @dx.op.unary.f32(i32 22, float %3769)  ; Frc(value)
  %3808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %3806, float %3807, float %3805, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = extractvalue %dx.types.ResRet.f32 %3808, 1
  %3811 = extractvalue %dx.types.ResRet.f32 %3808, 2
  %3812 = extractvalue %dx.types.ResRet.f32 %3808, 3
  %3813 = fsub fast float %3809, %3799
  %3814 = fsub fast float %3810, %3800
  %3815 = fsub fast float %3811, %3801
  %3816 = fsub fast float %3812, %3802
  %3817 = fmul fast float %3813, %3795
  %3818 = fmul fast float %3814, %3795
  %3819 = fmul fast float %3815, %3795
  %3820 = fmul fast float %3816, %3795
  %3821 = fadd fast float %3817, %3799
  %3822 = fadd fast float %3818, %3800
  %3823 = fadd fast float %3819, %3801
  %3824 = fadd fast float %3820, %3802
  br label %3825

; <label>:3825                                    ; preds = %3804, %3787
  %3826 = phi float [ %3821, %3804 ], [ %3799, %3787 ]
  %3827 = phi float [ %3822, %3804 ], [ %3800, %3787 ]
  %3828 = phi float [ %3823, %3804 ], [ %3801, %3787 ]
  %3829 = phi float [ %3824, %3804 ], [ %3802, %3787 ]
  %3830 = fadd fast float %3826, -5.000000e-01
  %3831 = fadd fast float %3828, -5.000000e-01
  %3832 = fmul fast float %3830, 0xBFD5555560000000
  %3833 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3831, float %3832)  ; FMad(a,b,c)
  %3834 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3827, float 0.000000e+00)  ; FMad(a,b,c)
  %3835 = fadd fast float %3834, %3829
  %3836 = fmul fast float %3830, -7.500000e-01
  %3837 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3831, float %3836)  ; FMad(a,b,c)
  %3838 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3827, float 0.000000e+00)  ; FMad(a,b,c)
  %3839 = fadd fast float %3838, %3829
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 0
  %3842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3843 = extractvalue %dx.types.CBufRet.f32 %3842, 0
  %3844 = extractvalue %dx.types.CBufRet.f32 %3842, 1
  %3845 = extractvalue %dx.types.CBufRet.f32 %3842, 2
  %3846 = extractvalue %dx.types.CBufRet.f32 %3842, 3
  %3847 = fsub fast float %3843, %3833
  %3848 = fsub fast float %3844, %3835
  %3849 = fsub fast float %3845, %3837
  %3850 = fsub fast float %3846, %3839
  %3851 = fmul fast float %3847, %3841
  %3852 = fmul fast float %3848, %3841
  %3853 = fmul fast float %3849, %3841
  %3854 = fmul fast float %3850, %3841
  %3855 = fadd fast float %3851, %3833
  %3856 = fadd fast float %3852, %3835
  %3857 = fadd fast float %3853, %3837
  %3858 = fadd fast float %3854, %3839
  %3859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.i32 %3859, 0
  %3861 = and i32 %3860, 536870911
  %3862 = uitofp i32 %3861 to float
  %3863 = fmul fast float %3862, %3709
  %3864 = fmul fast float %3862, %3713
  %3865 = fptoui float %3863 to i32
  %3866 = fptoui float %3864 to i32
  %3867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.i32 %3867, 0
  %3869 = and i32 %3868, 31
  %3870 = lshr i32 %3865, %3869
  %3871 = lshr i32 %3866, %3869
  %3872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.i32 %3872, 0
  %3874 = and i32 %3873, 31
  %3875 = shl i32 1, %3874
  %3876 = call i32 @dx.op.binary.i32(i32 40, i32 %3875, i32 4)  ; UMin(a,b)
  %3877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3878 = extractvalue %dx.types.ResRet.i32 %3877, 0
  %3879 = extractvalue %dx.types.ResRet.i32 %3877, 1
  %3880 = icmp eq i32 %3876, 0
  br i1 %3880, label %3922, label %3881

; <label>:3881                                    ; preds = %3825
  br label %3882

; <label>:3882                                    ; preds = %3910, %3881
  %3883 = phi i32 [ %3913, %3910 ], [ 0, %3881 ]
  %3884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.i32 %3884, 0
  %3886 = lshr i32 %3885, 16
  %3887 = and i32 %3886, 31
  %3888 = shl i32 %3871, %3887
  %3889 = add i32 %3888, %3870
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = and i32 %3891, 31
  %3893 = shl i32 %3889, %3892
  %3894 = add i32 %3893, %3883
  %3895 = shl i32 %3894, 2
  %3896 = add i32 %3895, 32
  %3897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.i32 %3897, 0
  %3899 = icmp slt i32 %3898, 0
  %3900 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3883
  %3901 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3883
  %3902 = bitcast float* %3900 to i32*
  %3903 = bitcast float* %3901 to i32*
  br i1 %3899, label %3904, label %3910

; <label>:3904                                    ; preds = %3882
  %3905 = and i32 %3898, 1073741823
  %3906 = add nuw nsw i32 %3905, 20
  %3907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.i32 %3907, 0
  %3909 = extractvalue %dx.types.ResRet.i32 %3907, 1
  br label %3910

; <label>:3910                                    ; preds = %3904, %3882
  %3911 = phi i32 [ %3908, %3904 ], [ %3878, %3882 ]
  %3912 = phi i32 [ %3909, %3904 ], [ %3879, %3882 ]
  store i32 %3911, i32* %3902, align 4
  store i32 %3912, i32* %3903, align 4
  %3913 = add nuw i32 %3883, 1
  %3914 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.i32 %3914, 2
  %3916 = icmp eq i32 %3915, 0
  %3917 = icmp ugt i32 %3898, -1073741825
  %3918 = and i1 %3917, %3916
  %3919 = icmp ult i32 %3913, %3876
  %3920 = and i1 %3918, %3919
  br i1 %3920, label %3882, label %3921

; <label>:3921                                    ; preds = %3910
  br label %3922

; <label>:3922                                    ; preds = %3921, %3825
  %3923 = phi i32 [ 0, %3825 ], [ %3913, %3921 ]
  %3924 = extractvalue %dx.types.CBufRet.f32 %3687, 2
  %3925 = fptoui float %3924 to i32
  %3926 = icmp eq i32 %3925, 0
  br i1 %3926, label %3978, label %3927

; <label>:3927                                    ; preds = %3922
  br label %3928

; <label>:3928                                    ; preds = %3973, %3927
  %3929 = phi i32 [ %3974, %3973 ], [ %3923, %3927 ]
  %3930 = phi i32 [ %3975, %3973 ], [ 0, %3927 ]
  %3931 = lshr i32 %3930, 2
  %3932 = and i32 %3930, 3
  %3933 = add nuw nsw i32 %3931, 83
  %3934 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %3933)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.i32 %3934, 0
  %3936 = extractvalue %dx.types.CBufRet.i32 %3934, 1
  %3937 = extractvalue %dx.types.CBufRet.i32 %3934, 2
  %3938 = extractvalue %dx.types.CBufRet.i32 %3934, 3
  %3939 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %3935, i32* %3939, align 4
  %3940 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %3936, i32* %3940, align 4
  %3941 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %3937, i32* %3941, align 4
  %3942 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %3938, i32* %3942, align 4
  %3943 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %3932
  %3944 = load i32, i32* %3943, align 4, !tbaa !96, !noalias !100
  %3945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.i32 %3945, 0
  %3947 = lshr i32 %3946, 16
  %3948 = and i32 %3947, 31
  %3949 = shl i32 %3871, %3948
  %3950 = add i32 %3949, %3870
  %3951 = shl i32 %3950, 2
  %3952 = add i32 %3951, %3944
  %3953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.i32 %3953, 0
  %3955 = icmp eq i32 %3954, 0
  br i1 %3955, label %3973, label %3956

; <label>:3956                                    ; preds = %3928
  %3957 = icmp slt i32 %3954, 0
  %3958 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3929
  %3959 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3929
  %3960 = bitcast float* %3958 to i32*
  %3961 = bitcast float* %3959 to i32*
  br i1 %3957, label %3962, label %3969

; <label>:3962                                    ; preds = %3956
  %3963 = and i32 %3954, 1073741823
  %3964 = add i32 %3944, 20
  %3965 = add i32 %3964, %3963
  %3966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3967 = extractvalue %dx.types.ResRet.i32 %3966, 0
  %3968 = extractvalue %dx.types.ResRet.i32 %3966, 1
  br label %3969

; <label>:3969                                    ; preds = %3962, %3956
  %3970 = phi i32 [ %3967, %3962 ], [ %3878, %3956 ]
  %3971 = phi i32 [ %3968, %3962 ], [ %3879, %3956 ]
  store i32 %3970, i32* %3960, align 4
  store i32 %3971, i32* %3961, align 4
  %3972 = add i32 %3929, 1
  br label %3973

; <label>:3973                                    ; preds = %3969, %3928
  %3974 = phi i32 [ %3929, %3928 ], [ %3972, %3969 ]
  %3975 = add nuw i32 %3930, 1
  %3976 = icmp eq i32 %3975, %3925
  br i1 %3976, label %3977, label %3928

; <label>:3977                                    ; preds = %3973
  br label %3978

; <label>:3978                                    ; preds = %3977, %3922
  %3979 = phi i32 [ %3923, %3922 ], [ %3974, %3977 ]
  %3980 = icmp eq i32 %3979, 1
  %3981 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 0
  %3982 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 0
  br i1 %3980, label %3983, label %3986

; <label>:3983                                    ; preds = %3978
  %3984 = load float, float* %3981, align 4
  %3985 = load float, float* %3982, align 4
  br label %4013

; <label>:3986                                    ; preds = %3978
  %3987 = load float, float* %3981, align 4
  %3988 = load float, float* %3982, align 4
  %3989 = fdiv fast float 1.000000e+00, %3988
  %3990 = fsub fast float %3987, %3989
  %3991 = icmp ugt i32 %3979, 1
  br i1 %3991, label %3992, label %4008

; <label>:3992                                    ; preds = %3986
  br label %3993

; <label>:3993                                    ; preds = %3993, %3992
  %3994 = phi float [ %4003, %3993 ], [ %3990, %3992 ]
  %3995 = phi float [ %4004, %3993 ], [ %3987, %3992 ]
  %3996 = phi i32 [ %4005, %3993 ], [ 1, %3992 ]
  %3997 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3996
  %3998 = load float, float* %3997, align 4
  %3999 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3996
  %4000 = load float, float* %3999, align 4
  %4001 = fdiv fast float 1.000000e+00, %4000
  %4002 = fsub fast float %3998, %4001
  %4003 = call float @dx.op.binary.f32(i32 36, float %3994, float %4002)  ; FMin(a,b)
  %4004 = call float @dx.op.binary.f32(i32 35, float %3995, float %3998)  ; FMax(a,b)
  %4005 = add nuw i32 %3996, 1
  %4006 = icmp eq i32 %4005, %3979
  br i1 %4006, label %4007, label %3993

; <label>:4007                                    ; preds = %3993
  br label %4008

; <label>:4008                                    ; preds = %4007, %3986
  %4009 = phi float [ %3990, %3986 ], [ %4003, %4007 ]
  %4010 = phi float [ %3987, %3986 ], [ %4004, %4007 ]
  %4011 = fsub fast float %4010, %4009
  %4012 = fdiv fast float 1.000000e+00, %4011
  br label %4013

; <label>:4013                                    ; preds = %4008, %3983
  %4014 = phi float [ %3984, %3983 ], [ %4010, %4008 ]
  %4015 = phi float [ %3985, %3983 ], [ %4012, %4008 ]
  %4016 = fadd fast float %3717, %4014
  %4017 = fmul fast float %4016, %4015
  %4018 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4019 = fmul fast float %4018, 2.000000e+00
  %4020 = fsub fast float 1.000000e+00, %4019
  %4021 = fmul fast float %3855, %3855
  %4022 = fsub fast float %3856, %4021
  %4023 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4022)  ; FMax(a,b)
  %4024 = fdiv fast float 1.000000e+00, %4023
  %4025 = fmul fast float %3856, %3855
  %4026 = fsub fast float %3857, %4025
  %4027 = fsub fast float %4020, %3855
  %4028 = fmul fast float %4020, %4020
  %4029 = fsub fast float %4028, %3856
  %4030 = fmul fast float %4024, %4026
  %4031 = fmul fast float %4030, %4027
  %4032 = fsub fast float %4029, %4031
  %4033 = fmul fast float %3856, %3856
  %4034 = fsub fast float %3858, %4033
  %4035 = fmul fast float %4026, %4026
  %4036 = fmul fast float %4035, %4024
  %4037 = fsub fast float %4034, %4036
  %4038 = fdiv fast float %4032, %4037
  %4039 = fmul fast float %4038, %4026
  %4040 = fsub fast float %4027, %4039
  %4041 = fmul fast float %4040, %4024
  %4042 = fmul fast float %4041, %3855
  %4043 = fsub fast float 1.000000e+00, %4042
  %4044 = fmul fast float %4038, %3856
  %4045 = fsub fast float %4043, %4044
  %4046 = fmul fast float %4041, %4041
  %4047 = fmul fast float %4038, 4.000000e+00
  %4048 = fmul fast float %4047, %4045
  %4049 = fsub fast float %4046, %4048
  %4050 = call float @dx.op.unary.f32(i32 24, float %4049)  ; Sqrt(value)
  %4051 = fcmp fast oge float %4041, 0.000000e+00
  %4052 = fsub fast float -0.000000e+00, %4050
  %4053 = select i1 %4051, float %4052, float %4050
  %4054 = fsub fast float %4053, %4041
  %4055 = fdiv fast float %4054, %4038
  %4056 = fdiv fast float %4045, %4054
  %4057 = fmul fast float %4055, 5.000000e-01
  %4058 = fmul fast float %4056, 2.000000e+00
  %4059 = select i1 %4051, float %4057, float %4058
  %4060 = select i1 %4051, float %4058, float %4057
  %4061 = call float @dx.op.binary.f32(i32 35, float %4059, float %4060)  ; FMax(a,b)
  %4062 = call float @dx.op.binary.f32(i32 36, float %4059, float %4060)  ; FMin(a,b)
  %4063 = fcmp fast ogt float %4020, %4061
  %4064 = fsub fast float %4020, %4062
  %4065 = fsub fast float %4020, %4061
  %4066 = fsub fast float %4061, %4062
  %4067 = select i1 %4063, float %4065, float %4066
  %4068 = fmul float %4064, %4067
  %4069 = select i1 %4063, float %4062, float %4020
  %4070 = fcmp fast ogt float %4020, %4062
  %4071 = fmul fast float %4069, %4061
  %4072 = fadd fast float %4069, %4061
  %4073 = fmul fast float %4072, %3855
  %4074 = fadd fast float %4071, %3856
  %4075 = fsub fast float %4074, %4073
  %4076 = fdiv fast float %4075, %4068
  %4077 = select i1 %4070, float %4076, float 0.000000e+00
  %4078 = fsub fast float 1.000000e+00, %4077
  %4079 = select i1 %4063, float %4078, float %4077
  %4080 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4081 = extractvalue %dx.types.CBufRet.f32 %3840, 3
  %4082 = fmul fast float %4081, %4080
  %4083 = fsub fast float 1.000000e+00, %4082
  br label %4084

; <label>:4084                                    ; preds = %4013, %3725, %3690, %3686, %3652
  %4085 = phi float [ 1.000000e+00, %3652 ], [ %4083, %4013 ], [ 1.000000e+00, %3690 ], [ 1.000000e+00, %3725 ], [ 1.000000e+00, %3686 ]
  %4086 = fcmp fast ogt float %3682, 0.000000e+00
  br i1 %4086, label %4087, label %4093, !dx.controlflow.hints !109

; <label>:4087                                    ; preds = %4084
  %4088 = fadd fast float %3595, %3569
  %4089 = call float @dx.op.binary.f32(i32 35, float %4088, float 0.000000e+00)  ; FMax(a,b)
  %4090 = fadd fast float %4089, 0x3F10000000000000
  %4091 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %47, float %3584, float %3585, float undef, float undef, i32 0, i32 0, i32 undef, float %4090)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4092 = extractvalue %dx.types.ResRet.f32 %4091, 0
  br label %4093

; <label>:4093                                    ; preds = %4087, %4084
  %4094 = phi float [ %4092, %4087 ], [ 1.000000e+00, %4084 ]
  %4095 = fcmp fast ogt float %3680, 0.000000e+00
  br i1 %4095, label %4096, label %4102, !dx.controlflow.hints !110

; <label>:4096                                    ; preds = %4093
  %4097 = fadd fast float %3625, %3569
  %4098 = call float @dx.op.binary.f32(i32 35, float %4097, float 0.000000e+00)  ; FMax(a,b)
  %4099 = fadd fast float %4098, 0x3F10000000000000
  %4100 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %47, float %3576, float %3577, float undef, float undef, i32 0, i32 0, i32 undef, float %4099)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  br label %4102

; <label>:4102                                    ; preds = %4096, %4093
  %4103 = phi float [ %4101, %4096 ], [ 1.000000e+00, %4093 ]
  %4104 = fcmp fast ogt float %3679, 0.000000e+00
  br i1 %4104, label %4105, label %4112, !dx.controlflow.hints !111

; <label>:4105                                    ; preds = %4102
  %4106 = extractvalue %dx.types.CBufRet.f32 %3594, 0
  %4107 = fadd fast float %4106, %3569
  %4108 = call float @dx.op.binary.f32(i32 35, float %4107, float 0.000000e+00)  ; FMax(a,b)
  %4109 = fadd fast float %4108, 0x3F10000000000000
  %4110 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %3561, float %3565, float undef, float undef, i32 0, i32 0, i32 undef, float %4109)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  br label %4112

; <label>:4112                                    ; preds = %4105, %4102
  %4113 = phi float [ %4111, %4105 ], [ 1.000000e+00, %4102 ]
  %4114 = fsub fast float %4094, %4085
  %4115 = fmul fast float %4114, %3623
  %4116 = fadd fast float %4115, %4085
  %4117 = fsub fast float %4103, %4116
  %4118 = fmul fast float %4117, %3653
  %4119 = fadd fast float %4118, %4116
  %4120 = fsub fast float %4113, %4119
  %4121 = fmul fast float %4120, %3679
  %4122 = fadd fast float %4121, %4119
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 2
  %4125 = fcmp fast ogt float %4124, 0.000000e+00
  br i1 %4125, label %4126, label %4163, !dx.controlflow.hints !112

; <label>:4126                                    ; preds = %4112
  %4127 = fcmp fast ugt float %4124, 0.000000e+00
  br i1 %4127, label %4128, label %4160

; <label>:4128                                    ; preds = %4126
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.CBufRet.f32 %4129, 1
  %4132 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4133 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.CBufRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.CBufRet.f32 %4134, 2
  %4138 = extractvalue %dx.types.CBufRet.f32 %4134, 3
  %4139 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4140 = extractvalue %dx.types.CBufRet.f32 %4123, 1
  %4141 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %4142 = fadd fast float %2073, %3538
  %4143 = fadd fast float %2074, %3539
  %4144 = fadd fast float %4141, %3540
  %4145 = fmul fast float %4142, %4130
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4143, float %4145)  ; FMad(a,b,c)
  %4147 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %4144, float %4146)  ; FMad(a,b,c)
  %4148 = fadd fast float %4147, %4133
  %4149 = fmul fast float %4142, %4135
  %4150 = call float @dx.op.tertiary.f32(i32 46, float %4136, float %4143, float %4149)  ; FMad(a,b,c)
  %4151 = call float @dx.op.tertiary.f32(i32 46, float %4137, float %4144, float %4150)  ; FMad(a,b,c)
  %4152 = fadd fast float %4151, %4138
  %4153 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %42, float %4148, float %4152, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = fmul fast float %4154, %4140
  %4156 = fadd fast float %4155, %4139
  %4157 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4158 = fmul fast float %4157, %4124
  %4159 = fsub fast float 1.000000e+00, %4158
  br label %4160

; <label>:4160                                    ; preds = %4128, %4126
  %4161 = phi float [ %4159, %4128 ], [ 1.000000e+00, %4126 ]
  %4162 = fmul fast float %4161, %4122
  br label %4163

; <label>:4163                                    ; preds = %4160, %4112, %3518
  %4164 = phi float [ 1.000000e+00, %3518 ], [ %4162, %4160 ], [ %4122, %4112 ]
  %4165 = call float @dx.op.binary.f32(i32 36, float %4164, float %4164)  ; FMin(a,b)
  %4166 = call float @dx.op.binary.f32(i32 36, float %4164, float %4165)  ; FMin(a,b)
  %4167 = fcmp fast ogt float %4166, 0.000000e+00
  br i1 %4167, label %4168, label %4326, !dx.controlflow.hints !113

; <label>:4168                                    ; preds = %4163
  %4169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.CBufRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.CBufRet.f32 %4169, 2
  %4173 = extractvalue %dx.types.CBufRet.f32 %4169, 3
  %4174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.f32 %4174, 0
  %4176 = extractvalue %dx.types.CBufRet.f32 %4174, 1
  %4177 = extractvalue %dx.types.CBufRet.f32 %4174, 2
  %4178 = extractvalue %dx.types.CBufRet.f32 %4174, 3
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.CBufRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.CBufRet.f32 %4179, 2
  %4183 = extractvalue %dx.types.CBufRet.f32 %4179, 3
  %4184 = fmul fast float %4170, %3538
  %4185 = call float @dx.op.tertiary.f32(i32 46, float %3539, float %4171, float %4184)  ; FMad(a,b,c)
  %4186 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %4172, float %4185)  ; FMad(a,b,c)
  %4187 = fadd fast float %4186, %4173
  %4188 = fmul fast float %4175, %3538
  %4189 = call float @dx.op.tertiary.f32(i32 46, float %3539, float %4176, float %4188)  ; FMad(a,b,c)
  %4190 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %4177, float %4189)  ; FMad(a,b,c)
  %4191 = fadd fast float %4190, %4178
  %4192 = fmul fast float %4180, %3538
  %4193 = call float @dx.op.tertiary.f32(i32 46, float %3539, float %4181, float %4192)  ; FMad(a,b,c)
  %4194 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %4182, float %4193)  ; FMad(a,b,c)
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.CBufRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.CBufRet.f32 %4195, 3
  %4199 = fmul fast float %4198, %4187
  %4200 = fmul fast float %4198, %4191
  %4201 = fadd fast float %4199, %4196
  %4202 = fadd fast float %4200, %4197
  %4203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4204 = extractvalue %dx.types.CBufRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.CBufRet.f32 %4203, 1
  %4206 = fsub fast float %4201, %4204
  %4207 = fsub fast float %4202, %4205
  %4208 = fcmp fast olt float %4206, 0.000000e+00
  %4209 = fcmp fast olt float %4207, 0.000000e+00
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4213 = extractvalue %dx.types.CBufRet.f32 %4210, 2
  %4214 = extractvalue %dx.types.CBufRet.f32 %4210, 3
  %4215 = select i1 %4208, float %4211, float %4213
  %4216 = select i1 %4209, float %4212, float %4214
  %4217 = fmul fast float %4215, %4206
  %4218 = fmul fast float %4216, %4207
  %4219 = call float @dx.op.unary.f32(i32 6, float %4217)  ; FAbs(value)
  %4220 = call float @dx.op.unary.f32(i32 6, float %4218)  ; FAbs(value)
  %4221 = extractvalue %dx.types.CBufRet.f32 %3533, 0
  %4222 = call float @dx.op.binary.f32(i32 35, float %4219, float %4220)  ; FMax(a,b)
  %4223 = fsub fast float %4221, %4222
  %4224 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4225 = fcmp fast ogt float %4224, 0.000000e+00
  br i1 %4225, label %4226, label %4267, !dx.controlflow.hints !114

; <label>:4226                                    ; preds = %4168
  %4227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %4201, float %4202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 1
  %4229 = fcmp fast ogt float %4228, 0.000000e+00
  br i1 %4229, label %4230, label %4262

; <label>:4230                                    ; preds = %4226
  %4231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %4201, float %4202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = extractvalue %dx.types.ResRet.f32 %4231, 2
  %4235 = extractvalue %dx.types.ResRet.f32 %4231, 3
  %4236 = fsub fast float 1.000000e+00, %4183
  %4237 = fsub fast float %4236, %4194
  %4238 = fmul fast float %4237, 0x400921FB60000000
  %4239 = fadd fast float %4238, 0x3FF921FB60000000
  %4240 = call float @dx.op.unary.f32(i32 13, float %4239)  ; Sin(value)
  %4241 = fadd fast float %4240, -1.000000e+00
  %4242 = fmul fast float %4241, 0x3FD45F3060000000
  %4243 = fmul fast float %4237, 0x401921FB60000000
  %4244 = fadd fast float %4243, 0x400921FB60000000
  %4245 = call float @dx.op.unary.f32(i32 13, float %4244)  ; Sin(value)
  %4246 = fadd fast float %4245, 0x3E7777A5C0000000
  %4247 = fmul fast float %4246, 0x3FC45F3060000000
  %4248 = fmul fast float %4237, 0x4022D97C80000000
  %4249 = fadd fast float %4248, 0x4012D97C80000000
  %4250 = call float @dx.op.unary.f32(i32 13, float %4249)  ; Sin(value)
  %4251 = fadd fast float %4250, 1.000000e+00
  %4252 = fmul fast float %4251, 0x3FBB2995E0000000
  %4253 = fmul fast float %4237, 0x402921FB60000000
  %4254 = fadd fast float %4253, 0x401921FB60000000
  %4255 = call float @dx.op.unary.f32(i32 13, float %4254)  ; Sin(value)
  %4256 = fadd fast float %4255, 0xBE8777A5C0000000
  %4257 = fmul fast float %4256, 0x3FB45F3060000000
  %4258 = call float @dx.op.dot4.f32(i32 56, float %4232, float %4233, float %4234, float %4235, float %4242, float %4247, float %4252, float %4257)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4259 = fmul fast float %4258, 0xBFF7154760000000
  %4260 = call float @dx.op.unary.f32(i32 21, float %4259)  ; Exp(value)
  %4261 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  br label %4262

; <label>:4262                                    ; preds = %4230, %4226
  %4263 = phi float [ %4261, %4230 ], [ 1.000000e+00, %4226 ]
  %4264 = fadd fast float %4263, -1.000000e+00
  %4265 = fmul fast float %4264, %4224
  %4266 = fadd fast float %4265, 1.000000e+00
  br label %4267

; <label>:4267                                    ; preds = %4262, %4168
  %4268 = phi float [ %4266, %4262 ], [ 1.000000e+00, %4168 ]
  %4269 = fmul fast float %4268, %4164
  %4270 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %4271 = fadd fast float %2073, %124
  %4272 = fadd fast float %2074, %125
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 1
  %4275 = fsub fast float -0.000000e+00, %4271
  %4276 = fsub fast float -0.000000e+00, %4272
  %4277 = fsub fast float -0.000000e+00, %126
  %4278 = fsub fast float %4277, %4270
  %4279 = fadd fast float %4278, %4274
  %4280 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4275, float %4276, float %4279)  ; Dot3(ax,ay,az,bx,by,bz)
  %4281 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3519, float %3520, float %3521)  ; Dot3(ax,ay,az,bx,by,bz)
  %4282 = fdiv fast float 1.000000e+00, %4281
  %4283 = fmul fast float %4282, %4280
  %4284 = fmul fast float %3519, %4283
  %4285 = fmul fast float %3520, %4283
  %4286 = fadd fast float %4284, %4271
  %4287 = fadd fast float %4285, %4272
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 0
  %4290 = extractvalue %dx.types.CBufRet.f32 %4288, 1
  %4291 = fsub fast float %4286, %4289
  %4292 = fsub fast float %4287, %4290
  %4293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4293, 2
  %4295 = extractvalue %dx.types.CBufRet.f32 %4293, 3
  %4296 = fmul fast float %4291, %4294
  %4297 = fmul fast float %4292, %4295
  %4298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.i32 %4298, 3
  %4300 = icmp eq i32 %4299, 0
  br i1 %4300, label %4306, label %4301

; <label>:4301                                    ; preds = %4267
  %4302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %4296, float %4297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4303 = extractvalue %dx.types.ResRet.f32 %4302, 0
  %4304 = extractvalue %dx.types.ResRet.f32 %4302, 1
  %4305 = extractvalue %dx.types.ResRet.f32 %4302, 2
  br label %4311

; <label>:4306                                    ; preds = %4267
  %4307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %45, float %4296, float %4297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4308 = extractvalue %dx.types.ResRet.f32 %4307, 0
  %4309 = extractvalue %dx.types.ResRet.f32 %4307, 1
  %4310 = extractvalue %dx.types.ResRet.f32 %4307, 2
  br label %4311

; <label>:4311                                    ; preds = %4306, %4301
  %4312 = phi float [ %4303, %4301 ], [ %4308, %4306 ]
  %4313 = phi float [ %4304, %4301 ], [ %4309, %4306 ]
  %4314 = phi float [ %4305, %4301 ], [ %4310, %4306 ]
  %4315 = extractvalue %dx.types.CBufRet.f32 %4273, 2
  %4316 = fmul fast float %4315, %4312
  %4317 = extractvalue %dx.types.CBufRet.f32 %4273, 0
  %4318 = fsub fast float %4283, %4317
  %4319 = fsub fast float %4318, %4316
  %4320 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4319)  ; FMax(a,b)
  %4321 = fmul fast float %4320, %4313
  %4322 = call float @dx.op.binary.f32(i32 36, float %4314, float %4321)  ; FMin(a,b)
  %4323 = fmul fast float %4322, 0xBFF7154760000000
  %4324 = call float @dx.op.unary.f32(i32 21, float %4323)  ; Exp(value)
  %4325 = fmul fast float %4269, %4324
  br label %4326

; <label>:4326                                    ; preds = %4311, %4163
  %4327 = phi float [ %4325, %4311 ], [ %4164, %4163 ]
  %4328 = call float @dx.op.binary.f32(i32 36, float %4327, float %4327)  ; FMin(a,b)
  %4329 = call float @dx.op.binary.f32(i32 36, float %4327, float %4328)  ; FMin(a,b)
  %4330 = fcmp fast ogt float %4329, 0.000000e+00
  br i1 %4330, label %4331, label %4641, !dx.controlflow.hints !115

; <label>:4331                                    ; preds = %4326
  %4332 = fmul fast float %4327, %3530
  %4333 = fmul fast float %4327, %3531
  %4334 = fmul fast float %4327, %3532
  %4335 = fsub fast float %3519, %173
  %4336 = fsub fast float %3520, %174
  %4337 = fsub fast float %3521, %175
  %4338 = call float @dx.op.dot3.f32(i32 55, float %4335, float %4336, float %4337, float %4335, float %4336, float %4337)  ; Dot3(ax,ay,az,bx,by,bz)
  %4339 = call float @dx.op.unary.f32(i32 25, float %4338)  ; Rsqrt(value)
  %4340 = fmul fast float %4339, %4335
  %4341 = fmul fast float %4339, %4336
  %4342 = fmul fast float %4339, %4337
  %4343 = call float @dx.op.dot3.f32(i32 55, float %3519, float %3520, float %3521, float %2051, float %2052, float %2053)  ; Dot3(ax,ay,az,bx,by,bz)
  %4344 = call float @dx.op.dot3.f32(i32 55, float %1879, float %1880, float %1881, float %4340, float %4341, float %4342)  ; Dot3(ax,ay,az,bx,by,bz)
  %4345 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4346 = fmul fast float %4345, %4345
  %4347 = fmul fast float %4346, %2071
  %4348 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4349 = fmul fast float %4348, %4345
  %4350 = call float @dx.op.dot3.f32(i32 55, float %2051, float %2052, float %2053, float %4340, float %4341, float %4342)  ; Dot3(ax,ay,az,bx,by,bz)
  %4351 = fmul fast float %4350, %4350
  %4352 = call float @dx.op.unary.f32(i32 6, float %4343)  ; FAbs(value)
  %4353 = call float @dx.op.binary.f32(i32 35, float %3487, float 0x3F847AE140000000)  ; FMax(a,b)
  %4354 = fmul fast float %4353, %4353
  %4355 = fmul fast float %4354, %4354
  %4356 = fsub fast float 1.000000e+00, %4355
  %4357 = fmul fast float %2058, %2058
  %4358 = fmul fast float %4357, %4356
  %4359 = fadd fast float %4358, %4355
  %4360 = bitcast float %4359 to i32
  %4361 = ashr i32 %4360, 1
  %4362 = add nsw i32 %4361, 532487669
  %4363 = bitcast i32 %4362 to float
  %4364 = fadd fast float %4363, %2058
  %4365 = fmul fast float %4355, %4351
  %4366 = fsub fast float 1.000000e+00, %4351
  %4367 = fadd fast float %4366, %4365
  %4368 = fmul fast float %4352, %4352
  %4369 = fmul fast float %4368, %4356
  %4370 = fadd fast float %4369, %4355
  %4371 = bitcast float %4370 to i32
  %4372 = ashr i32 %4371, 1
  %4373 = add nsw i32 %4372, 532487669
  %4374 = bitcast i32 %4373 to float
  %4375 = fadd fast float %4374, %4352
  %4376 = fmul fast float %4367, %4367
  %4377 = fmul fast float %4376, %4364
  %4378 = fmul fast float %4377, %4375
  %4379 = fdiv fast float 0x3FF0A00000000000, %4378
  %4380 = fmul fast float %4379, %4355
  %4381 = fmul fast float %3349, 0x3FF9999980000000
  %4382 = fsub fast float 5.000000e+00, %4381
  %4383 = call float @dx.op.unary.f32(i32 6, float %4344)  ; FAbs(value)
  %4384 = fsub fast float 1.000000e+00, %4383
  %4385 = fmul fast float %3349, 0x41D9660740000000
  %4386 = fadd fast float %4385, 0xC1EFBF8940000000
  %4387 = bitcast float %4384 to i32
  %4388 = sitofp i32 %4387 to float
  %4389 = fmul fast float %4388, %4382
  %4390 = fadd fast float %4386, %4389
  %4391 = fptosi float %4390 to i32
  %4392 = bitcast i32 %4391 to float
  %4393 = fsub fast float 1.000000e+00, %2048
  %4394 = fsub fast float 1.000000e+00, %2049
  %4395 = fsub fast float 1.000000e+00, %2056
  %4396 = fmul fast float %4392, %4393
  %4397 = fmul fast float %4392, %4394
  %4398 = fmul fast float %4392, %4395
  %4399 = fadd fast float %4396, %2048
  %4400 = fadd fast float %4397, %2049
  %4401 = fadd fast float %4398, %2056
  br i1 %3372, label %4402, label %4425

; <label>:4402                                    ; preds = %4331
  %4403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1677, float %4383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.ResRet.f32 %4403, 1
  %4406 = extractvalue %dx.types.ResRet.f32 %4403, 2
  %4407 = fadd fast float %4404, -5.000000e-01
  %4408 = fadd fast float %4405, -5.000000e-01
  %4409 = fadd fast float %4406, -5.000000e-01
  %4410 = fmul fast float %2048, 4.000000e+00
  %4411 = fmul fast float %4410, %4393
  %4412 = fmul fast float %4411, %4407
  %4413 = fmul fast float %2049, 4.000000e+00
  %4414 = fmul fast float %4413, %4394
  %4415 = fmul fast float %4414, %4408
  %4416 = fmul fast float %2056, 4.000000e+00
  %4417 = fmul fast float %4416, %4395
  %4418 = fmul fast float %4417, %4409
  %4419 = fadd fast float %4412, %4399
  %4420 = fadd fast float %4415, %4400
  %4421 = fadd fast float %4418, %4401
  %4422 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4423 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4424 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  br label %4425

; <label>:4425                                    ; preds = %4402, %4331
  %4426 = phi float [ %4422, %4402 ], [ %4399, %4331 ]
  %4427 = phi float [ %4423, %4402 ], [ %4400, %4331 ]
  %4428 = phi float [ %4424, %4402 ], [ %4401, %4331 ]
  %4429 = fmul fast float %4343, 9.843750e-01
  %4430 = fadd fast float %4429, 7.812500e-03
  %4431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %45, float %4430, float %3353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = extractvalue %dx.types.ResRet.f32 %4431, 1
  %4434 = extractvalue %dx.types.ResRet.f32 %4431, 2
  %4435 = extractvalue %dx.types.ResRet.f32 %4431, 3
  %4436 = fsub fast float %4434, %4432
  %4437 = fsub fast float %4435, %4433
  %4438 = fmul fast float %4436, %3359
  %4439 = fmul fast float %4437, %3359
  %4440 = fadd fast float %4438, %4432
  %4441 = fadd fast float %4439, %4433
  %4442 = fmul fast float %4440, %2048
  %4443 = fmul fast float %4440, %2049
  %4444 = fmul fast float %4440, %2056
  %4445 = fadd fast float %4442, %4441
  %4446 = fadd fast float %4443, %4441
  %4447 = fadd fast float %4444, %4441
  br i1 %3372, label %4448, label %4471

; <label>:4448                                    ; preds = %4425
  %4449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1677, float %4343, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4450 = extractvalue %dx.types.ResRet.f32 %4449, 0
  %4451 = extractvalue %dx.types.ResRet.f32 %4449, 1
  %4452 = extractvalue %dx.types.ResRet.f32 %4449, 2
  %4453 = fadd fast float %4450, -5.000000e-01
  %4454 = fadd fast float %4451, -5.000000e-01
  %4455 = fadd fast float %4452, -5.000000e-01
  %4456 = fmul fast float %2048, 4.000000e+00
  %4457 = fmul fast float %4456, %4393
  %4458 = fmul fast float %4457, %4453
  %4459 = fmul fast float %2049, 4.000000e+00
  %4460 = fmul fast float %4459, %4394
  %4461 = fmul fast float %4460, %4454
  %4462 = fmul fast float %2056, 4.000000e+00
  %4463 = fmul fast float %4462, %4395
  %4464 = fmul fast float %4463, %4455
  %4465 = fadd fast float %4458, %4445
  %4466 = fadd fast float %4461, %4446
  %4467 = fadd fast float %4464, %4447
  %4468 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4470 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  br label %4471

; <label>:4471                                    ; preds = %4448, %4425
  %4472 = phi float [ %4468, %4448 ], [ %4445, %4425 ]
  %4473 = phi float [ %4469, %4448 ], [ %4446, %4425 ]
  %4474 = phi float [ %4470, %4448 ], [ %4447, %4425 ]
  %4475 = call float @dx.op.binary.f32(i32 35, float %4473, float %4474)  ; FMax(a,b)
  %4476 = call float @dx.op.binary.f32(i32 35, float %4472, float %4475)  ; FMax(a,b)
  %4477 = fsub fast float 1.000000e+00, %4476
  %4478 = call float @dx.op.binary.f32(i32 35, float %4352, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4479 = fdiv fast float %1083, %4478
  %4480 = fmul fast float %3427, %4479
  %4481 = fmul fast float %3429, %4479
  %4482 = fmul fast float %3431, %4479
  %4483 = call float @dx.op.unary.f32(i32 21, float %4480)  ; Exp(value)
  %4484 = call float @dx.op.unary.f32(i32 21, float %4481)  ; Exp(value)
  %4485 = call float @dx.op.unary.f32(i32 21, float %4482)  ; Exp(value)
  %4486 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4489 = select i1 %3424, float %4486, float 0.000000e+00
  %4490 = select i1 %3425, float %4487, float 0.000000e+00
  %4491 = select i1 %3426, float %4488, float 0.000000e+00
  %4492 = fsub fast float -0.000000e+00, %2051
  %4493 = fsub fast float -0.000000e+00, %2052
  %4494 = fsub fast float -0.000000e+00, %2053
  %4495 = call float @dx.op.dot3.f32(i32 55, float %3519, float %3520, float %3521, float %4492, float %4493, float %4494)  ; Dot3(ax,ay,az,bx,by,bz)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = fmul fast float %4496, 9.843750e-01
  %4498 = fadd fast float %4497, 7.812500e-03
  %4499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %45, float %4498, float %3353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = extractvalue %dx.types.ResRet.f32 %4499, 1
  %4502 = extractvalue %dx.types.ResRet.f32 %4499, 2
  %4503 = extractvalue %dx.types.ResRet.f32 %4499, 3
  %4504 = fsub fast float %4502, %4500
  %4505 = fsub fast float %4503, %4501
  %4506 = fmul fast float %4504, %3359
  %4507 = fmul fast float %4505, %3359
  %4508 = fadd fast float %4506, %4500
  %4509 = fadd fast float %4507, %4501
  %4510 = fmul fast float %4508, %2048
  %4511 = fmul fast float %4508, %2049
  %4512 = fmul fast float %4508, %2056
  %4513 = fadd fast float %4510, %4509
  %4514 = fadd fast float %4511, %4509
  %4515 = fadd fast float %4512, %4509
  br i1 %3372, label %4516, label %4539

; <label>:4516                                    ; preds = %4471
  %4517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1677, float %4496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4518 = extractvalue %dx.types.ResRet.f32 %4517, 0
  %4519 = extractvalue %dx.types.ResRet.f32 %4517, 1
  %4520 = extractvalue %dx.types.ResRet.f32 %4517, 2
  %4521 = fadd fast float %4518, -5.000000e-01
  %4522 = fadd fast float %4519, -5.000000e-01
  %4523 = fadd fast float %4520, -5.000000e-01
  %4524 = fmul fast float %2048, 4.000000e+00
  %4525 = fmul fast float %4524, %4393
  %4526 = fmul fast float %4525, %4521
  %4527 = fmul fast float %2049, 4.000000e+00
  %4528 = fmul fast float %4527, %4394
  %4529 = fmul fast float %4528, %4522
  %4530 = fmul fast float %2056, 4.000000e+00
  %4531 = fmul fast float %4530, %4395
  %4532 = fmul fast float %4531, %4523
  %4533 = fadd fast float %4526, %4513
  %4534 = fadd fast float %4529, %4514
  %4535 = fadd fast float %4532, %4515
  %4536 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4537 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4538 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  br label %4539

; <label>:4539                                    ; preds = %4516, %4471
  %4540 = phi float [ %4536, %4516 ], [ %4513, %4471 ]
  %4541 = phi float [ %4537, %4516 ], [ %4514, %4471 ]
  %4542 = phi float [ %4538, %4516 ], [ %4515, %4471 ]
  %4543 = call float @dx.op.binary.f32(i32 35, float %4541, float %4542)  ; FMax(a,b)
  %4544 = call float @dx.op.binary.f32(i32 35, float %4540, float %4543)  ; FMax(a,b)
  %4545 = fsub fast float 1.000000e+00, %4544
  %4546 = fmul fast float %3487, %3492
  %4547 = fadd fast float %3494, %4546
  %4548 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4549 = fsub fast float %3519, %2064
  %4550 = fsub fast float %3520, %2065
  %4551 = fsub fast float %3521, %2066
  %4552 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4550, float %4551, float %4549, float %4550, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %4553 = call float @dx.op.unary.f32(i32 25, float %4552)  ; Rsqrt(value)
  %4554 = fmul fast float %4553, %4549
  %4555 = fmul fast float %4553, %4550
  %4556 = fmul fast float %4553, %4551
  %4557 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4493, float %4494, float %4554, float %4555, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %4558 = fmul fast float %4557, %4557
  %4559 = call float @dx.op.unary.f32(i32 6, float %4496)  ; FAbs(value)
  %4560 = call float @dx.op.binary.f32(i32 35, float %4548, float 0x3F847AE140000000)  ; FMax(a,b)
  %4561 = fmul fast float %4560, %4560
  %4562 = fmul fast float %4561, %4561
  %4563 = fsub fast float 1.000000e+00, %4562
  %4564 = fmul fast float %4357, %4563
  %4565 = fadd fast float %4564, %4562
  %4566 = bitcast float %4565 to i32
  %4567 = ashr i32 %4566, 1
  %4568 = add nsw i32 %4567, 532487669
  %4569 = bitcast i32 %4568 to float
  %4570 = fadd fast float %4569, %2058
  %4571 = fmul fast float %4562, %4558
  %4572 = fsub fast float 1.000000e+00, %4558
  %4573 = fadd fast float %4572, %4571
  %4574 = fmul fast float %4559, %4559
  %4575 = fmul fast float %4574, %4563
  %4576 = fadd fast float %4575, %4562
  %4577 = bitcast float %4576 to i32
  %4578 = ashr i32 %4577, 1
  %4579 = add nsw i32 %4578, 532487669
  %4580 = bitcast i32 %4579 to float
  %4581 = fadd fast float %4580, %4559
  %4582 = fmul fast float %4573, %4573
  %4583 = fmul fast float %4582, %4570
  %4584 = fmul fast float %4583, %4581
  %4585 = fdiv fast float 0x3FF0A00000000000, %4584
  %4586 = fmul fast float %4585, %4562
  %4587 = fmul fast float %4496, %4489
  %4588 = fmul fast float %4496, %4490
  %4589 = fmul fast float %4496, %4491
  %4590 = fmul fast float %4587, %4545
  %4591 = fmul fast float %4590, %4586
  %4592 = fmul fast float %4588, %4545
  %4593 = fmul fast float %4592, %4586
  %4594 = fmul fast float %4589, %4545
  %4595 = fmul fast float %4594, %4586
  %4596 = fmul fast float %4426, %4380
  %4597 = fmul fast float %4427, %4380
  %4598 = fmul fast float %4428, %4380
  %4599 = fsub fast float 1.000000e+00, %4344
  %4600 = bitcast float %4599 to i32
  %4601 = sitofp i32 %4600 to float
  %4602 = fmul fast float %4601, 5.000000e+00
  %4603 = fadd fast float %4602, 0xC1EFBF8940000000
  %4604 = fptosi float %4603 to i32
  %4605 = bitcast i32 %4604 to float
  %4606 = fmul fast float %4605, %1676
  %4607 = fmul fast float %4477, %4606
  %4608 = fmul fast float %4607, %3419
  %4609 = fmul fast float %4607, %3420
  %4610 = fmul fast float %4607, %3421
  %4611 = fadd fast float %4608, %4596
  %4612 = fadd fast float %4609, %4597
  %4613 = fadd fast float %4610, %4598
  %4614 = fmul fast float %4611, %4349
  %4615 = fmul fast float %4612, %4349
  %4616 = fmul fast float %4613, %4349
  %4617 = fmul fast float %4349, %4332
  %4618 = fmul fast float %4617, %4477
  %4619 = fmul fast float %4349, %4333
  %4620 = fmul fast float %4619, %4477
  %4621 = fmul fast float %4349, %4334
  %4622 = fmul fast float %4621, %4477
  %4623 = fadd fast float %4614, %4591
  %4624 = fadd fast float %4615, %4593
  %4625 = fadd fast float %4616, %4595
  %4626 = fmul fast float %4623, %4332
  %4627 = fmul fast float %4624, %4333
  %4628 = fmul fast float %4625, %4334
  %4629 = fadd fast float %4618, %3509
  %4630 = fmul fast float %4629, %1727
  %4631 = fadd fast float %4620, %3511
  %4632 = fmul fast float %4631, %1727
  %4633 = fadd fast float %4622, %3513
  %4634 = fmul fast float %4633, %1727
  %4635 = fadd fast float %4626, %3472
  %4636 = fmul fast float %4635, %1727
  %4637 = fadd fast float %4627, %3475
  %4638 = fmul fast float %4637, %1727
  %4639 = fadd fast float %4628, %3478
  %4640 = fmul fast float %4639, %1727
  br label %4641

; <label>:4641                                    ; preds = %4539, %4326, %3399
  %4642 = phi float [ %3473, %3399 ], [ %3473, %4326 ], [ %4636, %4539 ]
  %4643 = phi float [ %3476, %3399 ], [ %3476, %4326 ], [ %4638, %4539 ]
  %4644 = phi float [ %3479, %3399 ], [ %3479, %4326 ], [ %4640, %4539 ]
  %4645 = phi float [ %3510, %3399 ], [ %3510, %4326 ], [ %4630, %4539 ]
  %4646 = phi float [ %3512, %3399 ], [ %3512, %4326 ], [ %4632, %4539 ]
  %4647 = phi float [ %3514, %3399 ], [ %3514, %4326 ], [ %4634, %4539 ]
  %4648 = fmul fast float %3448, %1727
  %4649 = fmul fast float %3449, %1727
  %4650 = fmul fast float %3450, %1727
  %4651 = fadd fast float %4648, 1.000000e+00
  %4652 = fadd fast float %4649, 1.000000e+00
  %4653 = fadd fast float %4650, 1.000000e+00
  %4654 = call float @dx.op.dot3.f32(i32 55, float %4651, float %4652, float %4653, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4655 = fsub fast float 1.000000e+00, %4654
  %4656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4657 = extractvalue %dx.types.CBufRet.f32 %4656, 0
  %4658 = fmul fast float %4657, %3454
  %4659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4659, 3
  %4661 = fsub fast float 1.000000e+00, %1672
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = fadd fast float %4647, %1671
  %4664 = fmul fast float %4663, %1672
  %4665 = fmul fast float %4662, %4660
  %4666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1706, i32 undef)  ; BufferLoad(srv,index,wot)
  %4667 = extractvalue %dx.types.ResRet.i32 %4666, 3
  %4668 = bitcast i32 %4667 to float
  %4669 = fsub fast float %4655, %4668
  %4670 = fmul fast float %4669, %187
  %4671 = fadd fast float %4670, %4668
  %4672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4673 = extractvalue %dx.types.CBufRet.f32 %4672, 3
  %4674 = fmul fast float %4645, %2045
  %4675 = fmul fast float %4646, %2046
  %4676 = fmul fast float %4647, %2047
  %4677 = fcmp fast ogt float %68, %207
  %4678 = and i1 %4677, %1795
  %4679 = or i1 %1874, %4678
  %4680 = icmp eq i32 %1794, 2
  %4681 = fcmp fast ole float %68, %207
  %4682 = and i1 %4681, %4680
  %4683 = or i1 %4682, %4679
  br i1 %4678, label %4684, label %4943

; <label>:4684                                    ; preds = %4641
  %4685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.f32 %4685, 2
  %4687 = extractvalue %dx.types.CBufRet.f32 %4685, 3
  %4688 = fmul fast float %4686, %77
  %4689 = fmul fast float %4687, %78
  %4690 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4691 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4692 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %4690, float %4691, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = extractvalue %dx.types.ResRet.f32 %4692, 1
  %4695 = extractvalue %dx.types.ResRet.f32 %4692, 2
  %4696 = extractvalue %dx.types.ResRet.f32 %4692, 3
  %4697 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %4690, float %4691, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4698 = extractvalue %dx.types.ResRet.f32 %4697, 0
  %4699 = extractvalue %dx.types.ResRet.f32 %4697, 1
  %4700 = extractvalue %dx.types.ResRet.f32 %4697, 2
  %4701 = extractvalue %dx.types.ResRet.f32 %4697, 3
  %4702 = call float @dx.op.binary.f32(i32 35, float %4694, float %4695)  ; FMax(a,b)
  %4703 = call float @dx.op.binary.f32(i32 35, float %4693, float %4702)  ; FMax(a,b)
  %4704 = call float @dx.op.binary.f32(i32 35, float %4703, float %4696)  ; FMax(a,b)
  %4705 = call float @dx.op.binary.f32(i32 36, float %4699, float %4700)  ; FMin(a,b)
  %4706 = call float @dx.op.binary.f32(i32 36, float %4698, float %4705)  ; FMin(a,b)
  %4707 = call float @dx.op.binary.f32(i32 36, float %4706, float %4701)  ; FMin(a,b)
  %4708 = fmul fast float %4704, 2.550000e+02
  %4709 = fadd fast float %4708, 0x3F70101020000000
  %4710 = fptoui float %4709 to i32
  %4711 = fmul fast float %4707, 2.550000e+02
  %4712 = fadd fast float %4711, 0x3F70101020000000
  %4713 = fptoui float %4712 to i32
  %4714 = icmp ult i32 %4710, %4713
  br i1 %4714, label %4715, label %4883

; <label>:4715                                    ; preds = %4684
  %4716 = fcmp fast ogt float %67, 9.843750e-01
  %4717 = fadd fast float %68, -4.000000e+00
  %4718 = select i1 %4716, float -4.000000e+00, float %4717
  %4719 = call float @dx.op.binary.f32(i32 35, float %4718, float 0.000000e+00)  ; FMax(a,b)
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 0
  %4722 = fadd fast float %4721, %4719
  %4723 = extractvalue %dx.types.CBufRet.f32 %4720, 2
  %4724 = fmul fast float %4722, %4723
  %4725 = call float @dx.op.unary.f32(i32 23, float %4724)  ; Log(value)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4720, 3
  %4727 = fmul fast float %4726, %4725
  %4728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.f32 %4728, 2
  %4730 = fmul fast float %4727, %4729
  %4731 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4732 = uitofp i32 %4710 to float
  %4733 = uitofp i32 %4713 to float
  %4734 = fadd fast float %4732, 5.000000e-01
  %4735 = fadd fast float %4733, 5.000000e-01
  %4736 = fmul fast float %4729, %4734
  %4737 = fmul fast float %4729, %4735
  %4738 = fadd fast float %4736, 0x3F0FFB4800000000
  %4739 = fadd fast float %4737, 0xBF0FFB4800000000
  %4740 = call float @dx.op.binary.f32(i32 35, float %4731, float %4738)  ; FMax(a,b)
  %4741 = call float @dx.op.binary.f32(i32 36, float %4740, float %4739)  ; FMin(a,b)
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 1
  %4744 = extractvalue %dx.types.CBufRet.f32 %4742, 2
  %4745 = extractvalue %dx.types.CBufRet.f32 %4742, 0
  %4746 = fmul fast float %4743, %4741
  %4747 = fadd fast float %4745, %4746
  %4748 = fadd fast float %4745, %4744
  %4749 = fsub fast float %4743, %4744
  %4750 = fadd fast float %4749, %4745
  %4751 = call float @dx.op.binary.f32(i32 35, float %4747, float %4748)  ; FMax(a,b)
  %4752 = call float @dx.op.binary.f32(i32 36, float %4751, float %4750)  ; FMin(a,b)
  %4753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %4690, float %4691, float %4752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = extractvalue %dx.types.ResRet.f32 %4753, 1
  %4756 = extractvalue %dx.types.ResRet.f32 %4753, 2
  %4757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.i32 %4757, 0
  %4759 = extractvalue %dx.types.CBufRet.i32 %4757, 1
  %4760 = uitofp i32 %4758 to float
  %4761 = uitofp i32 %4759 to float
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 0
  %4764 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %4765 = fmul fast float %4760, %4690
  %4766 = fmul fast float %4761, %4691
  %4767 = fadd fast float %4765, -5.000000e-01
  %4768 = fadd fast float %4766, -5.000000e-01
  %4769 = call float @dx.op.unary.f32(i32 22, float %4767)  ; Frc(value)
  %4770 = call float @dx.op.unary.f32(i32 22, float %4768)  ; Frc(value)
  %4771 = fmul fast float %4769, %4769
  %4772 = fmul fast float %4771, %4769
  %4773 = fsub fast float 3.000000e+00, %4769
  %4774 = fmul fast float %4771, %4773
  %4775 = fmul fast float %4769, 3.000000e+00
  %4776 = fmul fast float %4772, 3.000000e+00
  %4777 = fmul fast float %4771, 6.000000e+00
  %4778 = fsub fast float %4776, %4777
  %4779 = fadd fast float %4778, 4.000000e+00
  %4780 = fmul fast float %4779, 0x3FC5555560000000
  %4781 = fmul fast float %4772, -3.000000e+00
  %4782 = fadd fast float %4771, %4769
  %4783 = fmul fast float %4782, 3.000000e+00
  %4784 = fadd fast float %4781, 1.000000e+00
  %4785 = fadd fast float %4784, %4783
  %4786 = fmul fast float %4772, 0x3FC5555560000000
  %4787 = fmul fast float %4770, %4770
  %4788 = fmul fast float %4787, %4770
  %4789 = fsub fast float 3.000000e+00, %4770
  %4790 = fmul fast float %4787, %4789
  %4791 = fmul fast float %4770, 3.000000e+00
  %4792 = fmul fast float %4788, 3.000000e+00
  %4793 = fmul fast float %4787, 6.000000e+00
  %4794 = fsub fast float %4792, %4793
  %4795 = fadd fast float %4794, 4.000000e+00
  %4796 = fmul fast float %4795, 0x3FC5555560000000
  %4797 = fmul fast float %4788, -3.000000e+00
  %4798 = fadd fast float %4787, %4770
  %4799 = fmul fast float %4798, 3.000000e+00
  %4800 = fadd fast float %4797, 1.000000e+00
  %4801 = fadd fast float %4800, %4799
  %4802 = fmul fast float %4788, 0x3FC5555560000000
  %4803 = fadd fast float %4769, 1.000000e+00
  %4804 = fsub fast float 1.000000e+00, %4775
  %4805 = fadd fast float %4804, %4774
  %4806 = fadd fast float %4805, %4779
  %4807 = fmul fast float %4806, 0x3FC5555560000000
  %4808 = fdiv fast float %4780, %4807
  %4809 = fsub fast float %4803, %4808
  %4810 = fsub fast float 1.000000e+00, %4769
  %4811 = fadd fast float %4785, %4772
  %4812 = fmul fast float %4811, 0x3FC5555560000000
  %4813 = fdiv fast float %4786, %4812
  %4814 = fadd fast float %4810, %4813
  %4815 = fadd fast float %4770, 1.000000e+00
  %4816 = fsub fast float 1.000000e+00, %4791
  %4817 = fadd fast float %4816, %4790
  %4818 = fadd fast float %4817, %4795
  %4819 = fmul fast float %4818, 0x3FC5555560000000
  %4820 = fdiv fast float %4796, %4819
  %4821 = fsub fast float %4815, %4820
  %4822 = fsub fast float 1.000000e+00, %4770
  %4823 = fadd fast float %4801, %4788
  %4824 = fmul fast float %4823, 0x3FC5555560000000
  %4825 = fdiv fast float %4802, %4824
  %4826 = fadd fast float %4825, %4822
  %4827 = fmul fast float %4809, %4763
  %4828 = fsub fast float %4690, %4827
  %4829 = fmul fast float %4814, %4763
  %4830 = fadd fast float %4829, %4690
  %4831 = fmul fast float %4826, %4764
  %4832 = fadd fast float %4831, %4691
  %4833 = fmul fast float %4821, %4764
  %4834 = fsub fast float %4691, %4833
  %4835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4828, float %4834, float %4752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4836 = extractvalue %dx.types.ResRet.f32 %4835, 0
  %4837 = extractvalue %dx.types.ResRet.f32 %4835, 1
  %4838 = extractvalue %dx.types.ResRet.f32 %4835, 2
  %4839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4830, float %4834, float %4752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4840 = extractvalue %dx.types.ResRet.f32 %4839, 0
  %4841 = extractvalue %dx.types.ResRet.f32 %4839, 1
  %4842 = extractvalue %dx.types.ResRet.f32 %4839, 2
  %4843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4828, float %4832, float %4752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4844 = extractvalue %dx.types.ResRet.f32 %4843, 0
  %4845 = extractvalue %dx.types.ResRet.f32 %4843, 1
  %4846 = extractvalue %dx.types.ResRet.f32 %4843, 2
  %4847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4830, float %4832, float %4752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.ResRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.ResRet.f32 %4847, 2
  %4851 = fsub fast float %4844, %4836
  %4852 = fsub fast float %4845, %4837
  %4853 = fsub fast float %4846, %4838
  %4854 = fmul fast float %4851, %4824
  %4855 = fmul fast float %4852, %4824
  %4856 = fmul fast float %4853, %4824
  %4857 = fadd fast float %4854, %4836
  %4858 = fadd fast float %4855, %4837
  %4859 = fadd fast float %4856, %4838
  %4860 = fsub fast float %4848, %4840
  %4861 = fsub fast float %4849, %4841
  %4862 = fsub fast float %4850, %4842
  %4863 = fmul fast float %4860, %4824
  %4864 = fmul fast float %4861, %4824
  %4865 = fmul fast float %4862, %4824
  %4866 = fsub fast float %4840, %4857
  %4867 = fadd fast float %4866, %4863
  %4868 = fsub fast float %4841, %4858
  %4869 = fadd fast float %4868, %4864
  %4870 = fsub fast float %4842, %4859
  %4871 = fadd fast float %4870, %4865
  %4872 = fmul fast float %4867, %4812
  %4873 = fmul fast float %4869, %4812
  %4874 = fmul fast float %4871, %4812
  %4875 = fadd fast float %4872, %4857
  %4876 = fadd fast float %4873, %4858
  %4877 = fadd fast float %4874, %4859
  %4878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4879 = extractvalue %dx.types.CBufRet.f32 %4878, 1
  %4880 = fmul fast float %4875, %4879
  %4881 = fmul fast float %4876, %4879
  %4882 = fmul fast float %4877, %4879
  br label %4883

; <label>:4883                                    ; preds = %4715, %4684
  %4884 = phi float [ %4754, %4715 ], [ 1.000000e+00, %4684 ]
  %4885 = phi float [ %4755, %4715 ], [ 1.000000e+00, %4684 ]
  %4886 = phi float [ %4756, %4715 ], [ 1.000000e+00, %4684 ]
  %4887 = phi float [ %4880, %4715 ], [ 0.000000e+00, %4684 ]
  %4888 = phi float [ %4881, %4715 ], [ 0.000000e+00, %4684 ]
  %4889 = phi float [ %4882, %4715 ], [ 0.000000e+00, %4684 ]
  %4890 = fmul fast float %4887, %4671
  %4891 = fmul fast float %4888, %4671
  %4892 = fmul fast float %4889, %4671
  %4893 = call float @dx.op.dot3.f32(i32 55, float %4884, float %4885, float %4886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4891, float %4892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = select i1 %246, float %4893, float %4884
  %4896 = select i1 %246, float %4893, float %4885
  %4897 = select i1 %246, float 1.000000e+00, float %4886
  %4898 = select i1 %246, float %4894, float %4890
  %4899 = select i1 %246, float 0.000000e+00, float %4891
  %4900 = select i1 %246, float 0.000000e+00, float %4892
  %4901 = fmul fast float %4895, %4674
  %4902 = fmul fast float %4896, %4675
  %4903 = fmul fast float %4897, %4676
  %4904 = fadd fast float %4901, %4898
  %4905 = fadd fast float %4902, %4899
  %4906 = fadd fast float %4900, %4903
  %4907 = fmul fast float %4895, %4642
  %4908 = fmul fast float %4896, %4643
  %4909 = fmul fast float %4897, %4644
  %4910 = fmul fast float %77, 2.000000e+00
  %4911 = fmul fast float %4910, %4686
  %4912 = fmul fast float %78, 2.000000e+00
  %4913 = fmul fast float %4912, %4687
  %4914 = fsub fast float 1.000000e+00, %4911
  %4915 = fsub fast float 1.000000e+00, %4913
  %4916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.f32 %4916, 0
  %4918 = extractvalue %dx.types.CBufRet.f32 %4916, 1
  %4919 = extractvalue %dx.types.CBufRet.f32 %4916, 2
  %4920 = fmul fast float %4914, %4917
  %4921 = fmul fast float %4914, %4918
  %4922 = fmul fast float %4914, %4919
  %4923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4924 = extractvalue %dx.types.CBufRet.f32 %4923, 0
  %4925 = extractvalue %dx.types.CBufRet.f32 %4923, 1
  %4926 = extractvalue %dx.types.CBufRet.f32 %4923, 2
  %4927 = fmul fast float %4915, %4924
  %4928 = fmul fast float %4915, %4925
  %4929 = fmul fast float %4915, %4926
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 0
  %4932 = extractvalue %dx.types.CBufRet.f32 %4930, 1
  %4933 = extractvalue %dx.types.CBufRet.f32 %4930, 2
  %4934 = fadd fast float %4927, %4931
  %4935 = fadd fast float %4934, %4920
  %4936 = fadd fast float %4928, %4932
  %4937 = fadd fast float %4936, %4921
  %4938 = fadd fast float %4929, %4933
  %4939 = fadd fast float %4938, %4922
  %4940 = fmul fast float %4935, %207
  %4941 = fmul fast float %4937, %207
  %4942 = fmul fast float %4939, %207
  br label %4943

; <label>:4943                                    ; preds = %4883, %4641
  %4944 = phi float [ %4940, %4883 ], [ %124, %4641 ]
  %4945 = phi float [ %4941, %4883 ], [ %125, %4641 ]
  %4946 = phi float [ %4942, %4883 ], [ %126, %4641 ]
  %4947 = phi float [ %207, %4883 ], [ %68, %4641 ]
  %4948 = phi float [ %4904, %4883 ], [ %4674, %4641 ]
  %4949 = phi float [ %4905, %4883 ], [ %4675, %4641 ]
  %4950 = phi float [ %4906, %4883 ], [ %4676, %4641 ]
  %4951 = phi float [ %4907, %4883 ], [ %4642, %4641 ]
  %4952 = phi float [ %4908, %4883 ], [ %4643, %4641 ]
  %4953 = phi float [ %4909, %4883 ], [ %4644, %4641 ]
  %4954 = phi float [ %4884, %4883 ], [ 1.000000e+00, %4641 ]
  br i1 %4683, label %6109, label %4955

; <label>:4955                                    ; preds = %4943
  %4956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.f32 %4956, 0
  %4958 = extractvalue %dx.types.CBufRet.f32 %4956, 1
  %4959 = extractvalue %dx.types.CBufRet.f32 %4956, 2
  %4960 = extractvalue %dx.types.CBufRet.f32 %4956, 3
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4964 = extractvalue %dx.types.CBufRet.f32 %4961, 2
  %4965 = extractvalue %dx.types.CBufRet.f32 %4961, 3
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 0
  %4968 = extractvalue %dx.types.CBufRet.f32 %4966, 1
  %4969 = extractvalue %dx.types.CBufRet.f32 %4966, 2
  %4970 = extractvalue %dx.types.CBufRet.f32 %4966, 3
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.CBufRet.f32 %4971, 1
  %4974 = extractvalue %dx.types.CBufRet.f32 %4971, 2
  %4975 = extractvalue %dx.types.CBufRet.f32 %4971, 3
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 3
  %4978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4979 = extractvalue %dx.types.CBufRet.f32 %4978, 3
  %4980 = extractvalue %dx.types.CBufRet.f32 %4978, 0
  %4981 = extractvalue %dx.types.CBufRet.f32 %4978, 1
  %4982 = extractvalue %dx.types.CBufRet.f32 %4978, 2
  %4983 = fcmp fast olt float %4982, -5.000000e-01
  %4984 = call float @dx.op.dot3.f32(i32 55, float %4944, float %4945, float %4946, float %4944, float %4945, float %4946)  ; Dot3(ax,ay,az,bx,by,bz)
  %4985 = call float @dx.op.unary.f32(i32 25, float %4984)  ; Rsqrt(value)
  %4986 = fmul fast float %4985, %4984
  %4987 = fmul fast float %4985, %4944
  %4988 = fmul fast float %4985, %4945
  %4989 = fmul fast float %4985, %4946
  %4990 = fadd fast float %4986, %4960
  %4991 = call float @dx.op.dot3.f32(i32 55, float %4987, float %4988, float %4989, float %4957, float %4958, float %4959)  ; Dot3(ax,ay,az,bx,by,bz)
  %4992 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.i32 %4992, 1
  %4994 = and i32 %4993, 1
  %4995 = icmp ne i32 %4994, 0
  %4996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.f32 %4996, 2
  %4998 = fcmp fast ogt float %4997, 0.000000e+00
  %4999 = and i1 %4995, %4998
  br i1 %4999, label %5000, label %5406, !dx.controlflow.hints !116

; <label>:5000                                    ; preds = %4955
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 3
  %5003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.f32 %5003, 2
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 2
  %5007 = fsub fast float %5004, %5006
  %5008 = and i32 %4993, 2
  %5009 = extractvalue %dx.types.CBufRet.i32 %4992, 0
  %5010 = call i32 @dx.op.binary.i32(i32 40, i32 %5009, i32 3)  ; UMin(a,b)
  %5011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.f32 %5011, 0
  %5013 = extractvalue %dx.types.CBufRet.f32 %5011, 1
  %5014 = extractvalue %dx.types.CBufRet.f32 %5005, 0
  %5015 = extractvalue %dx.types.CBufRet.f32 %5005, 1
  %5016 = fsub fast float %5012, %5014
  %5017 = fsub fast float %5013, %5015
  %5018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5019 = extractvalue %dx.types.CBufRet.f32 %5018, 0
  %5020 = fcmp fast ogt float %5019, 0.000000e+00
  %5021 = fsub fast float -0.000000e+00, %5016
  %5022 = fsub fast float -0.000000e+00, %5017
  %5023 = call float @dx.op.dot2.f32(i32 54, float %4987, float %4988, float %4987, float %4988)  ; Dot2(ax,ay,bx,by)
  %5024 = call float @dx.op.dot2.f32(i32 54, float %4987, float %4988, float %5021, float %5022)  ; Dot2(ax,ay,bx,by)
  %5025 = fmul fast float %5024, 2.000000e+00
  %5026 = call float @dx.op.dot2.f32(i32 54, float %5021, float %5022, float %5021, float %5022)  ; Dot2(ax,ay,bx,by)
  %5027 = fmul fast float %5019, %5019
  %5028 = fsub fast float %5026, %5027
  %5029 = fmul fast float %5025, %5025
  %5030 = fmul fast float %5023, 4.000000e+00
  %5031 = fmul fast float %5030, %5028
  %5032 = fsub fast float %5029, %5031
  %5033 = fcmp fast ogt float %5032, 0.000000e+00
  br i1 %5033, label %5034, label %5049

; <label>:5034                                    ; preds = %5000
  %5035 = fcmp fast ogt float %5025, 0.000000e+00
  %5036 = call float @dx.op.unary.f32(i32 24, float %5032)  ; Sqrt(value)
  %5037 = fsub fast float -0.000000e+00, %5036
  %5038 = select i1 %5035, float %5036, float %5037
  %5039 = fadd fast float %5038, %5025
  %5040 = fmul float %5039, -5.000000e-01
  %5041 = fdiv fast float %5040, %5023
  %5042 = call float @dx.op.binary.f32(i32 35, float %5041, float 0.000000e+00)  ; FMax(a,b)
  %5043 = call float @dx.op.binary.f32(i32 36, float %4986, float %5042)  ; FMin(a,b)
  %5044 = fdiv fast float %5028, %5040
  %5045 = call float @dx.op.binary.f32(i32 35, float %5044, float 0.000000e+00)  ; FMax(a,b)
  %5046 = call float @dx.op.binary.f32(i32 36, float %4986, float %5045)  ; FMin(a,b)
  %5047 = call float @dx.op.binary.f32(i32 36, float %5043, float %5046)  ; FMin(a,b)
  %5048 = call float @dx.op.binary.f32(i32 35, float %5043, float %5046)  ; FMax(a,b)
  br label %5049

; <label>:5049                                    ; preds = %5034, %5000
  %5050 = phi float [ %5048, %5034 ], [ -1.000000e+00, %5000 ]
  %5051 = phi float [ %5047, %5034 ], [ -1.000000e+00, %5000 ]
  %5052 = phi i1 [ true, %5034 ], [ false, %5000 ]
  %5053 = and i1 %5020, %5052
  br i1 %5053, label %5054, label %5056

; <label>:5054                                    ; preds = %5049
  %5055 = fcmp fast oeq float %5051, %5050
  br i1 %5055, label %5359, label %5057

; <label>:5056                                    ; preds = %5049
  br i1 %5020, label %5359, label %5057

; <label>:5057                                    ; preds = %5056, %5054
  %5058 = phi float [ %4986, %5056 ], [ %5050, %5054 ]
  %5059 = phi float [ 0.000000e+00, %5056 ], [ %5051, %5054 ]
  %5060 = icmp ne i32 %5008, 0
  %5061 = fmul fast float %5058, %4989
  %5062 = fadd fast float %5061, %5002
  %5063 = fmul fast float %5062, %5058
  %5064 = select i1 %5060, float 0.000000e+00, float %5063
  %5065 = fcmp fast oeq float %4989, 0.000000e+00
  %5066 = fdiv fast float %5007, %4989
  %5067 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5066)  ; FMax(a,b)
  %5068 = select i1 %5065, float %5058, float %5067
  %5069 = call float @dx.op.binary.f32(i32 36, float %5058, float %5068)  ; FMin(a,b)
  %5070 = fcmp fast ogt float %4989, 0.000000e+00
  %5071 = fcmp fast olt float %5007, 0.000000e+00
  br i1 %5070, label %5072, label %5129

; <label>:5072                                    ; preds = %5057
  %5073 = icmp eq i32 %5008, 0
  br i1 %5071, label %5074, label %5118

; <label>:5074                                    ; preds = %5072
  %5075 = select i1 %5073, float %5058, float 0.000000e+00
  %5076 = fsub fast float -0.000000e+00, %5075
  %5077 = call float @dx.op.unary.f32(i32 6, float %5076)  ; FAbs(value)
  %5078 = fmul fast float %5075, %4989
  %5079 = fadd fast float %5078, %5002
  %5080 = fmul fast float %5077, %5079
  %5081 = fsub fast float %5064, %5080
  %5082 = fsub fast float %5058, %5077
  %5083 = select i1 %5073, float %5082, float 0.000000e+00
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 0
  %5086 = extractvalue %dx.types.CBufRet.f32 %5084, 1
  %5087 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 0
  %5090 = extractvalue %dx.types.CBufRet.f32 %5088, 1
  %5091 = extractvalue %dx.types.CBufRet.f32 %5088, 2
  %5092 = extractvalue %dx.types.CBufRet.f32 %5088, 3
  %5093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.f32 %5093, 3
  %5095 = call float @dx.op.binary.f32(i32 36, float %5081, float %5094)  ; FMin(a,b)
  %5096 = fmul fast float %5092, %5083
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = fsub fast float %5089, %5085
  %5099 = fsub fast float %5090, %5086
  %5100 = fsub fast float %5091, %5087
  %5101 = fmul fast float %5097, %5098
  %5102 = fmul fast float %5097, %5099
  %5103 = fmul fast float %5097, %5100
  %5104 = fadd fast float %5101, %5085
  %5105 = fadd fast float %5102, %5086
  %5106 = fadd fast float %5103, %5087
  %5107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.CBufRet.f32 %5107, 1
  %5110 = fadd fast float %5109, %5108
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5107, 2
  %5113 = extractvalue %dx.types.CBufRet.f32 %5107, 3
  %5114 = fadd fast float %5113, %5112
  %5115 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5116 = fmul fast float %5111, %5095
  %5117 = fmul fast float %5116, %5115
  br label %5359

; <label>:5118                                    ; preds = %5072
  br i1 %5073, label %5119, label %5140

; <label>:5119                                    ; preds = %5118
  %5120 = call float @dx.op.binary.f32(i32 36, float %5069, float %5059)  ; FMin(a,b)
  %5121 = fsub fast float %5069, %5120
  %5122 = fsub fast float %5121, %5058
  %5123 = call float @dx.op.unary.f32(i32 6, float %5122)  ; FAbs(value)
  %5124 = fadd fast float %5121, %5058
  %5125 = fmul fast float %5124, %4989
  %5126 = fadd fast float %5125, %5002
  %5127 = fmul fast float %5126, %5123
  %5128 = fsub fast float %5064, %5127
  br label %5140

; <label>:5129                                    ; preds = %5057
  br i1 %5071, label %5130, label %5140

; <label>:5130                                    ; preds = %5129
  %5131 = call float @dx.op.binary.f32(i32 35, float %5059, float %5069)  ; FMax(a,b)
  %5132 = icmp eq i32 %5008, 0
  %5133 = select i1 %5132, float %5069, float 0.000000e+00
  %5134 = fsub fast float -0.000000e+00, %5133
  %5135 = call float @dx.op.unary.f32(i32 6, float %5134)  ; FAbs(value)
  %5136 = fmul fast float %5133, %4989
  %5137 = fadd fast float %5136, %5002
  %5138 = fmul fast float %5135, %5137
  %5139 = fsub fast float %5064, %5138
  br label %5140

; <label>:5140                                    ; preds = %5130, %5129, %5119, %5118
  %5141 = phi float [ %5059, %5118 ], [ %5059, %5119 ], [ %5131, %5130 ], [ %5059, %5129 ]
  %5142 = phi float [ 0.000000e+00, %5118 ], [ %5123, %5119 ], [ %5135, %5130 ], [ 0.000000e+00, %5129 ]
  %5143 = phi float [ %5064, %5118 ], [ %5128, %5119 ], [ %5139, %5130 ], [ %5064, %5129 ]
  %5144 = phi float [ %5069, %5118 ], [ %5069, %5119 ], [ %5058, %5130 ], [ %5058, %5129 ]
  %5145 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 0
  store float -1.000000e+00, float* %5145, align 4, !tbaa !117, !noalias !119
  %5146 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 1
  store float -1.000000e+00, float* %5146, align 4, !tbaa !117, !noalias !119
  %5147 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 2
  store float -1.000000e+00, float* %5147, align 4, !tbaa !117, !noalias !119
  %5148 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 0
  store float -1.000000e+00, float* %5148, align 4, !tbaa !117, !noalias !119
  %5149 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 1
  store float -1.000000e+00, float* %5149, align 4, !tbaa !117, !noalias !119
  %5150 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 2
  store float -1.000000e+00, float* %5150, align 4, !tbaa !117, !noalias !119
  %5151 = icmp sgt i32 %5010, 0
  br i1 %5151, label %5152, label %5213

; <label>:5152                                    ; preds = %5140
  br label %5153

; <label>:5153                                    ; preds = %5202, %5152
  %5154 = phi i32 [ %5203, %5202 ], [ 0, %5152 ]
  %5155 = phi i32 [ %5204, %5202 ], [ 0, %5152 ]
  %5156 = add nuw i32 %5155, 171
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %5156)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 0
  %5159 = extractvalue %dx.types.CBufRet.f32 %5157, 1
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5163 = fsub fast float %5158, %5161
  %5164 = fsub fast float %5159, %5162
  %5165 = extractvalue %dx.types.CBufRet.f32 %5157, 2
  %5166 = fsub fast float -0.000000e+00, %5163
  %5167 = fsub fast float -0.000000e+00, %5164
  %5168 = call float @dx.op.dot2.f32(i32 54, float %4987, float %4988, float %5166, float %5167)  ; Dot2(ax,ay,bx,by)
  %5169 = fmul fast float %5168, 2.000000e+00
  %5170 = call float @dx.op.dot2.f32(i32 54, float %5166, float %5167, float %5166, float %5167)  ; Dot2(ax,ay,bx,by)
  %5171 = fmul fast float %5165, %5165
  %5172 = fsub fast float %5170, %5171
  %5173 = fmul fast float %5169, %5169
  %5174 = fmul fast float %5030, %5172
  %5175 = fsub fast float %5173, %5174
  %5176 = fcmp fast ogt float %5175, 0.000000e+00
  br i1 %5176, label %5177, label %5192

; <label>:5177                                    ; preds = %5153
  %5178 = fcmp fast ogt float %5169, 0.000000e+00
  %5179 = call float @dx.op.unary.f32(i32 24, float %5175)  ; Sqrt(value)
  %5180 = fsub fast float -0.000000e+00, %5179
  %5181 = select i1 %5178, float %5179, float %5180
  %5182 = fadd fast float %5181, %5169
  %5183 = fmul float %5182, -5.000000e-01
  %5184 = fdiv fast float %5183, %5023
  %5185 = call float @dx.op.binary.f32(i32 35, float %5184, float 0.000000e+00)  ; FMax(a,b)
  %5186 = call float @dx.op.binary.f32(i32 36, float %5058, float %5185)  ; FMin(a,b)
  %5187 = fdiv fast float %5172, %5183
  %5188 = call float @dx.op.binary.f32(i32 35, float %5187, float 0.000000e+00)  ; FMax(a,b)
  %5189 = call float @dx.op.binary.f32(i32 36, float %5058, float %5188)  ; FMin(a,b)
  %5190 = call float @dx.op.binary.f32(i32 36, float %5186, float %5189)  ; FMin(a,b)
  %5191 = call float @dx.op.binary.f32(i32 35, float %5186, float %5189)  ; FMax(a,b)
  br label %5192

; <label>:5192                                    ; preds = %5177, %5153
  %5193 = phi float [ %5191, %5177 ], [ -1.000000e+00, %5153 ]
  %5194 = phi float [ %5190, %5177 ], [ -1.000000e+00, %5153 ]
  %5195 = phi i1 [ true, %5177 ], [ false, %5153 ]
  br i1 %5195, label %5196, label %5202

; <label>:5196                                    ; preds = %5192
  %5197 = call float @dx.op.binary.f32(i32 35, float %5141, float %5194)  ; FMax(a,b)
  %5198 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 %5155
  store float %5197, float* %5198, align 4, !tbaa !117, !noalias !119
  %5199 = call float @dx.op.binary.f32(i32 35, float %5141, float %5193)  ; FMax(a,b)
  %5200 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %5155
  store float %5199, float* %5200, align 4, !tbaa !117, !noalias !119
  %5201 = add nsw i32 %5154, 1
  br label %5202

; <label>:5202                                    ; preds = %5196, %5192
  %5203 = phi i32 [ %5201, %5196 ], [ %5154, %5192 ]
  %5204 = add nuw nsw i32 %5155, 1
  %5205 = icmp eq i32 %5204, %5010
  br i1 %5205, label %5206, label %5153

; <label>:5206                                    ; preds = %5202
  %5207 = load float, float* %5147, align 4, !tbaa !117, !alias.scope !135, !noalias !138
  %5208 = load float, float* %5146, align 4, !tbaa !117, !alias.scope !141, !noalias !142
  %5209 = load float, float* %5145, align 4, !tbaa !117, !alias.scope !143, !noalias !144
  %5210 = load float, float* %5150, align 4, !tbaa !117, !alias.scope !145, !noalias !148
  %5211 = load float, float* %5149, align 4, !tbaa !117, !alias.scope !151, !noalias !152
  %5212 = load float, float* %5148, align 4, !tbaa !117, !alias.scope !153, !noalias !154
  br label %5213

; <label>:5213                                    ; preds = %5206, %5140
  %5214 = phi float [ -1.000000e+00, %5140 ], [ %5212, %5206 ]
  %5215 = phi float [ -1.000000e+00, %5140 ], [ %5211, %5206 ]
  %5216 = phi float [ -1.000000e+00, %5140 ], [ %5210, %5206 ]
  %5217 = phi float [ -1.000000e+00, %5140 ], [ %5209, %5206 ]
  %5218 = phi float [ -1.000000e+00, %5140 ], [ %5208, %5206 ]
  %5219 = phi float [ -1.000000e+00, %5140 ], [ %5207, %5206 ]
  %5220 = phi i32 [ 0, %5140 ], [ %5203, %5206 ]
  %5221 = call float @dx.op.binary.f32(i32 36, float %5218, float %5219)  ; FMin(a,b)
  %5222 = call float @dx.op.binary.f32(i32 36, float %5217, float %5221)  ; FMin(a,b)
  %5223 = call float @dx.op.binary.f32(i32 35, float %5217, float %5218)  ; FMax(a,b)
  %5224 = call float @dx.op.binary.f32(i32 36, float %5223, float %5219)  ; FMin(a,b)
  %5225 = call float @dx.op.binary.f32(i32 36, float %5217, float %5218)  ; FMin(a,b)
  %5226 = call float @dx.op.binary.f32(i32 35, float %5225, float %5224)  ; FMax(a,b)
  %5227 = call float @dx.op.binary.f32(i32 35, float %5218, float %5219)  ; FMax(a,b)
  %5228 = call float @dx.op.binary.f32(i32 35, float %5217, float %5227)  ; FMax(a,b)
  store float %5222, float* %5145, align 4, !tbaa !117, !alias.scope !143, !noalias !144
  store float %5226, float* %5146, align 4, !tbaa !117, !alias.scope !141, !noalias !142
  store float %5228, float* %5147, align 4, !tbaa !117, !alias.scope !135, !noalias !138
  %5229 = call float @dx.op.binary.f32(i32 36, float %5215, float %5216)  ; FMin(a,b)
  %5230 = call float @dx.op.binary.f32(i32 36, float %5214, float %5229)  ; FMin(a,b)
  %5231 = call float @dx.op.binary.f32(i32 35, float %5214, float %5215)  ; FMax(a,b)
  %5232 = call float @dx.op.binary.f32(i32 36, float %5231, float %5216)  ; FMin(a,b)
  %5233 = call float @dx.op.binary.f32(i32 36, float %5214, float %5215)  ; FMin(a,b)
  %5234 = call float @dx.op.binary.f32(i32 35, float %5233, float %5232)  ; FMax(a,b)
  %5235 = call float @dx.op.binary.f32(i32 35, float %5215, float %5216)  ; FMax(a,b)
  %5236 = call float @dx.op.binary.f32(i32 35, float %5214, float %5235)  ; FMax(a,b)
  store float %5230, float* %5148, align 4, !tbaa !117, !alias.scope !153, !noalias !154
  store float %5234, float* %5149, align 4, !tbaa !117, !alias.scope !151, !noalias !152
  store float %5236, float* %5150, align 4, !tbaa !117, !alias.scope !145, !noalias !148
  %5237 = sub nsw i32 3, %5220
  %5238 = icmp sgt i32 %5237, 2
  br i1 %5238, label %5239, label %5277

; <label>:5239                                    ; preds = %5213
  %5240 = icmp eq i32 %5008, 0
  %5241 = fsub fast float %5058, %5142
  %5242 = select i1 %5240, float %5241, float %5142
  %5243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5244 = extractvalue %dx.types.CBufRet.f32 %5243, 0
  %5245 = extractvalue %dx.types.CBufRet.f32 %5243, 1
  %5246 = extractvalue %dx.types.CBufRet.f32 %5243, 2
  %5247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5248 = extractvalue %dx.types.CBufRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.CBufRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.CBufRet.f32 %5247, 2
  %5251 = extractvalue %dx.types.CBufRet.f32 %5247, 3
  %5252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.f32 %5252, 3
  %5254 = call float @dx.op.binary.f32(i32 36, float %5143, float %5253)  ; FMin(a,b)
  %5255 = fmul fast float %5251, %5242
  %5256 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5257 = fsub fast float %5248, %5244
  %5258 = fsub fast float %5249, %5245
  %5259 = fsub fast float %5250, %5246
  %5260 = fmul fast float %5256, %5257
  %5261 = fmul fast float %5256, %5258
  %5262 = fmul fast float %5256, %5259
  %5263 = fadd fast float %5260, %5244
  %5264 = fadd fast float %5261, %5245
  %5265 = fadd fast float %5262, %5246
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.CBufRet.f32 %5266, 1
  %5269 = fadd fast float %5268, %5267
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5272 = extractvalue %dx.types.CBufRet.f32 %5266, 3
  %5273 = fadd fast float %5272, %5271
  %5274 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5275 = fmul fast float %5270, %5254
  %5276 = fmul fast float %5275, %5274
  br label %5359

; <label>:5277                                    ; preds = %5213
  %5278 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 %5237
  %5279 = load float, float* %5278, align 4, !tbaa !117, !noalias !119
  %5280 = fcmp fast olt float %5279, %5144
  %5281 = icmp sgt i32 %5220, 0
  %5282 = and i1 %5281, %5280
  br i1 %5282, label %5283, label %5320

; <label>:5283                                    ; preds = %5277
  br label %5284

; <label>:5284                                    ; preds = %5313, %5283
  %5285 = phi float [ %5314, %5313 ], [ %5142, %5283 ]
  %5286 = phi float [ %5315, %5313 ], [ %5143, %5283 ]
  %5287 = phi float [ %5295, %5313 ], [ %5279, %5283 ]
  %5288 = phi i32 [ %5292, %5313 ], [ %5237, %5283 ]
  %5289 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %5288
  %5290 = load float, float* %5289, align 4, !tbaa !117, !noalias !119
  %5291 = icmp slt i32 %5288, 2
  %5292 = add nsw i32 %5288, 1
  %5293 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 %5292
  %5294 = load float, float* %5293, align 4, !tbaa !117, !noalias !119
  %5295 = select i1 %5291, float %5294, float %5058
  %5296 = call float @dx.op.binary.f32(i32 36, float %5295, float %5290)  ; FMin(a,b)
  %5297 = call float @dx.op.binary.f32(i32 36, float %5144, float %5296)  ; FMin(a,b)
  %5298 = icmp eq i32 %5008, 0
  %5299 = fadd fast float %5297, %5287
  %5300 = fmul fast float %5299, %4989
  %5301 = fadd fast float %5300, %5002
  br i1 %5298, label %5307, label %5302

; <label>:5302                                    ; preds = %5284
  %5303 = fsub fast float %5297, %5287
  %5304 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5303)  ; FMax(a,b)
  %5305 = fmul fast float %5304, %5301
  %5306 = fadd fast float %5305, %5286
  br label %5313

; <label>:5307                                    ; preds = %5284
  %5308 = fsub fast float %5287, %5297
  %5309 = call float @dx.op.unary.f32(i32 6, float %5308)  ; FAbs(value)
  %5310 = fadd fast float %5309, %5285
  %5311 = fmul fast float %5309, %5301
  %5312 = fsub fast float %5286, %5311
  br label %5313

; <label>:5313                                    ; preds = %5307, %5302
  %5314 = phi float [ %5304, %5302 ], [ %5310, %5307 ]
  %5315 = phi float [ %5306, %5302 ], [ %5312, %5307 ]
  %5316 = fcmp fast olt float %5295, %5144
  %5317 = icmp slt i32 %5292, 3
  %5318 = and i1 %5317, %5316
  br i1 %5318, label %5284, label %5319

; <label>:5319                                    ; preds = %5313
  br label %5320

; <label>:5320                                    ; preds = %5319, %5277
  %5321 = phi float [ %5142, %5277 ], [ %5314, %5319 ]
  %5322 = phi float [ %5143, %5277 ], [ %5315, %5319 ]
  %5323 = fsub fast float %5058, %5321
  %5324 = select i1 %5060, float %5321, float %5323
  %5325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.CBufRet.f32 %5325, 1
  %5328 = extractvalue %dx.types.CBufRet.f32 %5325, 2
  %5329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.f32 %5329, 0
  %5331 = extractvalue %dx.types.CBufRet.f32 %5329, 1
  %5332 = extractvalue %dx.types.CBufRet.f32 %5329, 2
  %5333 = extractvalue %dx.types.CBufRet.f32 %5329, 3
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 3
  %5336 = call float @dx.op.binary.f32(i32 36, float %5322, float %5335)  ; FMin(a,b)
  %5337 = fmul fast float %5333, %5324
  %5338 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5339 = fsub fast float %5330, %5326
  %5340 = fsub fast float %5331, %5327
  %5341 = fsub fast float %5332, %5328
  %5342 = fmul fast float %5338, %5339
  %5343 = fmul fast float %5338, %5340
  %5344 = fmul fast float %5338, %5341
  %5345 = fadd fast float %5342, %5326
  %5346 = fadd fast float %5343, %5327
  %5347 = fadd fast float %5344, %5328
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 0
  %5350 = extractvalue %dx.types.CBufRet.f32 %5348, 1
  %5351 = fadd fast float %5350, %5349
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = extractvalue %dx.types.CBufRet.f32 %5348, 2
  %5354 = extractvalue %dx.types.CBufRet.f32 %5348, 3
  %5355 = fadd fast float %5354, %5353
  %5356 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  %5357 = fmul fast float %5352, %5336
  %5358 = fmul fast float %5357, %5356
  br label %5359

; <label>:5359                                    ; preds = %5320, %5239, %5074, %5056, %5054
  %5360 = phi float [ %5083, %5074 ], [ %5242, %5239 ], [ %5324, %5320 ], [ 0.000000e+00, %5054 ], [ 0.000000e+00, %5056 ]
  %5361 = phi float [ %5117, %5074 ], [ %5276, %5239 ], [ %5358, %5320 ], [ 0.000000e+00, %5054 ], [ 0.000000e+00, %5056 ]
  %5362 = phi float [ %5104, %5074 ], [ %5263, %5239 ], [ %5345, %5320 ], [ 0.000000e+00, %5054 ], [ 0.000000e+00, %5056 ]
  %5363 = phi float [ %5105, %5074 ], [ %5264, %5239 ], [ %5346, %5320 ], [ 0.000000e+00, %5054 ], [ 0.000000e+00, %5056 ]
  %5364 = phi float [ %5106, %5074 ], [ %5265, %5239 ], [ %5347, %5320 ], [ 0.000000e+00, %5054 ], [ 0.000000e+00, %5056 ]
  %5365 = fmul fast float %4997, %5361
  %5366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.f32 %5366, 2
  %5368 = fsub fast float %5004, %5367
  %5369 = fcmp fast olt float %5365, -2.000000e+01
  %5370 = call float @dx.op.unary.f32(i32 21, float %5365)  ; Exp(value)
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5373 = extractvalue %dx.types.CBufRet.f32 %5371, 3
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 2
  %5376 = fmul fast float %5373, %5368
  %5377 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5378 = fsub fast float 1.000000e+00, %5377
  %5379 = fmul fast float %4989, 5.000000e-01
  %5380 = fadd fast float %5379, 5.000000e-01
  %5381 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5382 = fsub fast float 1.000000e+00, %5381
  %5383 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5378)  ; FMax(a,b)
  %5384 = fdiv fast float %5382, %5383
  %5385 = fsub fast float %5368, %4946
  %5386 = call float @dx.op.unary.f32(i32 6, float %5385)  ; FAbs(value)
  %5387 = fmul fast float %5386, %5372
  %5388 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5389 = fsub fast float 1.000000e+00, %5387
  %5390 = fmul fast float %5389, %5388
  %5391 = fadd fast float %5390, %5387
  %5392 = fmul fast float %5375, %5368
  %5393 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5394 = fsub fast float 1.000000e+00, %5391
  %5395 = fmul fast float %5394, %5393
  %5396 = fadd fast float %5395, %5391
  %5397 = call float @dx.op.unary.f32(i32 7, float %5396)  ; Saturate(value)
  %5398 = fadd fast float %5370, -1.000000e+00
  %5399 = select i1 %5369, float -1.000000e+00, float %5398
  %5400 = fmul fast float %5397, %5399
  %5401 = fadd fast float %5400, 1.000000e+00
  %5402 = fsub fast float -0.000000e+00, %5400
  %5403 = fmul fast float %5362, %5402
  %5404 = fmul fast float %5363, %5402
  %5405 = fmul fast float %5364, %5402
  br label %5406

; <label>:5406                                    ; preds = %5359, %4955
  %5407 = phi float [ %5360, %5359 ], [ 0.000000e+00, %4955 ]
  %5408 = phi float [ %5401, %5359 ], [ 1.000000e+00, %4955 ]
  %5409 = phi float [ %5403, %5359 ], [ 0.000000e+00, %4955 ]
  %5410 = phi float [ %5404, %5359 ], [ 0.000000e+00, %4955 ]
  %5411 = phi float [ %5405, %5359 ], [ 0.000000e+00, %4955 ]
  %5412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5412, 1
  %5414 = fsub fast float 1.000000e+00, %5408
  %5415 = fmul fast float %5414, %4990
  %5416 = fmul fast float %5415, %5413
  %5417 = fsub fast float %4990, %5416
  br i1 %4983, label %5418, label %5447, !dx.controlflow.hints !155

; <label>:5418                                    ; preds = %5406
  %5419 = fmul fast float %4991, %4980
  %5420 = fadd fast float %5419, %4981
  %5421 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5422 = fmul fast float %4962, %5417
  %5423 = fsub fast float -0.000000e+00, %5422
  %5424 = fmul fast float %4963, %5417
  %5425 = fsub fast float -0.000000e+00, %5424
  %5426 = call float @dx.op.unary.f32(i32 21, float %5423)  ; Exp(value)
  %5427 = call float @dx.op.unary.f32(i32 21, float %5425)  ; Exp(value)
  %5428 = call float @dx.op.binary.f32(i32 35, float %4970, float %5426)  ; FMax(a,b)
  %5429 = call float @dx.op.binary.f32(i32 35, float %4970, float %5427)  ; FMax(a,b)
  %5430 = fsub fast float %5429, %5428
  %5431 = fmul fast float %5430, %5421
  %5432 = fadd fast float %5431, %5428
  %5433 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5434 = fsub fast float %4967, %4972
  %5435 = fsub fast float %4968, %4973
  %5436 = fsub fast float %4969, %4974
  %5437 = fmul fast float %5421, %5434
  %5438 = fmul fast float %5421, %5435
  %5439 = fmul fast float %5421, %5436
  %5440 = fadd fast float %5437, %4972
  %5441 = fadd fast float %5438, %4973
  %5442 = fadd fast float %5439, %4974
  %5443 = fsub fast float 1.000000e+00, %5433
  %5444 = fmul fast float %5443, %5440
  %5445 = fmul fast float %5443, %5441
  %5446 = fmul fast float %5443, %5442
  br label %5506

; <label>:5447                                    ; preds = %5406
  %5448 = fmul fast float %5417, %4979
  %5449 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5450 = fsub fast float 2.000000e+00, %5449
  %5451 = fmul fast float %5449, 9.921875e-01
  %5452 = fmul fast float %5451, %5450
  %5453 = fadd fast float %5452, 3.906250e-03
  %5454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %45, float %5453, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = fsub fast float %5449, %5455
  %5457 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5456)  ; FMax(a,b)
  %5458 = fmul fast float %4965, %4946
  %5459 = call float @dx.op.unary.f32(i32 6, float %5458)  ; FAbs(value)
  %5460 = fcmp fast ogt float %5459, 0x3EB0C6F7A0000000
  br i1 %5460, label %5461, label %5467, !dx.controlflow.hints !156

; <label>:5461                                    ; preds = %5447
  %5462 = fmul fast float %5458, 0xBFF7154760000000
  %5463 = call float @dx.op.unary.f32(i32 21, float %5462)  ; Exp(value)
  %5464 = fsub fast float 1.000000e+00, %5463
  %5465 = fdiv fast float %5464, %5458
  %5466 = fmul fast float %5465, %4975
  br label %5467

; <label>:5467                                    ; preds = %5461, %5447
  %5468 = phi float [ %5466, %5461 ], [ %4975, %5447 ]
  %5469 = fadd fast float %5468, %4977
  %5470 = fmul fast float %5469, %5457
  %5471 = fmul fast float %4962, %5470
  %5472 = fsub fast float -0.000000e+00, %5471
  %5473 = fmul fast float %4963, %5470
  %5474 = fsub fast float -0.000000e+00, %5473
  %5475 = fmul fast float %4964, %5470
  %5476 = fsub fast float -0.000000e+00, %5475
  %5477 = call float @dx.op.unary.f32(i32 21, float %5472)  ; Exp(value)
  %5478 = call float @dx.op.unary.f32(i32 21, float %5474)  ; Exp(value)
  %5479 = call float @dx.op.unary.f32(i32 21, float %5476)  ; Exp(value)
  %5480 = fmul fast float %4991, %4991
  %5481 = fadd fast float %5480, 1.000000e+00
  %5482 = fmul fast float %5481, 0x3FAE8EC8A0000000
  %5483 = fmul fast float %5482, %4972
  %5484 = fmul fast float %5482, %4973
  %5485 = fmul fast float %5482, %4974
  %5486 = fmul fast float %4991, %4970
  %5487 = fsub fast float 1.000000e+00, %5486
  %5488 = fmul fast float %4970, %4970
  %5489 = fsub fast float 1.000000e+00, %5488
  %5490 = fmul fast float %5489, 0x3FB45F3060000000
  %5491 = fmul fast float %5487, %5487
  %5492 = fdiv fast float 1.000000e+00, %5491
  %5493 = fmul fast float %5490, %5492
  %5494 = fmul fast float %5493, %4967
  %5495 = fmul fast float %5493, %4968
  %5496 = fmul fast float %5493, %4969
  %5497 = fadd fast float %5494, %5483
  %5498 = fadd fast float %5495, %5484
  %5499 = fadd fast float %5496, %5485
  %5500 = fsub fast float 1.000000e+00, %5477
  %5501 = fsub fast float 1.000000e+00, %5478
  %5502 = fsub fast float 1.000000e+00, %5479
  %5503 = fmul fast float %5497, %5500
  %5504 = fmul fast float %5498, %5501
  %5505 = fmul fast float %5499, %5502
  br label %5506

; <label>:5506                                    ; preds = %5467, %5418
  %5507 = phi float [ %5444, %5418 ], [ %5503, %5467 ]
  %5508 = phi float [ %5445, %5418 ], [ %5504, %5467 ]
  %5509 = phi float [ %5446, %5418 ], [ %5505, %5467 ]
  %5510 = phi float [ %5433, %5418 ], [ %5477, %5467 ]
  %5511 = phi float [ %5433, %5418 ], [ %5478, %5467 ]
  %5512 = phi float [ %5433, %5418 ], [ %5479, %5467 ]
  br i1 %4999, label %5513, label %5711, !dx.controlflow.hints !157

; <label>:5513                                    ; preds = %5506
  %5514 = extractvalue %dx.types.CBufRet.f32 %5412, 0
  %5515 = fmul fast float %5514, %5414
  %5516 = fsub fast float %5409, %5507
  %5517 = fsub fast float %5410, %5508
  %5518 = fsub fast float %5411, %5509
  %5519 = fmul fast float %5515, %5516
  %5520 = fmul fast float %5515, %5517
  %5521 = fmul fast float %5515, %5518
  %5522 = fadd fast float %5519, %5507
  %5523 = fadd fast float %5520, %5508
  %5524 = fadd fast float %5521, %5509
  %5525 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5510)  ; FMax(a,b)
  %5526 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5511)  ; FMax(a,b)
  %5527 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5512)  ; FMax(a,b)
  %5528 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5408)  ; FMax(a,b)
  %5529 = call float @dx.op.binary.f32(i32 35, float %5407, float %5417)  ; FMax(a,b)
  %5530 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5529)  ; FMax(a,b)
  %5531 = fdiv fast float %5407, %5530
  %5532 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5533 = fdiv fast float %5417, %5530
  %5534 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5535 = fcmp fast une float %5528, 1.000000e+00
  br i1 %5535, label %5536, label %5549, !dx.controlflow.hints !158

; <label>:5536                                    ; preds = %5513
  %5537 = call float @dx.op.unary.f32(i32 23, float %5528)  ; Log(value)
  %5538 = fmul fast float %5537, 0x3FE62E4300000000
  %5539 = fmul fast float %5409, %5538
  %5540 = fsub fast float -0.000000e+00, %5539
  %5541 = fmul fast float %5410, %5538
  %5542 = fsub fast float -0.000000e+00, %5541
  %5543 = fmul fast float %5411, %5538
  %5544 = fsub fast float -0.000000e+00, %5543
  %5545 = fsub fast float 1.000000e+00, %5528
  %5546 = fdiv fast float %5540, %5545
  %5547 = fdiv fast float %5542, %5545
  %5548 = fdiv fast float %5544, %5545
  br label %5549

; <label>:5549                                    ; preds = %5536, %5513
  %5550 = phi float [ %5546, %5536 ], [ %5409, %5513 ]
  %5551 = phi float [ %5547, %5536 ], [ %5410, %5513 ]
  %5552 = phi float [ %5548, %5536 ], [ %5411, %5513 ]
  %5553 = phi float [ %5538, %5536 ], [ 0.000000e+00, %5513 ]
  %5554 = fcmp fast une float %5525, 1.000000e+00
  br i1 %5554, label %5555, label %5562, !dx.controlflow.hints !159

; <label>:5555                                    ; preds = %5549
  %5556 = call float @dx.op.unary.f32(i32 23, float %5525)  ; Log(value)
  %5557 = fmul fast float %5556, 0x3FE62E4300000000
  %5558 = fmul fast float %5522, %5557
  %5559 = fsub fast float -0.000000e+00, %5558
  %5560 = fsub fast float 1.000000e+00, %5525
  %5561 = fdiv fast float %5559, %5560
  br label %5562

; <label>:5562                                    ; preds = %5555, %5549
  %5563 = phi float [ %5561, %5555 ], [ %5522, %5549 ]
  %5564 = phi float [ %5557, %5555 ], [ 0.000000e+00, %5549 ]
  %5565 = fcmp fast une float %5526, 1.000000e+00
  br i1 %5565, label %5566, label %5573, !dx.controlflow.hints !159

; <label>:5566                                    ; preds = %5562
  %5567 = call float @dx.op.unary.f32(i32 23, float %5526)  ; Log(value)
  %5568 = fmul fast float %5567, 0x3FE62E4300000000
  %5569 = fmul fast float %5523, %5568
  %5570 = fsub fast float -0.000000e+00, %5569
  %5571 = fsub fast float 1.000000e+00, %5526
  %5572 = fdiv fast float %5570, %5571
  br label %5573

; <label>:5573                                    ; preds = %5566, %5562
  %5574 = phi float [ %5572, %5566 ], [ %5523, %5562 ]
  %5575 = phi float [ %5568, %5566 ], [ 0.000000e+00, %5562 ]
  %5576 = fcmp fast une float %5527, 1.000000e+00
  br i1 %5576, label %5577, label %5584, !dx.controlflow.hints !159

; <label>:5577                                    ; preds = %5573
  %5578 = call float @dx.op.unary.f32(i32 23, float %5527)  ; Log(value)
  %5579 = fmul fast float %5578, 0x3FE62E4300000000
  %5580 = fmul fast float %5524, %5579
  %5581 = fsub fast float -0.000000e+00, %5580
  %5582 = fsub fast float 1.000000e+00, %5527
  %5583 = fdiv fast float %5581, %5582
  br label %5584

; <label>:5584                                    ; preds = %5577, %5573
  %5585 = phi float [ %5583, %5577 ], [ %5524, %5573 ]
  %5586 = phi float [ %5579, %5577 ], [ 0.000000e+00, %5573 ]
  %5587 = fmul fast float %5550, %5534
  %5588 = fmul fast float %5551, %5534
  %5589 = fmul fast float %5552, %5534
  %5590 = fmul fast float %5553, %5534
  %5591 = fmul fast float %5563, %5532
  %5592 = fmul fast float %5574, %5532
  %5593 = fmul fast float %5585, %5532
  %5594 = fmul fast float %5564, %5532
  %5595 = fmul fast float %5575, %5532
  %5596 = fmul fast float %5586, %5532
  %5597 = fadd fast float %5591, %5587
  %5598 = fadd fast float %5592, %5588
  %5599 = fadd fast float %5593, %5589
  %5600 = fadd fast float %5594, %5590
  %5601 = fadd fast float %5595, %5590
  %5602 = fadd fast float %5596, %5590
  %5603 = fcmp fast une float %5600, 0.000000e+00
  br i1 %5603, label %5604, label %5611, !dx.controlflow.hints !160

; <label>:5604                                    ; preds = %5584
  %5605 = fmul fast float %5600, 0x3FF7154760000000
  %5606 = call float @dx.op.unary.f32(i32 21, float %5605)  ; Exp(value)
  %5607 = fsub fast float 1.000000e+00, %5606
  %5608 = fmul fast float %5597, %5607
  %5609 = fsub fast float -0.000000e+00, %5608
  %5610 = fdiv fast float %5609, %5600
  br label %5611

; <label>:5611                                    ; preds = %5604, %5584
  %5612 = phi float [ %5606, %5604 ], [ 1.000000e+00, %5584 ]
  %5613 = phi float [ %5610, %5604 ], [ %5597, %5584 ]
  %5614 = fcmp fast une float %5601, 0.000000e+00
  br i1 %5614, label %5615, label %5622, !dx.controlflow.hints !160

; <label>:5615                                    ; preds = %5611
  %5616 = fmul fast float %5601, 0x3FF7154760000000
  %5617 = call float @dx.op.unary.f32(i32 21, float %5616)  ; Exp(value)
  %5618 = fsub fast float 1.000000e+00, %5617
  %5619 = fmul fast float %5598, %5618
  %5620 = fsub fast float -0.000000e+00, %5619
  %5621 = fdiv fast float %5620, %5601
  br label %5622

; <label>:5622                                    ; preds = %5615, %5611
  %5623 = phi float [ %5617, %5615 ], [ 1.000000e+00, %5611 ]
  %5624 = phi float [ %5621, %5615 ], [ %5598, %5611 ]
  %5625 = fcmp fast une float %5602, 0.000000e+00
  br i1 %5625, label %5626, label %5633, !dx.controlflow.hints !160

; <label>:5626                                    ; preds = %5622
  %5627 = fmul fast float %5602, 0x3FF7154760000000
  %5628 = call float @dx.op.unary.f32(i32 21, float %5627)  ; Exp(value)
  %5629 = fsub fast float 1.000000e+00, %5628
  %5630 = fmul fast float %5599, %5629
  %5631 = fsub fast float -0.000000e+00, %5630
  %5632 = fdiv fast float %5631, %5602
  br label %5633

; <label>:5633                                    ; preds = %5626, %5622
  %5634 = phi float [ %5628, %5626 ], [ 1.000000e+00, %5622 ]
  %5635 = phi float [ %5632, %5626 ], [ %5599, %5622 ]
  %5636 = fcmp fast ogt float %5532, %5534
  br i1 %5636, label %5637, label %5657

; <label>:5637                                    ; preds = %5633
  %5638 = fsub fast float 1.000000e+00, %5534
  %5639 = fmul fast float %5550, %5638
  %5640 = fmul fast float %5551, %5638
  %5641 = fmul fast float %5552, %5638
  %5642 = fmul fast float %5553, %5638
  %5643 = fcmp fast une float %5642, 0.000000e+00
  br i1 %5643, label %5644, label %5695, !dx.controlflow.hints !161

; <label>:5644                                    ; preds = %5637
  %5645 = fmul fast float %5642, 0x3FF7154760000000
  %5646 = call float @dx.op.unary.f32(i32 21, float %5645)  ; Exp(value)
  %5647 = fsub fast float 1.000000e+00, %5646
  %5648 = fmul fast float %5639, %5647
  %5649 = fsub fast float -0.000000e+00, %5648
  %5650 = fmul fast float %5640, %5647
  %5651 = fsub fast float -0.000000e+00, %5650
  %5652 = fmul fast float %5641, %5647
  %5653 = fsub fast float -0.000000e+00, %5652
  %5654 = fdiv fast float %5649, %5642
  %5655 = fdiv fast float %5651, %5642
  %5656 = fdiv fast float %5653, %5642
  br label %5695

; <label>:5657                                    ; preds = %5633
  %5658 = fsub fast float 1.000000e+00, %5532
  %5659 = fmul fast float %5563, %5658
  %5660 = fmul fast float %5574, %5658
  %5661 = fmul fast float %5585, %5658
  %5662 = fmul fast float %5564, %5658
  %5663 = fmul fast float %5575, %5658
  %5664 = fmul fast float %5586, %5658
  %5665 = fcmp fast une float %5662, 0.000000e+00
  br i1 %5665, label %5666, label %5673, !dx.controlflow.hints !160

; <label>:5666                                    ; preds = %5657
  %5667 = fmul fast float %5662, 0x3FF7154760000000
  %5668 = call float @dx.op.unary.f32(i32 21, float %5667)  ; Exp(value)
  %5669 = fsub fast float 1.000000e+00, %5668
  %5670 = fmul fast float %5659, %5669
  %5671 = fsub fast float -0.000000e+00, %5670
  %5672 = fdiv fast float %5671, %5662
  br label %5673

; <label>:5673                                    ; preds = %5666, %5657
  %5674 = phi float [ %5672, %5666 ], [ %5659, %5657 ]
  %5675 = phi float [ %5668, %5666 ], [ 1.000000e+00, %5657 ]
  %5676 = fcmp fast une float %5663, 0.000000e+00
  br i1 %5676, label %5677, label %5684, !dx.controlflow.hints !160

; <label>:5677                                    ; preds = %5673
  %5678 = fmul fast float %5663, 0x3FF7154760000000
  %5679 = call float @dx.op.unary.f32(i32 21, float %5678)  ; Exp(value)
  %5680 = fsub fast float 1.000000e+00, %5679
  %5681 = fmul fast float %5660, %5680
  %5682 = fsub fast float -0.000000e+00, %5681
  %5683 = fdiv fast float %5682, %5663
  br label %5684

; <label>:5684                                    ; preds = %5677, %5673
  %5685 = phi float [ %5683, %5677 ], [ %5660, %5673 ]
  %5686 = phi float [ %5679, %5677 ], [ 1.000000e+00, %5673 ]
  %5687 = fcmp fast une float %5664, 0.000000e+00
  br i1 %5687, label %5688, label %5695, !dx.controlflow.hints !160

; <label>:5688                                    ; preds = %5684
  %5689 = fmul fast float %5664, 0x3FF7154760000000
  %5690 = call float @dx.op.unary.f32(i32 21, float %5689)  ; Exp(value)
  %5691 = fsub fast float 1.000000e+00, %5690
  %5692 = fmul fast float %5661, %5691
  %5693 = fsub fast float -0.000000e+00, %5692
  %5694 = fdiv fast float %5693, %5664
  br label %5695

; <label>:5695                                    ; preds = %5688, %5684, %5644, %5637
  %5696 = phi float [ %5694, %5688 ], [ %5656, %5644 ], [ %5641, %5637 ], [ %5661, %5684 ]
  %5697 = phi float [ %5685, %5688 ], [ %5655, %5644 ], [ %5640, %5637 ], [ %5685, %5684 ]
  %5698 = phi float [ %5674, %5688 ], [ %5654, %5644 ], [ %5639, %5637 ], [ %5674, %5684 ]
  %5699 = phi float [ %5690, %5688 ], [ %5646, %5644 ], [ 1.000000e+00, %5637 ], [ 1.000000e+00, %5684 ]
  %5700 = phi float [ %5686, %5688 ], [ %5646, %5644 ], [ 1.000000e+00, %5637 ], [ %5686, %5684 ]
  %5701 = phi float [ %5675, %5688 ], [ %5646, %5644 ], [ 1.000000e+00, %5637 ], [ %5675, %5684 ]
  %5702 = fmul fast float %5701, %5613
  %5703 = fmul fast float %5700, %5624
  %5704 = fmul fast float %5699, %5635
  %5705 = fadd fast float %5702, %5698
  %5706 = fadd fast float %5703, %5697
  %5707 = fadd fast float %5704, %5696
  %5708 = fmul fast float %5701, %5612
  %5709 = fmul fast float %5700, %5623
  %5710 = fmul fast float %5699, %5634
  br label %5711

; <label>:5711                                    ; preds = %5695, %5506
  %5712 = phi float [ %5710, %5695 ], [ %5512, %5506 ]
  %5713 = phi float [ %5709, %5695 ], [ %5511, %5506 ]
  %5714 = phi float [ %5708, %5695 ], [ %5510, %5506 ]
  %5715 = phi float [ %5707, %5695 ], [ %5509, %5506 ]
  %5716 = phi float [ %5706, %5695 ], [ %5508, %5506 ]
  %5717 = phi float [ %5705, %5695 ], [ %5507, %5506 ]
  %5718 = fmul fast float %5717, %4671
  %5719 = fmul fast float %5716, %4671
  %5720 = fmul fast float %5715, %4671
  %5721 = fmul fast float %5714, %4954
  %5722 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5713, float %5712, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5723 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5719, float %5720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = select i1 %246, float %5722, float %5714
  %5725 = select i1 %246, float %5722, float %5713
  %5726 = select i1 %246, float 1.000000e+00, float %5712
  %5727 = select i1 %246, float %5723, float %5718
  %5728 = select i1 %246, float 0.000000e+00, float %5719
  %5729 = select i1 %246, float 0.000000e+00, float %5720
  %5730 = fmul fast float %5724, %4948
  %5731 = fmul fast float %5725, %4949
  %5732 = fmul fast float %5726, %4950
  %5733 = fadd fast float %5730, %5727
  %5734 = fadd fast float %5731, %5728
  %5735 = fadd fast float %5729, %5732
  %5736 = fmul fast float %5724, %4951
  %5737 = fmul fast float %5725, %4952
  %5738 = fmul fast float %5726, %4953
  %5739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5740 = extractvalue %dx.types.CBufRet.i32 %5739, 0
  %5741 = icmp eq i32 %5740, 0
  br i1 %5741, label %6109, label %5742, !dx.controlflow.hints !162

; <label>:5742                                    ; preds = %5711
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 3
  %5746 = fmul fast float %5744, %77
  %5747 = fmul fast float %5745, %78
  %5748 = fmul fast float %5746, 2.000000e+00
  %5749 = fmul fast float %5747, 2.000000e+00
  %5750 = fsub fast float 1.000000e+00, %5748
  %5751 = fsub fast float 1.000000e+00, %5749
  %5752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.f32 %5752, 0
  %5754 = extractvalue %dx.types.CBufRet.f32 %5752, 1
  %5755 = extractvalue %dx.types.CBufRet.f32 %5752, 2
  %5756 = fmul fast float %5750, %5753
  %5757 = fmul fast float %5750, %5754
  %5758 = fmul fast float %5750, %5755
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.CBufRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.CBufRet.f32 %5759, 2
  %5763 = fmul fast float %5751, %5760
  %5764 = fmul fast float %5751, %5761
  %5765 = fmul fast float %5751, %5762
  %5766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5767 = extractvalue %dx.types.CBufRet.f32 %5766, 0
  %5768 = extractvalue %dx.types.CBufRet.f32 %5766, 1
  %5769 = extractvalue %dx.types.CBufRet.f32 %5766, 2
  %5770 = fadd fast float %5763, %5767
  %5771 = fadd fast float %5770, %5756
  %5772 = fadd fast float %5764, %5768
  %5773 = fadd fast float %5772, %5757
  %5774 = fadd fast float %5765, %5769
  %5775 = fadd fast float %5774, %5758
  %5776 = fmul fast float %5771, %4947
  %5777 = fmul fast float %5773, %4947
  %5778 = fmul fast float %5775, %4947
  %5779 = fmul fast float %5776, %5776
  %5780 = fmul fast float %5777, %5777
  %5781 = fadd fast float %5779, %5780
  %5782 = fmul fast float %5778, %5778
  %5783 = fadd fast float %5781, %5782
  %5784 = call float @dx.op.unary.f32(i32 24, float %5783)  ; Sqrt(value)
  %5785 = extractvalue %dx.types.CBufRet.f32 %4672, 0
  %5786 = fsub fast float %5784, %5785
  %5787 = extractvalue %dx.types.CBufRet.f32 %4672, 2
  %5788 = fmul fast float %5786, %5787
  %5789 = call float @dx.op.unary.f32(i32 7, float %5788)  ; Saturate(value)
  %5790 = fadd fast float %5789, -5.000000e-01
  %5791 = fmul fast float %5790, 2.000000e+00
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5794 = call float @dx.op.binary.f32(i32 36, float %5793, float %5791)  ; FMin(a,b)
  %5795 = fsub fast float -0.000000e+00, %5793
  %5796 = fcmp fast ogt float %5794, %5795
  br i1 %5796, label %5797, label %6109, !dx.controlflow.hints !163

; <label>:5797                                    ; preds = %5742
  %5798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.f32 %5798, 3
  %5800 = fcmp fast ogt float %5799, 0.000000e+00
  br i1 %5800, label %5801, label %5876, !dx.controlflow.hints !164

; <label>:5801                                    ; preds = %5797
  %5802 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %5803 = extractvalue %dx.types.Dimensions %5802, 0
  %5804 = sitofp i32 %5803 to float
  %5805 = extractvalue %dx.types.Dimensions %5802, 1
  %5806 = sitofp i32 %5805 to float
  %5807 = fmul fast float %5746, %5804
  %5808 = fmul fast float %5747, %5806
  %5809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5810 = extractvalue %dx.types.CBufRet.f32 %5809, 1
  %5811 = fsub fast float -0.000000e+00, %5810
  %5812 = fptoui float %5811 to i32
  %5813 = fptoui float %5807 to i32
  %5814 = fptoui float %5808 to i32
  %5815 = and i32 %5812, 31
  %5816 = lshr i32 %5813, %5815
  %5817 = lshr i32 %5814, %5815
  %5818 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %5812, i32 %5816, i32 %5817, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5819 = extractvalue %dx.types.ResRet.f32 %5818, 0
  %5820 = fcmp fast olt float %5819, -1.000000e+00
  %5821 = fcmp fast ogt float %5819, -1.000000e+00
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 1
  %5824 = select i1 %5821, float %5823, float 1.000000e+00
  %5825 = fadd fast float %5819, 1.000000e+00
  %5826 = fmul fast float %5824, %5825
  %5827 = call float @dx.op.unary.f32(i32 6, float %5826)  ; FAbs(value)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5829 = fcmp fast oge float %5827, %5828
  %5830 = select i1 %5829, float 0x4197782600000000, float %5827
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.CBufRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5835 = select i1 %5820, float %5832, float %5753
  %5836 = select i1 %5820, float %5833, float %5754
  %5837 = select i1 %5820, float %5834, float %5755
  %5838 = fmul fast float %5835, %5750
  %5839 = fmul fast float %5836, %5750
  %5840 = fmul fast float %5837, %5750
  %5841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5842 = extractvalue %dx.types.CBufRet.f32 %5841, 0
  %5843 = extractvalue %dx.types.CBufRet.f32 %5841, 1
  %5844 = extractvalue %dx.types.CBufRet.f32 %5841, 2
  %5845 = select i1 %5820, float %5842, float %5760
  %5846 = select i1 %5820, float %5843, float %5761
  %5847 = select i1 %5820, float %5844, float %5762
  %5848 = fmul fast float %5845, %5751
  %5849 = fmul fast float %5846, %5751
  %5850 = fmul fast float %5847, %5751
  %5851 = fadd fast float %5848, %5838
  %5852 = fadd fast float %5849, %5839
  %5853 = fadd fast float %5850, %5840
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 0
  %5856 = extractvalue %dx.types.CBufRet.f32 %5854, 1
  %5857 = extractvalue %dx.types.CBufRet.f32 %5854, 2
  %5858 = select i1 %5820, float %5855, float %5767
  %5859 = select i1 %5820, float %5856, float %5768
  %5860 = select i1 %5820, float %5857, float %5769
  %5861 = fadd fast float %5851, %5858
  %5862 = fadd fast float %5852, %5859
  %5863 = fadd fast float %5853, %5860
  %5864 = fmul fast float %5861, %5830
  %5865 = fmul fast float %5862, %5830
  %5866 = fmul fast float %5863, %5830
  %5867 = fmul fast float %5864, %5864
  %5868 = fmul fast float %5865, %5865
  %5869 = fadd fast float %5867, %5868
  %5870 = fmul fast float %5866, %5866
  %5871 = fadd fast float %5869, %5870
  %5872 = call float @dx.op.unary.f32(i32 24, float %5871)  ; Sqrt(value)
  %5873 = fsub fast float %5872, %5785
  %5874 = fmul fast float %5873, %5787
  %5875 = call float @dx.op.unary.f32(i32 7, float %5874)  ; Saturate(value)
  br label %5876

; <label>:5876                                    ; preds = %5801, %5797
  %5877 = phi float [ %5875, %5801 ], [ 1.000000e+00, %5797 ]
  %5878 = fmul fast float %5794, 5.000000e-01
  %5879 = fadd fast float %5878, 5.000000e-01
  %5880 = call float @dx.op.unary.f32(i32 22, float %5879)  ; Frc(value)
  %5881 = call float @dx.op.unary.f32(i32 27, float %5880)  ; Round_ni(value)
  %5882 = call float @dx.op.unary.f32(i32 22, float %5880)  ; Frc(value)
  %5883 = fmul fast float %5882, 2.000000e+00
  %5884 = fadd fast float %5883, -1.000000e+00
  %5885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %5746, float %5747, float %5881, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5886 = extractvalue %dx.types.ResRet.f32 %5885, 0
  %5887 = extractvalue %dx.types.ResRet.f32 %5885, 1
  %5888 = extractvalue %dx.types.ResRet.f32 %5885, 2
  %5889 = extractvalue %dx.types.ResRet.f32 %5885, 3
  %5890 = fadd fast float %5886, -5.000000e-01
  %5891 = fadd fast float %5888, -5.000000e-01
  %5892 = fmul fast float %5890, 0xBFD5555560000000
  %5893 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5891, float %5892)  ; FMad(a,b,c)
  %5894 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5887, float 0.000000e+00)  ; FMad(a,b,c)
  %5895 = fadd fast float %5894, %5889
  %5896 = fmul fast float %5890, -7.500000e-01
  %5897 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5891, float %5896)  ; FMad(a,b,c)
  %5898 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5887, float 0.000000e+00)  ; FMad(a,b,c)
  %5899 = fadd fast float %5898, %5889
  %5900 = call float @dx.op.binary.f32(i32 35, float %5893, float -1.000000e+00)  ; FMax(a,b)
  %5901 = call float @dx.op.binary.f32(i32 35, float %5895, float -1.000000e+00)  ; FMax(a,b)
  %5902 = call float @dx.op.binary.f32(i32 35, float %5897, float -1.000000e+00)  ; FMax(a,b)
  %5903 = call float @dx.op.binary.f32(i32 35, float %5899, float -1.000000e+00)  ; FMax(a,b)
  %5904 = call float @dx.op.binary.f32(i32 36, float %5900, float 1.000000e+00)  ; FMin(a,b)
  %5905 = call float @dx.op.binary.f32(i32 36, float %5901, float 1.000000e+00)  ; FMin(a,b)
  %5906 = call float @dx.op.binary.f32(i32 36, float %5902, float 1.000000e+00)  ; FMin(a,b)
  %5907 = call float @dx.op.binary.f32(i32 36, float %5903, float 1.000000e+00)  ; FMin(a,b)
  %5908 = fcmp fast olt float %5904, 0x3FEFFF8020000000
  br i1 %5908, label %5909, label %6024, !dx.controlflow.hints !165

; <label>:5909                                    ; preds = %5876
  %5910 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = extractvalue %dx.types.CBufRet.f32 %5911, 2
  %5915 = extractvalue %dx.types.CBufRet.f32 %5911, 3
  %5916 = fsub fast float %5912, %5904
  %5917 = fsub fast float %5913, %5905
  %5918 = fsub fast float %5914, %5906
  %5919 = fsub fast float %5915, %5907
  %5920 = fmul fast float %5916, %5910
  %5921 = fmul fast float %5917, %5910
  %5922 = fmul fast float %5918, %5910
  %5923 = fmul fast float %5919, %5910
  %5924 = fadd fast float %5920, %5904
  %5925 = fadd fast float %5921, %5905
  %5926 = fsub fast float -0.000000e+00, %5925
  %5927 = fadd fast float %5922, %5906
  %5928 = fadd fast float %5923, %5907
  %5929 = fmul fast float %5924, %5924
  %5930 = fsub fast float %5925, %5929
  %5931 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5930)  ; FMax(a,b)
  %5932 = fdiv fast float 1.000000e+00, %5931
  %5933 = fmul fast float %5925, %5924
  %5934 = fsub fast float %5927, %5933
  %5935 = fsub fast float %5884, %5924
  %5936 = fmul fast float %5884, %5884
  %5937 = fsub fast float %5936, %5925
  %5938 = fmul fast float %5935, %5932
  %5939 = fmul fast float %5938, %5934
  %5940 = fsub fast float %5937, %5939
  %5941 = fmul fast float %5925, %5925
  %5942 = fsub fast float %5928, %5941
  %5943 = fmul fast float %5934, %5934
  %5944 = fmul fast float %5943, %5932
  %5945 = fsub fast float %5942, %5944
  %5946 = fdiv fast float %5940, %5945
  %5947 = fmul fast float %5934, %5946
  %5948 = fsub fast float %5935, %5947
  %5949 = fmul fast float %5948, %5932
  %5950 = fmul fast float %5949, %5924
  %5951 = fsub fast float 1.000000e+00, %5950
  %5952 = fmul fast float %5925, %5946
  %5953 = fsub fast float %5951, %5952
  %5954 = fmul fast float %5949, %5949
  %5955 = fmul fast float %5946, 4.000000e+00
  %5956 = fmul fast float %5955, %5953
  %5957 = fsub fast float %5954, %5956
  %5958 = call float @dx.op.unary.f32(i32 24, float %5957)  ; Sqrt(value)
  %5959 = fcmp fast oge float %5949, 0.000000e+00
  %5960 = fsub fast float -0.000000e+00, %5958
  %5961 = select i1 %5959, float %5960, float %5958
  %5962 = fsub fast float %5961, %5949
  %5963 = fdiv fast float %5962, %5946
  %5964 = fdiv fast float %5953, %5962
  %5965 = fmul fast float %5963, 5.000000e-01
  %5966 = fmul fast float %5964, 2.000000e+00
  %5967 = select i1 %5959, float %5965, float %5966
  %5968 = select i1 %5959, float %5966, float %5965
  %5969 = call float @dx.op.binary.f32(i32 35, float %5967, float %5968)  ; FMax(a,b)
  %5970 = call float @dx.op.binary.f32(i32 36, float %5967, float %5968)  ; FMin(a,b)
  %5971 = fcmp fast ogt float %5884, %5970
  br i1 %5971, label %5972, label %5982

; <label>:5972                                    ; preds = %5909
  %5973 = fsub fast float %5884, %5970
  %5974 = fsub fast float %5969, %5970
  %5975 = fmul fast float %5973, %5974
  %5976 = fmul fast float %5969, %5884
  %5977 = fadd fast float %5969, %5884
  %5978 = fmul fast float %5977, %5924
  %5979 = fadd fast float %5976, %5925
  %5980 = fsub fast float %5979, %5978
  %5981 = fdiv fast float %5980, %5975
  br label %5982

; <label>:5982                                    ; preds = %5972, %5909
  %5983 = phi float [ %5981, %5972 ], [ 0.000000e+00, %5909 ]
  %5984 = fcmp fast ogt float %5884, %5969
  %5985 = fsub fast float %5884, %5969
  br i1 %5984, label %5986, label %5996

; <label>:5986                                    ; preds = %5982
  %5987 = fsub fast float %5969, %5970
  %5988 = fmul fast float %5987, %5985
  %5989 = fmul fast float %5970, %5884
  %5990 = fadd fast float %5970, %5884
  %5991 = fmul fast float %5990, %5924
  %5992 = fsub fast float %5926, %5989
  %5993 = fadd fast float %5992, %5991
  %5994 = fdiv fast float %5993, %5988
  %5995 = fadd fast float %5994, %5983
  br label %5996

; <label>:5996                                    ; preds = %5986, %5982
  %5997 = phi float [ %5995, %5986 ], [ %5983, %5982 ]
  %5998 = fsub fast float %5884, %5970
  %5999 = fmul fast float %5998, %5985
  %6000 = fmul fast float %5970, %5969
  %6001 = fadd fast float %5970, %5969
  %6002 = fmul fast float %6001, %5924
  %6003 = fadd fast float %6000, %5925
  %6004 = fsub fast float %6003, %6002
  %6005 = fdiv fast float %6004, %5999
  %6006 = call float @dx.op.unary.f32(i32 7, float %5997)  ; Saturate(value)
  %6007 = fcmp fast oeq float %4673, 0.000000e+00
  %6008 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %6009 = fcmp fast oeq float %6008, 0.000000e+00
  %6010 = or i1 %6007, %6009
  %6011 = fmul fast float %6008, 2.000000e+00
  %6012 = fadd fast float %5793, %5794
  %6013 = fdiv fast float %6012, %6011
  %6014 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  %6015 = fmul fast float %6014, 2.000000e+00
  %6016 = fsub fast float 3.000000e+00, %6015
  %6017 = fmul fast float %6014, %6014
  %6018 = fmul fast float %6017, %6016
  %6019 = select i1 %6010, float 1.000000e+00, float %6018
  %6020 = fmul fast float %6005, %4673
  %6021 = fadd fast float %6006, %6020
  %6022 = call float @dx.op.unary.f32(i32 7, float %6021)  ; Saturate(value)
  %6023 = fmul fast float %6019, %6022
  br label %6024

; <label>:6024                                    ; preds = %5996, %5876
  %6025 = phi float [ %6023, %5996 ], [ 0.000000e+00, %5876 ]
  %6026 = fsub fast float 1.000000e+00, %6025
  %6027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %45, float %5746, float %5747, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6028 = extractvalue %dx.types.ResRet.f32 %6027, 0
  %6029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.i32 %6029, 2
  %6031 = icmp eq i32 %6030, 0
  br i1 %6031, label %6037, label %6032

; <label>:6032                                    ; preds = %6024
  %6033 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  %6034 = fadd fast float %6028, -1.000000e+00
  %6035 = fmul fast float %6033, %6034
  %6036 = fadd fast float %6035, 1.000000e+00
  br label %6037

; <label>:6037                                    ; preds = %6032, %6024
  %6038 = phi float [ %6036, %6032 ], [ %6026, %6024 ]
  br i1 %5800, label %6039, label %6057

; <label>:6039                                    ; preds = %6037
  %6040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.f32 %6040, 1
  %6042 = fsub fast float %5877, %6041
  %6043 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  %6044 = fsub fast float %5877, %5799
  %6045 = call float @dx.op.unary.f32(i32 7, float %6044)  ; Saturate(value)
  %6046 = fsub fast float %6043, %6045
  %6047 = fsub fast float %5879, %6045
  %6048 = fdiv fast float %6047, %6046
  %6049 = call float @dx.op.unary.f32(i32 7, float %6048)  ; Saturate(value)
  %6050 = fmul fast float %6049, 2.000000e+00
  %6051 = fsub fast float 3.000000e+00, %6050
  %6052 = fsub fast float %6028, %6038
  %6053 = fmul fast float %6049, %6049
  %6054 = fmul fast float %6053, %6052
  %6055 = fmul fast float %6054, %6051
  %6056 = fadd fast float %6055, %6038
  br label %6057

; <label>:6057                                    ; preds = %6039, %6037
  %6058 = phi float [ %6056, %6039 ], [ %6038, %6037 ]
  %6059 = call float @dx.op.binary.f32(i32 35, float %6028, float %6058)  ; FMax(a,b)
  %6060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.i32 %6060, 2
  %6062 = and i32 %6061, 1
  %6063 = icmp eq i32 %6062, 0
  %6064 = fcmp fast une float %6059, 1.000000e+00
  %6065 = and i1 %6064, %6063
  br i1 %6065, label %6066, label %6085

; <label>:6066                                    ; preds = %6057
  %6067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %5746, float %5747, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6068 = extractvalue %dx.types.ResRet.f32 %6067, 0
  %6069 = extractvalue %dx.types.ResRet.f32 %6067, 1
  %6070 = extractvalue %dx.types.ResRet.f32 %6067, 2
  %6071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.f32 %6071, 1
  %6073 = fmul fast float %6072, %6068
  %6074 = fmul fast float %6072, %6069
  %6075 = fmul fast float %6072, %6070
  %6076 = fcmp fast ogt float %6028, 0x3FEFFF2E40000000
  %6077 = fsub fast float 1.000000e+00, %6059
  %6078 = fsub fast float 1.000000e+00, %6028
  %6079 = fdiv fast float %6077, %6078
  %6080 = call float @dx.op.unary.f32(i32 7, float %6079)  ; Saturate(value)
  %6081 = select i1 %6076, float 0.000000e+00, float %6080
  %6082 = fmul fast float %6073, %6081
  %6083 = fmul fast float %6074, %6081
  %6084 = fmul fast float %6075, %6081
  br label %6085

; <label>:6085                                    ; preds = %6066, %6057
  %6086 = phi float [ 0.000000e+00, %6057 ], [ %6082, %6066 ]
  %6087 = phi float [ 0.000000e+00, %6057 ], [ %6083, %6066 ]
  %6088 = phi float [ 0.000000e+00, %6057 ], [ %6084, %6066 ]
  %6089 = fmul fast float %6086, %4671
  %6090 = fmul fast float %6087, %4671
  %6091 = fmul fast float %6088, %4671
  %6092 = fmul fast float %6059, %5721
  %6093 = call float @dx.op.dot3.f32(i32 55, float %6059, float %6059, float %6059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6094 = call float @dx.op.dot3.f32(i32 55, float %6089, float %6090, float %6091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6095 = select i1 %246, float %6093, float %6059
  %6096 = select i1 %246, float 1.000000e+00, float %6059
  %6097 = select i1 %246, float %6094, float %6089
  %6098 = select i1 %246, float 0.000000e+00, float %6090
  %6099 = select i1 %246, float 0.000000e+00, float %6091
  %6100 = fmul fast float %6095, %5733
  %6101 = fmul fast float %6095, %5734
  %6102 = fmul fast float %6096, %5735
  %6103 = fadd fast float %6100, %6097
  %6104 = fadd fast float %6101, %6098
  %6105 = fadd fast float %6099, %6102
  %6106 = fmul fast float %6095, %5736
  %6107 = fmul fast float %6095, %5737
  %6108 = fmul fast float %6096, %5738
  br label %6109

; <label>:6109                                    ; preds = %6085, %5742, %5711, %4943
  %6110 = phi float [ %4948, %4943 ], [ %5733, %5711 ], [ %6103, %6085 ], [ %5733, %5742 ]
  %6111 = phi float [ %4949, %4943 ], [ %5734, %5711 ], [ %6104, %6085 ], [ %5734, %5742 ]
  %6112 = phi float [ %4950, %4943 ], [ %5735, %5711 ], [ %6105, %6085 ], [ %5735, %5742 ]
  %6113 = phi float [ %4951, %4943 ], [ %5736, %5711 ], [ %6106, %6085 ], [ %5736, %5742 ]
  %6114 = phi float [ %4952, %4943 ], [ %5737, %5711 ], [ %6107, %6085 ], [ %5737, %5742 ]
  %6115 = phi float [ %4953, %4943 ], [ %5738, %5711 ], [ %6108, %6085 ], [ %5738, %5742 ]
  %6116 = phi float [ %4954, %4943 ], [ %5721, %5711 ], [ %6092, %6085 ], [ %5721, %5742 ]
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6119 = extractvalue %dx.types.CBufRet.f32 %6117, 3
  %6120 = fmul fast float %6118, %77
  %6121 = fmul fast float %6119, %78
  %6122 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6123 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6124 = select i1 %4683, i32 2, i32 0
  %6125 = or i32 %6124, 1
  %6126 = uitofp i32 %6125 to float
  %6127 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %6122, float %6123, float %6126, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6128 = extractvalue %dx.types.ResRet.f32 %6127, 0
  %6129 = extractvalue %dx.types.ResRet.f32 %6127, 1
  %6130 = extractvalue %dx.types.ResRet.f32 %6127, 2
  %6131 = extractvalue %dx.types.ResRet.f32 %6127, 3
  %6132 = add nuw nsw i32 %6124, 2
  %6133 = uitofp i32 %6132 to float
  %6134 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %6122, float %6123, float %6133, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6135 = extractvalue %dx.types.ResRet.f32 %6134, 0
  %6136 = extractvalue %dx.types.ResRet.f32 %6134, 1
  %6137 = extractvalue %dx.types.ResRet.f32 %6134, 2
  %6138 = extractvalue %dx.types.ResRet.f32 %6134, 3
  %6139 = call float @dx.op.binary.f32(i32 35, float %6129, float %6130)  ; FMax(a,b)
  %6140 = call float @dx.op.binary.f32(i32 35, float %6128, float %6139)  ; FMax(a,b)
  %6141 = call float @dx.op.binary.f32(i32 35, float %6140, float %6131)  ; FMax(a,b)
  %6142 = call float @dx.op.binary.f32(i32 36, float %6136, float %6137)  ; FMin(a,b)
  %6143 = call float @dx.op.binary.f32(i32 36, float %6135, float %6142)  ; FMin(a,b)
  %6144 = call float @dx.op.binary.f32(i32 36, float %6143, float %6138)  ; FMin(a,b)
  %6145 = fmul fast float %6141, 2.550000e+02
  %6146 = fadd fast float %6145, 0x3F70101020000000
  %6147 = fptoui float %6146 to i32
  %6148 = fmul fast float %6144, 2.550000e+02
  %6149 = fadd fast float %6148, 0x3F70101020000000
  %6150 = fptoui float %6149 to i32
  %6151 = icmp ult i32 %6147, %6150
  br i1 %6151, label %6152, label %6321

; <label>:6152                                    ; preds = %6109
  %6153 = fcmp fast ogt float %67, 9.843750e-01
  %6154 = fadd fast float %4947, -4.000000e+00
  %6155 = select i1 %6153, float -4.000000e+00, float %6154
  %6156 = call float @dx.op.binary.f32(i32 35, float %6155, float 0.000000e+00)  ; FMax(a,b)
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6159 = fadd fast float %6158, %6156
  %6160 = extractvalue %dx.types.CBufRet.f32 %6157, 2
  %6161 = fmul fast float %6159, %6160
  %6162 = call float @dx.op.unary.f32(i32 23, float %6161)  ; Log(value)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6157, 3
  %6164 = fmul fast float %6163, %6162
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 2
  %6167 = fmul fast float %6164, %6166
  %6168 = call float @dx.op.unary.f32(i32 7, float %6167)  ; Saturate(value)
  %6169 = uitofp i32 %6147 to float
  %6170 = uitofp i32 %6150 to float
  %6171 = fadd fast float %6169, 5.000000e-01
  %6172 = fadd fast float %6170, 5.000000e-01
  %6173 = fmul fast float %6166, %6171
  %6174 = fmul fast float %6166, %6172
  %6175 = fadd fast float %6173, 0x3F0FFB4800000000
  %6176 = fadd fast float %6174, 0xBF0FFB4800000000
  %6177 = call float @dx.op.binary.f32(i32 35, float %6168, float %6175)  ; FMax(a,b)
  %6178 = call float @dx.op.binary.f32(i32 36, float %6177, float %6176)  ; FMin(a,b)
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 1
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6182 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6183 = select i1 %4683, float %6182, float 0.000000e+00
  %6184 = fmul fast float %6180, %6178
  %6185 = fadd fast float %6183, %6184
  %6186 = fadd fast float %6183, %6181
  %6187 = fsub fast float %6180, %6181
  %6188 = fadd fast float %6187, %6183
  %6189 = call float @dx.op.binary.f32(i32 35, float %6185, float %6186)  ; FMax(a,b)
  %6190 = call float @dx.op.binary.f32(i32 36, float %6189, float %6188)  ; FMin(a,b)
  %6191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %6122, float %6123, float %6190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6192 = extractvalue %dx.types.ResRet.f32 %6191, 0
  %6193 = extractvalue %dx.types.ResRet.f32 %6191, 1
  %6194 = extractvalue %dx.types.ResRet.f32 %6191, 2
  %6195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.i32 %6195, 0
  %6197 = extractvalue %dx.types.CBufRet.i32 %6195, 1
  %6198 = uitofp i32 %6196 to float
  %6199 = uitofp i32 %6197 to float
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 0
  %6202 = extractvalue %dx.types.CBufRet.f32 %6200, 1
  %6203 = fmul fast float %6198, %6122
  %6204 = fmul fast float %6199, %6123
  %6205 = fadd fast float %6203, -5.000000e-01
  %6206 = fadd fast float %6204, -5.000000e-01
  %6207 = call float @dx.op.unary.f32(i32 22, float %6205)  ; Frc(value)
  %6208 = call float @dx.op.unary.f32(i32 22, float %6206)  ; Frc(value)
  %6209 = fmul fast float %6207, %6207
  %6210 = fmul fast float %6209, %6207
  %6211 = fsub fast float 3.000000e+00, %6207
  %6212 = fmul fast float %6209, %6211
  %6213 = fmul fast float %6207, 3.000000e+00
  %6214 = fmul fast float %6210, 3.000000e+00
  %6215 = fmul fast float %6209, 6.000000e+00
  %6216 = fsub fast float %6214, %6215
  %6217 = fadd fast float %6216, 4.000000e+00
  %6218 = fmul fast float %6217, 0x3FC5555560000000
  %6219 = fmul fast float %6210, -3.000000e+00
  %6220 = fadd fast float %6209, %6207
  %6221 = fmul fast float %6220, 3.000000e+00
  %6222 = fadd fast float %6219, 1.000000e+00
  %6223 = fadd fast float %6222, %6221
  %6224 = fmul fast float %6210, 0x3FC5555560000000
  %6225 = fmul fast float %6208, %6208
  %6226 = fmul fast float %6225, %6208
  %6227 = fsub fast float 3.000000e+00, %6208
  %6228 = fmul fast float %6225, %6227
  %6229 = fmul fast float %6208, 3.000000e+00
  %6230 = fmul fast float %6226, 3.000000e+00
  %6231 = fmul fast float %6225, 6.000000e+00
  %6232 = fsub fast float %6230, %6231
  %6233 = fadd fast float %6232, 4.000000e+00
  %6234 = fmul fast float %6233, 0x3FC5555560000000
  %6235 = fmul fast float %6226, -3.000000e+00
  %6236 = fadd fast float %6225, %6208
  %6237 = fmul fast float %6236, 3.000000e+00
  %6238 = fadd fast float %6235, 1.000000e+00
  %6239 = fadd fast float %6238, %6237
  %6240 = fmul fast float %6226, 0x3FC5555560000000
  %6241 = fadd fast float %6207, 1.000000e+00
  %6242 = fsub fast float 1.000000e+00, %6213
  %6243 = fadd fast float %6242, %6212
  %6244 = fadd fast float %6243, %6217
  %6245 = fmul fast float %6244, 0x3FC5555560000000
  %6246 = fdiv fast float %6218, %6245
  %6247 = fsub fast float %6241, %6246
  %6248 = fsub fast float 1.000000e+00, %6207
  %6249 = fadd fast float %6223, %6210
  %6250 = fmul fast float %6249, 0x3FC5555560000000
  %6251 = fdiv fast float %6224, %6250
  %6252 = fadd fast float %6248, %6251
  %6253 = fadd fast float %6208, 1.000000e+00
  %6254 = fsub fast float 1.000000e+00, %6229
  %6255 = fadd fast float %6254, %6228
  %6256 = fadd fast float %6255, %6233
  %6257 = fmul fast float %6256, 0x3FC5555560000000
  %6258 = fdiv fast float %6234, %6257
  %6259 = fsub fast float %6253, %6258
  %6260 = fsub fast float 1.000000e+00, %6208
  %6261 = fadd fast float %6239, %6226
  %6262 = fmul fast float %6261, 0x3FC5555560000000
  %6263 = fdiv fast float %6240, %6262
  %6264 = fadd fast float %6263, %6260
  %6265 = fmul fast float %6247, %6201
  %6266 = fsub fast float %6122, %6265
  %6267 = fmul fast float %6252, %6201
  %6268 = fadd fast float %6267, %6122
  %6269 = fmul fast float %6264, %6202
  %6270 = fadd fast float %6269, %6123
  %6271 = fmul fast float %6259, %6202
  %6272 = fsub fast float %6123, %6271
  %6273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6266, float %6272, float %6190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.ResRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.ResRet.f32 %6273, 2
  %6277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6268, float %6272, float %6190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6278 = extractvalue %dx.types.ResRet.f32 %6277, 0
  %6279 = extractvalue %dx.types.ResRet.f32 %6277, 1
  %6280 = extractvalue %dx.types.ResRet.f32 %6277, 2
  %6281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6266, float %6270, float %6190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6282 = extractvalue %dx.types.ResRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.ResRet.f32 %6281, 1
  %6284 = extractvalue %dx.types.ResRet.f32 %6281, 2
  %6285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6268, float %6270, float %6190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6286 = extractvalue %dx.types.ResRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.ResRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.ResRet.f32 %6285, 2
  %6289 = fsub fast float %6282, %6274
  %6290 = fsub fast float %6283, %6275
  %6291 = fsub fast float %6284, %6276
  %6292 = fmul fast float %6289, %6262
  %6293 = fmul fast float %6290, %6262
  %6294 = fmul fast float %6291, %6262
  %6295 = fadd fast float %6292, %6274
  %6296 = fadd fast float %6293, %6275
  %6297 = fadd fast float %6294, %6276
  %6298 = fsub fast float %6286, %6278
  %6299 = fsub fast float %6287, %6279
  %6300 = fsub fast float %6288, %6280
  %6301 = fmul fast float %6298, %6262
  %6302 = fmul fast float %6299, %6262
  %6303 = fmul fast float %6300, %6262
  %6304 = fsub fast float %6278, %6295
  %6305 = fadd fast float %6304, %6301
  %6306 = fsub fast float %6279, %6296
  %6307 = fadd fast float %6306, %6302
  %6308 = fsub fast float %6280, %6297
  %6309 = fadd fast float %6308, %6303
  %6310 = fmul fast float %6305, %6250
  %6311 = fmul fast float %6307, %6250
  %6312 = fmul fast float %6309, %6250
  %6313 = fadd fast float %6310, %6295
  %6314 = fadd fast float %6311, %6296
  %6315 = fadd fast float %6312, %6297
  %6316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6317 = extractvalue %dx.types.CBufRet.f32 %6316, 1
  %6318 = fmul fast float %6313, %6317
  %6319 = fmul fast float %6314, %6317
  %6320 = fmul fast float %6315, %6317
  br label %6321

; <label>:6321                                    ; preds = %6152, %6109
  %6322 = phi float [ %6192, %6152 ], [ 1.000000e+00, %6109 ]
  %6323 = phi float [ %6193, %6152 ], [ 1.000000e+00, %6109 ]
  %6324 = phi float [ %6194, %6152 ], [ 1.000000e+00, %6109 ]
  %6325 = phi float [ %6318, %6152 ], [ 0.000000e+00, %6109 ]
  %6326 = phi float [ %6319, %6152 ], [ 0.000000e+00, %6109 ]
  %6327 = phi float [ %6320, %6152 ], [ 0.000000e+00, %6109 ]
  %6328 = fmul fast float %6325, %4671
  %6329 = fmul fast float %6326, %4671
  %6330 = fmul fast float %6327, %4671
  %6331 = fmul fast float %6322, %6116
  %6332 = call float @dx.op.dot3.f32(i32 55, float %6322, float %6323, float %6324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6333 = call float @dx.op.dot3.f32(i32 55, float %6328, float %6329, float %6330, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6334 = select i1 %246, float %6332, float %6322
  %6335 = select i1 %246, float %6332, float %6323
  %6336 = select i1 %246, float 1.000000e+00, float %6324
  %6337 = select i1 %246, float %6333, float %6328
  %6338 = select i1 %246, float 0.000000e+00, float %6329
  %6339 = select i1 %246, float 0.000000e+00, float %6330
  %6340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6341 = extractvalue %dx.types.CBufRet.i32 %6340, 3
  %6342 = and i32 %6341, 3
  %6343 = icmp ne i32 %6342, 0
  %6344 = and i32 %6341, 4
  %6345 = icmp ne i32 %6344, 0
  %6346 = and i1 %6343, %6345
  %6347 = and i1 %246, %6346
  br i1 %6347, label %6348, label %6354

; <label>:6348                                    ; preds = %6321
  %6349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6349, 1
  %6351 = fadd fast float %6331, -1.000000e+00
  %6352 = fmul fast float %6350, %6351
  %6353 = fadd fast float %6352, 1.000000e+00
  br label %6354

; <label>:6354                                    ; preds = %6348, %6321
  %6355 = phi float [ %6353, %6348 ], [ %6331, %6321 ]
  %6356 = fadd fast float %6113, %6110
  %6357 = fmul fast float %6334, %6356
  %6358 = fadd fast float %6357, %6337
  %6359 = fadd fast float %6114, %6111
  %6360 = fmul fast float %6335, %6359
  %6361 = fadd fast float %6360, %6338
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 0
  br i1 %246, label %6364, label %6388

; <label>:6364                                    ; preds = %6354
  %6365 = fadd fast float %6358, %6361
  %6366 = fmul fast float %6363, %6365
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 3
  %6369 = extractvalue %dx.types.CBufRet.f32 %4659, 1
  %6370 = fsub fast float %4664, %4658
  %6371 = fadd fast float %6370, %4665
  %6372 = fsub fast float %6371, %6369
  %6373 = extractvalue %dx.types.CBufRet.f32 %4659, 2
  %6374 = fmul fast float %6372, %6373
  %6375 = call float @dx.op.unary.f32(i32 7, float %6374)  ; Saturate(value)
  %6376 = fsub fast float %6375, %6368
  %6377 = fmul fast float %6376, %6355
  %6378 = fadd fast float %6377, %6368
  %6379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6380 = extractvalue %dx.types.CBufRet.f32 %6379, 0
  %6381 = fsub fast float %6378, %6380
  %6382 = fmul fast float %6381, 1.000000e+01
  %6383 = call float @dx.op.unary.f32(i32 7, float %6382)  ; Saturate(value)
  %6384 = fsub fast float 1.000000e+00, %4671
  %6385 = fmul fast float %6383, %6384
  %6386 = fadd fast float %6385, %4671
  %6387 = fmul fast float %6386, %6378
  br label %6412

; <label>:6388                                    ; preds = %6354
  %6389 = fadd fast float %6115, %6112
  %6390 = fmul fast float %6336, %6389
  %6391 = fadd fast float %6390, %6339
  %6392 = fmul fast float %6363, %6358
  %6393 = fmul fast float %6363, %6361
  %6394 = fmul fast float %6363, %6391
  %6395 = call float @dx.op.binary.f32(i32 35, float %6393, float %6394)  ; FMax(a,b)
  %6396 = call float @dx.op.binary.f32(i32 35, float %6392, float %6395)  ; FMax(a,b)
  %6397 = call float @dx.op.binary.f32(i32 35, float %6396, float %4671)  ; FMax(a,b)
  %6398 = fcmp fast ugt float %6397, 0x3F10000000000000
  br i1 %6398, label %6400, label %6399

; <label>:6399                                    ; preds = %6388
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6400

; <label>:6400                                    ; preds = %6399, %6388
  %6401 = add i32 %52, 116
  %6402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %6401, i32 undef)  ; BufferLoad(srv,index,wot)
  %6403 = extractvalue %dx.types.ResRet.i32 %6402, 0
  %6404 = and i32 %6403, 32
  %6405 = icmp eq i32 %6404, 0
  br i1 %6405, label %6412, label %6406

; <label>:6406                                    ; preds = %6400
  %6407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6407, 0
  %6409 = fmul fast float %6408, 0x3FE99999A0000000
  %6410 = fadd fast float %6408, %6392
  %6411 = fadd fast float %6409, %6394
  br label %6412

; <label>:6412                                    ; preds = %6406, %6400, %6364
  %6413 = phi float [ %6366, %6364 ], [ %6410, %6406 ], [ %6392, %6400 ]
  %6414 = phi float [ %6387, %6364 ], [ %6393, %6406 ], [ %6393, %6400 ]
  %6415 = phi float [ %6386, %6364 ], [ %6411, %6406 ], [ %6394, %6400 ]
  %6416 = phi float [ %6386, %6364 ], [ %4671, %6406 ], [ %4671, %6400 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6417 = call float @dx.op.binary.f32(i32 36, float %6413, float 3.225500e+04)  ; FMin(a,b)
  %6418 = call float @dx.op.binary.f32(i32 36, float %6414, float 3.225500e+04)  ; FMin(a,b)
  %6419 = call float @dx.op.binary.f32(i32 36, float %6415, float 3.225500e+04)  ; FMin(a,b)
  %6420 = call float @dx.op.binary.f32(i32 36, float %6416, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6417)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6419)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6420)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!64}
!dx.entryPoints = !{!65}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !53, !56}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !17}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !40}
!40 = !{i32 0, i32 14}
!41 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!42 = !{i32 33, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!47 = !{i32 38, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!48 = !{i32 39, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!49 = !{i32 40, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!50 = !{i32 41, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !40}
!51 = !{i32 42, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!53 = !{!54, !55}
!54 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!55 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!56 = !{!57, !58, !59, !60, !61, !62, !63}
!57 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!58 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!59 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!60 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!61 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!62 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!63 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!64 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!65 = !{void ()* @ps_main, !"ps_main", !66, !4, !83}
!66 = !{!67, !81, null}
!67 = !{!68, !71, !73, !75, !76, !77, !79, !80}
!68 = !{i32 0, !"SV_Position", i8 9, i8 3, !69, i8 4, i32 1, i8 4, i32 0, i8 0, !70}
!69 = !{i32 0}
!70 = !{i32 3, i32 15}
!71 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 2, i32 1, i8 0, !72}
!72 = !{i32 3, i32 3}
!73 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 2, i8 0, !74}
!74 = !{i32 3, i32 7}
!75 = !{i32 3, !"NORMAL", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 3, i8 0, !74}
!76 = !{i32 4, !"TANGENT", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 4, i8 0, !70}
!77 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !69, i8 1, i32 1, i8 1, i32 5, i8 0, !78}
!78 = !{i32 3, i32 1}
!79 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !69, i8 1, i32 1, i8 1, i32 5, i8 1, !78}
!80 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !69, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!81 = !{!82}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !69, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!83 = !{i32 0, i64 16}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !{!101, !103, !105, !107}
!101 = distinct !{!101, !102, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!102 = distinct !{!102, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!106 = distinct !{!106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = !{!118, !118, i64 0}
!118 = !{!"float", !98, i64 0}
!119 = !{!120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!120 = distinct !{!120, !121, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!121 = distinct !{!121, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!122 = distinct !{!122, !123, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!123 = distinct !{!123, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!124 = distinct !{!124, !123, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!125 = distinct !{!125, !126, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!126 = distinct !{!126, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!127 = distinct !{!127, !126, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!128 = distinct !{!128, !126, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!129 = distinct !{!129, !130, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!130 = distinct !{!130, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!131 = distinct !{!131, !130, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!132 = distinct !{!132, !130, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!133 = distinct !{!133, !134, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!134 = distinct !{!134, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"\01?sort@@YAXAIAM00@Z: %c"}
!137 = distinct !{!137, !"\01?sort@@YAXAIAM00@Z"}
!138 = !{!139, !140, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!139 = distinct !{!139, !137, !"\01?sort@@YAXAIAM00@Z: %a"}
!140 = distinct !{!140, !137, !"\01?sort@@YAXAIAM00@Z: %b"}
!141 = !{!140}
!142 = !{!139, !136, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!143 = !{!139}
!144 = !{!140, !136, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!145 = !{!146}
!146 = distinct !{!146, !147, !"\01?sort@@YAXAIAM00@Z: %c"}
!147 = distinct !{!147, !"\01?sort@@YAXAIAM00@Z"}
!148 = !{!149, !150, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!149 = distinct !{!149, !147, !"\01?sort@@YAXAIAM00@Z: %a"}
!150 = distinct !{!150, !147, !"\01?sort@@YAXAIAM00@Z: %b"}
!151 = !{!150}
!152 = !{!149, !146, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!153 = !{!149}
!154 = !{!150, !146, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 2}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}

