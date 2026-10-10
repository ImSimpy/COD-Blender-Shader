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
; shader hash: 8948a42c7d6a82be643c6c0aba385d94
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
;   [208 x i8] (type annotation not present)
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
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
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %279, label %1005, label %280

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
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %969, label %990, label %970

; <label>:970                                     ; preds = %942
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 2048
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %990, label %975

; <label>:975                                     ; preds = %970
  %976 = add i32 %52, 148
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = add i32 %978, 0
  %980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %980, %dx.types.Handle %74, float %371, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %982 = extractvalue %dx.types.ResRet.f32 %981, 3
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = shl i32 %984, 4
  %986 = and i32 %985, 32752
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = fmul fast float %987, %982
  %989 = call float @dx.op.binary.f32(i32 35, float %988, float 0x3F70101020000000)  ; FMax(a,b)
  br label %990

; <label>:990                                     ; preds = %975, %970, %942
  %991 = phi float [ %989, %975 ], [ 0x3F70101020000000, %970 ], [ 0x3F70101020000000, %942 ]
  %992 = add i32 %52, 48
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 255
  %996 = uitofp i32 %995 to float
  %997 = lshr i32 %994, 8
  %998 = and i32 %997, 255
  %999 = uitofp i32 %998 to float
  %1000 = call float @dx.op.dot3.f32(i32 55, float %777, float %778, float %779, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1001 = fmul fast float %999, %1000
  %1002 = fadd fast float %1001, %996
  %1003 = fmul fast float %1002, 0x3F70101020000000
  %1004 = call float @dx.op.unary.f32(i32 7, float %1003)  ; Saturate(value)
  br label %1005

; <label>:1005                                    ; preds = %990, %270
  %1006 = phi float [ 0.000000e+00, %270 ], [ %858, %990 ]
  %1007 = phi float [ 0.000000e+00, %270 ], [ %859, %990 ]
  %1008 = phi float [ 0.000000e+00, %270 ], [ %777, %990 ]
  %1009 = phi float [ 0.000000e+00, %270 ], [ %778, %990 ]
  %1010 = phi float [ 0.000000e+00, %270 ], [ %779, %990 ]
  %1011 = phi float [ 0.000000e+00, %270 ], [ %905, %990 ]
  %1012 = phi float [ 0.000000e+00, %270 ], [ %906, %990 ]
  %1013 = phi float [ 0.000000e+00, %270 ], [ %907, %990 ]
  %1014 = phi float [ 0.000000e+00, %270 ], [ %963, %990 ]
  %1015 = phi float [ 0.000000e+00, %270 ], [ %964, %990 ]
  %1016 = phi float [ 0.000000e+00, %270 ], [ %965, %990 ]
  %1017 = phi float [ 0.000000e+00, %270 ], [ %763, %990 ]
  %1018 = phi float [ 0.000000e+00, %270 ], [ %559, %990 ]
  %1019 = phi float [ 0.000000e+00, %270 ], [ %857, %990 ]
  %1020 = phi float [ 0.000000e+00, %270 ], [ %860, %990 ]
  %1021 = phi float [ 0.000000e+00, %270 ], [ %991, %990 ]
  %1022 = phi float [ 0.000000e+00, %270 ], [ %1004, %990 ]
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 0
  %1025 = call float @dx.op.dot2.f32(i32 54, float %1006, float %1007, float %1006, float %1007)  ; Dot2(ax,ay,bx,by)
  %1026 = fmul fast float %1025, 0x3FE3333340000000
  %1027 = fsub fast float 1.000000e+00, %1026
  %1028 = call float @dx.op.dot3.f32(i32 55, float %1006, float %1007, float %1027, float %1006, float %1007, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1029 = call float @dx.op.unary.f32(i32 25, float %1028)  ; Rsqrt(value)
  %1030 = fmul fast float %1029, %1006
  %1031 = fmul fast float %1029, %1007
  %1032 = fmul fast float %1027, %1029
  %1033 = fmul fast float %1032, %57
  %1034 = fmul fast float %1032, %58
  %1035 = fmul fast float %1032, %59
  %1036 = fmul fast float %1030, %53
  %1037 = fmul fast float %1030, %54
  %1038 = fmul fast float %1030, %55
  %1039 = fadd fast float %1033, %1036
  %1040 = fadd fast float %1034, %1037
  %1041 = fadd fast float %1035, %1038
  %1042 = fmul fast float %1031, %88
  %1043 = fmul fast float %1031, %89
  %1044 = fmul fast float %1031, %90
  %1045 = fadd fast float %1039, %1042
  %1046 = fadd fast float %1040, %1043
  %1047 = fadd fast float %1041, %1044
  %1048 = call float @dx.op.dot3.f32(i32 55, float %1045, float %1046, float %1047, float %1045, float %1046, float %1047)  ; Dot3(ax,ay,az,bx,by,bz)
  %1049 = call float @dx.op.unary.f32(i32 25, float %1048)  ; Rsqrt(value)
  %1050 = fmul fast float %1045, %1049
  %1051 = fmul fast float %1046, %1049
  %1052 = fmul fast float %1047, %1049
  %1053 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %1054 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %1055 = call float @dx.op.unary.f32(i32 83, float %126)  ; DerivCoarseX(value)
  %1056 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %1057 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %1058 = call float @dx.op.unary.f32(i32 84, float %126)  ; DerivCoarseY(value)
  %1059 = fadd fast float %1053, %124
  %1060 = fadd fast float %1054, %125
  %1061 = fadd fast float %1055, %126
  %1062 = fadd fast float %1056, %124
  %1063 = fadd fast float %1057, %125
  %1064 = fadd fast float %1058, %126
  %1065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1066 = extractvalue %dx.types.CBufRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.CBufRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.CBufRet.f32 %1065, 2
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 2
  %1071 = extractvalue %dx.types.CBufRet.f32 %1069, 3
  %1072 = fmul fast float %1066, %77
  %1073 = fmul fast float %1072, %1070
  %1074 = fmul fast float %1067, %78
  %1075 = fmul fast float %1074, %1071
  %1076 = fptoui float %1073 to i32
  %1077 = fptoui float %1075 to i32
  %1078 = fadd fast float %1066, -1.000000e+00
  %1079 = fadd fast float %1067, -1.000000e+00
  %1080 = fptoui float %1078 to i32
  %1081 = fptoui float %1079 to i32
  %1082 = call i32 @dx.op.binary.i32(i32 40, i32 %1076, i32 %1080)  ; UMin(a,b)
  %1083 = call i32 @dx.op.binary.i32(i32 40, i32 %1077, i32 %1081)  ; UMin(a,b)
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1086 = extractvalue %dx.types.CBufRet.f32 %1084, 3
  %1087 = fmul fast float %1085, %68
  %1088 = fsub fast float %1087, %1086
  %1089 = fadd fast float %1068, -1.000000e+00
  %1090 = call float @dx.op.binary.f32(i32 36, float %1088, float %1089)  ; FMin(a,b)
  %1091 = fptoui float %1090 to i32
  %1092 = fptoui float %1066 to i32
  %1093 = fptoui float %1067 to i32
  %1094 = mul i32 %1091, %1093
  %1095 = add i32 %1094, %1083
  %1096 = mul i32 %1095, %1092
  %1097 = add i32 %1096, %1082
  %1098 = shl i32 %1097, 2
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = and i32 %1100, 1023
  %1102 = lshr i32 %1100, 10
  %1103 = icmp eq i32 %1101, 0
  br i1 %1103, label %1557, label %1104

; <label>:1104                                    ; preds = %1005
  %1105 = and i32 %1100, 1023
  br label %1106

; <label>:1106                                    ; preds = %1235, %1104
  %1107 = phi float [ %1236, %1235 ], [ 0.000000e+00, %1104 ]
  %1108 = phi float [ %1237, %1235 ], [ %1024, %1104 ]
  %1109 = phi float [ %1238, %1235 ], [ %1022, %1104 ]
  %1110 = phi float [ %1239, %1235 ], [ %1014, %1104 ]
  %1111 = phi float [ %1240, %1235 ], [ %1015, %1104 ]
  %1112 = phi float [ %1241, %1235 ], [ %1016, %1104 ]
  %1113 = phi float [ %1242, %1235 ], [ 0.000000e+00, %1104 ]
  %1114 = phi float [ %1243, %1235 ], [ 0.000000e+00, %1104 ]
  %1115 = phi float [ %1244, %1235 ], [ %1011, %1104 ]
  %1116 = phi float [ %1245, %1235 ], [ %1012, %1104 ]
  %1117 = phi float [ %1246, %1235 ], [ %1013, %1104 ]
  %1118 = phi float [ %1247, %1235 ], [ %1050, %1104 ]
  %1119 = phi float [ %1248, %1235 ], [ %1051, %1104 ]
  %1120 = phi float [ %1249, %1235 ], [ %1052, %1104 ]
  %1121 = phi float [ %1250, %1235 ], [ %1020, %1104 ]
  %1122 = phi float [ %1251, %1235 ], [ %1019, %1104 ]
  %1123 = phi float [ %1252, %1235 ], [ 0.000000e+00, %1104 ]
  %1124 = phi float [ %1253, %1235 ], [ %1017, %1104 ]
  %1125 = phi float [ %1254, %1235 ], [ %1008, %1104 ]
  %1126 = phi float [ %1255, %1235 ], [ %1009, %1104 ]
  %1127 = phi float [ %1256, %1235 ], [ %1010, %1104 ]
  %1128 = phi i32 [ %1185, %1235 ], [ 0, %1104 ]
  %1129 = add nuw nsw i32 %1128, %1102
  %1130 = shl i32 %1129, 2
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = shl i32 %1132, 8
  %1134 = or i32 %1133, 48
  %1135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = extractvalue %dx.types.ResRet.f32 %1135, 3
  %1140 = or i32 %1133, 64
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.i32 %1141, 1
  %1144 = or i32 %1133, 80
  %1145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 2
  %1147 = extractvalue %dx.types.ResRet.f32 %1145, 3
  %1148 = or i32 %1133, 96
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = extractvalue %dx.types.ResRet.f32 %1149, 3
  %1154 = or i32 %1133, 112
  %1155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 2
  %1157 = or i32 %1133, 128
  %1158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.ResRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.ResRet.f32 %1158, 2
  %1162 = extractvalue %dx.types.ResRet.f32 %1158, 3
  %1163 = or i32 %1133, 144
  %1164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = extractvalue %dx.types.ResRet.f32 %1164, 3
  %1169 = or i32 %1133, 160
  %1170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = extractvalue %dx.types.ResRet.f32 %1170, 3
  %1175 = or i32 %1133, 192
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = or i32 %1133, 208
  %1179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = or i32 %1133, 248
  %1182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.ResRet.f32 %1182, 1
  %1185 = add nuw nsw i32 %1128, 1
  %1186 = bitcast float %1139 to i32
  %1187 = and i32 %1186, 2560
  %1188 = icmp eq i32 %1187, 0
  %1189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.ResRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.ResRet.f32 %1189, 2
  %1193 = extractvalue %dx.types.ResRet.f32 %1189, 3
  %1194 = call float @dx.op.dot4.f32(i32 56, float %1190, float %1191, float %1192, float %1193, float %124, float %125, float %126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1195 = or i32 %1133, 16
  %1196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.ResRet.f32 %1196, 1
  %1199 = extractvalue %dx.types.ResRet.f32 %1196, 2
  %1200 = extractvalue %dx.types.ResRet.f32 %1196, 3
  %1201 = call float @dx.op.dot4.f32(i32 56, float %1197, float %1198, float %1199, float %1200, float %124, float %125, float %126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1202 = or i32 %1133, 32
  %1203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1207 = extractvalue %dx.types.ResRet.f32 %1203, 3
  %1208 = call float @dx.op.dot4.f32(i32 56, float %1204, float %1205, float %1206, float %1207, float %124, float %125, float %126, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1209 = call float @dx.op.unary.f32(i32 27, float %1194)  ; Round_ni(value)
  %1210 = call float @dx.op.unary.f32(i32 6, float %1209)  ; FAbs(value)
  %1211 = call float @dx.op.unary.f32(i32 27, float %1201)  ; Round_ni(value)
  %1212 = call float @dx.op.unary.f32(i32 6, float %1211)  ; FAbs(value)
  %1213 = call float @dx.op.unary.f32(i32 6, float %1208)  ; FAbs(value)
  %1214 = call float @dx.op.unary.f32(i32 27, float %1213)  ; Round_ni(value)
  %1215 = fadd fast float %1212, %1210
  %1216 = fadd fast float %1215, %1214
  %1217 = fcmp fast oeq float %1216, 0.000000e+00
  %1218 = call float @dx.op.dot4.f32(i32 56, float %1190, float %1191, float %1192, float %1193, float %1059, float %1060, float %1061, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1219 = call float @dx.op.dot4.f32(i32 56, float %1197, float %1198, float %1199, float %1200, float %1059, float %1060, float %1061, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1220 = call float @dx.op.dot4.f32(i32 56, float %1190, float %1191, float %1192, float %1193, float %1062, float %1063, float %1064, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1221 = call float @dx.op.dot4.f32(i32 56, float %1197, float %1198, float %1199, float %1200, float %1062, float %1063, float %1064, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1222 = fsub fast float %1218, %1194
  %1223 = fsub fast float %1220, %1194
  %1224 = fsub fast float %1219, %1201
  %1225 = fsub fast float %1221, %1201
  %1226 = call float @dx.op.dot3.f32(i32 55, float %1136, float %1137, float %1138, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1229 = fadd fast float %1228, %1226
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1232 = fcmp fast ogt float %1230, %1231
  %1233 = and i1 %1217, %1232
  %1234 = and i1 %1188, %1233
  br i1 %1234, label %1258, label %1235

; <label>:1235                                    ; preds = %1543, %1339, %1258, %1106
  %1236 = phi float [ %1107, %1258 ], [ %1342, %1339 ], [ %1342, %1543 ], [ %1107, %1106 ]
  %1237 = phi float [ %1108, %1258 ], [ %1108, %1339 ], [ %1519, %1543 ], [ %1108, %1106 ]
  %1238 = phi float [ %1109, %1258 ], [ %1109, %1339 ], [ %1517, %1543 ], [ %1109, %1106 ]
  %1239 = phi float [ %1110, %1258 ], [ %1110, %1339 ], [ %1495, %1543 ], [ %1110, %1106 ]
  %1240 = phi float [ %1111, %1258 ], [ %1111, %1339 ], [ %1496, %1543 ], [ %1111, %1106 ]
  %1241 = phi float [ %1112, %1258 ], [ %1112, %1339 ], [ %1497, %1543 ], [ %1112, %1106 ]
  %1242 = phi float [ %1113, %1258 ], [ %1113, %1339 ], [ %1466, %1543 ], [ %1113, %1106 ]
  %1243 = phi float [ %1114, %1258 ], [ %1114, %1339 ], [ %1464, %1543 ], [ %1114, %1106 ]
  %1244 = phi float [ %1115, %1258 ], [ %1115, %1339 ], [ %1553, %1543 ], [ %1115, %1106 ]
  %1245 = phi float [ %1116, %1258 ], [ %1116, %1339 ], [ %1554, %1543 ], [ %1116, %1106 ]
  %1246 = phi float [ %1117, %1258 ], [ %1117, %1339 ], [ %1555, %1543 ], [ %1117, %1106 ]
  %1247 = phi float [ %1118, %1258 ], [ %1118, %1339 ], [ %1445, %1543 ], [ %1118, %1106 ]
  %1248 = phi float [ %1119, %1258 ], [ %1119, %1339 ], [ %1446, %1543 ], [ %1119, %1106 ]
  %1249 = phi float [ %1120, %1258 ], [ %1120, %1339 ], [ %1447, %1543 ], [ %1120, %1106 ]
  %1250 = phi float [ %1121, %1258 ], [ %1121, %1339 ], [ %1475, %1543 ], [ %1121, %1106 ]
  %1251 = phi float [ %1122, %1258 ], [ %1122, %1339 ], [ %1472, %1543 ], [ %1122, %1106 ]
  %1252 = phi float [ %1123, %1258 ], [ %1123, %1339 ], [ %1469, %1543 ], [ %1123, %1106 ]
  %1253 = phi float [ %1124, %1258 ], [ %1124, %1339 ], [ %1462, %1543 ], [ %1124, %1106 ]
  %1254 = phi float [ %1125, %1258 ], [ %1125, %1339 ], [ %1457, %1543 ], [ %1125, %1106 ]
  %1255 = phi float [ %1126, %1258 ], [ %1126, %1339 ], [ %1458, %1543 ], [ %1126, %1106 ]
  %1256 = phi float [ %1127, %1258 ], [ %1127, %1339 ], [ %1459, %1543 ], [ %1127, %1106 ]
  %1257 = icmp eq i32 %1185, %1105
  br i1 %1257, label %1556, label %1106

; <label>:1258                                    ; preds = %1106
  %1259 = extractvalue %dx.types.ResRet.f32 %1155, 3
  %1260 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1261 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1262 = extractvalue %dx.types.ResRet.f32 %1145, 1
  %1263 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1264 = extractvalue %dx.types.ResRet.i32 %1141, 3
  %1265 = extractvalue %dx.types.ResRet.i32 %1141, 2
  %1266 = add i32 %1264, 0
  %1267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1266, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1267, %dx.types.Handle %1268, float %1194, float %1201, float undef, float undef, i32 0, i32 0, i32 undef, float %1222, float %1224, float undef, float %1223, float %1225, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = fmul fast float %1270, %1263
  %1272 = fadd fast float %1271, %1262
  %1273 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  %1274 = fmul fast float %1194, %1150
  %1275 = call float @dx.op.tertiary.f32(i32 46, float %1151, float %1201, float %1274)  ; FMad(a,b,c)
  %1276 = fadd fast float %1275, %1261
  %1277 = fmul fast float %1194, %1152
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1153, float %1201, float %1277)  ; FMad(a,b,c)
  %1279 = fadd fast float %1278, %1260
  %1280 = fmul fast float %1222, %1150
  %1281 = call float @dx.op.tertiary.f32(i32 46, float %1151, float %1224, float %1280)  ; FMad(a,b,c)
  %1282 = fmul fast float %1222, %1152
  %1283 = call float @dx.op.tertiary.f32(i32 46, float %1153, float %1224, float %1282)  ; FMad(a,b,c)
  %1284 = fmul fast float %1223, %1150
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1151, float %1225, float %1284)  ; FMad(a,b,c)
  %1286 = fmul fast float %1223, %1152
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %1153, float %1225, float %1286)  ; FMad(a,b,c)
  %1288 = add i32 %1265, 0
  %1289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1288, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1290 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1289, %dx.types.Handle %1268, float %1276, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float %1281, float %1283, float undef, float %1285, float %1287, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1291 = extractvalue %dx.types.ResRet.f32 %1290, 0
  %1292 = and i32 %1186, 1024
  %1293 = icmp ne i32 %1292, 0
  %1294 = fcmp fast ogt float %1291, 0x3FE0101020000000
  %1295 = uitofp i1 %1294 to float
  %1296 = select i1 %1293, float %1295, float %1291
  %1297 = and i32 %1186, 8192
  %1298 = icmp ne i32 %1297, 0
  %1299 = select i1 %1298, float %1259, float 1.000000e+00
  %1300 = fmul fast float %1194, 2.000000e+00
  %1301 = fadd fast float %1300, -1.000000e+00
  %1302 = call float @dx.op.unary.f32(i32 6, float %1301)  ; FAbs(value)
  %1303 = fmul fast float %1302, %1183
  %1304 = fsub fast float %1303, %1183
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1306 = fmul fast float %1201, 2.000000e+00
  %1307 = fadd fast float %1306, -1.000000e+00
  %1308 = call float @dx.op.unary.f32(i32 6, float %1307)  ; FAbs(value)
  %1309 = fmul fast float %1308, %1184
  %1310 = fsub fast float %1309, %1184
  %1311 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1312 = fmul fast float %1213, %1146
  %1313 = fsub fast float %1312, %1146
  %1314 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1315 = fmul fast float %1273, %1299
  %1316 = fmul fast float %1315, %1270
  %1317 = fmul fast float %1316, %1305
  %1318 = fmul fast float %1317, %1296
  %1319 = fmul fast float %1318, %1311
  %1320 = fmul fast float %1319, %1314
  %1321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.f32 %1321, 1
  %1323 = extractvalue %dx.types.CBufRet.f32 %1321, 0
  %1324 = fsub fast float %1230, %1323
  %1325 = fmul fast float %1324, %1322
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = fmul fast float %1320, %1147
  %1328 = fadd fast float %1320, %1147
  %1329 = fmul fast float %1328, %1156
  %1330 = fsub fast float %1329, %1156
  %1331 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1332 = and i32 %1186, 128
  %1333 = icmp ne i32 %1332, 0
  %1334 = select i1 %1333, float %1331, float %1327
  %1335 = fmul fast float %1334, %1326
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 0
  %1338 = fcmp fast ugt float %1335, %1337
  br i1 %1338, label %1339, label %1235

; <label>:1339                                    ; preds = %1258
  %1340 = select i1 %1298, float %1335, float 0.000000e+00
  %1341 = fadd fast float %1340, %1107
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  br i1 %1298, label %1235, label %1343

; <label>:1343                                    ; preds = %1339
  %1344 = and i32 %1186, 4
  %1345 = and i32 %1186, 8
  %1346 = add i32 %1142, 0
  %1347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1346, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1349 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1347, %dx.types.Handle %1348, float %1276, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float %1281, float %1283, float undef, float %1285, float %1287, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  %1351 = extractvalue %dx.types.ResRet.f32 %1349, 1
  %1352 = extractvalue %dx.types.ResRet.f32 %1349, 2
  %1353 = extractvalue %dx.types.ResRet.f32 %1349, 3
  %1354 = bitcast float %1168 to i32
  %1355 = and i32 %1354, 255
  %1356 = uitofp i32 %1355 to float
  %1357 = lshr i32 %1354, 8
  %1358 = and i32 %1357, 255
  %1359 = uitofp i32 %1358 to float
  %1360 = fmul fast float %1353, %1356
  %1361 = fadd fast float %1360, %1359
  %1362 = fmul fast float %1361, 0x3F70101000000000
  %1363 = add i32 %1143, 0
  %1364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1363, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1365 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1364, %dx.types.Handle %1348, float %1276, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float %1281, float %1283, float undef, float %1285, float %1287, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1366 = extractvalue %dx.types.ResRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.ResRet.f32 %1365, 1
  %1368 = extractvalue %dx.types.ResRet.f32 %1365, 2
  %1369 = extractvalue %dx.types.ResRet.f32 %1365, 3
  %1370 = bitcast float %1162 to i32
  %1371 = and i32 %1370, 255
  %1372 = uitofp i32 %1371 to float
  %1373 = lshr i32 %1370, 8
  %1374 = and i32 %1373, 255
  %1375 = uitofp i32 %1374 to float
  %1376 = lshr i32 %1370, 16
  %1377 = and i32 %1376, 255
  %1378 = uitofp i32 %1377 to float
  %1379 = fmul fast float %1378, 0x3F70101000000000
  %1380 = fmul fast float %1366, %1372
  %1381 = fadd fast float %1380, %1375
  %1382 = fmul fast float %1381, 0x3F70101000000000
  %1383 = fadd fast float %1367, -5.000000e-01
  %1384 = fadd fast float %1369, -5.000000e-01
  %1385 = fmul fast float %1383, %1379
  %1386 = fmul fast float %1384, %1379
  %1387 = fadd fast float %1385, 5.000000e-01
  %1388 = fadd fast float %1386, 5.000000e-01
  %1389 = fmul fast float %1350, %1171
  %1390 = fmul fast float %1351, %1172
  %1391 = fmul fast float %1352, %1173
  %1392 = fmul fast float %1387, 2.000000e+00
  %1393 = fadd fast float %1392, -1.000000e+00
  %1394 = fmul fast float %1388, 2.000000e+00
  %1395 = fadd fast float %1394, -1.000000e+00
  %1396 = fadd fast float %1393, %1395
  %1397 = fmul fast float %1396, 5.000000e-01
  %1398 = fsub fast float %1393, %1395
  %1399 = fmul fast float %1398, 5.000000e-01
  %1400 = call float @dx.op.unary.f32(i32 6, float %1397)  ; FAbs(value)
  %1401 = fsub fast float 1.000000e+00, %1400
  %1402 = call float @dx.op.unary.f32(i32 6, float %1399)  ; FAbs(value)
  %1403 = fsub fast float %1401, %1402
  %1404 = call float @dx.op.dot3.f32(i32 55, float %1397, float %1399, float %1403, float %1397, float %1399, float %1403)  ; Dot3(ax,ay,az,bx,by,bz)
  %1405 = call float @dx.op.unary.f32(i32 25, float %1404)  ; Rsqrt(value)
  %1406 = fmul fast float %1397, %1405
  %1407 = fmul fast float %1399, %1405
  %1408 = fmul fast float %1405, %1403
  %1409 = fmul fast float %1408, %1136
  %1410 = fmul fast float %1408, %1137
  %1411 = fmul fast float %1408, %1138
  %1412 = fmul fast float %1406, %1159
  %1413 = fmul fast float %1406, %1160
  %1414 = fmul fast float %1406, %1161
  %1415 = fadd fast float %1412, %1409
  %1416 = fadd fast float %1413, %1410
  %1417 = fadd fast float %1414, %1411
  %1418 = fmul fast float %1407, %1165
  %1419 = fmul fast float %1407, %1166
  %1420 = fmul fast float %1407, %1167
  %1421 = fadd fast float %1415, %1418
  %1422 = fadd fast float %1416, %1419
  %1423 = fadd fast float %1417, %1420
  %1424 = call float @dx.op.dot3.f32(i32 55, float %1421, float %1422, float %1423, float %1421, float %1422, float %1423)  ; Dot3(ax,ay,az,bx,by,bz)
  %1425 = call float @dx.op.unary.f32(i32 25, float %1424)  ; Rsqrt(value)
  %1426 = fmul fast float %1421, %1425
  %1427 = fmul fast float %1422, %1425
  %1428 = fmul fast float %1423, %1425
  %1429 = icmp ne i32 %1345, 0
  %1430 = select i1 %1429, float 1.000000e+00, float 0.000000e+00
  %1431 = fmul fast float %1335, %1430
  %1432 = and i32 %1186, 1
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1434, label %1438

; <label>:1434                                    ; preds = %1343
  %1435 = fsub fast float %1426, %1118
  %1436 = fsub fast float %1427, %1119
  %1437 = fsub fast float %1428, %1120
  br label %1438

; <label>:1438                                    ; preds = %1434, %1343
  %1439 = phi float [ %1435, %1434 ], [ %1426, %1343 ]
  %1440 = phi float [ %1436, %1434 ], [ %1427, %1343 ]
  %1441 = phi float [ %1437, %1434 ], [ %1428, %1343 ]
  %1442 = fmul float %1441, %1431
  %1443 = fmul float %1440, %1431
  %1444 = fmul float %1439, %1431
  %1445 = fadd fast float %1444, %1118
  %1446 = fadd fast float %1443, %1119
  %1447 = fadd fast float %1442, %1120
  %1448 = icmp ne i32 %1344, 0
  %1449 = select i1 %1448, float 1.000000e+00, float 0.000000e+00
  %1450 = fmul fast float %1335, %1449
  %1451 = fsub fast float %1389, %1125
  %1452 = fsub fast float %1390, %1126
  %1453 = fsub fast float %1391, %1127
  %1454 = fmul fast float %1451, %1450
  %1455 = fmul fast float %1452, %1450
  %1456 = fmul fast float %1453, %1450
  %1457 = fadd fast float %1454, %1125
  %1458 = fadd fast float %1455, %1126
  %1459 = fadd fast float %1456, %1127
  %1460 = fsub fast float %1362, %1124
  %1461 = fmul fast float %1460, %1450
  %1462 = fadd fast float %1461, %1124
  %1463 = fmul fast float %1450, %1114
  %1464 = fsub fast float %1114, %1463
  %1465 = fmul fast float %1450, %1113
  %1466 = fsub fast float %1113, %1465
  %1467 = bitcast float %1180 to i32
  %1468 = fadd fast float %1335, %1123
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = fsub fast float %1382, %1122
  %1471 = fmul fast float %1470, %1431
  %1472 = fadd fast float %1471, %1122
  %1473 = fsub fast float %1368, %1121
  %1474 = fmul fast float %1473, %1431
  %1475 = fadd fast float %1474, %1121
  br i1 %1433, label %1484, label %1476

; <label>:1476                                    ; preds = %1438
  %1477 = and i32 %1186, 32768
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1494, label %1479

; <label>:1479                                    ; preds = %1476
  %1480 = fmul fast float %1431, 1.270000e+02
  %1481 = fadd fast float %1480, %1110
  %1482 = fadd fast float %1480, %1111
  %1483 = fadd fast float %1480, %1112
  br label %1494

; <label>:1484                                    ; preds = %1438
  %1485 = fsub fast float 1.270000e+02, %1110
  %1486 = fsub fast float 1.270000e+02, %1111
  %1487 = fsub fast float 1.270000e+02, %1112
  %1488 = fmul fast float %1431, %1485
  %1489 = fmul fast float %1431, %1486
  %1490 = fmul fast float %1431, %1487
  %1491 = fadd fast float %1488, %1110
  %1492 = fadd fast float %1489, %1111
  %1493 = fadd fast float %1490, %1112
  br label %1494

; <label>:1494                                    ; preds = %1484, %1479, %1476
  %1495 = phi float [ %1481, %1479 ], [ %1110, %1476 ], [ %1491, %1484 ]
  %1496 = phi float [ %1482, %1479 ], [ %1111, %1476 ], [ %1492, %1484 ]
  %1497 = phi float [ %1483, %1479 ], [ %1112, %1476 ], [ %1493, %1484 ]
  %1498 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 0
  %1501 = extractvalue %dx.types.CBufRet.f32 %1499, 1
  %1502 = fmul fast float %1501, %1498
  %1503 = fadd fast float %1502, %1500
  %1504 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  %1505 = bitcast float %1174 to i32
  %1506 = and i32 %1505, 65535
  %1507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1506)  ; LegacyF16ToF32(value)
  %1508 = lshr i32 %1505, 16
  %1509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1508)  ; LegacyF16ToF32(value)
  %1510 = fcmp fast oge float %1507, 0.000000e+00
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1513 = select i1 %1510, float %1507, float %1512
  %1514 = fadd fast float %1513, %1509
  %1515 = fsub fast float %1504, %1109
  %1516 = fmul fast float %1515, %1335
  %1517 = fadd fast float %1516, %1109
  %1518 = fmul fast float %1514, %1335
  %1519 = call float @dx.op.binary.f32(i32 35, float %1108, float %1518)  ; FMax(a,b)
  %1520 = and i32 %1186, 16
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1543, label %1522

; <label>:1522                                    ; preds = %1494
  %1523 = add i32 %1177, 0
  %1524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1523, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1525 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1524, %dx.types.Handle %1348, float %1276, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float %1281, float %1283, float undef, float %1285, float %1287, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = and i32 %1467, 65535
  %1530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1529)  ; LegacyF16ToF32(value)
  %1531 = fmul fast float %1526, %1171
  %1532 = fmul fast float %1527, %1172
  %1533 = fmul fast float %1528, %1173
  %1534 = and i32 %1186, 16384
  %1535 = icmp ne i32 %1534, 0
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 0
  %1538 = select i1 %1535, float %1537, float 1.000000e+00
  %1539 = fmul fast float %1538, %1530
  %1540 = fmul fast float %1531, %1539
  %1541 = fmul fast float %1532, %1539
  %1542 = fmul fast float %1533, %1539
  br label %1543

; <label>:1543                                    ; preds = %1522, %1494
  %1544 = phi float [ %1540, %1522 ], [ 0.000000e+00, %1494 ]
  %1545 = phi float [ %1541, %1522 ], [ 0.000000e+00, %1494 ]
  %1546 = phi float [ %1542, %1522 ], [ 0.000000e+00, %1494 ]
  %1547 = fsub fast float %1544, %1115
  %1548 = fsub fast float %1545, %1116
  %1549 = fsub fast float %1546, %1117
  %1550 = fmul fast float %1547, %1335
  %1551 = fmul fast float %1548, %1335
  %1552 = fmul fast float %1549, %1335
  %1553 = fadd fast float %1550, %1115
  %1554 = fadd fast float %1551, %1116
  %1555 = fadd fast float %1552, %1117
  br label %1235

; <label>:1556                                    ; preds = %1235
  br label %1557

; <label>:1557                                    ; preds = %1556, %1005
  %1558 = phi float [ 0.000000e+00, %1005 ], [ %1236, %1556 ]
  %1559 = phi float [ %1024, %1005 ], [ %1237, %1556 ]
  %1560 = phi float [ %1022, %1005 ], [ %1238, %1556 ]
  %1561 = phi float [ %1014, %1005 ], [ %1239, %1556 ]
  %1562 = phi float [ %1015, %1005 ], [ %1240, %1556 ]
  %1563 = phi float [ %1016, %1005 ], [ %1241, %1556 ]
  %1564 = phi float [ 0.000000e+00, %1005 ], [ %1242, %1556 ]
  %1565 = phi float [ 0.000000e+00, %1005 ], [ %1243, %1556 ]
  %1566 = phi float [ %1011, %1005 ], [ %1244, %1556 ]
  %1567 = phi float [ %1012, %1005 ], [ %1245, %1556 ]
  %1568 = phi float [ %1013, %1005 ], [ %1246, %1556 ]
  %1569 = phi float [ %1050, %1005 ], [ %1247, %1556 ]
  %1570 = phi float [ %1051, %1005 ], [ %1248, %1556 ]
  %1571 = phi float [ %1052, %1005 ], [ %1249, %1556 ]
  %1572 = phi float [ %1020, %1005 ], [ %1250, %1556 ]
  %1573 = phi float [ %1019, %1005 ], [ %1251, %1556 ]
  %1574 = phi float [ 0.000000e+00, %1005 ], [ %1252, %1556 ]
  %1575 = phi float [ %1017, %1005 ], [ %1253, %1556 ]
  %1576 = phi float [ %1008, %1005 ], [ %1254, %1556 ]
  %1577 = phi float [ %1009, %1005 ], [ %1255, %1556 ]
  %1578 = phi float [ %1010, %1005 ], [ %1256, %1556 ]
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1569, float %1570, float %1571, float %1569, float %1570, float %1571)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = call float @dx.op.unary.f32(i32 25, float %1579)  ; Rsqrt(value)
  %1581 = fmul fast float %1580, %1569
  %1582 = fmul fast float %1580, %1570
  %1583 = fmul fast float %1580, %1571
  %1584 = fadd fast float %1574, %1018
  %1585 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1586 = call float @dx.op.dot3.f32(i32 55, float %1581, float %1582, float %1583, float %1581, float %1582, float %1583)  ; Dot3(ax,ay,az,bx,by,bz)
  %1587 = call float @dx.op.unary.f32(i32 25, float %1586)  ; Rsqrt(value)
  %1588 = fmul fast float %1587, %1581
  %1589 = fmul fast float %1587, %1582
  %1590 = fmul fast float %1587, %1583
  %1591 = fadd fast float %1575, 0xBFB99999A0000000
  %1592 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  %1593 = fmul fast float %1592, 0x3FF1C71C80000000
  %1594 = call float @dx.op.binary.f32(i32 36, float %1575, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1595 = fsub fast float 1.000000e+00, %1593
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = fmul fast float %1596, %1576
  %1598 = fmul fast float %1596, %1577
  %1599 = fmul fast float %1596, %1578
  %1600 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  %1601 = call float @dx.op.unary.f32(i32 7, float %1598)  ; Saturate(value)
  %1602 = call float @dx.op.unary.f32(i32 7, float %1599)  ; Saturate(value)
  %1603 = fmul fast float %1593, %1576
  %1604 = fmul fast float %1593, %1577
  %1605 = fmul fast float %1593, %1578
  %1606 = fadd fast float %1603, %1594
  %1607 = fadd fast float %1604, %1594
  %1608 = fadd fast float %1605, %1594
  %1609 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1610 = call float @dx.op.unary.f32(i32 7, float %1607)  ; Saturate(value)
  %1611 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1612 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1613 = call float @dx.op.binary.f32(i32 36, float %1561, float 1.270000e+02)  ; FMin(a,b)
  %1614 = call float @dx.op.binary.f32(i32 36, float %1562, float 1.270000e+02)  ; FMin(a,b)
  %1615 = call float @dx.op.binary.f32(i32 36, float %1563, float 1.270000e+02)  ; FMin(a,b)
  %1616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.i32 %1616, 3
  %1618 = and i32 %1617, 8
  %1619 = icmp ne i32 %1618, 0
  %1620 = call float @dx.op.binary.f32(i32 35, float %1600, float %1576)  ; FMax(a,b)
  %1621 = call float @dx.op.binary.f32(i32 35, float %1601, float %1576)  ; FMax(a,b)
  %1622 = call float @dx.op.binary.f32(i32 35, float %1602, float %1576)  ; FMax(a,b)
  %1623 = call float @dx.op.dot3.f32(i32 55, float %1600, float %1601, float %1602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1624 = select i1 %214, float %1576, float %1600
  %1625 = select i1 %214, float %1623, float %1601
  %1626 = select i1 %214, float 1.000000e+00, float %1602
  %1627 = select i1 %1619, float %1620, float %1624
  %1628 = select i1 %1619, float %1621, float %1625
  %1629 = select i1 %1619, float %1622, float %1626
  %1630 = and i32 %190, 3
  %1631 = select i1 %184, i32 %1630, i32 0
  %1632 = icmp eq i32 %1631, 1
  br i1 %1632, label %1633, label %1709

; <label>:1633                                    ; preds = %1557
  %1634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1635 = extractvalue %dx.types.CBufRet.f32 %1634, 0
  %1636 = extractvalue %dx.types.CBufRet.f32 %1634, 1
  %1637 = fadd fast float %1635, %124
  %1638 = fadd fast float %1636, %125
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1642 = fsub fast float %1637, %1640
  %1643 = fsub fast float %1638, %1641
  %1644 = fmul fast float %1642, %1642
  %1645 = fmul fast float %1643, %1643
  %1646 = fadd fast float %1644, %1645
  %1647 = call float @dx.op.unary.f32(i32 24, float %1646)  ; Sqrt(value)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1649 = fcmp fast olt float %1647, %1648
  br i1 %1649, label %1650, label %1703

; <label>:1650                                    ; preds = %1633
  %1651 = extractvalue %dx.types.CBufRet.f32 %1634, 2
  %1652 = fadd fast float %1651, %126
  %1653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1653, 0
  %1655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1656 = extractvalue %dx.types.CBufRet.f32 %1655, 0
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 0
  %1659 = extractvalue %dx.types.CBufRet.f32 %1653, 1
  %1660 = extractvalue %dx.types.CBufRet.f32 %1655, 1
  %1661 = extractvalue %dx.types.CBufRet.f32 %1657, 1
  %1662 = extractvalue %dx.types.CBufRet.f32 %1653, 3
  %1663 = extractvalue %dx.types.CBufRet.f32 %1655, 3
  %1664 = extractvalue %dx.types.CBufRet.f32 %1657, 3
  %1665 = fadd fast float %1662, %1637
  %1666 = fadd fast float %1663, %1638
  %1667 = fadd fast float %1652, %1664
  %1668 = fmul fast float %1665, %1654
  %1669 = call float @dx.op.tertiary.f32(i32 46, float %1666, float %1656, float %1668)  ; FMad(a,b,c)
  %1670 = call float @dx.op.tertiary.f32(i32 46, float %1667, float %1658, float %1669)  ; FMad(a,b,c)
  %1671 = fmul fast float %1665, %1659
  %1672 = call float @dx.op.tertiary.f32(i32 46, float %1666, float %1660, float %1671)  ; FMad(a,b,c)
  %1673 = call float @dx.op.tertiary.f32(i32 46, float %1667, float %1661, float %1672)  ; FMad(a,b,c)
  %1674 = fsub fast float %1670, %1662
  %1675 = fsub fast float %1673, %1663
  %1676 = fsub fast float %1674, %1640
  %1677 = fadd fast float %1676, %1648
  %1678 = fsub fast float %1675, %1641
  %1679 = fadd fast float %1678, %1648
  %1680 = extractvalue %dx.types.CBufRet.f32 %1639, 3
  %1681 = fmul fast float %1677, %1680
  %1682 = fmul fast float %1679, %1680
  %1683 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1684 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1685 = fsub fast float 1.000000e+00, %1683
  %1686 = fsub fast float 1.000000e+00, %1684
  %1687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %1685, float %1686, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = fcmp fast ugt float %1688, 0.000000e+00
  br i1 %1689, label %1690, label %1703

; <label>:1690                                    ; preds = %1650
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 2
  %1693 = fmul fast float %1692, %1688
  %1694 = extractvalue %dx.types.CBufRet.f32 %1691, 3
  %1695 = fadd fast float %1694, %1693
  %1696 = extractvalue %dx.types.CBufRet.f32 %1657, 2
  %1697 = fadd fast float %1695, %1664
  %1698 = fmul fast float %1670, %1658
  %1699 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %1661, float %1698)  ; FMad(a,b,c)
  %1700 = call float @dx.op.tertiary.f32(i32 46, float %1697, float %1696, float %1699)  ; FMad(a,b,c)
  %1701 = fsub fast float %1700, %1664
  %1702 = fsub fast float %1701, %1651
  br label %1703

; <label>:1703                                    ; preds = %1690, %1650, %1633
  %1704 = phi i1 [ true, %1690 ], [ false, %1650 ], [ false, %1633 ]
  %1705 = phi float [ %1702, %1690 ], [ -1.310720e+05, %1650 ], [ -1.310720e+05, %1633 ]
  %1706 = fsub fast float %1705, %126
  %1707 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1708 = select i1 %1704, float %1707, float 1.000000e+00
  br label %1709

; <label>:1709                                    ; preds = %1703, %1557
  %1710 = phi float [ %1708, %1703 ], [ 0.000000e+00, %1557 ]
  %1711 = icmp eq i32 %1631, 3
  %1712 = select i1 %1711, float 1.000000e+00, float %1710
  %1713 = call float @dx.op.binary.f32(i32 35, float %1558, float %1712)  ; FMax(a,b)
  %1714 = call float @dx.op.unary.f32(i32 7, float %1713)  ; Saturate(value)
  %1715 = fcmp fast une float %1714, 0.000000e+00
  %1716 = call float @dx.op.dot3.f32(i32 55, float %124, float %125, float %126, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %1717 = call float @dx.op.unary.f32(i32 25, float %1716)  ; Rsqrt(value)
  br i1 %1715, label %1725, label %1718

; <label>:1718                                    ; preds = %1709
  %1719 = fmul fast float %1717, %124
  %1720 = fmul fast float %1717, %125
  %1721 = fmul fast float %1717, %126
  %1722 = fsub fast float -0.000000e+00, %1719
  %1723 = fsub fast float -0.000000e+00, %1720
  %1724 = fsub fast float -0.000000e+00, %1721
  br label %1893

; <label>:1725                                    ; preds = %1709
  %1726 = fmul fast float %124, %1717
  %1727 = fsub fast float -0.000000e+00, %1726
  %1728 = fmul fast float %125, %1717
  %1729 = fsub fast float -0.000000e+00, %1728
  %1730 = fmul fast float %126, %1717
  %1731 = fsub fast float -0.000000e+00, %1730
  %1732 = call float @dx.op.dot3.f32(i32 55, float %1727, float %1729, float %1731, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %1733 = fmul fast float %1714, 2.500000e+00
  %1734 = call float @dx.op.unary.f32(i32 7, float %1733)  ; Saturate(value)
  %1735 = fmul fast float %1714, 0x4013FFFFE0000000
  %1736 = fadd fast float %1735, 0xBFFFFFFFE0000000
  %1737 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1738 = fmul fast float %1714, 0x4004000020000000
  %1739 = fadd fast float %1738, 0xBFF8000040000000
  %1740 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1741 = call float @dx.op.unary.f32(i32 7, float %1734)  ; Saturate(value)
  %1742 = fmul fast float %1591, 1.000000e+01
  %1743 = call float @dx.op.unary.f32(i32 7, float %1742)  ; Saturate(value)
  %1744 = fmul fast float %1743, 2.000000e+00
  %1745 = fsub fast float 3.000000e+00, %1744
  %1746 = fmul fast float %1743, %1743
  %1747 = fmul fast float %1746, %1745
  %1748 = fsub fast float 1.000000e+00, %1747
  %1749 = fsub fast float 0x3FE3333340000000, %1612
  %1750 = fmul fast float %1749, 0x400AAAAAA0000000
  %1751 = call float @dx.op.unary.f32(i32 7, float %1750)  ; Saturate(value)
  %1752 = fmul fast float %1748, %1751
  %1753 = fmul fast float %1627, 0x3FEA2B8620000000
  %1754 = fmul fast float %1628, 0x3FEA2B8620000000
  %1755 = fmul fast float %1629, 0x3FEA2B8620000000
  %1756 = fadd fast float %1753, 0x3FC81DFBA0000000
  %1757 = fmul fast float %1756, %1627
  %1758 = fadd fast float %1757, 0x3F910E6020000000
  %1759 = fadd fast float %1754, 0x3FC81DFBA0000000
  %1760 = fmul fast float %1759, %1628
  %1761 = fadd fast float %1760, 0x3F910E6020000000
  %1762 = fadd fast float %1755, 0x3FC81DFBA0000000
  %1763 = fmul fast float %1762, %1629
  %1764 = fadd fast float %1763, 0x3F910E6020000000
  %1765 = call float @dx.op.unary.f32(i32 7, float %1758)  ; Saturate(value)
  %1766 = call float @dx.op.unary.f32(i32 7, float %1761)  ; Saturate(value)
  %1767 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1768 = fsub fast float %1765, %1627
  %1769 = fsub fast float %1766, %1628
  %1770 = fsub fast float %1767, %1629
  %1771 = fmul fast float %1768, %1741
  %1772 = fmul fast float %1771, %1752
  %1773 = fmul fast float %1769, %1741
  %1774 = fmul fast float %1773, %1752
  %1775 = fmul fast float %1770, %1741
  %1776 = fmul fast float %1775, %1752
  %1777 = fadd fast float %1772, %1627
  %1778 = fadd fast float %1774, %1628
  %1779 = fadd fast float %1776, %1629
  %1780 = fmul fast float %1572, %1572
  %1781 = fmul fast float %1780, %1780
  %1782 = fadd fast float %1737, 1.000000e+00
  %1783 = fsub fast float %1782, %1752
  %1784 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  %1785 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1786 = call float @dx.op.unary.f32(i32 7, float %1785)  ; Saturate(value)
  %1787 = fsub fast float 1.000000e+00, %1781
  %1788 = call float @dx.op.binary.f32(i32 36, float %1784, float %1787)  ; FMin(a,b)
  %1789 = call float @dx.op.unary.f32(i32 7, float %1740)  ; Saturate(value)
  %1790 = call float @dx.op.binary.f32(i32 35, float %1788, float %1789)  ; FMax(a,b)
  %1791 = fadd fast float %1786, 0xBFE4CCCCC0000000
  %1792 = fmul fast float %1791, 0x4006DB6DA0000000
  %1793 = call float @dx.op.unary.f32(i32 7, float %1792)  ; Saturate(value)
  %1794 = fmul fast float %1793, 2.000000e+00
  %1795 = fsub fast float 3.000000e+00, %1794
  %1796 = bitcast float %1609 to i32
  %1797 = ashr i32 %1796, 1
  %1798 = add nsw i32 %1797, 532487669
  %1799 = bitcast i32 %1798 to float
  %1800 = fsub fast float 1.000000e+00, %1799
  %1801 = bitcast float %1800 to i32
  %1802 = sub nsw i32 2129859010, %1801
  %1803 = bitcast i32 %1802 to float
  %1804 = fmul fast float %1803, 2.000000e+00
  %1805 = bitcast float %1610 to i32
  %1806 = ashr i32 %1805, 1
  %1807 = add nsw i32 %1806, 532487669
  %1808 = bitcast i32 %1807 to float
  %1809 = fsub fast float 1.000000e+00, %1808
  %1810 = bitcast float %1809 to i32
  %1811 = sub nsw i32 2129859010, %1810
  %1812 = bitcast i32 %1811 to float
  %1813 = fmul fast float %1812, 2.000000e+00
  %1814 = bitcast float %1611 to i32
  %1815 = ashr i32 %1814, 1
  %1816 = add nsw i32 %1815, 532487669
  %1817 = bitcast i32 %1816 to float
  %1818 = fsub fast float 1.000000e+00, %1817
  %1819 = bitcast float %1818 to i32
  %1820 = sub nsw i32 2129859010, %1819
  %1821 = bitcast i32 %1820 to float
  %1822 = fmul fast float %1821, 2.000000e+00
  %1823 = fsub fast float 0x4002A9FBE0000000, %1804
  %1824 = fadd fast float %1804, 0x3FD54FDF00000000
  %1825 = bitcast float %1824 to i32
  %1826 = sub nsw i32 2129859010, %1825
  %1827 = bitcast i32 %1826 to float
  %1828 = fmul fast float %1827, %1823
  %1829 = fmul fast float %1828, %1828
  %1830 = fsub fast float 0x4002A9FBE0000000, %1813
  %1831 = fadd fast float %1813, 0x3FD54FDF00000000
  %1832 = bitcast float %1831 to i32
  %1833 = sub nsw i32 2129859010, %1832
  %1834 = bitcast i32 %1833 to float
  %1835 = fmul fast float %1834, %1830
  %1836 = fmul fast float %1835, %1835
  %1837 = fsub fast float 0x4002A9FBE0000000, %1822
  %1838 = fadd fast float %1822, 0x3FD54FDF00000000
  %1839 = bitcast float %1838 to i32
  %1840 = sub nsw i32 2129859010, %1839
  %1841 = bitcast i32 %1840 to float
  %1842 = fmul fast float %1841, %1837
  %1843 = fmul fast float %1842, %1842
  %1844 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1829)  ; FMax(a,b)
  %1845 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1836)  ; FMax(a,b)
  %1846 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1843)  ; FMax(a,b)
  %1847 = fsub fast float 1.000000e+00, %1732
  %1848 = fadd fast float %1847, %1748
  %1849 = call float @dx.op.unary.f32(i32 7, float %1848)  ; Saturate(value)
  %1850 = fsub fast float 1.000000e+00, %1712
  %1851 = fmul fast float %1790, %1850
  %1852 = fmul fast float %1793, %1793
  %1853 = fmul fast float %1852, %1851
  %1854 = fmul fast float %1853, %1795
  %1855 = fmul fast float %1850, 0xBFE99999A0000000
  %1856 = fmul fast float %1855, %1741
  %1857 = fmul fast float %1856, %1752
  %1858 = fadd fast float %1857, 1.000000e+00
  %1859 = fadd fast float %1612, -1.000000e+00
  %1860 = fmul fast float %1858, %1859
  %1861 = fadd fast float %1860, 1.000000e+00
  %1862 = fsub fast float %1844, %1609
  %1863 = fsub fast float %1845, %1610
  %1864 = fsub fast float %1846, %1611
  %1865 = fmul fast float %1854, %1862
  %1866 = fmul fast float %1854, %1863
  %1867 = fmul fast float %1854, %1864
  %1868 = fadd fast float %1865, %1609
  %1869 = fadd fast float %1866, %1610
  %1870 = fadd fast float %1867, %1611
  %1871 = fsub fast float %57, %1588
  %1872 = fsub fast float %58, %1589
  %1873 = fsub fast float %59, %1590
  %1874 = fmul fast float %1854, %1871
  %1875 = fmul fast float %1854, %1872
  %1876 = fmul fast float %1854, %1873
  %1877 = fadd fast float %1874, %1588
  %1878 = fadd fast float %1875, %1589
  %1879 = fadd fast float %1876, %1590
  %1880 = fmul fast float %1854, %1849
  %1881 = call float @dx.op.unary.f32(i32 7, float %1861)  ; Saturate(value)
  %1882 = fsub fast float 1.000000e+00, %1881
  %1883 = fmul fast float %1880, %1882
  %1884 = fadd fast float %1883, %1881
  %1885 = fsub fast float 1.000000e+00, %1572
  %1886 = fmul fast float %1854, %1885
  %1887 = fadd fast float %1886, %1572
  %1888 = call float @dx.op.dot3.f32(i32 55, float %1877, float %1878, float %1879, float %1877, float %1878, float %1879)  ; Dot3(ax,ay,az,bx,by,bz)
  %1889 = call float @dx.op.unary.f32(i32 25, float %1888)  ; Rsqrt(value)
  %1890 = fmul fast float %1877, %1889
  %1891 = fmul fast float %1878, %1889
  %1892 = fmul fast float %1879, %1889
  br label %1893

; <label>:1893                                    ; preds = %1725, %1718
  %1894 = phi float [ %1724, %1718 ], [ %1731, %1725 ]
  %1895 = phi float [ %1723, %1718 ], [ %1729, %1725 ]
  %1896 = phi float [ %1722, %1718 ], [ %1727, %1725 ]
  %1897 = phi float [ %1721, %1718 ], [ %1730, %1725 ]
  %1898 = phi float [ %1720, %1718 ], [ %1728, %1725 ]
  %1899 = phi float [ %1719, %1718 ], [ %1726, %1725 ]
  %1900 = phi float [ %1627, %1718 ], [ %1777, %1725 ]
  %1901 = phi float [ %1628, %1718 ], [ %1778, %1725 ]
  %1902 = phi float [ %1629, %1718 ], [ %1779, %1725 ]
  %1903 = phi float [ %1588, %1718 ], [ %1890, %1725 ]
  %1904 = phi float [ %1589, %1718 ], [ %1891, %1725 ]
  %1905 = phi float [ %1590, %1718 ], [ %1892, %1725 ]
  %1906 = phi float [ %1609, %1718 ], [ %1868, %1725 ]
  %1907 = phi float [ %1610, %1718 ], [ %1869, %1725 ]
  %1908 = phi float [ %1611, %1718 ], [ %1870, %1725 ]
  %1909 = phi float [ %1612, %1718 ], [ %1884, %1725 ]
  %1910 = phi float [ %1572, %1718 ], [ %1887, %1725 ]
  %1911 = select i1 %214, float 0.000000e+00, float %1908
  %1912 = call float @dx.op.dot3.f32(i32 55, float %1903, float %1904, float %1905, float %1896, float %1895, float %1894)  ; Dot3(ax,ay,az,bx,by,bz)
  %1913 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1914 = call float @dx.op.dot3.f32(i32 55, float %1899, float %1898, float %1897, float %1903, float %1904, float %1905)  ; Dot3(ax,ay,az,bx,by,bz)
  %1915 = fmul fast float %1914, 2.000000e+00
  %1916 = fmul fast float %1915, %1903
  %1917 = fmul fast float %1915, %1904
  %1918 = fmul fast float %1915, %1905
  %1919 = fsub fast float %1899, %1916
  %1920 = fsub fast float %1898, %1917
  %1921 = fsub fast float %1897, %1918
  %1922 = call float @dx.op.binary.f32(i32 36, float %1910, float 1.000000e+00)  ; FMin(a,b)
  %1923 = fsub fast float 1.000000e+00, %1910
  %1924 = bitcast float %1923 to i32
  %1925 = sub nsw i32 2129859010, %1924
  %1926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1926, 0
  %1928 = extractvalue %dx.types.CBufRet.f32 %1926, 1
  %1929 = fadd fast float %1927, %124
  %1930 = fadd fast float %1928, %125
  %1931 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1932 = extractvalue %dx.types.CBufRet.i32 %1931, 0
  %1933 = icmp eq i32 %1932, 1
  br i1 %1933, label %1934, label %1969

; <label>:1934                                    ; preds = %1893
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.CBufRet.f32 %1935, 1
  %1938 = fsub fast float %1929, %1936
  %1939 = fsub fast float %1930, %1937
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 0
  %1942 = extractvalue %dx.types.CBufRet.f32 %1940, 1
  %1943 = fmul fast float %1938, %1941
  %1944 = fmul fast float %1939, %1942
  %1945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1946 = extractvalue %dx.types.ResRet.f32 %1945, 0
  %1947 = fcmp fast ogt float %1946, 0.000000e+00
  %1948 = extractvalue %dx.types.CBufRet.i32 %1931, 3
  %1949 = icmp ne i32 %1948, 0
  %1950 = and i1 %1947, %1949
  br i1 %1950, label %1951, label %1969, !dx.controlflow.hints !84

; <label>:1951                                    ; preds = %1934
  %1952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.f32 %1952, 0
  %1954 = extractvalue %dx.types.CBufRet.f32 %1952, 1
  %1955 = fsub fast float %1929, %1953
  %1956 = fsub fast float %1930, %1954
  %1957 = fmul fast float %1955, %1955
  %1958 = fmul fast float %1956, %1956
  %1959 = fadd fast float %1957, %1958
  %1960 = uitofp i32 %1948 to float
  %1961 = fmul fast float %1960, %1960
  %1962 = fcmp fast ogt float %1959, %1961
  br i1 %1962, label %1969, label %1963

; <label>:1963                                    ; preds = %1951
  %1964 = call float @dx.op.unary.f32(i32 24, float %1959)  ; Sqrt(value)
  %1965 = fsub fast float %1960, %1964
  %1966 = fmul fast float %1965, 0x3F75555560000000
  %1967 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1968 = call float @dx.op.binary.f32(i32 36, float %1967, float %1946)  ; FMin(a,b)
  br label %1969

; <label>:1969                                    ; preds = %1963, %1951, %1934, %1893
  %1970 = phi float [ 1.000000e+00, %1893 ], [ %1968, %1963 ], [ %1946, %1934 ], [ 0.000000e+00, %1951 ]
  %1971 = fcmp fast ogt float %1970, 0.000000e+00
  br i1 %1971, label %1972, label %2070, !dx.controlflow.hints !85

; <label>:1972                                    ; preds = %1969
  %1973 = fadd fast float %155, 5.000000e-01
  %1974 = call float @dx.op.unary.f32(i32 27, float %1973)  ; Round_ni(value)
  %1975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %153, float %154, float %1974, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = extractvalue %dx.types.ResRet.f32 %1975, 1
  %1978 = extractvalue %dx.types.ResRet.f32 %1975, 2
  %1979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1980 = extractvalue %dx.types.CBufRet.f32 %1979, 3
  %1981 = fmul fast float %1980, %1976
  %1982 = fmul fast float %1980, %1977
  %1983 = fmul fast float %1980, %1978
  %1984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %153, float %154, float %1974, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1985 = extractvalue %dx.types.ResRet.f32 %1984, 0
  %1986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %45, float %153, float %154, float %1974, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 0
  %1988 = extractvalue %dx.types.ResRet.f32 %1986, 1
  %1989 = fmul fast float %1987, 2.000000e+00
  %1990 = fmul fast float %1988, 2.000000e+00
  %1991 = fadd fast float %1989, -1.000000e+00
  %1992 = fadd fast float %1990, -1.000000e+00
  %1993 = fadd fast float %1991, %1992
  %1994 = fmul fast float %1993, 5.000000e-01
  %1995 = fsub fast float %1991, %1992
  %1996 = fmul fast float %1995, 5.000000e-01
  %1997 = call float @dx.op.unary.f32(i32 6, float %1994)  ; FAbs(value)
  %1998 = fsub fast float 1.000000e+00, %1997
  %1999 = call float @dx.op.unary.f32(i32 6, float %1996)  ; FAbs(value)
  %2000 = fsub fast float %1998, %1999
  %2001 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2000)  ; FMax(a,b)
  %2002 = call float @dx.op.dot3.f32(i32 55, float %1994, float %1996, float %2001, float %1994, float %1996, float %2001)  ; Dot3(ax,ay,az,bx,by,bz)
  %2003 = bitcast float %2002 to i32
  %2004 = ashr i32 %2003, 1
  %2005 = sub nsw i32 1597250115, %2004
  %2006 = bitcast i32 %2005 to float
  %2007 = fmul fast float %2006, %1994
  %2008 = fmul fast float %2006, %1996
  %2009 = fmul fast float %2006, %2001
  %2010 = fsub fast float 1.000000e+00, %1985
  %2011 = fdiv fast float %2010, %2009
  %2012 = fmul fast float %2009, %57
  %2013 = fmul fast float %2009, %58
  %2014 = fmul fast float %2009, %59
  %2015 = fmul fast float %2007, %53
  %2016 = fmul fast float %2007, %54
  %2017 = fmul fast float %2007, %55
  %2018 = fadd fast float %2012, %2015
  %2019 = fadd fast float %2013, %2016
  %2020 = fadd fast float %2014, %2017
  %2021 = fmul fast float %2008, %88
  %2022 = fmul fast float %2008, %89
  %2023 = fmul fast float %2008, %90
  %2024 = fadd fast float %2018, %2021
  %2025 = fadd fast float %2019, %2022
  %2026 = fadd fast float %2020, %2023
  %2027 = call float @dx.op.dot3.f32(i32 55, float %2024, float %2025, float %2026, float %2024, float %2025, float %2026)  ; Dot3(ax,ay,az,bx,by,bz)
  %2028 = call float @dx.op.unary.f32(i32 25, float %2027)  ; Rsqrt(value)
  %2029 = fmul fast float %2024, %2028
  %2030 = fmul fast float %2025, %2028
  %2031 = fmul fast float %2026, %2028
  %2032 = call float @dx.op.dot3.f32(i32 55, float %1903, float %1904, float %1905, float %1903, float %1904, float %1905)  ; Dot3(ax,ay,az,bx,by,bz)
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2034 = fmul fast float %2033, 5.000000e-01
  %2035 = fadd fast float %2034, 5.000000e-01
  %2036 = fmul fast float %2035, %1985
  %2037 = call float @dx.op.dot3.f32(i32 55, float %1903, float %1904, float %1905, float %2029, float %2030, float %2031)  ; Dot3(ax,ay,az,bx,by,bz)
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = fmul fast float %2038, %2011
  %2040 = fadd fast float %2036, %2039
  %2041 = fsub fast float 5.000000e-01, %2034
  %2042 = fmul fast float %2041, %1900
  %2043 = fmul fast float %2041, %1901
  %2044 = fmul fast float %2041, %1902
  %2045 = fadd fast float %2040, %2042
  %2046 = fmul fast float %2045, %1981
  %2047 = fadd fast float %2040, %2043
  %2048 = fmul fast float %2047, %1982
  %2049 = fadd fast float %2040, %2044
  %2050 = fmul fast float %2049, %1983
  %2051 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %1903, float %1904, float %1905)  ; Dot3(ax,ay,az,bx,by,bz)
  %2052 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  %2053 = fmul fast float %2052, 5.000000e-01
  %2054 = fadd fast float %2053, 5.000000e-01
  %2055 = fmul fast float %2054, %1985
  %2056 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %2029, float %2030, float %2031)  ; Dot3(ax,ay,az,bx,by,bz)
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = fmul fast float %2057, %2011
  %2059 = fadd fast float %2055, %2058
  %2060 = fsub fast float 5.000000e-01, %2053
  %2061 = fmul fast float %2060, %1900
  %2062 = fmul fast float %2060, %1901
  %2063 = fmul fast float %2060, %1902
  %2064 = fadd fast float %2059, %2061
  %2065 = fmul fast float %2064, %1981
  %2066 = fadd fast float %2059, %2062
  %2067 = fmul fast float %2066, %1982
  %2068 = fadd fast float %2059, %2063
  %2069 = fmul fast float %2068, %1983
  br label %2070

