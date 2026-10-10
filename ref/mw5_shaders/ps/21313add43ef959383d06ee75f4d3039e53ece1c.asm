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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: b34ec4015723c3d0450d5c6e1de91082
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
; SV_Target                1                              
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
; Number of inputs: 22, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
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
  %1035 = phi float [ 0.000000e+00, %270 ], [ %777, %1014 ]
  %1036 = phi float [ 0.000000e+00, %270 ], [ %778, %1014 ]
  %1037 = phi float [ 0.000000e+00, %270 ], [ %779, %1014 ]
  %1038 = phi float [ 0.000000e+00, %270 ], [ %1015, %1014 ]
  %1039 = phi float [ 0.000000e+00, %270 ], [ %1016, %1014 ]
  %1040 = phi float [ 0.000000e+00, %270 ], [ %1017, %1014 ]
  %1041 = phi float [ 0.000000e+00, %270 ], [ %905, %1014 ]
  %1042 = phi float [ 0.000000e+00, %270 ], [ %906, %1014 ]
  %1043 = phi float [ 0.000000e+00, %270 ], [ %907, %1014 ]
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
  %1145 = phi float [ %1277, %1268 ], [ %1038, %1134 ]
  %1146 = phi float [ %1278, %1268 ], [ %1039, %1134 ]
  %1147 = phi float [ %1279, %1268 ], [ %1040, %1134 ]
  %1148 = phi float [ %1280, %1268 ], [ %1041, %1134 ]
  %1149 = phi float [ %1281, %1268 ], [ %1042, %1134 ]
  %1150 = phi float [ %1282, %1268 ], [ %1043, %1134 ]
  %1151 = phi float [ %1283, %1268 ], [ %1080, %1134 ]
  %1152 = phi float [ %1284, %1268 ], [ %1081, %1134 ]
  %1153 = phi float [ %1285, %1268 ], [ %1082, %1134 ]
  %1154 = phi float [ %1286, %1268 ], [ %1050, %1134 ]
  %1155 = phi float [ %1287, %1268 ], [ %1049, %1134 ]
  %1156 = phi float [ %1288, %1268 ], [ 0.000000e+00, %1134 ]
  %1157 = phi float [ %1289, %1268 ], [ %1047, %1134 ]
  %1158 = phi float [ %1290, %1268 ], [ %1035, %1134 ]
  %1159 = phi float [ %1291, %1268 ], [ %1036, %1134 ]
  %1160 = phi float [ %1292, %1268 ], [ %1037, %1134 ]
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
  %1646 = phi float [ %1038, %1032 ], [ %1277, %1636 ]
  %1647 = phi float [ %1039, %1032 ], [ %1278, %1636 ]
  %1648 = phi float [ %1040, %1032 ], [ %1279, %1636 ]
  %1649 = phi float [ %1041, %1032 ], [ %1280, %1636 ]
  %1650 = phi float [ %1042, %1032 ], [ %1281, %1636 ]
  %1651 = phi float [ %1043, %1032 ], [ %1282, %1636 ]
  %1652 = phi float [ %1080, %1032 ], [ %1283, %1636 ]
  %1653 = phi float [ %1081, %1032 ], [ %1284, %1636 ]
  %1654 = phi float [ %1082, %1032 ], [ %1285, %1636 ]
  %1655 = phi float [ %1050, %1032 ], [ %1286, %1636 ]
  %1656 = phi float [ %1049, %1032 ], [ %1287, %1636 ]
  %1657 = phi float [ 0.000000e+00, %1032 ], [ %1288, %1636 ]
  %1658 = phi float [ %1047, %1032 ], [ %1289, %1636 ]
  %1659 = phi float [ %1035, %1032 ], [ %1290, %1636 ]
  %1660 = phi float [ %1036, %1032 ], [ %1291, %1636 ]
  %1661 = phi float [ %1037, %1032 ], [ %1292, %1636 ]
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
  %2009 = phi float [ %1692, %1827 ], [ %1977, %1834 ]
  %2010 = phi float [ %1693, %1827 ], [ %1978, %1834 ]
  %2011 = phi float [ %1694, %1827 ], [ %1979, %1834 ]
  %2012 = phi float [ %1732, %1827 ], [ %1886, %1834 ]
  %2013 = phi float [ %1733, %1827 ], [ %1887, %1834 ]
  %2014 = phi float [ %1734, %1827 ], [ %1888, %1834 ]
  %2015 = phi float [ %1671, %1827 ], [ %1999, %1834 ]
  %2016 = phi float [ %1672, %1827 ], [ %2000, %1834 ]
  %2017 = phi float [ %1673, %1827 ], [ %2001, %1834 ]
  %2018 = phi float [ %1695, %1827 ], [ %1993, %1834 ]
  %2019 = phi float [ %1655, %1827 ], [ %1996, %1834 ]
  %2020 = select i1 %214, float 0.000000e+00, float %2011
  %2021 = call float @dx.op.dot3.f32(i32 55, float %2015, float %2016, float %2017, float %2005, float %2004, float %2003)  ; Dot3(ax,ay,az,bx,by,bz)
  %2022 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2023 = call float @dx.op.dot3.f32(i32 55, float %2008, float %2007, float %2006, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
  %2024 = fmul fast float %2023, 2.000000e+00
  %2025 = fmul fast float %2024, %2015
  %2026 = fmul fast float %2024, %2016
  %2027 = fmul fast float %2024, %2017
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
  br i1 %2060, label %2061, label %2079, !dx.controlflow.hints !86

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
  br i1 %2081, label %2082, label %2180, !dx.controlflow.hints !87

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
  %2142 = call float @dx.op.dot3.f32(i32 55, float %2015, float %2016, float %2017, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2144 = fmul fast float %2143, 5.000000e-01
  %2145 = fadd fast float %2144, 5.000000e-01
  %2146 = fmul fast float %2145, %2095
  %2147 = call float @dx.op.dot3.f32(i32 55, float %2015, float %2016, float %2017, float %2139, float %2140, float %2141)  ; Dot3(ax,ay,az,bx,by,bz)
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = fmul fast float %2148, %2121
  %2150 = fadd fast float %2146, %2149
  %2151 = fsub fast float 5.000000e-01, %2144
  %2152 = fmul fast float %2151, %2012
  %2153 = fmul fast float %2151, %2013
  %2154 = fmul fast float %2151, %2014
  %2155 = fadd fast float %2150, %2152
  %2156 = fmul fast float %2155, %2091
  %2157 = fadd fast float %2150, %2153
  %2158 = fmul fast float %2157, %2092
  %2159 = fadd fast float %2150, %2154
  %2160 = fmul fast float %2159, %2093
  %2161 = call float @dx.op.dot3.f32(i32 55, float %2028, float %2029, float %2030, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
  %2162 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2163 = fmul fast float %2162, 5.000000e-01
  %2164 = fadd fast float %2163, 5.000000e-01
  %2165 = fmul fast float %2164, %2095
  %2166 = call float @dx.op.dot3.f32(i32 55, float %2028, float %2029, float %2030, float %2139, float %2140, float %2141)  ; Dot3(ax,ay,az,bx,by,bz)
  %2167 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2168 = fmul fast float %2167, %2121
  %2169 = fadd fast float %2165, %2168
  %2170 = fsub fast float 5.000000e-01, %2163
  %2171 = fmul fast float %2170, %2012
  %2172 = fmul fast float %2170, %2013
  %2173 = fmul fast float %2170, %2014
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
  br i1 %2190, label %2191, label %2395, !dx.controlflow.hints !88

; <label>:2191                                    ; preds = %2180
  %2192 = extractvalue %dx.types.CBufRet.f32 %2036, 2
  %2193 = fadd fast float %2192, %126
  %2194 = fmul fast float %2015, 3.200000e+01
  %2195 = fmul fast float %2016, 3.200000e+01
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
  br i1 %2235, label %2236, label %2359, !dx.controlflow.hints !89

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
  %2335 = call float @dx.op.dot3.f32(i32 55, float %2332, float %2333, float %2334, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
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
  br i1 %2405, label %2406, label %3239, !dx.controlflow.hints !90

; <label>:2406                                    ; preds = %2395
  %2407 = extractvalue %dx.types.CBufRet.f32 %2036, 2
  %2408 = fadd fast float %2407, %126
  %2409 = fmul fast float %2015, 3.200000e+01
  %2410 = fmul fast float %2016, 3.200000e+01
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
  br i1 %2771, label %2772, label %2917, !dx.controlflow.hints !91

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
  %2905 = call float @dx.op.dot3.f32(i32 55, float %2883, float %2884, float %2885, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
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
  br i1 %2925, label %2926, label %2983, !dx.controlflow.hints !92

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
  %3072 = call float @dx.op.dot3.f32(i32 55, float %3067, float %3068, float %3069, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %3129 = call float @dx.op.dot3.f32(i32 55, float %3124, float %3125, float %3126, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %3186 = call float @dx.op.dot3.f32(i32 55, float %3181, float %3182, float %3183, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %3251 = call float @dx.op.binary.f32(i32 36, float %2012, float %3250)  ; FMin(a,b)
  %3252 = fsub fast float 1.000000e+00, %2031
  %3253 = fmul fast float %3251, %3252
  %3254 = fsub fast float 1.000000e+00, %3253
  %3255 = bitcast float %3254 to i32
  %3256 = sub nsw i32 2129859010, %3255
  %3257 = bitcast i32 %3256 to float
  %3258 = call float @dx.op.binary.f32(i32 36, float %2013, float %3250)  ; FMin(a,b)
  %3259 = fmul fast float %3258, %3252
  %3260 = fsub fast float 1.000000e+00, %3259
  %3261 = bitcast float %3260 to i32
  %3262 = sub nsw i32 2129859010, %3261
  %3263 = bitcast i32 %3262 to float
  %3264 = call float @dx.op.binary.f32(i32 36, float %2014, float %3250)  ; FMin(a,b)
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
  %3276 = call float @dx.op.binary.f32(i32 36, float %2009, float %3250)  ; FMin(a,b)
  %3277 = fmul fast float %3276, %3252
  %3278 = fsub fast float 1.000000e+00, %3277
  %3279 = bitcast float %3278 to i32
  %3280 = sub nsw i32 2129859010, %3279
  %3281 = bitcast i32 %3280 to float
  %3282 = call float @dx.op.binary.f32(i32 36, float %2010, float %3250)  ; FMin(a,b)
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
  %3330 = fmul fast float %3328, %2009
  %3331 = fmul fast float %3328, %2010
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
  %3345 = fsub fast float 1.000000e+00, %2009
  %3346 = fsub fast float 1.000000e+00, %2010
  %3347 = fsub fast float 1.000000e+00, %2020
  %3348 = fmul fast float %2009, 4.000000e+00
  %3349 = fmul fast float %3348, %3345
  %3350 = fmul fast float %3349, %3342
  %3351 = fmul fast float %2010, 4.000000e+00
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
  %3370 = call float @dx.op.dot3.f32(i32 55, float %2012, float %2013, float %2014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3371 = fcmp fast ogt float %3370, 0x3E7FF19E20000000
  %3372 = fdiv fast float 1.000000e+00, %3370
  %3373 = select i1 %3371, float %3372, float 0.000000e+00
  %3374 = fmul fast float %3373, %2012
  %3375 = fmul fast float %3373, %2013
  %3376 = fmul fast float %3373, %2014
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
  %3444 = fmul fast float %2010, 0x4012D0A400000000
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
  br i1 %3649, label %3650, label %4048, !dx.controlflow.hints !93

; <label>:3650                                    ; preds = %3616
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 0
  %3653 = fcmp fast une float %3652, 0.000000e+00
  br i1 %3653, label %3654, label %4048, !dx.controlflow.hints !94

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
  br i1 %3688, label %4048, label %3689, !dx.controlflow.hints !95

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
  br i1 %3750, label %3751, label %4048, !dx.controlflow.hints !96

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
  br i1 %3767, label %3768, label %3789, !dx.controlflow.hints !97

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
  %3908 = load i32, i32* %3907, align 4, !tbaa !98, !noalias !102
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
  br i1 %4050, label %4051, label %4057, !dx.controlflow.hints !111

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
  br i1 %4059, label %4060, label %4066, !dx.controlflow.hints !112

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
  br i1 %4068, label %4069, label %4076, !dx.controlflow.hints !113

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
  br i1 %4089, label %4090, label %4127, !dx.controlflow.hints !114

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
  br i1 %4131, label %4132, label %4290, !dx.controlflow.hints !115

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
  br i1 %4189, label %4190, label %4231, !dx.controlflow.hints !116

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
  br i1 %4294, label %4295, label %4605, !dx.controlflow.hints !117

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
  %4307 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3484, float %3485, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
  %4308 = call float @dx.op.dot3.f32(i32 55, float %2005, float %2004, float %2003, float %4304, float %4305, float %4306)  ; Dot3(ax,ay,az,bx,by,bz)
  %4309 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4310 = fmul fast float %4309, %4309
  %4311 = fmul fast float %4310, %2035
  %4312 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4313 = fmul fast float %4312, %4309
  %4314 = call float @dx.op.dot3.f32(i32 55, float %2015, float %2016, float %2017, float %4304, float %4305, float %4306)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %4357 = fsub fast float 1.000000e+00, %2009
  %4358 = fsub fast float 1.000000e+00, %2010
  %4359 = fsub fast float 1.000000e+00, %2020
  %4360 = fmul fast float %4356, %4357
  %4361 = fmul fast float %4356, %4358
  %4362 = fmul fast float %4356, %4359
  %4363 = fadd fast float %4360, %2009
  %4364 = fadd fast float %4361, %2010
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
  %4374 = fmul fast float %2009, 4.000000e+00
  %4375 = fmul fast float %4374, %4357
  %4376 = fmul fast float %4375, %4371
  %4377 = fmul fast float %2010, 4.000000e+00
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
  %4406 = fmul fast float %4404, %2009
  %4407 = fmul fast float %4404, %2010
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
  %4420 = fmul fast float %2009, 4.000000e+00
  %4421 = fmul fast float %4420, %4357
  %4422 = fmul fast float %4421, %4417
  %4423 = fmul fast float %2010, 4.000000e+00
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
  %4456 = fsub fast float -0.000000e+00, %2015
  %4457 = fsub fast float -0.000000e+00, %2016
  %4458 = fsub fast float -0.000000e+00, %2017
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
  %4474 = fmul fast float %4472, %2009
  %4475 = fmul fast float %4472, %2010
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
  %4488 = fmul fast float %2009, 4.000000e+00
  %4489 = fmul fast float %4488, %4357
  %4490 = fmul fast float %4489, %4485
  %4491 = fmul fast float %2010, 4.000000e+00
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
  %4612 = fmul fast float %1668, %3412
  %4613 = fsub fast float -0.000000e+00, %4612
  %4614 = fmul fast float %1668, %3413
  %4615 = fsub fast float -0.000000e+00, %4614
  %4616 = fmul fast float %1668, %3414
  %4617 = fsub fast float -0.000000e+00, %4616
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4620 = fmul fast float %4619, %3418
  %4621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4622 = extractvalue %dx.types.CBufRet.f32 %4621, 3
  %4623 = fsub fast float 1.000000e+00, %1640
  %4624 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4625 = fadd fast float %4611, %1639
  %4626 = fmul fast float %4625, %1640
  %4627 = fmul fast float %4624, %4622
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 3
  %4630 = fmul fast float %4609, %2012
  %4631 = fmul fast float %4610, %2013
  %4632 = fmul fast float %4611, %2014
  %4633 = fcmp fast ogt float %68, %175
  %4634 = and i1 %4633, %1741
  %4635 = or i1 %1820, %4634
  %4636 = icmp eq i32 %1740, 2
  %4637 = fcmp fast ole float %68, %175
  %4638 = and i1 %4637, %4636
  %4639 = or i1 %4638, %4635
  br i1 %4634, label %4640, label %4899

; <label>:4640                                    ; preds = %4605
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 2
  %4643 = extractvalue %dx.types.CBufRet.f32 %4641, 3
  %4644 = fmul fast float %4642, %77
  %4645 = fmul fast float %4643, %78
  %4646 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4647 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4648 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %4646, float %4647, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4649 = extractvalue %dx.types.ResRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.ResRet.f32 %4648, 1
  %4651 = extractvalue %dx.types.ResRet.f32 %4648, 2
  %4652 = extractvalue %dx.types.ResRet.f32 %4648, 3
  %4653 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %4646, float %4647, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4654 = extractvalue %dx.types.ResRet.f32 %4653, 0
  %4655 = extractvalue %dx.types.ResRet.f32 %4653, 1
  %4656 = extractvalue %dx.types.ResRet.f32 %4653, 2
  %4657 = extractvalue %dx.types.ResRet.f32 %4653, 3
  %4658 = call float @dx.op.binary.f32(i32 35, float %4650, float %4651)  ; FMax(a,b)
  %4659 = call float @dx.op.binary.f32(i32 35, float %4649, float %4658)  ; FMax(a,b)
  %4660 = call float @dx.op.binary.f32(i32 35, float %4659, float %4652)  ; FMax(a,b)
  %4661 = call float @dx.op.binary.f32(i32 36, float %4655, float %4656)  ; FMin(a,b)
  %4662 = call float @dx.op.binary.f32(i32 36, float %4654, float %4661)  ; FMin(a,b)
  %4663 = call float @dx.op.binary.f32(i32 36, float %4662, float %4657)  ; FMin(a,b)
  %4664 = fmul fast float %4660, 2.550000e+02
  %4665 = fadd fast float %4664, 0x3F70101020000000
  %4666 = fptoui float %4665 to i32
  %4667 = fmul fast float %4663, 2.550000e+02
  %4668 = fadd fast float %4667, 0x3F70101020000000
  %4669 = fptoui float %4668 to i32
  %4670 = icmp ult i32 %4666, %4669
  br i1 %4670, label %4671, label %4839

; <label>:4671                                    ; preds = %4640
  %4672 = fcmp fast ogt float %67, 9.843750e-01
  %4673 = fadd fast float %68, -4.000000e+00
  %4674 = select i1 %4672, float -4.000000e+00, float %4673
  %4675 = call float @dx.op.binary.f32(i32 35, float %4674, float 0.000000e+00)  ; FMax(a,b)
  %4676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4677 = extractvalue %dx.types.CBufRet.f32 %4676, 0
  %4678 = fadd fast float %4677, %4675
  %4679 = extractvalue %dx.types.CBufRet.f32 %4676, 2
  %4680 = fmul fast float %4678, %4679
  %4681 = call float @dx.op.unary.f32(i32 23, float %4680)  ; Log(value)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4676, 3
  %4683 = fmul fast float %4682, %4681
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 2
  %4686 = fmul fast float %4683, %4685
  %4687 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4688 = uitofp i32 %4666 to float
  %4689 = uitofp i32 %4669 to float
  %4690 = fadd fast float %4688, 5.000000e-01
  %4691 = fadd fast float %4689, 5.000000e-01
  %4692 = fmul fast float %4685, %4690
  %4693 = fmul fast float %4685, %4691
  %4694 = fadd fast float %4692, 0x3F0FFB4800000000
  %4695 = fadd fast float %4693, 0xBF0FFB4800000000
  %4696 = call float @dx.op.binary.f32(i32 35, float %4687, float %4694)  ; FMax(a,b)
  %4697 = call float @dx.op.binary.f32(i32 36, float %4696, float %4695)  ; FMin(a,b)
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 1
  %4700 = extractvalue %dx.types.CBufRet.f32 %4698, 2
  %4701 = extractvalue %dx.types.CBufRet.f32 %4698, 0
  %4702 = fmul fast float %4699, %4697
  %4703 = fadd fast float %4701, %4702
  %4704 = fadd fast float %4701, %4700
  %4705 = fsub fast float %4699, %4700
  %4706 = fadd fast float %4705, %4701
  %4707 = call float @dx.op.binary.f32(i32 35, float %4703, float %4704)  ; FMax(a,b)
  %4708 = call float @dx.op.binary.f32(i32 36, float %4707, float %4706)  ; FMin(a,b)
  %4709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %4646, float %4647, float %4708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = extractvalue %dx.types.ResRet.f32 %4709, 1
  %4712 = extractvalue %dx.types.ResRet.f32 %4709, 2
  %4713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4714 = extractvalue %dx.types.CBufRet.i32 %4713, 0
  %4715 = extractvalue %dx.types.CBufRet.i32 %4713, 1
  %4716 = uitofp i32 %4714 to float
  %4717 = uitofp i32 %4715 to float
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 0
  %4720 = extractvalue %dx.types.CBufRet.f32 %4718, 1
  %4721 = fmul fast float %4716, %4646
  %4722 = fmul fast float %4717, %4647
  %4723 = fadd fast float %4721, -5.000000e-01
  %4724 = fadd fast float %4722, -5.000000e-01
  %4725 = call float @dx.op.unary.f32(i32 22, float %4723)  ; Frc(value)
  %4726 = call float @dx.op.unary.f32(i32 22, float %4724)  ; Frc(value)
  %4727 = fmul fast float %4725, %4725
  %4728 = fmul fast float %4727, %4725
  %4729 = fsub fast float 3.000000e+00, %4725
  %4730 = fmul fast float %4727, %4729
  %4731 = fmul fast float %4725, 3.000000e+00
  %4732 = fmul fast float %4728, 3.000000e+00
  %4733 = fmul fast float %4727, 6.000000e+00
  %4734 = fsub fast float %4732, %4733
  %4735 = fadd fast float %4734, 4.000000e+00
  %4736 = fmul fast float %4735, 0x3FC5555560000000
  %4737 = fmul fast float %4728, -3.000000e+00
  %4738 = fadd fast float %4727, %4725
  %4739 = fmul fast float %4738, 3.000000e+00
  %4740 = fadd fast float %4737, 1.000000e+00
  %4741 = fadd fast float %4740, %4739
  %4742 = fmul fast float %4728, 0x3FC5555560000000
  %4743 = fmul fast float %4726, %4726
  %4744 = fmul fast float %4743, %4726
  %4745 = fsub fast float 3.000000e+00, %4726
  %4746 = fmul fast float %4743, %4745
  %4747 = fmul fast float %4726, 3.000000e+00
  %4748 = fmul fast float %4744, 3.000000e+00
  %4749 = fmul fast float %4743, 6.000000e+00
  %4750 = fsub fast float %4748, %4749
  %4751 = fadd fast float %4750, 4.000000e+00
  %4752 = fmul fast float %4751, 0x3FC5555560000000
  %4753 = fmul fast float %4744, -3.000000e+00
  %4754 = fadd fast float %4743, %4726
  %4755 = fmul fast float %4754, 3.000000e+00
  %4756 = fadd fast float %4753, 1.000000e+00
  %4757 = fadd fast float %4756, %4755
  %4758 = fmul fast float %4744, 0x3FC5555560000000
  %4759 = fadd fast float %4725, 1.000000e+00
  %4760 = fsub fast float 1.000000e+00, %4731
  %4761 = fadd fast float %4760, %4730
  %4762 = fadd fast float %4761, %4735
  %4763 = fmul fast float %4762, 0x3FC5555560000000
  %4764 = fdiv fast float %4736, %4763
  %4765 = fsub fast float %4759, %4764
  %4766 = fsub fast float 1.000000e+00, %4725
  %4767 = fadd fast float %4741, %4728
  %4768 = fmul fast float %4767, 0x3FC5555560000000
  %4769 = fdiv fast float %4742, %4768
  %4770 = fadd fast float %4766, %4769
  %4771 = fadd fast float %4726, 1.000000e+00
  %4772 = fsub fast float 1.000000e+00, %4747
  %4773 = fadd fast float %4772, %4746
  %4774 = fadd fast float %4773, %4751
  %4775 = fmul fast float %4774, 0x3FC5555560000000
  %4776 = fdiv fast float %4752, %4775
  %4777 = fsub fast float %4771, %4776
  %4778 = fsub fast float 1.000000e+00, %4726
  %4779 = fadd fast float %4757, %4744
  %4780 = fmul fast float %4779, 0x3FC5555560000000
  %4781 = fdiv fast float %4758, %4780
  %4782 = fadd fast float %4781, %4778
  %4783 = fmul fast float %4765, %4719
  %4784 = fsub fast float %4646, %4783
  %4785 = fmul fast float %4770, %4719
  %4786 = fadd fast float %4785, %4646
  %4787 = fmul fast float %4782, %4720
  %4788 = fadd fast float %4787, %4647
  %4789 = fmul fast float %4777, %4720
  %4790 = fsub fast float %4647, %4789
  %4791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4784, float %4790, float %4708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4792 = extractvalue %dx.types.ResRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.ResRet.f32 %4791, 1
  %4794 = extractvalue %dx.types.ResRet.f32 %4791, 2
  %4795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4786, float %4790, float %4708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 0
  %4797 = extractvalue %dx.types.ResRet.f32 %4795, 1
  %4798 = extractvalue %dx.types.ResRet.f32 %4795, 2
  %4799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4784, float %4788, float %4708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4800 = extractvalue %dx.types.ResRet.f32 %4799, 0
  %4801 = extractvalue %dx.types.ResRet.f32 %4799, 1
  %4802 = extractvalue %dx.types.ResRet.f32 %4799, 2
  %4803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4786, float %4788, float %4708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4804 = extractvalue %dx.types.ResRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.ResRet.f32 %4803, 1
  %4806 = extractvalue %dx.types.ResRet.f32 %4803, 2
  %4807 = fsub fast float %4800, %4792
  %4808 = fsub fast float %4801, %4793
  %4809 = fsub fast float %4802, %4794
  %4810 = fmul fast float %4807, %4780
  %4811 = fmul fast float %4808, %4780
  %4812 = fmul fast float %4809, %4780
  %4813 = fadd fast float %4810, %4792
  %4814 = fadd fast float %4811, %4793
  %4815 = fadd fast float %4812, %4794
  %4816 = fsub fast float %4804, %4796
  %4817 = fsub fast float %4805, %4797
  %4818 = fsub fast float %4806, %4798
  %4819 = fmul fast float %4816, %4780
  %4820 = fmul fast float %4817, %4780
  %4821 = fmul fast float %4818, %4780
  %4822 = fsub fast float %4796, %4813
  %4823 = fadd fast float %4822, %4819
  %4824 = fsub fast float %4797, %4814
  %4825 = fadd fast float %4824, %4820
  %4826 = fsub fast float %4798, %4815
  %4827 = fadd fast float %4826, %4821
  %4828 = fmul fast float %4823, %4768
  %4829 = fmul fast float %4825, %4768
  %4830 = fmul fast float %4827, %4768
  %4831 = fadd fast float %4828, %4813
  %4832 = fadd fast float %4829, %4814
  %4833 = fadd fast float %4830, %4815
  %4834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.f32 %4834, 1
  %4836 = fmul fast float %4831, %4835
  %4837 = fmul fast float %4832, %4835
  %4838 = fmul fast float %4833, %4835
  br label %4839

; <label>:4839                                    ; preds = %4671, %4640
  %4840 = phi float [ %4710, %4671 ], [ 1.000000e+00, %4640 ]
  %4841 = phi float [ %4711, %4671 ], [ 1.000000e+00, %4640 ]
  %4842 = phi float [ %4712, %4671 ], [ 1.000000e+00, %4640 ]
  %4843 = phi float [ %4836, %4671 ], [ 0.000000e+00, %4640 ]
  %4844 = phi float [ %4837, %4671 ], [ 0.000000e+00, %4640 ]
  %4845 = phi float [ %4838, %4671 ], [ 0.000000e+00, %4640 ]
  %4846 = fmul fast float %4843, %4613
  %4847 = fmul fast float %4844, %4615
  %4848 = fmul fast float %4845, %4617
  %4849 = call float @dx.op.dot3.f32(i32 55, float %4840, float %4841, float %4842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = call float @dx.op.dot3.f32(i32 55, float %4846, float %4847, float %4848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4851 = select i1 %214, float %4849, float %4840
  %4852 = select i1 %214, float %4849, float %4841
  %4853 = select i1 %214, float 1.000000e+00, float %4842
  %4854 = select i1 %214, float %4850, float %4846
  %4855 = select i1 %214, float 0.000000e+00, float %4847
  %4856 = select i1 %214, float 0.000000e+00, float %4848
  %4857 = fmul fast float %4851, %4630
  %4858 = fmul fast float %4852, %4631
  %4859 = fmul fast float %4853, %4632
  %4860 = fadd fast float %4857, %4854
  %4861 = fadd fast float %4858, %4855
  %4862 = fadd fast float %4856, %4859
  %4863 = fmul fast float %4851, %4606
  %4864 = fmul fast float %4852, %4607
  %4865 = fmul fast float %4853, %4608
  %4866 = fmul fast float %77, 2.000000e+00
  %4867 = fmul fast float %4866, %4642
  %4868 = fmul fast float %78, 2.000000e+00
  %4869 = fmul fast float %4868, %4643
  %4870 = fsub fast float 1.000000e+00, %4867
  %4871 = fsub fast float 1.000000e+00, %4869
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.CBufRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.CBufRet.f32 %4872, 2
  %4876 = fmul fast float %4870, %4873
  %4877 = fmul fast float %4870, %4874
  %4878 = fmul fast float %4870, %4875
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4882 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4883 = fmul fast float %4871, %4880
  %4884 = fmul fast float %4871, %4881
  %4885 = fmul fast float %4871, %4882
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 0
  %4888 = extractvalue %dx.types.CBufRet.f32 %4886, 1
  %4889 = extractvalue %dx.types.CBufRet.f32 %4886, 2
  %4890 = fadd fast float %4883, %4887
  %4891 = fadd fast float %4890, %4876
  %4892 = fadd fast float %4884, %4888
  %4893 = fadd fast float %4892, %4877
  %4894 = fadd fast float %4885, %4889
  %4895 = fadd fast float %4894, %4878
  %4896 = fmul fast float %4891, %175
  %4897 = fmul fast float %4893, %175
  %4898 = fmul fast float %4895, %175
  br label %4899

; <label>:4899                                    ; preds = %4839, %4605
  %4900 = phi float [ %4896, %4839 ], [ %124, %4605 ]
  %4901 = phi float [ %4897, %4839 ], [ %125, %4605 ]
  %4902 = phi float [ %4898, %4839 ], [ %126, %4605 ]
  %4903 = phi float [ %175, %4839 ], [ %68, %4605 ]
  %4904 = phi float [ %4860, %4839 ], [ %4630, %4605 ]
  %4905 = phi float [ %4861, %4839 ], [ %4631, %4605 ]
  %4906 = phi float [ %4862, %4839 ], [ %4632, %4605 ]
  %4907 = phi float [ %4863, %4839 ], [ %4606, %4605 ]
  %4908 = phi float [ %4864, %4839 ], [ %4607, %4605 ]
  %4909 = phi float [ %4865, %4839 ], [ %4608, %4605 ]
  %4910 = phi float [ %4840, %4839 ], [ 1.000000e+00, %4605 ]
  br i1 %4639, label %6065, label %4911

; <label>:4911                                    ; preds = %4899
  %4912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.f32 %4912, 0
  %4914 = extractvalue %dx.types.CBufRet.f32 %4912, 1
  %4915 = extractvalue %dx.types.CBufRet.f32 %4912, 2
  %4916 = extractvalue %dx.types.CBufRet.f32 %4912, 3
  %4917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4918 = extractvalue %dx.types.CBufRet.f32 %4917, 0
  %4919 = extractvalue %dx.types.CBufRet.f32 %4917, 1
  %4920 = extractvalue %dx.types.CBufRet.f32 %4917, 2
  %4921 = extractvalue %dx.types.CBufRet.f32 %4917, 3
  %4922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.f32 %4922, 0
  %4924 = extractvalue %dx.types.CBufRet.f32 %4922, 1
  %4925 = extractvalue %dx.types.CBufRet.f32 %4922, 2
  %4926 = extractvalue %dx.types.CBufRet.f32 %4922, 3
  %4927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4928 = extractvalue %dx.types.CBufRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.CBufRet.f32 %4927, 1
  %4930 = extractvalue %dx.types.CBufRet.f32 %4927, 2
  %4931 = extractvalue %dx.types.CBufRet.f32 %4927, 3
  %4932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4933 = extractvalue %dx.types.CBufRet.f32 %4932, 3
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 3
  %4936 = extractvalue %dx.types.CBufRet.f32 %4934, 0
  %4937 = extractvalue %dx.types.CBufRet.f32 %4934, 1
  %4938 = extractvalue %dx.types.CBufRet.f32 %4934, 2
  %4939 = fcmp fast olt float %4938, -5.000000e-01
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %4900, float %4901, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = call float @dx.op.unary.f32(i32 25, float %4940)  ; Rsqrt(value)
  %4942 = fmul fast float %4941, %4940
  %4943 = fmul fast float %4941, %4900
  %4944 = fmul fast float %4941, %4901
  %4945 = fmul fast float %4941, %4902
  %4946 = fadd fast float %4942, %4916
  %4947 = call float @dx.op.dot3.f32(i32 55, float %4943, float %4944, float %4945, float %4913, float %4914, float %4915)  ; Dot3(ax,ay,az,bx,by,bz)
  %4948 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.i32 %4948, 1
  %4950 = and i32 %4949, 1
  %4951 = icmp ne i32 %4950, 0
  %4952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.f32 %4952, 2
  %4954 = fcmp fast ogt float %4953, 0.000000e+00
  %4955 = and i1 %4951, %4954
  br i1 %4955, label %4956, label %5362, !dx.controlflow.hints !118

; <label>:4956                                    ; preds = %4911
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 3
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 2
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 2
  %4963 = fsub fast float %4960, %4962
  %4964 = and i32 %4949, 2
  %4965 = extractvalue %dx.types.CBufRet.i32 %4948, 0
  %4966 = call i32 @dx.op.binary.i32(i32 40, i32 %4965, i32 3)  ; UMin(a,b)
  %4967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = extractvalue %dx.types.CBufRet.f32 %4967, 0
  %4969 = extractvalue %dx.types.CBufRet.f32 %4967, 1
  %4970 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4971 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4972 = fsub fast float %4968, %4970
  %4973 = fsub fast float %4969, %4971
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 0
  %4976 = fcmp fast ogt float %4975, 0.000000e+00
  %4977 = fsub fast float -0.000000e+00, %4972
  %4978 = fsub fast float -0.000000e+00, %4973
  %4979 = call float @dx.op.dot2.f32(i32 54, float %4943, float %4944, float %4943, float %4944)  ; Dot2(ax,ay,bx,by)
  %4980 = call float @dx.op.dot2.f32(i32 54, float %4943, float %4944, float %4977, float %4978)  ; Dot2(ax,ay,bx,by)
  %4981 = fmul fast float %4980, 2.000000e+00
  %4982 = call float @dx.op.dot2.f32(i32 54, float %4977, float %4978, float %4977, float %4978)  ; Dot2(ax,ay,bx,by)
  %4983 = fmul fast float %4975, %4975
  %4984 = fsub fast float %4982, %4983
  %4985 = fmul fast float %4981, %4981
  %4986 = fmul fast float %4979, 4.000000e+00
  %4987 = fmul fast float %4986, %4984
  %4988 = fsub fast float %4985, %4987
  %4989 = fcmp fast ogt float %4988, 0.000000e+00
  br i1 %4989, label %4990, label %5005

; <label>:4990                                    ; preds = %4956
  %4991 = fcmp fast ogt float %4981, 0.000000e+00
  %4992 = call float @dx.op.unary.f32(i32 24, float %4988)  ; Sqrt(value)
  %4993 = fsub fast float -0.000000e+00, %4992
  %4994 = select i1 %4991, float %4992, float %4993
  %4995 = fadd fast float %4994, %4981
  %4996 = fmul float %4995, -5.000000e-01
  %4997 = fdiv fast float %4996, %4979
  %4998 = call float @dx.op.binary.f32(i32 35, float %4997, float 0.000000e+00)  ; FMax(a,b)
  %4999 = call float @dx.op.binary.f32(i32 36, float %4942, float %4998)  ; FMin(a,b)
  %5000 = fdiv fast float %4984, %4996
  %5001 = call float @dx.op.binary.f32(i32 35, float %5000, float 0.000000e+00)  ; FMax(a,b)
  %5002 = call float @dx.op.binary.f32(i32 36, float %4942, float %5001)  ; FMin(a,b)
  %5003 = call float @dx.op.binary.f32(i32 36, float %4999, float %5002)  ; FMin(a,b)
  %5004 = call float @dx.op.binary.f32(i32 35, float %4999, float %5002)  ; FMax(a,b)
  br label %5005

; <label>:5005                                    ; preds = %4990, %4956
  %5006 = phi float [ %5004, %4990 ], [ -1.000000e+00, %4956 ]
  %5007 = phi float [ %5003, %4990 ], [ -1.000000e+00, %4956 ]
  %5008 = phi i1 [ true, %4990 ], [ false, %4956 ]
  %5009 = and i1 %4976, %5008
  br i1 %5009, label %5010, label %5012

; <label>:5010                                    ; preds = %5005
  %5011 = fcmp fast oeq float %5007, %5006
  br i1 %5011, label %5315, label %5013

; <label>:5012                                    ; preds = %5005
  br i1 %4976, label %5315, label %5013

; <label>:5013                                    ; preds = %5012, %5010
  %5014 = phi float [ %4942, %5012 ], [ %5006, %5010 ]
  %5015 = phi float [ 0.000000e+00, %5012 ], [ %5007, %5010 ]
  %5016 = icmp ne i32 %4964, 0
  %5017 = fmul fast float %5014, %4945
  %5018 = fadd fast float %5017, %4958
  %5019 = fmul fast float %5018, %5014
  %5020 = select i1 %5016, float 0.000000e+00, float %5019
  %5021 = fcmp fast oeq float %4945, 0.000000e+00
  %5022 = fdiv fast float %4963, %4945
  %5023 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5022)  ; FMax(a,b)
  %5024 = select i1 %5021, float %5014, float %5023
  %5025 = call float @dx.op.binary.f32(i32 36, float %5014, float %5024)  ; FMin(a,b)
  %5026 = fcmp fast ogt float %4945, 0.000000e+00
  %5027 = fcmp fast olt float %4963, 0.000000e+00
  br i1 %5026, label %5028, label %5085

; <label>:5028                                    ; preds = %5013
  %5029 = icmp eq i32 %4964, 0
  br i1 %5027, label %5030, label %5074

; <label>:5030                                    ; preds = %5028
  %5031 = select i1 %5029, float %5014, float 0.000000e+00
  %5032 = fsub fast float -0.000000e+00, %5031
  %5033 = call float @dx.op.unary.f32(i32 6, float %5032)  ; FAbs(value)
  %5034 = fmul fast float %5031, %4945
  %5035 = fadd fast float %5034, %4958
  %5036 = fmul fast float %5033, %5035
  %5037 = fsub fast float %5020, %5036
  %5038 = fsub fast float %5014, %5033
  %5039 = select i1 %5029, float %5038, float 0.000000e+00
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 0
  %5042 = extractvalue %dx.types.CBufRet.f32 %5040, 1
  %5043 = extractvalue %dx.types.CBufRet.f32 %5040, 2
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 0
  %5046 = extractvalue %dx.types.CBufRet.f32 %5044, 1
  %5047 = extractvalue %dx.types.CBufRet.f32 %5044, 2
  %5048 = extractvalue %dx.types.CBufRet.f32 %5044, 3
  %5049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5050 = extractvalue %dx.types.CBufRet.f32 %5049, 3
  %5051 = call float @dx.op.binary.f32(i32 36, float %5037, float %5050)  ; FMin(a,b)
  %5052 = fmul fast float %5048, %5039
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fsub fast float %5045, %5041
  %5055 = fsub fast float %5046, %5042
  %5056 = fsub fast float %5047, %5043
  %5057 = fmul fast float %5053, %5054
  %5058 = fmul fast float %5053, %5055
  %5059 = fmul fast float %5053, %5056
  %5060 = fadd fast float %5057, %5041
  %5061 = fadd fast float %5058, %5042
  %5062 = fadd fast float %5059, %5043
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 0
  %5065 = extractvalue %dx.types.CBufRet.f32 %5063, 1
  %5066 = fadd fast float %5065, %5064
  %5067 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5063, 2
  %5069 = extractvalue %dx.types.CBufRet.f32 %5063, 3
  %5070 = fadd fast float %5069, %5068
  %5071 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5072 = fmul fast float %5067, %5051
  %5073 = fmul fast float %5072, %5071
  br label %5315

; <label>:5074                                    ; preds = %5028
  br i1 %5029, label %5075, label %5096

; <label>:5075                                    ; preds = %5074
  %5076 = call float @dx.op.binary.f32(i32 36, float %5025, float %5015)  ; FMin(a,b)
  %5077 = fsub fast float %5025, %5076
  %5078 = fsub fast float %5077, %5014
  %5079 = call float @dx.op.unary.f32(i32 6, float %5078)  ; FAbs(value)
  %5080 = fadd fast float %5077, %5014
  %5081 = fmul fast float %5080, %4945
  %5082 = fadd fast float %5081, %4958
  %5083 = fmul fast float %5082, %5079
  %5084 = fsub fast float %5020, %5083
  br label %5096

; <label>:5085                                    ; preds = %5013
  br i1 %5027, label %5086, label %5096

; <label>:5086                                    ; preds = %5085
  %5087 = call float @dx.op.binary.f32(i32 35, float %5015, float %5025)  ; FMax(a,b)
  %5088 = icmp eq i32 %4964, 0
  %5089 = select i1 %5088, float %5025, float 0.000000e+00
  %5090 = fsub fast float -0.000000e+00, %5089
  %5091 = call float @dx.op.unary.f32(i32 6, float %5090)  ; FAbs(value)
  %5092 = fmul fast float %5089, %4945
  %5093 = fadd fast float %5092, %4958
  %5094 = fmul fast float %5091, %5093
  %5095 = fsub fast float %5020, %5094
  br label %5096

; <label>:5096                                    ; preds = %5086, %5085, %5075, %5074
  %5097 = phi float [ %5015, %5074 ], [ %5015, %5075 ], [ %5087, %5086 ], [ %5015, %5085 ]
  %5098 = phi float [ 0.000000e+00, %5074 ], [ %5079, %5075 ], [ %5091, %5086 ], [ 0.000000e+00, %5085 ]
  %5099 = phi float [ %5020, %5074 ], [ %5084, %5075 ], [ %5095, %5086 ], [ %5020, %5085 ]
  %5100 = phi float [ %5025, %5074 ], [ %5025, %5075 ], [ %5014, %5086 ], [ %5014, %5085 ]
  %5101 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 0
  store float -1.000000e+00, float* %5101, align 4, !tbaa !119, !noalias !121
  %5102 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 1
  store float -1.000000e+00, float* %5102, align 4, !tbaa !119, !noalias !121
  %5103 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 2
  store float -1.000000e+00, float* %5103, align 4, !tbaa !119, !noalias !121
  %5104 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 0
  store float -1.000000e+00, float* %5104, align 4, !tbaa !119, !noalias !121
  %5105 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 1
  store float -1.000000e+00, float* %5105, align 4, !tbaa !119, !noalias !121
  %5106 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 2
  store float -1.000000e+00, float* %5106, align 4, !tbaa !119, !noalias !121
  %5107 = icmp sgt i32 %4966, 0
  br i1 %5107, label %5108, label %5169

; <label>:5108                                    ; preds = %5096
  br label %5109

; <label>:5109                                    ; preds = %5158, %5108
  %5110 = phi i32 [ %5159, %5158 ], [ 0, %5108 ]
  %5111 = phi i32 [ %5160, %5158 ], [ 0, %5108 ]
  %5112 = add nuw i32 %5111, 171
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %5112)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 0
  %5115 = extractvalue %dx.types.CBufRet.f32 %5113, 1
  %5116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = extractvalue %dx.types.CBufRet.f32 %5116, 0
  %5118 = extractvalue %dx.types.CBufRet.f32 %5116, 1
  %5119 = fsub fast float %5114, %5117
  %5120 = fsub fast float %5115, %5118
  %5121 = extractvalue %dx.types.CBufRet.f32 %5113, 2
  %5122 = fsub fast float -0.000000e+00, %5119
  %5123 = fsub fast float -0.000000e+00, %5120
  %5124 = call float @dx.op.dot2.f32(i32 54, float %4943, float %4944, float %5122, float %5123)  ; Dot2(ax,ay,bx,by)
  %5125 = fmul fast float %5124, 2.000000e+00
  %5126 = call float @dx.op.dot2.f32(i32 54, float %5122, float %5123, float %5122, float %5123)  ; Dot2(ax,ay,bx,by)
  %5127 = fmul fast float %5121, %5121
  %5128 = fsub fast float %5126, %5127
  %5129 = fmul fast float %5125, %5125
  %5130 = fmul fast float %4986, %5128
  %5131 = fsub fast float %5129, %5130
  %5132 = fcmp fast ogt float %5131, 0.000000e+00
  br i1 %5132, label %5133, label %5148

; <label>:5133                                    ; preds = %5109
  %5134 = fcmp fast ogt float %5125, 0.000000e+00
  %5135 = call float @dx.op.unary.f32(i32 24, float %5131)  ; Sqrt(value)
  %5136 = fsub fast float -0.000000e+00, %5135
  %5137 = select i1 %5134, float %5135, float %5136
  %5138 = fadd fast float %5137, %5125
  %5139 = fmul float %5138, -5.000000e-01
  %5140 = fdiv fast float %5139, %4979
  %5141 = call float @dx.op.binary.f32(i32 35, float %5140, float 0.000000e+00)  ; FMax(a,b)
  %5142 = call float @dx.op.binary.f32(i32 36, float %5014, float %5141)  ; FMin(a,b)
  %5143 = fdiv fast float %5128, %5139
  %5144 = call float @dx.op.binary.f32(i32 35, float %5143, float 0.000000e+00)  ; FMax(a,b)
  %5145 = call float @dx.op.binary.f32(i32 36, float %5014, float %5144)  ; FMin(a,b)
  %5146 = call float @dx.op.binary.f32(i32 36, float %5142, float %5145)  ; FMin(a,b)
  %5147 = call float @dx.op.binary.f32(i32 35, float %5142, float %5145)  ; FMax(a,b)
  br label %5148

; <label>:5148                                    ; preds = %5133, %5109
  %5149 = phi float [ %5147, %5133 ], [ -1.000000e+00, %5109 ]
  %5150 = phi float [ %5146, %5133 ], [ -1.000000e+00, %5109 ]
  %5151 = phi i1 [ true, %5133 ], [ false, %5109 ]
  br i1 %5151, label %5152, label %5158

; <label>:5152                                    ; preds = %5148
  %5153 = call float @dx.op.binary.f32(i32 35, float %5097, float %5150)  ; FMax(a,b)
  %5154 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 %5111
  store float %5153, float* %5154, align 4, !tbaa !119, !noalias !121
  %5155 = call float @dx.op.binary.f32(i32 35, float %5097, float %5149)  ; FMax(a,b)
  %5156 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %5111
  store float %5155, float* %5156, align 4, !tbaa !119, !noalias !121
  %5157 = add nsw i32 %5110, 1
  br label %5158

; <label>:5158                                    ; preds = %5152, %5148
  %5159 = phi i32 [ %5157, %5152 ], [ %5110, %5148 ]
  %5160 = add nuw nsw i32 %5111, 1
  %5161 = icmp eq i32 %5160, %4966
  br i1 %5161, label %5162, label %5109

; <label>:5162                                    ; preds = %5158
  %5163 = load float, float* %5103, align 4, !tbaa !119, !alias.scope !137, !noalias !140
  %5164 = load float, float* %5102, align 4, !tbaa !119, !alias.scope !143, !noalias !144
  %5165 = load float, float* %5101, align 4, !tbaa !119, !alias.scope !145, !noalias !146
  %5166 = load float, float* %5106, align 4, !tbaa !119, !alias.scope !147, !noalias !150
  %5167 = load float, float* %5105, align 4, !tbaa !119, !alias.scope !153, !noalias !154
  %5168 = load float, float* %5104, align 4, !tbaa !119, !alias.scope !155, !noalias !156
  br label %5169

; <label>:5169                                    ; preds = %5162, %5096
  %5170 = phi float [ -1.000000e+00, %5096 ], [ %5168, %5162 ]
  %5171 = phi float [ -1.000000e+00, %5096 ], [ %5167, %5162 ]
  %5172 = phi float [ -1.000000e+00, %5096 ], [ %5166, %5162 ]
  %5173 = phi float [ -1.000000e+00, %5096 ], [ %5165, %5162 ]
  %5174 = phi float [ -1.000000e+00, %5096 ], [ %5164, %5162 ]
  %5175 = phi float [ -1.000000e+00, %5096 ], [ %5163, %5162 ]
  %5176 = phi i32 [ 0, %5096 ], [ %5159, %5162 ]
  %5177 = call float @dx.op.binary.f32(i32 36, float %5174, float %5175)  ; FMin(a,b)
  %5178 = call float @dx.op.binary.f32(i32 36, float %5173, float %5177)  ; FMin(a,b)
  %5179 = call float @dx.op.binary.f32(i32 35, float %5173, float %5174)  ; FMax(a,b)
  %5180 = call float @dx.op.binary.f32(i32 36, float %5179, float %5175)  ; FMin(a,b)
  %5181 = call float @dx.op.binary.f32(i32 36, float %5173, float %5174)  ; FMin(a,b)
  %5182 = call float @dx.op.binary.f32(i32 35, float %5181, float %5180)  ; FMax(a,b)
  %5183 = call float @dx.op.binary.f32(i32 35, float %5174, float %5175)  ; FMax(a,b)
  %5184 = call float @dx.op.binary.f32(i32 35, float %5173, float %5183)  ; FMax(a,b)
  store float %5178, float* %5101, align 4, !tbaa !119, !alias.scope !145, !noalias !146
  store float %5182, float* %5102, align 4, !tbaa !119, !alias.scope !143, !noalias !144
  store float %5184, float* %5103, align 4, !tbaa !119, !alias.scope !137, !noalias !140
  %5185 = call float @dx.op.binary.f32(i32 36, float %5171, float %5172)  ; FMin(a,b)
  %5186 = call float @dx.op.binary.f32(i32 36, float %5170, float %5185)  ; FMin(a,b)
  %5187 = call float @dx.op.binary.f32(i32 35, float %5170, float %5171)  ; FMax(a,b)
  %5188 = call float @dx.op.binary.f32(i32 36, float %5187, float %5172)  ; FMin(a,b)
  %5189 = call float @dx.op.binary.f32(i32 36, float %5170, float %5171)  ; FMin(a,b)
  %5190 = call float @dx.op.binary.f32(i32 35, float %5189, float %5188)  ; FMax(a,b)
  %5191 = call float @dx.op.binary.f32(i32 35, float %5171, float %5172)  ; FMax(a,b)
  %5192 = call float @dx.op.binary.f32(i32 35, float %5170, float %5191)  ; FMax(a,b)
  store float %5186, float* %5104, align 4, !tbaa !119, !alias.scope !155, !noalias !156
  store float %5190, float* %5105, align 4, !tbaa !119, !alias.scope !153, !noalias !154
  store float %5192, float* %5106, align 4, !tbaa !119, !alias.scope !147, !noalias !150
  %5193 = sub nsw i32 3, %5176
  %5194 = icmp sgt i32 %5193, 2
  br i1 %5194, label %5195, label %5233

; <label>:5195                                    ; preds = %5169
  %5196 = icmp eq i32 %4964, 0
  %5197 = fsub fast float %5014, %5098
  %5198 = select i1 %5196, float %5197, float %5098
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 0
  %5201 = extractvalue %dx.types.CBufRet.f32 %5199, 1
  %5202 = extractvalue %dx.types.CBufRet.f32 %5199, 2
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5205 = extractvalue %dx.types.CBufRet.f32 %5203, 1
  %5206 = extractvalue %dx.types.CBufRet.f32 %5203, 2
  %5207 = extractvalue %dx.types.CBufRet.f32 %5203, 3
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 3
  %5210 = call float @dx.op.binary.f32(i32 36, float %5099, float %5209)  ; FMin(a,b)
  %5211 = fmul fast float %5207, %5198
  %5212 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5213 = fsub fast float %5204, %5200
  %5214 = fsub fast float %5205, %5201
  %5215 = fsub fast float %5206, %5202
  %5216 = fmul fast float %5212, %5213
  %5217 = fmul fast float %5212, %5214
  %5218 = fmul fast float %5212, %5215
  %5219 = fadd fast float %5216, %5200
  %5220 = fadd fast float %5217, %5201
  %5221 = fadd fast float %5218, %5202
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 0
  %5224 = extractvalue %dx.types.CBufRet.f32 %5222, 1
  %5225 = fadd fast float %5224, %5223
  %5226 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5222, 2
  %5228 = extractvalue %dx.types.CBufRet.f32 %5222, 3
  %5229 = fadd fast float %5228, %5227
  %5230 = call float @dx.op.unary.f32(i32 7, float %5229)  ; Saturate(value)
  %5231 = fmul fast float %5226, %5210
  %5232 = fmul fast float %5231, %5230
  br label %5315

; <label>:5233                                    ; preds = %5169
  %5234 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 %5193
  %5235 = load float, float* %5234, align 4, !tbaa !119, !noalias !121
  %5236 = fcmp fast olt float %5235, %5100
  %5237 = icmp sgt i32 %5176, 0
  %5238 = and i1 %5237, %5236
  br i1 %5238, label %5239, label %5276

; <label>:5239                                    ; preds = %5233
  br label %5240

; <label>:5240                                    ; preds = %5269, %5239
  %5241 = phi float [ %5270, %5269 ], [ %5098, %5239 ]
  %5242 = phi float [ %5271, %5269 ], [ %5099, %5239 ]
  %5243 = phi float [ %5251, %5269 ], [ %5235, %5239 ]
  %5244 = phi i32 [ %5248, %5269 ], [ %5193, %5239 ]
  %5245 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %5244
  %5246 = load float, float* %5245, align 4, !tbaa !119, !noalias !121
  %5247 = icmp slt i32 %5244, 2
  %5248 = add nsw i32 %5244, 1
  %5249 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 %5248
  %5250 = load float, float* %5249, align 4, !tbaa !119, !noalias !121
  %5251 = select i1 %5247, float %5250, float %5014
  %5252 = call float @dx.op.binary.f32(i32 36, float %5251, float %5246)  ; FMin(a,b)
  %5253 = call float @dx.op.binary.f32(i32 36, float %5100, float %5252)  ; FMin(a,b)
  %5254 = icmp eq i32 %4964, 0
  %5255 = fadd fast float %5253, %5243
  %5256 = fmul fast float %5255, %4945
  %5257 = fadd fast float %5256, %4958
  br i1 %5254, label %5263, label %5258

; <label>:5258                                    ; preds = %5240
  %5259 = fsub fast float %5253, %5243
  %5260 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5259)  ; FMax(a,b)
  %5261 = fmul fast float %5260, %5257
  %5262 = fadd fast float %5261, %5242
  br label %5269

; <label>:5263                                    ; preds = %5240
  %5264 = fsub fast float %5243, %5253
  %5265 = call float @dx.op.unary.f32(i32 6, float %5264)  ; FAbs(value)
  %5266 = fadd fast float %5265, %5241
  %5267 = fmul fast float %5265, %5257
  %5268 = fsub fast float %5242, %5267
  br label %5269

; <label>:5269                                    ; preds = %5263, %5258
  %5270 = phi float [ %5260, %5258 ], [ %5266, %5263 ]
  %5271 = phi float [ %5262, %5258 ], [ %5268, %5263 ]
  %5272 = fcmp fast olt float %5251, %5100
  %5273 = icmp slt i32 %5248, 3
  %5274 = and i1 %5273, %5272
  br i1 %5274, label %5240, label %5275

; <label>:5275                                    ; preds = %5269
  br label %5276

; <label>:5276                                    ; preds = %5275, %5233
  %5277 = phi float [ %5098, %5233 ], [ %5270, %5275 ]
  %5278 = phi float [ %5099, %5233 ], [ %5271, %5275 ]
  %5279 = fsub fast float %5014, %5277
  %5280 = select i1 %5016, float %5277, float %5279
  %5281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.CBufRet.f32 %5281, 1
  %5284 = extractvalue %dx.types.CBufRet.f32 %5281, 2
  %5285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5286 = extractvalue %dx.types.CBufRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.CBufRet.f32 %5285, 1
  %5288 = extractvalue %dx.types.CBufRet.f32 %5285, 2
  %5289 = extractvalue %dx.types.CBufRet.f32 %5285, 3
  %5290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5291 = extractvalue %dx.types.CBufRet.f32 %5290, 3
  %5292 = call float @dx.op.binary.f32(i32 36, float %5278, float %5291)  ; FMin(a,b)
  %5293 = fmul fast float %5289, %5280
  %5294 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5295 = fsub fast float %5286, %5282
  %5296 = fsub fast float %5287, %5283
  %5297 = fsub fast float %5288, %5284
  %5298 = fmul fast float %5294, %5295
  %5299 = fmul fast float %5294, %5296
  %5300 = fmul fast float %5294, %5297
  %5301 = fadd fast float %5298, %5282
  %5302 = fadd fast float %5299, %5283
  %5303 = fadd fast float %5300, %5284
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 0
  %5306 = extractvalue %dx.types.CBufRet.f32 %5304, 1
  %5307 = fadd fast float %5306, %5305
  %5308 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5309 = extractvalue %dx.types.CBufRet.f32 %5304, 2
  %5310 = extractvalue %dx.types.CBufRet.f32 %5304, 3
  %5311 = fadd fast float %5310, %5309
  %5312 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5313 = fmul fast float %5308, %5292
  %5314 = fmul fast float %5313, %5312
  br label %5315

; <label>:5315                                    ; preds = %5276, %5195, %5030, %5012, %5010
  %5316 = phi float [ %5039, %5030 ], [ %5198, %5195 ], [ %5280, %5276 ], [ 0.000000e+00, %5010 ], [ 0.000000e+00, %5012 ]
  %5317 = phi float [ %5073, %5030 ], [ %5232, %5195 ], [ %5314, %5276 ], [ 0.000000e+00, %5010 ], [ 0.000000e+00, %5012 ]
  %5318 = phi float [ %5060, %5030 ], [ %5219, %5195 ], [ %5301, %5276 ], [ 0.000000e+00, %5010 ], [ 0.000000e+00, %5012 ]
  %5319 = phi float [ %5061, %5030 ], [ %5220, %5195 ], [ %5302, %5276 ], [ 0.000000e+00, %5010 ], [ 0.000000e+00, %5012 ]
  %5320 = phi float [ %5062, %5030 ], [ %5221, %5195 ], [ %5303, %5276 ], [ 0.000000e+00, %5010 ], [ 0.000000e+00, %5012 ]
  %5321 = fmul fast float %4953, %5317
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 2
  %5324 = fsub fast float %4960, %5323
  %5325 = fcmp fast olt float %5321, -2.000000e+01
  %5326 = call float @dx.op.unary.f32(i32 21, float %5321)  ; Exp(value)
  %5327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5327, 2
  %5329 = extractvalue %dx.types.CBufRet.f32 %5327, 3
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 2
  %5332 = fmul fast float %5329, %5324
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = fsub fast float 1.000000e+00, %5333
  %5335 = fmul fast float %4945, 5.000000e-01
  %5336 = fadd fast float %5335, 5.000000e-01
  %5337 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5338 = fsub fast float 1.000000e+00, %5337
  %5339 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5334)  ; FMax(a,b)
  %5340 = fdiv fast float %5338, %5339
  %5341 = fsub fast float %5324, %4902
  %5342 = call float @dx.op.unary.f32(i32 6, float %5341)  ; FAbs(value)
  %5343 = fmul fast float %5342, %5328
  %5344 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5345 = fsub fast float 1.000000e+00, %5343
  %5346 = fmul fast float %5345, %5344
  %5347 = fadd fast float %5346, %5343
  %5348 = fmul fast float %5331, %5324
  %5349 = call float @dx.op.unary.f32(i32 7, float %5348)  ; Saturate(value)
  %5350 = fsub fast float 1.000000e+00, %5347
  %5351 = fmul fast float %5350, %5349
  %5352 = fadd fast float %5351, %5347
  %5353 = call float @dx.op.unary.f32(i32 7, float %5352)  ; Saturate(value)
  %5354 = fadd fast float %5326, -1.000000e+00
  %5355 = select i1 %5325, float -1.000000e+00, float %5354
  %5356 = fmul fast float %5353, %5355
  %5357 = fadd fast float %5356, 1.000000e+00
  %5358 = fsub fast float -0.000000e+00, %5356
  %5359 = fmul fast float %5318, %5358
  %5360 = fmul fast float %5319, %5358
  %5361 = fmul fast float %5320, %5358
  br label %5362

; <label>:5362                                    ; preds = %5315, %4911
  %5363 = phi float [ %5316, %5315 ], [ 0.000000e+00, %4911 ]
  %5364 = phi float [ %5357, %5315 ], [ 1.000000e+00, %4911 ]
  %5365 = phi float [ %5359, %5315 ], [ 0.000000e+00, %4911 ]
  %5366 = phi float [ %5360, %5315 ], [ 0.000000e+00, %4911 ]
  %5367 = phi float [ %5361, %5315 ], [ 0.000000e+00, %4911 ]
  %5368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5369 = extractvalue %dx.types.CBufRet.f32 %5368, 1
  %5370 = fsub fast float 1.000000e+00, %5364
  %5371 = fmul fast float %5370, %4946
  %5372 = fmul fast float %5371, %5369
  %5373 = fsub fast float %4946, %5372
  br i1 %4939, label %5374, label %5403, !dx.controlflow.hints !157

; <label>:5374                                    ; preds = %5362
  %5375 = fmul fast float %4947, %4936
  %5376 = fadd fast float %5375, %4937
  %5377 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5378 = fmul fast float %4918, %5373
  %5379 = fsub fast float -0.000000e+00, %5378
  %5380 = fmul fast float %4919, %5373
  %5381 = fsub fast float -0.000000e+00, %5380
  %5382 = call float @dx.op.unary.f32(i32 21, float %5379)  ; Exp(value)
  %5383 = call float @dx.op.unary.f32(i32 21, float %5381)  ; Exp(value)
  %5384 = call float @dx.op.binary.f32(i32 35, float %4926, float %5382)  ; FMax(a,b)
  %5385 = call float @dx.op.binary.f32(i32 35, float %4926, float %5383)  ; FMax(a,b)
  %5386 = fsub fast float %5385, %5384
  %5387 = fmul fast float %5386, %5377
  %5388 = fadd fast float %5387, %5384
  %5389 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5390 = fsub fast float %4923, %4928
  %5391 = fsub fast float %4924, %4929
  %5392 = fsub fast float %4925, %4930
  %5393 = fmul fast float %5377, %5390
  %5394 = fmul fast float %5377, %5391
  %5395 = fmul fast float %5377, %5392
  %5396 = fadd fast float %5393, %4928
  %5397 = fadd fast float %5394, %4929
  %5398 = fadd fast float %5395, %4930
  %5399 = fsub fast float 1.000000e+00, %5389
  %5400 = fmul fast float %5399, %5396
  %5401 = fmul fast float %5399, %5397
  %5402 = fmul fast float %5399, %5398
  br label %5462

; <label>:5403                                    ; preds = %5362
  %5404 = fmul fast float %5373, %4935
  %5405 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  %5406 = fsub fast float 2.000000e+00, %5405
  %5407 = fmul fast float %5405, 9.921875e-01
  %5408 = fmul fast float %5407, %5406
  %5409 = fadd fast float %5408, 3.906250e-03
  %5410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %45, float %5409, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5411 = extractvalue %dx.types.ResRet.f32 %5410, 0
  %5412 = fsub fast float %5405, %5411
  %5413 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5412)  ; FMax(a,b)
  %5414 = fmul fast float %4921, %4902
  %5415 = call float @dx.op.unary.f32(i32 6, float %5414)  ; FAbs(value)
  %5416 = fcmp fast ogt float %5415, 0x3EB0C6F7A0000000
  br i1 %5416, label %5417, label %5423, !dx.controlflow.hints !158

; <label>:5417                                    ; preds = %5403
  %5418 = fmul fast float %5414, 0xBFF7154760000000
  %5419 = call float @dx.op.unary.f32(i32 21, float %5418)  ; Exp(value)
  %5420 = fsub fast float 1.000000e+00, %5419
  %5421 = fdiv fast float %5420, %5414
  %5422 = fmul fast float %5421, %4931
  br label %5423

; <label>:5423                                    ; preds = %5417, %5403
  %5424 = phi float [ %5422, %5417 ], [ %4931, %5403 ]
  %5425 = fadd fast float %5424, %4933
  %5426 = fmul fast float %5425, %5413
  %5427 = fmul fast float %4918, %5426
  %5428 = fsub fast float -0.000000e+00, %5427
  %5429 = fmul fast float %4919, %5426
  %5430 = fsub fast float -0.000000e+00, %5429
  %5431 = fmul fast float %4920, %5426
  %5432 = fsub fast float -0.000000e+00, %5431
  %5433 = call float @dx.op.unary.f32(i32 21, float %5428)  ; Exp(value)
  %5434 = call float @dx.op.unary.f32(i32 21, float %5430)  ; Exp(value)
  %5435 = call float @dx.op.unary.f32(i32 21, float %5432)  ; Exp(value)
  %5436 = fmul fast float %4947, %4947
  %5437 = fadd fast float %5436, 1.000000e+00
  %5438 = fmul fast float %5437, 0x3FAE8EC8A0000000
  %5439 = fmul fast float %5438, %4928
  %5440 = fmul fast float %5438, %4929
  %5441 = fmul fast float %5438, %4930
  %5442 = fmul fast float %4947, %4926
  %5443 = fsub fast float 1.000000e+00, %5442
  %5444 = fmul fast float %4926, %4926
  %5445 = fsub fast float 1.000000e+00, %5444
  %5446 = fmul fast float %5445, 0x3FB45F3060000000
  %5447 = fmul fast float %5443, %5443
  %5448 = fdiv fast float 1.000000e+00, %5447
  %5449 = fmul fast float %5446, %5448
  %5450 = fmul fast float %5449, %4923
  %5451 = fmul fast float %5449, %4924
  %5452 = fmul fast float %5449, %4925
  %5453 = fadd fast float %5450, %5439
  %5454 = fadd fast float %5451, %5440
  %5455 = fadd fast float %5452, %5441
  %5456 = fsub fast float 1.000000e+00, %5433
  %5457 = fsub fast float 1.000000e+00, %5434
  %5458 = fsub fast float 1.000000e+00, %5435
  %5459 = fmul fast float %5453, %5456
  %5460 = fmul fast float %5454, %5457
  %5461 = fmul fast float %5455, %5458
  br label %5462

; <label>:5462                                    ; preds = %5423, %5374
  %5463 = phi float [ %5400, %5374 ], [ %5459, %5423 ]
  %5464 = phi float [ %5401, %5374 ], [ %5460, %5423 ]
  %5465 = phi float [ %5402, %5374 ], [ %5461, %5423 ]
  %5466 = phi float [ %5389, %5374 ], [ %5433, %5423 ]
  %5467 = phi float [ %5389, %5374 ], [ %5434, %5423 ]
  %5468 = phi float [ %5389, %5374 ], [ %5435, %5423 ]
  br i1 %4955, label %5469, label %5667, !dx.controlflow.hints !159

; <label>:5469                                    ; preds = %5462
  %5470 = extractvalue %dx.types.CBufRet.f32 %5368, 0
  %5471 = fmul fast float %5470, %5370
  %5472 = fsub fast float %5365, %5463
  %5473 = fsub fast float %5366, %5464
  %5474 = fsub fast float %5367, %5465
  %5475 = fmul fast float %5471, %5472
  %5476 = fmul fast float %5471, %5473
  %5477 = fmul fast float %5471, %5474
  %5478 = fadd fast float %5475, %5463
  %5479 = fadd fast float %5476, %5464
  %5480 = fadd fast float %5477, %5465
  %5481 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5466)  ; FMax(a,b)
  %5482 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5467)  ; FMax(a,b)
  %5483 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5468)  ; FMax(a,b)
  %5484 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5364)  ; FMax(a,b)
  %5485 = call float @dx.op.binary.f32(i32 35, float %5363, float %5373)  ; FMax(a,b)
  %5486 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5485)  ; FMax(a,b)
  %5487 = fdiv fast float %5363, %5486
  %5488 = call float @dx.op.unary.f32(i32 7, float %5487)  ; Saturate(value)
  %5489 = fdiv fast float %5373, %5486
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = fcmp fast une float %5484, 1.000000e+00
  br i1 %5491, label %5492, label %5505, !dx.controlflow.hints !160

; <label>:5492                                    ; preds = %5469
  %5493 = call float @dx.op.unary.f32(i32 23, float %5484)  ; Log(value)
  %5494 = fmul fast float %5493, 0x3FE62E4300000000
  %5495 = fmul fast float %5365, %5494
  %5496 = fsub fast float -0.000000e+00, %5495
  %5497 = fmul fast float %5366, %5494
  %5498 = fsub fast float -0.000000e+00, %5497
  %5499 = fmul fast float %5367, %5494
  %5500 = fsub fast float -0.000000e+00, %5499
  %5501 = fsub fast float 1.000000e+00, %5484
  %5502 = fdiv fast float %5496, %5501
  %5503 = fdiv fast float %5498, %5501
  %5504 = fdiv fast float %5500, %5501
  br label %5505

; <label>:5505                                    ; preds = %5492, %5469
  %5506 = phi float [ %5502, %5492 ], [ %5365, %5469 ]
  %5507 = phi float [ %5503, %5492 ], [ %5366, %5469 ]
  %5508 = phi float [ %5504, %5492 ], [ %5367, %5469 ]
  %5509 = phi float [ %5494, %5492 ], [ 0.000000e+00, %5469 ]
  %5510 = fcmp fast une float %5481, 1.000000e+00
  br i1 %5510, label %5511, label %5518, !dx.controlflow.hints !161

; <label>:5511                                    ; preds = %5505
  %5512 = call float @dx.op.unary.f32(i32 23, float %5481)  ; Log(value)
  %5513 = fmul fast float %5512, 0x3FE62E4300000000
  %5514 = fmul fast float %5478, %5513
  %5515 = fsub fast float -0.000000e+00, %5514
  %5516 = fsub fast float 1.000000e+00, %5481
  %5517 = fdiv fast float %5515, %5516
  br label %5518

; <label>:5518                                    ; preds = %5511, %5505
  %5519 = phi float [ %5517, %5511 ], [ %5478, %5505 ]
  %5520 = phi float [ %5513, %5511 ], [ 0.000000e+00, %5505 ]
  %5521 = fcmp fast une float %5482, 1.000000e+00
  br i1 %5521, label %5522, label %5529, !dx.controlflow.hints !161

; <label>:5522                                    ; preds = %5518
  %5523 = call float @dx.op.unary.f32(i32 23, float %5482)  ; Log(value)
  %5524 = fmul fast float %5523, 0x3FE62E4300000000
  %5525 = fmul fast float %5479, %5524
  %5526 = fsub fast float -0.000000e+00, %5525
  %5527 = fsub fast float 1.000000e+00, %5482
  %5528 = fdiv fast float %5526, %5527
  br label %5529

; <label>:5529                                    ; preds = %5522, %5518
  %5530 = phi float [ %5528, %5522 ], [ %5479, %5518 ]
  %5531 = phi float [ %5524, %5522 ], [ 0.000000e+00, %5518 ]
  %5532 = fcmp fast une float %5483, 1.000000e+00
  br i1 %5532, label %5533, label %5540, !dx.controlflow.hints !161

; <label>:5533                                    ; preds = %5529
  %5534 = call float @dx.op.unary.f32(i32 23, float %5483)  ; Log(value)
  %5535 = fmul fast float %5534, 0x3FE62E4300000000
  %5536 = fmul fast float %5480, %5535
  %5537 = fsub fast float -0.000000e+00, %5536
  %5538 = fsub fast float 1.000000e+00, %5483
  %5539 = fdiv fast float %5537, %5538
  br label %5540

; <label>:5540                                    ; preds = %5533, %5529
  %5541 = phi float [ %5539, %5533 ], [ %5480, %5529 ]
  %5542 = phi float [ %5535, %5533 ], [ 0.000000e+00, %5529 ]
  %5543 = fmul fast float %5506, %5490
  %5544 = fmul fast float %5507, %5490
  %5545 = fmul fast float %5508, %5490
  %5546 = fmul fast float %5509, %5490
  %5547 = fmul fast float %5519, %5488
  %5548 = fmul fast float %5530, %5488
  %5549 = fmul fast float %5541, %5488
  %5550 = fmul fast float %5520, %5488
  %5551 = fmul fast float %5531, %5488
  %5552 = fmul fast float %5542, %5488
  %5553 = fadd fast float %5547, %5543
  %5554 = fadd fast float %5548, %5544
  %5555 = fadd fast float %5549, %5545
  %5556 = fadd fast float %5550, %5546
  %5557 = fadd fast float %5551, %5546
  %5558 = fadd fast float %5552, %5546
  %5559 = fcmp fast une float %5556, 0.000000e+00
  br i1 %5559, label %5560, label %5567, !dx.controlflow.hints !162

; <label>:5560                                    ; preds = %5540
  %5561 = fmul fast float %5556, 0x3FF7154760000000
  %5562 = call float @dx.op.unary.f32(i32 21, float %5561)  ; Exp(value)
  %5563 = fsub fast float 1.000000e+00, %5562
  %5564 = fmul fast float %5553, %5563
  %5565 = fsub fast float -0.000000e+00, %5564
  %5566 = fdiv fast float %5565, %5556
  br label %5567

; <label>:5567                                    ; preds = %5560, %5540
  %5568 = phi float [ %5562, %5560 ], [ 1.000000e+00, %5540 ]
  %5569 = phi float [ %5566, %5560 ], [ %5553, %5540 ]
  %5570 = fcmp fast une float %5557, 0.000000e+00
  br i1 %5570, label %5571, label %5578, !dx.controlflow.hints !162

; <label>:5571                                    ; preds = %5567
  %5572 = fmul fast float %5557, 0x3FF7154760000000
  %5573 = call float @dx.op.unary.f32(i32 21, float %5572)  ; Exp(value)
  %5574 = fsub fast float 1.000000e+00, %5573
  %5575 = fmul fast float %5554, %5574
  %5576 = fsub fast float -0.000000e+00, %5575
  %5577 = fdiv fast float %5576, %5557
  br label %5578

; <label>:5578                                    ; preds = %5571, %5567
  %5579 = phi float [ %5573, %5571 ], [ 1.000000e+00, %5567 ]
  %5580 = phi float [ %5577, %5571 ], [ %5554, %5567 ]
  %5581 = fcmp fast une float %5558, 0.000000e+00
  br i1 %5581, label %5582, label %5589, !dx.controlflow.hints !162

; <label>:5582                                    ; preds = %5578
  %5583 = fmul fast float %5558, 0x3FF7154760000000
  %5584 = call float @dx.op.unary.f32(i32 21, float %5583)  ; Exp(value)
  %5585 = fsub fast float 1.000000e+00, %5584
  %5586 = fmul fast float %5555, %5585
  %5587 = fsub fast float -0.000000e+00, %5586
  %5588 = fdiv fast float %5587, %5558
  br label %5589

; <label>:5589                                    ; preds = %5582, %5578
  %5590 = phi float [ %5584, %5582 ], [ 1.000000e+00, %5578 ]
  %5591 = phi float [ %5588, %5582 ], [ %5555, %5578 ]
  %5592 = fcmp fast ogt float %5488, %5490
  br i1 %5592, label %5593, label %5613

; <label>:5593                                    ; preds = %5589
  %5594 = fsub fast float 1.000000e+00, %5490
  %5595 = fmul fast float %5506, %5594
  %5596 = fmul fast float %5507, %5594
  %5597 = fmul fast float %5508, %5594
  %5598 = fmul fast float %5509, %5594
  %5599 = fcmp fast une float %5598, 0.000000e+00
  br i1 %5599, label %5600, label %5651, !dx.controlflow.hints !163

; <label>:5600                                    ; preds = %5593
  %5601 = fmul fast float %5598, 0x3FF7154760000000
  %5602 = call float @dx.op.unary.f32(i32 21, float %5601)  ; Exp(value)
  %5603 = fsub fast float 1.000000e+00, %5602
  %5604 = fmul fast float %5595, %5603
  %5605 = fsub fast float -0.000000e+00, %5604
  %5606 = fmul fast float %5596, %5603
  %5607 = fsub fast float -0.000000e+00, %5606
  %5608 = fmul fast float %5597, %5603
  %5609 = fsub fast float -0.000000e+00, %5608
  %5610 = fdiv fast float %5605, %5598
  %5611 = fdiv fast float %5607, %5598
  %5612 = fdiv fast float %5609, %5598
  br label %5651

; <label>:5613                                    ; preds = %5589
  %5614 = fsub fast float 1.000000e+00, %5488
  %5615 = fmul fast float %5519, %5614
  %5616 = fmul fast float %5530, %5614
  %5617 = fmul fast float %5541, %5614
  %5618 = fmul fast float %5520, %5614
  %5619 = fmul fast float %5531, %5614
  %5620 = fmul fast float %5542, %5614
  %5621 = fcmp fast une float %5618, 0.000000e+00
  br i1 %5621, label %5622, label %5629, !dx.controlflow.hints !162

; <label>:5622                                    ; preds = %5613
  %5623 = fmul fast float %5618, 0x3FF7154760000000
  %5624 = call float @dx.op.unary.f32(i32 21, float %5623)  ; Exp(value)
  %5625 = fsub fast float 1.000000e+00, %5624
  %5626 = fmul fast float %5615, %5625
  %5627 = fsub fast float -0.000000e+00, %5626
  %5628 = fdiv fast float %5627, %5618
  br label %5629

; <label>:5629                                    ; preds = %5622, %5613
  %5630 = phi float [ %5628, %5622 ], [ %5615, %5613 ]
  %5631 = phi float [ %5624, %5622 ], [ 1.000000e+00, %5613 ]
  %5632 = fcmp fast une float %5619, 0.000000e+00
  br i1 %5632, label %5633, label %5640, !dx.controlflow.hints !162

; <label>:5633                                    ; preds = %5629
  %5634 = fmul fast float %5619, 0x3FF7154760000000
  %5635 = call float @dx.op.unary.f32(i32 21, float %5634)  ; Exp(value)
  %5636 = fsub fast float 1.000000e+00, %5635
  %5637 = fmul fast float %5616, %5636
  %5638 = fsub fast float -0.000000e+00, %5637
  %5639 = fdiv fast float %5638, %5619
  br label %5640

; <label>:5640                                    ; preds = %5633, %5629
  %5641 = phi float [ %5639, %5633 ], [ %5616, %5629 ]
  %5642 = phi float [ %5635, %5633 ], [ 1.000000e+00, %5629 ]
  %5643 = fcmp fast une float %5620, 0.000000e+00
  br i1 %5643, label %5644, label %5651, !dx.controlflow.hints !162

; <label>:5644                                    ; preds = %5640
  %5645 = fmul fast float %5620, 0x3FF7154760000000
  %5646 = call float @dx.op.unary.f32(i32 21, float %5645)  ; Exp(value)
  %5647 = fsub fast float 1.000000e+00, %5646
  %5648 = fmul fast float %5617, %5647
  %5649 = fsub fast float -0.000000e+00, %5648
  %5650 = fdiv fast float %5649, %5620
  br label %5651

; <label>:5651                                    ; preds = %5644, %5640, %5600, %5593
  %5652 = phi float [ %5650, %5644 ], [ %5612, %5600 ], [ %5597, %5593 ], [ %5617, %5640 ]
  %5653 = phi float [ %5641, %5644 ], [ %5611, %5600 ], [ %5596, %5593 ], [ %5641, %5640 ]
  %5654 = phi float [ %5630, %5644 ], [ %5610, %5600 ], [ %5595, %5593 ], [ %5630, %5640 ]
  %5655 = phi float [ %5646, %5644 ], [ %5602, %5600 ], [ 1.000000e+00, %5593 ], [ 1.000000e+00, %5640 ]
  %5656 = phi float [ %5642, %5644 ], [ %5602, %5600 ], [ 1.000000e+00, %5593 ], [ %5642, %5640 ]
  %5657 = phi float [ %5631, %5644 ], [ %5602, %5600 ], [ 1.000000e+00, %5593 ], [ %5631, %5640 ]
  %5658 = fmul fast float %5657, %5569
  %5659 = fmul fast float %5656, %5580
  %5660 = fmul fast float %5655, %5591
  %5661 = fadd fast float %5658, %5654
  %5662 = fadd fast float %5659, %5653
  %5663 = fadd fast float %5660, %5652
  %5664 = fmul fast float %5657, %5568
  %5665 = fmul fast float %5656, %5579
  %5666 = fmul fast float %5655, %5590
  br label %5667

; <label>:5667                                    ; preds = %5651, %5462
  %5668 = phi float [ %5666, %5651 ], [ %5468, %5462 ]
  %5669 = phi float [ %5665, %5651 ], [ %5467, %5462 ]
  %5670 = phi float [ %5664, %5651 ], [ %5466, %5462 ]
  %5671 = phi float [ %5663, %5651 ], [ %5465, %5462 ]
  %5672 = phi float [ %5662, %5651 ], [ %5464, %5462 ]
  %5673 = phi float [ %5661, %5651 ], [ %5463, %5462 ]
  %5674 = fmul fast float %5673, %4613
  %5675 = fmul fast float %5672, %4615
  %5676 = fmul fast float %5671, %4617
  %5677 = fmul fast float %5670, %4910
  %5678 = call float @dx.op.dot3.f32(i32 55, float %5670, float %5669, float %5668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5679 = call float @dx.op.dot3.f32(i32 55, float %5674, float %5675, float %5676, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5680 = select i1 %214, float %5678, float %5670
  %5681 = select i1 %214, float %5678, float %5669
  %5682 = select i1 %214, float 1.000000e+00, float %5668
  %5683 = select i1 %214, float %5679, float %5674
  %5684 = select i1 %214, float 0.000000e+00, float %5675
  %5685 = select i1 %214, float 0.000000e+00, float %5676
  %5686 = fmul fast float %5680, %4904
  %5687 = fmul fast float %5681, %4905
  %5688 = fmul fast float %5682, %4906
  %5689 = fadd fast float %5686, %5683
  %5690 = fadd fast float %5687, %5684
  %5691 = fadd fast float %5685, %5688
  %5692 = fmul fast float %5680, %4907
  %5693 = fmul fast float %5681, %4908
  %5694 = fmul fast float %5682, %4909
  %5695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.i32 %5695, 0
  %5697 = icmp eq i32 %5696, 0
  br i1 %5697, label %6065, label %5698, !dx.controlflow.hints !164

; <label>:5698                                    ; preds = %5667
  %5699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5700 = extractvalue %dx.types.CBufRet.f32 %5699, 2
  %5701 = extractvalue %dx.types.CBufRet.f32 %5699, 3
  %5702 = fmul fast float %5700, %77
  %5703 = fmul fast float %5701, %78
  %5704 = fmul fast float %5702, 2.000000e+00
  %5705 = fmul fast float %5703, 2.000000e+00
  %5706 = fsub fast float 1.000000e+00, %5704
  %5707 = fsub fast float 1.000000e+00, %5705
  %5708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.f32 %5708, 0
  %5710 = extractvalue %dx.types.CBufRet.f32 %5708, 1
  %5711 = extractvalue %dx.types.CBufRet.f32 %5708, 2
  %5712 = fmul fast float %5706, %5709
  %5713 = fmul fast float %5706, %5710
  %5714 = fmul fast float %5706, %5711
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.CBufRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.CBufRet.f32 %5715, 2
  %5719 = fmul fast float %5707, %5716
  %5720 = fmul fast float %5707, %5717
  %5721 = fmul fast float %5707, %5718
  %5722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5722, 0
  %5724 = extractvalue %dx.types.CBufRet.f32 %5722, 1
  %5725 = extractvalue %dx.types.CBufRet.f32 %5722, 2
  %5726 = fadd fast float %5719, %5723
  %5727 = fadd fast float %5726, %5712
  %5728 = fadd fast float %5720, %5724
  %5729 = fadd fast float %5728, %5713
  %5730 = fadd fast float %5721, %5725
  %5731 = fadd fast float %5730, %5714
  %5732 = fmul fast float %5727, %4903
  %5733 = fmul fast float %5729, %4903
  %5734 = fmul fast float %5731, %4903
  %5735 = fmul fast float %5732, %5732
  %5736 = fmul fast float %5733, %5733
  %5737 = fadd fast float %5735, %5736
  %5738 = fmul fast float %5734, %5734
  %5739 = fadd fast float %5737, %5738
  %5740 = call float @dx.op.unary.f32(i32 24, float %5739)  ; Sqrt(value)
  %5741 = extractvalue %dx.types.CBufRet.f32 %4628, 0
  %5742 = fsub fast float %5740, %5741
  %5743 = extractvalue %dx.types.CBufRet.f32 %4628, 2
  %5744 = fmul fast float %5742, %5743
  %5745 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  %5746 = fadd fast float %5745, -5.000000e-01
  %5747 = fmul fast float %5746, 2.000000e+00
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 2
  %5750 = call float @dx.op.binary.f32(i32 36, float %5749, float %5747)  ; FMin(a,b)
  %5751 = fsub fast float -0.000000e+00, %5749
  %5752 = fcmp fast ogt float %5750, %5751
  br i1 %5752, label %5753, label %6065, !dx.controlflow.hints !165

; <label>:5753                                    ; preds = %5698
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 3
  %5756 = fcmp fast ogt float %5755, 0.000000e+00
  br i1 %5756, label %5757, label %5832, !dx.controlflow.hints !166

; <label>:5757                                    ; preds = %5753
  %5758 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %5759 = extractvalue %dx.types.Dimensions %5758, 0
  %5760 = sitofp i32 %5759 to float
  %5761 = extractvalue %dx.types.Dimensions %5758, 1
  %5762 = sitofp i32 %5761 to float
  %5763 = fmul fast float %5702, %5760
  %5764 = fmul fast float %5703, %5762
  %5765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5766 = extractvalue %dx.types.CBufRet.f32 %5765, 1
  %5767 = fsub fast float -0.000000e+00, %5766
  %5768 = fptoui float %5767 to i32
  %5769 = fptoui float %5763 to i32
  %5770 = fptoui float %5764 to i32
  %5771 = and i32 %5768, 31
  %5772 = lshr i32 %5769, %5771
  %5773 = lshr i32 %5770, %5771
  %5774 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %5768, i32 %5772, i32 %5773, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5775 = extractvalue %dx.types.ResRet.f32 %5774, 0
  %5776 = fcmp fast olt float %5775, -1.000000e+00
  %5777 = fcmp fast ogt float %5775, -1.000000e+00
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 1
  %5780 = select i1 %5777, float %5779, float 1.000000e+00
  %5781 = fadd fast float %5775, 1.000000e+00
  %5782 = fmul fast float %5780, %5781
  %5783 = call float @dx.op.unary.f32(i32 6, float %5782)  ; FAbs(value)
  %5784 = extractvalue %dx.types.CBufRet.f32 %5778, 3
  %5785 = fcmp fast oge float %5783, %5784
  %5786 = select i1 %5785, float 0x4197782600000000, float %5783
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 0
  %5789 = extractvalue %dx.types.CBufRet.f32 %5787, 1
  %5790 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5791 = select i1 %5776, float %5788, float %5709
  %5792 = select i1 %5776, float %5789, float %5710
  %5793 = select i1 %5776, float %5790, float %5711
  %5794 = fmul fast float %5791, %5706
  %5795 = fmul fast float %5792, %5706
  %5796 = fmul fast float %5793, %5706
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.CBufRet.f32 %5797, 1
  %5800 = extractvalue %dx.types.CBufRet.f32 %5797, 2
  %5801 = select i1 %5776, float %5798, float %5716
  %5802 = select i1 %5776, float %5799, float %5717
  %5803 = select i1 %5776, float %5800, float %5718
  %5804 = fmul fast float %5801, %5707
  %5805 = fmul fast float %5802, %5707
  %5806 = fmul fast float %5803, %5707
  %5807 = fadd fast float %5804, %5794
  %5808 = fadd fast float %5805, %5795
  %5809 = fadd fast float %5806, %5796
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 0
  %5812 = extractvalue %dx.types.CBufRet.f32 %5810, 1
  %5813 = extractvalue %dx.types.CBufRet.f32 %5810, 2
  %5814 = select i1 %5776, float %5811, float %5723
  %5815 = select i1 %5776, float %5812, float %5724
  %5816 = select i1 %5776, float %5813, float %5725
  %5817 = fadd fast float %5807, %5814
  %5818 = fadd fast float %5808, %5815
  %5819 = fadd fast float %5809, %5816
  %5820 = fmul fast float %5817, %5786
  %5821 = fmul fast float %5818, %5786
  %5822 = fmul fast float %5819, %5786
  %5823 = fmul fast float %5820, %5820
  %5824 = fmul fast float %5821, %5821
  %5825 = fadd fast float %5823, %5824
  %5826 = fmul fast float %5822, %5822
  %5827 = fadd fast float %5825, %5826
  %5828 = call float @dx.op.unary.f32(i32 24, float %5827)  ; Sqrt(value)
  %5829 = fsub fast float %5828, %5741
  %5830 = fmul fast float %5829, %5743
  %5831 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  br label %5832

; <label>:5832                                    ; preds = %5757, %5753
  %5833 = phi float [ %5831, %5757 ], [ 1.000000e+00, %5753 ]
  %5834 = fmul fast float %5750, 5.000000e-01
  %5835 = fadd fast float %5834, 5.000000e-01
  %5836 = call float @dx.op.unary.f32(i32 22, float %5835)  ; Frc(value)
  %5837 = call float @dx.op.unary.f32(i32 27, float %5836)  ; Round_ni(value)
  %5838 = call float @dx.op.unary.f32(i32 22, float %5836)  ; Frc(value)
  %5839 = fmul fast float %5838, 2.000000e+00
  %5840 = fadd fast float %5839, -1.000000e+00
  %5841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %5702, float %5703, float %5837, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5842 = extractvalue %dx.types.ResRet.f32 %5841, 0
  %5843 = extractvalue %dx.types.ResRet.f32 %5841, 1
  %5844 = extractvalue %dx.types.ResRet.f32 %5841, 2
  %5845 = extractvalue %dx.types.ResRet.f32 %5841, 3
  %5846 = fadd fast float %5842, -5.000000e-01
  %5847 = fadd fast float %5844, -5.000000e-01
  %5848 = fmul fast float %5846, 0xBFD5555560000000
  %5849 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5847, float %5848)  ; FMad(a,b,c)
  %5850 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5843, float 0.000000e+00)  ; FMad(a,b,c)
  %5851 = fadd fast float %5850, %5845
  %5852 = fmul fast float %5846, -7.500000e-01
  %5853 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5847, float %5852)  ; FMad(a,b,c)
  %5854 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5843, float 0.000000e+00)  ; FMad(a,b,c)
  %5855 = fadd fast float %5854, %5845
  %5856 = call float @dx.op.binary.f32(i32 35, float %5849, float -1.000000e+00)  ; FMax(a,b)
  %5857 = call float @dx.op.binary.f32(i32 35, float %5851, float -1.000000e+00)  ; FMax(a,b)
  %5858 = call float @dx.op.binary.f32(i32 35, float %5853, float -1.000000e+00)  ; FMax(a,b)
  %5859 = call float @dx.op.binary.f32(i32 35, float %5855, float -1.000000e+00)  ; FMax(a,b)
  %5860 = call float @dx.op.binary.f32(i32 36, float %5856, float 1.000000e+00)  ; FMin(a,b)
  %5861 = call float @dx.op.binary.f32(i32 36, float %5857, float 1.000000e+00)  ; FMin(a,b)
  %5862 = call float @dx.op.binary.f32(i32 36, float %5858, float 1.000000e+00)  ; FMin(a,b)
  %5863 = call float @dx.op.binary.f32(i32 36, float %5859, float 1.000000e+00)  ; FMin(a,b)
  %5864 = fcmp fast olt float %5860, 0x3FEFFF8020000000
  br i1 %5864, label %5865, label %5980, !dx.controlflow.hints !167

