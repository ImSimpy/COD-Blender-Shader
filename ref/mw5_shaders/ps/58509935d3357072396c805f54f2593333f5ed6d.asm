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
; shader hash: e5097e345228a06c7f59741f4b490345
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
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = bitcast i32 %848 to float
  %850 = fcmp fast oge float %849, 0.000000e+00
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = select i1 %850, float %849, float %852
  %854 = call float @dx.op.dot2.f32(i32 54, float %830, float %831, float %830, float %831)  ; Dot2(ax,ay,bx,by)
  %855 = fmul fast float %854, 0x3FE3333340000000
  %856 = fsub fast float 1.000000e+00, %855
  %857 = call float @dx.op.dot3.f32(i32 55, float %830, float %831, float %856, float %830, float %831, float %856)  ; Dot3(ax,ay,az,bx,by,bz)
  %858 = call float @dx.op.unary.f32(i32 25, float %857)  ; Rsqrt(value)
  %859 = fmul fast float %858, %830
  %860 = fmul fast float %858, %831
  %861 = fmul fast float %856, %858
  %862 = fmul fast float %861, %70
  %863 = fmul fast float %861, %71
  %864 = fmul fast float %861, %72
  %865 = fmul fast float %859, %46
  %866 = fmul fast float %859, %47
  %867 = fmul fast float %859, %48
  %868 = fmul fast float %75, %49
  %869 = fmul fast float %868, %860
  %870 = fmul fast float %78, %49
  %871 = fmul fast float %870, %860
  %872 = fmul fast float %81, %49
  %873 = fmul fast float %872, %860
  %874 = fadd fast float %869, %865
  %875 = fmul fast float %874, %69
  %876 = fadd fast float %875, %862
  %877 = fadd fast float %871, %866
  %878 = fmul fast float %877, %69
  %879 = fadd fast float %878, %863
  %880 = fadd fast float %873, %867
  %881 = fmul fast float %880, %69
  %882 = fadd fast float %881, %864
  %883 = call float @dx.op.dot3.f32(i32 55, float %876, float %879, float %882, float %876, float %879, float %882)  ; Dot3(ax,ay,az,bx,by,bz)
  %884 = call float @dx.op.unary.f32(i32 25, float %883)  ; Rsqrt(value)
  %885 = fmul fast float %876, %884
  %886 = fmul fast float %879, %884
  %887 = fmul fast float %882, %884
  %888 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %889 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %890 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %891 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %892 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %893 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %894 = fadd fast float %888, %123
  %895 = fadd fast float %889, %124
  %896 = fadd fast float %890, %125
  %897 = fadd fast float %891, %123
  %898 = fadd fast float %892, %124
  %899 = fadd fast float %893, %125
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %902 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %903 = extractvalue %dx.types.CBufRet.f32 %900, 2
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %906 = extractvalue %dx.types.CBufRet.f32 %904, 3
  %907 = fmul fast float %901, %67
  %908 = fmul fast float %907, %905
  %909 = fmul fast float %902, %68
  %910 = fmul fast float %909, %906
  %911 = fptoui float %908 to i32
  %912 = fptoui float %910 to i32
  %913 = fadd fast float %901, -1.000000e+00
  %914 = fadd fast float %902, -1.000000e+00
  %915 = fptoui float %913 to i32
  %916 = fptoui float %914 to i32
  %917 = call i32 @dx.op.binary.i32(i32 40, i32 %911, i32 %915)  ; UMin(a,b)
  %918 = call i32 @dx.op.binary.i32(i32 40, i32 %912, i32 %916)  ; UMin(a,b)
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %921 = extractvalue %dx.types.CBufRet.f32 %919, 3
  %922 = fmul fast float %920, %58
  %923 = fsub fast float %922, %921
  %924 = fadd fast float %903, -1.000000e+00
  %925 = call float @dx.op.binary.f32(i32 36, float %923, float %924)  ; FMin(a,b)
  %926 = fptoui float %925 to i32
  %927 = fptoui float %901 to i32
  %928 = fptoui float %902 to i32
  %929 = mul i32 %926, %928
  %930 = add i32 %929, %918
  %931 = mul i32 %930, %927
  %932 = add i32 %931, %917
  %933 = shl i32 %932, 2
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = and i32 %935, 1023
  %937 = lshr i32 %935, 10
  %938 = icmp eq i32 %936, 0
  br i1 %938, label %1392, label %939

; <label>:939                                     ; preds = %829
  %940 = and i32 %935, 1023
  br label %941

