;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float   xyz 
; TANGENT                  0   xyzw        3     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         4     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        5     NONE   float   xyzw
; SV_IsFrontFace           0   x           6    FFACE    uint   x   
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
; shader hash: 598c7d1ac616b4d207468f84f67608df
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
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
; SV_IsFrontFace           0        nointerpolation       
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
;                                   texture    byte         r/o      T2             t0     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture    byte         r/o      T5     t16,space1     1
;                                   texture    byte         r/o      T6     t17,space1     1
;                                   texture     f32          2d      T7             t1     1
;                                   texture     f32          2d      T8     t58,space2     1
;                                   texture     f32          2d      T9     t57,space2     1
;                                   texture    byte         r/o     T10     t69,space1     1
;                                   texture     u32          2d     T11     t56,space2     1
;                                   texture     f32          2d     T12     t34,space2     1
;                                   texture     f32          2d     T13      t2,space2     1
;                                   texture     f32          2d     T14      t3,space2     1
;                                   texture     f32          2d     T15      t4,space2     1
;                                   textureunorm_f32     2darray     T16     t80,space2     1
;                                   texture    byte         r/o     T17     t67,space1     1
;                                   texture     f32          2d     T18      t7,space2     1
;                                   texture     f32          2d     T19      t6,space2     1
;                                   texture     f32          2d     T20      t5,space2     1
;                                   texture     f32          2d     T21     t38,space2     1
;                                   texture     f32          1d     T22     t30,space2     1
;                                   texture     f32          3d     T23     t44,space2     1
;                                   texture     f32          3d     T24     t45,space2     1
;                                   texture     f32     2darray     T25     t47,space2     1
;                                   textureunorm_f32     2darray     T26     t85,space2     1
;                                   texture     f32          2d     T27     t83,space2     1
;                                   texture     f32          2d     T28     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 25, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 18, 20, 21, 22, 23, 24 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = alloca [4 x i32], align 4
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = icmp ne i32 %37, 0
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = alloca [12 x float], align 4
  %60 = alloca [12 x float], align 4
  %61 = alloca [3 x float], align 4
  %62 = alloca [3 x float], align 4
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = fmul fast float %66, %55
  %68 = fmul fast float %66, %56
  %69 = select i1 %38, float 1.000000e+00, float -1.000000e+00
  %70 = fmul fast float %50, %69
  %71 = fmul fast float %51, %69
  %72 = fmul fast float %52, %69
  %73 = fmul fast float %51, %48
  %74 = fmul fast float %52, %47
  %75 = fsub fast float %73, %74
  %76 = fmul fast float %52, %46
  %77 = fmul fast float %50, %48
  %78 = fsub fast float %76, %77
  %79 = fmul fast float %50, %47
  %80 = fmul fast float %51, %46
  %81 = fsub fast float %79, %80
  %82 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float %39, float %40, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %83 = bitcast float %82 to i32
  %84 = ashr i32 %83, 1
  %85 = sub nsw i32 1597250115, %84
  %86 = bitcast i32 %85 to float
  %87 = fmul fast float %86, %39
  %88 = fmul fast float %86, %40
  %89 = fmul fast float %86, %41
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %93 = fmul fast float %67, 2.000000e+00
  %94 = fmul fast float %93, %91
  %95 = fmul fast float %68, 2.000000e+00
  %96 = fmul fast float %95, %92
  %97 = fsub fast float 1.000000e+00, %94
  %98 = fsub fast float 1.000000e+00, %96
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %97, %100
  %104 = fmul fast float %97, %101
  %105 = fmul fast float %97, %102
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fmul fast float %98, %107
  %111 = fmul fast float %98, %108
  %112 = fmul fast float %98, %109
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fadd fast float %110, %114
  %118 = fadd fast float %117, %103
  %119 = fadd fast float %111, %115
  %120 = fadd fast float %119, %104
  %121 = fadd fast float %112, %116
  %122 = fadd fast float %121, %105
  %123 = fmul fast float %118, %58
  %124 = fmul fast float %120, %58
  %125 = fmul fast float %122, %58
  %126 = fmul fast float %67, 5.000000e-01
  %127 = fmul fast float %68, 5.000000e-01
  %128 = fptosi float %126 to i32
  %129 = fptosi float %127 to i32
  %130 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %128, i32 %129, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = lshr i32 %131, 18
  %133 = uitofp i32 %132 to float
  %134 = fmul fast float %133, 0x3F4C00EBA0000000
  %135 = call float @dx.op.unary.f32(i32 21, float %134)  ; Exp(value)
  %136 = fadd fast float %135, -1.000000e+00
  %137 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %138 = extractvalue %dx.types.Dimensions %137, 0
  %139 = sitofp i32 %138 to float
  %140 = extractvalue %dx.types.Dimensions %137, 1
  %141 = sitofp i32 %140 to float
  %142 = fcmp fast oge float %126, %139
  %143 = fcmp fast oge float %127, %141
  %144 = or i1 %142, %143
  %145 = select i1 %144, float 0x4197782600000000, float %136
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %149 = fmul fast float %147, %67
  %150 = fmul fast float %148, %68
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = and i32 %152, 114688
  %154 = icmp ne i32 %153, 0
  %155 = select i1 %154, float %149, float 0.000000e+00
  %156 = select i1 %154, float %150, float 0.000000e+00
  %157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %32, float %155, float %156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = fmul fast float %158, 2.550000e+02
  %160 = fptoui float %159 to i32
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.i32 %162, 3
  %164 = and i32 %163, 3
  %165 = icmp ne i32 %164, 0
  %166 = and i32 %163, 4
  %167 = icmp ne i32 %166, 0
  %168 = and i1 %165, %167
  br i1 %168, label %169, label %180

; <label>:169                                     ; preds = %0
  %170 = extractvalue %dx.types.CBufRet.f32 %161, 3
  %171 = fmul fast float %170, %68
  %172 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %173 = fmul fast float %172, %67
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %173, float %171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fsub fast float 1.000000e+00, %175
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = fcmp fast olt float %176, %178
  br label %183

; <label>:180                                     ; preds = %0
  %181 = icmp eq i32 %166, 0
  %182 = and i1 %165, %181
  br label %183

; <label>:183                                     ; preds = %180, %169
  %184 = phi i1 [ %179, %169 ], [ %182, %180 ]
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = shl i32 %186, 4
  %188 = and i32 %187, 32752
  %189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %188)  ; LegacyF16ToF32(value)
  %190 = lshr i32 %186, 7
  %191 = and i32 %190, 32752
  %192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %191)  ; LegacyF16ToF32(value)
  %193 = lshr i32 %186, 22
  %194 = shl nuw nsw i32 %193, 5
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = and i32 %210, 65535
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = lshr i32 %210, 16
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = and i32 %216, 65535
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = lshr i32 %216, 16
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = fmul fast float %218, 0x3F50624DE0000000
  %222 = fmul fast float %220, 0x3F50624DE0000000
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 2
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %234, label %227

; <label>:227                                     ; preds = %183
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = add i32 %229, 0
  %231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %231, %dx.types.Handle %64, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 3
  br label %234

; <label>:234                                     ; preds = %227, %183
  %235 = phi float [ 1.000000e+00, %183 ], [ %233, %227 ]
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = or i32 %239, %237
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %829, label %242

; <label>:242                                     ; preds = %234
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = lshr i32 %244, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = fmul fast float %246, 0x3F50624DE0000000
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = lshr i32 %249, 16
  %251 = and i32 %250, 255
  %252 = lshr i32 %249, 24
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 65535
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %254, 16
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = lshr i32 %260, 22
  %262 = shl nuw nsw i32 %261, 5
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = shl i32 %260, 4
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %260, 7
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 3
  %272 = fmul fast float %271, 1.000000e+03
  %273 = fmul fast float %221, %272
  %274 = call float @dx.op.unary.f32(i32 22, float %273)  ; Frc(value)
  %275 = fadd fast float %274, %212
  %276 = fmul fast float %222, %272
  %277 = call float @dx.op.unary.f32(i32 22, float %276)  ; Frc(value)
  %278 = fadd fast float %277, %214
  %279 = fmul fast float %247, %272
  %280 = call float @dx.op.unary.f32(i32 22, float %279)  ; Frc(value)
  %281 = fmul fast float %280, 0x401921FB60000000
  %282 = fadd fast float %281, %263
  %283 = call float @dx.op.unary.f32(i32 13, float %282)  ; Sin(value)
  %284 = call float @dx.op.unary.f32(i32 12, float %282)  ; Cos(value)
  %285 = fsub fast float -0.000000e+00, %283
  %286 = fadd fast float %53, -5.000000e-01
  %287 = fadd fast float %54, -5.000000e-01
  %288 = fmul fast float %256, %286
  %289 = fmul fast float %258, %287
  %290 = fadd fast float %288, 5.000000e-01
  %291 = fadd fast float %289, 5.000000e-01
  %292 = fmul fast float %266, %290
  %293 = fmul fast float %269, %291
  %294 = fmul fast float %284, %292
  %295 = call float @dx.op.tertiary.f32(i32 46, float %285, float %293, float %294)  ; FMad(a,b,c)
  %296 = fmul fast float %283, %292
  %297 = call float @dx.op.tertiary.f32(i32 46, float %284, float %293, float %296)  ; FMad(a,b,c)
  %298 = fadd fast float %275, %295
  %299 = fadd fast float %278, %297
  %300 = icmp ugt i32 %251, 1
  %301 = icmp ugt i32 %249, 33554431
  %302 = or i1 %301, %300
  br i1 %302, label %303, label %327

; <label>:303                                     ; preds = %242
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = lshr i32 %305, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = fmul fast float %271, %307
  %309 = call float @dx.op.unary.f32(i32 22, float %308)  ; Frc(value)
  %310 = mul nuw nsw i32 %251, %252
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %309, %311
  %313 = call float @dx.op.unary.f32(i32 27, float %312)  ; Round_ni(value)
  %314 = fptoui float %313 to i32
  %315 = urem i32 %314, %251
  %316 = udiv i32 %314, %252
  %317 = call float @dx.op.unary.f32(i32 22, float %298)  ; Frc(value)
  %318 = call float @dx.op.unary.f32(i32 22, float %299)  ; Frc(value)
  %319 = uitofp i32 %315 to float
  %320 = uitofp i32 %316 to float
  %321 = fadd fast float %317, %319
  %322 = fadd fast float %318, %320
  %323 = uitofp i32 %251 to float
  %324 = uitofp i32 %252 to float
  %325 = fdiv fast float %321, %323
  %326 = fdiv fast float %322, %324
  br label %327

; <label>:327                                     ; preds = %303, %242
  %328 = phi float [ %325, %303 ], [ %298, %242 ]
  %329 = phi float [ %326, %303 ], [ %299, %242 ]
  %330 = and i32 %237, 256
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %376, label %332

; <label>:332                                     ; preds = %327
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = add i32 %334, 0
  %336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %335, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %337 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %336, %dx.types.Handle %64, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = shl i32 %340, 4
  %342 = and i32 %341, 32752
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %340, 7
  %345 = and i32 %344, 32752
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = fsub fast float 1.000000e+00, %235
  %348 = call float @dx.op.binary.f32(i32 35, float %347, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %349 = bitcast float %235 to i32
  %350 = sitofp i32 %349 to float
  %351 = fadd fast float %350, 0xC1CFBF8940000000
  %352 = fmul fast float %346, %351
  %353 = fadd fast float %352, 0x41CFBF8940000000
  %354 = fptosi float %353 to i32
  %355 = bitcast i32 %354 to float
  %356 = bitcast float %348 to i32
  %357 = sitofp i32 %356 to float
  %358 = fadd fast float %357, 0xC1CFBF8940000000
  %359 = fmul fast float %358, %346
  %360 = fadd fast float %359, 0x41CFBF8940000000
  %361 = fptosi float %360 to i32
  %362 = bitcast i32 %361 to float
  %363 = fmul fast float %355, %343
  %364 = fmul fast float %362, %343
  %365 = fsub fast float %348, %363
  %366 = fadd fast float %364, %348
  %367 = call float @dx.op.unary.f32(i32 7, float %365)  ; Saturate(value)
  %368 = call float @dx.op.unary.f32(i32 7, float %366)  ; Saturate(value)
  %369 = fsub fast float %338, %367
  %370 = fsub fast float %368, %367
  %371 = bitcast float %370 to i32
  %372 = sub nsw i32 2129859010, %371
  %373 = bitcast i32 %372 to float
  %374 = fmul fast float %373, %369
  %375 = call float @dx.op.unary.f32(i32 7, float %374)  ; Saturate(value)
  br label %376

; <label>:376                                     ; preds = %332, %327
  %377 = phi float [ %375, %332 ], [ %235, %327 ]
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 128
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %397, label %382

; <label>:382                                     ; preds = %376
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = add i32 %384, 0
  %386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %386, %dx.types.Handle %64, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 524288
  %392 = icmp ne i32 %391, 0
  %393 = fcmp fast ogt float %388, 0x3FE0101020000000
  %394 = select i1 %393, float 1.000000e+00, float 0.000000e+00
  %395 = select i1 %392, float %394, float %388
  %396 = fmul fast float %395, %377
  br label %397

; <label>:397                                     ; preds = %382, %376
  %398 = phi float [ %396, %382 ], [ %377, %376 ]
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 16
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %596, label %403

; <label>:403                                     ; preds = %397
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = add i32 %407, 0
  %409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %408, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %410 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %409, %dx.types.Handle %63, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = extractvalue %dx.types.ResRet.f32 %410, 1
  %413 = extractvalue %dx.types.ResRet.f32 %410, 2
  %414 = extractvalue %dx.types.ResRet.f32 %410, 3
  %415 = and i32 %405, 255
  %416 = uitofp i32 %415 to float
  %417 = lshr i32 %405, 8
  %418 = and i32 %417, 255
  %419 = uitofp i32 %418 to float
  %420 = fmul fast float %414, %416
  %421 = fadd fast float %420, %419
  %422 = fmul fast float %421, 0x3F70101000000000
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = and i32 %424, 512
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %434, label %427

; <label>:427                                     ; preds = %403
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = add i32 %429, 0
  %431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %430, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %432 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %431, %dx.types.Handle %64, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  br label %434

; <label>:434                                     ; preds = %427, %403
  %435 = phi float [ %433, %427 ], [ 1.000000e+00, %403 ]
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 33554432
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %543, label %440

; <label>:440                                     ; preds = %434
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 65535
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %442, 16
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = lshr i32 %452, 24
  %454 = uitofp i32 %453 to float
  %455 = fmul fast float %454, 0x3F70101020000000
  %456 = and i32 %452, 255
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %457, 0x3F70101020000000
  %459 = lshr i32 %452, 8
  %460 = and i32 %459, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = lshr i32 %452, 16
  %464 = and i32 %463, 255
  %465 = uitofp i32 %464 to float
  %466 = fmul fast float %465, 0x3F70101020000000
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = lshr i32 %468, 24
  %470 = uitofp i32 %469 to float
  %471 = fmul fast float %470, 0x3F70101020000000
  %472 = and i32 %468, 255
  %473 = uitofp i32 %472 to float
  %474 = fmul fast float %473, 0x3F70101020000000
  %475 = lshr i32 %468, 8
  %476 = and i32 %475, 255
  %477 = uitofp i32 %476 to float
  %478 = fmul fast float %477, 0x3F70101020000000
  %479 = lshr i32 %468, 16
  %480 = and i32 %479, 255
  %481 = uitofp i32 %480 to float
  %482 = fmul fast float %481, 0x3F70101020000000
  %483 = bitcast float %411 to i32
  %484 = ashr i32 %483, 1
  %485 = sub nsw i32 1597463174, %484
  %486 = bitcast i32 %485 to float
  %487 = fmul fast float %411, 5.000000e-01
  %488 = fmul fast float %486, %486
  %489 = fmul fast float %488, %487
  %490 = fsub fast float 1.500000e+00, %489
  %491 = fmul fast float %486, %411
  %492 = fmul fast float %491, %490
  %493 = bitcast float %412 to i32
  %494 = ashr i32 %493, 1
  %495 = sub nsw i32 1597463174, %494
  %496 = bitcast i32 %495 to float
  %497 = fmul fast float %412, 5.000000e-01
  %498 = fmul fast float %496, %496
  %499 = fmul fast float %498, %497
  %500 = fsub fast float 1.500000e+00, %499
  %501 = fmul fast float %496, %412
  %502 = fmul fast float %501, %500
  %503 = bitcast float %413 to i32
  %504 = ashr i32 %503, 1
  %505 = sub nsw i32 1597463174, %504
  %506 = bitcast i32 %505 to float
  %507 = fmul fast float %413, 5.000000e-01
  %508 = fmul fast float %506, %506
  %509 = fmul fast float %508, %507
  %510 = fsub fast float 1.500000e+00, %509
  %511 = fmul fast float %506, %413
  %512 = fmul fast float %511, %510
  %513 = fsub fast float %492, %474
  %514 = fsub fast float %502, %478
  %515 = fsub fast float %512, %482
  %516 = fmul fast float %513, %444
  %517 = fmul fast float %514, %446
  %518 = fmul fast float %515, %450
  %519 = fadd fast float %516, %458
  %520 = fadd fast float %517, %462
  %521 = fadd fast float %518, %466
  %522 = call float @dx.op.unary.f32(i32 7, float %519)  ; Saturate(value)
  %523 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %524 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %525 = fmul fast float %522, %522
  %526 = fmul fast float %523, %523
  %527 = fmul fast float %524, %524
  %528 = fsub fast float %525, %411
  %529 = fsub fast float %526, %412
  %530 = fsub fast float %527, %413
  %531 = fmul fast float %528, %435
  %532 = fmul fast float %529, %435
  %533 = fmul fast float %530, %435
  %534 = fadd fast float %531, %411
  %535 = fadd fast float %532, %412
  %536 = fadd fast float %533, %413
  %537 = fadd fast float %455, %422
  %538 = fsub fast float %537, %471
  %539 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  %540 = fsub fast float %539, %422
  %541 = fmul fast float %540, %435
  %542 = fadd fast float %541, %422
  br label %596

; <label>:543                                     ; preds = %434
  %544 = and i32 %437, 134217728
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %580, label %546

; <label>:546                                     ; preds = %543
  %547 = call float @dx.op.unary.f32(i32 24, float %200)  ; Sqrt(value)
  %548 = call float @dx.op.unary.f32(i32 24, float %204)  ; Sqrt(value)
  %549 = call float @dx.op.unary.f32(i32 24, float %208)  ; Sqrt(value)
  %550 = fadd fast float %547, -5.000000e-01
  %551 = fadd fast float %548, -5.000000e-01
  %552 = fadd fast float %549, -5.000000e-01
  %553 = fmul fast float %550, %435
  %554 = fmul fast float %551, %435
  %555 = fmul fast float %552, %435
  %556 = fadd fast float %553, 5.000000e-01
  %557 = fadd fast float %554, 5.000000e-01
  %558 = fadd fast float %555, 5.000000e-01
  %559 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %560 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %561 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %562 = fmul fast float %556, 2.000000e+00
  %563 = fsub fast float 1.000000e+00, %562
  %564 = fmul fast float %563, %559
  %565 = fadd fast float %564, %562
  %566 = fmul fast float %565, %559
  %567 = fmul fast float %557, 2.000000e+00
  %568 = fsub fast float 1.000000e+00, %567
  %569 = fmul fast float %568, %560
  %570 = fadd fast float %569, %567
  %571 = fmul fast float %570, %560
  %572 = fmul fast float %558, 2.000000e+00
  %573 = fsub fast float 1.000000e+00, %572
  %574 = fmul fast float %573, %561
  %575 = fadd fast float %574, %572
  %576 = fmul fast float %575, %561
  %577 = fmul fast float %566, %566
  %578 = fmul fast float %571, %571
  %579 = fmul fast float %576, %576
  br label %596

; <label>:580                                     ; preds = %543
  %581 = fmul fast float %200, %200
  %582 = fmul fast float %204, %204
  %583 = fmul fast float %208, %208
  %584 = fadd fast float %581, -1.000000e+00
  %585 = fadd fast float %582, -1.000000e+00
  %586 = fadd fast float %583, -1.000000e+00
  %587 = fmul fast float %435, %584
  %588 = fmul fast float %435, %585
  %589 = fmul fast float %435, %586
  %590 = fadd fast float %587, 1.000000e+00
  %591 = fadd fast float %588, 1.000000e+00
  %592 = fadd fast float %589, 1.000000e+00
  %593 = fmul fast float %590, %411
  %594 = fmul fast float %591, %412
  %595 = fmul fast float %592, %413
  br label %596

; <label>:596                                     ; preds = %580, %546, %440, %397
  %597 = phi float [ %542, %440 ], [ %422, %546 ], [ %422, %580 ], [ 0x3FA23C0BE0000000, %397 ]
  %598 = phi float [ %534, %440 ], [ %577, %546 ], [ %593, %580 ], [ 1.000000e+00, %397 ]
  %599 = phi float [ %535, %440 ], [ %578, %546 ], [ %594, %580 ], [ 1.000000e+00, %397 ]
  %600 = phi float [ %536, %440 ], [ %579, %546 ], [ %595, %580 ], [ 1.000000e+00, %397 ]
  %601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.i32 %601, 1
  %603 = and i32 %602, 1
  %604 = icmp ne i32 %603, 0
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = and i32 %606, 32
  %608 = icmp ne i32 %607, 0
  %609 = and i1 %604, %608
  %610 = select i1 %609, float 1.000000e+00, float %598
  %611 = select i1 %609, float 0x3FD3333340000000, float %599
  %612 = select i1 %609, float 0x3FD3333340000000, float %600
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = and i32 %614, 32
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %686, label %617

; <label>:617                                     ; preds = %596
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = add i32 %621, 0
  %623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %623, %dx.types.Handle %63, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %625 = extractvalue %dx.types.ResRet.f32 %624, 0
  %626 = extractvalue %dx.types.ResRet.f32 %624, 1
  %627 = extractvalue %dx.types.ResRet.f32 %624, 2
  %628 = extractvalue %dx.types.ResRet.f32 %624, 3
  %629 = and i32 %619, 255
  %630 = uitofp i32 %629 to float
  %631 = lshr i32 %619, 8
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = lshr i32 %619, 16
  %635 = and i32 %634, 255
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101000000000
  %638 = fmul fast float %625, %630
  %639 = fadd fast float %638, %633
  %640 = fmul fast float %639, 0x3F70101000000000
  %641 = fadd fast float %626, -5.000000e-01
  %642 = fadd fast float %628, -5.000000e-01
  %643 = fmul fast float %641, %637
  %644 = fmul fast float %642, %637
  %645 = fadd fast float %643, 5.000000e-01
  %646 = fadd fast float %644, 5.000000e-01
  %647 = fmul fast float %645, 2.000000e+00
  %648 = fadd fast float %647, -1.000000e+00
  %649 = fmul fast float %646, 2.000000e+00
  %650 = fadd fast float %649, -1.000000e+00
  %651 = fadd fast float %648, %650
  %652 = fmul fast float %651, 5.000000e-01
  %653 = fsub fast float %648, %650
  %654 = fmul fast float %653, 5.000000e-01
  %655 = call float @dx.op.unary.f32(i32 6, float %652)  ; FAbs(value)
  %656 = fsub fast float 1.000000e+00, %655
  %657 = call float @dx.op.unary.f32(i32 6, float %654)  ; FAbs(value)
  %658 = fsub fast float %656, %657
  %659 = call float @dx.op.dot3.f32(i32 55, float %652, float %654, float %658, float %652, float %654, float %658)  ; Dot3(ax,ay,az,bx,by,bz)
  %660 = call float @dx.op.unary.f32(i32 25, float %659)  ; Rsqrt(value)
  %661 = fmul fast float %652, %660
  %662 = fmul fast float %654, %660
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = and i32 %664, 67108864
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %682, label %667

; <label>:667                                     ; preds = %617
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = and i32 %669, 65535
  %671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %670)  ; LegacyF16ToF32(value)
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = and i32 %673, 65535
  %675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %674)  ; LegacyF16ToF32(value)
  %676 = lshr i32 %669, 16
  %677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %676)  ; LegacyF16ToF32(value)
  %678 = fsub fast float %640, %677
  %679 = fmul fast float %678, %671
  %680 = fadd fast float %679, %675
  %681 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  br label %682