; <label>:2070                                    ; preds = %1972, %1969
  %2071 = phi float [ %2065, %1972 ], [ 0.000000e+00, %1969 ]
  %2072 = phi float [ %2067, %1972 ], [ 0.000000e+00, %1969 ]
  %2073 = phi float [ %2069, %1972 ], [ 0.000000e+00, %1969 ]
  %2074 = phi float [ %2046, %1972 ], [ 0.000000e+00, %1969 ]
  %2075 = phi float [ %2048, %1972 ], [ 0.000000e+00, %1969 ]
  %2076 = phi float [ %2050, %1972 ], [ 0.000000e+00, %1969 ]
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 0
  %2079 = fcmp fast ogt float %2078, 0.000000e+00
  %2080 = and i1 %1971, %2079
  br i1 %2080, label %2081, label %2285, !dx.controlflow.hints !86

; <label>:2081                                    ; preds = %2070
  %2082 = extractvalue %dx.types.CBufRet.f32 %1926, 2
  %2083 = fadd fast float %2082, %126
  %2084 = fmul fast float %1903, 3.200000e+01
  %2085 = fmul fast float %1904, 3.200000e+01
  %2086 = fadd fast float %1929, %2084
  %2087 = fadd fast float %1930, %2085
  %2088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2089 = extractvalue %dx.types.CBufRet.f32 %2088, 0
  %2090 = extractvalue %dx.types.CBufRet.f32 %2088, 1
  %2091 = fsub fast float %2086, %2089
  %2092 = fsub fast float %2087, %2090
  %2093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2094 = extractvalue %dx.types.CBufRet.f32 %2093, 0
  %2095 = extractvalue %dx.types.CBufRet.f32 %2093, 1
  %2096 = fmul fast float %2091, %2094
  %2097 = fmul fast float %2092, %2095
  %2098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2099 = extractvalue %dx.types.CBufRet.f32 %2098, 0
  %2100 = extractvalue %dx.types.CBufRet.f32 %2098, 1
  %2101 = fsub fast float %1929, %2099
  %2102 = fsub fast float %1930, %2100
  %2103 = fmul fast float %2101, %2101
  %2104 = fmul fast float %2102, %2102
  %2105 = fadd fast float %2103, %2104
  %2106 = call float @dx.op.unary.f32(i32 24, float %2105)  ; Sqrt(value)
  %2107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2108 = extractvalue %dx.types.CBufRet.f32 %2107, 0
  %2109 = extractvalue %dx.types.CBufRet.f32 %2107, 1
  %2110 = fsub fast float %2106, %2108
  %2111 = fdiv fast float %2110, %2109
  %2112 = call float @dx.op.unary.f32(i32 7, float %2111)  ; Saturate(value)
  %2113 = fmul fast float %2112, 2.000000e+00
  %2114 = fsub fast float 3.000000e+00, %2113
  %2115 = fmul fast float %2112, %2112
  %2116 = fmul fast float %2115, %2114
  %2117 = fcmp fast oge float %2096, 0.000000e+00
  %2118 = fcmp fast ole float %2096, 1.000000e+00
  %2119 = and i1 %2118, %2117
  %2120 = fcmp fast oge float %2097, 0.000000e+00
  %2121 = and i1 %2120, %2119
  %2122 = fcmp fast ole float %2097, 1.000000e+00
  %2123 = and i1 %2122, %2121
  %2124 = fcmp fast ogt float %2116, 0.000000e+00
  %2125 = and i1 %2124, %2123
  br i1 %2125, label %2126, label %2249, !dx.controlflow.hints !87

; <label>:2126                                    ; preds = %2081
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %2129 = extractvalue %dx.types.CBufRet.f32 %2127, 3
  %2130 = fmul fast float %2128, %2096
  %2131 = fmul fast float %2129, %2097
  %2132 = call float @dx.op.unary.f32(i32 27, float %2130)  ; Round_ni(value)
  %2133 = call float @dx.op.unary.f32(i32 27, float %2131)  ; Round_ni(value)
  %2134 = fptosi float %2132 to i32
  %2135 = fptosi float %2133 to i32
  %2136 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %35, i32 0, i32 %2134, i32 %2135, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = lshr i32 %2137, 16
  %2139 = icmp eq i32 %2138, 65535
  br i1 %2139, label %2249, label %2140

; <label>:2140                                    ; preds = %2126
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = fmul fast float %2142, %2096
  %2144 = extractvalue %dx.types.CBufRet.f32 %2141, 1
  %2145 = fadd fast float %2143, %2144
  %2146 = extractvalue %dx.types.CBufRet.f32 %2141, 2
  %2147 = fmul fast float %2146, %2097
  %2148 = extractvalue %dx.types.CBufRet.f32 %2141, 3
  %2149 = fadd fast float %2147, %2148
  %2150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %2145, float %2149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2151 = extractvalue %dx.types.ResRet.f32 %2150, 0
  %2152 = extractvalue %dx.types.ResRet.f32 %2150, 1
  %2153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.f32 %2153, 1
  %2155 = extractvalue %dx.types.CBufRet.f32 %2153, 0
  %2156 = fsub fast float %2154, %2155
  %2157 = fmul fast float %2156, %2151
  %2158 = fadd fast float %2157, %2155
  %2159 = extractvalue %dx.types.CBufRet.f32 %2153, 3
  %2160 = extractvalue %dx.types.CBufRet.f32 %2153, 2
  %2161 = fsub fast float %2159, %2160
  %2162 = fmul fast float %2161, %2152
  %2163 = fadd fast float %2162, %2160
  %2164 = fsub fast float %2083, %2158
  %2165 = fsub fast float %2163, %2158
  %2166 = fdiv fast float %2164, %2165
  %2167 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2168 = extractvalue %dx.types.CBufRet.f32 %2077, 1
  %2169 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2170 = extractvalue %dx.types.CBufRet.f32 %2127, 1
  %2171 = fmul fast float %2169, %2096
  %2172 = fmul fast float %2170, %2097
  %2173 = fmul fast float %2171, 1.250000e-01
  %2174 = fmul fast float %2172, 1.250000e-01
  %2175 = call float @dx.op.unary.f32(i32 27, float %2173)  ; Round_ni(value)
  %2176 = call float @dx.op.unary.f32(i32 27, float %2174)  ; Round_ni(value)
  %2177 = fmul fast float %2175, 8.000000e+00
  %2178 = fmul fast float %2176, 8.000000e+00
  %2179 = fsub fast float %2171, %2177
  %2180 = fsub fast float %2172, %2178
  %2181 = fadd fast float %2179, 5.000000e-01
  %2182 = fadd fast float %2180, 5.000000e-01
  %2183 = and i32 %2138, 255
  %2184 = lshr i32 %2137, 24
  %2185 = mul nuw nsw i32 %2183, 9
  %2186 = uitofp i32 %2185 to float
  %2187 = mul nuw nsw i32 %2184, 9
  %2188 = uitofp i32 %2187 to float
  %2189 = fadd fast float %2181, %2186
  %2190 = fadd fast float %2182, %2188
  %2191 = fdiv fast float %2189, %2078
  %2192 = fdiv fast float %2190, %2168
  %2193 = fmul fast float %2167, 4.375000e-01
  %2194 = fadd fast float %2193, 3.125000e-02
  %2195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2191, float %2192, float %2194, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2196 = extractvalue %dx.types.ResRet.f32 %2195, 0
  %2197 = extractvalue %dx.types.ResRet.f32 %2195, 1
  %2198 = extractvalue %dx.types.ResRet.f32 %2195, 2
  %2199 = fadd fast float %2193, 5.312500e-01
  %2200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2191, float %2192, float %2199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2201 = extractvalue %dx.types.ResRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.ResRet.f32 %2200, 1
  %2203 = extractvalue %dx.types.ResRet.f32 %2200, 2
  %2204 = fmul fast float %2201, 2.000000e+00
  %2205 = fmul fast float %2202, 2.000000e+00
  %2206 = fmul fast float %2203, 2.000000e+00
  %2207 = fadd fast float %2204, -1.000000e+00
  %2208 = fadd fast float %2205, -1.000000e+00
  %2209 = fadd fast float %2206, -1.000000e+00
  %2210 = fmul fast float %2207, %2207
  %2211 = fmul fast float %2208, %2208
  %2212 = fadd fast float %2210, %2211
  %2213 = fmul fast float %2209, %2209
  %2214 = fadd fast float %2212, %2213
  %2215 = call float @dx.op.unary.f32(i32 24, float %2214)  ; Sqrt(value)
  %2216 = fcmp fast ogt float %2215, 0.000000e+00
  br i1 %2216, label %2217, label %2221

; <label>:2217                                    ; preds = %2140
  %2218 = fdiv fast float %2207, %2215
  %2219 = fdiv fast float %2208, %2215
  %2220 = fdiv fast float %2209, %2215
  br label %2221

; <label>:2221                                    ; preds = %2217, %2140
  %2222 = phi float [ %2218, %2217 ], [ 0.000000e+00, %2140 ]
  %2223 = phi float [ %2219, %2217 ], [ 0.000000e+00, %2140 ]
  %2224 = phi float [ %2220, %2217 ], [ 0.000000e+00, %2140 ]
  %2225 = call float @dx.op.dot3.f32(i32 55, float %2222, float %2223, float %2224, float %1903, float %1904, float %1905)  ; Dot3(ax,ay,az,bx,by,bz)
  %2226 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2225)  ; FMax(a,b)
  %2227 = fmul fast float %2226, 0x400C5BF8A0000000
  %2228 = fmul fast float %2196, %2116
  %2229 = fmul fast float %2228, %2227
  %2230 = fmul fast float %2197, %2116
  %2231 = fmul fast float %2230, %2227
  %2232 = fmul fast float %2198, %2116
  %2233 = fmul fast float %2232, %2227
  %2234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2234, 3
  %2236 = fmul fast float %2229, %2235
  %2237 = fmul fast float %2231, %2235
  %2238 = fmul fast float %2233, %2235
  %2239 = fcmp fast ogt float %2083, %2163
  br i1 %2239, label %2240, label %2249

; <label>:2240                                    ; preds = %2221
  %2241 = fmul fast float %2165, 0x3FC24924A0000000
  %2242 = fsub fast float %2083, %2163
  %2243 = fdiv fast float %2242, %2241
  %2244 = call float @dx.op.unary.f32(i32 7, float %2243)  ; Saturate(value)
  %2245 = fsub fast float 1.000000e+00, %2244
  %2246 = fmul fast float %2245, %2236
  %2247 = fmul fast float %2245, %2237
  %2248 = fmul fast float %2245, %2238
  br label %2249

; <label>:2249                                    ; preds = %2240, %2221, %2126, %2081
  %2250 = phi float [ %2248, %2240 ], [ %2238, %2221 ], [ 0.000000e+00, %2126 ], [ 0.000000e+00, %2081 ]
  %2251 = phi float [ %2247, %2240 ], [ %2237, %2221 ], [ 0.000000e+00, %2126 ], [ 0.000000e+00, %2081 ]
  %2252 = phi float [ %2246, %2240 ], [ %2236, %2221 ], [ 0.000000e+00, %2126 ], [ 0.000000e+00, %2081 ]
  %2253 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2252)  ; FMax(a,b)
  %2254 = fmul fast float %2253, 0x3FD20DD760000000
  %2255 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %2256 = fmul fast float %2255, 0x3FDF454380000000
  %2257 = fmul fast float %2255, %2255
  %2258 = fmul fast float %2257, 0x3FEE471020000000
  %2259 = fadd fast float %2258, 0xBFD42F6020000000
  %2260 = call float @dx.op.dot3.f32(i32 55, float %2253, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2256, float %2259)  ; Dot3(ax,ay,az,bx,by,bz)
  %2261 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2251)  ; FMax(a,b)
  %2262 = fmul fast float %2261, 0x3FD20DD760000000
  %2263 = call float @dx.op.dot3.f32(i32 55, float %2261, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2256, float %2259)  ; Dot3(ax,ay,az,bx,by,bz)
  %2264 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2250)  ; FMax(a,b)
  %2265 = fmul fast float %2264, 0x3FD20DD760000000
  %2266 = call float @dx.op.dot3.f32(i32 55, float %2264, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2256, float %2259)  ; Dot3(ax,ay,az,bx,by,bz)
  %2267 = call float @dx.op.binary.f32(i32 35, float %2254, float 0.000000e+00)  ; FMax(a,b)
  %2268 = call float @dx.op.binary.f32(i32 35, float %2262, float 0.000000e+00)  ; FMax(a,b)
  %2269 = call float @dx.op.binary.f32(i32 35, float %2265, float 0.000000e+00)  ; FMax(a,b)
  %2270 = call float @dx.op.binary.f32(i32 35, float %2260, float 0.000000e+00)  ; FMax(a,b)
  %2271 = call float @dx.op.binary.f32(i32 35, float %2263, float 0.000000e+00)  ; FMax(a,b)
  %2272 = call float @dx.op.binary.f32(i32 35, float %2266, float 0.000000e+00)  ; FMax(a,b)
  %2273 = fmul fast float %2267, %1970
  %2274 = fmul fast float %2268, %1970
  %2275 = fmul fast float %2269, %1970
  %2276 = fadd fast float %2273, %2074
  %2277 = fadd fast float %2274, %2075
  %2278 = fadd fast float %2275, %2076
  %2279 = fmul fast float %2270, %1970
  %2280 = fmul fast float %2271, %1970
  %2281 = fmul fast float %2272, %1970
  %2282 = fadd fast float %2279, %2071
  %2283 = fadd fast float %2280, %2072
  %2284 = fadd fast float %2281, %2073
  br label %2285