; <label>:941                                     ; preds = %1070, %939
  %942 = phi i32 [ %1020, %1070 ], [ 0, %939 ]
  %943 = phi float [ %1071, %1070 ], [ 0.000000e+00, %939 ]
  %944 = phi float [ %1072, %1070 ], [ %853, %939 ]
  %945 = phi float [ %1073, %1070 ], [ %846, %939 ]
  %946 = phi float [ %1074, %1070 ], [ %838, %939 ]
  %947 = phi float [ %1075, %1070 ], [ %839, %939 ]
  %948 = phi float [ %1076, %1070 ], [ %840, %939 ]
  %949 = phi float [ %1077, %1070 ], [ 0.000000e+00, %939 ]
  %950 = phi float [ %1078, %1070 ], [ 0.000000e+00, %939 ]
  %951 = phi float [ %1079, %1070 ], [ %835, %939 ]
  %952 = phi float [ %1080, %1070 ], [ %836, %939 ]
  %953 = phi float [ %1081, %1070 ], [ %837, %939 ]
  %954 = phi float [ %1082, %1070 ], [ %885, %939 ]
  %955 = phi float [ %1083, %1070 ], [ %886, %939 ]
  %956 = phi float [ %1084, %1070 ], [ %887, %939 ]
  %957 = phi float [ %1085, %1070 ], [ %844, %939 ]
  %958 = phi float [ %1086, %1070 ], [ %843, %939 ]
  %959 = phi float [ %1087, %1070 ], [ 0.000000e+00, %939 ]
  %960 = phi float [ %1088, %1070 ], [ %841, %939 ]
  %961 = phi float [ %1089, %1070 ], [ %832, %939 ]
  %962 = phi float [ %1090, %1070 ], [ %833, %939 ]
  %963 = phi float [ %1091, %1070 ], [ %834, %939 ]
  %964 = add nuw nsw i32 %942, %937
  %965 = shl i32 %964, 2
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = shl i32 %967, 8
  %969 = or i32 %968, 48
  %970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = extractvalue %dx.types.ResRet.f32 %970, 1
  %973 = extractvalue %dx.types.ResRet.f32 %970, 2
  %974 = extractvalue %dx.types.ResRet.f32 %970, 3
  %975 = or i32 %968, 64
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = extractvalue %dx.types.ResRet.i32 %976, 1
  %979 = or i32 %968, 80
  %980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 2
  %982 = extractvalue %dx.types.ResRet.f32 %980, 3
  %983 = or i32 %968, 96
  %984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.f32 %984, 0
  %986 = extractvalue %dx.types.ResRet.f32 %984, 1
  %987 = extractvalue %dx.types.ResRet.f32 %984, 2
  %988 = extractvalue %dx.types.ResRet.f32 %984, 3
  %989 = or i32 %968, 112
  %990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 2
  %992 = or i32 %968, 128
  %993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = extractvalue %dx.types.ResRet.f32 %993, 1
  %996 = extractvalue %dx.types.ResRet.f32 %993, 2
  %997 = extractvalue %dx.types.ResRet.f32 %993, 3
  %998 = or i32 %968, 144
  %999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.f32 %999, 0
  %1001 = extractvalue %dx.types.ResRet.f32 %999, 1
  %1002 = extractvalue %dx.types.ResRet.f32 %999, 2
  %1003 = extractvalue %dx.types.ResRet.f32 %999, 3
  %1004 = or i32 %968, 160
  %1005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = extractvalue %dx.types.ResRet.f32 %1005, 3
  %1010 = or i32 %968, 192
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = or i32 %968, 208
  %1014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = or i32 %968, 248
  %1017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.ResRet.f32 %1017, 1
  %1020 = add nuw nsw i32 %942, 1
  %1021 = bitcast float %974 to i32
  %1022 = and i32 %1021, 512
  %1023 = icmp eq i32 %1022, 0
  %1024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = extractvalue %dx.types.ResRet.f32 %1024, 3
  %1029 = call float @dx.op.dot4.f32(i32 56, float %1025, float %1026, float %1027, float %1028, float %123, float %124, float %125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1030 = or i32 %968, 16
  %1031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.ResRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.ResRet.f32 %1031, 2
  %1035 = extractvalue %dx.types.ResRet.f32 %1031, 3
  %1036 = call float @dx.op.dot4.f32(i32 56, float %1032, float %1033, float %1034, float %1035, float %123, float %124, float %125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1037 = or i32 %968, 32
  %1038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.ResRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.ResRet.f32 %1038, 2
  %1042 = extractvalue %dx.types.ResRet.f32 %1038, 3
  %1043 = call float @dx.op.dot4.f32(i32 56, float %1039, float %1040, float %1041, float %1042, float %123, float %124, float %125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1044 = call float @dx.op.unary.f32(i32 27, float %1029)  ; Round_ni(value)
  %1045 = call float @dx.op.unary.f32(i32 6, float %1044)  ; FAbs(value)
  %1046 = call float @dx.op.unary.f32(i32 27, float %1036)  ; Round_ni(value)
  %1047 = call float @dx.op.unary.f32(i32 6, float %1046)  ; FAbs(value)
  %1048 = call float @dx.op.unary.f32(i32 6, float %1043)  ; FAbs(value)
  %1049 = call float @dx.op.unary.f32(i32 27, float %1048)  ; Round_ni(value)
  %1050 = fadd fast float %1047, %1045
  %1051 = fadd fast float %1050, %1049
  %1052 = fcmp fast oeq float %1051, 0.000000e+00
  %1053 = call float @dx.op.dot4.f32(i32 56, float %1025, float %1026, float %1027, float %1028, float %894, float %895, float %896, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1054 = call float @dx.op.dot4.f32(i32 56, float %1032, float %1033, float %1034, float %1035, float %894, float %895, float %896, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1055 = call float @dx.op.dot4.f32(i32 56, float %1025, float %1026, float %1027, float %1028, float %897, float %898, float %899, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1056 = call float @dx.op.dot4.f32(i32 56, float %1032, float %1033, float %1034, float %1035, float %897, float %898, float %899, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1057 = fsub fast float %1053, %1029
  %1058 = fsub fast float %1055, %1029
  %1059 = fsub fast float %1054, %1036
  %1060 = fsub fast float %1056, %1036
  %1061 = call float @dx.op.dot3.f32(i32 55, float %971, float %972, float %973, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 2
  %1064 = fadd fast float %1063, %1061
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  %1066 = extractvalue %dx.types.CBufRet.f32 %1062, 0
  %1067 = fcmp fast ogt float %1065, %1066
  %1068 = and i1 %1052, %1067
  %1069 = and i1 %1023, %1068
  br i1 %1069, label %1093, label %1070

; <label>:1070                                    ; preds = %1378, %1174, %1093, %941
  %1071 = phi float [ %943, %1093 ], [ %1177, %1174 ], [ %1177, %1378 ], [ %943, %941 ]
  %1072 = phi float [ %944, %1093 ], [ %944, %1174 ], [ %1354, %1378 ], [ %944, %941 ]
  %1073 = phi float [ %945, %1093 ], [ %945, %1174 ], [ %1352, %1378 ], [ %945, %941 ]
  %1074 = phi float [ %946, %1093 ], [ %946, %1174 ], [ %1330, %1378 ], [ %946, %941 ]
  %1075 = phi float [ %947, %1093 ], [ %947, %1174 ], [ %1331, %1378 ], [ %947, %941 ]
  %1076 = phi float [ %948, %1093 ], [ %948, %1174 ], [ %1332, %1378 ], [ %948, %941 ]
  %1077 = phi float [ %949, %1093 ], [ %949, %1174 ], [ %1301, %1378 ], [ %949, %941 ]
  %1078 = phi float [ %950, %1093 ], [ %950, %1174 ], [ %1299, %1378 ], [ %950, %941 ]
  %1079 = phi float [ %951, %1093 ], [ %951, %1174 ], [ %1388, %1378 ], [ %951, %941 ]
  %1080 = phi float [ %952, %1093 ], [ %952, %1174 ], [ %1389, %1378 ], [ %952, %941 ]
  %1081 = phi float [ %953, %1093 ], [ %953, %1174 ], [ %1390, %1378 ], [ %953, %941 ]
  %1082 = phi float [ %954, %1093 ], [ %954, %1174 ], [ %1280, %1378 ], [ %954, %941 ]
  %1083 = phi float [ %955, %1093 ], [ %955, %1174 ], [ %1281, %1378 ], [ %955, %941 ]
  %1084 = phi float [ %956, %1093 ], [ %956, %1174 ], [ %1282, %1378 ], [ %956, %941 ]
  %1085 = phi float [ %957, %1093 ], [ %957, %1174 ], [ %1310, %1378 ], [ %957, %941 ]
  %1086 = phi float [ %958, %1093 ], [ %958, %1174 ], [ %1307, %1378 ], [ %958, %941 ]
  %1087 = phi float [ %959, %1093 ], [ %959, %1174 ], [ %1304, %1378 ], [ %959, %941 ]
  %1088 = phi float [ %960, %1093 ], [ %960, %1174 ], [ %1297, %1378 ], [ %960, %941 ]
  %1089 = phi float [ %961, %1093 ], [ %961, %1174 ], [ %1292, %1378 ], [ %961, %941 ]
  %1090 = phi float [ %962, %1093 ], [ %962, %1174 ], [ %1293, %1378 ], [ %962, %941 ]
  %1091 = phi float [ %963, %1093 ], [ %963, %1174 ], [ %1294, %1378 ], [ %963, %941 ]
  %1092 = icmp eq i32 %1020, %940
  br i1 %1092, label %1391, label %941

; <label>:1093                                    ; preds = %941
  %1094 = extractvalue %dx.types.ResRet.f32 %990, 3
  %1095 = extractvalue %dx.types.ResRet.f32 %990, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %990, 0
  %1097 = extractvalue %dx.types.ResRet.f32 %980, 1
  %1098 = extractvalue %dx.types.ResRet.f32 %980, 0
  %1099 = extractvalue %dx.types.ResRet.i32 %976, 3
  %1100 = extractvalue %dx.types.ResRet.i32 %976, 2
  %1101 = add i32 %1099, 0
  %1102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1101, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1104 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1102, %dx.types.Handle %1103, float %1029, float %1036, float undef, float undef, i32 0, i32 0, i32 undef, float %1057, float %1059, float undef, float %1058, float %1060, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = fmul fast float %1105, %1098
  %1107 = fadd fast float %1106, %1097
  %1108 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  %1109 = fmul fast float %1029, %985
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %986, float %1036, float %1109)  ; FMad(a,b,c)
  %1111 = fadd fast float %1110, %1096
  %1112 = fmul fast float %1029, %987
  %1113 = call float @dx.op.tertiary.f32(i32 46, float %988, float %1036, float %1112)  ; FMad(a,b,c)
  %1114 = fadd fast float %1113, %1095
  %1115 = fmul fast float %1057, %985
  %1116 = call float @dx.op.tertiary.f32(i32 46, float %986, float %1059, float %1115)  ; FMad(a,b,c)
  %1117 = fmul fast float %1057, %987
  %1118 = call float @dx.op.tertiary.f32(i32 46, float %988, float %1059, float %1117)  ; FMad(a,b,c)
  %1119 = fmul fast float %1058, %985
  %1120 = call float @dx.op.tertiary.f32(i32 46, float %986, float %1060, float %1119)  ; FMad(a,b,c)
  %1121 = fmul fast float %1058, %987
  %1122 = call float @dx.op.tertiary.f32(i32 46, float %988, float %1060, float %1121)  ; FMad(a,b,c)
  %1123 = add i32 %1100, 0
  %1124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1123, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1125 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1124, %dx.types.Handle %1103, float %1111, float %1114, float undef, float undef, i32 0, i32 0, i32 undef, float %1116, float %1118, float undef, float %1120, float %1122, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = and i32 %1021, 1024
  %1128 = icmp ne i32 %1127, 0
  %1129 = fcmp fast ogt float %1126, 0x3FE0101020000000
  %1130 = uitofp i1 %1129 to float
  %1131 = select i1 %1128, float %1130, float %1126
  %1132 = and i32 %1021, 8192
  %1133 = icmp ne i32 %1132, 0
  %1134 = select i1 %1133, float %1094, float 1.000000e+00
  %1135 = fmul fast float %1029, 2.000000e+00
  %1136 = fadd fast float %1135, -1.000000e+00
  %1137 = call float @dx.op.unary.f32(i32 6, float %1136)  ; FAbs(value)
  %1138 = fmul fast float %1137, %1018
  %1139 = fsub fast float %1138, %1018
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1141 = fmul fast float %1036, 2.000000e+00
  %1142 = fadd fast float %1141, -1.000000e+00
  %1143 = call float @dx.op.unary.f32(i32 6, float %1142)  ; FAbs(value)
  %1144 = fmul fast float %1143, %1019
  %1145 = fsub fast float %1144, %1019
  %1146 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1147 = fmul fast float %1048, %981
  %1148 = fsub fast float %1147, %981
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1150 = fmul fast float %1108, %1134
  %1151 = fmul fast float %1150, %1105
  %1152 = fmul fast float %1151, %1140
  %1153 = fmul fast float %1152, %1131
  %1154 = fmul fast float %1153, %1146
  %1155 = fmul fast float %1154, %1149
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1158 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1159 = fsub fast float %1065, %1158
  %1160 = fmul fast float %1159, %1157
  %1161 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1162 = fmul fast float %1155, %982
  %1163 = fadd fast float %1155, %982
  %1164 = fmul fast float %1163, %991
  %1165 = fsub fast float %1164, %991
  %1166 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1167 = and i32 %1021, 128
  %1168 = icmp ne i32 %1167, 0
  %1169 = select i1 %1168, float %1166, float %1162
  %1170 = fmul fast float %1169, %1161
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 0
  %1173 = fcmp fast ugt float %1170, %1172
  br i1 %1173, label %1174, label %1070

; <label>:1174                                    ; preds = %1093
  %1175 = select i1 %1133, float %1170, float 0.000000e+00
  %1176 = fadd fast float %1175, %943
  %1177 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  br i1 %1133, label %1070, label %1178

; <label>:1178                                    ; preds = %1174
  %1179 = and i32 %1021, 4
  %1180 = and i32 %1021, 8
  %1181 = add i32 %977, 0
  %1182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1181, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1184 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1182, %dx.types.Handle %1183, float %1111, float %1114, float undef, float undef, i32 0, i32 0, i32 undef, float %1116, float %1118, float undef, float %1120, float %1122, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.ResRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.ResRet.f32 %1184, 2
  %1188 = extractvalue %dx.types.ResRet.f32 %1184, 3
  %1189 = bitcast float %1003 to i32
  %1190 = and i32 %1189, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = lshr i32 %1189, 8
  %1193 = and i32 %1192, 255
  %1194 = uitofp i32 %1193 to float
  %1195 = fmul fast float %1188, %1191
  %1196 = fadd fast float %1195, %1194
  %1197 = fmul fast float %1196, 0x3F70101000000000
  %1198 = add i32 %978, 0
  %1199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1198, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1200 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1199, %dx.types.Handle %1183, float %1111, float %1114, float undef, float undef, i32 0, i32 0, i32 undef, float %1116, float %1118, float undef, float %1120, float %1122, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = extractvalue %dx.types.ResRet.f32 %1200, 1
  %1203 = extractvalue %dx.types.ResRet.f32 %1200, 2
  %1204 = extractvalue %dx.types.ResRet.f32 %1200, 3
  %1205 = bitcast float %997 to i32
  %1206 = and i32 %1205, 255
  %1207 = uitofp i32 %1206 to float
  %1208 = lshr i32 %1205, 8
  %1209 = and i32 %1208, 255
  %1210 = uitofp i32 %1209 to float
  %1211 = lshr i32 %1205, 16
  %1212 = and i32 %1211, 255
  %1213 = uitofp i32 %1212 to float
  %1214 = fmul fast float %1213, 0x3F70101000000000
  %1215 = fmul fast float %1201, %1207
  %1216 = fadd fast float %1215, %1210
  %1217 = fmul fast float %1216, 0x3F70101000000000
  %1218 = fadd fast float %1202, -5.000000e-01
  %1219 = fadd fast float %1204, -5.000000e-01
  %1220 = fmul fast float %1218, %1214
  %1221 = fmul fast float %1219, %1214
  %1222 = fadd fast float %1220, 5.000000e-01
  %1223 = fadd fast float %1221, 5.000000e-01
  %1224 = fmul fast float %1185, %1006
  %1225 = fmul fast float %1186, %1007
  %1226 = fmul fast float %1187, %1008
  %1227 = fmul fast float %1222, 2.000000e+00
  %1228 = fadd fast float %1227, -1.000000e+00
  %1229 = fmul fast float %1223, 2.000000e+00
  %1230 = fadd fast float %1229, -1.000000e+00
  %1231 = fadd fast float %1228, %1230
  %1232 = fmul fast float %1231, 5.000000e-01
  %1233 = fsub fast float %1228, %1230
  %1234 = fmul fast float %1233, 5.000000e-01
  %1235 = call float @dx.op.unary.f32(i32 6, float %1232)  ; FAbs(value)
  %1236 = fsub fast float 1.000000e+00, %1235
  %1237 = call float @dx.op.unary.f32(i32 6, float %1234)  ; FAbs(value)
  %1238 = fsub fast float %1236, %1237
  %1239 = call float @dx.op.dot3.f32(i32 55, float %1232, float %1234, float %1238, float %1232, float %1234, float %1238)  ; Dot3(ax,ay,az,bx,by,bz)
  %1240 = call float @dx.op.unary.f32(i32 25, float %1239)  ; Rsqrt(value)
  %1241 = fmul fast float %1232, %1240
  %1242 = fmul fast float %1234, %1240
  %1243 = fmul fast float %1240, %1238
  %1244 = fmul fast float %1243, %971
  %1245 = fmul fast float %1243, %972
  %1246 = fmul fast float %1243, %973
  %1247 = fmul fast float %1241, %994
  %1248 = fmul fast float %1241, %995
  %1249 = fmul fast float %1241, %996
  %1250 = fadd fast float %1247, %1244
  %1251 = fadd fast float %1248, %1245
  %1252 = fadd fast float %1249, %1246
  %1253 = fmul fast float %1242, %1000
  %1254 = fmul fast float %1242, %1001
  %1255 = fmul fast float %1242, %1002
  %1256 = fadd fast float %1250, %1253
  %1257 = fadd fast float %1251, %1254
  %1258 = fadd fast float %1252, %1255
  %1259 = call float @dx.op.dot3.f32(i32 55, float %1256, float %1257, float %1258, float %1256, float %1257, float %1258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1260 = call float @dx.op.unary.f32(i32 25, float %1259)  ; Rsqrt(value)
  %1261 = fmul fast float %1256, %1260
  %1262 = fmul fast float %1257, %1260
  %1263 = fmul fast float %1258, %1260
  %1264 = icmp ne i32 %1180, 0
  %1265 = select i1 %1264, float 1.000000e+00, float 0.000000e+00
  %1266 = fmul fast float %1170, %1265
  %1267 = and i32 %1021, 1
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1269, label %1273

; <label>:1269                                    ; preds = %1178
  %1270 = fsub fast float %1261, %954
  %1271 = fsub fast float %1262, %955
  %1272 = fsub fast float %1263, %956
  br label %1273

; <label>:1273                                    ; preds = %1269, %1178
  %1274 = phi float [ %1270, %1269 ], [ %1261, %1178 ]
  %1275 = phi float [ %1271, %1269 ], [ %1262, %1178 ]
  %1276 = phi float [ %1272, %1269 ], [ %1263, %1178 ]
  %1277 = fmul float %1276, %1266
  %1278 = fmul float %1275, %1266
  %1279 = fmul float %1274, %1266
  %1280 = fadd fast float %1279, %954
  %1281 = fadd fast float %1278, %955
  %1282 = fadd fast float %1277, %956
  %1283 = icmp ne i32 %1179, 0
  %1284 = select i1 %1283, float 1.000000e+00, float 0.000000e+00
  %1285 = fmul fast float %1170, %1284
  %1286 = fsub fast float %1224, %961
  %1287 = fsub fast float %1225, %962
  %1288 = fsub fast float %1226, %963
  %1289 = fmul fast float %1286, %1285
  %1290 = fmul fast float %1287, %1285
  %1291 = fmul fast float %1288, %1285
  %1292 = fadd fast float %1289, %961
  %1293 = fadd fast float %1290, %962
  %1294 = fadd fast float %1291, %963
  %1295 = fsub fast float %1197, %960
  %1296 = fmul fast float %1295, %1285
  %1297 = fadd fast float %1296, %960
  %1298 = fmul fast float %1285, %950
  %1299 = fsub fast float %950, %1298
  %1300 = fmul fast float %1285, %949
  %1301 = fsub fast float %949, %1300
  %1302 = bitcast float %1015 to i32
  %1303 = fadd fast float %1170, %959
  %1304 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1305 = fsub fast float %1217, %958
  %1306 = fmul fast float %1305, %1266
  %1307 = fadd fast float %1306, %958
  %1308 = fsub fast float %1203, %957
  %1309 = fmul fast float %1308, %1266
  %1310 = fadd fast float %1309, %957
  br i1 %1268, label %1319, label %1311

; <label>:1311                                    ; preds = %1273
  %1312 = and i32 %1021, 32768
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1329, label %1314

; <label>:1314                                    ; preds = %1311
  %1315 = fmul fast float %1266, 1.270000e+02
  %1316 = fadd fast float %1315, %946
  %1317 = fadd fast float %1315, %947
  %1318 = fadd fast float %1315, %948
  br label %1329

; <label>:1319                                    ; preds = %1273
  %1320 = fsub fast float 1.270000e+02, %946
  %1321 = fsub fast float 1.270000e+02, %947
  %1322 = fsub fast float 1.270000e+02, %948
  %1323 = fmul fast float %1266, %1320
  %1324 = fmul fast float %1266, %1321
  %1325 = fmul fast float %1266, %1322
  %1326 = fadd fast float %1323, %946
  %1327 = fadd fast float %1324, %947
  %1328 = fadd fast float %1325, %948
  br label %1329

; <label>:1329                                    ; preds = %1319, %1314, %1311
  %1330 = phi float [ %1316, %1314 ], [ %946, %1311 ], [ %1326, %1319 ]
  %1331 = phi float [ %1317, %1314 ], [ %947, %1311 ], [ %1327, %1319 ]
  %1332 = phi float [ %1318, %1314 ], [ %948, %1311 ], [ %1328, %1319 ]
  %1333 = call float @dx.op.dot3.f32(i32 55, float %1224, float %1225, float %1226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.CBufRet.f32 %1334, 1
  %1337 = fmul fast float %1336, %1333
  %1338 = fadd fast float %1337, %1335
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = bitcast float %1009 to i32
  %1341 = and i32 %1340, 65535
  %1342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1341)  ; LegacyF16ToF32(value)
  %1343 = lshr i32 %1340, 16
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = fcmp fast oge float %1342, 0.000000e+00
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 0
  %1348 = select i1 %1345, float %1342, float %1347
  %1349 = fadd fast float %1348, %1344
  %1350 = fsub fast float %1339, %945
  %1351 = fmul fast float %1350, %1170
  %1352 = fadd fast float %1351, %945
  %1353 = fmul fast float %1349, %1170
  %1354 = call float @dx.op.binary.f32(i32 35, float %944, float %1353)  ; FMax(a,b)
  %1355 = and i32 %1021, 16
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1378, label %1357

; <label>:1357                                    ; preds = %1329
  %1358 = add i32 %1012, 0
  %1359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1358, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1360 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1359, %dx.types.Handle %1183, float %1111, float %1114, float undef, float undef, i32 0, i32 0, i32 undef, float %1116, float %1118, float undef, float %1120, float %1122, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.ResRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.ResRet.f32 %1360, 2
  %1364 = and i32 %1302, 65535
  %1365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1364)  ; LegacyF16ToF32(value)
  %1366 = fmul fast float %1361, %1006
  %1367 = fmul fast float %1362, %1007
  %1368 = fmul fast float %1363, %1008
  %1369 = and i32 %1021, 16384
  %1370 = icmp ne i32 %1369, 0
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 0
  %1373 = select i1 %1370, float %1372, float 1.000000e+00
  %1374 = fmul fast float %1373, %1365
  %1375 = fmul fast float %1366, %1374
  %1376 = fmul fast float %1367, %1374
  %1377 = fmul fast float %1368, %1374
  br label %1378

; <label>:1378                                    ; preds = %1357, %1329
  %1379 = phi float [ %1375, %1357 ], [ 0.000000e+00, %1329 ]
  %1380 = phi float [ %1376, %1357 ], [ 0.000000e+00, %1329 ]
  %1381 = phi float [ %1377, %1357 ], [ 0.000000e+00, %1329 ]
  %1382 = fsub fast float %1379, %951
  %1383 = fsub fast float %1380, %952
  %1384 = fsub fast float %1381, %953
  %1385 = fmul fast float %1382, %1170
  %1386 = fmul fast float %1383, %1170
  %1387 = fmul fast float %1384, %1170
  %1388 = fadd fast float %1385, %951
  %1389 = fadd fast float %1386, %952
  %1390 = fadd fast float %1387, %953
  br label %1070

; <label>:1391                                    ; preds = %1070
  br label %1392

; <label>:1392                                    ; preds = %1391, %829
  %1393 = phi float [ 0.000000e+00, %829 ], [ %1071, %1391 ]
  %1394 = phi float [ %853, %829 ], [ %1072, %1391 ]
  %1395 = phi float [ %846, %829 ], [ %1073, %1391 ]
  %1396 = phi float [ %838, %829 ], [ %1074, %1391 ]
  %1397 = phi float [ %839, %829 ], [ %1075, %1391 ]
  %1398 = phi float [ %840, %829 ], [ %1076, %1391 ]
  %1399 = phi float [ 0.000000e+00, %829 ], [ %1077, %1391 ]
  %1400 = phi float [ 0.000000e+00, %829 ], [ %1078, %1391 ]
  %1401 = phi float [ %835, %829 ], [ %1079, %1391 ]
  %1402 = phi float [ %836, %829 ], [ %1080, %1391 ]
  %1403 = phi float [ %837, %829 ], [ %1081, %1391 ]
  %1404 = phi float [ %885, %829 ], [ %1082, %1391 ]
  %1405 = phi float [ %886, %829 ], [ %1083, %1391 ]
  %1406 = phi float [ %887, %829 ], [ %1084, %1391 ]
  %1407 = phi float [ %844, %829 ], [ %1085, %1391 ]
  %1408 = phi float [ %843, %829 ], [ %1086, %1391 ]
  %1409 = phi float [ 0.000000e+00, %829 ], [ %1087, %1391 ]
  %1410 = phi float [ %841, %829 ], [ %1088, %1391 ]
  %1411 = phi float [ %832, %829 ], [ %1089, %1391 ]
  %1412 = phi float [ %833, %829 ], [ %1090, %1391 ]
  %1413 = phi float [ %834, %829 ], [ %1091, %1391 ]
  %1414 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1415 = call float @dx.op.unary.f32(i32 25, float %1414)  ; Rsqrt(value)
  %1416 = fmul fast float %1415, %1404
  %1417 = fmul fast float %1415, %1405
  %1418 = fmul fast float %1415, %1406
  %1419 = fadd fast float %1409, %842
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1421 = call float @dx.op.dot3.f32(i32 55, float %1416, float %1417, float %1418, float %1416, float %1417, float %1418)  ; Dot3(ax,ay,az,bx,by,bz)
  %1422 = call float @dx.op.unary.f32(i32 25, float %1421)  ; Rsqrt(value)
  %1423 = fmul fast float %1422, %1416
  %1424 = fmul fast float %1422, %1417
  %1425 = fmul fast float %1422, %1418
  %1426 = fadd fast float %1410, 0xBFB99999A0000000
  %1427 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  %1428 = fmul fast float %1427, 0x3FF1C71C80000000
  %1429 = call float @dx.op.binary.f32(i32 36, float %1410, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1430 = fsub fast float 1.000000e+00, %1428
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1432 = fmul fast float %1431, %1411
  %1433 = fmul fast float %1431, %1412
  %1434 = fmul fast float %1431, %1413
  %1435 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1436 = call float @dx.op.unary.f32(i32 7, float %1433)  ; Saturate(value)
  %1437 = call float @dx.op.unary.f32(i32 7, float %1434)  ; Saturate(value)
  %1438 = fmul fast float %1428, %1411
  %1439 = fmul fast float %1428, %1412
  %1440 = fmul fast float %1428, %1413
  %1441 = fadd fast float %1438, %1429
  %1442 = fadd fast float %1439, %1429
  %1443 = fadd fast float %1440, %1429
  %1444 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  %1445 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  %1446 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1447 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1448 = call float @dx.op.binary.f32(i32 36, float %1396, float 1.270000e+02)  ; FMin(a,b)
  %1449 = call float @dx.op.binary.f32(i32 36, float %1397, float 1.270000e+02)  ; FMin(a,b)
  %1450 = call float @dx.op.binary.f32(i32 36, float %1398, float 1.270000e+02)  ; FMin(a,b)
  %1451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.i32 %1451, 3
  %1453 = and i32 %1452, 8
  %1454 = icmp ne i32 %1453, 0
  %1455 = call float @dx.op.binary.f32(i32 35, float %1435, float %1411)  ; FMax(a,b)
  %1456 = call float @dx.op.binary.f32(i32 35, float %1436, float %1411)  ; FMax(a,b)
  %1457 = call float @dx.op.binary.f32(i32 35, float %1437, float %1411)  ; FMax(a,b)
  %1458 = call float @dx.op.dot3.f32(i32 55, float %1435, float %1436, float %1437, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1459 = select i1 %184, float %1411, float %1435
  %1460 = select i1 %184, float %1458, float %1436
  %1461 = select i1 %184, float 1.000000e+00, float %1437
  %1462 = select i1 %1454, float %1455, float %1459
  %1463 = select i1 %1454, float %1456, float %1460
  %1464 = select i1 %1454, float %1457, float %1461
  %1465 = and i32 %160, 3
  %1466 = select i1 %154, i32 %1465, i32 0
  %1467 = icmp eq i32 %1466, 1
  br i1 %1467, label %1468, label %1544

; <label>:1468                                    ; preds = %1392
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.CBufRet.f32 %1469, 1
  %1472 = fadd fast float %1470, %123
  %1473 = fadd fast float %1471, %124
  %1474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.f32 %1474, 0
  %1476 = extractvalue %dx.types.CBufRet.f32 %1474, 1
  %1477 = fsub fast float %1472, %1475
  %1478 = fsub fast float %1473, %1476
  %1479 = fmul fast float %1477, %1477
  %1480 = fmul fast float %1478, %1478
  %1481 = fadd fast float %1479, %1480
  %1482 = call float @dx.op.unary.f32(i32 24, float %1481)  ; Sqrt(value)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1474, 2
  %1484 = fcmp fast olt float %1482, %1483
  br i1 %1484, label %1485, label %1538

; <label>:1485                                    ; preds = %1468
  %1486 = extractvalue %dx.types.CBufRet.f32 %1469, 2
  %1487 = fadd fast float %1486, %125
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 0
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.CBufRet.f32 %1488, 1
  %1495 = extractvalue %dx.types.CBufRet.f32 %1490, 1
  %1496 = extractvalue %dx.types.CBufRet.f32 %1492, 1
  %1497 = extractvalue %dx.types.CBufRet.f32 %1488, 3
  %1498 = extractvalue %dx.types.CBufRet.f32 %1490, 3
  %1499 = extractvalue %dx.types.CBufRet.f32 %1492, 3
  %1500 = fadd fast float %1497, %1472
  %1501 = fadd fast float %1498, %1473
  %1502 = fadd fast float %1487, %1499
  %1503 = fmul fast float %1500, %1489
  %1504 = call float @dx.op.tertiary.f32(i32 46, float %1501, float %1491, float %1503)  ; FMad(a,b,c)
  %1505 = call float @dx.op.tertiary.f32(i32 46, float %1502, float %1493, float %1504)  ; FMad(a,b,c)
  %1506 = fmul fast float %1500, %1494
  %1507 = call float @dx.op.tertiary.f32(i32 46, float %1501, float %1495, float %1506)  ; FMad(a,b,c)
  %1508 = call float @dx.op.tertiary.f32(i32 46, float %1502, float %1496, float %1507)  ; FMad(a,b,c)
  %1509 = fsub fast float %1505, %1497
  %1510 = fsub fast float %1508, %1498
  %1511 = fsub fast float %1509, %1475
  %1512 = fadd fast float %1511, %1483
  %1513 = fsub fast float %1510, %1476
  %1514 = fadd fast float %1513, %1483
  %1515 = extractvalue %dx.types.CBufRet.f32 %1474, 3
  %1516 = fmul fast float %1512, %1515
  %1517 = fmul fast float %1514, %1515
  %1518 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1519 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1520 = fsub fast float 1.000000e+00, %1518
  %1521 = fsub fast float 1.000000e+00, %1519
  %1522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %1520, float %1521, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1523 = extractvalue %dx.types.ResRet.f32 %1522, 0
  %1524 = fcmp fast ugt float %1523, 0.000000e+00
  br i1 %1524, label %1525, label %1538

; <label>:1525                                    ; preds = %1485
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 2
  %1528 = fmul fast float %1527, %1523
  %1529 = extractvalue %dx.types.CBufRet.f32 %1526, 3
  %1530 = fadd fast float %1529, %1528
  %1531 = extractvalue %dx.types.CBufRet.f32 %1492, 2
  %1532 = fadd fast float %1530, %1499
  %1533 = fmul fast float %1505, %1493
  %1534 = call float @dx.op.tertiary.f32(i32 46, float %1508, float %1496, float %1533)  ; FMad(a,b,c)
  %1535 = call float @dx.op.tertiary.f32(i32 46, float %1532, float %1531, float %1534)  ; FMad(a,b,c)
  %1536 = fsub fast float %1535, %1499
  %1537 = fsub fast float %1536, %1486
  br label %1538

; <label>:1538                                    ; preds = %1525, %1485, %1468
  %1539 = phi i1 [ true, %1525 ], [ false, %1485 ], [ false, %1468 ]
  %1540 = phi float [ %1537, %1525 ], [ -1.310720e+05, %1485 ], [ -1.310720e+05, %1468 ]
  %1541 = fsub fast float %1540, %125
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1543 = select i1 %1539, float %1542, float 1.000000e+00
  br label %1544

; <label>:1544                                    ; preds = %1538, %1392
  %1545 = phi float [ %1543, %1538 ], [ 0.000000e+00, %1392 ]
  %1546 = icmp eq i32 %1466, 3
  %1547 = select i1 %1546, float 1.000000e+00, float %1545
  %1548 = call float @dx.op.binary.f32(i32 35, float %1393, float %1547)  ; FMax(a,b)
  %1549 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1550 = fcmp fast une float %1549, 0.000000e+00
  %1551 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %1552 = call float @dx.op.unary.f32(i32 25, float %1551)  ; Rsqrt(value)
  br i1 %1550, label %1560, label %1553

; <label>:1553                                    ; preds = %1544
  %1554 = fmul fast float %1552, %123
  %1555 = fmul fast float %1552, %124
  %1556 = fmul fast float %1552, %125
  %1557 = fsub fast float -0.000000e+00, %1554
  %1558 = fsub fast float -0.000000e+00, %1555
  %1559 = fsub fast float -0.000000e+00, %1556
  br label %1728

; <label>:1560                                    ; preds = %1544
  %1561 = fmul fast float %123, %1552
  %1562 = fsub fast float -0.000000e+00, %1561
  %1563 = fmul fast float %124, %1552
  %1564 = fsub fast float -0.000000e+00, %1563
  %1565 = fmul fast float %125, %1552
  %1566 = fsub fast float -0.000000e+00, %1565
  %1567 = call float @dx.op.dot3.f32(i32 55, float %1562, float %1564, float %1566, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1568 = fmul fast float %1549, 2.500000e+00
  %1569 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1570 = fmul fast float %1549, 0x4013FFFFE0000000
  %1571 = fadd fast float %1570, 0xBFFFFFFFE0000000
  %1572 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1573 = fmul fast float %1549, 0x4004000020000000
  %1574 = fadd fast float %1573, 0xBFF8000040000000
  %1575 = call float @dx.op.unary.f32(i32 7, float %1574)  ; Saturate(value)
  %1576 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1577 = fmul fast float %1426, 1.000000e+01
  %1578 = call float @dx.op.unary.f32(i32 7, float %1577)  ; Saturate(value)
  %1579 = fmul fast float %1578, 2.000000e+00
  %1580 = fsub fast float 3.000000e+00, %1579
  %1581 = fmul fast float %1578, %1578
  %1582 = fmul fast float %1581, %1580
  %1583 = fsub fast float 1.000000e+00, %1582
  %1584 = fsub fast float 0x3FE3333340000000, %1447
  %1585 = fmul fast float %1584, 0x400AAAAAA0000000
  %1586 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1587 = fmul fast float %1583, %1586
  %1588 = fmul fast float %1462, 0x3FEA2B8620000000
  %1589 = fmul fast float %1463, 0x3FEA2B8620000000
  %1590 = fmul fast float %1464, 0x3FEA2B8620000000
  %1591 = fadd fast float %1588, 0x3FC81DFBA0000000
  %1592 = fmul fast float %1591, %1462
  %1593 = fadd fast float %1592, 0x3F910E6020000000
  %1594 = fadd fast float %1589, 0x3FC81DFBA0000000
  %1595 = fmul fast float %1594, %1463
  %1596 = fadd fast float %1595, 0x3F910E6020000000
  %1597 = fadd fast float %1590, 0x3FC81DFBA0000000
  %1598 = fmul fast float %1597, %1464
  %1599 = fadd fast float %1598, 0x3F910E6020000000
  %1600 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1601 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  %1602 = call float @dx.op.unary.f32(i32 7, float %1599)  ; Saturate(value)
  %1603 = fsub fast float %1600, %1462
  %1604 = fsub fast float %1601, %1463
  %1605 = fsub fast float %1602, %1464
  %1606 = fmul fast float %1603, %1576
  %1607 = fmul fast float %1606, %1587
  %1608 = fmul fast float %1604, %1576
  %1609 = fmul fast float %1608, %1587
  %1610 = fmul fast float %1605, %1576
  %1611 = fmul fast float %1610, %1587
  %1612 = fadd fast float %1607, %1462
  %1613 = fadd fast float %1609, %1463
  %1614 = fadd fast float %1611, %1464
  %1615 = fmul fast float %1407, %1407
  %1616 = fmul fast float %1615, %1615
  %1617 = fadd fast float %1572, 1.000000e+00
  %1618 = fsub fast float %1617, %1587
  %1619 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1620 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = fsub fast float 1.000000e+00, %1616
  %1623 = call float @dx.op.binary.f32(i32 36, float %1619, float %1622)  ; FMin(a,b)
  %1624 = call float @dx.op.unary.f32(i32 7, float %1575)  ; Saturate(value)
  %1625 = call float @dx.op.binary.f32(i32 35, float %1623, float %1624)  ; FMax(a,b)
  %1626 = fadd fast float %1621, 0xBFE4CCCCC0000000
  %1627 = fmul fast float %1626, 0x4006DB6DA0000000
  %1628 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  %1629 = fmul fast float %1628, 2.000000e+00
  %1630 = fsub fast float 3.000000e+00, %1629
  %1631 = bitcast float %1444 to i32
  %1632 = ashr i32 %1631, 1
  %1633 = add nsw i32 %1632, 532487669
  %1634 = bitcast i32 %1633 to float
  %1635 = fsub fast float 1.000000e+00, %1634
  %1636 = bitcast float %1635 to i32
  %1637 = sub nsw i32 2129859010, %1636
  %1638 = bitcast i32 %1637 to float
  %1639 = fmul fast float %1638, 2.000000e+00
  %1640 = bitcast float %1445 to i32
  %1641 = ashr i32 %1640, 1
  %1642 = add nsw i32 %1641, 532487669
  %1643 = bitcast i32 %1642 to float
  %1644 = fsub fast float 1.000000e+00, %1643
  %1645 = bitcast float %1644 to i32
  %1646 = sub nsw i32 2129859010, %1645
  %1647 = bitcast i32 %1646 to float
  %1648 = fmul fast float %1647, 2.000000e+00
  %1649 = bitcast float %1446 to i32
  %1650 = ashr i32 %1649, 1
  %1651 = add nsw i32 %1650, 532487669
  %1652 = bitcast i32 %1651 to float
  %1653 = fsub fast float 1.000000e+00, %1652
  %1654 = bitcast float %1653 to i32
  %1655 = sub nsw i32 2129859010, %1654
  %1656 = bitcast i32 %1655 to float
  %1657 = fmul fast float %1656, 2.000000e+00
  %1658 = fsub fast float 0x4002A9FBE0000000, %1639
  %1659 = fadd fast float %1639, 0x3FD54FDF00000000
  %1660 = bitcast float %1659 to i32
  %1661 = sub nsw i32 2129859010, %1660
  %1662 = bitcast i32 %1661 to float
  %1663 = fmul fast float %1662, %1658
  %1664 = fmul fast float %1663, %1663
  %1665 = fsub fast float 0x4002A9FBE0000000, %1648
  %1666 = fadd fast float %1648, 0x3FD54FDF00000000
  %1667 = bitcast float %1666 to i32
  %1668 = sub nsw i32 2129859010, %1667
  %1669 = bitcast i32 %1668 to float
  %1670 = fmul fast float %1669, %1665
  %1671 = fmul fast float %1670, %1670
  %1672 = fsub fast float 0x4002A9FBE0000000, %1657
  %1673 = fadd fast float %1657, 0x3FD54FDF00000000
  %1674 = bitcast float %1673 to i32
  %1675 = sub nsw i32 2129859010, %1674
  %1676 = bitcast i32 %1675 to float
  %1677 = fmul fast float %1676, %1672
  %1678 = fmul fast float %1677, %1677
  %1679 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1664)  ; FMax(a,b)
  %1680 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1671)  ; FMax(a,b)
  %1681 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1678)  ; FMax(a,b)
  %1682 = fsub fast float 1.000000e+00, %1567
  %1683 = fadd fast float %1682, %1583
  %1684 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  %1685 = fsub fast float 1.000000e+00, %1547
  %1686 = fmul fast float %1625, %1685
  %1687 = fmul fast float %1628, %1628
  %1688 = fmul fast float %1687, %1686
  %1689 = fmul fast float %1688, %1630
  %1690 = fmul fast float %1685, 0xBFE99999A0000000
  %1691 = fmul fast float %1690, %1576
  %1692 = fmul fast float %1691, %1587
  %1693 = fadd fast float %1692, 1.000000e+00
  %1694 = fadd fast float %1447, -1.000000e+00
  %1695 = fmul fast float %1693, %1694
  %1696 = fadd fast float %1695, 1.000000e+00
  %1697 = fsub fast float %1679, %1444
  %1698 = fsub fast float %1680, %1445
  %1699 = fsub fast float %1681, %1446
  %1700 = fmul fast float %1689, %1697
  %1701 = fmul fast float %1689, %1698
  %1702 = fmul fast float %1689, %1699
  %1703 = fadd fast float %1700, %1444
  %1704 = fadd fast float %1701, %1445
  %1705 = fadd fast float %1702, %1446
  %1706 = fsub fast float %70, %1423
  %1707 = fsub fast float %71, %1424
  %1708 = fsub fast float %72, %1425
  %1709 = fmul fast float %1689, %1706
  %1710 = fmul fast float %1689, %1707
  %1711 = fmul fast float %1689, %1708
  %1712 = fadd fast float %1709, %1423
  %1713 = fadd fast float %1710, %1424
  %1714 = fadd fast float %1711, %1425
  %1715 = fmul fast float %1689, %1684
  %1716 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1717 = fsub fast float 1.000000e+00, %1716
  %1718 = fmul fast float %1715, %1717
  %1719 = fadd fast float %1718, %1716
  %1720 = fsub fast float 1.000000e+00, %1407
  %1721 = fmul fast float %1689, %1720
  %1722 = fadd fast float %1721, %1407
  %1723 = call float @dx.op.dot3.f32(i32 55, float %1712, float %1713, float %1714, float %1712, float %1713, float %1714)  ; Dot3(ax,ay,az,bx,by,bz)
  %1724 = call float @dx.op.unary.f32(i32 25, float %1723)  ; Rsqrt(value)
  %1725 = fmul fast float %1712, %1724
  %1726 = fmul fast float %1713, %1724
  %1727 = fmul fast float %1714, %1724
  br label %1728

; <label>:1728                                    ; preds = %1560, %1553
  %1729 = phi float [ %1559, %1553 ], [ %1566, %1560 ]
  %1730 = phi float [ %1558, %1553 ], [ %1564, %1560 ]
  %1731 = phi float [ %1557, %1553 ], [ %1562, %1560 ]
  %1732 = phi float [ %1556, %1553 ], [ %1565, %1560 ]
  %1733 = phi float [ %1555, %1553 ], [ %1563, %1560 ]
  %1734 = phi float [ %1554, %1553 ], [ %1561, %1560 ]
  %1735 = phi float [ %1462, %1553 ], [ %1612, %1560 ]
  %1736 = phi float [ %1463, %1553 ], [ %1613, %1560 ]
  %1737 = phi float [ %1464, %1553 ], [ %1614, %1560 ]
  %1738 = phi float [ %1444, %1553 ], [ %1703, %1560 ]
  %1739 = phi float [ %1445, %1553 ], [ %1704, %1560 ]
  %1740 = phi float [ %1446, %1553 ], [ %1705, %1560 ]
  %1741 = phi float [ %1423, %1553 ], [ %1725, %1560 ]
  %1742 = phi float [ %1424, %1553 ], [ %1726, %1560 ]
  %1743 = phi float [ %1425, %1553 ], [ %1727, %1560 ]
  %1744 = phi float [ %1447, %1553 ], [ %1719, %1560 ]
  %1745 = phi float [ %1407, %1553 ], [ %1722, %1560 ]
  %1746 = select i1 %184, float 0.000000e+00, float %1740
  %1747 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1742, float %1743, float %1731, float %1730, float %1729)  ; Dot3(ax,ay,az,bx,by,bz)
  %1748 = call float @dx.op.unary.f32(i32 7, float %1747)  ; Saturate(value)
  %1749 = call float @dx.op.dot3.f32(i32 55, float %1734, float %1733, float %1732, float %1741, float %1742, float %1743)  ; Dot3(ax,ay,az,bx,by,bz)
  %1750 = fmul fast float %1749, 2.000000e+00
  %1751 = fmul fast float %1750, %1741
  %1752 = fmul fast float %1750, %1742
  %1753 = fmul fast float %1750, %1743
  %1754 = fsub fast float %1734, %1751
  %1755 = fsub fast float %1733, %1752
  %1756 = fsub fast float %1732, %1753
  %1757 = call float @dx.op.binary.f32(i32 36, float %1745, float 1.000000e+00)  ; FMin(a,b)
  %1758 = fsub fast float 1.000000e+00, %1745
  %1759 = bitcast float %1758 to i32
  %1760 = sub nsw i32 2129859010, %1759
  %1761 = bitcast i32 %1760 to float
  %1762 = fsub fast float 1.000000e+00, %42
  %1763 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1764 = call float @dx.op.binary.f32(i32 35, float %1763, float 0x3FA99999A0000000)  ; FMax(a,b)
  %1765 = fdiv fast float %1762, %1764
  %1766 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1742, float %1743, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1767 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1768 = fmul fast float %1767, 5.000000e-01
  %1769 = fadd fast float %1768, 5.000000e-01
  %1770 = fmul fast float %1769, %42
  %1771 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1742, float %1743, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %1772 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  %1773 = fmul fast float %1772, %1765
  %1774 = fadd fast float %1770, %1773
  %1775 = fsub fast float 5.000000e-01, %1768
  %1776 = fmul fast float %1775, %1735
  %1777 = fmul fast float %1775, %1736
  %1778 = fmul fast float %1775, %1737
  %1779 = fadd fast float %1774, %1776
  %1780 = fadd fast float %1774, %1777
  %1781 = fadd fast float %1774, %1778
  %1782 = call float @dx.op.dot3.f32(i32 55, float %1754, float %1755, float %1756, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1783 = call float @dx.op.unary.f32(i32 7, float %1782)  ; Saturate(value)
  %1784 = fmul fast float %1783, 5.000000e-01
  %1785 = fadd fast float %1784, 5.000000e-01
  %1786 = fmul fast float %1785, %42
  %1787 = call float @dx.op.dot3.f32(i32 55, float %1754, float %1755, float %1756, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %1788 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  %1789 = fmul fast float %1788, %1765
  %1790 = fadd fast float %1786, %1789
  %1791 = fsub fast float 5.000000e-01, %1784
  %1792 = fmul fast float %1791, %1735
  %1793 = fmul fast float %1791, %1736
  %1794 = fmul fast float %1791, %1737
  %1795 = fadd fast float %1790, %1792
  %1796 = fadd fast float %1790, %1793
  %1797 = fadd fast float %1790, %1794
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = call float @dx.op.binary.f32(i32 36, float %1735, float %1799)  ; FMin(a,b)
  %1801 = fsub fast float 1.000000e+00, %1757
  %1802 = fmul fast float %1800, %1801
  %1803 = fsub fast float 1.000000e+00, %1802
  %1804 = bitcast float %1803 to i32
  %1805 = sub nsw i32 2129859010, %1804
  %1806 = bitcast i32 %1805 to float
  %1807 = call float @dx.op.binary.f32(i32 36, float %1736, float %1799)  ; FMin(a,b)
  %1808 = fmul fast float %1807, %1801
  %1809 = fsub fast float 1.000000e+00, %1808
  %1810 = bitcast float %1809 to i32
  %1811 = sub nsw i32 2129859010, %1810
  %1812 = bitcast i32 %1811 to float
  %1813 = call float @dx.op.binary.f32(i32 36, float %1737, float %1799)  ; FMin(a,b)
  %1814 = fmul fast float %1813, %1801
  %1815 = fsub fast float 1.000000e+00, %1814
  %1816 = bitcast float %1815 to i32
  %1817 = sub nsw i32 2129859010, %1816
  %1818 = bitcast i32 %1817 to float
  %1819 = fmul fast float %1757, %43
  %1820 = fmul fast float %1819, %1779
  %1821 = fmul fast float %1820, %1806
  %1822 = fmul fast float %1757, %44
  %1823 = fmul fast float %1822, %1780
  %1824 = fmul fast float %1823, %1812
  %1825 = fmul fast float %1757, %45
  %1826 = fmul fast float %1825, %1781
  %1827 = fmul fast float %1826, %1818
  %1828 = call float @dx.op.binary.f32(i32 36, float %1738, float %1799)  ; FMin(a,b)
  %1829 = fmul fast float %1828, %1801
  %1830 = fsub fast float 1.000000e+00, %1829
  %1831 = bitcast float %1830 to i32
  %1832 = sub nsw i32 2129859010, %1831
  %1833 = bitcast i32 %1832 to float
  %1834 = call float @dx.op.binary.f32(i32 36, float %1739, float %1799)  ; FMin(a,b)
  %1835 = fmul fast float %1834, %1801
  %1836 = fsub fast float 1.000000e+00, %1835
  %1837 = bitcast float %1836 to i32
  %1838 = sub nsw i32 2129859010, %1837
  %1839 = bitcast i32 %1838 to float
  %1840 = call float @dx.op.binary.f32(i32 36, float %1746, float %1799)  ; FMin(a,b)
  %1841 = fmul fast float %1840, %1801
  %1842 = fsub fast float 1.000000e+00, %1841
  %1843 = bitcast float %1842 to i32
  %1844 = sub nsw i32 2129859010, %1843
  %1845 = bitcast i32 %1844 to float
  %1846 = fmul fast float %1819, %1795
  %1847 = fmul fast float %1846, %1833
  %1848 = fmul fast float %1822, %1796
  %1849 = fmul fast float %1848, %1839
  %1850 = fmul fast float %1825, %1797
  %1851 = fmul fast float %1850, %1845
  %1852 = call float @dx.op.dot3.f32(i32 55, float %1821, float %1824, float %1827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1853 = select i1 %184, float 0.000000e+00, float %1821
  %1854 = select i1 %184, float %1852, float %1824
  %1855 = select i1 %184, float 0.000000e+00, float %1827
  %1856 = call float @dx.op.dot3.f32(i32 55, float %1847, float %1849, float %1851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1857 = select i1 %184, float 0.000000e+00, float %1847
  %1858 = select i1 %184, float %1856, float %1849
  %1859 = select i1 %184, float 0.000000e+00, float %1851
  %1860 = fmul fast float %845, %845
  %1861 = call float @dx.op.unary.f32(i32 7, float %1860)  ; Saturate(value)
  %1862 = fmul fast float %1748, 9.843750e-01
  %1863 = fmul fast float %1744, 9.843750e-01
  %1864 = fadd fast float %1862, 7.812500e-03
  %1865 = fadd fast float %1863, 7.812500e-03
  %1866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %1864, float %1865, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1867 = extractvalue %dx.types.ResRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.ResRet.f32 %1866, 1
  %1869 = extractvalue %dx.types.ResRet.f32 %1866, 2
  %1870 = extractvalue %dx.types.ResRet.f32 %1866, 3
  %1871 = fsub fast float 1.000000e+00, %1861
  %1872 = fsub fast float %1869, %1867
  %1873 = fsub fast float %1870, %1868
  %1874 = fmul fast float %1872, %1871
  %1875 = fmul fast float %1873, %1871
  %1876 = fadd fast float %1874, %1867
  %1877 = fadd fast float %1875, %1868
  %1878 = fmul fast float %1876, %1738
  %1879 = fmul fast float %1876, %1739
  %1880 = fmul fast float %1876, %1746
  %1881 = fadd fast float %1878, %1877
  %1882 = fadd fast float %1879, %1877
  %1883 = fadd fast float %1880, %1877
  %1884 = fcmp fast ogt float %1400, 0.000000e+00
  br i1 %1884, label %1885, label %1911

; <label>:1885                                    ; preds = %1728
  %1886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1400, float %1748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.ResRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.ResRet.f32 %1886, 2
  %1890 = fadd fast float %1887, -5.000000e-01
  %1891 = fadd fast float %1888, -5.000000e-01
  %1892 = fadd fast float %1889, -5.000000e-01
  %1893 = fsub fast float 1.000000e+00, %1738
  %1894 = fsub fast float 1.000000e+00, %1739
  %1895 = fsub fast float 1.000000e+00, %1746
  %1896 = fmul fast float %1738, 4.000000e+00
  %1897 = fmul fast float %1896, %1893
  %1898 = fmul fast float %1897, %1890
  %1899 = fmul fast float %1739, 4.000000e+00
  %1900 = fmul fast float %1899, %1894
  %1901 = fmul fast float %1900, %1891
  %1902 = fmul fast float %1746, 4.000000e+00
  %1903 = fmul fast float %1902, %1895
  %1904 = fmul fast float %1903, %1892
  %1905 = fadd fast float %1898, %1881
  %1906 = fadd fast float %1901, %1882
  %1907 = fadd fast float %1904, %1883
  %1908 = call float @dx.op.unary.f32(i32 7, float %1905)  ; Saturate(value)
  %1909 = call float @dx.op.unary.f32(i32 7, float %1906)  ; Saturate(value)
  %1910 = call float @dx.op.unary.f32(i32 7, float %1907)  ; Saturate(value)
  br label %1911

; <label>:1911                                    ; preds = %1885, %1728
  %1912 = phi float [ %1908, %1885 ], [ %1881, %1728 ]
  %1913 = phi float [ %1909, %1885 ], [ %1882, %1728 ]
  %1914 = phi float [ %1910, %1885 ], [ %1883, %1728 ]
  %1915 = call float @dx.op.binary.f32(i32 35, float %1913, float %1914)  ; FMax(a,b)
  %1916 = call float @dx.op.binary.f32(i32 35, float %1912, float %1915)  ; FMax(a,b)
  %1917 = fsub fast float 1.000000e+00, %1916
  %1918 = fmul fast float %1917, %1853
  %1919 = fmul fast float %1917, %1854
  %1920 = fmul fast float %1917, %1855
  %1921 = call float @dx.op.dot3.f32(i32 55, float %1735, float %1736, float %1737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1922 = fcmp fast ogt float %1921, 0x3E7FF19E20000000
  %1923 = fdiv fast float 1.000000e+00, %1921
  %1924 = select i1 %1922, float %1923, float 0.000000e+00
  %1925 = fmul fast float %1924, %1735
  %1926 = fmul fast float %1924, %1736
  %1927 = fmul fast float %1924, %1737
  %1928 = fadd fast float %1925, -1.000000e+00
  %1929 = fadd fast float %1926, -1.000000e+00
  %1930 = fadd fast float %1927, -1.000000e+00
  %1931 = fmul fast float %1928, 5.000000e-01
  %1932 = fmul fast float %1929, 5.000000e-01
  %1933 = fmul fast float %1930, 5.000000e-01
  %1934 = fadd fast float %1931, 1.000000e+00
  %1935 = fadd fast float %1932, 1.000000e+00
  %1936 = fadd fast float %1933, 1.000000e+00
  %1937 = call float @dx.op.binary.f32(i32 35, float %1748, float 0x3F50624DE0000000)  ; FMax(a,b)
  %1938 = fdiv fast float %845, %1937
  %1939 = fcmp fast olt float %1448, 1.270000e+02
  %1940 = fcmp fast olt float %1449, 1.270000e+02
  %1941 = fcmp fast olt float %1450, 1.270000e+02
  %1942 = fmul fast float %1448, 0xBFF7154760000000
  %1943 = fmul fast float %1942, %1938
  %1944 = fmul fast float %1449, 0xBFF7154760000000
  %1945 = fmul fast float %1944, %1938
  %1946 = fmul fast float %1450, 0xBFF7154760000000
  %1947 = fmul fast float %1946, %1938
  %1948 = call float @dx.op.unary.f32(i32 21, float %1943)  ; Exp(value)
  %1949 = call float @dx.op.unary.f32(i32 21, float %1945)  ; Exp(value)
  %1950 = call float @dx.op.unary.f32(i32 21, float %1947)  ; Exp(value)
  %1951 = call float @dx.op.unary.f32(i32 7, float %1948)  ; Saturate(value)
  %1952 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  %1953 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %1954 = select i1 %1939, float %1951, float 0.000000e+00
  %1955 = select i1 %1940, float %1952, float 0.000000e+00
  %1956 = select i1 %1941, float %1953, float 0.000000e+00
  %1957 = fmul fast float %1954, %1917
  %1958 = fmul fast float %1955, %1917
  %1959 = fmul fast float %1956, %1917
  %1960 = fadd fast float %1957, -1.000000e+00
  %1961 = fadd fast float %1958, -1.000000e+00
  %1962 = fadd fast float %1959, -1.000000e+00
  %1963 = fmul fast float %1912, %1857
  %1964 = fmul fast float %1913, %1858
  %1965 = fmul fast float %1914, %1859
  %1966 = fsub fast float 1.000000e+00, %1748
  %1967 = bitcast float %1966 to i32
  %1968 = sitofp i32 %1967 to float
  %1969 = fmul fast float %1968, 5.000000e+00
  %1970 = fadd fast float %1969, 0xC1EFBF8940000000
  %1971 = fptosi float %1970 to i32
  %1972 = bitcast i32 %1971 to float
  %1973 = fmul fast float %1972, %1399
  %1974 = fmul fast float %1853, %1973
  %1975 = fmul fast float %1974, %1917
  %1976 = fmul fast float %1975, %1934
  %1977 = fmul fast float %1854, %1973
  %1978 = fmul fast float %1977, %1917
  %1979 = fmul fast float %1978, %1935
  %1980 = fmul fast float %1855, %1973
  %1981 = fmul fast float %1980, %1917
  %1982 = fmul fast float %1981, %1936
  %1983 = fmul fast float %1918, %1420
  %1984 = fmul fast float %1919, %1420
  %1985 = fmul fast float %1920, %1420
  %1986 = fadd fast float %1963, %1401
  %1987 = fadd fast float %1986, %1976
  %1988 = fmul fast float %1987, %1420
  %1989 = fadd fast float %1964, %1402
  %1990 = fadd fast float %1989, %1979
  %1991 = fmul fast float %1990, %1420
  %1992 = fadd fast float %1965, %1403
  %1993 = fadd fast float %1992, %1982
  %1994 = fmul fast float %1993, %1420
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 3
  %1997 = fcmp fast oeq float %1996, 0.000000e+00
  br i1 %1997, label %3004, label %1998

; <label>:1998                                    ; preds = %1911
  %1999 = extractvalue %dx.types.CBufRet.f32 %1995, 0
  %2000 = extractvalue %dx.types.CBufRet.f32 %1995, 1
  %2001 = extractvalue %dx.types.CBufRet.f32 %1995, 2
  %2002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2003 = extractvalue %dx.types.CBufRet.f32 %2002, 0
  %2004 = extractvalue %dx.types.CBufRet.f32 %2002, 1
  %2005 = extractvalue %dx.types.CBufRet.f32 %2002, 2
  %2006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2007 = extractvalue %dx.types.CBufRet.f32 %2006, 0
  %2008 = extractvalue %dx.types.CBufRet.f32 %2006, 1
  %2009 = call float @dx.op.dot3.f32(i32 55, float %2003, float %2004, float %2005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2010 = select i1 %184, float %2007, float %2003
  %2011 = select i1 %184, float %2009, float %2004
  %2012 = select i1 %184, float %2008, float %2005
  %2013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2014 = extractvalue %dx.types.CBufRet.f32 %2013, 2
  %2015 = fmul fast float %2014, %70
  %2016 = fmul fast float %2014, %71
  %2017 = fmul fast float %2014, %72
  %2018 = fadd fast float %2015, %123
  %2019 = fadd fast float %2016, %124
  %2020 = fadd fast float %2017, %125
  %2021 = fcmp fast olt float %1996, 0.000000e+00
  br i1 %2021, label %2646, label %2022

; <label>:2022                                    ; preds = %1998
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2026 = extractvalue %dx.types.CBufRet.f32 %2023, 2
  %2027 = extractvalue %dx.types.CBufRet.f32 %2023, 3
  %2028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2029 = extractvalue %dx.types.CBufRet.f32 %2028, 0
  %2030 = extractvalue %dx.types.CBufRet.f32 %2028, 1
  %2031 = extractvalue %dx.types.CBufRet.f32 %2028, 2
  %2032 = extractvalue %dx.types.CBufRet.f32 %2028, 3
  %2033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.f32 %2033, 0
  %2035 = extractvalue %dx.types.CBufRet.f32 %2033, 1
  %2036 = extractvalue %dx.types.CBufRet.f32 %2033, 2
  %2037 = extractvalue %dx.types.CBufRet.f32 %2033, 3
  %2038 = fmul fast float %2024, %2018
  %2039 = call float @dx.op.tertiary.f32(i32 46, float %2019, float %2025, float %2038)  ; FMad(a,b,c)
  %2040 = call float @dx.op.tertiary.f32(i32 46, float %2020, float %2026, float %2039)  ; FMad(a,b,c)
  %2041 = fadd fast float %2040, %2027
  %2042 = fmul fast float %2029, %2018
  %2043 = call float @dx.op.tertiary.f32(i32 46, float %2019, float %2030, float %2042)  ; FMad(a,b,c)
  %2044 = call float @dx.op.tertiary.f32(i32 46, float %2020, float %2031, float %2043)  ; FMad(a,b,c)
  %2045 = fadd fast float %2044, %2032
  %2046 = fmul fast float %2034, %2018
  %2047 = call float @dx.op.tertiary.f32(i32 46, float %2019, float %2035, float %2046)  ; FMad(a,b,c)
  %2048 = call float @dx.op.tertiary.f32(i32 46, float %2020, float %2036, float %2047)  ; FMad(a,b,c)
  %2049 = fadd fast float %2048, %2037
  %2050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2050, 0
  %2052 = extractvalue %dx.types.CBufRet.f32 %2050, 1
  %2053 = extractvalue %dx.types.CBufRet.f32 %2050, 3
  %2054 = fmul fast float %2053, %2041
  %2055 = fmul fast float %2053, %2045
  %2056 = fadd fast float %2054, %2051
  %2057 = fadd fast float %2055, %2052
  %2058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2058, 0
  %2060 = extractvalue %dx.types.CBufRet.f32 %2058, 1
  %2061 = extractvalue %dx.types.CBufRet.f32 %2058, 3
  %2062 = fmul fast float %2061, %2041
  %2063 = fmul fast float %2061, %2045
  %2064 = fadd fast float %2062, %2059
  %2065 = fadd fast float %2063, %2060
  %2066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2067 = extractvalue %dx.types.CBufRet.f32 %2066, 1
  %2068 = fsub fast float %2067, %2049
  %2069 = extractvalue %dx.types.CBufRet.f32 %2066, 2
  %2070 = fmul fast float %2068, %2069
  %2071 = fsub fast float 1.000000e+00, %2070
  %2072 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2058, 2
  %2074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2075 = extractvalue %dx.types.CBufRet.f32 %2074, 2
  %2076 = fadd fast float %2075, %2073
  %2077 = fcmp fast ogt float %2076, 0.000000e+00
  br i1 %2077, label %2078, label %2102

; <label>:2078                                    ; preds = %2022
  %2079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.CBufRet.f32 %2079, 1
  %2082 = fsub fast float %2064, %2080
  %2083 = fsub fast float %2065, %2081
  %2084 = fcmp fast olt float %2082, 0.000000e+00
  %2085 = fcmp fast olt float %2083, 0.000000e+00
  %2086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2087 = extractvalue %dx.types.CBufRet.f32 %2086, 0
  %2088 = extractvalue %dx.types.CBufRet.f32 %2086, 1
  %2089 = extractvalue %dx.types.CBufRet.f32 %2086, 2
  %2090 = extractvalue %dx.types.CBufRet.f32 %2086, 3
  %2091 = select i1 %2084, float %2087, float %2089
  %2092 = select i1 %2085, float %2088, float %2090
  %2093 = fmul fast float %2091, %2082
  %2094 = fmul fast float %2092, %2083
  %2095 = call float @dx.op.unary.f32(i32 6, float %2093)  ; FAbs(value)
  %2096 = call float @dx.op.unary.f32(i32 6, float %2094)  ; FAbs(value)
  %2097 = extractvalue %dx.types.CBufRet.f32 %2013, 0
  %2098 = call float @dx.op.binary.f32(i32 35, float %2095, float %2096)  ; FMax(a,b)
  %2099 = fsub fast float %2097, %2098
  %2100 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2101 = fmul fast float %2100, %2072
  br label %2102

; <label>:2102                                    ; preds = %2078, %2022
  %2103 = phi float [ %2101, %2078 ], [ 0.000000e+00, %2022 ]
  %2104 = extractvalue %dx.types.CBufRet.f32 %2050, 2
  %2105 = extractvalue %dx.types.CBufRet.f32 %2074, 1
  %2106 = fadd fast float %2105, %2104
  %2107 = fcmp fast ogt float %2106, 0.000000e+00
  %2108 = extractvalue %dx.types.CBufRet.f32 %2013, 0
  br i1 %2107, label %2109, label %2132

; <label>:2109                                    ; preds = %2102
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2113 = fsub fast float %2056, %2111
  %2114 = fsub fast float %2057, %2112
  %2115 = fcmp fast olt float %2113, 0.000000e+00
  %2116 = fcmp fast olt float %2114, 0.000000e+00
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2119 = extractvalue %dx.types.CBufRet.f32 %2117, 1
  %2120 = extractvalue %dx.types.CBufRet.f32 %2117, 2
  %2121 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2122 = select i1 %2115, float %2118, float %2120
  %2123 = select i1 %2116, float %2119, float %2121
  %2124 = fmul fast float %2122, %2113
  %2125 = fmul fast float %2123, %2114
  %2126 = call float @dx.op.unary.f32(i32 6, float %2124)  ; FAbs(value)
  %2127 = call float @dx.op.unary.f32(i32 6, float %2125)  ; FAbs(value)
  %2128 = call float @dx.op.binary.f32(i32 35, float %2126, float %2127)  ; FMax(a,b)
  %2129 = fsub fast float %2108, %2128
  %2130 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2131 = fmul fast float %2130, %2072
  br label %2132

; <label>:2132                                    ; preds = %2109, %2102
  %2133 = phi float [ %2131, %2109 ], [ 0.000000e+00, %2102 ]
  %2134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2135 = extractvalue %dx.types.CBufRet.f32 %2134, 1
  %2136 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2140 = fsub fast float %2041, %2138
  %2141 = fsub fast float %2045, %2139
  %2142 = fcmp fast olt float %2140, 0.000000e+00
  %2143 = fcmp fast olt float %2141, 0.000000e+00
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.CBufRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.CBufRet.f32 %2144, 2
  %2148 = extractvalue %dx.types.CBufRet.f32 %2144, 3
  %2149 = select i1 %2142, float %2145, float %2147
  %2150 = select i1 %2143, float %2146, float %2148
  %2151 = fmul fast float %2149, %2140
  %2152 = fmul fast float %2150, %2141
  %2153 = call float @dx.op.unary.f32(i32 6, float %2151)  ; FAbs(value)
  %2154 = call float @dx.op.unary.f32(i32 6, float %2152)  ; FAbs(value)
  %2155 = call float @dx.op.binary.f32(i32 35, float %2153, float %2154)  ; FMax(a,b)
  %2156 = fsub fast float %2108, %2155
  %2157 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2158 = call float @dx.op.binary.f32(i32 36, float %2157, float %2136)  ; FMin(a,b)
  %2159 = fmul fast float %2158, %2072
  %2160 = fsub fast float %2133, %2159
  %2161 = fsub fast float %2103, %2133
  %2162 = fsub fast float %2161, %2159
  %2163 = call float @dx.op.binary.f32(i32 35, float %2133, float %2103)  ; FMax(a,b)
  %2164 = call float @dx.op.binary.f32(i32 35, float %2159, float %2163)  ; FMax(a,b)
  %2165 = fcmp fast olt float %2164, 1.000000e+00
  br i1 %2165, label %2166, label %2564, !dx.controlflow.hints !71

; <label>:2166                                    ; preds = %2132
  %2167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2168 = extractvalue %dx.types.CBufRet.f32 %2167, 0
  %2169 = fcmp fast une float %2168, 0.000000e+00
  br i1 %2169, label %2170, label %2564, !dx.controlflow.hints !72

; <label>:2170                                    ; preds = %2166
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 0
  %2173 = extractvalue %dx.types.CBufRet.f32 %2171, 1
  %2174 = extractvalue %dx.types.CBufRet.f32 %2171, 2
  %2175 = extractvalue %dx.types.CBufRet.f32 %2171, 3
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.CBufRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.CBufRet.f32 %2176, 2
  %2180 = extractvalue %dx.types.CBufRet.f32 %2176, 3
  %2181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2181, 0
  %2183 = extractvalue %dx.types.CBufRet.f32 %2181, 1
  %2184 = extractvalue %dx.types.CBufRet.f32 %2181, 2
  %2185 = extractvalue %dx.types.CBufRet.f32 %2181, 3
  %2186 = fmul fast float %2172, %2018
  %2187 = call float @dx.op.tertiary.f32(i32 46, float %2019, float %2173, float %2186)  ; FMad(a,b,c)
  %2188 = call float @dx.op.tertiary.f32(i32 46, float %2020, float %2174, float %2187)  ; FMad(a,b,c)
  %2189 = fadd fast float %2188, %2175
  %2190 = fmul fast float %2177, %2018
  %2191 = call float @dx.op.tertiary.f32(i32 46, float %2019, float %2178, float %2190)  ; FMad(a,b,c)
  %2192 = call float @dx.op.tertiary.f32(i32 46, float %2020, float %2179, float %2191)  ; FMad(a,b,c)
  %2193 = fadd fast float %2192, %2180
  %2194 = fmul fast float %2182, %2018
  %2195 = call float @dx.op.tertiary.f32(i32 46, float %2019, float %2183, float %2194)  ; FMad(a,b,c)
  %2196 = call float @dx.op.tertiary.f32(i32 46, float %2020, float %2184, float %2195)  ; FMad(a,b,c)
  %2197 = fadd fast float %2196, %2185
  %2198 = fcmp fast oge float %2189, 1.000000e+00
  %2199 = fcmp fast oge float %2193, 1.000000e+00
  %2200 = or i1 %2198, %2199
  %2201 = fcmp fast olt float %2189, 0.000000e+00
  %2202 = fcmp fast olt float %2193, 0.000000e+00
  %2203 = or i1 %2201, %2202
  %2204 = or i1 %2200, %2203
  br i1 %2204, label %2564, label %2205, !dx.controlflow.hints !73

; <label>:2205                                    ; preds = %2170
  %2206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2207 = extractvalue %dx.types.CBufRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.CBufRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.CBufRet.f32 %2206, 2
  %2210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.i32 %2210, 2
  %2212 = uitofp i32 %2211 to float
  %2213 = extractvalue %dx.types.CBufRet.i32 %2210, 3
  %2214 = uitofp i32 %2213 to float
  %2215 = extractvalue %dx.types.CBufRet.f32 %2206, 3
  %2216 = fmul fast float %2215, 2.000000e+00
  %2217 = fsub fast float %2189, %2207
  %2218 = fsub fast float %2193, %2208
  %2219 = fmul fast float %2216, %2217
  %2220 = fmul fast float %2216, %2218
  %2221 = fdiv fast float 1.000000e+00, %2001
  %2222 = fmul fast float %2220, %2221
  %2223 = call float @dx.op.unary.f32(i32 6, float %2222)  ; FAbs(value)
  %2224 = fmul fast float %2209, %2020
  %2225 = fmul fast float %2224, %2216
  %2226 = call float @dx.op.unary.f32(i32 6, float %2225)  ; FAbs(value)
  %2227 = call float @dx.op.unary.f32(i32 6, float %2219)  ; FAbs(value)
  %2228 = call float @dx.op.binary.f32(i32 35, float %2226, float %2223)  ; FMax(a,b)
  %2229 = call float @dx.op.binary.f32(i32 35, float %2227, float %2228)  ; FMax(a,b)
  %2230 = fmul fast float %2229, 2.000000e+00
  %2231 = call float @dx.op.unary.f32(i32 23, float %2230)  ; Log(value)
  %2232 = call float @dx.op.binary.f32(i32 35, float %2231, float %2212)  ; FMax(a,b)
  %2233 = call float @dx.op.unary.f32(i32 22, float %2232)  ; Frc(value)
  %2234 = fadd fast float %2233, 0xBFEA666660000000
  %2235 = fmul fast float %2234, 8.000000e+00
  %2236 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2237 = call float @dx.op.unary.f32(i32 27, float %2232)  ; Round_ni(value)
  %2238 = fadd fast float %2237, %2236
  %2239 = call float @dx.op.binary.f32(i32 36, float %2238, float %2214)  ; FMin(a,b)
  %2240 = call float @dx.op.unary.f32(i32 27, float %2239)  ; Round_ni(value)
  %2241 = fsub fast float -0.000000e+00, %2240
  %2242 = call float @dx.op.unary.f32(i32 21, float %2241)  ; Exp(value)
  %2243 = fmul fast float %2242, %2216
  %2244 = fmul fast float %2243, %2189
  %2245 = fmul fast float %2243, %2193
  %2246 = fmul fast float %2244, 2.500000e-01
  %2247 = fmul fast float %2245, 2.500000e-01
  %2248 = fadd fast float %2246, 5.000000e-01
  %2249 = fadd fast float %2247, 5.000000e-01
  %2250 = fsub fast float %2214, %2212
  %2251 = fptoui float %2250 to i32
  %2252 = add i32 %2251, 320
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %2252)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 0
  %2255 = extractvalue %dx.types.CBufRet.f32 %2253, 1
  %2256 = fcmp fast une float %2239, %2214
  %2257 = fsub fast float %2189, %2254
  %2258 = fsub fast float %2193, %2255
  %2259 = call float @dx.op.unary.f32(i32 6, float %2257)  ; FAbs(value)
  %2260 = call float @dx.op.unary.f32(i32 6, float %2258)  ; FAbs(value)
  %2261 = fmul fast float %2259, %2243
  %2262 = fmul fast float %2260, %2243
  %2263 = fcmp fast olt float %2261, 1.000000e+00
  %2264 = fcmp fast olt float %2262, 1.000000e+00
  %2265 = and i1 %2263, %2264
  %2266 = or i1 %2256, %2265
  br i1 %2266, label %2267, label %2564, !dx.controlflow.hints !74

; <label>:2267                                    ; preds = %2205
  %2268 = fmul fast float %2245, 5.000000e-01
  %2269 = fmul fast float %2244, 5.000000e-01
  %2270 = fadd fast float %2268, 5.000000e-01
  %2271 = fadd fast float %2269, 5.000000e-01
  %2272 = sitofp i32 %2211 to float
  %2273 = fsub fast float %2239, %2272
  %2274 = call float @dx.op.unary.f32(i32 27, float %2273)  ; Round_ni(value)
  %2275 = call float @dx.op.unary.f32(i32 22, float %2239)  ; Frc(value)
  %2276 = call float @dx.op.unary.f32(i32 22, float %2271)  ; Frc(value)
  %2277 = call float @dx.op.unary.f32(i32 22, float %2270)  ; Frc(value)
  %2278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %2276, float %2277, float %2274, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2279 = extractvalue %dx.types.ResRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.ResRet.f32 %2278, 1
  %2281 = extractvalue %dx.types.ResRet.f32 %2278, 2
  %2282 = extractvalue %dx.types.ResRet.f32 %2278, 3
  %2283 = fcmp fast ogt float %2275, 0.000000e+00
  br i1 %2283, label %2284, label %2305, !dx.controlflow.hints !75

; <label>:2284                                    ; preds = %2267
  %2285 = fadd fast float %2274, 1.000000e+00
  %2286 = call float @dx.op.unary.f32(i32 22, float %2248)  ; Frc(value)
  %2287 = call float @dx.op.unary.f32(i32 22, float %2249)  ; Frc(value)
  %2288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %2286, float %2287, float %2285, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2289 = extractvalue %dx.types.ResRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.ResRet.f32 %2288, 1
  %2291 = extractvalue %dx.types.ResRet.f32 %2288, 2
  %2292 = extractvalue %dx.types.ResRet.f32 %2288, 3
  %2293 = fsub fast float %2289, %2279
  %2294 = fsub fast float %2290, %2280
  %2295 = fsub fast float %2291, %2281
  %2296 = fsub fast float %2292, %2282
  %2297 = fmul fast float %2293, %2275
  %2298 = fmul fast float %2294, %2275
  %2299 = fmul fast float %2295, %2275
  %2300 = fmul fast float %2296, %2275
  %2301 = fadd fast float %2297, %2279
  %2302 = fadd fast float %2298, %2280
  %2303 = fadd fast float %2299, %2281
  %2304 = fadd fast float %2300, %2282
  br label %2305

; <label>:2305                                    ; preds = %2284, %2267
  %2306 = phi float [ %2301, %2284 ], [ %2279, %2267 ]
  %2307 = phi float [ %2302, %2284 ], [ %2280, %2267 ]
  %2308 = phi float [ %2303, %2284 ], [ %2281, %2267 ]
  %2309 = phi float [ %2304, %2284 ], [ %2282, %2267 ]
  %2310 = fadd fast float %2306, -5.000000e-01
  %2311 = fadd fast float %2308, -5.000000e-01
  %2312 = fmul fast float %2310, 0xBFD5555560000000
  %2313 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2311, float %2312)  ; FMad(a,b,c)
  %2314 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2307, float 0.000000e+00)  ; FMad(a,b,c)
  %2315 = fadd fast float %2314, %2309
  %2316 = fmul fast float %2310, -7.500000e-01
  %2317 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2311, float %2316)  ; FMad(a,b,c)
  %2318 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2307, float 0.000000e+00)  ; FMad(a,b,c)
  %2319 = fadd fast float %2318, %2309
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.CBufRet.f32 %2322, 1
  %2325 = extractvalue %dx.types.CBufRet.f32 %2322, 2
  %2326 = extractvalue %dx.types.CBufRet.f32 %2322, 3
  %2327 = fsub fast float %2323, %2313
  %2328 = fsub fast float %2324, %2315
  %2329 = fsub fast float %2325, %2317
  %2330 = fsub fast float %2326, %2319
  %2331 = fmul fast float %2327, %2321
  %2332 = fmul fast float %2328, %2321
  %2333 = fmul fast float %2329, %2321
  %2334 = fmul fast float %2330, %2321
  %2335 = fadd fast float %2331, %2313
  %2336 = fadd fast float %2332, %2315
  %2337 = fadd fast float %2333, %2317
  %2338 = fadd fast float %2334, %2319
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = and i32 %2340, 536870911
  %2342 = uitofp i32 %2341 to float
  %2343 = fmul fast float %2342, %2189
  %2344 = fmul fast float %2342, %2193
  %2345 = fptoui float %2343 to i32
  %2346 = fptoui float %2344 to i32
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, 31
  %2350 = lshr i32 %2345, %2349
  %2351 = lshr i32 %2346, %2349
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 31
  %2355 = shl i32 1, %2354
  %2356 = call i32 @dx.op.binary.i32(i32 40, i32 %2355, i32 4)  ; UMin(a,b)
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = extractvalue %dx.types.ResRet.i32 %2357, 1
  %2360 = icmp eq i32 %2356, 0
  br i1 %2360, label %2402, label %2361

; <label>:2361                                    ; preds = %2305
  br label %2362

; <label>:2362                                    ; preds = %2390, %2361
  %2363 = phi i32 [ %2393, %2390 ], [ 0, %2361 ]
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = lshr i32 %2365, 16
  %2367 = and i32 %2366, 31
  %2368 = shl i32 %2351, %2367
  %2369 = add i32 %2368, %2350
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = and i32 %2371, 31
  %2373 = shl i32 %2369, %2372
  %2374 = add i32 %2373, %2363
  %2375 = shl i32 %2374, 2
  %2376 = add i32 %2375, 32
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = icmp slt i32 %2378, 0
  %2380 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2363
  %2381 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2363
  %2382 = bitcast float* %2380 to i32*
  %2383 = bitcast float* %2381 to i32*
  br i1 %2379, label %2384, label %2390

; <label>:2384                                    ; preds = %2362
  %2385 = and i32 %2378, 1073741823
  %2386 = add nuw nsw i32 %2385, 20
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = extractvalue %dx.types.ResRet.i32 %2387, 1
  br label %2390

; <label>:2390                                    ; preds = %2384, %2362
  %2391 = phi i32 [ %2388, %2384 ], [ %2358, %2362 ]
  %2392 = phi i32 [ %2389, %2384 ], [ %2359, %2362 ]
  store i32 %2391, i32* %2382, align 4
  store i32 %2392, i32* %2383, align 4
  %2393 = add nuw i32 %2363, 1
  %2394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.i32 %2394, 2
  %2396 = icmp eq i32 %2395, 0
  %2397 = icmp ugt i32 %2378, -1073741825
  %2398 = and i1 %2397, %2396
  %2399 = icmp ult i32 %2393, %2356
  %2400 = and i1 %2398, %2399
  br i1 %2400, label %2362, label %2401

; <label>:2401                                    ; preds = %2390
  br label %2402

; <label>:2402                                    ; preds = %2401, %2305
  %2403 = phi i32 [ 0, %2305 ], [ %2393, %2401 ]
  %2404 = extractvalue %dx.types.CBufRet.f32 %2167, 2
  %2405 = fptoui float %2404 to i32
  %2406 = icmp eq i32 %2405, 0
  br i1 %2406, label %2458, label %2407

; <label>:2407                                    ; preds = %2402
  br label %2408

; <label>:2408                                    ; preds = %2453, %2407
  %2409 = phi i32 [ %2454, %2453 ], [ %2403, %2407 ]
  %2410 = phi i32 [ %2455, %2453 ], [ 0, %2407 ]
  %2411 = lshr i32 %2410, 2
  %2412 = and i32 %2410, 3
  %2413 = add nuw nsw i32 %2411, 83
  %2414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 %2413)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.i32 %2414, 0
  %2416 = extractvalue %dx.types.CBufRet.i32 %2414, 1
  %2417 = extractvalue %dx.types.CBufRet.i32 %2414, 2
  %2418 = extractvalue %dx.types.CBufRet.i32 %2414, 3
  %2419 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %2415, i32* %2419, align 4
  %2420 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %2416, i32* %2420, align 4
  %2421 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %2417, i32* %2421, align 4
  %2422 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %2418, i32* %2422, align 4
  %2423 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 %2412
  %2424 = load i32, i32* %2423, align 4, !tbaa !76, !noalias !80
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = lshr i32 %2426, 16
  %2428 = and i32 %2427, 31
  %2429 = shl i32 %2351, %2428
  %2430 = add i32 %2429, %2350
  %2431 = shl i32 %2430, 2
  %2432 = add i32 %2431, %2424
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = icmp eq i32 %2434, 0
  br i1 %2435, label %2453, label %2436

; <label>:2436                                    ; preds = %2408
  %2437 = icmp slt i32 %2434, 0
  %2438 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2409
  %2439 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2409
  %2440 = bitcast float* %2438 to i32*
  %2441 = bitcast float* %2439 to i32*
  br i1 %2437, label %2442, label %2449

; <label>:2442                                    ; preds = %2436
  %2443 = and i32 %2434, 1073741823
  %2444 = add i32 %2424, 20
  %2445 = add i32 %2444, %2443
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = extractvalue %dx.types.ResRet.i32 %2446, 1
  br label %2449

; <label>:2449                                    ; preds = %2442, %2436
  %2450 = phi i32 [ %2447, %2442 ], [ %2358, %2436 ]
  %2451 = phi i32 [ %2448, %2442 ], [ %2359, %2436 ]
  store i32 %2450, i32* %2440, align 4
  store i32 %2451, i32* %2441, align 4
  %2452 = add i32 %2409, 1
  br label %2453

; <label>:2453                                    ; preds = %2449, %2408
  %2454 = phi i32 [ %2409, %2408 ], [ %2452, %2449 ]
  %2455 = add nuw i32 %2410, 1
  %2456 = icmp eq i32 %2455, %2405
  br i1 %2456, label %2457, label %2408

; <label>:2457                                    ; preds = %2453
  br label %2458

; <label>:2458                                    ; preds = %2457, %2402
  %2459 = phi i32 [ %2403, %2402 ], [ %2454, %2457 ]
  %2460 = icmp eq i32 %2459, 1
  %2461 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 0
  %2462 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 0
  br i1 %2460, label %2463, label %2466

; <label>:2463                                    ; preds = %2458
  %2464 = load float, float* %2461, align 4
  %2465 = load float, float* %2462, align 4
  br label %2493

; <label>:2466                                    ; preds = %2458
  %2467 = load float, float* %2461, align 4
  %2468 = load float, float* %2462, align 4
  %2469 = fdiv fast float 1.000000e+00, %2468
  %2470 = fsub fast float %2467, %2469
  %2471 = icmp ugt i32 %2459, 1
  br i1 %2471, label %2472, label %2488

; <label>:2472                                    ; preds = %2466
  br label %2473

; <label>:2473                                    ; preds = %2473, %2472
  %2474 = phi float [ %2483, %2473 ], [ %2470, %2472 ]
  %2475 = phi float [ %2484, %2473 ], [ %2467, %2472 ]
  %2476 = phi i32 [ %2485, %2473 ], [ 1, %2472 ]
  %2477 = getelementptr [12 x float], [12 x float]* %59, i32 0, i32 %2476
  %2478 = load float, float* %2477, align 4
  %2479 = getelementptr [12 x float], [12 x float]* %60, i32 0, i32 %2476
  %2480 = load float, float* %2479, align 4
  %2481 = fdiv fast float 1.000000e+00, %2480
  %2482 = fsub fast float %2478, %2481
  %2483 = call float @dx.op.binary.f32(i32 36, float %2474, float %2482)  ; FMin(a,b)
  %2484 = call float @dx.op.binary.f32(i32 35, float %2475, float %2478)  ; FMax(a,b)
  %2485 = add nuw i32 %2476, 1
  %2486 = icmp eq i32 %2485, %2459
  br i1 %2486, label %2487, label %2473

; <label>:2487                                    ; preds = %2473
  br label %2488

; <label>:2488                                    ; preds = %2487, %2466
  %2489 = phi float [ %2470, %2466 ], [ %2483, %2487 ]
  %2490 = phi float [ %2467, %2466 ], [ %2484, %2487 ]
  %2491 = fsub fast float %2490, %2489
  %2492 = fdiv fast float 1.000000e+00, %2491
  br label %2493

; <label>:2493                                    ; preds = %2488, %2463
  %2494 = phi float [ %2464, %2463 ], [ %2490, %2488 ]
  %2495 = phi float [ %2465, %2463 ], [ %2492, %2488 ]
  %2496 = fadd fast float %2197, %2494
  %2497 = fmul fast float %2496, %2495
  %2498 = call float @dx.op.unary.f32(i32 7, float %2497)  ; Saturate(value)
  %2499 = fmul fast float %2498, 2.000000e+00
  %2500 = fsub fast float 1.000000e+00, %2499
  %2501 = fmul fast float %2335, %2335
  %2502 = fsub fast float %2336, %2501
  %2503 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2502)  ; FMax(a,b)
  %2504 = fdiv fast float 1.000000e+00, %2503
  %2505 = fmul fast float %2336, %2335
  %2506 = fsub fast float %2337, %2505
  %2507 = fsub fast float %2500, %2335
  %2508 = fmul fast float %2500, %2500
  %2509 = fsub fast float %2508, %2336
  %2510 = fmul fast float %2504, %2506
  %2511 = fmul fast float %2510, %2507
  %2512 = fsub fast float %2509, %2511
  %2513 = fmul fast float %2336, %2336
  %2514 = fsub fast float %2338, %2513
  %2515 = fmul fast float %2506, %2506
  %2516 = fmul fast float %2515, %2504
  %2517 = fsub fast float %2514, %2516
  %2518 = fdiv fast float %2512, %2517
  %2519 = fmul fast float %2518, %2506
  %2520 = fsub fast float %2507, %2519
  %2521 = fmul fast float %2520, %2504
  %2522 = fmul fast float %2521, %2335
  %2523 = fsub fast float 1.000000e+00, %2522
  %2524 = fmul fast float %2518, %2336
  %2525 = fsub fast float %2523, %2524
  %2526 = fmul fast float %2521, %2521
  %2527 = fmul fast float %2518, 4.000000e+00
  %2528 = fmul fast float %2527, %2525
  %2529 = fsub fast float %2526, %2528
  %2530 = call float @dx.op.unary.f32(i32 24, float %2529)  ; Sqrt(value)
  %2531 = fcmp fast oge float %2521, 0.000000e+00
  %2532 = fsub fast float -0.000000e+00, %2530
  %2533 = select i1 %2531, float %2532, float %2530
  %2534 = fsub fast float %2533, %2521
  %2535 = fdiv fast float %2534, %2518
  %2536 = fdiv fast float %2525, %2534
  %2537 = fmul fast float %2535, 5.000000e-01
  %2538 = fmul fast float %2536, 2.000000e+00
  %2539 = select i1 %2531, float %2537, float %2538
  %2540 = select i1 %2531, float %2538, float %2537
  %2541 = call float @dx.op.binary.f32(i32 35, float %2539, float %2540)  ; FMax(a,b)
  %2542 = call float @dx.op.binary.f32(i32 36, float %2539, float %2540)  ; FMin(a,b)
  %2543 = fcmp fast ogt float %2500, %2541
  %2544 = fsub fast float %2500, %2542
  %2545 = fsub fast float %2500, %2541
  %2546 = fsub fast float %2541, %2542
  %2547 = select i1 %2543, float %2545, float %2546
  %2548 = fmul float %2544, %2547
  %2549 = select i1 %2543, float %2542, float %2500
  %2550 = fcmp fast ogt float %2500, %2542
  %2551 = fmul fast float %2549, %2541
  %2552 = fadd fast float %2549, %2541
  %2553 = fmul fast float %2552, %2335
  %2554 = fadd fast float %2551, %2336
  %2555 = fsub fast float %2554, %2553
  %2556 = fdiv fast float %2555, %2548
  %2557 = select i1 %2550, float %2556, float 0.000000e+00
  %2558 = fsub fast float 1.000000e+00, %2557
  %2559 = select i1 %2543, float %2558, float %2557
  %2560 = call float @dx.op.unary.f32(i32 7, float %2559)  ; Saturate(value)
  %2561 = extractvalue %dx.types.CBufRet.f32 %2320, 3
  %2562 = fmul fast float %2561, %2560
  %2563 = fsub fast float 1.000000e+00, %2562
  br label %2564

; <label>:2564                                    ; preds = %2493, %2205, %2170, %2166, %2132
  %2565 = phi float [ 1.000000e+00, %2132 ], [ %2563, %2493 ], [ 1.000000e+00, %2170 ], [ 1.000000e+00, %2205 ], [ 1.000000e+00, %2166 ]
  %2566 = fcmp fast ogt float %2162, 0.000000e+00
  br i1 %2566, label %2567, label %2573, !dx.controlflow.hints !89

; <label>:2567                                    ; preds = %2564
  %2568 = fadd fast float %2075, %2049
  %2569 = call float @dx.op.binary.f32(i32 35, float %2568, float 0.000000e+00)  ; FMax(a,b)
  %2570 = fadd fast float %2569, 0x3F10000000000000
  %2571 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %33, float %2064, float %2065, float undef, float undef, i32 0, i32 0, i32 undef, float %2570)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2572 = extractvalue %dx.types.ResRet.f32 %2571, 0
  br label %2573

; <label>:2573                                    ; preds = %2567, %2564
  %2574 = phi float [ %2572, %2567 ], [ 1.000000e+00, %2564 ]
  %2575 = fcmp fast ogt float %2160, 0.000000e+00
  br i1 %2575, label %2576, label %2582, !dx.controlflow.hints !90

; <label>:2576                                    ; preds = %2573
  %2577 = fadd fast float %2105, %2049
  %2578 = call float @dx.op.binary.f32(i32 35, float %2577, float 0.000000e+00)  ; FMax(a,b)
  %2579 = fadd fast float %2578, 0x3F10000000000000
  %2580 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %33, float %2056, float %2057, float undef, float undef, i32 0, i32 0, i32 undef, float %2579)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2581 = extractvalue %dx.types.ResRet.f32 %2580, 0
  br label %2582

; <label>:2582                                    ; preds = %2576, %2573
  %2583 = phi float [ %2581, %2576 ], [ 1.000000e+00, %2573 ]
  %2584 = fcmp fast ogt float %2159, 0.000000e+00
  br i1 %2584, label %2585, label %2592, !dx.controlflow.hints !91

; <label>:2585                                    ; preds = %2582
  %2586 = extractvalue %dx.types.CBufRet.f32 %2074, 0
  %2587 = fadd fast float %2586, %2049
  %2588 = call float @dx.op.binary.f32(i32 35, float %2587, float 0.000000e+00)  ; FMax(a,b)
  %2589 = fadd fast float %2588, 0x3F10000000000000
  %2590 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %33, float %2041, float %2045, float undef, float undef, i32 0, i32 0, i32 undef, float %2589)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2591 = extractvalue %dx.types.ResRet.f32 %2590, 0
  br label %2592

; <label>:2592                                    ; preds = %2585, %2582
  %2593 = phi float [ %2591, %2585 ], [ 1.000000e+00, %2582 ]
  %2594 = fsub fast float %2574, %2565
  %2595 = fmul fast float %2594, %2103
  %2596 = fadd fast float %2595, %2565
  %2597 = fsub fast float %2583, %2596
  %2598 = fmul fast float %2597, %2133
  %2599 = fadd fast float %2598, %2596
  %2600 = fsub fast float %2593, %2599
  %2601 = fmul fast float %2600, %2159
  %2602 = fadd fast float %2601, %2599
  %2603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2604 = extractvalue %dx.types.CBufRet.f32 %2603, 2
  %2605 = fcmp fast ogt float %2604, 0.000000e+00
  br i1 %2605, label %2606, label %2646, !dx.controlflow.hints !92

; <label>:2606                                    ; preds = %2592
  %2607 = fcmp fast ugt float %2604, 0.000000e+00
  br i1 %2607, label %2608, label %2643

; <label>:2608                                    ; preds = %2606
  %2609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.f32 %2609, 0
  %2611 = extractvalue %dx.types.CBufRet.f32 %2609, 1
  %2612 = extractvalue %dx.types.CBufRet.f32 %2609, 2
  %2613 = extractvalue %dx.types.CBufRet.f32 %2609, 3
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.CBufRet.f32 %2614, 1
  %2617 = extractvalue %dx.types.CBufRet.f32 %2614, 2
  %2618 = extractvalue %dx.types.CBufRet.f32 %2614, 3
  %2619 = extractvalue %dx.types.CBufRet.f32 %2603, 0
  %2620 = extractvalue %dx.types.CBufRet.f32 %2603, 1
  %2621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.f32 %2621, 0
  %2623 = extractvalue %dx.types.CBufRet.f32 %2621, 1
  %2624 = extractvalue %dx.types.CBufRet.f32 %2621, 2
  %2625 = fadd fast float %2622, %2018
  %2626 = fadd fast float %2623, %2019
  %2627 = fadd fast float %2624, %2020
  %2628 = fmul fast float %2625, %2610
  %2629 = call float @dx.op.tertiary.f32(i32 46, float %2611, float %2626, float %2628)  ; FMad(a,b,c)
  %2630 = call float @dx.op.tertiary.f32(i32 46, float %2612, float %2627, float %2629)  ; FMad(a,b,c)
  %2631 = fadd fast float %2630, %2613
  %2632 = fmul fast float %2625, %2615
  %2633 = call float @dx.op.tertiary.f32(i32 46, float %2616, float %2626, float %2632)  ; FMad(a,b,c)
  %2634 = call float @dx.op.tertiary.f32(i32 46, float %2617, float %2627, float %2633)  ; FMad(a,b,c)
  %2635 = fadd fast float %2634, %2618
  %2636 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %28, float %2631, float %2635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2637 = extractvalue %dx.types.ResRet.f32 %2636, 0
  %2638 = fmul fast float %2637, %2620
  %2639 = fadd fast float %2638, %2619
  %2640 = call float @dx.op.unary.f32(i32 7, float %2639)  ; Saturate(value)
  %2641 = fmul fast float %2640, %2604
  %2642 = fsub fast float 1.000000e+00, %2641
  br label %2643

; <label>:2643                                    ; preds = %2608, %2606
  %2644 = phi float [ %2642, %2608 ], [ 1.000000e+00, %2606 ]
  %2645 = fmul fast float %2644, %2602
  br label %2646

; <label>:2646                                    ; preds = %2643, %2592, %1998
  %2647 = phi float [ 1.000000e+00, %1998 ], [ %2645, %2643 ], [ %2602, %2592 ]
  %2648 = call float @dx.op.binary.f32(i32 36, float %2647, float %2647)  ; FMin(a,b)
  %2649 = call float @dx.op.binary.f32(i32 36, float %2647, float %2648)  ; FMin(a,b)
  %2650 = fcmp fast ogt float %2649, 0.000000e+00
  br i1 %2650, label %2651, label %2812, !dx.controlflow.hints !93

; <label>:2651                                    ; preds = %2646
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 0
  %2654 = extractvalue %dx.types.CBufRet.f32 %2652, 1
  %2655 = extractvalue %dx.types.CBufRet.f32 %2652, 2
  %2656 = extractvalue %dx.types.CBufRet.f32 %2652, 3
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 0
  %2659 = extractvalue %dx.types.CBufRet.f32 %2657, 1
  %2660 = extractvalue %dx.types.CBufRet.f32 %2657, 2
  %2661 = extractvalue %dx.types.CBufRet.f32 %2657, 3
  %2662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2662, 0
  %2664 = extractvalue %dx.types.CBufRet.f32 %2662, 1
  %2665 = extractvalue %dx.types.CBufRet.f32 %2662, 2
  %2666 = extractvalue %dx.types.CBufRet.f32 %2662, 3
  %2667 = fmul fast float %2653, %2018
  %2668 = call float @dx.op.tertiary.f32(i32 46, float %2019, float %2654, float %2667)  ; FMad(a,b,c)
  %2669 = call float @dx.op.tertiary.f32(i32 46, float %2020, float %2655, float %2668)  ; FMad(a,b,c)
  %2670 = fadd fast float %2669, %2656
  %2671 = fmul fast float %2658, %2018
  %2672 = call float @dx.op.tertiary.f32(i32 46, float %2019, float %2659, float %2671)  ; FMad(a,b,c)
  %2673 = call float @dx.op.tertiary.f32(i32 46, float %2020, float %2660, float %2672)  ; FMad(a,b,c)
  %2674 = fadd fast float %2673, %2661
  %2675 = fmul fast float %2663, %2018
  %2676 = call float @dx.op.tertiary.f32(i32 46, float %2019, float %2664, float %2675)  ; FMad(a,b,c)
  %2677 = call float @dx.op.tertiary.f32(i32 46, float %2020, float %2665, float %2676)  ; FMad(a,b,c)
  %2678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2679 = extractvalue %dx.types.CBufRet.f32 %2678, 0
  %2680 = extractvalue %dx.types.CBufRet.f32 %2678, 1
  %2681 = extractvalue %dx.types.CBufRet.f32 %2678, 3
  %2682 = fmul fast float %2681, %2670
  %2683 = fmul fast float %2681, %2674
  %2684 = fadd fast float %2682, %2679
  %2685 = fadd fast float %2683, %2680
  %2686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2687 = extractvalue %dx.types.CBufRet.f32 %2686, 0
  %2688 = extractvalue %dx.types.CBufRet.f32 %2686, 1
  %2689 = fsub fast float %2684, %2687
  %2690 = fsub fast float %2685, %2688
  %2691 = fcmp fast olt float %2689, 0.000000e+00
  %2692 = fcmp fast olt float %2690, 0.000000e+00
  %2693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2693, 0
  %2695 = extractvalue %dx.types.CBufRet.f32 %2693, 1
  %2696 = extractvalue %dx.types.CBufRet.f32 %2693, 2
  %2697 = extractvalue %dx.types.CBufRet.f32 %2693, 3
  %2698 = select i1 %2691, float %2694, float %2696
  %2699 = select i1 %2692, float %2695, float %2697
  %2700 = fmul fast float %2698, %2689
  %2701 = fmul fast float %2699, %2690
  %2702 = call float @dx.op.unary.f32(i32 6, float %2700)  ; FAbs(value)
  %2703 = call float @dx.op.unary.f32(i32 6, float %2701)  ; FAbs(value)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2013, 0
  %2705 = call float @dx.op.binary.f32(i32 35, float %2702, float %2703)  ; FMax(a,b)
  %2706 = fsub fast float %2704, %2705
  %2707 = call float @dx.op.unary.f32(i32 7, float %2706)  ; Saturate(value)
  %2708 = fcmp fast ogt float %2707, 0.000000e+00
  br i1 %2708, label %2709, label %2750, !dx.controlflow.hints !94

; <label>:2709                                    ; preds = %2651
  %2710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %31, float %2684, float %2685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2711 = extractvalue %dx.types.ResRet.f32 %2710, 1
  %2712 = fcmp fast ogt float %2711, 0.000000e+00
  br i1 %2712, label %2713, label %2745

; <label>:2713                                    ; preds = %2709
  %2714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %31, float %2684, float %2685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2715 = extractvalue %dx.types.ResRet.f32 %2714, 0
  %2716 = extractvalue %dx.types.ResRet.f32 %2714, 1
  %2717 = extractvalue %dx.types.ResRet.f32 %2714, 2
  %2718 = extractvalue %dx.types.ResRet.f32 %2714, 3
  %2719 = fsub fast float 1.000000e+00, %2666
  %2720 = fsub fast float %2719, %2677
  %2721 = fmul fast float %2720, 0x400921FB60000000
  %2722 = fadd fast float %2721, 0x3FF921FB60000000
  %2723 = call float @dx.op.unary.f32(i32 13, float %2722)  ; Sin(value)
  %2724 = fadd fast float %2723, -1.000000e+00
  %2725 = fmul fast float %2724, 0x3FD45F3060000000
  %2726 = fmul fast float %2720, 0x401921FB60000000
  %2727 = fadd fast float %2726, 0x400921FB60000000
  %2728 = call float @dx.op.unary.f32(i32 13, float %2727)  ; Sin(value)
  %2729 = fadd fast float %2728, 0x3E7777A5C0000000
  %2730 = fmul fast float %2729, 0x3FC45F3060000000
  %2731 = fmul fast float %2720, 0x4022D97C80000000
  %2732 = fadd fast float %2731, 0x4012D97C80000000
  %2733 = call float @dx.op.unary.f32(i32 13, float %2732)  ; Sin(value)
  %2734 = fadd fast float %2733, 1.000000e+00
  %2735 = fmul fast float %2734, 0x3FBB2995E0000000
  %2736 = fmul fast float %2720, 0x402921FB60000000
  %2737 = fadd fast float %2736, 0x401921FB60000000
  %2738 = call float @dx.op.unary.f32(i32 13, float %2737)  ; Sin(value)
  %2739 = fadd fast float %2738, 0xBE8777A5C0000000
  %2740 = fmul fast float %2739, 0x3FB45F3060000000
  %2741 = call float @dx.op.dot4.f32(i32 56, float %2715, float %2716, float %2717, float %2718, float %2725, float %2730, float %2735, float %2740)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2742 = fmul fast float %2741, 0xBFF7154760000000
  %2743 = call float @dx.op.unary.f32(i32 21, float %2742)  ; Exp(value)
  %2744 = call float @dx.op.unary.f32(i32 7, float %2743)  ; Saturate(value)
  br label %2745

; <label>:2745                                    ; preds = %2713, %2709
  %2746 = phi float [ %2744, %2713 ], [ 1.000000e+00, %2709 ]
  %2747 = fadd fast float %2746, -1.000000e+00
  %2748 = fmul fast float %2747, %2707
  %2749 = fadd fast float %2748, 1.000000e+00
  br label %2750

; <label>:2750                                    ; preds = %2745, %2651
  %2751 = phi float [ %2749, %2745 ], [ 1.000000e+00, %2651 ]
  %2752 = fmul fast float %2751, %2647
  %2753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.CBufRet.f32 %2753, 1
  %2756 = extractvalue %dx.types.CBufRet.f32 %2753, 2
  %2757 = fadd fast float %2754, %123
  %2758 = fadd fast float %2755, %124
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 1
  %2761 = fsub fast float -0.000000e+00, %2757
  %2762 = fsub fast float -0.000000e+00, %2758
  %2763 = fsub fast float -0.000000e+00, %125
  %2764 = fsub fast float %2763, %2756
  %2765 = fadd fast float %2764, %2760
  %2766 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2761, float %2762, float %2765)  ; Dot3(ax,ay,az,bx,by,bz)
  %2767 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1999, float %2000, float %2001)  ; Dot3(ax,ay,az,bx,by,bz)
  %2768 = fdiv fast float 1.000000e+00, %2767
  %2769 = fmul fast float %2768, %2766
  %2770 = fmul fast float %1999, %2769
  %2771 = fmul fast float %2000, %2769
  %2772 = fadd fast float %2770, %2757
  %2773 = fadd fast float %2771, %2758
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 0
  %2776 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2777 = fsub fast float %2772, %2775
  %2778 = fsub fast float %2773, %2776
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 2
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 3
  %2782 = fmul fast float %2777, %2780
  %2783 = fmul fast float %2778, %2781
  %2784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.i32 %2784, 3
  %2786 = icmp eq i32 %2785, 0
  br i1 %2786, label %2792, label %2787