; <label>:682                                     ; preds = %667, %617
  %683 = phi float [ %681, %667 ], [ %640, %617 ]
  %684 = call float @dx.op.dot2.f32(i32 54, float %661, float %662, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %685 = call float @dx.op.dot2.f32(i32 54, float %661, float %662, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %686

; <label>:686                                     ; preds = %682, %596
  %687 = phi float [ %683, %682 ], [ 0x3FD6666660000000, %596 ]
  %688 = phi float [ %684, %682 ], [ 0.000000e+00, %596 ]
  %689 = phi float [ %685, %682 ], [ 0.000000e+00, %596 ]
  %690 = phi float [ %627, %682 ], [ 1.000000e+00, %596 ]
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = lshr i32 %692, 22
  %694 = shl nuw nsw i32 %693, 5
  %695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %694)  ; LegacyF16ToF32(value)
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 64
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %732, label %700

; <label>:700                                     ; preds = %686
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = add i32 %702, 0
  %704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %703, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = and i32 %706, 131072
  %708 = icmp eq i32 %707, 0
  %709 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %63, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  %711 = extractvalue %dx.types.ResRet.f32 %709, 1
  %712 = extractvalue %dx.types.ResRet.f32 %709, 2
  %713 = fmul fast float %710, %189
  %714 = fmul fast float %711, %192
  %715 = fmul fast float %712, %195
  br i1 %708, label %722, label %716

; <label>:716                                     ; preds = %700
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 0
  %719 = fmul fast float %718, %713
  %720 = fmul fast float %718, %714
  %721 = fmul fast float %718, %715
  br label %722

; <label>:722                                     ; preds = %716, %700
  %723 = phi float [ %719, %716 ], [ %713, %700 ]
  %724 = phi float [ %720, %716 ], [ %714, %700 ]
  %725 = phi float [ %721, %716 ], [ %715, %700 ]
  %726 = fmul fast float %723, %695
  %727 = select i1 %184, float %726, float %723
  %728 = call float @dx.op.dot3.f32(i32 55, float %727, float %724, float %725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %729 = select i1 %184, float 0.000000e+00, float %723
  %730 = select i1 %184, float %728, float %724
  %731 = select i1 %184, float 0.000000e+00, float %725
  br label %732

; <label>:732                                     ; preds = %722, %686
  %733 = phi float [ %729, %722 ], [ 0.000000e+00, %686 ]
  %734 = phi float [ %730, %722 ], [ 0.000000e+00, %686 ]
  %735 = phi float [ %731, %722 ], [ 0.000000e+00, %686 ]
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 1024
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %768, label %740

; <label>:740                                     ; preds = %732
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 255
  %744 = uitofp i32 %743 to float
  %745 = fmul fast float %744, 0x3F70101020000000
  %746 = lshr i32 %742, 8
  %747 = and i32 %746, 255
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F70101020000000
  %750 = lshr i32 %742, 16
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101020000000
  %754 = fmul fast float %745, %745
  %755 = fmul fast float %749, %749
  %756 = fmul fast float %753, %753
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = add i32 %758, 0
  %760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %761 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %760, %dx.types.Handle %64, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = extractvalue %dx.types.ResRet.f32 %761, 1
  %764 = extractvalue %dx.types.ResRet.f32 %761, 2
  %765 = fmul fast float %754, %762
  %766 = fmul fast float %755, %763
  %767 = fmul fast float %756, %764
  br label %768

; <label>:768                                     ; preds = %740, %732
  %769 = phi float [ %765, %740 ], [ 0.000000e+00, %732 ]
  %770 = phi float [ %766, %740 ], [ 0.000000e+00, %732 ]
  %771 = phi float [ %767, %740 ], [ 0.000000e+00, %732 ]
  %772 = fcmp fast ogt float %769, 0.000000e+00
  %773 = fcmp fast ogt float %770, 0.000000e+00
  %774 = fcmp fast ogt float %771, 0.000000e+00
  %775 = call float @dx.op.unary.f32(i32 23, float %769)  ; Log(value)
  %776 = call float @dx.op.unary.f32(i32 23, float %770)  ; Log(value)
  %777 = call float @dx.op.unary.f32(i32 23, float %771)  ; Log(value)
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = lshr i32 %779, 7
  %781 = and i32 %780, 32752
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = fmul fast float %775, 0xBFE62E4300000000
  %784 = fmul fast float %783, %782
  %785 = fmul fast float %776, 0xBFE62E4300000000
  %786 = fmul fast float %785, %782
  %787 = fmul fast float %777, 0xBFE62E4300000000
  %788 = fmul fast float %787, %782
  %789 = select i1 %772, float %784, float 1.270000e+02
  %790 = select i1 %773, float %786, float 1.270000e+02
  %791 = select i1 %774, float %788, float 1.270000e+02
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 10240
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %815, label %796

; <label>:796                                     ; preds = %768
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 2048
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %815, label %801

; <label>:801                                     ; preds = %796
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = add i32 %803, 0
  %805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %804, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %806 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %805, %dx.types.Handle %64, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 3
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = shl i32 %809, 4
  %811 = and i32 %810, 32752
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = fmul fast float %812, %807
  %814 = call float @dx.op.binary.f32(i32 35, float %813, float 0x3F70101020000000)  ; FMax(a,b)
  br label %815

; <label>:815                                     ; preds = %801, %796, %768
  %816 = phi float [ %814, %801 ], [ 0x3F70101020000000, %796 ], [ 0x3F70101020000000, %768 ]
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = and i32 %818, 255
  %820 = uitofp i32 %819 to float
  %821 = lshr i32 %818, 8
  %822 = and i32 %821, 255
  %823 = uitofp i32 %822 to float
  %824 = call float @dx.op.dot3.f32(i32 55, float %610, float %611, float %612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %825 = fmul fast float %823, %824
  %826 = fadd fast float %825, %820
  %827 = fmul fast float %826, 0x3F70101020000000
  %828 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  br label %829

; <label>:829                                     ; preds = %815, %234
  %830 = phi float [ 0.000000e+00, %234 ], [ %688, %815 ]
  %831 = phi float [ 0.000000e+00, %234 ], [ %689, %815 ]
  %832 = phi float [ 0.000000e+00, %234 ], [ %610, %815 ]
  %833 = phi float [ 0.000000e+00, %234 ], [ %611, %815 ]
  %834 = phi float [ 0.000000e+00, %234 ], [ %612, %815 ]
  %835 = phi float [ 0.000000e+00, %234 ], [ %733, %815 ]
  %836 = phi float [ 0.000000e+00, %234 ], [ %734, %815 ]
  %837 = phi float [ 0.000000e+00, %234 ], [ %735, %815 ]
  %838 = phi float [ 0.000000e+00, %234 ], [ %789, %815 ]
  %839 = phi float [ 0.000000e+00, %234 ], [ %790, %815 ]
  %840 = phi float [ 0.000000e+00, %234 ], [ %791, %815 ]
  %841 = phi float [ 0.000000e+00, %234 ], [ %597, %815 ]
  %842 = phi float [ 0.000000e+00, %234 ], [ %398, %815 ]
  %843 = phi float [ 0.000000e+00, %234 ], [ %687, %815 ]
  %844 = phi float [ 0.000000e+00, %234 ], [ %690, %815 ]
  %845 = phi float [ 0.000000e+00, %234 ], [ %816, %815 ]
  %846 = phi float [ 0.000000e+00, %234 ], [ %828, %815 ]
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 0
  %849 = call float @dx.op.dot2.f32(i32 54, float %830, float %831, float %830, float %831)  ; Dot2(ax,ay,bx,by)
  %850 = fmul fast float %849, 0x3FE3333340000000
  %851 = fsub fast float 1.000000e+00, %850
  %852 = call float @dx.op.dot3.f32(i32 55, float %830, float %831, float %851, float %830, float %831, float %851)  ; Dot3(ax,ay,az,bx,by,bz)
  %853 = call float @dx.op.unary.f32(i32 25, float %852)  ; Rsqrt(value)
  %854 = fmul fast float %853, %830
  %855 = fmul fast float %853, %831
  %856 = fmul fast float %851, %853
  %857 = fmul fast float %856, %70
  %858 = fmul fast float %856, %71
  %859 = fmul fast float %856, %72
  %860 = fmul fast float %854, %46
  %861 = fmul fast float %854, %47
  %862 = fmul fast float %854, %48
  %863 = fmul fast float %75, %49
  %864 = fmul fast float %863, %855
  %865 = fmul fast float %78, %49
  %866 = fmul fast float %865, %855
  %867 = fmul fast float %81, %49
  %868 = fmul fast float %867, %855
  %869 = fadd fast float %864, %860
  %870 = fmul fast float %869, %69
  %871 = fadd fast float %870, %857
  %872 = fadd fast float %866, %861
  %873 = fmul fast float %872, %69
  %874 = fadd fast float %873, %858
  %875 = fadd fast float %868, %862
  %876 = fmul fast float %875, %69
  %877 = fadd fast float %876, %859
  %878 = call float @dx.op.dot3.f32(i32 55, float %871, float %874, float %877, float %871, float %874, float %877)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = call float @dx.op.unary.f32(i32 25, float %878)  ; Rsqrt(value)
  %880 = fmul fast float %871, %879
  %881 = fmul fast float %874, %879
  %882 = fmul fast float %877, %879
  %883 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %884 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %885 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %886 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %887 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %888 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %889 = fadd fast float %883, %123
  %890 = fadd fast float %884, %124
  %891 = fadd fast float %885, %125
  %892 = fadd fast float %886, %123
  %893 = fadd fast float %887, %124
  %894 = fadd fast float %888, %125
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %901 = extractvalue %dx.types.CBufRet.f32 %899, 3
  %902 = fmul fast float %896, %67
  %903 = fmul fast float %902, %900
  %904 = fmul fast float %897, %68
  %905 = fmul fast float %904, %901
  %906 = fptoui float %903 to i32
  %907 = fptoui float %905 to i32
  %908 = fadd fast float %896, -1.000000e+00
  %909 = fadd fast float %897, -1.000000e+00
  %910 = fptoui float %908 to i32
  %911 = fptoui float %909 to i32
  %912 = call i32 @dx.op.binary.i32(i32 40, i32 %906, i32 %910)  ; UMin(a,b)
  %913 = call i32 @dx.op.binary.i32(i32 40, i32 %907, i32 %911)  ; UMin(a,b)
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 2
  %916 = extractvalue %dx.types.CBufRet.f32 %914, 3
  %917 = fmul fast float %915, %58
  %918 = fsub fast float %917, %916
  %919 = fadd fast float %898, -1.000000e+00
  %920 = call float @dx.op.binary.f32(i32 36, float %918, float %919)  ; FMin(a,b)
  %921 = fptoui float %920 to i32
  %922 = fptoui float %896 to i32
  %923 = fptoui float %897 to i32
  %924 = mul i32 %921, %923
  %925 = add i32 %924, %913
  %926 = mul i32 %925, %922
  %927 = add i32 %926, %912
  %928 = shl i32 %927, 2
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = and i32 %930, 1023
  %932 = lshr i32 %930, 10
  %933 = icmp eq i32 %931, 0
  br i1 %933, label %1387, label %934

; <label>:934                                     ; preds = %829
  %935 = and i32 %930, 1023
  br label %936

; <label>:936                                     ; preds = %1065, %934
  %937 = phi i32 [ %1015, %1065 ], [ 0, %934 ]
  %938 = phi float [ %1066, %1065 ], [ 0.000000e+00, %934 ]
  %939 = phi float [ %1067, %1065 ], [ %848, %934 ]
  %940 = phi float [ %1068, %1065 ], [ %846, %934 ]
  %941 = phi float [ %1069, %1065 ], [ %838, %934 ]
  %942 = phi float [ %1070, %1065 ], [ %839, %934 ]
  %943 = phi float [ %1071, %1065 ], [ %840, %934 ]
  %944 = phi float [ %1072, %1065 ], [ 0.000000e+00, %934 ]
  %945 = phi float [ %1073, %1065 ], [ 0.000000e+00, %934 ]
  %946 = phi float [ %1074, %1065 ], [ %835, %934 ]
  %947 = phi float [ %1075, %1065 ], [ %836, %934 ]
  %948 = phi float [ %1076, %1065 ], [ %837, %934 ]
  %949 = phi float [ %1077, %1065 ], [ %880, %934 ]
  %950 = phi float [ %1078, %1065 ], [ %881, %934 ]
  %951 = phi float [ %1079, %1065 ], [ %882, %934 ]
  %952 = phi float [ %1080, %1065 ], [ %844, %934 ]
  %953 = phi float [ %1081, %1065 ], [ %843, %934 ]
  %954 = phi float [ %1082, %1065 ], [ 0.000000e+00, %934 ]
  %955 = phi float [ %1083, %1065 ], [ %841, %934 ]
  %956 = phi float [ %1084, %1065 ], [ %832, %934 ]
  %957 = phi float [ %1085, %1065 ], [ %833, %934 ]
  %958 = phi float [ %1086, %1065 ], [ %834, %934 ]
  %959 = add nuw nsw i32 %937, %932
  %960 = shl i32 %959, 2
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = shl i32 %962, 8
  %964 = or i32 %963, 48
  %965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  %967 = extractvalue %dx.types.ResRet.f32 %965, 1
  %968 = extractvalue %dx.types.ResRet.f32 %965, 2
  %969 = extractvalue %dx.types.ResRet.f32 %965, 3
  %970 = or i32 %963, 64
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = extractvalue %dx.types.ResRet.i32 %971, 1
  %974 = or i32 %963, 80
  %975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.f32 %975, 2
  %977 = extractvalue %dx.types.ResRet.f32 %975, 3
  %978 = or i32 %963, 96
  %979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.f32 %979, 0
  %981 = extractvalue %dx.types.ResRet.f32 %979, 1
  %982 = extractvalue %dx.types.ResRet.f32 %979, 2
  %983 = extractvalue %dx.types.ResRet.f32 %979, 3
  %984 = or i32 %963, 112
  %985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 2
  %987 = or i32 %963, 128
  %988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = extractvalue %dx.types.ResRet.f32 %988, 1
  %991 = extractvalue %dx.types.ResRet.f32 %988, 2
  %992 = extractvalue %dx.types.ResRet.f32 %988, 3
  %993 = or i32 %963, 144
  %994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = extractvalue %dx.types.ResRet.f32 %994, 1
  %997 = extractvalue %dx.types.ResRet.f32 %994, 2
  %998 = extractvalue %dx.types.ResRet.f32 %994, 3
  %999 = or i32 %963, 160
  %1000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1000, 2
  %1004 = extractvalue %dx.types.ResRet.f32 %1000, 3
  %1005 = or i32 %963, 192
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = or i32 %963, 208
  %1009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = or i32 %963, 248
  %1012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.ResRet.f32 %1012, 1
  %1015 = add nuw nsw i32 %937, 1
  %1016 = bitcast float %969 to i32
  %1017 = and i32 %1016, 512
  %1018 = icmp eq i32 %1017, 0
  %1019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.ResRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.ResRet.f32 %1019, 2
  %1023 = extractvalue %dx.types.ResRet.f32 %1019, 3
  %1024 = call float @dx.op.dot4.f32(i32 56, float %1020, float %1021, float %1022, float %1023, float %123, float %124, float %125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1025 = or i32 %963, 16
  %1026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.ResRet.f32 %1026, 1
  %1029 = extractvalue %dx.types.ResRet.f32 %1026, 2
  %1030 = extractvalue %dx.types.ResRet.f32 %1026, 3
  %1031 = call float @dx.op.dot4.f32(i32 56, float %1027, float %1028, float %1029, float %1030, float %123, float %124, float %125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1032 = or i32 %963, 32
  %1033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = extractvalue %dx.types.ResRet.f32 %1033, 3
  %1038 = call float @dx.op.dot4.f32(i32 56, float %1034, float %1035, float %1036, float %1037, float %123, float %124, float %125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1039 = call float @dx.op.unary.f32(i32 27, float %1024)  ; Round_ni(value)
  %1040 = call float @dx.op.unary.f32(i32 6, float %1039)  ; FAbs(value)
  %1041 = call float @dx.op.unary.f32(i32 27, float %1031)  ; Round_ni(value)
  %1042 = call float @dx.op.unary.f32(i32 6, float %1041)  ; FAbs(value)
  %1043 = call float @dx.op.unary.f32(i32 6, float %1038)  ; FAbs(value)
  %1044 = call float @dx.op.unary.f32(i32 27, float %1043)  ; Round_ni(value)
  %1045 = fadd fast float %1042, %1040
  %1046 = fadd fast float %1045, %1044
  %1047 = fcmp fast oeq float %1046, 0.000000e+00
  %1048 = call float @dx.op.dot4.f32(i32 56, float %1020, float %1021, float %1022, float %1023, float %889, float %890, float %891, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1049 = call float @dx.op.dot4.f32(i32 56, float %1027, float %1028, float %1029, float %1030, float %889, float %890, float %891, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1050 = call float @dx.op.dot4.f32(i32 56, float %1020, float %1021, float %1022, float %1023, float %892, float %893, float %894, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1051 = call float @dx.op.dot4.f32(i32 56, float %1027, float %1028, float %1029, float %1030, float %892, float %893, float %894, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1052 = fsub fast float %1048, %1024
  %1053 = fsub fast float %1050, %1024
  %1054 = fsub fast float %1049, %1031
  %1055 = fsub fast float %1051, %1031
  %1056 = call float @dx.op.dot3.f32(i32 55, float %966, float %967, float %968, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 2
  %1059 = fadd fast float %1058, %1056
  %1060 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1057, 0
  %1062 = fcmp fast ogt float %1060, %1061
  %1063 = and i1 %1047, %1062
  %1064 = and i1 %1018, %1063
  br i1 %1064, label %1088, label %1065

; <label>:1065                                    ; preds = %1373, %1169, %1088, %936
  %1066 = phi float [ %938, %1088 ], [ %1172, %1169 ], [ %1172, %1373 ], [ %938, %936 ]
  %1067 = phi float [ %939, %1088 ], [ %939, %1169 ], [ %1349, %1373 ], [ %939, %936 ]
  %1068 = phi float [ %940, %1088 ], [ %940, %1169 ], [ %1347, %1373 ], [ %940, %936 ]
  %1069 = phi float [ %941, %1088 ], [ %941, %1169 ], [ %1325, %1373 ], [ %941, %936 ]
  %1070 = phi float [ %942, %1088 ], [ %942, %1169 ], [ %1326, %1373 ], [ %942, %936 ]
  %1071 = phi float [ %943, %1088 ], [ %943, %1169 ], [ %1327, %1373 ], [ %943, %936 ]
  %1072 = phi float [ %944, %1088 ], [ %944, %1169 ], [ %1296, %1373 ], [ %944, %936 ]
  %1073 = phi float [ %945, %1088 ], [ %945, %1169 ], [ %1294, %1373 ], [ %945, %936 ]
  %1074 = phi float [ %946, %1088 ], [ %946, %1169 ], [ %1383, %1373 ], [ %946, %936 ]
  %1075 = phi float [ %947, %1088 ], [ %947, %1169 ], [ %1384, %1373 ], [ %947, %936 ]
  %1076 = phi float [ %948, %1088 ], [ %948, %1169 ], [ %1385, %1373 ], [ %948, %936 ]
  %1077 = phi float [ %949, %1088 ], [ %949, %1169 ], [ %1275, %1373 ], [ %949, %936 ]
  %1078 = phi float [ %950, %1088 ], [ %950, %1169 ], [ %1276, %1373 ], [ %950, %936 ]
  %1079 = phi float [ %951, %1088 ], [ %951, %1169 ], [ %1277, %1373 ], [ %951, %936 ]
  %1080 = phi float [ %952, %1088 ], [ %952, %1169 ], [ %1305, %1373 ], [ %952, %936 ]
  %1081 = phi float [ %953, %1088 ], [ %953, %1169 ], [ %1302, %1373 ], [ %953, %936 ]
  %1082 = phi float [ %954, %1088 ], [ %954, %1169 ], [ %1299, %1373 ], [ %954, %936 ]
  %1083 = phi float [ %955, %1088 ], [ %955, %1169 ], [ %1292, %1373 ], [ %955, %936 ]
  %1084 = phi float [ %956, %1088 ], [ %956, %1169 ], [ %1287, %1373 ], [ %956, %936 ]
  %1085 = phi float [ %957, %1088 ], [ %957, %1169 ], [ %1288, %1373 ], [ %957, %936 ]
  %1086 = phi float [ %958, %1088 ], [ %958, %1169 ], [ %1289, %1373 ], [ %958, %936 ]
  %1087 = icmp eq i32 %1015, %935
  br i1 %1087, label %1386, label %936

; <label>:1088                                    ; preds = %936
  %1089 = extractvalue %dx.types.ResRet.f32 %985, 3
  %1090 = extractvalue %dx.types.ResRet.f32 %985, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %985, 0
  %1092 = extractvalue %dx.types.ResRet.f32 %975, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %975, 0
  %1094 = extractvalue %dx.types.ResRet.i32 %971, 3
  %1095 = extractvalue %dx.types.ResRet.i32 %971, 2
  %1096 = add i32 %1094, 0
  %1097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1096, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1099 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1097, %dx.types.Handle %1098, float %1024, float %1031, float undef, float undef, i32 0, i32 0, i32 undef, float %1052, float %1054, float undef, float %1053, float %1055, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = fmul fast float %1100, %1093
  %1102 = fadd fast float %1101, %1092
  %1103 = call float @dx.op.unary.f32(i32 7, float %1102)  ; Saturate(value)
  %1104 = fmul fast float %1024, %980
  %1105 = call float @dx.op.tertiary.f32(i32 46, float %981, float %1031, float %1104)  ; FMad(a,b,c)
  %1106 = fadd fast float %1105, %1091
  %1107 = fmul fast float %1024, %982
  %1108 = call float @dx.op.tertiary.f32(i32 46, float %983, float %1031, float %1107)  ; FMad(a,b,c)
  %1109 = fadd fast float %1108, %1090
  %1110 = fmul fast float %1052, %980
  %1111 = call float @dx.op.tertiary.f32(i32 46, float %981, float %1054, float %1110)  ; FMad(a,b,c)
  %1112 = fmul fast float %1052, %982
  %1113 = call float @dx.op.tertiary.f32(i32 46, float %983, float %1054, float %1112)  ; FMad(a,b,c)
  %1114 = fmul fast float %1053, %980
  %1115 = call float @dx.op.tertiary.f32(i32 46, float %981, float %1055, float %1114)  ; FMad(a,b,c)
  %1116 = fmul fast float %1053, %982
  %1117 = call float @dx.op.tertiary.f32(i32 46, float %983, float %1055, float %1116)  ; FMad(a,b,c)
  %1118 = add i32 %1095, 0
  %1119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1118, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1119, %dx.types.Handle %1098, float %1106, float %1109, float undef, float undef, i32 0, i32 0, i32 undef, float %1111, float %1113, float undef, float %1115, float %1117, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = and i32 %1016, 1024
  %1123 = icmp ne i32 %1122, 0
  %1124 = fcmp fast ogt float %1121, 0x3FE0101020000000
  %1125 = uitofp i1 %1124 to float
  %1126 = select i1 %1123, float %1125, float %1121
  %1127 = and i32 %1016, 8192
  %1128 = icmp ne i32 %1127, 0
  %1129 = select i1 %1128, float %1089, float 1.000000e+00
  %1130 = fmul fast float %1024, 2.000000e+00
  %1131 = fadd fast float %1130, -1.000000e+00
  %1132 = call float @dx.op.unary.f32(i32 6, float %1131)  ; FAbs(value)
  %1133 = fmul fast float %1132, %1013
  %1134 = fsub fast float %1133, %1013
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = fmul fast float %1031, 2.000000e+00
  %1137 = fadd fast float %1136, -1.000000e+00
  %1138 = call float @dx.op.unary.f32(i32 6, float %1137)  ; FAbs(value)
  %1139 = fmul fast float %1138, %1014
  %1140 = fsub fast float %1139, %1014
  %1141 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  %1142 = fmul fast float %1043, %976
  %1143 = fsub fast float %1142, %976
  %1144 = call float @dx.op.unary.f32(i32 7, float %1143)  ; Saturate(value)
  %1145 = fmul fast float %1103, %1129
  %1146 = fmul fast float %1145, %1100
  %1147 = fmul fast float %1146, %1135
  %1148 = fmul fast float %1147, %1126
  %1149 = fmul fast float %1148, %1141
  %1150 = fmul fast float %1149, %1144
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 1
  %1153 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1154 = fsub fast float %1060, %1153
  %1155 = fmul fast float %1154, %1152
  %1156 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  %1157 = fmul fast float %1150, %977
  %1158 = fadd fast float %1150, %977
  %1159 = fmul fast float %1158, %986
  %1160 = fsub fast float %1159, %986
  %1161 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1162 = and i32 %1016, 128
  %1163 = icmp ne i32 %1162, 0
  %1164 = select i1 %1163, float %1161, float %1157
  %1165 = fmul fast float %1164, %1156
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 0
  %1168 = fcmp fast ugt float %1165, %1167
  br i1 %1168, label %1169, label %1065

; <label>:1169                                    ; preds = %1088
  %1170 = select i1 %1128, float %1165, float 0.000000e+00
  %1171 = fadd fast float %1170, %938
  %1172 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  br i1 %1128, label %1065, label %1173

; <label>:1173                                    ; preds = %1169
  %1174 = and i32 %1016, 4
  %1175 = and i32 %1016, 8
  %1176 = add i32 %972, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1176, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1179 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1177, %dx.types.Handle %1178, float %1106, float %1109, float undef, float undef, i32 0, i32 0, i32 undef, float %1111, float %1113, float undef, float %1115, float %1117, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1179, 2
  %1183 = extractvalue %dx.types.ResRet.f32 %1179, 3
  %1184 = bitcast float %998 to i32
  %1185 = and i32 %1184, 255
  %1186 = uitofp i32 %1185 to float
  %1187 = lshr i32 %1184, 8
  %1188 = and i32 %1187, 255
  %1189 = uitofp i32 %1188 to float
  %1190 = fmul fast float %1183, %1186
  %1191 = fadd fast float %1190, %1189
  %1192 = fmul fast float %1191, 0x3F70101000000000
  %1193 = add i32 %973, 0
  %1194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1193, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1195 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1194, %dx.types.Handle %1178, float %1106, float %1109, float undef, float undef, i32 0, i32 0, i32 undef, float %1111, float %1113, float undef, float %1115, float %1117, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = extractvalue %dx.types.ResRet.f32 %1195, 3
  %1200 = bitcast float %992 to i32
  %1201 = and i32 %1200, 255
  %1202 = uitofp i32 %1201 to float
  %1203 = lshr i32 %1200, 8
  %1204 = and i32 %1203, 255
  %1205 = uitofp i32 %1204 to float
  %1206 = lshr i32 %1200, 16
  %1207 = and i32 %1206, 255
  %1208 = uitofp i32 %1207 to float
  %1209 = fmul fast float %1208, 0x3F70101000000000
  %1210 = fmul fast float %1196, %1202
  %1211 = fadd fast float %1210, %1205
  %1212 = fmul fast float %1211, 0x3F70101000000000
  %1213 = fadd fast float %1197, -5.000000e-01
  %1214 = fadd fast float %1199, -5.000000e-01
  %1215 = fmul fast float %1213, %1209
  %1216 = fmul fast float %1214, %1209
  %1217 = fadd fast float %1215, 5.000000e-01
  %1218 = fadd fast float %1216, 5.000000e-01
  %1219 = fmul fast float %1180, %1001
  %1220 = fmul fast float %1181, %1002
  %1221 = fmul fast float %1182, %1003
  %1222 = fmul fast float %1217, 2.000000e+00
  %1223 = fadd fast float %1222, -1.000000e+00
  %1224 = fmul fast float %1218, 2.000000e+00
  %1225 = fadd fast float %1224, -1.000000e+00
  %1226 = fadd fast float %1223, %1225
  %1227 = fmul fast float %1226, 5.000000e-01
  %1228 = fsub fast float %1223, %1225
  %1229 = fmul fast float %1228, 5.000000e-01
  %1230 = call float @dx.op.unary.f32(i32 6, float %1227)  ; FAbs(value)
  %1231 = fsub fast float 1.000000e+00, %1230
  %1232 = call float @dx.op.unary.f32(i32 6, float %1229)  ; FAbs(value)
  %1233 = fsub fast float %1231, %1232
  %1234 = call float @dx.op.dot3.f32(i32 55, float %1227, float %1229, float %1233, float %1227, float %1229, float %1233)  ; Dot3(ax,ay,az,bx,by,bz)
  %1235 = call float @dx.op.unary.f32(i32 25, float %1234)  ; Rsqrt(value)
  %1236 = fmul fast float %1227, %1235
  %1237 = fmul fast float %1229, %1235
  %1238 = fmul fast float %1235, %1233
  %1239 = fmul fast float %1238, %966
  %1240 = fmul fast float %1238, %967
  %1241 = fmul fast float %1238, %968
  %1242 = fmul fast float %1236, %989
  %1243 = fmul fast float %1236, %990
  %1244 = fmul fast float %1236, %991
  %1245 = fadd fast float %1242, %1239
  %1246 = fadd fast float %1243, %1240
  %1247 = fadd fast float %1244, %1241
  %1248 = fmul fast float %1237, %995
  %1249 = fmul fast float %1237, %996
  %1250 = fmul fast float %1237, %997
  %1251 = fadd fast float %1245, %1248
  %1252 = fadd fast float %1246, %1249
  %1253 = fadd fast float %1247, %1250
  %1254 = call float @dx.op.dot3.f32(i32 55, float %1251, float %1252, float %1253, float %1251, float %1252, float %1253)  ; Dot3(ax,ay,az,bx,by,bz)
  %1255 = call float @dx.op.unary.f32(i32 25, float %1254)  ; Rsqrt(value)
  %1256 = fmul fast float %1251, %1255
  %1257 = fmul fast float %1252, %1255
  %1258 = fmul fast float %1253, %1255
  %1259 = icmp ne i32 %1175, 0
  %1260 = select i1 %1259, float 1.000000e+00, float 0.000000e+00
  %1261 = fmul fast float %1165, %1260
  %1262 = and i32 %1016, 1
  %1263 = icmp eq i32 %1262, 0
  br i1 %1263, label %1264, label %1268

; <label>:1264                                    ; preds = %1173
  %1265 = fsub fast float %1256, %949
  %1266 = fsub fast float %1257, %950
  %1267 = fsub fast float %1258, %951
  br label %1268

; <label>:1268                                    ; preds = %1264, %1173
  %1269 = phi float [ %1265, %1264 ], [ %1256, %1173 ]
  %1270 = phi float [ %1266, %1264 ], [ %1257, %1173 ]
  %1271 = phi float [ %1267, %1264 ], [ %1258, %1173 ]
  %1272 = fmul float %1271, %1261
  %1273 = fmul float %1270, %1261
  %1274 = fmul float %1269, %1261
  %1275 = fadd fast float %1274, %949
  %1276 = fadd fast float %1273, %950
  %1277 = fadd fast float %1272, %951
  %1278 = icmp ne i32 %1174, 0
  %1279 = select i1 %1278, float 1.000000e+00, float 0.000000e+00
  %1280 = fmul fast float %1165, %1279
  %1281 = fsub fast float %1219, %956
  %1282 = fsub fast float %1220, %957
  %1283 = fsub fast float %1221, %958
  %1284 = fmul fast float %1281, %1280
  %1285 = fmul fast float %1282, %1280
  %1286 = fmul fast float %1283, %1280
  %1287 = fadd fast float %1284, %956
  %1288 = fadd fast float %1285, %957
  %1289 = fadd fast float %1286, %958
  %1290 = fsub fast float %1192, %955
  %1291 = fmul fast float %1290, %1280
  %1292 = fadd fast float %1291, %955
  %1293 = fmul fast float %1280, %945
  %1294 = fsub fast float %945, %1293
  %1295 = fmul fast float %1280, %944
  %1296 = fsub fast float %944, %1295
  %1297 = bitcast float %1010 to i32
  %1298 = fadd fast float %1165, %954
  %1299 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1300 = fsub fast float %1212, %953
  %1301 = fmul fast float %1300, %1261
  %1302 = fadd fast float %1301, %953
  %1303 = fsub fast float %1198, %952
  %1304 = fmul fast float %1303, %1261
  %1305 = fadd fast float %1304, %952
  br i1 %1263, label %1314, label %1306

; <label>:1306                                    ; preds = %1268
  %1307 = and i32 %1016, 32768
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1324, label %1309

; <label>:1309                                    ; preds = %1306
  %1310 = fmul fast float %1261, 1.270000e+02
  %1311 = fadd fast float %1310, %941
  %1312 = fadd fast float %1310, %942
  %1313 = fadd fast float %1310, %943
  br label %1324

; <label>:1314                                    ; preds = %1268
  %1315 = fsub fast float 1.270000e+02, %941
  %1316 = fsub fast float 1.270000e+02, %942
  %1317 = fsub fast float 1.270000e+02, %943
  %1318 = fmul fast float %1261, %1315
  %1319 = fmul fast float %1261, %1316
  %1320 = fmul fast float %1261, %1317
  %1321 = fadd fast float %1318, %941
  %1322 = fadd fast float %1319, %942
  %1323 = fadd fast float %1320, %943
  br label %1324

; <label>:1324                                    ; preds = %1314, %1309, %1306
  %1325 = phi float [ %1311, %1309 ], [ %941, %1306 ], [ %1321, %1314 ]
  %1326 = phi float [ %1312, %1309 ], [ %942, %1306 ], [ %1322, %1314 ]
  %1327 = phi float [ %1313, %1309 ], [ %943, %1306 ], [ %1323, %1314 ]
  %1328 = call float @dx.op.dot3.f32(i32 55, float %1219, float %1220, float %1221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 0
  %1331 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1332 = fmul fast float %1331, %1328
  %1333 = fadd fast float %1332, %1330
  %1334 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1335 = bitcast float %1004 to i32
  %1336 = and i32 %1335, 65535
  %1337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1336)  ; LegacyF16ToF32(value)
  %1338 = lshr i32 %1335, 16
  %1339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1338)  ; LegacyF16ToF32(value)
  %1340 = fcmp fast oge float %1337, 0.000000e+00
  %1341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1341, 0
  %1343 = select i1 %1340, float %1337, float %1342
  %1344 = fadd fast float %1343, %1339
  %1345 = fsub fast float %1334, %940
  %1346 = fmul fast float %1345, %1165
  %1347 = fadd fast float %1346, %940
  %1348 = fmul fast float %1344, %1165
  %1349 = call float @dx.op.binary.f32(i32 35, float %939, float %1348)  ; FMax(a,b)
  %1350 = and i32 %1016, 16
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1373, label %1352

; <label>:1352                                    ; preds = %1324
  %1353 = add i32 %1007, 0
  %1354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1353, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1355 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1354, %dx.types.Handle %1178, float %1106, float %1109, float undef, float undef, i32 0, i32 0, i32 undef, float %1111, float %1113, float undef, float %1115, float %1117, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = extractvalue %dx.types.ResRet.f32 %1355, 1
  %1358 = extractvalue %dx.types.ResRet.f32 %1355, 2
  %1359 = and i32 %1297, 65535
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = fmul fast float %1356, %1001
  %1362 = fmul fast float %1357, %1002
  %1363 = fmul fast float %1358, %1003
  %1364 = and i32 %1016, 16384
  %1365 = icmp ne i32 %1364, 0
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 0
  %1368 = select i1 %1365, float %1367, float 1.000000e+00
  %1369 = fmul fast float %1368, %1360
  %1370 = fmul fast float %1361, %1369
  %1371 = fmul fast float %1362, %1369
  %1372 = fmul fast float %1363, %1369
  br label %1373

; <label>:1373                                    ; preds = %1352, %1324
  %1374 = phi float [ %1370, %1352 ], [ 0.000000e+00, %1324 ]
  %1375 = phi float [ %1371, %1352 ], [ 0.000000e+00, %1324 ]
  %1376 = phi float [ %1372, %1352 ], [ 0.000000e+00, %1324 ]
  %1377 = fsub fast float %1374, %946
  %1378 = fsub fast float %1375, %947
  %1379 = fsub fast float %1376, %948
  %1380 = fmul fast float %1377, %1165
  %1381 = fmul fast float %1378, %1165
  %1382 = fmul fast float %1379, %1165
  %1383 = fadd fast float %1380, %946
  %1384 = fadd fast float %1381, %947
  %1385 = fadd fast float %1382, %948
  br label %1065

; <label>:1386                                    ; preds = %1065
  br label %1387

; <label>:1387                                    ; preds = %1386, %829
  %1388 = phi float [ 0.000000e+00, %829 ], [ %1066, %1386 ]
  %1389 = phi float [ %848, %829 ], [ %1067, %1386 ]
  %1390 = phi float [ %846, %829 ], [ %1068, %1386 ]
  %1391 = phi float [ %838, %829 ], [ %1069, %1386 ]
  %1392 = phi float [ %839, %829 ], [ %1070, %1386 ]
  %1393 = phi float [ %840, %829 ], [ %1071, %1386 ]
  %1394 = phi float [ 0.000000e+00, %829 ], [ %1072, %1386 ]
  %1395 = phi float [ 0.000000e+00, %829 ], [ %1073, %1386 ]
  %1396 = phi float [ %835, %829 ], [ %1074, %1386 ]
  %1397 = phi float [ %836, %829 ], [ %1075, %1386 ]
  %1398 = phi float [ %837, %829 ], [ %1076, %1386 ]
  %1399 = phi float [ %880, %829 ], [ %1077, %1386 ]
  %1400 = phi float [ %881, %829 ], [ %1078, %1386 ]
  %1401 = phi float [ %882, %829 ], [ %1079, %1386 ]
  %1402 = phi float [ %844, %829 ], [ %1080, %1386 ]
  %1403 = phi float [ %843, %829 ], [ %1081, %1386 ]
  %1404 = phi float [ 0.000000e+00, %829 ], [ %1082, %1386 ]
  %1405 = phi float [ %841, %829 ], [ %1083, %1386 ]
  %1406 = phi float [ %832, %829 ], [ %1084, %1386 ]
  %1407 = phi float [ %833, %829 ], [ %1085, %1386 ]
  %1408 = phi float [ %834, %829 ], [ %1086, %1386 ]
  %1409 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1399, float %1400, float %1401)  ; Dot3(ax,ay,az,bx,by,bz)
  %1410 = call float @dx.op.unary.f32(i32 25, float %1409)  ; Rsqrt(value)
  %1411 = fmul fast float %1410, %1399
  %1412 = fmul fast float %1410, %1400
  %1413 = fmul fast float %1410, %1401
  %1414 = fadd fast float %1404, %842
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1416 = call float @dx.op.dot3.f32(i32 55, float %1411, float %1412, float %1413, float %1411, float %1412, float %1413)  ; Dot3(ax,ay,az,bx,by,bz)
  %1417 = call float @dx.op.unary.f32(i32 25, float %1416)  ; Rsqrt(value)
  %1418 = fmul fast float %1417, %1411
  %1419 = fmul fast float %1417, %1412
  %1420 = fmul fast float %1417, %1413
  %1421 = fadd fast float %1405, 0xBFB99999A0000000
  %1422 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  %1423 = fmul fast float %1422, 0x3FF1C71C80000000
  %1424 = call float @dx.op.binary.f32(i32 36, float %1405, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1425 = fsub fast float 1.000000e+00, %1423
  %1426 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1427 = fmul fast float %1426, %1406
  %1428 = fmul fast float %1426, %1407
  %1429 = fmul fast float %1426, %1408
  %1430 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1431 = call float @dx.op.unary.f32(i32 7, float %1428)  ; Saturate(value)
  %1432 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1433 = fmul fast float %1423, %1406
  %1434 = fmul fast float %1423, %1407
  %1435 = fmul fast float %1423, %1408
  %1436 = fadd fast float %1433, %1424
  %1437 = fadd fast float %1434, %1424
  %1438 = fadd fast float %1435, %1424
  %1439 = call float @dx.op.unary.f32(i32 7, float %1436)  ; Saturate(value)
  %1440 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1441 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1442 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1443 = call float @dx.op.binary.f32(i32 36, float %1391, float 1.270000e+02)  ; FMin(a,b)
  %1444 = call float @dx.op.binary.f32(i32 36, float %1392, float 1.270000e+02)  ; FMin(a,b)
  %1445 = call float @dx.op.binary.f32(i32 36, float %1393, float 1.270000e+02)  ; FMin(a,b)
  %1446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.i32 %1446, 3
  %1448 = and i32 %1447, 8
  %1449 = icmp ne i32 %1448, 0
  %1450 = call float @dx.op.binary.f32(i32 35, float %1430, float %1406)  ; FMax(a,b)
  %1451 = call float @dx.op.binary.f32(i32 35, float %1431, float %1406)  ; FMax(a,b)
  %1452 = call float @dx.op.binary.f32(i32 35, float %1432, float %1406)  ; FMax(a,b)
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1430, float %1431, float %1432, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = select i1 %184, float %1406, float %1430
  %1455 = select i1 %184, float %1453, float %1431
  %1456 = select i1 %184, float 1.000000e+00, float %1432
  %1457 = select i1 %1449, float %1450, float %1454
  %1458 = select i1 %1449, float %1451, float %1455
  %1459 = select i1 %1449, float %1452, float %1456
  %1460 = and i32 %160, 3
  %1461 = select i1 %154, i32 %1460, i32 0
  %1462 = icmp eq i32 %1461, 1
  br i1 %1462, label %1463, label %1539

; <label>:1463                                    ; preds = %1387
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 0
  %1466 = extractvalue %dx.types.CBufRet.f32 %1464, 1
  %1467 = fadd fast float %1465, %123
  %1468 = fadd fast float %1466, %124
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.CBufRet.f32 %1469, 1
  %1472 = fsub fast float %1467, %1470
  %1473 = fsub fast float %1468, %1471
  %1474 = fmul fast float %1472, %1472
  %1475 = fmul fast float %1473, %1473
  %1476 = fadd fast float %1474, %1475
  %1477 = call float @dx.op.unary.f32(i32 24, float %1476)  ; Sqrt(value)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1469, 2
  %1479 = fcmp fast olt float %1477, %1478
  br i1 %1479, label %1480, label %1533

; <label>:1480                                    ; preds = %1463
  %1481 = extractvalue %dx.types.CBufRet.f32 %1464, 2
  %1482 = fadd fast float %1481, %125
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1485, 0
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 0
  %1489 = extractvalue %dx.types.CBufRet.f32 %1483, 1
  %1490 = extractvalue %dx.types.CBufRet.f32 %1485, 1
  %1491 = extractvalue %dx.types.CBufRet.f32 %1487, 1
  %1492 = extractvalue %dx.types.CBufRet.f32 %1483, 3
  %1493 = extractvalue %dx.types.CBufRet.f32 %1485, 3
  %1494 = extractvalue %dx.types.CBufRet.f32 %1487, 3
  %1495 = fadd fast float %1492, %1467
  %1496 = fadd fast float %1493, %1468
  %1497 = fadd fast float %1482, %1494
  %1498 = fmul fast float %1495, %1484
  %1499 = call float @dx.op.tertiary.f32(i32 46, float %1496, float %1486, float %1498)  ; FMad(a,b,c)
  %1500 = call float @dx.op.tertiary.f32(i32 46, float %1497, float %1488, float %1499)  ; FMad(a,b,c)
  %1501 = fmul fast float %1495, %1489
  %1502 = call float @dx.op.tertiary.f32(i32 46, float %1496, float %1490, float %1501)  ; FMad(a,b,c)
  %1503 = call float @dx.op.tertiary.f32(i32 46, float %1497, float %1491, float %1502)  ; FMad(a,b,c)
  %1504 = fsub fast float %1500, %1492
  %1505 = fsub fast float %1503, %1493
  %1506 = fsub fast float %1504, %1470
  %1507 = fadd fast float %1506, %1478
  %1508 = fsub fast float %1505, %1471
  %1509 = fadd fast float %1508, %1478
  %1510 = extractvalue %dx.types.CBufRet.f32 %1469, 3
  %1511 = fmul fast float %1507, %1510
  %1512 = fmul fast float %1509, %1510
  %1513 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1514 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1515 = fsub fast float 1.000000e+00, %1513
  %1516 = fsub fast float 1.000000e+00, %1514
  %1517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %1515, float %1516, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1518 = extractvalue %dx.types.ResRet.f32 %1517, 0
  %1519 = fcmp fast ugt float %1518, 0.000000e+00
  br i1 %1519, label %1520, label %1533

; <label>:1520                                    ; preds = %1480
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 2
  %1523 = fmul fast float %1522, %1518
  %1524 = extractvalue %dx.types.CBufRet.f32 %1521, 3
  %1525 = fadd fast float %1524, %1523
  %1526 = extractvalue %dx.types.CBufRet.f32 %1487, 2
  %1527 = fadd fast float %1525, %1494
  %1528 = fmul fast float %1500, %1488
  %1529 = call float @dx.op.tertiary.f32(i32 46, float %1503, float %1491, float %1528)  ; FMad(a,b,c)
  %1530 = call float @dx.op.tertiary.f32(i32 46, float %1527, float %1526, float %1529)  ; FMad(a,b,c)
  %1531 = fsub fast float %1530, %1494
  %1532 = fsub fast float %1531, %1481
  br label %1533

; <label>:1533                                    ; preds = %1520, %1480, %1463
  %1534 = phi i1 [ true, %1520 ], [ false, %1480 ], [ false, %1463 ]
  %1535 = phi float [ %1532, %1520 ], [ -1.310720e+05, %1480 ], [ -1.310720e+05, %1463 ]
  %1536 = fsub fast float %1535, %125
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1538 = select i1 %1534, float %1537, float 1.000000e+00
  br label %1539

; <label>:1539                                    ; preds = %1533, %1387
  %1540 = phi float [ %1538, %1533 ], [ 0.000000e+00, %1387 ]
  %1541 = icmp eq i32 %1461, 3
  %1542 = select i1 %1541, float 1.000000e+00, float %1540
  %1543 = call float @dx.op.binary.f32(i32 35, float %1388, float %1542)  ; FMax(a,b)
  %1544 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1545 = fcmp fast une float %1544, 0.000000e+00
  %1546 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %1547 = call float @dx.op.unary.f32(i32 25, float %1546)  ; Rsqrt(value)
  br i1 %1545, label %1555, label %1548

; <label>:1548                                    ; preds = %1539
  %1549 = fmul fast float %1547, %123
  %1550 = fmul fast float %1547, %124
  %1551 = fmul fast float %1547, %125
  %1552 = fsub fast float -0.000000e+00, %1549
  %1553 = fsub fast float -0.000000e+00, %1550
  %1554 = fsub fast float -0.000000e+00, %1551
  br label %1723

; <label>:1555                                    ; preds = %1539
  %1556 = fmul fast float %123, %1547
  %1557 = fsub fast float -0.000000e+00, %1556
  %1558 = fmul fast float %124, %1547
  %1559 = fsub fast float -0.000000e+00, %1558
  %1560 = fmul fast float %125, %1547
  %1561 = fsub fast float -0.000000e+00, %1560
  %1562 = call float @dx.op.dot3.f32(i32 55, float %1557, float %1559, float %1561, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1563 = fmul fast float %1544, 2.500000e+00
  %1564 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1565 = fmul fast float %1544, 0x4013FFFFE0000000
  %1566 = fadd fast float %1565, 0xBFFFFFFFE0000000
  %1567 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1568 = fmul fast float %1544, 0x4004000020000000
  %1569 = fadd fast float %1568, 0xBFF8000040000000
  %1570 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1571 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1572 = fmul fast float %1421, 1.000000e+01
  %1573 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1574 = fmul fast float %1573, 2.000000e+00
  %1575 = fsub fast float 3.000000e+00, %1574
  %1576 = fmul fast float %1573, %1573
  %1577 = fmul fast float %1576, %1575
  %1578 = fsub fast float 1.000000e+00, %1577
  %1579 = fsub fast float 0x3FE3333340000000, %1442
  %1580 = fmul fast float %1579, 0x400AAAAAA0000000
  %1581 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1582 = fmul fast float %1578, %1581
  %1583 = fmul fast float %1457, 0x3FEA2B8620000000
  %1584 = fmul fast float %1458, 0x3FEA2B8620000000
  %1585 = fmul fast float %1459, 0x3FEA2B8620000000
  %1586 = fadd fast float %1583, 0x3FC81DFBA0000000
  %1587 = fmul fast float %1586, %1457
  %1588 = fadd fast float %1587, 0x3F910E6020000000
  %1589 = fadd fast float %1584, 0x3FC81DFBA0000000
  %1590 = fmul fast float %1589, %1458
  %1591 = fadd fast float %1590, 0x3F910E6020000000
  %1592 = fadd fast float %1585, 0x3FC81DFBA0000000
  %1593 = fmul fast float %1592, %1459
  %1594 = fadd fast float %1593, 0x3F910E6020000000
  %1595 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1596 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  %1597 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1598 = fsub fast float %1595, %1457
  %1599 = fsub fast float %1596, %1458
  %1600 = fsub fast float %1597, %1459
  %1601 = fmul fast float %1598, %1571
  %1602 = fmul fast float %1601, %1582
  %1603 = fmul fast float %1599, %1571
  %1604 = fmul fast float %1603, %1582
  %1605 = fmul fast float %1600, %1571
  %1606 = fmul fast float %1605, %1582
  %1607 = fadd fast float %1602, %1457
  %1608 = fadd fast float %1604, %1458
  %1609 = fadd fast float %1606, %1459
  %1610 = fmul fast float %1402, %1402
  %1611 = fmul fast float %1610, %1610
  %1612 = fadd fast float %1567, 1.000000e+00
  %1613 = fsub fast float %1612, %1582
  %1614 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  %1615 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1616 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  %1617 = fsub fast float 1.000000e+00, %1611
  %1618 = call float @dx.op.binary.f32(i32 36, float %1614, float %1617)  ; FMin(a,b)
  %1619 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1620 = call float @dx.op.binary.f32(i32 35, float %1618, float %1619)  ; FMax(a,b)
  %1621 = fadd fast float %1616, 0xBFE4CCCCC0000000
  %1622 = fmul fast float %1621, 0x4006DB6DA0000000
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1624 = fmul fast float %1623, 2.000000e+00
  %1625 = fsub fast float 3.000000e+00, %1624
  %1626 = bitcast float %1439 to i32
  %1627 = ashr i32 %1626, 1
  %1628 = add nsw i32 %1627, 532487669
  %1629 = bitcast i32 %1628 to float
  %1630 = fsub fast float 1.000000e+00, %1629
  %1631 = bitcast float %1630 to i32
  %1632 = sub nsw i32 2129859010, %1631
  %1633 = bitcast i32 %1632 to float
  %1634 = fmul fast float %1633, 2.000000e+00
  %1635 = bitcast float %1440 to i32
  %1636 = ashr i32 %1635, 1
  %1637 = add nsw i32 %1636, 532487669
  %1638 = bitcast i32 %1637 to float
  %1639 = fsub fast float 1.000000e+00, %1638
  %1640 = bitcast float %1639 to i32
  %1641 = sub nsw i32 2129859010, %1640
  %1642 = bitcast i32 %1641 to float
  %1643 = fmul fast float %1642, 2.000000e+00
  %1644 = bitcast float %1441 to i32
  %1645 = ashr i32 %1644, 1
  %1646 = add nsw i32 %1645, 532487669
  %1647 = bitcast i32 %1646 to float
  %1648 = fsub fast float 1.000000e+00, %1647
  %1649 = bitcast float %1648 to i32
  %1650 = sub nsw i32 2129859010, %1649
  %1651 = bitcast i32 %1650 to float
  %1652 = fmul fast float %1651, 2.000000e+00
  %1653 = fsub fast float 0x4002A9FBE0000000, %1634
  %1654 = fadd fast float %1634, 0x3FD54FDF00000000
  %1655 = bitcast float %1654 to i32
  %1656 = sub nsw i32 2129859010, %1655
  %1657 = bitcast i32 %1656 to float
  %1658 = fmul fast float %1657, %1653
  %1659 = fmul fast float %1658, %1658
  %1660 = fsub fast float 0x4002A9FBE0000000, %1643
  %1661 = fadd fast float %1643, 0x3FD54FDF00000000
  %1662 = bitcast float %1661 to i32
  %1663 = sub nsw i32 2129859010, %1662
  %1664 = bitcast i32 %1663 to float
  %1665 = fmul fast float %1664, %1660
  %1666 = fmul fast float %1665, %1665
  %1667 = fsub fast float 0x4002A9FBE0000000, %1652
  %1668 = fadd fast float %1652, 0x3FD54FDF00000000
  %1669 = bitcast float %1668 to i32
  %1670 = sub nsw i32 2129859010, %1669
  %1671 = bitcast i32 %1670 to float
  %1672 = fmul fast float %1671, %1667
  %1673 = fmul fast float %1672, %1672
  %1674 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1659)  ; FMax(a,b)
  %1675 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1666)  ; FMax(a,b)
  %1676 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1673)  ; FMax(a,b)
  %1677 = fsub fast float 1.000000e+00, %1562
  %1678 = fadd fast float %1677, %1578
  %1679 = call float @dx.op.unary.f32(i32 7, float %1678)  ; Saturate(value)
  %1680 = fsub fast float 1.000000e+00, %1542
  %1681 = fmul fast float %1620, %1680
  %1682 = fmul fast float %1623, %1623
  %1683 = fmul fast float %1682, %1681
  %1684 = fmul fast float %1683, %1625
  %1685 = fmul fast float %1680, 0xBFE99999A0000000
  %1686 = fmul fast float %1685, %1571
  %1687 = fmul fast float %1686, %1582
  %1688 = fadd fast float %1687, 1.000000e+00
  %1689 = fadd fast float %1442, -1.000000e+00
  %1690 = fmul fast float %1688, %1689
  %1691 = fadd fast float %1690, 1.000000e+00
  %1692 = fsub fast float %1674, %1439
  %1693 = fsub fast float %1675, %1440
  %1694 = fsub fast float %1676, %1441
  %1695 = fmul fast float %1684, %1692
  %1696 = fmul fast float %1684, %1693
  %1697 = fmul fast float %1684, %1694
  %1698 = fadd fast float %1695, %1439
  %1699 = fadd fast float %1696, %1440
  %1700 = fadd fast float %1697, %1441
  %1701 = fsub fast float %70, %1418
  %1702 = fsub fast float %71, %1419
  %1703 = fsub fast float %72, %1420
  %1704 = fmul fast float %1684, %1701
  %1705 = fmul fast float %1684, %1702
  %1706 = fmul fast float %1684, %1703
  %1707 = fadd fast float %1704, %1418
  %1708 = fadd fast float %1705, %1419
  %1709 = fadd fast float %1706, %1420
  %1710 = fmul fast float %1684, %1679
  %1711 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1712 = fsub fast float 1.000000e+00, %1711
  %1713 = fmul fast float %1710, %1712
  %1714 = fadd fast float %1713, %1711
  %1715 = fsub fast float 1.000000e+00, %1402
  %1716 = fmul fast float %1684, %1715
  %1717 = fadd fast float %1716, %1402
  %1718 = call float @dx.op.dot3.f32(i32 55, float %1707, float %1708, float %1709, float %1707, float %1708, float %1709)  ; Dot3(ax,ay,az,bx,by,bz)
  %1719 = call float @dx.op.unary.f32(i32 25, float %1718)  ; Rsqrt(value)
  %1720 = fmul fast float %1707, %1719
  %1721 = fmul fast float %1708, %1719
  %1722 = fmul fast float %1709, %1719
  br label %1723

; <label>:1723                                    ; preds = %1555, %1548
  %1724 = phi float [ %1554, %1548 ], [ %1561, %1555 ]
  %1725 = phi float [ %1553, %1548 ], [ %1559, %1555 ]
  %1726 = phi float [ %1552, %1548 ], [ %1557, %1555 ]
  %1727 = phi float [ %1551, %1548 ], [ %1560, %1555 ]
  %1728 = phi float [ %1550, %1548 ], [ %1558, %1555 ]
  %1729 = phi float [ %1549, %1548 ], [ %1556, %1555 ]
  %1730 = phi float [ %1439, %1548 ], [ %1698, %1555 ]
  %1731 = phi float [ %1440, %1548 ], [ %1699, %1555 ]
  %1732 = phi float [ %1441, %1548 ], [ %1700, %1555 ]
  %1733 = phi float [ %1457, %1548 ], [ %1607, %1555 ]
  %1734 = phi float [ %1458, %1548 ], [ %1608, %1555 ]
  %1735 = phi float [ %1459, %1548 ], [ %1609, %1555 ]
  %1736 = phi float [ %1418, %1548 ], [ %1720, %1555 ]
  %1737 = phi float [ %1419, %1548 ], [ %1721, %1555 ]
  %1738 = phi float [ %1420, %1548 ], [ %1722, %1555 ]
  %1739 = phi float [ %1442, %1548 ], [ %1714, %1555 ]
  %1740 = phi float [ %1402, %1548 ], [ %1717, %1555 ]
  %1741 = select i1 %184, float 0.000000e+00, float %1732
  %1742 = call float @dx.op.dot3.f32(i32 55, float %1736, float %1737, float %1738, float %1726, float %1725, float %1724)  ; Dot3(ax,ay,az,bx,by,bz)
  %1743 = call float @dx.op.unary.f32(i32 7, float %1742)  ; Saturate(value)
  %1744 = call float @dx.op.dot3.f32(i32 55, float %1729, float %1728, float %1727, float %1736, float %1737, float %1738)  ; Dot3(ax,ay,az,bx,by,bz)
  %1745 = fmul fast float %1744, 2.000000e+00
  %1746 = fmul fast float %1745, %1736
  %1747 = fmul fast float %1745, %1737
  %1748 = fmul fast float %1745, %1738
  %1749 = fsub fast float %1729, %1746
  %1750 = fsub fast float %1728, %1747
  %1751 = fsub fast float %1727, %1748
  %1752 = call float @dx.op.binary.f32(i32 36, float %1740, float 1.000000e+00)  ; FMin(a,b)
  %1753 = fsub fast float 1.000000e+00, %1740
  %1754 = bitcast float %1753 to i32
  %1755 = sub nsw i32 2129859010, %1754
  %1756 = bitcast i32 %1755 to float
  %1757 = fsub fast float 1.000000e+00, %42
  %1758 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1759 = call float @dx.op.binary.f32(i32 35, float %1758, float 0x3FA99999A0000000)  ; FMax(a,b)
  %1760 = fdiv fast float %1757, %1759
  %1761 = call float @dx.op.dot3.f32(i32 55, float %1736, float %1737, float %1738, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1762 = call float @dx.op.unary.f32(i32 7, float %1761)  ; Saturate(value)
  %1763 = fmul fast float %1762, 5.000000e-01
  %1764 = fadd fast float %1763, 5.000000e-01
  %1765 = fmul fast float %1764, %42
  %1766 = call float @dx.op.dot3.f32(i32 55, float %1736, float %1737, float %1738, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %1767 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1768 = fmul fast float %1767, %1760
  %1769 = fadd fast float %1765, %1768
  %1770 = fsub fast float 5.000000e-01, %1763
  %1771 = fmul fast float %1770, %1733
  %1772 = fmul fast float %1770, %1734
  %1773 = fmul fast float %1770, %1735
  %1774 = fadd fast float %1769, %1771
  %1775 = fadd fast float %1769, %1772
  %1776 = fadd fast float %1769, %1773
  %1777 = call float @dx.op.dot3.f32(i32 55, float %1749, float %1750, float %1751, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1778 = call float @dx.op.unary.f32(i32 7, float %1777)  ; Saturate(value)
  %1779 = fmul fast float %1778, 5.000000e-01
  %1780 = fadd fast float %1779, 5.000000e-01
  %1781 = fmul fast float %1780, %42
  %1782 = call float @dx.op.dot3.f32(i32 55, float %1749, float %1750, float %1751, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %1783 = call float @dx.op.unary.f32(i32 7, float %1782)  ; Saturate(value)
  %1784 = fmul fast float %1783, %1760
  %1785 = fadd fast float %1781, %1784
  %1786 = fsub fast float 5.000000e-01, %1779
  %1787 = fmul fast float %1786, %1733
  %1788 = fmul fast float %1786, %1734
  %1789 = fmul fast float %1786, %1735
  %1790 = fadd fast float %1785, %1787
  %1791 = fadd fast float %1785, %1788
  %1792 = fadd fast float %1785, %1789
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 0
  %1795 = call float @dx.op.binary.f32(i32 36, float %1733, float %1794)  ; FMin(a,b)
  %1796 = fsub fast float 1.000000e+00, %1752
  %1797 = fmul fast float %1795, %1796
  %1798 = fsub fast float 1.000000e+00, %1797
  %1799 = bitcast float %1798 to i32
  %1800 = sub nsw i32 2129859010, %1799
  %1801 = bitcast i32 %1800 to float
  %1802 = call float @dx.op.binary.f32(i32 36, float %1734, float %1794)  ; FMin(a,b)
  %1803 = fmul fast float %1802, %1796
  %1804 = fsub fast float 1.000000e+00, %1803
  %1805 = bitcast float %1804 to i32
  %1806 = sub nsw i32 2129859010, %1805
  %1807 = bitcast i32 %1806 to float
  %1808 = call float @dx.op.binary.f32(i32 36, float %1735, float %1794)  ; FMin(a,b)
  %1809 = fmul fast float %1808, %1796
  %1810 = fsub fast float 1.000000e+00, %1809
  %1811 = bitcast float %1810 to i32
  %1812 = sub nsw i32 2129859010, %1811
  %1813 = bitcast i32 %1812 to float
  %1814 = fmul fast float %1752, %43
  %1815 = fmul fast float %1814, %1774
  %1816 = fmul fast float %1815, %1801
  %1817 = fmul fast float %1752, %44
  %1818 = fmul fast float %1817, %1775
  %1819 = fmul fast float %1818, %1807
  %1820 = fmul fast float %1752, %45
  %1821 = fmul fast float %1820, %1776
  %1822 = fmul fast float %1821, %1813
  %1823 = call float @dx.op.binary.f32(i32 36, float %1730, float %1794)  ; FMin(a,b)
  %1824 = fmul fast float %1823, %1796
  %1825 = fsub fast float 1.000000e+00, %1824
  %1826 = bitcast float %1825 to i32
  %1827 = sub nsw i32 2129859010, %1826
  %1828 = bitcast i32 %1827 to float
  %1829 = call float @dx.op.binary.f32(i32 36, float %1731, float %1794)  ; FMin(a,b)
  %1830 = fmul fast float %1829, %1796
  %1831 = fsub fast float 1.000000e+00, %1830
  %1832 = bitcast float %1831 to i32
  %1833 = sub nsw i32 2129859010, %1832
  %1834 = bitcast i32 %1833 to float
  %1835 = call float @dx.op.binary.f32(i32 36, float %1741, float %1794)  ; FMin(a,b)
  %1836 = fmul fast float %1835, %1796
  %1837 = fsub fast float 1.000000e+00, %1836
  %1838 = bitcast float %1837 to i32
  %1839 = sub nsw i32 2129859010, %1838
  %1840 = bitcast i32 %1839 to float
  %1841 = fmul fast float %1814, %1790
  %1842 = fmul fast float %1841, %1828
  %1843 = fmul fast float %1817, %1791
  %1844 = fmul fast float %1843, %1834
  %1845 = fmul fast float %1820, %1792
  %1846 = fmul fast float %1845, %1840
  %1847 = call float @dx.op.dot3.f32(i32 55, float %1816, float %1819, float %1822, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1848 = select i1 %184, float 0.000000e+00, float %1816
  %1849 = select i1 %184, float %1847, float %1819
  %1850 = select i1 %184, float 0.000000e+00, float %1822
  %1851 = call float @dx.op.dot3.f32(i32 55, float %1842, float %1844, float %1846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1852 = select i1 %184, float 0.000000e+00, float %1842
  %1853 = select i1 %184, float %1851, float %1844
  %1854 = select i1 %184, float 0.000000e+00, float %1846
  %1855 = fmul fast float %845, %845
  %1856 = call float @dx.op.unary.f32(i32 7, float %1855)  ; Saturate(value)
  %1857 = fmul fast float %1743, 9.843750e-01
  %1858 = fmul fast float %1739, 9.843750e-01
  %1859 = fadd fast float %1857, 7.812500e-03
  %1860 = fadd fast float %1858, 7.812500e-03
  %1861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %1859, float %1860, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1862 = extractvalue %dx.types.ResRet.f32 %1861, 0
  %1863 = extractvalue %dx.types.ResRet.f32 %1861, 1
  %1864 = extractvalue %dx.types.ResRet.f32 %1861, 2
  %1865 = extractvalue %dx.types.ResRet.f32 %1861, 3
  %1866 = fsub fast float 1.000000e+00, %1856
  %1867 = fsub fast float %1864, %1862
  %1868 = fsub fast float %1865, %1863
  %1869 = fmul fast float %1867, %1866
  %1870 = fmul fast float %1868, %1866
  %1871 = fadd fast float %1869, %1862
  %1872 = fadd fast float %1870, %1863
  %1873 = fmul fast float %1871, %1730
  %1874 = fmul fast float %1871, %1731
  %1875 = fmul fast float %1871, %1741
  %1876 = fadd fast float %1873, %1872
  %1877 = fadd fast float %1874, %1872
  %1878 = fadd fast float %1875, %1872
  %1879 = fcmp fast ogt float %1395, 0.000000e+00
  br i1 %1879, label %1880, label %1906

; <label>:1880                                    ; preds = %1723
  %1881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1395, float %1743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.ResRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.ResRet.f32 %1881, 2
  %1885 = fadd fast float %1882, -5.000000e-01
  %1886 = fadd fast float %1883, -5.000000e-01
  %1887 = fadd fast float %1884, -5.000000e-01
  %1888 = fsub fast float 1.000000e+00, %1730
  %1889 = fsub fast float 1.000000e+00, %1731
  %1890 = fsub fast float 1.000000e+00, %1741
  %1891 = fmul fast float %1730, 4.000000e+00
  %1892 = fmul fast float %1891, %1888
  %1893 = fmul fast float %1892, %1885
  %1894 = fmul fast float %1731, 4.000000e+00
  %1895 = fmul fast float %1894, %1889
  %1896 = fmul fast float %1895, %1886
  %1897 = fmul fast float %1741, 4.000000e+00
  %1898 = fmul fast float %1897, %1890
  %1899 = fmul fast float %1898, %1887
  %1900 = fadd fast float %1893, %1876
  %1901 = fadd fast float %1896, %1877
  %1902 = fadd fast float %1899, %1878
  %1903 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  %1904 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1905 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  br label %1906

; <label>:1906                                    ; preds = %1880, %1723
  %1907 = phi float [ %1903, %1880 ], [ %1876, %1723 ]
  %1908 = phi float [ %1904, %1880 ], [ %1877, %1723 ]
  %1909 = phi float [ %1905, %1880 ], [ %1878, %1723 ]
  %1910 = call float @dx.op.binary.f32(i32 35, float %1908, float %1909)  ; FMax(a,b)
  %1911 = call float @dx.op.binary.f32(i32 35, float %1907, float %1910)  ; FMax(a,b)
  %1912 = fsub fast float 1.000000e+00, %1911
  %1913 = fmul fast float %1912, %1848
  %1914 = fmul fast float %1912, %1849
  %1915 = fmul fast float %1912, %1850
  %1916 = call float @dx.op.dot3.f32(i32 55, float %1733, float %1734, float %1735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1917 = fcmp fast ogt float %1916, 0x3E7FF19E20000000
  %1918 = fdiv fast float 1.000000e+00, %1916
  %1919 = select i1 %1917, float %1918, float 0.000000e+00
  %1920 = fmul fast float %1919, %1733
  %1921 = fmul fast float %1919, %1734
  %1922 = fmul fast float %1919, %1735
  %1923 = fadd fast float %1920, -1.000000e+00
  %1924 = fadd fast float %1921, -1.000000e+00
  %1925 = fadd fast float %1922, -1.000000e+00
  %1926 = fmul fast float %1923, 5.000000e-01
  %1927 = fmul fast float %1924, 5.000000e-01
  %1928 = fmul fast float %1925, 5.000000e-01
  %1929 = fadd fast float %1926, 1.000000e+00
  %1930 = fadd fast float %1927, 1.000000e+00
  %1931 = fadd fast float %1928, 1.000000e+00
  %1932 = call float @dx.op.binary.f32(i32 35, float %1743, float 0x3F50624DE0000000)  ; FMax(a,b)
  %1933 = fdiv fast float %845, %1932
  %1934 = fcmp fast olt float %1443, 1.270000e+02
  %1935 = fcmp fast olt float %1444, 1.270000e+02
  %1936 = fcmp fast olt float %1445, 1.270000e+02
  %1937 = fmul fast float %1443, 0xBFF7154760000000
  %1938 = fmul fast float %1937, %1933
  %1939 = fmul fast float %1444, 0xBFF7154760000000
  %1940 = fmul fast float %1939, %1933
  %1941 = fmul fast float %1445, 0xBFF7154760000000
  %1942 = fmul fast float %1941, %1933
  %1943 = call float @dx.op.unary.f32(i32 21, float %1938)  ; Exp(value)
  %1944 = call float @dx.op.unary.f32(i32 21, float %1940)  ; Exp(value)
  %1945 = call float @dx.op.unary.f32(i32 21, float %1942)  ; Exp(value)
  %1946 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  %1947 = call float @dx.op.unary.f32(i32 7, float %1944)  ; Saturate(value)
  %1948 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  %1949 = select i1 %1934, float %1946, float 0.000000e+00
  %1950 = select i1 %1935, float %1947, float 0.000000e+00
  %1951 = select i1 %1936, float %1948, float 0.000000e+00
  %1952 = fmul fast float %1949, %1912
  %1953 = fmul fast float %1950, %1912
  %1954 = fmul fast float %1951, %1912
  %1955 = fadd fast float %1952, -1.000000e+00
  %1956 = fadd fast float %1953, -1.000000e+00
  %1957 = fadd fast float %1954, -1.000000e+00
  %1958 = fmul fast float %1907, %1852
  %1959 = fmul fast float %1908, %1853
  %1960 = fmul fast float %1909, %1854
  %1961 = fsub fast float 1.000000e+00, %1743
  %1962 = bitcast float %1961 to i32
  %1963 = sitofp i32 %1962 to float
  %1964 = fmul fast float %1963, 5.000000e+00
  %1965 = fadd fast float %1964, 0xC1EFBF8940000000
  %1966 = fptosi float %1965 to i32
  %1967 = bitcast i32 %1966 to float
  %1968 = fmul fast float %1967, %1394
  %1969 = fmul fast float %1848, %1968
  %1970 = fmul fast float %1969, %1912
  %1971 = fmul fast float %1970, %1929
  %1972 = fmul fast float %1849, %1968
  %1973 = fmul fast float %1972, %1912
  %1974 = fmul fast float %1973, %1930
  %1975 = fmul fast float %1850, %1968
  %1976 = fmul fast float %1975, %1912
  %1977 = fmul fast float %1976, %1931
  %1978 = fmul fast float %1913, %1415
  %1979 = fmul fast float %1914, %1415
  %1980 = fmul fast float %1915, %1415
  %1981 = fadd fast float %1958, %1396
  %1982 = fadd fast float %1981, %1971
  %1983 = fmul fast float %1982, %1415
  %1984 = fadd fast float %1959, %1397
  %1985 = fadd fast float %1984, %1974
  %1986 = fmul fast float %1985, %1415
  %1987 = fadd fast float %1960, %1398
  %1988 = fadd fast float %1987, %1977
  %1989 = fmul fast float %1988, %1415
  %1990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1991 = extractvalue %dx.types.CBufRet.f32 %1990, 3
  %1992 = fcmp fast oeq float %1991, 0.000000e+00
  br i1 %1992, label %2999, label %1993

; <label>:1993                                    ; preds = %1906
  %1994 = extractvalue %dx.types.CBufRet.f32 %1990, 0
  %1995 = extractvalue %dx.types.CBufRet.f32 %1990, 1
  %1996 = extractvalue %dx.types.CBufRet.f32 %1990, 2
  %1997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1998 = extractvalue %dx.types.CBufRet.f32 %1997, 0
  %1999 = extractvalue %dx.types.CBufRet.f32 %1997, 1
  %2000 = extractvalue %dx.types.CBufRet.f32 %1997, 2
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 0
  %2003 = extractvalue %dx.types.CBufRet.f32 %2001, 1
  %2004 = call float @dx.op.dot3.f32(i32 55, float %1998, float %1999, float %2000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2005 = select i1 %184, float %2002, float %1998
  %2006 = select i1 %184, float %2004, float %1999
  %2007 = select i1 %184, float %2003, float %2000
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 2
  %2010 = fmul fast float %2009, %70
  %2011 = fmul fast float %2009, %71
  %2012 = fmul fast float %2009, %72
  %2013 = fadd fast float %2010, %123
  %2014 = fadd fast float %2011, %124
  %2015 = fadd fast float %2012, %125
  %2016 = fcmp fast olt float %1991, 0.000000e+00
  br i1 %2016, label %2641, label %2017

; <label>:2017                                    ; preds = %1993
  %2018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2019 = extractvalue %dx.types.CBufRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.CBufRet.f32 %2018, 1
  %2021 = extractvalue %dx.types.CBufRet.f32 %2018, 2
  %2022 = extractvalue %dx.types.CBufRet.f32 %2018, 3
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2026 = extractvalue %dx.types.CBufRet.f32 %2023, 2
  %2027 = extractvalue %dx.types.CBufRet.f32 %2023, 3
  %2028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2029 = extractvalue %dx.types.CBufRet.f32 %2028, 0
  %2030 = extractvalue %dx.types.CBufRet.f32 %2028, 1
  %2031 = extractvalue %dx.types.CBufRet.f32 %2028, 2
  %2032 = extractvalue %dx.types.CBufRet.f32 %2028, 3
  %2033 = fmul fast float %2019, %2013
  %2034 = call float @dx.op.tertiary.f32(i32 46, float %2014, float %2020, float %2033)  ; FMad(a,b,c)
  %2035 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2021, float %2034)  ; FMad(a,b,c)
  %2036 = fadd fast float %2035, %2022
  %2037 = fmul fast float %2024, %2013
  %2038 = call float @dx.op.tertiary.f32(i32 46, float %2014, float %2025, float %2037)  ; FMad(a,b,c)
  %2039 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2026, float %2038)  ; FMad(a,b,c)
  %2040 = fadd fast float %2039, %2027
  %2041 = fmul fast float %2029, %2013
  %2042 = call float @dx.op.tertiary.f32(i32 46, float %2014, float %2030, float %2041)  ; FMad(a,b,c)
  %2043 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2031, float %2042)  ; FMad(a,b,c)
  %2044 = fadd fast float %2043, %2032
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 0
  %2047 = extractvalue %dx.types.CBufRet.f32 %2045, 1
  %2048 = extractvalue %dx.types.CBufRet.f32 %2045, 3
  %2049 = fmul fast float %2048, %2036
  %2050 = fmul fast float %2048, %2040
  %2051 = fadd fast float %2049, %2046
  %2052 = fadd fast float %2050, %2047
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.CBufRet.f32 %2053, 1
  %2056 = extractvalue %dx.types.CBufRet.f32 %2053, 3
  %2057 = fmul fast float %2056, %2036
  %2058 = fmul fast float %2056, %2040
  %2059 = fadd fast float %2057, %2054
  %2060 = fadd fast float %2058, %2055
  %2061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2062 = extractvalue %dx.types.CBufRet.f32 %2061, 1
  %2063 = fsub fast float %2062, %2044
  %2064 = extractvalue %dx.types.CBufRet.f32 %2061, 2
  %2065 = fmul fast float %2063, %2064
  %2066 = fsub fast float 1.000000e+00, %2065
  %2067 = call float @dx.op.unary.f32(i32 7, float %2066)  ; Saturate(value)
  %2068 = extractvalue %dx.types.CBufRet.f32 %2053, 2
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 2
  %2071 = fadd fast float %2070, %2068
  %2072 = fcmp fast ogt float %2071, 0.000000e+00
  br i1 %2072, label %2073, label %2097

; <label>:2073                                    ; preds = %2017
  %2074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2075 = extractvalue %dx.types.CBufRet.f32 %2074, 0
  %2076 = extractvalue %dx.types.CBufRet.f32 %2074, 1
  %2077 = fsub fast float %2059, %2075
  %2078 = fsub fast float %2060, %2076
  %2079 = fcmp fast olt float %2077, 0.000000e+00
  %2080 = fcmp fast olt float %2078, 0.000000e+00
  %2081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2081, 0
  %2083 = extractvalue %dx.types.CBufRet.f32 %2081, 1
  %2084 = extractvalue %dx.types.CBufRet.f32 %2081, 2
  %2085 = extractvalue %dx.types.CBufRet.f32 %2081, 3
  %2086 = select i1 %2079, float %2082, float %2084
  %2087 = select i1 %2080, float %2083, float %2085
  %2088 = fmul fast float %2086, %2077
  %2089 = fmul fast float %2087, %2078
  %2090 = call float @dx.op.unary.f32(i32 6, float %2088)  ; FAbs(value)
  %2091 = call float @dx.op.unary.f32(i32 6, float %2089)  ; FAbs(value)
  %2092 = extractvalue %dx.types.CBufRet.f32 %2008, 0
  %2093 = call float @dx.op.binary.f32(i32 35, float %2090, float %2091)  ; FMax(a,b)
  %2094 = fsub fast float %2092, %2093
  %2095 = call float @dx.op.unary.f32(i32 7, float %2094)  ; Saturate(value)
  %2096 = fmul fast float %2095, %2067
  br label %2097

; <label>:2097                                    ; preds = %2073, %2017
  %2098 = phi float [ %2096, %2073 ], [ 0.000000e+00, %2017 ]
  %2099 = extractvalue %dx.types.CBufRet.f32 %2045, 2
  %2100 = extractvalue %dx.types.CBufRet.f32 %2069, 1
  %2101 = fadd fast float %2100, %2099
  %2102 = fcmp fast ogt float %2101, 0.000000e+00
  %2103 = extractvalue %dx.types.CBufRet.f32 %2008, 0
  br i1 %2102, label %2104, label %2127

; <label>:2104                                    ; preds = %2097
  %2105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2106 = extractvalue %dx.types.CBufRet.f32 %2105, 0
  %2107 = extractvalue %dx.types.CBufRet.f32 %2105, 1
  %2108 = fsub fast float %2051, %2106
  %2109 = fsub fast float %2052, %2107
  %2110 = fcmp fast olt float %2108, 0.000000e+00
  %2111 = fcmp fast olt float %2109, 0.000000e+00
  %2112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.CBufRet.f32 %2112, 1
  %2115 = extractvalue %dx.types.CBufRet.f32 %2112, 2
  %2116 = extractvalue %dx.types.CBufRet.f32 %2112, 3
  %2117 = select i1 %2110, float %2113, float %2115
  %2118 = select i1 %2111, float %2114, float %2116
  %2119 = fmul fast float %2117, %2108
  %2120 = fmul fast float %2118, %2109
  %2121 = call float @dx.op.unary.f32(i32 6, float %2119)  ; FAbs(value)
  %2122 = call float @dx.op.unary.f32(i32 6, float %2120)  ; FAbs(value)
  %2123 = call float @dx.op.binary.f32(i32 35, float %2121, float %2122)  ; FMax(a,b)
  %2124 = fsub fast float %2103, %2123
  %2125 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  %2126 = fmul fast float %2125, %2067
  br label %2127

; <label>:2127                                    ; preds = %2104, %2097
  %2128 = phi float [ %2126, %2104 ], [ 0.000000e+00, %2097 ]
  %2129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2130 = extractvalue %dx.types.CBufRet.f32 %2129, 1
  %2131 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.f32 %2132, 0
  %2134 = extractvalue %dx.types.CBufRet.f32 %2132, 1
  %2135 = fsub fast float %2036, %2133
  %2136 = fsub fast float %2040, %2134
  %2137 = fcmp fast olt float %2135, 0.000000e+00
  %2138 = fcmp fast olt float %2136, 0.000000e+00
  %2139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2140 = extractvalue %dx.types.CBufRet.f32 %2139, 0
  %2141 = extractvalue %dx.types.CBufRet.f32 %2139, 1
  %2142 = extractvalue %dx.types.CBufRet.f32 %2139, 2
  %2143 = extractvalue %dx.types.CBufRet.f32 %2139, 3
  %2144 = select i1 %2137, float %2140, float %2142
  %2145 = select i1 %2138, float %2141, float %2143
  %2146 = fmul fast float %2144, %2135
  %2147 = fmul fast float %2145, %2136
  %2148 = call float @dx.op.unary.f32(i32 6, float %2146)  ; FAbs(value)
  %2149 = call float @dx.op.unary.f32(i32 6, float %2147)  ; FAbs(value)
  %2150 = call float @dx.op.binary.f32(i32 35, float %2148, float %2149)  ; FMax(a,b)
  %2151 = fsub fast float %2103, %2150
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2153 = call float @dx.op.binary.f32(i32 36, float %2152, float %2131)  ; FMin(a,b)
  %2154 = fmul fast float %2153, %2067
  %2155 = fsub fast float %2128, %2154
  %2156 = fsub fast float %2098, %2128
  %2157 = fsub fast float %2156, %2154
  %2158 = call float @dx.op.binary.f32(i32 35, float %2128, float %2098)  ; FMax(a,b)
  %2159 = call float @dx.op.binary.f32(i32 35, float %2154, float %2158)  ; FMax(a,b)
  %2160 = fcmp fast olt float %2159, 1.000000e+00
  br i1 %2160, label %2161, label %2559, !dx.controlflow.hints !71

; <label>:2161                                    ; preds = %2127
  %2162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2163 = extractvalue %dx.types.CBufRet.f32 %2162, 0
  %2164 = fcmp fast une float %2163, 0.000000e+00
  br i1 %2164, label %2165, label %2559, !dx.controlflow.hints !72

; <label>:2165                                    ; preds = %2161
  %2166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2167 = extractvalue %dx.types.CBufRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.CBufRet.f32 %2166, 1
  %2169 = extractvalue %dx.types.CBufRet.f32 %2166, 2
  %2170 = extractvalue %dx.types.CBufRet.f32 %2166, 3
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 0
  %2173 = extractvalue %dx.types.CBufRet.f32 %2171, 1
  %2174 = extractvalue %dx.types.CBufRet.f32 %2171, 2
  %2175 = extractvalue %dx.types.CBufRet.f32 %2171, 3
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.CBufRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.CBufRet.f32 %2176, 2
  %2180 = extractvalue %dx.types.CBufRet.f32 %2176, 3
  %2181 = fmul fast float %2167, %2013
  %2182 = call float @dx.op.tertiary.f32(i32 46, float %2014, float %2168, float %2181)  ; FMad(a,b,c)
  %2183 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2169, float %2182)  ; FMad(a,b,c)
  %2184 = fadd fast float %2183, %2170
  %2185 = fmul fast float %2172, %2013
  %2186 = call float @dx.op.tertiary.f32(i32 46, float %2014, float %2173, float %2185)  ; FMad(a,b,c)
  %2187 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2174, float %2186)  ; FMad(a,b,c)
  %2188 = fadd fast float %2187, %2175
  %2189 = fmul fast float %2177, %2013
  %2190 = call float @dx.op.tertiary.f32(i32 46, float %2014, float %2178, float %2189)  ; FMad(a,b,c)
  %2191 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2179, float %2190)  ; FMad(a,b,c)
  %2192 = fadd fast float %2191, %2180
  %2193 = fcmp fast oge float %2184, 1.000000e+00
  %2194 = fcmp fast oge float %2188, 1.000000e+00
  %2195 = or i1 %2193, %2194
  %2196 = fcmp fast olt float %2184, 0.000000e+00
  %2197 = fcmp fast olt float %2188, 0.000000e+00
  %2198 = or i1 %2196, %2197
  %2199 = or i1 %2195, %2198
  br i1 %2199, label %2559, label %2200, !dx.controlflow.hints !73

; <label>:2200                                    ; preds = %2165
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 0
  %2203 = extractvalue %dx.types.CBufRet.f32 %2201, 1
  %2204 = extractvalue %dx.types.CBufRet.f32 %2201, 2
  %2205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2206 = extractvalue %dx.types.CBufRet.i32 %2205, 2
  %2207 = uitofp i32 %2206 to float
  %2208 = extractvalue %dx.types.CBufRet.i32 %2205, 3
  %2209 = uitofp i32 %2208 to float
  %2210 = extractvalue %dx.types.CBufRet.f32 %2201, 3
  %2211 = fmul fast float %2210, 2.000000e+00
  %2212 = fsub fast float %2184, %2202
  %2213 = fsub fast float %2188, %2203
  %2214 = fmul fast float %2211, %2212
  %2215 = fmul fast float %2211, %2213
  %2216 = fdiv fast float 1.000000e+00, %1996
  %2217 = fmul fast float %2215, %2216
  %2218 = call float @dx.op.unary.f32(i32 6, float %2217)  ; FAbs(value)
  %2219 = fmul fast float %2204, %2015
  %2220 = fmul fast float %2219, %2211
  %2221 = call float @dx.op.unary.f32(i32 6, float %2220)  ; FAbs(value)
  %2222 = call float @dx.op.unary.f32(i32 6, float %2214)  ; FAbs(value)
  %2223 = call float @dx.op.binary.f32(i32 35, float %2221, float %2218)  ; FMax(a,b)
  %2224 = call float @dx.op.binary.f32(i32 35, float %2222, float %2223)  ; FMax(a,b)
  %2225 = fmul fast float %2224, 2.000000e+00
  %2226 = call float @dx.op.unary.f32(i32 23, float %2225)  ; Log(value)
  %2227 = call float @dx.op.binary.f32(i32 35, float %2226, float %2207)  ; FMax(a,b)
  %2228 = call float @dx.op.unary.f32(i32 22, float %2227)  ; Frc(value)
  %2229 = fadd fast float %2228, 0xBFEA666660000000
  %2230 = fmul fast float %2229, 8.000000e+00
  %2231 = call float @dx.op.unary.f32(i32 7, float %2230)  ; Saturate(value)
  %2232 = call float @dx.op.unary.f32(i32 27, float %2227)  ; Round_ni(value)
  %2233 = fadd fast float %2232, %2231
  %2234 = call float @dx.op.binary.f32(i32 36, float %2233, float %2209)  ; FMin(a,b)
  %2235 = call float @dx.op.unary.f32(i32 27, float %2234)  ; Round_ni(value)
  %2236 = fsub fast float -0.000000e+00, %2235
  %2237 = call float @dx.op.unary.f32(i32 21, float %2236)  ; Exp(value)
  %2238 = fmul fast float %2237, %2211
  %2239 = fmul fast float %2238, %2184
  %2240 = fmul fast float %2238, %2188
  %2241 = fmul fast float %2239, 2.500000e-01
  %2242 = fmul fast float %2240, 2.500000e-01
  %2243 = fadd fast float %2241, 5.000000e-01
  %2244 = fadd fast float %2242, 5.000000e-01
  %2245 = fsub fast float %2209, %2207
  %2246 = fptoui float %2245 to i32
  %2247 = add i32 %2246, 320
  %2248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %2247)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.CBufRet.f32 %2248, 1
  %2251 = fcmp fast une float %2234, %2209
  %2252 = fsub fast float %2184, %2249
  %2253 = fsub fast float %2188, %2250
  %2254 = call float @dx.op.unary.f32(i32 6, float %2252)  ; FAbs(value)
  %2255 = call float @dx.op.unary.f32(i32 6, float %2253)  ; FAbs(value)
  %2256 = fmul fast float %2254, %2238
  %2257 = fmul fast float %2255, %2238
  %2258 = fcmp fast olt float %2256, 1.000000e+00
  %2259 = fcmp fast olt float %2257, 1.000000e+00
  %2260 = and i1 %2258, %2259
  %2261 = or i1 %2251, %2260
  br i1 %2261, label %2262, label %2559, !dx.controlflow.hints !74

; <label>:2262                                    ; preds = %2200
  %2263 = fmul fast float %2240, 5.000000e-01
  %2264 = fmul fast float %2239, 5.000000e-01
  %2265 = fadd fast float %2263, 5.000000e-01
  %2266 = fadd fast float %2264, 5.000000e-01
  %2267 = sitofp i32 %2206 to float
  %2268 = fsub fast float %2234, %2267
  %2269 = call float @dx.op.unary.f32(i32 27, float %2268)  ; Round_ni(value)
  %2270 = call float @dx.op.unary.f32(i32 22, float %2234)  ; Frc(value)
  %2271 = call float @dx.op.unary.f32(i32 22, float %2266)  ; Frc(value)
  %2272 = call float @dx.op.unary.f32(i32 22, float %2265)  ; Frc(value)
  %2273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %2271, float %2272, float %2269, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2274 = extractvalue %dx.types.ResRet.f32 %2273, 0
  %2275 = extractvalue %dx.types.ResRet.f32 %2273, 1
  %2276 = extractvalue %dx.types.ResRet.f32 %2273, 2
  %2277 = extractvalue %dx.types.ResRet.f32 %2273, 3
  %2278 = fcmp fast ogt float %2270, 0.000000e+00
  br i1 %2278, label %2279, label %2300, !dx.controlflow.hints !75

; <label>:2279                                    ; preds = %2262
  %2280 = fadd fast float %2269, 1.000000e+00
  %2281 = call float @dx.op.unary.f32(i32 22, float %2243)  ; Frc(value)
  %2282 = call float @dx.op.unary.f32(i32 22, float %2244)  ; Frc(value)
  %2283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %2281, float %2282, float %2280, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2284 = extractvalue %dx.types.ResRet.f32 %2283, 0
  %2285 = extractvalue %dx.types.ResRet.f32 %2283, 1
  %2286 = extractvalue %dx.types.ResRet.f32 %2283, 2
  %2287 = extractvalue %dx.types.ResRet.f32 %2283, 3
  %2288 = fsub fast float %2284, %2274
  %2289 = fsub fast float %2285, %2275
  %2290 = fsub fast float %2286, %2276
  %2291 = fsub fast float %2287, %2277
  %2292 = fmul fast float %2288, %2270
  %2293 = fmul fast float %2289, %2270
  %2294 = fmul fast float %2290, %2270
  %2295 = fmul fast float %2291, %2270
  %2296 = fadd fast float %2292, %2274
  %2297 = fadd fast float %2293, %2275
  %2298 = fadd fast float %2294, %2276
  %2299 = fadd fast float %2295, %2277
  br label %2300

; <label>:2300                                    ; preds = %2279, %2262
  %2301 = phi float [ %2296, %2279 ], [ %2274, %2262 ]
  %2302 = phi float [ %2297, %2279 ], [ %2275, %2262 ]
  %2303 = phi float [ %2298, %2279 ], [ %2276, %2262 ]
  %2304 = phi float [ %2299, %2279 ], [ %2277, %2262 ]
  %2305 = fadd fast float %2301, -5.000000e-01
  %2306 = fadd fast float %2303, -5.000000e-01
  %2307 = fmul fast float %2305, 0xBFD5555560000000
  %2308 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2306, float %2307)  ; FMad(a,b,c)
  %2309 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2302, float 0.000000e+00)  ; FMad(a,b,c)
  %2310 = fadd fast float %2309, %2304
  %2311 = fmul fast float %2305, -7.500000e-01
  %2312 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2306, float %2311)  ; FMad(a,b,c)
  %2313 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2302, float 0.000000e+00)  ; FMad(a,b,c)
  %2314 = fadd fast float %2313, %2304
  %2315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.f32 %2315, 0
  %2317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2318 = extractvalue %dx.types.CBufRet.f32 %2317, 0
  %2319 = extractvalue %dx.types.CBufRet.f32 %2317, 1
  %2320 = extractvalue %dx.types.CBufRet.f32 %2317, 2
  %2321 = extractvalue %dx.types.CBufRet.f32 %2317, 3
  %2322 = fsub fast float %2318, %2308
  %2323 = fsub fast float %2319, %2310
  %2324 = fsub fast float %2320, %2312
  %2325 = fsub fast float %2321, %2314
  %2326 = fmul fast float %2322, %2316
  %2327 = fmul fast float %2323, %2316
  %2328 = fmul fast float %2324, %2316
  %2329 = fmul fast float %2325, %2316
  %2330 = fadd fast float %2326, %2308
  %2331 = fadd fast float %2327, %2310
  %2332 = fadd fast float %2328, %2312
  %2333 = fadd fast float %2329, %2314
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = and i32 %2335, 536870911
  %2337 = uitofp i32 %2336 to float
  %2338 = fmul fast float %2337, %2184
  %2339 = fmul fast float %2337, %2188
  %2340 = fptoui float %2338 to i32
  %2341 = fptoui float %2339 to i32
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 31
  %2345 = lshr i32 %2340, %2344
  %2346 = lshr i32 %2341, %2344
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, 31
  %2350 = shl i32 1, %2349
  %2351 = call i32 @dx.op.binary.i32(i32 40, i32 %2350, i32 4)  ; UMin(a,b)
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = extractvalue %dx.types.ResRet.i32 %2352, 1
  %2355 = icmp eq i32 %2351, 0
  br i1 %2355, label %2397, label %2356

; <label>:2356                                    ; preds = %2300
  br label %2357

; <label>:2357                                    ; preds = %2385, %2356
  %2358 = phi i32 [ %2388, %2385 ], [ 0, %2356 ]
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = lshr i32 %2360, 16
  %2362 = and i32 %2361, 31
  %2363 = shl i32 %2346, %2362
  %2364 = add i32 %2363, %2345
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 31
  %2368 = shl i32 %2364, %2367
  %2369 = add i32 %2368, %2358
  %2370 = shl i32 %2369, 2
  %2371 = add i32 %2370, 32
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = icmp slt i32 %2373, 0
  %2375 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2358
  %2376 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2358
  %2377 = bitcast float* %2375 to i32*
  %2378 = bitcast float* %2376 to i32*
  br i1 %2374, label %2379, label %2385

; <label>:2379                                    ; preds = %2357
  %2380 = and i32 %2373, 1073741823
  %2381 = add nuw nsw i32 %2380, 20
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = extractvalue %dx.types.ResRet.i32 %2382, 1
  br label %2385

; <label>:2385                                    ; preds = %2379, %2357
  %2386 = phi i32 [ %2383, %2379 ], [ %2353, %2357 ]
  %2387 = phi i32 [ %2384, %2379 ], [ %2354, %2357 ]
  store i32 %2386, i32* %2377, align 4
  store i32 %2387, i32* %2378, align 4
  %2388 = add nuw i32 %2358, 1
  %2389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.i32 %2389, 2
  %2391 = icmp eq i32 %2390, 0
  %2392 = icmp ugt i32 %2373, -1073741825
  %2393 = and i1 %2392, %2391
  %2394 = icmp ult i32 %2388, %2351
  %2395 = and i1 %2393, %2394
  br i1 %2395, label %2357, label %2396

; <label>:2396                                    ; preds = %2385
  br label %2397

; <label>:2397                                    ; preds = %2396, %2300
  %2398 = phi i32 [ 0, %2300 ], [ %2388, %2396 ]
  %2399 = extractvalue %dx.types.CBufRet.f32 %2162, 2
  %2400 = fptoui float %2399 to i32
  %2401 = icmp eq i32 %2400, 0
  br i1 %2401, label %2453, label %2402

; <label>:2402                                    ; preds = %2397
  br label %2403

; <label>:2403                                    ; preds = %2448, %2402
  %2404 = phi i32 [ %2449, %2448 ], [ %2398, %2402 ]
  %2405 = phi i32 [ %2450, %2448 ], [ 0, %2402 ]
  %2406 = lshr i32 %2405, 2
  %2407 = and i32 %2405, 3
  %2408 = add nuw nsw i32 %2406, 83
  %2409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 %2408)  ; CBufferLoadLegacy(handle,regIndex)
  %2410 = extractvalue %dx.types.CBufRet.i32 %2409, 0
  %2411 = extractvalue %dx.types.CBufRet.i32 %2409, 1
  %2412 = extractvalue %dx.types.CBufRet.i32 %2409, 2
  %2413 = extractvalue %dx.types.CBufRet.i32 %2409, 3
  %2414 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %2410, i32* %2414, align 4
  %2415 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %2411, i32* %2415, align 4
  %2416 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %2412, i32* %2416, align 4
  %2417 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %2413, i32* %2417, align 4
  %2418 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 %2407
  %2419 = load i32, i32* %2418, align 4, !tbaa !76, !noalias !80
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = lshr i32 %2421, 16
  %2423 = and i32 %2422, 31
  %2424 = shl i32 %2346, %2423
  %2425 = add i32 %2424, %2345
  %2426 = shl i32 %2425, 2
  %2427 = add i32 %2426, %2419
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2427, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = icmp eq i32 %2429, 0
  br i1 %2430, label %2448, label %2431

; <label>:2431                                    ; preds = %2403
  %2432 = icmp slt i32 %2429, 0
  %2433 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2404
  %2434 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2404
  %2435 = bitcast float* %2433 to i32*
  %2436 = bitcast float* %2434 to i32*
  br i1 %2432, label %2437, label %2444

; <label>:2437                                    ; preds = %2431
  %2438 = and i32 %2429, 1073741823
  %2439 = add i32 %2419, 20
  %2440 = add i32 %2439, %2438
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = extractvalue %dx.types.ResRet.i32 %2441, 1
  br label %2444

; <label>:2444                                    ; preds = %2437, %2431
  %2445 = phi i32 [ %2442, %2437 ], [ %2353, %2431 ]
  %2446 = phi i32 [ %2443, %2437 ], [ %2354, %2431 ]
  store i32 %2445, i32* %2435, align 4
  store i32 %2446, i32* %2436, align 4
  %2447 = add i32 %2404, 1
  br label %2448

; <label>:2448                                    ; preds = %2444, %2403
  %2449 = phi i32 [ %2404, %2403 ], [ %2447, %2444 ]
  %2450 = add nuw i32 %2405, 1
  %2451 = icmp eq i32 %2450, %2400
  br i1 %2451, label %2452, label %2403

; <label>:2452                                    ; preds = %2448
  br label %2453

; <label>:2453                                    ; preds = %2452, %2397
  %2454 = phi i32 [ %2398, %2397 ], [ %2449, %2452 ]
  %2455 = icmp eq i32 %2454, 1
  %2456 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 0
  %2457 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 0
  br i1 %2455, label %2458, label %2461

; <label>:2458                                    ; preds = %2453
  %2459 = load float, float* %2456, align 4
  %2460 = load float, float* %2457, align 4
  br label %2488

; <label>:2461                                    ; preds = %2453
  %2462 = load float, float* %2456, align 4
  %2463 = load float, float* %2457, align 4
  %2464 = fdiv fast float 1.000000e+00, %2463
  %2465 = fsub fast float %2462, %2464
  %2466 = icmp ugt i32 %2454, 1
  br i1 %2466, label %2467, label %2483

; <label>:2467                                    ; preds = %2461
  br label %2468

; <label>:2468                                    ; preds = %2468, %2467
  %2469 = phi float [ %2478, %2468 ], [ %2465, %2467 ]
  %2470 = phi float [ %2479, %2468 ], [ %2462, %2467 ]
  %2471 = phi i32 [ %2480, %2468 ], [ 1, %2467 ]
  %2472 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2471
  %2473 = load float, float* %2472, align 4
  %2474 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2471
  %2475 = load float, float* %2474, align 4
  %2476 = fdiv fast float 1.000000e+00, %2475
  %2477 = fsub fast float %2473, %2476
  %2478 = call float @dx.op.binary.f32(i32 36, float %2469, float %2477)  ; FMin(a,b)
  %2479 = call float @dx.op.binary.f32(i32 35, float %2470, float %2473)  ; FMax(a,b)
  %2480 = add nuw i32 %2471, 1
  %2481 = icmp eq i32 %2480, %2454
  br i1 %2481, label %2482, label %2468

; <label>:2482                                    ; preds = %2468
  br label %2483

; <label>:2483                                    ; preds = %2482, %2461
  %2484 = phi float [ %2465, %2461 ], [ %2478, %2482 ]
  %2485 = phi float [ %2462, %2461 ], [ %2479, %2482 ]
  %2486 = fsub fast float %2485, %2484
  %2487 = fdiv fast float 1.000000e+00, %2486
  br label %2488

; <label>:2488                                    ; preds = %2483, %2458
  %2489 = phi float [ %2459, %2458 ], [ %2485, %2483 ]
  %2490 = phi float [ %2460, %2458 ], [ %2487, %2483 ]
  %2491 = fadd fast float %2192, %2489
  %2492 = fmul fast float %2491, %2490
  %2493 = call float @dx.op.unary.f32(i32 7, float %2492)  ; Saturate(value)
  %2494 = fmul fast float %2493, 2.000000e+00
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = fmul fast float %2330, %2330
  %2497 = fsub fast float %2331, %2496
  %2498 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2497)  ; FMax(a,b)
  %2499 = fdiv fast float 1.000000e+00, %2498
  %2500 = fmul fast float %2331, %2330
  %2501 = fsub fast float %2332, %2500
  %2502 = fsub fast float %2495, %2330
  %2503 = fmul fast float %2495, %2495
  %2504 = fsub fast float %2503, %2331
  %2505 = fmul fast float %2499, %2501
  %2506 = fmul fast float %2505, %2502
  %2507 = fsub fast float %2504, %2506
  %2508 = fmul fast float %2331, %2331
  %2509 = fsub fast float %2333, %2508
  %2510 = fmul fast float %2501, %2501
  %2511 = fmul fast float %2510, %2499
  %2512 = fsub fast float %2509, %2511
  %2513 = fdiv fast float %2507, %2512
  %2514 = fmul fast float %2513, %2501
  %2515 = fsub fast float %2502, %2514
  %2516 = fmul fast float %2515, %2499
  %2517 = fmul fast float %2516, %2330
  %2518 = fsub fast float 1.000000e+00, %2517
  %2519 = fmul fast float %2513, %2331
  %2520 = fsub fast float %2518, %2519
  %2521 = fmul fast float %2516, %2516
  %2522 = fmul fast float %2513, 4.000000e+00
  %2523 = fmul fast float %2522, %2520
  %2524 = fsub fast float %2521, %2523
  %2525 = call float @dx.op.unary.f32(i32 24, float %2524)  ; Sqrt(value)
  %2526 = fcmp fast oge float %2516, 0.000000e+00
  %2527 = fsub fast float -0.000000e+00, %2525
  %2528 = select i1 %2526, float %2527, float %2525
  %2529 = fsub fast float %2528, %2516
  %2530 = fdiv fast float %2529, %2513
  %2531 = fdiv fast float %2520, %2529
  %2532 = fmul fast float %2530, 5.000000e-01
  %2533 = fmul fast float %2531, 2.000000e+00
  %2534 = select i1 %2526, float %2532, float %2533
  %2535 = select i1 %2526, float %2533, float %2532
  %2536 = call float @dx.op.binary.f32(i32 35, float %2534, float %2535)  ; FMax(a,b)
  %2537 = call float @dx.op.binary.f32(i32 36, float %2534, float %2535)  ; FMin(a,b)
  %2538 = fcmp fast ogt float %2495, %2536
  %2539 = fsub fast float %2495, %2537
  %2540 = fsub fast float %2495, %2536
  %2541 = fsub fast float %2536, %2537
  %2542 = select i1 %2538, float %2540, float %2541
  %2543 = fmul float %2539, %2542
  %2544 = select i1 %2538, float %2537, float %2495
  %2545 = fcmp fast ogt float %2495, %2537
  %2546 = fmul fast float %2544, %2536
  %2547 = fadd fast float %2544, %2536
  %2548 = fmul fast float %2547, %2330
  %2549 = fadd fast float %2546, %2331
  %2550 = fsub fast float %2549, %2548
  %2551 = fdiv fast float %2550, %2543
  %2552 = select i1 %2545, float %2551, float 0.000000e+00
  %2553 = fsub fast float 1.000000e+00, %2552
  %2554 = select i1 %2538, float %2553, float %2552
  %2555 = call float @dx.op.unary.f32(i32 7, float %2554)  ; Saturate(value)
  %2556 = extractvalue %dx.types.CBufRet.f32 %2315, 3
  %2557 = fmul fast float %2556, %2555
  %2558 = fsub fast float 1.000000e+00, %2557
  br label %2559

; <label>:2559                                    ; preds = %2488, %2200, %2165, %2161, %2127
  %2560 = phi float [ 1.000000e+00, %2127 ], [ %2558, %2488 ], [ 1.000000e+00, %2165 ], [ 1.000000e+00, %2200 ], [ 1.000000e+00, %2161 ]
  %2561 = fcmp fast ogt float %2157, 0.000000e+00
  br i1 %2561, label %2562, label %2568, !dx.controlflow.hints !89

; <label>:2562                                    ; preds = %2559
  %2563 = fadd fast float %2070, %2044
  %2564 = call float @dx.op.binary.f32(i32 35, float %2563, float 0.000000e+00)  ; FMax(a,b)
  %2565 = fadd fast float %2564, 0x3F10000000000000
  %2566 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %33, float %2059, float %2060, float undef, float undef, i32 0, i32 0, i32 undef, float %2565)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2567 = extractvalue %dx.types.ResRet.f32 %2566, 0
  br label %2568

; <label>:2568                                    ; preds = %2562, %2559
  %2569 = phi float [ %2567, %2562 ], [ 1.000000e+00, %2559 ]
  %2570 = fcmp fast ogt float %2155, 0.000000e+00
  br i1 %2570, label %2571, label %2577, !dx.controlflow.hints !90

; <label>:2571                                    ; preds = %2568
  %2572 = fadd fast float %2100, %2044
  %2573 = call float @dx.op.binary.f32(i32 35, float %2572, float 0.000000e+00)  ; FMax(a,b)
  %2574 = fadd fast float %2573, 0x3F10000000000000
  %2575 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %33, float %2051, float %2052, float undef, float undef, i32 0, i32 0, i32 undef, float %2574)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2576 = extractvalue %dx.types.ResRet.f32 %2575, 0
  br label %2577

; <label>:2577                                    ; preds = %2571, %2568
  %2578 = phi float [ %2576, %2571 ], [ 1.000000e+00, %2568 ]
  %2579 = fcmp fast ogt float %2154, 0.000000e+00
  br i1 %2579, label %2580, label %2587, !dx.controlflow.hints !91

; <label>:2580                                    ; preds = %2577
  %2581 = extractvalue %dx.types.CBufRet.f32 %2069, 0
  %2582 = fadd fast float %2581, %2044
  %2583 = call float @dx.op.binary.f32(i32 35, float %2582, float 0.000000e+00)  ; FMax(a,b)
  %2584 = fadd fast float %2583, 0x3F10000000000000
  %2585 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %33, float %2036, float %2040, float undef, float undef, i32 0, i32 0, i32 undef, float %2584)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2586 = extractvalue %dx.types.ResRet.f32 %2585, 0
  br label %2587