; <label>:2285                                    ; preds = %2249, %2070
  %2286 = phi float [ %2282, %2249 ], [ %2071, %2070 ]
  %2287 = phi float [ %2283, %2249 ], [ %2072, %2070 ]
  %2288 = phi float [ %2284, %2249 ], [ %2073, %2070 ]
  %2289 = phi float [ %2276, %2249 ], [ %2074, %2070 ]
  %2290 = phi float [ %2277, %2249 ], [ %2075, %2070 ]
  %2291 = phi float [ %2278, %2249 ], [ %2076, %2070 ]
  %2292 = fcmp fast olt float %1970, 1.000000e+00
  br i1 %2292, label %2293, label %3111, !dx.controlflow.hints !88

; <label>:2293                                    ; preds = %2285
  %2294 = extractvalue %dx.types.CBufRet.f32 %1926, 2
  %2295 = fadd fast float %2294, %126
  %2296 = fmul fast float %1903, 3.200000e+01
  %2297 = fmul fast float %1904, 3.200000e+01
  %2298 = fadd fast float %1929, %2296
  %2299 = fadd fast float %1930, %2297
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.CBufRet.f32 %2300, 1
  %2303 = fsub fast float %2298, %2301
  %2304 = fsub fast float %2299, %2302
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.CBufRet.f32 %2305, 1
  %2308 = fmul fast float %2303, %2306
  %2309 = fmul fast float %2304, %2307
  %2310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2311 = extractvalue %dx.types.CBufRet.f32 %2310, 0
  %2312 = fmul fast float %2308, %2311
  %2313 = extractvalue %dx.types.CBufRet.f32 %2310, 1
  %2314 = fadd fast float %2312, %2313
  %2315 = extractvalue %dx.types.CBufRet.f32 %2310, 2
  %2316 = fmul fast float %2315, %2309
  %2317 = extractvalue %dx.types.CBufRet.f32 %2310, 3
  %2318 = fadd fast float %2316, %2317
  %2319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %2314, float %2318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  %2321 = extractvalue %dx.types.ResRet.f32 %2319, 1
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 1
  %2324 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2325 = fsub fast float %2323, %2324
  %2326 = fmul fast float %2325, %2320
  %2327 = fadd fast float %2326, %2324
  %2328 = extractvalue %dx.types.CBufRet.f32 %2322, 3
  %2329 = extractvalue %dx.types.CBufRet.f32 %2322, 2
  %2330 = fsub fast float %2328, %2329
  %2331 = fmul fast float %2330, %2321
  %2332 = fadd fast float %2331, %2329
  %2333 = fsub fast float %2295, %2327
  %2334 = fsub fast float %2332, %2327
  %2335 = fdiv fast float %2333, %2334
  %2336 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.f32 %2337, 0
  %2339 = fmul fast float %2338, %2336
  %2340 = extractvalue %dx.types.CBufRet.f32 %2337, 1
  %2341 = fadd fast float %2339, %2340
  %2342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %2314, float %2318, float %2341, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2343 = extractvalue %dx.types.ResRet.f32 %2342, 0
  %2344 = extractvalue %dx.types.ResRet.f32 %2342, 1
  %2345 = extractvalue %dx.types.ResRet.f32 %2342, 2
  %2346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2346, 0
  %2348 = extractvalue %dx.types.CBufRet.f32 %2346, 1
  %2349 = extractvalue %dx.types.CBufRet.f32 %2346, 2
  %2350 = fmul fast float %2347, %2343
  %2351 = fmul fast float %2348, %2344
  %2352 = fmul fast float %2349, %2345
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 0
  %2355 = extractvalue %dx.types.CBufRet.f32 %2353, 1
  %2356 = extractvalue %dx.types.CBufRet.f32 %2353, 2
  %2357 = fadd fast float %2350, %2354
  %2358 = fadd fast float %2351, %2355
  %2359 = fadd fast float %2352, %2356
  %2360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2361 = extractvalue %dx.types.CBufRet.f32 %2360, 0
  %2362 = fmul fast float %2361, %2308
  %2363 = extractvalue %dx.types.CBufRet.f32 %2360, 1
  %2364 = fadd fast float %2362, %2363
  %2365 = extractvalue %dx.types.CBufRet.f32 %2360, 2
  %2366 = fmul fast float %2365, %2309
  %2367 = extractvalue %dx.types.CBufRet.f32 %2360, 3
  %2368 = fadd fast float %2366, %2367
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.CBufRet.f32 %2369, 2
  %2373 = extractvalue %dx.types.CBufRet.f32 %2369, 3
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.CBufRet.f32 %2374, 1
  %2377 = extractvalue %dx.types.CBufRet.f32 %2374, 2
  %2378 = extractvalue %dx.types.CBufRet.f32 %2374, 3
  %2379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2364, float %2368, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2380 = extractvalue %dx.types.ResRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.ResRet.f32 %2379, 1
  %2382 = extractvalue %dx.types.ResRet.f32 %2379, 2
  %2383 = extractvalue %dx.types.ResRet.f32 %2379, 3
  %2384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2364, float %2368, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.ResRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.ResRet.f32 %2384, 2
  %2388 = extractvalue %dx.types.ResRet.f32 %2384, 3
  %2389 = fmul fast float %2380, %2357
  %2390 = fmul fast float %2385, %2357
  %2391 = fmul fast float %2387, %2357
  %2392 = fmul fast float %2383, %2357
  %2393 = fadd fast float %2389, %2370
  %2394 = fadd fast float %2390, %2371
  %2395 = fadd fast float %2391, %2372
  %2396 = fadd fast float %2392, %2373
  %2397 = fmul fast float %2381, %2357
  %2398 = fmul fast float %2386, %2357
  %2399 = fadd fast float %2397, %2375
  %2400 = fadd fast float %2398, %2376
  %2401 = fmul fast float %2382, %2357
  %2402 = fmul fast float %2388, %2357
  %2403 = fadd fast float %2401, %2377
  %2404 = fadd fast float %2402, %2378
  %2405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2364, float %2368, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2406 = extractvalue %dx.types.ResRet.f32 %2405, 0
  %2407 = extractvalue %dx.types.ResRet.f32 %2405, 1
  %2408 = extractvalue %dx.types.ResRet.f32 %2405, 2
  %2409 = extractvalue %dx.types.ResRet.f32 %2405, 3
  %2410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2364, float %2368, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2411 = extractvalue %dx.types.ResRet.f32 %2410, 0
  %2412 = extractvalue %dx.types.ResRet.f32 %2410, 1
  %2413 = extractvalue %dx.types.ResRet.f32 %2410, 2
  %2414 = extractvalue %dx.types.ResRet.f32 %2410, 3
  %2415 = fmul fast float %2406, %2358
  %2416 = fmul fast float %2411, %2358
  %2417 = fmul fast float %2413, %2358
  %2418 = fmul fast float %2409, %2358
  %2419 = fadd fast float %2393, %2415
  %2420 = fadd fast float %2394, %2416
  %2421 = fadd fast float %2395, %2417
  %2422 = fadd fast float %2396, %2418
  %2423 = fmul fast float %2407, %2358
  %2424 = fmul fast float %2412, %2358
  %2425 = fadd fast float %2399, %2423
  %2426 = fadd fast float %2400, %2424
  %2427 = fmul fast float %2408, %2358
  %2428 = fmul fast float %2414, %2358
  %2429 = fadd fast float %2403, %2427
  %2430 = fadd fast float %2404, %2428
  %2431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2364, float %2368, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2432 = extractvalue %dx.types.ResRet.f32 %2431, 0
  %2433 = extractvalue %dx.types.ResRet.f32 %2431, 1
  %2434 = extractvalue %dx.types.ResRet.f32 %2431, 2
  %2435 = extractvalue %dx.types.ResRet.f32 %2431, 3
  %2436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2364, float %2368, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2437 = extractvalue %dx.types.ResRet.f32 %2436, 0
  %2438 = extractvalue %dx.types.ResRet.f32 %2436, 1
  %2439 = extractvalue %dx.types.ResRet.f32 %2436, 2
  %2440 = extractvalue %dx.types.ResRet.f32 %2436, 3
  %2441 = fmul fast float %2432, %2359
  %2442 = fmul fast float %2437, %2359
  %2443 = fmul fast float %2439, %2359
  %2444 = fmul fast float %2435, %2359
  %2445 = fadd fast float %2419, %2441
  %2446 = fadd fast float %2420, %2442
  %2447 = fadd fast float %2421, %2443
  %2448 = fadd fast float %2422, %2444
  %2449 = fmul fast float %2433, %2359
  %2450 = fmul fast float %2438, %2359
  %2451 = fadd fast float %2425, %2449
  %2452 = fadd fast float %2426, %2450
  %2453 = fmul fast float %2434, %2359
  %2454 = fmul fast float %2440, %2359
  %2455 = fadd fast float %2429, %2453
  %2456 = fadd fast float %2430, %2454
  %2457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2458 = extractvalue %dx.types.CBufRet.f32 %2457, 0
  %2459 = fsub fast float %1929, %2458
  %2460 = fsub fast float %2301, %1929
  %2461 = call float @dx.op.binary.f32(i32 35, float %2460, float %2459)  ; FMax(a,b)
  %2462 = extractvalue %dx.types.CBufRet.f32 %2457, 1
  %2463 = fsub fast float %1930, %2462
  %2464 = fsub fast float %2302, %1930
  %2465 = call float @dx.op.binary.f32(i32 35, float %2464, float %2463)  ; FMax(a,b)
  %2466 = call float @dx.op.binary.f32(i32 35, float %2461, float %2465)  ; FMax(a,b)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2305, 3
  %2468 = fmul fast float %2467, %2466
  %2469 = call float @dx.op.unary.f32(i32 7, float %2468)  ; Saturate(value)
  %2470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2471 = extractvalue %dx.types.CBufRet.f32 %2470, 0
  %2472 = extractvalue %dx.types.CBufRet.f32 %2470, 1
  %2473 = extractvalue %dx.types.CBufRet.f32 %2470, 2
  %2474 = extractvalue %dx.types.CBufRet.f32 %2470, 3
  %2475 = fsub fast float %2471, %2445
  %2476 = fsub fast float %2472, %2446
  %2477 = fsub fast float %2473, %2447
  %2478 = fsub fast float %2474, %2448
  %2479 = fmul fast float %2475, %2469
  %2480 = fmul fast float %2476, %2469
  %2481 = fmul fast float %2477, %2469
  %2482 = fmul fast float %2478, %2469
  %2483 = fadd fast float %2479, %2445
  %2484 = fadd fast float %2480, %2446
  %2485 = fadd fast float %2481, %2447
  %2486 = fadd fast float %2482, %2448
  %2487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2488 = extractvalue %dx.types.CBufRet.f32 %2487, 0
  %2489 = extractvalue %dx.types.CBufRet.f32 %2487, 1
  %2490 = fsub fast float %2488, %2451
  %2491 = fsub fast float %2489, %2452
  %2492 = fmul fast float %2490, %2469
  %2493 = fmul fast float %2491, %2469
  %2494 = fadd fast float %2492, %2451
  %2495 = fadd fast float %2493, %2452
  %2496 = extractvalue %dx.types.CBufRet.f32 %2487, 2
  %2497 = extractvalue %dx.types.CBufRet.f32 %2487, 3
  %2498 = fsub fast float %2496, %2455
  %2499 = fsub fast float %2497, %2456
  %2500 = fmul fast float %2498, %2469
  %2501 = fmul fast float %2499, %2469
  %2502 = fadd fast float %2500, %2455
  %2503 = fadd fast float %2501, %2456
  %2504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2505 = extractvalue %dx.types.CBufRet.f32 %2504, 0
  %2506 = fmul fast float %2505, %2483
  %2507 = fmul fast float %2505, %2484
  %2508 = fmul fast float %2505, %2485
  %2509 = fmul fast float %2505, %2486
  %2510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2510, 0
  %2512 = fmul fast float %2511, %2494
  %2513 = fmul fast float %2511, %2495
  %2514 = fadd fast float %2512, %2506
  %2515 = fadd fast float %2513, %2508
  %2516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2517 = extractvalue %dx.types.CBufRet.f32 %2516, 0
  %2518 = fmul fast float %2517, %2502
  %2519 = fmul fast float %2517, %2503
  %2520 = fadd fast float %2514, %2518
  %2521 = fadd fast float %2515, %2519
  %2522 = extractvalue %dx.types.CBufRet.f32 %2504, 1
  %2523 = fmul fast float %2522, %2483
  %2524 = fmul fast float %2522, %2484
  %2525 = fmul fast float %2522, %2485
  %2526 = fmul fast float %2522, %2486
  %2527 = extractvalue %dx.types.CBufRet.f32 %2510, 1
  %2528 = fmul fast float %2527, %2494
  %2529 = fmul fast float %2527, %2495
  %2530 = fadd fast float %2528, %2523
  %2531 = fadd fast float %2529, %2525
  %2532 = extractvalue %dx.types.CBufRet.f32 %2516, 1
  %2533 = fmul fast float %2532, %2502
  %2534 = fmul fast float %2532, %2503
  %2535 = fadd fast float %2530, %2533
  %2536 = fadd fast float %2531, %2534
  %2537 = extractvalue %dx.types.CBufRet.f32 %2504, 2
  %2538 = fmul fast float %2537, %2483
  %2539 = fmul fast float %2537, %2484
  %2540 = fmul fast float %2537, %2485
  %2541 = fmul fast float %2537, %2486
  %2542 = extractvalue %dx.types.CBufRet.f32 %2510, 2
  %2543 = fmul fast float %2542, %2494
  %2544 = fmul fast float %2542, %2495
  %2545 = fadd fast float %2543, %2538
  %2546 = fadd fast float %2544, %2540
  %2547 = extractvalue %dx.types.CBufRet.f32 %2516, 2
  %2548 = fmul fast float %2547, %2502
  %2549 = fmul fast float %2547, %2503
  %2550 = fadd fast float %2545, %2548
  %2551 = fadd fast float %2546, %2549
  %2552 = fmul fast float %2539, %2539
  %2553 = fmul fast float %2551, %2551
  %2554 = fmul fast float %2541, %2541
  %2555 = fadd fast float %2554, %2552
  %2556 = fadd fast float %2555, %2553
  %2557 = call float @dx.op.unary.f32(i32 24, float %2556)  ; Sqrt(value)
  %2558 = fcmp fast ugt float %2557, 0.000000e+00
  br i1 %2558, label %2559, label %2574

; <label>:2559                                    ; preds = %2293
  %2560 = fsub fast float -0.000000e+00, %2541
  %2561 = fdiv fast float %2560, %2557
  %2562 = fsub fast float -0.000000e+00, %2539
  %2563 = fdiv fast float %2562, %2557
  %2564 = fdiv fast float %2551, %2557
  %2565 = fmul fast float %2550, 0x3FE279A760000000
  %2566 = fmul fast float %2563, %2539
  %2567 = fmul fast float %2564, %2551
  %2568 = fmul fast float %2561, %2541
  %2569 = fadd fast float %2566, %2568
  %2570 = fsub fast float %2569, %2567
  %2571 = call float @dx.op.unary.f32(i32 6, float %2570)  ; FAbs(value)
  %2572 = fadd fast float %2571, 0x3DDB7CDFE0000000
  %2573 = fdiv fast float %2565, %2572
  br label %2574

; <label>:2574                                    ; preds = %2559, %2293
  %2575 = phi float [ %2573, %2559 ], [ 1.000000e+00, %2293 ]
  %2576 = fmul fast float %2524, %2524
  %2577 = fmul fast float %2536, %2536
  %2578 = fmul fast float %2526, %2526
  %2579 = fadd fast float %2578, %2576
  %2580 = fadd fast float %2579, %2577
  %2581 = call float @dx.op.unary.f32(i32 24, float %2580)  ; Sqrt(value)
  %2582 = fcmp fast ugt float %2581, 0.000000e+00
  br i1 %2582, label %2583, label %2598

; <label>:2583                                    ; preds = %2574
  %2584 = fsub fast float -0.000000e+00, %2526
  %2585 = fdiv fast float %2584, %2581
  %2586 = fsub fast float -0.000000e+00, %2524
  %2587 = fdiv fast float %2586, %2581
  %2588 = fdiv fast float %2536, %2581
  %2589 = fmul fast float %2535, 0x3FE279A760000000
  %2590 = fmul fast float %2587, %2524
  %2591 = fmul fast float %2588, %2536
  %2592 = fmul fast float %2585, %2526
  %2593 = fadd fast float %2590, %2592
  %2594 = fsub fast float %2593, %2591
  %2595 = call float @dx.op.unary.f32(i32 6, float %2594)  ; FAbs(value)
  %2596 = fadd fast float %2595, 0x3DDB7CDFE0000000
  %2597 = fdiv fast float %2589, %2596
  br label %2598

; <label>:2598                                    ; preds = %2583, %2574
  %2599 = phi float [ %2597, %2583 ], [ 1.000000e+00, %2574 ]
  %2600 = call float @dx.op.binary.f32(i32 36, float %2599, float %2575)  ; FMin(a,b)
  %2601 = fmul fast float %2507, %2507
  %2602 = fmul fast float %2521, %2521
  %2603 = fmul fast float %2509, %2509
  %2604 = fadd fast float %2603, %2601
  %2605 = fadd fast float %2604, %2602
  %2606 = call float @dx.op.unary.f32(i32 24, float %2605)  ; Sqrt(value)
  %2607 = fcmp fast ugt float %2606, 0.000000e+00
  br i1 %2607, label %2608, label %2623

; <label>:2608                                    ; preds = %2598
  %2609 = fsub fast float -0.000000e+00, %2509
  %2610 = fdiv fast float %2609, %2606
  %2611 = fsub fast float -0.000000e+00, %2507
  %2612 = fdiv fast float %2611, %2606
  %2613 = fdiv fast float %2521, %2606
  %2614 = fmul fast float %2520, 0x3FE279A760000000
  %2615 = fmul fast float %2612, %2507
  %2616 = fmul fast float %2613, %2521
  %2617 = fmul fast float %2610, %2509
  %2618 = fadd fast float %2615, %2617
  %2619 = fsub fast float %2618, %2616
  %2620 = call float @dx.op.unary.f32(i32 6, float %2619)  ; FAbs(value)
  %2621 = fadd fast float %2620, 0x3DDB7CDFE0000000
  %2622 = fdiv fast float %2614, %2621
  br label %2623

; <label>:2623                                    ; preds = %2608, %2598
  %2624 = phi float [ %2622, %2608 ], [ 1.000000e+00, %2598 ]
  %2625 = call float @dx.op.binary.f32(i32 36, float %2624, float %2600)  ; FMin(a,b)
  %2626 = call float @dx.op.unary.f32(i32 7, float %2625)  ; Saturate(value)
  %2627 = fcmp fast olt float %2626, 1.000000e+00
  br i1 %2627, label %2628, label %2638

; <label>:2628                                    ; preds = %2623
  %2629 = fmul fast float %2626, %2507
  %2630 = fmul fast float %2626, %2521
  %2631 = fmul fast float %2626, %2509
  %2632 = fmul fast float %2626, %2524
  %2633 = fmul fast float %2626, %2536
  %2634 = fmul fast float %2626, %2526
  %2635 = fmul fast float %2626, %2539
  %2636 = fmul fast float %2626, %2551
  %2637 = fmul fast float %2626, %2541
  br label %2638

; <label>:2638                                    ; preds = %2628, %2623
  %2639 = phi float [ %2635, %2628 ], [ %2539, %2623 ]
  %2640 = phi float [ %2636, %2628 ], [ %2551, %2623 ]
  %2641 = phi float [ %2637, %2628 ], [ %2541, %2623 ]
  %2642 = phi float [ %2632, %2628 ], [ %2524, %2623 ]
  %2643 = phi float [ %2633, %2628 ], [ %2536, %2623 ]
  %2644 = phi float [ %2634, %2628 ], [ %2526, %2623 ]
  %2645 = phi float [ %2629, %2628 ], [ %2507, %2623 ]
  %2646 = phi float [ %2630, %2628 ], [ %2521, %2623 ]
  %2647 = phi float [ %2631, %2628 ], [ %2509, %2623 ]
  %2648 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2520)  ; FMax(a,b)
  %2649 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2535)  ; FMax(a,b)
  %2650 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2550)  ; FMax(a,b)
  %2651 = fcmp fast oge float %2308, 0.000000e+00
  %2652 = and i1 %2651, %2079
  %2653 = fcmp fast ole float %2308, 1.000000e+00
  %2654 = and i1 %2653, %2652
  %2655 = fcmp fast oge float %2309, 0.000000e+00
  %2656 = and i1 %2655, %2654
  %2657 = fcmp fast ole float %2309, 1.000000e+00
  %2658 = and i1 %2657, %2656
  br i1 %2658, label %2659, label %2804, !dx.controlflow.hints !89

; <label>:2659                                    ; preds = %2638
  %2660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2661 = extractvalue %dx.types.CBufRet.f32 %2660, 2
  %2662 = extractvalue %dx.types.CBufRet.f32 %2660, 3
  %2663 = fmul fast float %2661, %2308
  %2664 = fmul fast float %2662, %2309
  %2665 = call float @dx.op.unary.f32(i32 27, float %2663)  ; Round_ni(value)
  %2666 = call float @dx.op.unary.f32(i32 27, float %2664)  ; Round_ni(value)
  %2667 = fptosi float %2665 to i32
  %2668 = fptosi float %2666 to i32
  %2669 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %35, i32 0, i32 %2667, i32 %2668, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = and i32 %2670, 65535
  %2672 = lshr i32 %2670, 16
  %2673 = icmp eq i32 %2671, 65535
  br i1 %2673, label %2710, label %2674

; <label>:2674                                    ; preds = %2659
  %2675 = extractvalue %dx.types.CBufRet.f32 %2077, 1
  %2676 = extractvalue %dx.types.CBufRet.f32 %2660, 0
  %2677 = extractvalue %dx.types.CBufRet.f32 %2660, 1
  %2678 = fmul fast float %2676, %2308
  %2679 = fmul fast float %2677, %2309
  %2680 = fmul fast float %2678, 1.250000e-01
  %2681 = fmul fast float %2679, 1.250000e-01
  %2682 = call float @dx.op.unary.f32(i32 27, float %2680)  ; Round_ni(value)
  %2683 = call float @dx.op.unary.f32(i32 27, float %2681)  ; Round_ni(value)
  %2684 = fmul fast float %2682, 8.000000e+00
  %2685 = fmul fast float %2683, 8.000000e+00
  %2686 = and i32 %2670, 255
  %2687 = lshr i32 %2670, 8
  %2688 = and i32 %2687, 255
  %2689 = mul nuw nsw i32 %2686, 9
  %2690 = uitofp i32 %2689 to float
  %2691 = mul nuw nsw i32 %2688, 9
  %2692 = uitofp i32 %2691 to float
  %2693 = fadd fast float %2690, 5.000000e-01
  %2694 = fadd fast float %2693, %2678
  %2695 = fsub fast float %2694, %2684
  %2696 = fadd fast float %2692, 5.000000e-01
  %2697 = fadd fast float %2696, %2679
  %2698 = fsub fast float %2697, %2685
  %2699 = fdiv fast float %2695, %2078
  %2700 = fdiv fast float %2698, %2675
  %2701 = fmul fast float %2336, 4.375000e-01
  %2702 = fadd fast float %2701, 3.125000e-02
  %2703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2699, float %2700, float %2702, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2704 = extractvalue %dx.types.ResRet.f32 %2703, 0
  %2705 = extractvalue %dx.types.ResRet.f32 %2703, 1
  %2706 = extractvalue %dx.types.ResRet.f32 %2703, 2
  %2707 = fadd fast float %2704, %2648
  %2708 = fadd fast float %2705, %2649
  %2709 = fadd fast float %2706, %2650
  br label %2710

; <label>:2710                                    ; preds = %2674, %2659
  %2711 = phi float [ %2709, %2674 ], [ %2650, %2659 ]
  %2712 = phi float [ %2708, %2674 ], [ %2649, %2659 ]
  %2713 = phi float [ %2707, %2674 ], [ %2648, %2659 ]
  %2714 = icmp eq i32 %2672, 65535
  br i1 %2714, label %2804, label %2715

; <label>:2715                                    ; preds = %2710
  %2716 = extractvalue %dx.types.CBufRet.f32 %2077, 1
  %2717 = extractvalue %dx.types.CBufRet.f32 %2660, 0
  %2718 = extractvalue %dx.types.CBufRet.f32 %2660, 1
  %2719 = fmul fast float %2717, %2308
  %2720 = fmul fast float %2718, %2309
  %2721 = fmul fast float %2719, 1.250000e-01
  %2722 = fmul fast float %2720, 1.250000e-01
  %2723 = call float @dx.op.unary.f32(i32 27, float %2721)  ; Round_ni(value)
  %2724 = call float @dx.op.unary.f32(i32 27, float %2722)  ; Round_ni(value)
  %2725 = fmul fast float %2723, 8.000000e+00
  %2726 = fmul fast float %2724, 8.000000e+00
  %2727 = fsub fast float %2719, %2725
  %2728 = fsub fast float %2720, %2726
  %2729 = fadd fast float %2727, 5.000000e-01
  %2730 = fadd fast float %2728, 5.000000e-01
  %2731 = and i32 %2672, 255
  %2732 = lshr i32 %2670, 24
  %2733 = mul nuw nsw i32 %2731, 9
  %2734 = uitofp i32 %2733 to float
  %2735 = mul nuw nsw i32 %2732, 9
  %2736 = uitofp i32 %2735 to float
  %2737 = fadd fast float %2729, %2734
  %2738 = fadd fast float %2730, %2736
  %2739 = fdiv fast float %2737, %2078
  %2740 = fdiv fast float %2738, %2716
  %2741 = fmul fast float %2336, 4.375000e-01
  %2742 = fadd fast float %2741, 3.125000e-02
  %2743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2739, float %2740, float %2742, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.ResRet.f32 %2743, 1
  %2746 = extractvalue %dx.types.ResRet.f32 %2743, 2
  %2747 = fadd fast float %2741, 5.312500e-01
  %2748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2739, float %2740, float %2747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2749 = extractvalue %dx.types.ResRet.f32 %2748, 0
  %2750 = extractvalue %dx.types.ResRet.f32 %2748, 1
  %2751 = extractvalue %dx.types.ResRet.f32 %2748, 2
  %2752 = fmul fast float %2749, 2.000000e+00
  %2753 = fmul fast float %2750, 2.000000e+00
  %2754 = fmul fast float %2751, 2.000000e+00
  %2755 = fadd fast float %2752, -1.000000e+00
  %2756 = fadd fast float %2753, -1.000000e+00
  %2757 = fadd fast float %2754, -1.000000e+00
  %2758 = fmul fast float %2755, %2755
  %2759 = fmul fast float %2756, %2756
  %2760 = fadd fast float %2758, %2759
  %2761 = fmul fast float %2757, %2757
  %2762 = fadd fast float %2760, %2761
  %2763 = call float @dx.op.unary.f32(i32 24, float %2762)  ; Sqrt(value)
  %2764 = fcmp fast ogt float %2763, 0.000000e+00
  br i1 %2764, label %2765, label %2769

; <label>:2765                                    ; preds = %2715
  %2766 = fdiv fast float %2755, %2763
  %2767 = fdiv fast float %2756, %2763
  %2768 = fdiv fast float %2757, %2763
  br label %2769

; <label>:2769                                    ; preds = %2765, %2715
  %2770 = phi float [ %2766, %2765 ], [ 0.000000e+00, %2715 ]
  %2771 = phi float [ %2767, %2765 ], [ 0.000000e+00, %2715 ]
  %2772 = phi float [ %2768, %2765 ], [ 0.000000e+00, %2715 ]
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 0
  %2775 = extractvalue %dx.types.CBufRet.f32 %2773, 1
  %2776 = fsub fast float %1929, %2774
  %2777 = fsub fast float %1930, %2775
  %2778 = fmul fast float %2776, %2776
  %2779 = fmul fast float %2777, %2777
  %2780 = fadd fast float %2778, %2779
  %2781 = call float @dx.op.unary.f32(i32 24, float %2780)  ; Sqrt(value)
  %2782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2783 = extractvalue %dx.types.CBufRet.f32 %2782, 0
  %2784 = extractvalue %dx.types.CBufRet.f32 %2782, 1
  %2785 = fsub fast float %2781, %2783
  %2786 = fdiv fast float %2785, %2784
  %2787 = call float @dx.op.unary.f32(i32 7, float %2786)  ; Saturate(value)
  %2788 = fmul fast float %2787, 2.000000e+00
  %2789 = fsub fast float 3.000000e+00, %2788
  %2790 = fmul fast float %2787, %2787
  %2791 = fmul fast float %2790, %2789
  %2792 = call float @dx.op.dot3.f32(i32 55, float %2770, float %2771, float %2772, float %1903, float %1904, float %1905)  ; Dot3(ax,ay,az,bx,by,bz)
  %2793 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2792)  ; FMax(a,b)
  %2794 = fmul fast float %2793, 0x400C5BF8A0000000
  %2795 = fmul fast float %2791, %2744
  %2796 = fmul fast float %2795, %2794
  %2797 = fadd fast float %2796, %2713
  %2798 = fmul fast float %2791, %2745
  %2799 = fmul fast float %2798, %2794
  %2800 = fadd fast float %2799, %2712
  %2801 = fmul fast float %2791, %2746
  %2802 = fmul fast float %2801, %2794
  %2803 = fadd fast float %2802, %2711
  br label %2804

; <label>:2804                                    ; preds = %2769, %2710, %2638
  %2805 = phi float [ %2803, %2769 ], [ %2711, %2710 ], [ %2650, %2638 ]
  %2806 = phi float [ %2800, %2769 ], [ %2712, %2710 ], [ %2649, %2638 ]
  %2807 = phi float [ %2797, %2769 ], [ %2713, %2710 ], [ %2648, %2638 ]
  %2808 = fcmp fast ogt float %2295, %2332
  %2809 = and i1 %2651, %2808
  %2810 = and i1 %2653, %2809
  %2811 = and i1 %2655, %2810
  %2812 = and i1 %2657, %2811
  br i1 %2812, label %2813, label %2870, !dx.controlflow.hints !90

; <label>:2813                                    ; preds = %2804
  %2814 = fmul fast float %2334, 0x3FC24924A0000000
  %2815 = fsub fast float %2295, %2332
  %2816 = fdiv fast float %2815, %2814
  %2817 = call float @dx.op.unary.f32(i32 7, float %2816)  ; Saturate(value)
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 0
  %2820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.f32 %2820, 0
  %2822 = extractvalue %dx.types.CBufRet.f32 %2820, 1
  %2823 = extractvalue %dx.types.CBufRet.f32 %2820, 2
  %2824 = fsub fast float %2819, %2807
  %2825 = fsub fast float %2821, %2645
  %2826 = fsub fast float %2822, %2646
  %2827 = fsub fast float %2823, %2647
  %2828 = fmul fast float %2824, %2817
  %2829 = fmul fast float %2825, %2817
  %2830 = fmul fast float %2826, %2817
  %2831 = fmul fast float %2827, %2817
  %2832 = fadd fast float %2828, %2807
  %2833 = fadd fast float %2829, %2645
  %2834 = fadd fast float %2830, %2646
  %2835 = fadd fast float %2831, %2647
  %2836 = extractvalue %dx.types.CBufRet.f32 %2818, 1
  %2837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2838 = extractvalue %dx.types.CBufRet.f32 %2837, 0
  %2839 = extractvalue %dx.types.CBufRet.f32 %2837, 1
  %2840 = extractvalue %dx.types.CBufRet.f32 %2837, 2
  %2841 = fsub fast float %2836, %2806
  %2842 = fsub fast float %2838, %2642
  %2843 = fsub fast float %2839, %2643
  %2844 = fsub fast float %2840, %2644
  %2845 = fmul fast float %2841, %2817
  %2846 = fmul fast float %2842, %2817
  %2847 = fmul fast float %2843, %2817
  %2848 = fmul fast float %2844, %2817
  %2849 = fadd fast float %2845, %2806
  %2850 = fadd fast float %2846, %2642
  %2851 = fadd fast float %2847, %2643
  %2852 = fadd fast float %2848, %2644
  %2853 = extractvalue %dx.types.CBufRet.f32 %2818, 2
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %2857 = extractvalue %dx.types.CBufRet.f32 %2854, 2
  %2858 = fsub fast float %2853, %2805
  %2859 = fsub fast float %2855, %2639
  %2860 = fsub fast float %2856, %2640
  %2861 = fsub fast float %2857, %2641
  %2862 = fmul fast float %2858, %2817
  %2863 = fmul fast float %2859, %2817
  %2864 = fmul fast float %2860, %2817
  %2865 = fmul fast float %2861, %2817
  %2866 = fadd fast float %2862, %2805
  %2867 = fadd fast float %2863, %2639
  %2868 = fadd fast float %2864, %2640
  %2869 = fadd fast float %2865, %2641
  br label %2870

; <label>:2870                                    ; preds = %2813, %2804
  %2871 = phi float [ %2866, %2813 ], [ %2805, %2804 ]
  %2872 = phi float [ %2867, %2813 ], [ %2639, %2804 ]
  %2873 = phi float [ %2868, %2813 ], [ %2640, %2804 ]
  %2874 = phi float [ %2869, %2813 ], [ %2641, %2804 ]
  %2875 = phi float [ %2849, %2813 ], [ %2806, %2804 ]
  %2876 = phi float [ %2850, %2813 ], [ %2642, %2804 ]
  %2877 = phi float [ %2851, %2813 ], [ %2643, %2804 ]
  %2878 = phi float [ %2852, %2813 ], [ %2644, %2804 ]
  %2879 = phi float [ %2832, %2813 ], [ %2807, %2804 ]
  %2880 = phi float [ %2833, %2813 ], [ %2645, %2804 ]
  %2881 = phi float [ %2834, %2813 ], [ %2646, %2804 ]
  %2882 = phi float [ %2835, %2813 ], [ %2647, %2804 ]
  %2883 = extractvalue %dx.types.CBufRet.f32 %2457, 3
  %2884 = fmul fast float %2883, %2879
  %2885 = fmul fast float %2883, %2875
  %2886 = fmul fast float %2883, %2871
  %2887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2888 = extractvalue %dx.types.CBufRet.f32 %2887, 3
  %2889 = fmul fast float %2884, %2888
  %2890 = fmul fast float %2885, %2888
  %2891 = fmul fast float %2886, %2888
  %2892 = fmul fast float %2880, 1.500000e+00
  %2893 = fmul fast float %2892, %2883
  %2894 = fmul fast float %2893, %2888
  %2895 = fmul fast float %2881, 1.500000e+00
  %2896 = fmul fast float %2895, %2883
  %2897 = fmul fast float %2896, %2888
  %2898 = fmul fast float %2882, 1.500000e+00
  %2899 = fmul fast float %2898, %2883
  %2900 = fmul fast float %2899, %2888
  %2901 = fmul fast float %2876, 1.500000e+00
  %2902 = fmul fast float %2901, %2883
  %2903 = fmul fast float %2902, %2888
  %2904 = fmul fast float %2877, 1.500000e+00
  %2905 = fmul fast float %2904, %2883
  %2906 = fmul fast float %2905, %2888
  %2907 = fmul fast float %2878, 1.500000e+00
  %2908 = fmul fast float %2907, %2883
  %2909 = fmul fast float %2908, %2888
  %2910 = fmul fast float %2872, 1.500000e+00
  %2911 = fmul fast float %2910, %2883
  %2912 = fmul fast float %2911, %2888
  %2913 = fmul fast float %2873, 1.500000e+00
  %2914 = fmul fast float %2913, %2883
  %2915 = fmul fast float %2914, %2888
  %2916 = fmul fast float %2874, 1.500000e+00
  %2917 = fmul fast float %2916, %2883
  %2918 = fmul fast float %2917, %2888
  %2919 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2889)  ; FMax(a,b)
  %2920 = call float @dx.op.dot3.f32(i32 55, float %2894, float %2897, float %2900, float %2894, float %2897, float %2900)  ; Dot3(ax,ay,az,bx,by,bz)
  %2921 = fcmp fast oeq float %2920, 0.000000e+00
  %2922 = fcmp fast oeq float %2919, 0.000000e+00
  %2923 = or i1 %2922, %2921
  br i1 %2923, label %2953, label %2924