; <label>:2787                                    ; preds = %2750
  %2788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %2782, float %2783, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2789 = extractvalue %dx.types.ResRet.f32 %2788, 0
  %2790 = extractvalue %dx.types.ResRet.f32 %2788, 1
  %2791 = extractvalue %dx.types.ResRet.f32 %2788, 2
  br label %2797

; <label>:2792                                    ; preds = %2750
  %2793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %2782, float %2783, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2794 = extractvalue %dx.types.ResRet.f32 %2793, 0
  %2795 = extractvalue %dx.types.ResRet.f32 %2793, 1
  %2796 = extractvalue %dx.types.ResRet.f32 %2793, 2
  br label %2797

; <label>:2797                                    ; preds = %2792, %2787
  %2798 = phi float [ %2789, %2787 ], [ %2794, %2792 ]
  %2799 = phi float [ %2790, %2787 ], [ %2795, %2792 ]
  %2800 = phi float [ %2791, %2787 ], [ %2796, %2792 ]
  %2801 = extractvalue %dx.types.CBufRet.f32 %2759, 2
  %2802 = fmul fast float %2801, %2798
  %2803 = extractvalue %dx.types.CBufRet.f32 %2759, 0
  %2804 = fsub fast float %2769, %2803
  %2805 = fsub fast float %2804, %2802
  %2806 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2805)  ; FMax(a,b)
  %2807 = fmul fast float %2806, %2799
  %2808 = call float @dx.op.binary.f32(i32 36, float %2800, float %2807)  ; FMin(a,b)
  %2809 = fmul fast float %2808, 0xBFF7154760000000
  %2810 = call float @dx.op.unary.f32(i32 21, float %2809)  ; Exp(value)
  %2811 = fmul fast float %2752, %2810
  br label %2812