; <label>:2587                                    ; preds = %2580, %2577
  %2588 = phi float [ %2586, %2580 ], [ 1.000000e+00, %2577 ]
  %2589 = fsub fast float %2569, %2560
  %2590 = fmul fast float %2589, %2098
  %2591 = fadd fast float %2590, %2560
  %2592 = fsub fast float %2578, %2591
  %2593 = fmul fast float %2592, %2128
  %2594 = fadd fast float %2593, %2591
  %2595 = fsub fast float %2588, %2594
  %2596 = fmul fast float %2595, %2154
  %2597 = fadd fast float %2596, %2594
  %2598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.f32 %2598, 2
  %2600 = fcmp fast ogt float %2599, 0.000000e+00
  br i1 %2600, label %2601, label %2641, !dx.controlflow.hints !92

; <label>:2601                                    ; preds = %2587
  %2602 = fcmp fast ugt float %2599, 0.000000e+00
  br i1 %2602, label %2603, label %2638

; <label>:2603                                    ; preds = %2601
  %2604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2604, 0
  %2606 = extractvalue %dx.types.CBufRet.f32 %2604, 1
  %2607 = extractvalue %dx.types.CBufRet.f32 %2604, 2
  %2608 = extractvalue %dx.types.CBufRet.f32 %2604, 3
  %2609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.f32 %2609, 0
  %2611 = extractvalue %dx.types.CBufRet.f32 %2609, 1
  %2612 = extractvalue %dx.types.CBufRet.f32 %2609, 2
  %2613 = extractvalue %dx.types.CBufRet.f32 %2609, 3
  %2614 = extractvalue %dx.types.CBufRet.f32 %2598, 0
  %2615 = extractvalue %dx.types.CBufRet.f32 %2598, 1
  %2616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2617 = extractvalue %dx.types.CBufRet.f32 %2616, 0
  %2618 = extractvalue %dx.types.CBufRet.f32 %2616, 1
  %2619 = extractvalue %dx.types.CBufRet.f32 %2616, 2
  %2620 = fadd fast float %2617, %2013
  %2621 = fadd fast float %2618, %2014
  %2622 = fadd fast float %2619, %2015
  %2623 = fmul fast float %2620, %2605
  %2624 = call float @dx.op.tertiary.f32(i32 46, float %2606, float %2621, float %2623)  ; FMad(a,b,c)
  %2625 = call float @dx.op.tertiary.f32(i32 46, float %2607, float %2622, float %2624)  ; FMad(a,b,c)
  %2626 = fadd fast float %2625, %2608
  %2627 = fmul fast float %2620, %2610
  %2628 = call float @dx.op.tertiary.f32(i32 46, float %2611, float %2621, float %2627)  ; FMad(a,b,c)
  %2629 = call float @dx.op.tertiary.f32(i32 46, float %2612, float %2622, float %2628)  ; FMad(a,b,c)
  %2630 = fadd fast float %2629, %2613
  %2631 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %28, float %2626, float %2630, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2632 = extractvalue %dx.types.ResRet.f32 %2631, 0
  %2633 = fmul fast float %2632, %2615
  %2634 = fadd fast float %2633, %2614
  %2635 = call float @dx.op.unary.f32(i32 7, float %2634)  ; Saturate(value)
  %2636 = fmul fast float %2635, %2599
  %2637 = fsub fast float 1.000000e+00, %2636
  br label %2638

