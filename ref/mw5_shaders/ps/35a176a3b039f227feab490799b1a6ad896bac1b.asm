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
; shader hash: b56a06215669ac2dc834a1f6a904f1be
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
  %156 = fmul fast float %77, 5.000000e-01
  %157 = fmul fast float %78, 5.000000e-01
  %158 = fptosi float %156 to i32
  %159 = fptosi float %157 to i32
  %160 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %158, i32 %159, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = lshr i32 %161, 18
  %163 = uitofp i32 %162 to float
  %164 = fmul fast float %163, 0x3F4C00EBA0000000
  %165 = call float @dx.op.unary.f32(i32 21, float %164)  ; Exp(value)
  %166 = fadd fast float %165, -1.000000e+00
  %167 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %168 = extractvalue %dx.types.Dimensions %167, 0
  %169 = sitofp i32 %168 to float
  %170 = extractvalue %dx.types.Dimensions %167, 1
  %171 = sitofp i32 %170 to float
  %172 = fcmp fast oge float %156, %169
  %173 = fcmp fast oge float %157, %171
  %174 = or i1 %172, %173
  %175 = select i1 %174, float 0x4197782600000000, float %166
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 3
  %179 = fmul fast float %177, %77
  %180 = fmul fast float %178, %78
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = and i32 %182, 114688
  %184 = icmp ne i32 %183, 0
  %185 = select i1 %184, float %179, float 0.000000e+00
  %186 = select i1 %184, float %180, float 0.000000e+00
  %187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %185, float %186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = fmul fast float %188, 2.550000e+02
  %190 = fptoui float %189 to i32
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 3
  %194 = and i32 %193, 3
  %195 = icmp ne i32 %194, 0
  %196 = and i32 %193, 4
  %197 = icmp ne i32 %196, 0
  %198 = and i1 %195, %197
  br i1 %198, label %199, label %210

; <label>:199                                     ; preds = %0
  %200 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %201 = fmul fast float %200, %78
  %202 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %203 = fmul fast float %202, %77
  %204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %45, float %203, float %201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fsub fast float 1.000000e+00, %205
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = fcmp fast olt float %206, %208
  br label %213

; <label>:210                                     ; preds = %0
  %211 = icmp eq i32 %196, 0
  %212 = and i1 %195, %211
  br label %213

; <label>:213                                     ; preds = %210, %199
  %214 = phi i1 [ %209, %199 ], [ %212, %210 ]
  %215 = add i32 %52, 60
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = shl i32 %217, 4
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %217, 7
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %217, 22
  %225 = shl nuw nsw i32 %224, 5
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = add i32 %52, 72
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = lshr i32 %229, 8
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F70101020000000
  %237 = lshr i32 %229, 16
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F70101020000000
  %241 = add i32 %52, 36
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 65535
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %243, 16
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = add i32 %52, 96
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = fmul fast float %252, 0x3F50624DE0000000
  %256 = fmul fast float %254, 0x3F50624DE0000000
  %257 = add i32 %52, 108
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 2
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %270, label %262

; <label>:262                                     ; preds = %213
  %263 = add i32 %52, 152
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = add i32 %265, 0
  %267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %266, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %268 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %267, %dx.types.Handle %74, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 3
  br label %270

; <label>:270                                     ; preds = %262, %213
  %271 = phi float [ 1.000000e+00, %213 ], [ %269, %262 ]
  %272 = add i32 %52, 24
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = add i32 %52, 28
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = or i32 %277, %274
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %1032, label %280

; <label>:280                                     ; preds = %270
  %281 = add i32 %52, 92
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = lshr i32 %283, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = fmul fast float %285, 0x3F50624DE0000000
  %287 = add i32 %52, 40
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = lshr i32 %289, 16
  %291 = and i32 %290, 255
  %292 = lshr i32 %289, 24
  %293 = add i32 %52, 100
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 65535
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %295, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = add i32 %52, 32
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = lshr i32 %302, 22
  %304 = shl nuw nsw i32 %303, 5
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = shl i32 %302, 4
  %307 = and i32 %306, 32752
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %302, 7
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 3
  %314 = fmul fast float %313, 1.000000e+03
  %315 = fmul fast float %255, %314
  %316 = call float @dx.op.unary.f32(i32 22, float %315)  ; Frc(value)
  %317 = fadd fast float %316, %245
  %318 = fmul fast float %256, %314
  %319 = call float @dx.op.unary.f32(i32 22, float %318)  ; Frc(value)
  %320 = fadd fast float %319, %247
  %321 = fmul fast float %286, %314
  %322 = call float @dx.op.unary.f32(i32 22, float %321)  ; Frc(value)
  %323 = fmul fast float %322, 0x401921FB60000000
  %324 = fadd fast float %323, %305
  %325 = call float @dx.op.unary.f32(i32 13, float %324)  ; Sin(value)
  %326 = call float @dx.op.unary.f32(i32 12, float %324)  ; Cos(value)
  %327 = fsub fast float -0.000000e+00, %325
  %328 = fadd fast float %63, -5.000000e-01
  %329 = fadd fast float %64, -5.000000e-01
  %330 = fmul fast float %297, %328
  %331 = fmul fast float %299, %329
  %332 = fadd fast float %330, 5.000000e-01
  %333 = fadd fast float %331, 5.000000e-01
  %334 = fmul fast float %308, %332
  %335 = fmul fast float %311, %333
  %336 = fmul fast float %326, %334
  %337 = call float @dx.op.tertiary.f32(i32 46, float %327, float %335, float %336)  ; FMad(a,b,c)
  %338 = fmul fast float %325, %334
  %339 = call float @dx.op.tertiary.f32(i32 46, float %326, float %335, float %338)  ; FMad(a,b,c)
  %340 = fadd fast float %317, %337
  %341 = fadd fast float %320, %339
  %342 = icmp ugt i32 %291, 1
  %343 = icmp ugt i32 %289, 33554431
  %344 = or i1 %343, %342
  br i1 %344, label %345, label %370

; <label>:345                                     ; preds = %280
  %346 = add i32 %52, 84
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = lshr i32 %348, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = fmul fast float %313, %350
  %352 = call float @dx.op.unary.f32(i32 22, float %351)  ; Frc(value)
  %353 = mul nuw nsw i32 %291, %292
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %352, %354
  %356 = call float @dx.op.unary.f32(i32 27, float %355)  ; Round_ni(value)
  %357 = fptoui float %356 to i32
  %358 = urem i32 %357, %291
  %359 = udiv i32 %357, %292
  %360 = call float @dx.op.unary.f32(i32 22, float %340)  ; Frc(value)
  %361 = call float @dx.op.unary.f32(i32 22, float %341)  ; Frc(value)
  %362 = uitofp i32 %358 to float
  %363 = uitofp i32 %359 to float
  %364 = fadd fast float %360, %362
  %365 = fadd fast float %361, %363
  %366 = uitofp i32 %291 to float
  %367 = uitofp i32 %292 to float
  %368 = fdiv fast float %364, %366
  %369 = fdiv fast float %365, %367
  br label %370

; <label>:370                                     ; preds = %345, %280
  %371 = phi float [ %368, %345 ], [ %340, %280 ]
  %372 = phi float [ %369, %345 ], [ %341, %280 ]
  %373 = and i32 %274, 16777216
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %484, label %375

; <label>:375                                     ; preds = %370
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = extractvalue %dx.types.CBufRet.f32 %376, 1
  %379 = extractvalue %dx.types.CBufRet.f32 %376, 2
  %380 = fadd fast float %377, %124
  %381 = fadd fast float %378, %125
  %382 = fadd fast float %379, %126
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = call float @dx.op.unary.f32(i32 7, float %384)  ; Saturate(value)
  %386 = icmp eq i32 %51, 65535
  br i1 %386, label %481, label %387

; <label>:387                                     ; preds = %375
  %388 = lshr i32 %51, 1
  %389 = shl i32 %388, 2
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %51, 1
  %393 = icmp ne i32 %392, 0
  %394 = lshr i32 %391, 16
  %395 = and i32 %391, 65535
  %396 = select i1 %393, i32 %394, i32 %395
  %397 = icmp eq i32 %396, 65535
  br i1 %397, label %477, label %398

; <label>:398                                     ; preds = %387
  %399 = mul nuw nsw i32 %396, 40
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = extractvalue %dx.types.ResRet.f32 %400, 1
  %403 = extractvalue %dx.types.ResRet.f32 %400, 2
  %404 = add nuw nsw i32 %399, 12
  %405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = extractvalue %dx.types.ResRet.f32 %405, 1
  %408 = extractvalue %dx.types.ResRet.f32 %405, 2
  %409 = add nuw nsw i32 %399, 24
  %410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = extractvalue %dx.types.ResRet.f32 %410, 1
  %413 = extractvalue %dx.types.ResRet.f32 %410, 2
  %414 = add nuw nsw i32 %399, 36
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = fsub fast float %380, %401
  %418 = fsub fast float %381, %402
  %419 = fsub fast float %382, %403
  %420 = fmul fast float %416, %417
  %421 = fmul fast float %416, %418
  %422 = fmul fast float %416, %419
  %423 = call float @dx.op.unary.f32(i32 27, float %420)  ; Round_ni(value)
  %424 = call float @dx.op.unary.f32(i32 27, float %421)  ; Round_ni(value)
  %425 = call float @dx.op.unary.f32(i32 27, float %422)  ; Round_ni(value)
  %426 = fadd fast float %423, 5.000000e-01
  %427 = fadd fast float %424, 5.000000e-01
  %428 = fadd fast float %425, 5.000000e-01
  %429 = fmul fast float %426, %406
  %430 = fmul fast float %427, %407
  %431 = fmul fast float %428, %408
  %432 = shl i32 %51, 2
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = add i32 %434, 0
  %436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %437 = call float @dx.op.unary.f32(i32 22, float %429)  ; Frc(value)
  %438 = call float @dx.op.unary.f32(i32 22, float %430)  ; Frc(value)
  %439 = call float @dx.op.unary.f32(i32 22, float %431)  ; Frc(value)
  %440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %436, %dx.types.Handle %46, float %437, float %438, float %439, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = fmul fast float %441, 1.023000e+03
  %445 = fmul fast float %442, 1.023000e+03
  %446 = fmul fast float %443, 1.023000e+03
  %447 = fadd fast float %444, 5.000000e-01
  %448 = fadd fast float %445, 5.000000e-01
  %449 = fadd fast float %446, 5.000000e-01
  %450 = call float @dx.op.unary.f32(i32 27, float %447)  ; Round_ni(value)
  %451 = call float @dx.op.unary.f32(i32 27, float %448)  ; Round_ni(value)
  %452 = call float @dx.op.unary.f32(i32 27, float %449)  ; Round_ni(value)
  %453 = fsub fast float %420, %423
  %454 = fsub fast float %421, %424
  %455 = fsub fast float %422, %425
  %456 = fmul fast float %453, 7.500000e-01
  %457 = fmul fast float %454, 7.500000e-01
  %458 = fmul fast float %455, 7.500000e-01
  %459 = fadd fast float %423, 1.250000e-01
  %460 = fadd fast float %459, %456
  %461 = fadd fast float %460, %450
  %462 = fadd fast float %424, 1.250000e-01
  %463 = fadd fast float %462, %457
  %464 = fadd fast float %463, %451
  %465 = fadd fast float %425, 1.250000e-01
  %466 = fadd fast float %465, %458
  %467 = fadd fast float %466, %452
  %468 = fmul fast float %461, %411
  %469 = fmul fast float %464, %412
  %470 = fmul fast float %467, %413
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = add i32 %472, 0
  %474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %473, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %474, %dx.types.Handle %44, float %468, float %469, float %470, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  br label %477

; <label>:477                                     ; preds = %398, %387
  %478 = phi float [ %476, %398 ], [ -1.000000e+00, %387 ]
  %479 = fadd fast float %478, %385
  %480 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  br label %481

; <label>:481                                     ; preds = %477, %375
  %482 = phi float [ %480, %477 ], [ %385, %375 ]
  %483 = fmul fast float %482, %271
  br label %484

; <label>:484                                     ; preds = %481, %370
  %485 = phi float [ %483, %481 ], [ %271, %370 ]
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 256
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %536, label %490

; <label>:490                                     ; preds = %484
  %491 = add i32 %52, 136
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = add i32 %493, 0
  %495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %495, %dx.types.Handle %74, float %371, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = add i32 %52, 52
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = shl i32 %500, 4
  %502 = and i32 %501, 32752
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = lshr i32 %500, 7
  %505 = and i32 %504, 32752
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = fsub fast float 1.000000e+00, %485
  %508 = call float @dx.op.binary.f32(i32 35, float %507, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %509 = bitcast float %485 to i32
  %510 = sitofp i32 %509 to float
  %511 = fadd fast float %510, 0xC1CFBF8940000000
  %512 = fmul fast float %506, %511
  %513 = fadd fast float %512, 0x41CFBF8940000000
  %514 = fptosi float %513 to i32
  %515 = bitcast i32 %514 to float
  %516 = bitcast float %508 to i32
  %517 = sitofp i32 %516 to float
  %518 = fadd fast float %517, 0xC1CFBF8940000000
  %519 = fmul fast float %518, %506
  %520 = fadd fast float %519, 0x41CFBF8940000000
  %521 = fptosi float %520 to i32
  %522 = bitcast i32 %521 to float
  %523 = fmul fast float %515, %503
  %524 = fmul fast float %522, %503
  %525 = fsub fast float %508, %523
  %526 = fadd fast float %524, %508
  %527 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %528 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %529 = fsub fast float %497, %527
  %530 = fsub fast float %528, %527
  %531 = bitcast float %530 to i32
  %532 = sub nsw i32 2129859010, %531
  %533 = bitcast i32 %532 to float
  %534 = fmul fast float %533, %529
  %535 = call float @dx.op.unary.f32(i32 7, float %534)  ; Saturate(value)
  br label %536

; <label>:536                                     ; preds = %490, %484
  %537 = phi float [ %535, %490 ], [ %485, %484 ]
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 128
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %558, label %542

; <label>:542                                     ; preds = %536
  %543 = add i32 %52, 132
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = add i32 %545, 0
  %547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %546, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %547, %dx.types.Handle %74, float %371, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = and i32 %551, 524288
  %553 = icmp ne i32 %552, 0
  %554 = fcmp fast ogt float %549, 0x3FE0101020000000
  %555 = select i1 %554, float 1.000000e+00, float 0.000000e+00
  %556 = select i1 %553, float %555, float %549
  %557 = fmul fast float %556, %537
  br label %558

; <label>:558                                     ; preds = %542, %536
  %559 = phi float [ %557, %542 ], [ %537, %536 ]
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = and i32 %561, 16
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %762, label %564

; <label>:564                                     ; preds = %558
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = add i32 %52, 120
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = add i32 %569, 0
  %571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %571, %dx.types.Handle %73, float %371, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = extractvalue %dx.types.ResRet.f32 %572, 1
  %575 = extractvalue %dx.types.ResRet.f32 %572, 2
  %576 = extractvalue %dx.types.ResRet.f32 %572, 3
  %577 = and i32 %566, 255
  %578 = uitofp i32 %577 to float
  %579 = lshr i32 %566, 8
  %580 = and i32 %579, 255
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %576, %578
  %583 = fadd fast float %582, %581
  %584 = fmul fast float %583, 0x3F70101000000000
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 512
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %597, label %589

; <label>:589                                     ; preds = %564
  %590 = add i32 %52, 140
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = add i32 %592, 0
  %594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %594, %dx.types.Handle %74, float %371, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  br label %597

; <label>:597                                     ; preds = %589, %564
  %598 = phi float [ %596, %589 ], [ 1.000000e+00, %564 ]
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = and i32 %600, 33554432
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %709, label %603

; <label>:603                                     ; preds = %597
  %604 = add i32 %52, 80
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = and i32 %606, 65535
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = lshr i32 %606, 16
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = add i32 %52, 84
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = and i32 %613, 65535
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = lshr i32 %617, 24
  %619 = uitofp i32 %618 to float
  %620 = fmul fast float %619, 0x3F70101020000000
  %621 = and i32 %617, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = lshr i32 %617, 8
  %625 = and i32 %624, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = lshr i32 %617, 16
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %630, 0x3F70101020000000
  %632 = add i32 %52, 76
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = lshr i32 %634, 24
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101020000000
  %638 = and i32 %634, 255
  %639 = uitofp i32 %638 to float
  %640 = fmul fast float %639, 0x3F70101020000000
  %641 = lshr i32 %634, 8
  %642 = and i32 %641, 255
  %643 = uitofp i32 %642 to float
  %644 = fmul fast float %643, 0x3F70101020000000
  %645 = lshr i32 %634, 16
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %647, 0x3F70101020000000
  %649 = bitcast float %573 to i32
  %650 = ashr i32 %649, 1
  %651 = sub nsw i32 1597463174, %650
  %652 = bitcast i32 %651 to float
  %653 = fmul fast float %573, 5.000000e-01
  %654 = fmul fast float %652, %652
  %655 = fmul fast float %654, %653
  %656 = fsub fast float 1.500000e+00, %655
  %657 = fmul fast float %652, %573
  %658 = fmul fast float %657, %656
  %659 = bitcast float %574 to i32
  %660 = ashr i32 %659, 1
  %661 = sub nsw i32 1597463174, %660
  %662 = bitcast i32 %661 to float
  %663 = fmul fast float %574, 5.000000e-01
  %664 = fmul fast float %662, %662
  %665 = fmul fast float %664, %663
  %666 = fsub fast float 1.500000e+00, %665
  %667 = fmul fast float %662, %574
  %668 = fmul fast float %667, %666
  %669 = bitcast float %575 to i32
  %670 = ashr i32 %669, 1
  %671 = sub nsw i32 1597463174, %670
  %672 = bitcast i32 %671 to float
  %673 = fmul fast float %575, 5.000000e-01
  %674 = fmul fast float %672, %672
  %675 = fmul fast float %674, %673
  %676 = fsub fast float 1.500000e+00, %675
  %677 = fmul fast float %672, %575
  %678 = fmul fast float %677, %676
  %679 = fsub fast float %658, %640
  %680 = fsub fast float %668, %644
  %681 = fsub fast float %678, %648
  %682 = fmul fast float %679, %608
  %683 = fmul fast float %680, %610
  %684 = fmul fast float %681, %615
  %685 = fadd fast float %682, %623
  %686 = fadd fast float %683, %627
  %687 = fadd fast float %684, %631
  %688 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %689 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %690 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %691 = fmul fast float %688, %688
  %692 = fmul fast float %689, %689
  %693 = fmul fast float %690, %690
  %694 = fsub fast float %691, %573
  %695 = fsub fast float %692, %574
  %696 = fsub fast float %693, %575
  %697 = fmul fast float %694, %598
  %698 = fmul fast float %695, %598
  %699 = fmul fast float %696, %598
  %700 = fadd fast float %697, %573
  %701 = fadd fast float %698, %574
  %702 = fadd fast float %699, %575
  %703 = fadd fast float %620, %584
  %704 = fsub fast float %703, %637
  %705 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  %706 = fsub fast float %705, %584
  %707 = fmul fast float %706, %598
  %708 = fadd fast float %707, %584
  br label %762

; <label>:709                                     ; preds = %597
  %710 = and i32 %600, 134217728
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %746, label %712

; <label>:712                                     ; preds = %709
  %713 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %714 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %715 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %716 = fadd fast float %713, -5.000000e-01
  %717 = fadd fast float %714, -5.000000e-01
  %718 = fadd fast float %715, -5.000000e-01
  %719 = fmul fast float %716, %598
  %720 = fmul fast float %717, %598
  %721 = fmul fast float %718, %598
  %722 = fadd fast float %719, 5.000000e-01
  %723 = fadd fast float %720, 5.000000e-01
  %724 = fadd fast float %721, 5.000000e-01
  %725 = call float @dx.op.unary.f32(i32 24, float %573)  ; Sqrt(value)
  %726 = call float @dx.op.unary.f32(i32 24, float %574)  ; Sqrt(value)
  %727 = call float @dx.op.unary.f32(i32 24, float %575)  ; Sqrt(value)
  %728 = fmul fast float %722, 2.000000e+00
  %729 = fsub fast float 1.000000e+00, %728
  %730 = fmul fast float %729, %725
  %731 = fadd fast float %730, %728
  %732 = fmul fast float %731, %725
  %733 = fmul fast float %723, 2.000000e+00
  %734 = fsub fast float 1.000000e+00, %733
  %735 = fmul fast float %734, %726
  %736 = fadd fast float %735, %733
  %737 = fmul fast float %736, %726
  %738 = fmul fast float %724, 2.000000e+00
  %739 = fsub fast float 1.000000e+00, %738
  %740 = fmul fast float %739, %727
  %741 = fadd fast float %740, %738
  %742 = fmul fast float %741, %727
  %743 = fmul fast float %732, %732
  %744 = fmul fast float %737, %737
  %745 = fmul fast float %742, %742
  br label %762

; <label>:746                                     ; preds = %709
  %747 = fmul fast float %232, %232
  %748 = fmul fast float %236, %236
  %749 = fmul fast float %240, %240
  %750 = fadd fast float %747, -1.000000e+00
  %751 = fadd fast float %748, -1.000000e+00
  %752 = fadd fast float %749, -1.000000e+00
  %753 = fmul fast float %598, %750
  %754 = fmul fast float %598, %751
  %755 = fmul fast float %598, %752
  %756 = fadd fast float %753, 1.000000e+00
  %757 = fadd fast float %754, 1.000000e+00
  %758 = fadd fast float %755, 1.000000e+00
  %759 = fmul fast float %756, %573
  %760 = fmul fast float %757, %574
  %761 = fmul fast float %758, %575
  br label %762

; <label>:762                                     ; preds = %746, %712, %603, %558
  %763 = phi float [ %708, %603 ], [ %584, %712 ], [ %584, %746 ], [ 0x3FA23C0BE0000000, %558 ]
  %764 = phi float [ %700, %603 ], [ %743, %712 ], [ %759, %746 ], [ 1.000000e+00, %558 ]
  %765 = phi float [ %701, %603 ], [ %744, %712 ], [ %760, %746 ], [ 1.000000e+00, %558 ]
  %766 = phi float [ %702, %603 ], [ %745, %712 ], [ %761, %746 ], [ 1.000000e+00, %558 ]
  %767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.i32 %767, 1
  %769 = and i32 %768, 1
  %770 = icmp ne i32 %769, 0
  %771 = add i32 %52, 116
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 32
  %775 = icmp ne i32 %774, 0
  %776 = and i1 %770, %775
  %777 = select i1 %776, float 1.000000e+00, float %764
  %778 = select i1 %776, float 0x3FD3333340000000, float %765
  %779 = select i1 %776, float 0x3FD3333340000000, float %766
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 32
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %856, label %784

; <label>:784                                     ; preds = %762
  %785 = add i32 %52, 44
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = add i32 %52, 124
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = add i32 %790, 0
  %792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %791, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %793 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %792, %dx.types.Handle %73, float %371, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = extractvalue %dx.types.ResRet.f32 %793, 1
  %796 = extractvalue %dx.types.ResRet.f32 %793, 2
  %797 = extractvalue %dx.types.ResRet.f32 %793, 3
  %798 = and i32 %787, 255
  %799 = uitofp i32 %798 to float
  %800 = lshr i32 %787, 8
  %801 = and i32 %800, 255
  %802 = uitofp i32 %801 to float
  %803 = lshr i32 %787, 16
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3F70101000000000
  %807 = fmul fast float %794, %799
  %808 = fadd fast float %807, %802
  %809 = fmul fast float %808, 0x3F70101000000000
  %810 = fadd fast float %795, -5.000000e-01
  %811 = fadd fast float %797, -5.000000e-01
  %812 = fmul fast float %810, %806
  %813 = fmul fast float %811, %806
  %814 = fadd fast float %812, 5.000000e-01
  %815 = fadd fast float %813, 5.000000e-01
  %816 = fmul fast float %814, 2.000000e+00
  %817 = fadd fast float %816, -1.000000e+00
  %818 = fmul fast float %815, 2.000000e+00
  %819 = fadd fast float %818, -1.000000e+00
  %820 = fadd fast float %817, %819
  %821 = fmul fast float %820, 5.000000e-01
  %822 = fsub fast float %817, %819
  %823 = fmul fast float %822, 5.000000e-01
  %824 = call float @dx.op.unary.f32(i32 6, float %821)  ; FAbs(value)
  %825 = fsub fast float 1.000000e+00, %824
  %826 = call float @dx.op.unary.f32(i32 6, float %823)  ; FAbs(value)
  %827 = fsub fast float %825, %826
  %828 = call float @dx.op.dot3.f32(i32 55, float %821, float %823, float %827, float %821, float %823, float %827)  ; Dot3(ax,ay,az,bx,by,bz)
  %829 = call float @dx.op.unary.f32(i32 25, float %828)  ; Rsqrt(value)
  %830 = fmul fast float %821, %829
  %831 = fmul fast float %823, %829
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = and i32 %833, 67108864
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %852, label %836

; <label>:836                                     ; preds = %784
  %837 = add i32 %52, 88
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 65535
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = and i32 %843, 65535
  %845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %844)  ; LegacyF16ToF32(value)
  %846 = lshr i32 %839, 16
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = fsub fast float %809, %847
  %849 = fmul fast float %848, %841
  %850 = fadd fast float %849, %845
  %851 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  br label %852

; <label>:852                                     ; preds = %836, %784
  %853 = phi float [ %851, %836 ], [ %809, %784 ]
  %854 = call float @dx.op.dot2.f32(i32 54, float %830, float %831, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %855 = call float @dx.op.dot2.f32(i32 54, float %830, float %831, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %856

; <label>:856                                     ; preds = %852, %762
  %857 = phi float [ %853, %852 ], [ 0x3FD6666660000000, %762 ]
  %858 = phi float [ %854, %852 ], [ 0.000000e+00, %762 ]
  %859 = phi float [ %855, %852 ], [ 0.000000e+00, %762 ]
  %860 = phi float [ %796, %852 ], [ 1.000000e+00, %762 ]
  %861 = add i32 %52, 64
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = lshr i32 %863, 22
  %865 = shl nuw nsw i32 %864, 5
  %866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %865)  ; LegacyF16ToF32(value)
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 64
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %904, label %871

; <label>:871                                     ; preds = %856
  %872 = add i32 %52, 128
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = add i32 %874, 0
  %876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %875, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = and i32 %878, 131072
  %880 = icmp eq i32 %879, 0
  %881 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %876, %dx.types.Handle %73, float %371, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = fmul fast float %882, %220
  %886 = fmul fast float %883, %223
  %887 = fmul fast float %884, %226
  br i1 %880, label %894, label %888

; <label>:888                                     ; preds = %871
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = fmul fast float %890, %885
  %892 = fmul fast float %890, %886
  %893 = fmul fast float %890, %887
  br label %894

; <label>:894                                     ; preds = %888, %871
  %895 = phi float [ %891, %888 ], [ %885, %871 ]
  %896 = phi float [ %892, %888 ], [ %886, %871 ]
  %897 = phi float [ %893, %888 ], [ %887, %871 ]
  %898 = fmul fast float %895, %866
  %899 = select i1 %214, float %898, float %895
  %900 = call float @dx.op.dot3.f32(i32 55, float %899, float %896, float %897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %901 = select i1 %214, float 0.000000e+00, float %895
  %902 = select i1 %214, float %900, float %896
  %903 = select i1 %214, float 0.000000e+00, float %897
  br label %904

; <label>:904                                     ; preds = %894, %856
  %905 = phi float [ %901, %894 ], [ 0.000000e+00, %856 ]
  %906 = phi float [ %902, %894 ], [ 0.000000e+00, %856 ]
  %907 = phi float [ %903, %894 ], [ 0.000000e+00, %856 ]
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = and i32 %909, 1024
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %942, label %912

; <label>:912                                     ; preds = %904
  %913 = add i32 %52, 56
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = fmul fast float %917, 0x3F70101020000000
  %919 = lshr i32 %915, 8
  %920 = and i32 %919, 255
  %921 = uitofp i32 %920 to float
  %922 = fmul fast float %921, 0x3F70101020000000
  %923 = lshr i32 %915, 16
  %924 = and i32 %923, 255
  %925 = uitofp i32 %924 to float
  %926 = fmul fast float %925, 0x3F70101020000000
  %927 = fmul fast float %918, %918
  %928 = fmul fast float %922, %922
  %929 = fmul fast float %926, %926
  %930 = add i32 %52, 144
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = add i32 %932, 0
  %934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %934, %dx.types.Handle %74, float %371, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = extractvalue %dx.types.ResRet.f32 %935, 2
  %939 = fmul fast float %927, %936
  %940 = fmul fast float %928, %937
  %941 = fmul fast float %929, %938
  br label %942

; <label>:942                                     ; preds = %912, %904
  %943 = phi float [ %939, %912 ], [ 0.000000e+00, %904 ]
  %944 = phi float [ %940, %912 ], [ 0.000000e+00, %904 ]
  %945 = phi float [ %941, %912 ], [ 0.000000e+00, %904 ]
  %946 = fcmp fast ogt float %943, 0.000000e+00
  %947 = fcmp fast ogt float %944, 0.000000e+00
  %948 = fcmp fast ogt float %945, 0.000000e+00
  %949 = call float @dx.op.unary.f32(i32 23, float %943)  ; Log(value)
  %950 = call float @dx.op.unary.f32(i32 23, float %944)  ; Log(value)
  %951 = call float @dx.op.unary.f32(i32 23, float %945)  ; Log(value)
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = lshr i32 %953, 7
  %955 = and i32 %954, 32752
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = fmul fast float %949, 0xBFE62E4300000000
  %958 = fmul fast float %957, %956
  %959 = fmul fast float %950, 0xBFE62E4300000000
  %960 = fmul fast float %959, %956
  %961 = fmul fast float %951, 0xBFE62E4300000000
  %962 = fmul fast float %961, %956
  %963 = select i1 %946, float %958, float 1.270000e+02
  %964 = select i1 %947, float %960, float 1.270000e+02
  %965 = select i1 %948, float %962, float 1.270000e+02
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = and i32 %967, 10240
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %1014, label %970

; <label>:970                                     ; preds = %942
  %971 = add i32 %52, 148
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = add i32 %973, 0
  %975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %975, %dx.types.Handle %74, float %371, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 1
  %978 = extractvalue %dx.types.ResRet.f32 %976, 3
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 1048576
  %982 = icmp ne i32 %981, 0
  %983 = and i32 %980, 8192
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1000, label %985

; <label>:985                                     ; preds = %970
  %986 = extractvalue %dx.types.ResRet.f32 %976, 2
  %987 = select i1 %982, float %986, float %977
  %988 = extractvalue %dx.types.ResRet.f32 %976, 0
  %989 = select i1 %982, float %988, float %977
  %990 = add i32 %52, 48
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = lshr i32 %992, 16
  %994 = and i32 %993, 255
  %995 = uitofp i32 %994 to float
  %996 = fmul fast float %995, 0x3F80101020000000
  %997 = fmul fast float %996, %989
  %998 = fmul fast float %996, %977
  %999 = fmul fast float %996, %987
  br label %1000

; <label>:1000                                    ; preds = %985, %970
  %1001 = phi float [ %997, %985 ], [ 0.000000e+00, %970 ]
  %1002 = phi float [ %998, %985 ], [ 0.000000e+00, %970 ]
  %1003 = phi float [ %999, %985 ], [ 0.000000e+00, %970 ]
  %1004 = and i32 %980, 2048
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1014, label %1006

; <label>:1006                                    ; preds = %1000
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = shl i32 %1008, 4
  %1010 = and i32 %1009, 32752
  %1011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1010)  ; LegacyF16ToF32(value)
  %1012 = fmul fast float %1011, %978
  %1013 = call float @dx.op.binary.f32(i32 35, float %1012, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1014

; <label>:1014                                    ; preds = %1006, %1000, %942
  %1015 = phi float [ %1001, %1006 ], [ %1001, %1000 ], [ 0.000000e+00, %942 ]
  %1016 = phi float [ %1002, %1006 ], [ %1002, %1000 ], [ 0.000000e+00, %942 ]
  %1017 = phi float [ %1003, %1006 ], [ %1003, %1000 ], [ 0.000000e+00, %942 ]
  %1018 = phi float [ %1013, %1006 ], [ 0x3F70101020000000, %1000 ], [ 0x3F70101020000000, %942 ]
  %1019 = add i32 %52, 48
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = and i32 %1021, 255
  %1023 = uitofp i32 %1022 to float
  %1024 = lshr i32 %1021, 8
  %1025 = and i32 %1024, 255
  %1026 = uitofp i32 %1025 to float
  %1027 = call float @dx.op.dot3.f32(i32 55, float %777, float %778, float %779, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = fmul fast float %1026, %1027
  %1029 = fadd fast float %1028, %1023
  %1030 = fmul fast float %1029, 0x3F70101020000000
  %1031 = call float @dx.op.unary.f32(i32 7, float %1030)  ; Saturate(value)
  br label %1032

; <label>:1032                                    ; preds = %1014, %270
  %1033 = phi float [ 0.000000e+00, %270 ], [ %858, %1014 ]
  %1034 = phi float [ 0.000000e+00, %270 ], [ %859, %1014 ]
  %1035 = phi float [ 0.000000e+00, %270 ], [ %905, %1014 ]
  %1036 = phi float [ 0.000000e+00, %270 ], [ %906, %1014 ]
  %1037 = phi float [ 0.000000e+00, %270 ], [ %907, %1014 ]
  %1038 = phi float [ 0.000000e+00, %270 ], [ %777, %1014 ]
  %1039 = phi float [ 0.000000e+00, %270 ], [ %778, %1014 ]
  %1040 = phi float [ 0.000000e+00, %270 ], [ %779, %1014 ]
  %1041 = phi float [ 0.000000e+00, %270 ], [ %1015, %1014 ]
  %1042 = phi float [ 0.000000e+00, %270 ], [ %1016, %1014 ]
  %1043 = phi float [ 0.000000e+00, %270 ], [ %1017, %1014 ]
  %1044 = phi float [ 0.000000e+00, %270 ], [ %963, %1014 ]
  %1045 = phi float [ 0.000000e+00, %270 ], [ %964, %1014 ]
  %1046 = phi float [ 0.000000e+00, %270 ], [ %965, %1014 ]
  %1047 = phi float [ 0.000000e+00, %270 ], [ %763, %1014 ]
  %1048 = phi float [ 0.000000e+00, %270 ], [ %559, %1014 ]
  %1049 = phi float [ 0.000000e+00, %270 ], [ %857, %1014 ]
  %1050 = phi float [ 0.000000e+00, %270 ], [ %860, %1014 ]
  %1051 = phi float [ 0.000000e+00, %270 ], [ %1018, %1014 ]
  %1052 = phi float [ 0.000000e+00, %270 ], [ %1031, %1014 ]
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1055 = call float @dx.op.dot2.f32(i32 54, float %1033, float %1034, float %1033, float %1034)  ; Dot2(ax,ay,bx,by)
  %1056 = fmul fast float %1055, 0x3FE3333340000000
  %1057 = fsub fast float 1.000000e+00, %1056
  %1058 = call float @dx.op.dot3.f32(i32 55, float %1033, float %1034, float %1057, float %1033, float %1034, float %1057)  ; Dot3(ax,ay,az,bx,by,bz)
  %1059 = call float @dx.op.unary.f32(i32 25, float %1058)  ; Rsqrt(value)
  %1060 = fmul fast float %1059, %1033
  %1061 = fmul fast float %1059, %1034
  %1062 = fmul fast float %1057, %1059
  %1063 = fmul fast float %1062, %57
  %1064 = fmul fast float %1062, %58
  %1065 = fmul fast float %1062, %59
  %1066 = fmul fast float %1060, %53
  %1067 = fmul fast float %1060, %54
  %1068 = fmul fast float %1060, %55
  %1069 = fadd fast float %1063, %1066
  %1070 = fadd fast float %1064, %1067
  %1071 = fadd fast float %1065, %1068
  %1072 = fmul fast float %1061, %88
  %1073 = fmul fast float %1061, %89
  %1074 = fmul fast float %1061, %90
  %1075 = fadd fast float %1069, %1072
  %1076 = fadd fast float %1070, %1073
  %1077 = fadd fast float %1071, %1074
  %1078 = call float @dx.op.dot3.f32(i32 55, float %1075, float %1076, float %1077, float %1075, float %1076, float %1077)  ; Dot3(ax,ay,az,bx,by,bz)
  %1079 = call float @dx.op.unary.f32(i32 25, float %1078)  ; Rsqrt(value)
  %1080 = fmul fast float %1075, %1079
  %1081 = fmul fast float %1076, %1079
  %1082 = fmul fast float %1077, %1079
  %1083 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %1084 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %1085 = call float @dx.op.unary.f32(i32 83, float %126)  ; DerivCoarseX(value)
  %1086 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %1087 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %1088 = call float @dx.op.unary.f32(i32 84, float %126)  ; DerivCoarseY(value)
  %1089 = fadd fast float %1083, %124
  %1090 = fadd fast float %1084, %125
  %1091 = fadd fast float %1085, %126
  %1092 = fadd fast float %1086, %124
  %1093 = fadd fast float %1087, %125
  %1094 = fadd fast float %1088, %126
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.CBufRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.CBufRet.f32 %1095, 2
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1102 = fmul fast float %1096, %77
  %1103 = fmul fast float %1102, %1100
  %1104 = fmul fast float %1097, %78
  %1105 = fmul fast float %1104, %1101
  %1106 = fptoui float %1103 to i32
  %1107 = fptoui float %1105 to i32
  %1108 = fadd fast float %1096, -1.000000e+00
  %1109 = fadd fast float %1097, -1.000000e+00
  %1110 = fptoui float %1108 to i32
  %1111 = fptoui float %1109 to i32
  %1112 = call i32 @dx.op.binary.i32(i32 40, i32 %1106, i32 %1110)  ; UMin(a,b)
  %1113 = call i32 @dx.op.binary.i32(i32 40, i32 %1107, i32 %1111)  ; UMin(a,b)
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 2
  %1116 = extractvalue %dx.types.CBufRet.f32 %1114, 3
  %1117 = fmul fast float %1115, %68
  %1118 = fsub fast float %1117, %1116
  %1119 = fadd fast float %1098, -1.000000e+00
  %1120 = call float @dx.op.binary.f32(i32 36, float %1118, float %1119)  ; FMin(a,b)
  %1121 = fptoui float %1120 to i32
  %1122 = fptoui float %1096 to i32
  %1123 = fptoui float %1097 to i32
  %1124 = mul i32 %1121, %1123
  %1125 = add i32 %1124, %1113
  %1126 = mul i32 %1125, %1122
  %1127 = add i32 %1126, %1112
  %1128 = shl i32 %1127, 2
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = and i32 %1130, 1023
  %1132 = lshr i32 %1130, 10
  %1133 = icmp eq i32 %1131, 0
  br i1 %1133, label %1637, label %1134

; <label>:1134                                    ; preds = %1032
  %1135 = and i32 %1130, 1023
  br label %1136

; <label>:1136                                    ; preds = %1268, %1134
  %1137 = phi float [ %1269, %1268 ], [ 0.000000e+00, %1134 ]
  %1138 = phi float [ %1270, %1268 ], [ %1054, %1134 ]
  %1139 = phi float [ %1271, %1268 ], [ %1052, %1134 ]
  %1140 = phi float [ %1272, %1268 ], [ %1044, %1134 ]
  %1141 = phi float [ %1273, %1268 ], [ %1045, %1134 ]
  %1142 = phi float [ %1274, %1268 ], [ %1046, %1134 ]
  %1143 = phi float [ %1275, %1268 ], [ 0.000000e+00, %1134 ]
  %1144 = phi float [ %1276, %1268 ], [ 0.000000e+00, %1134 ]
  %1145 = phi float [ %1277, %1268 ], [ %1041, %1134 ]
  %1146 = phi float [ %1278, %1268 ], [ %1042, %1134 ]
  %1147 = phi float [ %1279, %1268 ], [ %1043, %1134 ]
  %1148 = phi float [ %1280, %1268 ], [ %1035, %1134 ]
  %1149 = phi float [ %1281, %1268 ], [ %1036, %1134 ]
  %1150 = phi float [ %1282, %1268 ], [ %1037, %1134 ]
  %1151 = phi float [ %1283, %1268 ], [ %1080, %1134 ]
  %1152 = phi float [ %1284, %1268 ], [ %1081, %1134 ]
  %1153 = phi float [ %1285, %1268 ], [ %1082, %1134 ]
  %1154 = phi float [ %1286, %1268 ], [ %1050, %1134 ]
  %1155 = phi float [ %1287, %1268 ], [ %1049, %1134 ]
  %1156 = phi float [ %1288, %1268 ], [ 0.000000e+00, %1134 ]
  %1157 = phi float [ %1289, %1268 ], [ %1047, %1134 ]
  %1158 = phi float [ %1290, %1268 ], [ %1038, %1134 ]
  %1159 = phi float [ %1291, %1268 ], [ %1039, %1134 ]
  %1160 = phi float [ %1292, %1268 ], [ %1040, %1134 ]
  %1161 = phi i32 [ %1218, %1268 ], [ 0, %1134 ]
  %1162 = add nuw nsw i32 %1161, %1132
  %1163 = shl i32 %1162, 2
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = shl i32 %1165, 8
  %1167 = or i32 %1166, 48
  %1168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.ResRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.ResRet.f32 %1168, 2
  %1172 = extractvalue %dx.types.ResRet.f32 %1168, 3
  %1173 = or i32 %1166, 64
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = extractvalue %dx.types.ResRet.i32 %1174, 1
  %1177 = or i32 %1166, 80
  %1178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 3
  %1181 = or i32 %1166, 96
  %1182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.ResRet.f32 %1182, 1
  %1185 = extractvalue %dx.types.ResRet.f32 %1182, 2
  %1186 = extractvalue %dx.types.ResRet.f32 %1182, 3
  %1187 = or i32 %1166, 112
  %1188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 2
  %1190 = or i32 %1166, 128
  %1191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = extractvalue %dx.types.ResRet.f32 %1191, 1
  %1194 = extractvalue %dx.types.ResRet.f32 %1191, 2
  %1195 = extractvalue %dx.types.ResRet.f32 %1191, 3
  %1196 = or i32 %1166, 144
  %1197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.f32 %1197, 1
  %1200 = extractvalue %dx.types.ResRet.f32 %1197, 2
  %1201 = extractvalue %dx.types.ResRet.f32 %1197, 3
  %1202 = or i32 %1166, 160
  %1203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1207 = extractvalue %dx.types.ResRet.f32 %1203, 3
  %1208 = or i32 %1166, 192
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = or i32 %1166, 208
  %1212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = or i32 %1166, 248
  %1215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.ResRet.f32 %1215, 1
  %1218 = add nuw nsw i32 %1161, 1
  %1219 = bitcast float %1172 to i32
  %1220 = and i32 %1219, 2560
  %1221 = icmp eq i32 %1220, 0
  %1222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1226 = extractvalue %dx.types.ResRet.f32 %1222, 3
  %1227 = call float @dx.op.dot4.f32(i32 56, float %1223, float %1224, float %1225, float %1226, float %124, float %125, float %126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1228 = or i32 %1166, 16
  %1229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.ResRet.f32 %1229, 2
  %1233 = extractvalue %dx.types.ResRet.f32 %1229, 3
  %1234 = call float @dx.op.dot4.f32(i32 56, float %1230, float %1231, float %1232, float %1233, float %124, float %125, float %126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1235 = or i32 %1166, 32
  %1236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.ResRet.f32 %1236, 2
  %1240 = extractvalue %dx.types.ResRet.f32 %1236, 3
  %1241 = call float @dx.op.dot4.f32(i32 56, float %1237, float %1238, float %1239, float %1240, float %124, float %125, float %126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1242 = call float @dx.op.unary.f32(i32 27, float %1227)  ; Round_ni(value)
  %1243 = call float @dx.op.unary.f32(i32 6, float %1242)  ; FAbs(value)
  %1244 = call float @dx.op.unary.f32(i32 27, float %1234)  ; Round_ni(value)
  %1245 = call float @dx.op.unary.f32(i32 6, float %1244)  ; FAbs(value)
  %1246 = call float @dx.op.unary.f32(i32 6, float %1241)  ; FAbs(value)
  %1247 = call float @dx.op.unary.f32(i32 27, float %1246)  ; Round_ni(value)
  %1248 = fadd fast float %1245, %1243
  %1249 = fadd fast float %1248, %1247
  %1250 = fcmp fast oeq float %1249, 0.000000e+00
  %1251 = call float @dx.op.dot4.f32(i32 56, float %1223, float %1224, float %1225, float %1226, float %1089, float %1090, float %1091, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1252 = call float @dx.op.dot4.f32(i32 56, float %1230, float %1231, float %1232, float %1233, float %1089, float %1090, float %1091, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1253 = call float @dx.op.dot4.f32(i32 56, float %1223, float %1224, float %1225, float %1226, float %1092, float %1093, float %1094, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1254 = call float @dx.op.dot4.f32(i32 56, float %1230, float %1231, float %1232, float %1233, float %1092, float %1093, float %1094, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1255 = fsub fast float %1251, %1227
  %1256 = fsub fast float %1253, %1227
  %1257 = fsub fast float %1252, %1234
  %1258 = fsub fast float %1254, %1234
  %1259 = call float @dx.op.dot3.f32(i32 55, float %1169, float %1170, float %1171, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1262 = fadd fast float %1261, %1259
  %1263 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1265 = fcmp fast ogt float %1263, %1264
  %1266 = and i1 %1250, %1265
  %1267 = and i1 %1221, %1266
  br i1 %1267, label %1294, label %1268

; <label>:1268                                    ; preds = %1623, %1375, %1294, %1136
  %1269 = phi float [ %1137, %1294 ], [ %1378, %1375 ], [ %1378, %1623 ], [ %1137, %1136 ]
  %1270 = phi float [ %1138, %1294 ], [ %1138, %1375 ], [ %1599, %1623 ], [ %1138, %1136 ]
  %1271 = phi float [ %1139, %1294 ], [ %1139, %1375 ], [ %1597, %1623 ], [ %1139, %1136 ]
  %1272 = phi float [ %1140, %1294 ], [ %1140, %1375 ], [ %1575, %1623 ], [ %1140, %1136 ]
  %1273 = phi float [ %1141, %1294 ], [ %1141, %1375 ], [ %1576, %1623 ], [ %1141, %1136 ]
  %1274 = phi float [ %1142, %1294 ], [ %1142, %1375 ], [ %1577, %1623 ], [ %1142, %1136 ]
  %1275 = phi float [ %1143, %1294 ], [ %1143, %1375 ], [ %1502, %1623 ], [ %1143, %1136 ]
  %1276 = phi float [ %1144, %1294 ], [ %1144, %1375 ], [ %1500, %1623 ], [ %1144, %1136 ]
  %1277 = phi float [ %1145, %1294 ], [ %1145, %1375 ], [ %1545, %1623 ], [ %1145, %1136 ]
  %1278 = phi float [ %1146, %1294 ], [ %1146, %1375 ], [ %1546, %1623 ], [ %1146, %1136 ]
  %1279 = phi float [ %1147, %1294 ], [ %1147, %1375 ], [ %1547, %1623 ], [ %1147, %1136 ]
  %1280 = phi float [ %1148, %1294 ], [ %1148, %1375 ], [ %1633, %1623 ], [ %1148, %1136 ]
  %1281 = phi float [ %1149, %1294 ], [ %1149, %1375 ], [ %1634, %1623 ], [ %1149, %1136 ]
  %1282 = phi float [ %1150, %1294 ], [ %1150, %1375 ], [ %1635, %1623 ], [ %1150, %1136 ]
  %1283 = phi float [ %1151, %1294 ], [ %1151, %1375 ], [ %1481, %1623 ], [ %1151, %1136 ]
  %1284 = phi float [ %1152, %1294 ], [ %1152, %1375 ], [ %1482, %1623 ], [ %1152, %1136 ]
  %1285 = phi float [ %1153, %1294 ], [ %1153, %1375 ], [ %1483, %1623 ], [ %1153, %1136 ]
  %1286 = phi float [ %1154, %1294 ], [ %1154, %1375 ], [ %1555, %1623 ], [ %1154, %1136 ]
  %1287 = phi float [ %1155, %1294 ], [ %1155, %1375 ], [ %1552, %1623 ], [ %1155, %1136 ]
  %1288 = phi float [ %1156, %1294 ], [ %1156, %1375 ], [ %1549, %1623 ], [ %1156, %1136 ]
  %1289 = phi float [ %1157, %1294 ], [ %1157, %1375 ], [ %1498, %1623 ], [ %1157, %1136 ]
  %1290 = phi float [ %1158, %1294 ], [ %1158, %1375 ], [ %1493, %1623 ], [ %1158, %1136 ]
  %1291 = phi float [ %1159, %1294 ], [ %1159, %1375 ], [ %1494, %1623 ], [ %1159, %1136 ]
  %1292 = phi float [ %1160, %1294 ], [ %1160, %1375 ], [ %1495, %1623 ], [ %1160, %1136 ]
  %1293 = icmp eq i32 %1218, %1135
  br i1 %1293, label %1636, label %1136

; <label>:1294                                    ; preds = %1136
  %1295 = extractvalue %dx.types.ResRet.f32 %1188, 3
  %1296 = extractvalue %dx.types.ResRet.f32 %1188, 1
  %1297 = extractvalue %dx.types.ResRet.f32 %1188, 0
  %1298 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1299 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1300 = extractvalue %dx.types.ResRet.i32 %1174, 3
  %1301 = extractvalue %dx.types.ResRet.i32 %1174, 2
  %1302 = add i32 %1300, 0
  %1303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1302, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1305 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1303, %dx.types.Handle %1304, float %1227, float %1234, float undef, float undef, i32 0, i32 0, i32 undef, float %1255, float %1257, float undef, float %1256, float %1258, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = fmul fast float %1306, %1299
  %1308 = fadd fast float %1307, %1298
  %1309 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1310 = fmul fast float %1227, %1183
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1184, float %1234, float %1310)  ; FMad(a,b,c)
  %1312 = fadd fast float %1311, %1297
  %1313 = fmul fast float %1227, %1185
  %1314 = call float @dx.op.tertiary.f32(i32 46, float %1186, float %1234, float %1313)  ; FMad(a,b,c)
  %1315 = fadd fast float %1314, %1296
  %1316 = fmul fast float %1255, %1183
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1184, float %1257, float %1316)  ; FMad(a,b,c)
  %1318 = fmul fast float %1255, %1185
  %1319 = call float @dx.op.tertiary.f32(i32 46, float %1186, float %1257, float %1318)  ; FMad(a,b,c)
  %1320 = fmul fast float %1256, %1183
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1184, float %1258, float %1320)  ; FMad(a,b,c)
  %1322 = fmul fast float %1256, %1185
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1186, float %1258, float %1322)  ; FMad(a,b,c)
  %1324 = add i32 %1301, 0
  %1325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1324, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1326 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1325, %dx.types.Handle %1304, float %1312, float %1315, float undef, float undef, i32 0, i32 0, i32 undef, float %1317, float %1319, float undef, float %1321, float %1323, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  %1328 = and i32 %1219, 1024
  %1329 = icmp ne i32 %1328, 0
  %1330 = fcmp fast ogt float %1327, 0x3FE0101020000000
  %1331 = uitofp i1 %1330 to float
  %1332 = select i1 %1329, float %1331, float %1327
  %1333 = and i32 %1219, 8192
  %1334 = icmp ne i32 %1333, 0
  %1335 = select i1 %1334, float %1295, float 1.000000e+00
  %1336 = fmul fast float %1227, 2.000000e+00
  %1337 = fadd fast float %1336, -1.000000e+00
  %1338 = call float @dx.op.unary.f32(i32 6, float %1337)  ; FAbs(value)
  %1339 = fmul fast float %1338, %1216
  %1340 = fsub fast float %1339, %1216
  %1341 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1342 = fmul fast float %1234, 2.000000e+00
  %1343 = fadd fast float %1342, -1.000000e+00
  %1344 = call float @dx.op.unary.f32(i32 6, float %1343)  ; FAbs(value)
  %1345 = fmul fast float %1344, %1217
  %1346 = fsub fast float %1345, %1217
  %1347 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1348 = fmul fast float %1246, %1179
  %1349 = fsub fast float %1348, %1179
  %1350 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1351 = fmul fast float %1309, %1335
  %1352 = fmul fast float %1351, %1306
  %1353 = fmul fast float %1352, %1341
  %1354 = fmul fast float %1353, %1332
  %1355 = fmul fast float %1354, %1347
  %1356 = fmul fast float %1355, %1350
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1359 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1360 = fsub fast float %1263, %1359
  %1361 = fmul fast float %1360, %1358
  %1362 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1363 = fmul fast float %1356, %1180
  %1364 = fadd fast float %1356, %1180
  %1365 = fmul fast float %1364, %1189
  %1366 = fsub fast float %1365, %1189
  %1367 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1368 = and i32 %1219, 128
  %1369 = icmp ne i32 %1368, 0
  %1370 = select i1 %1369, float %1367, float %1363
  %1371 = fmul fast float %1370, %1362
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = fcmp fast ugt float %1371, %1373
  br i1 %1374, label %1375, label %1268

; <label>:1375                                    ; preds = %1294
  %1376 = select i1 %1334, float %1371, float 0.000000e+00
  %1377 = fadd fast float %1376, %1137
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  br i1 %1334, label %1268, label %1379

; <label>:1379                                    ; preds = %1375
  %1380 = and i32 %1219, 4
  %1381 = and i32 %1219, 8
  %1382 = add i32 %1175, 0
  %1383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1382, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1385 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1383, %dx.types.Handle %1384, float %1312, float %1315, float undef, float undef, i32 0, i32 0, i32 undef, float %1317, float %1319, float undef, float %1321, float %1323, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = extractvalue %dx.types.ResRet.f32 %1385, 1
  %1388 = extractvalue %dx.types.ResRet.f32 %1385, 2
  %1389 = extractvalue %dx.types.ResRet.f32 %1385, 3
  %1390 = bitcast float %1201 to i32
  %1391 = and i32 %1390, 255
  %1392 = uitofp i32 %1391 to float
  %1393 = lshr i32 %1390, 8
  %1394 = and i32 %1393, 255
  %1395 = uitofp i32 %1394 to float
  %1396 = fmul fast float %1389, %1392
  %1397 = fadd fast float %1396, %1395
  %1398 = fmul fast float %1397, 0x3F70101000000000
  %1399 = add i32 %1176, 0
  %1400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1399, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1401 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1400, %dx.types.Handle %1384, float %1312, float %1315, float undef, float undef, i32 0, i32 0, i32 undef, float %1317, float %1319, float undef, float %1321, float %1323, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = extractvalue %dx.types.ResRet.f32 %1401, 1
  %1404 = extractvalue %dx.types.ResRet.f32 %1401, 2
  %1405 = extractvalue %dx.types.ResRet.f32 %1401, 3
  %1406 = bitcast float %1195 to i32
  %1407 = and i32 %1406, 255
  %1408 = uitofp i32 %1407 to float
  %1409 = lshr i32 %1406, 8
  %1410 = and i32 %1409, 255
  %1411 = uitofp i32 %1410 to float
  %1412 = lshr i32 %1406, 16
  %1413 = and i32 %1412, 255
  %1414 = uitofp i32 %1413 to float
  %1415 = fmul fast float %1414, 0x3F70101000000000
  %1416 = fmul fast float %1402, %1408
  %1417 = fadd fast float %1416, %1411
  %1418 = fmul fast float %1417, 0x3F70101000000000
  %1419 = fadd fast float %1403, -5.000000e-01
  %1420 = fadd fast float %1405, -5.000000e-01
  %1421 = fmul fast float %1419, %1415
  %1422 = fmul fast float %1420, %1415
  %1423 = fadd fast float %1421, 5.000000e-01
  %1424 = fadd fast float %1422, 5.000000e-01
  %1425 = fmul fast float %1386, %1204
  %1426 = fmul fast float %1387, %1205
  %1427 = fmul fast float %1388, %1206
  %1428 = fmul fast float %1423, 2.000000e+00
  %1429 = fadd fast float %1428, -1.000000e+00
  %1430 = fmul fast float %1424, 2.000000e+00
  %1431 = fadd fast float %1430, -1.000000e+00
  %1432 = fadd fast float %1429, %1431
  %1433 = fmul fast float %1432, 5.000000e-01
  %1434 = fsub fast float %1429, %1431
  %1435 = fmul fast float %1434, 5.000000e-01
  %1436 = call float @dx.op.unary.f32(i32 6, float %1433)  ; FAbs(value)
  %1437 = fsub fast float 1.000000e+00, %1436
  %1438 = call float @dx.op.unary.f32(i32 6, float %1435)  ; FAbs(value)
  %1439 = fsub fast float %1437, %1438
  %1440 = call float @dx.op.dot3.f32(i32 55, float %1433, float %1435, float %1439, float %1433, float %1435, float %1439)  ; Dot3(ax,ay,az,bx,by,bz)
  %1441 = call float @dx.op.unary.f32(i32 25, float %1440)  ; Rsqrt(value)
  %1442 = fmul fast float %1433, %1441
  %1443 = fmul fast float %1435, %1441
  %1444 = fmul fast float %1441, %1439
  %1445 = fmul fast float %1444, %1169
  %1446 = fmul fast float %1444, %1170
  %1447 = fmul fast float %1444, %1171
  %1448 = fmul fast float %1442, %1192
  %1449 = fmul fast float %1442, %1193
  %1450 = fmul fast float %1442, %1194
  %1451 = fadd fast float %1448, %1445
  %1452 = fadd fast float %1449, %1446
  %1453 = fadd fast float %1450, %1447
  %1454 = fmul fast float %1443, %1198
  %1455 = fmul fast float %1443, %1199
  %1456 = fmul fast float %1443, %1200
  %1457 = fadd fast float %1451, %1454
  %1458 = fadd fast float %1452, %1455
  %1459 = fadd fast float %1453, %1456
  %1460 = call float @dx.op.dot3.f32(i32 55, float %1457, float %1458, float %1459, float %1457, float %1458, float %1459)  ; Dot3(ax,ay,az,bx,by,bz)
  %1461 = call float @dx.op.unary.f32(i32 25, float %1460)  ; Rsqrt(value)
  %1462 = fmul fast float %1457, %1461
  %1463 = fmul fast float %1458, %1461
  %1464 = fmul fast float %1459, %1461
  %1465 = icmp ne i32 %1381, 0
  %1466 = select i1 %1465, float 1.000000e+00, float 0.000000e+00
  %1467 = fmul fast float %1371, %1466
  %1468 = and i32 %1219, 1
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %1470, label %1474

; <label>:1470                                    ; preds = %1379
  %1471 = fsub fast float %1462, %1151
  %1472 = fsub fast float %1463, %1152
  %1473 = fsub fast float %1464, %1153
  br label %1474

; <label>:1474                                    ; preds = %1470, %1379
  %1475 = phi float [ %1471, %1470 ], [ %1462, %1379 ]
  %1476 = phi float [ %1472, %1470 ], [ %1463, %1379 ]
  %1477 = phi float [ %1473, %1470 ], [ %1464, %1379 ]
  %1478 = fmul float %1477, %1467
  %1479 = fmul float %1476, %1467
  %1480 = fmul float %1475, %1467
  %1481 = fadd fast float %1480, %1151
  %1482 = fadd fast float %1479, %1152
  %1483 = fadd fast float %1478, %1153
  %1484 = icmp ne i32 %1380, 0
  %1485 = select i1 %1484, float 1.000000e+00, float 0.000000e+00
  %1486 = fmul fast float %1371, %1485
  %1487 = fsub fast float %1425, %1158
  %1488 = fsub fast float %1426, %1159
  %1489 = fsub fast float %1427, %1160
  %1490 = fmul fast float %1487, %1486
  %1491 = fmul fast float %1488, %1486
  %1492 = fmul fast float %1489, %1486
  %1493 = fadd fast float %1490, %1158
  %1494 = fadd fast float %1491, %1159
  %1495 = fadd fast float %1492, %1160
  %1496 = fsub fast float %1398, %1157
  %1497 = fmul fast float %1496, %1486
  %1498 = fadd fast float %1497, %1157
  %1499 = fmul fast float %1486, %1144
  %1500 = fsub fast float %1144, %1499
  %1501 = fmul fast float %1486, %1143
  %1502 = fsub fast float %1143, %1501
  %1503 = bitcast float %1213 to i32
  %1504 = lshr i32 %1503, 16
  %1505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1504)  ; LegacyF16ToF32(value)
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 1
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1510, label %1535

; <label>:1510                                    ; preds = %1474
  %1511 = fadd fast float %1398, 0xBFB99999A0000000
  %1512 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1513 = fmul fast float %1512, 0x3FF1C71C80000000
  %1514 = fsub fast float 1.000000e+00, %1513
  %1515 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1516 = fmul fast float %1515, %1425
  %1517 = fmul fast float %1515, %1426
  %1518 = fmul fast float %1515, %1427
  %1519 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1522 = call float @dx.op.binary.f32(i32 35, float %1520, float %1521)  ; FMax(a,b)
  %1523 = call float @dx.op.binary.f32(i32 35, float %1519, float %1522)  ; FMax(a,b)
  %1524 = fcmp fast ogt float %1523, 0.000000e+00
  %1525 = bitcast float %1523 to i32
  %1526 = sub nsw i32 2129859010, %1525
  %1527 = bitcast i32 %1526 to float
  %1528 = select i1 %1524, float %1527, float 0.000000e+00
  %1529 = fmul fast float %1519, %1505
  %1530 = fmul fast float %1520, %1505
  %1531 = fmul fast float %1521, %1505
  %1532 = fmul fast float %1529, %1528
  %1533 = fmul fast float %1530, %1528
  %1534 = fmul fast float %1531, %1528
  br label %1535

; <label>:1535                                    ; preds = %1510, %1474
  %1536 = phi float [ %1505, %1474 ], [ %1532, %1510 ]
  %1537 = phi float [ %1505, %1474 ], [ %1533, %1510 ]
  %1538 = phi float [ %1505, %1474 ], [ %1534, %1510 ]
  %1539 = fsub fast float %1536, %1145
  %1540 = fsub fast float %1537, %1146
  %1541 = fsub fast float %1538, %1147
  %1542 = fmul fast float %1539, %1486
  %1543 = fmul fast float %1540, %1486
  %1544 = fmul fast float %1541, %1486
  %1545 = fadd fast float %1542, %1145
  %1546 = fadd fast float %1543, %1146
  %1547 = fadd fast float %1544, %1147
  %1548 = fadd fast float %1371, %1156
  %1549 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1550 = fsub fast float %1418, %1155
  %1551 = fmul fast float %1550, %1467
  %1552 = fadd fast float %1551, %1155
  %1553 = fsub fast float %1404, %1154
  %1554 = fmul fast float %1553, %1467
  %1555 = fadd fast float %1554, %1154
  br i1 %1469, label %1564, label %1556

; <label>:1556                                    ; preds = %1535
  %1557 = and i32 %1219, 32768
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1574, label %1559

; <label>:1559                                    ; preds = %1556
  %1560 = fmul fast float %1467, 1.270000e+02
  %1561 = fadd fast float %1560, %1140
  %1562 = fadd fast float %1560, %1141
  %1563 = fadd fast float %1560, %1142
  br label %1574

; <label>:1564                                    ; preds = %1535
  %1565 = fsub fast float 1.270000e+02, %1140
  %1566 = fsub fast float 1.270000e+02, %1141
  %1567 = fsub fast float 1.270000e+02, %1142
  %1568 = fmul fast float %1467, %1565
  %1569 = fmul fast float %1467, %1566
  %1570 = fmul fast float %1467, %1567
  %1571 = fadd fast float %1568, %1140
  %1572 = fadd fast float %1569, %1141
  %1573 = fadd fast float %1570, %1142
  br label %1574

; <label>:1574                                    ; preds = %1564, %1559, %1556
  %1575 = phi float [ %1561, %1559 ], [ %1140, %1556 ], [ %1571, %1564 ]
  %1576 = phi float [ %1562, %1559 ], [ %1141, %1556 ], [ %1572, %1564 ]
  %1577 = phi float [ %1563, %1559 ], [ %1142, %1556 ], [ %1573, %1564 ]
  %1578 = call float @dx.op.dot3.f32(i32 55, float %1425, float %1426, float %1427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.CBufRet.f32 %1579, 1
  %1582 = fmul fast float %1581, %1578
  %1583 = fadd fast float %1582, %1580
  %1584 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1585 = bitcast float %1207 to i32
  %1586 = and i32 %1585, 65535
  %1587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1586)  ; LegacyF16ToF32(value)
  %1588 = lshr i32 %1585, 16
  %1589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1588)  ; LegacyF16ToF32(value)
  %1590 = fcmp fast oge float %1587, 0.000000e+00
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 0
  %1593 = select i1 %1590, float %1587, float %1592
  %1594 = fadd fast float %1593, %1589
  %1595 = fsub fast float %1584, %1139
  %1596 = fmul fast float %1595, %1371
  %1597 = fadd fast float %1596, %1139
  %1598 = fmul fast float %1594, %1371
  %1599 = call float @dx.op.binary.f32(i32 35, float %1138, float %1598)  ; FMax(a,b)
  %1600 = and i32 %1219, 16
  %1601 = icmp eq i32 %1600, 0
  br i1 %1601, label %1623, label %1602

; <label>:1602                                    ; preds = %1574
  %1603 = add i32 %1210, 0
  %1604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1603, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1605 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1604, %dx.types.Handle %1384, float %1312, float %1315, float undef, float undef, i32 0, i32 0, i32 undef, float %1317, float %1319, float undef, float %1321, float %1323, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  %1607 = extractvalue %dx.types.ResRet.f32 %1605, 1
  %1608 = extractvalue %dx.types.ResRet.f32 %1605, 2
  %1609 = and i32 %1503, 65535
  %1610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1609)  ; LegacyF16ToF32(value)
  %1611 = fmul fast float %1606, %1204
  %1612 = fmul fast float %1607, %1205
  %1613 = fmul fast float %1608, %1206
  %1614 = and i32 %1219, 16384
  %1615 = icmp ne i32 %1614, 0
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = select i1 %1615, float %1617, float 1.000000e+00
  %1619 = fmul fast float %1618, %1610
  %1620 = fmul fast float %1611, %1619
  %1621 = fmul fast float %1612, %1619
  %1622 = fmul fast float %1613, %1619
  br label %1623

; <label>:1623                                    ; preds = %1602, %1574
  %1624 = phi float [ %1620, %1602 ], [ 0.000000e+00, %1574 ]
  %1625 = phi float [ %1621, %1602 ], [ 0.000000e+00, %1574 ]
  %1626 = phi float [ %1622, %1602 ], [ 0.000000e+00, %1574 ]
  %1627 = fsub fast float %1624, %1148
  %1628 = fsub fast float %1625, %1149
  %1629 = fsub fast float %1626, %1150
  %1630 = fmul fast float %1627, %1371
  %1631 = fmul fast float %1628, %1371
  %1632 = fmul fast float %1629, %1371
  %1633 = fadd fast float %1630, %1148
  %1634 = fadd fast float %1631, %1149
  %1635 = fadd fast float %1632, %1150
  br label %1268

; <label>:1636                                    ; preds = %1268
  br label %1637

; <label>:1637                                    ; preds = %1636, %1032
  %1638 = phi float [ 0.000000e+00, %1032 ], [ %1269, %1636 ]
  %1639 = phi float [ %1054, %1032 ], [ %1270, %1636 ]
  %1640 = phi float [ %1052, %1032 ], [ %1271, %1636 ]
  %1641 = phi float [ %1044, %1032 ], [ %1272, %1636 ]
  %1642 = phi float [ %1045, %1032 ], [ %1273, %1636 ]
  %1643 = phi float [ %1046, %1032 ], [ %1274, %1636 ]
  %1644 = phi float [ 0.000000e+00, %1032 ], [ %1275, %1636 ]
  %1645 = phi float [ 0.000000e+00, %1032 ], [ %1276, %1636 ]
  %1646 = phi float [ %1041, %1032 ], [ %1277, %1636 ]
  %1647 = phi float [ %1042, %1032 ], [ %1278, %1636 ]
  %1648 = phi float [ %1043, %1032 ], [ %1279, %1636 ]
  %1649 = phi float [ %1035, %1032 ], [ %1280, %1636 ]
  %1650 = phi float [ %1036, %1032 ], [ %1281, %1636 ]
  %1651 = phi float [ %1037, %1032 ], [ %1282, %1636 ]
  %1652 = phi float [ %1080, %1032 ], [ %1283, %1636 ]
  %1653 = phi float [ %1081, %1032 ], [ %1284, %1636 ]
  %1654 = phi float [ %1082, %1032 ], [ %1285, %1636 ]
  %1655 = phi float [ %1050, %1032 ], [ %1286, %1636 ]
  %1656 = phi float [ %1049, %1032 ], [ %1287, %1636 ]
  %1657 = phi float [ 0.000000e+00, %1032 ], [ %1288, %1636 ]
  %1658 = phi float [ %1047, %1032 ], [ %1289, %1636 ]
  %1659 = phi float [ %1038, %1032 ], [ %1290, %1636 ]
  %1660 = phi float [ %1039, %1032 ], [ %1291, %1636 ]
  %1661 = phi float [ %1040, %1032 ], [ %1292, %1636 ]
  %1662 = call float @dx.op.dot3.f32(i32 55, float %1652, float %1653, float %1654, float %1652, float %1653, float %1654)  ; Dot3(ax,ay,az,bx,by,bz)
  %1663 = call float @dx.op.unary.f32(i32 25, float %1662)  ; Rsqrt(value)
  %1664 = fmul fast float %1663, %1652
  %1665 = fmul fast float %1663, %1653
  %1666 = fmul fast float %1663, %1654
  %1667 = fadd fast float %1657, %1048
  %1668 = call float @dx.op.unary.f32(i32 7, float %1667)  ; Saturate(value)
  %1669 = call float @dx.op.dot3.f32(i32 55, float %1664, float %1665, float %1666, float %1664, float %1665, float %1666)  ; Dot3(ax,ay,az,bx,by,bz)
  %1670 = call float @dx.op.unary.f32(i32 25, float %1669)  ; Rsqrt(value)
  %1671 = fmul fast float %1670, %1664
  %1672 = fmul fast float %1670, %1665
  %1673 = fmul fast float %1670, %1666
  %1674 = fadd fast float %1658, 0xBFB99999A0000000
  %1675 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1676 = fmul fast float %1675, 0x3FF1C71C80000000
  %1677 = call float @dx.op.binary.f32(i32 36, float %1658, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1678 = fsub fast float 1.000000e+00, %1676
  %1679 = call float @dx.op.unary.f32(i32 7, float %1678)  ; Saturate(value)
  %1680 = fmul fast float %1679, %1659
  %1681 = fmul fast float %1679, %1660
  %1682 = fmul fast float %1679, %1661
  %1683 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1684 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1685 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1686 = fmul fast float %1676, %1659
  %1687 = fmul fast float %1676, %1660
  %1688 = fmul fast float %1676, %1661
  %1689 = fadd fast float %1686, %1677
  %1690 = fadd fast float %1687, %1677
  %1691 = fadd fast float %1688, %1677
  %1692 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1693 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1694 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1695 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = and i32 %1697, 1
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1714, label %1700

; <label>:1700                                    ; preds = %1637
  %1701 = call float @dx.op.binary.f32(i32 35, float %1684, float %1685)  ; FMax(a,b)
  %1702 = call float @dx.op.binary.f32(i32 35, float %1683, float %1701)  ; FMax(a,b)
  %1703 = fcmp fast ogt float %1702, 0.000000e+00
  %1704 = bitcast float %1702 to i32
  %1705 = sub nsw i32 2129859010, %1704
  %1706 = bitcast i32 %1705 to float
  %1707 = select i1 %1703, float %1706, float 0.000000e+00
  %1708 = fmul fast float %1683, %1646
  %1709 = fmul fast float %1684, %1647
  %1710 = fmul fast float %1685, %1648
  %1711 = fmul fast float %1708, %1707
  %1712 = fmul fast float %1709, %1707
  %1713 = fmul fast float %1710, %1707
  br label %1714

; <label>:1714                                    ; preds = %1700, %1637
  %1715 = phi float [ %1711, %1700 ], [ %1646, %1637 ]
  %1716 = phi float [ %1712, %1700 ], [ %1647, %1637 ]
  %1717 = phi float [ %1713, %1700 ], [ %1648, %1637 ]
  %1718 = call float @dx.op.binary.f32(i32 36, float %1641, float 1.270000e+02)  ; FMin(a,b)
  %1719 = call float @dx.op.binary.f32(i32 36, float %1642, float 1.270000e+02)  ; FMin(a,b)
  %1720 = call float @dx.op.binary.f32(i32 36, float %1643, float 1.270000e+02)  ; FMin(a,b)
  %1721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.i32 %1721, 3
  %1723 = and i32 %1722, 8
  %1724 = icmp ne i32 %1723, 0
  %1725 = call float @dx.op.binary.f32(i32 35, float %1683, float %1659)  ; FMax(a,b)
  %1726 = call float @dx.op.binary.f32(i32 35, float %1684, float %1659)  ; FMax(a,b)
  %1727 = call float @dx.op.binary.f32(i32 35, float %1685, float %1659)  ; FMax(a,b)
  %1728 = call float @dx.op.dot3.f32(i32 55, float %1683, float %1684, float %1685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1729 = select i1 %214, float %1659, float %1683
  %1730 = select i1 %214, float %1728, float %1684
  %1731 = select i1 %214, float 1.000000e+00, float %1685
  %1732 = select i1 %1724, float %1725, float %1729
  %1733 = select i1 %1724, float %1726, float %1730
  %1734 = select i1 %1724, float %1727, float %1731
  %1735 = call float @dx.op.dot3.f32(i32 55, float %1715, float %1716, float %1717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1736 = select i1 %214, float %1735, float %1715
  %1737 = select i1 %214, float %1735, float %1716
  %1738 = select i1 %214, float %1735, float %1717
  %1739 = and i32 %190, 3
  %1740 = select i1 %184, i32 %1739, i32 0
  %1741 = icmp eq i32 %1740, 1
  br i1 %1741, label %1742, label %1818

; <label>:1742                                    ; preds = %1714
  %1743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.f32 %1743, 0
  %1745 = extractvalue %dx.types.CBufRet.f32 %1743, 1
  %1746 = fadd fast float %1744, %124
  %1747 = fadd fast float %1745, %125
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1751 = fsub fast float %1746, %1749
  %1752 = fsub fast float %1747, %1750
  %1753 = fmul fast float %1751, %1751
  %1754 = fmul fast float %1752, %1752
  %1755 = fadd fast float %1753, %1754
  %1756 = call float @dx.op.unary.f32(i32 24, float %1755)  ; Sqrt(value)
  %1757 = extractvalue %dx.types.CBufRet.f32 %1748, 2
  %1758 = fcmp fast olt float %1756, %1757
  br i1 %1758, label %1759, label %1812

; <label>:1759                                    ; preds = %1742
  %1760 = extractvalue %dx.types.CBufRet.f32 %1743, 2
  %1761 = fadd fast float %1760, %126
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 0
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1764, 0
  %1766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1767 = extractvalue %dx.types.CBufRet.f32 %1766, 0
  %1768 = extractvalue %dx.types.CBufRet.f32 %1762, 1
  %1769 = extractvalue %dx.types.CBufRet.f32 %1764, 1
  %1770 = extractvalue %dx.types.CBufRet.f32 %1766, 1
  %1771 = extractvalue %dx.types.CBufRet.f32 %1762, 3
  %1772 = extractvalue %dx.types.CBufRet.f32 %1764, 3
  %1773 = extractvalue %dx.types.CBufRet.f32 %1766, 3
  %1774 = fadd fast float %1771, %1746
  %1775 = fadd fast float %1772, %1747
  %1776 = fadd fast float %1761, %1773
  %1777 = fmul fast float %1774, %1763
  %1778 = call float @dx.op.tertiary.f32(i32 46, float %1775, float %1765, float %1777)  ; FMad(a,b,c)
  %1779 = call float @dx.op.tertiary.f32(i32 46, float %1776, float %1767, float %1778)  ; FMad(a,b,c)
  %1780 = fmul fast float %1774, %1768
  %1781 = call float @dx.op.tertiary.f32(i32 46, float %1775, float %1769, float %1780)  ; FMad(a,b,c)
  %1782 = call float @dx.op.tertiary.f32(i32 46, float %1776, float %1770, float %1781)  ; FMad(a,b,c)
  %1783 = fsub fast float %1779, %1771
  %1784 = fsub fast float %1782, %1772
  %1785 = fsub fast float %1783, %1749
  %1786 = fadd fast float %1785, %1757
  %1787 = fsub fast float %1784, %1750
  %1788 = fadd fast float %1787, %1757
  %1789 = extractvalue %dx.types.CBufRet.f32 %1748, 3
  %1790 = fmul fast float %1786, %1789
  %1791 = fmul fast float %1788, %1789
  %1792 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  %1793 = call float @dx.op.unary.f32(i32 7, float %1791)  ; Saturate(value)
  %1794 = fsub fast float 1.000000e+00, %1792
  %1795 = fsub fast float 1.000000e+00, %1793
  %1796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %1794, float %1795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = fcmp fast ugt float %1797, 0.000000e+00
  br i1 %1798, label %1799, label %1812

; <label>:1799                                    ; preds = %1759
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 2
  %1802 = fmul fast float %1801, %1797
  %1803 = extractvalue %dx.types.CBufRet.f32 %1800, 3
  %1804 = fadd fast float %1803, %1802
  %1805 = extractvalue %dx.types.CBufRet.f32 %1766, 2
  %1806 = fadd fast float %1804, %1773
  %1807 = fmul fast float %1779, %1767
  %1808 = call float @dx.op.tertiary.f32(i32 46, float %1782, float %1770, float %1807)  ; FMad(a,b,c)
  %1809 = call float @dx.op.tertiary.f32(i32 46, float %1806, float %1805, float %1808)  ; FMad(a,b,c)
  %1810 = fsub fast float %1809, %1773
  %1811 = fsub fast float %1810, %1760
  br label %1812

; <label>:1812                                    ; preds = %1799, %1759, %1742
  %1813 = phi i1 [ true, %1799 ], [ false, %1759 ], [ false, %1742 ]
  %1814 = phi float [ %1811, %1799 ], [ -1.310720e+05, %1759 ], [ -1.310720e+05, %1742 ]
  %1815 = fsub fast float %1814, %126
  %1816 = call float @dx.op.unary.f32(i32 7, float %1815)  ; Saturate(value)
  %1817 = select i1 %1813, float %1816, float 1.000000e+00
  br label %1818

; <label>:1818                                    ; preds = %1812, %1714
  %1819 = phi float [ %1817, %1812 ], [ 0.000000e+00, %1714 ]
  %1820 = icmp eq i32 %1740, 3
  %1821 = select i1 %1820, float 1.000000e+00, float %1819
  %1822 = call float @dx.op.binary.f32(i32 35, float %1638, float %1821)  ; FMax(a,b)
  %1823 = call float @dx.op.unary.f32(i32 7, float %1822)  ; Saturate(value)
  %1824 = fcmp fast une float %1823, 0.000000e+00
  %1825 = call float @dx.op.dot3.f32(i32 55, float %124, float %125, float %126, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %1826 = call float @dx.op.unary.f32(i32 25, float %1825)  ; Rsqrt(value)
  br i1 %1824, label %1834, label %1827

; <label>:1827                                    ; preds = %1818
  %1828 = fmul fast float %1826, %124
  %1829 = fmul fast float %1826, %125
  %1830 = fmul fast float %1826, %126
  %1831 = fsub fast float -0.000000e+00, %1828
  %1832 = fsub fast float -0.000000e+00, %1829
  %1833 = fsub fast float -0.000000e+00, %1830
  br label %2002

; <label>:1834                                    ; preds = %1818
  %1835 = fmul fast float %124, %1826
  %1836 = fsub fast float -0.000000e+00, %1835
  %1837 = fmul fast float %125, %1826
  %1838 = fsub fast float -0.000000e+00, %1837
  %1839 = fmul fast float %126, %1826
  %1840 = fsub fast float -0.000000e+00, %1839
  %1841 = call float @dx.op.dot3.f32(i32 55, float %1836, float %1838, float %1840, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %1842 = fmul fast float %1823, 2.500000e+00
  %1843 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1844 = fmul fast float %1823, 0x4013FFFFE0000000
  %1845 = fadd fast float %1844, 0xBFFFFFFFE0000000
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  %1847 = fmul fast float %1823, 0x4004000020000000
  %1848 = fadd fast float %1847, 0xBFF8000040000000
  %1849 = call float @dx.op.unary.f32(i32 7, float %1848)  ; Saturate(value)
  %1850 = call float @dx.op.unary.f32(i32 7, float %1843)  ; Saturate(value)
  %1851 = fmul fast float %1674, 1.000000e+01
  %1852 = call float @dx.op.unary.f32(i32 7, float %1851)  ; Saturate(value)
  %1853 = fmul fast float %1852, 2.000000e+00
  %1854 = fsub fast float 3.000000e+00, %1853
  %1855 = fmul fast float %1852, %1852
  %1856 = fmul fast float %1855, %1854
  %1857 = fsub fast float 1.000000e+00, %1856
  %1858 = fsub fast float 0x3FE3333340000000, %1695
  %1859 = fmul fast float %1858, 0x400AAAAAA0000000
  %1860 = call float @dx.op.unary.f32(i32 7, float %1859)  ; Saturate(value)
  %1861 = fmul fast float %1857, %1860
  %1862 = fmul fast float %1732, 0x3FEA2B8620000000
  %1863 = fmul fast float %1733, 0x3FEA2B8620000000
  %1864 = fmul fast float %1734, 0x3FEA2B8620000000
  %1865 = fadd fast float %1862, 0x3FC81DFBA0000000
  %1866 = fmul fast float %1865, %1732
  %1867 = fadd fast float %1866, 0x3F910E6020000000
  %1868 = fadd fast float %1863, 0x3FC81DFBA0000000
  %1869 = fmul fast float %1868, %1733
  %1870 = fadd fast float %1869, 0x3F910E6020000000
  %1871 = fadd fast float %1864, 0x3FC81DFBA0000000
  %1872 = fmul fast float %1871, %1734
  %1873 = fadd fast float %1872, 0x3F910E6020000000
  %1874 = call float @dx.op.unary.f32(i32 7, float %1867)  ; Saturate(value)
  %1875 = call float @dx.op.unary.f32(i32 7, float %1870)  ; Saturate(value)
  %1876 = call float @dx.op.unary.f32(i32 7, float %1873)  ; Saturate(value)
  %1877 = fsub fast float %1874, %1732
  %1878 = fsub fast float %1875, %1733
  %1879 = fsub fast float %1876, %1734
  %1880 = fmul fast float %1877, %1850
  %1881 = fmul fast float %1880, %1861
  %1882 = fmul fast float %1878, %1850
  %1883 = fmul fast float %1882, %1861
  %1884 = fmul fast float %1879, %1850
  %1885 = fmul fast float %1884, %1861
  %1886 = fadd fast float %1881, %1732
  %1887 = fadd fast float %1883, %1733
  %1888 = fadd fast float %1885, %1734
  %1889 = fmul fast float %1655, %1655
  %1890 = fmul fast float %1889, %1889
  %1891 = fadd fast float %1846, 1.000000e+00
  %1892 = fsub fast float %1891, %1861
  %1893 = call float @dx.op.unary.f32(i32 7, float %1892)  ; Saturate(value)
  %1894 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1895 = call float @dx.op.unary.f32(i32 7, float %1894)  ; Saturate(value)
  %1896 = fsub fast float 1.000000e+00, %1890
  %1897 = call float @dx.op.binary.f32(i32 36, float %1893, float %1896)  ; FMin(a,b)
  %1898 = call float @dx.op.unary.f32(i32 7, float %1849)  ; Saturate(value)
  %1899 = call float @dx.op.binary.f32(i32 35, float %1897, float %1898)  ; FMax(a,b)
  %1900 = fadd fast float %1895, 0xBFE4CCCCC0000000
  %1901 = fmul fast float %1900, 0x4006DB6DA0000000
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = fmul fast float %1902, 2.000000e+00
  %1904 = fsub fast float 3.000000e+00, %1903
  %1905 = bitcast float %1692 to i32
  %1906 = ashr i32 %1905, 1
  %1907 = add nsw i32 %1906, 532487669
  %1908 = bitcast i32 %1907 to float
  %1909 = fsub fast float 1.000000e+00, %1908
  %1910 = bitcast float %1909 to i32
  %1911 = sub nsw i32 2129859010, %1910
  %1912 = bitcast i32 %1911 to float
  %1913 = fmul fast float %1912, 2.000000e+00
  %1914 = bitcast float %1693 to i32
  %1915 = ashr i32 %1914, 1
  %1916 = add nsw i32 %1915, 532487669
  %1917 = bitcast i32 %1916 to float
  %1918 = fsub fast float 1.000000e+00, %1917
  %1919 = bitcast float %1918 to i32
  %1920 = sub nsw i32 2129859010, %1919
  %1921 = bitcast i32 %1920 to float
  %1922 = fmul fast float %1921, 2.000000e+00
  %1923 = bitcast float %1694 to i32
  %1924 = ashr i32 %1923, 1
  %1925 = add nsw i32 %1924, 532487669
  %1926 = bitcast i32 %1925 to float
  %1927 = fsub fast float 1.000000e+00, %1926
  %1928 = bitcast float %1927 to i32
  %1929 = sub nsw i32 2129859010, %1928
  %1930 = bitcast i32 %1929 to float
  %1931 = fmul fast float %1930, 2.000000e+00
  %1932 = fsub fast float 0x4002A9FBE0000000, %1913
  %1933 = fadd fast float %1913, 0x3FD54FDF00000000
  %1934 = bitcast float %1933 to i32
  %1935 = sub nsw i32 2129859010, %1934
  %1936 = bitcast i32 %1935 to float
  %1937 = fmul fast float %1936, %1932
  %1938 = fmul fast float %1937, %1937
  %1939 = fsub fast float 0x4002A9FBE0000000, %1922
  %1940 = fadd fast float %1922, 0x3FD54FDF00000000
  %1941 = bitcast float %1940 to i32
  %1942 = sub nsw i32 2129859010, %1941
  %1943 = bitcast i32 %1942 to float
  %1944 = fmul fast float %1943, %1939
  %1945 = fmul fast float %1944, %1944
  %1946 = fsub fast float 0x4002A9FBE0000000, %1931
  %1947 = fadd fast float %1931, 0x3FD54FDF00000000
  %1948 = bitcast float %1947 to i32
  %1949 = sub nsw i32 2129859010, %1948
  %1950 = bitcast i32 %1949 to float
  %1951 = fmul fast float %1950, %1946
  %1952 = fmul fast float %1951, %1951
  %1953 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1938)  ; FMax(a,b)
  %1954 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1945)  ; FMax(a,b)
  %1955 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1952)  ; FMax(a,b)
  %1956 = fsub fast float 1.000000e+00, %1841
  %1957 = fadd fast float %1956, %1857
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = fsub fast float 1.000000e+00, %1821
  %1960 = fmul fast float %1899, %1959
  %1961 = fmul fast float %1902, %1902
  %1962 = fmul fast float %1961, %1960
  %1963 = fmul fast float %1962, %1904
  %1964 = fmul fast float %1959, 0xBFE99999A0000000
  %1965 = fmul fast float %1964, %1850
  %1966 = fmul fast float %1965, %1861
  %1967 = fadd fast float %1966, 1.000000e+00
  %1968 = fadd fast float %1695, -1.000000e+00
  %1969 = fmul fast float %1967, %1968
  %1970 = fadd fast float %1969, 1.000000e+00
  %1971 = fsub fast float %1953, %1692
  %1972 = fsub fast float %1954, %1693
  %1973 = fsub fast float %1955, %1694
  %1974 = fmul fast float %1963, %1971
  %1975 = fmul fast float %1963, %1972
  %1976 = fmul fast float %1963, %1973
  %1977 = fadd fast float %1974, %1692
  %1978 = fadd fast float %1975, %1693
  %1979 = fadd fast float %1976, %1694
  %1980 = fsub fast float %57, %1671
  %1981 = fsub fast float %58, %1672
  %1982 = fsub fast float %59, %1673
  %1983 = fmul fast float %1963, %1980
  %1984 = fmul fast float %1963, %1981
  %1985 = fmul fast float %1963, %1982
  %1986 = fadd fast float %1983, %1671
  %1987 = fadd fast float %1984, %1672
  %1988 = fadd fast float %1985, %1673
  %1989 = fmul fast float %1963, %1958
  %1990 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  %1991 = fsub fast float 1.000000e+00, %1990
  %1992 = fmul fast float %1989, %1991
  %1993 = fadd fast float %1992, %1990
  %1994 = fsub fast float 1.000000e+00, %1655
  %1995 = fmul fast float %1963, %1994
  %1996 = fadd fast float %1995, %1655
  %1997 = call float @dx.op.dot3.f32(i32 55, float %1986, float %1987, float %1988, float %1986, float %1987, float %1988)  ; Dot3(ax,ay,az,bx,by,bz)
  %1998 = call float @dx.op.unary.f32(i32 25, float %1997)  ; Rsqrt(value)
  %1999 = fmul fast float %1986, %1998
  %2000 = fmul fast float %1987, %1998
  %2001 = fmul fast float %1988, %1998
  br label %2002

; <label>:2002                                    ; preds = %1834, %1827
  %2003 = phi float [ %1833, %1827 ], [ %1840, %1834 ]
  %2004 = phi float [ %1832, %1827 ], [ %1838, %1834 ]
  %2005 = phi float [ %1831, %1827 ], [ %1836, %1834 ]
  %2006 = phi float [ %1830, %1827 ], [ %1839, %1834 ]
  %2007 = phi float [ %1829, %1827 ], [ %1837, %1834 ]
  %2008 = phi float [ %1828, %1827 ], [ %1835, %1834 ]
  %2009 = phi float [ %1732, %1827 ], [ %1886, %1834 ]
  %2010 = phi float [ %1733, %1827 ], [ %1887, %1834 ]
  %2011 = phi float [ %1734, %1827 ], [ %1888, %1834 ]
  %2012 = phi float [ %1671, %1827 ], [ %1999, %1834 ]
  %2013 = phi float [ %1672, %1827 ], [ %2000, %1834 ]
  %2014 = phi float [ %1673, %1827 ], [ %2001, %1834 ]
  %2015 = phi float [ %1692, %1827 ], [ %1977, %1834 ]
  %2016 = phi float [ %1693, %1827 ], [ %1978, %1834 ]
  %2017 = phi float [ %1694, %1827 ], [ %1979, %1834 ]
  %2018 = phi float [ %1695, %1827 ], [ %1993, %1834 ]
  %2019 = phi float [ %1655, %1827 ], [ %1996, %1834 ]
  %2020 = select i1 %214, float 0.000000e+00, float %2017
  %2021 = call float @dx.op.dot3.f32(i32 55, float %2012, float %2013, float %2014, float %2005, float %2004, float %2003)  ; Dot3(ax,ay,az,bx,by,bz)
  %2022 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2023 = call float @dx.op.dot3.f32(i32 55, float %2008, float %2007, float %2006, float %2012, float %2013, float %2014)  ; Dot3(ax,ay,az,bx,by,bz)
  %2024 = fmul fast float %2023, 2.000000e+00
  %2025 = fmul fast float %2024, %2012
  %2026 = fmul fast float %2024, %2013
  %2027 = fmul fast float %2024, %2014
  %2028 = fsub fast float %2008, %2025
  %2029 = fsub fast float %2007, %2026
  %2030 = fsub fast float %2006, %2027
  %2031 = call float @dx.op.binary.f32(i32 36, float %2019, float 1.000000e+00)  ; FMin(a,b)
  %2032 = fsub fast float 1.000000e+00, %2019
  %2033 = bitcast float %2032 to i32
  %2034 = sub nsw i32 2129859010, %2033
  %2035 = bitcast i32 %2034 to float
  %2036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.f32 %2036, 0
  %2038 = extractvalue %dx.types.CBufRet.f32 %2036, 1
  %2039 = fadd fast float %2037, %124
  %2040 = fadd fast float %2038, %125
  %2041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2042 = extractvalue %dx.types.CBufRet.i32 %2041, 0
  %2043 = icmp eq i32 %2042, 1
  br i1 %2043, label %2044, label %2079

; <label>:2044                                    ; preds = %2002
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 0
  %2047 = extractvalue %dx.types.CBufRet.f32 %2045, 1
  %2048 = fsub fast float %2039, %2046
  %2049 = fsub fast float %2040, %2047
  %2050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2050, 0
  %2052 = extractvalue %dx.types.CBufRet.f32 %2050, 1
  %2053 = fmul fast float %2048, %2051
  %2054 = fmul fast float %2049, %2052
  %2055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %2053, float %2054, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2056 = extractvalue %dx.types.ResRet.f32 %2055, 0
  %2057 = fcmp fast ogt float %2056, 0.000000e+00
  %2058 = extractvalue %dx.types.CBufRet.i32 %2041, 3
  %2059 = icmp ne i32 %2058, 0
  %2060 = and i1 %2057, %2059
  br i1 %2060, label %2061, label %2079, !dx.controlflow.hints !84

; <label>:2061                                    ; preds = %2044
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2065 = fsub fast float %2039, %2063
  %2066 = fsub fast float %2040, %2064
  %2067 = fmul fast float %2065, %2065
  %2068 = fmul fast float %2066, %2066
  %2069 = fadd fast float %2067, %2068
  %2070 = uitofp i32 %2058 to float
  %2071 = fmul fast float %2070, %2070
  %2072 = fcmp fast ogt float %2069, %2071
  br i1 %2072, label %2079, label %2073

; <label>:2073                                    ; preds = %2061
  %2074 = call float @dx.op.unary.f32(i32 24, float %2069)  ; Sqrt(value)
  %2075 = fsub fast float %2070, %2074
  %2076 = fmul fast float %2075, 0x3F75555560000000
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2078 = call float @dx.op.binary.f32(i32 36, float %2077, float %2056)  ; FMin(a,b)
  br label %2079

; <label>:2079                                    ; preds = %2073, %2061, %2044, %2002
  %2080 = phi float [ 1.000000e+00, %2002 ], [ %2078, %2073 ], [ %2056, %2044 ], [ 0.000000e+00, %2061 ]
  %2081 = fcmp fast ogt float %2080, 0.000000e+00
  br i1 %2081, label %2082, label %2180, !dx.controlflow.hints !85

; <label>:2082                                    ; preds = %2079
  %2083 = fadd fast float %155, 5.000000e-01
  %2084 = call float @dx.op.unary.f32(i32 27, float %2083)  ; Round_ni(value)
  %2085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %153, float %154, float %2084, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2086 = extractvalue %dx.types.ResRet.f32 %2085, 0
  %2087 = extractvalue %dx.types.ResRet.f32 %2085, 1
  %2088 = extractvalue %dx.types.ResRet.f32 %2085, 2
  %2089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2090 = extractvalue %dx.types.CBufRet.f32 %2089, 3
  %2091 = fmul fast float %2090, %2086
  %2092 = fmul fast float %2090, %2087
  %2093 = fmul fast float %2090, %2088
  %2094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %153, float %154, float %2084, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %45, float %153, float %154, float %2084, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2097 = extractvalue %dx.types.ResRet.f32 %2096, 0
  %2098 = extractvalue %dx.types.ResRet.f32 %2096, 1
  %2099 = fmul fast float %2097, 2.000000e+00
  %2100 = fmul fast float %2098, 2.000000e+00
  %2101 = fadd fast float %2099, -1.000000e+00
  %2102 = fadd fast float %2100, -1.000000e+00
  %2103 = fadd fast float %2101, %2102
  %2104 = fmul fast float %2103, 5.000000e-01
  %2105 = fsub fast float %2101, %2102
  %2106 = fmul fast float %2105, 5.000000e-01
  %2107 = call float @dx.op.unary.f32(i32 6, float %2104)  ; FAbs(value)
  %2108 = fsub fast float 1.000000e+00, %2107
  %2109 = call float @dx.op.unary.f32(i32 6, float %2106)  ; FAbs(value)
  %2110 = fsub fast float %2108, %2109
  %2111 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2110)  ; FMax(a,b)
  %2112 = call float @dx.op.dot3.f32(i32 55, float %2104, float %2106, float %2111, float %2104, float %2106, float %2111)  ; Dot3(ax,ay,az,bx,by,bz)
  %2113 = bitcast float %2112 to i32
  %2114 = ashr i32 %2113, 1
  %2115 = sub nsw i32 1597250115, %2114
  %2116 = bitcast i32 %2115 to float
  %2117 = fmul fast float %2116, %2104
  %2118 = fmul fast float %2116, %2106
  %2119 = fmul fast float %2116, %2111
  %2120 = fsub fast float 1.000000e+00, %2095
  %2121 = fdiv fast float %2120, %2119
  %2122 = fmul fast float %2119, %57
  %2123 = fmul fast float %2119, %58
  %2124 = fmul fast float %2119, %59
  %2125 = fmul fast float %2117, %53
  %2126 = fmul fast float %2117, %54
  %2127 = fmul fast float %2117, %55
  %2128 = fadd fast float %2122, %2125
  %2129 = fadd fast float %2123, %2126
  %2130 = fadd fast float %2124, %2127
  %2131 = fmul fast float %2118, %88
  %2132 = fmul fast float %2118, %89
  %2133 = fmul fast float %2118, %90
  %2134 = fadd fast float %2128, %2131
  %2135 = fadd fast float %2129, %2132
  %2136 = fadd fast float %2130, %2133
  %2137 = call float @dx.op.dot3.f32(i32 55, float %2134, float %2135, float %2136, float %2134, float %2135, float %2136)  ; Dot3(ax,ay,az,bx,by,bz)
  %2138 = call float @dx.op.unary.f32(i32 25, float %2137)  ; Rsqrt(value)
  %2139 = fmul fast float %2134, %2138
  %2140 = fmul fast float %2135, %2138
  %2141 = fmul fast float %2136, %2138
  %2142 = call float @dx.op.dot3.f32(i32 55, float %2012, float %2013, float %2014, float %2012, float %2013, float %2014)  ; Dot3(ax,ay,az,bx,by,bz)
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2144 = fmul fast float %2143, 5.000000e-01
  %2145 = fadd fast float %2144, 5.000000e-01
  %2146 = fmul fast float %2145, %2095
  %2147 = call float @dx.op.dot3.f32(i32 55, float %2012, float %2013, float %2014, float %2139, float %2140, float %2141)  ; Dot3(ax,ay,az,bx,by,bz)
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = fmul fast float %2148, %2121
  %2150 = fadd fast float %2146, %2149
  %2151 = fsub fast float 5.000000e-01, %2144
  %2152 = fmul fast float %2151, %2009
  %2153 = fmul fast float %2151, %2010
  %2154 = fmul fast float %2151, %2011
  %2155 = fadd fast float %2150, %2152
  %2156 = fmul fast float %2155, %2091
  %2157 = fadd fast float %2150, %2153
  %2158 = fmul fast float %2157, %2092
  %2159 = fadd fast float %2150, %2154
  %2160 = fmul fast float %2159, %2093
  %2161 = call float @dx.op.dot3.f32(i32 55, float %2028, float %2029, float %2030, float %2012, float %2013, float %2014)  ; Dot3(ax,ay,az,bx,by,bz)
  %2162 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2163 = fmul fast float %2162, 5.000000e-01
  %2164 = fadd fast float %2163, 5.000000e-01
  %2165 = fmul fast float %2164, %2095
  %2166 = call float @dx.op.dot3.f32(i32 55, float %2028, float %2029, float %2030, float %2139, float %2140, float %2141)  ; Dot3(ax,ay,az,bx,by,bz)
  %2167 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2168 = fmul fast float %2167, %2121
  %2169 = fadd fast float %2165, %2168
  %2170 = fsub fast float 5.000000e-01, %2163
  %2171 = fmul fast float %2170, %2009
  %2172 = fmul fast float %2170, %2010
  %2173 = fmul fast float %2170, %2011
  %2174 = fadd fast float %2169, %2171
  %2175 = fmul fast float %2174, %2091
  %2176 = fadd fast float %2169, %2172
  %2177 = fmul fast float %2176, %2092
  %2178 = fadd fast float %2169, %2173
  %2179 = fmul fast float %2178, %2093
  br label %2180

; <label>:2180                                    ; preds = %2082, %2079
  %2181 = phi float [ %2175, %2082 ], [ 0.000000e+00, %2079 ]
  %2182 = phi float [ %2177, %2082 ], [ 0.000000e+00, %2079 ]
  %2183 = phi float [ %2179, %2082 ], [ 0.000000e+00, %2079 ]
  %2184 = phi float [ %2156, %2082 ], [ 0.000000e+00, %2079 ]
  %2185 = phi float [ %2158, %2082 ], [ 0.000000e+00, %2079 ]
  %2186 = phi float [ %2160, %2082 ], [ 0.000000e+00, %2079 ]
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 0
  %2189 = fcmp fast ogt float %2188, 0.000000e+00
  %2190 = and i1 %2081, %2189
  br i1 %2190, label %2191, label %2395, !dx.controlflow.hints !86

; <label>:2191                                    ; preds = %2180
  %2192 = extractvalue %dx.types.CBufRet.f32 %2036, 2
  %2193 = fadd fast float %2192, %126
  %2194 = fmul fast float %2012, 3.200000e+01
  %2195 = fmul fast float %2013, 3.200000e+01
  %2196 = fadd fast float %2039, %2194
  %2197 = fadd fast float %2040, %2195
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.CBufRet.f32 %2198, 1
  %2201 = fsub fast float %2196, %2199
  %2202 = fsub fast float %2197, %2200
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2205 = extractvalue %dx.types.CBufRet.f32 %2203, 1
  %2206 = fmul fast float %2201, %2204
  %2207 = fmul fast float %2202, %2205
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 0
  %2210 = extractvalue %dx.types.CBufRet.f32 %2208, 1
  %2211 = fsub fast float %2039, %2209
  %2212 = fsub fast float %2040, %2210
  %2213 = fmul fast float %2211, %2211
  %2214 = fmul fast float %2212, %2212
  %2215 = fadd fast float %2213, %2214
  %2216 = call float @dx.op.unary.f32(i32 24, float %2215)  ; Sqrt(value)
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.CBufRet.f32 %2217, 1
  %2220 = fsub fast float %2216, %2218
  %2221 = fdiv fast float %2220, %2219
  %2222 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2223 = fmul fast float %2222, 2.000000e+00
  %2224 = fsub fast float 3.000000e+00, %2223
  %2225 = fmul fast float %2222, %2222
  %2226 = fmul fast float %2225, %2224
  %2227 = fcmp fast oge float %2206, 0.000000e+00
  %2228 = fcmp fast ole float %2206, 1.000000e+00
  %2229 = and i1 %2228, %2227
  %2230 = fcmp fast oge float %2207, 0.000000e+00
  %2231 = and i1 %2230, %2229
  %2232 = fcmp fast ole float %2207, 1.000000e+00
  %2233 = and i1 %2232, %2231
  %2234 = fcmp fast ogt float %2226, 0.000000e+00
  %2235 = and i1 %2234, %2233
  br i1 %2235, label %2236, label %2359, !dx.controlflow.hints !87

; <label>:2236                                    ; preds = %2191
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 2
  %2239 = extractvalue %dx.types.CBufRet.f32 %2237, 3
  %2240 = fmul fast float %2238, %2206
  %2241 = fmul fast float %2239, %2207
  %2242 = call float @dx.op.unary.f32(i32 27, float %2240)  ; Round_ni(value)
  %2243 = call float @dx.op.unary.f32(i32 27, float %2241)  ; Round_ni(value)
  %2244 = fptosi float %2242 to i32
  %2245 = fptosi float %2243 to i32
  %2246 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %35, i32 0, i32 %2244, i32 %2245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = lshr i32 %2247, 16
  %2249 = icmp eq i32 %2248, 65535
  br i1 %2249, label %2359, label %2250

; <label>:2250                                    ; preds = %2236
  %2251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2252 = extractvalue %dx.types.CBufRet.f32 %2251, 0
  %2253 = fmul fast float %2252, %2206
  %2254 = extractvalue %dx.types.CBufRet.f32 %2251, 1
  %2255 = fadd fast float %2253, %2254
  %2256 = extractvalue %dx.types.CBufRet.f32 %2251, 2
  %2257 = fmul fast float %2256, %2207
  %2258 = extractvalue %dx.types.CBufRet.f32 %2251, 3
  %2259 = fadd fast float %2257, %2258
  %2260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %2255, float %2259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  %2262 = extractvalue %dx.types.ResRet.f32 %2260, 1
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 1
  %2265 = extractvalue %dx.types.CBufRet.f32 %2263, 0
  %2266 = fsub fast float %2264, %2265
  %2267 = fmul fast float %2266, %2261
  %2268 = fadd fast float %2267, %2265
  %2269 = extractvalue %dx.types.CBufRet.f32 %2263, 3
  %2270 = extractvalue %dx.types.CBufRet.f32 %2263, 2
  %2271 = fsub fast float %2269, %2270
  %2272 = fmul fast float %2271, %2262
  %2273 = fadd fast float %2272, %2270
  %2274 = fsub fast float %2193, %2268
  %2275 = fsub fast float %2273, %2268
  %2276 = fdiv fast float %2274, %2275
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2187, 1
  %2279 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2280 = extractvalue %dx.types.CBufRet.f32 %2237, 1
  %2281 = fmul fast float %2279, %2206
  %2282 = fmul fast float %2280, %2207
  %2283 = fmul fast float %2281, 1.250000e-01
  %2284 = fmul fast float %2282, 1.250000e-01
  %2285 = call float @dx.op.unary.f32(i32 27, float %2283)  ; Round_ni(value)
  %2286 = call float @dx.op.unary.f32(i32 27, float %2284)  ; Round_ni(value)
  %2287 = fmul fast float %2285, 8.000000e+00
  %2288 = fmul fast float %2286, 8.000000e+00
  %2289 = fsub fast float %2281, %2287
  %2290 = fsub fast float %2282, %2288
  %2291 = fadd fast float %2289, 5.000000e-01
  %2292 = fadd fast float %2290, 5.000000e-01
  %2293 = and i32 %2248, 255
  %2294 = lshr i32 %2247, 24
  %2295 = mul nuw nsw i32 %2293, 9
  %2296 = uitofp i32 %2295 to float
  %2297 = mul nuw nsw i32 %2294, 9
  %2298 = uitofp i32 %2297 to float
  %2299 = fadd fast float %2291, %2296
  %2300 = fadd fast float %2292, %2298
  %2301 = fdiv fast float %2299, %2188
  %2302 = fdiv fast float %2300, %2278
  %2303 = fmul fast float %2277, 4.375000e-01
  %2304 = fadd fast float %2303, 3.125000e-02
  %2305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2301, float %2302, float %2304, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2306 = extractvalue %dx.types.ResRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.ResRet.f32 %2305, 1
  %2308 = extractvalue %dx.types.ResRet.f32 %2305, 2
  %2309 = fadd fast float %2303, 5.312500e-01
  %2310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2301, float %2302, float %2309, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2311 = extractvalue %dx.types.ResRet.f32 %2310, 0
  %2312 = extractvalue %dx.types.ResRet.f32 %2310, 1
  %2313 = extractvalue %dx.types.ResRet.f32 %2310, 2
  %2314 = fmul fast float %2311, 2.000000e+00
  %2315 = fmul fast float %2312, 2.000000e+00
  %2316 = fmul fast float %2313, 2.000000e+00
  %2317 = fadd fast float %2314, -1.000000e+00
  %2318 = fadd fast float %2315, -1.000000e+00
  %2319 = fadd fast float %2316, -1.000000e+00
  %2320 = fmul fast float %2317, %2317
  %2321 = fmul fast float %2318, %2318
  %2322 = fadd fast float %2320, %2321
  %2323 = fmul fast float %2319, %2319
  %2324 = fadd fast float %2322, %2323
  %2325 = call float @dx.op.unary.f32(i32 24, float %2324)  ; Sqrt(value)
  %2326 = fcmp fast ogt float %2325, 0.000000e+00
  br i1 %2326, label %2327, label %2331

; <label>:2327                                    ; preds = %2250
  %2328 = fdiv fast float %2317, %2325
  %2329 = fdiv fast float %2318, %2325
  %2330 = fdiv fast float %2319, %2325
  br label %2331

; <label>:2331                                    ; preds = %2327, %2250
  %2332 = phi float [ %2328, %2327 ], [ 0.000000e+00, %2250 ]
  %2333 = phi float [ %2329, %2327 ], [ 0.000000e+00, %2250 ]
  %2334 = phi float [ %2330, %2327 ], [ 0.000000e+00, %2250 ]
  %2335 = call float @dx.op.dot3.f32(i32 55, float %2332, float %2333, float %2334, float %2012, float %2013, float %2014)  ; Dot3(ax,ay,az,bx,by,bz)
  %2336 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2335)  ; FMax(a,b)
  %2337 = fmul fast float %2336, 0x400C5BF8A0000000
  %2338 = fmul fast float %2306, %2226
  %2339 = fmul fast float %2338, %2337
  %2340 = fmul fast float %2307, %2226
  %2341 = fmul fast float %2340, %2337
  %2342 = fmul fast float %2308, %2226
  %2343 = fmul fast float %2342, %2337
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 3
  %2346 = fmul fast float %2339, %2345
  %2347 = fmul fast float %2341, %2345
  %2348 = fmul fast float %2343, %2345
  %2349 = fcmp fast ogt float %2193, %2273
  br i1 %2349, label %2350, label %2359

; <label>:2350                                    ; preds = %2331
  %2351 = fmul fast float %2275, 0x3FC24924A0000000
  %2352 = fsub fast float %2193, %2273
  %2353 = fdiv fast float %2352, %2351
  %2354 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  %2355 = fsub fast float 1.000000e+00, %2354
  %2356 = fmul fast float %2355, %2346
  %2357 = fmul fast float %2355, %2347
  %2358 = fmul fast float %2355, %2348
  br label %2359

; <label>:2359                                    ; preds = %2350, %2331, %2236, %2191
  %2360 = phi float [ %2358, %2350 ], [ %2348, %2331 ], [ 0.000000e+00, %2236 ], [ 0.000000e+00, %2191 ]
  %2361 = phi float [ %2357, %2350 ], [ %2347, %2331 ], [ 0.000000e+00, %2236 ], [ 0.000000e+00, %2191 ]
  %2362 = phi float [ %2356, %2350 ], [ %2346, %2331 ], [ 0.000000e+00, %2236 ], [ 0.000000e+00, %2191 ]
  %2363 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2362)  ; FMax(a,b)
  %2364 = fmul fast float %2363, 0x3FD20DD760000000
  %2365 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2028, float %2029, float %2030)  ; Dot3(ax,ay,az,bx,by,bz)
  %2366 = fmul fast float %2365, 0x3FDF454380000000
  %2367 = fmul fast float %2365, %2365
  %2368 = fmul fast float %2367, 0x3FEE471020000000
  %2369 = fadd fast float %2368, 0xBFD42F6020000000
  %2370 = call float @dx.op.dot3.f32(i32 55, float %2363, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2366, float %2369)  ; Dot3(ax,ay,az,bx,by,bz)
  %2371 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2361)  ; FMax(a,b)
  %2372 = fmul fast float %2371, 0x3FD20DD760000000
  %2373 = call float @dx.op.dot3.f32(i32 55, float %2371, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2366, float %2369)  ; Dot3(ax,ay,az,bx,by,bz)
  %2374 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2360)  ; FMax(a,b)
  %2375 = fmul fast float %2374, 0x3FD20DD760000000
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2374, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2366, float %2369)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = call float @dx.op.binary.f32(i32 35, float %2364, float 0.000000e+00)  ; FMax(a,b)
  %2378 = call float @dx.op.binary.f32(i32 35, float %2372, float 0.000000e+00)  ; FMax(a,b)
  %2379 = call float @dx.op.binary.f32(i32 35, float %2375, float 0.000000e+00)  ; FMax(a,b)
  %2380 = call float @dx.op.binary.f32(i32 35, float %2370, float 0.000000e+00)  ; FMax(a,b)
  %2381 = call float @dx.op.binary.f32(i32 35, float %2373, float 0.000000e+00)  ; FMax(a,b)
  %2382 = call float @dx.op.binary.f32(i32 35, float %2376, float 0.000000e+00)  ; FMax(a,b)
  %2383 = fmul fast float %2377, %2080
  %2384 = fmul fast float %2378, %2080
  %2385 = fmul fast float %2379, %2080
  %2386 = fadd fast float %2383, %2184
  %2387 = fadd fast float %2384, %2185
  %2388 = fadd fast float %2385, %2186
  %2389 = fmul fast float %2380, %2080
  %2390 = fmul fast float %2381, %2080
  %2391 = fmul fast float %2382, %2080
  %2392 = fadd fast float %2389, %2181
  %2393 = fadd fast float %2390, %2182
  %2394 = fadd fast float %2391, %2183
  br label %2395

; <label>:2395                                    ; preds = %2359, %2180
  %2396 = phi float [ %2392, %2359 ], [ %2181, %2180 ]
  %2397 = phi float [ %2393, %2359 ], [ %2182, %2180 ]
  %2398 = phi float [ %2394, %2359 ], [ %2183, %2180 ]
  %2399 = phi float [ %2383, %2359 ], [ 0.000000e+00, %2180 ]
  %2400 = phi float [ %2384, %2359 ], [ 0.000000e+00, %2180 ]
  %2401 = phi float [ %2385, %2359 ], [ 0.000000e+00, %2180 ]
  %2402 = phi float [ %2386, %2359 ], [ %2184, %2180 ]
  %2403 = phi float [ %2387, %2359 ], [ %2185, %2180 ]
  %2404 = phi float [ %2388, %2359 ], [ %2186, %2180 ]
  %2405 = fcmp fast olt float %2080, 1.000000e+00
  br i1 %2405, label %2406, label %3239, !dx.controlflow.hints !88

; <label>:2406                                    ; preds = %2395
  %2407 = extractvalue %dx.types.CBufRet.f32 %2036, 2
  %2408 = fadd fast float %2407, %126
  %2409 = fmul fast float %2012, 3.200000e+01
  %2410 = fmul fast float %2013, 3.200000e+01
  %2411 = fadd fast float %2039, %2409
  %2412 = fadd fast float %2040, %2410
  %2413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2414 = extractvalue %dx.types.CBufRet.f32 %2413, 0
  %2415 = extractvalue %dx.types.CBufRet.f32 %2413, 1
  %2416 = fsub fast float %2411, %2414
  %2417 = fsub fast float %2412, %2415
  %2418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2418, 0
  %2420 = extractvalue %dx.types.CBufRet.f32 %2418, 1
  %2421 = fmul fast float %2416, %2419
  %2422 = fmul fast float %2417, %2420
  %2423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.f32 %2423, 0
  %2425 = fmul fast float %2421, %2424
  %2426 = extractvalue %dx.types.CBufRet.f32 %2423, 1
  %2427 = fadd fast float %2425, %2426
  %2428 = extractvalue %dx.types.CBufRet.f32 %2423, 2
  %2429 = fmul fast float %2428, %2422
  %2430 = extractvalue %dx.types.CBufRet.f32 %2423, 3
  %2431 = fadd fast float %2429, %2430
  %2432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %2427, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2433 = extractvalue %dx.types.ResRet.f32 %2432, 0
  %2434 = extractvalue %dx.types.ResRet.f32 %2432, 1
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 1
  %2437 = extractvalue %dx.types.CBufRet.f32 %2435, 0
  %2438 = fsub fast float %2436, %2437
  %2439 = fmul fast float %2438, %2433
  %2440 = fadd fast float %2439, %2437
  %2441 = extractvalue %dx.types.CBufRet.f32 %2435, 3
  %2442 = extractvalue %dx.types.CBufRet.f32 %2435, 2
  %2443 = fsub fast float %2441, %2442
  %2444 = fmul fast float %2443, %2434
  %2445 = fadd fast float %2444, %2442
  %2446 = fsub fast float %2408, %2440
  %2447 = fsub fast float %2445, %2440
  %2448 = fdiv fast float %2446, %2447
  %2449 = call float @dx.op.unary.f32(i32 7, float %2448)  ; Saturate(value)
  %2450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2451 = extractvalue %dx.types.CBufRet.f32 %2450, 0
  %2452 = fmul fast float %2451, %2449
  %2453 = extractvalue %dx.types.CBufRet.f32 %2450, 1
  %2454 = fadd fast float %2452, %2453
  %2455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %2427, float %2431, float %2454, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.ResRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.ResRet.f32 %2455, 2
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 0
  %2461 = extractvalue %dx.types.CBufRet.f32 %2459, 1
  %2462 = extractvalue %dx.types.CBufRet.f32 %2459, 2
  %2463 = fmul fast float %2460, %2456
  %2464 = fmul fast float %2461, %2457
  %2465 = fmul fast float %2462, %2458
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2468 = extractvalue %dx.types.CBufRet.f32 %2466, 1
  %2469 = extractvalue %dx.types.CBufRet.f32 %2466, 2
  %2470 = fadd fast float %2463, %2467
  %2471 = fadd fast float %2464, %2468
  %2472 = fadd fast float %2465, %2469
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2475 = fmul fast float %2474, %2421
  %2476 = extractvalue %dx.types.CBufRet.f32 %2473, 1
  %2477 = fadd fast float %2475, %2476
  %2478 = extractvalue %dx.types.CBufRet.f32 %2473, 2
  %2479 = fmul fast float %2478, %2422
  %2480 = extractvalue %dx.types.CBufRet.f32 %2473, 3
  %2481 = fadd fast float %2479, %2480
  %2482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2483 = extractvalue %dx.types.CBufRet.f32 %2482, 0
  %2484 = extractvalue %dx.types.CBufRet.f32 %2482, 1
  %2485 = extractvalue %dx.types.CBufRet.f32 %2482, 2
  %2486 = extractvalue %dx.types.CBufRet.f32 %2482, 3
  %2487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2488 = extractvalue %dx.types.CBufRet.f32 %2487, 0
  %2489 = extractvalue %dx.types.CBufRet.f32 %2487, 1
  %2490 = extractvalue %dx.types.CBufRet.f32 %2487, 2
  %2491 = extractvalue %dx.types.CBufRet.f32 %2487, 3
  %2492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2477, float %2481, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2493 = extractvalue %dx.types.ResRet.f32 %2492, 0
  %2494 = extractvalue %dx.types.ResRet.f32 %2492, 1
  %2495 = extractvalue %dx.types.ResRet.f32 %2492, 2
  %2496 = extractvalue %dx.types.ResRet.f32 %2492, 3
  %2497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2477, float %2481, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2498 = extractvalue %dx.types.ResRet.f32 %2497, 0
  %2499 = extractvalue %dx.types.ResRet.f32 %2497, 1
  %2500 = extractvalue %dx.types.ResRet.f32 %2497, 2
  %2501 = extractvalue %dx.types.ResRet.f32 %2497, 3
  %2502 = fmul fast float %2493, %2470
  %2503 = fmul fast float %2498, %2470
  %2504 = fmul fast float %2500, %2470
  %2505 = fmul fast float %2496, %2470
  %2506 = fadd fast float %2502, %2483
  %2507 = fadd fast float %2503, %2484
  %2508 = fadd fast float %2504, %2485
  %2509 = fadd fast float %2505, %2486
  %2510 = fmul fast float %2494, %2470
  %2511 = fmul fast float %2499, %2470
  %2512 = fadd fast float %2510, %2488
  %2513 = fadd fast float %2511, %2489
  %2514 = fmul fast float %2495, %2470
  %2515 = fmul fast float %2501, %2470
  %2516 = fadd fast float %2514, %2490
  %2517 = fadd fast float %2515, %2491
  %2518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2477, float %2481, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2519 = extractvalue %dx.types.ResRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.ResRet.f32 %2518, 1
  %2521 = extractvalue %dx.types.ResRet.f32 %2518, 2
  %2522 = extractvalue %dx.types.ResRet.f32 %2518, 3
  %2523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2477, float %2481, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2524 = extractvalue %dx.types.ResRet.f32 %2523, 0
  %2525 = extractvalue %dx.types.ResRet.f32 %2523, 1
  %2526 = extractvalue %dx.types.ResRet.f32 %2523, 2
  %2527 = extractvalue %dx.types.ResRet.f32 %2523, 3
  %2528 = fmul fast float %2519, %2471
  %2529 = fmul fast float %2524, %2471
  %2530 = fmul fast float %2526, %2471
  %2531 = fmul fast float %2522, %2471
  %2532 = fadd fast float %2506, %2528
  %2533 = fadd fast float %2507, %2529
  %2534 = fadd fast float %2508, %2530
  %2535 = fadd fast float %2509, %2531
  %2536 = fmul fast float %2520, %2471
  %2537 = fmul fast float %2525, %2471
  %2538 = fadd fast float %2512, %2536
  %2539 = fadd fast float %2513, %2537
  %2540 = fmul fast float %2521, %2471
  %2541 = fmul fast float %2527, %2471
  %2542 = fadd fast float %2516, %2540
  %2543 = fadd fast float %2517, %2541
  %2544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2477, float %2481, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2545 = extractvalue %dx.types.ResRet.f32 %2544, 0
  %2546 = extractvalue %dx.types.ResRet.f32 %2544, 1
  %2547 = extractvalue %dx.types.ResRet.f32 %2544, 2
  %2548 = extractvalue %dx.types.ResRet.f32 %2544, 3
  %2549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2477, float %2481, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2550 = extractvalue %dx.types.ResRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.ResRet.f32 %2549, 1
  %2552 = extractvalue %dx.types.ResRet.f32 %2549, 2
  %2553 = extractvalue %dx.types.ResRet.f32 %2549, 3
  %2554 = fmul fast float %2545, %2472
  %2555 = fmul fast float %2550, %2472
  %2556 = fmul fast float %2552, %2472
  %2557 = fmul fast float %2548, %2472
  %2558 = fadd fast float %2532, %2554
  %2559 = fadd fast float %2533, %2555
  %2560 = fadd fast float %2534, %2556
  %2561 = fadd fast float %2535, %2557
  %2562 = fmul fast float %2546, %2472
  %2563 = fmul fast float %2551, %2472
  %2564 = fadd fast float %2538, %2562
  %2565 = fadd fast float %2539, %2563
  %2566 = fmul fast float %2547, %2472
  %2567 = fmul fast float %2553, %2472
  %2568 = fadd fast float %2542, %2566
  %2569 = fadd fast float %2543, %2567
  %2570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2571 = extractvalue %dx.types.CBufRet.f32 %2570, 0
  %2572 = fsub fast float %2039, %2571
  %2573 = fsub fast float %2414, %2039
  %2574 = call float @dx.op.binary.f32(i32 35, float %2573, float %2572)  ; FMax(a,b)
  %2575 = extractvalue %dx.types.CBufRet.f32 %2570, 1
  %2576 = fsub fast float %2040, %2575
  %2577 = fsub fast float %2415, %2040
  %2578 = call float @dx.op.binary.f32(i32 35, float %2577, float %2576)  ; FMax(a,b)
  %2579 = call float @dx.op.binary.f32(i32 35, float %2574, float %2578)  ; FMax(a,b)
  %2580 = extractvalue %dx.types.CBufRet.f32 %2418, 3
  %2581 = fmul fast float %2580, %2579
  %2582 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  %2583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.CBufRet.f32 %2583, 1
  %2586 = extractvalue %dx.types.CBufRet.f32 %2583, 2
  %2587 = extractvalue %dx.types.CBufRet.f32 %2583, 3
  %2588 = fsub fast float %2584, %2558
  %2589 = fsub fast float %2585, %2559
  %2590 = fsub fast float %2586, %2560
  %2591 = fsub fast float %2587, %2561
  %2592 = fmul fast float %2588, %2582
  %2593 = fmul fast float %2589, %2582
  %2594 = fmul fast float %2590, %2582
  %2595 = fmul fast float %2591, %2582
  %2596 = fadd fast float %2592, %2558
  %2597 = fadd fast float %2593, %2559
  %2598 = fadd fast float %2594, %2560
  %2599 = fadd fast float %2595, %2561
  %2600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2600, 0
  %2602 = extractvalue %dx.types.CBufRet.f32 %2600, 1
  %2603 = fsub fast float %2601, %2564
  %2604 = fsub fast float %2602, %2565
  %2605 = fmul fast float %2603, %2582
  %2606 = fmul fast float %2604, %2582
  %2607 = fadd fast float %2605, %2564
  %2608 = fadd fast float %2606, %2565
  %2609 = extractvalue %dx.types.CBufRet.f32 %2600, 2
  %2610 = extractvalue %dx.types.CBufRet.f32 %2600, 3
  %2611 = fsub fast float %2609, %2568
  %2612 = fsub fast float %2610, %2569
  %2613 = fmul fast float %2611, %2582
  %2614 = fmul fast float %2612, %2582
  %2615 = fadd fast float %2613, %2568
  %2616 = fadd fast float %2614, %2569
  %2617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.f32 %2617, 0
  %2619 = fmul fast float %2618, %2596
  %2620 = fmul fast float %2618, %2597
  %2621 = fmul fast float %2618, %2598
  %2622 = fmul fast float %2618, %2599
  %2623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2624 = extractvalue %dx.types.CBufRet.f32 %2623, 0
  %2625 = fmul fast float %2624, %2607
  %2626 = fmul fast float %2624, %2608
  %2627 = fadd fast float %2625, %2619
  %2628 = fadd fast float %2626, %2621
  %2629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2630 = extractvalue %dx.types.CBufRet.f32 %2629, 0
  %2631 = fmul fast float %2630, %2615
  %2632 = fmul fast float %2630, %2616
  %2633 = fadd fast float %2627, %2631
  %2634 = fadd fast float %2628, %2632
  %2635 = extractvalue %dx.types.CBufRet.f32 %2617, 1
  %2636 = fmul fast float %2635, %2596
  %2637 = fmul fast float %2635, %2597
  %2638 = fmul fast float %2635, %2598
  %2639 = fmul fast float %2635, %2599
  %2640 = extractvalue %dx.types.CBufRet.f32 %2623, 1
  %2641 = fmul fast float %2640, %2607
  %2642 = fmul fast float %2640, %2608
  %2643 = fadd fast float %2641, %2636
  %2644 = fadd fast float %2642, %2638
  %2645 = extractvalue %dx.types.CBufRet.f32 %2629, 1
  %2646 = fmul fast float %2645, %2615
  %2647 = fmul fast float %2645, %2616
  %2648 = fadd fast float %2643, %2646
  %2649 = fadd fast float %2644, %2647
  %2650 = extractvalue %dx.types.CBufRet.f32 %2617, 2
  %2651 = fmul fast float %2650, %2596
  %2652 = fmul fast float %2650, %2597
  %2653 = fmul fast float %2650, %2598
  %2654 = fmul fast float %2650, %2599
  %2655 = extractvalue %dx.types.CBufRet.f32 %2623, 2
  %2656 = fmul fast float %2655, %2607
  %2657 = fmul fast float %2655, %2608
  %2658 = fadd fast float %2656, %2651
  %2659 = fadd fast float %2657, %2653
  %2660 = extractvalue %dx.types.CBufRet.f32 %2629, 2
  %2661 = fmul fast float %2660, %2615
  %2662 = fmul fast float %2660, %2616
  %2663 = fadd fast float %2658, %2661
  %2664 = fadd fast float %2659, %2662
  %2665 = fmul fast float %2652, %2652
  %2666 = fmul fast float %2664, %2664
  %2667 = fmul fast float %2654, %2654
  %2668 = fadd fast float %2667, %2665
  %2669 = fadd fast float %2668, %2666
  %2670 = call float @dx.op.unary.f32(i32 24, float %2669)  ; Sqrt(value)
  %2671 = fcmp fast ugt float %2670, 0.000000e+00
  br i1 %2671, label %2672, label %2687

; <label>:2672                                    ; preds = %2406
  %2673 = fsub fast float -0.000000e+00, %2654
  %2674 = fdiv fast float %2673, %2670
  %2675 = fsub fast float -0.000000e+00, %2652
  %2676 = fdiv fast float %2675, %2670
  %2677 = fdiv fast float %2664, %2670
  %2678 = fmul fast float %2663, 0x3FE279A760000000
  %2679 = fmul fast float %2676, %2652
  %2680 = fmul fast float %2677, %2664
  %2681 = fmul fast float %2674, %2654
  %2682 = fadd fast float %2679, %2681
  %2683 = fsub fast float %2682, %2680
  %2684 = call float @dx.op.unary.f32(i32 6, float %2683)  ; FAbs(value)
  %2685 = fadd fast float %2684, 0x3DDB7CDFE0000000
  %2686 = fdiv fast float %2678, %2685
  br label %2687

; <label>:2687                                    ; preds = %2672, %2406
  %2688 = phi float [ %2686, %2672 ], [ 1.000000e+00, %2406 ]
  %2689 = fmul fast float %2637, %2637
  %2690 = fmul fast float %2649, %2649
  %2691 = fmul fast float %2639, %2639
  %2692 = fadd fast float %2691, %2689
  %2693 = fadd fast float %2692, %2690
  %2694 = call float @dx.op.unary.f32(i32 24, float %2693)  ; Sqrt(value)
  %2695 = fcmp fast ugt float %2694, 0.000000e+00
  br i1 %2695, label %2696, label %2711

; <label>:2696                                    ; preds = %2687
  %2697 = fsub fast float -0.000000e+00, %2639
  %2698 = fdiv fast float %2697, %2694
  %2699 = fsub fast float -0.000000e+00, %2637
  %2700 = fdiv fast float %2699, %2694
  %2701 = fdiv fast float %2649, %2694
  %2702 = fmul fast float %2648, 0x3FE279A760000000
  %2703 = fmul fast float %2700, %2637
  %2704 = fmul fast float %2701, %2649
  %2705 = fmul fast float %2698, %2639
  %2706 = fadd fast float %2703, %2705
  %2707 = fsub fast float %2706, %2704
  %2708 = call float @dx.op.unary.f32(i32 6, float %2707)  ; FAbs(value)
  %2709 = fadd fast float %2708, 0x3DDB7CDFE0000000
  %2710 = fdiv fast float %2702, %2709
  br label %2711

; <label>:2711                                    ; preds = %2696, %2687
  %2712 = phi float [ %2710, %2696 ], [ 1.000000e+00, %2687 ]
  %2713 = call float @dx.op.binary.f32(i32 36, float %2712, float %2688)  ; FMin(a,b)
  %2714 = fmul fast float %2620, %2620
  %2715 = fmul fast float %2634, %2634
  %2716 = fmul fast float %2622, %2622
  %2717 = fadd fast float %2716, %2714
  %2718 = fadd fast float %2717, %2715
  %2719 = call float @dx.op.unary.f32(i32 24, float %2718)  ; Sqrt(value)
  %2720 = fcmp fast ugt float %2719, 0.000000e+00
  br i1 %2720, label %2721, label %2736

; <label>:2721                                    ; preds = %2711
  %2722 = fsub fast float -0.000000e+00, %2622
  %2723 = fdiv fast float %2722, %2719
  %2724 = fsub fast float -0.000000e+00, %2620
  %2725 = fdiv fast float %2724, %2719
  %2726 = fdiv fast float %2634, %2719
  %2727 = fmul fast float %2633, 0x3FE279A760000000
  %2728 = fmul fast float %2725, %2620
  %2729 = fmul fast float %2726, %2634
  %2730 = fmul fast float %2723, %2622
  %2731 = fadd fast float %2728, %2730
  %2732 = fsub fast float %2731, %2729
  %2733 = call float @dx.op.unary.f32(i32 6, float %2732)  ; FAbs(value)
  %2734 = fadd fast float %2733, 0x3DDB7CDFE0000000
  %2735 = fdiv fast float %2727, %2734
  br label %2736

; <label>:2736                                    ; preds = %2721, %2711
  %2737 = phi float [ %2735, %2721 ], [ 1.000000e+00, %2711 ]
  %2738 = call float @dx.op.binary.f32(i32 36, float %2737, float %2713)  ; FMin(a,b)
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2740 = fcmp fast olt float %2739, 1.000000e+00
  br i1 %2740, label %2741, label %2751

; <label>:2741                                    ; preds = %2736
  %2742 = fmul fast float %2739, %2620
  %2743 = fmul fast float %2739, %2634
  %2744 = fmul fast float %2739, %2622
  %2745 = fmul fast float %2739, %2637
  %2746 = fmul fast float %2739, %2649
  %2747 = fmul fast float %2739, %2639
  %2748 = fmul fast float %2739, %2652
  %2749 = fmul fast float %2739, %2664
  %2750 = fmul fast float %2739, %2654
  br label %2751

; <label>:2751                                    ; preds = %2741, %2736
  %2752 = phi float [ %2748, %2741 ], [ %2652, %2736 ]
  %2753 = phi float [ %2749, %2741 ], [ %2664, %2736 ]
  %2754 = phi float [ %2750, %2741 ], [ %2654, %2736 ]
  %2755 = phi float [ %2745, %2741 ], [ %2637, %2736 ]
  %2756 = phi float [ %2746, %2741 ], [ %2649, %2736 ]
  %2757 = phi float [ %2747, %2741 ], [ %2639, %2736 ]
  %2758 = phi float [ %2742, %2741 ], [ %2620, %2736 ]
  %2759 = phi float [ %2743, %2741 ], [ %2634, %2736 ]
  %2760 = phi float [ %2744, %2741 ], [ %2622, %2736 ]
  %2761 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2633)  ; FMax(a,b)
  %2762 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2648)  ; FMax(a,b)
  %2763 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2663)  ; FMax(a,b)
  %2764 = fcmp fast oge float %2421, 0.000000e+00
  %2765 = and i1 %2764, %2189
  %2766 = fcmp fast ole float %2421, 1.000000e+00
  %2767 = and i1 %2766, %2765
  %2768 = fcmp fast oge float %2422, 0.000000e+00
  %2769 = and i1 %2768, %2767
  %2770 = fcmp fast ole float %2422, 1.000000e+00
  %2771 = and i1 %2770, %2769
  br i1 %2771, label %2772, label %2917, !dx.controlflow.hints !89

; <label>:2772                                    ; preds = %2751
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 2
  %2775 = extractvalue %dx.types.CBufRet.f32 %2773, 3
  %2776 = fmul fast float %2774, %2421
  %2777 = fmul fast float %2775, %2422
  %2778 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2779 = call float @dx.op.unary.f32(i32 27, float %2777)  ; Round_ni(value)
  %2780 = fptosi float %2778 to i32
  %2781 = fptosi float %2779 to i32
  %2782 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %35, i32 0, i32 %2780, i32 %2781, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2783 = extractvalue %dx.types.ResRet.i32 %2782, 0
  %2784 = and i32 %2783, 65535
  %2785 = lshr i32 %2783, 16
  %2786 = icmp eq i32 %2784, 65535
  br i1 %2786, label %2823, label %2787

; <label>:2787                                    ; preds = %2772
  %2788 = extractvalue %dx.types.CBufRet.f32 %2187, 1
  %2789 = extractvalue %dx.types.CBufRet.f32 %2773, 0
  %2790 = extractvalue %dx.types.CBufRet.f32 %2773, 1
  %2791 = fmul fast float %2789, %2421
  %2792 = fmul fast float %2790, %2422
  %2793 = fmul fast float %2791, 1.250000e-01
  %2794 = fmul fast float %2792, 1.250000e-01
  %2795 = call float @dx.op.unary.f32(i32 27, float %2793)  ; Round_ni(value)
  %2796 = call float @dx.op.unary.f32(i32 27, float %2794)  ; Round_ni(value)
  %2797 = fmul fast float %2795, 8.000000e+00
  %2798 = fmul fast float %2796, 8.000000e+00
  %2799 = and i32 %2783, 255
  %2800 = lshr i32 %2783, 8
  %2801 = and i32 %2800, 255
  %2802 = mul nuw nsw i32 %2799, 9
  %2803 = uitofp i32 %2802 to float
  %2804 = mul nuw nsw i32 %2801, 9
  %2805 = uitofp i32 %2804 to float
  %2806 = fadd fast float %2803, 5.000000e-01
  %2807 = fadd fast float %2806, %2791
  %2808 = fsub fast float %2807, %2797
  %2809 = fadd fast float %2805, 5.000000e-01
  %2810 = fadd fast float %2809, %2792
  %2811 = fsub fast float %2810, %2798
  %2812 = fdiv fast float %2808, %2188
  %2813 = fdiv fast float %2811, %2788
  %2814 = fmul fast float %2449, 4.375000e-01
  %2815 = fadd fast float %2814, 3.125000e-02
  %2816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2812, float %2813, float %2815, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2817 = extractvalue %dx.types.ResRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.ResRet.f32 %2816, 1
  %2819 = extractvalue %dx.types.ResRet.f32 %2816, 2
  %2820 = fadd fast float %2817, %2761
  %2821 = fadd fast float %2818, %2762
  %2822 = fadd fast float %2819, %2763
  br label %2823

; <label>:2823                                    ; preds = %2787, %2772
  %2824 = phi float [ %2822, %2787 ], [ %2763, %2772 ]
  %2825 = phi float [ %2821, %2787 ], [ %2762, %2772 ]
  %2826 = phi float [ %2820, %2787 ], [ %2761, %2772 ]
  %2827 = icmp eq i32 %2785, 65535
  br i1 %2827, label %2917, label %2828

; <label>:2828                                    ; preds = %2823
  %2829 = extractvalue %dx.types.CBufRet.f32 %2187, 1
  %2830 = extractvalue %dx.types.CBufRet.f32 %2773, 0
  %2831 = extractvalue %dx.types.CBufRet.f32 %2773, 1
  %2832 = fmul fast float %2830, %2421
  %2833 = fmul fast float %2831, %2422
  %2834 = fmul fast float %2832, 1.250000e-01
  %2835 = fmul fast float %2833, 1.250000e-01
  %2836 = call float @dx.op.unary.f32(i32 27, float %2834)  ; Round_ni(value)
  %2837 = call float @dx.op.unary.f32(i32 27, float %2835)  ; Round_ni(value)
  %2838 = fmul fast float %2836, 8.000000e+00
  %2839 = fmul fast float %2837, 8.000000e+00
  %2840 = fsub fast float %2832, %2838
  %2841 = fsub fast float %2833, %2839
  %2842 = fadd fast float %2840, 5.000000e-01
  %2843 = fadd fast float %2841, 5.000000e-01
  %2844 = and i32 %2785, 255
  %2845 = lshr i32 %2783, 24
  %2846 = mul nuw nsw i32 %2844, 9
  %2847 = uitofp i32 %2846 to float
  %2848 = mul nuw nsw i32 %2845, 9
  %2849 = uitofp i32 %2848 to float
  %2850 = fadd fast float %2842, %2847
  %2851 = fadd fast float %2843, %2849
  %2852 = fdiv fast float %2850, %2188
  %2853 = fdiv fast float %2851, %2829
  %2854 = fmul fast float %2449, 4.375000e-01
  %2855 = fadd fast float %2854, 3.125000e-02
  %2856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2852, float %2853, float %2855, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2857 = extractvalue %dx.types.ResRet.f32 %2856, 0
  %2858 = extractvalue %dx.types.ResRet.f32 %2856, 1
  %2859 = extractvalue %dx.types.ResRet.f32 %2856, 2
  %2860 = fadd fast float %2854, 5.312500e-01
  %2861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2852, float %2853, float %2860, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2862 = extractvalue %dx.types.ResRet.f32 %2861, 0
  %2863 = extractvalue %dx.types.ResRet.f32 %2861, 1
  %2864 = extractvalue %dx.types.ResRet.f32 %2861, 2
  %2865 = fmul fast float %2862, 2.000000e+00
  %2866 = fmul fast float %2863, 2.000000e+00
  %2867 = fmul fast float %2864, 2.000000e+00
  %2868 = fadd fast float %2865, -1.000000e+00
  %2869 = fadd fast float %2866, -1.000000e+00
  %2870 = fadd fast float %2867, -1.000000e+00
  %2871 = fmul fast float %2868, %2868
  %2872 = fmul fast float %2869, %2869
  %2873 = fadd fast float %2871, %2872
  %2874 = fmul fast float %2870, %2870
  %2875 = fadd fast float %2873, %2874
  %2876 = call float @dx.op.unary.f32(i32 24, float %2875)  ; Sqrt(value)
  %2877 = fcmp fast ogt float %2876, 0.000000e+00
  br i1 %2877, label %2878, label %2882

; <label>:2878                                    ; preds = %2828
  %2879 = fdiv fast float %2868, %2876
  %2880 = fdiv fast float %2869, %2876
  %2881 = fdiv fast float %2870, %2876
  br label %2882

; <label>:2882                                    ; preds = %2878, %2828
  %2883 = phi float [ %2879, %2878 ], [ 0.000000e+00, %2828 ]
  %2884 = phi float [ %2880, %2878 ], [ 0.000000e+00, %2828 ]
  %2885 = phi float [ %2881, %2878 ], [ 0.000000e+00, %2828 ]
  %2886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2887 = extractvalue %dx.types.CBufRet.f32 %2886, 0
  %2888 = extractvalue %dx.types.CBufRet.f32 %2886, 1
  %2889 = fsub fast float %2039, %2887
  %2890 = fsub fast float %2040, %2888
  %2891 = fmul fast float %2889, %2889
  %2892 = fmul fast float %2890, %2890
  %2893 = fadd fast float %2891, %2892
  %2894 = call float @dx.op.unary.f32(i32 24, float %2893)  ; Sqrt(value)
  %2895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2896 = extractvalue %dx.types.CBufRet.f32 %2895, 0
  %2897 = extractvalue %dx.types.CBufRet.f32 %2895, 1
  %2898 = fsub fast float %2894, %2896
  %2899 = fdiv fast float %2898, %2897
  %2900 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  %2901 = fmul fast float %2900, 2.000000e+00
  %2902 = fsub fast float 3.000000e+00, %2901
  %2903 = fmul fast float %2900, %2900
  %2904 = fmul fast float %2903, %2902
  %2905 = call float @dx.op.dot3.f32(i32 55, float %2883, float %2884, float %2885, float %2012, float %2013, float %2014)  ; Dot3(ax,ay,az,bx,by,bz)
  %2906 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2905)  ; FMax(a,b)
  %2907 = fmul fast float %2906, 0x400C5BF8A0000000
  %2908 = fmul fast float %2904, %2857
  %2909 = fmul fast float %2908, %2907
  %2910 = fadd fast float %2909, %2826
  %2911 = fmul fast float %2904, %2858
  %2912 = fmul fast float %2911, %2907
  %2913 = fadd fast float %2912, %2825
  %2914 = fmul fast float %2904, %2859
  %2915 = fmul fast float %2914, %2907
  %2916 = fadd fast float %2915, %2824
  br label %2917

; <label>:2917                                    ; preds = %2882, %2823, %2751
  %2918 = phi float [ %2916, %2882 ], [ %2824, %2823 ], [ %2763, %2751 ]
  %2919 = phi float [ %2913, %2882 ], [ %2825, %2823 ], [ %2762, %2751 ]
  %2920 = phi float [ %2910, %2882 ], [ %2826, %2823 ], [ %2761, %2751 ]
  %2921 = fcmp fast ogt float %2408, %2445
  %2922 = and i1 %2764, %2921
  %2923 = and i1 %2766, %2922
  %2924 = and i1 %2768, %2923
  %2925 = and i1 %2770, %2924
  br i1 %2925, label %2926, label %2983, !dx.controlflow.hints !90

; <label>:2926                                    ; preds = %2917
  %2927 = fmul fast float %2447, 0x3FC24924A0000000
  %2928 = fsub fast float %2408, %2445
  %2929 = fdiv fast float %2928, %2927
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2932 = extractvalue %dx.types.CBufRet.f32 %2931, 0
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 0
  %2935 = extractvalue %dx.types.CBufRet.f32 %2933, 1
  %2936 = extractvalue %dx.types.CBufRet.f32 %2933, 2
  %2937 = fsub fast float %2932, %2920
  %2938 = fsub fast float %2934, %2758
  %2939 = fsub fast float %2935, %2759
  %2940 = fsub fast float %2936, %2760
  %2941 = fmul fast float %2937, %2930
  %2942 = fmul fast float %2938, %2930
  %2943 = fmul fast float %2939, %2930
  %2944 = fmul fast float %2940, %2930
  %2945 = fadd fast float %2941, %2920
  %2946 = fadd fast float %2942, %2758
  %2947 = fadd fast float %2943, %2759
  %2948 = fadd fast float %2944, %2760
  %2949 = extractvalue %dx.types.CBufRet.f32 %2931, 1
  %2950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2951 = extractvalue %dx.types.CBufRet.f32 %2950, 0
  %2952 = extractvalue %dx.types.CBufRet.f32 %2950, 1
  %2953 = extractvalue %dx.types.CBufRet.f32 %2950, 2
  %2954 = fsub fast float %2949, %2919
  %2955 = fsub fast float %2951, %2755
  %2956 = fsub fast float %2952, %2756
  %2957 = fsub fast float %2953, %2757
  %2958 = fmul fast float %2954, %2930
  %2959 = fmul fast float %2955, %2930
  %2960 = fmul fast float %2956, %2930
  %2961 = fmul fast float %2957, %2930
  %2962 = fadd fast float %2958, %2919
  %2963 = fadd fast float %2959, %2755
  %2964 = fadd fast float %2960, %2756
  %2965 = fadd fast float %2961, %2757
  %2966 = extractvalue %dx.types.CBufRet.f32 %2931, 2
  %2967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2967, 0
  %2969 = extractvalue %dx.types.CBufRet.f32 %2967, 1
  %2970 = extractvalue %dx.types.CBufRet.f32 %2967, 2
  %2971 = fsub fast float %2966, %2918
  %2972 = fsub fast float %2968, %2752
  %2973 = fsub fast float %2969, %2753
  %2974 = fsub fast float %2970, %2754
  %2975 = fmul fast float %2971, %2930
  %2976 = fmul fast float %2972, %2930
  %2977 = fmul fast float %2973, %2930
  %2978 = fmul fast float %2974, %2930
  %2979 = fadd fast float %2975, %2918
  %2980 = fadd fast float %2976, %2752
  %2981 = fadd fast float %2977, %2753
  %2982 = fadd fast float %2978, %2754
  br label %2983

; <label>:2983                                    ; preds = %2926, %2917
  %2984 = phi float [ %2979, %2926 ], [ %2918, %2917 ]
  %2985 = phi float [ %2980, %2926 ], [ %2752, %2917 ]
  %2986 = phi float [ %2981, %2926 ], [ %2753, %2917 ]
  %2987 = phi float [ %2982, %2926 ], [ %2754, %2917 ]
  %2988 = phi float [ %2962, %2926 ], [ %2919, %2917 ]
  %2989 = phi float [ %2963, %2926 ], [ %2755, %2917 ]
  %2990 = phi float [ %2964, %2926 ], [ %2756, %2917 ]
  %2991 = phi float [ %2965, %2926 ], [ %2757, %2917 ]
  %2992 = phi float [ %2945, %2926 ], [ %2920, %2917 ]
  %2993 = phi float [ %2946, %2926 ], [ %2758, %2917 ]
  %2994 = phi float [ %2947, %2926 ], [ %2759, %2917 ]
  %2995 = phi float [ %2948, %2926 ], [ %2760, %2917 ]
  %2996 = extractvalue %dx.types.CBufRet.f32 %2570, 3
  %2997 = fmul fast float %2996, %2992
  %2998 = fmul fast float %2996, %2988
  %2999 = fmul fast float %2996, %2984
  %3000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3001 = extractvalue %dx.types.CBufRet.f32 %3000, 3
  %3002 = fmul fast float %2997, %3001
  %3003 = fmul fast float %2998, %3001
  %3004 = fmul fast float %2999, %3001
  %3005 = fmul fast float %2993, 1.500000e+00
  %3006 = fmul fast float %3005, %2996
  %3007 = fmul fast float %3006, %3001
  %3008 = fmul fast float %2994, 1.500000e+00
  %3009 = fmul fast float %3008, %2996
  %3010 = fmul fast float %3009, %3001
  %3011 = fmul fast float %2995, 1.500000e+00
  %3012 = fmul fast float %3011, %2996
  %3013 = fmul fast float %3012, %3001
  %3014 = fmul fast float %2989, 1.500000e+00
  %3015 = fmul fast float %3014, %2996
  %3016 = fmul fast float %3015, %3001
  %3017 = fmul fast float %2990, 1.500000e+00
  %3018 = fmul fast float %3017, %2996
  %3019 = fmul fast float %3018, %3001
  %3020 = fmul fast float %2991, 1.500000e+00
  %3021 = fmul fast float %3020, %2996
  %3022 = fmul fast float %3021, %3001
  %3023 = fmul fast float %2985, 1.500000e+00
  %3024 = fmul fast float %3023, %2996
  %3025 = fmul fast float %3024, %3001
  %3026 = fmul fast float %2986, 1.500000e+00
  %3027 = fmul fast float %3026, %2996
  %3028 = fmul fast float %3027, %3001
  %3029 = fmul fast float %2987, 1.500000e+00
  %3030 = fmul fast float %3029, %2996
  %3031 = fmul fast float %3030, %3001
  %3032 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3002)  ; FMax(a,b)
  %3033 = call float @dx.op.dot3.f32(i32 55, float %3007, float %3010, float %3013, float %3007, float %3010, float %3013)  ; Dot3(ax,ay,az,bx,by,bz)
  %3034 = fcmp fast oeq float %3033, 0.000000e+00
  %3035 = fcmp fast oeq float %3032, 0.000000e+00
  %3036 = or i1 %3035, %3034
  br i1 %3036, label %3066, label %3037

; <label>:3037                                    ; preds = %2983
  %3038 = fsub fast float -0.000000e+00, %3013
  %3039 = fsub fast float -0.000000e+00, %3007
  %3040 = call float @dx.op.unary.f32(i32 24, float %3033)  ; Sqrt(value)
  %3041 = fdiv fast float %3040, %3032
  %3042 = fcmp fast ogt float %3041, 0x3FFB6F8900000000
  %3043 = select i1 %3042, float 0x3FFB6F8900000000, float %3041
  %3044 = fmul fast float %3043, 0x3FE8A23460000000
  %3045 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3046 = call float @dx.op.binary.f32(i32 35, float %3043, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3047 = fmul fast float %3045, %3032
  %3048 = fmul fast float %3046, 0x3FF279A740000000
  %3049 = fadd fast float %3048, -1.000000e+00
  %3050 = call float @dx.op.dot3.f32(i32 55, float %3038, float %3039, float %3010, float %3038, float %3039, float %3010)  ; Dot3(ax,ay,az,bx,by,bz)
  %3051 = call float @dx.op.unary.f32(i32 25, float %3050)  ; Rsqrt(value)
  %3052 = fmul fast float %3051, %3038
  %3053 = fmul fast float %3051, %3039
  %3054 = fmul fast float %3051, %3010
  %3055 = fmul fast float %3049, %3049
  %3056 = fsub fast float 1.000000e+00, %3055
  %3057 = fmul fast float %3046, 0x40005F8BE0000000
  %3058 = fsub fast float 0x400C5BF8A0000000, %3057
  %3059 = fdiv fast float %3047, %3058
  %3060 = fmul fast float %3059, 0x3FEE31C3C0000000
  %3061 = fmul fast float %3060, %3056
  %3062 = fmul fast float %3046, 0x3FDACB7480000000
  %3063 = fadd fast float %3062, 0xBFD7347680000000
  %3064 = fmul fast float %3063, %3059
  %3065 = fmul fast float %3064, %3056
  br label %3066

; <label>:3066                                    ; preds = %3037, %2983
  %3067 = phi float [ %3052, %3037 ], [ 0.000000e+00, %2983 ]
  %3068 = phi float [ %3053, %3037 ], [ 0.000000e+00, %2983 ]
  %3069 = phi float [ %3054, %3037 ], [ 0.000000e+00, %2983 ]
  %3070 = phi float [ %3061, %3037 ], [ 0.000000e+00, %2983 ]
  %3071 = phi float [ %3065, %3037 ], [ 0.000000e+00, %2983 ]
  %3072 = call float @dx.op.dot3.f32(i32 55, float %3067, float %3068, float %3069, float %2012, float %2013, float %2014)  ; Dot3(ax,ay,az,bx,by,bz)
  %3073 = fmul fast float %3072, 0x3FDF454380000000
  %3074 = fmul fast float %3072, %3072
  %3075 = fmul fast float %3074, 0x3FEE471020000000
  %3076 = fadd fast float %3075, 0xBFD42F6020000000
  %3077 = fmul fast float %3032, 0x3FD20DD760000000
  %3078 = fmul fast float %3076, %3071
  %3079 = fadd fast float %3078, %3077
  %3080 = fmul fast float %3073, %3070
  %3081 = fadd fast float %3079, %3080
  %3082 = fsub fast float %3079, %3080
  %3083 = call float @dx.op.dot3.f32(i32 55, float %3067, float %3068, float %3069, float %2028, float %2029, float %2030)  ; Dot3(ax,ay,az,bx,by,bz)
  %3084 = fmul fast float %3083, 0x3FDF454380000000
  %3085 = fmul fast float %3083, %3083
  %3086 = fmul fast float %3085, 0x3FEE471020000000
  %3087 = fadd fast float %3086, 0xBFD42F6020000000
  %3088 = call float @dx.op.dot3.f32(i32 55, float %3032, float %3070, float %3071, float 0x3FD20DD760000000, float %3084, float %3087)  ; Dot3(ax,ay,az,bx,by,bz)
  %3089 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3003)  ; FMax(a,b)
  %3090 = call float @dx.op.dot3.f32(i32 55, float %3016, float %3019, float %3022, float %3016, float %3019, float %3022)  ; Dot3(ax,ay,az,bx,by,bz)
  %3091 = fcmp fast oeq float %3090, 0.000000e+00
  %3092 = fcmp fast oeq float %3089, 0.000000e+00
  %3093 = or i1 %3092, %3091
  br i1 %3093, label %3123, label %3094

; <label>:3094                                    ; preds = %3066
  %3095 = fsub fast float -0.000000e+00, %3022
  %3096 = fsub fast float -0.000000e+00, %3016
  %3097 = call float @dx.op.unary.f32(i32 24, float %3090)  ; Sqrt(value)
  %3098 = fdiv fast float %3097, %3089
  %3099 = fcmp fast ogt float %3098, 0x3FFB6F8900000000
  %3100 = select i1 %3099, float 0x3FFB6F8900000000, float %3098
  %3101 = fmul fast float %3100, 0x3FE8A23460000000
  %3102 = call float @dx.op.unary.f32(i32 7, float %3101)  ; Saturate(value)
  %3103 = call float @dx.op.binary.f32(i32 35, float %3100, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3104 = fmul fast float %3102, %3089
  %3105 = fmul fast float %3103, 0x3FF279A740000000
  %3106 = fadd fast float %3105, -1.000000e+00
  %3107 = call float @dx.op.dot3.f32(i32 55, float %3095, float %3096, float %3019, float %3095, float %3096, float %3019)  ; Dot3(ax,ay,az,bx,by,bz)
  %3108 = call float @dx.op.unary.f32(i32 25, float %3107)  ; Rsqrt(value)
  %3109 = fmul fast float %3108, %3095
  %3110 = fmul fast float %3108, %3096
  %3111 = fmul fast float %3108, %3019
  %3112 = fmul fast float %3106, %3106
  %3113 = fsub fast float 1.000000e+00, %3112
  %3114 = fmul fast float %3103, 0x40005F8BE0000000
  %3115 = fsub fast float 0x400C5BF8A0000000, %3114
  %3116 = fdiv fast float %3104, %3115
  %3117 = fmul fast float %3116, 0x3FEE31C3C0000000
  %3118 = fmul fast float %3117, %3113
  %3119 = fmul fast float %3103, 0x3FDACB7480000000
  %3120 = fadd fast float %3119, 0xBFD7347680000000
  %3121 = fmul fast float %3120, %3116
  %3122 = fmul fast float %3121, %3113
  br label %3123

; <label>:3123                                    ; preds = %3094, %3066
  %3124 = phi float [ %3109, %3094 ], [ 0.000000e+00, %3066 ]
  %3125 = phi float [ %3110, %3094 ], [ 0.000000e+00, %3066 ]
  %3126 = phi float [ %3111, %3094 ], [ 0.000000e+00, %3066 ]
  %3127 = phi float [ %3118, %3094 ], [ 0.000000e+00, %3066 ]
  %3128 = phi float [ %3122, %3094 ], [ 0.000000e+00, %3066 ]
  %3129 = call float @dx.op.dot3.f32(i32 55, float %3124, float %3125, float %3126, float %2012, float %2013, float %2014)  ; Dot3(ax,ay,az,bx,by,bz)
  %3130 = fmul fast float %3129, 0x3FDF454380000000
  %3131 = fmul fast float %3129, %3129
  %3132 = fmul fast float %3131, 0x3FEE471020000000
  %3133 = fadd fast float %3132, 0xBFD42F6020000000
  %3134 = fmul fast float %3089, 0x3FD20DD760000000
  %3135 = fmul fast float %3133, %3128
  %3136 = fadd fast float %3135, %3134
  %3137 = fmul fast float %3130, %3127
  %3138 = fadd fast float %3136, %3137
  %3139 = fsub fast float %3136, %3137
  %3140 = call float @dx.op.dot3.f32(i32 55, float %3124, float %3125, float %3126, float %2028, float %2029, float %2030)  ; Dot3(ax,ay,az,bx,by,bz)
  %3141 = fmul fast float %3140, 0x3FDF454380000000
  %3142 = fmul fast float %3140, %3140
  %3143 = fmul fast float %3142, 0x3FEE471020000000
  %3144 = fadd fast float %3143, 0xBFD42F6020000000
  %3145 = call float @dx.op.dot3.f32(i32 55, float %3089, float %3127, float %3128, float 0x3FD20DD760000000, float %3141, float %3144)  ; Dot3(ax,ay,az,bx,by,bz)
  %3146 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3004)  ; FMax(a,b)
  %3147 = call float @dx.op.dot3.f32(i32 55, float %3025, float %3028, float %3031, float %3025, float %3028, float %3031)  ; Dot3(ax,ay,az,bx,by,bz)
  %3148 = fcmp fast oeq float %3147, 0.000000e+00
  %3149 = fcmp fast oeq float %3146, 0.000000e+00
  %3150 = or i1 %3149, %3148
  br i1 %3150, label %3180, label %3151

; <label>:3151                                    ; preds = %3123
  %3152 = fsub fast float -0.000000e+00, %3031
  %3153 = fsub fast float -0.000000e+00, %3025
  %3154 = call float @dx.op.unary.f32(i32 24, float %3147)  ; Sqrt(value)
  %3155 = fdiv fast float %3154, %3146
  %3156 = fcmp fast ogt float %3155, 0x3FFB6F8900000000
  %3157 = select i1 %3156, float 0x3FFB6F8900000000, float %3155
  %3158 = fmul fast float %3157, 0x3FE8A23460000000
  %3159 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  %3160 = call float @dx.op.binary.f32(i32 35, float %3157, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3161 = fmul fast float %3159, %3146
  %3162 = fmul fast float %3160, 0x3FF279A740000000
  %3163 = fadd fast float %3162, -1.000000e+00
  %3164 = call float @dx.op.dot3.f32(i32 55, float %3152, float %3153, float %3028, float %3152, float %3153, float %3028)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = call float @dx.op.unary.f32(i32 25, float %3164)  ; Rsqrt(value)
  %3166 = fmul fast float %3165, %3152
  %3167 = fmul fast float %3165, %3153
  %3168 = fmul fast float %3165, %3028
  %3169 = fmul fast float %3163, %3163
  %3170 = fsub fast float 1.000000e+00, %3169
  %3171 = fmul fast float %3160, 0x40005F8BE0000000
  %3172 = fsub fast float 0x400C5BF8A0000000, %3171
  %3173 = fdiv fast float %3161, %3172
  %3174 = fmul fast float %3173, 0x3FEE31C3C0000000
  %3175 = fmul fast float %3174, %3170
  %3176 = fmul fast float %3160, 0x3FDACB7480000000
  %3177 = fadd fast float %3176, 0xBFD7347680000000
  %3178 = fmul fast float %3177, %3173
  %3179 = fmul fast float %3178, %3170
  br label %3180

; <label>:3180                                    ; preds = %3151, %3123
  %3181 = phi float [ %3166, %3151 ], [ 0.000000e+00, %3123 ]
  %3182 = phi float [ %3167, %3151 ], [ 0.000000e+00, %3123 ]
  %3183 = phi float [ %3168, %3151 ], [ 0.000000e+00, %3123 ]
  %3184 = phi float [ %3175, %3151 ], [ 0.000000e+00, %3123 ]
  %3185 = phi float [ %3179, %3151 ], [ 0.000000e+00, %3123 ]
  %3186 = call float @dx.op.dot3.f32(i32 55, float %3181, float %3182, float %3183, float %2012, float %2013, float %2014)  ; Dot3(ax,ay,az,bx,by,bz)
  %3187 = fmul fast float %3186, 0x3FDF454380000000
  %3188 = fmul fast float %3186, %3186
  %3189 = fmul fast float %3188, 0x3FEE471020000000
  %3190 = fadd fast float %3189, 0xBFD42F6020000000
  %3191 = fmul fast float %3146, 0x3FD20DD760000000
  %3192 = fmul fast float %3190, %3185
  %3193 = fadd fast float %3192, %3191
  %3194 = fmul fast float %3187, %3184
  %3195 = fadd fast float %3193, %3194
  %3196 = fsub fast float %3193, %3194
  %3197 = call float @dx.op.dot3.f32(i32 55, float %3181, float %3182, float %3183, float %2028, float %2029, float %2030)  ; Dot3(ax,ay,az,bx,by,bz)
  %3198 = fmul fast float %3197, 0x3FDF454380000000
  %3199 = fmul fast float %3197, %3197
  %3200 = fmul fast float %3199, 0x3FEE471020000000
  %3201 = fadd fast float %3200, 0xBFD42F6020000000
  %3202 = call float @dx.op.dot3.f32(i32 55, float %3146, float %3184, float %3185, float 0x3FD20DD760000000, float %3198, float %3201)  ; Dot3(ax,ay,az,bx,by,bz)
  %3203 = call float @dx.op.binary.f32(i32 35, float %3081, float 0.000000e+00)  ; FMax(a,b)
  %3204 = call float @dx.op.binary.f32(i32 35, float %3138, float 0.000000e+00)  ; FMax(a,b)
  %3205 = call float @dx.op.binary.f32(i32 35, float %3195, float 0.000000e+00)  ; FMax(a,b)
  %3206 = call float @dx.op.binary.f32(i32 35, float %3082, float 0.000000e+00)  ; FMax(a,b)
  %3207 = call float @dx.op.binary.f32(i32 35, float %3139, float 0.000000e+00)  ; FMax(a,b)
  %3208 = call float @dx.op.binary.f32(i32 35, float %3196, float 0.000000e+00)  ; FMax(a,b)
  %3209 = call float @dx.op.binary.f32(i32 35, float %3088, float 0.000000e+00)  ; FMax(a,b)
  %3210 = call float @dx.op.binary.f32(i32 35, float %3145, float 0.000000e+00)  ; FMax(a,b)
  %3211 = call float @dx.op.binary.f32(i32 35, float %3202, float 0.000000e+00)  ; FMax(a,b)
  %3212 = fsub fast float %2402, %3203
  %3213 = fsub fast float %2403, %3204
  %3214 = fsub fast float %2404, %3205
  %3215 = fmul fast float %3212, %2080
  %3216 = fmul fast float %3213, %2080
  %3217 = fmul fast float %3214, %2080
  %3218 = fadd fast float %3215, %3203
  %3219 = fadd fast float %3216, %3204
  %3220 = fadd fast float %3217, %3205
  %3221 = fsub fast float %2399, %3206
  %3222 = fsub fast float %2400, %3207
  %3223 = fsub fast float %2401, %3208
  %3224 = fmul fast float %3221, %2080
  %3225 = fmul fast float %3222, %2080
  %3226 = fmul fast float %3223, %2080
  %3227 = fadd fast float %3224, %3206
  %3228 = fadd fast float %3225, %3207
  %3229 = fadd fast float %3226, %3208
  %3230 = fsub fast float %2396, %3209
  %3231 = fsub fast float %2397, %3210
  %3232 = fsub fast float %2398, %3211
  %3233 = fmul fast float %3230, %2080
  %3234 = fmul fast float %3231, %2080
  %3235 = fmul fast float %3232, %2080
  %3236 = fadd fast float %3233, %3209
  %3237 = fadd fast float %3234, %3210
  %3238 = fadd fast float %3235, %3211
  br label %3239

; <label>:3239                                    ; preds = %3180, %2395
  %3240 = phi float [ %3236, %3180 ], [ %2396, %2395 ]
  %3241 = phi float [ %3237, %3180 ], [ %2397, %2395 ]
  %3242 = phi float [ %3238, %3180 ], [ %2398, %2395 ]
  %3243 = phi float [ %3227, %3180 ], [ %2399, %2395 ]
  %3244 = phi float [ %3228, %3180 ], [ %2400, %2395 ]
  %3245 = phi float [ %3229, %3180 ], [ %2401, %2395 ]
  %3246 = phi float [ %3218, %3180 ], [ %2402, %2395 ]
  %3247 = phi float [ %3219, %3180 ], [ %2403, %2395 ]
  %3248 = phi float [ %3220, %3180 ], [ %2404, %2395 ]
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 0
  %3251 = call float @dx.op.binary.f32(i32 36, float %2009, float %3250)  ; FMin(a,b)
  %3252 = fsub fast float 1.000000e+00, %2031
  %3253 = fmul fast float %3251, %3252
  %3254 = fsub fast float 1.000000e+00, %3253
  %3255 = bitcast float %3254 to i32
  %3256 = sub nsw i32 2129859010, %3255
  %3257 = bitcast i32 %3256 to float
  %3258 = call float @dx.op.binary.f32(i32 36, float %2010, float %3250)  ; FMin(a,b)
  %3259 = fmul fast float %3258, %3252
  %3260 = fsub fast float 1.000000e+00, %3259
  %3261 = bitcast float %3260 to i32
  %3262 = sub nsw i32 2129859010, %3261
  %3263 = bitcast i32 %3262 to float
  %3264 = call float @dx.op.binary.f32(i32 36, float %2011, float %3250)  ; FMin(a,b)
  %3265 = fmul fast float %3264, %3252
  %3266 = fsub fast float 1.000000e+00, %3265
  %3267 = bitcast float %3266 to i32
  %3268 = sub nsw i32 2129859010, %3267
  %3269 = bitcast i32 %3268 to float
  %3270 = fmul fast float %3246, %2031
  %3271 = fmul fast float %3270, %3257
  %3272 = fmul fast float %3247, %2031
  %3273 = fmul fast float %3272, %3263
  %3274 = fmul fast float %3248, %2031
  %3275 = fmul fast float %3274, %3269
  %3276 = call float @dx.op.binary.f32(i32 36, float %2015, float %3250)  ; FMin(a,b)
  %3277 = fmul fast float %3276, %3252
  %3278 = fsub fast float 1.000000e+00, %3277
  %3279 = bitcast float %3278 to i32
  %3280 = sub nsw i32 2129859010, %3279
  %3281 = bitcast i32 %3280 to float
  %3282 = call float @dx.op.binary.f32(i32 36, float %2016, float %3250)  ; FMin(a,b)
  %3283 = fmul fast float %3282, %3252
  %3284 = fsub fast float 1.000000e+00, %3283
  %3285 = bitcast float %3284 to i32
  %3286 = sub nsw i32 2129859010, %3285
  %3287 = bitcast i32 %3286 to float
  %3288 = call float @dx.op.binary.f32(i32 36, float %2020, float %3250)  ; FMin(a,b)
  %3289 = fmul fast float %3288, %3252
  %3290 = fsub fast float 1.000000e+00, %3289
  %3291 = bitcast float %3290 to i32
  %3292 = sub nsw i32 2129859010, %3291
  %3293 = bitcast i32 %3292 to float
  %3294 = fmul fast float %3240, %2031
  %3295 = fmul fast float %3294, %3281
  %3296 = fmul fast float %3241, %2031
  %3297 = fmul fast float %3296, %3287
  %3298 = fmul fast float %3242, %2031
  %3299 = fmul fast float %3298, %3293
  %3300 = call float @dx.op.dot3.f32(i32 55, float %3271, float %3273, float %3275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3301 = select i1 %214, float 0.000000e+00, float %3271
  %3302 = select i1 %214, float %3300, float %3273
  %3303 = select i1 %214, float 0.000000e+00, float %3275
  %3304 = call float @dx.op.dot3.f32(i32 55, float %3243, float %3244, float %3245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3305 = select i1 %214, float 0.000000e+00, float %3243
  %3306 = select i1 %214, float %3304, float %3244
  %3307 = select i1 %214, float 0.000000e+00, float %3245
  %3308 = call float @dx.op.dot3.f32(i32 55, float %3295, float %3297, float %3299, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3309 = select i1 %214, float 0.000000e+00, float %3295
  %3310 = select i1 %214, float %3308, float %3297
  %3311 = select i1 %214, float 0.000000e+00, float %3299
  %3312 = fmul fast float %1051, %1051
  %3313 = call float @dx.op.unary.f32(i32 7, float %3312)  ; Saturate(value)
  %3314 = fmul fast float %2022, 9.843750e-01
  %3315 = fmul fast float %2018, 9.843750e-01
  %3316 = fadd fast float %3314, 7.812500e-03
  %3317 = fadd fast float %3315, 7.812500e-03
  %3318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %45, float %3316, float %3317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3319 = extractvalue %dx.types.ResRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.ResRet.f32 %3318, 1
  %3321 = extractvalue %dx.types.ResRet.f32 %3318, 2
  %3322 = extractvalue %dx.types.ResRet.f32 %3318, 3
  %3323 = fsub fast float 1.000000e+00, %3313
  %3324 = fsub fast float %3321, %3319
  %3325 = fsub fast float %3322, %3320
  %3326 = fmul fast float %3324, %3323
  %3327 = fmul fast float %3325, %3323
  %3328 = fadd fast float %3326, %3319
  %3329 = fadd fast float %3327, %3320
  %3330 = fmul fast float %3328, %2015
  %3331 = fmul fast float %3328, %2016
  %3332 = fmul fast float %3328, %2020
  %3333 = fadd fast float %3330, %3329
  %3334 = fadd fast float %3331, %3329
  %3335 = fadd fast float %3332, %3329
  %3336 = fcmp fast ogt float %1645, 0.000000e+00
  br i1 %3336, label %3337, label %3363

; <label>:3337                                    ; preds = %3239
  %3338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1645, float %2022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3339 = extractvalue %dx.types.ResRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.ResRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.ResRet.f32 %3338, 2
  %3342 = fadd fast float %3339, -5.000000e-01
  %3343 = fadd fast float %3340, -5.000000e-01
  %3344 = fadd fast float %3341, -5.000000e-01
  %3345 = fsub fast float 1.000000e+00, %2015
  %3346 = fsub fast float 1.000000e+00, %2016
  %3347 = fsub fast float 1.000000e+00, %2020
  %3348 = fmul fast float %2015, 4.000000e+00
  %3349 = fmul fast float %3348, %3345
  %3350 = fmul fast float %3349, %3342
  %3351 = fmul fast float %2016, 4.000000e+00
  %3352 = fmul fast float %3351, %3346
  %3353 = fmul fast float %3352, %3343
  %3354 = fmul fast float %2020, 4.000000e+00
  %3355 = fmul fast float %3354, %3347
  %3356 = fmul fast float %3355, %3344
  %3357 = fadd fast float %3350, %3333
  %3358 = fadd fast float %3353, %3334
  %3359 = fadd fast float %3356, %3335
  %3360 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3361 = call float @dx.op.unary.f32(i32 7, float %3358)  ; Saturate(value)
  %3362 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  br label %3363

; <label>:3363                                    ; preds = %3337, %3239
  %3364 = phi float [ %3360, %3337 ], [ %3333, %3239 ]
  %3365 = phi float [ %3361, %3337 ], [ %3334, %3239 ]
  %3366 = phi float [ %3362, %3337 ], [ %3335, %3239 ]
  %3367 = call float @dx.op.binary.f32(i32 35, float %3365, float %3366)  ; FMax(a,b)
  %3368 = call float @dx.op.binary.f32(i32 35, float %3364, float %3367)  ; FMax(a,b)
  %3369 = fsub fast float 1.000000e+00, %3368
  %3370 = call float @dx.op.dot3.f32(i32 55, float %2009, float %2010, float %2011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3371 = fcmp fast ogt float %3370, 0x3E7FF19E20000000
  %3372 = fdiv fast float 1.000000e+00, %3370
  %3373 = select i1 %3371, float %3372, float 0.000000e+00
  %3374 = fmul fast float %3373, %2009
  %3375 = fmul fast float %3373, %2010
  %3376 = fmul fast float %3373, %2011
  %3377 = fadd fast float %3374, -1.000000e+00
  %3378 = fadd fast float %3375, -1.000000e+00
  %3379 = fadd fast float %3376, -1.000000e+00
  %3380 = fmul fast float %3377, 5.000000e-01
  %3381 = fmul fast float %3378, 5.000000e-01
  %3382 = fmul fast float %3379, 5.000000e-01
  %3383 = fadd fast float %3380, 1.000000e+00
  %3384 = fadd fast float %3381, 1.000000e+00
  %3385 = fadd fast float %3382, 1.000000e+00
  %3386 = call float @dx.op.binary.f32(i32 35, float %2022, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3387 = fdiv fast float %1051, %3386
  %3388 = fcmp fast olt float %1718, 1.270000e+02
  %3389 = fcmp fast olt float %1719, 1.270000e+02
  %3390 = fcmp fast olt float %1720, 1.270000e+02
  %3391 = fmul fast float %1718, 0xBFF7154760000000
  %3392 = fmul fast float %3391, %3387
  %3393 = fmul fast float %1719, 0xBFF7154760000000
  %3394 = fmul fast float %3393, %3387
  %3395 = fmul fast float %1720, 0xBFF7154760000000
  %3396 = fmul fast float %3395, %3387
  %3397 = call float @dx.op.unary.f32(i32 21, float %3392)  ; Exp(value)
  %3398 = call float @dx.op.unary.f32(i32 21, float %3394)  ; Exp(value)
  %3399 = call float @dx.op.unary.f32(i32 21, float %3396)  ; Exp(value)
  %3400 = call float @dx.op.unary.f32(i32 7, float %3397)  ; Saturate(value)
  %3401 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3402 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  %3403 = select i1 %3388, float %3400, float 0.000000e+00
  %3404 = select i1 %3389, float %3401, float 0.000000e+00
  %3405 = select i1 %3390, float %3402, float 0.000000e+00
  %3406 = fmul fast float %3403, %3369
  %3407 = fmul fast float %3404, %3369
  %3408 = fmul fast float %3405, %3369
  %3409 = fadd fast float %3406, -1.000000e+00
  %3410 = fadd fast float %3407, -1.000000e+00
  %3411 = fadd fast float %3408, -1.000000e+00
  %3412 = fmul fast float %3409, %1668
  %3413 = fmul fast float %3410, %1668
  %3414 = fmul fast float %3411, %1668
  %3415 = fmul fast float %3364, %3309
  %3416 = fmul fast float %3365, %3310
  %3417 = fmul fast float %3366, %3311
  %3418 = fsub fast float 1.000000e+00, %2022
  %3419 = bitcast float %3418 to i32
  %3420 = sitofp i32 %3419 to float
  %3421 = fmul fast float %3420, 5.000000e+00
  %3422 = fadd fast float %3421, 0xC1EFBF8940000000
  %3423 = fptosi float %3422 to i32
  %3424 = bitcast i32 %3423 to float
  %3425 = fmul fast float %3424, %1644
  %3426 = fmul fast float %3301, %3425
  %3427 = fmul fast float %3426, %3369
  %3428 = fmul fast float %3427, %3383
  %3429 = fmul fast float %3302, %3425
  %3430 = fmul fast float %3429, %3369
  %3431 = fmul fast float %3430, %3384
  %3432 = fmul fast float %3303, %3425
  %3433 = fmul fast float %3432, %3369
  %3434 = fmul fast float %3433, %3385
  %3435 = fadd fast float %3415, %1649
  %3436 = fadd fast float %3435, %3428
  %3437 = fmul fast float %3436, %1668
  %3438 = fadd fast float %3416, %1650
  %3439 = fadd fast float %3438, %3431
  %3440 = fmul fast float %3439, %1668
  %3441 = fadd fast float %3417, %1651
  %3442 = fadd fast float %3441, %3434
  %3443 = fmul fast float %3442, %1668
  %3444 = fmul fast float %2016, 0x4012D0A400000000
  %3445 = fadd fast float %3414, 1.000000e+00
  %3446 = fadd fast float %3413, 1.000000e+00
  %3447 = fadd fast float %3412, 1.000000e+00
  %3448 = fmul fast float %3369, %3303
  %3449 = fmul fast float %3369, %3302
  %3450 = fmul fast float %3369, %3301
  %3451 = fsub fast float 1.000000e+00, %2018
  %3452 = fmul fast float %3451, %1668
  %3453 = fsub fast float 1.000000e+00, %3452
  %3454 = call float @dx.op.unary.f32(i32 7, float %3453)  ; Saturate(value)
  %3455 = fsub fast float 1.000000e+00, %3454
  %3456 = fadd fast float %3444, 0x3FDB6377A0000000
  %3457 = fmul fast float %3455, %3456
  %3458 = call float @dx.op.dot3.f32(i32 55, float %1736, float %1737, float %1738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3459 = fadd fast float %3457, %3458
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3461 = call float @dx.op.binary.f32(i32 35, float %3460, float 0x3F847AE140000000)  ; FMax(a,b)
  %3462 = fmul fast float %3461, %3461
  %3463 = fmul fast float %3462, %3462
  %3464 = fmul fast float %3463, 0xC00A935000000000
  %3465 = call float @dx.op.unary.f32(i32 21, float %3464)  ; Exp(value)
  %3466 = fsub fast float 1.000000e+00, %3465
  %3467 = fmul fast float %3447, %3305
  %3468 = fmul fast float %3467, %3466
  %3469 = fmul fast float %3446, %3306
  %3470 = fmul fast float %3469, %3466
  %3471 = fmul fast float %3445, %3307
  %3472 = fmul fast float %3471, %3466
  %3473 = fadd fast float %3468, %3450
  %3474 = fmul fast float %3473, %1668
  %3475 = fadd fast float %3470, %3449
  %3476 = fmul fast float %3475, %1668
  %3477 = fadd fast float %3472, %3448
  %3478 = fmul fast float %3477, %1668
  %3479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3480 = extractvalue %dx.types.CBufRet.f32 %3479, 3
  %3481 = fcmp fast oeq float %3480, 0.000000e+00
  br i1 %3481, label %4605, label %3482

; <label>:3482                                    ; preds = %3363
  %3483 = extractvalue %dx.types.CBufRet.f32 %3479, 0
  %3484 = extractvalue %dx.types.CBufRet.f32 %3479, 1
  %3485 = extractvalue %dx.types.CBufRet.f32 %3479, 2
  %3486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3487 = extractvalue %dx.types.CBufRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.CBufRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.CBufRet.f32 %3486, 2
  %3490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3491 = extractvalue %dx.types.CBufRet.f32 %3490, 0
  %3492 = extractvalue %dx.types.CBufRet.f32 %3490, 1
  %3493 = call float @dx.op.dot3.f32(i32 55, float %3487, float %3488, float %3489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3494 = select i1 %214, float %3491, float %3487
  %3495 = select i1 %214, float %3493, float %3488
  %3496 = select i1 %214, float %3492, float %3489
  %3497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.f32 %3497, 2
  %3499 = fmul fast float %3498, %57
  %3500 = fmul fast float %3498, %58
  %3501 = fmul fast float %3498, %59
  %3502 = fadd fast float %3499, %124
  %3503 = fadd fast float %3500, %125
  %3504 = fadd fast float %3501, %126
  %3505 = fcmp fast olt float %3480, 0.000000e+00
  br i1 %3505, label %4127, label %3506

; <label>:3506                                    ; preds = %3482
  %3507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3508 = extractvalue %dx.types.CBufRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.CBufRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.CBufRet.f32 %3507, 2
  %3511 = extractvalue %dx.types.CBufRet.f32 %3507, 3
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.CBufRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.CBufRet.f32 %3512, 2
  %3516 = extractvalue %dx.types.CBufRet.f32 %3512, 3
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.CBufRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.CBufRet.f32 %3517, 2
  %3521 = extractvalue %dx.types.CBufRet.f32 %3517, 3
  %3522 = fmul fast float %3508, %3502
  %3523 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3509, float %3522)  ; FMad(a,b,c)
  %3524 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3510, float %3523)  ; FMad(a,b,c)
  %3525 = fadd fast float %3524, %3511
  %3526 = fmul fast float %3513, %3502
  %3527 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3514, float %3526)  ; FMad(a,b,c)
  %3528 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3515, float %3527)  ; FMad(a,b,c)
  %3529 = fadd fast float %3528, %3516
  %3530 = fmul fast float %3518, %3502
  %3531 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3519, float %3530)  ; FMad(a,b,c)
  %3532 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3520, float %3531)  ; FMad(a,b,c)
  %3533 = fadd fast float %3532, %3521
  %3534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.CBufRet.f32 %3534, 1
  %3537 = extractvalue %dx.types.CBufRet.f32 %3534, 3
  %3538 = fmul fast float %3537, %3525
  %3539 = fmul fast float %3537, %3529
  %3540 = fadd fast float %3538, %3535
  %3541 = fadd fast float %3539, %3536
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.CBufRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.CBufRet.f32 %3542, 3
  %3546 = fmul fast float %3545, %3525
  %3547 = fmul fast float %3545, %3529
  %3548 = fadd fast float %3546, %3543
  %3549 = fadd fast float %3547, %3544
  %3550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3551 = extractvalue %dx.types.CBufRet.f32 %3550, 1
  %3552 = fsub fast float %3551, %3533
  %3553 = extractvalue %dx.types.CBufRet.f32 %3550, 2
  %3554 = fmul fast float %3552, %3553
  %3555 = fsub fast float 1.000000e+00, %3554
  %3556 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3542, 2
  %3558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3559 = extractvalue %dx.types.CBufRet.f32 %3558, 2
  %3560 = fadd fast float %3559, %3557
  %3561 = fcmp fast ogt float %3560, 0.000000e+00
  br i1 %3561, label %3562, label %3586

; <label>:3562                                    ; preds = %3506
  %3563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3564 = extractvalue %dx.types.CBufRet.f32 %3563, 0
  %3565 = extractvalue %dx.types.CBufRet.f32 %3563, 1
  %3566 = fsub fast float %3548, %3564
  %3567 = fsub fast float %3549, %3565
  %3568 = fcmp fast olt float %3566, 0.000000e+00
  %3569 = fcmp fast olt float %3567, 0.000000e+00
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 0
  %3572 = extractvalue %dx.types.CBufRet.f32 %3570, 1
  %3573 = extractvalue %dx.types.CBufRet.f32 %3570, 2
  %3574 = extractvalue %dx.types.CBufRet.f32 %3570, 3
  %3575 = select i1 %3568, float %3571, float %3573
  %3576 = select i1 %3569, float %3572, float %3574
  %3577 = fmul fast float %3575, %3566
  %3578 = fmul fast float %3576, %3567
  %3579 = call float @dx.op.unary.f32(i32 6, float %3577)  ; FAbs(value)
  %3580 = call float @dx.op.unary.f32(i32 6, float %3578)  ; FAbs(value)
  %3581 = extractvalue %dx.types.CBufRet.f32 %3497, 0
  %3582 = call float @dx.op.binary.f32(i32 35, float %3579, float %3580)  ; FMax(a,b)
  %3583 = fsub fast float %3581, %3582
  %3584 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3585 = fmul fast float %3584, %3556
  br label %3586

; <label>:3586                                    ; preds = %3562, %3506
  %3587 = phi float [ %3585, %3562 ], [ 0.000000e+00, %3506 ]
  %3588 = extractvalue %dx.types.CBufRet.f32 %3534, 2
  %3589 = extractvalue %dx.types.CBufRet.f32 %3558, 1
  %3590 = fadd fast float %3589, %3588
  %3591 = fcmp fast ogt float %3590, 0.000000e+00
  %3592 = extractvalue %dx.types.CBufRet.f32 %3497, 0
  br i1 %3591, label %3593, label %3616

; <label>:3593                                    ; preds = %3586
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.CBufRet.f32 %3594, 1
  %3597 = fsub fast float %3540, %3595
  %3598 = fsub fast float %3541, %3596
  %3599 = fcmp fast olt float %3597, 0.000000e+00
  %3600 = fcmp fast olt float %3598, 0.000000e+00
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.CBufRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.CBufRet.f32 %3601, 2
  %3605 = extractvalue %dx.types.CBufRet.f32 %3601, 3
  %3606 = select i1 %3599, float %3602, float %3604
  %3607 = select i1 %3600, float %3603, float %3605
  %3608 = fmul fast float %3606, %3597
  %3609 = fmul fast float %3607, %3598
  %3610 = call float @dx.op.unary.f32(i32 6, float %3608)  ; FAbs(value)
  %3611 = call float @dx.op.unary.f32(i32 6, float %3609)  ; FAbs(value)
  %3612 = call float @dx.op.binary.f32(i32 35, float %3610, float %3611)  ; FMax(a,b)
  %3613 = fsub fast float %3592, %3612
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3615 = fmul fast float %3614, %3556
  br label %3616

; <label>:3616                                    ; preds = %3593, %3586
  %3617 = phi float [ %3615, %3593 ], [ 0.000000e+00, %3586 ]
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 1
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.CBufRet.f32 %3621, 1
  %3624 = fsub fast float %3525, %3622
  %3625 = fsub fast float %3529, %3623
  %3626 = fcmp fast olt float %3624, 0.000000e+00
  %3627 = fcmp fast olt float %3625, 0.000000e+00
  %3628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3629 = extractvalue %dx.types.CBufRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.CBufRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.CBufRet.f32 %3628, 2
  %3632 = extractvalue %dx.types.CBufRet.f32 %3628, 3
  %3633 = select i1 %3626, float %3629, float %3631
  %3634 = select i1 %3627, float %3630, float %3632
  %3635 = fmul fast float %3633, %3624
  %3636 = fmul fast float %3634, %3625
  %3637 = call float @dx.op.unary.f32(i32 6, float %3635)  ; FAbs(value)
  %3638 = call float @dx.op.unary.f32(i32 6, float %3636)  ; FAbs(value)
  %3639 = call float @dx.op.binary.f32(i32 35, float %3637, float %3638)  ; FMax(a,b)
  %3640 = fsub fast float %3592, %3639
  %3641 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  %3642 = call float @dx.op.binary.f32(i32 36, float %3641, float %3620)  ; FMin(a,b)
  %3643 = fmul fast float %3642, %3556
  %3644 = fsub fast float %3617, %3643
  %3645 = fsub fast float %3587, %3617
  %3646 = fsub fast float %3645, %3643
  %3647 = call float @dx.op.binary.f32(i32 35, float %3617, float %3587)  ; FMax(a,b)
  %3648 = call float @dx.op.binary.f32(i32 35, float %3643, float %3647)  ; FMax(a,b)
  %3649 = fcmp fast olt float %3648, 1.000000e+00
  br i1 %3649, label %3650, label %4048, !dx.controlflow.hints !91

; <label>:3650                                    ; preds = %3616
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 0
  %3653 = fcmp fast une float %3652, 0.000000e+00
  br i1 %3653, label %3654, label %4048, !dx.controlflow.hints !92

; <label>:3654                                    ; preds = %3650
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.CBufRet.f32 %3655, 1
  %3658 = extractvalue %dx.types.CBufRet.f32 %3655, 2
  %3659 = extractvalue %dx.types.CBufRet.f32 %3655, 3
  %3660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.CBufRet.f32 %3660, 1
  %3663 = extractvalue %dx.types.CBufRet.f32 %3660, 2
  %3664 = extractvalue %dx.types.CBufRet.f32 %3660, 3
  %3665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3666 = extractvalue %dx.types.CBufRet.f32 %3665, 0
  %3667 = extractvalue %dx.types.CBufRet.f32 %3665, 1
  %3668 = extractvalue %dx.types.CBufRet.f32 %3665, 2
  %3669 = extractvalue %dx.types.CBufRet.f32 %3665, 3
  %3670 = fmul fast float %3656, %3502
  %3671 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3657, float %3670)  ; FMad(a,b,c)
  %3672 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3658, float %3671)  ; FMad(a,b,c)
  %3673 = fadd fast float %3672, %3659
  %3674 = fmul fast float %3661, %3502
  %3675 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3662, float %3674)  ; FMad(a,b,c)
  %3676 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3663, float %3675)  ; FMad(a,b,c)
  %3677 = fadd fast float %3676, %3664
  %3678 = fmul fast float %3666, %3502
  %3679 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3667, float %3678)  ; FMad(a,b,c)
  %3680 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3668, float %3679)  ; FMad(a,b,c)
  %3681 = fadd fast float %3680, %3669
  %3682 = fcmp fast oge float %3673, 1.000000e+00
  %3683 = fcmp fast oge float %3677, 1.000000e+00
  %3684 = or i1 %3682, %3683
  %3685 = fcmp fast olt float %3673, 0.000000e+00
  %3686 = fcmp fast olt float %3677, 0.000000e+00
  %3687 = or i1 %3685, %3686
  %3688 = or i1 %3684, %3687
  br i1 %3688, label %4048, label %3689, !dx.controlflow.hints !93

; <label>:3689                                    ; preds = %3654
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.CBufRet.f32 %3690, 1
  %3693 = extractvalue %dx.types.CBufRet.f32 %3690, 2
  %3694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3695 = extractvalue %dx.types.CBufRet.i32 %3694, 2
  %3696 = uitofp i32 %3695 to float
  %3697 = extractvalue %dx.types.CBufRet.i32 %3694, 3
  %3698 = uitofp i32 %3697 to float
  %3699 = extractvalue %dx.types.CBufRet.f32 %3690, 3
  %3700 = fmul fast float %3699, 2.000000e+00
  %3701 = fsub fast float %3673, %3691
  %3702 = fsub fast float %3677, %3692
  %3703 = fmul fast float %3700, %3701
  %3704 = fmul fast float %3700, %3702
  %3705 = fdiv fast float 1.000000e+00, %3485
  %3706 = fmul fast float %3704, %3705
  %3707 = call float @dx.op.unary.f32(i32 6, float %3706)  ; FAbs(value)
  %3708 = fmul fast float %3693, %3504
  %3709 = fmul fast float %3708, %3700
  %3710 = call float @dx.op.unary.f32(i32 6, float %3709)  ; FAbs(value)
  %3711 = call float @dx.op.unary.f32(i32 6, float %3703)  ; FAbs(value)
  %3712 = call float @dx.op.binary.f32(i32 35, float %3710, float %3707)  ; FMax(a,b)
  %3713 = call float @dx.op.binary.f32(i32 35, float %3711, float %3712)  ; FMax(a,b)
  %3714 = fmul fast float %3713, 2.000000e+00
  %3715 = call float @dx.op.unary.f32(i32 23, float %3714)  ; Log(value)
  %3716 = call float @dx.op.binary.f32(i32 35, float %3715, float %3696)  ; FMax(a,b)
  %3717 = call float @dx.op.unary.f32(i32 22, float %3716)  ; Frc(value)
  %3718 = fadd fast float %3717, 0xBFEA666660000000
  %3719 = fmul fast float %3718, 8.000000e+00
  %3720 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3721 = call float @dx.op.unary.f32(i32 27, float %3716)  ; Round_ni(value)
  %3722 = fadd fast float %3721, %3720
  %3723 = call float @dx.op.binary.f32(i32 36, float %3722, float %3698)  ; FMin(a,b)
  %3724 = call float @dx.op.unary.f32(i32 27, float %3723)  ; Round_ni(value)
  %3725 = fsub fast float -0.000000e+00, %3724
  %3726 = call float @dx.op.unary.f32(i32 21, float %3725)  ; Exp(value)
  %3727 = fmul fast float %3726, %3700
  %3728 = fmul fast float %3727, %3673
  %3729 = fmul fast float %3727, %3677
  %3730 = fmul fast float %3728, 2.500000e-01
  %3731 = fmul fast float %3729, 2.500000e-01
  %3732 = fadd fast float %3730, 5.000000e-01
  %3733 = fadd fast float %3731, 5.000000e-01
  %3734 = fsub fast float %3698, %3696
  %3735 = fptoui float %3734 to i32
  %3736 = add i32 %3735, 320
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %3736)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.CBufRet.f32 %3737, 1
  %3740 = fcmp fast une float %3723, %3698
  %3741 = fsub fast float %3673, %3738
  %3742 = fsub fast float %3677, %3739
  %3743 = call float @dx.op.unary.f32(i32 6, float %3741)  ; FAbs(value)
  %3744 = call float @dx.op.unary.f32(i32 6, float %3742)  ; FAbs(value)
  %3745 = fmul fast float %3743, %3727
  %3746 = fmul fast float %3744, %3727
  %3747 = fcmp fast olt float %3745, 1.000000e+00
  %3748 = fcmp fast olt float %3746, 1.000000e+00
  %3749 = and i1 %3747, %3748
  %3750 = or i1 %3740, %3749
  br i1 %3750, label %3751, label %4048, !dx.controlflow.hints !94

; <label>:3751                                    ; preds = %3689
  %3752 = fmul fast float %3729, 5.000000e-01
  %3753 = fmul fast float %3728, 5.000000e-01
  %3754 = fadd fast float %3752, 5.000000e-01
  %3755 = fadd fast float %3753, 5.000000e-01
  %3756 = sitofp i32 %3695 to float
  %3757 = fsub fast float %3723, %3756
  %3758 = call float @dx.op.unary.f32(i32 27, float %3757)  ; Round_ni(value)
  %3759 = call float @dx.op.unary.f32(i32 22, float %3723)  ; Frc(value)
  %3760 = call float @dx.op.unary.f32(i32 22, float %3755)  ; Frc(value)
  %3761 = call float @dx.op.unary.f32(i32 22, float %3754)  ; Frc(value)
  %3762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %3760, float %3761, float %3758, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3763 = extractvalue %dx.types.ResRet.f32 %3762, 0
  %3764 = extractvalue %dx.types.ResRet.f32 %3762, 1
  %3765 = extractvalue %dx.types.ResRet.f32 %3762, 2
  %3766 = extractvalue %dx.types.ResRet.f32 %3762, 3
  %3767 = fcmp fast ogt float %3759, 0.000000e+00
  br i1 %3767, label %3768, label %3789, !dx.controlflow.hints !95

; <label>:3768                                    ; preds = %3751
  %3769 = fadd fast float %3758, 1.000000e+00
  %3770 = call float @dx.op.unary.f32(i32 22, float %3732)  ; Frc(value)
  %3771 = call float @dx.op.unary.f32(i32 22, float %3733)  ; Frc(value)
  %3772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %3770, float %3771, float %3769, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3773 = extractvalue %dx.types.ResRet.f32 %3772, 0
  %3774 = extractvalue %dx.types.ResRet.f32 %3772, 1
  %3775 = extractvalue %dx.types.ResRet.f32 %3772, 2
  %3776 = extractvalue %dx.types.ResRet.f32 %3772, 3
  %3777 = fsub fast float %3773, %3763
  %3778 = fsub fast float %3774, %3764
  %3779 = fsub fast float %3775, %3765
  %3780 = fsub fast float %3776, %3766
  %3781 = fmul fast float %3777, %3759
  %3782 = fmul fast float %3778, %3759
  %3783 = fmul fast float %3779, %3759
  %3784 = fmul fast float %3780, %3759
  %3785 = fadd fast float %3781, %3763
  %3786 = fadd fast float %3782, %3764
  %3787 = fadd fast float %3783, %3765
  %3788 = fadd fast float %3784, %3766
  br label %3789

; <label>:3789                                    ; preds = %3768, %3751
  %3790 = phi float [ %3785, %3768 ], [ %3763, %3751 ]
  %3791 = phi float [ %3786, %3768 ], [ %3764, %3751 ]
  %3792 = phi float [ %3787, %3768 ], [ %3765, %3751 ]
  %3793 = phi float [ %3788, %3768 ], [ %3766, %3751 ]
  %3794 = fadd fast float %3790, -5.000000e-01
  %3795 = fadd fast float %3792, -5.000000e-01
  %3796 = fmul fast float %3794, 0xBFD5555560000000
  %3797 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3795, float %3796)  ; FMad(a,b,c)
  %3798 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3791, float 0.000000e+00)  ; FMad(a,b,c)
  %3799 = fadd fast float %3798, %3793
  %3800 = fmul fast float %3794, -7.500000e-01
  %3801 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3795, float %3800)  ; FMad(a,b,c)
  %3802 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3791, float 0.000000e+00)  ; FMad(a,b,c)
  %3803 = fadd fast float %3802, %3793
  %3804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3804, 0
  %3806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3807 = extractvalue %dx.types.CBufRet.f32 %3806, 0
  %3808 = extractvalue %dx.types.CBufRet.f32 %3806, 1
  %3809 = extractvalue %dx.types.CBufRet.f32 %3806, 2
  %3810 = extractvalue %dx.types.CBufRet.f32 %3806, 3
  %3811 = fsub fast float %3807, %3797
  %3812 = fsub fast float %3808, %3799
  %3813 = fsub fast float %3809, %3801
  %3814 = fsub fast float %3810, %3803
  %3815 = fmul fast float %3811, %3805
  %3816 = fmul fast float %3812, %3805
  %3817 = fmul fast float %3813, %3805
  %3818 = fmul fast float %3814, %3805
  %3819 = fadd fast float %3815, %3797
  %3820 = fadd fast float %3816, %3799
  %3821 = fadd fast float %3817, %3801
  %3822 = fadd fast float %3818, %3803
  %3823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.i32 %3823, 0
  %3825 = and i32 %3824, 536870911
  %3826 = uitofp i32 %3825 to float
  %3827 = fmul fast float %3826, %3673
  %3828 = fmul fast float %3826, %3677
  %3829 = fptoui float %3827 to i32
  %3830 = fptoui float %3828 to i32
  %3831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.i32 %3831, 0
  %3833 = and i32 %3832, 31
  %3834 = lshr i32 %3829, %3833
  %3835 = lshr i32 %3830, %3833
  %3836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.i32 %3836, 0
  %3838 = and i32 %3837, 31
  %3839 = shl i32 1, %3838
  %3840 = call i32 @dx.op.binary.i32(i32 40, i32 %3839, i32 4)  ; UMin(a,b)
  %3841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.i32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.i32 %3841, 1
  %3844 = icmp eq i32 %3840, 0
  br i1 %3844, label %3886, label %3845

; <label>:3845                                    ; preds = %3789
  br label %3846

; <label>:3846                                    ; preds = %3874, %3845
  %3847 = phi i32 [ %3877, %3874 ], [ 0, %3845 ]
  %3848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.i32 %3848, 0
  %3850 = lshr i32 %3849, 16
  %3851 = and i32 %3850, 31
  %3852 = shl i32 %3835, %3851
  %3853 = add i32 %3852, %3834
  %3854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.i32 %3854, 0
  %3856 = and i32 %3855, 31
  %3857 = shl i32 %3853, %3856
  %3858 = add i32 %3857, %3847
  %3859 = shl i32 %3858, 2
  %3860 = add i32 %3859, 32
  %3861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.i32 %3861, 0
  %3863 = icmp slt i32 %3862, 0
  %3864 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3847
  %3865 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3847
  %3866 = bitcast float* %3864 to i32*
  %3867 = bitcast float* %3865 to i32*
  br i1 %3863, label %3868, label %3874

; <label>:3868                                    ; preds = %3846
  %3869 = and i32 %3862, 1073741823
  %3870 = add nuw nsw i32 %3869, 20
  %3871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.i32 %3871, 0
  %3873 = extractvalue %dx.types.ResRet.i32 %3871, 1
  br label %3874

; <label>:3874                                    ; preds = %3868, %3846
  %3875 = phi i32 [ %3872, %3868 ], [ %3842, %3846 ]
  %3876 = phi i32 [ %3873, %3868 ], [ %3843, %3846 ]
  store i32 %3875, i32* %3866, align 4
  store i32 %3876, i32* %3867, align 4
  %3877 = add nuw i32 %3847, 1
  %3878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.i32 %3878, 2
  %3880 = icmp eq i32 %3879, 0
  %3881 = icmp ugt i32 %3862, -1073741825
  %3882 = and i1 %3881, %3880
  %3883 = icmp ult i32 %3877, %3840
  %3884 = and i1 %3882, %3883
  br i1 %3884, label %3846, label %3885

; <label>:3885                                    ; preds = %3874
  br label %3886

; <label>:3886                                    ; preds = %3885, %3789
  %3887 = phi i32 [ 0, %3789 ], [ %3877, %3885 ]
  %3888 = extractvalue %dx.types.CBufRet.f32 %3651, 2
  %3889 = fptoui float %3888 to i32
  %3890 = icmp eq i32 %3889, 0
  br i1 %3890, label %3942, label %3891

; <label>:3891                                    ; preds = %3886
  br label %3892

; <label>:3892                                    ; preds = %3937, %3891
  %3893 = phi i32 [ %3938, %3937 ], [ %3887, %3891 ]
  %3894 = phi i32 [ %3939, %3937 ], [ 0, %3891 ]
  %3895 = lshr i32 %3894, 2
  %3896 = and i32 %3894, 3
  %3897 = add nuw nsw i32 %3895, 83
  %3898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %3897)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.i32 %3898, 0
  %3900 = extractvalue %dx.types.CBufRet.i32 %3898, 1
  %3901 = extractvalue %dx.types.CBufRet.i32 %3898, 2
  %3902 = extractvalue %dx.types.CBufRet.i32 %3898, 3
  %3903 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %3899, i32* %3903, align 4
  %3904 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %3900, i32* %3904, align 4
  %3905 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %3901, i32* %3905, align 4
  %3906 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %3902, i32* %3906, align 4
  %3907 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %3896
  %3908 = load i32, i32* %3907, align 4, !tbaa !96, !noalias !100
  %3909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.i32 %3909, 0
  %3911 = lshr i32 %3910, 16
  %3912 = and i32 %3911, 31
  %3913 = shl i32 %3835, %3912
  %3914 = add i32 %3913, %3834
  %3915 = shl i32 %3914, 2
  %3916 = add i32 %3915, %3908
  %3917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.i32 %3917, 0
  %3919 = icmp eq i32 %3918, 0
  br i1 %3919, label %3937, label %3920

; <label>:3920                                    ; preds = %3892
  %3921 = icmp slt i32 %3918, 0
  %3922 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3893
  %3923 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3893
  %3924 = bitcast float* %3922 to i32*
  %3925 = bitcast float* %3923 to i32*
  br i1 %3921, label %3926, label %3933

; <label>:3926                                    ; preds = %3920
  %3927 = and i32 %3918, 1073741823
  %3928 = add i32 %3908, 20
  %3929 = add i32 %3928, %3927
  %3930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.i32 %3930, 0
  %3932 = extractvalue %dx.types.ResRet.i32 %3930, 1
  br label %3933

; <label>:3933                                    ; preds = %3926, %3920
  %3934 = phi i32 [ %3931, %3926 ], [ %3842, %3920 ]
  %3935 = phi i32 [ %3932, %3926 ], [ %3843, %3920 ]
  store i32 %3934, i32* %3924, align 4
  store i32 %3935, i32* %3925, align 4
  %3936 = add i32 %3893, 1
  br label %3937

; <label>:3937                                    ; preds = %3933, %3892
  %3938 = phi i32 [ %3893, %3892 ], [ %3936, %3933 ]
  %3939 = add nuw i32 %3894, 1
  %3940 = icmp eq i32 %3939, %3889
  br i1 %3940, label %3941, label %3892

; <label>:3941                                    ; preds = %3937
  br label %3942

; <label>:3942                                    ; preds = %3941, %3886
  %3943 = phi i32 [ %3887, %3886 ], [ %3938, %3941 ]
  %3944 = icmp eq i32 %3943, 1
  %3945 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 0
  %3946 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 0
  br i1 %3944, label %3947, label %3950

; <label>:3947                                    ; preds = %3942
  %3948 = load float, float* %3945, align 4
  %3949 = load float, float* %3946, align 4
  br label %3977

; <label>:3950                                    ; preds = %3942
  %3951 = load float, float* %3945, align 4
  %3952 = load float, float* %3946, align 4
  %3953 = fdiv fast float 1.000000e+00, %3952
  %3954 = fsub fast float %3951, %3953
  %3955 = icmp ugt i32 %3943, 1
  br i1 %3955, label %3956, label %3972

; <label>:3956                                    ; preds = %3950
  br label %3957

; <label>:3957                                    ; preds = %3957, %3956
  %3958 = phi float [ %3967, %3957 ], [ %3954, %3956 ]
  %3959 = phi float [ %3968, %3957 ], [ %3951, %3956 ]
  %3960 = phi i32 [ %3969, %3957 ], [ 1, %3956 ]
  %3961 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3960
  %3962 = load float, float* %3961, align 4
  %3963 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3960
  %3964 = load float, float* %3963, align 4
  %3965 = fdiv fast float 1.000000e+00, %3964
  %3966 = fsub fast float %3962, %3965
  %3967 = call float @dx.op.binary.f32(i32 36, float %3958, float %3966)  ; FMin(a,b)
  %3968 = call float @dx.op.binary.f32(i32 35, float %3959, float %3962)  ; FMax(a,b)
  %3969 = add nuw i32 %3960, 1
  %3970 = icmp eq i32 %3969, %3943
  br i1 %3970, label %3971, label %3957

; <label>:3971                                    ; preds = %3957
  br label %3972

; <label>:3972                                    ; preds = %3971, %3950
  %3973 = phi float [ %3954, %3950 ], [ %3967, %3971 ]
  %3974 = phi float [ %3951, %3950 ], [ %3968, %3971 ]
  %3975 = fsub fast float %3974, %3973
  %3976 = fdiv fast float 1.000000e+00, %3975
  br label %3977

; <label>:3977                                    ; preds = %3972, %3947
  %3978 = phi float [ %3948, %3947 ], [ %3974, %3972 ]
  %3979 = phi float [ %3949, %3947 ], [ %3976, %3972 ]
  %3980 = fadd fast float %3681, %3978
  %3981 = fmul fast float %3980, %3979
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = fmul fast float %3982, 2.000000e+00
  %3984 = fsub fast float 1.000000e+00, %3983
  %3985 = fmul fast float %3819, %3819
  %3986 = fsub fast float %3820, %3985
  %3987 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3986)  ; FMax(a,b)
  %3988 = fdiv fast float 1.000000e+00, %3987
  %3989 = fmul fast float %3820, %3819
  %3990 = fsub fast float %3821, %3989
  %3991 = fsub fast float %3984, %3819
  %3992 = fmul fast float %3984, %3984
  %3993 = fsub fast float %3992, %3820
  %3994 = fmul fast float %3988, %3990
  %3995 = fmul fast float %3994, %3991
  %3996 = fsub fast float %3993, %3995
  %3997 = fmul fast float %3820, %3820
  %3998 = fsub fast float %3822, %3997
  %3999 = fmul fast float %3990, %3990
  %4000 = fmul fast float %3999, %3988
  %4001 = fsub fast float %3998, %4000
  %4002 = fdiv fast float %3996, %4001
  %4003 = fmul fast float %4002, %3990
  %4004 = fsub fast float %3991, %4003
  %4005 = fmul fast float %4004, %3988
  %4006 = fmul fast float %4005, %3819
  %4007 = fsub fast float 1.000000e+00, %4006
  %4008 = fmul fast float %4002, %3820
  %4009 = fsub fast float %4007, %4008
  %4010 = fmul fast float %4005, %4005
  %4011 = fmul fast float %4002, 4.000000e+00
  %4012 = fmul fast float %4011, %4009
  %4013 = fsub fast float %4010, %4012
  %4014 = call float @dx.op.unary.f32(i32 24, float %4013)  ; Sqrt(value)
  %4015 = fcmp fast oge float %4005, 0.000000e+00
  %4016 = fsub fast float -0.000000e+00, %4014
  %4017 = select i1 %4015, float %4016, float %4014
  %4018 = fsub fast float %4017, %4005
  %4019 = fdiv fast float %4018, %4002
  %4020 = fdiv fast float %4009, %4018
  %4021 = fmul fast float %4019, 5.000000e-01
  %4022 = fmul fast float %4020, 2.000000e+00
  %4023 = select i1 %4015, float %4021, float %4022
  %4024 = select i1 %4015, float %4022, float %4021
  %4025 = call float @dx.op.binary.f32(i32 35, float %4023, float %4024)  ; FMax(a,b)
  %4026 = call float @dx.op.binary.f32(i32 36, float %4023, float %4024)  ; FMin(a,b)
  %4027 = fcmp fast ogt float %3984, %4025
  %4028 = fsub fast float %3984, %4026
  %4029 = fsub fast float %3984, %4025
  %4030 = fsub fast float %4025, %4026
  %4031 = select i1 %4027, float %4029, float %4030
  %4032 = fmul float %4028, %4031
  %4033 = select i1 %4027, float %4026, float %3984
  %4034 = fcmp fast ogt float %3984, %4026
  %4035 = fmul fast float %4033, %4025
  %4036 = fadd fast float %4033, %4025
  %4037 = fmul fast float %4036, %3819
  %4038 = fadd fast float %4035, %3820
  %4039 = fsub fast float %4038, %4037
  %4040 = fdiv fast float %4039, %4032
  %4041 = select i1 %4034, float %4040, float 0.000000e+00
  %4042 = fsub fast float 1.000000e+00, %4041
  %4043 = select i1 %4027, float %4042, float %4041
  %4044 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4045 = extractvalue %dx.types.CBufRet.f32 %3804, 3
  %4046 = fmul fast float %4045, %4044
  %4047 = fsub fast float 1.000000e+00, %4046
  br label %4048

; <label>:4048                                    ; preds = %3977, %3689, %3654, %3650, %3616
  %4049 = phi float [ 1.000000e+00, %3616 ], [ %4047, %3977 ], [ 1.000000e+00, %3654 ], [ 1.000000e+00, %3689 ], [ 1.000000e+00, %3650 ]
  %4050 = fcmp fast ogt float %3646, 0.000000e+00
  br i1 %4050, label %4051, label %4057, !dx.controlflow.hints !109

; <label>:4051                                    ; preds = %4048
  %4052 = fadd fast float %3559, %3533
  %4053 = call float @dx.op.binary.f32(i32 35, float %4052, float 0.000000e+00)  ; FMax(a,b)
  %4054 = fadd fast float %4053, 0x3F10000000000000
  %4055 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %47, float %3548, float %3549, float undef, float undef, i32 0, i32 0, i32 undef, float %4054)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4056 = extractvalue %dx.types.ResRet.f32 %4055, 0
  br label %4057

; <label>:4057                                    ; preds = %4051, %4048
  %4058 = phi float [ %4056, %4051 ], [ 1.000000e+00, %4048 ]
  %4059 = fcmp fast ogt float %3644, 0.000000e+00
  br i1 %4059, label %4060, label %4066, !dx.controlflow.hints !110

; <label>:4060                                    ; preds = %4057
  %4061 = fadd fast float %3589, %3533
  %4062 = call float @dx.op.binary.f32(i32 35, float %4061, float 0.000000e+00)  ; FMax(a,b)
  %4063 = fadd fast float %4062, 0x3F10000000000000
  %4064 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %47, float %3540, float %3541, float undef, float undef, i32 0, i32 0, i32 undef, float %4063)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4065 = extractvalue %dx.types.ResRet.f32 %4064, 0
  br label %4066

; <label>:4066                                    ; preds = %4060, %4057
  %4067 = phi float [ %4065, %4060 ], [ 1.000000e+00, %4057 ]
  %4068 = fcmp fast ogt float %3643, 0.000000e+00
  br i1 %4068, label %4069, label %4076, !dx.controlflow.hints !111

; <label>:4069                                    ; preds = %4066
  %4070 = extractvalue %dx.types.CBufRet.f32 %3558, 0
  %4071 = fadd fast float %4070, %3533
  %4072 = call float @dx.op.binary.f32(i32 35, float %4071, float 0.000000e+00)  ; FMax(a,b)
  %4073 = fadd fast float %4072, 0x3F10000000000000
  %4074 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %3525, float %3529, float undef, float undef, i32 0, i32 0, i32 undef, float %4073)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  br label %4076

; <label>:4076                                    ; preds = %4069, %4066
  %4077 = phi float [ %4075, %4069 ], [ 1.000000e+00, %4066 ]
  %4078 = fsub fast float %4058, %4049
  %4079 = fmul fast float %4078, %3587
  %4080 = fadd fast float %4079, %4049
  %4081 = fsub fast float %4067, %4080
  %4082 = fmul fast float %4081, %3617
  %4083 = fadd fast float %4082, %4080
  %4084 = fsub fast float %4077, %4083
  %4085 = fmul fast float %4084, %3643
  %4086 = fadd fast float %4085, %4083
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 2
  %4089 = fcmp fast ogt float %4088, 0.000000e+00
  br i1 %4089, label %4090, label %4127, !dx.controlflow.hints !112

; <label>:4090                                    ; preds = %4076
  %4091 = fcmp fast ugt float %4088, 0.000000e+00
  br i1 %4091, label %4092, label %4124

; <label>:4092                                    ; preds = %4090
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 0
  %4095 = extractvalue %dx.types.CBufRet.f32 %4093, 1
  %4096 = extractvalue %dx.types.CBufRet.f32 %4093, 2
  %4097 = extractvalue %dx.types.CBufRet.f32 %4093, 3
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4102 = extractvalue %dx.types.CBufRet.f32 %4098, 3
  %4103 = extractvalue %dx.types.CBufRet.f32 %4087, 0
  %4104 = extractvalue %dx.types.CBufRet.f32 %4087, 1
  %4105 = extractvalue %dx.types.CBufRet.f32 %2036, 2
  %4106 = fadd fast float %2037, %3502
  %4107 = fadd fast float %2038, %3503
  %4108 = fadd fast float %4105, %3504
  %4109 = fmul fast float %4106, %4094
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4095, float %4107, float %4109)  ; FMad(a,b,c)
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %4096, float %4108, float %4110)  ; FMad(a,b,c)
  %4112 = fadd fast float %4111, %4097
  %4113 = fmul fast float %4106, %4099
  %4114 = call float @dx.op.tertiary.f32(i32 46, float %4100, float %4107, float %4113)  ; FMad(a,b,c)
  %4115 = call float @dx.op.tertiary.f32(i32 46, float %4101, float %4108, float %4114)  ; FMad(a,b,c)
  %4116 = fadd fast float %4115, %4102
  %4117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %42, float %4112, float %4116, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = fmul fast float %4118, %4104
  %4120 = fadd fast float %4119, %4103
  %4121 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4122 = fmul fast float %4121, %4088
  %4123 = fsub fast float 1.000000e+00, %4122
  br label %4124

; <label>:4124                                    ; preds = %4092, %4090
  %4125 = phi float [ %4123, %4092 ], [ 1.000000e+00, %4090 ]
  %4126 = fmul fast float %4125, %4086
  br label %4127

; <label>:4127                                    ; preds = %4124, %4076, %3482
  %4128 = phi float [ 1.000000e+00, %3482 ], [ %4126, %4124 ], [ %4086, %4076 ]
  %4129 = call float @dx.op.binary.f32(i32 36, float %4128, float %4128)  ; FMin(a,b)
  %4130 = call float @dx.op.binary.f32(i32 36, float %4128, float %4129)  ; FMin(a,b)
  %4131 = fcmp fast ogt float %4130, 0.000000e+00
  br i1 %4131, label %4132, label %4290, !dx.controlflow.hints !113

; <label>:4132                                    ; preds = %4127
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4136 = extractvalue %dx.types.CBufRet.f32 %4133, 2
  %4137 = extractvalue %dx.types.CBufRet.f32 %4133, 3
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.CBufRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.CBufRet.f32 %4138, 2
  %4142 = extractvalue %dx.types.CBufRet.f32 %4138, 3
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.CBufRet.f32 %4143, 2
  %4147 = extractvalue %dx.types.CBufRet.f32 %4143, 3
  %4148 = fmul fast float %4134, %3502
  %4149 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %4135, float %4148)  ; FMad(a,b,c)
  %4150 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %4136, float %4149)  ; FMad(a,b,c)
  %4151 = fadd fast float %4150, %4137
  %4152 = fmul fast float %4139, %3502
  %4153 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %4140, float %4152)  ; FMad(a,b,c)
  %4154 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %4141, float %4153)  ; FMad(a,b,c)
  %4155 = fadd fast float %4154, %4142
  %4156 = fmul fast float %4144, %3502
  %4157 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %4145, float %4156)  ; FMad(a,b,c)
  %4158 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %4146, float %4157)  ; FMad(a,b,c)
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 0
  %4161 = extractvalue %dx.types.CBufRet.f32 %4159, 1
  %4162 = extractvalue %dx.types.CBufRet.f32 %4159, 3
  %4163 = fmul fast float %4162, %4151
  %4164 = fmul fast float %4162, %4155
  %4165 = fadd fast float %4163, %4160
  %4166 = fadd fast float %4164, %4161
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4170 = fsub fast float %4165, %4168
  %4171 = fsub fast float %4166, %4169
  %4172 = fcmp fast olt float %4170, 0.000000e+00
  %4173 = fcmp fast olt float %4171, 0.000000e+00
  %4174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.f32 %4174, 0
  %4176 = extractvalue %dx.types.CBufRet.f32 %4174, 1
  %4177 = extractvalue %dx.types.CBufRet.f32 %4174, 2
  %4178 = extractvalue %dx.types.CBufRet.f32 %4174, 3
  %4179 = select i1 %4172, float %4175, float %4177
  %4180 = select i1 %4173, float %4176, float %4178
  %4181 = fmul fast float %4179, %4170
  %4182 = fmul fast float %4180, %4171
  %4183 = call float @dx.op.unary.f32(i32 6, float %4181)  ; FAbs(value)
  %4184 = call float @dx.op.unary.f32(i32 6, float %4182)  ; FAbs(value)
  %4185 = extractvalue %dx.types.CBufRet.f32 %3497, 0
  %4186 = call float @dx.op.binary.f32(i32 35, float %4183, float %4184)  ; FMax(a,b)
  %4187 = fsub fast float %4185, %4186
  %4188 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4189 = fcmp fast ogt float %4188, 0.000000e+00
  br i1 %4189, label %4190, label %4231, !dx.controlflow.hints !114

; <label>:4190                                    ; preds = %4132
  %4191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %4165, float %4166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 1
  %4193 = fcmp fast ogt float %4192, 0.000000e+00
  br i1 %4193, label %4194, label %4226

; <label>:4194                                    ; preds = %4190
  %4195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %4165, float %4166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.ResRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.ResRet.f32 %4195, 2
  %4199 = extractvalue %dx.types.ResRet.f32 %4195, 3
  %4200 = fsub fast float 1.000000e+00, %4147
  %4201 = fsub fast float %4200, %4158
  %4202 = fmul fast float %4201, 0x400921FB60000000
  %4203 = fadd fast float %4202, 0x3FF921FB60000000
  %4204 = call float @dx.op.unary.f32(i32 13, float %4203)  ; Sin(value)
  %4205 = fadd fast float %4204, -1.000000e+00
  %4206 = fmul fast float %4205, 0x3FD45F3060000000
  %4207 = fmul fast float %4201, 0x401921FB60000000
  %4208 = fadd fast float %4207, 0x400921FB60000000
  %4209 = call float @dx.op.unary.f32(i32 13, float %4208)  ; Sin(value)
  %4210 = fadd fast float %4209, 0x3E7777A5C0000000
  %4211 = fmul fast float %4210, 0x3FC45F3060000000
  %4212 = fmul fast float %4201, 0x4022D97C80000000
  %4213 = fadd fast float %4212, 0x4012D97C80000000
  %4214 = call float @dx.op.unary.f32(i32 13, float %4213)  ; Sin(value)
  %4215 = fadd fast float %4214, 1.000000e+00
  %4216 = fmul fast float %4215, 0x3FBB2995E0000000
  %4217 = fmul fast float %4201, 0x402921FB60000000
  %4218 = fadd fast float %4217, 0x401921FB60000000
  %4219 = call float @dx.op.unary.f32(i32 13, float %4218)  ; Sin(value)
  %4220 = fadd fast float %4219, 0xBE8777A5C0000000
  %4221 = fmul fast float %4220, 0x3FB45F3060000000
  %4222 = call float @dx.op.dot4.f32(i32 56, float %4196, float %4197, float %4198, float %4199, float %4206, float %4211, float %4216, float %4221)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4223 = fmul fast float %4222, 0xBFF7154760000000
  %4224 = call float @dx.op.unary.f32(i32 21, float %4223)  ; Exp(value)
  %4225 = call float @dx.op.unary.f32(i32 7, float %4224)  ; Saturate(value)
  br label %4226

; <label>:4226                                    ; preds = %4194, %4190
  %4227 = phi float [ %4225, %4194 ], [ 1.000000e+00, %4190 ]
  %4228 = fadd fast float %4227, -1.000000e+00
  %4229 = fmul fast float %4228, %4188
  %4230 = fadd fast float %4229, 1.000000e+00
  br label %4231

; <label>:4231                                    ; preds = %4226, %4132
  %4232 = phi float [ %4230, %4226 ], [ 1.000000e+00, %4132 ]
  %4233 = fmul fast float %4232, %4128
  %4234 = extractvalue %dx.types.CBufRet.f32 %2036, 2
  %4235 = fadd fast float %2037, %124
  %4236 = fadd fast float %2038, %125
  %4237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.f32 %4237, 1
  %4239 = fsub fast float -0.000000e+00, %4235
  %4240 = fsub fast float -0.000000e+00, %4236
  %4241 = fsub fast float -0.000000e+00, %126
  %4242 = fsub fast float %4241, %4234
  %4243 = fadd fast float %4242, %4238
  %4244 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4239, float %4240, float %4243)  ; Dot3(ax,ay,az,bx,by,bz)
  %4245 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3483, float %3484, float %3485)  ; Dot3(ax,ay,az,bx,by,bz)
  %4246 = fdiv fast float 1.000000e+00, %4245
  %4247 = fmul fast float %4246, %4244
  %4248 = fmul fast float %3483, %4247
  %4249 = fmul fast float %3484, %4247
  %4250 = fadd fast float %4248, %4235
  %4251 = fadd fast float %4249, %4236
  %4252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4252, 0
  %4254 = extractvalue %dx.types.CBufRet.f32 %4252, 1
  %4255 = fsub fast float %4250, %4253
  %4256 = fsub fast float %4251, %4254
  %4257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4257, 2
  %4259 = extractvalue %dx.types.CBufRet.f32 %4257, 3
  %4260 = fmul fast float %4255, %4258
  %4261 = fmul fast float %4256, %4259
  %4262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.i32 %4262, 3
  %4264 = icmp eq i32 %4263, 0
  br i1 %4264, label %4270, label %4265

; <label>:4265                                    ; preds = %4231
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %4260, float %4261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = extractvalue %dx.types.ResRet.f32 %4266, 1
  %4269 = extractvalue %dx.types.ResRet.f32 %4266, 2
  br label %4275

; <label>:4270                                    ; preds = %4231
  %4271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %45, float %4260, float %4261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4272 = extractvalue %dx.types.ResRet.f32 %4271, 0
  %4273 = extractvalue %dx.types.ResRet.f32 %4271, 1
  %4274 = extractvalue %dx.types.ResRet.f32 %4271, 2
  br label %4275

; <label>:4275                                    ; preds = %4270, %4265
  %4276 = phi float [ %4267, %4265 ], [ %4272, %4270 ]
  %4277 = phi float [ %4268, %4265 ], [ %4273, %4270 ]
  %4278 = phi float [ %4269, %4265 ], [ %4274, %4270 ]
  %4279 = extractvalue %dx.types.CBufRet.f32 %4237, 2
  %4280 = fmul fast float %4279, %4276
  %4281 = extractvalue %dx.types.CBufRet.f32 %4237, 0
  %4282 = fsub fast float %4247, %4281
  %4283 = fsub fast float %4282, %4280
  %4284 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4283)  ; FMax(a,b)
  %4285 = fmul fast float %4284, %4277
  %4286 = call float @dx.op.binary.f32(i32 36, float %4278, float %4285)  ; FMin(a,b)
  %4287 = fmul fast float %4286, 0xBFF7154760000000
  %4288 = call float @dx.op.unary.f32(i32 21, float %4287)  ; Exp(value)
  %4289 = fmul fast float %4233, %4288
  br label %4290

; <label>:4290                                    ; preds = %4275, %4127
  %4291 = phi float [ %4289, %4275 ], [ %4128, %4127 ]
  %4292 = call float @dx.op.binary.f32(i32 36, float %4291, float %4291)  ; FMin(a,b)
  %4293 = call float @dx.op.binary.f32(i32 36, float %4291, float %4292)  ; FMin(a,b)
  %4294 = fcmp fast ogt float %4293, 0.000000e+00
  br i1 %4294, label %4295, label %4605, !dx.controlflow.hints !115

; <label>:4295                                    ; preds = %4290
  %4296 = fmul fast float %4291, %3494
  %4297 = fmul fast float %4291, %3495
  %4298 = fmul fast float %4291, %3496
  %4299 = fsub fast float %3483, %2008
  %4300 = fsub fast float %3484, %2007
  %4301 = fsub fast float %3485, %2006
  %4302 = call float @dx.op.dot3.f32(i32 55, float %4299, float %4300, float %4301, float %4299, float %4300, float %4301)  ; Dot3(ax,ay,az,bx,by,bz)
  %4303 = call float @dx.op.unary.f32(i32 25, float %4302)  ; Rsqrt(value)
  %4304 = fmul fast float %4303, %4299
  %4305 = fmul fast float %4303, %4300
  %4306 = fmul fast float %4303, %4301
  %4307 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3484, float %3485, float %2012, float %2013, float %2014)  ; Dot3(ax,ay,az,bx,by,bz)
  %4308 = call float @dx.op.dot3.f32(i32 55, float %2005, float %2004, float %2003, float %4304, float %4305, float %4306)  ; Dot3(ax,ay,az,bx,by,bz)
  %4309 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4310 = fmul fast float %4309, %4309
  %4311 = fmul fast float %4310, %2035
  %4312 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4313 = fmul fast float %4312, %4309
  %4314 = call float @dx.op.dot3.f32(i32 55, float %2012, float %2013, float %2014, float %4304, float %4305, float %4306)  ; Dot3(ax,ay,az,bx,by,bz)
  %4315 = fmul fast float %4314, %4314
  %4316 = call float @dx.op.unary.f32(i32 6, float %4307)  ; FAbs(value)
  %4317 = call float @dx.op.binary.f32(i32 35, float %3451, float 0x3F847AE140000000)  ; FMax(a,b)
  %4318 = fmul fast float %4317, %4317
  %4319 = fmul fast float %4318, %4318
  %4320 = fsub fast float 1.000000e+00, %4319
  %4321 = fmul fast float %2022, %2022
  %4322 = fmul fast float %4321, %4320
  %4323 = fadd fast float %4322, %4319
  %4324 = bitcast float %4323 to i32
  %4325 = ashr i32 %4324, 1
  %4326 = add nsw i32 %4325, 532487669
  %4327 = bitcast i32 %4326 to float
  %4328 = fadd fast float %4327, %2022
  %4329 = fmul fast float %4319, %4315
  %4330 = fsub fast float 1.000000e+00, %4315
  %4331 = fadd fast float %4330, %4329
  %4332 = fmul fast float %4316, %4316
  %4333 = fmul fast float %4332, %4320
  %4334 = fadd fast float %4333, %4319
  %4335 = bitcast float %4334 to i32
  %4336 = ashr i32 %4335, 1
  %4337 = add nsw i32 %4336, 532487669
  %4338 = bitcast i32 %4337 to float
  %4339 = fadd fast float %4338, %4316
  %4340 = fmul fast float %4331, %4331
  %4341 = fmul fast float %4340, %4328
  %4342 = fmul fast float %4341, %4339
  %4343 = fdiv fast float 0x3FF0A00000000000, %4342
  %4344 = fmul fast float %4343, %4319
  %4345 = fmul fast float %3313, 0x3FF9999980000000
  %4346 = fsub fast float 5.000000e+00, %4345
  %4347 = call float @dx.op.unary.f32(i32 6, float %4308)  ; FAbs(value)
  %4348 = fsub fast float 1.000000e+00, %4347
  %4349 = fmul fast float %3313, 0x41D9660740000000
  %4350 = fadd fast float %4349, 0xC1EFBF8940000000
  %4351 = bitcast float %4348 to i32
  %4352 = sitofp i32 %4351 to float
  %4353 = fmul fast float %4352, %4346
  %4354 = fadd fast float %4350, %4353
  %4355 = fptosi float %4354 to i32
  %4356 = bitcast i32 %4355 to float
  %4357 = fsub fast float 1.000000e+00, %2015
  %4358 = fsub fast float 1.000000e+00, %2016
  %4359 = fsub fast float 1.000000e+00, %2020
  %4360 = fmul fast float %4356, %4357
  %4361 = fmul fast float %4356, %4358
  %4362 = fmul fast float %4356, %4359
  %4363 = fadd fast float %4360, %2015
  %4364 = fadd fast float %4361, %2016
  %4365 = fadd fast float %4362, %2020
  br i1 %3336, label %4366, label %4389

; <label>:4366                                    ; preds = %4295
  %4367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1645, float %4347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = extractvalue %dx.types.ResRet.f32 %4367, 1
  %4370 = extractvalue %dx.types.ResRet.f32 %4367, 2
  %4371 = fadd fast float %4368, -5.000000e-01
  %4372 = fadd fast float %4369, -5.000000e-01
  %4373 = fadd fast float %4370, -5.000000e-01
  %4374 = fmul fast float %2015, 4.000000e+00
  %4375 = fmul fast float %4374, %4357
  %4376 = fmul fast float %4375, %4371
  %4377 = fmul fast float %2016, 4.000000e+00
  %4378 = fmul fast float %4377, %4358
  %4379 = fmul fast float %4378, %4372
  %4380 = fmul fast float %2020, 4.000000e+00
  %4381 = fmul fast float %4380, %4359
  %4382 = fmul fast float %4381, %4373
  %4383 = fadd fast float %4376, %4363
  %4384 = fadd fast float %4379, %4364
  %4385 = fadd fast float %4382, %4365
  %4386 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4387 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4388 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  br label %4389

; <label>:4389                                    ; preds = %4366, %4295
  %4390 = phi float [ %4386, %4366 ], [ %4363, %4295 ]
  %4391 = phi float [ %4387, %4366 ], [ %4364, %4295 ]
  %4392 = phi float [ %4388, %4366 ], [ %4365, %4295 ]
  %4393 = fmul fast float %4307, 9.843750e-01
  %4394 = fadd fast float %4393, 7.812500e-03
  %4395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %45, float %4394, float %3317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4396 = extractvalue %dx.types.ResRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.ResRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.ResRet.f32 %4395, 2
  %4399 = extractvalue %dx.types.ResRet.f32 %4395, 3
  %4400 = fsub fast float %4398, %4396
  %4401 = fsub fast float %4399, %4397
  %4402 = fmul fast float %4400, %3323
  %4403 = fmul fast float %4401, %3323
  %4404 = fadd fast float %4402, %4396
  %4405 = fadd fast float %4403, %4397
  %4406 = fmul fast float %4404, %2015
  %4407 = fmul fast float %4404, %2016
  %4408 = fmul fast float %4404, %2020
  %4409 = fadd fast float %4406, %4405
  %4410 = fadd fast float %4407, %4405
  %4411 = fadd fast float %4408, %4405
  br i1 %3336, label %4412, label %4435

; <label>:4412                                    ; preds = %4389
  %4413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1645, float %4307, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = fadd fast float %4414, -5.000000e-01
  %4418 = fadd fast float %4415, -5.000000e-01
  %4419 = fadd fast float %4416, -5.000000e-01
  %4420 = fmul fast float %2015, 4.000000e+00
  %4421 = fmul fast float %4420, %4357
  %4422 = fmul fast float %4421, %4417
  %4423 = fmul fast float %2016, 4.000000e+00
  %4424 = fmul fast float %4423, %4358
  %4425 = fmul fast float %4424, %4418
  %4426 = fmul fast float %2020, 4.000000e+00
  %4427 = fmul fast float %4426, %4359
  %4428 = fmul fast float %4427, %4419
  %4429 = fadd fast float %4422, %4409
  %4430 = fadd fast float %4425, %4410
  %4431 = fadd fast float %4428, %4411
  %4432 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4433 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4434 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  br label %4435

; <label>:4435                                    ; preds = %4412, %4389
  %4436 = phi float [ %4432, %4412 ], [ %4409, %4389 ]
  %4437 = phi float [ %4433, %4412 ], [ %4410, %4389 ]
  %4438 = phi float [ %4434, %4412 ], [ %4411, %4389 ]
  %4439 = call float @dx.op.binary.f32(i32 35, float %4437, float %4438)  ; FMax(a,b)
  %4440 = call float @dx.op.binary.f32(i32 35, float %4436, float %4439)  ; FMax(a,b)
  %4441 = fsub fast float 1.000000e+00, %4440
  %4442 = call float @dx.op.binary.f32(i32 35, float %4316, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4443 = fdiv fast float %1051, %4442
  %4444 = fmul fast float %3391, %4443
  %4445 = fmul fast float %3393, %4443
  %4446 = fmul fast float %3395, %4443
  %4447 = call float @dx.op.unary.f32(i32 21, float %4444)  ; Exp(value)
  %4448 = call float @dx.op.unary.f32(i32 21, float %4445)  ; Exp(value)
  %4449 = call float @dx.op.unary.f32(i32 21, float %4446)  ; Exp(value)
  %4450 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4451 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4452 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4453 = select i1 %3388, float %4450, float 0.000000e+00
  %4454 = select i1 %3389, float %4451, float 0.000000e+00
  %4455 = select i1 %3390, float %4452, float 0.000000e+00
  %4456 = fsub fast float -0.000000e+00, %2012
  %4457 = fsub fast float -0.000000e+00, %2013
  %4458 = fsub fast float -0.000000e+00, %2014
  %4459 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3484, float %3485, float %4456, float %4457, float %4458)  ; Dot3(ax,ay,az,bx,by,bz)
  %4460 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4461 = fmul fast float %4460, 9.843750e-01
  %4462 = fadd fast float %4461, 7.812500e-03
  %4463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %45, float %4462, float %3317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 0
  %4465 = extractvalue %dx.types.ResRet.f32 %4463, 1
  %4466 = extractvalue %dx.types.ResRet.f32 %4463, 2
  %4467 = extractvalue %dx.types.ResRet.f32 %4463, 3
  %4468 = fsub fast float %4466, %4464
  %4469 = fsub fast float %4467, %4465
  %4470 = fmul fast float %4468, %3323
  %4471 = fmul fast float %4469, %3323
  %4472 = fadd fast float %4470, %4464
  %4473 = fadd fast float %4471, %4465
  %4474 = fmul fast float %4472, %2015
  %4475 = fmul fast float %4472, %2016
  %4476 = fmul fast float %4472, %2020
  %4477 = fadd fast float %4474, %4473
  %4478 = fadd fast float %4475, %4473
  %4479 = fadd fast float %4476, %4473
  br i1 %3336, label %4480, label %4503

; <label>:4480                                    ; preds = %4435
  %4481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1645, float %4460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4482 = extractvalue %dx.types.ResRet.f32 %4481, 0
  %4483 = extractvalue %dx.types.ResRet.f32 %4481, 1
  %4484 = extractvalue %dx.types.ResRet.f32 %4481, 2
  %4485 = fadd fast float %4482, -5.000000e-01
  %4486 = fadd fast float %4483, -5.000000e-01
  %4487 = fadd fast float %4484, -5.000000e-01
  %4488 = fmul fast float %2015, 4.000000e+00
  %4489 = fmul fast float %4488, %4357
  %4490 = fmul fast float %4489, %4485
  %4491 = fmul fast float %2016, 4.000000e+00
  %4492 = fmul fast float %4491, %4358
  %4493 = fmul fast float %4492, %4486
  %4494 = fmul fast float %2020, 4.000000e+00
  %4495 = fmul fast float %4494, %4359
  %4496 = fmul fast float %4495, %4487
  %4497 = fadd fast float %4490, %4477
  %4498 = fadd fast float %4493, %4478
  %4499 = fadd fast float %4496, %4479
  %4500 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4501 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4502 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  br label %4503

; <label>:4503                                    ; preds = %4480, %4435
  %4504 = phi float [ %4500, %4480 ], [ %4477, %4435 ]
  %4505 = phi float [ %4501, %4480 ], [ %4478, %4435 ]
  %4506 = phi float [ %4502, %4480 ], [ %4479, %4435 ]
  %4507 = call float @dx.op.binary.f32(i32 35, float %4505, float %4506)  ; FMax(a,b)
  %4508 = call float @dx.op.binary.f32(i32 35, float %4504, float %4507)  ; FMax(a,b)
  %4509 = fsub fast float 1.000000e+00, %4508
  %4510 = fmul fast float %3451, %3456
  %4511 = fadd fast float %3458, %4510
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = fsub fast float %3483, %2028
  %4514 = fsub fast float %3484, %2029
  %4515 = fsub fast float %3485, %2030
  %4516 = call float @dx.op.dot3.f32(i32 55, float %4513, float %4514, float %4515, float %4513, float %4514, float %4515)  ; Dot3(ax,ay,az,bx,by,bz)
  %4517 = call float @dx.op.unary.f32(i32 25, float %4516)  ; Rsqrt(value)
  %4518 = fmul fast float %4517, %4513
  %4519 = fmul fast float %4517, %4514
  %4520 = fmul fast float %4517, %4515
  %4521 = call float @dx.op.dot3.f32(i32 55, float %4456, float %4457, float %4458, float %4518, float %4519, float %4520)  ; Dot3(ax,ay,az,bx,by,bz)
  %4522 = fmul fast float %4521, %4521
  %4523 = call float @dx.op.unary.f32(i32 6, float %4460)  ; FAbs(value)
  %4524 = call float @dx.op.binary.f32(i32 35, float %4512, float 0x3F847AE140000000)  ; FMax(a,b)
  %4525 = fmul fast float %4524, %4524
  %4526 = fmul fast float %4525, %4525
  %4527 = fsub fast float 1.000000e+00, %4526
  %4528 = fmul fast float %4321, %4527
  %4529 = fadd fast float %4528, %4526
  %4530 = bitcast float %4529 to i32
  %4531 = ashr i32 %4530, 1
  %4532 = add nsw i32 %4531, 532487669
  %4533 = bitcast i32 %4532 to float
  %4534 = fadd fast float %4533, %2022
  %4535 = fmul fast float %4526, %4522
  %4536 = fsub fast float 1.000000e+00, %4522
  %4537 = fadd fast float %4536, %4535
  %4538 = fmul fast float %4523, %4523
  %4539 = fmul fast float %4538, %4527
  %4540 = fadd fast float %4539, %4526
  %4541 = bitcast float %4540 to i32
  %4542 = ashr i32 %4541, 1
  %4543 = add nsw i32 %4542, 532487669
  %4544 = bitcast i32 %4543 to float
  %4545 = fadd fast float %4544, %4523
  %4546 = fmul fast float %4537, %4537
  %4547 = fmul fast float %4546, %4534
  %4548 = fmul fast float %4547, %4545
  %4549 = fdiv fast float 0x3FF0A00000000000, %4548
  %4550 = fmul fast float %4549, %4526
  %4551 = fmul fast float %4460, %4453
  %4552 = fmul fast float %4460, %4454
  %4553 = fmul fast float %4460, %4455
  %4554 = fmul fast float %4551, %4509
  %4555 = fmul fast float %4554, %4550
  %4556 = fmul fast float %4552, %4509
  %4557 = fmul fast float %4556, %4550
  %4558 = fmul fast float %4553, %4509
  %4559 = fmul fast float %4558, %4550
  %4560 = fmul fast float %4390, %4344
  %4561 = fmul fast float %4391, %4344
  %4562 = fmul fast float %4392, %4344
  %4563 = fsub fast float 1.000000e+00, %4308
  %4564 = bitcast float %4563 to i32
  %4565 = sitofp i32 %4564 to float
  %4566 = fmul fast float %4565, 5.000000e+00
  %4567 = fadd fast float %4566, 0xC1EFBF8940000000
  %4568 = fptosi float %4567 to i32
  %4569 = bitcast i32 %4568 to float
  %4570 = fmul fast float %4569, %1644
  %4571 = fmul fast float %4441, %4570
  %4572 = fmul fast float %4571, %3383
  %4573 = fmul fast float %4571, %3384
  %4574 = fmul fast float %4571, %3385
  %4575 = fadd fast float %4572, %4560
  %4576 = fadd fast float %4573, %4561
  %4577 = fadd fast float %4574, %4562
  %4578 = fmul fast float %4575, %4313
  %4579 = fmul fast float %4576, %4313
  %4580 = fmul fast float %4577, %4313
  %4581 = fmul fast float %4313, %4296
  %4582 = fmul fast float %4581, %4441
  %4583 = fmul fast float %4313, %4297
  %4584 = fmul fast float %4583, %4441
  %4585 = fmul fast float %4313, %4298
  %4586 = fmul fast float %4585, %4441
  %4587 = fadd fast float %4578, %4555
  %4588 = fadd fast float %4579, %4557
  %4589 = fadd fast float %4580, %4559
  %4590 = fmul fast float %4587, %4296
  %4591 = fmul fast float %4588, %4297
  %4592 = fmul fast float %4589, %4298
  %4593 = fadd fast float %4582, %3473
  %4594 = fmul fast float %4593, %1668
  %4595 = fadd fast float %4584, %3475
  %4596 = fmul fast float %4595, %1668
  %4597 = fadd fast float %4586, %3477
  %4598 = fmul fast float %4597, %1668
  %4599 = fadd fast float %4590, %3436
  %4600 = fmul fast float %4599, %1668
  %4601 = fadd fast float %4591, %3439
  %4602 = fmul fast float %4601, %1668
  %4603 = fadd fast float %4592, %3442
  %4604 = fmul fast float %4603, %1668
  br label %4605

; <label>:4605                                    ; preds = %4503, %4290, %3363
  %4606 = phi float [ %3437, %3363 ], [ %3437, %4290 ], [ %4600, %4503 ]
  %4607 = phi float [ %3440, %3363 ], [ %3440, %4290 ], [ %4602, %4503 ]
  %4608 = phi float [ %3443, %3363 ], [ %3443, %4290 ], [ %4604, %4503 ]
  %4609 = phi float [ %3474, %3363 ], [ %3474, %4290 ], [ %4594, %4503 ]
  %4610 = phi float [ %3476, %3363 ], [ %3476, %4290 ], [ %4596, %4503 ]
  %4611 = phi float [ %3478, %3363 ], [ %3478, %4290 ], [ %4598, %4503 ]
  %4612 = fmul fast float %3412, %1668
  %4613 = fmul fast float %3413, %1668
  %4614 = fmul fast float %3414, %1668
  %4615 = fadd fast float %4612, 1.000000e+00
  %4616 = fadd fast float %4613, 1.000000e+00
  %4617 = fadd fast float %4614, 1.000000e+00
  %4618 = call float @dx.op.dot3.f32(i32 55, float %4615, float %4616, float %4617, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4619 = fsub fast float 1.000000e+00, %4618
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 0
  %4622 = fmul fast float %4621, %3418
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 3
  %4625 = fsub fast float 1.000000e+00, %1640
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = fadd fast float %4611, %1639
  %4628 = fmul fast float %4627, %1640
  %4629 = fmul fast float %4626, %4624
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 3
  %4632 = fmul fast float %4609, %2009
  %4633 = fmul fast float %4610, %2010
  %4634 = fmul fast float %4611, %2011
  %4635 = fcmp fast ogt float %68, %175
  %4636 = and i1 %4635, %1741
  %4637 = or i1 %1820, %4636
  %4638 = icmp eq i32 %1740, 2
  %4639 = fcmp fast ole float %68, %175
  %4640 = and i1 %4639, %4638
  %4641 = or i1 %4640, %4637
  br i1 %4636, label %4642, label %4901

; <label>:4642                                    ; preds = %4605
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 2
  %4645 = extractvalue %dx.types.CBufRet.f32 %4643, 3
  %4646 = fmul fast float %4644, %77
  %4647 = fmul fast float %4645, %78
  %4648 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4650 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %4648, float %4649, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = extractvalue %dx.types.ResRet.f32 %4650, 1
  %4653 = extractvalue %dx.types.ResRet.f32 %4650, 2
  %4654 = extractvalue %dx.types.ResRet.f32 %4650, 3
  %4655 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %4648, float %4649, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = extractvalue %dx.types.ResRet.f32 %4655, 1
  %4658 = extractvalue %dx.types.ResRet.f32 %4655, 2
  %4659 = extractvalue %dx.types.ResRet.f32 %4655, 3
  %4660 = call float @dx.op.binary.f32(i32 35, float %4652, float %4653)  ; FMax(a,b)
  %4661 = call float @dx.op.binary.f32(i32 35, float %4651, float %4660)  ; FMax(a,b)
  %4662 = call float @dx.op.binary.f32(i32 35, float %4661, float %4654)  ; FMax(a,b)
  %4663 = call float @dx.op.binary.f32(i32 36, float %4657, float %4658)  ; FMin(a,b)
  %4664 = call float @dx.op.binary.f32(i32 36, float %4656, float %4663)  ; FMin(a,b)
  %4665 = call float @dx.op.binary.f32(i32 36, float %4664, float %4659)  ; FMin(a,b)
  %4666 = fmul fast float %4662, 2.550000e+02
  %4667 = fadd fast float %4666, 0x3F70101020000000
  %4668 = fptoui float %4667 to i32
  %4669 = fmul fast float %4665, 2.550000e+02
  %4670 = fadd fast float %4669, 0x3F70101020000000
  %4671 = fptoui float %4670 to i32
  %4672 = icmp ult i32 %4668, %4671
  br i1 %4672, label %4673, label %4841

; <label>:4673                                    ; preds = %4642
  %4674 = fcmp fast ogt float %67, 9.843750e-01
  %4675 = fadd fast float %68, -4.000000e+00
  %4676 = select i1 %4674, float -4.000000e+00, float %4675
  %4677 = call float @dx.op.binary.f32(i32 35, float %4676, float 0.000000e+00)  ; FMax(a,b)
  %4678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.f32 %4678, 0
  %4680 = fadd fast float %4679, %4677
  %4681 = extractvalue %dx.types.CBufRet.f32 %4678, 2
  %4682 = fmul fast float %4680, %4681
  %4683 = call float @dx.op.unary.f32(i32 23, float %4682)  ; Log(value)
  %4684 = extractvalue %dx.types.CBufRet.f32 %4678, 3
  %4685 = fmul fast float %4684, %4683
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 2
  %4688 = fmul fast float %4685, %4687
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = uitofp i32 %4668 to float
  %4691 = uitofp i32 %4671 to float
  %4692 = fadd fast float %4690, 5.000000e-01
  %4693 = fadd fast float %4691, 5.000000e-01
  %4694 = fmul fast float %4687, %4692
  %4695 = fmul fast float %4687, %4693
  %4696 = fadd fast float %4694, 0x3F0FFB4800000000
  %4697 = fadd fast float %4695, 0xBF0FFB4800000000
  %4698 = call float @dx.op.binary.f32(i32 35, float %4689, float %4696)  ; FMax(a,b)
  %4699 = call float @dx.op.binary.f32(i32 36, float %4698, float %4697)  ; FMin(a,b)
  %4700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4701 = extractvalue %dx.types.CBufRet.f32 %4700, 1
  %4702 = extractvalue %dx.types.CBufRet.f32 %4700, 2
  %4703 = extractvalue %dx.types.CBufRet.f32 %4700, 0
  %4704 = fmul fast float %4701, %4699
  %4705 = fadd fast float %4703, %4704
  %4706 = fadd fast float %4703, %4702
  %4707 = fsub fast float %4701, %4702
  %4708 = fadd fast float %4707, %4703
  %4709 = call float @dx.op.binary.f32(i32 35, float %4705, float %4706)  ; FMax(a,b)
  %4710 = call float @dx.op.binary.f32(i32 36, float %4709, float %4708)  ; FMin(a,b)
  %4711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %4648, float %4649, float %4710, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4712 = extractvalue %dx.types.ResRet.f32 %4711, 0
  %4713 = extractvalue %dx.types.ResRet.f32 %4711, 1
  %4714 = extractvalue %dx.types.ResRet.f32 %4711, 2
  %4715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.i32 %4715, 0
  %4717 = extractvalue %dx.types.CBufRet.i32 %4715, 1
  %4718 = uitofp i32 %4716 to float
  %4719 = uitofp i32 %4717 to float
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 0
  %4722 = extractvalue %dx.types.CBufRet.f32 %4720, 1
  %4723 = fmul fast float %4718, %4648
  %4724 = fmul fast float %4719, %4649
  %4725 = fadd fast float %4723, -5.000000e-01
  %4726 = fadd fast float %4724, -5.000000e-01
  %4727 = call float @dx.op.unary.f32(i32 22, float %4725)  ; Frc(value)
  %4728 = call float @dx.op.unary.f32(i32 22, float %4726)  ; Frc(value)
  %4729 = fmul fast float %4727, %4727
  %4730 = fmul fast float %4729, %4727
  %4731 = fsub fast float 3.000000e+00, %4727
  %4732 = fmul fast float %4729, %4731
  %4733 = fmul fast float %4727, 3.000000e+00
  %4734 = fmul fast float %4730, 3.000000e+00
  %4735 = fmul fast float %4729, 6.000000e+00
  %4736 = fsub fast float %4734, %4735
  %4737 = fadd fast float %4736, 4.000000e+00
  %4738 = fmul fast float %4737, 0x3FC5555560000000
  %4739 = fmul fast float %4730, -3.000000e+00
  %4740 = fadd fast float %4729, %4727
  %4741 = fmul fast float %4740, 3.000000e+00
  %4742 = fadd fast float %4739, 1.000000e+00
  %4743 = fadd fast float %4742, %4741
  %4744 = fmul fast float %4730, 0x3FC5555560000000
  %4745 = fmul fast float %4728, %4728
  %4746 = fmul fast float %4745, %4728
  %4747 = fsub fast float 3.000000e+00, %4728
  %4748 = fmul fast float %4745, %4747
  %4749 = fmul fast float %4728, 3.000000e+00
  %4750 = fmul fast float %4746, 3.000000e+00
  %4751 = fmul fast float %4745, 6.000000e+00
  %4752 = fsub fast float %4750, %4751
  %4753 = fadd fast float %4752, 4.000000e+00
  %4754 = fmul fast float %4753, 0x3FC5555560000000
  %4755 = fmul fast float %4746, -3.000000e+00
  %4756 = fadd fast float %4745, %4728
  %4757 = fmul fast float %4756, 3.000000e+00
  %4758 = fadd fast float %4755, 1.000000e+00
  %4759 = fadd fast float %4758, %4757
  %4760 = fmul fast float %4746, 0x3FC5555560000000
  %4761 = fadd fast float %4727, 1.000000e+00
  %4762 = fsub fast float 1.000000e+00, %4733
  %4763 = fadd fast float %4762, %4732
  %4764 = fadd fast float %4763, %4737
  %4765 = fmul fast float %4764, 0x3FC5555560000000
  %4766 = fdiv fast float %4738, %4765
  %4767 = fsub fast float %4761, %4766
  %4768 = fsub fast float 1.000000e+00, %4727
  %4769 = fadd fast float %4743, %4730
  %4770 = fmul fast float %4769, 0x3FC5555560000000
  %4771 = fdiv fast float %4744, %4770
  %4772 = fadd fast float %4768, %4771
  %4773 = fadd fast float %4728, 1.000000e+00
  %4774 = fsub fast float 1.000000e+00, %4749
  %4775 = fadd fast float %4774, %4748
  %4776 = fadd fast float %4775, %4753
  %4777 = fmul fast float %4776, 0x3FC5555560000000
  %4778 = fdiv fast float %4754, %4777
  %4779 = fsub fast float %4773, %4778
  %4780 = fsub fast float 1.000000e+00, %4728
  %4781 = fadd fast float %4759, %4746
  %4782 = fmul fast float %4781, 0x3FC5555560000000
  %4783 = fdiv fast float %4760, %4782
  %4784 = fadd fast float %4783, %4780
  %4785 = fmul fast float %4767, %4721
  %4786 = fsub fast float %4648, %4785
  %4787 = fmul fast float %4772, %4721
  %4788 = fadd fast float %4787, %4648
  %4789 = fmul fast float %4784, %4722
  %4790 = fadd fast float %4789, %4649
  %4791 = fmul fast float %4779, %4722
  %4792 = fsub fast float %4649, %4791
  %4793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4786, float %4792, float %4710, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4794 = extractvalue %dx.types.ResRet.f32 %4793, 0
  %4795 = extractvalue %dx.types.ResRet.f32 %4793, 1
  %4796 = extractvalue %dx.types.ResRet.f32 %4793, 2
  %4797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4788, float %4792, float %4710, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.ResRet.f32 %4797, 2
  %4801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4786, float %4790, float %4710, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 0
  %4803 = extractvalue %dx.types.ResRet.f32 %4801, 1
  %4804 = extractvalue %dx.types.ResRet.f32 %4801, 2
  %4805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4788, float %4790, float %4710, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4806 = extractvalue %dx.types.ResRet.f32 %4805, 0
  %4807 = extractvalue %dx.types.ResRet.f32 %4805, 1
  %4808 = extractvalue %dx.types.ResRet.f32 %4805, 2
  %4809 = fsub fast float %4802, %4794
  %4810 = fsub fast float %4803, %4795
  %4811 = fsub fast float %4804, %4796
  %4812 = fmul fast float %4809, %4782
  %4813 = fmul fast float %4810, %4782
  %4814 = fmul fast float %4811, %4782
  %4815 = fadd fast float %4812, %4794
  %4816 = fadd fast float %4813, %4795
  %4817 = fadd fast float %4814, %4796
  %4818 = fsub fast float %4806, %4798
  %4819 = fsub fast float %4807, %4799
  %4820 = fsub fast float %4808, %4800
  %4821 = fmul fast float %4818, %4782
  %4822 = fmul fast float %4819, %4782
  %4823 = fmul fast float %4820, %4782
  %4824 = fsub fast float %4798, %4815
  %4825 = fadd fast float %4824, %4821
  %4826 = fsub fast float %4799, %4816
  %4827 = fadd fast float %4826, %4822
  %4828 = fsub fast float %4800, %4817
  %4829 = fadd fast float %4828, %4823
  %4830 = fmul fast float %4825, %4770
  %4831 = fmul fast float %4827, %4770
  %4832 = fmul fast float %4829, %4770
  %4833 = fadd fast float %4830, %4815
  %4834 = fadd fast float %4831, %4816
  %4835 = fadd fast float %4832, %4817
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 1
  %4838 = fmul fast float %4833, %4837
  %4839 = fmul fast float %4834, %4837
  %4840 = fmul fast float %4835, %4837
  br label %4841

; <label>:4841                                    ; preds = %4673, %4642
  %4842 = phi float [ %4712, %4673 ], [ 1.000000e+00, %4642 ]
  %4843 = phi float [ %4713, %4673 ], [ 1.000000e+00, %4642 ]
  %4844 = phi float [ %4714, %4673 ], [ 1.000000e+00, %4642 ]
  %4845 = phi float [ %4838, %4673 ], [ 0.000000e+00, %4642 ]
  %4846 = phi float [ %4839, %4673 ], [ 0.000000e+00, %4642 ]
  %4847 = phi float [ %4840, %4673 ], [ 0.000000e+00, %4642 ]
  %4848 = fmul fast float %4845, %4619
  %4849 = fmul fast float %4846, %4619
  %4850 = fmul fast float %4847, %4619
  %4851 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = call float @dx.op.dot3.f32(i32 55, float %4848, float %4849, float %4850, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4853 = select i1 %214, float %4851, float %4842
  %4854 = select i1 %214, float %4851, float %4843
  %4855 = select i1 %214, float 1.000000e+00, float %4844
  %4856 = select i1 %214, float %4852, float %4848
  %4857 = select i1 %214, float 0.000000e+00, float %4849
  %4858 = select i1 %214, float 0.000000e+00, float %4850
  %4859 = fmul fast float %4853, %4632
  %4860 = fmul fast float %4854, %4633
  %4861 = fmul fast float %4855, %4634
  %4862 = fadd fast float %4859, %4856
  %4863 = fadd fast float %4860, %4857
  %4864 = fadd fast float %4858, %4861
  %4865 = fmul fast float %4853, %4606
  %4866 = fmul fast float %4854, %4607
  %4867 = fmul fast float %4855, %4608
  %4868 = fmul fast float %77, 2.000000e+00
  %4869 = fmul fast float %4868, %4644
  %4870 = fmul fast float %78, 2.000000e+00
  %4871 = fmul fast float %4870, %4645
  %4872 = fsub fast float 1.000000e+00, %4869
  %4873 = fsub fast float 1.000000e+00, %4871
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.CBufRet.f32 %4874, 1
  %4877 = extractvalue %dx.types.CBufRet.f32 %4874, 2
  %4878 = fmul fast float %4872, %4875
  %4879 = fmul fast float %4872, %4876
  %4880 = fmul fast float %4872, %4877
  %4881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4882 = extractvalue %dx.types.CBufRet.f32 %4881, 0
  %4883 = extractvalue %dx.types.CBufRet.f32 %4881, 1
  %4884 = extractvalue %dx.types.CBufRet.f32 %4881, 2
  %4885 = fmul fast float %4873, %4882
  %4886 = fmul fast float %4873, %4883
  %4887 = fmul fast float %4873, %4884
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.CBufRet.f32 %4888, 1
  %4891 = extractvalue %dx.types.CBufRet.f32 %4888, 2
  %4892 = fadd fast float %4885, %4889
  %4893 = fadd fast float %4892, %4878
  %4894 = fadd fast float %4886, %4890
  %4895 = fadd fast float %4894, %4879
  %4896 = fadd fast float %4887, %4891
  %4897 = fadd fast float %4896, %4880
  %4898 = fmul fast float %4893, %175
  %4899 = fmul fast float %4895, %175
  %4900 = fmul fast float %4897, %175
  br label %4901

; <label>:4901                                    ; preds = %4841, %4605
  %4902 = phi float [ %4898, %4841 ], [ %124, %4605 ]
  %4903 = phi float [ %4899, %4841 ], [ %125, %4605 ]
  %4904 = phi float [ %4900, %4841 ], [ %126, %4605 ]
  %4905 = phi float [ %175, %4841 ], [ %68, %4605 ]
  %4906 = phi float [ %4862, %4841 ], [ %4632, %4605 ]
  %4907 = phi float [ %4863, %4841 ], [ %4633, %4605 ]
  %4908 = phi float [ %4864, %4841 ], [ %4634, %4605 ]
  %4909 = phi float [ %4865, %4841 ], [ %4606, %4605 ]
  %4910 = phi float [ %4866, %4841 ], [ %4607, %4605 ]
  %4911 = phi float [ %4867, %4841 ], [ %4608, %4605 ]
  %4912 = phi float [ %4842, %4841 ], [ 1.000000e+00, %4605 ]
  br i1 %4641, label %6067, label %4913

; <label>:4913                                    ; preds = %4901
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 0
  %4916 = extractvalue %dx.types.CBufRet.f32 %4914, 1
  %4917 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4918 = extractvalue %dx.types.CBufRet.f32 %4914, 3
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 0
  %4921 = extractvalue %dx.types.CBufRet.f32 %4919, 1
  %4922 = extractvalue %dx.types.CBufRet.f32 %4919, 2
  %4923 = extractvalue %dx.types.CBufRet.f32 %4919, 3
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 0
  %4926 = extractvalue %dx.types.CBufRet.f32 %4924, 1
  %4927 = extractvalue %dx.types.CBufRet.f32 %4924, 2
  %4928 = extractvalue %dx.types.CBufRet.f32 %4924, 3
  %4929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4930 = extractvalue %dx.types.CBufRet.f32 %4929, 0
  %4931 = extractvalue %dx.types.CBufRet.f32 %4929, 1
  %4932 = extractvalue %dx.types.CBufRet.f32 %4929, 2
  %4933 = extractvalue %dx.types.CBufRet.f32 %4929, 3
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 3
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 3
  %4938 = extractvalue %dx.types.CBufRet.f32 %4936, 0
  %4939 = extractvalue %dx.types.CBufRet.f32 %4936, 1
  %4940 = extractvalue %dx.types.CBufRet.f32 %4936, 2
  %4941 = fcmp fast olt float %4940, -5.000000e-01
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4903, float %4904, float %4902, float %4903, float %4904)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = call float @dx.op.unary.f32(i32 25, float %4942)  ; Rsqrt(value)
  %4944 = fmul fast float %4943, %4942
  %4945 = fmul fast float %4943, %4902
  %4946 = fmul fast float %4943, %4903
  %4947 = fmul fast float %4943, %4904
  %4948 = fadd fast float %4944, %4918
  %4949 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4946, float %4947, float %4915, float %4916, float %4917)  ; Dot3(ax,ay,az,bx,by,bz)
  %4950 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4951 = extractvalue %dx.types.CBufRet.i32 %4950, 1
  %4952 = and i32 %4951, 1
  %4953 = icmp ne i32 %4952, 0
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 2
  %4956 = fcmp fast ogt float %4955, 0.000000e+00
  %4957 = and i1 %4953, %4956
  br i1 %4957, label %4958, label %5364, !dx.controlflow.hints !116

; <label>:4958                                    ; preds = %4913
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 3
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 2
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 2
  %4965 = fsub fast float %4962, %4964
  %4966 = and i32 %4951, 2
  %4967 = extractvalue %dx.types.CBufRet.i32 %4950, 0
  %4968 = call i32 @dx.op.binary.i32(i32 40, i32 %4967, i32 3)  ; UMin(a,b)
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 0
  %4971 = extractvalue %dx.types.CBufRet.f32 %4969, 1
  %4972 = extractvalue %dx.types.CBufRet.f32 %4963, 0
  %4973 = extractvalue %dx.types.CBufRet.f32 %4963, 1
  %4974 = fsub fast float %4970, %4972
  %4975 = fsub fast float %4971, %4973
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %4978 = fcmp fast ogt float %4977, 0.000000e+00
  %4979 = fsub fast float -0.000000e+00, %4974
  %4980 = fsub fast float -0.000000e+00, %4975
  %4981 = call float @dx.op.dot2.f32(i32 54, float %4945, float %4946, float %4945, float %4946)  ; Dot2(ax,ay,bx,by)
  %4982 = call float @dx.op.dot2.f32(i32 54, float %4945, float %4946, float %4979, float %4980)  ; Dot2(ax,ay,bx,by)
  %4983 = fmul fast float %4982, 2.000000e+00
  %4984 = call float @dx.op.dot2.f32(i32 54, float %4979, float %4980, float %4979, float %4980)  ; Dot2(ax,ay,bx,by)
  %4985 = fmul fast float %4977, %4977
  %4986 = fsub fast float %4984, %4985
  %4987 = fmul fast float %4983, %4983
  %4988 = fmul fast float %4981, 4.000000e+00
  %4989 = fmul fast float %4988, %4986
  %4990 = fsub fast float %4987, %4989
  %4991 = fcmp fast ogt float %4990, 0.000000e+00
  br i1 %4991, label %4992, label %5007

; <label>:4992                                    ; preds = %4958
  %4993 = fcmp fast ogt float %4983, 0.000000e+00
  %4994 = call float @dx.op.unary.f32(i32 24, float %4990)  ; Sqrt(value)
  %4995 = fsub fast float -0.000000e+00, %4994
  %4996 = select i1 %4993, float %4994, float %4995
  %4997 = fadd fast float %4996, %4983
  %4998 = fmul float %4997, -5.000000e-01
  %4999 = fdiv fast float %4998, %4981
  %5000 = call float @dx.op.binary.f32(i32 35, float %4999, float 0.000000e+00)  ; FMax(a,b)
  %5001 = call float @dx.op.binary.f32(i32 36, float %4944, float %5000)  ; FMin(a,b)
  %5002 = fdiv fast float %4986, %4998
  %5003 = call float @dx.op.binary.f32(i32 35, float %5002, float 0.000000e+00)  ; FMax(a,b)
  %5004 = call float @dx.op.binary.f32(i32 36, float %4944, float %5003)  ; FMin(a,b)
  %5005 = call float @dx.op.binary.f32(i32 36, float %5001, float %5004)  ; FMin(a,b)
  %5006 = call float @dx.op.binary.f32(i32 35, float %5001, float %5004)  ; FMax(a,b)
  br label %5007

; <label>:5007                                    ; preds = %4992, %4958
  %5008 = phi float [ %5006, %4992 ], [ -1.000000e+00, %4958 ]
  %5009 = phi float [ %5005, %4992 ], [ -1.000000e+00, %4958 ]
  %5010 = phi i1 [ true, %4992 ], [ false, %4958 ]
  %5011 = and i1 %4978, %5010
  br i1 %5011, label %5012, label %5014

; <label>:5012                                    ; preds = %5007
  %5013 = fcmp fast oeq float %5009, %5008
  br i1 %5013, label %5317, label %5015

; <label>:5014                                    ; preds = %5007
  br i1 %4978, label %5317, label %5015

; <label>:5015                                    ; preds = %5014, %5012
  %5016 = phi float [ %4944, %5014 ], [ %5008, %5012 ]
  %5017 = phi float [ 0.000000e+00, %5014 ], [ %5009, %5012 ]
  %5018 = icmp ne i32 %4966, 0
  %5019 = fmul fast float %5016, %4947
  %5020 = fadd fast float %5019, %4960
  %5021 = fmul fast float %5020, %5016
  %5022 = select i1 %5018, float 0.000000e+00, float %5021
  %5023 = fcmp fast oeq float %4947, 0.000000e+00
  %5024 = fdiv fast float %4965, %4947
  %5025 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5024)  ; FMax(a,b)
  %5026 = select i1 %5023, float %5016, float %5025
  %5027 = call float @dx.op.binary.f32(i32 36, float %5016, float %5026)  ; FMin(a,b)
  %5028 = fcmp fast ogt float %4947, 0.000000e+00
  %5029 = fcmp fast olt float %4965, 0.000000e+00
  br i1 %5028, label %5030, label %5087

; <label>:5030                                    ; preds = %5015
  %5031 = icmp eq i32 %4966, 0
  br i1 %5029, label %5032, label %5076

; <label>:5032                                    ; preds = %5030
  %5033 = select i1 %5031, float %5016, float 0.000000e+00
  %5034 = fsub fast float -0.000000e+00, %5033
  %5035 = call float @dx.op.unary.f32(i32 6, float %5034)  ; FAbs(value)
  %5036 = fmul fast float %5033, %4947
  %5037 = fadd fast float %5036, %4960
  %5038 = fmul fast float %5035, %5037
  %5039 = fsub fast float %5022, %5038
  %5040 = fsub fast float %5016, %5035
  %5041 = select i1 %5031, float %5040, float 0.000000e+00
  %5042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5043 = extractvalue %dx.types.CBufRet.f32 %5042, 0
  %5044 = extractvalue %dx.types.CBufRet.f32 %5042, 1
  %5045 = extractvalue %dx.types.CBufRet.f32 %5042, 2
  %5046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5047 = extractvalue %dx.types.CBufRet.f32 %5046, 0
  %5048 = extractvalue %dx.types.CBufRet.f32 %5046, 1
  %5049 = extractvalue %dx.types.CBufRet.f32 %5046, 2
  %5050 = extractvalue %dx.types.CBufRet.f32 %5046, 3
  %5051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5052 = extractvalue %dx.types.CBufRet.f32 %5051, 3
  %5053 = call float @dx.op.binary.f32(i32 36, float %5039, float %5052)  ; FMin(a,b)
  %5054 = fmul fast float %5050, %5041
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = fsub fast float %5047, %5043
  %5057 = fsub fast float %5048, %5044
  %5058 = fsub fast float %5049, %5045
  %5059 = fmul fast float %5055, %5056
  %5060 = fmul fast float %5055, %5057
  %5061 = fmul fast float %5055, %5058
  %5062 = fadd fast float %5059, %5043
  %5063 = fadd fast float %5060, %5044
  %5064 = fadd fast float %5061, %5045
  %5065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.f32 %5065, 0
  %5067 = extractvalue %dx.types.CBufRet.f32 %5065, 1
  %5068 = fadd fast float %5067, %5066
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5065, 2
  %5071 = extractvalue %dx.types.CBufRet.f32 %5065, 3
  %5072 = fadd fast float %5071, %5070
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = fmul fast float %5069, %5053
  %5075 = fmul fast float %5074, %5073
  br label %5317

; <label>:5076                                    ; preds = %5030
  br i1 %5031, label %5077, label %5098

; <label>:5077                                    ; preds = %5076
  %5078 = call float @dx.op.binary.f32(i32 36, float %5027, float %5017)  ; FMin(a,b)
  %5079 = fsub fast float %5027, %5078
  %5080 = fsub fast float %5079, %5016
  %5081 = call float @dx.op.unary.f32(i32 6, float %5080)  ; FAbs(value)
  %5082 = fadd fast float %5079, %5016
  %5083 = fmul fast float %5082, %4947
  %5084 = fadd fast float %5083, %4960
  %5085 = fmul fast float %5084, %5081
  %5086 = fsub fast float %5022, %5085
  br label %5098

; <label>:5087                                    ; preds = %5015
  br i1 %5029, label %5088, label %5098

; <label>:5088                                    ; preds = %5087
  %5089 = call float @dx.op.binary.f32(i32 35, float %5017, float %5027)  ; FMax(a,b)
  %5090 = icmp eq i32 %4966, 0
  %5091 = select i1 %5090, float %5027, float 0.000000e+00
  %5092 = fsub fast float -0.000000e+00, %5091
  %5093 = call float @dx.op.unary.f32(i32 6, float %5092)  ; FAbs(value)
  %5094 = fmul fast float %5091, %4947
  %5095 = fadd fast float %5094, %4960
  %5096 = fmul fast float %5093, %5095
  %5097 = fsub fast float %5022, %5096
  br label %5098

; <label>:5098                                    ; preds = %5088, %5087, %5077, %5076
  %5099 = phi float [ %5017, %5076 ], [ %5017, %5077 ], [ %5089, %5088 ], [ %5017, %5087 ]
  %5100 = phi float [ 0.000000e+00, %5076 ], [ %5081, %5077 ], [ %5093, %5088 ], [ 0.000000e+00, %5087 ]
  %5101 = phi float [ %5022, %5076 ], [ %5086, %5077 ], [ %5097, %5088 ], [ %5022, %5087 ]
  %5102 = phi float [ %5027, %5076 ], [ %5027, %5077 ], [ %5016, %5088 ], [ %5016, %5087 ]
  %5103 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 0
  store float -1.000000e+00, float* %5103, align 4, !tbaa !117, !noalias !119
  %5104 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 1
  store float -1.000000e+00, float* %5104, align 4, !tbaa !117, !noalias !119
  %5105 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 2
  store float -1.000000e+00, float* %5105, align 4, !tbaa !117, !noalias !119
  %5106 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 0
  store float -1.000000e+00, float* %5106, align 4, !tbaa !117, !noalias !119
  %5107 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 1
  store float -1.000000e+00, float* %5107, align 4, !tbaa !117, !noalias !119
  %5108 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 2
  store float -1.000000e+00, float* %5108, align 4, !tbaa !117, !noalias !119
  %5109 = icmp sgt i32 %4968, 0
  br i1 %5109, label %5110, label %5171

; <label>:5110                                    ; preds = %5098
  br label %5111

; <label>:5111                                    ; preds = %5160, %5110
  %5112 = phi i32 [ %5161, %5160 ], [ 0, %5110 ]
  %5113 = phi i32 [ %5162, %5160 ], [ 0, %5110 ]
  %5114 = add nuw i32 %5113, 171
  %5115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %5114)  ; CBufferLoadLegacy(handle,regIndex)
  %5116 = extractvalue %dx.types.CBufRet.f32 %5115, 0
  %5117 = extractvalue %dx.types.CBufRet.f32 %5115, 1
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.CBufRet.f32 %5118, 1
  %5121 = fsub fast float %5116, %5119
  %5122 = fsub fast float %5117, %5120
  %5123 = extractvalue %dx.types.CBufRet.f32 %5115, 2
  %5124 = fsub fast float -0.000000e+00, %5121
  %5125 = fsub fast float -0.000000e+00, %5122
  %5126 = call float @dx.op.dot2.f32(i32 54, float %4945, float %4946, float %5124, float %5125)  ; Dot2(ax,ay,bx,by)
  %5127 = fmul fast float %5126, 2.000000e+00
  %5128 = call float @dx.op.dot2.f32(i32 54, float %5124, float %5125, float %5124, float %5125)  ; Dot2(ax,ay,bx,by)
  %5129 = fmul fast float %5123, %5123
  %5130 = fsub fast float %5128, %5129
  %5131 = fmul fast float %5127, %5127
  %5132 = fmul fast float %4988, %5130
  %5133 = fsub fast float %5131, %5132
  %5134 = fcmp fast ogt float %5133, 0.000000e+00
  br i1 %5134, label %5135, label %5150

; <label>:5135                                    ; preds = %5111
  %5136 = fcmp fast ogt float %5127, 0.000000e+00
  %5137 = call float @dx.op.unary.f32(i32 24, float %5133)  ; Sqrt(value)
  %5138 = fsub fast float -0.000000e+00, %5137
  %5139 = select i1 %5136, float %5137, float %5138
  %5140 = fadd fast float %5139, %5127
  %5141 = fmul float %5140, -5.000000e-01
  %5142 = fdiv fast float %5141, %4981
  %5143 = call float @dx.op.binary.f32(i32 35, float %5142, float 0.000000e+00)  ; FMax(a,b)
  %5144 = call float @dx.op.binary.f32(i32 36, float %5016, float %5143)  ; FMin(a,b)
  %5145 = fdiv fast float %5130, %5141
  %5146 = call float @dx.op.binary.f32(i32 35, float %5145, float 0.000000e+00)  ; FMax(a,b)
  %5147 = call float @dx.op.binary.f32(i32 36, float %5016, float %5146)  ; FMin(a,b)
  %5148 = call float @dx.op.binary.f32(i32 36, float %5144, float %5147)  ; FMin(a,b)
  %5149 = call float @dx.op.binary.f32(i32 35, float %5144, float %5147)  ; FMax(a,b)
  br label %5150

; <label>:5150                                    ; preds = %5135, %5111
  %5151 = phi float [ %5149, %5135 ], [ -1.000000e+00, %5111 ]
  %5152 = phi float [ %5148, %5135 ], [ -1.000000e+00, %5111 ]
  %5153 = phi i1 [ true, %5135 ], [ false, %5111 ]
  br i1 %5153, label %5154, label %5160

; <label>:5154                                    ; preds = %5150
  %5155 = call float @dx.op.binary.f32(i32 35, float %5099, float %5152)  ; FMax(a,b)
  %5156 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 %5113
  store float %5155, float* %5156, align 4, !tbaa !117, !noalias !119
  %5157 = call float @dx.op.binary.f32(i32 35, float %5099, float %5151)  ; FMax(a,b)
  %5158 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %5113
  store float %5157, float* %5158, align 4, !tbaa !117, !noalias !119
  %5159 = add nsw i32 %5112, 1
  br label %5160

; <label>:5160                                    ; preds = %5154, %5150
  %5161 = phi i32 [ %5159, %5154 ], [ %5112, %5150 ]
  %5162 = add nuw nsw i32 %5113, 1
  %5163 = icmp eq i32 %5162, %4968
  br i1 %5163, label %5164, label %5111

; <label>:5164                                    ; preds = %5160
  %5165 = load float, float* %5105, align 4, !tbaa !117, !alias.scope !135, !noalias !138
  %5166 = load float, float* %5104, align 4, !tbaa !117, !alias.scope !141, !noalias !142
  %5167 = load float, float* %5103, align 4, !tbaa !117, !alias.scope !143, !noalias !144
  %5168 = load float, float* %5108, align 4, !tbaa !117, !alias.scope !145, !noalias !148
  %5169 = load float, float* %5107, align 4, !tbaa !117, !alias.scope !151, !noalias !152
  %5170 = load float, float* %5106, align 4, !tbaa !117, !alias.scope !153, !noalias !154
  br label %5171

; <label>:5171                                    ; preds = %5164, %5098
  %5172 = phi float [ -1.000000e+00, %5098 ], [ %5170, %5164 ]
  %5173 = phi float [ -1.000000e+00, %5098 ], [ %5169, %5164 ]
  %5174 = phi float [ -1.000000e+00, %5098 ], [ %5168, %5164 ]
  %5175 = phi float [ -1.000000e+00, %5098 ], [ %5167, %5164 ]
  %5176 = phi float [ -1.000000e+00, %5098 ], [ %5166, %5164 ]
  %5177 = phi float [ -1.000000e+00, %5098 ], [ %5165, %5164 ]
  %5178 = phi i32 [ 0, %5098 ], [ %5161, %5164 ]
  %5179 = call float @dx.op.binary.f32(i32 36, float %5176, float %5177)  ; FMin(a,b)
  %5180 = call float @dx.op.binary.f32(i32 36, float %5175, float %5179)  ; FMin(a,b)
  %5181 = call float @dx.op.binary.f32(i32 35, float %5175, float %5176)  ; FMax(a,b)
  %5182 = call float @dx.op.binary.f32(i32 36, float %5181, float %5177)  ; FMin(a,b)
  %5183 = call float @dx.op.binary.f32(i32 36, float %5175, float %5176)  ; FMin(a,b)
  %5184 = call float @dx.op.binary.f32(i32 35, float %5183, float %5182)  ; FMax(a,b)
  %5185 = call float @dx.op.binary.f32(i32 35, float %5176, float %5177)  ; FMax(a,b)
  %5186 = call float @dx.op.binary.f32(i32 35, float %5175, float %5185)  ; FMax(a,b)
  store float %5180, float* %5103, align 4, !tbaa !117, !alias.scope !143, !noalias !144
  store float %5184, float* %5104, align 4, !tbaa !117, !alias.scope !141, !noalias !142
  store float %5186, float* %5105, align 4, !tbaa !117, !alias.scope !135, !noalias !138
  %5187 = call float @dx.op.binary.f32(i32 36, float %5173, float %5174)  ; FMin(a,b)
  %5188 = call float @dx.op.binary.f32(i32 36, float %5172, float %5187)  ; FMin(a,b)
  %5189 = call float @dx.op.binary.f32(i32 35, float %5172, float %5173)  ; FMax(a,b)
  %5190 = call float @dx.op.binary.f32(i32 36, float %5189, float %5174)  ; FMin(a,b)
  %5191 = call float @dx.op.binary.f32(i32 36, float %5172, float %5173)  ; FMin(a,b)
  %5192 = call float @dx.op.binary.f32(i32 35, float %5191, float %5190)  ; FMax(a,b)
  %5193 = call float @dx.op.binary.f32(i32 35, float %5173, float %5174)  ; FMax(a,b)
  %5194 = call float @dx.op.binary.f32(i32 35, float %5172, float %5193)  ; FMax(a,b)
  store float %5188, float* %5106, align 4, !tbaa !117, !alias.scope !153, !noalias !154
  store float %5192, float* %5107, align 4, !tbaa !117, !alias.scope !151, !noalias !152
  store float %5194, float* %5108, align 4, !tbaa !117, !alias.scope !145, !noalias !148
  %5195 = sub nsw i32 3, %5178
  %5196 = icmp sgt i32 %5195, 2
  br i1 %5196, label %5197, label %5235

; <label>:5197                                    ; preds = %5171
  %5198 = icmp eq i32 %4966, 0
  %5199 = fsub fast float %5016, %5100
  %5200 = select i1 %5198, float %5199, float %5100
  %5201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.f32 %5201, 0
  %5203 = extractvalue %dx.types.CBufRet.f32 %5201, 1
  %5204 = extractvalue %dx.types.CBufRet.f32 %5201, 2
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 0
  %5207 = extractvalue %dx.types.CBufRet.f32 %5205, 1
  %5208 = extractvalue %dx.types.CBufRet.f32 %5205, 2
  %5209 = extractvalue %dx.types.CBufRet.f32 %5205, 3
  %5210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = extractvalue %dx.types.CBufRet.f32 %5210, 3
  %5212 = call float @dx.op.binary.f32(i32 36, float %5101, float %5211)  ; FMin(a,b)
  %5213 = fmul fast float %5209, %5200
  %5214 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5215 = fsub fast float %5206, %5202
  %5216 = fsub fast float %5207, %5203
  %5217 = fsub fast float %5208, %5204
  %5218 = fmul fast float %5214, %5215
  %5219 = fmul fast float %5214, %5216
  %5220 = fmul fast float %5214, %5217
  %5221 = fadd fast float %5218, %5202
  %5222 = fadd fast float %5219, %5203
  %5223 = fadd fast float %5220, %5204
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5227 = fadd fast float %5226, %5225
  %5228 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5229 = extractvalue %dx.types.CBufRet.f32 %5224, 2
  %5230 = extractvalue %dx.types.CBufRet.f32 %5224, 3
  %5231 = fadd fast float %5230, %5229
  %5232 = call float @dx.op.unary.f32(i32 7, float %5231)  ; Saturate(value)
  %5233 = fmul fast float %5228, %5212
  %5234 = fmul fast float %5233, %5232
  br label %5317

; <label>:5235                                    ; preds = %5171
  %5236 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 %5195
  %5237 = load float, float* %5236, align 4, !tbaa !117, !noalias !119
  %5238 = fcmp fast olt float %5237, %5102
  %5239 = icmp sgt i32 %5178, 0
  %5240 = and i1 %5239, %5238
  br i1 %5240, label %5241, label %5278

; <label>:5241                                    ; preds = %5235
  br label %5242

; <label>:5242                                    ; preds = %5271, %5241
  %5243 = phi float [ %5272, %5271 ], [ %5100, %5241 ]
  %5244 = phi float [ %5273, %5271 ], [ %5101, %5241 ]
  %5245 = phi float [ %5253, %5271 ], [ %5237, %5241 ]
  %5246 = phi i32 [ %5250, %5271 ], [ %5195, %5241 ]
  %5247 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %5246
  %5248 = load float, float* %5247, align 4, !tbaa !117, !noalias !119
  %5249 = icmp slt i32 %5246, 2
  %5250 = add nsw i32 %5246, 1
  %5251 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 %5250
  %5252 = load float, float* %5251, align 4, !tbaa !117, !noalias !119
  %5253 = select i1 %5249, float %5252, float %5016
  %5254 = call float @dx.op.binary.f32(i32 36, float %5253, float %5248)  ; FMin(a,b)
  %5255 = call float @dx.op.binary.f32(i32 36, float %5102, float %5254)  ; FMin(a,b)
  %5256 = icmp eq i32 %4966, 0
  %5257 = fadd fast float %5255, %5245
  %5258 = fmul fast float %5257, %4947
  %5259 = fadd fast float %5258, %4960
  br i1 %5256, label %5265, label %5260

; <label>:5260                                    ; preds = %5242
  %5261 = fsub fast float %5255, %5245
  %5262 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5261)  ; FMax(a,b)
  %5263 = fmul fast float %5262, %5259
  %5264 = fadd fast float %5263, %5244
  br label %5271

; <label>:5265                                    ; preds = %5242
  %5266 = fsub fast float %5245, %5255
  %5267 = call float @dx.op.unary.f32(i32 6, float %5266)  ; FAbs(value)
  %5268 = fadd fast float %5267, %5243
  %5269 = fmul fast float %5267, %5259
  %5270 = fsub fast float %5244, %5269
  br label %5271

; <label>:5271                                    ; preds = %5265, %5260
  %5272 = phi float [ %5262, %5260 ], [ %5268, %5265 ]
  %5273 = phi float [ %5264, %5260 ], [ %5270, %5265 ]
  %5274 = fcmp fast olt float %5253, %5102
  %5275 = icmp slt i32 %5250, 3
  %5276 = and i1 %5275, %5274
  br i1 %5276, label %5242, label %5277

; <label>:5277                                    ; preds = %5271
  br label %5278

; <label>:5278                                    ; preds = %5277, %5235
  %5279 = phi float [ %5100, %5235 ], [ %5272, %5277 ]
  %5280 = phi float [ %5101, %5235 ], [ %5273, %5277 ]
  %5281 = fsub fast float %5016, %5279
  %5282 = select i1 %5018, float %5279, float %5281
  %5283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5284 = extractvalue %dx.types.CBufRet.f32 %5283, 0
  %5285 = extractvalue %dx.types.CBufRet.f32 %5283, 1
  %5286 = extractvalue %dx.types.CBufRet.f32 %5283, 2
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 0
  %5289 = extractvalue %dx.types.CBufRet.f32 %5287, 1
  %5290 = extractvalue %dx.types.CBufRet.f32 %5287, 2
  %5291 = extractvalue %dx.types.CBufRet.f32 %5287, 3
  %5292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5292, 3
  %5294 = call float @dx.op.binary.f32(i32 36, float %5280, float %5293)  ; FMin(a,b)
  %5295 = fmul fast float %5291, %5282
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = fsub fast float %5288, %5284
  %5298 = fsub fast float %5289, %5285
  %5299 = fsub fast float %5290, %5286
  %5300 = fmul fast float %5296, %5297
  %5301 = fmul fast float %5296, %5298
  %5302 = fmul fast float %5296, %5299
  %5303 = fadd fast float %5300, %5284
  %5304 = fadd fast float %5301, %5285
  %5305 = fadd fast float %5302, %5286
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5308 = extractvalue %dx.types.CBufRet.f32 %5306, 1
  %5309 = fadd fast float %5308, %5307
  %5310 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5311 = extractvalue %dx.types.CBufRet.f32 %5306, 2
  %5312 = extractvalue %dx.types.CBufRet.f32 %5306, 3
  %5313 = fadd fast float %5312, %5311
  %5314 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5315 = fmul fast float %5310, %5294
  %5316 = fmul fast float %5315, %5314
  br label %5317

; <label>:5317                                    ; preds = %5278, %5197, %5032, %5014, %5012
  %5318 = phi float [ %5041, %5032 ], [ %5200, %5197 ], [ %5282, %5278 ], [ 0.000000e+00, %5012 ], [ 0.000000e+00, %5014 ]
  %5319 = phi float [ %5075, %5032 ], [ %5234, %5197 ], [ %5316, %5278 ], [ 0.000000e+00, %5012 ], [ 0.000000e+00, %5014 ]
  %5320 = phi float [ %5062, %5032 ], [ %5221, %5197 ], [ %5303, %5278 ], [ 0.000000e+00, %5012 ], [ 0.000000e+00, %5014 ]
  %5321 = phi float [ %5063, %5032 ], [ %5222, %5197 ], [ %5304, %5278 ], [ 0.000000e+00, %5012 ], [ 0.000000e+00, %5014 ]
  %5322 = phi float [ %5064, %5032 ], [ %5223, %5197 ], [ %5305, %5278 ], [ 0.000000e+00, %5012 ], [ 0.000000e+00, %5014 ]
  %5323 = fmul fast float %4955, %5319
  %5324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5324, 2
  %5326 = fsub fast float %4962, %5325
  %5327 = fcmp fast olt float %5323, -2.000000e+01
  %5328 = call float @dx.op.unary.f32(i32 21, float %5323)  ; Exp(value)
  %5329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.f32 %5329, 2
  %5331 = extractvalue %dx.types.CBufRet.f32 %5329, 3
  %5332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5333 = extractvalue %dx.types.CBufRet.f32 %5332, 2
  %5334 = fmul fast float %5331, %5326
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = fsub fast float 1.000000e+00, %5335
  %5337 = fmul fast float %4947, 5.000000e-01
  %5338 = fadd fast float %5337, 5.000000e-01
  %5339 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5340 = fsub fast float 1.000000e+00, %5339
  %5341 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5336)  ; FMax(a,b)
  %5342 = fdiv fast float %5340, %5341
  %5343 = fsub fast float %5326, %4904
  %5344 = call float @dx.op.unary.f32(i32 6, float %5343)  ; FAbs(value)
  %5345 = fmul fast float %5344, %5330
  %5346 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5347 = fsub fast float 1.000000e+00, %5345
  %5348 = fmul fast float %5347, %5346
  %5349 = fadd fast float %5348, %5345
  %5350 = fmul fast float %5333, %5326
  %5351 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5352 = fsub fast float 1.000000e+00, %5349
  %5353 = fmul fast float %5352, %5351
  %5354 = fadd fast float %5353, %5349
  %5355 = call float @dx.op.unary.f32(i32 7, float %5354)  ; Saturate(value)
  %5356 = fadd fast float %5328, -1.000000e+00
  %5357 = select i1 %5327, float -1.000000e+00, float %5356
  %5358 = fmul fast float %5355, %5357
  %5359 = fadd fast float %5358, 1.000000e+00
  %5360 = fsub fast float -0.000000e+00, %5358
  %5361 = fmul fast float %5320, %5360
  %5362 = fmul fast float %5321, %5360
  %5363 = fmul fast float %5322, %5360
  br label %5364

; <label>:5364                                    ; preds = %5317, %4913
  %5365 = phi float [ %5318, %5317 ], [ 0.000000e+00, %4913 ]
  %5366 = phi float [ %5359, %5317 ], [ 1.000000e+00, %4913 ]
  %5367 = phi float [ %5361, %5317 ], [ 0.000000e+00, %4913 ]
  %5368 = phi float [ %5362, %5317 ], [ 0.000000e+00, %4913 ]
  %5369 = phi float [ %5363, %5317 ], [ 0.000000e+00, %4913 ]
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 1
  %5372 = fsub fast float 1.000000e+00, %5366
  %5373 = fmul fast float %5372, %4948
  %5374 = fmul fast float %5373, %5371
  %5375 = fsub fast float %4948, %5374
  br i1 %4941, label %5376, label %5405, !dx.controlflow.hints !155

; <label>:5376                                    ; preds = %5364
  %5377 = fmul fast float %4949, %4938
  %5378 = fadd fast float %5377, %4939
  %5379 = call float @dx.op.unary.f32(i32 7, float %5378)  ; Saturate(value)
  %5380 = fmul fast float %4920, %5375
  %5381 = fsub fast float -0.000000e+00, %5380
  %5382 = fmul fast float %4921, %5375
  %5383 = fsub fast float -0.000000e+00, %5382
  %5384 = call float @dx.op.unary.f32(i32 21, float %5381)  ; Exp(value)
  %5385 = call float @dx.op.unary.f32(i32 21, float %5383)  ; Exp(value)
  %5386 = call float @dx.op.binary.f32(i32 35, float %4928, float %5384)  ; FMax(a,b)
  %5387 = call float @dx.op.binary.f32(i32 35, float %4928, float %5385)  ; FMax(a,b)
  %5388 = fsub fast float %5387, %5386
  %5389 = fmul fast float %5388, %5379
  %5390 = fadd fast float %5389, %5386
  %5391 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5392 = fsub fast float %4925, %4930
  %5393 = fsub fast float %4926, %4931
  %5394 = fsub fast float %4927, %4932
  %5395 = fmul fast float %5379, %5392
  %5396 = fmul fast float %5379, %5393
  %5397 = fmul fast float %5379, %5394
  %5398 = fadd fast float %5395, %4930
  %5399 = fadd fast float %5396, %4931
  %5400 = fadd fast float %5397, %4932
  %5401 = fsub fast float 1.000000e+00, %5391
  %5402 = fmul fast float %5401, %5398
  %5403 = fmul fast float %5401, %5399
  %5404 = fmul fast float %5401, %5400
  br label %5464

; <label>:5405                                    ; preds = %5364
  %5406 = fmul fast float %5375, %4937
  %5407 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  %5408 = fsub fast float 2.000000e+00, %5407
  %5409 = fmul fast float %5407, 9.921875e-01
  %5410 = fmul fast float %5409, %5408
  %5411 = fadd fast float %5410, 3.906250e-03
  %5412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %45, float %5411, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5413 = extractvalue %dx.types.ResRet.f32 %5412, 0
  %5414 = fsub fast float %5407, %5413
  %5415 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5414)  ; FMax(a,b)
  %5416 = fmul fast float %4923, %4904
  %5417 = call float @dx.op.unary.f32(i32 6, float %5416)  ; FAbs(value)
  %5418 = fcmp fast ogt float %5417, 0x3EB0C6F7A0000000
  br i1 %5418, label %5419, label %5425, !dx.controlflow.hints !156

; <label>:5419                                    ; preds = %5405
  %5420 = fmul fast float %5416, 0xBFF7154760000000
  %5421 = call float @dx.op.unary.f32(i32 21, float %5420)  ; Exp(value)
  %5422 = fsub fast float 1.000000e+00, %5421
  %5423 = fdiv fast float %5422, %5416
  %5424 = fmul fast float %5423, %4933
  br label %5425

; <label>:5425                                    ; preds = %5419, %5405
  %5426 = phi float [ %5424, %5419 ], [ %4933, %5405 ]
  %5427 = fadd fast float %5426, %4935
  %5428 = fmul fast float %5427, %5415
  %5429 = fmul fast float %4920, %5428
  %5430 = fsub fast float -0.000000e+00, %5429
  %5431 = fmul fast float %4921, %5428
  %5432 = fsub fast float -0.000000e+00, %5431
  %5433 = fmul fast float %4922, %5428
  %5434 = fsub fast float -0.000000e+00, %5433
  %5435 = call float @dx.op.unary.f32(i32 21, float %5430)  ; Exp(value)
  %5436 = call float @dx.op.unary.f32(i32 21, float %5432)  ; Exp(value)
  %5437 = call float @dx.op.unary.f32(i32 21, float %5434)  ; Exp(value)
  %5438 = fmul fast float %4949, %4949
  %5439 = fadd fast float %5438, 1.000000e+00
  %5440 = fmul fast float %5439, 0x3FAE8EC8A0000000
  %5441 = fmul fast float %5440, %4930
  %5442 = fmul fast float %5440, %4931
  %5443 = fmul fast float %5440, %4932
  %5444 = fmul fast float %4949, %4928
  %5445 = fsub fast float 1.000000e+00, %5444
  %5446 = fmul fast float %4928, %4928
  %5447 = fsub fast float 1.000000e+00, %5446
  %5448 = fmul fast float %5447, 0x3FB45F3060000000
  %5449 = fmul fast float %5445, %5445
  %5450 = fdiv fast float 1.000000e+00, %5449
  %5451 = fmul fast float %5448, %5450
  %5452 = fmul fast float %5451, %4925
  %5453 = fmul fast float %5451, %4926
  %5454 = fmul fast float %5451, %4927
  %5455 = fadd fast float %5452, %5441
  %5456 = fadd fast float %5453, %5442
  %5457 = fadd fast float %5454, %5443
  %5458 = fsub fast float 1.000000e+00, %5435
  %5459 = fsub fast float 1.000000e+00, %5436
  %5460 = fsub fast float 1.000000e+00, %5437
  %5461 = fmul fast float %5455, %5458
  %5462 = fmul fast float %5456, %5459
  %5463 = fmul fast float %5457, %5460
  br label %5464

; <label>:5464                                    ; preds = %5425, %5376
  %5465 = phi float [ %5402, %5376 ], [ %5461, %5425 ]
  %5466 = phi float [ %5403, %5376 ], [ %5462, %5425 ]
  %5467 = phi float [ %5404, %5376 ], [ %5463, %5425 ]
  %5468 = phi float [ %5391, %5376 ], [ %5435, %5425 ]
  %5469 = phi float [ %5391, %5376 ], [ %5436, %5425 ]
  %5470 = phi float [ %5391, %5376 ], [ %5437, %5425 ]
  br i1 %4957, label %5471, label %5669, !dx.controlflow.hints !157

; <label>:5471                                    ; preds = %5464
  %5472 = extractvalue %dx.types.CBufRet.f32 %5370, 0
  %5473 = fmul fast float %5472, %5372
  %5474 = fsub fast float %5367, %5465
  %5475 = fsub fast float %5368, %5466
  %5476 = fsub fast float %5369, %5467
  %5477 = fmul fast float %5473, %5474
  %5478 = fmul fast float %5473, %5475
  %5479 = fmul fast float %5473, %5476
  %5480 = fadd fast float %5477, %5465
  %5481 = fadd fast float %5478, %5466
  %5482 = fadd fast float %5479, %5467
  %5483 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5468)  ; FMax(a,b)
  %5484 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5469)  ; FMax(a,b)
  %5485 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5470)  ; FMax(a,b)
  %5486 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5366)  ; FMax(a,b)
  %5487 = call float @dx.op.binary.f32(i32 35, float %5365, float %5375)  ; FMax(a,b)
  %5488 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5487)  ; FMax(a,b)
  %5489 = fdiv fast float %5365, %5488
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = fdiv fast float %5375, %5488
  %5492 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5493 = fcmp fast une float %5486, 1.000000e+00
  br i1 %5493, label %5494, label %5507, !dx.controlflow.hints !158

; <label>:5494                                    ; preds = %5471
  %5495 = call float @dx.op.unary.f32(i32 23, float %5486)  ; Log(value)
  %5496 = fmul fast float %5495, 0x3FE62E4300000000
  %5497 = fmul fast float %5367, %5496
  %5498 = fsub fast float -0.000000e+00, %5497
  %5499 = fmul fast float %5368, %5496
  %5500 = fsub fast float -0.000000e+00, %5499
  %5501 = fmul fast float %5369, %5496
  %5502 = fsub fast float -0.000000e+00, %5501
  %5503 = fsub fast float 1.000000e+00, %5486
  %5504 = fdiv fast float %5498, %5503
  %5505 = fdiv fast float %5500, %5503
  %5506 = fdiv fast float %5502, %5503
  br label %5507

; <label>:5507                                    ; preds = %5494, %5471
  %5508 = phi float [ %5504, %5494 ], [ %5367, %5471 ]
  %5509 = phi float [ %5505, %5494 ], [ %5368, %5471 ]
  %5510 = phi float [ %5506, %5494 ], [ %5369, %5471 ]
  %5511 = phi float [ %5496, %5494 ], [ 0.000000e+00, %5471 ]
  %5512 = fcmp fast une float %5483, 1.000000e+00
  br i1 %5512, label %5513, label %5520, !dx.controlflow.hints !159

; <label>:5513                                    ; preds = %5507
  %5514 = call float @dx.op.unary.f32(i32 23, float %5483)  ; Log(value)
  %5515 = fmul fast float %5514, 0x3FE62E4300000000
  %5516 = fmul fast float %5480, %5515
  %5517 = fsub fast float -0.000000e+00, %5516
  %5518 = fsub fast float 1.000000e+00, %5483
  %5519 = fdiv fast float %5517, %5518
  br label %5520

; <label>:5520                                    ; preds = %5513, %5507
  %5521 = phi float [ %5519, %5513 ], [ %5480, %5507 ]
  %5522 = phi float [ %5515, %5513 ], [ 0.000000e+00, %5507 ]
  %5523 = fcmp fast une float %5484, 1.000000e+00
  br i1 %5523, label %5524, label %5531, !dx.controlflow.hints !159

; <label>:5524                                    ; preds = %5520
  %5525 = call float @dx.op.unary.f32(i32 23, float %5484)  ; Log(value)
  %5526 = fmul fast float %5525, 0x3FE62E4300000000
  %5527 = fmul fast float %5481, %5526
  %5528 = fsub fast float -0.000000e+00, %5527
  %5529 = fsub fast float 1.000000e+00, %5484
  %5530 = fdiv fast float %5528, %5529
  br label %5531

; <label>:5531                                    ; preds = %5524, %5520
  %5532 = phi float [ %5530, %5524 ], [ %5481, %5520 ]
  %5533 = phi float [ %5526, %5524 ], [ 0.000000e+00, %5520 ]
  %5534 = fcmp fast une float %5485, 1.000000e+00
  br i1 %5534, label %5535, label %5542, !dx.controlflow.hints !159

; <label>:5535                                    ; preds = %5531
  %5536 = call float @dx.op.unary.f32(i32 23, float %5485)  ; Log(value)
  %5537 = fmul fast float %5536, 0x3FE62E4300000000
  %5538 = fmul fast float %5482, %5537
  %5539 = fsub fast float -0.000000e+00, %5538
  %5540 = fsub fast float 1.000000e+00, %5485
  %5541 = fdiv fast float %5539, %5540
  br label %5542

; <label>:5542                                    ; preds = %5535, %5531
  %5543 = phi float [ %5541, %5535 ], [ %5482, %5531 ]
  %5544 = phi float [ %5537, %5535 ], [ 0.000000e+00, %5531 ]
  %5545 = fmul fast float %5508, %5492
  %5546 = fmul fast float %5509, %5492
  %5547 = fmul fast float %5510, %5492
  %5548 = fmul fast float %5511, %5492
  %5549 = fmul fast float %5521, %5490
  %5550 = fmul fast float %5532, %5490
  %5551 = fmul fast float %5543, %5490
  %5552 = fmul fast float %5522, %5490
  %5553 = fmul fast float %5533, %5490
  %5554 = fmul fast float %5544, %5490
  %5555 = fadd fast float %5549, %5545
  %5556 = fadd fast float %5550, %5546
  %5557 = fadd fast float %5551, %5547
  %5558 = fadd fast float %5552, %5548
  %5559 = fadd fast float %5553, %5548
  %5560 = fadd fast float %5554, %5548
  %5561 = fcmp fast une float %5558, 0.000000e+00
  br i1 %5561, label %5562, label %5569, !dx.controlflow.hints !160

; <label>:5562                                    ; preds = %5542
  %5563 = fmul fast float %5558, 0x3FF7154760000000
  %5564 = call float @dx.op.unary.f32(i32 21, float %5563)  ; Exp(value)
  %5565 = fsub fast float 1.000000e+00, %5564
  %5566 = fmul fast float %5555, %5565
  %5567 = fsub fast float -0.000000e+00, %5566
  %5568 = fdiv fast float %5567, %5558
  br label %5569

; <label>:5569                                    ; preds = %5562, %5542
  %5570 = phi float [ %5564, %5562 ], [ 1.000000e+00, %5542 ]
  %5571 = phi float [ %5568, %5562 ], [ %5555, %5542 ]
  %5572 = fcmp fast une float %5559, 0.000000e+00
  br i1 %5572, label %5573, label %5580, !dx.controlflow.hints !160

; <label>:5573                                    ; preds = %5569
  %5574 = fmul fast float %5559, 0x3FF7154760000000
  %5575 = call float @dx.op.unary.f32(i32 21, float %5574)  ; Exp(value)
  %5576 = fsub fast float 1.000000e+00, %5575
  %5577 = fmul fast float %5556, %5576
  %5578 = fsub fast float -0.000000e+00, %5577
  %5579 = fdiv fast float %5578, %5559
  br label %5580

; <label>:5580                                    ; preds = %5573, %5569
  %5581 = phi float [ %5575, %5573 ], [ 1.000000e+00, %5569 ]
  %5582 = phi float [ %5579, %5573 ], [ %5556, %5569 ]
  %5583 = fcmp fast une float %5560, 0.000000e+00
  br i1 %5583, label %5584, label %5591, !dx.controlflow.hints !160

; <label>:5584                                    ; preds = %5580
  %5585 = fmul fast float %5560, 0x3FF7154760000000
  %5586 = call float @dx.op.unary.f32(i32 21, float %5585)  ; Exp(value)
  %5587 = fsub fast float 1.000000e+00, %5586
  %5588 = fmul fast float %5557, %5587
  %5589 = fsub fast float -0.000000e+00, %5588
  %5590 = fdiv fast float %5589, %5560
  br label %5591

; <label>:5591                                    ; preds = %5584, %5580
  %5592 = phi float [ %5586, %5584 ], [ 1.000000e+00, %5580 ]
  %5593 = phi float [ %5590, %5584 ], [ %5557, %5580 ]
  %5594 = fcmp fast ogt float %5490, %5492
  br i1 %5594, label %5595, label %5615

; <label>:5595                                    ; preds = %5591
  %5596 = fsub fast float 1.000000e+00, %5492
  %5597 = fmul fast float %5508, %5596
  %5598 = fmul fast float %5509, %5596
  %5599 = fmul fast float %5510, %5596
  %5600 = fmul fast float %5511, %5596
  %5601 = fcmp fast une float %5600, 0.000000e+00
  br i1 %5601, label %5602, label %5653, !dx.controlflow.hints !161

; <label>:5602                                    ; preds = %5595
  %5603 = fmul fast float %5600, 0x3FF7154760000000
  %5604 = call float @dx.op.unary.f32(i32 21, float %5603)  ; Exp(value)
  %5605 = fsub fast float 1.000000e+00, %5604
  %5606 = fmul fast float %5597, %5605
  %5607 = fsub fast float -0.000000e+00, %5606
  %5608 = fmul fast float %5598, %5605
  %5609 = fsub fast float -0.000000e+00, %5608
  %5610 = fmul fast float %5599, %5605
  %5611 = fsub fast float -0.000000e+00, %5610
  %5612 = fdiv fast float %5607, %5600
  %5613 = fdiv fast float %5609, %5600
  %5614 = fdiv fast float %5611, %5600
  br label %5653

; <label>:5615                                    ; preds = %5591
  %5616 = fsub fast float 1.000000e+00, %5490
  %5617 = fmul fast float %5521, %5616
  %5618 = fmul fast float %5532, %5616
  %5619 = fmul fast float %5543, %5616
  %5620 = fmul fast float %5522, %5616
  %5621 = fmul fast float %5533, %5616
  %5622 = fmul fast float %5544, %5616
  %5623 = fcmp fast une float %5620, 0.000000e+00
  br i1 %5623, label %5624, label %5631, !dx.controlflow.hints !160

; <label>:5624                                    ; preds = %5615
  %5625 = fmul fast float %5620, 0x3FF7154760000000
  %5626 = call float @dx.op.unary.f32(i32 21, float %5625)  ; Exp(value)
  %5627 = fsub fast float 1.000000e+00, %5626
  %5628 = fmul fast float %5617, %5627
  %5629 = fsub fast float -0.000000e+00, %5628
  %5630 = fdiv fast float %5629, %5620
  br label %5631

; <label>:5631                                    ; preds = %5624, %5615
  %5632 = phi float [ %5630, %5624 ], [ %5617, %5615 ]
  %5633 = phi float [ %5626, %5624 ], [ 1.000000e+00, %5615 ]
  %5634 = fcmp fast une float %5621, 0.000000e+00
  br i1 %5634, label %5635, label %5642, !dx.controlflow.hints !160

; <label>:5635                                    ; preds = %5631
  %5636 = fmul fast float %5621, 0x3FF7154760000000
  %5637 = call float @dx.op.unary.f32(i32 21, float %5636)  ; Exp(value)
  %5638 = fsub fast float 1.000000e+00, %5637
  %5639 = fmul fast float %5618, %5638
  %5640 = fsub fast float -0.000000e+00, %5639
  %5641 = fdiv fast float %5640, %5621
  br label %5642

; <label>:5642                                    ; preds = %5635, %5631
  %5643 = phi float [ %5641, %5635 ], [ %5618, %5631 ]
  %5644 = phi float [ %5637, %5635 ], [ 1.000000e+00, %5631 ]
  %5645 = fcmp fast une float %5622, 0.000000e+00
  br i1 %5645, label %5646, label %5653, !dx.controlflow.hints !160

; <label>:5646                                    ; preds = %5642
  %5647 = fmul fast float %5622, 0x3FF7154760000000
  %5648 = call float @dx.op.unary.f32(i32 21, float %5647)  ; Exp(value)
  %5649 = fsub fast float 1.000000e+00, %5648
  %5650 = fmul fast float %5619, %5649
  %5651 = fsub fast float -0.000000e+00, %5650
  %5652 = fdiv fast float %5651, %5622
  br label %5653

; <label>:5653                                    ; preds = %5646, %5642, %5602, %5595
  %5654 = phi float [ %5652, %5646 ], [ %5614, %5602 ], [ %5599, %5595 ], [ %5619, %5642 ]
  %5655 = phi float [ %5643, %5646 ], [ %5613, %5602 ], [ %5598, %5595 ], [ %5643, %5642 ]
  %5656 = phi float [ %5632, %5646 ], [ %5612, %5602 ], [ %5597, %5595 ], [ %5632, %5642 ]
  %5657 = phi float [ %5648, %5646 ], [ %5604, %5602 ], [ 1.000000e+00, %5595 ], [ 1.000000e+00, %5642 ]
  %5658 = phi float [ %5644, %5646 ], [ %5604, %5602 ], [ 1.000000e+00, %5595 ], [ %5644, %5642 ]
  %5659 = phi float [ %5633, %5646 ], [ %5604, %5602 ], [ 1.000000e+00, %5595 ], [ %5633, %5642 ]
  %5660 = fmul fast float %5659, %5571
  %5661 = fmul fast float %5658, %5582
  %5662 = fmul fast float %5657, %5593
  %5663 = fadd fast float %5660, %5656
  %5664 = fadd fast float %5661, %5655
  %5665 = fadd fast float %5662, %5654
  %5666 = fmul fast float %5659, %5570
  %5667 = fmul fast float %5658, %5581
  %5668 = fmul fast float %5657, %5592
  br label %5669

; <label>:5669                                    ; preds = %5653, %5464
  %5670 = phi float [ %5668, %5653 ], [ %5470, %5464 ]
  %5671 = phi float [ %5667, %5653 ], [ %5469, %5464 ]
  %5672 = phi float [ %5666, %5653 ], [ %5468, %5464 ]
  %5673 = phi float [ %5665, %5653 ], [ %5467, %5464 ]
  %5674 = phi float [ %5664, %5653 ], [ %5466, %5464 ]
  %5675 = phi float [ %5663, %5653 ], [ %5465, %5464 ]
  %5676 = fmul fast float %5675, %4619
  %5677 = fmul fast float %5674, %4619
  %5678 = fmul fast float %5673, %4619
  %5679 = fmul fast float %5672, %4912
  %5680 = call float @dx.op.dot3.f32(i32 55, float %5672, float %5671, float %5670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = call float @dx.op.dot3.f32(i32 55, float %5676, float %5677, float %5678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = select i1 %214, float %5680, float %5672
  %5683 = select i1 %214, float %5680, float %5671
  %5684 = select i1 %214, float 1.000000e+00, float %5670
  %5685 = select i1 %214, float %5681, float %5676
  %5686 = select i1 %214, float 0.000000e+00, float %5677
  %5687 = select i1 %214, float 0.000000e+00, float %5678
  %5688 = fmul fast float %5682, %4906
  %5689 = fmul fast float %5683, %4907
  %5690 = fmul fast float %5684, %4908
  %5691 = fadd fast float %5688, %5685
  %5692 = fadd fast float %5689, %5686
  %5693 = fadd fast float %5687, %5690
  %5694 = fmul fast float %5682, %4909
  %5695 = fmul fast float %5683, %4910
  %5696 = fmul fast float %5684, %4911
  %5697 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.i32 %5697, 0
  %5699 = icmp eq i32 %5698, 0
  br i1 %5699, label %6067, label %5700, !dx.controlflow.hints !162

; <label>:5700                                    ; preds = %5669
  %5701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5702 = extractvalue %dx.types.CBufRet.f32 %5701, 2
  %5703 = extractvalue %dx.types.CBufRet.f32 %5701, 3
  %5704 = fmul fast float %5702, %77
  %5705 = fmul fast float %5703, %78
  %5706 = fmul fast float %5704, 2.000000e+00
  %5707 = fmul fast float %5705, 2.000000e+00
  %5708 = fsub fast float 1.000000e+00, %5706
  %5709 = fsub fast float 1.000000e+00, %5707
  %5710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5711 = extractvalue %dx.types.CBufRet.f32 %5710, 0
  %5712 = extractvalue %dx.types.CBufRet.f32 %5710, 1
  %5713 = extractvalue %dx.types.CBufRet.f32 %5710, 2
  %5714 = fmul fast float %5708, %5711
  %5715 = fmul fast float %5708, %5712
  %5716 = fmul fast float %5708, %5713
  %5717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5718 = extractvalue %dx.types.CBufRet.f32 %5717, 0
  %5719 = extractvalue %dx.types.CBufRet.f32 %5717, 1
  %5720 = extractvalue %dx.types.CBufRet.f32 %5717, 2
  %5721 = fmul fast float %5709, %5718
  %5722 = fmul fast float %5709, %5719
  %5723 = fmul fast float %5709, %5720
  %5724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5725 = extractvalue %dx.types.CBufRet.f32 %5724, 0
  %5726 = extractvalue %dx.types.CBufRet.f32 %5724, 1
  %5727 = extractvalue %dx.types.CBufRet.f32 %5724, 2
  %5728 = fadd fast float %5721, %5725
  %5729 = fadd fast float %5728, %5714
  %5730 = fadd fast float %5722, %5726
  %5731 = fadd fast float %5730, %5715
  %5732 = fadd fast float %5723, %5727
  %5733 = fadd fast float %5732, %5716
  %5734 = fmul fast float %5729, %4905
  %5735 = fmul fast float %5731, %4905
  %5736 = fmul fast float %5733, %4905
  %5737 = fmul fast float %5734, %5734
  %5738 = fmul fast float %5735, %5735
  %5739 = fadd fast float %5737, %5738
  %5740 = fmul fast float %5736, %5736
  %5741 = fadd fast float %5739, %5740
  %5742 = call float @dx.op.unary.f32(i32 24, float %5741)  ; Sqrt(value)
  %5743 = extractvalue %dx.types.CBufRet.f32 %4630, 0
  %5744 = fsub fast float %5742, %5743
  %5745 = extractvalue %dx.types.CBufRet.f32 %4630, 2
  %5746 = fmul fast float %5744, %5745
  %5747 = call float @dx.op.unary.f32(i32 7, float %5746)  ; Saturate(value)
  %5748 = fadd fast float %5747, -5.000000e-01
  %5749 = fmul fast float %5748, 2.000000e+00
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 2
  %5752 = call float @dx.op.binary.f32(i32 36, float %5751, float %5749)  ; FMin(a,b)
  %5753 = fsub fast float -0.000000e+00, %5751
  %5754 = fcmp fast ogt float %5752, %5753
  br i1 %5754, label %5755, label %6067, !dx.controlflow.hints !163

; <label>:5755                                    ; preds = %5700
  %5756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5757 = extractvalue %dx.types.CBufRet.f32 %5756, 3
  %5758 = fcmp fast ogt float %5757, 0.000000e+00
  br i1 %5758, label %5759, label %5834, !dx.controlflow.hints !164

; <label>:5759                                    ; preds = %5755
  %5760 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %5761 = extractvalue %dx.types.Dimensions %5760, 0
  %5762 = sitofp i32 %5761 to float
  %5763 = extractvalue %dx.types.Dimensions %5760, 1
  %5764 = sitofp i32 %5763 to float
  %5765 = fmul fast float %5704, %5762
  %5766 = fmul fast float %5705, %5764
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 1
  %5769 = fsub fast float -0.000000e+00, %5768
  %5770 = fptoui float %5769 to i32
  %5771 = fptoui float %5765 to i32
  %5772 = fptoui float %5766 to i32
  %5773 = and i32 %5770, 31
  %5774 = lshr i32 %5771, %5773
  %5775 = lshr i32 %5772, %5773
  %5776 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %5770, i32 %5774, i32 %5775, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5777 = extractvalue %dx.types.ResRet.f32 %5776, 0
  %5778 = fcmp fast olt float %5777, -1.000000e+00
  %5779 = fcmp fast ogt float %5777, -1.000000e+00
  %5780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5781 = extractvalue %dx.types.CBufRet.f32 %5780, 1
  %5782 = select i1 %5779, float %5781, float 1.000000e+00
  %5783 = fadd fast float %5777, 1.000000e+00
  %5784 = fmul fast float %5782, %5783
  %5785 = call float @dx.op.unary.f32(i32 6, float %5784)  ; FAbs(value)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5780, 3
  %5787 = fcmp fast oge float %5785, %5786
  %5788 = select i1 %5787, float 0x4197782600000000, float %5785
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.CBufRet.f32 %5789, 1
  %5792 = extractvalue %dx.types.CBufRet.f32 %5789, 2
  %5793 = select i1 %5778, float %5790, float %5711
  %5794 = select i1 %5778, float %5791, float %5712
  %5795 = select i1 %5778, float %5792, float %5713
  %5796 = fmul fast float %5793, %5708
  %5797 = fmul fast float %5794, %5708
  %5798 = fmul fast float %5795, %5708
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.CBufRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %5803 = select i1 %5778, float %5800, float %5718
  %5804 = select i1 %5778, float %5801, float %5719
  %5805 = select i1 %5778, float %5802, float %5720
  %5806 = fmul fast float %5803, %5709
  %5807 = fmul fast float %5804, %5709
  %5808 = fmul fast float %5805, %5709
  %5809 = fadd fast float %5806, %5796
  %5810 = fadd fast float %5807, %5797
  %5811 = fadd fast float %5808, %5798
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.CBufRet.f32 %5812, 1
  %5815 = extractvalue %dx.types.CBufRet.f32 %5812, 2
  %5816 = select i1 %5778, float %5813, float %5725
  %5817 = select i1 %5778, float %5814, float %5726
  %5818 = select i1 %5778, float %5815, float %5727
  %5819 = fadd fast float %5809, %5816
  %5820 = fadd fast float %5810, %5817
  %5821 = fadd fast float %5811, %5818
  %5822 = fmul fast float %5819, %5788
  %5823 = fmul fast float %5820, %5788
  %5824 = fmul fast float %5821, %5788
  %5825 = fmul fast float %5822, %5822
  %5826 = fmul fast float %5823, %5823
  %5827 = fadd fast float %5825, %5826
  %5828 = fmul fast float %5824, %5824
  %5829 = fadd fast float %5827, %5828
  %5830 = call float @dx.op.unary.f32(i32 24, float %5829)  ; Sqrt(value)
  %5831 = fsub fast float %5830, %5743
  %5832 = fmul fast float %5831, %5745
  %5833 = call float @dx.op.unary.f32(i32 7, float %5832)  ; Saturate(value)
  br label %5834

; <label>:5834                                    ; preds = %5759, %5755
  %5835 = phi float [ %5833, %5759 ], [ 1.000000e+00, %5755 ]
  %5836 = fmul fast float %5752, 5.000000e-01
  %5837 = fadd fast float %5836, 5.000000e-01
  %5838 = call float @dx.op.unary.f32(i32 22, float %5837)  ; Frc(value)
  %5839 = call float @dx.op.unary.f32(i32 27, float %5838)  ; Round_ni(value)
  %5840 = call float @dx.op.unary.f32(i32 22, float %5838)  ; Frc(value)
  %5841 = fmul fast float %5840, 2.000000e+00
  %5842 = fadd fast float %5841, -1.000000e+00
  %5843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %5704, float %5705, float %5839, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5844 = extractvalue %dx.types.ResRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.ResRet.f32 %5843, 1
  %5846 = extractvalue %dx.types.ResRet.f32 %5843, 2
  %5847 = extractvalue %dx.types.ResRet.f32 %5843, 3
  %5848 = fadd fast float %5844, -5.000000e-01
  %5849 = fadd fast float %5846, -5.000000e-01
  %5850 = fmul fast float %5848, 0xBFD5555560000000
  %5851 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5849, float %5850)  ; FMad(a,b,c)
  %5852 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5845, float 0.000000e+00)  ; FMad(a,b,c)
  %5853 = fadd fast float %5852, %5847
  %5854 = fmul fast float %5848, -7.500000e-01
  %5855 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5849, float %5854)  ; FMad(a,b,c)
  %5856 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5845, float 0.000000e+00)  ; FMad(a,b,c)
  %5857 = fadd fast float %5856, %5847
  %5858 = call float @dx.op.binary.f32(i32 35, float %5851, float -1.000000e+00)  ; FMax(a,b)
  %5859 = call float @dx.op.binary.f32(i32 35, float %5853, float -1.000000e+00)  ; FMax(a,b)
  %5860 = call float @dx.op.binary.f32(i32 35, float %5855, float -1.000000e+00)  ; FMax(a,b)
  %5861 = call float @dx.op.binary.f32(i32 35, float %5857, float -1.000000e+00)  ; FMax(a,b)
  %5862 = call float @dx.op.binary.f32(i32 36, float %5858, float 1.000000e+00)  ; FMin(a,b)
  %5863 = call float @dx.op.binary.f32(i32 36, float %5859, float 1.000000e+00)  ; FMin(a,b)
  %5864 = call float @dx.op.binary.f32(i32 36, float %5860, float 1.000000e+00)  ; FMin(a,b)
  %5865 = call float @dx.op.binary.f32(i32 36, float %5861, float 1.000000e+00)  ; FMin(a,b)
  %5866 = fcmp fast olt float %5862, 0x3FEFFF8020000000
  br i1 %5866, label %5867, label %5982, !dx.controlflow.hints !165

; <label>:5867                                    ; preds = %5834
  %5868 = extractvalue %dx.types.CBufRet.f32 %5750, 3
  %5869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5869, 0
  %5871 = extractvalue %dx.types.CBufRet.f32 %5869, 1
  %5872 = extractvalue %dx.types.CBufRet.f32 %5869, 2
  %5873 = extractvalue %dx.types.CBufRet.f32 %5869, 3
  %5874 = fsub fast float %5870, %5862
  %5875 = fsub fast float %5871, %5863
  %5876 = fsub fast float %5872, %5864
  %5877 = fsub fast float %5873, %5865
  %5878 = fmul fast float %5874, %5868
  %5879 = fmul fast float %5875, %5868
  %5880 = fmul fast float %5876, %5868
  %5881 = fmul fast float %5877, %5868
  %5882 = fadd fast float %5878, %5862
  %5883 = fadd fast float %5879, %5863
  %5884 = fsub fast float -0.000000e+00, %5883
  %5885 = fadd fast float %5880, %5864
  %5886 = fadd fast float %5881, %5865
  %5887 = fmul fast float %5882, %5882
  %5888 = fsub fast float %5883, %5887
  %5889 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5888)  ; FMax(a,b)
  %5890 = fdiv fast float 1.000000e+00, %5889
  %5891 = fmul fast float %5883, %5882
  %5892 = fsub fast float %5885, %5891
  %5893 = fsub fast float %5842, %5882
  %5894 = fmul fast float %5842, %5842
  %5895 = fsub fast float %5894, %5883
  %5896 = fmul fast float %5893, %5890
  %5897 = fmul fast float %5896, %5892
  %5898 = fsub fast float %5895, %5897
  %5899 = fmul fast float %5883, %5883
  %5900 = fsub fast float %5886, %5899
  %5901 = fmul fast float %5892, %5892
  %5902 = fmul fast float %5901, %5890
  %5903 = fsub fast float %5900, %5902
  %5904 = fdiv fast float %5898, %5903
  %5905 = fmul fast float %5892, %5904
  %5906 = fsub fast float %5893, %5905
  %5907 = fmul fast float %5906, %5890
  %5908 = fmul fast float %5907, %5882
  %5909 = fsub fast float 1.000000e+00, %5908
  %5910 = fmul fast float %5883, %5904
  %5911 = fsub fast float %5909, %5910
  %5912 = fmul fast float %5907, %5907
  %5913 = fmul fast float %5904, 4.000000e+00
  %5914 = fmul fast float %5913, %5911
  %5915 = fsub fast float %5912, %5914
  %5916 = call float @dx.op.unary.f32(i32 24, float %5915)  ; Sqrt(value)
  %5917 = fcmp fast oge float %5907, 0.000000e+00
  %5918 = fsub fast float -0.000000e+00, %5916
  %5919 = select i1 %5917, float %5918, float %5916
  %5920 = fsub fast float %5919, %5907
  %5921 = fdiv fast float %5920, %5904
  %5922 = fdiv fast float %5911, %5920
  %5923 = fmul fast float %5921, 5.000000e-01
  %5924 = fmul fast float %5922, 2.000000e+00
  %5925 = select i1 %5917, float %5923, float %5924
  %5926 = select i1 %5917, float %5924, float %5923
  %5927 = call float @dx.op.binary.f32(i32 35, float %5925, float %5926)  ; FMax(a,b)
  %5928 = call float @dx.op.binary.f32(i32 36, float %5925, float %5926)  ; FMin(a,b)
  %5929 = fcmp fast ogt float %5842, %5928
  br i1 %5929, label %5930, label %5940

; <label>:5930                                    ; preds = %5867
  %5931 = fsub fast float %5842, %5928
  %5932 = fsub fast float %5927, %5928
  %5933 = fmul fast float %5931, %5932
  %5934 = fmul fast float %5927, %5842
  %5935 = fadd fast float %5927, %5842
  %5936 = fmul fast float %5935, %5882
  %5937 = fadd fast float %5934, %5883
  %5938 = fsub fast float %5937, %5936
  %5939 = fdiv fast float %5938, %5933
  br label %5940

; <label>:5940                                    ; preds = %5930, %5867
  %5941 = phi float [ %5939, %5930 ], [ 0.000000e+00, %5867 ]
  %5942 = fcmp fast ogt float %5842, %5927
  %5943 = fsub fast float %5842, %5927
  br i1 %5942, label %5944, label %5954

; <label>:5944                                    ; preds = %5940
  %5945 = fsub fast float %5927, %5928
  %5946 = fmul fast float %5945, %5943
  %5947 = fmul fast float %5928, %5842
  %5948 = fadd fast float %5928, %5842
  %5949 = fmul fast float %5948, %5882
  %5950 = fsub fast float %5884, %5947
  %5951 = fadd fast float %5950, %5949
  %5952 = fdiv fast float %5951, %5946
  %5953 = fadd fast float %5952, %5941
  br label %5954

; <label>:5954                                    ; preds = %5944, %5940
  %5955 = phi float [ %5953, %5944 ], [ %5941, %5940 ]
  %5956 = fsub fast float %5842, %5928
  %5957 = fmul fast float %5956, %5943
  %5958 = fmul fast float %5928, %5927
  %5959 = fadd fast float %5928, %5927
  %5960 = fmul fast float %5959, %5882
  %5961 = fadd fast float %5958, %5883
  %5962 = fsub fast float %5961, %5960
  %5963 = fdiv fast float %5962, %5957
  %5964 = call float @dx.op.unary.f32(i32 7, float %5955)  ; Saturate(value)
  %5965 = fcmp fast oeq float %4631, 0.000000e+00
  %5966 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  %5967 = fcmp fast oeq float %5966, 0.000000e+00
  %5968 = or i1 %5965, %5967
  %5969 = fmul fast float %5966, 2.000000e+00
  %5970 = fadd fast float %5751, %5752
  %5971 = fdiv fast float %5970, %5969
  %5972 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  %5973 = fmul fast float %5972, 2.000000e+00
  %5974 = fsub fast float 3.000000e+00, %5973
  %5975 = fmul fast float %5972, %5972
  %5976 = fmul fast float %5975, %5974
  %5977 = select i1 %5968, float 1.000000e+00, float %5976
  %5978 = fmul fast float %5963, %4631
  %5979 = fadd fast float %5964, %5978
  %5980 = call float @dx.op.unary.f32(i32 7, float %5979)  ; Saturate(value)
  %5981 = fmul fast float %5977, %5980
  br label %5982

; <label>:5982                                    ; preds = %5954, %5834
  %5983 = phi float [ %5981, %5954 ], [ 0.000000e+00, %5834 ]
  %5984 = fsub fast float 1.000000e+00, %5983
  %5985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %45, float %5704, float %5705, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5988 = extractvalue %dx.types.CBufRet.i32 %5987, 2
  %5989 = icmp eq i32 %5988, 0
  br i1 %5989, label %5995, label %5990

; <label>:5990                                    ; preds = %5982
  %5991 = call float @dx.op.unary.f32(i32 7, float %5983)  ; Saturate(value)
  %5992 = fadd fast float %5986, -1.000000e+00
  %5993 = fmul fast float %5991, %5992
  %5994 = fadd fast float %5993, 1.000000e+00
  br label %5995

; <label>:5995                                    ; preds = %5990, %5982
  %5996 = phi float [ %5994, %5990 ], [ %5984, %5982 ]
  br i1 %5758, label %5997, label %6015

; <label>:5997                                    ; preds = %5995
  %5998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5999 = extractvalue %dx.types.CBufRet.f32 %5998, 1
  %6000 = fsub fast float %5835, %5999
  %6001 = call float @dx.op.unary.f32(i32 7, float %6000)  ; Saturate(value)
  %6002 = fsub fast float %5835, %5757
  %6003 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6004 = fsub fast float %6001, %6003
  %6005 = fsub fast float %5837, %6003
  %6006 = fdiv fast float %6005, %6004
  %6007 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  %6008 = fmul fast float %6007, 2.000000e+00
  %6009 = fsub fast float 3.000000e+00, %6008
  %6010 = fsub fast float %5986, %5996
  %6011 = fmul fast float %6007, %6007
  %6012 = fmul fast float %6011, %6010
  %6013 = fmul fast float %6012, %6009
  %6014 = fadd fast float %6013, %5996
  br label %6015

; <label>:6015                                    ; preds = %5997, %5995
  %6016 = phi float [ %6014, %5997 ], [ %5996, %5995 ]
  %6017 = call float @dx.op.binary.f32(i32 35, float %5986, float %6016)  ; FMax(a,b)
  %6018 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6019 = extractvalue %dx.types.CBufRet.i32 %6018, 2
  %6020 = and i32 %6019, 1
  %6021 = icmp eq i32 %6020, 0
  %6022 = fcmp fast une float %6017, 1.000000e+00
  %6023 = and i1 %6022, %6021
  br i1 %6023, label %6024, label %6043

; <label>:6024                                    ; preds = %6015
  %6025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %5704, float %5705, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6026 = extractvalue %dx.types.ResRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.ResRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.ResRet.f32 %6025, 2
  %6029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.f32 %6029, 1
  %6031 = fmul fast float %6030, %6026
  %6032 = fmul fast float %6030, %6027
  %6033 = fmul fast float %6030, %6028
  %6034 = fcmp fast ogt float %5986, 0x3FEFFF2E40000000
  %6035 = fsub fast float 1.000000e+00, %6017
  %6036 = fsub fast float 1.000000e+00, %5986
  %6037 = fdiv fast float %6035, %6036
  %6038 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6039 = select i1 %6034, float 0.000000e+00, float %6038
  %6040 = fmul fast float %6031, %6039
  %6041 = fmul fast float %6032, %6039
  %6042 = fmul fast float %6033, %6039
  br label %6043

; <label>:6043                                    ; preds = %6024, %6015
  %6044 = phi float [ 0.000000e+00, %6015 ], [ %6040, %6024 ]
  %6045 = phi float [ 0.000000e+00, %6015 ], [ %6041, %6024 ]
  %6046 = phi float [ 0.000000e+00, %6015 ], [ %6042, %6024 ]
  %6047 = fmul fast float %6044, %4619
  %6048 = fmul fast float %6045, %4619
  %6049 = fmul fast float %6046, %4619
  %6050 = fmul fast float %6017, %5679
  %6051 = call float @dx.op.dot3.f32(i32 55, float %6017, float %6017, float %6017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6052 = call float @dx.op.dot3.f32(i32 55, float %6047, float %6048, float %6049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6053 = select i1 %214, float %6051, float %6017
  %6054 = select i1 %214, float 1.000000e+00, float %6017
  %6055 = select i1 %214, float %6052, float %6047
  %6056 = select i1 %214, float 0.000000e+00, float %6048
  %6057 = select i1 %214, float 0.000000e+00, float %6049
  %6058 = fmul fast float %6053, %5691
  %6059 = fmul fast float %6053, %5692
  %6060 = fmul fast float %6054, %5693
  %6061 = fadd fast float %6058, %6055
  %6062 = fadd fast float %6059, %6056
  %6063 = fadd fast float %6057, %6060
  %6064 = fmul fast float %6053, %5694
  %6065 = fmul fast float %6053, %5695
  %6066 = fmul fast float %6054, %5696
  br label %6067

; <label>:6067                                    ; preds = %6043, %5700, %5669, %4901
  %6068 = phi float [ %4906, %4901 ], [ %5691, %5669 ], [ %6061, %6043 ], [ %5691, %5700 ]
  %6069 = phi float [ %4907, %4901 ], [ %5692, %5669 ], [ %6062, %6043 ], [ %5692, %5700 ]
  %6070 = phi float [ %4908, %4901 ], [ %5693, %5669 ], [ %6063, %6043 ], [ %5693, %5700 ]
  %6071 = phi float [ %4909, %4901 ], [ %5694, %5669 ], [ %6064, %6043 ], [ %5694, %5700 ]
  %6072 = phi float [ %4910, %4901 ], [ %5695, %5669 ], [ %6065, %6043 ], [ %5695, %5700 ]
  %6073 = phi float [ %4911, %4901 ], [ %5696, %5669 ], [ %6066, %6043 ], [ %5696, %5700 ]
  %6074 = phi float [ %4912, %4901 ], [ %5679, %5669 ], [ %6050, %6043 ], [ %5679, %5700 ]
  %6075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6076 = extractvalue %dx.types.CBufRet.f32 %6075, 2
  %6077 = extractvalue %dx.types.CBufRet.f32 %6075, 3
  %6078 = fmul fast float %6076, %77
  %6079 = fmul fast float %6077, %78
  %6080 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  %6081 = call float @dx.op.unary.f32(i32 7, float %6079)  ; Saturate(value)
  %6082 = select i1 %4641, i32 2, i32 0
  %6083 = or i32 %6082, 1
  %6084 = uitofp i32 %6083 to float
  %6085 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %6080, float %6081, float %6084, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6086 = extractvalue %dx.types.ResRet.f32 %6085, 0
  %6087 = extractvalue %dx.types.ResRet.f32 %6085, 1
  %6088 = extractvalue %dx.types.ResRet.f32 %6085, 2
  %6089 = extractvalue %dx.types.ResRet.f32 %6085, 3
  %6090 = add nuw nsw i32 %6082, 2
  %6091 = uitofp i32 %6090 to float
  %6092 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %6080, float %6081, float %6091, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6093 = extractvalue %dx.types.ResRet.f32 %6092, 0
  %6094 = extractvalue %dx.types.ResRet.f32 %6092, 1
  %6095 = extractvalue %dx.types.ResRet.f32 %6092, 2
  %6096 = extractvalue %dx.types.ResRet.f32 %6092, 3
  %6097 = call float @dx.op.binary.f32(i32 35, float %6087, float %6088)  ; FMax(a,b)
  %6098 = call float @dx.op.binary.f32(i32 35, float %6086, float %6097)  ; FMax(a,b)
  %6099 = call float @dx.op.binary.f32(i32 35, float %6098, float %6089)  ; FMax(a,b)
  %6100 = call float @dx.op.binary.f32(i32 36, float %6094, float %6095)  ; FMin(a,b)
  %6101 = call float @dx.op.binary.f32(i32 36, float %6093, float %6100)  ; FMin(a,b)
  %6102 = call float @dx.op.binary.f32(i32 36, float %6101, float %6096)  ; FMin(a,b)
  %6103 = fmul fast float %6099, 2.550000e+02
  %6104 = fadd fast float %6103, 0x3F70101020000000
  %6105 = fptoui float %6104 to i32
  %6106 = fmul fast float %6102, 2.550000e+02
  %6107 = fadd fast float %6106, 0x3F70101020000000
  %6108 = fptoui float %6107 to i32
  %6109 = icmp ult i32 %6105, %6108
  br i1 %6109, label %6110, label %6279

; <label>:6110                                    ; preds = %6067
  %6111 = fcmp fast ogt float %67, 9.843750e-01
  %6112 = fadd fast float %4905, -4.000000e+00
  %6113 = select i1 %6111, float -4.000000e+00, float %6112
  %6114 = call float @dx.op.binary.f32(i32 35, float %6113, float 0.000000e+00)  ; FMax(a,b)
  %6115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.f32 %6115, 0
  %6117 = fadd fast float %6116, %6114
  %6118 = extractvalue %dx.types.CBufRet.f32 %6115, 2
  %6119 = fmul fast float %6117, %6118
  %6120 = call float @dx.op.unary.f32(i32 23, float %6119)  ; Log(value)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6115, 3
  %6122 = fmul fast float %6121, %6120
  %6123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.f32 %6123, 2
  %6125 = fmul fast float %6122, %6124
  %6126 = call float @dx.op.unary.f32(i32 7, float %6125)  ; Saturate(value)
  %6127 = uitofp i32 %6105 to float
  %6128 = uitofp i32 %6108 to float
  %6129 = fadd fast float %6127, 5.000000e-01
  %6130 = fadd fast float %6128, 5.000000e-01
  %6131 = fmul fast float %6124, %6129
  %6132 = fmul fast float %6124, %6130
  %6133 = fadd fast float %6131, 0x3F0FFB4800000000
  %6134 = fadd fast float %6132, 0xBF0FFB4800000000
  %6135 = call float @dx.op.binary.f32(i32 35, float %6126, float %6133)  ; FMax(a,b)
  %6136 = call float @dx.op.binary.f32(i32 36, float %6135, float %6134)  ; FMin(a,b)
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 1
  %6139 = extractvalue %dx.types.CBufRet.f32 %6137, 2
  %6140 = extractvalue %dx.types.CBufRet.f32 %6137, 0
  %6141 = select i1 %4641, float %6140, float 0.000000e+00
  %6142 = fmul fast float %6138, %6136
  %6143 = fadd fast float %6141, %6142
  %6144 = fadd fast float %6141, %6139
  %6145 = fsub fast float %6138, %6139
  %6146 = fadd fast float %6145, %6141
  %6147 = call float @dx.op.binary.f32(i32 35, float %6143, float %6144)  ; FMax(a,b)
  %6148 = call float @dx.op.binary.f32(i32 36, float %6147, float %6146)  ; FMin(a,b)
  %6149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %6080, float %6081, float %6148, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6150 = extractvalue %dx.types.ResRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.ResRet.f32 %6149, 1
  %6152 = extractvalue %dx.types.ResRet.f32 %6149, 2
  %6153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6154 = extractvalue %dx.types.CBufRet.i32 %6153, 0
  %6155 = extractvalue %dx.types.CBufRet.i32 %6153, 1
  %6156 = uitofp i32 %6154 to float
  %6157 = uitofp i32 %6155 to float
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  %6160 = extractvalue %dx.types.CBufRet.f32 %6158, 1
  %6161 = fmul fast float %6156, %6080
  %6162 = fmul fast float %6157, %6081
  %6163 = fadd fast float %6161, -5.000000e-01
  %6164 = fadd fast float %6162, -5.000000e-01
  %6165 = call float @dx.op.unary.f32(i32 22, float %6163)  ; Frc(value)
  %6166 = call float @dx.op.unary.f32(i32 22, float %6164)  ; Frc(value)
  %6167 = fmul fast float %6165, %6165
  %6168 = fmul fast float %6167, %6165
  %6169 = fsub fast float 3.000000e+00, %6165
  %6170 = fmul fast float %6167, %6169
  %6171 = fmul fast float %6165, 3.000000e+00
  %6172 = fmul fast float %6168, 3.000000e+00
  %6173 = fmul fast float %6167, 6.000000e+00
  %6174 = fsub fast float %6172, %6173
  %6175 = fadd fast float %6174, 4.000000e+00
  %6176 = fmul fast float %6175, 0x3FC5555560000000
  %6177 = fmul fast float %6168, -3.000000e+00
  %6178 = fadd fast float %6167, %6165
  %6179 = fmul fast float %6178, 3.000000e+00
  %6180 = fadd fast float %6177, 1.000000e+00
  %6181 = fadd fast float %6180, %6179
  %6182 = fmul fast float %6168, 0x3FC5555560000000
  %6183 = fmul fast float %6166, %6166
  %6184 = fmul fast float %6183, %6166
  %6185 = fsub fast float 3.000000e+00, %6166
  %6186 = fmul fast float %6183, %6185
  %6187 = fmul fast float %6166, 3.000000e+00
  %6188 = fmul fast float %6184, 3.000000e+00
  %6189 = fmul fast float %6183, 6.000000e+00
  %6190 = fsub fast float %6188, %6189
  %6191 = fadd fast float %6190, 4.000000e+00
  %6192 = fmul fast float %6191, 0x3FC5555560000000
  %6193 = fmul fast float %6184, -3.000000e+00
  %6194 = fadd fast float %6183, %6166
  %6195 = fmul fast float %6194, 3.000000e+00
  %6196 = fadd fast float %6193, 1.000000e+00
  %6197 = fadd fast float %6196, %6195
  %6198 = fmul fast float %6184, 0x3FC5555560000000
  %6199 = fadd fast float %6165, 1.000000e+00
  %6200 = fsub fast float 1.000000e+00, %6171
  %6201 = fadd fast float %6200, %6170
  %6202 = fadd fast float %6201, %6175
  %6203 = fmul fast float %6202, 0x3FC5555560000000
  %6204 = fdiv fast float %6176, %6203
  %6205 = fsub fast float %6199, %6204
  %6206 = fsub fast float 1.000000e+00, %6165
  %6207 = fadd fast float %6181, %6168
  %6208 = fmul fast float %6207, 0x3FC5555560000000
  %6209 = fdiv fast float %6182, %6208
  %6210 = fadd fast float %6206, %6209
  %6211 = fadd fast float %6166, 1.000000e+00
  %6212 = fsub fast float 1.000000e+00, %6187
  %6213 = fadd fast float %6212, %6186
  %6214 = fadd fast float %6213, %6191
  %6215 = fmul fast float %6214, 0x3FC5555560000000
  %6216 = fdiv fast float %6192, %6215
  %6217 = fsub fast float %6211, %6216
  %6218 = fsub fast float 1.000000e+00, %6166
  %6219 = fadd fast float %6197, %6184
  %6220 = fmul fast float %6219, 0x3FC5555560000000
  %6221 = fdiv fast float %6198, %6220
  %6222 = fadd fast float %6221, %6218
  %6223 = fmul fast float %6205, %6159
  %6224 = fsub fast float %6080, %6223
  %6225 = fmul fast float %6210, %6159
  %6226 = fadd fast float %6225, %6080
  %6227 = fmul fast float %6222, %6160
  %6228 = fadd fast float %6227, %6081
  %6229 = fmul fast float %6217, %6160
  %6230 = fsub fast float %6081, %6229
  %6231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6224, float %6230, float %6148, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6232 = extractvalue %dx.types.ResRet.f32 %6231, 0
  %6233 = extractvalue %dx.types.ResRet.f32 %6231, 1
  %6234 = extractvalue %dx.types.ResRet.f32 %6231, 2
  %6235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6226, float %6230, float %6148, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6236 = extractvalue %dx.types.ResRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.ResRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.ResRet.f32 %6235, 2
  %6239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6224, float %6228, float %6148, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6240 = extractvalue %dx.types.ResRet.f32 %6239, 0
  %6241 = extractvalue %dx.types.ResRet.f32 %6239, 1
  %6242 = extractvalue %dx.types.ResRet.f32 %6239, 2
  %6243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6226, float %6228, float %6148, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6244 = extractvalue %dx.types.ResRet.f32 %6243, 0
  %6245 = extractvalue %dx.types.ResRet.f32 %6243, 1
  %6246 = extractvalue %dx.types.ResRet.f32 %6243, 2
  %6247 = fsub fast float %6240, %6232
  %6248 = fsub fast float %6241, %6233
  %6249 = fsub fast float %6242, %6234
  %6250 = fmul fast float %6247, %6220
  %6251 = fmul fast float %6248, %6220
  %6252 = fmul fast float %6249, %6220
  %6253 = fadd fast float %6250, %6232
  %6254 = fadd fast float %6251, %6233
  %6255 = fadd fast float %6252, %6234
  %6256 = fsub fast float %6244, %6236
  %6257 = fsub fast float %6245, %6237
  %6258 = fsub fast float %6246, %6238
  %6259 = fmul fast float %6256, %6220
  %6260 = fmul fast float %6257, %6220
  %6261 = fmul fast float %6258, %6220
  %6262 = fsub fast float %6236, %6253
  %6263 = fadd fast float %6262, %6259
  %6264 = fsub fast float %6237, %6254
  %6265 = fadd fast float %6264, %6260
  %6266 = fsub fast float %6238, %6255
  %6267 = fadd fast float %6266, %6261
  %6268 = fmul fast float %6263, %6208
  %6269 = fmul fast float %6265, %6208
  %6270 = fmul fast float %6267, %6208
  %6271 = fadd fast float %6268, %6253
  %6272 = fadd fast float %6269, %6254
  %6273 = fadd fast float %6270, %6255
  %6274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6274, 1
  %6276 = fmul fast float %6271, %6275
  %6277 = fmul fast float %6272, %6275
  %6278 = fmul fast float %6273, %6275
  br label %6279

; <label>:6279                                    ; preds = %6110, %6067
  %6280 = phi float [ %6150, %6110 ], [ 1.000000e+00, %6067 ]
  %6281 = phi float [ %6151, %6110 ], [ 1.000000e+00, %6067 ]
  %6282 = phi float [ %6152, %6110 ], [ 1.000000e+00, %6067 ]
  %6283 = phi float [ %6276, %6110 ], [ 0.000000e+00, %6067 ]
  %6284 = phi float [ %6277, %6110 ], [ 0.000000e+00, %6067 ]
  %6285 = phi float [ %6278, %6110 ], [ 0.000000e+00, %6067 ]
  %6286 = fmul fast float %6283, %4619
  %6287 = fmul fast float %6284, %4619
  %6288 = fmul fast float %6285, %4619
  %6289 = fmul fast float %6280, %6074
  %6290 = call float @dx.op.dot3.f32(i32 55, float %6280, float %6281, float %6282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6291 = call float @dx.op.dot3.f32(i32 55, float %6286, float %6287, float %6288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6292 = select i1 %214, float %6290, float %6280
  %6293 = select i1 %214, float %6290, float %6281
  %6294 = select i1 %214, float 1.000000e+00, float %6282
  %6295 = select i1 %214, float %6291, float %6286
  %6296 = select i1 %214, float 0.000000e+00, float %6287
  %6297 = select i1 %214, float 0.000000e+00, float %6288
  %6298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.i32 %6298, 3
  %6300 = and i32 %6299, 3
  %6301 = icmp ne i32 %6300, 0
  %6302 = and i32 %6299, 4
  %6303 = icmp ne i32 %6302, 0
  %6304 = and i1 %6301, %6303
  %6305 = and i1 %214, %6304
  br i1 %6305, label %6306, label %6312

; <label>:6306                                    ; preds = %6279
  %6307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = extractvalue %dx.types.CBufRet.f32 %6307, 1
  %6309 = fadd fast float %6289, -1.000000e+00
  %6310 = fmul fast float %6308, %6309
  %6311 = fadd fast float %6310, 1.000000e+00
  br label %6312

; <label>:6312                                    ; preds = %6306, %6279
  %6313 = phi float [ %6311, %6306 ], [ %6289, %6279 ]
  %6314 = fadd fast float %6071, %6068
  %6315 = fmul fast float %6292, %6314
  %6316 = fadd fast float %6315, %6295
  %6317 = fadd fast float %6072, %6069
  %6318 = fmul fast float %6293, %6317
  %6319 = fadd fast float %6318, %6296
  %6320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6320, 0
  br i1 %214, label %6322, label %6345

; <label>:6322                                    ; preds = %6312
  %6323 = fadd fast float %6316, %6319
  %6324 = fmul fast float %6321, %6323
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 3
  %6327 = extractvalue %dx.types.CBufRet.f32 %4623, 1
  %6328 = fsub fast float %4628, %4622
  %6329 = fadd fast float %6328, %4629
  %6330 = fsub fast float %6329, %6327
  %6331 = extractvalue %dx.types.CBufRet.f32 %4623, 2
  %6332 = fmul fast float %6330, %6331
  %6333 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  %6334 = fsub fast float %6333, %6326
  %6335 = fmul fast float %6334, %6313
  %6336 = fadd fast float %6335, %6326
  %6337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.f32 %6337, 0
  %6339 = fsub fast float %6336, %6338
  %6340 = fmul fast float %6339, 1.000000e+01
  %6341 = call float @dx.op.unary.f32(i32 7, float %6340)  ; Saturate(value)
  %6342 = fmul fast float %6341, %4618
  %6343 = fadd fast float %6342, %4619
  %6344 = fmul fast float %6343, %6336
  br label %6369

; <label>:6345                                    ; preds = %6312
  %6346 = fadd fast float %6073, %6070
  %6347 = fmul fast float %6294, %6346
  %6348 = fadd fast float %6347, %6297
  %6349 = fmul fast float %6321, %6316
  %6350 = fmul fast float %6321, %6319
  %6351 = fmul fast float %6321, %6348
  %6352 = call float @dx.op.binary.f32(i32 35, float %6350, float %6351)  ; FMax(a,b)
  %6353 = call float @dx.op.binary.f32(i32 35, float %6349, float %6352)  ; FMax(a,b)
  %6354 = call float @dx.op.binary.f32(i32 35, float %6353, float %4619)  ; FMax(a,b)
  %6355 = fcmp fast ugt float %6354, 0x3F10000000000000
  br i1 %6355, label %6357, label %6356

; <label>:6356                                    ; preds = %6345
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6357

; <label>:6357                                    ; preds = %6356, %6345
  %6358 = add i32 %52, 116
  %6359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %6358, i32 undef)  ; BufferLoad(srv,index,wot)
  %6360 = extractvalue %dx.types.ResRet.i32 %6359, 0
  %6361 = and i32 %6360, 32
  %6362 = icmp eq i32 %6361, 0
  br i1 %6362, label %6369, label %6363

; <label>:6363                                    ; preds = %6357
  %6364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6365 = extractvalue %dx.types.CBufRet.f32 %6364, 0
  %6366 = fmul fast float %6365, 0x3FE99999A0000000
  %6367 = fadd fast float %6365, %6349
  %6368 = fadd fast float %6366, %6351
  br label %6369

; <label>:6369                                    ; preds = %6363, %6357, %6322
  %6370 = phi float [ %6324, %6322 ], [ %6367, %6363 ], [ %6349, %6357 ]
  %6371 = phi float [ %6344, %6322 ], [ %6350, %6363 ], [ %6350, %6357 ]
  %6372 = phi float [ %6343, %6322 ], [ %6368, %6363 ], [ %6351, %6357 ]
  %6373 = phi float [ %6343, %6322 ], [ %4619, %6363 ], [ %4619, %6357 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6374 = call float @dx.op.binary.f32(i32 36, float %6370, float 3.225500e+04)  ; FMin(a,b)
  %6375 = call float @dx.op.binary.f32(i32 36, float %6371, float 3.225500e+04)  ; FMin(a,b)
  %6376 = call float @dx.op.binary.f32(i32 36, float %6372, float 3.225500e+04)  ; FMin(a,b)
  %6377 = call float @dx.op.binary.f32(i32 36, float %6373, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6374)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6375)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6376)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6377)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