; <label>:2812                                    ; preds = %2797, %2646
  %2813 = phi float [ %2811, %2797 ], [ %2647, %2646 ]
  %2814 = call float @dx.op.binary.f32(i32 36, float %2813, float %2813)  ; FMin(a,b)
  %2815 = call float @dx.op.binary.f32(i32 36, float %2813, float %2814)  ; FMin(a,b)
  %2816 = fcmp fast ogt float %2815, 0.000000e+00
  br i1 %2816, label %2817, label %3004, !dx.controlflow.hints !95

; <label>:2817                                    ; preds = %2812
  %2818 = fmul fast float %2813, %2010
  %2819 = fmul fast float %2813, %2011
  %2820 = fmul fast float %2813, %2012
  %2821 = fsub fast float %1999, %1734
  %2822 = fsub fast float %2000, %1733
  %2823 = fsub fast float %2001, %1732
  %2824 = call float @dx.op.dot3.f32(i32 55, float %2821, float %2822, float %2823, float %2821, float %2822, float %2823)  ; Dot3(ax,ay,az,bx,by,bz)
  %2825 = call float @dx.op.unary.f32(i32 25, float %2824)  ; Rsqrt(value)
  %2826 = fmul fast float %2825, %2821
  %2827 = fmul fast float %2825, %2822
  %2828 = fmul fast float %2825, %2823
  %2829 = call float @dx.op.dot3.f32(i32 55, float %1999, float %2000, float %2001, float %1741, float %1742, float %1743)  ; Dot3(ax,ay,az,bx,by,bz)
  %2830 = call float @dx.op.dot3.f32(i32 55, float %1731, float %1730, float %1729, float %2826, float %2827, float %2828)  ; Dot3(ax,ay,az,bx,by,bz)
  %2831 = call float @dx.op.unary.f32(i32 7, float %2829)  ; Saturate(value)
  %2832 = fmul fast float %2831, %2831
  %2833 = fmul fast float %2832, %1761
  %2834 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  %2835 = fmul fast float %2834, %2831
  %2836 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1742, float %1743, float %2826, float %2827, float %2828)  ; Dot3(ax,ay,az,bx,by,bz)
  %2837 = fmul fast float %2836, %2836
  %2838 = call float @dx.op.unary.f32(i32 6, float %2829)  ; FAbs(value)
  %2839 = fsub fast float 1.000000e+00, %1744
  %2840 = call float @dx.op.binary.f32(i32 35, float %2839, float 0x3F847AE140000000)  ; FMax(a,b)
  %2841 = fmul fast float %2840, %2840
  %2842 = fmul fast float %2841, %2841
  %2843 = fsub fast float 1.000000e+00, %2842
  %2844 = fmul fast float %1748, %1748
  %2845 = fmul fast float %2844, %2843
  %2846 = fadd fast float %2845, %2842
  %2847 = bitcast float %2846 to i32
  %2848 = ashr i32 %2847, 1
  %2849 = add nsw i32 %2848, 532487669
  %2850 = bitcast i32 %2849 to float
  %2851 = fadd fast float %2850, %1748
  %2852 = fmul fast float %2842, %2837
  %2853 = fsub fast float 1.000000e+00, %2837
  %2854 = fadd fast float %2853, %2852
  %2855 = fmul fast float %2838, %2838
  %2856 = fmul fast float %2855, %2843
  %2857 = fadd fast float %2856, %2842
  %2858 = bitcast float %2857 to i32
  %2859 = ashr i32 %2858, 1
  %2860 = add nsw i32 %2859, 532487669
  %2861 = bitcast i32 %2860 to float
  %2862 = fadd fast float %2861, %2838
  %2863 = fmul fast float %2854, %2854
  %2864 = fmul fast float %2863, %2851
  %2865 = fmul fast float %2864, %2862
  %2866 = fdiv fast float 0x3FF0A00000000000, %2865
  %2867 = fmul fast float %2866, %2842
  %2868 = fmul fast float %1861, 0x3FF9999980000000
  %2869 = fsub fast float 5.000000e+00, %2868
  %2870 = call float @dx.op.unary.f32(i32 6, float %2830)  ; FAbs(value)
  %2871 = fsub fast float 1.000000e+00, %2870
  %2872 = fmul fast float %1861, 0x41D9660740000000
  %2873 = fadd fast float %2872, 0xC1EFBF8940000000
  %2874 = bitcast float %2871 to i32
  %2875 = sitofp i32 %2874 to float
  %2876 = fmul fast float %2875, %2869
  %2877 = fadd fast float %2873, %2876
  %2878 = fptosi float %2877 to i32
  %2879 = bitcast i32 %2878 to float
  %2880 = fsub fast float 1.000000e+00, %1738
  %2881 = fsub fast float 1.000000e+00, %1739
  %2882 = fsub fast float 1.000000e+00, %1746
  %2883 = fmul fast float %2879, %2880
  %2884 = fmul fast float %2879, %2881
  %2885 = fmul fast float %2879, %2882
  %2886 = fadd fast float %2883, %1738
  %2887 = fadd fast float %2884, %1739
  %2888 = fadd fast float %2885, %1746
  br i1 %1884, label %2889, label %2912