; <label>:5865                                    ; preds = %5832
  %5866 = extractvalue %dx.types.CBufRet.f32 %5748, 3
  %5867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5867, 0
  %5869 = extractvalue %dx.types.CBufRet.f32 %5867, 1
  %5870 = extractvalue %dx.types.CBufRet.f32 %5867, 2
  %5871 = extractvalue %dx.types.CBufRet.f32 %5867, 3
  %5872 = fsub fast float %5868, %5860
  %5873 = fsub fast float %5869, %5861
  %5874 = fsub fast float %5870, %5862
  %5875 = fsub fast float %5871, %5863
  %5876 = fmul fast float %5872, %5866
  %5877 = fmul fast float %5873, %5866
  %5878 = fmul fast float %5874, %5866
  %5879 = fmul fast float %5875, %5866
  %5880 = fadd fast float %5876, %5860
  %5881 = fadd fast float %5877, %5861
  %5882 = fsub fast float -0.000000e+00, %5881
  %5883 = fadd fast float %5878, %5862
  %5884 = fadd fast float %5879, %5863
  %5885 = fmul fast float %5880, %5880
  %5886 = fsub fast float %5881, %5885
  %5887 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5886)  ; FMax(a,b)
  %5888 = fdiv fast float 1.000000e+00, %5887
  %5889 = fmul fast float %5881, %5880
  %5890 = fsub fast float %5883, %5889
  %5891 = fsub fast float %5840, %5880
  %5892 = fmul fast float %5840, %5840
  %5893 = fsub fast float %5892, %5881
  %5894 = fmul fast float %5891, %5888
  %5895 = fmul fast float %5894, %5890
  %5896 = fsub fast float %5893, %5895
  %5897 = fmul fast float %5881, %5881
  %5898 = fsub fast float %5884, %5897
  %5899 = fmul fast float %5890, %5890
  %5900 = fmul fast float %5899, %5888
  %5901 = fsub fast float %5898, %5900
  %5902 = fdiv fast float %5896, %5901
  %5903 = fmul fast float %5890, %5902
  %5904 = fsub fast float %5891, %5903
  %5905 = fmul fast float %5904, %5888
  %5906 = fmul fast float %5905, %5880
  %5907 = fsub fast float 1.000000e+00, %5906
  %5908 = fmul fast float %5881, %5902
  %5909 = fsub fast float %5907, %5908
  %5910 = fmul fast float %5905, %5905
  %5911 = fmul fast float %5902, 4.000000e+00
  %5912 = fmul fast float %5911, %5909
  %5913 = fsub fast float %5910, %5912
  %5914 = call float @dx.op.unary.f32(i32 24, float %5913)  ; Sqrt(value)
  %5915 = fcmp fast oge float %5905, 0.000000e+00
  %5916 = fsub fast float -0.000000e+00, %5914
  %5917 = select i1 %5915, float %5916, float %5914
  %5918 = fsub fast float %5917, %5905
  %5919 = fdiv fast float %5918, %5902
  %5920 = fdiv fast float %5909, %5918
  %5921 = fmul fast float %5919, 5.000000e-01
  %5922 = fmul fast float %5920, 2.000000e+00
  %5923 = select i1 %5915, float %5921, float %5922
  %5924 = select i1 %5915, float %5922, float %5921
  %5925 = call float @dx.op.binary.f32(i32 35, float %5923, float %5924)  ; FMax(a,b)
  %5926 = call float @dx.op.binary.f32(i32 36, float %5923, float %5924)  ; FMin(a,b)
  %5927 = fcmp fast ogt float %5840, %5926
  br i1 %5927, label %5928, label %5938