; <label>:2638                                    ; preds = %2603, %2601
  %2639 = phi float [ %2637, %2603 ], [ 1.000000e+00, %2601 ]
  %2640 = fmul fast float %2639, %2597
  br label %2641

; <label>:2641                                    ; preds = %2638, %2587, %1993
  %2642 = phi float [ 1.000000e+00, %1993 ], [ %2640, %2638 ], [ %2597, %2587 ]
  %2643 = call float @dx.op.binary.f32(i32 36, float %2642, float %2642)  ; FMin(a,b)
  %2644 = call float @dx.op.binary.f32(i32 36, float %2642, float %2643)  ; FMin(a,b)
  %2645 = fcmp fast ogt float %2644, 0.000000e+00
  br i1 %2645, label %2646, label %2807, !dx.controlflow.hints !93

; <label>:2646                                    ; preds = %2641
  %2647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2648 = extractvalue %dx.types.CBufRet.f32 %2647, 0
  %2649 = extractvalue %dx.types.CBufRet.f32 %2647, 1
  %2650 = extractvalue %dx.types.CBufRet.f32 %2647, 2
  %2651 = extractvalue %dx.types.CBufRet.f32 %2647, 3
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 0
  %2654 = extractvalue %dx.types.CBufRet.f32 %2652, 1
  %2655 = extractvalue %dx.types.CBufRet.f32 %2652, 2
  %2656 = extractvalue %dx.types.CBufRet.f32 %2652, 3
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 0
  %2659 = extractvalue %dx.types.CBufRet.f32 %2657, 1
  %2660 = extractvalue %dx.types.CBufRet.f32 %2657, 2
  %2661 = extractvalue %dx.types.CBufRet.f32 %2657, 3
  %2662 = fmul fast float %2648, %2013
  %2663 = call float @dx.op.tertiary.f32(i32 46, float %2014, float %2649, float %2662)  ; FMad(a,b,c)
  %2664 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2650, float %2663)  ; FMad(a,b,c)
  %2665 = fadd fast float %2664, %2651
  %2666 = fmul fast float %2653, %2013
  %2667 = call float @dx.op.tertiary.f32(i32 46, float %2014, float %2654, float %2666)  ; FMad(a,b,c)
  %2668 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2655, float %2667)  ; FMad(a,b,c)
  %2669 = fadd fast float %2668, %2656
  %2670 = fmul fast float %2658, %2013
  %2671 = call float @dx.op.tertiary.f32(i32 46, float %2014, float %2659, float %2670)  ; FMad(a,b,c)
  %2672 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2660, float %2671)  ; FMad(a,b,c)
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 0
  %2675 = extractvalue %dx.types.CBufRet.f32 %2673, 1
  %2676 = extractvalue %dx.types.CBufRet.f32 %2673, 3
  %2677 = fmul fast float %2676, %2665
  %2678 = fmul fast float %2676, %2669
  %2679 = fadd fast float %2677, %2674
  %2680 = fadd fast float %2678, %2675
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2684 = fsub fast float %2679, %2682
  %2685 = fsub fast float %2680, %2683
  %2686 = fcmp fast olt float %2684, 0.000000e+00
  %2687 = fcmp fast olt float %2685, 0.000000e+00
  %2688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2689 = extractvalue %dx.types.CBufRet.f32 %2688, 0
  %2690 = extractvalue %dx.types.CBufRet.f32 %2688, 1
  %2691 = extractvalue %dx.types.CBufRet.f32 %2688, 2
  %2692 = extractvalue %dx.types.CBufRet.f32 %2688, 3
  %2693 = select i1 %2686, float %2689, float %2691
  %2694 = select i1 %2687, float %2690, float %2692
  %2695 = fmul fast float %2693, %2684
  %2696 = fmul fast float %2694, %2685
  %2697 = call float @dx.op.unary.f32(i32 6, float %2695)  ; FAbs(value)
  %2698 = call float @dx.op.unary.f32(i32 6, float %2696)  ; FAbs(value)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2008, 0
  %2700 = call float @dx.op.binary.f32(i32 35, float %2697, float %2698)  ; FMax(a,b)
  %2701 = fsub fast float %2699, %2700
  %2702 = call float @dx.op.unary.f32(i32 7, float %2701)  ; Saturate(value)
  %2703 = fcmp fast ogt float %2702, 0.000000e+00
  br i1 %2703, label %2704, label %2745, !dx.controlflow.hints !94