; <label>:2889                                    ; preds = %2817
  %2890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1400, float %2870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2891 = extractvalue %dx.types.ResRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.ResRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.ResRet.f32 %2890, 2
  %2894 = fadd fast float %2891, -5.000000e-01
  %2895 = fadd fast float %2892, -5.000000e-01
  %2896 = fadd fast float %2893, -5.000000e-01
  %2897 = fmul fast float %1738, 4.000000e+00
  %2898 = fmul fast float %2897, %2880
  %2899 = fmul fast float %2898, %2894
  %2900 = fmul fast float %1739, 4.000000e+00
  %2901 = fmul fast float %2900, %2881
  %2902 = fmul fast float %2901, %2895
  %2903 = fmul fast float %1746, 4.000000e+00
  %2904 = fmul fast float %2903, %2882
  %2905 = fmul fast float %2904, %2896
  %2906 = fadd fast float %2899, %2886
  %2907 = fadd fast float %2902, %2887
  %2908 = fadd fast float %2905, %2888
  %2909 = call float @dx.op.unary.f32(i32 7, float %2906)  ; Saturate(value)
  %2910 = call float @dx.op.unary.f32(i32 7, float %2907)  ; Saturate(value)
  %2911 = call float @dx.op.unary.f32(i32 7, float %2908)  ; Saturate(value)
  br label %2912

; <label>:2912                                    ; preds = %2889, %2817
  %2913 = phi float [ %2909, %2889 ], [ %2886, %2817 ]
  %2914 = phi float [ %2910, %2889 ], [ %2887, %2817 ]
  %2915 = phi float [ %2911, %2889 ], [ %2888, %2817 ]
  %2916 = fmul fast float %2829, 9.843750e-01
  %2917 = fadd fast float %2916, 7.812500e-03
  %2918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %2917, float %1865, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2919 = extractvalue %dx.types.ResRet.f32 %2918, 0
  %2920 = extractvalue %dx.types.ResRet.f32 %2918, 1
  %2921 = extractvalue %dx.types.ResRet.f32 %2918, 2
  %2922 = extractvalue %dx.types.ResRet.f32 %2918, 3
  %2923 = fsub fast float %2921, %2919
  %2924 = fsub fast float %2922, %2920
  %2925 = fmul fast float %2923, %1871
  %2926 = fmul fast float %2924, %1871
  %2927 = fadd fast float %2925, %2919
  %2928 = fadd fast float %2926, %2920
  %2929 = fmul fast float %2927, %1738
  %2930 = fmul fast float %2927, %1739
  %2931 = fmul fast float %2927, %1746
  %2932 = fadd fast float %2929, %2928
  %2933 = fadd fast float %2930, %2928
  %2934 = fadd fast float %2931, %2928
  br i1 %1884, label %2935, label %2958

; <label>:2935                                    ; preds = %2912
  %2936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1400, float %2829, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2937 = extractvalue %dx.types.ResRet.f32 %2936, 0
  %2938 = extractvalue %dx.types.ResRet.f32 %2936, 1
  %2939 = extractvalue %dx.types.ResRet.f32 %2936, 2
  %2940 = fadd fast float %2937, -5.000000e-01
  %2941 = fadd fast float %2938, -5.000000e-01
  %2942 = fadd fast float %2939, -5.000000e-01
  %2943 = fmul fast float %1738, 4.000000e+00
  %2944 = fmul fast float %2943, %2880
  %2945 = fmul fast float %2944, %2940
  %2946 = fmul fast float %1739, 4.000000e+00
  %2947 = fmul fast float %2946, %2881
  %2948 = fmul fast float %2947, %2941
  %2949 = fmul fast float %1746, 4.000000e+00
  %2950 = fmul fast float %2949, %2882
  %2951 = fmul fast float %2950, %2942
  %2952 = fadd fast float %2945, %2932
  %2953 = fadd fast float %2948, %2933
  %2954 = fadd fast float %2951, %2934
  %2955 = call float @dx.op.unary.f32(i32 7, float %2952)  ; Saturate(value)
  %2956 = call float @dx.op.unary.f32(i32 7, float %2953)  ; Saturate(value)
  %2957 = call float @dx.op.unary.f32(i32 7, float %2954)  ; Saturate(value)
  br label %2958

; <label>:2958                                    ; preds = %2935, %2912
  %2959 = phi float [ %2955, %2935 ], [ %2932, %2912 ]
  %2960 = phi float [ %2956, %2935 ], [ %2933, %2912 ]
  %2961 = phi float [ %2957, %2935 ], [ %2934, %2912 ]
  %2962 = call float @dx.op.binary.f32(i32 35, float %2960, float %2961)  ; FMax(a,b)
  %2963 = call float @dx.op.binary.f32(i32 35, float %2959, float %2962)  ; FMax(a,b)
  %2964 = fsub fast float 1.000000e+00, %2963
  %2965 = fmul fast float %2913, %2867
  %2966 = fmul fast float %2914, %2867
  %2967 = fmul fast float %2915, %2867
  %2968 = fsub fast float 1.000000e+00, %2830
  %2969 = bitcast float %2968 to i32
  %2970 = sitofp i32 %2969 to float
  %2971 = fmul fast float %2970, 5.000000e+00
  %2972 = fadd fast float %2971, 0xC1EFBF8940000000
  %2973 = fptosi float %2972 to i32
  %2974 = bitcast i32 %2973 to float
  %2975 = fmul fast float %2974, %1399
  %2976 = fmul fast float %2964, %2975
  %2977 = fmul fast float %2976, %1934
  %2978 = fmul fast float %2976, %1935
  %2979 = fmul fast float %2976, %1936
  %2980 = fadd fast float %2977, %2965
  %2981 = fadd fast float %2978, %2966
  %2982 = fadd fast float %2979, %2967
  %2983 = fmul fast float %2835, %2818
  %2984 = fmul fast float %2983, %2964
  %2985 = fmul fast float %2835, %2819
  %2986 = fmul fast float %2985, %2964
  %2987 = fmul fast float %2835, %2820
  %2988 = fmul fast float %2987, %2964
  %2989 = fmul fast float %2983, %2980
  %2990 = fmul fast float %2985, %2981
  %2991 = fmul fast float %2987, %2982
  %2992 = fadd fast float %2984, %1918
  %2993 = fmul fast float %2992, %1420
  %2994 = fadd fast float %2986, %1919
  %2995 = fmul fast float %2994, %1420
  %2996 = fadd fast float %2988, %1920
  %2997 = fmul fast float %2996, %1420
  %2998 = fadd fast float %2989, %1987
  %2999 = fmul fast float %2998, %1420
  %3000 = fadd fast float %2990, %1990
  %3001 = fmul fast float %3000, %1420
  %3002 = fadd fast float %2991, %1993
  %3003 = fmul fast float %3002, %1420
  br label %3004

; <label>:3004                                    ; preds = %2958, %2812, %1911
  %3005 = phi float [ %1988, %1911 ], [ %1988, %2812 ], [ %2999, %2958 ]
  %3006 = phi float [ %1991, %1911 ], [ %1991, %2812 ], [ %3001, %2958 ]
  %3007 = phi float [ %1994, %1911 ], [ %1994, %2812 ], [ %3003, %2958 ]
  %3008 = phi float [ %1983, %1911 ], [ %1983, %2812 ], [ %2993, %2958 ]
  %3009 = phi float [ %1984, %1911 ], [ %1984, %2812 ], [ %2995, %2958 ]
  %3010 = phi float [ %1985, %1911 ], [ %1985, %2812 ], [ %2997, %2958 ]
  %3011 = fmul fast float %1420, %1420
  %3012 = fmul fast float %3011, %1960
  %3013 = fsub fast float -0.000000e+00, %3012
  %3014 = fmul fast float %3011, %1961
  %3015 = fsub fast float -0.000000e+00, %3014
  %3016 = fmul fast float %3011, %1962
  %3017 = fsub fast float -0.000000e+00, %3016
  %3018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3019 = extractvalue %dx.types.CBufRet.f32 %3018, 0
  %3020 = fmul fast float %3019, %1966
  %3021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3022 = extractvalue %dx.types.CBufRet.f32 %3021, 3
  %3023 = fsub fast float 1.000000e+00, %1395
  %3024 = call float @dx.op.unary.f32(i32 7, float %3023)  ; Saturate(value)
  %3025 = fadd fast float %3010, %1394
  %3026 = fmul fast float %3025, %1395
  %3027 = fmul fast float %3024, %3022
  %3028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %3029 = extractvalue %dx.types.CBufRet.f32 %3028, 3
  %3030 = fmul fast float %3008, %1735
  %3031 = fmul fast float %3009, %1736
  %3032 = fmul fast float %3010, %1737
  %3033 = fcmp fast ogt float %58, %145
  %3034 = and i1 %3033, %1467
  %3035 = or i1 %1546, %3034
  %3036 = icmp eq i32 %1466, 2
  %3037 = fcmp fast ole float %58, %145
  %3038 = and i1 %3037, %3036
  %3039 = or i1 %3038, %3035
  br i1 %3034, label %3040, label %3297

; <label>:3040                                    ; preds = %3004
  %3041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3042 = extractvalue %dx.types.CBufRet.f32 %3041, 2
  %3043 = extractvalue %dx.types.CBufRet.f32 %3041, 3
  %3044 = fmul fast float %3042, %67
  %3045 = fmul fast float %3043, %68
  %3046 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3047 = call float @dx.op.unary.f32(i32 7, float %3045)  ; Saturate(value)
  %3048 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %3046, float %3047, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3049 = extractvalue %dx.types.ResRet.f32 %3048, 0
  %3050 = extractvalue %dx.types.ResRet.f32 %3048, 1
  %3051 = extractvalue %dx.types.ResRet.f32 %3048, 2
  %3052 = extractvalue %dx.types.ResRet.f32 %3048, 3
  %3053 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %3046, float %3047, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3054 = extractvalue %dx.types.ResRet.f32 %3053, 0
  %3055 = extractvalue %dx.types.ResRet.f32 %3053, 1
  %3056 = extractvalue %dx.types.ResRet.f32 %3053, 2
  %3057 = extractvalue %dx.types.ResRet.f32 %3053, 3
  %3058 = call float @dx.op.binary.f32(i32 35, float %3050, float %3051)  ; FMax(a,b)
  %3059 = call float @dx.op.binary.f32(i32 35, float %3049, float %3058)  ; FMax(a,b)
  %3060 = call float @dx.op.binary.f32(i32 35, float %3059, float %3052)  ; FMax(a,b)
  %3061 = call float @dx.op.binary.f32(i32 36, float %3055, float %3056)  ; FMin(a,b)
  %3062 = call float @dx.op.binary.f32(i32 36, float %3054, float %3061)  ; FMin(a,b)
  %3063 = call float @dx.op.binary.f32(i32 36, float %3062, float %3057)  ; FMin(a,b)
  %3064 = fmul fast float %3060, 2.550000e+02
  %3065 = fadd fast float %3064, 0x3F70101020000000
  %3066 = fptoui float %3065 to i32
  %3067 = fmul fast float %3063, 2.550000e+02
  %3068 = fadd fast float %3067, 0x3F70101020000000
  %3069 = fptoui float %3068 to i32
  %3070 = icmp ult i32 %3066, %3069
  br i1 %3070, label %3071, label %3239

; <label>:3071                                    ; preds = %3040
  %3072 = fcmp fast ogt float %57, 9.843750e-01
  %3073 = fadd fast float %58, -4.000000e+00
  %3074 = select i1 %3072, float -4.000000e+00, float %3073
  %3075 = call float @dx.op.binary.f32(i32 35, float %3074, float 0.000000e+00)  ; FMax(a,b)
  %3076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3077 = extractvalue %dx.types.CBufRet.f32 %3076, 0
  %3078 = fadd fast float %3077, %3075
  %3079 = extractvalue %dx.types.CBufRet.f32 %3076, 2
  %3080 = fmul fast float %3078, %3079
  %3081 = call float @dx.op.unary.f32(i32 23, float %3080)  ; Log(value)
  %3082 = extractvalue %dx.types.CBufRet.f32 %3076, 3
  %3083 = fmul fast float %3082, %3081
  %3084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3085 = extractvalue %dx.types.CBufRet.f32 %3084, 2
  %3086 = fmul fast float %3083, %3085
  %3087 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3088 = uitofp i32 %3066 to float
  %3089 = uitofp i32 %3069 to float
  %3090 = fadd fast float %3088, 5.000000e-01
  %3091 = fadd fast float %3089, 5.000000e-01
  %3092 = fmul fast float %3085, %3090
  %3093 = fmul fast float %3085, %3091
  %3094 = fadd fast float %3092, 0x3F0FFB4800000000
  %3095 = fadd fast float %3093, 0xBF0FFB4800000000
  %3096 = call float @dx.op.binary.f32(i32 35, float %3087, float %3094)  ; FMax(a,b)
  %3097 = call float @dx.op.binary.f32(i32 36, float %3096, float %3095)  ; FMin(a,b)
  %3098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %3099 = extractvalue %dx.types.CBufRet.f32 %3098, 1
  %3100 = extractvalue %dx.types.CBufRet.f32 %3098, 2
  %3101 = extractvalue %dx.types.CBufRet.f32 %3098, 0
  %3102 = fmul fast float %3099, %3097
  %3103 = fadd fast float %3101, %3102
  %3104 = fadd fast float %3101, %3100
  %3105 = fsub fast float %3099, %3100
  %3106 = fadd fast float %3105, %3101
  %3107 = call float @dx.op.binary.f32(i32 35, float %3103, float %3104)  ; FMax(a,b)
  %3108 = call float @dx.op.binary.f32(i32 36, float %3107, float %3106)  ; FMin(a,b)
  %3109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %3046, float %3047, float %3108, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3110 = extractvalue %dx.types.ResRet.f32 %3109, 0
  %3111 = extractvalue %dx.types.ResRet.f32 %3109, 1
  %3112 = extractvalue %dx.types.ResRet.f32 %3109, 2
  %3113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %3114 = extractvalue %dx.types.CBufRet.i32 %3113, 0
  %3115 = extractvalue %dx.types.CBufRet.i32 %3113, 1
  %3116 = uitofp i32 %3114 to float
  %3117 = uitofp i32 %3115 to float
  %3118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %3119 = extractvalue %dx.types.CBufRet.f32 %3118, 0
  %3120 = extractvalue %dx.types.CBufRet.f32 %3118, 1
  %3121 = fmul fast float %3116, %3046
  %3122 = fmul fast float %3117, %3047
  %3123 = fadd fast float %3121, -5.000000e-01
  %3124 = fadd fast float %3122, -5.000000e-01
  %3125 = call float @dx.op.unary.f32(i32 22, float %3123)  ; Frc(value)
  %3126 = call float @dx.op.unary.f32(i32 22, float %3124)  ; Frc(value)
  %3127 = fmul fast float %3125, %3125
  %3128 = fmul fast float %3127, %3125
  %3129 = fsub fast float 3.000000e+00, %3125
  %3130 = fmul fast float %3127, %3129
  %3131 = fmul fast float %3125, 3.000000e+00
  %3132 = fmul fast float %3128, 3.000000e+00
  %3133 = fmul fast float %3127, 6.000000e+00
  %3134 = fsub fast float %3132, %3133
  %3135 = fadd fast float %3134, 4.000000e+00
  %3136 = fmul fast float %3135, 0x3FC5555560000000
  %3137 = fmul fast float %3128, -3.000000e+00
  %3138 = fadd fast float %3127, %3125
  %3139 = fmul fast float %3138, 3.000000e+00
  %3140 = fadd fast float %3137, 1.000000e+00
  %3141 = fadd fast float %3140, %3139
  %3142 = fmul fast float %3128, 0x3FC5555560000000
  %3143 = fmul fast float %3126, %3126
  %3144 = fmul fast float %3143, %3126
  %3145 = fsub fast float 3.000000e+00, %3126
  %3146 = fmul fast float %3143, %3145
  %3147 = fmul fast float %3126, 3.000000e+00
  %3148 = fmul fast float %3144, 3.000000e+00
  %3149 = fmul fast float %3143, 6.000000e+00
  %3150 = fsub fast float %3148, %3149
  %3151 = fadd fast float %3150, 4.000000e+00
  %3152 = fmul fast float %3151, 0x3FC5555560000000
  %3153 = fmul fast float %3144, -3.000000e+00
  %3154 = fadd fast float %3143, %3126
  %3155 = fmul fast float %3154, 3.000000e+00
  %3156 = fadd fast float %3153, 1.000000e+00
  %3157 = fadd fast float %3156, %3155
  %3158 = fmul fast float %3144, 0x3FC5555560000000
  %3159 = fadd fast float %3125, 1.000000e+00
  %3160 = fsub fast float 1.000000e+00, %3131
  %3161 = fadd fast float %3160, %3130
  %3162 = fadd fast float %3161, %3135
  %3163 = fmul fast float %3162, 0x3FC5555560000000
  %3164 = fdiv fast float %3136, %3163
  %3165 = fsub fast float %3159, %3164
  %3166 = fsub fast float 1.000000e+00, %3125
  %3167 = fadd fast float %3141, %3128
  %3168 = fmul fast float %3167, 0x3FC5555560000000
  %3169 = fdiv fast float %3142, %3168
  %3170 = fadd fast float %3166, %3169
  %3171 = fadd fast float %3126, 1.000000e+00
  %3172 = fsub fast float 1.000000e+00, %3147
  %3173 = fadd fast float %3172, %3146
  %3174 = fadd fast float %3173, %3151
  %3175 = fmul fast float %3174, 0x3FC5555560000000
  %3176 = fdiv fast float %3152, %3175
  %3177 = fsub fast float %3171, %3176
  %3178 = fsub fast float 1.000000e+00, %3126
  %3179 = fadd fast float %3157, %3144
  %3180 = fmul fast float %3179, 0x3FC5555560000000
  %3181 = fdiv fast float %3158, %3180
  %3182 = fadd fast float %3181, %3178
  %3183 = fmul fast float %3165, %3119
  %3184 = fsub fast float %3046, %3183
  %3185 = fmul fast float %3170, %3119
  %3186 = fadd fast float %3185, %3046
  %3187 = fmul fast float %3182, %3120
  %3188 = fadd fast float %3187, %3047
  %3189 = fmul fast float %3177, %3120
  %3190 = fsub fast float %3047, %3189
  %3191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3184, float %3190, float %3108, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3192 = extractvalue %dx.types.ResRet.f32 %3191, 0
  %3193 = extractvalue %dx.types.ResRet.f32 %3191, 1
  %3194 = extractvalue %dx.types.ResRet.f32 %3191, 2
  %3195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3186, float %3190, float %3108, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3196 = extractvalue %dx.types.ResRet.f32 %3195, 0
  %3197 = extractvalue %dx.types.ResRet.f32 %3195, 1
  %3198 = extractvalue %dx.types.ResRet.f32 %3195, 2
  %3199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3184, float %3188, float %3108, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3200 = extractvalue %dx.types.ResRet.f32 %3199, 0
  %3201 = extractvalue %dx.types.ResRet.f32 %3199, 1
  %3202 = extractvalue %dx.types.ResRet.f32 %3199, 2
  %3203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3186, float %3188, float %3108, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3204 = extractvalue %dx.types.ResRet.f32 %3203, 0
  %3205 = extractvalue %dx.types.ResRet.f32 %3203, 1
  %3206 = extractvalue %dx.types.ResRet.f32 %3203, 2
  %3207 = fsub fast float %3200, %3192
  %3208 = fsub fast float %3201, %3193
  %3209 = fsub fast float %3202, %3194
  %3210 = fmul fast float %3207, %3180
  %3211 = fmul fast float %3208, %3180
  %3212 = fmul fast float %3209, %3180
  %3213 = fadd fast float %3210, %3192
  %3214 = fadd fast float %3211, %3193
  %3215 = fadd fast float %3212, %3194
  %3216 = fsub fast float %3204, %3196
  %3217 = fsub fast float %3205, %3197
  %3218 = fsub fast float %3206, %3198
  %3219 = fmul fast float %3216, %3180
  %3220 = fmul fast float %3217, %3180
  %3221 = fmul fast float %3218, %3180
  %3222 = fsub fast float %3196, %3213
  %3223 = fadd fast float %3222, %3219
  %3224 = fsub fast float %3197, %3214
  %3225 = fadd fast float %3224, %3220
  %3226 = fsub fast float %3198, %3215
  %3227 = fadd fast float %3226, %3221
  %3228 = fmul fast float %3223, %3168
  %3229 = fmul fast float %3225, %3168
  %3230 = fmul fast float %3227, %3168
  %3231 = fadd fast float %3228, %3213
  %3232 = fadd fast float %3229, %3214
  %3233 = fadd fast float %3230, %3215
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 1
  %3236 = fmul fast float %3231, %3235
  %3237 = fmul fast float %3232, %3235
  %3238 = fmul fast float %3233, %3235
  br label %3239