; <label>:2924                                    ; preds = %2870
  %2925 = fsub fast float -0.000000e+00, %2900
  %2926 = fsub fast float -0.000000e+00, %2894
  %2927 = call float @dx.op.unary.f32(i32 24, float %2920)  ; Sqrt(value)
  %2928 = fdiv fast float %2927, %2919
  %2929 = fcmp fast ogt float %2928, 0x3FFB6F8900000000
  %2930 = select i1 %2929, float 0x3FFB6F8900000000, float %2928
  %2931 = fmul fast float %2930, 0x3FE8A23460000000
  %2932 = call float @dx.op.unary.f32(i32 7, float %2931)  ; Saturate(value)
  %2933 = call float @dx.op.binary.f32(i32 35, float %2930, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2934 = fmul fast float %2932, %2919
  %2935 = fmul fast float %2933, 0x3FF279A740000000
  %2936 = fadd fast float %2935, -1.000000e+00
  %2937 = call float @dx.op.dot3.f32(i32 55, float %2925, float %2926, float %2897, float %2925, float %2926, float %2897)  ; Dot3(ax,ay,az,bx,by,bz)
  %2938 = call float @dx.op.unary.f32(i32 25, float %2937)  ; Rsqrt(value)
  %2939 = fmul fast float %2938, %2925
  %2940 = fmul fast float %2938, %2926
  %2941 = fmul fast float %2938, %2897
  %2942 = fmul fast float %2936, %2936
  %2943 = fsub fast float 1.000000e+00, %2942
  %2944 = fmul fast float %2933, 0x40005F8BE0000000
  %2945 = fsub fast float 0x400C5BF8A0000000, %2944
  %2946 = fdiv fast float %2934, %2945
  %2947 = fmul fast float %2946, 0x3FEE31C3C0000000
  %2948 = fmul fast float %2947, %2943
  %2949 = fmul fast float %2933, 0x3FDACB7480000000
  %2950 = fadd fast float %2949, 0xBFD7347680000000
  %2951 = fmul fast float %2950, %2946
  %2952 = fmul fast float %2951, %2943
  br label %2953

; <label>:2953                                    ; preds = %2924, %2870
  %2954 = phi float [ %2939, %2924 ], [ 0.000000e+00, %2870 ]
  %2955 = phi float [ %2940, %2924 ], [ 0.000000e+00, %2870 ]
  %2956 = phi float [ %2941, %2924 ], [ 0.000000e+00, %2870 ]
  %2957 = phi float [ %2948, %2924 ], [ 0.000000e+00, %2870 ]
  %2958 = phi float [ %2952, %2924 ], [ 0.000000e+00, %2870 ]
  %2959 = call float @dx.op.dot3.f32(i32 55, float %2954, float %2955, float %2956, float %1903, float %1904, float %1905)  ; Dot3(ax,ay,az,bx,by,bz)
  %2960 = fmul fast float %2959, %2959
  %2961 = fmul fast float %2960, 0x3FEE471020000000
  %2962 = fadd fast float %2961, 0xBFD42F6020000000
  %2963 = fmul fast float %2919, 0x3FD20DD760000000
  %2964 = fmul fast float %2962, %2958
  %2965 = fmul fast float %2957, 0x3FDF454380000000
  %2966 = fmul fast float %2965, %2959
  %2967 = fadd fast float %2966, %2963
  %2968 = fadd fast float %2967, %2964
  %2969 = call float @dx.op.dot3.f32(i32 55, float %2954, float %2955, float %2956, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %2970 = fmul fast float %2969, 0x3FDF454380000000
  %2971 = fmul fast float %2969, %2969
  %2972 = fmul fast float %2971, 0x3FEE471020000000
  %2973 = fadd fast float %2972, 0xBFD42F6020000000
  %2974 = call float @dx.op.dot3.f32(i32 55, float %2919, float %2957, float %2958, float 0x3FD20DD760000000, float %2970, float %2973)  ; Dot3(ax,ay,az,bx,by,bz)
  %2975 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2890)  ; FMax(a,b)
  %2976 = call float @dx.op.dot3.f32(i32 55, float %2903, float %2906, float %2909, float %2903, float %2906, float %2909)  ; Dot3(ax,ay,az,bx,by,bz)
  %2977 = fcmp fast oeq float %2976, 0.000000e+00
  %2978 = fcmp fast oeq float %2975, 0.000000e+00
  %2979 = or i1 %2978, %2977
  br i1 %2979, label %3009, label %2980

; <label>:2980                                    ; preds = %2953
  %2981 = fsub fast float -0.000000e+00, %2909
  %2982 = fsub fast float -0.000000e+00, %2903
  %2983 = call float @dx.op.unary.f32(i32 24, float %2976)  ; Sqrt(value)
  %2984 = fdiv fast float %2983, %2975
  %2985 = fcmp fast ogt float %2984, 0x3FFB6F8900000000
  %2986 = select i1 %2985, float 0x3FFB6F8900000000, float %2984
  %2987 = fmul fast float %2986, 0x3FE8A23460000000
  %2988 = call float @dx.op.unary.f32(i32 7, float %2987)  ; Saturate(value)
  %2989 = call float @dx.op.binary.f32(i32 35, float %2986, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2990 = fmul fast float %2988, %2975
  %2991 = fmul fast float %2989, 0x3FF279A740000000
  %2992 = fadd fast float %2991, -1.000000e+00
  %2993 = call float @dx.op.dot3.f32(i32 55, float %2981, float %2982, float %2906, float %2981, float %2982, float %2906)  ; Dot3(ax,ay,az,bx,by,bz)
  %2994 = call float @dx.op.unary.f32(i32 25, float %2993)  ; Rsqrt(value)
  %2995 = fmul fast float %2994, %2981
  %2996 = fmul fast float %2994, %2982
  %2997 = fmul fast float %2994, %2906
  %2998 = fmul fast float %2992, %2992
  %2999 = fsub fast float 1.000000e+00, %2998
  %3000 = fmul fast float %2989, 0x40005F8BE0000000
  %3001 = fsub fast float 0x400C5BF8A0000000, %3000
  %3002 = fdiv fast float %2990, %3001
  %3003 = fmul fast float %3002, 0x3FEE31C3C0000000
  %3004 = fmul fast float %3003, %2999
  %3005 = fmul fast float %2989, 0x3FDACB7480000000
  %3006 = fadd fast float %3005, 0xBFD7347680000000
  %3007 = fmul fast float %3006, %3002
  %3008 = fmul fast float %3007, %2999
  br label %3009

; <label>:3009                                    ; preds = %2980, %2953
  %3010 = phi float [ %2995, %2980 ], [ 0.000000e+00, %2953 ]
  %3011 = phi float [ %2996, %2980 ], [ 0.000000e+00, %2953 ]
  %3012 = phi float [ %2997, %2980 ], [ 0.000000e+00, %2953 ]
  %3013 = phi float [ %3004, %2980 ], [ 0.000000e+00, %2953 ]
  %3014 = phi float [ %3008, %2980 ], [ 0.000000e+00, %2953 ]
  %3015 = call float @dx.op.dot3.f32(i32 55, float %3010, float %3011, float %3012, float %1903, float %1904, float %1905)  ; Dot3(ax,ay,az,bx,by,bz)
  %3016 = fmul fast float %3015, %3015
  %3017 = fmul fast float %3016, 0x3FEE471020000000
  %3018 = fadd fast float %3017, 0xBFD42F6020000000
  %3019 = fmul fast float %2975, 0x3FD20DD760000000
  %3020 = fmul fast float %3018, %3014
  %3021 = fmul fast float %3013, 0x3FDF454380000000
  %3022 = fmul fast float %3021, %3015
  %3023 = fadd fast float %3022, %3019
  %3024 = fadd fast float %3023, %3020
  %3025 = call float @dx.op.dot3.f32(i32 55, float %3010, float %3011, float %3012, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %3026 = fmul fast float %3025, 0x3FDF454380000000
  %3027 = fmul fast float %3025, %3025
  %3028 = fmul fast float %3027, 0x3FEE471020000000
  %3029 = fadd fast float %3028, 0xBFD42F6020000000
  %3030 = call float @dx.op.dot3.f32(i32 55, float %2975, float %3013, float %3014, float 0x3FD20DD760000000, float %3026, float %3029)  ; Dot3(ax,ay,az,bx,by,bz)
  %3031 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2891)  ; FMax(a,b)
  %3032 = call float @dx.op.dot3.f32(i32 55, float %2912, float %2915, float %2918, float %2912, float %2915, float %2918)  ; Dot3(ax,ay,az,bx,by,bz)
  %3033 = fcmp fast oeq float %3032, 0.000000e+00
  %3034 = fcmp fast oeq float %3031, 0.000000e+00
  %3035 = or i1 %3034, %3033
  br i1 %3035, label %3065, label %3036

; <label>:3036                                    ; preds = %3009
  %3037 = fsub fast float -0.000000e+00, %2918
  %3038 = fsub fast float -0.000000e+00, %2912
  %3039 = call float @dx.op.unary.f32(i32 24, float %3032)  ; Sqrt(value)
  %3040 = fdiv fast float %3039, %3031
  %3041 = fcmp fast ogt float %3040, 0x3FFB6F8900000000
  %3042 = select i1 %3041, float 0x3FFB6F8900000000, float %3040
  %3043 = fmul fast float %3042, 0x3FE8A23460000000
  %3044 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3045 = call float @dx.op.binary.f32(i32 35, float %3042, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3046 = fmul fast float %3044, %3031
  %3047 = fmul fast float %3045, 0x3FF279A740000000
  %3048 = fadd fast float %3047, -1.000000e+00
  %3049 = call float @dx.op.dot3.f32(i32 55, float %3037, float %3038, float %2915, float %3037, float %3038, float %2915)  ; Dot3(ax,ay,az,bx,by,bz)
  %3050 = call float @dx.op.unary.f32(i32 25, float %3049)  ; Rsqrt(value)
  %3051 = fmul fast float %3050, %3037
  %3052 = fmul fast float %3050, %3038
  %3053 = fmul fast float %3050, %2915
  %3054 = fmul fast float %3048, %3048
  %3055 = fsub fast float 1.000000e+00, %3054
  %3056 = fmul fast float %3045, 0x40005F8BE0000000
  %3057 = fsub fast float 0x400C5BF8A0000000, %3056
  %3058 = fdiv fast float %3046, %3057
  %3059 = fmul fast float %3058, 0x3FEE31C3C0000000
  %3060 = fmul fast float %3059, %3055
  %3061 = fmul fast float %3045, 0x3FDACB7480000000
  %3062 = fadd fast float %3061, 0xBFD7347680000000
  %3063 = fmul fast float %3062, %3058
  %3064 = fmul fast float %3063, %3055
  br label %3065

; <label>:3065                                    ; preds = %3036, %3009
  %3066 = phi float [ %3051, %3036 ], [ 0.000000e+00, %3009 ]
  %3067 = phi float [ %3052, %3036 ], [ 0.000000e+00, %3009 ]
  %3068 = phi float [ %3053, %3036 ], [ 0.000000e+00, %3009 ]
  %3069 = phi float [ %3060, %3036 ], [ 0.000000e+00, %3009 ]
  %3070 = phi float [ %3064, %3036 ], [ 0.000000e+00, %3009 ]
  %3071 = call float @dx.op.dot3.f32(i32 55, float %3066, float %3067, float %3068, float %1903, float %1904, float %1905)  ; Dot3(ax,ay,az,bx,by,bz)
  %3072 = fmul fast float %3071, %3071
  %3073 = fmul fast float %3072, 0x3FEE471020000000
  %3074 = fadd fast float %3073, 0xBFD42F6020000000
  %3075 = fmul fast float %3031, 0x3FD20DD760000000
  %3076 = fmul fast float %3074, %3070
  %3077 = fmul fast float %3069, 0x3FDF454380000000
  %3078 = fmul fast float %3077, %3071
  %3079 = fadd fast float %3078, %3075
  %3080 = fadd fast float %3079, %3076
  %3081 = call float @dx.op.dot3.f32(i32 55, float %3066, float %3067, float %3068, float %1919, float %1920, float %1921)  ; Dot3(ax,ay,az,bx,by,bz)
  %3082 = fmul fast float %3081, 0x3FDF454380000000
  %3083 = fmul fast float %3081, %3081
  %3084 = fmul fast float %3083, 0x3FEE471020000000
  %3085 = fadd fast float %3084, 0xBFD42F6020000000
  %3086 = call float @dx.op.dot3.f32(i32 55, float %3031, float %3069, float %3070, float 0x3FD20DD760000000, float %3082, float %3085)  ; Dot3(ax,ay,az,bx,by,bz)
  %3087 = call float @dx.op.binary.f32(i32 35, float %2968, float 0.000000e+00)  ; FMax(a,b)
  %3088 = call float @dx.op.binary.f32(i32 35, float %3024, float 0.000000e+00)  ; FMax(a,b)
  %3089 = call float @dx.op.binary.f32(i32 35, float %3080, float 0.000000e+00)  ; FMax(a,b)
  %3090 = call float @dx.op.binary.f32(i32 35, float %2974, float 0.000000e+00)  ; FMax(a,b)
  %3091 = call float @dx.op.binary.f32(i32 35, float %3030, float 0.000000e+00)  ; FMax(a,b)
  %3092 = call float @dx.op.binary.f32(i32 35, float %3086, float 0.000000e+00)  ; FMax(a,b)
  %3093 = fsub fast float %2289, %3087
  %3094 = fsub fast float %2290, %3088
  %3095 = fsub fast float %2291, %3089
  %3096 = fmul fast float %3093, %1970
  %3097 = fmul fast float %3094, %1970
  %3098 = fmul fast float %3095, %1970
  %3099 = fadd fast float %3096, %3087
  %3100 = fadd fast float %3097, %3088
  %3101 = fadd fast float %3098, %3089
  %3102 = fsub fast float %2286, %3090
  %3103 = fsub fast float %2287, %3091
  %3104 = fsub fast float %2288, %3092
  %3105 = fmul fast float %3102, %1970
  %3106 = fmul fast float %3103, %1970
  %3107 = fmul fast float %3104, %1970
  %3108 = fadd fast float %3105, %3090
  %3109 = fadd fast float %3106, %3091
  %3110 = fadd fast float %3107, %3092
  br label %3111

; <label>:3111                                    ; preds = %3065, %2285
  %3112 = phi float [ %3108, %3065 ], [ %2286, %2285 ]
  %3113 = phi float [ %3109, %3065 ], [ %2287, %2285 ]
  %3114 = phi float [ %3110, %3065 ], [ %2288, %2285 ]
  %3115 = phi float [ %3099, %3065 ], [ %2289, %2285 ]
  %3116 = phi float [ %3100, %3065 ], [ %2290, %2285 ]
  %3117 = phi float [ %3101, %3065 ], [ %2291, %2285 ]
  %3118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3119 = extractvalue %dx.types.CBufRet.f32 %3118, 0
  %3120 = call float @dx.op.binary.f32(i32 36, float %1900, float %3119)  ; FMin(a,b)
  %3121 = fsub fast float 1.000000e+00, %1922
  %3122 = fmul fast float %3120, %3121
  %3123 = fsub fast float 1.000000e+00, %3122
  %3124 = bitcast float %3123 to i32
  %3125 = sub nsw i32 2129859010, %3124
  %3126 = bitcast i32 %3125 to float
  %3127 = call float @dx.op.binary.f32(i32 36, float %1901, float %3119)  ; FMin(a,b)
  %3128 = fmul fast float %3127, %3121
  %3129 = fsub fast float 1.000000e+00, %3128
  %3130 = bitcast float %3129 to i32
  %3131 = sub nsw i32 2129859010, %3130
  %3132 = bitcast i32 %3131 to float
  %3133 = call float @dx.op.binary.f32(i32 36, float %1902, float %3119)  ; FMin(a,b)
  %3134 = fmul fast float %3133, %3121
  %3135 = fsub fast float 1.000000e+00, %3134
  %3136 = bitcast float %3135 to i32
  %3137 = sub nsw i32 2129859010, %3136
  %3138 = bitcast i32 %3137 to float
  %3139 = fmul fast float %3115, %1922
  %3140 = fmul fast float %3139, %3126
  %3141 = fmul fast float %3116, %1922
  %3142 = fmul fast float %3141, %3132
  %3143 = fmul fast float %3117, %1922
  %3144 = fmul fast float %3143, %3138
  %3145 = call float @dx.op.binary.f32(i32 36, float %1906, float %3119)  ; FMin(a,b)
  %3146 = fmul fast float %3145, %3121
  %3147 = fsub fast float 1.000000e+00, %3146
  %3148 = bitcast float %3147 to i32
  %3149 = sub nsw i32 2129859010, %3148
  %3150 = bitcast i32 %3149 to float
  %3151 = call float @dx.op.binary.f32(i32 36, float %1907, float %3119)  ; FMin(a,b)
  %3152 = fmul fast float %3151, %3121
  %3153 = fsub fast float 1.000000e+00, %3152
  %3154 = bitcast float %3153 to i32
  %3155 = sub nsw i32 2129859010, %3154
  %3156 = bitcast i32 %3155 to float
  %3157 = call float @dx.op.binary.f32(i32 36, float %1911, float %3119)  ; FMin(a,b)
  %3158 = fmul fast float %3157, %3121
  %3159 = fsub fast float 1.000000e+00, %3158
  %3160 = bitcast float %3159 to i32
  %3161 = sub nsw i32 2129859010, %3160
  %3162 = bitcast i32 %3161 to float
  %3163 = fmul fast float %3112, %1922
  %3164 = fmul fast float %3163, %3150
  %3165 = fmul fast float %3113, %1922
  %3166 = fmul fast float %3165, %3156
  %3167 = fmul fast float %3114, %1922
  %3168 = fmul fast float %3167, %3162
  %3169 = call float @dx.op.dot3.f32(i32 55, float %3140, float %3142, float %3144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3170 = select i1 %214, float 0.000000e+00, float %3140
  %3171 = select i1 %214, float %3169, float %3142
  %3172 = select i1 %214, float 0.000000e+00, float %3144
  %3173 = call float @dx.op.dot3.f32(i32 55, float %3164, float %3166, float %3168, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3174 = select i1 %214, float 0.000000e+00, float %3164
  %3175 = select i1 %214, float %3173, float %3166
  %3176 = select i1 %214, float 0.000000e+00, float %3168
  %3177 = fmul fast float %1021, %1021
  %3178 = call float @dx.op.unary.f32(i32 7, float %3177)  ; Saturate(value)
  %3179 = fmul fast float %1913, 9.843750e-01
  %3180 = fmul fast float %1909, 9.843750e-01
  %3181 = fadd fast float %3179, 7.812500e-03
  %3182 = fadd fast float %3180, 7.812500e-03
  %3183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %45, float %3181, float %3182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3184 = extractvalue %dx.types.ResRet.f32 %3183, 0
  %3185 = extractvalue %dx.types.ResRet.f32 %3183, 1
  %3186 = extractvalue %dx.types.ResRet.f32 %3183, 2
  %3187 = extractvalue %dx.types.ResRet.f32 %3183, 3
  %3188 = fsub fast float 1.000000e+00, %3178
  %3189 = fsub fast float %3186, %3184
  %3190 = fsub fast float %3187, %3185
  %3191 = fmul fast float %3189, %3188
  %3192 = fmul fast float %3190, %3188
  %3193 = fadd fast float %3191, %3184
  %3194 = fadd fast float %3192, %3185
  %3195 = fmul fast float %3193, %1906
  %3196 = fmul fast float %3193, %1907
  %3197 = fmul fast float %3193, %1911
  %3198 = fadd fast float %3195, %3194
  %3199 = fadd fast float %3196, %3194
  %3200 = fadd fast float %3197, %3194
  %3201 = fcmp fast ogt float %1565, 0.000000e+00
  br i1 %3201, label %3202, label %3228

; <label>:3202                                    ; preds = %3111
  %3203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1565, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3204 = extractvalue %dx.types.ResRet.f32 %3203, 0
  %3205 = extractvalue %dx.types.ResRet.f32 %3203, 1
  %3206 = extractvalue %dx.types.ResRet.f32 %3203, 2
  %3207 = fadd fast float %3204, -5.000000e-01
  %3208 = fadd fast float %3205, -5.000000e-01
  %3209 = fadd fast float %3206, -5.000000e-01
  %3210 = fsub fast float 1.000000e+00, %1906
  %3211 = fsub fast float 1.000000e+00, %1907
  %3212 = fsub fast float 1.000000e+00, %1911
  %3213 = fmul fast float %1906, 4.000000e+00
  %3214 = fmul fast float %3213, %3210
  %3215 = fmul fast float %3214, %3207
  %3216 = fmul fast float %1907, 4.000000e+00
  %3217 = fmul fast float %3216, %3211
  %3218 = fmul fast float %3217, %3208
  %3219 = fmul fast float %1911, 4.000000e+00
  %3220 = fmul fast float %3219, %3212
  %3221 = fmul fast float %3220, %3209
  %3222 = fadd fast float %3215, %3198
  %3223 = fadd fast float %3218, %3199
  %3224 = fadd fast float %3221, %3200
  %3225 = call float @dx.op.unary.f32(i32 7, float %3222)  ; Saturate(value)
  %3226 = call float @dx.op.unary.f32(i32 7, float %3223)  ; Saturate(value)
  %3227 = call float @dx.op.unary.f32(i32 7, float %3224)  ; Saturate(value)
  br label %3228

; <label>:3228                                    ; preds = %3202, %3111
  %3229 = phi float [ %3225, %3202 ], [ %3198, %3111 ]
  %3230 = phi float [ %3226, %3202 ], [ %3199, %3111 ]
  %3231 = phi float [ %3227, %3202 ], [ %3200, %3111 ]
  %3232 = call float @dx.op.binary.f32(i32 35, float %3230, float %3231)  ; FMax(a,b)
  %3233 = call float @dx.op.binary.f32(i32 35, float %3229, float %3232)  ; FMax(a,b)
  %3234 = fsub fast float 1.000000e+00, %3233
  %3235 = fmul fast float %3234, %3170
  %3236 = fmul fast float %3234, %3171
  %3237 = fmul fast float %3234, %3172
  %3238 = call float @dx.op.dot3.f32(i32 55, float %1900, float %1901, float %1902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3239 = fcmp fast ogt float %3238, 0x3E7FF19E20000000
  %3240 = fdiv fast float 1.000000e+00, %3238
  %3241 = select i1 %3239, float %3240, float 0.000000e+00
  %3242 = fmul fast float %3241, %1900
  %3243 = fmul fast float %3241, %1901
  %3244 = fmul fast float %3241, %1902
  %3245 = fadd fast float %3242, -1.000000e+00
  %3246 = fadd fast float %3243, -1.000000e+00
  %3247 = fadd fast float %3244, -1.000000e+00
  %3248 = fmul fast float %3245, 5.000000e-01
  %3249 = fmul fast float %3246, 5.000000e-01
  %3250 = fmul fast float %3247, 5.000000e-01
  %3251 = fadd fast float %3248, 1.000000e+00
  %3252 = fadd fast float %3249, 1.000000e+00
  %3253 = fadd fast float %3250, 1.000000e+00
  %3254 = call float @dx.op.binary.f32(i32 35, float %1913, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3255 = fdiv fast float %1021, %3254
  %3256 = fcmp fast olt float %1613, 1.270000e+02
  %3257 = fcmp fast olt float %1614, 1.270000e+02
  %3258 = fcmp fast olt float %1615, 1.270000e+02
  %3259 = fmul fast float %1613, 0xBFF7154760000000
  %3260 = fmul fast float %3259, %3255
  %3261 = fmul fast float %1614, 0xBFF7154760000000
  %3262 = fmul fast float %3261, %3255
  %3263 = fmul fast float %1615, 0xBFF7154760000000
  %3264 = fmul fast float %3263, %3255
  %3265 = call float @dx.op.unary.f32(i32 21, float %3260)  ; Exp(value)
  %3266 = call float @dx.op.unary.f32(i32 21, float %3262)  ; Exp(value)
  %3267 = call float @dx.op.unary.f32(i32 21, float %3264)  ; Exp(value)
  %3268 = call float @dx.op.unary.f32(i32 7, float %3265)  ; Saturate(value)
  %3269 = call float @dx.op.unary.f32(i32 7, float %3266)  ; Saturate(value)
  %3270 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3271 = select i1 %3256, float %3268, float 0.000000e+00
  %3272 = select i1 %3257, float %3269, float 0.000000e+00
  %3273 = select i1 %3258, float %3270, float 0.000000e+00
  %3274 = fmul fast float %3271, %3234
  %3275 = fmul fast float %3272, %3234
  %3276 = fmul fast float %3273, %3234
  %3277 = fadd fast float %3274, -1.000000e+00
  %3278 = fadd fast float %3275, -1.000000e+00
  %3279 = fadd fast float %3276, -1.000000e+00
  %3280 = fmul fast float %3229, %3174
  %3281 = fmul fast float %3230, %3175
  %3282 = fmul fast float %3231, %3176
  %3283 = fsub fast float 1.000000e+00, %1913
  %3284 = bitcast float %3283 to i32
  %3285 = sitofp i32 %3284 to float
  %3286 = fmul fast float %3285, 5.000000e+00
  %3287 = fadd fast float %3286, 0xC1EFBF8940000000
  %3288 = fptosi float %3287 to i32
  %3289 = bitcast i32 %3288 to float
  %3290 = fmul fast float %3289, %1564
  %3291 = fmul fast float %3170, %3290
  %3292 = fmul fast float %3291, %3234
  %3293 = fmul fast float %3292, %3251
  %3294 = fmul fast float %3171, %3290
  %3295 = fmul fast float %3294, %3234
  %3296 = fmul fast float %3295, %3252
  %3297 = fmul fast float %3172, %3290
  %3298 = fmul fast float %3297, %3234
  %3299 = fmul fast float %3298, %3253
  %3300 = fmul fast float %3235, %1585
  %3301 = fmul fast float %3236, %1585
  %3302 = fmul fast float %3237, %1585
  %3303 = fadd fast float %3280, %1566
  %3304 = fadd fast float %3303, %3293
  %3305 = fmul fast float %3304, %1585
  %3306 = fadd fast float %3281, %1567
  %3307 = fadd fast float %3306, %3296
  %3308 = fmul fast float %3307, %1585
  %3309 = fadd fast float %3282, %1568
  %3310 = fadd fast float %3309, %3299
  %3311 = fmul fast float %3310, %1585
  %3312 = bitcast i32 %1925 to float
  %3313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3314 = extractvalue %dx.types.CBufRet.f32 %3313, 3
  %3315 = fcmp fast oeq float %3314, 0.000000e+00
  br i1 %3315, label %4316, label %3316

; <label>:3316                                    ; preds = %3228
  %3317 = extractvalue %dx.types.CBufRet.f32 %3313, 0
  %3318 = extractvalue %dx.types.CBufRet.f32 %3313, 1
  %3319 = extractvalue %dx.types.CBufRet.f32 %3313, 2
  %3320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.f32 %3320, 0
  %3322 = extractvalue %dx.types.CBufRet.f32 %3320, 1
  %3323 = extractvalue %dx.types.CBufRet.f32 %3320, 2
  %3324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3325 = extractvalue %dx.types.CBufRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.CBufRet.f32 %3324, 1
  %3327 = call float @dx.op.dot3.f32(i32 55, float %3321, float %3322, float %3323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3328 = select i1 %214, float %3325, float %3321
  %3329 = select i1 %214, float %3327, float %3322
  %3330 = select i1 %214, float %3326, float %3323
  %3331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3332 = extractvalue %dx.types.CBufRet.f32 %3331, 2
  %3333 = fmul fast float %3332, %57
  %3334 = fmul fast float %3332, %58
  %3335 = fmul fast float %3332, %59
  %3336 = fadd fast float %3333, %124
  %3337 = fadd fast float %3334, %125
  %3338 = fadd fast float %3335, %126
  %3339 = fcmp fast olt float %3314, 0.000000e+00
  br i1 %3339, label %3961, label %3340

; <label>:3340                                    ; preds = %3316
  %3341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3342 = extractvalue %dx.types.CBufRet.f32 %3341, 0
  %3343 = extractvalue %dx.types.CBufRet.f32 %3341, 1
  %3344 = extractvalue %dx.types.CBufRet.f32 %3341, 2
  %3345 = extractvalue %dx.types.CBufRet.f32 %3341, 3
  %3346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3347 = extractvalue %dx.types.CBufRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.CBufRet.f32 %3346, 1
  %3349 = extractvalue %dx.types.CBufRet.f32 %3346, 2
  %3350 = extractvalue %dx.types.CBufRet.f32 %3346, 3
  %3351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3352 = extractvalue %dx.types.CBufRet.f32 %3351, 0
  %3353 = extractvalue %dx.types.CBufRet.f32 %3351, 1
  %3354 = extractvalue %dx.types.CBufRet.f32 %3351, 2
  %3355 = extractvalue %dx.types.CBufRet.f32 %3351, 3
  %3356 = fmul fast float %3342, %3336
  %3357 = call float @dx.op.tertiary.f32(i32 46, float %3337, float %3343, float %3356)  ; FMad(a,b,c)
  %3358 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3344, float %3357)  ; FMad(a,b,c)
  %3359 = fadd fast float %3358, %3345
  %3360 = fmul fast float %3347, %3336
  %3361 = call float @dx.op.tertiary.f32(i32 46, float %3337, float %3348, float %3360)  ; FMad(a,b,c)
  %3362 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3349, float %3361)  ; FMad(a,b,c)
  %3363 = fadd fast float %3362, %3350
  %3364 = fmul fast float %3352, %3336
  %3365 = call float @dx.op.tertiary.f32(i32 46, float %3337, float %3353, float %3364)  ; FMad(a,b,c)
  %3366 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3354, float %3365)  ; FMad(a,b,c)
  %3367 = fadd fast float %3366, %3355
  %3368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3369 = extractvalue %dx.types.CBufRet.f32 %3368, 0
  %3370 = extractvalue %dx.types.CBufRet.f32 %3368, 1
  %3371 = extractvalue %dx.types.CBufRet.f32 %3368, 3
  %3372 = fmul fast float %3371, %3359
  %3373 = fmul fast float %3371, %3363
  %3374 = fadd fast float %3372, %3369
  %3375 = fadd fast float %3373, %3370
  %3376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3377 = extractvalue %dx.types.CBufRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.CBufRet.f32 %3376, 1
  %3379 = extractvalue %dx.types.CBufRet.f32 %3376, 3
  %3380 = fmul fast float %3379, %3359
  %3381 = fmul fast float %3379, %3363
  %3382 = fadd fast float %3380, %3377
  %3383 = fadd fast float %3381, %3378
  %3384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3385 = extractvalue %dx.types.CBufRet.f32 %3384, 1
  %3386 = fsub fast float %3385, %3367
  %3387 = extractvalue %dx.types.CBufRet.f32 %3384, 2
  %3388 = fmul fast float %3386, %3387
  %3389 = fsub fast float 1.000000e+00, %3388
  %3390 = call float @dx.op.unary.f32(i32 7, float %3389)  ; Saturate(value)
  %3391 = extractvalue %dx.types.CBufRet.f32 %3376, 2
  %3392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3393 = extractvalue %dx.types.CBufRet.f32 %3392, 2
  %3394 = fadd fast float %3393, %3391
  %3395 = fcmp fast ogt float %3394, 0.000000e+00
  br i1 %3395, label %3396, label %3420

; <label>:3396                                    ; preds = %3340
  %3397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3398 = extractvalue %dx.types.CBufRet.f32 %3397, 0
  %3399 = extractvalue %dx.types.CBufRet.f32 %3397, 1
  %3400 = fsub fast float %3382, %3398
  %3401 = fsub fast float %3383, %3399
  %3402 = fcmp fast olt float %3400, 0.000000e+00
  %3403 = fcmp fast olt float %3401, 0.000000e+00
  %3404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3405 = extractvalue %dx.types.CBufRet.f32 %3404, 0
  %3406 = extractvalue %dx.types.CBufRet.f32 %3404, 1
  %3407 = extractvalue %dx.types.CBufRet.f32 %3404, 2
  %3408 = extractvalue %dx.types.CBufRet.f32 %3404, 3
  %3409 = select i1 %3402, float %3405, float %3407
  %3410 = select i1 %3403, float %3406, float %3408
  %3411 = fmul fast float %3409, %3400
  %3412 = fmul fast float %3410, %3401
  %3413 = call float @dx.op.unary.f32(i32 6, float %3411)  ; FAbs(value)
  %3414 = call float @dx.op.unary.f32(i32 6, float %3412)  ; FAbs(value)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3331, 0
  %3416 = call float @dx.op.binary.f32(i32 35, float %3413, float %3414)  ; FMax(a,b)
  %3417 = fsub fast float %3415, %3416
  %3418 = call float @dx.op.unary.f32(i32 7, float %3417)  ; Saturate(value)
  %3419 = fmul fast float %3418, %3390
  br label %3420

; <label>:3420                                    ; preds = %3396, %3340
  %3421 = phi float [ %3419, %3396 ], [ 0.000000e+00, %3340 ]
  %3422 = extractvalue %dx.types.CBufRet.f32 %3368, 2
  %3423 = extractvalue %dx.types.CBufRet.f32 %3392, 1
  %3424 = fadd fast float %3423, %3422
  %3425 = fcmp fast ogt float %3424, 0.000000e+00
  %3426 = extractvalue %dx.types.CBufRet.f32 %3331, 0
  br i1 %3425, label %3427, label %3450

; <label>:3427                                    ; preds = %3420
  %3428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3429 = extractvalue %dx.types.CBufRet.f32 %3428, 0
  %3430 = extractvalue %dx.types.CBufRet.f32 %3428, 1
  %3431 = fsub fast float %3374, %3429
  %3432 = fsub fast float %3375, %3430
  %3433 = fcmp fast olt float %3431, 0.000000e+00
  %3434 = fcmp fast olt float %3432, 0.000000e+00
  %3435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3436 = extractvalue %dx.types.CBufRet.f32 %3435, 0
  %3437 = extractvalue %dx.types.CBufRet.f32 %3435, 1
  %3438 = extractvalue %dx.types.CBufRet.f32 %3435, 2
  %3439 = extractvalue %dx.types.CBufRet.f32 %3435, 3
  %3440 = select i1 %3433, float %3436, float %3438
  %3441 = select i1 %3434, float %3437, float %3439
  %3442 = fmul fast float %3440, %3431
  %3443 = fmul fast float %3441, %3432
  %3444 = call float @dx.op.unary.f32(i32 6, float %3442)  ; FAbs(value)
  %3445 = call float @dx.op.unary.f32(i32 6, float %3443)  ; FAbs(value)
  %3446 = call float @dx.op.binary.f32(i32 35, float %3444, float %3445)  ; FMax(a,b)
  %3447 = fsub fast float %3426, %3446
  %3448 = call float @dx.op.unary.f32(i32 7, float %3447)  ; Saturate(value)
  %3449 = fmul fast float %3448, %3390
  br label %3450

; <label>:3450                                    ; preds = %3427, %3420
  %3451 = phi float [ %3449, %3427 ], [ 0.000000e+00, %3420 ]
  %3452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.f32 %3452, 1
  %3454 = call float @dx.op.unary.f32(i32 7, float %3453)  ; Saturate(value)
  %3455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.f32 %3455, 0
  %3457 = extractvalue %dx.types.CBufRet.f32 %3455, 1
  %3458 = fsub fast float %3359, %3456
  %3459 = fsub fast float %3363, %3457
  %3460 = fcmp fast olt float %3458, 0.000000e+00
  %3461 = fcmp fast olt float %3459, 0.000000e+00
  %3462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3463 = extractvalue %dx.types.CBufRet.f32 %3462, 0
  %3464 = extractvalue %dx.types.CBufRet.f32 %3462, 1
  %3465 = extractvalue %dx.types.CBufRet.f32 %3462, 2
  %3466 = extractvalue %dx.types.CBufRet.f32 %3462, 3
  %3467 = select i1 %3460, float %3463, float %3465
  %3468 = select i1 %3461, float %3464, float %3466
  %3469 = fmul fast float %3467, %3458
  %3470 = fmul fast float %3468, %3459
  %3471 = call float @dx.op.unary.f32(i32 6, float %3469)  ; FAbs(value)
  %3472 = call float @dx.op.unary.f32(i32 6, float %3470)  ; FAbs(value)
  %3473 = call float @dx.op.binary.f32(i32 35, float %3471, float %3472)  ; FMax(a,b)
  %3474 = fsub fast float %3426, %3473
  %3475 = call float @dx.op.unary.f32(i32 7, float %3474)  ; Saturate(value)
  %3476 = call float @dx.op.binary.f32(i32 36, float %3475, float %3454)  ; FMin(a,b)
  %3477 = fmul fast float %3476, %3390
  %3478 = fsub fast float %3451, %3477
  %3479 = fsub fast float %3421, %3451
  %3480 = fsub fast float %3479, %3477
  %3481 = call float @dx.op.binary.f32(i32 35, float %3477, float %3451)  ; FMax(a,b)
  %3482 = call float @dx.op.binary.f32(i32 35, float %3481, float %3421)  ; FMax(a,b)
  %3483 = fcmp fast olt float %3482, 1.000000e+00
  br i1 %3483, label %3484, label %3882, !dx.controlflow.hints !91

; <label>:3484                                    ; preds = %3450
  %3485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3485, 0
  %3487 = fcmp fast une float %3486, 0.000000e+00
  br i1 %3487, label %3488, label %3882, !dx.controlflow.hints !92

; <label>:3488                                    ; preds = %3484
  %3489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3490 = extractvalue %dx.types.CBufRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.CBufRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.CBufRet.f32 %3489, 2
  %3493 = extractvalue %dx.types.CBufRet.f32 %3489, 3
  %3494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3494, 0
  %3496 = extractvalue %dx.types.CBufRet.f32 %3494, 1
  %3497 = extractvalue %dx.types.CBufRet.f32 %3494, 2
  %3498 = extractvalue %dx.types.CBufRet.f32 %3494, 3
  %3499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3500 = extractvalue %dx.types.CBufRet.f32 %3499, 0
  %3501 = extractvalue %dx.types.CBufRet.f32 %3499, 1
  %3502 = extractvalue %dx.types.CBufRet.f32 %3499, 2
  %3503 = extractvalue %dx.types.CBufRet.f32 %3499, 3
  %3504 = fmul fast float %3490, %3336
  %3505 = call float @dx.op.tertiary.f32(i32 46, float %3337, float %3491, float %3504)  ; FMad(a,b,c)
  %3506 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3492, float %3505)  ; FMad(a,b,c)
  %3507 = fadd fast float %3506, %3493
  %3508 = fmul fast float %3495, %3336
  %3509 = call float @dx.op.tertiary.f32(i32 46, float %3337, float %3496, float %3508)  ; FMad(a,b,c)
  %3510 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3497, float %3509)  ; FMad(a,b,c)
  %3511 = fadd fast float %3510, %3498
  %3512 = fmul fast float %3500, %3336
  %3513 = call float @dx.op.tertiary.f32(i32 46, float %3337, float %3501, float %3512)  ; FMad(a,b,c)
  %3514 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3502, float %3513)  ; FMad(a,b,c)
  %3515 = fadd fast float %3514, %3503
  %3516 = fcmp fast oge float %3507, 1.000000e+00
  %3517 = fcmp fast oge float %3511, 1.000000e+00
  %3518 = or i1 %3516, %3517
  %3519 = fcmp fast olt float %3507, 0.000000e+00
  %3520 = fcmp fast olt float %3511, 0.000000e+00
  %3521 = or i1 %3519, %3520
  %3522 = or i1 %3518, %3521
  br i1 %3522, label %3882, label %3523, !dx.controlflow.hints !93

; <label>:3523                                    ; preds = %3488
  %3524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3525 = extractvalue %dx.types.CBufRet.f32 %3524, 0
  %3526 = extractvalue %dx.types.CBufRet.f32 %3524, 1
  %3527 = extractvalue %dx.types.CBufRet.f32 %3524, 2
  %3528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3529 = extractvalue %dx.types.CBufRet.i32 %3528, 2
  %3530 = uitofp i32 %3529 to float
  %3531 = extractvalue %dx.types.CBufRet.i32 %3528, 3
  %3532 = uitofp i32 %3531 to float
  %3533 = extractvalue %dx.types.CBufRet.f32 %3524, 3
  %3534 = fmul fast float %3533, 2.000000e+00
  %3535 = fsub fast float %3507, %3525
  %3536 = fsub fast float %3511, %3526
  %3537 = fmul fast float %3534, %3535
  %3538 = fmul fast float %3534, %3536
  %3539 = fdiv fast float 1.000000e+00, %3319
  %3540 = fmul fast float %3538, %3539
  %3541 = call float @dx.op.unary.f32(i32 6, float %3540)  ; FAbs(value)
  %3542 = fmul fast float %3527, %3338
  %3543 = fmul fast float %3542, %3534
  %3544 = call float @dx.op.unary.f32(i32 6, float %3543)  ; FAbs(value)
  %3545 = call float @dx.op.unary.f32(i32 6, float %3537)  ; FAbs(value)
  %3546 = call float @dx.op.binary.f32(i32 35, float %3545, float %3544)  ; FMax(a,b)
  %3547 = call float @dx.op.binary.f32(i32 35, float %3546, float %3541)  ; FMax(a,b)
  %3548 = fmul fast float %3547, 2.000000e+00
  %3549 = call float @dx.op.unary.f32(i32 23, float %3548)  ; Log(value)
  %3550 = call float @dx.op.binary.f32(i32 35, float %3549, float %3530)  ; FMax(a,b)
  %3551 = call float @dx.op.unary.f32(i32 22, float %3550)  ; Frc(value)
  %3552 = fadd fast float %3551, 0xBFEA666660000000
  %3553 = fmul fast float %3552, 8.000000e+00
  %3554 = call float @dx.op.unary.f32(i32 7, float %3553)  ; Saturate(value)
  %3555 = call float @dx.op.unary.f32(i32 27, float %3550)  ; Round_ni(value)
  %3556 = fadd fast float %3555, %3554
  %3557 = call float @dx.op.binary.f32(i32 36, float %3556, float %3532)  ; FMin(a,b)
  %3558 = call float @dx.op.unary.f32(i32 27, float %3557)  ; Round_ni(value)
  %3559 = fsub fast float -0.000000e+00, %3558
  %3560 = call float @dx.op.unary.f32(i32 21, float %3559)  ; Exp(value)
  %3561 = fmul fast float %3560, %3534
  %3562 = fmul fast float %3561, %3507
  %3563 = fmul fast float %3561, %3511
  %3564 = fmul fast float %3562, 2.500000e-01
  %3565 = fmul fast float %3563, 2.500000e-01
  %3566 = fadd fast float %3564, 5.000000e-01
  %3567 = fadd fast float %3565, 5.000000e-01
  %3568 = fsub fast float %3532, %3530
  %3569 = fptoui float %3568 to i32
  %3570 = add i32 %3569, 320
  %3571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %3570)  ; CBufferLoadLegacy(handle,regIndex)
  %3572 = extractvalue %dx.types.CBufRet.f32 %3571, 0
  %3573 = extractvalue %dx.types.CBufRet.f32 %3571, 1
  %3574 = fcmp fast une float %3557, %3532
  %3575 = fsub fast float %3507, %3572
  %3576 = fsub fast float %3511, %3573
  %3577 = call float @dx.op.unary.f32(i32 6, float %3575)  ; FAbs(value)
  %3578 = call float @dx.op.unary.f32(i32 6, float %3576)  ; FAbs(value)
  %3579 = fmul fast float %3577, %3561
  %3580 = fmul fast float %3578, %3561
  %3581 = fcmp fast olt float %3579, 1.000000e+00
  %3582 = fcmp fast olt float %3580, 1.000000e+00
  %3583 = and i1 %3581, %3582
  %3584 = or i1 %3574, %3583
  br i1 %3584, label %3585, label %3882, !dx.controlflow.hints !94

; <label>:3585                                    ; preds = %3523
  %3586 = fmul fast float %3563, 5.000000e-01
  %3587 = fmul fast float %3562, 5.000000e-01
  %3588 = fadd fast float %3586, 5.000000e-01
  %3589 = fadd fast float %3587, 5.000000e-01
  %3590 = sitofp i32 %3529 to float
  %3591 = fsub fast float %3557, %3590
  %3592 = call float @dx.op.unary.f32(i32 27, float %3591)  ; Round_ni(value)
  %3593 = call float @dx.op.unary.f32(i32 22, float %3557)  ; Frc(value)
  %3594 = call float @dx.op.unary.f32(i32 22, float %3589)  ; Frc(value)
  %3595 = call float @dx.op.unary.f32(i32 22, float %3588)  ; Frc(value)
  %3596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %3594, float %3595, float %3592, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.ResRet.f32 %3596, 1
  %3599 = extractvalue %dx.types.ResRet.f32 %3596, 2
  %3600 = extractvalue %dx.types.ResRet.f32 %3596, 3
  %3601 = fcmp fast ogt float %3593, 0.000000e+00
  br i1 %3601, label %3602, label %3623, !dx.controlflow.hints !95

; <label>:3602                                    ; preds = %3585
  %3603 = fadd fast float %3592, 1.000000e+00
  %3604 = call float @dx.op.unary.f32(i32 22, float %3566)  ; Frc(value)
  %3605 = call float @dx.op.unary.f32(i32 22, float %3567)  ; Frc(value)
  %3606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %3604, float %3605, float %3603, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3611 = fsub fast float %3607, %3597
  %3612 = fsub fast float %3608, %3598
  %3613 = fsub fast float %3609, %3599
  %3614 = fsub fast float %3610, %3600
  %3615 = fmul fast float %3611, %3593
  %3616 = fmul fast float %3612, %3593
  %3617 = fmul fast float %3613, %3593
  %3618 = fmul fast float %3614, %3593
  %3619 = fadd fast float %3615, %3597
  %3620 = fadd fast float %3616, %3598
  %3621 = fadd fast float %3617, %3599
  %3622 = fadd fast float %3618, %3600
  br label %3623

; <label>:3623                                    ; preds = %3602, %3585
  %3624 = phi float [ %3619, %3602 ], [ %3597, %3585 ]
  %3625 = phi float [ %3620, %3602 ], [ %3598, %3585 ]
  %3626 = phi float [ %3621, %3602 ], [ %3599, %3585 ]
  %3627 = phi float [ %3622, %3602 ], [ %3600, %3585 ]
  %3628 = fadd fast float %3624, -5.000000e-01
  %3629 = fadd fast float %3626, -5.000000e-01
  %3630 = fmul fast float %3628, 0xBFD5555560000000
  %3631 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3629, float %3630)  ; FMad(a,b,c)
  %3632 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3625, float 0.000000e+00)  ; FMad(a,b,c)
  %3633 = fadd fast float %3632, %3627
  %3634 = fmul fast float %3628, -7.500000e-01
  %3635 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3629, float %3634)  ; FMad(a,b,c)
  %3636 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3625, float 0.000000e+00)  ; FMad(a,b,c)
  %3637 = fadd fast float %3636, %3627
  %3638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3639 = extractvalue %dx.types.CBufRet.f32 %3638, 0
  %3640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3641 = extractvalue %dx.types.CBufRet.f32 %3640, 0
  %3642 = extractvalue %dx.types.CBufRet.f32 %3640, 1
  %3643 = extractvalue %dx.types.CBufRet.f32 %3640, 2
  %3644 = extractvalue %dx.types.CBufRet.f32 %3640, 3
  %3645 = fsub fast float %3641, %3631
  %3646 = fsub fast float %3642, %3633
  %3647 = fsub fast float %3643, %3635
  %3648 = fsub fast float %3644, %3637
  %3649 = fmul fast float %3645, %3639
  %3650 = fmul fast float %3646, %3639
  %3651 = fmul fast float %3647, %3639
  %3652 = fmul fast float %3648, %3639
  %3653 = fadd fast float %3649, %3631
  %3654 = fadd fast float %3650, %3633
  %3655 = fadd fast float %3651, %3635
  %3656 = fadd fast float %3652, %3637
  %3657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.i32 %3657, 0
  %3659 = and i32 %3658, 536870911
  %3660 = uitofp i32 %3659 to float
  %3661 = fmul fast float %3660, %3507
  %3662 = fmul fast float %3660, %3511
  %3663 = fptoui float %3661 to i32
  %3664 = fptoui float %3662 to i32
  %3665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.i32 %3665, 0
  %3667 = and i32 %3666, 31
  %3668 = lshr i32 %3663, %3667
  %3669 = lshr i32 %3664, %3667
  %3670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.i32 %3670, 0
  %3672 = and i32 %3671, 31
  %3673 = shl i32 1, %3672
  %3674 = call i32 @dx.op.binary.i32(i32 40, i32 %3673, i32 4)  ; UMin(a,b)
  %3675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.i32 %3675, 0
  %3677 = extractvalue %dx.types.ResRet.i32 %3675, 1
  %3678 = icmp eq i32 %3674, 0
  br i1 %3678, label %3720, label %3679