; <label>:5928                                    ; preds = %5865
  %5929 = fsub fast float %5840, %5926
  %5930 = fsub fast float %5925, %5926
  %5931 = fmul fast float %5929, %5930
  %5932 = fmul fast float %5925, %5840
  %5933 = fadd fast float %5925, %5840
  %5934 = fmul fast float %5933, %5880
  %5935 = fadd fast float %5932, %5881
  %5936 = fsub fast float %5935, %5934
  %5937 = fdiv fast float %5936, %5931
  br label %5938

; <label>:5938                                    ; preds = %5928, %5865
  %5939 = phi float [ %5937, %5928 ], [ 0.000000e+00, %5865 ]
  %5940 = fcmp fast ogt float %5840, %5925
  %5941 = fsub fast float %5840, %5925
  br i1 %5940, label %5942, label %5952

; <label>:5942                                    ; preds = %5938
  %5943 = fsub fast float %5925, %5926
  %5944 = fmul fast float %5943, %5941
  %5945 = fmul fast float %5926, %5840
  %5946 = fadd fast float %5926, %5840
  %5947 = fmul fast float %5946, %5880
  %5948 = fsub fast float %5882, %5945
  %5949 = fadd fast float %5948, %5947
  %5950 = fdiv fast float %5949, %5944
  %5951 = fadd fast float %5950, %5939
  br label %5952