; <label>:2704                                    ; preds = %2646
  %2705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %31, float %2679, float %2680, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2706 = extractvalue %dx.types.ResRet.f32 %2705, 1
  %2707 = fcmp fast ogt float %2706, 0.000000e+00
  br i1 %2707, label %2708, label %2740

; <label>:2708                                    ; preds = %2704
  %2709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %31, float %2679, float %2680, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2710 = extractvalue %dx.types.ResRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.ResRet.f32 %2709, 1
  %2712 = extractvalue %dx.types.ResRet.f32 %2709, 2
  %2713 = extractvalue %dx.types.ResRet.f32 %2709, 3
  %2714 = fsub fast float 1.000000e+00, %2661
  %2715 = fsub fast float %2714, %2672
  %2716 = fmul fast float %2715, 0x400921FB60000000
  %2717 = fadd fast float %2716, 0x3FF921FB60000000
  %2718 = call float @dx.op.unary.f32(i32 13, float %2717)  ; Sin(value)
  %2719 = fadd fast float %2718, -1.000000e+00
  %2720 = fmul fast float %2719, 0x3FD45F3060000000
  %2721 = fmul fast float %2715, 0x401921FB60000000
  %2722 = fadd fast float %2721, 0x400921FB60000000
  %2723 = call float @dx.op.unary.f32(i32 13, float %2722)  ; Sin(value)
  %2724 = fadd fast float %2723, 0x3E7777A5C0000000
  %2725 = fmul fast float %2724, 0x3FC45F3060000000
  %2726 = fmul fast float %2715, 0x4022D97C80000000
  %2727 = fadd fast float %2726, 0x4012D97C80000000
  %2728 = call float @dx.op.unary.f32(i32 13, float %2727)  ; Sin(value)
  %2729 = fadd fast float %2728, 1.000000e+00
  %2730 = fmul fast float %2729, 0x3FBB2995E0000000
  %2731 = fmul fast float %2715, 0x402921FB60000000
  %2732 = fadd fast float %2731, 0x401921FB60000000
  %2733 = call float @dx.op.unary.f32(i32 13, float %2732)  ; Sin(value)
  %2734 = fadd fast float %2733, 0xBE8777A5C0000000
  %2735 = fmul fast float %2734, 0x3FB45F3060000000
  %2736 = call float @dx.op.dot4.f32(i32 56, float %2710, float %2711, float %2712, float %2713, float %2720, float %2725, float %2730, float %2735)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2737 = fmul fast float %2736, 0xBFF7154760000000
  %2738 = call float @dx.op.unary.f32(i32 21, float %2737)  ; Exp(value)
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  br label %2740

; <label>:2740                                    ; preds = %2708, %2704
  %2741 = phi float [ %2739, %2708 ], [ 1.000000e+00, %2704 ]
  %2742 = fadd fast float %2741, -1.000000e+00
  %2743 = fmul fast float %2742, %2702
  %2744 = fadd fast float %2743, 1.000000e+00
  br label %2745

; <label>:2745                                    ; preds = %2740, %2646
  %2746 = phi float [ %2744, %2740 ], [ 1.000000e+00, %2646 ]
  %2747 = fmul fast float %2746, %2642
  %2748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2748, 0
  %2750 = extractvalue %dx.types.CBufRet.f32 %2748, 1
  %2751 = extractvalue %dx.types.CBufRet.f32 %2748, 2
  %2752 = fadd fast float %2749, %123
  %2753 = fadd fast float %2750, %124
  %2754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2754, 1
  %2756 = fsub fast float -0.000000e+00, %2752
  %2757 = fsub fast float -0.000000e+00, %2753
  %2758 = fsub fast float -0.000000e+00, %125
  %2759 = fsub fast float %2758, %2751
  %2760 = fadd fast float %2759, %2755
  %2761 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2756, float %2757, float %2760)  ; Dot3(ax,ay,az,bx,by,bz)
  %2762 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1994, float %1995, float %1996)  ; Dot3(ax,ay,az,bx,by,bz)
  %2763 = fdiv fast float 1.000000e+00, %2762
  %2764 = fmul fast float %2763, %2761
  %2765 = fmul fast float %1994, %2764
  %2766 = fmul fast float %1995, %2764
  %2767 = fadd fast float %2765, %2752
  %2768 = fadd fast float %2766, %2753
  %2769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2770 = extractvalue %dx.types.CBufRet.f32 %2769, 0
  %2771 = extractvalue %dx.types.CBufRet.f32 %2769, 1
  %2772 = fsub fast float %2767, %2770
  %2773 = fsub fast float %2768, %2771
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2776 = extractvalue %dx.types.CBufRet.f32 %2774, 3
  %2777 = fmul fast float %2772, %2775
  %2778 = fmul fast float %2773, %2776
  %2779 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.i32 %2779, 3
  %2781 = icmp eq i32 %2780, 0
  br i1 %2781, label %2787, label %2782

; <label>:2782                                    ; preds = %2745
  %2783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %2777, float %2778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2784 = extractvalue %dx.types.ResRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.ResRet.f32 %2783, 1
  %2786 = extractvalue %dx.types.ResRet.f32 %2783, 2
  br label %2792

; <label>:2787                                    ; preds = %2745
  %2788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %2777, float %2778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2789 = extractvalue %dx.types.ResRet.f32 %2788, 0
  %2790 = extractvalue %dx.types.ResRet.f32 %2788, 1
  %2791 = extractvalue %dx.types.ResRet.f32 %2788, 2
  br label %2792

; <label>:2792                                    ; preds = %2787, %2782
  %2793 = phi float [ %2784, %2782 ], [ %2789, %2787 ]
  %2794 = phi float [ %2785, %2782 ], [ %2790, %2787 ]
  %2795 = phi float [ %2786, %2782 ], [ %2791, %2787 ]
  %2796 = extractvalue %dx.types.CBufRet.f32 %2754, 2
  %2797 = fmul fast float %2796, %2793
  %2798 = extractvalue %dx.types.CBufRet.f32 %2754, 0
  %2799 = fsub fast float %2764, %2798
  %2800 = fsub fast float %2799, %2797
  %2801 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2800)  ; FMax(a,b)
  %2802 = fmul fast float %2801, %2794
  %2803 = call float @dx.op.binary.f32(i32 36, float %2795, float %2802)  ; FMin(a,b)
  %2804 = fmul fast float %2803, 0xBFF7154760000000
  %2805 = call float @dx.op.unary.f32(i32 21, float %2804)  ; Exp(value)
  %2806 = fmul fast float %2747, %2805
  br label %2807

; <label>:2807                                    ; preds = %2792, %2641
  %2808 = phi float [ %2806, %2792 ], [ %2642, %2641 ]
  %2809 = call float @dx.op.binary.f32(i32 36, float %2808, float %2808)  ; FMin(a,b)
  %2810 = call float @dx.op.binary.f32(i32 36, float %2808, float %2809)  ; FMin(a,b)
  %2811 = fcmp fast ogt float %2810, 0.000000e+00
  br i1 %2811, label %2812, label %2999, !dx.controlflow.hints !95

; <label>:2812                                    ; preds = %2807
  %2813 = fmul fast float %2808, %2005
  %2814 = fmul fast float %2808, %2006
  %2815 = fmul fast float %2808, %2007
  %2816 = fsub fast float %1994, %1729
  %2817 = fsub fast float %1995, %1728
  %2818 = fsub fast float %1996, %1727
  %2819 = call float @dx.op.dot3.f32(i32 55, float %2816, float %2817, float %2818, float %2816, float %2817, float %2818)  ; Dot3(ax,ay,az,bx,by,bz)
  %2820 = call float @dx.op.unary.f32(i32 25, float %2819)  ; Rsqrt(value)
  %2821 = fmul fast float %2820, %2816
  %2822 = fmul fast float %2820, %2817
  %2823 = fmul fast float %2820, %2818
  %2824 = call float @dx.op.dot3.f32(i32 55, float %1994, float %1995, float %1996, float %1736, float %1737, float %1738)  ; Dot3(ax,ay,az,bx,by,bz)
  %2825 = call float @dx.op.dot3.f32(i32 55, float %1726, float %1725, float %1724, float %2821, float %2822, float %2823)  ; Dot3(ax,ay,az,bx,by,bz)
  %2826 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2827 = fmul fast float %2826, %2826
  %2828 = fmul fast float %2827, %1756
  %2829 = call float @dx.op.unary.f32(i32 7, float %2828)  ; Saturate(value)
  %2830 = fmul fast float %2829, %2826
  %2831 = call float @dx.op.dot3.f32(i32 55, float %1736, float %1737, float %1738, float %2821, float %2822, float %2823)  ; Dot3(ax,ay,az,bx,by,bz)
  %2832 = fmul fast float %2831, %2831
  %2833 = call float @dx.op.unary.f32(i32 6, float %2824)  ; FAbs(value)
  %2834 = fsub fast float 1.000000e+00, %1739
  %2835 = call float @dx.op.binary.f32(i32 35, float %2834, float 0x3F847AE140000000)  ; FMax(a,b)
  %2836 = fmul fast float %2835, %2835
  %2837 = fmul fast float %2836, %2836
  %2838 = fsub fast float 1.000000e+00, %2837
  %2839 = fmul fast float %1743, %1743
  %2840 = fmul fast float %2839, %2838
  %2841 = fadd fast float %2840, %2837
  %2842 = bitcast float %2841 to i32
  %2843 = ashr i32 %2842, 1
  %2844 = add nsw i32 %2843, 532487669
  %2845 = bitcast i32 %2844 to float
  %2846 = fadd fast float %2845, %1743
  %2847 = fmul fast float %2837, %2832
  %2848 = fsub fast float 1.000000e+00, %2832
  %2849 = fadd fast float %2848, %2847
  %2850 = fmul fast float %2833, %2833
  %2851 = fmul fast float %2850, %2838
  %2852 = fadd fast float %2851, %2837
  %2853 = bitcast float %2852 to i32
  %2854 = ashr i32 %2853, 1
  %2855 = add nsw i32 %2854, 532487669
  %2856 = bitcast i32 %2855 to float
  %2857 = fadd fast float %2856, %2833
  %2858 = fmul fast float %2849, %2849
  %2859 = fmul fast float %2858, %2846
  %2860 = fmul fast float %2859, %2857
  %2861 = fdiv fast float 0x3FF0A00000000000, %2860
  %2862 = fmul fast float %2861, %2837
  %2863 = fmul fast float %1856, 0x3FF9999980000000
  %2864 = fsub fast float 5.000000e+00, %2863
  %2865 = call float @dx.op.unary.f32(i32 6, float %2825)  ; FAbs(value)
  %2866 = fsub fast float 1.000000e+00, %2865
  %2867 = fmul fast float %1856, 0x41D9660740000000
  %2868 = fadd fast float %2867, 0xC1EFBF8940000000
  %2869 = bitcast float %2866 to i32
  %2870 = sitofp i32 %2869 to float
  %2871 = fmul fast float %2870, %2864
  %2872 = fadd fast float %2868, %2871
  %2873 = fptosi float %2872 to i32
  %2874 = bitcast i32 %2873 to float
  %2875 = fsub fast float 1.000000e+00, %1730
  %2876 = fsub fast float 1.000000e+00, %1731
  %2877 = fsub fast float 1.000000e+00, %1741
  %2878 = fmul fast float %2874, %2875
  %2879 = fmul fast float %2874, %2876
  %2880 = fmul fast float %2874, %2877
  %2881 = fadd fast float %2878, %1730
  %2882 = fadd fast float %2879, %1731
  %2883 = fadd fast float %2880, %1741
  br i1 %1879, label %2884, label %2907

; <label>:2884                                    ; preds = %2812
  %2885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1395, float %2865, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = extractvalue %dx.types.ResRet.f32 %2885, 1
  %2888 = extractvalue %dx.types.ResRet.f32 %2885, 2
  %2889 = fadd fast float %2886, -5.000000e-01
  %2890 = fadd fast float %2887, -5.000000e-01
  %2891 = fadd fast float %2888, -5.000000e-01
  %2892 = fmul fast float %1730, 4.000000e+00
  %2893 = fmul fast float %2892, %2875
  %2894 = fmul fast float %2893, %2889
  %2895 = fmul fast float %1731, 4.000000e+00
  %2896 = fmul fast float %2895, %2876
  %2897 = fmul fast float %2896, %2890
  %2898 = fmul fast float %1741, 4.000000e+00
  %2899 = fmul fast float %2898, %2877
  %2900 = fmul fast float %2899, %2891
  %2901 = fadd fast float %2894, %2881
  %2902 = fadd fast float %2897, %2882
  %2903 = fadd fast float %2900, %2883
  %2904 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  %2905 = call float @dx.op.unary.f32(i32 7, float %2902)  ; Saturate(value)
  %2906 = call float @dx.op.unary.f32(i32 7, float %2903)  ; Saturate(value)
  br label %2907

; <label>:2907                                    ; preds = %2884, %2812
  %2908 = phi float [ %2904, %2884 ], [ %2881, %2812 ]
  %2909 = phi float [ %2905, %2884 ], [ %2882, %2812 ]
  %2910 = phi float [ %2906, %2884 ], [ %2883, %2812 ]
  %2911 = fmul fast float %2824, 9.843750e-01
  %2912 = fadd fast float %2911, 7.812500e-03
  %2913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %2912, float %1860, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 0
  %2915 = extractvalue %dx.types.ResRet.f32 %2913, 1
  %2916 = extractvalue %dx.types.ResRet.f32 %2913, 2
  %2917 = extractvalue %dx.types.ResRet.f32 %2913, 3
  %2918 = fsub fast float %2916, %2914
  %2919 = fsub fast float %2917, %2915
  %2920 = fmul fast float %2918, %1866
  %2921 = fmul fast float %2919, %1866
  %2922 = fadd fast float %2920, %2914
  %2923 = fadd fast float %2921, %2915
  %2924 = fmul fast float %2922, %1730
  %2925 = fmul fast float %2922, %1731
  %2926 = fmul fast float %2922, %1741
  %2927 = fadd fast float %2924, %2923
  %2928 = fadd fast float %2925, %2923
  %2929 = fadd fast float %2926, %2923
  br i1 %1879, label %2930, label %2953

; <label>:2930                                    ; preds = %2907
  %2931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1395, float %2824, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2932 = extractvalue %dx.types.ResRet.f32 %2931, 0
  %2933 = extractvalue %dx.types.ResRet.f32 %2931, 1
  %2934 = extractvalue %dx.types.ResRet.f32 %2931, 2
  %2935 = fadd fast float %2932, -5.000000e-01
  %2936 = fadd fast float %2933, -5.000000e-01
  %2937 = fadd fast float %2934, -5.000000e-01
  %2938 = fmul fast float %1730, 4.000000e+00
  %2939 = fmul fast float %2938, %2875
  %2940 = fmul fast float %2939, %2935
  %2941 = fmul fast float %1731, 4.000000e+00
  %2942 = fmul fast float %2941, %2876
  %2943 = fmul fast float %2942, %2936
  %2944 = fmul fast float %1741, 4.000000e+00
  %2945 = fmul fast float %2944, %2877
  %2946 = fmul fast float %2945, %2937
  %2947 = fadd fast float %2940, %2927
  %2948 = fadd fast float %2943, %2928
  %2949 = fadd fast float %2946, %2929
  %2950 = call float @dx.op.unary.f32(i32 7, float %2947)  ; Saturate(value)
  %2951 = call float @dx.op.unary.f32(i32 7, float %2948)  ; Saturate(value)
  %2952 = call float @dx.op.unary.f32(i32 7, float %2949)  ; Saturate(value)
  br label %2953

; <label>:2953                                    ; preds = %2930, %2907
  %2954 = phi float [ %2950, %2930 ], [ %2927, %2907 ]
  %2955 = phi float [ %2951, %2930 ], [ %2928, %2907 ]
  %2956 = phi float [ %2952, %2930 ], [ %2929, %2907 ]
  %2957 = call float @dx.op.binary.f32(i32 35, float %2955, float %2956)  ; FMax(a,b)
  %2958 = call float @dx.op.binary.f32(i32 35, float %2954, float %2957)  ; FMax(a,b)
  %2959 = fsub fast float 1.000000e+00, %2958
  %2960 = fmul fast float %2908, %2862
  %2961 = fmul fast float %2909, %2862
  %2962 = fmul fast float %2910, %2862
  %2963 = fsub fast float 1.000000e+00, %2825
  %2964 = bitcast float %2963 to i32
  %2965 = sitofp i32 %2964 to float
  %2966 = fmul fast float %2965, 5.000000e+00
  %2967 = fadd fast float %2966, 0xC1EFBF8940000000
  %2968 = fptosi float %2967 to i32
  %2969 = bitcast i32 %2968 to float
  %2970 = fmul fast float %2969, %1394
  %2971 = fmul fast float %2959, %2970
  %2972 = fmul fast float %2971, %1929
  %2973 = fmul fast float %2971, %1930
  %2974 = fmul fast float %2971, %1931
  %2975 = fadd fast float %2972, %2960
  %2976 = fadd fast float %2973, %2961
  %2977 = fadd fast float %2974, %2962
  %2978 = fmul fast float %2830, %2813
  %2979 = fmul fast float %2978, %2959
  %2980 = fmul fast float %2830, %2814
  %2981 = fmul fast float %2980, %2959
  %2982 = fmul fast float %2830, %2815
  %2983 = fmul fast float %2982, %2959
  %2984 = fmul fast float %2978, %2975
  %2985 = fmul fast float %2980, %2976
  %2986 = fmul fast float %2982, %2977
  %2987 = fadd fast float %2979, %1913
  %2988 = fmul fast float %2987, %1415
  %2989 = fadd fast float %2981, %1914
  %2990 = fmul fast float %2989, %1415
  %2991 = fadd fast float %2983, %1915
  %2992 = fmul fast float %2991, %1415
  %2993 = fadd fast float %2984, %1982
  %2994 = fmul fast float %2993, %1415
  %2995 = fadd fast float %2985, %1985
  %2996 = fmul fast float %2995, %1415
  %2997 = fadd fast float %2986, %1988
  %2998 = fmul fast float %2997, %1415
  br label %2999

; <label>:2999                                    ; preds = %2953, %2807, %1906
  %3000 = phi float [ %1983, %1906 ], [ %1983, %2807 ], [ %2994, %2953 ]
  %3001 = phi float [ %1986, %1906 ], [ %1986, %2807 ], [ %2996, %2953 ]
  %3002 = phi float [ %1989, %1906 ], [ %1989, %2807 ], [ %2998, %2953 ]
  %3003 = phi float [ %1978, %1906 ], [ %1978, %2807 ], [ %2988, %2953 ]
  %3004 = phi float [ %1979, %1906 ], [ %1979, %2807 ], [ %2990, %2953 ]
  %3005 = phi float [ %1980, %1906 ], [ %1980, %2807 ], [ %2992, %2953 ]
  %3006 = fmul fast float %1415, %1415
  %3007 = fmul fast float %3006, %1955
  %3008 = fsub fast float -0.000000e+00, %3007
  %3009 = fmul fast float %3006, %1956
  %3010 = fsub fast float -0.000000e+00, %3009
  %3011 = fmul fast float %3006, %1957
  %3012 = fsub fast float -0.000000e+00, %3011
  %3013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3014 = extractvalue %dx.types.CBufRet.f32 %3013, 0
  %3015 = fmul fast float %3014, %1961
  %3016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3017 = extractvalue %dx.types.CBufRet.f32 %3016, 3
  %3018 = fsub fast float 1.000000e+00, %1390
  %3019 = call float @dx.op.unary.f32(i32 7, float %3018)  ; Saturate(value)
  %3020 = fadd fast float %3005, %1389
  %3021 = fmul fast float %3020, %1390
  %3022 = fmul fast float %3019, %3017
  %3023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %3024 = extractvalue %dx.types.CBufRet.f32 %3023, 3
  %3025 = fmul fast float %3003, %1733
  %3026 = fmul fast float %3004, %1734
  %3027 = fmul fast float %3005, %1735
  %3028 = fcmp fast ogt float %58, %145
  %3029 = and i1 %3028, %1462
  %3030 = or i1 %1541, %3029
  %3031 = icmp eq i32 %1461, 2
  %3032 = fcmp fast ole float %58, %145
  %3033 = and i1 %3032, %3031
  %3034 = or i1 %3033, %3030
  br i1 %3029, label %3035, label %3292

; <label>:3035                                    ; preds = %2999
  %3036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3037 = extractvalue %dx.types.CBufRet.f32 %3036, 2
  %3038 = extractvalue %dx.types.CBufRet.f32 %3036, 3
  %3039 = fmul fast float %3037, %67
  %3040 = fmul fast float %3038, %68
  %3041 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3042 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3043 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %3041, float %3042, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3044 = extractvalue %dx.types.ResRet.f32 %3043, 0
  %3045 = extractvalue %dx.types.ResRet.f32 %3043, 1
  %3046 = extractvalue %dx.types.ResRet.f32 %3043, 2
  %3047 = extractvalue %dx.types.ResRet.f32 %3043, 3
  %3048 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %3041, float %3042, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3049 = extractvalue %dx.types.ResRet.f32 %3048, 0
  %3050 = extractvalue %dx.types.ResRet.f32 %3048, 1
  %3051 = extractvalue %dx.types.ResRet.f32 %3048, 2
  %3052 = extractvalue %dx.types.ResRet.f32 %3048, 3
  %3053 = call float @dx.op.binary.f32(i32 35, float %3045, float %3046)  ; FMax(a,b)
  %3054 = call float @dx.op.binary.f32(i32 35, float %3044, float %3053)  ; FMax(a,b)
  %3055 = call float @dx.op.binary.f32(i32 35, float %3054, float %3047)  ; FMax(a,b)
  %3056 = call float @dx.op.binary.f32(i32 36, float %3050, float %3051)  ; FMin(a,b)
  %3057 = call float @dx.op.binary.f32(i32 36, float %3049, float %3056)  ; FMin(a,b)
  %3058 = call float @dx.op.binary.f32(i32 36, float %3057, float %3052)  ; FMin(a,b)
  %3059 = fmul fast float %3055, 2.550000e+02
  %3060 = fadd fast float %3059, 0x3F70101020000000
  %3061 = fptoui float %3060 to i32
  %3062 = fmul fast float %3058, 2.550000e+02
  %3063 = fadd fast float %3062, 0x3F70101020000000
  %3064 = fptoui float %3063 to i32
  %3065 = icmp ult i32 %3061, %3064
  br i1 %3065, label %3066, label %3234

; <label>:3066                                    ; preds = %3035
  %3067 = fcmp fast ogt float %57, 9.843750e-01
  %3068 = fadd fast float %58, -4.000000e+00
  %3069 = select i1 %3067, float -4.000000e+00, float %3068
  %3070 = call float @dx.op.binary.f32(i32 35, float %3069, float 0.000000e+00)  ; FMax(a,b)
  %3071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3072 = extractvalue %dx.types.CBufRet.f32 %3071, 0
  %3073 = fadd fast float %3072, %3070
  %3074 = extractvalue %dx.types.CBufRet.f32 %3071, 2
  %3075 = fmul fast float %3073, %3074
  %3076 = call float @dx.op.unary.f32(i32 23, float %3075)  ; Log(value)
  %3077 = extractvalue %dx.types.CBufRet.f32 %3071, 3
  %3078 = fmul fast float %3077, %3076
  %3079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3080 = extractvalue %dx.types.CBufRet.f32 %3079, 2
  %3081 = fmul fast float %3078, %3080
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  %3083 = uitofp i32 %3061 to float
  %3084 = uitofp i32 %3064 to float
  %3085 = fadd fast float %3083, 5.000000e-01
  %3086 = fadd fast float %3084, 5.000000e-01
  %3087 = fmul fast float %3080, %3085
  %3088 = fmul fast float %3080, %3086
  %3089 = fadd fast float %3087, 0x3F0FFB4800000000
  %3090 = fadd fast float %3088, 0xBF0FFB4800000000
  %3091 = call float @dx.op.binary.f32(i32 35, float %3082, float %3089)  ; FMax(a,b)
  %3092 = call float @dx.op.binary.f32(i32 36, float %3091, float %3090)  ; FMin(a,b)
  %3093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %3094 = extractvalue %dx.types.CBufRet.f32 %3093, 1
  %3095 = extractvalue %dx.types.CBufRet.f32 %3093, 2
  %3096 = extractvalue %dx.types.CBufRet.f32 %3093, 0
  %3097 = fmul fast float %3094, %3092
  %3098 = fadd fast float %3096, %3097
  %3099 = fadd fast float %3096, %3095
  %3100 = fsub fast float %3094, %3095
  %3101 = fadd fast float %3100, %3096
  %3102 = call float @dx.op.binary.f32(i32 35, float %3098, float %3099)  ; FMax(a,b)
  %3103 = call float @dx.op.binary.f32(i32 36, float %3102, float %3101)  ; FMin(a,b)
  %3104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %3041, float %3042, float %3103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3105 = extractvalue %dx.types.ResRet.f32 %3104, 0
  %3106 = extractvalue %dx.types.ResRet.f32 %3104, 1
  %3107 = extractvalue %dx.types.ResRet.f32 %3104, 2
  %3108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.i32 %3108, 0
  %3110 = extractvalue %dx.types.CBufRet.i32 %3108, 1
  %3111 = uitofp i32 %3109 to float
  %3112 = uitofp i32 %3110 to float
  %3113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %3114 = extractvalue %dx.types.CBufRet.f32 %3113, 0
  %3115 = extractvalue %dx.types.CBufRet.f32 %3113, 1
  %3116 = fmul fast float %3111, %3041
  %3117 = fmul fast float %3112, %3042
  %3118 = fadd fast float %3116, -5.000000e-01
  %3119 = fadd fast float %3117, -5.000000e-01
  %3120 = call float @dx.op.unary.f32(i32 22, float %3118)  ; Frc(value)
  %3121 = call float @dx.op.unary.f32(i32 22, float %3119)  ; Frc(value)
  %3122 = fmul fast float %3120, %3120
  %3123 = fmul fast float %3122, %3120
  %3124 = fsub fast float 3.000000e+00, %3120
  %3125 = fmul fast float %3122, %3124
  %3126 = fmul fast float %3120, 3.000000e+00
  %3127 = fmul fast float %3123, 3.000000e+00
  %3128 = fmul fast float %3122, 6.000000e+00
  %3129 = fsub fast float %3127, %3128
  %3130 = fadd fast float %3129, 4.000000e+00
  %3131 = fmul fast float %3130, 0x3FC5555560000000
  %3132 = fmul fast float %3123, -3.000000e+00
  %3133 = fadd fast float %3122, %3120
  %3134 = fmul fast float %3133, 3.000000e+00
  %3135 = fadd fast float %3132, 1.000000e+00
  %3136 = fadd fast float %3135, %3134
  %3137 = fmul fast float %3123, 0x3FC5555560000000
  %3138 = fmul fast float %3121, %3121
  %3139 = fmul fast float %3138, %3121
  %3140 = fsub fast float 3.000000e+00, %3121
  %3141 = fmul fast float %3138, %3140
  %3142 = fmul fast float %3121, 3.000000e+00
  %3143 = fmul fast float %3139, 3.000000e+00
  %3144 = fmul fast float %3138, 6.000000e+00
  %3145 = fsub fast float %3143, %3144
  %3146 = fadd fast float %3145, 4.000000e+00
  %3147 = fmul fast float %3146, 0x3FC5555560000000
  %3148 = fmul fast float %3139, -3.000000e+00
  %3149 = fadd fast float %3138, %3121
  %3150 = fmul fast float %3149, 3.000000e+00
  %3151 = fadd fast float %3148, 1.000000e+00
  %3152 = fadd fast float %3151, %3150
  %3153 = fmul fast float %3139, 0x3FC5555560000000
  %3154 = fadd fast float %3120, 1.000000e+00
  %3155 = fsub fast float 1.000000e+00, %3126
  %3156 = fadd fast float %3155, %3125
  %3157 = fadd fast float %3156, %3130
  %3158 = fmul fast float %3157, 0x3FC5555560000000
  %3159 = fdiv fast float %3131, %3158
  %3160 = fsub fast float %3154, %3159
  %3161 = fsub fast float 1.000000e+00, %3120
  %3162 = fadd fast float %3136, %3123
  %3163 = fmul fast float %3162, 0x3FC5555560000000
  %3164 = fdiv fast float %3137, %3163
  %3165 = fadd fast float %3161, %3164
  %3166 = fadd fast float %3121, 1.000000e+00
  %3167 = fsub fast float 1.000000e+00, %3142
  %3168 = fadd fast float %3167, %3141
  %3169 = fadd fast float %3168, %3146
  %3170 = fmul fast float %3169, 0x3FC5555560000000
  %3171 = fdiv fast float %3147, %3170
  %3172 = fsub fast float %3166, %3171
  %3173 = fsub fast float 1.000000e+00, %3121
  %3174 = fadd fast float %3152, %3139
  %3175 = fmul fast float %3174, 0x3FC5555560000000
  %3176 = fdiv fast float %3153, %3175
  %3177 = fadd fast float %3176, %3173
  %3178 = fmul fast float %3160, %3114
  %3179 = fsub fast float %3041, %3178
  %3180 = fmul fast float %3165, %3114
  %3181 = fadd fast float %3180, %3041
  %3182 = fmul fast float %3177, %3115
  %3183 = fadd fast float %3182, %3042
  %3184 = fmul fast float %3172, %3115
  %3185 = fsub fast float %3042, %3184
  %3186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3179, float %3185, float %3103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3187 = extractvalue %dx.types.ResRet.f32 %3186, 0
  %3188 = extractvalue %dx.types.ResRet.f32 %3186, 1
  %3189 = extractvalue %dx.types.ResRet.f32 %3186, 2
  %3190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3181, float %3185, float %3103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3191 = extractvalue %dx.types.ResRet.f32 %3190, 0
  %3192 = extractvalue %dx.types.ResRet.f32 %3190, 1
  %3193 = extractvalue %dx.types.ResRet.f32 %3190, 2
  %3194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3179, float %3183, float %3103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3195 = extractvalue %dx.types.ResRet.f32 %3194, 0
  %3196 = extractvalue %dx.types.ResRet.f32 %3194, 1
  %3197 = extractvalue %dx.types.ResRet.f32 %3194, 2
  %3198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3181, float %3183, float %3103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3199 = extractvalue %dx.types.ResRet.f32 %3198, 0
  %3200 = extractvalue %dx.types.ResRet.f32 %3198, 1
  %3201 = extractvalue %dx.types.ResRet.f32 %3198, 2
  %3202 = fsub fast float %3195, %3187
  %3203 = fsub fast float %3196, %3188
  %3204 = fsub fast float %3197, %3189
  %3205 = fmul fast float %3202, %3175
  %3206 = fmul fast float %3203, %3175
  %3207 = fmul fast float %3204, %3175
  %3208 = fadd fast float %3205, %3187
  %3209 = fadd fast float %3206, %3188
  %3210 = fadd fast float %3207, %3189
  %3211 = fsub fast float %3199, %3191
  %3212 = fsub fast float %3200, %3192
  %3213 = fsub fast float %3201, %3193
  %3214 = fmul fast float %3211, %3175
  %3215 = fmul fast float %3212, %3175
  %3216 = fmul fast float %3213, %3175
  %3217 = fsub fast float %3191, %3208
  %3218 = fadd fast float %3217, %3214
  %3219 = fsub fast float %3192, %3209
  %3220 = fadd fast float %3219, %3215
  %3221 = fsub fast float %3193, %3210
  %3222 = fadd fast float %3221, %3216
  %3223 = fmul fast float %3218, %3163
  %3224 = fmul fast float %3220, %3163
  %3225 = fmul fast float %3222, %3163
  %3226 = fadd fast float %3223, %3208
  %3227 = fadd fast float %3224, %3209
  %3228 = fadd fast float %3225, %3210
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3231 = fmul fast float %3226, %3230
  %3232 = fmul fast float %3227, %3230
  %3233 = fmul fast float %3228, %3230
  br label %3234