; <label>:3679                                    ; preds = %3623
  br label %3680

; <label>:3680                                    ; preds = %3708, %3679
  %3681 = phi i32 [ %3711, %3708 ], [ 0, %3679 ]
  %3682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.i32 %3682, 0
  %3684 = lshr i32 %3683, 16
  %3685 = and i32 %3684, 31
  %3686 = shl i32 %3669, %3685
  %3687 = add i32 %3686, %3668
  %3688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.i32 %3688, 0
  %3690 = and i32 %3689, 31
  %3691 = shl i32 %3687, %3690
  %3692 = add i32 %3691, %3681
  %3693 = shl i32 %3692, 2
  %3694 = add i32 %3693, 32
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = icmp slt i32 %3696, 0
  %3698 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3681
  %3699 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3681
  %3700 = bitcast float* %3698 to i32*
  %3701 = bitcast float* %3699 to i32*
  br i1 %3697, label %3702, label %3708

; <label>:3702                                    ; preds = %3680
  %3703 = and i32 %3696, 1073741823
  %3704 = add nuw nsw i32 %3703, 20
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = extractvalue %dx.types.ResRet.i32 %3705, 1
  br label %3708

; <label>:3708                                    ; preds = %3702, %3680
  %3709 = phi i32 [ %3706, %3702 ], [ %3676, %3680 ]
  %3710 = phi i32 [ %3707, %3702 ], [ %3677, %3680 ]
  store i32 %3709, i32* %3700, align 4
  store i32 %3710, i32* %3701, align 4
  %3711 = add nuw i32 %3681, 1
  %3712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3713 = extractvalue %dx.types.CBufRet.i32 %3712, 2
  %3714 = icmp eq i32 %3713, 0
  %3715 = icmp ugt i32 %3696, -1073741825
  %3716 = and i1 %3715, %3714
  %3717 = icmp ult i32 %3711, %3674
  %3718 = and i1 %3716, %3717
  br i1 %3718, label %3680, label %3719

; <label>:3719                                    ; preds = %3708
  br label %3720

; <label>:3720                                    ; preds = %3719, %3623
  %3721 = phi i32 [ 0, %3623 ], [ %3711, %3719 ]
  %3722 = extractvalue %dx.types.CBufRet.f32 %3485, 2
  %3723 = fptoui float %3722 to i32
  %3724 = icmp eq i32 %3723, 0
  br i1 %3724, label %3776, label %3725

; <label>:3725                                    ; preds = %3720
  br label %3726

; <label>:3726                                    ; preds = %3771, %3725
  %3727 = phi i32 [ %3772, %3771 ], [ %3721, %3725 ]
  %3728 = phi i32 [ %3773, %3771 ], [ 0, %3725 ]
  %3729 = lshr i32 %3728, 2
  %3730 = and i32 %3728, 3
  %3731 = add nuw nsw i32 %3729, 83
  %3732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %3731)  ; CBufferLoadLegacy(handle,regIndex)
  %3733 = extractvalue %dx.types.CBufRet.i32 %3732, 0
  %3734 = extractvalue %dx.types.CBufRet.i32 %3732, 1
  %3735 = extractvalue %dx.types.CBufRet.i32 %3732, 2
  %3736 = extractvalue %dx.types.CBufRet.i32 %3732, 3
  %3737 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %3733, i32* %3737, align 4
  %3738 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %3734, i32* %3738, align 4
  %3739 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %3735, i32* %3739, align 4
  %3740 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %3736, i32* %3740, align 4
  %3741 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %3730
  %3742 = load i32, i32* %3741, align 4, !tbaa !96, !noalias !100
  %3743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.i32 %3743, 0
  %3745 = lshr i32 %3744, 16
  %3746 = and i32 %3745, 31
  %3747 = shl i32 %3669, %3746
  %3748 = add i32 %3747, %3668
  %3749 = shl i32 %3748, 2
  %3750 = add i32 %3749, %3742
  %3751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3752 = extractvalue %dx.types.ResRet.i32 %3751, 0
  %3753 = icmp eq i32 %3752, 0
  br i1 %3753, label %3771, label %3754

; <label>:3754                                    ; preds = %3726
  %3755 = icmp slt i32 %3752, 0
  %3756 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3727
  %3757 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3727
  %3758 = bitcast float* %3756 to i32*
  %3759 = bitcast float* %3757 to i32*
  br i1 %3755, label %3760, label %3767

; <label>:3760                                    ; preds = %3754
  %3761 = and i32 %3752, 1073741823
  %3762 = add i32 %3742, 20
  %3763 = add i32 %3762, %3761
  %3764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.i32 %3764, 0
  %3766 = extractvalue %dx.types.ResRet.i32 %3764, 1
  br label %3767

; <label>:3767                                    ; preds = %3760, %3754
  %3768 = phi i32 [ %3765, %3760 ], [ %3676, %3754 ]
  %3769 = phi i32 [ %3766, %3760 ], [ %3677, %3754 ]
  store i32 %3768, i32* %3758, align 4
  store i32 %3769, i32* %3759, align 4
  %3770 = add i32 %3727, 1
  br label %3771

; <label>:3771                                    ; preds = %3767, %3726
  %3772 = phi i32 [ %3727, %3726 ], [ %3770, %3767 ]
  %3773 = add nuw i32 %3728, 1
  %3774 = icmp eq i32 %3773, %3723
  br i1 %3774, label %3775, label %3726

; <label>:3775                                    ; preds = %3771
  br label %3776

; <label>:3776                                    ; preds = %3775, %3720
  %3777 = phi i32 [ %3721, %3720 ], [ %3772, %3775 ]
  %3778 = icmp eq i32 %3777, 1
  %3779 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 0
  %3780 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 0
  br i1 %3778, label %3781, label %3784

; <label>:3781                                    ; preds = %3776
  %3782 = load float, float* %3779, align 4
  %3783 = load float, float* %3780, align 4
  br label %3811

; <label>:3784                                    ; preds = %3776
  %3785 = load float, float* %3779, align 4
  %3786 = load float, float* %3780, align 4
  %3787 = fdiv fast float 1.000000e+00, %3786
  %3788 = fsub fast float %3785, %3787
  %3789 = icmp ugt i32 %3777, 1
  br i1 %3789, label %3790, label %3806

; <label>:3790                                    ; preds = %3784
  br label %3791

; <label>:3791                                    ; preds = %3791, %3790
  %3792 = phi float [ %3801, %3791 ], [ %3788, %3790 ]
  %3793 = phi float [ %3802, %3791 ], [ %3785, %3790 ]
  %3794 = phi i32 [ %3803, %3791 ], [ 1, %3790 ]
  %3795 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3794
  %3796 = load float, float* %3795, align 4
  %3797 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3794
  %3798 = load float, float* %3797, align 4
  %3799 = fdiv fast float 1.000000e+00, %3798
  %3800 = fsub fast float %3796, %3799
  %3801 = call float @dx.op.binary.f32(i32 36, float %3792, float %3800)  ; FMin(a,b)
  %3802 = call float @dx.op.binary.f32(i32 35, float %3793, float %3796)  ; FMax(a,b)
  %3803 = add nuw i32 %3794, 1
  %3804 = icmp eq i32 %3803, %3777
  br i1 %3804, label %3805, label %3791

; <label>:3805                                    ; preds = %3791
  br label %3806

; <label>:3806                                    ; preds = %3805, %3784
  %3807 = phi float [ %3788, %3784 ], [ %3801, %3805 ]
  %3808 = phi float [ %3785, %3784 ], [ %3802, %3805 ]
  %3809 = fsub fast float %3808, %3807
  %3810 = fdiv fast float 1.000000e+00, %3809
  br label %3811

; <label>:3811                                    ; preds = %3806, %3781
  %3812 = phi float [ %3782, %3781 ], [ %3808, %3806 ]
  %3813 = phi float [ %3783, %3781 ], [ %3810, %3806 ]
  %3814 = fadd fast float %3515, %3812
  %3815 = fmul fast float %3814, %3813
  %3816 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3817 = fmul fast float %3816, 2.000000e+00
  %3818 = fsub fast float 1.000000e+00, %3817
  %3819 = fmul fast float %3653, %3653
  %3820 = fsub fast float %3654, %3819
  %3821 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3820)  ; FMax(a,b)
  %3822 = fdiv fast float 1.000000e+00, %3821
  %3823 = fmul fast float %3654, %3653
  %3824 = fsub fast float %3655, %3823
  %3825 = fsub fast float %3818, %3653
  %3826 = fmul fast float %3818, %3818
  %3827 = fsub fast float %3826, %3654
  %3828 = fmul fast float %3822, %3824
  %3829 = fmul fast float %3828, %3825
  %3830 = fsub fast float %3827, %3829
  %3831 = fmul fast float %3654, %3654
  %3832 = fsub fast float %3656, %3831
  %3833 = fmul fast float %3824, %3824
  %3834 = fmul fast float %3833, %3822
  %3835 = fsub fast float %3832, %3834
  %3836 = fdiv fast float %3830, %3835
  %3837 = fmul fast float %3836, %3824
  %3838 = fsub fast float %3825, %3837
  %3839 = fmul fast float %3838, %3822
  %3840 = fmul fast float %3839, %3653
  %3841 = fsub fast float 1.000000e+00, %3840
  %3842 = fmul fast float %3836, %3654
  %3843 = fsub fast float %3841, %3842
  %3844 = fmul fast float %3839, %3839
  %3845 = fmul fast float %3836, 4.000000e+00
  %3846 = fmul fast float %3845, %3843
  %3847 = fsub fast float %3844, %3846
  %3848 = call float @dx.op.unary.f32(i32 24, float %3847)  ; Sqrt(value)
  %3849 = fcmp fast oge float %3839, 0.000000e+00
  %3850 = fsub fast float -0.000000e+00, %3848
  %3851 = select i1 %3849, float %3850, float %3848
  %3852 = fsub fast float %3851, %3839
  %3853 = fdiv fast float %3852, %3836
  %3854 = fdiv fast float %3843, %3852
  %3855 = fmul fast float %3853, 5.000000e-01
  %3856 = fmul fast float %3854, 2.000000e+00
  %3857 = select i1 %3849, float %3855, float %3856
  %3858 = select i1 %3849, float %3856, float %3855
  %3859 = call float @dx.op.binary.f32(i32 35, float %3857, float %3858)  ; FMax(a,b)
  %3860 = call float @dx.op.binary.f32(i32 36, float %3857, float %3858)  ; FMin(a,b)
  %3861 = fcmp fast ogt float %3818, %3859
  %3862 = fsub fast float %3818, %3860
  %3863 = fsub fast float %3818, %3859
  %3864 = fsub fast float %3859, %3860
  %3865 = select i1 %3861, float %3863, float %3864
  %3866 = fmul float %3862, %3865
  %3867 = select i1 %3861, float %3860, float %3818
  %3868 = fcmp fast ogt float %3818, %3860
  %3869 = fmul fast float %3867, %3859
  %3870 = fadd fast float %3867, %3859
  %3871 = fmul fast float %3870, %3653
  %3872 = fadd fast float %3869, %3654
  %3873 = fsub fast float %3872, %3871
  %3874 = fdiv fast float %3873, %3866
  %3875 = select i1 %3868, float %3874, float 0.000000e+00
  %3876 = fsub fast float 1.000000e+00, %3875
  %3877 = select i1 %3861, float %3876, float %3875
  %3878 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3638, 3
  %3880 = fmul fast float %3879, %3878
  %3881 = fsub fast float 1.000000e+00, %3880
  br label %3882

; <label>:3882                                    ; preds = %3811, %3523, %3488, %3484, %3450
  %3883 = phi float [ 1.000000e+00, %3450 ], [ %3881, %3811 ], [ 1.000000e+00, %3488 ], [ 1.000000e+00, %3523 ], [ 1.000000e+00, %3484 ]
  %3884 = fcmp fast ogt float %3480, 0.000000e+00
  br i1 %3884, label %3885, label %3891, !dx.controlflow.hints !109

; <label>:3885                                    ; preds = %3882
  %3886 = fadd fast float %3393, %3367
  %3887 = call float @dx.op.binary.f32(i32 35, float %3886, float 0.000000e+00)  ; FMax(a,b)
  %3888 = fadd fast float %3887, 0x3F10000000000000
  %3889 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %47, float %3382, float %3383, float undef, float undef, i32 0, i32 0, i32 undef, float %3888)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3890 = extractvalue %dx.types.ResRet.f32 %3889, 0
  br label %3891

; <label>:3891                                    ; preds = %3885, %3882
  %3892 = phi float [ %3890, %3885 ], [ 1.000000e+00, %3882 ]
  %3893 = fcmp fast ogt float %3478, 0.000000e+00
  br i1 %3893, label %3894, label %3900, !dx.controlflow.hints !110

; <label>:3894                                    ; preds = %3891
  %3895 = fadd fast float %3423, %3367
  %3896 = call float @dx.op.binary.f32(i32 35, float %3895, float 0.000000e+00)  ; FMax(a,b)
  %3897 = fadd fast float %3896, 0x3F10000000000000
  %3898 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %47, float %3374, float %3375, float undef, float undef, i32 0, i32 0, i32 undef, float %3897)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3899 = extractvalue %dx.types.ResRet.f32 %3898, 0
  br label %3900

; <label>:3900                                    ; preds = %3894, %3891
  %3901 = phi float [ %3899, %3894 ], [ 1.000000e+00, %3891 ]
  %3902 = fcmp fast ogt float %3477, 0.000000e+00
  br i1 %3902, label %3903, label %3910, !dx.controlflow.hints !111

; <label>:3903                                    ; preds = %3900
  %3904 = extractvalue %dx.types.CBufRet.f32 %3392, 0
  %3905 = fadd fast float %3904, %3367
  %3906 = call float @dx.op.binary.f32(i32 35, float %3905, float 0.000000e+00)  ; FMax(a,b)
  %3907 = fadd fast float %3906, 0x3F10000000000000
  %3908 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %3359, float %3363, float undef, float undef, i32 0, i32 0, i32 undef, float %3907)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  br label %3910

; <label>:3910                                    ; preds = %3903, %3900
  %3911 = phi float [ %3909, %3903 ], [ 1.000000e+00, %3900 ]
  %3912 = fsub fast float %3892, %3883
  %3913 = fmul fast float %3912, %3421
  %3914 = fadd fast float %3913, %3883
  %3915 = fsub fast float %3901, %3914
  %3916 = fmul fast float %3915, %3451
  %3917 = fadd fast float %3916, %3914
  %3918 = fsub fast float %3911, %3917
  %3919 = fmul fast float %3918, %3477
  %3920 = fadd fast float %3919, %3917
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 2
  %3923 = fcmp fast ogt float %3922, 0.000000e+00
  br i1 %3923, label %3924, label %3961, !dx.controlflow.hints !112

; <label>:3924                                    ; preds = %3910
  %3925 = fcmp fast ugt float %3922, 0.000000e+00
  br i1 %3925, label %3926, label %3958

; <label>:3926                                    ; preds = %3924
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.CBufRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.CBufRet.f32 %3927, 2
  %3931 = extractvalue %dx.types.CBufRet.f32 %3927, 3
  %3932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3932, 0
  %3934 = extractvalue %dx.types.CBufRet.f32 %3932, 1
  %3935 = extractvalue %dx.types.CBufRet.f32 %3932, 2
  %3936 = extractvalue %dx.types.CBufRet.f32 %3932, 3
  %3937 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3938 = extractvalue %dx.types.CBufRet.f32 %3921, 1
  %3939 = extractvalue %dx.types.CBufRet.f32 %1926, 2
  %3940 = fadd fast float %1927, %3336
  %3941 = fadd fast float %1928, %3337
  %3942 = fadd fast float %3939, %3338
  %3943 = fmul fast float %3940, %3928
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3929, float %3941, float %3943)  ; FMad(a,b,c)
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3942, float %3944)  ; FMad(a,b,c)
  %3946 = fadd fast float %3945, %3931
  %3947 = fmul fast float %3940, %3933
  %3948 = call float @dx.op.tertiary.f32(i32 46, float %3934, float %3941, float %3947)  ; FMad(a,b,c)
  %3949 = call float @dx.op.tertiary.f32(i32 46, float %3935, float %3942, float %3948)  ; FMad(a,b,c)
  %3950 = fadd fast float %3949, %3936
  %3951 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %42, float %3946, float %3950, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3952 = extractvalue %dx.types.ResRet.f32 %3951, 0
  %3953 = fmul fast float %3952, %3938
  %3954 = fadd fast float %3953, %3937
  %3955 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  %3956 = fmul fast float %3955, %3922
  %3957 = fsub fast float 1.000000e+00, %3956
  br label %3958

; <label>:3958                                    ; preds = %3926, %3924
  %3959 = phi float [ %3957, %3926 ], [ 1.000000e+00, %3924 ]
  %3960 = fmul fast float %3959, %3920
  br label %3961

; <label>:3961                                    ; preds = %3958, %3910, %3316
  %3962 = phi float [ 1.000000e+00, %3316 ], [ %3960, %3958 ], [ %3920, %3910 ]
  %3963 = call float @dx.op.binary.f32(i32 36, float %3962, float %3962)  ; FMin(a,b)
  %3964 = call float @dx.op.binary.f32(i32 36, float %3962, float %3963)  ; FMin(a,b)
  %3965 = fcmp fast ogt float %3964, 0.000000e+00
  br i1 %3965, label %3966, label %4124, !dx.controlflow.hints !113

; <label>:3966                                    ; preds = %3961
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = extractvalue %dx.types.CBufRet.f32 %3967, 1
  %3970 = extractvalue %dx.types.CBufRet.f32 %3967, 2
  %3971 = extractvalue %dx.types.CBufRet.f32 %3967, 3
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.CBufRet.f32 %3972, 1
  %3975 = extractvalue %dx.types.CBufRet.f32 %3972, 2
  %3976 = extractvalue %dx.types.CBufRet.f32 %3972, 3
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.CBufRet.f32 %3977, 1
  %3980 = extractvalue %dx.types.CBufRet.f32 %3977, 2
  %3981 = extractvalue %dx.types.CBufRet.f32 %3977, 3
  %3982 = fmul fast float %3968, %3336
  %3983 = call float @dx.op.tertiary.f32(i32 46, float %3337, float %3969, float %3982)  ; FMad(a,b,c)
  %3984 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3970, float %3983)  ; FMad(a,b,c)
  %3985 = fadd fast float %3984, %3971
  %3986 = fmul fast float %3973, %3336
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3337, float %3974, float %3986)  ; FMad(a,b,c)
  %3988 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3975, float %3987)  ; FMad(a,b,c)
  %3989 = fadd fast float %3988, %3976
  %3990 = fmul fast float %3978, %3336
  %3991 = call float @dx.op.tertiary.f32(i32 46, float %3337, float %3979, float %3990)  ; FMad(a,b,c)
  %3992 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3980, float %3991)  ; FMad(a,b,c)
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = extractvalue %dx.types.CBufRet.f32 %3993, 1
  %3996 = extractvalue %dx.types.CBufRet.f32 %3993, 3
  %3997 = fmul fast float %3996, %3985
  %3998 = fmul fast float %3996, %3989
  %3999 = fadd fast float %3997, %3994
  %4000 = fadd fast float %3998, %3995
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4003 = extractvalue %dx.types.CBufRet.f32 %4001, 1
  %4004 = fsub fast float %3999, %4002
  %4005 = fsub fast float %4000, %4003
  %4006 = fcmp fast olt float %4004, 0.000000e+00
  %4007 = fcmp fast olt float %4005, 0.000000e+00
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.CBufRet.f32 %4008, 1
  %4011 = extractvalue %dx.types.CBufRet.f32 %4008, 2
  %4012 = extractvalue %dx.types.CBufRet.f32 %4008, 3
  %4013 = select i1 %4006, float %4009, float %4011
  %4014 = select i1 %4007, float %4010, float %4012
  %4015 = fmul fast float %4013, %4004
  %4016 = fmul fast float %4014, %4005
  %4017 = call float @dx.op.unary.f32(i32 6, float %4015)  ; FAbs(value)
  %4018 = call float @dx.op.unary.f32(i32 6, float %4016)  ; FAbs(value)
  %4019 = extractvalue %dx.types.CBufRet.f32 %3331, 0
  %4020 = call float @dx.op.binary.f32(i32 35, float %4017, float %4018)  ; FMax(a,b)
  %4021 = fsub fast float %4019, %4020
  %4022 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4023 = fcmp fast ogt float %4022, 0.000000e+00
  br i1 %4023, label %4024, label %4065, !dx.controlflow.hints !114

; <label>:4024                                    ; preds = %3966
  %4025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %3999, float %4000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 1
  %4027 = fcmp fast ogt float %4026, 0.000000e+00
  br i1 %4027, label %4028, label %4060

; <label>:4028                                    ; preds = %4024
  %4029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %3999, float %4000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4033 = extractvalue %dx.types.ResRet.f32 %4029, 3
  %4034 = fsub fast float 1.000000e+00, %3981
  %4035 = fsub fast float %4034, %3992
  %4036 = fmul fast float %4035, 0x400921FB60000000
  %4037 = fadd fast float %4036, 0x3FF921FB60000000
  %4038 = call float @dx.op.unary.f32(i32 13, float %4037)  ; Sin(value)
  %4039 = fadd fast float %4038, -1.000000e+00
  %4040 = fmul fast float %4039, 0x3FD45F3060000000
  %4041 = fmul fast float %4035, 0x401921FB60000000
  %4042 = fadd fast float %4041, 0x400921FB60000000
  %4043 = call float @dx.op.unary.f32(i32 13, float %4042)  ; Sin(value)
  %4044 = fadd fast float %4043, 0x3E7777A5C0000000
  %4045 = fmul fast float %4044, 0x3FC45F3060000000
  %4046 = fmul fast float %4035, 0x4022D97C80000000
  %4047 = fadd fast float %4046, 0x4012D97C80000000
  %4048 = call float @dx.op.unary.f32(i32 13, float %4047)  ; Sin(value)
  %4049 = fadd fast float %4048, 1.000000e+00
  %4050 = fmul fast float %4049, 0x3FBB2995E0000000
  %4051 = fmul fast float %4035, 0x402921FB60000000
  %4052 = fadd fast float %4051, 0x401921FB60000000
  %4053 = call float @dx.op.unary.f32(i32 13, float %4052)  ; Sin(value)
  %4054 = fadd fast float %4053, 0xBE8777A5C0000000
  %4055 = fmul fast float %4054, 0x3FB45F3060000000
  %4056 = call float @dx.op.dot4.f32(i32 56, float %4030, float %4031, float %4032, float %4033, float %4040, float %4045, float %4050, float %4055)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4057 = fmul fast float %4056, 0xBFF7154760000000
  %4058 = call float @dx.op.unary.f32(i32 21, float %4057)  ; Exp(value)
  %4059 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  br label %4060

; <label>:4060                                    ; preds = %4028, %4024
  %4061 = phi float [ %4059, %4028 ], [ 1.000000e+00, %4024 ]
  %4062 = fadd fast float %4061, -1.000000e+00
  %4063 = fmul fast float %4062, %4022
  %4064 = fadd fast float %4063, 1.000000e+00
  br label %4065

; <label>:4065                                    ; preds = %4060, %3966
  %4066 = phi float [ %4064, %4060 ], [ 1.000000e+00, %3966 ]
  %4067 = fmul fast float %4066, %3962
  %4068 = extractvalue %dx.types.CBufRet.f32 %1926, 2
  %4069 = fadd fast float %1927, %124
  %4070 = fadd fast float %1928, %125
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 1
  %4073 = fsub fast float -0.000000e+00, %4069
  %4074 = fsub fast float -0.000000e+00, %4070
  %4075 = fsub fast float -0.000000e+00, %126
  %4076 = fsub fast float %4075, %4068
  %4077 = fadd fast float %4076, %4072
  %4078 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4073, float %4074, float %4077)  ; Dot3(ax,ay,az,bx,by,bz)
  %4079 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3317, float %3318, float %3319)  ; Dot3(ax,ay,az,bx,by,bz)
  %4080 = fdiv fast float 1.000000e+00, %4079
  %4081 = fmul fast float %4080, %4078
  %4082 = fmul fast float %3317, %4081
  %4083 = fmul fast float %3318, %4081
  %4084 = fadd fast float %4082, %4069
  %4085 = fadd fast float %4083, %4070
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = extractvalue %dx.types.CBufRet.f32 %4086, 1
  %4089 = fsub fast float %4084, %4087
  %4090 = fsub fast float %4085, %4088
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 2
  %4093 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4094 = fmul fast float %4089, %4092
  %4095 = fmul fast float %4090, %4093
  %4096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.i32 %4096, 3
  %4098 = icmp eq i32 %4097, 0
  br i1 %4098, label %4104, label %4099

; <label>:4099                                    ; preds = %4065
  %4100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %4094, float %4095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.ResRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.ResRet.f32 %4100, 2
  br label %4109

; <label>:4104                                    ; preds = %4065
  %4105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %45, float %4094, float %4095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4106 = extractvalue %dx.types.ResRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.ResRet.f32 %4105, 1
  %4108 = extractvalue %dx.types.ResRet.f32 %4105, 2
  br label %4109

; <label>:4109                                    ; preds = %4104, %4099
  %4110 = phi float [ %4101, %4099 ], [ %4106, %4104 ]
  %4111 = phi float [ %4102, %4099 ], [ %4107, %4104 ]
  %4112 = phi float [ %4103, %4099 ], [ %4108, %4104 ]
  %4113 = extractvalue %dx.types.CBufRet.f32 %4071, 2
  %4114 = fmul fast float %4113, %4110
  %4115 = extractvalue %dx.types.CBufRet.f32 %4071, 0
  %4116 = fsub fast float %4081, %4115
  %4117 = fsub fast float %4116, %4114
  %4118 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4117)  ; FMax(a,b)
  %4119 = fmul fast float %4118, %4111
  %4120 = call float @dx.op.binary.f32(i32 36, float %4112, float %4119)  ; FMin(a,b)
  %4121 = fmul fast float %4120, 0xBFF7154760000000
  %4122 = call float @dx.op.unary.f32(i32 21, float %4121)  ; Exp(value)
  %4123 = fmul fast float %4067, %4122
  br label %4124

; <label>:4124                                    ; preds = %4109, %3961
  %4125 = phi float [ %4123, %4109 ], [ %3962, %3961 ]
  %4126 = call float @dx.op.binary.f32(i32 36, float %4125, float %4125)  ; FMin(a,b)
  %4127 = call float @dx.op.binary.f32(i32 36, float %4125, float %4126)  ; FMin(a,b)
  %4128 = fcmp fast ogt float %4127, 0.000000e+00
  br i1 %4128, label %4129, label %4316, !dx.controlflow.hints !115

; <label>:4129                                    ; preds = %4124
  %4130 = fmul fast float %4125, %3328
  %4131 = fmul fast float %4125, %3329
  %4132 = fmul fast float %4125, %3330
  %4133 = fsub fast float %3317, %1899
  %4134 = fsub fast float %3318, %1898
  %4135 = fsub fast float %3319, %1897
  %4136 = call float @dx.op.dot3.f32(i32 55, float %4133, float %4134, float %4135, float %4133, float %4134, float %4135)  ; Dot3(ax,ay,az,bx,by,bz)
  %4137 = call float @dx.op.unary.f32(i32 25, float %4136)  ; Rsqrt(value)
  %4138 = fmul fast float %4137, %4133
  %4139 = fmul fast float %4137, %4134
  %4140 = fmul fast float %4137, %4135
  %4141 = call float @dx.op.dot3.f32(i32 55, float %3317, float %3318, float %3319, float %1903, float %1904, float %1905)  ; Dot3(ax,ay,az,bx,by,bz)
  %4142 = call float @dx.op.dot3.f32(i32 55, float %1896, float %1895, float %1894, float %4138, float %4139, float %4140)  ; Dot3(ax,ay,az,bx,by,bz)
  %4143 = call float @dx.op.unary.f32(i32 7, float %4141)  ; Saturate(value)
  %4144 = fmul fast float %4143, %4143
  %4145 = fmul fast float %4144, %3312
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = fmul fast float %4146, %4143
  %4148 = call float @dx.op.dot3.f32(i32 55, float %1903, float %1904, float %1905, float %4138, float %4139, float %4140)  ; Dot3(ax,ay,az,bx,by,bz)
  %4149 = fmul fast float %4148, %4148
  %4150 = call float @dx.op.unary.f32(i32 6, float %4141)  ; FAbs(value)
  %4151 = fsub fast float 1.000000e+00, %1909
  %4152 = call float @dx.op.binary.f32(i32 35, float %4151, float 0x3F847AE140000000)  ; FMax(a,b)
  %4153 = fmul fast float %4152, %4152
  %4154 = fmul fast float %4153, %4153
  %4155 = fsub fast float 1.000000e+00, %4154
  %4156 = fmul fast float %1913, %1913
  %4157 = fmul fast float %4156, %4155
  %4158 = fadd fast float %4157, %4154
  %4159 = bitcast float %4158 to i32
  %4160 = ashr i32 %4159, 1
  %4161 = add nsw i32 %4160, 532487669
  %4162 = bitcast i32 %4161 to float
  %4163 = fadd fast float %4162, %1913
  %4164 = fmul fast float %4154, %4149
  %4165 = fsub fast float 1.000000e+00, %4149
  %4166 = fadd fast float %4165, %4164
  %4167 = fmul fast float %4150, %4150
  %4168 = fmul fast float %4167, %4155
  %4169 = fadd fast float %4168, %4154
  %4170 = bitcast float %4169 to i32
  %4171 = ashr i32 %4170, 1
  %4172 = add nsw i32 %4171, 532487669
  %4173 = bitcast i32 %4172 to float
  %4174 = fadd fast float %4173, %4150
  %4175 = fmul fast float %4166, %4166
  %4176 = fmul fast float %4175, %4163
  %4177 = fmul fast float %4176, %4174
  %4178 = fdiv fast float 0x3FF0A00000000000, %4177
  %4179 = fmul fast float %4178, %4154
  %4180 = fmul fast float %3178, 0x3FF9999980000000
  %4181 = fsub fast float 5.000000e+00, %4180
  %4182 = call float @dx.op.unary.f32(i32 6, float %4142)  ; FAbs(value)
  %4183 = fsub fast float 1.000000e+00, %4182
  %4184 = fmul fast float %3178, 0x41D9660740000000
  %4185 = fadd fast float %4184, 0xC1EFBF8940000000
  %4186 = bitcast float %4183 to i32
  %4187 = sitofp i32 %4186 to float
  %4188 = fmul fast float %4187, %4181
  %4189 = fadd fast float %4185, %4188
  %4190 = fptosi float %4189 to i32
  %4191 = bitcast i32 %4190 to float
  %4192 = fsub fast float 1.000000e+00, %1906
  %4193 = fsub fast float 1.000000e+00, %1907
  %4194 = fsub fast float 1.000000e+00, %1911
  %4195 = fmul fast float %4191, %4192
  %4196 = fmul fast float %4191, %4193
  %4197 = fmul fast float %4191, %4194
  %4198 = fadd fast float %4195, %1906
  %4199 = fadd fast float %4196, %1907
  %4200 = fadd fast float %4197, %1911
  br i1 %3201, label %4201, label %4224