; <label>:5952                                    ; preds = %5942, %5938
  %5953 = phi float [ %5951, %5942 ], [ %5939, %5938 ]
  %5954 = fsub fast float %5840, %5926
  %5955 = fmul fast float %5954, %5941
  %5956 = fmul fast float %5926, %5925
  %5957 = fadd fast float %5926, %5925
  %5958 = fmul fast float %5957, %5880
  %5959 = fadd fast float %5956, %5881
  %5960 = fsub fast float %5959, %5958
  %5961 = fdiv fast float %5960, %5955
  %5962 = call float @dx.op.unary.f32(i32 7, float %5953)  ; Saturate(value)
  %5963 = fcmp fast oeq float %4629, 0.000000e+00
  %5964 = extractvalue %dx.types.CBufRet.f32 %5748, 0
  %5965 = fcmp fast oeq float %5964, 0.000000e+00
  %5966 = or i1 %5963, %5965
  %5967 = fmul fast float %5964, 2.000000e+00
  %5968 = fadd fast float %5749, %5750
  %5969 = fdiv fast float %5968, %5967
  %5970 = call float @dx.op.unary.f32(i32 7, float %5969)  ; Saturate(value)
  %5971 = fmul fast float %5970, 2.000000e+00
  %5972 = fsub fast float 3.000000e+00, %5971
  %5973 = fmul fast float %5970, %5970
  %5974 = fmul fast float %5973, %5972
  %5975 = select i1 %5966, float 1.000000e+00, float %5974
  %5976 = fmul fast float %5961, %4629
  %5977 = fadd fast float %5962, %5976
  %5978 = call float @dx.op.unary.f32(i32 7, float %5977)  ; Saturate(value)
  %5979 = fmul fast float %5975, %5978
  br label %5980