; <label>:3239                                    ; preds = %3071, %3040
  %3240 = phi float [ %3110, %3071 ], [ 1.000000e+00, %3040 ]
  %3241 = phi float [ %3111, %3071 ], [ 1.000000e+00, %3040 ]
  %3242 = phi float [ %3112, %3071 ], [ 1.000000e+00, %3040 ]
  %3243 = phi float [ %3236, %3071 ], [ 0.000000e+00, %3040 ]
  %3244 = phi float [ %3237, %3071 ], [ 0.000000e+00, %3040 ]
  %3245 = phi float [ %3238, %3071 ], [ 0.000000e+00, %3040 ]
  %3246 = fmul fast float %3243, %3013
  %3247 = fmul fast float %3244, %3015
  %3248 = fmul fast float %3245, %3017
  %3249 = call float @dx.op.dot3.f32(i32 55, float %3240, float %3241, float %3242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3250 = call float @dx.op.dot3.f32(i32 55, float %3246, float %3247, float %3248, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3251 = select i1 %184, float %3249, float %3240
  %3252 = select i1 %184, float %3249, float %3241
  %3253 = select i1 %184, float 1.000000e+00, float %3242
  %3254 = select i1 %184, float %3250, float %3246
  %3255 = select i1 %184, float 0.000000e+00, float %3247
  %3256 = select i1 %184, float 0.000000e+00, float %3248
  %3257 = fmul fast float %3251, %3030
  %3258 = fmul fast float %3252, %3031
  %3259 = fmul fast float %3253, %3032
  %3260 = fadd fast float %3257, %3254
  %3261 = fadd fast float %3258, %3255
  %3262 = fadd fast float %3256, %3259
  %3263 = fmul fast float %3251, %3005
  %3264 = fmul fast float %3252, %3006
  %3265 = fmul fast float %3253, %3007
  %3266 = fmul fast float %93, %3042
  %3267 = fmul fast float %95, %3043
  %3268 = fsub fast float 1.000000e+00, %3266
  %3269 = fsub fast float 1.000000e+00, %3267
  %3270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %3271 = extractvalue %dx.types.CBufRet.f32 %3270, 0
  %3272 = extractvalue %dx.types.CBufRet.f32 %3270, 1
  %3273 = extractvalue %dx.types.CBufRet.f32 %3270, 2
  %3274 = fmul fast float %3268, %3271
  %3275 = fmul fast float %3268, %3272
  %3276 = fmul fast float %3268, %3273
  %3277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %3278 = extractvalue %dx.types.CBufRet.f32 %3277, 0
  %3279 = extractvalue %dx.types.CBufRet.f32 %3277, 1
  %3280 = extractvalue %dx.types.CBufRet.f32 %3277, 2
  %3281 = fmul fast float %3269, %3278
  %3282 = fmul fast float %3269, %3279
  %3283 = fmul fast float %3269, %3280
  %3284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3285 = extractvalue %dx.types.CBufRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.CBufRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.CBufRet.f32 %3284, 2
  %3288 = fadd fast float %3281, %3285
  %3289 = fadd fast float %3288, %3274
  %3290 = fadd fast float %3282, %3286
  %3291 = fadd fast float %3290, %3275
  %3292 = fadd fast float %3283, %3287
  %3293 = fadd fast float %3292, %3276
  %3294 = fmul fast float %3289, %145
  %3295 = fmul fast float %3291, %145
  %3296 = fmul fast float %3293, %145
  br label %3297

; <label>:3297                                    ; preds = %3239, %3004
  %3298 = phi float [ %3294, %3239 ], [ %123, %3004 ]
  %3299 = phi float [ %3295, %3239 ], [ %124, %3004 ]
  %3300 = phi float [ %3296, %3239 ], [ %125, %3004 ]
  %3301 = phi float [ %145, %3239 ], [ %58, %3004 ]
  %3302 = phi float [ %3260, %3239 ], [ %3030, %3004 ]
  %3303 = phi float [ %3261, %3239 ], [ %3031, %3004 ]
  %3304 = phi float [ %3262, %3239 ], [ %3032, %3004 ]
  %3305 = phi float [ %3263, %3239 ], [ %3005, %3004 ]
  %3306 = phi float [ %3264, %3239 ], [ %3006, %3004 ]
  %3307 = phi float [ %3265, %3239 ], [ %3007, %3004 ]
  %3308 = phi float [ %3240, %3239 ], [ 1.000000e+00, %3004 ]
  br i1 %3039, label %4463, label %3309

; <label>:3309                                    ; preds = %3297
  %3310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3311 = extractvalue %dx.types.CBufRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.CBufRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.CBufRet.f32 %3310, 2
  %3314 = extractvalue %dx.types.CBufRet.f32 %3310, 3
  %3315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.f32 %3315, 0
  %3317 = extractvalue %dx.types.CBufRet.f32 %3315, 1
  %3318 = extractvalue %dx.types.CBufRet.f32 %3315, 2
  %3319 = extractvalue %dx.types.CBufRet.f32 %3315, 3
  %3320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.f32 %3320, 0
  %3322 = extractvalue %dx.types.CBufRet.f32 %3320, 1
  %3323 = extractvalue %dx.types.CBufRet.f32 %3320, 2
  %3324 = extractvalue %dx.types.CBufRet.f32 %3320, 3
  %3325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3326 = extractvalue %dx.types.CBufRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.CBufRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.CBufRet.f32 %3325, 2
  %3329 = extractvalue %dx.types.CBufRet.f32 %3325, 3
  %3330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3331 = extractvalue %dx.types.CBufRet.f32 %3330, 3
  %3332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3333 = extractvalue %dx.types.CBufRet.f32 %3332, 3
  %3334 = extractvalue %dx.types.CBufRet.f32 %3332, 0
  %3335 = extractvalue %dx.types.CBufRet.f32 %3332, 1
  %3336 = extractvalue %dx.types.CBufRet.f32 %3332, 2
  %3337 = fcmp fast olt float %3336, -5.000000e-01
  %3338 = call float @dx.op.dot3.f32(i32 55, float %3298, float %3299, float %3300, float %3298, float %3299, float %3300)  ; Dot3(ax,ay,az,bx,by,bz)
  %3339 = call float @dx.op.unary.f32(i32 25, float %3338)  ; Rsqrt(value)
  %3340 = fmul fast float %3339, %3338
  %3341 = fmul fast float %3339, %3298
  %3342 = fmul fast float %3339, %3299
  %3343 = fmul fast float %3339, %3300
  %3344 = fadd fast float %3340, %3314
  %3345 = call float @dx.op.dot3.f32(i32 55, float %3341, float %3342, float %3343, float %3311, float %3312, float %3313)  ; Dot3(ax,ay,az,bx,by,bz)
  %3346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3347 = extractvalue %dx.types.CBufRet.i32 %3346, 1
  %3348 = and i32 %3347, 1
  %3349 = icmp ne i32 %3348, 0
  %3350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3351 = extractvalue %dx.types.CBufRet.f32 %3350, 2
  %3352 = fcmp fast ogt float %3351, 0.000000e+00
  %3353 = and i1 %3349, %3352
  br i1 %3353, label %3354, label %3760, !dx.controlflow.hints !96

; <label>:3354                                    ; preds = %3309
  %3355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3356 = extractvalue %dx.types.CBufRet.f32 %3355, 3
  %3357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3358 = extractvalue %dx.types.CBufRet.f32 %3357, 2
  %3359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3360 = extractvalue %dx.types.CBufRet.f32 %3359, 2
  %3361 = fsub fast float %3358, %3360
  %3362 = and i32 %3347, 2
  %3363 = extractvalue %dx.types.CBufRet.i32 %3346, 0
  %3364 = call i32 @dx.op.binary.i32(i32 40, i32 %3363, i32 3)  ; UMin(a,b)
  %3365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3366 = extractvalue %dx.types.CBufRet.f32 %3365, 0
  %3367 = extractvalue %dx.types.CBufRet.f32 %3365, 1
  %3368 = extractvalue %dx.types.CBufRet.f32 %3359, 0
  %3369 = extractvalue %dx.types.CBufRet.f32 %3359, 1
  %3370 = fsub fast float %3366, %3368
  %3371 = fsub fast float %3367, %3369
  %3372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3373 = extractvalue %dx.types.CBufRet.f32 %3372, 0
  %3374 = fcmp fast ogt float %3373, 0.000000e+00
  %3375 = fsub fast float -0.000000e+00, %3370
  %3376 = fsub fast float -0.000000e+00, %3371
  %3377 = call float @dx.op.dot2.f32(i32 54, float %3341, float %3342, float %3341, float %3342)  ; Dot2(ax,ay,bx,by)
  %3378 = call float @dx.op.dot2.f32(i32 54, float %3341, float %3342, float %3375, float %3376)  ; Dot2(ax,ay,bx,by)
  %3379 = fmul fast float %3378, 2.000000e+00
  %3380 = call float @dx.op.dot2.f32(i32 54, float %3375, float %3376, float %3375, float %3376)  ; Dot2(ax,ay,bx,by)
  %3381 = fmul fast float %3373, %3373
  %3382 = fsub fast float %3380, %3381
  %3383 = fmul fast float %3379, %3379
  %3384 = fmul fast float %3377, 4.000000e+00
  %3385 = fmul fast float %3384, %3382
  %3386 = fsub fast float %3383, %3385
  %3387 = fcmp fast ogt float %3386, 0.000000e+00
  br i1 %3387, label %3388, label %3403

; <label>:3388                                    ; preds = %3354
  %3389 = fcmp fast ogt float %3379, 0.000000e+00
  %3390 = call float @dx.op.unary.f32(i32 24, float %3386)  ; Sqrt(value)
  %3391 = fsub fast float -0.000000e+00, %3390
  %3392 = select i1 %3389, float %3390, float %3391
  %3393 = fadd fast float %3392, %3379
  %3394 = fmul float %3393, -5.000000e-01
  %3395 = fdiv fast float %3394, %3377
  %3396 = call float @dx.op.binary.f32(i32 35, float %3395, float 0.000000e+00)  ; FMax(a,b)
  %3397 = call float @dx.op.binary.f32(i32 36, float %3340, float %3396)  ; FMin(a,b)
  %3398 = fdiv fast float %3382, %3394
  %3399 = call float @dx.op.binary.f32(i32 35, float %3398, float 0.000000e+00)  ; FMax(a,b)
  %3400 = call float @dx.op.binary.f32(i32 36, float %3340, float %3399)  ; FMin(a,b)
  %3401 = call float @dx.op.binary.f32(i32 36, float %3397, float %3400)  ; FMin(a,b)
  %3402 = call float @dx.op.binary.f32(i32 35, float %3397, float %3400)  ; FMax(a,b)
  br label %3403

; <label>:3403                                    ; preds = %3388, %3354
  %3404 = phi float [ %3402, %3388 ], [ -1.000000e+00, %3354 ]
  %3405 = phi float [ %3401, %3388 ], [ -1.000000e+00, %3354 ]
  %3406 = phi i1 [ true, %3388 ], [ false, %3354 ]
  %3407 = and i1 %3374, %3406
  br i1 %3407, label %3408, label %3410

; <label>:3408                                    ; preds = %3403
  %3409 = fcmp fast oeq float %3405, %3404
  br i1 %3409, label %3713, label %3411

; <label>:3410                                    ; preds = %3403
  br i1 %3374, label %3713, label %3411

; <label>:3411                                    ; preds = %3410, %3408
  %3412 = phi float [ %3340, %3410 ], [ %3404, %3408 ]
  %3413 = phi float [ 0.000000e+00, %3410 ], [ %3405, %3408 ]
  %3414 = icmp ne i32 %3362, 0
  %3415 = fmul fast float %3412, %3343
  %3416 = fadd fast float %3415, %3356
  %3417 = fmul fast float %3416, %3412
  %3418 = select i1 %3414, float 0.000000e+00, float %3417
  %3419 = fcmp fast oeq float %3343, 0.000000e+00
  %3420 = fdiv fast float %3361, %3343
  %3421 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3420)  ; FMax(a,b)
  %3422 = select i1 %3419, float %3412, float %3421
  %3423 = call float @dx.op.binary.f32(i32 36, float %3412, float %3422)  ; FMin(a,b)
  %3424 = fcmp fast ogt float %3343, 0.000000e+00
  %3425 = fcmp fast olt float %3361, 0.000000e+00
  br i1 %3424, label %3426, label %3483

; <label>:3426                                    ; preds = %3411
  %3427 = icmp eq i32 %3362, 0
  br i1 %3425, label %3428, label %3472

; <label>:3428                                    ; preds = %3426
  %3429 = select i1 %3427, float %3412, float 0.000000e+00
  %3430 = fsub fast float -0.000000e+00, %3429
  %3431 = call float @dx.op.unary.f32(i32 6, float %3430)  ; FAbs(value)
  %3432 = fmul fast float %3429, %3343
  %3433 = fadd fast float %3432, %3356
  %3434 = fmul fast float %3431, %3433
  %3435 = fsub fast float %3418, %3434
  %3436 = fsub fast float %3412, %3431
  %3437 = select i1 %3427, float %3436, float 0.000000e+00
  %3438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3439 = extractvalue %dx.types.CBufRet.f32 %3438, 0
  %3440 = extractvalue %dx.types.CBufRet.f32 %3438, 1
  %3441 = extractvalue %dx.types.CBufRet.f32 %3438, 2
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 0
  %3444 = extractvalue %dx.types.CBufRet.f32 %3442, 1
  %3445 = extractvalue %dx.types.CBufRet.f32 %3442, 2
  %3446 = extractvalue %dx.types.CBufRet.f32 %3442, 3
  %3447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3448 = extractvalue %dx.types.CBufRet.f32 %3447, 3
  %3449 = call float @dx.op.binary.f32(i32 36, float %3435, float %3448)  ; FMin(a,b)
  %3450 = fmul fast float %3446, %3437
  %3451 = call float @dx.op.unary.f32(i32 7, float %3450)  ; Saturate(value)
  %3452 = fsub fast float %3443, %3439
  %3453 = fsub fast float %3444, %3440
  %3454 = fsub fast float %3445, %3441
  %3455 = fmul fast float %3451, %3452
  %3456 = fmul fast float %3451, %3453
  %3457 = fmul fast float %3451, %3454
  %3458 = fadd fast float %3455, %3439
  %3459 = fadd fast float %3456, %3440
  %3460 = fadd fast float %3457, %3441
  %3461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3462 = extractvalue %dx.types.CBufRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.CBufRet.f32 %3461, 1
  %3464 = fadd fast float %3463, %3462
  %3465 = call float @dx.op.unary.f32(i32 7, float %3464)  ; Saturate(value)
  %3466 = extractvalue %dx.types.CBufRet.f32 %3461, 2
  %3467 = extractvalue %dx.types.CBufRet.f32 %3461, 3
  %3468 = fadd fast float %3467, %3466
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3470 = fmul fast float %3465, %3449
  %3471 = fmul fast float %3470, %3469
  br label %3713

; <label>:3472                                    ; preds = %3426
  br i1 %3427, label %3473, label %3494

; <label>:3473                                    ; preds = %3472
  %3474 = call float @dx.op.binary.f32(i32 36, float %3423, float %3413)  ; FMin(a,b)
  %3475 = fsub fast float %3423, %3474
  %3476 = fsub fast float %3475, %3412
  %3477 = call float @dx.op.unary.f32(i32 6, float %3476)  ; FAbs(value)
  %3478 = fadd fast float %3475, %3412
  %3479 = fmul fast float %3478, %3343
  %3480 = fadd fast float %3479, %3356
  %3481 = fmul fast float %3480, %3477
  %3482 = fsub fast float %3418, %3481
  br label %3494

; <label>:3483                                    ; preds = %3411
  br i1 %3425, label %3484, label %3494

; <label>:3484                                    ; preds = %3483
  %3485 = call float @dx.op.binary.f32(i32 35, float %3413, float %3423)  ; FMax(a,b)
  %3486 = icmp eq i32 %3362, 0
  %3487 = select i1 %3486, float %3423, float 0.000000e+00
  %3488 = fsub fast float -0.000000e+00, %3487
  %3489 = call float @dx.op.unary.f32(i32 6, float %3488)  ; FAbs(value)
  %3490 = fmul fast float %3487, %3343
  %3491 = fadd fast float %3490, %3356
  %3492 = fmul fast float %3489, %3491
  %3493 = fsub fast float %3418, %3492
  br label %3494

; <label>:3494                                    ; preds = %3484, %3483, %3473, %3472
  %3495 = phi float [ %3413, %3472 ], [ %3413, %3473 ], [ %3485, %3484 ], [ %3413, %3483 ]
  %3496 = phi float [ 0.000000e+00, %3472 ], [ %3477, %3473 ], [ %3489, %3484 ], [ 0.000000e+00, %3483 ]
  %3497 = phi float [ %3418, %3472 ], [ %3482, %3473 ], [ %3493, %3484 ], [ %3418, %3483 ]
  %3498 = phi float [ %3423, %3472 ], [ %3423, %3473 ], [ %3412, %3484 ], [ %3412, %3483 ]
  %3499 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 0
  store float -1.000000e+00, float* %3499, align 4, !tbaa !97, !noalias !99
  %3500 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 1
  store float -1.000000e+00, float* %3500, align 4, !tbaa !97, !noalias !99
  %3501 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 2
  store float -1.000000e+00, float* %3501, align 4, !tbaa !97, !noalias !99
  %3502 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 0
  store float -1.000000e+00, float* %3502, align 4, !tbaa !97, !noalias !99
  %3503 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 1
  store float -1.000000e+00, float* %3503, align 4, !tbaa !97, !noalias !99
  %3504 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 2
  store float -1.000000e+00, float* %3504, align 4, !tbaa !97, !noalias !99
  %3505 = icmp sgt i32 %3364, 0
  br i1 %3505, label %3506, label %3567

; <label>:3506                                    ; preds = %3494
  br label %3507

; <label>:3507                                    ; preds = %3556, %3506
  %3508 = phi i32 [ %3557, %3556 ], [ 0, %3506 ]
  %3509 = phi i32 [ %3558, %3556 ], [ 0, %3506 ]
  %3510 = add nuw i32 %3509, 171
  %3511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %3510)  ; CBufferLoadLegacy(handle,regIndex)
  %3512 = extractvalue %dx.types.CBufRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.CBufRet.f32 %3511, 1
  %3514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3515 = extractvalue %dx.types.CBufRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.CBufRet.f32 %3514, 1
  %3517 = fsub fast float %3512, %3515
  %3518 = fsub fast float %3513, %3516
  %3519 = extractvalue %dx.types.CBufRet.f32 %3511, 2
  %3520 = fsub fast float -0.000000e+00, %3517
  %3521 = fsub fast float -0.000000e+00, %3518
  %3522 = call float @dx.op.dot2.f32(i32 54, float %3341, float %3342, float %3520, float %3521)  ; Dot2(ax,ay,bx,by)
  %3523 = fmul fast float %3522, 2.000000e+00
  %3524 = call float @dx.op.dot2.f32(i32 54, float %3520, float %3521, float %3520, float %3521)  ; Dot2(ax,ay,bx,by)
  %3525 = fmul fast float %3519, %3519
  %3526 = fsub fast float %3524, %3525
  %3527 = fmul fast float %3523, %3523
  %3528 = fmul fast float %3384, %3526
  %3529 = fsub fast float %3527, %3528
  %3530 = fcmp fast ogt float %3529, 0.000000e+00
  br i1 %3530, label %3531, label %3546

; <label>:3531                                    ; preds = %3507
  %3532 = fcmp fast ogt float %3523, 0.000000e+00
  %3533 = call float @dx.op.unary.f32(i32 24, float %3529)  ; Sqrt(value)
  %3534 = fsub fast float -0.000000e+00, %3533
  %3535 = select i1 %3532, float %3533, float %3534
  %3536 = fadd fast float %3535, %3523
  %3537 = fmul float %3536, -5.000000e-01
  %3538 = fdiv fast float %3537, %3377
  %3539 = call float @dx.op.binary.f32(i32 35, float %3538, float 0.000000e+00)  ; FMax(a,b)
  %3540 = call float @dx.op.binary.f32(i32 36, float %3412, float %3539)  ; FMin(a,b)
  %3541 = fdiv fast float %3526, %3537
  %3542 = call float @dx.op.binary.f32(i32 35, float %3541, float 0.000000e+00)  ; FMax(a,b)
  %3543 = call float @dx.op.binary.f32(i32 36, float %3412, float %3542)  ; FMin(a,b)
  %3544 = call float @dx.op.binary.f32(i32 36, float %3540, float %3543)  ; FMin(a,b)
  %3545 = call float @dx.op.binary.f32(i32 35, float %3540, float %3543)  ; FMax(a,b)
  br label %3546

; <label>:3546                                    ; preds = %3531, %3507
  %3547 = phi float [ %3545, %3531 ], [ -1.000000e+00, %3507 ]
  %3548 = phi float [ %3544, %3531 ], [ -1.000000e+00, %3507 ]
  %3549 = phi i1 [ true, %3531 ], [ false, %3507 ]
  br i1 %3549, label %3550, label %3556

; <label>:3550                                    ; preds = %3546
  %3551 = call float @dx.op.binary.f32(i32 35, float %3495, float %3548)  ; FMax(a,b)
  %3552 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %3509
  store float %3551, float* %3552, align 4, !tbaa !97, !noalias !99
  %3553 = call float @dx.op.binary.f32(i32 35, float %3495, float %3547)  ; FMax(a,b)
  %3554 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 %3509
  store float %3553, float* %3554, align 4, !tbaa !97, !noalias !99
  %3555 = add nsw i32 %3508, 1
  br label %3556

; <label>:3556                                    ; preds = %3550, %3546
  %3557 = phi i32 [ %3555, %3550 ], [ %3508, %3546 ]
  %3558 = add nuw nsw i32 %3509, 1
  %3559 = icmp eq i32 %3558, %3364
  br i1 %3559, label %3560, label %3507

; <label>:3560                                    ; preds = %3556
  %3561 = load float, float* %3501, align 4, !tbaa !97, !alias.scope !115, !noalias !118
  %3562 = load float, float* %3500, align 4, !tbaa !97, !alias.scope !121, !noalias !122
  %3563 = load float, float* %3499, align 4, !tbaa !97, !alias.scope !123, !noalias !124
  %3564 = load float, float* %3504, align 4, !tbaa !97, !alias.scope !125, !noalias !128
  %3565 = load float, float* %3503, align 4, !tbaa !97, !alias.scope !131, !noalias !132
  %3566 = load float, float* %3502, align 4, !tbaa !97, !alias.scope !133, !noalias !134
  br label %3567

; <label>:3567                                    ; preds = %3560, %3494
  %3568 = phi float [ -1.000000e+00, %3494 ], [ %3566, %3560 ]
  %3569 = phi float [ -1.000000e+00, %3494 ], [ %3565, %3560 ]
  %3570 = phi float [ -1.000000e+00, %3494 ], [ %3564, %3560 ]
  %3571 = phi float [ -1.000000e+00, %3494 ], [ %3563, %3560 ]
  %3572 = phi float [ -1.000000e+00, %3494 ], [ %3562, %3560 ]
  %3573 = phi float [ -1.000000e+00, %3494 ], [ %3561, %3560 ]
  %3574 = phi i32 [ 0, %3494 ], [ %3557, %3560 ]
  %3575 = call float @dx.op.binary.f32(i32 36, float %3572, float %3573)  ; FMin(a,b)
  %3576 = call float @dx.op.binary.f32(i32 36, float %3571, float %3575)  ; FMin(a,b)
  %3577 = call float @dx.op.binary.f32(i32 35, float %3571, float %3572)  ; FMax(a,b)
  %3578 = call float @dx.op.binary.f32(i32 36, float %3577, float %3573)  ; FMin(a,b)
  %3579 = call float @dx.op.binary.f32(i32 36, float %3571, float %3572)  ; FMin(a,b)
  %3580 = call float @dx.op.binary.f32(i32 35, float %3579, float %3578)  ; FMax(a,b)
  %3581 = call float @dx.op.binary.f32(i32 35, float %3572, float %3573)  ; FMax(a,b)
  %3582 = call float @dx.op.binary.f32(i32 35, float %3571, float %3581)  ; FMax(a,b)
  store float %3576, float* %3499, align 4, !tbaa !97, !alias.scope !123, !noalias !124
  store float %3580, float* %3500, align 4, !tbaa !97, !alias.scope !121, !noalias !122
  store float %3582, float* %3501, align 4, !tbaa !97, !alias.scope !115, !noalias !118
  %3583 = call float @dx.op.binary.f32(i32 36, float %3569, float %3570)  ; FMin(a,b)
  %3584 = call float @dx.op.binary.f32(i32 36, float %3568, float %3583)  ; FMin(a,b)
  %3585 = call float @dx.op.binary.f32(i32 35, float %3568, float %3569)  ; FMax(a,b)
  %3586 = call float @dx.op.binary.f32(i32 36, float %3585, float %3570)  ; FMin(a,b)
  %3587 = call float @dx.op.binary.f32(i32 36, float %3568, float %3569)  ; FMin(a,b)
  %3588 = call float @dx.op.binary.f32(i32 35, float %3587, float %3586)  ; FMax(a,b)
  %3589 = call float @dx.op.binary.f32(i32 35, float %3569, float %3570)  ; FMax(a,b)
  %3590 = call float @dx.op.binary.f32(i32 35, float %3568, float %3589)  ; FMax(a,b)
  store float %3584, float* %3502, align 4, !tbaa !97, !alias.scope !133, !noalias !134
  store float %3588, float* %3503, align 4, !tbaa !97, !alias.scope !131, !noalias !132
  store float %3590, float* %3504, align 4, !tbaa !97, !alias.scope !125, !noalias !128
  %3591 = sub nsw i32 3, %3574
  %3592 = icmp sgt i32 %3591, 2
  br i1 %3592, label %3593, label %3631

; <label>:3593                                    ; preds = %3567
  %3594 = icmp eq i32 %3362, 0
  %3595 = fsub fast float %3412, %3496
  %3596 = select i1 %3594, float %3595, float %3496
  %3597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3598 = extractvalue %dx.types.CBufRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.CBufRet.f32 %3597, 1
  %3600 = extractvalue %dx.types.CBufRet.f32 %3597, 2
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.CBufRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.CBufRet.f32 %3601, 2
  %3605 = extractvalue %dx.types.CBufRet.f32 %3601, 3
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 3
  %3608 = call float @dx.op.binary.f32(i32 36, float %3497, float %3607)  ; FMin(a,b)
  %3609 = fmul fast float %3605, %3596
  %3610 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  %3611 = fsub fast float %3602, %3598
  %3612 = fsub fast float %3603, %3599
  %3613 = fsub fast float %3604, %3600
  %3614 = fmul fast float %3610, %3611
  %3615 = fmul fast float %3610, %3612
  %3616 = fmul fast float %3610, %3613
  %3617 = fadd fast float %3614, %3598
  %3618 = fadd fast float %3615, %3599
  %3619 = fadd fast float %3616, %3600
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.CBufRet.f32 %3620, 1
  %3623 = fadd fast float %3622, %3621
  %3624 = call float @dx.op.unary.f32(i32 7, float %3623)  ; Saturate(value)
  %3625 = extractvalue %dx.types.CBufRet.f32 %3620, 2
  %3626 = extractvalue %dx.types.CBufRet.f32 %3620, 3
  %3627 = fadd fast float %3626, %3625
  %3628 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3629 = fmul fast float %3624, %3608
  %3630 = fmul fast float %3629, %3628
  br label %3713

; <label>:3631                                    ; preds = %3567
  %3632 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %3591
  %3633 = load float, float* %3632, align 4, !tbaa !97, !noalias !99
  %3634 = fcmp fast olt float %3633, %3498
  %3635 = icmp sgt i32 %3574, 0
  %3636 = and i1 %3635, %3634
  br i1 %3636, label %3637, label %3674

; <label>:3637                                    ; preds = %3631
  br label %3638

; <label>:3638                                    ; preds = %3667, %3637
  %3639 = phi float [ %3668, %3667 ], [ %3496, %3637 ]
  %3640 = phi float [ %3669, %3667 ], [ %3497, %3637 ]
  %3641 = phi float [ %3649, %3667 ], [ %3633, %3637 ]
  %3642 = phi i32 [ %3646, %3667 ], [ %3591, %3637 ]
  %3643 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 %3642
  %3644 = load float, float* %3643, align 4, !tbaa !97, !noalias !99
  %3645 = icmp slt i32 %3642, 2
  %3646 = add nsw i32 %3642, 1
  %3647 = getelementptr inbounds [3 x float], [3 x float]* %61, i32 0, i32 %3646
  %3648 = load float, float* %3647, align 4, !tbaa !97, !noalias !99
  %3649 = select i1 %3645, float %3648, float %3412
  %3650 = call float @dx.op.binary.f32(i32 36, float %3649, float %3644)  ; FMin(a,b)
  %3651 = call float @dx.op.binary.f32(i32 36, float %3498, float %3650)  ; FMin(a,b)
  %3652 = icmp eq i32 %3362, 0
  %3653 = fadd fast float %3651, %3641
  %3654 = fmul fast float %3653, %3343
  %3655 = fadd fast float %3654, %3356
  br i1 %3652, label %3661, label %3656

; <label>:3656                                    ; preds = %3638
  %3657 = fsub fast float %3651, %3641
  %3658 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3657)  ; FMax(a,b)
  %3659 = fmul fast float %3658, %3655
  %3660 = fadd fast float %3659, %3640
  br label %3667

; <label>:3661                                    ; preds = %3638
  %3662 = fsub fast float %3641, %3651
  %3663 = call float @dx.op.unary.f32(i32 6, float %3662)  ; FAbs(value)
  %3664 = fadd fast float %3663, %3639
  %3665 = fmul fast float %3663, %3655
  %3666 = fsub fast float %3640, %3665
  br label %3667

; <label>:3667                                    ; preds = %3661, %3656
  %3668 = phi float [ %3658, %3656 ], [ %3664, %3661 ]
  %3669 = phi float [ %3660, %3656 ], [ %3666, %3661 ]
  %3670 = fcmp fast olt float %3649, %3498
  %3671 = icmp slt i32 %3646, 3
  %3672 = and i1 %3671, %3670
  br i1 %3672, label %3638, label %3673

; <label>:3673                                    ; preds = %3667
  br label %3674

; <label>:3674                                    ; preds = %3673, %3631
  %3675 = phi float [ %3496, %3631 ], [ %3668, %3673 ]
  %3676 = phi float [ %3497, %3631 ], [ %3669, %3673 ]
  %3677 = fsub fast float %3412, %3675
  %3678 = select i1 %3414, float %3675, float %3677
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 0
  %3681 = extractvalue %dx.types.CBufRet.f32 %3679, 1
  %3682 = extractvalue %dx.types.CBufRet.f32 %3679, 2
  %3683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.CBufRet.f32 %3683, 1
  %3686 = extractvalue %dx.types.CBufRet.f32 %3683, 2
  %3687 = extractvalue %dx.types.CBufRet.f32 %3683, 3
  %3688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3689 = extractvalue %dx.types.CBufRet.f32 %3688, 3
  %3690 = call float @dx.op.binary.f32(i32 36, float %3676, float %3689)  ; FMin(a,b)
  %3691 = fmul fast float %3687, %3678
  %3692 = call float @dx.op.unary.f32(i32 7, float %3691)  ; Saturate(value)
  %3693 = fsub fast float %3684, %3680
  %3694 = fsub fast float %3685, %3681
  %3695 = fsub fast float %3686, %3682
  %3696 = fmul fast float %3692, %3693
  %3697 = fmul fast float %3692, %3694
  %3698 = fmul fast float %3692, %3695
  %3699 = fadd fast float %3696, %3680
  %3700 = fadd fast float %3697, %3681
  %3701 = fadd fast float %3698, %3682
  %3702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3703 = extractvalue %dx.types.CBufRet.f32 %3702, 0
  %3704 = extractvalue %dx.types.CBufRet.f32 %3702, 1
  %3705 = fadd fast float %3704, %3703
  %3706 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3707 = extractvalue %dx.types.CBufRet.f32 %3702, 2
  %3708 = extractvalue %dx.types.CBufRet.f32 %3702, 3
  %3709 = fadd fast float %3708, %3707
  %3710 = call float @dx.op.unary.f32(i32 7, float %3709)  ; Saturate(value)
  %3711 = fmul fast float %3706, %3690
  %3712 = fmul fast float %3711, %3710
  br label %3713

; <label>:3713                                    ; preds = %3674, %3593, %3428, %3410, %3408
  %3714 = phi float [ %3437, %3428 ], [ %3596, %3593 ], [ %3678, %3674 ], [ 0.000000e+00, %3408 ], [ 0.000000e+00, %3410 ]
  %3715 = phi float [ %3471, %3428 ], [ %3630, %3593 ], [ %3712, %3674 ], [ 0.000000e+00, %3408 ], [ 0.000000e+00, %3410 ]
  %3716 = phi float [ %3458, %3428 ], [ %3617, %3593 ], [ %3699, %3674 ], [ 0.000000e+00, %3408 ], [ 0.000000e+00, %3410 ]
  %3717 = phi float [ %3459, %3428 ], [ %3618, %3593 ], [ %3700, %3674 ], [ 0.000000e+00, %3408 ], [ 0.000000e+00, %3410 ]
  %3718 = phi float [ %3460, %3428 ], [ %3619, %3593 ], [ %3701, %3674 ], [ 0.000000e+00, %3408 ], [ 0.000000e+00, %3410 ]
  %3719 = fmul fast float %3351, %3715
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 2
  %3722 = fsub fast float %3358, %3721
  %3723 = fcmp fast olt float %3719, -2.000000e+01
  %3724 = call float @dx.op.unary.f32(i32 21, float %3719)  ; Exp(value)
  %3725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3726 = extractvalue %dx.types.CBufRet.f32 %3725, 2
  %3727 = extractvalue %dx.types.CBufRet.f32 %3725, 3
  %3728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3729 = extractvalue %dx.types.CBufRet.f32 %3728, 2
  %3730 = fmul fast float %3727, %3722
  %3731 = call float @dx.op.unary.f32(i32 7, float %3730)  ; Saturate(value)
  %3732 = fsub fast float 1.000000e+00, %3731
  %3733 = fmul fast float %3343, 5.000000e-01
  %3734 = fadd fast float %3733, 5.000000e-01
  %3735 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3736 = fsub fast float 1.000000e+00, %3735
  %3737 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3732)  ; FMax(a,b)
  %3738 = fdiv fast float %3736, %3737
  %3739 = fsub fast float %3722, %3300
  %3740 = call float @dx.op.unary.f32(i32 6, float %3739)  ; FAbs(value)
  %3741 = fmul fast float %3740, %3726
  %3742 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3743 = fsub fast float 1.000000e+00, %3741
  %3744 = fmul fast float %3743, %3742
  %3745 = fadd fast float %3744, %3741
  %3746 = fmul fast float %3729, %3722
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = fsub fast float 1.000000e+00, %3745
  %3749 = fmul fast float %3748, %3747
  %3750 = fadd fast float %3749, %3745
  %3751 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  %3752 = fadd fast float %3724, -1.000000e+00
  %3753 = select i1 %3723, float -1.000000e+00, float %3752
  %3754 = fmul fast float %3751, %3753
  %3755 = fadd fast float %3754, 1.000000e+00
  %3756 = fsub fast float -0.000000e+00, %3754
  %3757 = fmul fast float %3716, %3756
  %3758 = fmul fast float %3717, %3756
  %3759 = fmul fast float %3718, %3756
  br label %3760

; <label>:3760                                    ; preds = %3713, %3309
  %3761 = phi float [ %3714, %3713 ], [ 0.000000e+00, %3309 ]
  %3762 = phi float [ %3755, %3713 ], [ 1.000000e+00, %3309 ]
  %3763 = phi float [ %3757, %3713 ], [ 0.000000e+00, %3309 ]
  %3764 = phi float [ %3758, %3713 ], [ 0.000000e+00, %3309 ]
  %3765 = phi float [ %3759, %3713 ], [ 0.000000e+00, %3309 ]
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 1
  %3768 = fsub fast float 1.000000e+00, %3762
  %3769 = fmul fast float %3768, %3344
  %3770 = fmul fast float %3769, %3767
  %3771 = fsub fast float %3344, %3770
  br i1 %3337, label %3772, label %3801, !dx.controlflow.hints !135