; <label>:4201                                    ; preds = %4129
  %4202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1565, float %4182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.ResRet.f32 %4202, 1
  %4205 = extractvalue %dx.types.ResRet.f32 %4202, 2
  %4206 = fadd fast float %4203, -5.000000e-01
  %4207 = fadd fast float %4204, -5.000000e-01
  %4208 = fadd fast float %4205, -5.000000e-01
  %4209 = fmul fast float %1906, 4.000000e+00
  %4210 = fmul fast float %4209, %4192
  %4211 = fmul fast float %4210, %4206
  %4212 = fmul fast float %1907, 4.000000e+00
  %4213 = fmul fast float %4212, %4193
  %4214 = fmul fast float %4213, %4207
  %4215 = fmul fast float %1911, 4.000000e+00
  %4216 = fmul fast float %4215, %4194
  %4217 = fmul fast float %4216, %4208
  %4218 = fadd fast float %4211, %4198
  %4219 = fadd fast float %4214, %4199
  %4220 = fadd fast float %4217, %4200
  %4221 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  %4222 = call float @dx.op.unary.f32(i32 7, float %4219)  ; Saturate(value)
  %4223 = call float @dx.op.unary.f32(i32 7, float %4220)  ; Saturate(value)
  br label %4224

; <label>:4224                                    ; preds = %4201, %4129
  %4225 = phi float [ %4221, %4201 ], [ %4198, %4129 ]
  %4226 = phi float [ %4222, %4201 ], [ %4199, %4129 ]
  %4227 = phi float [ %4223, %4201 ], [ %4200, %4129 ]
  %4228 = fmul fast float %4141, 9.843750e-01
  %4229 = fadd fast float %4228, 7.812500e-03
  %4230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %45, float %4229, float %3182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4232 = extractvalue %dx.types.ResRet.f32 %4230, 1
  %4233 = extractvalue %dx.types.ResRet.f32 %4230, 2
  %4234 = extractvalue %dx.types.ResRet.f32 %4230, 3
  %4235 = fsub fast float %4233, %4231
  %4236 = fsub fast float %4234, %4232
  %4237 = fmul fast float %4235, %3188
  %4238 = fmul fast float %4236, %3188
  %4239 = fadd fast float %4237, %4231
  %4240 = fadd fast float %4238, %4232
  %4241 = fmul fast float %4239, %1906
  %4242 = fmul fast float %4239, %1907
  %4243 = fmul fast float %4239, %1911
  %4244 = fadd fast float %4241, %4240
  %4245 = fadd fast float %4242, %4240
  %4246 = fadd fast float %4243, %4240
  br i1 %3201, label %4247, label %4270

; <label>:4247                                    ; preds = %4224
  %4248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1565, float %4141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 0
  %4250 = extractvalue %dx.types.ResRet.f32 %4248, 1
  %4251 = extractvalue %dx.types.ResRet.f32 %4248, 2
  %4252 = fadd fast float %4249, -5.000000e-01
  %4253 = fadd fast float %4250, -5.000000e-01
  %4254 = fadd fast float %4251, -5.000000e-01
  %4255 = fmul fast float %1906, 4.000000e+00
  %4256 = fmul fast float %4255, %4192
  %4257 = fmul fast float %4256, %4252
  %4258 = fmul fast float %1907, 4.000000e+00
  %4259 = fmul fast float %4258, %4193
  %4260 = fmul fast float %4259, %4253
  %4261 = fmul fast float %1911, 4.000000e+00
  %4262 = fmul fast float %4261, %4194
  %4263 = fmul fast float %4262, %4254
  %4264 = fadd fast float %4257, %4244
  %4265 = fadd fast float %4260, %4245
  %4266 = fadd fast float %4263, %4246
  %4267 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4268 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4269 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  br label %4270

; <label>:4270                                    ; preds = %4247, %4224
  %4271 = phi float [ %4267, %4247 ], [ %4244, %4224 ]
  %4272 = phi float [ %4268, %4247 ], [ %4245, %4224 ]
  %4273 = phi float [ %4269, %4247 ], [ %4246, %4224 ]
  %4274 = call float @dx.op.binary.f32(i32 35, float %4272, float %4273)  ; FMax(a,b)
  %4275 = call float @dx.op.binary.f32(i32 35, float %4271, float %4274)  ; FMax(a,b)
  %4276 = fsub fast float 1.000000e+00, %4275
  %4277 = fmul fast float %4225, %4179
  %4278 = fmul fast float %4226, %4179
  %4279 = fmul fast float %4227, %4179
  %4280 = fsub fast float 1.000000e+00, %4142
  %4281 = bitcast float %4280 to i32
  %4282 = sitofp i32 %4281 to float
  %4283 = fmul fast float %4282, 5.000000e+00
  %4284 = fadd fast float %4283, 0xC1EFBF8940000000
  %4285 = fptosi float %4284 to i32
  %4286 = bitcast i32 %4285 to float
  %4287 = fmul fast float %4286, %1564
  %4288 = fmul fast float %4276, %4287
  %4289 = fmul fast float %4288, %3251
  %4290 = fmul fast float %4288, %3252
  %4291 = fmul fast float %4288, %3253
  %4292 = fadd fast float %4289, %4277
  %4293 = fadd fast float %4290, %4278
  %4294 = fadd fast float %4291, %4279
  %4295 = fmul fast float %4147, %4130
  %4296 = fmul fast float %4295, %4276
  %4297 = fmul fast float %4147, %4131
  %4298 = fmul fast float %4297, %4276
  %4299 = fmul fast float %4147, %4132
  %4300 = fmul fast float %4299, %4276
  %4301 = fmul fast float %4295, %4292
  %4302 = fmul fast float %4297, %4293
  %4303 = fmul fast float %4299, %4294
  %4304 = fadd fast float %4296, %3235
  %4305 = fmul fast float %4304, %1585
  %4306 = fadd fast float %4298, %3236
  %4307 = fmul fast float %4306, %1585
  %4308 = fadd fast float %4300, %3237
  %4309 = fmul fast float %4308, %1585
  %4310 = fadd fast float %4301, %3304
  %4311 = fmul fast float %4310, %1585
  %4312 = fadd fast float %4302, %3307
  %4313 = fmul fast float %4312, %1585
  %4314 = fadd fast float %4303, %3310
  %4315 = fmul fast float %4314, %1585
  br label %4316

; <label>:4316                                    ; preds = %4270, %4124, %3228
  %4317 = phi float [ %3305, %3228 ], [ %3305, %4124 ], [ %4311, %4270 ]
  %4318 = phi float [ %3308, %3228 ], [ %3308, %4124 ], [ %4313, %4270 ]
  %4319 = phi float [ %3311, %3228 ], [ %3311, %4124 ], [ %4315, %4270 ]
  %4320 = phi float [ %3300, %3228 ], [ %3300, %4124 ], [ %4305, %4270 ]
  %4321 = phi float [ %3301, %3228 ], [ %3301, %4124 ], [ %4307, %4270 ]
  %4322 = phi float [ %3302, %3228 ], [ %3302, %4124 ], [ %4309, %4270 ]
  %4323 = fmul fast float %1585, %1585
  %4324 = fmul fast float %4323, %3277
  %4325 = fmul fast float %4323, %3278
  %4326 = fmul fast float %4323, %3279
  %4327 = fadd fast float %4324, 1.000000e+00
  %4328 = fadd fast float %4325, 1.000000e+00
  %4329 = fadd fast float %4326, 1.000000e+00
  %4330 = call float @dx.op.dot3.f32(i32 55, float %4327, float %4328, float %4329, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4331 = fsub fast float 1.000000e+00, %4330
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 0
  %4334 = fmul fast float %4333, %3283
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 3
  %4337 = fsub fast float 1.000000e+00, %1560
  %4338 = call float @dx.op.unary.f32(i32 7, float %4337)  ; Saturate(value)
  %4339 = fadd fast float %4322, %1559
  %4340 = fmul fast float %4339, %1560
  %4341 = fmul fast float %4338, %4336
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 3
  %4344 = fmul fast float %4320, %1900
  %4345 = fmul fast float %4321, %1901
  %4346 = fmul fast float %4322, %1902
  %4347 = fcmp fast ogt float %68, %175
  %4348 = and i1 %4347, %1632
  %4349 = or i1 %1711, %4348
  %4350 = icmp eq i32 %1631, 2
  %4351 = fcmp fast ole float %68, %175
  %4352 = and i1 %4351, %4350
  %4353 = or i1 %4352, %4349
  br i1 %4348, label %4354, label %4613

; <label>:4354                                    ; preds = %4316
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 2
  %4357 = extractvalue %dx.types.CBufRet.f32 %4355, 3
  %4358 = fmul fast float %4356, %77
  %4359 = fmul fast float %4357, %78
  %4360 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4362 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %4360, float %4361, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.ResRet.f32 %4362, 1
  %4365 = extractvalue %dx.types.ResRet.f32 %4362, 2
  %4366 = extractvalue %dx.types.ResRet.f32 %4362, 3
  %4367 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %4360, float %4361, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = extractvalue %dx.types.ResRet.f32 %4367, 1
  %4370 = extractvalue %dx.types.ResRet.f32 %4367, 2
  %4371 = extractvalue %dx.types.ResRet.f32 %4367, 3
  %4372 = call float @dx.op.binary.f32(i32 35, float %4364, float %4365)  ; FMax(a,b)
  %4373 = call float @dx.op.binary.f32(i32 35, float %4363, float %4372)  ; FMax(a,b)
  %4374 = call float @dx.op.binary.f32(i32 35, float %4373, float %4366)  ; FMax(a,b)
  %4375 = call float @dx.op.binary.f32(i32 36, float %4369, float %4370)  ; FMin(a,b)
  %4376 = call float @dx.op.binary.f32(i32 36, float %4368, float %4375)  ; FMin(a,b)
  %4377 = call float @dx.op.binary.f32(i32 36, float %4376, float %4371)  ; FMin(a,b)
  %4378 = fmul fast float %4374, 2.550000e+02
  %4379 = fadd fast float %4378, 0x3F70101020000000
  %4380 = fptoui float %4379 to i32
  %4381 = fmul fast float %4377, 2.550000e+02
  %4382 = fadd fast float %4381, 0x3F70101020000000
  %4383 = fptoui float %4382 to i32
  %4384 = icmp ult i32 %4380, %4383
  br i1 %4384, label %4385, label %4553

; <label>:4385                                    ; preds = %4354
  %4386 = fcmp fast ogt float %67, 9.843750e-01
  %4387 = fadd fast float %68, -4.000000e+00
  %4388 = select i1 %4386, float -4.000000e+00, float %4387
  %4389 = call float @dx.op.binary.f32(i32 35, float %4388, float 0.000000e+00)  ; FMax(a,b)
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 0
  %4392 = fadd fast float %4391, %4389
  %4393 = extractvalue %dx.types.CBufRet.f32 %4390, 2
  %4394 = fmul fast float %4392, %4393
  %4395 = call float @dx.op.unary.f32(i32 23, float %4394)  ; Log(value)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4390, 3
  %4397 = fmul fast float %4396, %4395
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 2
  %4400 = fmul fast float %4397, %4399
  %4401 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4402 = uitofp i32 %4380 to float
  %4403 = uitofp i32 %4383 to float
  %4404 = fadd fast float %4402, 5.000000e-01
  %4405 = fadd fast float %4403, 5.000000e-01
  %4406 = fmul fast float %4399, %4404
  %4407 = fmul fast float %4399, %4405
  %4408 = fadd fast float %4406, 0x3F0FFB4800000000
  %4409 = fadd fast float %4407, 0xBF0FFB4800000000
  %4410 = call float @dx.op.binary.f32(i32 35, float %4401, float %4408)  ; FMax(a,b)
  %4411 = call float @dx.op.binary.f32(i32 36, float %4410, float %4409)  ; FMin(a,b)
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 1
  %4414 = extractvalue %dx.types.CBufRet.f32 %4412, 2
  %4415 = extractvalue %dx.types.CBufRet.f32 %4412, 0
  %4416 = fmul fast float %4413, %4411
  %4417 = fadd fast float %4415, %4416
  %4418 = fadd fast float %4415, %4414
  %4419 = fsub fast float %4413, %4414
  %4420 = fadd fast float %4419, %4415
  %4421 = call float @dx.op.binary.f32(i32 35, float %4417, float %4418)  ; FMax(a,b)
  %4422 = call float @dx.op.binary.f32(i32 36, float %4421, float %4420)  ; FMin(a,b)
  %4423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %4360, float %4361, float %4422, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4424 = extractvalue %dx.types.ResRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.ResRet.f32 %4423, 1
  %4426 = extractvalue %dx.types.ResRet.f32 %4423, 2
  %4427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.i32 %4427, 0
  %4429 = extractvalue %dx.types.CBufRet.i32 %4427, 1
  %4430 = uitofp i32 %4428 to float
  %4431 = uitofp i32 %4429 to float
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.CBufRet.f32 %4432, 1
  %4435 = fmul fast float %4430, %4360
  %4436 = fmul fast float %4431, %4361
  %4437 = fadd fast float %4435, -5.000000e-01
  %4438 = fadd fast float %4436, -5.000000e-01
  %4439 = call float @dx.op.unary.f32(i32 22, float %4437)  ; Frc(value)
  %4440 = call float @dx.op.unary.f32(i32 22, float %4438)  ; Frc(value)
  %4441 = fmul fast float %4439, %4439
  %4442 = fmul fast float %4441, %4439
  %4443 = fsub fast float 3.000000e+00, %4439
  %4444 = fmul fast float %4441, %4443
  %4445 = fmul fast float %4439, 3.000000e+00
  %4446 = fmul fast float %4442, 3.000000e+00
  %4447 = fmul fast float %4441, 6.000000e+00
  %4448 = fsub fast float %4446, %4447
  %4449 = fadd fast float %4448, 4.000000e+00
  %4450 = fmul fast float %4449, 0x3FC5555560000000
  %4451 = fmul fast float %4442, -3.000000e+00
  %4452 = fadd fast float %4441, %4439
  %4453 = fmul fast float %4452, 3.000000e+00
  %4454 = fadd fast float %4451, 1.000000e+00
  %4455 = fadd fast float %4454, %4453
  %4456 = fmul fast float %4442, 0x3FC5555560000000
  %4457 = fmul fast float %4440, %4440
  %4458 = fmul fast float %4457, %4440
  %4459 = fsub fast float 3.000000e+00, %4440
  %4460 = fmul fast float %4457, %4459
  %4461 = fmul fast float %4440, 3.000000e+00
  %4462 = fmul fast float %4458, 3.000000e+00
  %4463 = fmul fast float %4457, 6.000000e+00
  %4464 = fsub fast float %4462, %4463
  %4465 = fadd fast float %4464, 4.000000e+00
  %4466 = fmul fast float %4465, 0x3FC5555560000000
  %4467 = fmul fast float %4458, -3.000000e+00
  %4468 = fadd fast float %4457, %4440
  %4469 = fmul fast float %4468, 3.000000e+00
  %4470 = fadd fast float %4467, 1.000000e+00
  %4471 = fadd fast float %4470, %4469
  %4472 = fmul fast float %4458, 0x3FC5555560000000
  %4473 = fadd fast float %4439, 1.000000e+00
  %4474 = fsub fast float 1.000000e+00, %4445
  %4475 = fadd fast float %4474, %4444
  %4476 = fadd fast float %4475, %4449
  %4477 = fmul fast float %4476, 0x3FC5555560000000
  %4478 = fdiv fast float %4450, %4477
  %4479 = fsub fast float %4473, %4478
  %4480 = fsub fast float 1.000000e+00, %4439
  %4481 = fadd fast float %4455, %4442
  %4482 = fmul fast float %4481, 0x3FC5555560000000
  %4483 = fdiv fast float %4456, %4482
  %4484 = fadd fast float %4480, %4483
  %4485 = fadd fast float %4440, 1.000000e+00
  %4486 = fsub fast float 1.000000e+00, %4461
  %4487 = fadd fast float %4486, %4460
  %4488 = fadd fast float %4487, %4465
  %4489 = fmul fast float %4488, 0x3FC5555560000000
  %4490 = fdiv fast float %4466, %4489
  %4491 = fsub fast float %4485, %4490
  %4492 = fsub fast float 1.000000e+00, %4440
  %4493 = fadd fast float %4471, %4458
  %4494 = fmul fast float %4493, 0x3FC5555560000000
  %4495 = fdiv fast float %4472, %4494
  %4496 = fadd fast float %4495, %4492
  %4497 = fmul fast float %4479, %4433
  %4498 = fsub fast float %4360, %4497
  %4499 = fmul fast float %4484, %4433
  %4500 = fadd fast float %4499, %4360
  %4501 = fmul fast float %4496, %4434
  %4502 = fadd fast float %4501, %4361
  %4503 = fmul fast float %4491, %4434
  %4504 = fsub fast float %4361, %4503
  %4505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4498, float %4504, float %4422, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4506 = extractvalue %dx.types.ResRet.f32 %4505, 0
  %4507 = extractvalue %dx.types.ResRet.f32 %4505, 1
  %4508 = extractvalue %dx.types.ResRet.f32 %4505, 2
  %4509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4500, float %4504, float %4422, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.ResRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.ResRet.f32 %4509, 2
  %4513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4498, float %4502, float %4422, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4514 = extractvalue %dx.types.ResRet.f32 %4513, 0
  %4515 = extractvalue %dx.types.ResRet.f32 %4513, 1
  %4516 = extractvalue %dx.types.ResRet.f32 %4513, 2
  %4517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4500, float %4502, float %4422, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4518 = extractvalue %dx.types.ResRet.f32 %4517, 0
  %4519 = extractvalue %dx.types.ResRet.f32 %4517, 1
  %4520 = extractvalue %dx.types.ResRet.f32 %4517, 2
  %4521 = fsub fast float %4514, %4506
  %4522 = fsub fast float %4515, %4507
  %4523 = fsub fast float %4516, %4508
  %4524 = fmul fast float %4521, %4494
  %4525 = fmul fast float %4522, %4494
  %4526 = fmul fast float %4523, %4494
  %4527 = fadd fast float %4524, %4506
  %4528 = fadd fast float %4525, %4507
  %4529 = fadd fast float %4526, %4508
  %4530 = fsub fast float %4518, %4510
  %4531 = fsub fast float %4519, %4511
  %4532 = fsub fast float %4520, %4512
  %4533 = fmul fast float %4530, %4494
  %4534 = fmul fast float %4531, %4494
  %4535 = fmul fast float %4532, %4494
  %4536 = fsub fast float %4510, %4527
  %4537 = fadd fast float %4536, %4533
  %4538 = fsub fast float %4511, %4528
  %4539 = fadd fast float %4538, %4534
  %4540 = fsub fast float %4512, %4529
  %4541 = fadd fast float %4540, %4535
  %4542 = fmul fast float %4537, %4482
  %4543 = fmul fast float %4539, %4482
  %4544 = fmul fast float %4541, %4482
  %4545 = fadd fast float %4542, %4527
  %4546 = fadd fast float %4543, %4528
  %4547 = fadd fast float %4544, %4529
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 1
  %4550 = fmul fast float %4545, %4549
  %4551 = fmul fast float %4546, %4549
  %4552 = fmul fast float %4547, %4549
  br label %4553

; <label>:4553                                    ; preds = %4385, %4354
  %4554 = phi float [ %4424, %4385 ], [ 1.000000e+00, %4354 ]
  %4555 = phi float [ %4425, %4385 ], [ 1.000000e+00, %4354 ]
  %4556 = phi float [ %4426, %4385 ], [ 1.000000e+00, %4354 ]
  %4557 = phi float [ %4550, %4385 ], [ 0.000000e+00, %4354 ]
  %4558 = phi float [ %4551, %4385 ], [ 0.000000e+00, %4354 ]
  %4559 = phi float [ %4552, %4385 ], [ 0.000000e+00, %4354 ]
  %4560 = fmul fast float %4557, %4331
  %4561 = fmul fast float %4558, %4331
  %4562 = fmul fast float %4559, %4331
  %4563 = call float @dx.op.dot3.f32(i32 55, float %4554, float %4555, float %4556, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4564 = call float @dx.op.dot3.f32(i32 55, float %4560, float %4561, float %4562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4565 = select i1 %214, float %4563, float %4554
  %4566 = select i1 %214, float %4563, float %4555
  %4567 = select i1 %214, float 1.000000e+00, float %4556
  %4568 = select i1 %214, float %4564, float %4560
  %4569 = select i1 %214, float 0.000000e+00, float %4561
  %4570 = select i1 %214, float 0.000000e+00, float %4562
  %4571 = fmul fast float %4565, %4344
  %4572 = fmul fast float %4566, %4345
  %4573 = fmul fast float %4567, %4346
  %4574 = fadd fast float %4571, %4568
  %4575 = fadd fast float %4572, %4569
  %4576 = fadd fast float %4570, %4573
  %4577 = fmul fast float %4565, %4317
  %4578 = fmul fast float %4566, %4318
  %4579 = fmul fast float %4567, %4319
  %4580 = fmul fast float %77, 2.000000e+00
  %4581 = fmul fast float %4580, %4356
  %4582 = fmul fast float %78, 2.000000e+00
  %4583 = fmul fast float %4582, %4357
  %4584 = fsub fast float 1.000000e+00, %4581
  %4585 = fsub fast float 1.000000e+00, %4583
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.CBufRet.f32 %4586, 1
  %4589 = extractvalue %dx.types.CBufRet.f32 %4586, 2
  %4590 = fmul fast float %4584, %4587
  %4591 = fmul fast float %4584, %4588
  %4592 = fmul fast float %4584, %4589
  %4593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.CBufRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.CBufRet.f32 %4593, 2
  %4597 = fmul fast float %4585, %4594
  %4598 = fmul fast float %4585, %4595
  %4599 = fmul fast float %4585, %4596
  %4600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.f32 %4600, 0
  %4602 = extractvalue %dx.types.CBufRet.f32 %4600, 1
  %4603 = extractvalue %dx.types.CBufRet.f32 %4600, 2
  %4604 = fadd fast float %4597, %4601
  %4605 = fadd fast float %4604, %4590
  %4606 = fadd fast float %4598, %4602
  %4607 = fadd fast float %4606, %4591
  %4608 = fadd fast float %4599, %4603
  %4609 = fadd fast float %4608, %4592
  %4610 = fmul fast float %4605, %175
  %4611 = fmul fast float %4607, %175
  %4612 = fmul fast float %4609, %175
  br label %4613

; <label>:4613                                    ; preds = %4553, %4316
  %4614 = phi float [ %4610, %4553 ], [ %124, %4316 ]
  %4615 = phi float [ %4611, %4553 ], [ %125, %4316 ]
  %4616 = phi float [ %4612, %4553 ], [ %126, %4316 ]
  %4617 = phi float [ %175, %4553 ], [ %68, %4316 ]
  %4618 = phi float [ %4574, %4553 ], [ %4344, %4316 ]
  %4619 = phi float [ %4575, %4553 ], [ %4345, %4316 ]
  %4620 = phi float [ %4576, %4553 ], [ %4346, %4316 ]
  %4621 = phi float [ %4577, %4553 ], [ %4317, %4316 ]
  %4622 = phi float [ %4578, %4553 ], [ %4318, %4316 ]
  %4623 = phi float [ %4579, %4553 ], [ %4319, %4316 ]
  %4624 = phi float [ %4554, %4553 ], [ 1.000000e+00, %4316 ]
  br i1 %4353, label %5775, label %4625

; <label>:4625                                    ; preds = %4613
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 0
  %4628 = extractvalue %dx.types.CBufRet.f32 %4626, 1
  %4629 = extractvalue %dx.types.CBufRet.f32 %4626, 2
  %4630 = extractvalue %dx.types.CBufRet.f32 %4626, 3
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.CBufRet.f32 %4631, 1
  %4634 = extractvalue %dx.types.CBufRet.f32 %4631, 2
  %4635 = extractvalue %dx.types.CBufRet.f32 %4631, 3
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 0
  %4638 = extractvalue %dx.types.CBufRet.f32 %4636, 1
  %4639 = extractvalue %dx.types.CBufRet.f32 %4636, 2
  %4640 = extractvalue %dx.types.CBufRet.f32 %4636, 3
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 0
  %4643 = extractvalue %dx.types.CBufRet.f32 %4641, 1
  %4644 = extractvalue %dx.types.CBufRet.f32 %4641, 2
  %4645 = extractvalue %dx.types.CBufRet.f32 %4641, 3
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 3
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 3
  %4650 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4651 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4652 = extractvalue %dx.types.CBufRet.f32 %4648, 2
  %4653 = fcmp fast olt float %4652, -5.000000e-01
  %4654 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4615, float %4616, float %4614, float %4615, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4655 = call float @dx.op.unary.f32(i32 25, float %4654)  ; Rsqrt(value)
  %4656 = fmul fast float %4655, %4654
  %4657 = fmul fast float %4655, %4614
  %4658 = fmul fast float %4655, %4615
  %4659 = fmul fast float %4655, %4616
  %4660 = fadd fast float %4656, %4630
  %4661 = call float @dx.op.dot3.f32(i32 55, float %4657, float %4658, float %4659, float %4627, float %4628, float %4629)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.i32 %4662, 1
  %4664 = and i32 %4663, 1
  %4665 = icmp ne i32 %4664, 0
  %4666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.f32 %4666, 2
  %4668 = fcmp fast ogt float %4667, 0.000000e+00
  %4669 = and i1 %4665, %4668
  br i1 %4669, label %4670, label %5072, !dx.controlflow.hints !116

; <label>:4670                                    ; preds = %4625
  %4671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4672 = extractvalue %dx.types.CBufRet.f32 %4671, 3
  %4673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.f32 %4673, 2
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 2
  %4677 = fsub fast float %4674, %4676
  %4678 = and i32 %4663, 2
  %4679 = extractvalue %dx.types.CBufRet.i32 %4662, 0
  %4680 = call i32 @dx.op.binary.i32(i32 40, i32 %4679, i32 3)  ; UMin(a,b)
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 0
  %4683 = extractvalue %dx.types.CBufRet.f32 %4681, 1
  %4684 = extractvalue %dx.types.CBufRet.f32 %4675, 0
  %4685 = extractvalue %dx.types.CBufRet.f32 %4675, 1
  %4686 = fsub fast float %4682, %4684
  %4687 = fsub fast float %4683, %4685
  %4688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.f32 %4688, 0
  %4690 = fcmp fast ogt float %4689, 0.000000e+00
  %4691 = fsub fast float -0.000000e+00, %4686
  %4692 = fsub fast float -0.000000e+00, %4687
  %4693 = call float @dx.op.dot2.f32(i32 54, float %4657, float %4658, float %4657, float %4658)  ; Dot2(ax,ay,bx,by)
  %4694 = call float @dx.op.dot2.f32(i32 54, float %4657, float %4658, float %4691, float %4692)  ; Dot2(ax,ay,bx,by)
  %4695 = fmul fast float %4694, 2.000000e+00
  %4696 = call float @dx.op.dot2.f32(i32 54, float %4691, float %4692, float %4691, float %4692)  ; Dot2(ax,ay,bx,by)
  %4697 = fmul fast float %4689, %4689
  %4698 = fsub fast float %4696, %4697
  %4699 = fmul fast float %4695, %4695
  %4700 = fmul fast float %4693, 4.000000e+00
  %4701 = fmul fast float %4700, %4698
  %4702 = fsub fast float %4699, %4701
  %4703 = fcmp fast ogt float %4702, 0.000000e+00
  br i1 %4703, label %4704, label %4719

; <label>:4704                                    ; preds = %4670
  %4705 = fcmp fast ogt float %4695, 0.000000e+00
  %4706 = call float @dx.op.unary.f32(i32 24, float %4702)  ; Sqrt(value)
  %4707 = fsub fast float -0.000000e+00, %4706
  %4708 = select i1 %4705, float %4706, float %4707
  %4709 = fadd fast float %4708, %4695
  %4710 = fmul float %4709, -5.000000e-01
  %4711 = fdiv fast float %4710, %4693
  %4712 = call float @dx.op.binary.f32(i32 35, float %4711, float 0.000000e+00)  ; FMax(a,b)
  %4713 = call float @dx.op.binary.f32(i32 36, float %4656, float %4712)  ; FMin(a,b)
  %4714 = fdiv fast float %4698, %4710
  %4715 = call float @dx.op.binary.f32(i32 35, float %4714, float 0.000000e+00)  ; FMax(a,b)
  %4716 = call float @dx.op.binary.f32(i32 36, float %4656, float %4715)  ; FMin(a,b)
  %4717 = call float @dx.op.binary.f32(i32 36, float %4713, float %4716)  ; FMin(a,b)
  %4718 = call float @dx.op.binary.f32(i32 35, float %4713, float %4716)  ; FMax(a,b)
  br label %4719

; <label>:4719                                    ; preds = %4704, %4670
  %4720 = phi float [ %4718, %4704 ], [ -1.000000e+00, %4670 ]
  %4721 = phi float [ %4717, %4704 ], [ -1.000000e+00, %4670 ]
  %4722 = phi i1 [ true, %4704 ], [ false, %4670 ]
  %4723 = and i1 %4690, %4722
  br i1 %4723, label %4724, label %4726

; <label>:4724                                    ; preds = %4719
  %4725 = fcmp fast oeq float %4721, %4720
  br i1 %4725, label %5025, label %4727

; <label>:4726                                    ; preds = %4719
  br i1 %4690, label %5025, label %4727

; <label>:4727                                    ; preds = %4726, %4724
  %4728 = phi float [ %4656, %4726 ], [ %4720, %4724 ]
  %4729 = phi float [ 0.000000e+00, %4726 ], [ %4721, %4724 ]
  %4730 = icmp ne i32 %4678, 0
  %4731 = fmul fast float %4728, %4659
  %4732 = fadd fast float %4731, %4672
  %4733 = fmul fast float %4732, %4728
  %4734 = select i1 %4730, float 0.000000e+00, float %4733
  %4735 = fcmp fast oeq float %4659, 0.000000e+00
  %4736 = fdiv fast float %4677, %4659
  %4737 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4736)  ; FMax(a,b)
  %4738 = select i1 %4735, float %4728, float %4737
  %4739 = call float @dx.op.binary.f32(i32 36, float %4728, float %4738)  ; FMin(a,b)
  %4740 = fcmp fast ogt float %4659, 0.000000e+00
  %4741 = fcmp fast olt float %4677, 0.000000e+00
  br i1 %4740, label %4742, label %4799

; <label>:4742                                    ; preds = %4727
  %4743 = icmp eq i32 %4678, 0
  br i1 %4741, label %4744, label %4788

; <label>:4744                                    ; preds = %4742
  %4745 = select i1 %4743, float %4728, float 0.000000e+00
  %4746 = fsub fast float -0.000000e+00, %4745
  %4747 = call float @dx.op.unary.f32(i32 6, float %4746)  ; FAbs(value)
  %4748 = fmul fast float %4745, %4659
  %4749 = fadd fast float %4748, %4672
  %4750 = fmul fast float %4747, %4749
  %4751 = fsub fast float %4734, %4750
  %4752 = fsub fast float %4728, %4747
  %4753 = select i1 %4743, float %4752, float 0.000000e+00
  %4754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4755 = extractvalue %dx.types.CBufRet.f32 %4754, 0
  %4756 = extractvalue %dx.types.CBufRet.f32 %4754, 1
  %4757 = extractvalue %dx.types.CBufRet.f32 %4754, 2
  %4758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.f32 %4758, 0
  %4760 = extractvalue %dx.types.CBufRet.f32 %4758, 1
  %4761 = extractvalue %dx.types.CBufRet.f32 %4758, 2
  %4762 = extractvalue %dx.types.CBufRet.f32 %4758, 3
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 3
  %4765 = call float @dx.op.binary.f32(i32 36, float %4751, float %4764)  ; FMin(a,b)
  %4766 = fmul fast float %4762, %4753
  %4767 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4768 = fsub fast float %4759, %4755
  %4769 = fsub fast float %4760, %4756
  %4770 = fsub fast float %4761, %4757
  %4771 = fmul fast float %4767, %4768
  %4772 = fmul fast float %4767, %4769
  %4773 = fmul fast float %4767, %4770
  %4774 = fadd fast float %4771, %4755
  %4775 = fadd fast float %4772, %4756
  %4776 = fadd fast float %4773, %4757
  %4777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4778 = extractvalue %dx.types.CBufRet.f32 %4777, 0
  %4779 = extractvalue %dx.types.CBufRet.f32 %4777, 1
  %4780 = fadd fast float %4779, %4778
  %4781 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4782 = extractvalue %dx.types.CBufRet.f32 %4777, 2
  %4783 = extractvalue %dx.types.CBufRet.f32 %4777, 3
  %4784 = fadd fast float %4783, %4782
  %4785 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4786 = fmul fast float %4781, %4765
  %4787 = fmul fast float %4786, %4785
  br label %5025

; <label>:4788                                    ; preds = %4742
  br i1 %4743, label %4789, label %4810

; <label>:4789                                    ; preds = %4788
  %4790 = call float @dx.op.binary.f32(i32 36, float %4739, float %4729)  ; FMin(a,b)
  %4791 = fsub fast float %4739, %4790
  %4792 = fsub fast float %4791, %4728
  %4793 = call float @dx.op.unary.f32(i32 6, float %4792)  ; FAbs(value)
  %4794 = fadd fast float %4791, %4728
  %4795 = fmul fast float %4794, %4659
  %4796 = fadd fast float %4795, %4672
  %4797 = fmul fast float %4796, %4793
  %4798 = fsub fast float %4734, %4797
  br label %4810

; <label>:4799                                    ; preds = %4727
  br i1 %4741, label %4800, label %4810

; <label>:4800                                    ; preds = %4799
  %4801 = call float @dx.op.binary.f32(i32 35, float %4729, float %4739)  ; FMax(a,b)
  %4802 = icmp eq i32 %4678, 0
  %4803 = select i1 %4802, float %4739, float 0.000000e+00
  %4804 = fsub fast float -0.000000e+00, %4803
  %4805 = call float @dx.op.unary.f32(i32 6, float %4804)  ; FAbs(value)
  %4806 = fmul fast float %4803, %4659
  %4807 = fadd fast float %4806, %4672
  %4808 = fmul fast float %4805, %4807
  %4809 = fsub fast float %4734, %4808
  br label %4810

; <label>:4810                                    ; preds = %4800, %4799, %4789, %4788
  %4811 = phi float [ %4729, %4788 ], [ %4729, %4789 ], [ %4801, %4800 ], [ %4729, %4799 ]
  %4812 = phi float [ 0.000000e+00, %4788 ], [ %4793, %4789 ], [ %4805, %4800 ], [ 0.000000e+00, %4799 ]
  %4813 = phi float [ %4734, %4788 ], [ %4798, %4789 ], [ %4809, %4800 ], [ %4734, %4799 ]
  %4814 = phi float [ %4739, %4788 ], [ %4739, %4789 ], [ %4728, %4800 ], [ %4728, %4799 ]
  %4815 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 0
  store float -1.000000e+00, float* %4815, align 4, !tbaa !117, !noalias !119
  %4816 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 1
  store float -1.000000e+00, float* %4816, align 4, !tbaa !117, !noalias !119
  %4817 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 2
  store float -1.000000e+00, float* %4817, align 4, !tbaa !117, !noalias !119
  %4818 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 0
  store float -1.000000e+00, float* %4818, align 4, !tbaa !117, !noalias !119
  %4819 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 1
  store float -1.000000e+00, float* %4819, align 4, !tbaa !117, !noalias !119
  %4820 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 2
  store float -1.000000e+00, float* %4820, align 4, !tbaa !117, !noalias !119
  %4821 = icmp sgt i32 %4680, 0
  br i1 %4821, label %4822, label %4883

; <label>:4822                                    ; preds = %4810
  br label %4823

; <label>:4823                                    ; preds = %4872, %4822
  %4824 = phi i32 [ %4873, %4872 ], [ 0, %4822 ]
  %4825 = phi i32 [ %4874, %4872 ], [ 0, %4822 ]
  %4826 = add nuw i32 %4825, 171
  %4827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %4826)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.f32 %4827, 0
  %4829 = extractvalue %dx.types.CBufRet.f32 %4827, 1
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.CBufRet.f32 %4830, 1
  %4833 = fsub fast float %4828, %4831
  %4834 = fsub fast float %4829, %4832
  %4835 = extractvalue %dx.types.CBufRet.f32 %4827, 2
  %4836 = fsub fast float -0.000000e+00, %4833
  %4837 = fsub fast float -0.000000e+00, %4834
  %4838 = call float @dx.op.dot2.f32(i32 54, float %4657, float %4658, float %4836, float %4837)  ; Dot2(ax,ay,bx,by)
  %4839 = fmul fast float %4838, 2.000000e+00
  %4840 = call float @dx.op.dot2.f32(i32 54, float %4836, float %4837, float %4836, float %4837)  ; Dot2(ax,ay,bx,by)
  %4841 = fmul fast float %4835, %4835
  %4842 = fsub fast float %4840, %4841
  %4843 = fmul fast float %4839, %4839
  %4844 = fmul fast float %4700, %4842
  %4845 = fsub fast float %4843, %4844
  %4846 = fcmp fast ogt float %4845, 0.000000e+00
  br i1 %4846, label %4847, label %4862

; <label>:4847                                    ; preds = %4823
  %4848 = fcmp fast ogt float %4839, 0.000000e+00
  %4849 = call float @dx.op.unary.f32(i32 24, float %4845)  ; Sqrt(value)
  %4850 = fsub fast float -0.000000e+00, %4849
  %4851 = select i1 %4848, float %4849, float %4850
  %4852 = fadd fast float %4851, %4839
  %4853 = fmul float %4852, -5.000000e-01
  %4854 = fdiv fast float %4853, %4693
  %4855 = call float @dx.op.binary.f32(i32 35, float %4854, float 0.000000e+00)  ; FMax(a,b)
  %4856 = call float @dx.op.binary.f32(i32 36, float %4728, float %4855)  ; FMin(a,b)
  %4857 = fdiv fast float %4842, %4853
  %4858 = call float @dx.op.binary.f32(i32 35, float %4857, float 0.000000e+00)  ; FMax(a,b)
  %4859 = call float @dx.op.binary.f32(i32 36, float %4728, float %4858)  ; FMin(a,b)
  %4860 = call float @dx.op.binary.f32(i32 36, float %4856, float %4859)  ; FMin(a,b)
  %4861 = call float @dx.op.binary.f32(i32 35, float %4856, float %4859)  ; FMax(a,b)
  br label %4862

; <label>:4862                                    ; preds = %4847, %4823
  %4863 = phi float [ %4861, %4847 ], [ -1.000000e+00, %4823 ]
  %4864 = phi float [ %4860, %4847 ], [ -1.000000e+00, %4823 ]
  %4865 = phi i1 [ true, %4847 ], [ false, %4823 ]
  br i1 %4865, label %4866, label %4872

; <label>:4866                                    ; preds = %4862
  %4867 = call float @dx.op.binary.f32(i32 35, float %4811, float %4864)  ; FMax(a,b)
  %4868 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 %4825
  store float %4867, float* %4868, align 4, !tbaa !117, !noalias !119
  %4869 = call float @dx.op.binary.f32(i32 35, float %4811, float %4863)  ; FMax(a,b)
  %4870 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %4825
  store float %4869, float* %4870, align 4, !tbaa !117, !noalias !119
  %4871 = add nsw i32 %4824, 1
  br label %4872

; <label>:4872                                    ; preds = %4866, %4862
  %4873 = phi i32 [ %4871, %4866 ], [ %4824, %4862 ]
  %4874 = add nuw nsw i32 %4825, 1
  %4875 = icmp eq i32 %4874, %4680
  br i1 %4875, label %4876, label %4823

; <label>:4876                                    ; preds = %4872
  %4877 = load float, float* %4817, align 4, !tbaa !117, !alias.scope !135, !noalias !138
  %4878 = load float, float* %4816, align 4, !tbaa !117, !alias.scope !141, !noalias !142
  %4879 = load float, float* %4815, align 4, !tbaa !117, !alias.scope !143, !noalias !144
  %4880 = load float, float* %4820, align 4, !tbaa !117, !alias.scope !145, !noalias !148
  %4881 = load float, float* %4819, align 4, !tbaa !117, !alias.scope !151, !noalias !152
  %4882 = load float, float* %4818, align 4, !tbaa !117, !alias.scope !153, !noalias !154
  br label %4883

; <label>:4883                                    ; preds = %4876, %4810
  %4884 = phi float [ -1.000000e+00, %4810 ], [ %4882, %4876 ]
  %4885 = phi float [ -1.000000e+00, %4810 ], [ %4881, %4876 ]
  %4886 = phi float [ -1.000000e+00, %4810 ], [ %4880, %4876 ]
  %4887 = phi float [ -1.000000e+00, %4810 ], [ %4879, %4876 ]
  %4888 = phi float [ -1.000000e+00, %4810 ], [ %4878, %4876 ]
  %4889 = phi float [ -1.000000e+00, %4810 ], [ %4877, %4876 ]
  %4890 = phi i32 [ 0, %4810 ], [ %4873, %4876 ]
  %4891 = call float @dx.op.binary.f32(i32 36, float %4887, float %4888)  ; FMin(a,b)
  %4892 = call float @dx.op.binary.f32(i32 36, float %4891, float %4889)  ; FMin(a,b)
  %4893 = call float @dx.op.binary.f32(i32 35, float %4887, float %4888)  ; FMax(a,b)
  %4894 = call float @dx.op.binary.f32(i32 36, float %4893, float %4889)  ; FMin(a,b)
  %4895 = call float @dx.op.binary.f32(i32 35, float %4891, float %4894)  ; FMax(a,b)
  %4896 = call float @dx.op.binary.f32(i32 35, float %4893, float %4889)  ; FMax(a,b)
  store float %4892, float* %4815, align 4, !tbaa !117, !alias.scope !143, !noalias !144
  store float %4895, float* %4816, align 4, !tbaa !117, !alias.scope !141, !noalias !142
  store float %4896, float* %4817, align 4, !tbaa !117, !alias.scope !135, !noalias !138
  %4897 = call float @dx.op.binary.f32(i32 36, float %4884, float %4885)  ; FMin(a,b)
  %4898 = call float @dx.op.binary.f32(i32 36, float %4897, float %4886)  ; FMin(a,b)
  %4899 = call float @dx.op.binary.f32(i32 35, float %4884, float %4885)  ; FMax(a,b)
  %4900 = call float @dx.op.binary.f32(i32 36, float %4899, float %4886)  ; FMin(a,b)
  %4901 = call float @dx.op.binary.f32(i32 35, float %4897, float %4900)  ; FMax(a,b)
  %4902 = call float @dx.op.binary.f32(i32 35, float %4899, float %4886)  ; FMax(a,b)
  store float %4898, float* %4818, align 4, !tbaa !117, !alias.scope !153, !noalias !154
  store float %4901, float* %4819, align 4, !tbaa !117, !alias.scope !151, !noalias !152
  store float %4902, float* %4820, align 4, !tbaa !117, !alias.scope !145, !noalias !148
  %4903 = sub nsw i32 3, %4890
  %4904 = icmp sgt i32 %4903, 2
  br i1 %4904, label %4905, label %4943

; <label>:4905                                    ; preds = %4883
  %4906 = icmp eq i32 %4678, 0
  %4907 = fsub fast float %4728, %4812
  %4908 = select i1 %4906, float %4907, float %4812
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 0
  %4911 = extractvalue %dx.types.CBufRet.f32 %4909, 1
  %4912 = extractvalue %dx.types.CBufRet.f32 %4909, 2
  %4913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4914 = extractvalue %dx.types.CBufRet.f32 %4913, 0
  %4915 = extractvalue %dx.types.CBufRet.f32 %4913, 1
  %4916 = extractvalue %dx.types.CBufRet.f32 %4913, 2
  %4917 = extractvalue %dx.types.CBufRet.f32 %4913, 3
  %4918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4919 = extractvalue %dx.types.CBufRet.f32 %4918, 3
  %4920 = call float @dx.op.binary.f32(i32 36, float %4813, float %4919)  ; FMin(a,b)
  %4921 = fmul fast float %4917, %4908
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fsub fast float %4914, %4910
  %4924 = fsub fast float %4915, %4911
  %4925 = fsub fast float %4916, %4912
  %4926 = fmul fast float %4922, %4923
  %4927 = fmul fast float %4922, %4924
  %4928 = fmul fast float %4922, %4925
  %4929 = fadd fast float %4926, %4910
  %4930 = fadd fast float %4927, %4911
  %4931 = fadd fast float %4928, %4912
  %4932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4933 = extractvalue %dx.types.CBufRet.f32 %4932, 0
  %4934 = extractvalue %dx.types.CBufRet.f32 %4932, 1
  %4935 = fadd fast float %4934, %4933
  %4936 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4932, 2
  %4938 = extractvalue %dx.types.CBufRet.f32 %4932, 3
  %4939 = fadd fast float %4938, %4937
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = fmul fast float %4936, %4920
  %4942 = fmul fast float %4941, %4940
  br label %5025

; <label>:4943                                    ; preds = %4883
  %4944 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 %4903
  %4945 = load float, float* %4944, align 4, !tbaa !117, !noalias !119
  %4946 = fcmp fast olt float %4945, %4814
  %4947 = icmp sgt i32 %4890, 0
  %4948 = and i1 %4947, %4946
  br i1 %4948, label %4949, label %4986

; <label>:4949                                    ; preds = %4943
  br label %4950

; <label>:4950                                    ; preds = %4979, %4949
  %4951 = phi float [ %4980, %4979 ], [ %4812, %4949 ]
  %4952 = phi float [ %4981, %4979 ], [ %4813, %4949 ]
  %4953 = phi float [ %4961, %4979 ], [ %4945, %4949 ]
  %4954 = phi i32 [ %4958, %4979 ], [ %4903, %4949 ]
  %4955 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %4954
  %4956 = load float, float* %4955, align 4, !tbaa !117, !noalias !119
  %4957 = icmp slt i32 %4954, 2
  %4958 = add nsw i32 %4954, 1
  %4959 = getelementptr inbounds [3 x float], [3 x float]* %71, i32 0, i32 %4958
  %4960 = load float, float* %4959, align 4, !tbaa !117, !noalias !119
  %4961 = select i1 %4957, float %4960, float %4728
  %4962 = call float @dx.op.binary.f32(i32 36, float %4961, float %4956)  ; FMin(a,b)
  %4963 = call float @dx.op.binary.f32(i32 36, float %4814, float %4962)  ; FMin(a,b)
  %4964 = icmp eq i32 %4678, 0
  %4965 = fadd fast float %4963, %4953
  %4966 = fmul fast float %4965, %4659
  %4967 = fadd fast float %4966, %4672
  br i1 %4964, label %4973, label %4968

; <label>:4968                                    ; preds = %4950
  %4969 = fsub fast float %4963, %4953
  %4970 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4969)  ; FMax(a,b)
  %4971 = fmul fast float %4970, %4967
  %4972 = fadd fast float %4971, %4952
  br label %4979