; <label>:5980                                    ; preds = %5952, %5832
  %5981 = phi float [ %5979, %5952 ], [ 0.000000e+00, %5832 ]
  %5982 = fsub fast float 1.000000e+00, %5981
  %5983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %45, float %5702, float %5703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5984 = extractvalue %dx.types.ResRet.f32 %5983, 0
  %5985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.i32 %5985, 2
  %5987 = icmp eq i32 %5986, 0
  br i1 %5987, label %5993, label %5988

; <label>:5988                                    ; preds = %5980
  %5989 = call float @dx.op.unary.f32(i32 7, float %5981)  ; Saturate(value)
  %5990 = fadd fast float %5984, -1.000000e+00
  %5991 = fmul fast float %5989, %5990
  %5992 = fadd fast float %5991, 1.000000e+00
  br label %5993

; <label>:5993                                    ; preds = %5988, %5980
  %5994 = phi float [ %5992, %5988 ], [ %5982, %5980 ]
  br i1 %5756, label %5995, label %6013

; <label>:5995                                    ; preds = %5993
  %5996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5997 = extractvalue %dx.types.CBufRet.f32 %5996, 1
  %5998 = fsub fast float %5833, %5997
  %5999 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6000 = fsub fast float %5833, %5755
  %6001 = call float @dx.op.unary.f32(i32 7, float %6000)  ; Saturate(value)
  %6002 = fsub fast float %5999, %6001
  %6003 = fsub fast float %5835, %6001
  %6004 = fdiv fast float %6003, %6002
  %6005 = call float @dx.op.unary.f32(i32 7, float %6004)  ; Saturate(value)
  %6006 = fmul fast float %6005, 2.000000e+00
  %6007 = fsub fast float 3.000000e+00, %6006
  %6008 = fsub fast float %5984, %5994
  %6009 = fmul fast float %6005, %6005
  %6010 = fmul fast float %6009, %6008
  %6011 = fmul fast float %6010, %6007
  %6012 = fadd fast float %6011, %5994
  br label %6013