; <label>:3234                                    ; preds = %3066, %3035
  %3235 = phi float [ %3105, %3066 ], [ 1.000000e+00, %3035 ]
  %3236 = phi float [ %3106, %3066 ], [ 1.000000e+00, %3035 ]
  %3237 = phi float [ %3107, %3066 ], [ 1.000000e+00, %3035 ]
  %3238 = phi float [ %3231, %3066 ], [ 0.000000e+00, %3035 ]
  %3239 = phi float [ %3232, %3066 ], [ 0.000000e+00, %3035 ]
  %3240 = phi float [ %3233, %3066 ], [ 0.000000e+00, %3035 ]
  %3241 = fmul fast float %3238, %3008
  %3242 = fmul fast float %3239, %3010
  %3243 = fmul fast float %3240, %3012
  %3244 = call float @dx.op.dot3.f32(i32 55, float %3235, float %3236, float %3237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3245 = call float @dx.op.dot3.f32(i32 55, float %3241, float %3242, float %3243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = select i1 %184, float %3244, float %3235
  %3247 = select i1 %184, float %3244, float %3236
  %3248 = select i1 %184, float 1.000000e+00, float %3237
  %3249 = select i1 %184, float %3245, float %3241
  %3250 = select i1 %184, float 0.000000e+00, float %3242
  %3251 = select i1 %184, float 0.000000e+00, float %3243
  %3252 = fmul fast float %3246, %3025
  %3253 = fmul fast float %3247, %3026
  %3254 = fmul fast float %3248, %3027
  %3255 = fadd fast float %3252, %3249
  %3256 = fadd fast float %3253, %3250
  %3257 = fadd fast float %3251, %3254
  %3258 = fmul fast float %3246, %3000
  %3259 = fmul fast float %3247, %3001
  %3260 = fmul fast float %3248, %3002
  %3261 = fmul fast float %93, %3037
  %3262 = fmul fast float %95, %3038
  %3263 = fsub fast float 1.000000e+00, %3261
  %3264 = fsub fast float 1.000000e+00, %3262
  %3265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %3266 = extractvalue %dx.types.CBufRet.f32 %3265, 0
  %3267 = extractvalue %dx.types.CBufRet.f32 %3265, 1
  %3268 = extractvalue %dx.types.CBufRet.f32 %3265, 2
  %3269 = fmul fast float %3263, %3266
  %3270 = fmul fast float %3263, %3267
  %3271 = fmul fast float %3263, %3268
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 0
  %3274 = extractvalue %dx.types.CBufRet.f32 %3272, 1
  %3275 = extractvalue %dx.types.CBufRet.f32 %3272, 2
  %3276 = fmul fast float %3264, %3273
  %3277 = fmul fast float %3264, %3274
  %3278 = fmul fast float %3264, %3275
  %3279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3280 = extractvalue %dx.types.CBufRet.f32 %3279, 0
  %3281 = extractvalue %dx.types.CBufRet.f32 %3279, 1
  %3282 = extractvalue %dx.types.CBufRet.f32 %3279, 2
  %3283 = fadd fast float %3276, %3280
  %3284 = fadd fast float %3283, %3269
  %3285 = fadd fast float %3277, %3281
  %3286 = fadd fast float %3285, %3270
  %3287 = fadd fast float %3278, %3282
  %3288 = fadd fast float %3287, %3271
  %3289 = fmul fast float %3284, %145
  %3290 = fmul fast float %3286, %145
  %3291 = fmul fast float %3288, %145
  br label %3292

; <label>:3292                                    ; preds = %3234, %2999
  %3293 = phi float [ %3289, %3234 ], [ %123, %2999 ]
  %3294 = phi float [ %3290, %3234 ], [ %124, %2999 ]
  %3295 = phi float [ %3291, %3234 ], [ %125, %2999 ]
  %3296 = phi float [ %145, %3234 ], [ %58, %2999 ]
  %3297 = phi float [ %3255, %3234 ], [ %3025, %2999 ]
  %3298 = phi float [ %3256, %3234 ], [ %3026, %2999 ]
  %3299 = phi float [ %3257, %3234 ], [ %3027, %2999 ]
  %3300 = phi float [ %3258, %3234 ], [ %3000, %2999 ]
  %3301 = phi float [ %3259, %3234 ], [ %3001, %2999 ]
  %3302 = phi float [ %3260, %3234 ], [ %3002, %2999 ]
  %3303 = phi float [ %3235, %3234 ], [ 1.000000e+00, %2999 ]
  br i1 %3034, label %4458, label %3304

; <label>:3304                                    ; preds = %3292
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3307 = extractvalue %dx.types.CBufRet.f32 %3305, 1
  %3308 = extractvalue %dx.types.CBufRet.f32 %3305, 2
  %3309 = extractvalue %dx.types.CBufRet.f32 %3305, 3
  %3310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3311 = extractvalue %dx.types.CBufRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.CBufRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.CBufRet.f32 %3310, 2
  %3314 = extractvalue %dx.types.CBufRet.f32 %3310, 3
  %3315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.f32 %3315, 0
  %3317 = extractvalue %dx.types.CBufRet.f32 %3315, 1
  %3318 = extractvalue %dx.types.CBufRet.f32 %3315, 2
  %3319 = extractvalue %dx.types.CBufRet.f32 %3315, 3
  %3320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.f32 %3320, 0
  %3322 = extractvalue %dx.types.CBufRet.f32 %3320, 1
  %3323 = extractvalue %dx.types.CBufRet.f32 %3320, 2
  %3324 = extractvalue %dx.types.CBufRet.f32 %3320, 3
  %3325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3326 = extractvalue %dx.types.CBufRet.f32 %3325, 3
  %3327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3328 = extractvalue %dx.types.CBufRet.f32 %3327, 3
  %3329 = extractvalue %dx.types.CBufRet.f32 %3327, 0
  %3330 = extractvalue %dx.types.CBufRet.f32 %3327, 1
  %3331 = extractvalue %dx.types.CBufRet.f32 %3327, 2
  %3332 = fcmp fast olt float %3331, -5.000000e-01
  %3333 = call float @dx.op.dot3.f32(i32 55, float %3293, float %3294, float %3295, float %3293, float %3294, float %3295)  ; Dot3(ax,ay,az,bx,by,bz)
  %3334 = call float @dx.op.unary.f32(i32 25, float %3333)  ; Rsqrt(value)
  %3335 = fmul fast float %3334, %3333
  %3336 = fmul fast float %3334, %3293
  %3337 = fmul fast float %3334, %3294
  %3338 = fmul fast float %3334, %3295
  %3339 = fadd fast float %3335, %3309
  %3340 = call float @dx.op.dot3.f32(i32 55, float %3336, float %3337, float %3338, float %3306, float %3307, float %3308)  ; Dot3(ax,ay,az,bx,by,bz)
  %3341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3342 = extractvalue %dx.types.CBufRet.i32 %3341, 1
  %3343 = and i32 %3342, 1
  %3344 = icmp ne i32 %3343, 0
  %3345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.f32 %3345, 2
  %3347 = fcmp fast ogt float %3346, 0.000000e+00
  %3348 = and i1 %3344, %3347
  br i1 %3348, label %3349, label %3755, !dx.controlflow.hints !96

; <label>:3349                                    ; preds = %3304
  %3350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3351 = extractvalue %dx.types.CBufRet.f32 %3350, 3
  %3352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3353 = extractvalue %dx.types.CBufRet.f32 %3352, 2
  %3354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3355 = extractvalue %dx.types.CBufRet.f32 %3354, 2
  %3356 = fsub fast float %3353, %3355
  %3357 = and i32 %3342, 2
  %3358 = extractvalue %dx.types.CBufRet.i32 %3341, 0
  %3359 = call i32 @dx.op.binary.i32(i32 40, i32 %3358, i32 3)  ; UMin(a,b)
  %3360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3361 = extractvalue %dx.types.CBufRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.CBufRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.CBufRet.f32 %3354, 0
  %3364 = extractvalue %dx.types.CBufRet.f32 %3354, 1
  %3365 = fsub fast float %3361, %3363
  %3366 = fsub fast float %3362, %3364
  %3367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3368 = extractvalue %dx.types.CBufRet.f32 %3367, 0
  %3369 = fcmp fast ogt float %3368, 0.000000e+00
  %3370 = fsub fast float -0.000000e+00, %3365
  %3371 = fsub fast float -0.000000e+00, %3366
  %3372 = call float @dx.op.dot2.f32(i32 54, float %3336, float %3337, float %3336, float %3337)  ; Dot2(ax,ay,bx,by)
  %3373 = call float @dx.op.dot2.f32(i32 54, float %3336, float %3337, float %3370, float %3371)  ; Dot2(ax,ay,bx,by)
  %3374 = fmul fast float %3373, 2.000000e+00
  %3375 = call float @dx.op.dot2.f32(i32 54, float %3370, float %3371, float %3370, float %3371)  ; Dot2(ax,ay,bx,by)
  %3376 = fmul fast float %3368, %3368
  %3377 = fsub fast float %3375, %3376
  %3378 = fmul fast float %3374, %3374
  %3379 = fmul fast float %3372, 4.000000e+00
  %3380 = fmul fast float %3379, %3377
  %3381 = fsub fast float %3378, %3380
  %3382 = fcmp fast ogt float %3381, 0.000000e+00
  br i1 %3382, label %3383, label %3398

; <label>:3383                                    ; preds = %3349
  %3384 = fcmp fast ogt float %3374, 0.000000e+00
  %3385 = call float @dx.op.unary.f32(i32 24, float %3381)  ; Sqrt(value)
  %3386 = fsub fast float -0.000000e+00, %3385
  %3387 = select i1 %3384, float %3385, float %3386
  %3388 = fadd fast float %3387, %3374
  %3389 = fmul float %3388, -5.000000e-01
  %3390 = fdiv fast float %3389, %3372
  %3391 = call float @dx.op.binary.f32(i32 35, float %3390, float 0.000000e+00)  ; FMax(a,b)
  %3392 = call float @dx.op.binary.f32(i32 36, float %3335, float %3391)  ; FMin(a,b)
  %3393 = fdiv fast float %3377, %3389
  %3394 = call float @dx.op.binary.f32(i32 35, float %3393, float 0.000000e+00)  ; FMax(a,b)
  %3395 = call float @dx.op.binary.f32(i32 36, float %3335, float %3394)  ; FMin(a,b)
  %3396 = call float @dx.op.binary.f32(i32 36, float %3392, float %3395)  ; FMin(a,b)
  %3397 = call float @dx.op.binary.f32(i32 35, float %3392, float %3395)  ; FMax(a,b)
  br label %3398

; <label>:3398                                    ; preds = %3383, %3349
  %3399 = phi float [ %3397, %3383 ], [ -1.000000e+00, %3349 ]
  %3400 = phi float [ %3396, %3383 ], [ -1.000000e+00, %3349 ]
  %3401 = phi i1 [ true, %3383 ], [ false, %3349 ]
  %3402 = and i1 %3369, %3401
  br i1 %3402, label %3403, label %3405

; <label>:3403                                    ; preds = %3398
  %3404 = fcmp fast oeq float %3400, %3399
  br i1 %3404, label %3708, label %3406

; <label>:3405                                    ; preds = %3398
  br i1 %3369, label %3708, label %3406

; <label>:3406                                    ; preds = %3405, %3403
  %3407 = phi float [ %3335, %3405 ], [ %3399, %3403 ]
  %3408 = phi float [ 0.000000e+00, %3405 ], [ %3400, %3403 ]
  %3409 = icmp ne i32 %3357, 0
  %3410 = fmul fast float %3407, %3338
  %3411 = fadd fast float %3410, %3351
  %3412 = fmul fast float %3411, %3407
  %3413 = select i1 %3409, float 0.000000e+00, float %3412
  %3414 = fcmp fast oeq float %3338, 0.000000e+00
  %3415 = fdiv fast float %3356, %3338
  %3416 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3415)  ; FMax(a,b)
  %3417 = select i1 %3414, float %3407, float %3416
  %3418 = call float @dx.op.binary.f32(i32 36, float %3407, float %3417)  ; FMin(a,b)
  %3419 = fcmp fast ogt float %3338, 0.000000e+00
  %3420 = fcmp fast olt float %3356, 0.000000e+00
  br i1 %3419, label %3421, label %3478

; <label>:3421                                    ; preds = %3406
  %3422 = icmp eq i32 %3357, 0
  br i1 %3420, label %3423, label %3467

; <label>:3423                                    ; preds = %3421
  %3424 = select i1 %3422, float %3407, float 0.000000e+00
  %3425 = fsub fast float -0.000000e+00, %3424
  %3426 = call float @dx.op.unary.f32(i32 6, float %3425)  ; FAbs(value)
  %3427 = fmul fast float %3424, %3338
  %3428 = fadd fast float %3427, %3351
  %3429 = fmul fast float %3426, %3428
  %3430 = fsub fast float %3413, %3429
  %3431 = fsub fast float %3407, %3426
  %3432 = select i1 %3422, float %3431, float 0.000000e+00
  %3433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3434 = extractvalue %dx.types.CBufRet.f32 %3433, 0
  %3435 = extractvalue %dx.types.CBufRet.f32 %3433, 1
  %3436 = extractvalue %dx.types.CBufRet.f32 %3433, 2
  %3437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3438 = extractvalue %dx.types.CBufRet.f32 %3437, 0
  %3439 = extractvalue %dx.types.CBufRet.f32 %3437, 1
  %3440 = extractvalue %dx.types.CBufRet.f32 %3437, 2
  %3441 = extractvalue %dx.types.CBufRet.f32 %3437, 3
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 3
  %3444 = call float @dx.op.binary.f32(i32 36, float %3430, float %3443)  ; FMin(a,b)
  %3445 = fmul fast float %3441, %3432
  %3446 = call float @dx.op.unary.f32(i32 7, float %3445)  ; Saturate(value)
  %3447 = fsub fast float %3438, %3434
  %3448 = fsub fast float %3439, %3435
  %3449 = fsub fast float %3440, %3436
  %3450 = fmul fast float %3446, %3447
  %3451 = fmul fast float %3446, %3448
  %3452 = fmul fast float %3446, %3449
  %3453 = fadd fast float %3450, %3434
  %3454 = fadd fast float %3451, %3435
  %3455 = fadd fast float %3452, %3436
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 0
  %3458 = extractvalue %dx.types.CBufRet.f32 %3456, 1
  %3459 = fadd fast float %3458, %3457
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3461 = extractvalue %dx.types.CBufRet.f32 %3456, 2
  %3462 = extractvalue %dx.types.CBufRet.f32 %3456, 3
  %3463 = fadd fast float %3462, %3461
  %3464 = call float @dx.op.unary.f32(i32 7, float %3463)  ; Saturate(value)
  %3465 = fmul fast float %3460, %3444
  %3466 = fmul fast float %3465, %3464
  br label %3708

; <label>:3467                                    ; preds = %3421
  br i1 %3422, label %3468, label %3489

; <label>:3468                                    ; preds = %3467
  %3469 = call float @dx.op.binary.f32(i32 36, float %3418, float %3408)  ; FMin(a,b)
  %3470 = fsub fast float %3418, %3469
  %3471 = fsub fast float %3470, %3407
  %3472 = call float @dx.op.unary.f32(i32 6, float %3471)  ; FAbs(value)
  %3473 = fadd fast float %3470, %3407
  %3474 = fmul fast float %3473, %3338
  %3475 = fadd fast float %3474, %3351
  %3476 = fmul fast float %3475, %3472
  %3477 = fsub fast float %3413, %3476
  br label %3489

; <label>:3478                                    ; preds = %3406
  br i1 %3420, label %3479, label %3489

; <label>:3479                                    ; preds = %3478
  %3480 = call float @dx.op.binary.f32(i32 35, float %3408, float %3418)  ; FMax(a,b)
  %3481 = icmp eq i32 %3357, 0
  %3482 = select i1 %3481, float %3418, float 0.000000e+00
  %3483 = fsub fast float -0.000000e+00, %3482
  %3484 = call float @dx.op.unary.f32(i32 6, float %3483)  ; FAbs(value)
  %3485 = fmul fast float %3482, %3338
  %3486 = fadd fast float %3485, %3351
  %3487 = fmul fast float %3484, %3486
  %3488 = fsub fast float %3413, %3487
  br label %3489

; <label>:3489                                    ; preds = %3479, %3478, %3468, %3467
  %3490 = phi float [ %3408, %3467 ], [ %3408, %3468 ], [ %3480, %3479 ], [ %3408, %3478 ]
  %3491 = phi float [ 0.000000e+00, %3467 ], [ %3472, %3468 ], [ %3484, %3479 ], [ 0.000000e+00, %3478 ]
  %3492 = phi float [ %3413, %3467 ], [ %3477, %3468 ], [ %3488, %3479 ], [ %3413, %3478 ]
  %3493 = phi float [ %3418, %3467 ], [ %3418, %3468 ], [ %3407, %3479 ], [ %3407, %3478 ]
  %3494 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 0
  store float -1.000000e+00, float* %3494, align 4, !tbaa !97, !noalias !99
  %3495 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 1
  store float -1.000000e+00, float* %3495, align 4, !tbaa !97, !noalias !99
  %3496 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 2
  store float -1.000000e+00, float* %3496, align 4, !tbaa !97, !noalias !99
  %3497 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 0
  store float -1.000000e+00, float* %3497, align 4, !tbaa !97, !noalias !99
  %3498 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 1
  store float -1.000000e+00, float* %3498, align 4, !tbaa !97, !noalias !99
  %3499 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 2
  store float -1.000000e+00, float* %3499, align 4, !tbaa !97, !noalias !99
  %3500 = icmp sgt i32 %3359, 0
  br i1 %3500, label %3501, label %3562

; <label>:3501                                    ; preds = %3489
  br label %3502

; <label>:3502                                    ; preds = %3551, %3501
  %3503 = phi i32 [ %3552, %3551 ], [ 0, %3501 ]
  %3504 = phi i32 [ %3553, %3551 ], [ 0, %3501 ]
  %3505 = add nuw i32 %3504, 171
  %3506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %3505)  ; CBufferLoadLegacy(handle,regIndex)
  %3507 = extractvalue %dx.types.CBufRet.f32 %3506, 0
  %3508 = extractvalue %dx.types.CBufRet.f32 %3506, 1
  %3509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3510 = extractvalue %dx.types.CBufRet.f32 %3509, 0
  %3511 = extractvalue %dx.types.CBufRet.f32 %3509, 1
  %3512 = fsub fast float %3507, %3510
  %3513 = fsub fast float %3508, %3511
  %3514 = extractvalue %dx.types.CBufRet.f32 %3506, 2
  %3515 = fsub fast float -0.000000e+00, %3512
  %3516 = fsub fast float -0.000000e+00, %3513
  %3517 = call float @dx.op.dot2.f32(i32 54, float %3336, float %3337, float %3515, float %3516)  ; Dot2(ax,ay,bx,by)
  %3518 = fmul fast float %3517, 2.000000e+00
  %3519 = call float @dx.op.dot2.f32(i32 54, float %3515, float %3516, float %3515, float %3516)  ; Dot2(ax,ay,bx,by)
  %3520 = fmul fast float %3514, %3514
  %3521 = fsub fast float %3519, %3520
  %3522 = fmul fast float %3518, %3518
  %3523 = fmul fast float %3379, %3521
  %3524 = fsub fast float %3522, %3523
  %3525 = fcmp fast ogt float %3524, 0.000000e+00
  br i1 %3525, label %3526, label %3541

; <label>:3526                                    ; preds = %3502
  %3527 = fcmp fast ogt float %3518, 0.000000e+00
  %3528 = call float @dx.op.unary.f32(i32 24, float %3524)  ; Sqrt(value)
  %3529 = fsub fast float -0.000000e+00, %3528
  %3530 = select i1 %3527, float %3528, float %3529
  %3531 = fadd fast float %3530, %3518
  %3532 = fmul float %3531, -5.000000e-01
  %3533 = fdiv fast float %3532, %3372
  %3534 = call float @dx.op.binary.f32(i32 35, float %3533, float 0.000000e+00)  ; FMax(a,b)
  %3535 = call float @dx.op.binary.f32(i32 36, float %3407, float %3534)  ; FMin(a,b)
  %3536 = fdiv fast float %3521, %3532
  %3537 = call float @dx.op.binary.f32(i32 35, float %3536, float 0.000000e+00)  ; FMax(a,b)
  %3538 = call float @dx.op.binary.f32(i32 36, float %3407, float %3537)  ; FMin(a,b)
  %3539 = call float @dx.op.binary.f32(i32 36, float %3535, float %3538)  ; FMin(a,b)
  %3540 = call float @dx.op.binary.f32(i32 35, float %3535, float %3538)  ; FMax(a,b)
  br label %3541

; <label>:3541                                    ; preds = %3526, %3502
  %3542 = phi float [ %3540, %3526 ], [ -1.000000e+00, %3502 ]
  %3543 = phi float [ %3539, %3526 ], [ -1.000000e+00, %3502 ]
  %3544 = phi i1 [ true, %3526 ], [ false, %3502 ]
  br i1 %3544, label %3545, label %3551

; <label>:3545                                    ; preds = %3541
  %3546 = call float @dx.op.binary.f32(i32 35, float %3490, float %3543)  ; FMax(a,b)
  %3547 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %3504
  store float %3546, float* %3547, align 4, !tbaa !97, !noalias !99
  %3548 = call float @dx.op.binary.f32(i32 35, float %3490, float %3542)  ; FMax(a,b)
  %3549 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 %3504
  store float %3548, float* %3549, align 4, !tbaa !97, !noalias !99
  %3550 = add nsw i32 %3503, 1
  br label %3551

; <label>:3551                                    ; preds = %3545, %3541
  %3552 = phi i32 [ %3550, %3545 ], [ %3503, %3541 ]
  %3553 = add nuw nsw i32 %3504, 1
  %3554 = icmp eq i32 %3553, %3359
  br i1 %3554, label %3555, label %3502

; <label>:3555                                    ; preds = %3551
  %3556 = load float, float* %3496, align 4, !tbaa !97, !alias.scope !115, !noalias !118
  %3557 = load float, float* %3495, align 4, !tbaa !97, !alias.scope !121, !noalias !122
  %3558 = load float, float* %3494, align 4, !tbaa !97, !alias.scope !123, !noalias !124
  %3559 = load float, float* %3499, align 4, !tbaa !97, !alias.scope !125, !noalias !128
  %3560 = load float, float* %3498, align 4, !tbaa !97, !alias.scope !131, !noalias !132
  %3561 = load float, float* %3497, align 4, !tbaa !97, !alias.scope !133, !noalias !134
  br label %3562

; <label>:3562                                    ; preds = %3555, %3489
  %3563 = phi float [ -1.000000e+00, %3489 ], [ %3561, %3555 ]
  %3564 = phi float [ -1.000000e+00, %3489 ], [ %3560, %3555 ]
  %3565 = phi float [ -1.000000e+00, %3489 ], [ %3559, %3555 ]
  %3566 = phi float [ -1.000000e+00, %3489 ], [ %3558, %3555 ]
  %3567 = phi float [ -1.000000e+00, %3489 ], [ %3557, %3555 ]
  %3568 = phi float [ -1.000000e+00, %3489 ], [ %3556, %3555 ]
  %3569 = phi i32 [ 0, %3489 ], [ %3552, %3555 ]
  %3570 = call float @dx.op.binary.f32(i32 36, float %3567, float %3568)  ; FMin(a,b)
  %3571 = call float @dx.op.binary.f32(i32 36, float %3566, float %3570)  ; FMin(a,b)
  %3572 = call float @dx.op.binary.f32(i32 35, float %3566, float %3567)  ; FMax(a,b)
  %3573 = call float @dx.op.binary.f32(i32 36, float %3572, float %3568)  ; FMin(a,b)
  %3574 = call float @dx.op.binary.f32(i32 36, float %3566, float %3567)  ; FMin(a,b)
  %3575 = call float @dx.op.binary.f32(i32 35, float %3574, float %3573)  ; FMax(a,b)
  %3576 = call float @dx.op.binary.f32(i32 35, float %3567, float %3568)  ; FMax(a,b)
  %3577 = call float @dx.op.binary.f32(i32 35, float %3566, float %3576)  ; FMax(a,b)
  store float %3571, float* %3494, align 4, !tbaa !97, !alias.scope !123, !noalias !124
  store float %3575, float* %3495, align 4, !tbaa !97, !alias.scope !121, !noalias !122
  store float %3577, float* %3496, align 4, !tbaa !97, !alias.scope !115, !noalias !118
  %3578 = call float @dx.op.binary.f32(i32 36, float %3564, float %3565)  ; FMin(a,b)
  %3579 = call float @dx.op.binary.f32(i32 36, float %3563, float %3578)  ; FMin(a,b)
  %3580 = call float @dx.op.binary.f32(i32 35, float %3563, float %3564)  ; FMax(a,b)
  %3581 = call float @dx.op.binary.f32(i32 36, float %3580, float %3565)  ; FMin(a,b)
  %3582 = call float @dx.op.binary.f32(i32 36, float %3563, float %3564)  ; FMin(a,b)
  %3583 = call float @dx.op.binary.f32(i32 35, float %3582, float %3581)  ; FMax(a,b)
  %3584 = call float @dx.op.binary.f32(i32 35, float %3564, float %3565)  ; FMax(a,b)
  %3585 = call float @dx.op.binary.f32(i32 35, float %3563, float %3584)  ; FMax(a,b)
  store float %3579, float* %3497, align 4, !tbaa !97, !alias.scope !133, !noalias !134
  store float %3583, float* %3498, align 4, !tbaa !97, !alias.scope !131, !noalias !132
  store float %3585, float* %3499, align 4, !tbaa !97, !alias.scope !125, !noalias !128
  %3586 = sub nsw i32 3, %3569
  %3587 = icmp sgt i32 %3586, 2
  br i1 %3587, label %3588, label %3626

; <label>:3588                                    ; preds = %3562
  %3589 = icmp eq i32 %3357, 0
  %3590 = fsub fast float %3407, %3491
  %3591 = select i1 %3589, float %3590, float %3491
  %3592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3593 = extractvalue %dx.types.CBufRet.f32 %3592, 0
  %3594 = extractvalue %dx.types.CBufRet.f32 %3592, 1
  %3595 = extractvalue %dx.types.CBufRet.f32 %3592, 2
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.CBufRet.f32 %3596, 1
  %3599 = extractvalue %dx.types.CBufRet.f32 %3596, 2
  %3600 = extractvalue %dx.types.CBufRet.f32 %3596, 3
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 3
  %3603 = call float @dx.op.binary.f32(i32 36, float %3492, float %3602)  ; FMin(a,b)
  %3604 = fmul fast float %3600, %3591
  %3605 = call float @dx.op.unary.f32(i32 7, float %3604)  ; Saturate(value)
  %3606 = fsub fast float %3597, %3593
  %3607 = fsub fast float %3598, %3594
  %3608 = fsub fast float %3599, %3595
  %3609 = fmul fast float %3605, %3606
  %3610 = fmul fast float %3605, %3607
  %3611 = fmul fast float %3605, %3608
  %3612 = fadd fast float %3609, %3593
  %3613 = fadd fast float %3610, %3594
  %3614 = fadd fast float %3611, %3595
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.CBufRet.f32 %3615, 1
  %3618 = fadd fast float %3617, %3616
  %3619 = call float @dx.op.unary.f32(i32 7, float %3618)  ; Saturate(value)
  %3620 = extractvalue %dx.types.CBufRet.f32 %3615, 2
  %3621 = extractvalue %dx.types.CBufRet.f32 %3615, 3
  %3622 = fadd fast float %3621, %3620
  %3623 = call float @dx.op.unary.f32(i32 7, float %3622)  ; Saturate(value)
  %3624 = fmul fast float %3619, %3603
  %3625 = fmul fast float %3624, %3623
  br label %3708

; <label>:3626                                    ; preds = %3562
  %3627 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %3586
  %3628 = load float, float* %3627, align 4, !tbaa !97, !noalias !99
  %3629 = fcmp fast olt float %3628, %3493
  %3630 = icmp sgt i32 %3569, 0
  %3631 = and i1 %3630, %3629
  br i1 %3631, label %3632, label %3669

; <label>:3632                                    ; preds = %3626
  br label %3633

; <label>:3633                                    ; preds = %3662, %3632
  %3634 = phi float [ %3663, %3662 ], [ %3491, %3632 ]
  %3635 = phi float [ %3664, %3662 ], [ %3492, %3632 ]
  %3636 = phi float [ %3644, %3662 ], [ %3628, %3632 ]
  %3637 = phi i32 [ %3641, %3662 ], [ %3586, %3632 ]
  %3638 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 %3637
  %3639 = load float, float* %3638, align 4, !tbaa !97, !noalias !99
  %3640 = icmp slt i32 %3637, 2
  %3641 = add nsw i32 %3637, 1
  %3642 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %3641
  %3643 = load float, float* %3642, align 4, !tbaa !97, !noalias !99
  %3644 = select i1 %3640, float %3643, float %3407
  %3645 = call float @dx.op.binary.f32(i32 36, float %3644, float %3639)  ; FMin(a,b)
  %3646 = call float @dx.op.binary.f32(i32 36, float %3493, float %3645)  ; FMin(a,b)
  %3647 = icmp eq i32 %3357, 0
  %3648 = fadd fast float %3646, %3636
  %3649 = fmul fast float %3648, %3338
  %3650 = fadd fast float %3649, %3351
  br i1 %3647, label %3656, label %3651

; <label>:3651                                    ; preds = %3633
  %3652 = fsub fast float %3646, %3636
  %3653 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3652)  ; FMax(a,b)
  %3654 = fmul fast float %3653, %3650
  %3655 = fadd fast float %3654, %3635
  br label %3662

; <label>:3656                                    ; preds = %3633
  %3657 = fsub fast float %3636, %3646
  %3658 = call float @dx.op.unary.f32(i32 6, float %3657)  ; FAbs(value)
  %3659 = fadd fast float %3658, %3634
  %3660 = fmul fast float %3658, %3650
  %3661 = fsub fast float %3635, %3660
  br label %3662

; <label>:3662                                    ; preds = %3656, %3651
  %3663 = phi float [ %3653, %3651 ], [ %3659, %3656 ]
  %3664 = phi float [ %3655, %3651 ], [ %3661, %3656 ]
  %3665 = fcmp fast olt float %3644, %3493
  %3666 = icmp slt i32 %3641, 3
  %3667 = and i1 %3666, %3665
  br i1 %3667, label %3633, label %3668

; <label>:3668                                    ; preds = %3662
  br label %3669

; <label>:3669                                    ; preds = %3668, %3626
  %3670 = phi float [ %3491, %3626 ], [ %3663, %3668 ]
  %3671 = phi float [ %3492, %3626 ], [ %3664, %3668 ]
  %3672 = fsub fast float %3407, %3670
  %3673 = select i1 %3409, float %3670, float %3672
  %3674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3674, 0
  %3676 = extractvalue %dx.types.CBufRet.f32 %3674, 1
  %3677 = extractvalue %dx.types.CBufRet.f32 %3674, 2
  %3678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.CBufRet.f32 %3678, 1
  %3681 = extractvalue %dx.types.CBufRet.f32 %3678, 2
  %3682 = extractvalue %dx.types.CBufRet.f32 %3678, 3
  %3683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3683, 3
  %3685 = call float @dx.op.binary.f32(i32 36, float %3671, float %3684)  ; FMin(a,b)
  %3686 = fmul fast float %3682, %3673
  %3687 = call float @dx.op.unary.f32(i32 7, float %3686)  ; Saturate(value)
  %3688 = fsub fast float %3679, %3675
  %3689 = fsub fast float %3680, %3676
  %3690 = fsub fast float %3681, %3677
  %3691 = fmul fast float %3687, %3688
  %3692 = fmul fast float %3687, %3689
  %3693 = fmul fast float %3687, %3690
  %3694 = fadd fast float %3691, %3675
  %3695 = fadd fast float %3692, %3676
  %3696 = fadd fast float %3693, %3677
  %3697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3698 = extractvalue %dx.types.CBufRet.f32 %3697, 0
  %3699 = extractvalue %dx.types.CBufRet.f32 %3697, 1
  %3700 = fadd fast float %3699, %3698
  %3701 = call float @dx.op.unary.f32(i32 7, float %3700)  ; Saturate(value)
  %3702 = extractvalue %dx.types.CBufRet.f32 %3697, 2
  %3703 = extractvalue %dx.types.CBufRet.f32 %3697, 3
  %3704 = fadd fast float %3703, %3702
  %3705 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3706 = fmul fast float %3701, %3685
  %3707 = fmul fast float %3706, %3705
  br label %3708