; <label>:4973                                    ; preds = %4950
  %4974 = fsub fast float %4953, %4963
  %4975 = call float @dx.op.unary.f32(i32 6, float %4974)  ; FAbs(value)
  %4976 = fadd fast float %4975, %4951
  %4977 = fmul fast float %4975, %4967
  %4978 = fsub fast float %4952, %4977
  br label %4979

; <label>:4979                                    ; preds = %4973, %4968
  %4980 = phi float [ %4970, %4968 ], [ %4976, %4973 ]
  %4981 = phi float [ %4972, %4968 ], [ %4978, %4973 ]
  %4982 = fcmp fast olt float %4961, %4814
  %4983 = icmp slt i32 %4958, 3
  %4984 = and i1 %4983, %4982
  br i1 %4984, label %4950, label %4985

; <label>:4985                                    ; preds = %4979
  br label %4986

; <label>:4986                                    ; preds = %4985, %4943
  %4987 = phi float [ %4812, %4943 ], [ %4980, %4985 ]
  %4988 = phi float [ %4813, %4943 ], [ %4981, %4985 ]
  %4989 = fsub fast float %4728, %4987
  %4990 = select i1 %4730, float %4987, float %4989
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = extractvalue %dx.types.CBufRet.f32 %4991, 1
  %4994 = extractvalue %dx.types.CBufRet.f32 %4991, 2
  %4995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4996 = extractvalue %dx.types.CBufRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.CBufRet.f32 %4995, 1
  %4998 = extractvalue %dx.types.CBufRet.f32 %4995, 2
  %4999 = extractvalue %dx.types.CBufRet.f32 %4995, 3
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 3
  %5002 = call float @dx.op.binary.f32(i32 36, float %4988, float %5001)  ; FMin(a,b)
  %5003 = fmul fast float %4999, %4990
  %5004 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5005 = fsub fast float %4996, %4992
  %5006 = fsub fast float %4997, %4993
  %5007 = fsub fast float %4998, %4994
  %5008 = fmul fast float %5004, %5005
  %5009 = fmul fast float %5004, %5006
  %5010 = fmul fast float %5004, %5007
  %5011 = fadd fast float %5008, %4992
  %5012 = fadd fast float %5009, %4993
  %5013 = fadd fast float %5010, %4994
  %5014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.CBufRet.f32 %5014, 1
  %5017 = fadd fast float %5016, %5015
  %5018 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5019 = extractvalue %dx.types.CBufRet.f32 %5014, 2
  %5020 = extractvalue %dx.types.CBufRet.f32 %5014, 3
  %5021 = fadd fast float %5020, %5019
  %5022 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5023 = fmul fast float %5018, %5002
  %5024 = fmul fast float %5023, %5022
  br label %5025

; <label>:5025                                    ; preds = %4986, %4905, %4744, %4726, %4724
  %5026 = phi float [ %4753, %4744 ], [ %4908, %4905 ], [ %4990, %4986 ], [ 0.000000e+00, %4724 ], [ 0.000000e+00, %4726 ]
  %5027 = phi float [ %4787, %4744 ], [ %4942, %4905 ], [ %5024, %4986 ], [ 0.000000e+00, %4724 ], [ 0.000000e+00, %4726 ]
  %5028 = phi float [ %4774, %4744 ], [ %4929, %4905 ], [ %5011, %4986 ], [ 0.000000e+00, %4724 ], [ 0.000000e+00, %4726 ]
  %5029 = phi float [ %4775, %4744 ], [ %4930, %4905 ], [ %5012, %4986 ], [ 0.000000e+00, %4724 ], [ 0.000000e+00, %4726 ]
  %5030 = phi float [ %4776, %4744 ], [ %4931, %4905 ], [ %5013, %4986 ], [ 0.000000e+00, %4724 ], [ 0.000000e+00, %4726 ]
  %5031 = fmul fast float %4667, %5027
  %5032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5033 = extractvalue %dx.types.CBufRet.f32 %5032, 2
  %5034 = fsub fast float %4674, %5033
  %5035 = fcmp fast olt float %5031, -2.000000e+01
  %5036 = call float @dx.op.unary.f32(i32 21, float %5031)  ; Exp(value)
  %5037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5038 = extractvalue %dx.types.CBufRet.f32 %5037, 2
  %5039 = extractvalue %dx.types.CBufRet.f32 %5037, 3
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 2
  %5042 = fmul fast float %5039, %5034
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = fsub fast float 1.000000e+00, %5043
  %5045 = fmul fast float %4659, 5.000000e-01
  %5046 = fadd fast float %5045, 5.000000e-01
  %5047 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5048 = fsub fast float 1.000000e+00, %5047
  %5049 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5044)  ; FMax(a,b)
  %5050 = fdiv fast float %5048, %5049
  %5051 = fsub fast float %5034, %4616
  %5052 = call float @dx.op.unary.f32(i32 6, float %5051)  ; FAbs(value)
  %5053 = fmul fast float %5052, %5038
  %5054 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5055 = fsub fast float 1.000000e+00, %5053
  %5056 = fmul fast float %5055, %5054
  %5057 = fadd fast float %5056, %5053
  %5058 = fmul fast float %5041, %5034
  %5059 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5060 = fsub fast float 1.000000e+00, %5057
  %5061 = fmul fast float %5060, %5059
  %5062 = fadd fast float %5061, %5057
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = fadd fast float %5036, -1.000000e+00
  %5065 = select i1 %5035, float -1.000000e+00, float %5064
  %5066 = fmul fast float %5063, %5065
  %5067 = fadd fast float %5066, 1.000000e+00
  %5068 = fsub fast float -0.000000e+00, %5066
  %5069 = fmul fast float %5028, %5068
  %5070 = fmul fast float %5029, %5068
  %5071 = fmul fast float %5030, %5068
  br label %5072

; <label>:5072                                    ; preds = %5025, %4625
  %5073 = phi float [ %5026, %5025 ], [ 0.000000e+00, %4625 ]
  %5074 = phi float [ %5067, %5025 ], [ 1.000000e+00, %4625 ]
  %5075 = phi float [ %5069, %5025 ], [ 0.000000e+00, %4625 ]
  %5076 = phi float [ %5070, %5025 ], [ 0.000000e+00, %4625 ]
  %5077 = phi float [ %5071, %5025 ], [ 0.000000e+00, %4625 ]
  %5078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.f32 %5078, 1
  %5080 = fsub fast float 1.000000e+00, %5074
  %5081 = fmul fast float %5080, %4660
  %5082 = fmul fast float %5081, %5079
  %5083 = fsub fast float %4660, %5082
  br i1 %4653, label %5084, label %5113, !dx.controlflow.hints !155

; <label>:5084                                    ; preds = %5072
  %5085 = fmul fast float %4661, %4650
  %5086 = fadd fast float %5085, %4651
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = fmul fast float %4632, %5083
  %5089 = fsub fast float -0.000000e+00, %5088
  %5090 = fmul fast float %4633, %5083
  %5091 = fsub fast float -0.000000e+00, %5090
  %5092 = call float @dx.op.unary.f32(i32 21, float %5089)  ; Exp(value)
  %5093 = call float @dx.op.unary.f32(i32 21, float %5091)  ; Exp(value)
  %5094 = call float @dx.op.binary.f32(i32 35, float %4640, float %5092)  ; FMax(a,b)
  %5095 = call float @dx.op.binary.f32(i32 35, float %4640, float %5093)  ; FMax(a,b)
  %5096 = fsub fast float %5095, %5094
  %5097 = fmul fast float %5096, %5087
  %5098 = fadd fast float %5097, %5094
  %5099 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5100 = fsub fast float %4637, %4642
  %5101 = fsub fast float %4638, %4643
  %5102 = fsub fast float %4639, %4644
  %5103 = fmul fast float %5087, %5100
  %5104 = fmul fast float %5087, %5101
  %5105 = fmul fast float %5087, %5102
  %5106 = fadd fast float %5103, %4642
  %5107 = fadd fast float %5104, %4643
  %5108 = fadd fast float %5105, %4644
  %5109 = fsub fast float 1.000000e+00, %5099
  %5110 = fmul fast float %5109, %5106
  %5111 = fmul fast float %5109, %5107
  %5112 = fmul fast float %5109, %5108
  br label %5172

; <label>:5113                                    ; preds = %5072
  %5114 = fmul fast float %5083, %4649
  %5115 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5116 = fsub fast float 2.000000e+00, %5115
  %5117 = fmul fast float %5115, 9.921875e-01
  %5118 = fmul fast float %5117, %5116
  %5119 = fadd fast float %5118, 3.906250e-03
  %5120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %45, float %5119, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5121 = extractvalue %dx.types.ResRet.f32 %5120, 0
  %5122 = fsub fast float %5115, %5121
  %5123 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5122)  ; FMax(a,b)
  %5124 = fmul fast float %4635, %4616
  %5125 = call float @dx.op.unary.f32(i32 6, float %5124)  ; FAbs(value)
  %5126 = fcmp fast ogt float %5125, 0x3EB0C6F7A0000000
  br i1 %5126, label %5127, label %5133, !dx.controlflow.hints !156

; <label>:5127                                    ; preds = %5113
  %5128 = fmul fast float %5124, 0xBFF7154760000000
  %5129 = call float @dx.op.unary.f32(i32 21, float %5128)  ; Exp(value)
  %5130 = fsub fast float 1.000000e+00, %5129
  %5131 = fdiv fast float %5130, %5124
  %5132 = fmul fast float %5131, %4645
  br label %5133

; <label>:5133                                    ; preds = %5127, %5113
  %5134 = phi float [ %5132, %5127 ], [ %4645, %5113 ]
  %5135 = fadd fast float %5134, %4647
  %5136 = fmul fast float %5135, %5123
  %5137 = fmul fast float %4632, %5136
  %5138 = fsub fast float -0.000000e+00, %5137
  %5139 = fmul fast float %4633, %5136
  %5140 = fsub fast float -0.000000e+00, %5139
  %5141 = fmul fast float %4634, %5136
  %5142 = fsub fast float -0.000000e+00, %5141
  %5143 = call float @dx.op.unary.f32(i32 21, float %5138)  ; Exp(value)
  %5144 = call float @dx.op.unary.f32(i32 21, float %5140)  ; Exp(value)
  %5145 = call float @dx.op.unary.f32(i32 21, float %5142)  ; Exp(value)
  %5146 = fmul fast float %4661, %4661
  %5147 = fadd fast float %5146, 1.000000e+00
  %5148 = fmul fast float %5147, 0x3FAE8EC8A0000000
  %5149 = fmul fast float %5148, %4642
  %5150 = fmul fast float %5148, %4643
  %5151 = fmul fast float %5148, %4644
  %5152 = fmul fast float %4661, %4640
  %5153 = fsub fast float 1.000000e+00, %5152
  %5154 = fmul fast float %4640, %4640
  %5155 = fsub fast float 1.000000e+00, %5154
  %5156 = fmul fast float %5155, 0x3FB45F3060000000
  %5157 = fmul fast float %5153, %5153
  %5158 = fdiv fast float 1.000000e+00, %5157
  %5159 = fmul fast float %5156, %5158
  %5160 = fmul fast float %5159, %4637
  %5161 = fmul fast float %5159, %4638
  %5162 = fmul fast float %5159, %4639
  %5163 = fadd fast float %5160, %5149
  %5164 = fadd fast float %5161, %5150
  %5165 = fadd fast float %5162, %5151
  %5166 = fsub fast float 1.000000e+00, %5143
  %5167 = fsub fast float 1.000000e+00, %5144
  %5168 = fsub fast float 1.000000e+00, %5145
  %5169 = fmul fast float %5163, %5166
  %5170 = fmul fast float %5164, %5167
  %5171 = fmul fast float %5165, %5168
  br label %5172

; <label>:5172                                    ; preds = %5133, %5084
  %5173 = phi float [ %5110, %5084 ], [ %5169, %5133 ]
  %5174 = phi float [ %5111, %5084 ], [ %5170, %5133 ]
  %5175 = phi float [ %5112, %5084 ], [ %5171, %5133 ]
  %5176 = phi float [ %5099, %5084 ], [ %5143, %5133 ]
  %5177 = phi float [ %5099, %5084 ], [ %5144, %5133 ]
  %5178 = phi float [ %5099, %5084 ], [ %5145, %5133 ]
  br i1 %4669, label %5179, label %5377, !dx.controlflow.hints !157

; <label>:5179                                    ; preds = %5172
  %5180 = extractvalue %dx.types.CBufRet.f32 %5078, 0
  %5181 = fmul fast float %5180, %5080
  %5182 = fsub fast float %5075, %5173
  %5183 = fsub fast float %5076, %5174
  %5184 = fsub fast float %5077, %5175
  %5185 = fmul fast float %5181, %5182
  %5186 = fmul fast float %5181, %5183
  %5187 = fmul fast float %5181, %5184
  %5188 = fadd fast float %5185, %5173
  %5189 = fadd fast float %5186, %5174
  %5190 = fadd fast float %5187, %5175
  %5191 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5176)  ; FMax(a,b)
  %5192 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5177)  ; FMax(a,b)
  %5193 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5178)  ; FMax(a,b)
  %5194 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5074)  ; FMax(a,b)
  %5195 = call float @dx.op.binary.f32(i32 35, float %5073, float %5083)  ; FMax(a,b)
  %5196 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5195)  ; FMax(a,b)
  %5197 = fdiv fast float %5073, %5196
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = fdiv fast float %5083, %5196
  %5200 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5201 = fcmp fast une float %5194, 1.000000e+00
  br i1 %5201, label %5202, label %5215, !dx.controlflow.hints !158

; <label>:5202                                    ; preds = %5179
  %5203 = call float @dx.op.unary.f32(i32 23, float %5194)  ; Log(value)
  %5204 = fmul fast float %5203, 0x3FE62E4300000000
  %5205 = fmul fast float %5075, %5204
  %5206 = fsub fast float -0.000000e+00, %5205
  %5207 = fmul fast float %5076, %5204
  %5208 = fsub fast float -0.000000e+00, %5207
  %5209 = fmul fast float %5077, %5204
  %5210 = fsub fast float -0.000000e+00, %5209
  %5211 = fsub fast float 1.000000e+00, %5194
  %5212 = fdiv fast float %5206, %5211
  %5213 = fdiv fast float %5208, %5211
  %5214 = fdiv fast float %5210, %5211
  br label %5215

; <label>:5215                                    ; preds = %5202, %5179
  %5216 = phi float [ %5212, %5202 ], [ %5075, %5179 ]
  %5217 = phi float [ %5213, %5202 ], [ %5076, %5179 ]
  %5218 = phi float [ %5214, %5202 ], [ %5077, %5179 ]
  %5219 = phi float [ %5204, %5202 ], [ 0.000000e+00, %5179 ]
  %5220 = fcmp fast une float %5191, 1.000000e+00
  br i1 %5220, label %5221, label %5228, !dx.controlflow.hints !159

; <label>:5221                                    ; preds = %5215
  %5222 = call float @dx.op.unary.f32(i32 23, float %5191)  ; Log(value)
  %5223 = fmul fast float %5222, 0x3FE62E4300000000
  %5224 = fmul fast float %5188, %5223
  %5225 = fsub fast float -0.000000e+00, %5224
  %5226 = fsub fast float 1.000000e+00, %5191
  %5227 = fdiv fast float %5225, %5226
  br label %5228

; <label>:5228                                    ; preds = %5221, %5215
  %5229 = phi float [ %5227, %5221 ], [ %5188, %5215 ]
  %5230 = phi float [ %5223, %5221 ], [ 0.000000e+00, %5215 ]
  %5231 = fcmp fast une float %5192, 1.000000e+00
  br i1 %5231, label %5232, label %5239, !dx.controlflow.hints !159

; <label>:5232                                    ; preds = %5228
  %5233 = call float @dx.op.unary.f32(i32 23, float %5192)  ; Log(value)
  %5234 = fmul fast float %5233, 0x3FE62E4300000000
  %5235 = fmul fast float %5189, %5234
  %5236 = fsub fast float -0.000000e+00, %5235
  %5237 = fsub fast float 1.000000e+00, %5192
  %5238 = fdiv fast float %5236, %5237
  br label %5239

; <label>:5239                                    ; preds = %5232, %5228
  %5240 = phi float [ %5238, %5232 ], [ %5189, %5228 ]
  %5241 = phi float [ %5234, %5232 ], [ 0.000000e+00, %5228 ]
  %5242 = fcmp fast une float %5193, 1.000000e+00
  br i1 %5242, label %5243, label %5250, !dx.controlflow.hints !159

; <label>:5243                                    ; preds = %5239
  %5244 = call float @dx.op.unary.f32(i32 23, float %5193)  ; Log(value)
  %5245 = fmul fast float %5244, 0x3FE62E4300000000
  %5246 = fmul fast float %5190, %5245
  %5247 = fsub fast float -0.000000e+00, %5246
  %5248 = fsub fast float 1.000000e+00, %5193
  %5249 = fdiv fast float %5247, %5248
  br label %5250

; <label>:5250                                    ; preds = %5243, %5239
  %5251 = phi float [ %5249, %5243 ], [ %5190, %5239 ]
  %5252 = phi float [ %5245, %5243 ], [ 0.000000e+00, %5239 ]
  %5253 = fmul fast float %5216, %5200
  %5254 = fmul fast float %5217, %5200
  %5255 = fmul fast float %5218, %5200
  %5256 = fmul fast float %5219, %5200
  %5257 = fmul fast float %5229, %5198
  %5258 = fmul fast float %5240, %5198
  %5259 = fmul fast float %5251, %5198
  %5260 = fmul fast float %5230, %5198
  %5261 = fmul fast float %5241, %5198
  %5262 = fmul fast float %5252, %5198
  %5263 = fadd fast float %5257, %5253
  %5264 = fadd fast float %5258, %5254
  %5265 = fadd fast float %5259, %5255
  %5266 = fadd fast float %5260, %5256
  %5267 = fadd fast float %5261, %5256
  %5268 = fadd fast float %5262, %5256
  %5269 = fcmp fast une float %5266, 0.000000e+00
  br i1 %5269, label %5270, label %5277, !dx.controlflow.hints !160

; <label>:5270                                    ; preds = %5250
  %5271 = fmul fast float %5266, 0x3FF7154760000000
  %5272 = call float @dx.op.unary.f32(i32 21, float %5271)  ; Exp(value)
  %5273 = fsub fast float 1.000000e+00, %5272
  %5274 = fmul fast float %5263, %5273
  %5275 = fsub fast float -0.000000e+00, %5274
  %5276 = fdiv fast float %5275, %5266
  br label %5277

; <label>:5277                                    ; preds = %5270, %5250
  %5278 = phi float [ %5272, %5270 ], [ 1.000000e+00, %5250 ]
  %5279 = phi float [ %5276, %5270 ], [ %5263, %5250 ]
  %5280 = fcmp fast une float %5267, 0.000000e+00
  br i1 %5280, label %5281, label %5288, !dx.controlflow.hints !160

; <label>:5281                                    ; preds = %5277
  %5282 = fmul fast float %5267, 0x3FF7154760000000
  %5283 = call float @dx.op.unary.f32(i32 21, float %5282)  ; Exp(value)
  %5284 = fsub fast float 1.000000e+00, %5283
  %5285 = fmul fast float %5264, %5284
  %5286 = fsub fast float -0.000000e+00, %5285
  %5287 = fdiv fast float %5286, %5267
  br label %5288

; <label>:5288                                    ; preds = %5281, %5277
  %5289 = phi float [ %5283, %5281 ], [ 1.000000e+00, %5277 ]
  %5290 = phi float [ %5287, %5281 ], [ %5264, %5277 ]
  %5291 = fcmp fast une float %5268, 0.000000e+00
  br i1 %5291, label %5292, label %5299, !dx.controlflow.hints !160

; <label>:5292                                    ; preds = %5288
  %5293 = fmul fast float %5268, 0x3FF7154760000000
  %5294 = call float @dx.op.unary.f32(i32 21, float %5293)  ; Exp(value)
  %5295 = fsub fast float 1.000000e+00, %5294
  %5296 = fmul fast float %5265, %5295
  %5297 = fsub fast float -0.000000e+00, %5296
  %5298 = fdiv fast float %5297, %5268
  br label %5299

; <label>:5299                                    ; preds = %5292, %5288
  %5300 = phi float [ %5294, %5292 ], [ 1.000000e+00, %5288 ]
  %5301 = phi float [ %5298, %5292 ], [ %5265, %5288 ]
  %5302 = fcmp fast ogt float %5198, %5200
  br i1 %5302, label %5303, label %5323

; <label>:5303                                    ; preds = %5299
  %5304 = fsub fast float 1.000000e+00, %5200
  %5305 = fmul fast float %5216, %5304
  %5306 = fmul fast float %5217, %5304
  %5307 = fmul fast float %5218, %5304
  %5308 = fmul fast float %5219, %5304
  %5309 = fcmp fast une float %5308, 0.000000e+00
  br i1 %5309, label %5310, label %5361, !dx.controlflow.hints !161

; <label>:5310                                    ; preds = %5303
  %5311 = fmul fast float %5308, 0x3FF7154760000000
  %5312 = call float @dx.op.unary.f32(i32 21, float %5311)  ; Exp(value)
  %5313 = fsub fast float 1.000000e+00, %5312
  %5314 = fmul fast float %5305, %5313
  %5315 = fsub fast float -0.000000e+00, %5314
  %5316 = fmul fast float %5306, %5313
  %5317 = fsub fast float -0.000000e+00, %5316
  %5318 = fmul fast float %5307, %5313
  %5319 = fsub fast float -0.000000e+00, %5318
  %5320 = fdiv fast float %5315, %5308
  %5321 = fdiv fast float %5317, %5308
  %5322 = fdiv fast float %5319, %5308
  br label %5361

; <label>:5323                                    ; preds = %5299
  %5324 = fsub fast float 1.000000e+00, %5198
  %5325 = fmul fast float %5229, %5324
  %5326 = fmul fast float %5240, %5324
  %5327 = fmul fast float %5251, %5324
  %5328 = fmul fast float %5230, %5324
  %5329 = fmul fast float %5241, %5324
  %5330 = fmul fast float %5252, %5324
  %5331 = fcmp fast une float %5328, 0.000000e+00
  br i1 %5331, label %5332, label %5339, !dx.controlflow.hints !160

; <label>:5332                                    ; preds = %5323
  %5333 = fmul fast float %5328, 0x3FF7154760000000
  %5334 = call float @dx.op.unary.f32(i32 21, float %5333)  ; Exp(value)
  %5335 = fsub fast float 1.000000e+00, %5334
  %5336 = fmul fast float %5325, %5335
  %5337 = fsub fast float -0.000000e+00, %5336
  %5338 = fdiv fast float %5337, %5328
  br label %5339

; <label>:5339                                    ; preds = %5332, %5323
  %5340 = phi float [ %5338, %5332 ], [ %5325, %5323 ]
  %5341 = phi float [ %5334, %5332 ], [ 1.000000e+00, %5323 ]
  %5342 = fcmp fast une float %5329, 0.000000e+00
  br i1 %5342, label %5343, label %5350, !dx.controlflow.hints !160

; <label>:5343                                    ; preds = %5339
  %5344 = fmul fast float %5329, 0x3FF7154760000000
  %5345 = call float @dx.op.unary.f32(i32 21, float %5344)  ; Exp(value)
  %5346 = fsub fast float 1.000000e+00, %5345
  %5347 = fmul fast float %5326, %5346
  %5348 = fsub fast float -0.000000e+00, %5347
  %5349 = fdiv fast float %5348, %5329
  br label %5350

; <label>:5350                                    ; preds = %5343, %5339
  %5351 = phi float [ %5349, %5343 ], [ %5326, %5339 ]
  %5352 = phi float [ %5345, %5343 ], [ 1.000000e+00, %5339 ]
  %5353 = fcmp fast une float %5330, 0.000000e+00
  br i1 %5353, label %5354, label %5361, !dx.controlflow.hints !160

; <label>:5354                                    ; preds = %5350
  %5355 = fmul fast float %5330, 0x3FF7154760000000
  %5356 = call float @dx.op.unary.f32(i32 21, float %5355)  ; Exp(value)
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = fmul fast float %5327, %5357
  %5359 = fsub fast float -0.000000e+00, %5358
  %5360 = fdiv fast float %5359, %5330
  br label %5361

; <label>:5361                                    ; preds = %5354, %5350, %5310, %5303
  %5362 = phi float [ %5360, %5354 ], [ %5322, %5310 ], [ %5307, %5303 ], [ %5327, %5350 ]
  %5363 = phi float [ %5351, %5354 ], [ %5321, %5310 ], [ %5306, %5303 ], [ %5351, %5350 ]
  %5364 = phi float [ %5340, %5354 ], [ %5320, %5310 ], [ %5305, %5303 ], [ %5340, %5350 ]
  %5365 = phi float [ %5356, %5354 ], [ %5312, %5310 ], [ 1.000000e+00, %5303 ], [ 1.000000e+00, %5350 ]
  %5366 = phi float [ %5352, %5354 ], [ %5312, %5310 ], [ 1.000000e+00, %5303 ], [ %5352, %5350 ]
  %5367 = phi float [ %5341, %5354 ], [ %5312, %5310 ], [ 1.000000e+00, %5303 ], [ %5341, %5350 ]
  %5368 = fmul fast float %5367, %5279
  %5369 = fmul fast float %5366, %5290
  %5370 = fmul fast float %5365, %5301
  %5371 = fadd fast float %5368, %5364
  %5372 = fadd fast float %5369, %5363
  %5373 = fadd fast float %5370, %5362
  %5374 = fmul fast float %5367, %5278
  %5375 = fmul fast float %5366, %5289
  %5376 = fmul fast float %5365, %5300
  br label %5377