; <label>:6013                                    ; preds = %5995, %5993
  %6014 = phi float [ %6012, %5995 ], [ %5994, %5993 ]
  %6015 = call float @dx.op.binary.f32(i32 35, float %5984, float %6014)  ; FMax(a,b)
  %6016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6017 = extractvalue %dx.types.CBufRet.i32 %6016, 2
  %6018 = and i32 %6017, 1
  %6019 = icmp eq i32 %6018, 0
  %6020 = fcmp fast une float %6015, 1.000000e+00
  %6021 = and i1 %6020, %6019
  br i1 %6021, label %6022, label %6041

; <label>:6022                                    ; preds = %6013
  %6023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %5702, float %5703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6024 = extractvalue %dx.types.ResRet.f32 %6023, 0
  %6025 = extractvalue %dx.types.ResRet.f32 %6023, 1
  %6026 = extractvalue %dx.types.ResRet.f32 %6023, 2
  %6027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6028 = extractvalue %dx.types.CBufRet.f32 %6027, 1
  %6029 = fmul fast float %6028, %6024
  %6030 = fmul fast float %6028, %6025
  %6031 = fmul fast float %6028, %6026
  %6032 = fcmp fast ogt float %5984, 0x3FEFFF2E40000000
  %6033 = fsub fast float 1.000000e+00, %6015
  %6034 = fsub fast float 1.000000e+00, %5984
  %6035 = fdiv fast float %6033, %6034
  %6036 = call float @dx.op.unary.f32(i32 7, float %6035)  ; Saturate(value)
  %6037 = select i1 %6032, float 0.000000e+00, float %6036
  %6038 = fmul fast float %6029, %6037
  %6039 = fmul fast float %6030, %6037
  %6040 = fmul fast float %6031, %6037
  br label %6041