; <label>:3708                                    ; preds = %3669, %3588, %3423, %3405, %3403
  %3709 = phi float [ %3432, %3423 ], [ %3591, %3588 ], [ %3673, %3669 ], [ 0.000000e+00, %3403 ], [ 0.000000e+00, %3405 ]
  %3710 = phi float [ %3466, %3423 ], [ %3625, %3588 ], [ %3707, %3669 ], [ 0.000000e+00, %3403 ], [ 0.000000e+00, %3405 ]
  %3711 = phi float [ %3453, %3423 ], [ %3612, %3588 ], [ %3694, %3669 ], [ 0.000000e+00, %3403 ], [ 0.000000e+00, %3405 ]
  %3712 = phi float [ %3454, %3423 ], [ %3613, %3588 ], [ %3695, %3669 ], [ 0.000000e+00, %3403 ], [ 0.000000e+00, %3405 ]
  %3713 = phi float [ %3455, %3423 ], [ %3614, %3588 ], [ %3696, %3669 ], [ 0.000000e+00, %3403 ], [ 0.000000e+00, %3405 ]
  %3714 = fmul fast float %3346, %3710
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 2
  %3717 = fsub fast float %3353, %3716
  %3718 = fcmp fast olt float %3714, -2.000000e+01
  %3719 = call float @dx.op.unary.f32(i32 21, float %3714)  ; Exp(value)
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 2
  %3722 = extractvalue %dx.types.CBufRet.f32 %3720, 3
  %3723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3724 = extractvalue %dx.types.CBufRet.f32 %3723, 2
  %3725 = fmul fast float %3722, %3717
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3727 = fsub fast float 1.000000e+00, %3726
  %3728 = fmul fast float %3338, 5.000000e-01
  %3729 = fadd fast float %3728, 5.000000e-01
  %3730 = call float @dx.op.unary.f32(i32 7, float %3729)  ; Saturate(value)
  %3731 = fsub fast float 1.000000e+00, %3730
  %3732 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3727)  ; FMax(a,b)
  %3733 = fdiv fast float %3731, %3732
  %3734 = fsub fast float %3717, %3295
  %3735 = call float @dx.op.unary.f32(i32 6, float %3734)  ; FAbs(value)
  %3736 = fmul fast float %3735, %3721
  %3737 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3738 = fsub fast float 1.000000e+00, %3736
  %3739 = fmul fast float %3738, %3737
  %3740 = fadd fast float %3739, %3736
  %3741 = fmul fast float %3724, %3717
  %3742 = call float @dx.op.unary.f32(i32 7, float %3741)  ; Saturate(value)
  %3743 = fsub fast float 1.000000e+00, %3740
  %3744 = fmul fast float %3743, %3742
  %3745 = fadd fast float %3744, %3740
  %3746 = call float @dx.op.unary.f32(i32 7, float %3745)  ; Saturate(value)
  %3747 = fadd fast float %3719, -1.000000e+00
  %3748 = select i1 %3718, float -1.000000e+00, float %3747
  %3749 = fmul fast float %3746, %3748
  %3750 = fadd fast float %3749, 1.000000e+00
  %3751 = fsub fast float -0.000000e+00, %3749
  %3752 = fmul fast float %3711, %3751
  %3753 = fmul fast float %3712, %3751
  %3754 = fmul fast float %3713, %3751
  br label %3755

; <label>:3755                                    ; preds = %3708, %3304
  %3756 = phi float [ %3709, %3708 ], [ 0.000000e+00, %3304 ]
  %3757 = phi float [ %3750, %3708 ], [ 1.000000e+00, %3304 ]
  %3758 = phi float [ %3752, %3708 ], [ 0.000000e+00, %3304 ]
  %3759 = phi float [ %3753, %3708 ], [ 0.000000e+00, %3304 ]
  %3760 = phi float [ %3754, %3708 ], [ 0.000000e+00, %3304 ]
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 1
  %3763 = fsub fast float 1.000000e+00, %3757
  %3764 = fmul fast float %3763, %3339
  %3765 = fmul fast float %3764, %3762
  %3766 = fsub fast float %3339, %3765
  br i1 %3332, label %3767, label %3796, !dx.controlflow.hints !135

; <label>:3767                                    ; preds = %3755
  %3768 = fmul fast float %3340, %3329
  %3769 = fadd fast float %3768, %3330
  %3770 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3771 = fmul fast float %3311, %3766
  %3772 = fsub fast float -0.000000e+00, %3771
  %3773 = fmul fast float %3312, %3766
  %3774 = fsub fast float -0.000000e+00, %3773
  %3775 = call float @dx.op.unary.f32(i32 21, float %3772)  ; Exp(value)
  %3776 = call float @dx.op.unary.f32(i32 21, float %3774)  ; Exp(value)
  %3777 = call float @dx.op.binary.f32(i32 35, float %3319, float %3775)  ; FMax(a,b)
  %3778 = call float @dx.op.binary.f32(i32 35, float %3319, float %3776)  ; FMax(a,b)
  %3779 = fsub fast float %3778, %3777
  %3780 = fmul fast float %3779, %3770
  %3781 = fadd fast float %3780, %3777
  %3782 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  %3783 = fsub fast float %3316, %3321
  %3784 = fsub fast float %3317, %3322
  %3785 = fsub fast float %3318, %3323
  %3786 = fmul fast float %3770, %3783
  %3787 = fmul fast float %3770, %3784
  %3788 = fmul fast float %3770, %3785
  %3789 = fadd fast float %3786, %3321
  %3790 = fadd fast float %3787, %3322
  %3791 = fadd fast float %3788, %3323
  %3792 = fsub fast float 1.000000e+00, %3782
  %3793 = fmul fast float %3792, %3789
  %3794 = fmul fast float %3792, %3790
  %3795 = fmul fast float %3792, %3791
  br label %3855

; <label>:3796                                    ; preds = %3755
  %3797 = fmul fast float %3766, %3328
  %3798 = call float @dx.op.unary.f32(i32 7, float %3797)  ; Saturate(value)
  %3799 = fsub fast float 2.000000e+00, %3798
  %3800 = fmul fast float %3798, 9.921875e-01
  %3801 = fmul fast float %3800, %3799
  %3802 = fadd fast float %3801, 3.906250e-03
  %3803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %31, float %3802, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = fsub fast float %3798, %3804
  %3806 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3805)  ; FMax(a,b)
  %3807 = fmul fast float %3314, %3295
  %3808 = call float @dx.op.unary.f32(i32 6, float %3807)  ; FAbs(value)
  %3809 = fcmp fast ogt float %3808, 0x3EB0C6F7A0000000
  br i1 %3809, label %3810, label %3816, !dx.controlflow.hints !136

; <label>:3810                                    ; preds = %3796
  %3811 = fmul fast float %3807, 0xBFF7154760000000
  %3812 = call float @dx.op.unary.f32(i32 21, float %3811)  ; Exp(value)
  %3813 = fsub fast float 1.000000e+00, %3812
  %3814 = fdiv fast float %3813, %3807
  %3815 = fmul fast float %3814, %3324
  br label %3816

; <label>:3816                                    ; preds = %3810, %3796
  %3817 = phi float [ %3815, %3810 ], [ %3324, %3796 ]
  %3818 = fadd fast float %3817, %3326
  %3819 = fmul fast float %3818, %3806
  %3820 = fmul fast float %3311, %3819
  %3821 = fsub fast float -0.000000e+00, %3820
  %3822 = fmul fast float %3312, %3819
  %3823 = fsub fast float -0.000000e+00, %3822
  %3824 = fmul fast float %3313, %3819
  %3825 = fsub fast float -0.000000e+00, %3824
  %3826 = call float @dx.op.unary.f32(i32 21, float %3821)  ; Exp(value)
  %3827 = call float @dx.op.unary.f32(i32 21, float %3823)  ; Exp(value)
  %3828 = call float @dx.op.unary.f32(i32 21, float %3825)  ; Exp(value)
  %3829 = fmul fast float %3340, %3340
  %3830 = fadd fast float %3829, 1.000000e+00
  %3831 = fmul fast float %3830, 0x3FAE8EC8A0000000
  %3832 = fmul fast float %3831, %3321
  %3833 = fmul fast float %3831, %3322
  %3834 = fmul fast float %3831, %3323
  %3835 = fmul fast float %3340, %3319
  %3836 = fsub fast float 1.000000e+00, %3835
  %3837 = fmul fast float %3319, %3319
  %3838 = fsub fast float 1.000000e+00, %3837
  %3839 = fmul fast float %3838, 0x3FB45F3060000000
  %3840 = fmul fast float %3836, %3836
  %3841 = fdiv fast float 1.000000e+00, %3840
  %3842 = fmul fast float %3839, %3841
  %3843 = fmul fast float %3842, %3316
  %3844 = fmul fast float %3842, %3317
  %3845 = fmul fast float %3842, %3318
  %3846 = fadd fast float %3843, %3832
  %3847 = fadd fast float %3844, %3833
  %3848 = fadd fast float %3845, %3834
  %3849 = fsub fast float 1.000000e+00, %3826
  %3850 = fsub fast float 1.000000e+00, %3827
  %3851 = fsub fast float 1.000000e+00, %3828
  %3852 = fmul fast float %3846, %3849
  %3853 = fmul fast float %3847, %3850
  %3854 = fmul fast float %3848, %3851
  br label %3855

; <label>:3855                                    ; preds = %3816, %3767
  %3856 = phi float [ %3793, %3767 ], [ %3852, %3816 ]
  %3857 = phi float [ %3794, %3767 ], [ %3853, %3816 ]
  %3858 = phi float [ %3795, %3767 ], [ %3854, %3816 ]
  %3859 = phi float [ %3782, %3767 ], [ %3826, %3816 ]
  %3860 = phi float [ %3782, %3767 ], [ %3827, %3816 ]
  %3861 = phi float [ %3782, %3767 ], [ %3828, %3816 ]
  br i1 %3348, label %3862, label %4060, !dx.controlflow.hints !137

; <label>:3862                                    ; preds = %3855
  %3863 = extractvalue %dx.types.CBufRet.f32 %3761, 0
  %3864 = fmul fast float %3863, %3763
  %3865 = fsub fast float %3758, %3856
  %3866 = fsub fast float %3759, %3857
  %3867 = fsub fast float %3760, %3858
  %3868 = fmul fast float %3864, %3865
  %3869 = fmul fast float %3864, %3866
  %3870 = fmul fast float %3864, %3867
  %3871 = fadd fast float %3868, %3856
  %3872 = fadd fast float %3869, %3857
  %3873 = fadd fast float %3870, %3858
  %3874 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3859)  ; FMax(a,b)
  %3875 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3860)  ; FMax(a,b)
  %3876 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3861)  ; FMax(a,b)
  %3877 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3757)  ; FMax(a,b)
  %3878 = call float @dx.op.binary.f32(i32 35, float %3756, float %3766)  ; FMax(a,b)
  %3879 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3878)  ; FMax(a,b)
  %3880 = fdiv fast float %3756, %3879
  %3881 = call float @dx.op.unary.f32(i32 7, float %3880)  ; Saturate(value)
  %3882 = fdiv fast float %3766, %3879
  %3883 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  %3884 = fcmp fast une float %3877, 1.000000e+00
  br i1 %3884, label %3885, label %3898, !dx.controlflow.hints !138

; <label>:3885                                    ; preds = %3862
  %3886 = call float @dx.op.unary.f32(i32 23, float %3877)  ; Log(value)
  %3887 = fmul fast float %3886, 0x3FE62E4300000000
  %3888 = fmul fast float %3758, %3887
  %3889 = fsub fast float -0.000000e+00, %3888
  %3890 = fmul fast float %3759, %3887
  %3891 = fsub fast float -0.000000e+00, %3890
  %3892 = fmul fast float %3760, %3887
  %3893 = fsub fast float -0.000000e+00, %3892
  %3894 = fsub fast float 1.000000e+00, %3877
  %3895 = fdiv fast float %3889, %3894
  %3896 = fdiv fast float %3891, %3894
  %3897 = fdiv fast float %3893, %3894
  br label %3898

; <label>:3898                                    ; preds = %3885, %3862
  %3899 = phi float [ %3895, %3885 ], [ %3758, %3862 ]
  %3900 = phi float [ %3896, %3885 ], [ %3759, %3862 ]
  %3901 = phi float [ %3897, %3885 ], [ %3760, %3862 ]
  %3902 = phi float [ %3887, %3885 ], [ 0.000000e+00, %3862 ]
  %3903 = fcmp fast une float %3874, 1.000000e+00
  br i1 %3903, label %3904, label %3911, !dx.controlflow.hints !139

; <label>:3904                                    ; preds = %3898
  %3905 = call float @dx.op.unary.f32(i32 23, float %3874)  ; Log(value)
  %3906 = fmul fast float %3905, 0x3FE62E4300000000
  %3907 = fmul fast float %3871, %3906
  %3908 = fsub fast float -0.000000e+00, %3907
  %3909 = fsub fast float 1.000000e+00, %3874
  %3910 = fdiv fast float %3908, %3909
  br label %3911

; <label>:3911                                    ; preds = %3904, %3898
  %3912 = phi float [ %3910, %3904 ], [ %3871, %3898 ]
  %3913 = phi float [ %3906, %3904 ], [ 0.000000e+00, %3898 ]
  %3914 = fcmp fast une float %3875, 1.000000e+00
  br i1 %3914, label %3915, label %3922, !dx.controlflow.hints !139

; <label>:3915                                    ; preds = %3911
  %3916 = call float @dx.op.unary.f32(i32 23, float %3875)  ; Log(value)
  %3917 = fmul fast float %3916, 0x3FE62E4300000000
  %3918 = fmul fast float %3872, %3917
  %3919 = fsub fast float -0.000000e+00, %3918
  %3920 = fsub fast float 1.000000e+00, %3875
  %3921 = fdiv fast float %3919, %3920
  br label %3922

; <label>:3922                                    ; preds = %3915, %3911
  %3923 = phi float [ %3921, %3915 ], [ %3872, %3911 ]
  %3924 = phi float [ %3917, %3915 ], [ 0.000000e+00, %3911 ]
  %3925 = fcmp fast une float %3876, 1.000000e+00
  br i1 %3925, label %3926, label %3933, !dx.controlflow.hints !139

; <label>:3926                                    ; preds = %3922
  %3927 = call float @dx.op.unary.f32(i32 23, float %3876)  ; Log(value)
  %3928 = fmul fast float %3927, 0x3FE62E4300000000
  %3929 = fmul fast float %3873, %3928
  %3930 = fsub fast float -0.000000e+00, %3929
  %3931 = fsub fast float 1.000000e+00, %3876
  %3932 = fdiv fast float %3930, %3931
  br label %3933

; <label>:3933                                    ; preds = %3926, %3922
  %3934 = phi float [ %3932, %3926 ], [ %3873, %3922 ]
  %3935 = phi float [ %3928, %3926 ], [ 0.000000e+00, %3922 ]
  %3936 = fmul fast float %3899, %3883
  %3937 = fmul fast float %3900, %3883
  %3938 = fmul fast float %3901, %3883
  %3939 = fmul fast float %3902, %3883
  %3940 = fmul fast float %3912, %3881
  %3941 = fmul fast float %3923, %3881
  %3942 = fmul fast float %3934, %3881
  %3943 = fmul fast float %3913, %3881
  %3944 = fmul fast float %3924, %3881
  %3945 = fmul fast float %3935, %3881
  %3946 = fadd fast float %3940, %3936
  %3947 = fadd fast float %3941, %3937
  %3948 = fadd fast float %3942, %3938
  %3949 = fadd fast float %3943, %3939
  %3950 = fadd fast float %3944, %3939
  %3951 = fadd fast float %3945, %3939
  %3952 = fcmp fast une float %3949, 0.000000e+00
  br i1 %3952, label %3953, label %3960, !dx.controlflow.hints !140

; <label>:3953                                    ; preds = %3933
  %3954 = fmul fast float %3949, 0x3FF7154760000000
  %3955 = call float @dx.op.unary.f32(i32 21, float %3954)  ; Exp(value)
  %3956 = fsub fast float 1.000000e+00, %3955
  %3957 = fmul fast float %3946, %3956
  %3958 = fsub fast float -0.000000e+00, %3957
  %3959 = fdiv fast float %3958, %3949
  br label %3960

; <label>:3960                                    ; preds = %3953, %3933
  %3961 = phi float [ %3955, %3953 ], [ 1.000000e+00, %3933 ]
  %3962 = phi float [ %3959, %3953 ], [ %3946, %3933 ]
  %3963 = fcmp fast une float %3950, 0.000000e+00
  br i1 %3963, label %3964, label %3971, !dx.controlflow.hints !140

; <label>:3964                                    ; preds = %3960
  %3965 = fmul fast float %3950, 0x3FF7154760000000
  %3966 = call float @dx.op.unary.f32(i32 21, float %3965)  ; Exp(value)
  %3967 = fsub fast float 1.000000e+00, %3966
  %3968 = fmul fast float %3947, %3967
  %3969 = fsub fast float -0.000000e+00, %3968
  %3970 = fdiv fast float %3969, %3950
  br label %3971

; <label>:3971                                    ; preds = %3964, %3960
  %3972 = phi float [ %3966, %3964 ], [ 1.000000e+00, %3960 ]
  %3973 = phi float [ %3970, %3964 ], [ %3947, %3960 ]
  %3974 = fcmp fast une float %3951, 0.000000e+00
  br i1 %3974, label %3975, label %3982, !dx.controlflow.hints !140

; <label>:3975                                    ; preds = %3971
  %3976 = fmul fast float %3951, 0x3FF7154760000000
  %3977 = call float @dx.op.unary.f32(i32 21, float %3976)  ; Exp(value)
  %3978 = fsub fast float 1.000000e+00, %3977
  %3979 = fmul fast float %3948, %3978
  %3980 = fsub fast float -0.000000e+00, %3979
  %3981 = fdiv fast float %3980, %3951
  br label %3982

; <label>:3982                                    ; preds = %3975, %3971
  %3983 = phi float [ %3977, %3975 ], [ 1.000000e+00, %3971 ]
  %3984 = phi float [ %3981, %3975 ], [ %3948, %3971 ]
  %3985 = fcmp fast ogt float %3881, %3883
  br i1 %3985, label %3986, label %4006

; <label>:3986                                    ; preds = %3982
  %3987 = fsub fast float 1.000000e+00, %3883
  %3988 = fmul fast float %3899, %3987
  %3989 = fmul fast float %3900, %3987
  %3990 = fmul fast float %3901, %3987
  %3991 = fmul fast float %3902, %3987
  %3992 = fcmp fast une float %3991, 0.000000e+00
  br i1 %3992, label %3993, label %4044, !dx.controlflow.hints !141

; <label>:3993                                    ; preds = %3986
  %3994 = fmul fast float %3991, 0x3FF7154760000000
  %3995 = call float @dx.op.unary.f32(i32 21, float %3994)  ; Exp(value)
  %3996 = fsub fast float 1.000000e+00, %3995
  %3997 = fmul fast float %3988, %3996
  %3998 = fsub fast float -0.000000e+00, %3997
  %3999 = fmul fast float %3989, %3996
  %4000 = fsub fast float -0.000000e+00, %3999
  %4001 = fmul fast float %3990, %3996
  %4002 = fsub fast float -0.000000e+00, %4001
  %4003 = fdiv fast float %3998, %3991
  %4004 = fdiv fast float %4000, %3991
  %4005 = fdiv fast float %4002, %3991
  br label %4044

; <label>:4006                                    ; preds = %3982
  %4007 = fsub fast float 1.000000e+00, %3881
  %4008 = fmul fast float %3912, %4007
  %4009 = fmul fast float %3923, %4007
  %4010 = fmul fast float %3934, %4007
  %4011 = fmul fast float %3913, %4007
  %4012 = fmul fast float %3924, %4007
  %4013 = fmul fast float %3935, %4007
  %4014 = fcmp fast une float %4011, 0.000000e+00
  br i1 %4014, label %4015, label %4022, !dx.controlflow.hints !140

; <label>:4015                                    ; preds = %4006
  %4016 = fmul fast float %4011, 0x3FF7154760000000
  %4017 = call float @dx.op.unary.f32(i32 21, float %4016)  ; Exp(value)
  %4018 = fsub fast float 1.000000e+00, %4017
  %4019 = fmul fast float %4008, %4018
  %4020 = fsub fast float -0.000000e+00, %4019
  %4021 = fdiv fast float %4020, %4011
  br label %4022

; <label>:4022                                    ; preds = %4015, %4006
  %4023 = phi float [ %4021, %4015 ], [ %4008, %4006 ]
  %4024 = phi float [ %4017, %4015 ], [ 1.000000e+00, %4006 ]
  %4025 = fcmp fast une float %4012, 0.000000e+00
  br i1 %4025, label %4026, label %4033, !dx.controlflow.hints !140

; <label>:4026                                    ; preds = %4022
  %4027 = fmul fast float %4012, 0x3FF7154760000000
  %4028 = call float @dx.op.unary.f32(i32 21, float %4027)  ; Exp(value)
  %4029 = fsub fast float 1.000000e+00, %4028
  %4030 = fmul fast float %4009, %4029
  %4031 = fsub fast float -0.000000e+00, %4030
  %4032 = fdiv fast float %4031, %4012
  br label %4033

; <label>:4033                                    ; preds = %4026, %4022
  %4034 = phi float [ %4032, %4026 ], [ %4009, %4022 ]
  %4035 = phi float [ %4028, %4026 ], [ 1.000000e+00, %4022 ]
  %4036 = fcmp fast une float %4013, 0.000000e+00
  br i1 %4036, label %4037, label %4044, !dx.controlflow.hints !140

; <label>:4037                                    ; preds = %4033
  %4038 = fmul fast float %4013, 0x3FF7154760000000
  %4039 = call float @dx.op.unary.f32(i32 21, float %4038)  ; Exp(value)
  %4040 = fsub fast float 1.000000e+00, %4039
  %4041 = fmul fast float %4010, %4040
  %4042 = fsub fast float -0.000000e+00, %4041
  %4043 = fdiv fast float %4042, %4013
  br label %4044

; <label>:4044                                    ; preds = %4037, %4033, %3993, %3986
  %4045 = phi float [ %4043, %4037 ], [ %4005, %3993 ], [ %3990, %3986 ], [ %4010, %4033 ]
  %4046 = phi float [ %4034, %4037 ], [ %4004, %3993 ], [ %3989, %3986 ], [ %4034, %4033 ]
  %4047 = phi float [ %4023, %4037 ], [ %4003, %3993 ], [ %3988, %3986 ], [ %4023, %4033 ]
  %4048 = phi float [ %4039, %4037 ], [ %3995, %3993 ], [ 1.000000e+00, %3986 ], [ 1.000000e+00, %4033 ]
  %4049 = phi float [ %4035, %4037 ], [ %3995, %3993 ], [ 1.000000e+00, %3986 ], [ %4035, %4033 ]
  %4050 = phi float [ %4024, %4037 ], [ %3995, %3993 ], [ 1.000000e+00, %3986 ], [ %4024, %4033 ]
  %4051 = fmul fast float %4050, %3962
  %4052 = fmul fast float %4049, %3973
  %4053 = fmul fast float %4048, %3984
  %4054 = fadd fast float %4051, %4047
  %4055 = fadd fast float %4052, %4046
  %4056 = fadd fast float %4053, %4045
  %4057 = fmul fast float %4050, %3961
  %4058 = fmul fast float %4049, %3972
  %4059 = fmul fast float %4048, %3983
  br label %4060

; <label>:4060                                    ; preds = %4044, %3855
  %4061 = phi float [ %4059, %4044 ], [ %3861, %3855 ]
  %4062 = phi float [ %4058, %4044 ], [ %3860, %3855 ]
  %4063 = phi float [ %4057, %4044 ], [ %3859, %3855 ]
  %4064 = phi float [ %4056, %4044 ], [ %3858, %3855 ]
  %4065 = phi float [ %4055, %4044 ], [ %3857, %3855 ]
  %4066 = phi float [ %4054, %4044 ], [ %3856, %3855 ]
  %4067 = fmul fast float %4066, %3008
  %4068 = fmul fast float %4065, %3010
  %4069 = fmul fast float %4064, %3012
  %4070 = fmul fast float %4063, %3303
  %4071 = call float @dx.op.dot3.f32(i32 55, float %4063, float %4062, float %4061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4072 = call float @dx.op.dot3.f32(i32 55, float %4067, float %4068, float %4069, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4073 = select i1 %184, float %4071, float %4063
  %4074 = select i1 %184, float %4071, float %4062
  %4075 = select i1 %184, float 1.000000e+00, float %4061
  %4076 = select i1 %184, float %4072, float %4067
  %4077 = select i1 %184, float 0.000000e+00, float %4068
  %4078 = select i1 %184, float 0.000000e+00, float %4069
  %4079 = fmul fast float %4073, %3297
  %4080 = fmul fast float %4074, %3298
  %4081 = fmul fast float %4075, %3299
  %4082 = fadd fast float %4079, %4076
  %4083 = fadd fast float %4080, %4077
  %4084 = fadd fast float %4078, %4081
  %4085 = fmul fast float %4073, %3300
  %4086 = fmul fast float %4074, %3301
  %4087 = fmul fast float %4075, %3302
  %4088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.i32 %4088, 0
  %4090 = icmp eq i32 %4089, 0
  br i1 %4090, label %4458, label %4091, !dx.controlflow.hints !142

; <label>:4091                                    ; preds = %4060
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 2
  %4094 = extractvalue %dx.types.CBufRet.f32 %4092, 3
  %4095 = fmul fast float %4093, %67
  %4096 = fmul fast float %4094, %68
  %4097 = fmul fast float %4095, 2.000000e+00
  %4098 = fmul fast float %4096, 2.000000e+00
  %4099 = fsub fast float 1.000000e+00, %4097
  %4100 = fsub fast float 1.000000e+00, %4098
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 0
  %4103 = extractvalue %dx.types.CBufRet.f32 %4101, 1
  %4104 = extractvalue %dx.types.CBufRet.f32 %4101, 2
  %4105 = fmul fast float %4099, %4102
  %4106 = fmul fast float %4099, %4103
  %4107 = fmul fast float %4099, %4104
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 0
  %4110 = extractvalue %dx.types.CBufRet.f32 %4108, 1
  %4111 = extractvalue %dx.types.CBufRet.f32 %4108, 2
  %4112 = fmul fast float %4100, %4109
  %4113 = fmul fast float %4100, %4110
  %4114 = fmul fast float %4100, %4111
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 0
  %4117 = extractvalue %dx.types.CBufRet.f32 %4115, 1
  %4118 = extractvalue %dx.types.CBufRet.f32 %4115, 2
  %4119 = fadd fast float %4112, %4116
  %4120 = fadd fast float %4119, %4105
  %4121 = fadd fast float %4113, %4117
  %4122 = fadd fast float %4121, %4106
  %4123 = fadd fast float %4114, %4118
  %4124 = fadd fast float %4123, %4107
  %4125 = fmul fast float %4120, %3296
  %4126 = fmul fast float %4122, %3296
  %4127 = fmul fast float %4124, %3296
  %4128 = fmul fast float %4125, %4125
  %4129 = fmul fast float %4126, %4126
  %4130 = fadd fast float %4128, %4129
  %4131 = fmul fast float %4127, %4127
  %4132 = fadd fast float %4130, %4131
  %4133 = call float @dx.op.unary.f32(i32 24, float %4132)  ; Sqrt(value)
  %4134 = extractvalue %dx.types.CBufRet.f32 %3023, 0
  %4135 = fsub fast float %4133, %4134
  %4136 = extractvalue %dx.types.CBufRet.f32 %3023, 2
  %4137 = fmul fast float %4135, %4136
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = fadd fast float %4138, -5.000000e-01
  %4140 = fmul fast float %4139, 2.000000e+00
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 2
  %4143 = call float @dx.op.binary.f32(i32 36, float %4142, float %4140)  ; FMin(a,b)
  %4144 = fsub fast float -0.000000e+00, %4142
  %4145 = fcmp fast ogt float %4143, %4144
  br i1 %4145, label %4146, label %4458, !dx.controlflow.hints !143

; <label>:4146                                    ; preds = %4091
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4149 = fcmp fast ogt float %4148, 0.000000e+00
  br i1 %4149, label %4150, label %4225, !dx.controlflow.hints !144

; <label>:4150                                    ; preds = %4146
  %4151 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %4152 = extractvalue %dx.types.Dimensions %4151, 0
  %4153 = sitofp i32 %4152 to float
  %4154 = extractvalue %dx.types.Dimensions %4151, 1
  %4155 = sitofp i32 %4154 to float
  %4156 = fmul fast float %4095, %4153
  %4157 = fmul fast float %4096, %4155
  %4158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.f32 %4158, 1
  %4160 = fsub fast float -0.000000e+00, %4159
  %4161 = fptoui float %4160 to i32
  %4162 = fptoui float %4156 to i32
  %4163 = fptoui float %4157 to i32
  %4164 = and i32 %4161, 31
  %4165 = lshr i32 %4162, %4164
  %4166 = lshr i32 %4163, %4164
  %4167 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %4161, i32 %4165, i32 %4166, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = fcmp fast olt float %4168, -1.000000e+00
  %4170 = fcmp fast ogt float %4168, -1.000000e+00
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4173 = select i1 %4170, float %4172, float 1.000000e+00
  %4174 = fadd fast float %4168, 1.000000e+00
  %4175 = fmul fast float %4173, %4174
  %4176 = call float @dx.op.unary.f32(i32 6, float %4175)  ; FAbs(value)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4171, 3
  %4178 = fcmp fast oge float %4176, %4177
  %4179 = select i1 %4178, float 0x4197782600000000, float %4176
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 0
  %4182 = extractvalue %dx.types.CBufRet.f32 %4180, 1
  %4183 = extractvalue %dx.types.CBufRet.f32 %4180, 2
  %4184 = select i1 %4169, float %4181, float %4102
  %4185 = select i1 %4169, float %4182, float %4103
  %4186 = select i1 %4169, float %4183, float %4104
  %4187 = fmul fast float %4184, %4099
  %4188 = fmul fast float %4185, %4099
  %4189 = fmul fast float %4186, %4099
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 0
  %4192 = extractvalue %dx.types.CBufRet.f32 %4190, 1
  %4193 = extractvalue %dx.types.CBufRet.f32 %4190, 2
  %4194 = select i1 %4169, float %4191, float %4109
  %4195 = select i1 %4169, float %4192, float %4110
  %4196 = select i1 %4169, float %4193, float %4111
  %4197 = fmul fast float %4194, %4100
  %4198 = fmul fast float %4195, %4100
  %4199 = fmul fast float %4196, %4100
  %4200 = fadd fast float %4197, %4187
  %4201 = fadd fast float %4198, %4188
  %4202 = fadd fast float %4199, %4189
  %4203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %4204 = extractvalue %dx.types.CBufRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.CBufRet.f32 %4203, 1
  %4206 = extractvalue %dx.types.CBufRet.f32 %4203, 2
  %4207 = select i1 %4169, float %4204, float %4116
  %4208 = select i1 %4169, float %4205, float %4117
  %4209 = select i1 %4169, float %4206, float %4118
  %4210 = fadd fast float %4200, %4207
  %4211 = fadd fast float %4201, %4208
  %4212 = fadd fast float %4202, %4209
  %4213 = fmul fast float %4210, %4179
  %4214 = fmul fast float %4211, %4179
  %4215 = fmul fast float %4212, %4179
  %4216 = fmul fast float %4213, %4213
  %4217 = fmul fast float %4214, %4214
  %4218 = fadd fast float %4216, %4217
  %4219 = fmul fast float %4215, %4215
  %4220 = fadd fast float %4218, %4219
  %4221 = call float @dx.op.unary.f32(i32 24, float %4220)  ; Sqrt(value)
  %4222 = fsub fast float %4221, %4134
  %4223 = fmul fast float %4222, %4136
  %4224 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  br label %4225

; <label>:4225                                    ; preds = %4150, %4146
  %4226 = phi float [ %4224, %4150 ], [ 1.000000e+00, %4146 ]
  %4227 = fmul fast float %4143, 5.000000e-01
  %4228 = fadd fast float %4227, 5.000000e-01
  %4229 = call float @dx.op.unary.f32(i32 22, float %4228)  ; Frc(value)
  %4230 = call float @dx.op.unary.f32(i32 27, float %4229)  ; Round_ni(value)
  %4231 = call float @dx.op.unary.f32(i32 22, float %4229)  ; Frc(value)
  %4232 = fmul fast float %4231, 2.000000e+00
  %4233 = fadd fast float %4232, -1.000000e+00
  %4234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %31, float %4095, float %4096, float %4230, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4235 = extractvalue %dx.types.ResRet.f32 %4234, 0
  %4236 = extractvalue %dx.types.ResRet.f32 %4234, 1
  %4237 = extractvalue %dx.types.ResRet.f32 %4234, 2
  %4238 = extractvalue %dx.types.ResRet.f32 %4234, 3
  %4239 = fadd fast float %4235, -5.000000e-01
  %4240 = fadd fast float %4237, -5.000000e-01
  %4241 = fmul fast float %4239, 0xBFD5555560000000
  %4242 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4240, float %4241)  ; FMad(a,b,c)
  %4243 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4236, float 0.000000e+00)  ; FMad(a,b,c)
  %4244 = fadd fast float %4243, %4238
  %4245 = fmul fast float %4239, -7.500000e-01
  %4246 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4240, float %4245)  ; FMad(a,b,c)
  %4247 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4236, float 0.000000e+00)  ; FMad(a,b,c)
  %4248 = fadd fast float %4247, %4238
  %4249 = call float @dx.op.binary.f32(i32 35, float %4242, float -1.000000e+00)  ; FMax(a,b)
  %4250 = call float @dx.op.binary.f32(i32 35, float %4244, float -1.000000e+00)  ; FMax(a,b)
  %4251 = call float @dx.op.binary.f32(i32 35, float %4246, float -1.000000e+00)  ; FMax(a,b)
  %4252 = call float @dx.op.binary.f32(i32 35, float %4248, float -1.000000e+00)  ; FMax(a,b)
  %4253 = call float @dx.op.binary.f32(i32 36, float %4249, float 1.000000e+00)  ; FMin(a,b)
  %4254 = call float @dx.op.binary.f32(i32 36, float %4250, float 1.000000e+00)  ; FMin(a,b)
  %4255 = call float @dx.op.binary.f32(i32 36, float %4251, float 1.000000e+00)  ; FMin(a,b)
  %4256 = call float @dx.op.binary.f32(i32 36, float %4252, float 1.000000e+00)  ; FMin(a,b)
  %4257 = fcmp fast olt float %4253, 0x3FEFFF8020000000
  br i1 %4257, label %4258, label %4373, !dx.controlflow.hints !145