; <label>:3772                                    ; preds = %3760
  %3773 = fmul fast float %3345, %3334
  %3774 = fadd fast float %3773, %3335
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3776 = fmul fast float %3316, %3771
  %3777 = fsub fast float -0.000000e+00, %3776
  %3778 = fmul fast float %3317, %3771
  %3779 = fsub fast float -0.000000e+00, %3778
  %3780 = call float @dx.op.unary.f32(i32 21, float %3777)  ; Exp(value)
  %3781 = call float @dx.op.unary.f32(i32 21, float %3779)  ; Exp(value)
  %3782 = call float @dx.op.binary.f32(i32 35, float %3324, float %3780)  ; FMax(a,b)
  %3783 = call float @dx.op.binary.f32(i32 35, float %3324, float %3781)  ; FMax(a,b)
  %3784 = fsub fast float %3783, %3782
  %3785 = fmul fast float %3784, %3775
  %3786 = fadd fast float %3785, %3782
  %3787 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3788 = fsub fast float %3321, %3326
  %3789 = fsub fast float %3322, %3327
  %3790 = fsub fast float %3323, %3328
  %3791 = fmul fast float %3775, %3788
  %3792 = fmul fast float %3775, %3789
  %3793 = fmul fast float %3775, %3790
  %3794 = fadd fast float %3791, %3326
  %3795 = fadd fast float %3792, %3327
  %3796 = fadd fast float %3793, %3328
  %3797 = fsub fast float 1.000000e+00, %3787
  %3798 = fmul fast float %3797, %3794
  %3799 = fmul fast float %3797, %3795
  %3800 = fmul fast float %3797, %3796
  br label %3860

; <label>:3801                                    ; preds = %3760
  %3802 = fmul fast float %3771, %3333
  %3803 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  %3804 = fsub fast float 2.000000e+00, %3803
  %3805 = fmul fast float %3803, 9.921875e-01
  %3806 = fmul fast float %3805, %3804
  %3807 = fadd fast float %3806, 3.906250e-03
  %3808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %31, float %3807, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = fsub fast float %3803, %3809
  %3811 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3810)  ; FMax(a,b)
  %3812 = fmul fast float %3319, %3300
  %3813 = call float @dx.op.unary.f32(i32 6, float %3812)  ; FAbs(value)
  %3814 = fcmp fast ogt float %3813, 0x3EB0C6F7A0000000
  br i1 %3814, label %3815, label %3821, !dx.controlflow.hints !136

; <label>:3815                                    ; preds = %3801
  %3816 = fmul fast float %3812, 0xBFF7154760000000
  %3817 = call float @dx.op.unary.f32(i32 21, float %3816)  ; Exp(value)
  %3818 = fsub fast float 1.000000e+00, %3817
  %3819 = fdiv fast float %3818, %3812
  %3820 = fmul fast float %3819, %3329
  br label %3821

; <label>:3821                                    ; preds = %3815, %3801
  %3822 = phi float [ %3820, %3815 ], [ %3329, %3801 ]
  %3823 = fadd fast float %3822, %3331
  %3824 = fmul fast float %3823, %3811
  %3825 = fmul fast float %3316, %3824
  %3826 = fsub fast float -0.000000e+00, %3825
  %3827 = fmul fast float %3317, %3824
  %3828 = fsub fast float -0.000000e+00, %3827
  %3829 = fmul fast float %3318, %3824
  %3830 = fsub fast float -0.000000e+00, %3829
  %3831 = call float @dx.op.unary.f32(i32 21, float %3826)  ; Exp(value)
  %3832 = call float @dx.op.unary.f32(i32 21, float %3828)  ; Exp(value)
  %3833 = call float @dx.op.unary.f32(i32 21, float %3830)  ; Exp(value)
  %3834 = fmul fast float %3345, %3345
  %3835 = fadd fast float %3834, 1.000000e+00
  %3836 = fmul fast float %3835, 0x3FAE8EC8A0000000
  %3837 = fmul fast float %3836, %3326
  %3838 = fmul fast float %3836, %3327
  %3839 = fmul fast float %3836, %3328
  %3840 = fmul fast float %3345, %3324
  %3841 = fsub fast float 1.000000e+00, %3840
  %3842 = fmul fast float %3324, %3324
  %3843 = fsub fast float 1.000000e+00, %3842
  %3844 = fmul fast float %3843, 0x3FB45F3060000000
  %3845 = fmul fast float %3841, %3841
  %3846 = fdiv fast float 1.000000e+00, %3845
  %3847 = fmul fast float %3844, %3846
  %3848 = fmul fast float %3847, %3321
  %3849 = fmul fast float %3847, %3322
  %3850 = fmul fast float %3847, %3323
  %3851 = fadd fast float %3848, %3837
  %3852 = fadd fast float %3849, %3838
  %3853 = fadd fast float %3850, %3839
  %3854 = fsub fast float 1.000000e+00, %3831
  %3855 = fsub fast float 1.000000e+00, %3832
  %3856 = fsub fast float 1.000000e+00, %3833
  %3857 = fmul fast float %3851, %3854
  %3858 = fmul fast float %3852, %3855
  %3859 = fmul fast float %3853, %3856
  br label %3860

; <label>:3860                                    ; preds = %3821, %3772
  %3861 = phi float [ %3798, %3772 ], [ %3857, %3821 ]
  %3862 = phi float [ %3799, %3772 ], [ %3858, %3821 ]
  %3863 = phi float [ %3800, %3772 ], [ %3859, %3821 ]
  %3864 = phi float [ %3787, %3772 ], [ %3831, %3821 ]
  %3865 = phi float [ %3787, %3772 ], [ %3832, %3821 ]
  %3866 = phi float [ %3787, %3772 ], [ %3833, %3821 ]
  br i1 %3353, label %3867, label %4065, !dx.controlflow.hints !137

; <label>:3867                                    ; preds = %3860
  %3868 = extractvalue %dx.types.CBufRet.f32 %3766, 0
  %3869 = fmul fast float %3868, %3768
  %3870 = fsub fast float %3763, %3861
  %3871 = fsub fast float %3764, %3862
  %3872 = fsub fast float %3765, %3863
  %3873 = fmul fast float %3869, %3870
  %3874 = fmul fast float %3869, %3871
  %3875 = fmul fast float %3869, %3872
  %3876 = fadd fast float %3873, %3861
  %3877 = fadd fast float %3874, %3862
  %3878 = fadd fast float %3875, %3863
  %3879 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3864)  ; FMax(a,b)
  %3880 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3865)  ; FMax(a,b)
  %3881 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3866)  ; FMax(a,b)
  %3882 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3762)  ; FMax(a,b)
  %3883 = call float @dx.op.binary.f32(i32 35, float %3761, float %3771)  ; FMax(a,b)
  %3884 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3883)  ; FMax(a,b)
  %3885 = fdiv fast float %3761, %3884
  %3886 = call float @dx.op.unary.f32(i32 7, float %3885)  ; Saturate(value)
  %3887 = fdiv fast float %3771, %3884
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = fcmp fast une float %3882, 1.000000e+00
  br i1 %3889, label %3890, label %3903, !dx.controlflow.hints !138

; <label>:3890                                    ; preds = %3867
  %3891 = call float @dx.op.unary.f32(i32 23, float %3882)  ; Log(value)
  %3892 = fmul fast float %3891, 0x3FE62E4300000000
  %3893 = fmul fast float %3763, %3892
  %3894 = fsub fast float -0.000000e+00, %3893
  %3895 = fmul fast float %3764, %3892
  %3896 = fsub fast float -0.000000e+00, %3895
  %3897 = fmul fast float %3765, %3892
  %3898 = fsub fast float -0.000000e+00, %3897
  %3899 = fsub fast float 1.000000e+00, %3882
  %3900 = fdiv fast float %3894, %3899
  %3901 = fdiv fast float %3896, %3899
  %3902 = fdiv fast float %3898, %3899
  br label %3903

; <label>:3903                                    ; preds = %3890, %3867
  %3904 = phi float [ %3900, %3890 ], [ %3763, %3867 ]
  %3905 = phi float [ %3901, %3890 ], [ %3764, %3867 ]
  %3906 = phi float [ %3902, %3890 ], [ %3765, %3867 ]
  %3907 = phi float [ %3892, %3890 ], [ 0.000000e+00, %3867 ]
  %3908 = fcmp fast une float %3879, 1.000000e+00
  br i1 %3908, label %3909, label %3916, !dx.controlflow.hints !139

; <label>:3909                                    ; preds = %3903
  %3910 = call float @dx.op.unary.f32(i32 23, float %3879)  ; Log(value)
  %3911 = fmul fast float %3910, 0x3FE62E4300000000
  %3912 = fmul fast float %3876, %3911
  %3913 = fsub fast float -0.000000e+00, %3912
  %3914 = fsub fast float 1.000000e+00, %3879
  %3915 = fdiv fast float %3913, %3914
  br label %3916

; <label>:3916                                    ; preds = %3909, %3903
  %3917 = phi float [ %3915, %3909 ], [ %3876, %3903 ]
  %3918 = phi float [ %3911, %3909 ], [ 0.000000e+00, %3903 ]
  %3919 = fcmp fast une float %3880, 1.000000e+00
  br i1 %3919, label %3920, label %3927, !dx.controlflow.hints !139

; <label>:3920                                    ; preds = %3916
  %3921 = call float @dx.op.unary.f32(i32 23, float %3880)  ; Log(value)
  %3922 = fmul fast float %3921, 0x3FE62E4300000000
  %3923 = fmul fast float %3877, %3922
  %3924 = fsub fast float -0.000000e+00, %3923
  %3925 = fsub fast float 1.000000e+00, %3880
  %3926 = fdiv fast float %3924, %3925
  br label %3927

; <label>:3927                                    ; preds = %3920, %3916
  %3928 = phi float [ %3926, %3920 ], [ %3877, %3916 ]
  %3929 = phi float [ %3922, %3920 ], [ 0.000000e+00, %3916 ]
  %3930 = fcmp fast une float %3881, 1.000000e+00
  br i1 %3930, label %3931, label %3938, !dx.controlflow.hints !139

; <label>:3931                                    ; preds = %3927
  %3932 = call float @dx.op.unary.f32(i32 23, float %3881)  ; Log(value)
  %3933 = fmul fast float %3932, 0x3FE62E4300000000
  %3934 = fmul fast float %3878, %3933
  %3935 = fsub fast float -0.000000e+00, %3934
  %3936 = fsub fast float 1.000000e+00, %3881
  %3937 = fdiv fast float %3935, %3936
  br label %3938

; <label>:3938                                    ; preds = %3931, %3927
  %3939 = phi float [ %3937, %3931 ], [ %3878, %3927 ]
  %3940 = phi float [ %3933, %3931 ], [ 0.000000e+00, %3927 ]
  %3941 = fmul fast float %3904, %3888
  %3942 = fmul fast float %3905, %3888
  %3943 = fmul fast float %3906, %3888
  %3944 = fmul fast float %3907, %3888
  %3945 = fmul fast float %3917, %3886
  %3946 = fmul fast float %3928, %3886
  %3947 = fmul fast float %3939, %3886
  %3948 = fmul fast float %3918, %3886
  %3949 = fmul fast float %3929, %3886
  %3950 = fmul fast float %3940, %3886
  %3951 = fadd fast float %3945, %3941
  %3952 = fadd fast float %3946, %3942
  %3953 = fadd fast float %3947, %3943
  %3954 = fadd fast float %3948, %3944
  %3955 = fadd fast float %3949, %3944
  %3956 = fadd fast float %3950, %3944
  %3957 = fcmp fast une float %3954, 0.000000e+00
  br i1 %3957, label %3958, label %3965, !dx.controlflow.hints !140

; <label>:3958                                    ; preds = %3938
  %3959 = fmul fast float %3954, 0x3FF7154760000000
  %3960 = call float @dx.op.unary.f32(i32 21, float %3959)  ; Exp(value)
  %3961 = fsub fast float 1.000000e+00, %3960
  %3962 = fmul fast float %3951, %3961
  %3963 = fsub fast float -0.000000e+00, %3962
  %3964 = fdiv fast float %3963, %3954
  br label %3965

; <label>:3965                                    ; preds = %3958, %3938
  %3966 = phi float [ %3960, %3958 ], [ 1.000000e+00, %3938 ]
  %3967 = phi float [ %3964, %3958 ], [ %3951, %3938 ]
  %3968 = fcmp fast une float %3955, 0.000000e+00
  br i1 %3968, label %3969, label %3976, !dx.controlflow.hints !140

; <label>:3969                                    ; preds = %3965
  %3970 = fmul fast float %3955, 0x3FF7154760000000
  %3971 = call float @dx.op.unary.f32(i32 21, float %3970)  ; Exp(value)
  %3972 = fsub fast float 1.000000e+00, %3971
  %3973 = fmul fast float %3952, %3972
  %3974 = fsub fast float -0.000000e+00, %3973
  %3975 = fdiv fast float %3974, %3955
  br label %3976

; <label>:3976                                    ; preds = %3969, %3965
  %3977 = phi float [ %3971, %3969 ], [ 1.000000e+00, %3965 ]
  %3978 = phi float [ %3975, %3969 ], [ %3952, %3965 ]
  %3979 = fcmp fast une float %3956, 0.000000e+00
  br i1 %3979, label %3980, label %3987, !dx.controlflow.hints !140

; <label>:3980                                    ; preds = %3976
  %3981 = fmul fast float %3956, 0x3FF7154760000000
  %3982 = call float @dx.op.unary.f32(i32 21, float %3981)  ; Exp(value)
  %3983 = fsub fast float 1.000000e+00, %3982
  %3984 = fmul fast float %3953, %3983
  %3985 = fsub fast float -0.000000e+00, %3984
  %3986 = fdiv fast float %3985, %3956
  br label %3987

; <label>:3987                                    ; preds = %3980, %3976
  %3988 = phi float [ %3982, %3980 ], [ 1.000000e+00, %3976 ]
  %3989 = phi float [ %3986, %3980 ], [ %3953, %3976 ]
  %3990 = fcmp fast ogt float %3886, %3888
  br i1 %3990, label %3991, label %4011

; <label>:3991                                    ; preds = %3987
  %3992 = fsub fast float 1.000000e+00, %3888
  %3993 = fmul fast float %3904, %3992
  %3994 = fmul fast float %3905, %3992
  %3995 = fmul fast float %3906, %3992
  %3996 = fmul fast float %3907, %3992
  %3997 = fcmp fast une float %3996, 0.000000e+00
  br i1 %3997, label %3998, label %4049, !dx.controlflow.hints !141

; <label>:3998                                    ; preds = %3991
  %3999 = fmul fast float %3996, 0x3FF7154760000000
  %4000 = call float @dx.op.unary.f32(i32 21, float %3999)  ; Exp(value)
  %4001 = fsub fast float 1.000000e+00, %4000
  %4002 = fmul fast float %3993, %4001
  %4003 = fsub fast float -0.000000e+00, %4002
  %4004 = fmul fast float %3994, %4001
  %4005 = fsub fast float -0.000000e+00, %4004
  %4006 = fmul fast float %3995, %4001
  %4007 = fsub fast float -0.000000e+00, %4006
  %4008 = fdiv fast float %4003, %3996
  %4009 = fdiv fast float %4005, %3996
  %4010 = fdiv fast float %4007, %3996
  br label %4049

; <label>:4011                                    ; preds = %3987
  %4012 = fsub fast float 1.000000e+00, %3886
  %4013 = fmul fast float %3917, %4012
  %4014 = fmul fast float %3928, %4012
  %4015 = fmul fast float %3939, %4012
  %4016 = fmul fast float %3918, %4012
  %4017 = fmul fast float %3929, %4012
  %4018 = fmul fast float %3940, %4012
  %4019 = fcmp fast une float %4016, 0.000000e+00
  br i1 %4019, label %4020, label %4027, !dx.controlflow.hints !140

; <label>:4020                                    ; preds = %4011
  %4021 = fmul fast float %4016, 0x3FF7154760000000
  %4022 = call float @dx.op.unary.f32(i32 21, float %4021)  ; Exp(value)
  %4023 = fsub fast float 1.000000e+00, %4022
  %4024 = fmul fast float %4013, %4023
  %4025 = fsub fast float -0.000000e+00, %4024
  %4026 = fdiv fast float %4025, %4016
  br label %4027

; <label>:4027                                    ; preds = %4020, %4011
  %4028 = phi float [ %4026, %4020 ], [ %4013, %4011 ]
  %4029 = phi float [ %4022, %4020 ], [ 1.000000e+00, %4011 ]
  %4030 = fcmp fast une float %4017, 0.000000e+00
  br i1 %4030, label %4031, label %4038, !dx.controlflow.hints !140

; <label>:4031                                    ; preds = %4027
  %4032 = fmul fast float %4017, 0x3FF7154760000000
  %4033 = call float @dx.op.unary.f32(i32 21, float %4032)  ; Exp(value)
  %4034 = fsub fast float 1.000000e+00, %4033
  %4035 = fmul fast float %4014, %4034
  %4036 = fsub fast float -0.000000e+00, %4035
  %4037 = fdiv fast float %4036, %4017
  br label %4038

; <label>:4038                                    ; preds = %4031, %4027
  %4039 = phi float [ %4037, %4031 ], [ %4014, %4027 ]
  %4040 = phi float [ %4033, %4031 ], [ 1.000000e+00, %4027 ]
  %4041 = fcmp fast une float %4018, 0.000000e+00
  br i1 %4041, label %4042, label %4049, !dx.controlflow.hints !140

; <label>:4042                                    ; preds = %4038
  %4043 = fmul fast float %4018, 0x3FF7154760000000
  %4044 = call float @dx.op.unary.f32(i32 21, float %4043)  ; Exp(value)
  %4045 = fsub fast float 1.000000e+00, %4044
  %4046 = fmul fast float %4015, %4045
  %4047 = fsub fast float -0.000000e+00, %4046
  %4048 = fdiv fast float %4047, %4018
  br label %4049

; <label>:4049                                    ; preds = %4042, %4038, %3998, %3991
  %4050 = phi float [ %4048, %4042 ], [ %4010, %3998 ], [ %3995, %3991 ], [ %4015, %4038 ]
  %4051 = phi float [ %4039, %4042 ], [ %4009, %3998 ], [ %3994, %3991 ], [ %4039, %4038 ]
  %4052 = phi float [ %4028, %4042 ], [ %4008, %3998 ], [ %3993, %3991 ], [ %4028, %4038 ]
  %4053 = phi float [ %4044, %4042 ], [ %4000, %3998 ], [ 1.000000e+00, %3991 ], [ 1.000000e+00, %4038 ]
  %4054 = phi float [ %4040, %4042 ], [ %4000, %3998 ], [ 1.000000e+00, %3991 ], [ %4040, %4038 ]
  %4055 = phi float [ %4029, %4042 ], [ %4000, %3998 ], [ 1.000000e+00, %3991 ], [ %4029, %4038 ]
  %4056 = fmul fast float %4055, %3967
  %4057 = fmul fast float %4054, %3978
  %4058 = fmul fast float %4053, %3989
  %4059 = fadd fast float %4056, %4052
  %4060 = fadd fast float %4057, %4051
  %4061 = fadd fast float %4058, %4050
  %4062 = fmul fast float %4055, %3966
  %4063 = fmul fast float %4054, %3977
  %4064 = fmul fast float %4053, %3988
  br label %4065

; <label>:4065                                    ; preds = %4049, %3860
  %4066 = phi float [ %4064, %4049 ], [ %3866, %3860 ]
  %4067 = phi float [ %4063, %4049 ], [ %3865, %3860 ]
  %4068 = phi float [ %4062, %4049 ], [ %3864, %3860 ]
  %4069 = phi float [ %4061, %4049 ], [ %3863, %3860 ]
  %4070 = phi float [ %4060, %4049 ], [ %3862, %3860 ]
  %4071 = phi float [ %4059, %4049 ], [ %3861, %3860 ]
  %4072 = fmul fast float %4071, %3013
  %4073 = fmul fast float %4070, %3015
  %4074 = fmul fast float %4069, %3017
  %4075 = fmul fast float %4068, %3308
  %4076 = call float @dx.op.dot3.f32(i32 55, float %4068, float %4067, float %4066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4077 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4073, float %4074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4078 = select i1 %184, float %4076, float %4068
  %4079 = select i1 %184, float %4076, float %4067
  %4080 = select i1 %184, float 1.000000e+00, float %4066
  %4081 = select i1 %184, float %4077, float %4072
  %4082 = select i1 %184, float 0.000000e+00, float %4073
  %4083 = select i1 %184, float 0.000000e+00, float %4074
  %4084 = fmul fast float %4078, %3302
  %4085 = fmul fast float %4079, %3303
  %4086 = fmul fast float %4080, %3304
  %4087 = fadd fast float %4084, %4081
  %4088 = fadd fast float %4085, %4082
  %4089 = fadd fast float %4083, %4086
  %4090 = fmul fast float %4078, %3305
  %4091 = fmul fast float %4079, %3306
  %4092 = fmul fast float %4080, %3307
  %4093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.i32 %4093, 0
  %4095 = icmp eq i32 %4094, 0
  br i1 %4095, label %4463, label %4096, !dx.controlflow.hints !142

; <label>:4096                                    ; preds = %4065
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4099 = extractvalue %dx.types.CBufRet.f32 %4097, 3
  %4100 = fmul fast float %4098, %67
  %4101 = fmul fast float %4099, %68
  %4102 = fmul fast float %4100, 2.000000e+00
  %4103 = fmul fast float %4101, 2.000000e+00
  %4104 = fsub fast float 1.000000e+00, %4102
  %4105 = fsub fast float 1.000000e+00, %4103
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.CBufRet.f32 %4106, 2
  %4110 = fmul fast float %4104, %4107
  %4111 = fmul fast float %4104, %4108
  %4112 = fmul fast float %4104, %4109
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 0
  %4115 = extractvalue %dx.types.CBufRet.f32 %4113, 1
  %4116 = extractvalue %dx.types.CBufRet.f32 %4113, 2
  %4117 = fmul fast float %4105, %4114
  %4118 = fmul fast float %4105, %4115
  %4119 = fmul fast float %4105, %4116
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 0
  %4122 = extractvalue %dx.types.CBufRet.f32 %4120, 1
  %4123 = extractvalue %dx.types.CBufRet.f32 %4120, 2
  %4124 = fadd fast float %4117, %4121
  %4125 = fadd fast float %4124, %4110
  %4126 = fadd fast float %4118, %4122
  %4127 = fadd fast float %4126, %4111
  %4128 = fadd fast float %4119, %4123
  %4129 = fadd fast float %4128, %4112
  %4130 = fmul fast float %4125, %3301
  %4131 = fmul fast float %4127, %3301
  %4132 = fmul fast float %4129, %3301
  %4133 = fmul fast float %4130, %4130
  %4134 = fmul fast float %4131, %4131
  %4135 = fadd fast float %4133, %4134
  %4136 = fmul fast float %4132, %4132
  %4137 = fadd fast float %4135, %4136
  %4138 = call float @dx.op.unary.f32(i32 24, float %4137)  ; Sqrt(value)
  %4139 = extractvalue %dx.types.CBufRet.f32 %3028, 0
  %4140 = fsub fast float %4138, %4139
  %4141 = extractvalue %dx.types.CBufRet.f32 %3028, 2
  %4142 = fmul fast float %4140, %4141
  %4143 = call float @dx.op.unary.f32(i32 7, float %4142)  ; Saturate(value)
  %4144 = fadd fast float %4143, -5.000000e-01
  %4145 = fmul fast float %4144, 2.000000e+00
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 2
  %4148 = call float @dx.op.binary.f32(i32 36, float %4147, float %4145)  ; FMin(a,b)
  %4149 = fsub fast float -0.000000e+00, %4147
  %4150 = fcmp fast ogt float %4148, %4149
  br i1 %4150, label %4151, label %4463, !dx.controlflow.hints !143

; <label>:4151                                    ; preds = %4096
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4154 = fcmp fast ogt float %4153, 0.000000e+00
  br i1 %4154, label %4155, label %4230, !dx.controlflow.hints !144

; <label>:4155                                    ; preds = %4151
  %4156 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %4157 = extractvalue %dx.types.Dimensions %4156, 0
  %4158 = sitofp i32 %4157 to float
  %4159 = extractvalue %dx.types.Dimensions %4156, 1
  %4160 = sitofp i32 %4159 to float
  %4161 = fmul fast float %4100, %4158
  %4162 = fmul fast float %4101, %4160
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4165 = fsub fast float -0.000000e+00, %4164
  %4166 = fptoui float %4165 to i32
  %4167 = fptoui float %4161 to i32
  %4168 = fptoui float %4162 to i32
  %4169 = and i32 %4166, 31
  %4170 = lshr i32 %4167, %4169
  %4171 = lshr i32 %4168, %4169
  %4172 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %4166, i32 %4170, i32 %4171, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = fcmp fast olt float %4173, -1.000000e+00
  %4175 = fcmp fast ogt float %4173, -1.000000e+00
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4178 = select i1 %4175, float %4177, float 1.000000e+00
  %4179 = fadd fast float %4173, 1.000000e+00
  %4180 = fmul fast float %4178, %4179
  %4181 = call float @dx.op.unary.f32(i32 6, float %4180)  ; FAbs(value)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4176, 3
  %4183 = fcmp fast oge float %4181, %4182
  %4184 = select i1 %4183, float 0x4197782600000000, float %4181
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 0
  %4187 = extractvalue %dx.types.CBufRet.f32 %4185, 1
  %4188 = extractvalue %dx.types.CBufRet.f32 %4185, 2
  %4189 = select i1 %4174, float %4186, float %4107
  %4190 = select i1 %4174, float %4187, float %4108
  %4191 = select i1 %4174, float %4188, float %4109
  %4192 = fmul fast float %4189, %4104
  %4193 = fmul fast float %4190, %4104
  %4194 = fmul fast float %4191, %4104
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.CBufRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.CBufRet.f32 %4195, 2
  %4199 = select i1 %4174, float %4196, float %4114
  %4200 = select i1 %4174, float %4197, float %4115
  %4201 = select i1 %4174, float %4198, float %4116
  %4202 = fmul fast float %4199, %4105
  %4203 = fmul fast float %4200, %4105
  %4204 = fmul fast float %4201, %4105
  %4205 = fadd fast float %4202, %4192
  %4206 = fadd fast float %4203, %4193
  %4207 = fadd fast float %4204, %4194
  %4208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.CBufRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.CBufRet.f32 %4208, 2
  %4212 = select i1 %4174, float %4209, float %4121
  %4213 = select i1 %4174, float %4210, float %4122
  %4214 = select i1 %4174, float %4211, float %4123
  %4215 = fadd fast float %4205, %4212
  %4216 = fadd fast float %4206, %4213
  %4217 = fadd fast float %4207, %4214
  %4218 = fmul fast float %4215, %4184
  %4219 = fmul fast float %4216, %4184
  %4220 = fmul fast float %4217, %4184
  %4221 = fmul fast float %4218, %4218
  %4222 = fmul fast float %4219, %4219
  %4223 = fadd fast float %4221, %4222
  %4224 = fmul fast float %4220, %4220
  %4225 = fadd fast float %4223, %4224
  %4226 = call float @dx.op.unary.f32(i32 24, float %4225)  ; Sqrt(value)
  %4227 = fsub fast float %4226, %4139
  %4228 = fmul fast float %4227, %4141
  %4229 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  br label %4230

; <label>:4230                                    ; preds = %4155, %4151
  %4231 = phi float [ %4229, %4155 ], [ 1.000000e+00, %4151 ]
  %4232 = fmul fast float %4148, 5.000000e-01
  %4233 = fadd fast float %4232, 5.000000e-01
  %4234 = call float @dx.op.unary.f32(i32 22, float %4233)  ; Frc(value)
  %4235 = call float @dx.op.unary.f32(i32 27, float %4234)  ; Round_ni(value)
  %4236 = call float @dx.op.unary.f32(i32 22, float %4234)  ; Frc(value)
  %4237 = fmul fast float %4236, 2.000000e+00
  %4238 = fadd fast float %4237, -1.000000e+00
  %4239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %31, float %4100, float %4101, float %4235, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4240 = extractvalue %dx.types.ResRet.f32 %4239, 0
  %4241 = extractvalue %dx.types.ResRet.f32 %4239, 1
  %4242 = extractvalue %dx.types.ResRet.f32 %4239, 2
  %4243 = extractvalue %dx.types.ResRet.f32 %4239, 3
  %4244 = fadd fast float %4240, -5.000000e-01
  %4245 = fadd fast float %4242, -5.000000e-01
  %4246 = fmul fast float %4244, 0xBFD5555560000000
  %4247 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4245, float %4246)  ; FMad(a,b,c)
  %4248 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4241, float 0.000000e+00)  ; FMad(a,b,c)
  %4249 = fadd fast float %4248, %4243
  %4250 = fmul fast float %4244, -7.500000e-01
  %4251 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4245, float %4250)  ; FMad(a,b,c)
  %4252 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4241, float 0.000000e+00)  ; FMad(a,b,c)
  %4253 = fadd fast float %4252, %4243
  %4254 = call float @dx.op.binary.f32(i32 35, float %4247, float -1.000000e+00)  ; FMax(a,b)
  %4255 = call float @dx.op.binary.f32(i32 35, float %4249, float -1.000000e+00)  ; FMax(a,b)
  %4256 = call float @dx.op.binary.f32(i32 35, float %4251, float -1.000000e+00)  ; FMax(a,b)
  %4257 = call float @dx.op.binary.f32(i32 35, float %4253, float -1.000000e+00)  ; FMax(a,b)
  %4258 = call float @dx.op.binary.f32(i32 36, float %4254, float 1.000000e+00)  ; FMin(a,b)
  %4259 = call float @dx.op.binary.f32(i32 36, float %4255, float 1.000000e+00)  ; FMin(a,b)
  %4260 = call float @dx.op.binary.f32(i32 36, float %4256, float 1.000000e+00)  ; FMin(a,b)
  %4261 = call float @dx.op.binary.f32(i32 36, float %4257, float 1.000000e+00)  ; FMin(a,b)
  %4262 = fcmp fast olt float %4258, 0x3FEFFF8020000000
  br i1 %4262, label %4263, label %4378, !dx.controlflow.hints !145