; <label>:6041                                    ; preds = %6022, %6013
  %6042 = phi float [ 0.000000e+00, %6013 ], [ %6038, %6022 ]
  %6043 = phi float [ 0.000000e+00, %6013 ], [ %6039, %6022 ]
  %6044 = phi float [ 0.000000e+00, %6013 ], [ %6040, %6022 ]
  %6045 = fmul fast float %6042, %4613
  %6046 = fmul fast float %6043, %4615
  %6047 = fmul fast float %6044, %4617
  %6048 = fmul fast float %6015, %5677
  %6049 = call float @dx.op.dot3.f32(i32 55, float %6015, float %6015, float %6015, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6050 = call float @dx.op.dot3.f32(i32 55, float %6045, float %6046, float %6047, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6051 = select i1 %214, float %6049, float %6015
  %6052 = select i1 %214, float 1.000000e+00, float %6015
  %6053 = select i1 %214, float %6050, float %6045
  %6054 = select i1 %214, float 0.000000e+00, float %6046
  %6055 = select i1 %214, float 0.000000e+00, float %6047
  %6056 = fmul fast float %6051, %5689
  %6057 = fmul fast float %6051, %5690
  %6058 = fmul fast float %6052, %5691
  %6059 = fadd fast float %6056, %6053
  %6060 = fadd fast float %6057, %6054
  %6061 = fadd fast float %6055, %6058
  %6062 = fmul fast float %6051, %5692
  %6063 = fmul fast float %6051, %5693
  %6064 = fmul fast float %6052, %5694
  br label %6065

; <label>:6065                                    ; preds = %6041, %5698, %5667, %4899
  %6066 = phi float [ %4904, %4899 ], [ %5689, %5667 ], [ %6059, %6041 ], [ %5689, %5698 ]
  %6067 = phi float [ %4905, %4899 ], [ %5690, %5667 ], [ %6060, %6041 ], [ %5690, %5698 ]
  %6068 = phi float [ %4906, %4899 ], [ %5691, %5667 ], [ %6061, %6041 ], [ %5691, %5698 ]
  %6069 = phi float [ %4907, %4899 ], [ %5692, %5667 ], [ %6062, %6041 ], [ %5692, %5698 ]
  %6070 = phi float [ %4908, %4899 ], [ %5693, %5667 ], [ %6063, %6041 ], [ %5693, %5698 ]
  %6071 = phi float [ %4909, %4899 ], [ %5694, %5667 ], [ %6064, %6041 ], [ %5694, %5698 ]
  %6072 = phi float [ %4910, %4899 ], [ %5677, %5667 ], [ %6048, %6041 ], [ %5677, %5698 ]
  %6073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6074 = extractvalue %dx.types.CBufRet.f32 %6073, 2
  %6075 = extractvalue %dx.types.CBufRet.f32 %6073, 3
  %6076 = fmul fast float %6074, %77
  %6077 = fmul fast float %6075, %78
  %6078 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6079 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  %6080 = select i1 %4639, i32 2, i32 0
  %6081 = or i32 %6080, 1
  %6082 = uitofp i32 %6081 to float
  %6083 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %6078, float %6079, float %6082, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6084 = extractvalue %dx.types.ResRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.ResRet.f32 %6083, 1
  %6086 = extractvalue %dx.types.ResRet.f32 %6083, 2
  %6087 = extractvalue %dx.types.ResRet.f32 %6083, 3
  %6088 = add nuw nsw i32 %6080, 2
  %6089 = uitofp i32 %6088 to float
  %6090 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %6078, float %6079, float %6089, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6091 = extractvalue %dx.types.ResRet.f32 %6090, 0
  %6092 = extractvalue %dx.types.ResRet.f32 %6090, 1
  %6093 = extractvalue %dx.types.ResRet.f32 %6090, 2
  %6094 = extractvalue %dx.types.ResRet.f32 %6090, 3
  %6095 = call float @dx.op.binary.f32(i32 35, float %6085, float %6086)  ; FMax(a,b)
  %6096 = call float @dx.op.binary.f32(i32 35, float %6084, float %6095)  ; FMax(a,b)
  %6097 = call float @dx.op.binary.f32(i32 35, float %6096, float %6087)  ; FMax(a,b)
  %6098 = call float @dx.op.binary.f32(i32 36, float %6092, float %6093)  ; FMin(a,b)
  %6099 = call float @dx.op.binary.f32(i32 36, float %6091, float %6098)  ; FMin(a,b)
  %6100 = call float @dx.op.binary.f32(i32 36, float %6099, float %6094)  ; FMin(a,b)
  %6101 = fmul fast float %6097, 2.550000e+02
  %6102 = fadd fast float %6101, 0x3F70101020000000
  %6103 = fptoui float %6102 to i32
  %6104 = fmul fast float %6100, 2.550000e+02
  %6105 = fadd fast float %6104, 0x3F70101020000000
  %6106 = fptoui float %6105 to i32
  %6107 = icmp ult i32 %6103, %6106
  br i1 %6107, label %6108, label %6277

; <label>:6108                                    ; preds = %6065
  %6109 = fcmp fast ogt float %67, 9.843750e-01
  %6110 = fadd fast float %4903, -4.000000e+00
  %6111 = select i1 %6109, float -4.000000e+00, float %6110
  %6112 = call float @dx.op.binary.f32(i32 35, float %6111, float 0.000000e+00)  ; FMax(a,b)
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 0
  %6115 = fadd fast float %6114, %6112
  %6116 = extractvalue %dx.types.CBufRet.f32 %6113, 2
  %6117 = fmul fast float %6115, %6116
  %6118 = call float @dx.op.unary.f32(i32 23, float %6117)  ; Log(value)
  %6119 = extractvalue %dx.types.CBufRet.f32 %6113, 3
  %6120 = fmul fast float %6119, %6118
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 2
  %6123 = fmul fast float %6120, %6122
  %6124 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  %6125 = uitofp i32 %6103 to float
  %6126 = uitofp i32 %6106 to float
  %6127 = fadd fast float %6125, 5.000000e-01
  %6128 = fadd fast float %6126, 5.000000e-01
  %6129 = fmul fast float %6122, %6127
  %6130 = fmul fast float %6122, %6128
  %6131 = fadd fast float %6129, 0x3F0FFB4800000000
  %6132 = fadd fast float %6130, 0xBF0FFB4800000000
  %6133 = call float @dx.op.binary.f32(i32 35, float %6124, float %6131)  ; FMax(a,b)
  %6134 = call float @dx.op.binary.f32(i32 36, float %6133, float %6132)  ; FMin(a,b)
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 1
  %6137 = extractvalue %dx.types.CBufRet.f32 %6135, 2
  %6138 = extractvalue %dx.types.CBufRet.f32 %6135, 0
  %6139 = select i1 %4639, float %6138, float 0.000000e+00
  %6140 = fmul fast float %6136, %6134
  %6141 = fadd fast float %6139, %6140
  %6142 = fadd fast float %6139, %6137
  %6143 = fsub fast float %6136, %6137
  %6144 = fadd fast float %6143, %6139
  %6145 = call float @dx.op.binary.f32(i32 35, float %6141, float %6142)  ; FMax(a,b)
  %6146 = call float @dx.op.binary.f32(i32 36, float %6145, float %6144)  ; FMin(a,b)
  %6147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %6078, float %6079, float %6146, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6148 = extractvalue %dx.types.ResRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.ResRet.f32 %6147, 1
  %6150 = extractvalue %dx.types.ResRet.f32 %6147, 2
  %6151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.i32 %6151, 0
  %6153 = extractvalue %dx.types.CBufRet.i32 %6151, 1
  %6154 = uitofp i32 %6152 to float
  %6155 = uitofp i32 %6153 to float
  %6156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6157 = extractvalue %dx.types.CBufRet.f32 %6156, 0
  %6158 = extractvalue %dx.types.CBufRet.f32 %6156, 1
  %6159 = fmul fast float %6154, %6078
  %6160 = fmul fast float %6155, %6079
  %6161 = fadd fast float %6159, -5.000000e-01
  %6162 = fadd fast float %6160, -5.000000e-01
  %6163 = call float @dx.op.unary.f32(i32 22, float %6161)  ; Frc(value)
  %6164 = call float @dx.op.unary.f32(i32 22, float %6162)  ; Frc(value)
  %6165 = fmul fast float %6163, %6163
  %6166 = fmul fast float %6165, %6163
  %6167 = fsub fast float 3.000000e+00, %6163
  %6168 = fmul fast float %6165, %6167
  %6169 = fmul fast float %6163, 3.000000e+00
  %6170 = fmul fast float %6166, 3.000000e+00
  %6171 = fmul fast float %6165, 6.000000e+00
  %6172 = fsub fast float %6170, %6171
  %6173 = fadd fast float %6172, 4.000000e+00
  %6174 = fmul fast float %6173, 0x3FC5555560000000
  %6175 = fmul fast float %6166, -3.000000e+00
  %6176 = fadd fast float %6165, %6163
  %6177 = fmul fast float %6176, 3.000000e+00
  %6178 = fadd fast float %6175, 1.000000e+00
  %6179 = fadd fast float %6178, %6177
  %6180 = fmul fast float %6166, 0x3FC5555560000000
  %6181 = fmul fast float %6164, %6164
  %6182 = fmul fast float %6181, %6164
  %6183 = fsub fast float 3.000000e+00, %6164
  %6184 = fmul fast float %6181, %6183
  %6185 = fmul fast float %6164, 3.000000e+00
  %6186 = fmul fast float %6182, 3.000000e+00
  %6187 = fmul fast float %6181, 6.000000e+00
  %6188 = fsub fast float %6186, %6187
  %6189 = fadd fast float %6188, 4.000000e+00
  %6190 = fmul fast float %6189, 0x3FC5555560000000
  %6191 = fmul fast float %6182, -3.000000e+00
  %6192 = fadd fast float %6181, %6164
  %6193 = fmul fast float %6192, 3.000000e+00
  %6194 = fadd fast float %6191, 1.000000e+00
  %6195 = fadd fast float %6194, %6193
  %6196 = fmul fast float %6182, 0x3FC5555560000000
  %6197 = fadd fast float %6163, 1.000000e+00
  %6198 = fsub fast float 1.000000e+00, %6169
  %6199 = fadd fast float %6198, %6168
  %6200 = fadd fast float %6199, %6173
  %6201 = fmul fast float %6200, 0x3FC5555560000000
  %6202 = fdiv fast float %6174, %6201
  %6203 = fsub fast float %6197, %6202
  %6204 = fsub fast float 1.000000e+00, %6163
  %6205 = fadd fast float %6179, %6166
  %6206 = fmul fast float %6205, 0x3FC5555560000000
  %6207 = fdiv fast float %6180, %6206
  %6208 = fadd fast float %6204, %6207
  %6209 = fadd fast float %6164, 1.000000e+00
  %6210 = fsub fast float 1.000000e+00, %6185
  %6211 = fadd fast float %6210, %6184
  %6212 = fadd fast float %6211, %6189
  %6213 = fmul fast float %6212, 0x3FC5555560000000
  %6214 = fdiv fast float %6190, %6213
  %6215 = fsub fast float %6209, %6214
  %6216 = fsub fast float 1.000000e+00, %6164
  %6217 = fadd fast float %6195, %6182
  %6218 = fmul fast float %6217, 0x3FC5555560000000
  %6219 = fdiv fast float %6196, %6218
  %6220 = fadd fast float %6219, %6216
  %6221 = fmul fast float %6203, %6157
  %6222 = fsub fast float %6078, %6221
  %6223 = fmul fast float %6208, %6157
  %6224 = fadd fast float %6223, %6078
  %6225 = fmul fast float %6220, %6158
  %6226 = fadd fast float %6225, %6079
  %6227 = fmul fast float %6215, %6158
  %6228 = fsub fast float %6079, %6227
  %6229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6222, float %6228, float %6146, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6230 = extractvalue %dx.types.ResRet.f32 %6229, 0
  %6231 = extractvalue %dx.types.ResRet.f32 %6229, 1
  %6232 = extractvalue %dx.types.ResRet.f32 %6229, 2
  %6233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6224, float %6228, float %6146, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6234 = extractvalue %dx.types.ResRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.ResRet.f32 %6233, 1
  %6236 = extractvalue %dx.types.ResRet.f32 %6233, 2
  %6237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6222, float %6226, float %6146, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6238 = extractvalue %dx.types.ResRet.f32 %6237, 0
  %6239 = extractvalue %dx.types.ResRet.f32 %6237, 1
  %6240 = extractvalue %dx.types.ResRet.f32 %6237, 2
  %6241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %6224, float %6226, float %6146, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6242 = extractvalue %dx.types.ResRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.ResRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.ResRet.f32 %6241, 2
  %6245 = fsub fast float %6238, %6230
  %6246 = fsub fast float %6239, %6231
  %6247 = fsub fast float %6240, %6232
  %6248 = fmul fast float %6245, %6218
  %6249 = fmul fast float %6246, %6218
  %6250 = fmul fast float %6247, %6218
  %6251 = fadd fast float %6248, %6230
  %6252 = fadd fast float %6249, %6231
  %6253 = fadd fast float %6250, %6232
  %6254 = fsub fast float %6242, %6234
  %6255 = fsub fast float %6243, %6235
  %6256 = fsub fast float %6244, %6236
  %6257 = fmul fast float %6254, %6218
  %6258 = fmul fast float %6255, %6218
  %6259 = fmul fast float %6256, %6218
  %6260 = fsub fast float %6234, %6251
  %6261 = fadd fast float %6260, %6257
  %6262 = fsub fast float %6235, %6252
  %6263 = fadd fast float %6262, %6258
  %6264 = fsub fast float %6236, %6253
  %6265 = fadd fast float %6264, %6259
  %6266 = fmul fast float %6261, %6206
  %6267 = fmul fast float %6263, %6206
  %6268 = fmul fast float %6265, %6206
  %6269 = fadd fast float %6266, %6251
  %6270 = fadd fast float %6267, %6252
  %6271 = fadd fast float %6268, %6253
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 1
  %6274 = fmul fast float %6269, %6273
  %6275 = fmul fast float %6270, %6273
  %6276 = fmul fast float %6271, %6273
  br label %6277

; <label>:6277                                    ; preds = %6108, %6065
  %6278 = phi float [ %6148, %6108 ], [ 1.000000e+00, %6065 ]
  %6279 = phi float [ %6149, %6108 ], [ 1.000000e+00, %6065 ]
  %6280 = phi float [ %6150, %6108 ], [ 1.000000e+00, %6065 ]
  %6281 = phi float [ %6274, %6108 ], [ 0.000000e+00, %6065 ]
  %6282 = phi float [ %6275, %6108 ], [ 0.000000e+00, %6065 ]
  %6283 = phi float [ %6276, %6108 ], [ 0.000000e+00, %6065 ]
  %6284 = fmul fast float %6281, %4613
  %6285 = fmul fast float %6282, %4615
  %6286 = fmul fast float %6283, %4617
  %6287 = fmul fast float %6278, %6072
  %6288 = call float @dx.op.dot3.f32(i32 55, float %6278, float %6279, float %6280, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6289 = call float @dx.op.dot3.f32(i32 55, float %6284, float %6285, float %6286, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6290 = select i1 %214, float %6288, float %6278
  %6291 = select i1 %214, float %6288, float %6279
  %6292 = select i1 %214, float 1.000000e+00, float %6280
  %6293 = select i1 %214, float %6289, float %6284
  %6294 = select i1 %214, float 0.000000e+00, float %6285
  %6295 = select i1 %214, float 0.000000e+00, float %6286
  %6296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.i32 %6296, 3
  %6298 = and i32 %6297, 3
  %6299 = icmp ne i32 %6298, 0
  %6300 = and i32 %6297, 4
  %6301 = icmp ne i32 %6300, 0
  %6302 = and i1 %6299, %6301
  %6303 = and i1 %214, %6302
  br i1 %6303, label %6304, label %6310

; <label>:6304                                    ; preds = %6277
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 1
  %6307 = fadd fast float %6287, -1.000000e+00
  %6308 = fmul fast float %6306, %6307
  %6309 = fadd fast float %6308, 1.000000e+00
  br label %6310

; <label>:6310                                    ; preds = %6304, %6277
  %6311 = phi float [ %6309, %6304 ], [ %6287, %6277 ]
  %6312 = fadd fast float %6069, %6066
  %6313 = fmul fast float %6290, %6312
  %6314 = fadd fast float %6313, %6293
  %6315 = fadd fast float %6070, %6067
  %6316 = fmul fast float %6291, %6315
  %6317 = fadd fast float %6316, %6294
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 0
  br i1 %214, label %6320, label %6335

; <label>:6320                                    ; preds = %6310
  %6321 = fadd fast float %6314, %6317
  %6322 = fmul fast float %6319, %6321
  %6323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.f32 %6323, 3
  %6325 = extractvalue %dx.types.CBufRet.f32 %4621, 1
  %6326 = fsub fast float %4626, %4620
  %6327 = fadd fast float %6326, %4627
  %6328 = fsub fast float %6327, %6325
  %6329 = extractvalue %dx.types.CBufRet.f32 %4621, 2
  %6330 = fmul fast float %6328, %6329
  %6331 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6332 = fsub fast float %6331, %6324
  %6333 = fmul fast float %6332, %6311
  %6334 = fadd fast float %6333, %6324
  br label %6361

; <label>:6335                                    ; preds = %6310
  %6336 = fadd fast float %6071, %6068
  %6337 = fmul fast float %6292, %6336
  %6338 = fadd fast float %6337, %6295
  %6339 = fmul fast float %6319, %6314
  %6340 = fmul fast float %6319, %6317
  %6341 = fmul fast float %6319, %6338
  %6342 = call float @dx.op.binary.f32(i32 35, float %6340, float %6341)  ; FMax(a,b)
  %6343 = call float @dx.op.binary.f32(i32 35, float %6339, float %6342)  ; FMax(a,b)
  %6344 = call float @dx.op.binary.f32(i32 35, float %4615, float %4617)  ; FMax(a,b)
  %6345 = call float @dx.op.binary.f32(i32 35, float %4613, float %6344)  ; FMax(a,b)
  %6346 = call float @dx.op.binary.f32(i32 35, float %6343, float %6345)  ; FMax(a,b)
  %6347 = fcmp fast ugt float %6346, 0x3F10000000000000
  br i1 %6347, label %6349, label %6348

; <label>:6348                                    ; preds = %6335
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6349

; <label>:6349                                    ; preds = %6348, %6335
  %6350 = add i32 %52, 116
  %6351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %6350, i32 undef)  ; BufferLoad(srv,index,wot)
  %6352 = extractvalue %dx.types.ResRet.i32 %6351, 0
  %6353 = and i32 %6352, 32
  %6354 = icmp eq i32 %6353, 0
  br i1 %6354, label %6361, label %6355

; <label>:6355                                    ; preds = %6349
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 0
  %6358 = fmul fast float %6357, 0x3FE99999A0000000
  %6359 = fadd fast float %6357, %6339
  %6360 = fadd fast float %6358, %6341
  br label %6361

; <label>:6361                                    ; preds = %6355, %6349, %6320
  %6362 = phi float [ 1.000000e+00, %6320 ], [ %4615, %6355 ], [ %4615, %6349 ]
  %6363 = phi float [ 1.000000e+00, %6320 ], [ %4617, %6355 ], [ %4617, %6349 ]
  %6364 = phi float [ %6322, %6320 ], [ %6359, %6355 ], [ %6339, %6349 ]
  %6365 = phi float [ %6334, %6320 ], [ %6340, %6355 ], [ %6340, %6349 ]
  %6366 = phi float [ 1.000000e+00, %6320 ], [ %6360, %6355 ], [ %6341, %6349 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6367 = call float @dx.op.binary.f32(i32 36, float %6364, float 3.225500e+04)  ; FMin(a,b)
  %6368 = call float @dx.op.binary.f32(i32 36, float %6365, float 3.225500e+04)  ; FMin(a,b)
  %6369 = call float @dx.op.binary.f32(i32 36, float %6366, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6367)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6368)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6369)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6370 = call float @dx.op.binary.f32(i32 36, float %4613, float 3.225500e+04)  ; FMin(a,b)
  %6371 = call float @dx.op.binary.f32(i32 36, float %6362, float 3.225500e+04)  ; FMin(a,b)
  %6372 = call float @dx.op.binary.f32(i32 36, float %6363, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %6370)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %6371)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %6372)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!64 = !{[24 x i32] [i32 22, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119]}