; <label>:4258                                    ; preds = %4225
  %4259 = extractvalue %dx.types.CBufRet.f32 %4141, 3
  %4260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.CBufRet.f32 %4260, 1
  %4263 = extractvalue %dx.types.CBufRet.f32 %4260, 2
  %4264 = extractvalue %dx.types.CBufRet.f32 %4260, 3
  %4265 = fsub fast float %4261, %4253
  %4266 = fsub fast float %4262, %4254
  %4267 = fsub fast float %4263, %4255
  %4268 = fsub fast float %4264, %4256
  %4269 = fmul fast float %4265, %4259
  %4270 = fmul fast float %4266, %4259
  %4271 = fmul fast float %4267, %4259
  %4272 = fmul fast float %4268, %4259
  %4273 = fadd fast float %4269, %4253
  %4274 = fadd fast float %4270, %4254
  %4275 = fsub fast float -0.000000e+00, %4274
  %4276 = fadd fast float %4271, %4255
  %4277 = fadd fast float %4272, %4256
  %4278 = fmul fast float %4273, %4273
  %4279 = fsub fast float %4274, %4278
  %4280 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4279)  ; FMax(a,b)
  %4281 = fdiv fast float 1.000000e+00, %4280
  %4282 = fmul fast float %4274, %4273
  %4283 = fsub fast float %4276, %4282
  %4284 = fsub fast float %4233, %4273
  %4285 = fmul fast float %4233, %4233
  %4286 = fsub fast float %4285, %4274
  %4287 = fmul fast float %4284, %4281
  %4288 = fmul fast float %4287, %4283
  %4289 = fsub fast float %4286, %4288
  %4290 = fmul fast float %4274, %4274
  %4291 = fsub fast float %4277, %4290
  %4292 = fmul fast float %4283, %4283
  %4293 = fmul fast float %4292, %4281
  %4294 = fsub fast float %4291, %4293
  %4295 = fdiv fast float %4289, %4294
  %4296 = fmul fast float %4283, %4295
  %4297 = fsub fast float %4284, %4296
  %4298 = fmul fast float %4297, %4281
  %4299 = fmul fast float %4298, %4273
  %4300 = fsub fast float 1.000000e+00, %4299
  %4301 = fmul fast float %4274, %4295
  %4302 = fsub fast float %4300, %4301
  %4303 = fmul fast float %4298, %4298
  %4304 = fmul fast float %4295, 4.000000e+00
  %4305 = fmul fast float %4304, %4302
  %4306 = fsub fast float %4303, %4305
  %4307 = call float @dx.op.unary.f32(i32 24, float %4306)  ; Sqrt(value)
  %4308 = fcmp fast oge float %4298, 0.000000e+00
  %4309 = fsub fast float -0.000000e+00, %4307
  %4310 = select i1 %4308, float %4309, float %4307
  %4311 = fsub fast float %4310, %4298
  %4312 = fdiv fast float %4311, %4295
  %4313 = fdiv fast float %4302, %4311
  %4314 = fmul fast float %4312, 5.000000e-01
  %4315 = fmul fast float %4313, 2.000000e+00
  %4316 = select i1 %4308, float %4314, float %4315
  %4317 = select i1 %4308, float %4315, float %4314
  %4318 = call float @dx.op.binary.f32(i32 35, float %4316, float %4317)  ; FMax(a,b)
  %4319 = call float @dx.op.binary.f32(i32 36, float %4316, float %4317)  ; FMin(a,b)
  %4320 = fcmp fast ogt float %4233, %4319
  br i1 %4320, label %4321, label %4331

; <label>:4321                                    ; preds = %4258
  %4322 = fsub fast float %4233, %4319
  %4323 = fsub fast float %4318, %4319
  %4324 = fmul fast float %4322, %4323
  %4325 = fmul fast float %4318, %4233
  %4326 = fadd fast float %4318, %4233
  %4327 = fmul fast float %4326, %4273
  %4328 = fadd fast float %4325, %4274
  %4329 = fsub fast float %4328, %4327
  %4330 = fdiv fast float %4329, %4324
  br label %4331

; <label>:4331                                    ; preds = %4321, %4258
  %4332 = phi float [ %4330, %4321 ], [ 0.000000e+00, %4258 ]
  %4333 = fcmp fast ogt float %4233, %4318
  %4334 = fsub fast float %4233, %4318
  br i1 %4333, label %4335, label %4345

; <label>:4335                                    ; preds = %4331
  %4336 = fsub fast float %4318, %4319
  %4337 = fmul fast float %4336, %4334
  %4338 = fmul fast float %4319, %4233
  %4339 = fadd fast float %4319, %4233
  %4340 = fmul fast float %4339, %4273
  %4341 = fsub fast float %4275, %4338
  %4342 = fadd fast float %4341, %4340
  %4343 = fdiv fast float %4342, %4337
  %4344 = fadd fast float %4343, %4332
  br label %4345

; <label>:4345                                    ; preds = %4335, %4331
  %4346 = phi float [ %4344, %4335 ], [ %4332, %4331 ]
  %4347 = fsub fast float %4233, %4319
  %4348 = fmul fast float %4347, %4334
  %4349 = fmul fast float %4319, %4318
  %4350 = fadd fast float %4319, %4318
  %4351 = fmul fast float %4350, %4273
  %4352 = fadd fast float %4349, %4274
  %4353 = fsub fast float %4352, %4351
  %4354 = fdiv fast float %4353, %4348
  %4355 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4356 = fcmp fast oeq float %3024, 0.000000e+00
  %4357 = extractvalue %dx.types.CBufRet.f32 %4141, 0
  %4358 = fcmp fast oeq float %4357, 0.000000e+00
  %4359 = or i1 %4356, %4358
  %4360 = fmul fast float %4357, 2.000000e+00
  %4361 = fadd fast float %4142, %4143
  %4362 = fdiv fast float %4361, %4360
  %4363 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  %4364 = fmul fast float %4363, 2.000000e+00
  %4365 = fsub fast float 3.000000e+00, %4364
  %4366 = fmul fast float %4363, %4363
  %4367 = fmul fast float %4366, %4365
  %4368 = select i1 %4359, float 1.000000e+00, float %4367
  %4369 = fmul fast float %4354, %3024
  %4370 = fadd fast float %4355, %4369
  %4371 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4372 = fmul fast float %4368, %4371
  br label %4373

; <label>:4373                                    ; preds = %4345, %4225
  %4374 = phi float [ %4372, %4345 ], [ 0.000000e+00, %4225 ]
  %4375 = fsub fast float 1.000000e+00, %4374
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %31, float %4095, float %4096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.i32 %4378, 2
  %4380 = icmp eq i32 %4379, 0
  br i1 %4380, label %4386, label %4381

; <label>:4381                                    ; preds = %4373
  %4382 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4383 = fadd fast float %4377, -1.000000e+00
  %4384 = fmul fast float %4382, %4383
  %4385 = fadd fast float %4384, 1.000000e+00
  br label %4386

; <label>:4386                                    ; preds = %4381, %4373
  %4387 = phi float [ %4385, %4381 ], [ %4375, %4373 ]
  br i1 %4149, label %4388, label %4406

; <label>:4388                                    ; preds = %4386
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 1
  %4391 = fsub fast float %4226, %4390
  %4392 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4393 = fsub fast float %4226, %4148
  %4394 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4395 = fsub fast float %4392, %4394
  %4396 = fsub fast float %4228, %4394
  %4397 = fdiv fast float %4396, %4395
  %4398 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4399 = fmul fast float %4398, 2.000000e+00
  %4400 = fsub fast float 3.000000e+00, %4399
  %4401 = fsub fast float %4377, %4387
  %4402 = fmul fast float %4398, %4398
  %4403 = fmul fast float %4402, %4401
  %4404 = fmul fast float %4403, %4400
  %4405 = fadd fast float %4404, %4387
  br label %4406

; <label>:4406                                    ; preds = %4388, %4386
  %4407 = phi float [ %4405, %4388 ], [ %4387, %4386 ]
  %4408 = call float @dx.op.binary.f32(i32 35, float %4377, float %4407)  ; FMax(a,b)
  %4409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.i32 %4409, 2
  %4411 = and i32 %4410, 1
  %4412 = icmp eq i32 %4411, 0
  %4413 = fcmp fast une float %4408, 1.000000e+00
  %4414 = and i1 %4413, %4412
  br i1 %4414, label %4415, label %4434

; <label>:4415                                    ; preds = %4406
  %4416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %31, float %4095, float %4096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4417 = extractvalue %dx.types.ResRet.f32 %4416, 0
  %4418 = extractvalue %dx.types.ResRet.f32 %4416, 1
  %4419 = extractvalue %dx.types.ResRet.f32 %4416, 2
  %4420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.f32 %4420, 1
  %4422 = fmul fast float %4421, %4417
  %4423 = fmul fast float %4421, %4418
  %4424 = fmul fast float %4421, %4419
  %4425 = fcmp fast ogt float %4377, 0x3FEFFF2E40000000
  %4426 = fsub fast float 1.000000e+00, %4408
  %4427 = fsub fast float 1.000000e+00, %4377
  %4428 = fdiv fast float %4426, %4427
  %4429 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4430 = select i1 %4425, float 0.000000e+00, float %4429
  %4431 = fmul fast float %4422, %4430
  %4432 = fmul fast float %4423, %4430
  %4433 = fmul fast float %4424, %4430
  br label %4434

; <label>:4434                                    ; preds = %4415, %4406
  %4435 = phi float [ 0.000000e+00, %4406 ], [ %4431, %4415 ]
  %4436 = phi float [ 0.000000e+00, %4406 ], [ %4432, %4415 ]
  %4437 = phi float [ 0.000000e+00, %4406 ], [ %4433, %4415 ]
  %4438 = fmul fast float %4435, %3008
  %4439 = fmul fast float %4436, %3010
  %4440 = fmul fast float %4437, %3012
  %4441 = fmul fast float %4408, %4070
  %4442 = call float @dx.op.dot3.f32(i32 55, float %4408, float %4408, float %4408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4444 = select i1 %184, float %4442, float %4408
  %4445 = select i1 %184, float 1.000000e+00, float %4408
  %4446 = select i1 %184, float %4443, float %4438
  %4447 = select i1 %184, float 0.000000e+00, float %4439
  %4448 = select i1 %184, float 0.000000e+00, float %4440
  %4449 = fmul fast float %4444, %4082
  %4450 = fmul fast float %4444, %4083
  %4451 = fmul fast float %4445, %4084
  %4452 = fadd fast float %4449, %4446
  %4453 = fadd fast float %4450, %4447
  %4454 = fadd fast float %4448, %4451
  %4455 = fmul fast float %4444, %4085
  %4456 = fmul fast float %4444, %4086
  %4457 = fmul fast float %4445, %4087
  br label %4458

; <label>:4458                                    ; preds = %4434, %4091, %4060, %3292
  %4459 = phi float [ %3297, %3292 ], [ %4082, %4060 ], [ %4452, %4434 ], [ %4082, %4091 ]
  %4460 = phi float [ %3298, %3292 ], [ %4083, %4060 ], [ %4453, %4434 ], [ %4083, %4091 ]
  %4461 = phi float [ %3299, %3292 ], [ %4084, %4060 ], [ %4454, %4434 ], [ %4084, %4091 ]
  %4462 = phi float [ %3300, %3292 ], [ %4085, %4060 ], [ %4455, %4434 ], [ %4085, %4091 ]
  %4463 = phi float [ %3301, %3292 ], [ %4086, %4060 ], [ %4456, %4434 ], [ %4086, %4091 ]
  %4464 = phi float [ %3302, %3292 ], [ %4087, %4060 ], [ %4457, %4434 ], [ %4087, %4091 ]
  %4465 = phi float [ %3303, %3292 ], [ %4070, %4060 ], [ %4441, %4434 ], [ %4070, %4091 ]
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4469 = fmul fast float %4467, %67
  %4470 = fmul fast float %4468, %68
  %4471 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4472 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4473 = select i1 %3034, i32 2, i32 0
  %4474 = or i32 %4473, 1
  %4475 = uitofp i32 %4474 to float
  %4476 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4471, float %4472, float %4475, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = extractvalue %dx.types.ResRet.f32 %4476, 1
  %4479 = extractvalue %dx.types.ResRet.f32 %4476, 2
  %4480 = extractvalue %dx.types.ResRet.f32 %4476, 3
  %4481 = add nuw nsw i32 %4473, 2
  %4482 = uitofp i32 %4481 to float
  %4483 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4471, float %4472, float %4482, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4484 = extractvalue %dx.types.ResRet.f32 %4483, 0
  %4485 = extractvalue %dx.types.ResRet.f32 %4483, 1
  %4486 = extractvalue %dx.types.ResRet.f32 %4483, 2
  %4487 = extractvalue %dx.types.ResRet.f32 %4483, 3
  %4488 = call float @dx.op.binary.f32(i32 35, float %4478, float %4479)  ; FMax(a,b)
  %4489 = call float @dx.op.binary.f32(i32 35, float %4477, float %4488)  ; FMax(a,b)
  %4490 = call float @dx.op.binary.f32(i32 35, float %4489, float %4480)  ; FMax(a,b)
  %4491 = call float @dx.op.binary.f32(i32 36, float %4485, float %4486)  ; FMin(a,b)
  %4492 = call float @dx.op.binary.f32(i32 36, float %4484, float %4491)  ; FMin(a,b)
  %4493 = call float @dx.op.binary.f32(i32 36, float %4492, float %4487)  ; FMin(a,b)
  %4494 = fmul fast float %4490, 2.550000e+02
  %4495 = fadd fast float %4494, 0x3F70101020000000
  %4496 = fptoui float %4495 to i32
  %4497 = fmul fast float %4493, 2.550000e+02
  %4498 = fadd fast float %4497, 0x3F70101020000000
  %4499 = fptoui float %4498 to i32
  %4500 = icmp ult i32 %4496, %4499
  br i1 %4500, label %4501, label %4670

; <label>:4501                                    ; preds = %4458
  %4502 = fcmp fast ogt float %57, 9.843750e-01
  %4503 = fadd fast float %3296, -4.000000e+00
  %4504 = select i1 %4502, float -4.000000e+00, float %4503
  %4505 = call float @dx.op.binary.f32(i32 35, float %4504, float 0.000000e+00)  ; FMax(a,b)
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 0
  %4508 = fadd fast float %4507, %4505
  %4509 = extractvalue %dx.types.CBufRet.f32 %4506, 2
  %4510 = fmul fast float %4508, %4509
  %4511 = call float @dx.op.unary.f32(i32 23, float %4510)  ; Log(value)
  %4512 = extractvalue %dx.types.CBufRet.f32 %4506, 3
  %4513 = fmul fast float %4512, %4511
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 2
  %4516 = fmul fast float %4513, %4515
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = uitofp i32 %4496 to float
  %4519 = uitofp i32 %4499 to float
  %4520 = fadd fast float %4518, 5.000000e-01
  %4521 = fadd fast float %4519, 5.000000e-01
  %4522 = fmul fast float %4515, %4520
  %4523 = fmul fast float %4515, %4521
  %4524 = fadd fast float %4522, 0x3F0FFB4800000000
  %4525 = fadd fast float %4523, 0xBF0FFB4800000000
  %4526 = call float @dx.op.binary.f32(i32 35, float %4517, float %4524)  ; FMax(a,b)
  %4527 = call float @dx.op.binary.f32(i32 36, float %4526, float %4525)  ; FMin(a,b)
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 1
  %4530 = extractvalue %dx.types.CBufRet.f32 %4528, 2
  %4531 = extractvalue %dx.types.CBufRet.f32 %4528, 0
  %4532 = select i1 %3034, float %4531, float 0.000000e+00
  %4533 = fmul fast float %4529, %4527
  %4534 = fadd fast float %4532, %4533
  %4535 = fadd fast float %4532, %4530
  %4536 = fsub fast float %4529, %4530
  %4537 = fadd fast float %4536, %4532
  %4538 = call float @dx.op.binary.f32(i32 35, float %4534, float %4535)  ; FMax(a,b)
  %4539 = call float @dx.op.binary.f32(i32 36, float %4538, float %4537)  ; FMin(a,b)
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %4471, float %4472, float %4539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = extractvalue %dx.types.ResRet.f32 %4540, 1
  %4543 = extractvalue %dx.types.ResRet.f32 %4540, 2
  %4544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.i32 %4544, 0
  %4546 = extractvalue %dx.types.CBufRet.i32 %4544, 1
  %4547 = uitofp i32 %4545 to float
  %4548 = uitofp i32 %4546 to float
  %4549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.CBufRet.f32 %4549, 1
  %4552 = fmul fast float %4547, %4471
  %4553 = fmul fast float %4548, %4472
  %4554 = fadd fast float %4552, -5.000000e-01
  %4555 = fadd fast float %4553, -5.000000e-01
  %4556 = call float @dx.op.unary.f32(i32 22, float %4554)  ; Frc(value)
  %4557 = call float @dx.op.unary.f32(i32 22, float %4555)  ; Frc(value)
  %4558 = fmul fast float %4556, %4556
  %4559 = fmul fast float %4558, %4556
  %4560 = fsub fast float 3.000000e+00, %4556
  %4561 = fmul fast float %4558, %4560
  %4562 = fmul fast float %4556, 3.000000e+00
  %4563 = fmul fast float %4559, 3.000000e+00
  %4564 = fmul fast float %4558, 6.000000e+00
  %4565 = fsub fast float %4563, %4564
  %4566 = fadd fast float %4565, 4.000000e+00
  %4567 = fmul fast float %4566, 0x3FC5555560000000
  %4568 = fmul fast float %4559, -3.000000e+00
  %4569 = fadd fast float %4558, %4556
  %4570 = fmul fast float %4569, 3.000000e+00
  %4571 = fadd fast float %4568, 1.000000e+00
  %4572 = fadd fast float %4571, %4570
  %4573 = fmul fast float %4559, 0x3FC5555560000000
  %4574 = fmul fast float %4557, %4557
  %4575 = fmul fast float %4574, %4557
  %4576 = fsub fast float 3.000000e+00, %4557
  %4577 = fmul fast float %4574, %4576
  %4578 = fmul fast float %4557, 3.000000e+00
  %4579 = fmul fast float %4575, 3.000000e+00
  %4580 = fmul fast float %4574, 6.000000e+00
  %4581 = fsub fast float %4579, %4580
  %4582 = fadd fast float %4581, 4.000000e+00
  %4583 = fmul fast float %4582, 0x3FC5555560000000
  %4584 = fmul fast float %4575, -3.000000e+00
  %4585 = fadd fast float %4574, %4557
  %4586 = fmul fast float %4585, 3.000000e+00
  %4587 = fadd fast float %4584, 1.000000e+00
  %4588 = fadd fast float %4587, %4586
  %4589 = fmul fast float %4575, 0x3FC5555560000000
  %4590 = fadd fast float %4556, 1.000000e+00
  %4591 = fsub fast float 1.000000e+00, %4562
  %4592 = fadd fast float %4591, %4561
  %4593 = fadd fast float %4592, %4566
  %4594 = fmul fast float %4593, 0x3FC5555560000000
  %4595 = fdiv fast float %4567, %4594
  %4596 = fsub fast float %4590, %4595
  %4597 = fsub fast float 1.000000e+00, %4556
  %4598 = fadd fast float %4572, %4559
  %4599 = fmul fast float %4598, 0x3FC5555560000000
  %4600 = fdiv fast float %4573, %4599
  %4601 = fadd fast float %4597, %4600
  %4602 = fadd fast float %4557, 1.000000e+00
  %4603 = fsub fast float 1.000000e+00, %4578
  %4604 = fadd fast float %4603, %4577
  %4605 = fadd fast float %4604, %4582
  %4606 = fmul fast float %4605, 0x3FC5555560000000
  %4607 = fdiv fast float %4583, %4606
  %4608 = fsub fast float %4602, %4607
  %4609 = fsub fast float 1.000000e+00, %4557
  %4610 = fadd fast float %4588, %4575
  %4611 = fmul fast float %4610, 0x3FC5555560000000
  %4612 = fdiv fast float %4589, %4611
  %4613 = fadd fast float %4612, %4609
  %4614 = fmul fast float %4596, %4550
  %4615 = fsub fast float %4471, %4614
  %4616 = fmul fast float %4601, %4550
  %4617 = fadd fast float %4616, %4471
  %4618 = fmul fast float %4613, %4551
  %4619 = fadd fast float %4618, %4472
  %4620 = fmul fast float %4608, %4551
  %4621 = fsub fast float %4472, %4620
  %4622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4615, float %4621, float %4539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4623 = extractvalue %dx.types.ResRet.f32 %4622, 0
  %4624 = extractvalue %dx.types.ResRet.f32 %4622, 1
  %4625 = extractvalue %dx.types.ResRet.f32 %4622, 2
  %4626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4617, float %4621, float %4539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4627 = extractvalue %dx.types.ResRet.f32 %4626, 0
  %4628 = extractvalue %dx.types.ResRet.f32 %4626, 1
  %4629 = extractvalue %dx.types.ResRet.f32 %4626, 2
  %4630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4615, float %4619, float %4539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.ResRet.f32 %4630, 1
  %4633 = extractvalue %dx.types.ResRet.f32 %4630, 2
  %4634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4617, float %4619, float %4539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = extractvalue %dx.types.ResRet.f32 %4634, 1
  %4637 = extractvalue %dx.types.ResRet.f32 %4634, 2
  %4638 = fsub fast float %4631, %4623
  %4639 = fsub fast float %4632, %4624
  %4640 = fsub fast float %4633, %4625
  %4641 = fmul fast float %4638, %4611
  %4642 = fmul fast float %4639, %4611
  %4643 = fmul fast float %4640, %4611
  %4644 = fadd fast float %4641, %4623
  %4645 = fadd fast float %4642, %4624
  %4646 = fadd fast float %4643, %4625
  %4647 = fsub fast float %4635, %4627
  %4648 = fsub fast float %4636, %4628
  %4649 = fsub fast float %4637, %4629
  %4650 = fmul fast float %4647, %4611
  %4651 = fmul fast float %4648, %4611
  %4652 = fmul fast float %4649, %4611
  %4653 = fsub fast float %4627, %4644
  %4654 = fadd fast float %4653, %4650
  %4655 = fsub fast float %4628, %4645
  %4656 = fadd fast float %4655, %4651
  %4657 = fsub fast float %4629, %4646
  %4658 = fadd fast float %4657, %4652
  %4659 = fmul fast float %4654, %4599
  %4660 = fmul fast float %4656, %4599
  %4661 = fmul fast float %4658, %4599
  %4662 = fadd fast float %4659, %4644
  %4663 = fadd fast float %4660, %4645
  %4664 = fadd fast float %4661, %4646
  %4665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4665, 1
  %4667 = fmul fast float %4662, %4666
  %4668 = fmul fast float %4663, %4666
  %4669 = fmul fast float %4664, %4666
  br label %4670

; <label>:4670                                    ; preds = %4501, %4458
  %4671 = phi float [ %4541, %4501 ], [ 1.000000e+00, %4458 ]
  %4672 = phi float [ %4542, %4501 ], [ 1.000000e+00, %4458 ]
  %4673 = phi float [ %4543, %4501 ], [ 1.000000e+00, %4458 ]
  %4674 = phi float [ %4667, %4501 ], [ 0.000000e+00, %4458 ]
  %4675 = phi float [ %4668, %4501 ], [ 0.000000e+00, %4458 ]
  %4676 = phi float [ %4669, %4501 ], [ 0.000000e+00, %4458 ]
  %4677 = fmul fast float %4674, %3008
  %4678 = fmul fast float %4675, %3010
  %4679 = fmul fast float %4676, %3012
  %4680 = fmul fast float %4671, %4465
  %4681 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4683 = select i1 %184, float %4681, float %4671
  %4684 = select i1 %184, float %4681, float %4672
  %4685 = select i1 %184, float 1.000000e+00, float %4673
  %4686 = select i1 %184, float %4682, float %4677
  %4687 = select i1 %184, float 0.000000e+00, float %4678
  %4688 = select i1 %184, float 0.000000e+00, float %4679
  %4689 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4690 = extractvalue %dx.types.CBufRet.i32 %4689, 3
  %4691 = and i32 %4690, 3
  %4692 = icmp ne i32 %4691, 0
  %4693 = and i32 %4690, 4
  %4694 = icmp ne i32 %4693, 0
  %4695 = and i1 %4692, %4694
  %4696 = and i1 %184, %4695
  br i1 %4696, label %4697, label %4703

; <label>:4697                                    ; preds = %4670
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 1
  %4700 = fadd fast float %4680, -1.000000e+00
  %4701 = fmul fast float %4699, %4700
  %4702 = fadd fast float %4701, 1.000000e+00
  br label %4703

; <label>:4703                                    ; preds = %4697, %4670
  %4704 = phi float [ %4702, %4697 ], [ %4680, %4670 ]
  %4705 = fadd fast float %4462, %4459
  %4706 = fmul fast float %4683, %4705
  %4707 = fadd fast float %4706, %4686
  %4708 = fadd fast float %4463, %4460
  %4709 = fmul fast float %4684, %4708
  %4710 = fadd fast float %4709, %4687
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 0
  br i1 %184, label %4713, label %4728

; <label>:4713                                    ; preds = %4703
  %4714 = fadd fast float %4707, %4710
  %4715 = fmul fast float %4712, %4714
  %4716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4716, 3
  %4718 = extractvalue %dx.types.CBufRet.f32 %3016, 1
  %4719 = fsub fast float %3021, %3015
  %4720 = fadd fast float %4719, %3022
  %4721 = fsub fast float %4720, %4718
  %4722 = extractvalue %dx.types.CBufRet.f32 %3016, 2
  %4723 = fmul fast float %4721, %4722
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = fsub fast float %4724, %4717
  %4726 = fmul fast float %4725, %4704
  %4727 = fadd fast float %4726, %4717
  br label %4753

; <label>:4728                                    ; preds = %4703
  %4729 = fadd fast float %4464, %4461
  %4730 = fmul fast float %4685, %4729
  %4731 = fadd fast float %4730, %4688
  %4732 = fmul fast float %4712, %4707
  %4733 = fmul fast float %4712, %4710
  %4734 = fmul fast float %4712, %4731
  %4735 = call float @dx.op.binary.f32(i32 35, float %4733, float %4734)  ; FMax(a,b)
  %4736 = call float @dx.op.binary.f32(i32 35, float %4732, float %4735)  ; FMax(a,b)
  %4737 = call float @dx.op.binary.f32(i32 35, float %3010, float %3012)  ; FMax(a,b)
  %4738 = call float @dx.op.binary.f32(i32 35, float %3008, float %4737)  ; FMax(a,b)
  %4739 = call float @dx.op.binary.f32(i32 35, float %4736, float %4738)  ; FMax(a,b)
  %4740 = fcmp fast ugt float %4739, 0x3F10000000000000
  br i1 %4740, label %4742, label %4741

; <label>:4741                                    ; preds = %4728
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4742

; <label>:4742                                    ; preds = %4741, %4728
  %4743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4744 = extractvalue %dx.types.ResRet.i32 %4743, 0
  %4745 = and i32 %4744, 32
  %4746 = icmp eq i32 %4745, 0
  br i1 %4746, label %4753, label %4747

; <label>:4747                                    ; preds = %4742
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 0
  %4750 = fmul fast float %4749, 0x3FE99999A0000000
  %4751 = fadd fast float %4749, %4732
  %4752 = fadd fast float %4750, %4734
  br label %4753

; <label>:4753                                    ; preds = %4747, %4742, %4713
  %4754 = phi float [ 1.000000e+00, %4713 ], [ %3010, %4747 ], [ %3010, %4742 ]
  %4755 = phi float [ 1.000000e+00, %4713 ], [ %3012, %4747 ], [ %3012, %4742 ]
  %4756 = phi float [ %4715, %4713 ], [ %4751, %4747 ], [ %4732, %4742 ]
  %4757 = phi float [ %4727, %4713 ], [ %4733, %4747 ], [ %4733, %4742 ]
  %4758 = phi float [ 1.000000e+00, %4713 ], [ %4752, %4747 ], [ %4734, %4742 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %4759 = call float @dx.op.binary.f32(i32 36, float %4756, float 3.225500e+04)  ; FMin(a,b)
  %4760 = call float @dx.op.binary.f32(i32 36, float %4757, float 3.225500e+04)  ; FMin(a,b)
  %4761 = call float @dx.op.binary.f32(i32 36, float %4758, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4759)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4760)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4761)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %4762 = call float @dx.op.binary.f32(i32 36, float %3008, float 3.225500e+04)  ; FMin(a,b)
  %4763 = call float @dx.op.binary.f32(i32 36, float %4754, float 3.225500e+04)  ; FMin(a,b)
  %4764 = call float @dx.op.binary.f32(i32 36, float %4755, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %4762)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %4763)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %4764)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!49}
!dx.entryPoints = !{!50}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !38, !41}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !19}
!19 = !{i32 0, i32 5}
!20 = !{i32 12, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !25}
!25 = !{i32 0, i32 14}
!26 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!27 = !{i32 18, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!28 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!29 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!30 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!31 = !{i32 22, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!32 = !{i32 23, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!33 = !{i32 24, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!34 = !{i32 25, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!35 = !{i32 26, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !25}
!36 = !{i32 27, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!41 = !{!42, !43, !44, !45, !46, !47, !48}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!47 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!48 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!49 = !{[27 x i32] [i32 25, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119]}
!50 = !{void ()* @ps_main, !"ps_main", !51, !4, !70}
!51 = !{!52, !66, null}
!52 = !{!53, !56, !58, !60, !61, !62, !63, !65}
!53 = !{i32 0, !"SV_Position", i8 9, i8 3, !54, i8 4, i32 1, i8 4, i32 0, i8 0, !55}
!54 = !{i32 0}
!55 = !{i32 3, i32 15}
!56 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !54, i8 2, i32 1, i8 2, i32 1, i8 0, !57}
!57 = !{i32 3, i32 3}
!58 = !{i32 2, !"NORMAL", i8 9, i8 0, !54, i8 2, i32 1, i8 3, i32 2, i8 0, !59}
!59 = !{i32 3, i32 7}
!60 = !{i32 3, !"TANGENT", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 3, i8 0, !55}
!61 = !{i32 4, !"AMBIENT_COLOR", i8 9, i8 0, !54, i8 2, i32 1, i8 3, i32 4, i8 0, !59}
!62 = !{i32 5, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 5, i8 0, !55}
!63 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !54, i8 1, i32 1, i8 1, i32 6, i8 0, !64}
!64 = !{i32 3, i32 1}
!65 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !54, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!66 = !{!67, !68}
!67 = !{i32 0, !"SV_Target", i8 9, i8 16, !54, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!68 = !{i32 1, !"SV_Target", i8 9, i8 16, !69, i8 0, i32 1, i8 4, i32 1, i8 0, !55}
!69 = !{i32 1}
!70 = !{i32 0, i64 16}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = !{!77, !77, i64 0}
!77 = !{!"int", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !{!81, !83, !85, !87}
!81 = distinct !{!81, !82, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!82 = distinct !{!82, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!83 = distinct !{!83, !84, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!84 = distinct !{!84, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!85 = distinct !{!85, !86, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!86 = distinct !{!86, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!87 = distinct !{!87, !88, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!88 = distinct !{!88, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = !{!98, !98, i64 0}
!98 = !{!"float", !78, i64 0}
!99 = !{!100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!100 = distinct !{!100, !101, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!101 = distinct !{!101, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!102 = distinct !{!102, !103, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!103 = distinct !{!103, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!104 = distinct !{!104, !103, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!105 = distinct !{!105, !106, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!106 = distinct !{!106, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!107 = distinct !{!107, !106, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!108 = distinct !{!108, !106, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!109 = distinct !{!109, !110, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!110 = distinct !{!110, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!111 = distinct !{!111, !110, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!112 = distinct !{!112, !110, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!113 = distinct !{!113, !114, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!114 = distinct !{!114, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"\01?sort@@YAXAIAM00@Z: %c"}
!117 = distinct !{!117, !"\01?sort@@YAXAIAM00@Z"}
!118 = !{!119, !120, !100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!119 = distinct !{!119, !117, !"\01?sort@@YAXAIAM00@Z: %a"}
!120 = distinct !{!120, !117, !"\01?sort@@YAXAIAM00@Z: %b"}
!121 = !{!120}
!122 = !{!119, !116, !100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!123 = !{!119}
!124 = !{!120, !116, !100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!125 = !{!126}
!126 = distinct !{!126, !127, !"\01?sort@@YAXAIAM00@Z: %c"}
!127 = distinct !{!127, !"\01?sort@@YAXAIAM00@Z"}
!128 = !{!129, !130, !100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!129 = distinct !{!129, !127, !"\01?sort@@YAXAIAM00@Z: %a"}
!130 = distinct !{!130, !127, !"\01?sort@@YAXAIAM00@Z: %b"}
!131 = !{!130}
!132 = !{!129, !126, !100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!133 = !{!129}
!134 = !{!130, !126, !100, !102, !104, !105, !107, !108, !109, !111, !112, !113}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}