; <label>:5377                                    ; preds = %5361, %5172
  %5378 = phi float [ %5376, %5361 ], [ %5178, %5172 ]
  %5379 = phi float [ %5375, %5361 ], [ %5177, %5172 ]
  %5380 = phi float [ %5374, %5361 ], [ %5176, %5172 ]
  %5381 = phi float [ %5373, %5361 ], [ %5175, %5172 ]
  %5382 = phi float [ %5372, %5361 ], [ %5174, %5172 ]
  %5383 = phi float [ %5371, %5361 ], [ %5173, %5172 ]
  %5384 = fmul fast float %5383, %4331
  %5385 = fmul fast float %5382, %4331
  %5386 = fmul fast float %5381, %4331
  %5387 = fmul fast float %5380, %4624
  %5388 = call float @dx.op.dot3.f32(i32 55, float %5380, float %5379, float %5378, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5389 = call float @dx.op.dot3.f32(i32 55, float %5384, float %5385, float %5386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5390 = select i1 %214, float %5388, float %5380
  %5391 = select i1 %214, float %5388, float %5379
  %5392 = select i1 %214, float 1.000000e+00, float %5378
  %5393 = select i1 %214, float %5389, float %5384
  %5394 = select i1 %214, float 0.000000e+00, float %5385
  %5395 = select i1 %214, float 0.000000e+00, float %5386
  %5396 = fmul fast float %5390, %4618
  %5397 = fmul fast float %5391, %4619
  %5398 = fmul fast float %5392, %4620
  %5399 = fadd fast float %5396, %5393
  %5400 = fadd fast float %5397, %5394
  %5401 = fadd fast float %5395, %5398
  %5402 = fmul fast float %5390, %4621
  %5403 = fmul fast float %5391, %4622
  %5404 = fmul fast float %5392, %4623
  %5405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.i32 %5405, 0
  %5407 = icmp eq i32 %5406, 0
  br i1 %5407, label %5775, label %5408, !dx.controlflow.hints !162

; <label>:5408                                    ; preds = %5377
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5411 = extractvalue %dx.types.CBufRet.f32 %5409, 3
  %5412 = fmul fast float %5410, %77
  %5413 = fmul fast float %5411, %78
  %5414 = fmul fast float %5412, 2.000000e+00
  %5415 = fmul fast float %5413, 2.000000e+00
  %5416 = fsub fast float 1.000000e+00, %5414
  %5417 = fsub fast float 1.000000e+00, %5415
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 0
  %5420 = extractvalue %dx.types.CBufRet.f32 %5418, 1
  %5421 = extractvalue %dx.types.CBufRet.f32 %5418, 2
  %5422 = fmul fast float %5416, %5419
  %5423 = fmul fast float %5416, %5420
  %5424 = fmul fast float %5416, %5421
  %5425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5426 = extractvalue %dx.types.CBufRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.CBufRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.CBufRet.f32 %5425, 2
  %5429 = fmul fast float %5417, %5426
  %5430 = fmul fast float %5417, %5427
  %5431 = fmul fast float %5417, %5428
  %5432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.f32 %5432, 0
  %5434 = extractvalue %dx.types.CBufRet.f32 %5432, 1
  %5435 = extractvalue %dx.types.CBufRet.f32 %5432, 2
  %5436 = fadd fast float %5429, %5433
  %5437 = fadd fast float %5436, %5422
  %5438 = fadd fast float %5430, %5434
  %5439 = fadd fast float %5438, %5423
  %5440 = fadd fast float %5431, %5435
  %5441 = fadd fast float %5440, %5424
  %5442 = fmul fast float %5437, %4617
  %5443 = fmul fast float %5439, %4617
  %5444 = fmul fast float %5441, %4617
  %5445 = fmul fast float %5442, %5442
  %5446 = fmul fast float %5443, %5443
  %5447 = fadd fast float %5445, %5446
  %5448 = fmul fast float %5444, %5444
  %5449 = fadd fast float %5447, %5448
  %5450 = call float @dx.op.unary.f32(i32 24, float %5449)  ; Sqrt(value)
  %5451 = extractvalue %dx.types.CBufRet.f32 %4342, 0
  %5452 = fsub fast float %5450, %5451
  %5453 = extractvalue %dx.types.CBufRet.f32 %4342, 2
  %5454 = fmul fast float %5452, %5453
  %5455 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5456 = fadd fast float %5455, -5.000000e-01
  %5457 = fmul fast float %5456, 2.000000e+00
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 2
  %5460 = call float @dx.op.binary.f32(i32 36, float %5459, float %5457)  ; FMin(a,b)
  %5461 = fsub fast float -0.000000e+00, %5459
  %5462 = fcmp fast ogt float %5460, %5461
  br i1 %5462, label %5463, label %5775, !dx.controlflow.hints !163

; <label>:5463                                    ; preds = %5408
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 3
  %5466 = fcmp fast ogt float %5465, 0.000000e+00
  br i1 %5466, label %5467, label %5542, !dx.controlflow.hints !164

; <label>:5467                                    ; preds = %5463
  %5468 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %5469 = extractvalue %dx.types.Dimensions %5468, 0
  %5470 = sitofp i32 %5469 to float
  %5471 = extractvalue %dx.types.Dimensions %5468, 1
  %5472 = sitofp i32 %5471 to float
  %5473 = fmul fast float %5412, %5470
  %5474 = fmul fast float %5413, %5472
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 1
  %5477 = fsub fast float -0.000000e+00, %5476
  %5478 = fptoui float %5477 to i32
  %5479 = fptoui float %5473 to i32
  %5480 = fptoui float %5474 to i32
  %5481 = and i32 %5478, 31
  %5482 = lshr i32 %5479, %5481
  %5483 = lshr i32 %5480, %5481
  %5484 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %5478, i32 %5482, i32 %5483, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5485 = extractvalue %dx.types.ResRet.f32 %5484, 0
  %5486 = fcmp fast olt float %5485, -1.000000e+00
  %5487 = fcmp fast ogt float %5485, -1.000000e+00
  %5488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5489 = extractvalue %dx.types.CBufRet.f32 %5488, 1
  %5490 = select i1 %5487, float %5489, float 1.000000e+00
  %5491 = fadd fast float %5485, 1.000000e+00
  %5492 = fmul fast float %5490, %5491
  %5493 = call float @dx.op.unary.f32(i32 6, float %5492)  ; FAbs(value)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5488, 3
  %5495 = fcmp fast oge float %5493, %5494
  %5496 = select i1 %5495, float 0x4197782600000000, float %5493
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 0
  %5499 = extractvalue %dx.types.CBufRet.f32 %5497, 1
  %5500 = extractvalue %dx.types.CBufRet.f32 %5497, 2
  %5501 = select i1 %5486, float %5498, float %5419
  %5502 = select i1 %5486, float %5499, float %5420
  %5503 = select i1 %5486, float %5500, float %5421
  %5504 = fmul fast float %5501, %5416
  %5505 = fmul fast float %5502, %5416
  %5506 = fmul fast float %5503, %5416
  %5507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5508 = extractvalue %dx.types.CBufRet.f32 %5507, 0
  %5509 = extractvalue %dx.types.CBufRet.f32 %5507, 1
  %5510 = extractvalue %dx.types.CBufRet.f32 %5507, 2
  %5511 = select i1 %5486, float %5508, float %5426
  %5512 = select i1 %5486, float %5509, float %5427
  %5513 = select i1 %5486, float %5510, float %5428
  %5514 = fmul fast float %5511, %5417
  %5515 = fmul fast float %5512, %5417
  %5516 = fmul fast float %5513, %5417
  %5517 = fadd fast float %5514, %5504
  %5518 = fadd fast float %5515, %5505
  %5519 = fadd fast float %5516, %5506
  %5520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5521 = extractvalue %dx.types.CBufRet.f32 %5520, 0
  %5522 = extractvalue %dx.types.CBufRet.f32 %5520, 1
  %5523 = extractvalue %dx.types.CBufRet.f32 %5520, 2
  %5524 = select i1 %5486, float %5521, float %5433
  %5525 = select i1 %5486, float %5522, float %5434
  %5526 = select i1 %5486, float %5523, float %5435
  %5527 = fadd fast float %5517, %5524
  %5528 = fadd fast float %5518, %5525
  %5529 = fadd fast float %5519, %5526
  %5530 = fmul fast float %5527, %5496
  %5531 = fmul fast float %5528, %5496
  %5532 = fmul fast float %5529, %5496
  %5533 = fmul fast float %5530, %5530
  %5534 = fmul fast float %5531, %5531
  %5535 = fadd fast float %5533, %5534
  %5536 = fmul fast float %5532, %5532
  %5537 = fadd fast float %5535, %5536
  %5538 = call float @dx.op.unary.f32(i32 24, float %5537)  ; Sqrt(value)
  %5539 = fsub fast float %5538, %5451
  %5540 = fmul fast float %5539, %5453
  %5541 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  br label %5542

; <label>:5542                                    ; preds = %5467, %5463
  %5543 = phi float [ %5541, %5467 ], [ 1.000000e+00, %5463 ]
  %5544 = fmul fast float %5460, 5.000000e-01
  %5545 = fadd fast float %5544, 5.000000e-01
  %5546 = call float @dx.op.unary.f32(i32 22, float %5545)  ; Frc(value)
  %5547 = call float @dx.op.unary.f32(i32 27, float %5546)  ; Round_ni(value)
  %5548 = call float @dx.op.unary.f32(i32 22, float %5546)  ; Frc(value)
  %5549 = fmul fast float %5548, 2.000000e+00
  %5550 = fadd fast float %5549, -1.000000e+00
  %5551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %5412, float %5413, float %5547, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5552 = extractvalue %dx.types.ResRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.ResRet.f32 %5551, 1
  %5554 = extractvalue %dx.types.ResRet.f32 %5551, 2
  %5555 = extractvalue %dx.types.ResRet.f32 %5551, 3
  %5556 = fadd fast float %5552, -5.000000e-01
  %5557 = fadd fast float %5554, -5.000000e-01
  %5558 = fmul fast float %5556, 0xBFD5555560000000
  %5559 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5557, float %5558)  ; FMad(a,b,c)
  %5560 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5553, float 0.000000e+00)  ; FMad(a,b,c)
  %5561 = fadd fast float %5560, %5555
  %5562 = fmul fast float %5556, -7.500000e-01
  %5563 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5557, float %5562)  ; FMad(a,b,c)
  %5564 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5553, float 0.000000e+00)  ; FMad(a,b,c)
  %5565 = fadd fast float %5564, %5555
  %5566 = call float @dx.op.binary.f32(i32 35, float %5559, float -1.000000e+00)  ; FMax(a,b)
  %5567 = call float @dx.op.binary.f32(i32 35, float %5561, float -1.000000e+00)  ; FMax(a,b)
  %5568 = call float @dx.op.binary.f32(i32 35, float %5563, float -1.000000e+00)  ; FMax(a,b)
  %5569 = call float @dx.op.binary.f32(i32 35, float %5565, float -1.000000e+00)  ; FMax(a,b)
  %5570 = call float @dx.op.binary.f32(i32 36, float %5566, float 1.000000e+00)  ; FMin(a,b)
  %5571 = call float @dx.op.binary.f32(i32 36, float %5567, float 1.000000e+00)  ; FMin(a,b)
  %5572 = call float @dx.op.binary.f32(i32 36, float %5568, float 1.000000e+00)  ; FMin(a,b)
  %5573 = call float @dx.op.binary.f32(i32 36, float %5569, float 1.000000e+00)  ; FMin(a,b)
  %5574 = fcmp fast olt float %5570, 0x3FEFFF8020000000
  br i1 %5574, label %5575, label %5690, !dx.controlflow.hints !165

; <label>:5575                                    ; preds = %5542
  %5576 = extractvalue %dx.types.CBufRet.f32 %5458, 3
  %5577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5578 = extractvalue %dx.types.CBufRet.f32 %5577, 0
  %5579 = extractvalue %dx.types.CBufRet.f32 %5577, 1
  %5580 = extractvalue %dx.types.CBufRet.f32 %5577, 2
  %5581 = extractvalue %dx.types.CBufRet.f32 %5577, 3
  %5582 = fsub fast float %5578, %5570
  %5583 = fsub fast float %5579, %5571
  %5584 = fsub fast float %5580, %5572
  %5585 = fsub fast float %5581, %5573
  %5586 = fmul fast float %5582, %5576
  %5587 = fmul fast float %5583, %5576
  %5588 = fmul fast float %5584, %5576
  %5589 = fmul fast float %5585, %5576
  %5590 = fadd fast float %5586, %5570
  %5591 = fadd fast float %5587, %5571
  %5592 = fsub fast float -0.000000e+00, %5591
  %5593 = fadd fast float %5588, %5572
  %5594 = fadd fast float %5589, %5573
  %5595 = fmul fast float %5590, %5590
  %5596 = fsub fast float %5591, %5595
  %5597 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5596)  ; FMax(a,b)
  %5598 = fdiv fast float 1.000000e+00, %5597
  %5599 = fmul fast float %5591, %5590
  %5600 = fsub fast float %5593, %5599
  %5601 = fsub fast float %5550, %5590
  %5602 = fmul fast float %5550, %5550
  %5603 = fsub fast float %5602, %5591
  %5604 = fmul fast float %5601, %5598
  %5605 = fmul fast float %5604, %5600
  %5606 = fsub fast float %5603, %5605
  %5607 = fmul fast float %5591, %5591
  %5608 = fsub fast float %5594, %5607
  %5609 = fmul fast float %5600, %5600
  %5610 = fmul fast float %5609, %5598
  %5611 = fsub fast float %5608, %5610
  %5612 = fdiv fast float %5606, %5611
  %5613 = fmul fast float %5600, %5612
  %5614 = fsub fast float %5601, %5613
  %5615 = fmul fast float %5614, %5598
  %5616 = fmul fast float %5615, %5590
  %5617 = fsub fast float 1.000000e+00, %5616
  %5618 = fmul fast float %5591, %5612
  %5619 = fsub fast float %5617, %5618
  %5620 = fmul fast float %5615, %5615
  %5621 = fmul fast float %5612, 4.000000e+00
  %5622 = fmul fast float %5621, %5619
  %5623 = fsub fast float %5620, %5622
  %5624 = call float @dx.op.unary.f32(i32 24, float %5623)  ; Sqrt(value)
  %5625 = fcmp fast oge float %5615, 0.000000e+00
  %5626 = fsub fast float -0.000000e+00, %5624
  %5627 = select i1 %5625, float %5626, float %5624
  %5628 = fsub fast float %5627, %5615
  %5629 = fdiv fast float %5628, %5612
  %5630 = fdiv fast float %5619, %5628
  %5631 = fmul fast float %5629, 5.000000e-01
  %5632 = fmul fast float %5630, 2.000000e+00
  %5633 = select i1 %5625, float %5631, float %5632
  %5634 = select i1 %5625, float %5632, float %5631
  %5635 = call float @dx.op.binary.f32(i32 35, float %5633, float %5634)  ; FMax(a,b)
  %5636 = call float @dx.op.binary.f32(i32 36, float %5633, float %5634)  ; FMin(a,b)
  %5637 = fcmp fast ogt float %5550, %5636
  br i1 %5637, label %5638, label %5648

; <label>:5638                                    ; preds = %5575
  %5639 = fsub fast float %5550, %5636
  %5640 = fsub fast float %5635, %5636
  %5641 = fmul fast float %5639, %5640
  %5642 = fmul fast float %5635, %5550
  %5643 = fadd fast float %5635, %5550
  %5644 = fmul fast float %5643, %5590
  %5645 = fadd fast float %5642, %5591
  %5646 = fsub fast float %5645, %5644
  %5647 = fdiv fast float %5646, %5641
  br label %5648

; <label>:5648                                    ; preds = %5638, %5575
  %5649 = phi float [ %5647, %5638 ], [ 0.000000e+00, %5575 ]
  %5650 = fcmp fast ogt float %5550, %5635
  %5651 = fsub fast float %5550, %5635
  br i1 %5650, label %5652, label %5662

; <label>:5652                                    ; preds = %5648
  %5653 = fsub fast float %5635, %5636
  %5654 = fmul fast float %5653, %5651
  %5655 = fmul fast float %5636, %5550
  %5656 = fadd fast float %5636, %5550
  %5657 = fmul fast float %5656, %5590
  %5658 = fsub fast float %5592, %5655
  %5659 = fadd fast float %5658, %5657
  %5660 = fdiv fast float %5659, %5654
  %5661 = fadd fast float %5660, %5649
  br label %5662

; <label>:5662                                    ; preds = %5652, %5648
  %5663 = phi float [ %5661, %5652 ], [ %5649, %5648 ]
  %5664 = fsub fast float %5550, %5636
  %5665 = fmul fast float %5664, %5651
  %5666 = fmul fast float %5636, %5635
  %5667 = fadd fast float %5636, %5635
  %5668 = fmul fast float %5667, %5590
  %5669 = fadd fast float %5666, %5591
  %5670 = fsub fast float %5669, %5668
  %5671 = fdiv fast float %5670, %5665
  %5672 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5673 = fcmp fast oeq float %4343, 0.000000e+00
  %5674 = extractvalue %dx.types.CBufRet.f32 %5458, 0
  %5675 = fcmp fast oeq float %5674, 0.000000e+00
  %5676 = or i1 %5673, %5675
  %5677 = fmul fast float %5674, 2.000000e+00
  %5678 = fadd fast float %5459, %5460
  %5679 = fdiv fast float %5678, %5677
  %5680 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  %5681 = fmul fast float %5680, 2.000000e+00
  %5682 = fsub fast float 3.000000e+00, %5681
  %5683 = fmul fast float %5680, %5680
  %5684 = fmul fast float %5683, %5682
  %5685 = select i1 %5676, float 1.000000e+00, float %5684
  %5686 = fmul fast float %5671, %4343
  %5687 = fadd fast float %5672, %5686
  %5688 = call float @dx.op.unary.f32(i32 7, float %5687)  ; Saturate(value)
  %5689 = fmul fast float %5685, %5688
  br label %5690

; <label>:5690                                    ; preds = %5662, %5542
  %5691 = phi float [ %5689, %5662 ], [ 0.000000e+00, %5542 ]
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %45, float %5412, float %5413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5694 = extractvalue %dx.types.ResRet.f32 %5693, 0
  %5695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.i32 %5695, 2
  %5697 = icmp eq i32 %5696, 0
  br i1 %5697, label %5703, label %5698

; <label>:5698                                    ; preds = %5690
  %5699 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5700 = fadd fast float %5694, -1.000000e+00
  %5701 = fmul fast float %5699, %5700
  %5702 = fadd fast float %5701, 1.000000e+00
  br label %5703

; <label>:5703                                    ; preds = %5698, %5690
  %5704 = phi float [ %5702, %5698 ], [ %5692, %5690 ]
  br i1 %5466, label %5705, label %5723

; <label>:5705                                    ; preds = %5703
  %5706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5707 = extractvalue %dx.types.CBufRet.f32 %5706, 1
  %5708 = fsub fast float %5543, %5707
  %5709 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5710 = fsub fast float %5543, %5465
  %5711 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  %5712 = fsub fast float %5709, %5711
  %5713 = fsub fast float %5545, %5711
  %5714 = fdiv fast float %5713, %5712
  %5715 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5716 = fmul fast float %5715, 2.000000e+00
  %5717 = fsub fast float 3.000000e+00, %5716
  %5718 = fsub fast float %5694, %5704
  %5719 = fmul fast float %5715, %5715
  %5720 = fmul fast float %5719, %5718
  %5721 = fmul fast float %5720, %5717
  %5722 = fadd fast float %5721, %5704
  br label %5723

; <label>:5723                                    ; preds = %5705, %5703
  %5724 = phi float [ %5722, %5705 ], [ %5704, %5703 ]
  %5725 = call float @dx.op.binary.f32(i32 35, float %5694, float %5724)  ; FMax(a,b)
  %5726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.i32 %5726, 2
  %5728 = and i32 %5727, 1
  %5729 = icmp eq i32 %5728, 0
  %5730 = fcmp fast une float %5725, 1.000000e+00
  %5731 = and i1 %5730, %5729
  br i1 %5731, label %5732, label %5751

; <label>:5732                                    ; preds = %5723
  %5733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %5412, float %5413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5734 = extractvalue %dx.types.ResRet.f32 %5733, 0
  %5735 = extractvalue %dx.types.ResRet.f32 %5733, 1
  %5736 = extractvalue %dx.types.ResRet.f32 %5733, 2
  %5737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5738 = extractvalue %dx.types.CBufRet.f32 %5737, 1
  %5739 = fmul fast float %5738, %5734
  %5740 = fmul fast float %5738, %5735
  %5741 = fmul fast float %5738, %5736
  %5742 = fcmp fast ogt float %5694, 0x3FEFFF2E40000000
  %5743 = fsub fast float 1.000000e+00, %5725
  %5744 = fsub fast float 1.000000e+00, %5694
  %5745 = fdiv fast float %5743, %5744
  %5746 = call float @dx.op.unary.f32(i32 7, float %5745)  ; Saturate(value)
  %5747 = select i1 %5742, float 0.000000e+00, float %5746
  %5748 = fmul fast float %5739, %5747
  %5749 = fmul fast float %5740, %5747
  %5750 = fmul fast float %5741, %5747
  br label %5751

; <label>:5751                                    ; preds = %5732, %5723
  %5752 = phi float [ 0.000000e+00, %5723 ], [ %5748, %5732 ]
  %5753 = phi float [ 0.000000e+00, %5723 ], [ %5749, %5732 ]
  %5754 = phi float [ 0.000000e+00, %5723 ], [ %5750, %5732 ]
  %5755 = fmul fast float %5752, %4331
  %5756 = fmul fast float %5753, %4331
  %5757 = fmul fast float %5754, %4331
  %5758 = fmul fast float %5725, %5387
  %5759 = call float @dx.op.dot3.f32(i32 55, float %5725, float %5725, float %5725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5760 = call float @dx.op.dot3.f32(i32 55, float %5755, float %5756, float %5757, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5761 = select i1 %214, float %5759, float %5725
  %5762 = select i1 %214, float 1.000000e+00, float %5725
  %5763 = select i1 %214, float %5760, float %5755
  %5764 = select i1 %214, float 0.000000e+00, float %5756
  %5765 = select i1 %214, float 0.000000e+00, float %5757
  %5766 = fmul fast float %5761, %5399
  %5767 = fmul fast float %5761, %5400
  %5768 = fmul fast float %5762, %5401
  %5769 = fadd fast float %5766, %5763
  %5770 = fadd fast float %5767, %5764
  %5771 = fadd fast float %5765, %5768
  %5772 = fmul fast float %5761, %5402
  %5773 = fmul fast float %5761, %5403
  %5774 = fmul fast float %5762, %5404
  br label %5775

; <label>:5775                                    ; preds = %5751, %5408, %5377, %4613
  %5776 = phi float [ %4618, %4613 ], [ %5399, %5377 ], [ %5769, %5751 ], [ %5399, %5408 ]
  %5777 = phi float [ %4619, %4613 ], [ %5400, %5377 ], [ %5770, %5751 ], [ %5400, %5408 ]
  %5778 = phi float [ %4620, %4613 ], [ %5401, %5377 ], [ %5771, %5751 ], [ %5401, %5408 ]
  %5779 = phi float [ %4621, %4613 ], [ %5402, %5377 ], [ %5772, %5751 ], [ %5402, %5408 ]
  %5780 = phi float [ %4622, %4613 ], [ %5403, %5377 ], [ %5773, %5751 ], [ %5403, %5408 ]
  %5781 = phi float [ %4623, %4613 ], [ %5404, %5377 ], [ %5774, %5751 ], [ %5404, %5408 ]
  %5782 = phi float [ %4624, %4613 ], [ %5387, %5377 ], [ %5758, %5751 ], [ %5387, %5408 ]
  %5783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5784 = extractvalue %dx.types.CBufRet.f32 %5783, 2
  %5785 = extractvalue %dx.types.CBufRet.f32 %5783, 3
  %5786 = fmul fast float %5784, %77
  %5787 = fmul fast float %5785, %78
  %5788 = call float @dx.op.unary.f32(i32 7, float %5786)  ; Saturate(value)
  %5789 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5790 = select i1 %4353, i32 2, i32 0
  %5791 = or i32 %5790, 1
  %5792 = uitofp i32 %5791 to float
  %5793 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %5788, float %5789, float %5792, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5794 = extractvalue %dx.types.ResRet.f32 %5793, 0
  %5795 = extractvalue %dx.types.ResRet.f32 %5793, 1
  %5796 = extractvalue %dx.types.ResRet.f32 %5793, 2
  %5797 = extractvalue %dx.types.ResRet.f32 %5793, 3
  %5798 = add nuw nsw i32 %5790, 2
  %5799 = uitofp i32 %5798 to float
  %5800 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %5788, float %5789, float %5799, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5801 = extractvalue %dx.types.ResRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.ResRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.ResRet.f32 %5800, 2
  %5804 = extractvalue %dx.types.ResRet.f32 %5800, 3
  %5805 = call float @dx.op.binary.f32(i32 35, float %5795, float %5796)  ; FMax(a,b)
  %5806 = call float @dx.op.binary.f32(i32 35, float %5794, float %5805)  ; FMax(a,b)
  %5807 = call float @dx.op.binary.f32(i32 35, float %5806, float %5797)  ; FMax(a,b)
  %5808 = call float @dx.op.binary.f32(i32 36, float %5802, float %5803)  ; FMin(a,b)
  %5809 = call float @dx.op.binary.f32(i32 36, float %5801, float %5808)  ; FMin(a,b)
  %5810 = call float @dx.op.binary.f32(i32 36, float %5809, float %5804)  ; FMin(a,b)
  %5811 = fmul fast float %5807, 2.550000e+02
  %5812 = fadd fast float %5811, 0x3F70101020000000
  %5813 = fptoui float %5812 to i32
  %5814 = fmul fast float %5810, 2.550000e+02
  %5815 = fadd fast float %5814, 0x3F70101020000000
  %5816 = fptoui float %5815 to i32
  %5817 = icmp ult i32 %5813, %5816
  br i1 %5817, label %5818, label %5987

; <label>:5818                                    ; preds = %5775
  %5819 = fcmp fast ogt float %67, 9.843750e-01
  %5820 = fadd fast float %4617, -4.000000e+00
  %5821 = select i1 %5819, float -4.000000e+00, float %5820
  %5822 = call float @dx.op.binary.f32(i32 35, float %5821, float 0.000000e+00)  ; FMax(a,b)
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5825 = fadd fast float %5824, %5822
  %5826 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5827 = fmul fast float %5825, %5826
  %5828 = call float @dx.op.unary.f32(i32 23, float %5827)  ; Log(value)
  %5829 = extractvalue %dx.types.CBufRet.f32 %5823, 3
  %5830 = fmul fast float %5829, %5828
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5833 = fmul fast float %5830, %5832
  %5834 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5835 = uitofp i32 %5813 to float
  %5836 = uitofp i32 %5816 to float
  %5837 = fadd fast float %5835, 5.000000e-01
  %5838 = fadd fast float %5836, 5.000000e-01
  %5839 = fmul fast float %5832, %5837
  %5840 = fmul fast float %5832, %5838
  %5841 = fadd fast float %5839, 0x3F0FFB4800000000
  %5842 = fadd fast float %5840, 0xBF0FFB4800000000
  %5843 = call float @dx.op.binary.f32(i32 35, float %5834, float %5841)  ; FMax(a,b)
  %5844 = call float @dx.op.binary.f32(i32 36, float %5843, float %5842)  ; FMin(a,b)
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5847 = extractvalue %dx.types.CBufRet.f32 %5845, 2
  %5848 = extractvalue %dx.types.CBufRet.f32 %5845, 0
  %5849 = select i1 %4353, float %5848, float 0.000000e+00
  %5850 = fmul fast float %5846, %5844
  %5851 = fadd fast float %5849, %5850
  %5852 = fadd fast float %5849, %5847
  %5853 = fsub fast float %5846, %5847
  %5854 = fadd fast float %5853, %5849
  %5855 = call float @dx.op.binary.f32(i32 35, float %5851, float %5852)  ; FMax(a,b)
  %5856 = call float @dx.op.binary.f32(i32 36, float %5855, float %5854)  ; FMin(a,b)
  %5857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %5788, float %5789, float %5856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5858 = extractvalue %dx.types.ResRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.ResRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.ResRet.f32 %5857, 2
  %5861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5862 = extractvalue %dx.types.CBufRet.i32 %5861, 0
  %5863 = extractvalue %dx.types.CBufRet.i32 %5861, 1
  %5864 = uitofp i32 %5862 to float
  %5865 = uitofp i32 %5863 to float
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5869 = fmul fast float %5864, %5788
  %5870 = fmul fast float %5865, %5789
  %5871 = fadd fast float %5869, -5.000000e-01
  %5872 = fadd fast float %5870, -5.000000e-01
  %5873 = call float @dx.op.unary.f32(i32 22, float %5871)  ; Frc(value)
  %5874 = call float @dx.op.unary.f32(i32 22, float %5872)  ; Frc(value)
  %5875 = fmul fast float %5873, %5873
  %5876 = fmul fast float %5875, %5873
  %5877 = fsub fast float 3.000000e+00, %5873
  %5878 = fmul fast float %5875, %5877
  %5879 = fmul fast float %5873, 3.000000e+00
  %5880 = fmul fast float %5876, 3.000000e+00
  %5881 = fmul fast float %5875, 6.000000e+00
  %5882 = fsub fast float %5880, %5881
  %5883 = fadd fast float %5882, 4.000000e+00
  %5884 = fmul fast float %5883, 0x3FC5555560000000
  %5885 = fmul fast float %5876, -3.000000e+00
  %5886 = fadd fast float %5875, %5873
  %5887 = fmul fast float %5886, 3.000000e+00
  %5888 = fadd fast float %5885, 1.000000e+00
  %5889 = fadd fast float %5888, %5887
  %5890 = fmul fast float %5876, 0x3FC5555560000000
  %5891 = fmul fast float %5874, %5874
  %5892 = fmul fast float %5891, %5874
  %5893 = fsub fast float 3.000000e+00, %5874
  %5894 = fmul fast float %5891, %5893
  %5895 = fmul fast float %5874, 3.000000e+00
  %5896 = fmul fast float %5892, 3.000000e+00
  %5897 = fmul fast float %5891, 6.000000e+00
  %5898 = fsub fast float %5896, %5897
  %5899 = fadd fast float %5898, 4.000000e+00
  %5900 = fmul fast float %5899, 0x3FC5555560000000
  %5901 = fmul fast float %5892, -3.000000e+00
  %5902 = fadd fast float %5891, %5874
  %5903 = fmul fast float %5902, 3.000000e+00
  %5904 = fadd fast float %5901, 1.000000e+00
  %5905 = fadd fast float %5904, %5903
  %5906 = fmul fast float %5892, 0x3FC5555560000000
  %5907 = fadd fast float %5873, 1.000000e+00
  %5908 = fsub fast float 1.000000e+00, %5879
  %5909 = fadd fast float %5908, %5878
  %5910 = fadd fast float %5909, %5883
  %5911 = fmul fast float %5910, 0x3FC5555560000000
  %5912 = fdiv fast float %5884, %5911
  %5913 = fsub fast float %5907, %5912
  %5914 = fsub fast float 1.000000e+00, %5873
  %5915 = fadd fast float %5889, %5876
  %5916 = fmul fast float %5915, 0x3FC5555560000000
  %5917 = fdiv fast float %5890, %5916
  %5918 = fadd fast float %5914, %5917
  %5919 = fadd fast float %5874, 1.000000e+00
  %5920 = fsub fast float 1.000000e+00, %5895
  %5921 = fadd fast float %5920, %5894
  %5922 = fadd fast float %5921, %5899
  %5923 = fmul fast float %5922, 0x3FC5555560000000
  %5924 = fdiv fast float %5900, %5923
  %5925 = fsub fast float %5919, %5924
  %5926 = fsub fast float 1.000000e+00, %5874
  %5927 = fadd fast float %5905, %5892
  %5928 = fmul fast float %5927, 0x3FC5555560000000
  %5929 = fdiv fast float %5906, %5928
  %5930 = fadd fast float %5929, %5926
  %5931 = fmul fast float %5913, %5867
  %5932 = fsub fast float %5788, %5931
  %5933 = fmul fast float %5918, %5867
  %5934 = fadd fast float %5933, %5788
  %5935 = fmul fast float %5930, %5868
  %5936 = fadd fast float %5935, %5789
  %5937 = fmul fast float %5925, %5868
  %5938 = fsub fast float %5789, %5937
  %5939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %5932, float %5938, float %5856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5940 = extractvalue %dx.types.ResRet.f32 %5939, 0
  %5941 = extractvalue %dx.types.ResRet.f32 %5939, 1
  %5942 = extractvalue %dx.types.ResRet.f32 %5939, 2
  %5943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %5934, float %5938, float %5856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5944 = extractvalue %dx.types.ResRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.ResRet.f32 %5943, 1
  %5946 = extractvalue %dx.types.ResRet.f32 %5943, 2
  %5947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %5932, float %5936, float %5856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5948 = extractvalue %dx.types.ResRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.ResRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.ResRet.f32 %5947, 2
  %5951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %5934, float %5936, float %5856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5952 = extractvalue %dx.types.ResRet.f32 %5951, 0
  %5953 = extractvalue %dx.types.ResRet.f32 %5951, 1
  %5954 = extractvalue %dx.types.ResRet.f32 %5951, 2
  %5955 = fsub fast float %5948, %5940
  %5956 = fsub fast float %5949, %5941
  %5957 = fsub fast float %5950, %5942
  %5958 = fmul fast float %5955, %5928
  %5959 = fmul fast float %5956, %5928
  %5960 = fmul fast float %5957, %5928
  %5961 = fadd fast float %5958, %5940
  %5962 = fadd fast float %5959, %5941
  %5963 = fadd fast float %5960, %5942
  %5964 = fsub fast float %5952, %5944
  %5965 = fsub fast float %5953, %5945
  %5966 = fsub fast float %5954, %5946
  %5967 = fmul fast float %5964, %5928
  %5968 = fmul fast float %5965, %5928
  %5969 = fmul fast float %5966, %5928
  %5970 = fsub fast float %5944, %5961
  %5971 = fadd fast float %5970, %5967
  %5972 = fsub fast float %5945, %5962
  %5973 = fadd fast float %5972, %5968
  %5974 = fsub fast float %5946, %5963
  %5975 = fadd fast float %5974, %5969
  %5976 = fmul fast float %5971, %5916
  %5977 = fmul fast float %5973, %5916
  %5978 = fmul fast float %5975, %5916
  %5979 = fadd fast float %5976, %5961
  %5980 = fadd fast float %5977, %5962
  %5981 = fadd fast float %5978, %5963
  %5982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5983 = extractvalue %dx.types.CBufRet.f32 %5982, 1
  %5984 = fmul fast float %5979, %5983
  %5985 = fmul fast float %5980, %5983
  %5986 = fmul fast float %5981, %5983
  br label %5987

; <label>:5987                                    ; preds = %5818, %5775
  %5988 = phi float [ %5858, %5818 ], [ 1.000000e+00, %5775 ]
  %5989 = phi float [ %5859, %5818 ], [ 1.000000e+00, %5775 ]
  %5990 = phi float [ %5860, %5818 ], [ 1.000000e+00, %5775 ]
  %5991 = phi float [ %5984, %5818 ], [ 0.000000e+00, %5775 ]
  %5992 = phi float [ %5985, %5818 ], [ 0.000000e+00, %5775 ]
  %5993 = phi float [ %5986, %5818 ], [ 0.000000e+00, %5775 ]
  %5994 = fmul fast float %5991, %4331
  %5995 = fmul fast float %5992, %4331
  %5996 = fmul fast float %5993, %4331
  %5997 = fmul fast float %5988, %5782
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5988, float %5989, float %5990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = call float @dx.op.dot3.f32(i32 55, float %5994, float %5995, float %5996, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6000 = select i1 %214, float %5998, float %5988
  %6001 = select i1 %214, float %5998, float %5989
  %6002 = select i1 %214, float 1.000000e+00, float %5990
  %6003 = select i1 %214, float %5999, float %5994
  %6004 = select i1 %214, float 0.000000e+00, float %5995
  %6005 = select i1 %214, float 0.000000e+00, float %5996
  %6006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6007 = extractvalue %dx.types.CBufRet.i32 %6006, 3
  %6008 = and i32 %6007, 3
  %6009 = icmp ne i32 %6008, 0
  %6010 = and i32 %6007, 4
  %6011 = icmp ne i32 %6010, 0
  %6012 = and i1 %6009, %6011
  %6013 = and i1 %214, %6012
  br i1 %6013, label %6014, label %6020

; <label>:6014                                    ; preds = %5987
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 1
  %6017 = fadd fast float %5997, -1.000000e+00
  %6018 = fmul fast float %6016, %6017
  %6019 = fadd fast float %6018, 1.000000e+00
  br label %6020

; <label>:6020                                    ; preds = %6014, %5987
  %6021 = phi float [ %6019, %6014 ], [ %5997, %5987 ]
  %6022 = fadd fast float %5779, %5776
  %6023 = fmul fast float %6000, %6022
  %6024 = fadd fast float %6023, %6003
  %6025 = fadd fast float %5780, %5777
  %6026 = fmul fast float %6001, %6025
  %6027 = fadd fast float %6026, %6004
  %6028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.f32 %6028, 0
  br i1 %214, label %6030, label %6053

; <label>:6030                                    ; preds = %6020
  %6031 = fadd fast float %6024, %6027
  %6032 = fmul fast float %6029, %6031
  %6033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6034 = extractvalue %dx.types.CBufRet.f32 %6033, 3
  %6035 = extractvalue %dx.types.CBufRet.f32 %4335, 1
  %6036 = fsub fast float %4340, %4334
  %6037 = fadd fast float %6036, %4341
  %6038 = fsub fast float %6037, %6035
  %6039 = extractvalue %dx.types.CBufRet.f32 %4335, 2
  %6040 = fmul fast float %6038, %6039
  %6041 = call float @dx.op.unary.f32(i32 7, float %6040)  ; Saturate(value)
  %6042 = fsub fast float %6041, %6034
  %6043 = fmul fast float %6042, %6021
  %6044 = fadd fast float %6043, %6034
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 0
  %6047 = fsub fast float %6044, %6046
  %6048 = fmul fast float %6047, 1.000000e+01
  %6049 = call float @dx.op.unary.f32(i32 7, float %6048)  ; Saturate(value)
  %6050 = fmul fast float %6049, %4330
  %6051 = fadd fast float %6050, %4331
  %6052 = fmul fast float %6051, %6044
  br label %6077

; <label>:6053                                    ; preds = %6020
  %6054 = fadd fast float %5781, %5778
  %6055 = fmul fast float %6002, %6054
  %6056 = fadd fast float %6055, %6005
  %6057 = fmul fast float %6029, %6024
  %6058 = fmul fast float %6029, %6027
  %6059 = fmul fast float %6029, %6056
  %6060 = call float @dx.op.binary.f32(i32 35, float %6057, float %6058)  ; FMax(a,b)
  %6061 = call float @dx.op.binary.f32(i32 35, float %6060, float %6059)  ; FMax(a,b)
  %6062 = call float @dx.op.binary.f32(i32 35, float %6061, float %4331)  ; FMax(a,b)
  %6063 = fcmp fast ugt float %6062, 0x3F10000000000000
  br i1 %6063, label %6065, label %6064

; <label>:6064                                    ; preds = %6053
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6065

; <label>:6065                                    ; preds = %6064, %6053
  %6066 = add i32 %52, 116
  %6067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %6066, i32 undef)  ; BufferLoad(srv,index,wot)
  %6068 = extractvalue %dx.types.ResRet.i32 %6067, 0
  %6069 = and i32 %6068, 32
  %6070 = icmp eq i32 %6069, 0
  br i1 %6070, label %6077, label %6071

; <label>:6071                                    ; preds = %6065
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6074 = fmul fast float %6073, 0x3FE99999A0000000
  %6075 = fadd fast float %6073, %6057
  %6076 = fadd fast float %6074, %6059
  br label %6077

; <label>:6077                                    ; preds = %6071, %6065, %6030
  %6078 = phi float [ %6032, %6030 ], [ %6075, %6071 ], [ %6057, %6065 ]
  %6079 = phi float [ %6052, %6030 ], [ %6058, %6071 ], [ %6058, %6065 ]
  %6080 = phi float [ %6051, %6030 ], [ %6076, %6071 ], [ %6059, %6065 ]
  %6081 = phi float [ %6051, %6030 ], [ %4331, %6071 ], [ %4331, %6065 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6082 = call float @dx.op.binary.f32(i32 36, float %6078, float 3.225500e+04)  ; FMin(a,b)
  %6083 = call float @dx.op.binary.f32(i32 36, float %6079, float 3.225500e+04)  ; FMin(a,b)
  %6084 = call float @dx.op.binary.f32(i32 36, float %6080, float 3.225500e+04)  ; FMin(a,b)
  %6085 = call float @dx.op.binary.f32(i32 36, float %6081, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6082)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6083)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6084)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6085)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!55 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
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