!65 = !{void ()* @ps_main, !"ps_main", !66, !4, !85}
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
!81 = !{!82, !83}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !69, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!83 = !{i32 1, !"SV_Target", i8 9, i8 16, !84, i8 0, i32 1, i8 4, i32 1, i8 0, !70}
!84 = !{i32 1}
!85 = !{i32 0, i64 16}
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
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = !{!99, !99, i64 0}
!99 = !{!"int", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !105, !107, !109}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = !{!120, !120, i64 0}
!120 = !{!"float", !100, i64 0}
!121 = !{!122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!122 = distinct !{!122, !123, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!123 = distinct !{!123, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!124 = distinct !{!124, !125, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!125 = distinct !{!125, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!126 = distinct !{!126, !125, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!127 = distinct !{!127, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!128 = distinct !{!128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!129 = distinct !{!129, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!130 = distinct !{!130, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!136 = distinct !{!136, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"\01?sort@@YAXAIAM00@Z: %c"}
!139 = distinct !{!139, !"\01?sort@@YAXAIAM00@Z"}
!140 = !{!141, !142, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!141 = distinct !{!141, !139, !"\01?sort@@YAXAIAM00@Z: %a"}
!142 = distinct !{!142, !139, !"\01?sort@@YAXAIAM00@Z: %b"}
!143 = !{!142}
!144 = !{!141, !138, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!145 = !{!141}
!146 = !{!142, !138, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!147 = !{!148}
!148 = distinct !{!148, !149, !"\01?sort@@YAXAIAM00@Z: %c"}
!149 = distinct !{!149, !"\01?sort@@YAXAIAM00@Z"}
!150 = !{!151, !152, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!151 = distinct !{!151, !149, !"\01?sort@@YAXAIAM00@Z: %a"}
!152 = distinct !{!152, !149, !"\01?sort@@YAXAIAM00@Z: %b"}
!153 = !{!152}
!154 = !{!151, !148, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!155 = !{!151}
!156 = !{!152, !148, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 2}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}