; <label>:4263                                    ; preds = %4230
  %4264 = extractvalue %dx.types.CBufRet.f32 %4146, 3
  %4265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4265, 0
  %4267 = extractvalue %dx.types.CBufRet.f32 %4265, 1
  %4268 = extractvalue %dx.types.CBufRet.f32 %4265, 2
  %4269 = extractvalue %dx.types.CBufRet.f32 %4265, 3
  %4270 = fsub fast float %4266, %4258
  %4271 = fsub fast float %4267, %4259
  %4272 = fsub fast float %4268, %4260
  %4273 = fsub fast float %4269, %4261
  %4274 = fmul fast float %4270, %4264
  %4275 = fmul fast float %4271, %4264
  %4276 = fmul fast float %4272, %4264
  %4277 = fmul fast float %4273, %4264
  %4278 = fadd fast float %4274, %4258
  %4279 = fadd fast float %4275, %4259
  %4280 = fsub fast float -0.000000e+00, %4279
  %4281 = fadd fast float %4276, %4260
  %4282 = fadd fast float %4277, %4261
  %4283 = fmul fast float %4278, %4278
  %4284 = fsub fast float %4279, %4283
  %4285 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4284)  ; FMax(a,b)
  %4286 = fdiv fast float 1.000000e+00, %4285
  %4287 = fmul fast float %4279, %4278
  %4288 = fsub fast float %4281, %4287
  %4289 = fsub fast float %4238, %4278
  %4290 = fmul fast float %4238, %4238
  %4291 = fsub fast float %4290, %4279
  %4292 = fmul fast float %4289, %4286
  %4293 = fmul fast float %4292, %4288
  %4294 = fsub fast float %4291, %4293
  %4295 = fmul fast float %4279, %4279
  %4296 = fsub fast float %4282, %4295
  %4297 = fmul fast float %4288, %4288
  %4298 = fmul fast float %4297, %4286
  %4299 = fsub fast float %4296, %4298
  %4300 = fdiv fast float %4294, %4299
  %4301 = fmul fast float %4288, %4300
  %4302 = fsub fast float %4289, %4301
  %4303 = fmul fast float %4302, %4286
  %4304 = fmul fast float %4303, %4278
  %4305 = fsub fast float 1.000000e+00, %4304
  %4306 = fmul fast float %4279, %4300
  %4307 = fsub fast float %4305, %4306
  %4308 = fmul fast float %4303, %4303
  %4309 = fmul fast float %4300, 4.000000e+00
  %4310 = fmul fast float %4309, %4307
  %4311 = fsub fast float %4308, %4310
  %4312 = call float @dx.op.unary.f32(i32 24, float %4311)  ; Sqrt(value)
  %4313 = fcmp fast oge float %4303, 0.000000e+00
  %4314 = fsub fast float -0.000000e+00, %4312
  %4315 = select i1 %4313, float %4314, float %4312
  %4316 = fsub fast float %4315, %4303
  %4317 = fdiv fast float %4316, %4300
  %4318 = fdiv fast float %4307, %4316
  %4319 = fmul fast float %4317, 5.000000e-01
  %4320 = fmul fast float %4318, 2.000000e+00
  %4321 = select i1 %4313, float %4319, float %4320
  %4322 = select i1 %4313, float %4320, float %4319
  %4323 = call float @dx.op.binary.f32(i32 35, float %4321, float %4322)  ; FMax(a,b)
  %4324 = call float @dx.op.binary.f32(i32 36, float %4321, float %4322)  ; FMin(a,b)
  %4325 = fcmp fast ogt float %4238, %4324
  br i1 %4325, label %4326, label %4336

; <label>:4326                                    ; preds = %4263
  %4327 = fsub fast float %4238, %4324
  %4328 = fsub fast float %4323, %4324
  %4329 = fmul fast float %4327, %4328
  %4330 = fmul fast float %4323, %4238
  %4331 = fadd fast float %4323, %4238
  %4332 = fmul fast float %4331, %4278
  %4333 = fadd fast float %4330, %4279
  %4334 = fsub fast float %4333, %4332
  %4335 = fdiv fast float %4334, %4329
  br label %4336

; <label>:4336                                    ; preds = %4326, %4263
  %4337 = phi float [ %4335, %4326 ], [ 0.000000e+00, %4263 ]
  %4338 = fcmp fast ogt float %4238, %4323
  %4339 = fsub fast float %4238, %4323
  br i1 %4338, label %4340, label %4350

; <label>:4340                                    ; preds = %4336
  %4341 = fsub fast float %4323, %4324
  %4342 = fmul fast float %4341, %4339
  %4343 = fmul fast float %4324, %4238
  %4344 = fadd fast float %4324, %4238
  %4345 = fmul fast float %4344, %4278
  %4346 = fsub fast float %4280, %4343
  %4347 = fadd fast float %4346, %4345
  %4348 = fdiv fast float %4347, %4342
  %4349 = fadd fast float %4348, %4337
  br label %4350

; <label>:4350                                    ; preds = %4340, %4336
  %4351 = phi float [ %4349, %4340 ], [ %4337, %4336 ]
  %4352 = fsub fast float %4238, %4324
  %4353 = fmul fast float %4352, %4339
  %4354 = fmul fast float %4324, %4323
  %4355 = fadd fast float %4324, %4323
  %4356 = fmul fast float %4355, %4278
  %4357 = fadd fast float %4354, %4279
  %4358 = fsub fast float %4357, %4356
  %4359 = fdiv fast float %4358, %4353
  %4360 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4361 = fcmp fast oeq float %3029, 0.000000e+00
  %4362 = extractvalue %dx.types.CBufRet.f32 %4146, 0
  %4363 = fcmp fast oeq float %4362, 0.000000e+00
  %4364 = or i1 %4361, %4363
  %4365 = fmul fast float %4362, 2.000000e+00
  %4366 = fadd fast float %4147, %4148
  %4367 = fdiv fast float %4366, %4365
  %4368 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4369 = fmul fast float %4368, 2.000000e+00
  %4370 = fsub fast float 3.000000e+00, %4369
  %4371 = fmul fast float %4368, %4368
  %4372 = fmul fast float %4371, %4370
  %4373 = select i1 %4364, float 1.000000e+00, float %4372
  %4374 = fmul fast float %4359, %3029
  %4375 = fadd fast float %4360, %4374
  %4376 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4377 = fmul fast float %4373, %4376
  br label %4378

; <label>:4378                                    ; preds = %4350, %4230
  %4379 = phi float [ %4377, %4350 ], [ 0.000000e+00, %4230 ]
  %4380 = fsub fast float 1.000000e+00, %4379
  %4381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %31, float %4100, float %4101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4382 = extractvalue %dx.types.ResRet.f32 %4381, 0
  %4383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.i32 %4383, 2
  %4385 = icmp eq i32 %4384, 0
  br i1 %4385, label %4391, label %4386

; <label>:4386                                    ; preds = %4378
  %4387 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4388 = fadd fast float %4382, -1.000000e+00
  %4389 = fmul fast float %4387, %4388
  %4390 = fadd fast float %4389, 1.000000e+00
  br label %4391

; <label>:4391                                    ; preds = %4386, %4378
  %4392 = phi float [ %4390, %4386 ], [ %4380, %4378 ]
  br i1 %4154, label %4393, label %4411

; <label>:4393                                    ; preds = %4391
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 1
  %4396 = fsub fast float %4231, %4395
  %4397 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4398 = fsub fast float %4231, %4153
  %4399 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4400 = fsub fast float %4397, %4399
  %4401 = fsub fast float %4233, %4399
  %4402 = fdiv fast float %4401, %4400
  %4403 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4404 = fmul fast float %4403, 2.000000e+00
  %4405 = fsub fast float 3.000000e+00, %4404
  %4406 = fsub fast float %4382, %4392
  %4407 = fmul fast float %4403, %4403
  %4408 = fmul fast float %4407, %4406
  %4409 = fmul fast float %4408, %4405
  %4410 = fadd fast float %4409, %4392
  br label %4411

; <label>:4411                                    ; preds = %4393, %4391
  %4412 = phi float [ %4410, %4393 ], [ %4392, %4391 ]
  %4413 = call float @dx.op.binary.f32(i32 35, float %4382, float %4412)  ; FMax(a,b)
  %4414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.i32 %4414, 2
  %4416 = and i32 %4415, 1
  %4417 = icmp eq i32 %4416, 0
  %4418 = fcmp fast une float %4413, 1.000000e+00
  %4419 = and i1 %4418, %4417
  br i1 %4419, label %4420, label %4439

; <label>:4420                                    ; preds = %4411
  %4421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %31, float %4100, float %4101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = extractvalue %dx.types.ResRet.f32 %4421, 1
  %4424 = extractvalue %dx.types.ResRet.f32 %4421, 2
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 1
  %4427 = fmul fast float %4426, %4422
  %4428 = fmul fast float %4426, %4423
  %4429 = fmul fast float %4426, %4424
  %4430 = fcmp fast ogt float %4382, 0x3FEFFF2E40000000
  %4431 = fsub fast float 1.000000e+00, %4413
  %4432 = fsub fast float 1.000000e+00, %4382
  %4433 = fdiv fast float %4431, %4432
  %4434 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4435 = select i1 %4430, float 0.000000e+00, float %4434
  %4436 = fmul fast float %4427, %4435
  %4437 = fmul fast float %4428, %4435
  %4438 = fmul fast float %4429, %4435
  br label %4439

; <label>:4439                                    ; preds = %4420, %4411
  %4440 = phi float [ 0.000000e+00, %4411 ], [ %4436, %4420 ]
  %4441 = phi float [ 0.000000e+00, %4411 ], [ %4437, %4420 ]
  %4442 = phi float [ 0.000000e+00, %4411 ], [ %4438, %4420 ]
  %4443 = fmul fast float %4440, %3013
  %4444 = fmul fast float %4441, %3015
  %4445 = fmul fast float %4442, %3017
  %4446 = fmul fast float %4413, %4075
  %4447 = call float @dx.op.dot3.f32(i32 55, float %4413, float %4413, float %4413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4448 = call float @dx.op.dot3.f32(i32 55, float %4443, float %4444, float %4445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4449 = select i1 %184, float %4447, float %4413
  %4450 = select i1 %184, float 1.000000e+00, float %4413
  %4451 = select i1 %184, float %4448, float %4443
  %4452 = select i1 %184, float 0.000000e+00, float %4444
  %4453 = select i1 %184, float 0.000000e+00, float %4445
  %4454 = fmul fast float %4449, %4087
  %4455 = fmul fast float %4449, %4088
  %4456 = fmul fast float %4450, %4089
  %4457 = fadd fast float %4454, %4451
  %4458 = fadd fast float %4455, %4452
  %4459 = fadd fast float %4453, %4456
  %4460 = fmul fast float %4449, %4090
  %4461 = fmul fast float %4449, %4091
  %4462 = fmul fast float %4450, %4092
  br label %4463

; <label>:4463                                    ; preds = %4439, %4096, %4065, %3297
  %4464 = phi float [ %3302, %3297 ], [ %4087, %4065 ], [ %4457, %4439 ], [ %4087, %4096 ]
  %4465 = phi float [ %3303, %3297 ], [ %4088, %4065 ], [ %4458, %4439 ], [ %4088, %4096 ]
  %4466 = phi float [ %3304, %3297 ], [ %4089, %4065 ], [ %4459, %4439 ], [ %4089, %4096 ]
  %4467 = phi float [ %3305, %3297 ], [ %4090, %4065 ], [ %4460, %4439 ], [ %4090, %4096 ]
  %4468 = phi float [ %3306, %3297 ], [ %4091, %4065 ], [ %4461, %4439 ], [ %4091, %4096 ]
  %4469 = phi float [ %3307, %3297 ], [ %4092, %4065 ], [ %4462, %4439 ], [ %4092, %4096 ]
  %4470 = phi float [ %3308, %3297 ], [ %4075, %4065 ], [ %4446, %4439 ], [ %4075, %4096 ]
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 2
  %4473 = extractvalue %dx.types.CBufRet.f32 %4471, 3
  %4474 = fmul fast float %4472, %67
  %4475 = fmul fast float %4473, %68
  %4476 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4477 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4478 = select i1 %3039, i32 2, i32 0
  %4479 = or i32 %4478, 1
  %4480 = uitofp i32 %4479 to float
  %4481 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4476, float %4477, float %4480, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4482 = extractvalue %dx.types.ResRet.f32 %4481, 0
  %4483 = extractvalue %dx.types.ResRet.f32 %4481, 1
  %4484 = extractvalue %dx.types.ResRet.f32 %4481, 2
  %4485 = extractvalue %dx.types.ResRet.f32 %4481, 3
  %4486 = add nuw nsw i32 %4478, 2
  %4487 = uitofp i32 %4486 to float
  %4488 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4476, float %4477, float %4487, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4489 = extractvalue %dx.types.ResRet.f32 %4488, 0
  %4490 = extractvalue %dx.types.ResRet.f32 %4488, 1
  %4491 = extractvalue %dx.types.ResRet.f32 %4488, 2
  %4492 = extractvalue %dx.types.ResRet.f32 %4488, 3
  %4493 = call float @dx.op.binary.f32(i32 35, float %4483, float %4484)  ; FMax(a,b)
  %4494 = call float @dx.op.binary.f32(i32 35, float %4482, float %4493)  ; FMax(a,b)
  %4495 = call float @dx.op.binary.f32(i32 35, float %4494, float %4485)  ; FMax(a,b)
  %4496 = call float @dx.op.binary.f32(i32 36, float %4490, float %4491)  ; FMin(a,b)
  %4497 = call float @dx.op.binary.f32(i32 36, float %4489, float %4496)  ; FMin(a,b)
  %4498 = call float @dx.op.binary.f32(i32 36, float %4497, float %4492)  ; FMin(a,b)
  %4499 = fmul fast float %4495, 2.550000e+02
  %4500 = fadd fast float %4499, 0x3F70101020000000
  %4501 = fptoui float %4500 to i32
  %4502 = fmul fast float %4498, 2.550000e+02
  %4503 = fadd fast float %4502, 0x3F70101020000000
  %4504 = fptoui float %4503 to i32
  %4505 = icmp ult i32 %4501, %4504
  br i1 %4505, label %4506, label %4675

; <label>:4506                                    ; preds = %4463
  %4507 = fcmp fast ogt float %57, 9.843750e-01
  %4508 = fadd fast float %3301, -4.000000e+00
  %4509 = select i1 %4507, float -4.000000e+00, float %4508
  %4510 = call float @dx.op.binary.f32(i32 35, float %4509, float 0.000000e+00)  ; FMax(a,b)
  %4511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4512 = extractvalue %dx.types.CBufRet.f32 %4511, 0
  %4513 = fadd fast float %4512, %4510
  %4514 = extractvalue %dx.types.CBufRet.f32 %4511, 2
  %4515 = fmul fast float %4513, %4514
  %4516 = call float @dx.op.unary.f32(i32 23, float %4515)  ; Log(value)
  %4517 = extractvalue %dx.types.CBufRet.f32 %4511, 3
  %4518 = fmul fast float %4517, %4516
  %4519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.f32 %4519, 2
  %4521 = fmul fast float %4518, %4520
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = uitofp i32 %4501 to float
  %4524 = uitofp i32 %4504 to float
  %4525 = fadd fast float %4523, 5.000000e-01
  %4526 = fadd fast float %4524, 5.000000e-01
  %4527 = fmul fast float %4520, %4525
  %4528 = fmul fast float %4520, %4526
  %4529 = fadd fast float %4527, 0x3F0FFB4800000000
  %4530 = fadd fast float %4528, 0xBF0FFB4800000000
  %4531 = call float @dx.op.binary.f32(i32 35, float %4522, float %4529)  ; FMax(a,b)
  %4532 = call float @dx.op.binary.f32(i32 36, float %4531, float %4530)  ; FMin(a,b)
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 1
  %4535 = extractvalue %dx.types.CBufRet.f32 %4533, 2
  %4536 = extractvalue %dx.types.CBufRet.f32 %4533, 0
  %4537 = select i1 %3039, float %4536, float 0.000000e+00
  %4538 = fmul fast float %4534, %4532
  %4539 = fadd fast float %4537, %4538
  %4540 = fadd fast float %4537, %4535
  %4541 = fsub fast float %4534, %4535
  %4542 = fadd fast float %4541, %4537
  %4543 = call float @dx.op.binary.f32(i32 35, float %4539, float %4540)  ; FMax(a,b)
  %4544 = call float @dx.op.binary.f32(i32 36, float %4543, float %4542)  ; FMin(a,b)
  %4545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %4476, float %4477, float %4544, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4546 = extractvalue %dx.types.ResRet.f32 %4545, 0
  %4547 = extractvalue %dx.types.ResRet.f32 %4545, 1
  %4548 = extractvalue %dx.types.ResRet.f32 %4545, 2
  %4549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.i32 %4549, 0
  %4551 = extractvalue %dx.types.CBufRet.i32 %4549, 1
  %4552 = uitofp i32 %4550 to float
  %4553 = uitofp i32 %4551 to float
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 0
  %4556 = extractvalue %dx.types.CBufRet.f32 %4554, 1
  %4557 = fmul fast float %4552, %4476
  %4558 = fmul fast float %4553, %4477
  %4559 = fadd fast float %4557, -5.000000e-01
  %4560 = fadd fast float %4558, -5.000000e-01
  %4561 = call float @dx.op.unary.f32(i32 22, float %4559)  ; Frc(value)
  %4562 = call float @dx.op.unary.f32(i32 22, float %4560)  ; Frc(value)
  %4563 = fmul fast float %4561, %4561
  %4564 = fmul fast float %4563, %4561
  %4565 = fsub fast float 3.000000e+00, %4561
  %4566 = fmul fast float %4563, %4565
  %4567 = fmul fast float %4561, 3.000000e+00
  %4568 = fmul fast float %4564, 3.000000e+00
  %4569 = fmul fast float %4563, 6.000000e+00
  %4570 = fsub fast float %4568, %4569
  %4571 = fadd fast float %4570, 4.000000e+00
  %4572 = fmul fast float %4571, 0x3FC5555560000000
  %4573 = fmul fast float %4564, -3.000000e+00
  %4574 = fadd fast float %4563, %4561
  %4575 = fmul fast float %4574, 3.000000e+00
  %4576 = fadd fast float %4573, 1.000000e+00
  %4577 = fadd fast float %4576, %4575
  %4578 = fmul fast float %4564, 0x3FC5555560000000
  %4579 = fmul fast float %4562, %4562
  %4580 = fmul fast float %4579, %4562
  %4581 = fsub fast float 3.000000e+00, %4562
  %4582 = fmul fast float %4579, %4581
  %4583 = fmul fast float %4562, 3.000000e+00
  %4584 = fmul fast float %4580, 3.000000e+00
  %4585 = fmul fast float %4579, 6.000000e+00
  %4586 = fsub fast float %4584, %4585
  %4587 = fadd fast float %4586, 4.000000e+00
  %4588 = fmul fast float %4587, 0x3FC5555560000000
  %4589 = fmul fast float %4580, -3.000000e+00
  %4590 = fadd fast float %4579, %4562
  %4591 = fmul fast float %4590, 3.000000e+00
  %4592 = fadd fast float %4589, 1.000000e+00
  %4593 = fadd fast float %4592, %4591
  %4594 = fmul fast float %4580, 0x3FC5555560000000
  %4595 = fadd fast float %4561, 1.000000e+00
  %4596 = fsub fast float 1.000000e+00, %4567
  %4597 = fadd fast float %4596, %4566
  %4598 = fadd fast float %4597, %4571
  %4599 = fmul fast float %4598, 0x3FC5555560000000
  %4600 = fdiv fast float %4572, %4599
  %4601 = fsub fast float %4595, %4600
  %4602 = fsub fast float 1.000000e+00, %4561
  %4603 = fadd fast float %4577, %4564
  %4604 = fmul fast float %4603, 0x3FC5555560000000
  %4605 = fdiv fast float %4578, %4604
  %4606 = fadd fast float %4602, %4605
  %4607 = fadd fast float %4562, 1.000000e+00
  %4608 = fsub fast float 1.000000e+00, %4583
  %4609 = fadd fast float %4608, %4582
  %4610 = fadd fast float %4609, %4587
  %4611 = fmul fast float %4610, 0x3FC5555560000000
  %4612 = fdiv fast float %4588, %4611
  %4613 = fsub fast float %4607, %4612
  %4614 = fsub fast float 1.000000e+00, %4562
  %4615 = fadd fast float %4593, %4580
  %4616 = fmul fast float %4615, 0x3FC5555560000000
  %4617 = fdiv fast float %4594, %4616
  %4618 = fadd fast float %4617, %4614
  %4619 = fmul fast float %4601, %4555
  %4620 = fsub fast float %4476, %4619
  %4621 = fmul fast float %4606, %4555
  %4622 = fadd fast float %4621, %4476
  %4623 = fmul fast float %4618, %4556
  %4624 = fadd fast float %4623, %4477
  %4625 = fmul fast float %4613, %4556
  %4626 = fsub fast float %4477, %4625
  %4627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4620, float %4626, float %4544, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = extractvalue %dx.types.ResRet.f32 %4627, 1
  %4630 = extractvalue %dx.types.ResRet.f32 %4627, 2
  %4631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4622, float %4626, float %4544, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4632 = extractvalue %dx.types.ResRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.ResRet.f32 %4631, 1
  %4634 = extractvalue %dx.types.ResRet.f32 %4631, 2
  %4635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4620, float %4624, float %4544, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4636 = extractvalue %dx.types.ResRet.f32 %4635, 0
  %4637 = extractvalue %dx.types.ResRet.f32 %4635, 1
  %4638 = extractvalue %dx.types.ResRet.f32 %4635, 2
  %4639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4622, float %4624, float %4544, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4640 = extractvalue %dx.types.ResRet.f32 %4639, 0
  %4641 = extractvalue %dx.types.ResRet.f32 %4639, 1
  %4642 = extractvalue %dx.types.ResRet.f32 %4639, 2
  %4643 = fsub fast float %4636, %4628
  %4644 = fsub fast float %4637, %4629
  %4645 = fsub fast float %4638, %4630
  %4646 = fmul fast float %4643, %4616
  %4647 = fmul fast float %4644, %4616
  %4648 = fmul fast float %4645, %4616
  %4649 = fadd fast float %4646, %4628
  %4650 = fadd fast float %4647, %4629
  %4651 = fadd fast float %4648, %4630
  %4652 = fsub fast float %4640, %4632
  %4653 = fsub fast float %4641, %4633
  %4654 = fsub fast float %4642, %4634
  %4655 = fmul fast float %4652, %4616
  %4656 = fmul fast float %4653, %4616
  %4657 = fmul fast float %4654, %4616
  %4658 = fsub fast float %4632, %4649
  %4659 = fadd fast float %4658, %4655
  %4660 = fsub fast float %4633, %4650
  %4661 = fadd fast float %4660, %4656
  %4662 = fsub fast float %4634, %4651
  %4663 = fadd fast float %4662, %4657
  %4664 = fmul fast float %4659, %4604
  %4665 = fmul fast float %4661, %4604
  %4666 = fmul fast float %4663, %4604
  %4667 = fadd fast float %4664, %4649
  %4668 = fadd fast float %4665, %4650
  %4669 = fadd fast float %4666, %4651
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 1
  %4672 = fmul fast float %4667, %4671
  %4673 = fmul fast float %4668, %4671
  %4674 = fmul fast float %4669, %4671
  br label %4675

; <label>:4675                                    ; preds = %4506, %4463
  %4676 = phi float [ %4546, %4506 ], [ 1.000000e+00, %4463 ]
  %4677 = phi float [ %4547, %4506 ], [ 1.000000e+00, %4463 ]
  %4678 = phi float [ %4548, %4506 ], [ 1.000000e+00, %4463 ]
  %4679 = phi float [ %4672, %4506 ], [ 0.000000e+00, %4463 ]
  %4680 = phi float [ %4673, %4506 ], [ 0.000000e+00, %4463 ]
  %4681 = phi float [ %4674, %4506 ], [ 0.000000e+00, %4463 ]
  %4682 = fmul fast float %4679, %3013
  %4683 = fmul fast float %4680, %3015
  %4684 = fmul fast float %4681, %3017
  %4685 = fmul fast float %4676, %4470
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4676, float %4677, float %4678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = call float @dx.op.dot3.f32(i32 55, float %4682, float %4683, float %4684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4688 = select i1 %184, float %4686, float %4676
  %4689 = select i1 %184, float %4686, float %4677
  %4690 = select i1 %184, float 1.000000e+00, float %4678
  %4691 = select i1 %184, float %4687, float %4682
  %4692 = select i1 %184, float 0.000000e+00, float %4683
  %4693 = select i1 %184, float 0.000000e+00, float %4684
  %4694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.i32 %4694, 3
  %4696 = and i32 %4695, 3
  %4697 = icmp ne i32 %4696, 0
  %4698 = and i32 %4695, 4
  %4699 = icmp ne i32 %4698, 0
  %4700 = and i1 %4697, %4699
  %4701 = and i1 %184, %4700
  br i1 %4701, label %4702, label %4708

; <label>:4702                                    ; preds = %4675
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 1
  %4705 = fadd fast float %4685, -1.000000e+00
  %4706 = fmul fast float %4704, %4705
  %4707 = fadd fast float %4706, 1.000000e+00
  br label %4708

; <label>:4708                                    ; preds = %4702, %4675
  %4709 = phi float [ %4707, %4702 ], [ %4685, %4675 ]
  %4710 = fadd fast float %4467, %4464
  %4711 = fmul fast float %4688, %4710
  %4712 = fadd fast float %4711, %4691
  %4713 = fadd fast float %4468, %4465
  %4714 = fmul fast float %4689, %4713
  %4715 = fadd fast float %4714, %4692
  %4716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4716, 0
  br i1 %184, label %4718, label %4733

; <label>:4718                                    ; preds = %4708
  %4719 = fadd fast float %4712, %4715
  %4720 = fmul fast float %4717, %4719
  %4721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.f32 %4721, 3
  %4723 = extractvalue %dx.types.CBufRet.f32 %3021, 1
  %4724 = fsub fast float %3026, %3020
  %4725 = fadd fast float %4724, %3027
  %4726 = fsub fast float %4725, %4723
  %4727 = extractvalue %dx.types.CBufRet.f32 %3021, 2
  %4728 = fmul fast float %4726, %4727
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fsub fast float %4729, %4722
  %4731 = fmul fast float %4730, %4709
  %4732 = fadd fast float %4731, %4722
  br label %4758

; <label>:4733                                    ; preds = %4708
  %4734 = fadd fast float %4469, %4466
  %4735 = fmul fast float %4690, %4734
  %4736 = fadd fast float %4735, %4693
  %4737 = fmul fast float %4717, %4712
  %4738 = fmul fast float %4717, %4715
  %4739 = fmul fast float %4717, %4736
  %4740 = call float @dx.op.binary.f32(i32 35, float %4738, float %4739)  ; FMax(a,b)
  %4741 = call float @dx.op.binary.f32(i32 35, float %4737, float %4740)  ; FMax(a,b)
  %4742 = call float @dx.op.binary.f32(i32 35, float %3015, float %3017)  ; FMax(a,b)
  %4743 = call float @dx.op.binary.f32(i32 35, float %3013, float %4742)  ; FMax(a,b)
  %4744 = call float @dx.op.binary.f32(i32 35, float %4741, float %4743)  ; FMax(a,b)
  %4745 = fcmp fast ugt float %4744, 0x3F10000000000000
  br i1 %4745, label %4747, label %4746

; <label>:4746                                    ; preds = %4733
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4747

; <label>:4747                                    ; preds = %4746, %4733
  %4748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4749 = extractvalue %dx.types.ResRet.i32 %4748, 0
  %4750 = and i32 %4749, 32
  %4751 = icmp eq i32 %4750, 0
  br i1 %4751, label %4758, label %4752

; <label>:4752                                    ; preds = %4747
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 0
  %4755 = fmul fast float %4754, 0x3FE99999A0000000
  %4756 = fadd fast float %4754, %4737
  %4757 = fadd fast float %4755, %4739
  br label %4758

; <label>:4758                                    ; preds = %4752, %4747, %4718
  %4759 = phi float [ 1.000000e+00, %4718 ], [ %3015, %4752 ], [ %3015, %4747 ]
  %4760 = phi float [ 1.000000e+00, %4718 ], [ %3017, %4752 ], [ %3017, %4747 ]
  %4761 = phi float [ %4720, %4718 ], [ %4756, %4752 ], [ %4737, %4747 ]
  %4762 = phi float [ %4732, %4718 ], [ %4738, %4752 ], [ %4738, %4747 ]
  %4763 = phi float [ 1.000000e+00, %4718 ], [ %4757, %4752 ], [ %4739, %4747 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %4764 = call float @dx.op.binary.f32(i32 36, float %4761, float 3.225500e+04)  ; FMin(a,b)
  %4765 = call float @dx.op.binary.f32(i32 36, float %4762, float 3.225500e+04)  ; FMin(a,b)
  %4766 = call float @dx.op.binary.f32(i32 36, float %4763, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4764)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4765)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4766)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %4767 = call float @dx.op.binary.f32(i32 36, float %3013, float 3.225500e+04)  ; FMin(a,b)
  %4768 = call float @dx.op.binary.f32(i32 36, float %4759, float 3.225500e+04)  ; FMin(a,b)
  %4769 = call float @dx.op.binary.f32(i32 36, float %4760, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %4767)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %4768)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %4769)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

